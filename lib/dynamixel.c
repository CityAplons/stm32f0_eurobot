#include "dynamixel.h"
#include "gpio_map.h"
#include "peripheral.h"
#include "err_manager.h"

#include <string.h>
#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_bus.h"

/*
 * Private functions
 */

/*
 * Send command
 */
static void dyn_send_cmd(uint8_t *buff, int len)
{
    int i = 0;
    __disable_irq();
    LL_USART_DisableDirectionRx(DYNAMIXEL_USART);
    LL_USART_EnableDirectionTx(DYNAMIXEL_USART);
    LL_USART_ClearFlag_TC(DYNAMIXEL_USART);
    while (len--) {
            while (!LL_USART_IsActiveFlag_TXE(DYNAMIXEL_USART));
            LL_USART_TransmitData8(DYNAMIXEL_USART, buff[i++]);
    }
    while (!LL_USART_IsActiveFlag_TC(DYNAMIXEL_USART));
    LL_USART_DisableDirectionTx(DYNAMIXEL_USART);
    LL_USART_EnableDirectionRx(DYNAMIXEL_USART);
    __enable_irq();
    return;
}

static void dyn_delay(uint32_t i)
{
    while(i--);
    return;
}

static void dyn_set_angle(uint8_t id, uint16_t angle)
{
    /*
     * Make new packet
     */
    static const uint8_t DYN_SET_ANGLE_CMD_LEN = 9;
    uint8_t highByte = (uint8_t)((angle >> 8) & 0xff);
    uint8_t lowByte = (uint8_t)(angle & 0xff);
    uint8_t crc = id + 0x05 + 0x03 + 0x1e + lowByte + highByte;
    uint8_t tx[] = {0xff, 0xff, id, 0x05, 0x03, 0x1e, lowByte,
                           highByte, ~crc};
    if (angle > DYN_MAX_ANGLE)
        return;
    dyn_send_cmd(tx, DYN_SET_ANGLE_CMD_LEN);
    return;
}

static void dyn_set_init_pos(uint8_t *angles)
{
    static const uint8_t DYN_SET_ANGLE_CMD_LEN = (2+1)*NUMBER_OF_DYNAMIXELS+4;
    uint8_t tx[DYN_SET_ANGLE_CMD_LEN + 4];
    uint8_t header[] = {0xff, 0xff, 0xfe, DYN_SET_ANGLE_CMD_LEN, 0x83, 0x1e, 0x02};
    memcpy(&tx, &header, 7);
    uint8_t crc = 0xfe + DYN_SET_ANGLE_CMD_LEN + 0x83 + 0x1e + 0x02;
    int i = 0;
    int j = 0;
    for (i = 0, j = 0; i < NUMBER_OF_DYNAMIXELS; i++, j = j + 2)
    {
        uint8_t highByte = angles[j];
        uint8_t lowByte = angles[j + 1];
        crc += (i + 1) + lowByte + highByte;
        uint8_t chunk[] = {(i + 1), lowByte, highByte};
        memcpy( &tx[7+3*i], &chunk, 3 ); 
    }
    tx[DYN_SET_ANGLE_CMD_LEN + 3] = ~crc;
    dyn_send_cmd(tx, DYN_SET_ANGLE_CMD_LEN+4);
    return;
}

static void dyn_set_sync_angle(uint8_t *angles)
{
    static const uint8_t DYN_SET_ANGLE_CMD_LEN = (2+1)*NUMBER_OF_DYNAMIXELS+4;
    uint8_t TOTAL_LEN = DYN_SET_ANGLE_CMD_LEN;
    uint8_t tx[DYN_SET_ANGLE_CMD_LEN + 4];
    uint8_t header[] = {0xff, 0xff, 0xfe, DYN_SET_ANGLE_CMD_LEN, 0x83, 0x1e, 0x02};
    memcpy(&tx, &header, 7);
    uint8_t crc = 0xfe + DYN_SET_ANGLE_CMD_LEN + 0x83 + 0x1e + 0x02;
    int i = 0;
    int j = 0;
    int k = 0;
    for (i = 0, j = 0; i < NUMBER_OF_DYNAMIXELS; i++, j = j + 2)
    {
        if( angles[j] + angles[j + 1] != 0 ){
            uint8_t highByte = angles[j];
            uint8_t lowByte = angles[j + 1];
            crc += (i + 1) + lowByte + highByte;
            uint8_t chunk[] = {(i + 1), lowByte, highByte};
            memcpy( &tx[7+3*k], &chunk, 3 ); 
            k += 1;
        } else {
            TOTAL_LEN -= 3;
        }
    }
    tx[TOTAL_LEN+3] = ~(crc - (DYN_SET_ANGLE_CMD_LEN - TOTAL_LEN));
    tx[3] = TOTAL_LEN;
    dyn_send_cmd(tx, TOTAL_LEN+4);
    dyn_delay(48000000/1000);
    return;
}


