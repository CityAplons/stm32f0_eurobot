#include <stdint.h>
#include <string.h>

#include "display.h"
#include "peripheral.h"
#include "gpio_map.h"
#include "xprintf.h"

#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_rcc.h"

/*
 * Private buffer for display
 */
static uint8_t disp_buff[DISP_WIDTH * DISP_HEIGHT / 8];
/*
 * Private variable for display cursor control
 */
static disp_ctrl_t disp_ctrl;

/*
 * Private functions
 */

/*
 * Display hardware initialization
 */
static void disp_hw_config(void)
{
    /*
     * GPIO initialization
     * Reset and DC pin configuration
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(DISP_RESET_PORT, DISP_RESET_PIN,
                       LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(DISP_DC_PORT, DISP_DC_PIN, LL_GPIO_MODE_OUTPUT);
    /*
     * SPI pin configuration
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(DISP_SCK_PORT, DISP_SCK_PIN, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_0_7(DISP_SCK_PORT, DISP_SCK_PIN, LL_GPIO_AF_0);
    LL_GPIO_SetPinSpeed(DISP_SCK_PORT, DISP_SCK_PIN,
                        LL_GPIO_SPEED_FREQ_HIGH);

    LL_GPIO_SetPinMode(DISP_MOSI_PORT, DISP_MOSI_PIN,
                       LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_0_7(DISP_MOSI_PORT, DISP_MOSI_PIN, LL_GPIO_AF_0);
    LL_GPIO_SetPinSpeed(DISP_MOSI_PORT, DISP_MOSI_PIN,
                        LL_GPIO_SPEED_FREQ_HIGH);
    /*
     * SPI initialization
     */
    LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_SPI1);
    LL_SPI_SetMode(DISP_SPI, DISP_SPI_MODE);
    LL_SPI_SetBaudRatePrescaler(DISP_SPI, DISP_SPI_BAUDRATE_PRESCALER);
    LL_SPI_SetTransferDirection(DISP_SPI, LL_SPI_FULL_DUPLEX);
    LL_SPI_SetTransferBitOrder(DISP_SPI, DISP_SPI_BIT_ORDER);
    LL_SPI_SetDataWidth(DISP_SPI, DISP_SPI_DATA_WIDTH);
    LL_SPI_EnableNSSPulseMgt(DISP_SPI);
    LL_SPI_Enable(DISP_SPI);
    return;
}

/*
 * Reset display
 */
void disp_reset(void)
{
    int i = RESET_DELAY;

    LL_GPIO_ResetOutputPin(DISP_RESET_PORT, DISP_RESET_PIN);
    while (--i);
    LL_GPIO_SetOutputPin(DISP_RESET_PORT, DISP_RESET_PIN);
    i = RESET_DELAY; // wait display to boot
    while (--i);
    return;
}

/*
 * Send command to display
 */
static void disp_send_cmd(uint8_t byte)
{
    LL_GPIO_ResetOutputPin(DISP_DC_PORT, DISP_DC_PIN);
    LL_SPI_TransmitData8(DISP_SPI, byte);
    while (!LL_SPI_IsActiveFlag_TXE(SPI1));
    return;
}

/*
 * Send data to display
 */
static void disp_send_data(uint8_t *data, uint8_t len)
{
    uint8_t i = 0;

    if (len < 1)
            return;
    LL_GPIO_SetOutputPin(DISP_DC_PORT, DISP_DC_PIN);
    while (len--) {
            LL_SPI_TransmitData8(DISP_SPI, data[i++]);
            while (!LL_SPI_IsActiveFlag_TXE(SPI1));
    }
    return;
}

/*
 * Public functions
 */

/*
 * Fill full display with color
 */
void disp_fill(disp_color color)
{
    memset(disp_buff, color, DISP_WIDTH * DISP_HEIGHT / 8);
    return;
}

/*
 * Update display from internal RAM
 */
void disp_update(void)
{
    uint8_t i = 0;

    // disp_send_cmd(0xAE); // turn off display
    // Set addressing mode
    // Vertical addressing mode
    disp_send_cmd(0x20);
    disp_send_cmd(0x10);
    // Set display offset: 0-63
    disp_send_cmd(0xD3);
    disp_send_cmd(0x00);
    // disp_send_cmd(0xAF); // turn on display
    for (i = 0; i < 8; i++)
    {
        disp_send_cmd(0xB0 + i);
        disp_send_cmd(0x00);
        disp_send_cmd(0x10);
        disp_send_data(&disp_buff[DISP_WIDTH * i], DISP_WIDTH);
    }
    return;
}