static void dyn_set_speed(uint8_t *speeds)
{
    static const uint8_t DYN_SET_ANGLE_CMD_LEN = 9;
    int i = 0;
    int j = 0;
    for (i = 0, j = 0; i < NUMBER_OF_DYNAMIXELS; i++, j = j + 2)
    {
        uint8_t highByte = speeds[j];
        uint8_t lowByte = speeds[j + 1];
        uint8_t crc = (i + 1) + 0x05 + 0x03 + 0x20 + lowByte + highByte;
        uint8_t tx[] = {0xff, 0xff, i + 1, 0x05, 0x03, 0x20, lowByte,
                               highByte, ~crc};
        dyn_send_cmd(tx, DYN_SET_ANGLE_CMD_LEN);
        dyn_delay(48000000/1000);
    }
    return;
}

static void dyn_disable_torque(void)
{
    static const uint8_t DYN_DISABLE_TORQUE_CMD_LEN = 8;
    uint8_t crc = 0xfe + 0x04 + 0x03 + 0x18 + 0x00;
    uint8_t tx[] = {0xff, 0xff, 0xfe, 0x04, 0x03, 0x18, 0x00,
                                     ~crc};
    dyn_send_cmd(tx, DYN_DISABLE_TORQUE_CMD_LEN);
    dyn_delay(48000000/1000);
    return;
}

/*
 * Public commands implementation
 */
void dynamixel_init()
{
    /*
     * Initialization code
     * Setting USART pin
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    /*
     * USART1_TX_RX setting
     */
    LL_GPIO_SetPinMode(DYNAMIXEL_USART_PORT, DYNAMIXEL_USART_PIN,
                       LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_8_15(DYNAMIXEL_USART_PORT, DYNAMIXEL_USART_PIN,
                          DYNAMIXEL_USART_PIN_AF);
    LL_GPIO_SetPinOutputType(DYNAMIXEL_USART_PORT, DYNAMIXEL_USART_PIN,
                             LL_GPIO_OUTPUT_PUSHPULL);
    LL_GPIO_SetPinPull(TERM_USART_TX_PORT, TERM_USART_TX_PIN,
                       LL_GPIO_PULL_DOWN);
    LL_GPIO_SetPinSpeed(DYNAMIXEL_USART_PORT, DYNAMIXEL_USART_PIN,
                        LL_GPIO_SPEED_FREQ_HIGH);
    /*
     * USART Setting
     */
    LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_USART1);
    LL_USART_SetParity(DYNAMIXEL_USART, DYNAMIXEL_USART_PARITY);
    LL_USART_SetDataWidth(DYNAMIXEL_USART, DYNAMIXEL_USART_DATA_WIDTH);
    LL_USART_SetStopBitsLength(DYNAMIXEL_USART, DYNAMIXEL_USART_STOPBITS);
    LL_USART_SetBaudRate(DYNAMIXEL_USART, SystemCoreClock,
                         DYNAMIXEL_USART_OVERSAMPL,
                         DYNAMIXEL_USART_BAUDRATE);
    LL_USART_EnableHalfDuplex(DYNAMIXEL_USART);
    LL_USART_DisableDirectionTx(DYNAMIXEL_USART);
    LL_USART_EnableDirectionRx(DYNAMIXEL_USART);
    LL_USART_Enable(DYNAMIXEL_USART);
    /*
     * Configure dynamixel reset pin
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(DYN_RESET_PORT, DYN_RESET_PIN, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinOutputType(DYN_RESET_PORT, DYN_RESET_PIN,
                             LL_GPIO_OUTPUT_PUSHPULL);
    LL_GPIO_SetOutputPin(DYN_RESET_PORT, DYN_RESET_PIN);
    return;
}

void dyn_manager(void *args)
{
    uint8_t *cmd_args = (uint8_t *) args;
    dyn_ctrl_t *dyn_ctrl = (dyn_ctrl_t *) &(cmd_args[1]);

    switch (cmd_args[0]) {
    case 0:
        dyn_set_angle(dyn_ctrl->id, dyn_ctrl->angle);
        break;
    case 1:
        dyn_set_speed(&cmd_args[1]);
        break;
    case 2:
        dyn_disable_torque();
        break;
    case 3:
        dyn_set_init_pos(&cmd_args[1]);
        break;
    case 4:
        dyn_set_sync_angle(&cmd_args[1]);
        break;
    default:
        break;
    }
    return;
}