/*
 * Draw pixel in (x, y) position with color
 */
void disp_draw_pix(uint8_t x, uint8_t y, disp_color color)
{
    if (x > DISP_WIDTH || y > DISP_HEIGHT)
            return;
    if (color == WHITE)
            disp_buff[x + (y / 8) * DISP_WIDTH] |= 1 << (y % 8);
    else
            disp_buff[x + (y / 8) * DISP_WIDTH] &= ~(1 << (y % 8));
    return;
}

/*
 * Display char
 */
int disp_write_char(char ch)
{
    uint32_t i, b, j;

    if (DISP_WIDTH <= (disp_ctrl.cur_x + FONT_WIDTH) ||
        DISP_HEIGHT <= (disp_ctrl.cur_y + FONT_HEIGHT))
        return -1;

    for (i = 0; i < FONT_HEIGHT; i++) {
        b = disp_font7x10[(ch - 32) * FONT_HEIGHT + i];
        for (j = 0; j < FONT_WIDTH; j++) {
            if ((b << j) & 0x8000) {
                disp_draw_pix(disp_ctrl.cur_x + j,
                              disp_ctrl.cur_y + i,
                              (disp_color) WHITE);
            } else {
                disp_draw_pix(disp_ctrl.cur_x + j,
                              disp_ctrl.cur_y + i,
                              (disp_color)!WHITE);
            }
        }
    }
    disp_ctrl.cur_x += FONT_WIDTH;
    return 0;
}

/*
 * Set cursor to (x, y) point
 */
void disp_set_cursor_pix(uint8_t x, uint8_t y)
{
    if (x > DISP_WIDTH || y > DISP_HEIGHT)
            return;
    disp_ctrl.cur_x = x;
    disp_ctrl.cur_y = y;
    return;
}

/*
 * Set cursor to (x, y) char position
 */
void disp_set_cursor(uint8_t x, uint8_t y)
{
    if (x > DISP_WIDTH / FONT_WIDTH || y > DISP_WIDTH / FONT_HEIGHT)
            return;
    disp_ctrl.cur_x = x * FONT_WIDTH;
    disp_ctrl.cur_y = y * FONT_HEIGHT;
}

/*
 * Display initialization
 */
void disp_init(void)
{
    /*
     * Hardware display pins initialization
     */
    disp_hw_config();
    disp_reset();
    /*
     * Setup display
     */
    // Set display OFF
    disp_send_cmd(0xAE);

    // Set addressing mode
    // Vertical addressing mode
    disp_send_cmd(0x20);
    disp_send_cmd(0x10);

    // Vertical flip: 0xC0 - on, 0xC8 - off
    disp_send_cmd(0xC8);

    // Set start line address 0-63
    disp_send_cmd(0x40);

    // Set contrast level: 0-255
    disp_send_cmd(0x81);
    disp_send_cmd(0xFF);

    // Horizontal flip: 0xA1 - on, 0xA0 - off
    disp_send_cmd(0xA1);

    // Normal colo - 0xA6, Inverse - 0xA7
    disp_send_cmd(0xA6);

    // Number of active lines: 16 - 64
    disp_send_cmd(0xA8);
    disp_send_cmd(0x3F);

    // Render GRAM: 0xA4 - render, 0xA5 - black screen
    disp_send_cmd(0xA4);

    // Set display offset: 0-63
    disp_send_cmd(0xD3);
    disp_send_cmd(0x00);

    // Set display refresh rate:
    // 7-4 bits set osc freq, 0-3 sets resfresh ratio
    disp_send_cmd(0xD5);
    disp_send_cmd(0xF0);

    // Set flipping config
    disp_send_cmd(0xDA);
    disp_send_cmd(0x12);

    // Enable charge pump
    disp_send_cmd(0x8D);
    disp_send_cmd(0x14);

    // Turn on display
    disp_send_cmd(0xAF);
    /*
     * Clear screen
     */
    disp_fill(BLACK);
    disp_update();
    disp_ctrl.cur_x = 0;
    disp_ctrl.cur_y = 0;
    /*
     * Putc function for xprintf
     */
    xdev_out(disp_write_char);
    return;
}
