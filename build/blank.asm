
build\\blank.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             000093dc  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           000008d8  0800949c  0800949c  0001949c  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08009d74  08009d74  00019d74  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08009d7c  08009d7c  00019d7c  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             000006ec  20000000  08009d80  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00001260  200006ec  0800a46c  000206ec  2**2  ALLOC
  7 ._user_heap_stack 00000604  2000194c  0800a46c  0002194c  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  000206ec  2**0  CONTENTS, READONLY
  9 .debug_info       000108a6  00000000  00000000  00020714  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     00001f6c  00000000  00000000  00030fba  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        000048fa  00000000  00000000  00032f26  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000be8  00000000  00000000  00037820  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     00000b00  00000000  00000000  00038408  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       000065a8  00000000  00000000  00038f08  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        000045e6  00000000  00000000  0003f4b0  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          0000004c  00000000  00000000  00043a96  2**0  CONTENTS, READONLY
 17 .debug_frame      00002ebc  00000000  00000000  00043ae4  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

Disassembly of section .text:

080000c0 <__do_global_dtors_aux>:
 80000c0:	b510      	push	{r4, lr}
 80000c2:	4c06      	ldr	r4, [pc, #24]	; (80000dc <__do_global_dtors_aux+0x1c>)
 80000c4:	7823      	ldrb	r3, [r4, #0]
 80000c6:	2b00      	cmp	r3, #0
 80000c8:	d107      	bne.n	80000da <__do_global_dtors_aux+0x1a>
 80000ca:	4b05      	ldr	r3, [pc, #20]	; (80000e0 <__do_global_dtors_aux+0x20>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d002      	beq.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d0:	4804      	ldr	r0, [pc, #16]	; (80000e4 <__do_global_dtors_aux+0x24>)
 80000d2:	e000      	b.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d4:	bf00      	nop
 80000d6:	2301      	movs	r3, #1
 80000d8:	7023      	strb	r3, [r4, #0]
 80000da:	bd10      	pop	{r4, pc}
 80000dc:	200006ec 	.word	0x200006ec
 80000e0:	00000000 	.word	0x00000000
 80000e4:	08009484 	.word	0x08009484

080000e8 <frame_dummy>:
 80000e8:	4b04      	ldr	r3, [pc, #16]	; (80000fc <frame_dummy+0x14>)
 80000ea:	b510      	push	{r4, lr}
 80000ec:	2b00      	cmp	r3, #0
 80000ee:	d003      	beq.n	80000f8 <frame_dummy+0x10>
 80000f0:	4903      	ldr	r1, [pc, #12]	; (8000100 <frame_dummy+0x18>)
 80000f2:	4804      	ldr	r0, [pc, #16]	; (8000104 <frame_dummy+0x1c>)
 80000f4:	e000      	b.n	80000f8 <frame_dummy+0x10>
 80000f6:	bf00      	nop
 80000f8:	bd10      	pop	{r4, pc}
 80000fa:	46c0      	nop			; (mov r8, r8)
 80000fc:	00000000 	.word	0x00000000
 8000100:	200006f0 	.word	0x200006f0
 8000104:	08009484 	.word	0x08009484

08000108 <__udivsi3>:
 8000108:	2200      	movs	r2, #0
 800010a:	0843      	lsrs	r3, r0, #1
 800010c:	428b      	cmp	r3, r1
 800010e:	d374      	bcc.n	80001fa <__udivsi3+0xf2>
 8000110:	0903      	lsrs	r3, r0, #4
 8000112:	428b      	cmp	r3, r1
 8000114:	d35f      	bcc.n	80001d6 <__udivsi3+0xce>
 8000116:	0a03      	lsrs	r3, r0, #8
 8000118:	428b      	cmp	r3, r1
 800011a:	d344      	bcc.n	80001a6 <__udivsi3+0x9e>
 800011c:	0b03      	lsrs	r3, r0, #12
 800011e:	428b      	cmp	r3, r1
 8000120:	d328      	bcc.n	8000174 <__udivsi3+0x6c>
 8000122:	0c03      	lsrs	r3, r0, #16
 8000124:	428b      	cmp	r3, r1
 8000126:	d30d      	bcc.n	8000144 <__udivsi3+0x3c>
 8000128:	22ff      	movs	r2, #255	; 0xff
 800012a:	0209      	lsls	r1, r1, #8
 800012c:	ba12      	rev	r2, r2
 800012e:	0c03      	lsrs	r3, r0, #16
 8000130:	428b      	cmp	r3, r1
 8000132:	d302      	bcc.n	800013a <__udivsi3+0x32>
 8000134:	1212      	asrs	r2, r2, #8
 8000136:	0209      	lsls	r1, r1, #8
 8000138:	d065      	beq.n	8000206 <__udivsi3+0xfe>
 800013a:	0b03      	lsrs	r3, r0, #12
 800013c:	428b      	cmp	r3, r1
 800013e:	d319      	bcc.n	8000174 <__udivsi3+0x6c>
 8000140:	e000      	b.n	8000144 <__udivsi3+0x3c>
 8000142:	0a09      	lsrs	r1, r1, #8
 8000144:	0bc3      	lsrs	r3, r0, #15
 8000146:	428b      	cmp	r3, r1
 8000148:	d301      	bcc.n	800014e <__udivsi3+0x46>
 800014a:	03cb      	lsls	r3, r1, #15
 800014c:	1ac0      	subs	r0, r0, r3
 800014e:	4152      	adcs	r2, r2
 8000150:	0b83      	lsrs	r3, r0, #14
 8000152:	428b      	cmp	r3, r1
 8000154:	d301      	bcc.n	800015a <__udivsi3+0x52>
 8000156:	038b      	lsls	r3, r1, #14
 8000158:	1ac0      	subs	r0, r0, r3
 800015a:	4152      	adcs	r2, r2
 800015c:	0b43      	lsrs	r3, r0, #13
 800015e:	428b      	cmp	r3, r1
 8000160:	d301      	bcc.n	8000166 <__udivsi3+0x5e>
 8000162:	034b      	lsls	r3, r1, #13
 8000164:	1ac0      	subs	r0, r0, r3
 8000166:	4152      	adcs	r2, r2
 8000168:	0b03      	lsrs	r3, r0, #12
 800016a:	428b      	cmp	r3, r1
 800016c:	d301      	bcc.n	8000172 <__udivsi3+0x6a>
 800016e:	030b      	lsls	r3, r1, #12
 8000170:	1ac0      	subs	r0, r0, r3
 8000172:	4152      	adcs	r2, r2
 8000174:	0ac3      	lsrs	r3, r0, #11
 8000176:	428b      	cmp	r3, r1
 8000178:	d301      	bcc.n	800017e <__udivsi3+0x76>
 800017a:	02cb      	lsls	r3, r1, #11
 800017c:	1ac0      	subs	r0, r0, r3
 800017e:	4152      	adcs	r2, r2
 8000180:	0a83      	lsrs	r3, r0, #10
 8000182:	428b      	cmp	r3, r1
 8000184:	d301      	bcc.n	800018a <__udivsi3+0x82>
 8000186:	028b      	lsls	r3, r1, #10
 8000188:	1ac0      	subs	r0, r0, r3
 800018a:	4152      	adcs	r2, r2
 800018c:	0a43      	lsrs	r3, r0, #9
 800018e:	428b      	cmp	r3, r1
 8000190:	d301      	bcc.n	8000196 <__udivsi3+0x8e>
 8000192:	024b      	lsls	r3, r1, #9
 8000194:	1ac0      	subs	r0, r0, r3
 8000196:	4152      	adcs	r2, r2
 8000198:	0a03      	lsrs	r3, r0, #8
 800019a:	428b      	cmp	r3, r1
 800019c:	d301      	bcc.n	80001a2 <__udivsi3+0x9a>
 800019e:	020b      	lsls	r3, r1, #8
 80001a0:	1ac0      	subs	r0, r0, r3
 80001a2:	4152      	adcs	r2, r2
 80001a4:	d2cd      	bcs.n	8000142 <__udivsi3+0x3a>
 80001a6:	09c3      	lsrs	r3, r0, #7
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d301      	bcc.n	80001b0 <__udivsi3+0xa8>
 80001ac:	01cb      	lsls	r3, r1, #7
 80001ae:	1ac0      	subs	r0, r0, r3
 80001b0:	4152      	adcs	r2, r2
 80001b2:	0983      	lsrs	r3, r0, #6
 80001b4:	428b      	cmp	r3, r1
 80001b6:	d301      	bcc.n	80001bc <__udivsi3+0xb4>
 80001b8:	018b      	lsls	r3, r1, #6
 80001ba:	1ac0      	subs	r0, r0, r3
 80001bc:	4152      	adcs	r2, r2
 80001be:	0943      	lsrs	r3, r0, #5
 80001c0:	428b      	cmp	r3, r1
 80001c2:	d301      	bcc.n	80001c8 <__udivsi3+0xc0>
 80001c4:	014b      	lsls	r3, r1, #5
 80001c6:	1ac0      	subs	r0, r0, r3
 80001c8:	4152      	adcs	r2, r2
 80001ca:	0903      	lsrs	r3, r0, #4
 80001cc:	428b      	cmp	r3, r1
 80001ce:	d301      	bcc.n	80001d4 <__udivsi3+0xcc>
 80001d0:	010b      	lsls	r3, r1, #4
 80001d2:	1ac0      	subs	r0, r0, r3
 80001d4:	4152      	adcs	r2, r2
 80001d6:	08c3      	lsrs	r3, r0, #3
 80001d8:	428b      	cmp	r3, r1
 80001da:	d301      	bcc.n	80001e0 <__udivsi3+0xd8>
 80001dc:	00cb      	lsls	r3, r1, #3
 80001de:	1ac0      	subs	r0, r0, r3
 80001e0:	4152      	adcs	r2, r2
 80001e2:	0883      	lsrs	r3, r0, #2
 80001e4:	428b      	cmp	r3, r1
 80001e6:	d301      	bcc.n	80001ec <__udivsi3+0xe4>
 80001e8:	008b      	lsls	r3, r1, #2
 80001ea:	1ac0      	subs	r0, r0, r3
 80001ec:	4152      	adcs	r2, r2
 80001ee:	0843      	lsrs	r3, r0, #1
 80001f0:	428b      	cmp	r3, r1
 80001f2:	d301      	bcc.n	80001f8 <__udivsi3+0xf0>
 80001f4:	004b      	lsls	r3, r1, #1
 80001f6:	1ac0      	subs	r0, r0, r3
 80001f8:	4152      	adcs	r2, r2
 80001fa:	1a41      	subs	r1, r0, r1
 80001fc:	d200      	bcs.n	8000200 <__udivsi3+0xf8>
 80001fe:	4601      	mov	r1, r0
 8000200:	4152      	adcs	r2, r2
 8000202:	4610      	mov	r0, r2
 8000204:	4770      	bx	lr
 8000206:	e7ff      	b.n	8000208 <__udivsi3+0x100>
 8000208:	b501      	push	{r0, lr}
 800020a:	2000      	movs	r0, #0
 800020c:	f000 f8f0 	bl	80003f0 <__aeabi_idiv0>
 8000210:	bd02      	pop	{r1, pc}
 8000212:	46c0      	nop			; (mov r8, r8)

08000214 <__aeabi_uidivmod>:
 8000214:	2900      	cmp	r1, #0
 8000216:	d0f7      	beq.n	8000208 <__udivsi3+0x100>
 8000218:	e776      	b.n	8000108 <__udivsi3>
 800021a:	4770      	bx	lr

0800021c <__divsi3>:
 800021c:	4603      	mov	r3, r0
 800021e:	430b      	orrs	r3, r1
 8000220:	d47f      	bmi.n	8000322 <__divsi3+0x106>
 8000222:	2200      	movs	r2, #0
 8000224:	0843      	lsrs	r3, r0, #1
 8000226:	428b      	cmp	r3, r1
 8000228:	d374      	bcc.n	8000314 <__divsi3+0xf8>
 800022a:	0903      	lsrs	r3, r0, #4
 800022c:	428b      	cmp	r3, r1
 800022e:	d35f      	bcc.n	80002f0 <__divsi3+0xd4>
 8000230:	0a03      	lsrs	r3, r0, #8
 8000232:	428b      	cmp	r3, r1
 8000234:	d344      	bcc.n	80002c0 <__divsi3+0xa4>
 8000236:	0b03      	lsrs	r3, r0, #12
 8000238:	428b      	cmp	r3, r1
 800023a:	d328      	bcc.n	800028e <__divsi3+0x72>
 800023c:	0c03      	lsrs	r3, r0, #16
 800023e:	428b      	cmp	r3, r1
 8000240:	d30d      	bcc.n	800025e <__divsi3+0x42>
 8000242:	22ff      	movs	r2, #255	; 0xff
 8000244:	0209      	lsls	r1, r1, #8
 8000246:	ba12      	rev	r2, r2
 8000248:	0c03      	lsrs	r3, r0, #16
 800024a:	428b      	cmp	r3, r1
 800024c:	d302      	bcc.n	8000254 <__divsi3+0x38>
 800024e:	1212      	asrs	r2, r2, #8
 8000250:	0209      	lsls	r1, r1, #8
 8000252:	d065      	beq.n	8000320 <__divsi3+0x104>
 8000254:	0b03      	lsrs	r3, r0, #12
 8000256:	428b      	cmp	r3, r1
 8000258:	d319      	bcc.n	800028e <__divsi3+0x72>
 800025a:	e000      	b.n	800025e <__divsi3+0x42>
 800025c:	0a09      	lsrs	r1, r1, #8
 800025e:	0bc3      	lsrs	r3, r0, #15
 8000260:	428b      	cmp	r3, r1
 8000262:	d301      	bcc.n	8000268 <__divsi3+0x4c>
 8000264:	03cb      	lsls	r3, r1, #15
 8000266:	1ac0      	subs	r0, r0, r3
 8000268:	4152      	adcs	r2, r2
 800026a:	0b83      	lsrs	r3, r0, #14
 800026c:	428b      	cmp	r3, r1
 800026e:	d301      	bcc.n	8000274 <__divsi3+0x58>
 8000270:	038b      	lsls	r3, r1, #14
 8000272:	1ac0      	subs	r0, r0, r3
 8000274:	4152      	adcs	r2, r2
 8000276:	0b43      	lsrs	r3, r0, #13
 8000278:	428b      	cmp	r3, r1
 800027a:	d301      	bcc.n	8000280 <__divsi3+0x64>
 800027c:	034b      	lsls	r3, r1, #13
 800027e:	1ac0      	subs	r0, r0, r3
 8000280:	4152      	adcs	r2, r2
 8000282:	0b03      	lsrs	r3, r0, #12
 8000284:	428b      	cmp	r3, r1
 8000286:	d301      	bcc.n	800028c <__divsi3+0x70>
 8000288:	030b      	lsls	r3, r1, #12
 800028a:	1ac0      	subs	r0, r0, r3
 800028c:	4152      	adcs	r2, r2
 800028e:	0ac3      	lsrs	r3, r0, #11
 8000290:	428b      	cmp	r3, r1
 8000292:	d301      	bcc.n	8000298 <__divsi3+0x7c>
 8000294:	02cb      	lsls	r3, r1, #11
 8000296:	1ac0      	subs	r0, r0, r3
 8000298:	4152      	adcs	r2, r2
 800029a:	0a83      	lsrs	r3, r0, #10
 800029c:	428b      	cmp	r3, r1
 800029e:	d301      	bcc.n	80002a4 <__divsi3+0x88>
 80002a0:	028b      	lsls	r3, r1, #10
 80002a2:	1ac0      	subs	r0, r0, r3
 80002a4:	4152      	adcs	r2, r2
 80002a6:	0a43      	lsrs	r3, r0, #9
 80002a8:	428b      	cmp	r3, r1
 80002aa:	d301      	bcc.n	80002b0 <__divsi3+0x94>
 80002ac:	024b      	lsls	r3, r1, #9
 80002ae:	1ac0      	subs	r0, r0, r3
 80002b0:	4152      	adcs	r2, r2
 80002b2:	0a03      	lsrs	r3, r0, #8
 80002b4:	428b      	cmp	r3, r1
 80002b6:	d301      	bcc.n	80002bc <__divsi3+0xa0>
 80002b8:	020b      	lsls	r3, r1, #8
 80002ba:	1ac0      	subs	r0, r0, r3
 80002bc:	4152      	adcs	r2, r2
 80002be:	d2cd      	bcs.n	800025c <__divsi3+0x40>
 80002c0:	09c3      	lsrs	r3, r0, #7
 80002c2:	428b      	cmp	r3, r1
 80002c4:	d301      	bcc.n	80002ca <__divsi3+0xae>
 80002c6:	01cb      	lsls	r3, r1, #7
 80002c8:	1ac0      	subs	r0, r0, r3
 80002ca:	4152      	adcs	r2, r2
 80002cc:	0983      	lsrs	r3, r0, #6
 80002ce:	428b      	cmp	r3, r1
 80002d0:	d301      	bcc.n	80002d6 <__divsi3+0xba>
 80002d2:	018b      	lsls	r3, r1, #6
 80002d4:	1ac0      	subs	r0, r0, r3
 80002d6:	4152      	adcs	r2, r2
 80002d8:	0943      	lsrs	r3, r0, #5
 80002da:	428b      	cmp	r3, r1
 80002dc:	d301      	bcc.n	80002e2 <__divsi3+0xc6>
 80002de:	014b      	lsls	r3, r1, #5
 80002e0:	1ac0      	subs	r0, r0, r3
 80002e2:	4152      	adcs	r2, r2
 80002e4:	0903      	lsrs	r3, r0, #4
 80002e6:	428b      	cmp	r3, r1
 80002e8:	d301      	bcc.n	80002ee <__divsi3+0xd2>
 80002ea:	010b      	lsls	r3, r1, #4
 80002ec:	1ac0      	subs	r0, r0, r3
 80002ee:	4152      	adcs	r2, r2
 80002f0:	08c3      	lsrs	r3, r0, #3
 80002f2:	428b      	cmp	r3, r1
 80002f4:	d301      	bcc.n	80002fa <__divsi3+0xde>
 80002f6:	00cb      	lsls	r3, r1, #3
 80002f8:	1ac0      	subs	r0, r0, r3
 80002fa:	4152      	adcs	r2, r2
 80002fc:	0883      	lsrs	r3, r0, #2
 80002fe:	428b      	cmp	r3, r1
 8000300:	d301      	bcc.n	8000306 <__divsi3+0xea>
 8000302:	008b      	lsls	r3, r1, #2
 8000304:	1ac0      	subs	r0, r0, r3
 8000306:	4152      	adcs	r2, r2
 8000308:	0843      	lsrs	r3, r0, #1
 800030a:	428b      	cmp	r3, r1
 800030c:	d301      	bcc.n	8000312 <__divsi3+0xf6>
 800030e:	004b      	lsls	r3, r1, #1
 8000310:	1ac0      	subs	r0, r0, r3
 8000312:	4152      	adcs	r2, r2
 8000314:	1a41      	subs	r1, r0, r1
 8000316:	d200      	bcs.n	800031a <__divsi3+0xfe>
 8000318:	4601      	mov	r1, r0
 800031a:	4152      	adcs	r2, r2
 800031c:	4610      	mov	r0, r2
 800031e:	4770      	bx	lr
 8000320:	e05d      	b.n	80003de <__divsi3+0x1c2>
 8000322:	0fca      	lsrs	r2, r1, #31
 8000324:	d000      	beq.n	8000328 <__divsi3+0x10c>
 8000326:	4249      	negs	r1, r1
 8000328:	1003      	asrs	r3, r0, #32
 800032a:	d300      	bcc.n	800032e <__divsi3+0x112>
 800032c:	4240      	negs	r0, r0
 800032e:	4053      	eors	r3, r2
 8000330:	2200      	movs	r2, #0
 8000332:	469c      	mov	ip, r3
 8000334:	0903      	lsrs	r3, r0, #4
 8000336:	428b      	cmp	r3, r1
 8000338:	d32d      	bcc.n	8000396 <__divsi3+0x17a>
 800033a:	0a03      	lsrs	r3, r0, #8
 800033c:	428b      	cmp	r3, r1
 800033e:	d312      	bcc.n	8000366 <__divsi3+0x14a>
 8000340:	22fc      	movs	r2, #252	; 0xfc
 8000342:	0189      	lsls	r1, r1, #6
 8000344:	ba12      	rev	r2, r2
 8000346:	0a03      	lsrs	r3, r0, #8
 8000348:	428b      	cmp	r3, r1
 800034a:	d30c      	bcc.n	8000366 <__divsi3+0x14a>
 800034c:	0189      	lsls	r1, r1, #6
 800034e:	1192      	asrs	r2, r2, #6
 8000350:	428b      	cmp	r3, r1
 8000352:	d308      	bcc.n	8000366 <__divsi3+0x14a>
 8000354:	0189      	lsls	r1, r1, #6
 8000356:	1192      	asrs	r2, r2, #6
 8000358:	428b      	cmp	r3, r1
 800035a:	d304      	bcc.n	8000366 <__divsi3+0x14a>
 800035c:	0189      	lsls	r1, r1, #6
 800035e:	d03a      	beq.n	80003d6 <__divsi3+0x1ba>
 8000360:	1192      	asrs	r2, r2, #6
 8000362:	e000      	b.n	8000366 <__divsi3+0x14a>
 8000364:	0989      	lsrs	r1, r1, #6
 8000366:	09c3      	lsrs	r3, r0, #7
 8000368:	428b      	cmp	r3, r1
 800036a:	d301      	bcc.n	8000370 <__divsi3+0x154>
 800036c:	01cb      	lsls	r3, r1, #7
 800036e:	1ac0      	subs	r0, r0, r3
 8000370:	4152      	adcs	r2, r2
 8000372:	0983      	lsrs	r3, r0, #6
 8000374:	428b      	cmp	r3, r1
 8000376:	d301      	bcc.n	800037c <__divsi3+0x160>
 8000378:	018b      	lsls	r3, r1, #6
 800037a:	1ac0      	subs	r0, r0, r3
 800037c:	4152      	adcs	r2, r2
 800037e:	0943      	lsrs	r3, r0, #5
 8000380:	428b      	cmp	r3, r1
 8000382:	d301      	bcc.n	8000388 <__divsi3+0x16c>
 8000384:	014b      	lsls	r3, r1, #5
 8000386:	1ac0      	subs	r0, r0, r3
 8000388:	4152      	adcs	r2, r2
 800038a:	0903      	lsrs	r3, r0, #4
 800038c:	428b      	cmp	r3, r1
 800038e:	d301      	bcc.n	8000394 <__divsi3+0x178>
 8000390:	010b      	lsls	r3, r1, #4
 8000392:	1ac0      	subs	r0, r0, r3
 8000394:	4152      	adcs	r2, r2
 8000396:	08c3      	lsrs	r3, r0, #3
 8000398:	428b      	cmp	r3, r1
 800039a:	d301      	bcc.n	80003a0 <__divsi3+0x184>
 800039c:	00cb      	lsls	r3, r1, #3
 800039e:	1ac0      	subs	r0, r0, r3
 80003a0:	4152      	adcs	r2, r2
 80003a2:	0883      	lsrs	r3, r0, #2
 80003a4:	428b      	cmp	r3, r1
 80003a6:	d301      	bcc.n	80003ac <__divsi3+0x190>
 80003a8:	008b      	lsls	r3, r1, #2
 80003aa:	1ac0      	subs	r0, r0, r3
 80003ac:	4152      	adcs	r2, r2
 80003ae:	d2d9      	bcs.n	8000364 <__divsi3+0x148>
 80003b0:	0843      	lsrs	r3, r0, #1
 80003b2:	428b      	cmp	r3, r1
 80003b4:	d301      	bcc.n	80003ba <__divsi3+0x19e>
 80003b6:	004b      	lsls	r3, r1, #1
 80003b8:	1ac0      	subs	r0, r0, r3
 80003ba:	4152      	adcs	r2, r2
 80003bc:	1a41      	subs	r1, r0, r1
 80003be:	d200      	bcs.n	80003c2 <__divsi3+0x1a6>
 80003c0:	4601      	mov	r1, r0
 80003c2:	4663      	mov	r3, ip
 80003c4:	4152      	adcs	r2, r2
 80003c6:	105b      	asrs	r3, r3, #1
 80003c8:	4610      	mov	r0, r2
 80003ca:	d301      	bcc.n	80003d0 <__divsi3+0x1b4>
 80003cc:	4240      	negs	r0, r0
 80003ce:	2b00      	cmp	r3, #0
 80003d0:	d500      	bpl.n	80003d4 <__divsi3+0x1b8>
 80003d2:	4249      	negs	r1, r1
 80003d4:	4770      	bx	lr
 80003d6:	4663      	mov	r3, ip
 80003d8:	105b      	asrs	r3, r3, #1
 80003da:	d300      	bcc.n	80003de <__divsi3+0x1c2>
 80003dc:	4240      	negs	r0, r0
 80003de:	b501      	push	{r0, lr}
 80003e0:	2000      	movs	r0, #0
 80003e2:	f000 f805 	bl	80003f0 <__aeabi_idiv0>
 80003e6:	bd02      	pop	{r1, pc}

080003e8 <__aeabi_idivmod>:
 80003e8:	2900      	cmp	r1, #0
 80003ea:	d0f8      	beq.n	80003de <__divsi3+0x1c2>
 80003ec:	e716      	b.n	800021c <__divsi3>
 80003ee:	4770      	bx	lr

080003f0 <__aeabi_idiv0>:
 80003f0:	4770      	bx	lr
 80003f2:	46c0      	nop			; (mov r8, r8)

080003f4 <Reset_Handler>:
 80003f4:	480d      	ldr	r0, [pc, #52]	; (800042c <LoopForever+0x2>)
 80003f6:	4685      	mov	sp, r0
 80003f8:	480d      	ldr	r0, [pc, #52]	; (8000430 <LoopForever+0x6>)
 80003fa:	490e      	ldr	r1, [pc, #56]	; (8000434 <LoopForever+0xa>)
 80003fc:	4a0e      	ldr	r2, [pc, #56]	; (8000438 <LoopForever+0xe>)
 80003fe:	2300      	movs	r3, #0
 8000400:	e002      	b.n	8000408 <LoopCopyDataInit>

08000402 <CopyDataInit>:
 8000402:	58d4      	ldr	r4, [r2, r3]
 8000404:	50c4      	str	r4, [r0, r3]
 8000406:	3304      	adds	r3, #4

08000408 <LoopCopyDataInit>:
 8000408:	18c4      	adds	r4, r0, r3
 800040a:	428c      	cmp	r4, r1
 800040c:	d3f9      	bcc.n	8000402 <CopyDataInit>
 800040e:	4a0b      	ldr	r2, [pc, #44]	; (800043c <LoopForever+0x12>)
 8000410:	4c0b      	ldr	r4, [pc, #44]	; (8000440 <LoopForever+0x16>)
 8000412:	2300      	movs	r3, #0
 8000414:	e001      	b.n	800041a <LoopFillZerobss>

08000416 <FillZerobss>:
 8000416:	6013      	str	r3, [r2, #0]
 8000418:	3204      	adds	r2, #4

0800041a <LoopFillZerobss>:
 800041a:	42a2      	cmp	r2, r4
 800041c:	d3fb      	bcc.n	8000416 <FillZerobss>
 800041e:	f000 fa1f 	bl	8000860 <SystemInit>
 8000422:	f008 fee5 	bl	80091f0 <__libc_init_array>
 8000426:	f000 f9bb 	bl	80007a0 <main>

0800042a <LoopForever>:
 800042a:	e7fe      	b.n	800042a <LoopForever>
 800042c:	20002000 	.word	0x20002000
 8000430:	20000000 	.word	0x20000000
 8000434:	200006ec 	.word	0x200006ec
 8000438:	08009d80 	.word	0x08009d80
 800043c:	200006ec 	.word	0x200006ec
 8000440:	2000194c 	.word	0x2000194c

08000444 <ADC1_COMP_IRQHandler>:
 8000444:	e7fe      	b.n	8000444 <ADC1_COMP_IRQHandler>
	...

08000448 <NVIC_SetPriority>:
 8000448:	b590      	push	{r4, r7, lr}
 800044a:	b083      	sub	sp, #12
 800044c:	af00      	add	r7, sp, #0
 800044e:	0002      	movs	r2, r0
 8000450:	6039      	str	r1, [r7, #0]
 8000452:	1dfb      	adds	r3, r7, #7
 8000454:	701a      	strb	r2, [r3, #0]
 8000456:	1dfb      	adds	r3, r7, #7
 8000458:	781b      	ldrb	r3, [r3, #0]
 800045a:	2b7f      	cmp	r3, #127	; 0x7f
 800045c:	d932      	bls.n	80004c4 <NVIC_SetPriority+0x7c>
 800045e:	4a2f      	ldr	r2, [pc, #188]	; (800051c <NVIC_SetPriority+0xd4>)
 8000460:	1dfb      	adds	r3, r7, #7
 8000462:	781b      	ldrb	r3, [r3, #0]
 8000464:	0019      	movs	r1, r3
 8000466:	230f      	movs	r3, #15
 8000468:	400b      	ands	r3, r1
 800046a:	3b08      	subs	r3, #8
 800046c:	089b      	lsrs	r3, r3, #2
 800046e:	3306      	adds	r3, #6
 8000470:	009b      	lsls	r3, r3, #2
 8000472:	18d3      	adds	r3, r2, r3
 8000474:	3304      	adds	r3, #4
 8000476:	681b      	ldr	r3, [r3, #0]
 8000478:	1dfa      	adds	r2, r7, #7
 800047a:	7812      	ldrb	r2, [r2, #0]
 800047c:	0011      	movs	r1, r2
 800047e:	2203      	movs	r2, #3
 8000480:	400a      	ands	r2, r1
 8000482:	00d2      	lsls	r2, r2, #3
 8000484:	21ff      	movs	r1, #255	; 0xff
 8000486:	4091      	lsls	r1, r2
 8000488:	000a      	movs	r2, r1
 800048a:	43d2      	mvns	r2, r2
 800048c:	401a      	ands	r2, r3
 800048e:	0011      	movs	r1, r2
 8000490:	683b      	ldr	r3, [r7, #0]
 8000492:	019b      	lsls	r3, r3, #6
 8000494:	22ff      	movs	r2, #255	; 0xff
 8000496:	401a      	ands	r2, r3
 8000498:	1dfb      	adds	r3, r7, #7
 800049a:	781b      	ldrb	r3, [r3, #0]
 800049c:	0018      	movs	r0, r3
 800049e:	2303      	movs	r3, #3
 80004a0:	4003      	ands	r3, r0
 80004a2:	00db      	lsls	r3, r3, #3
 80004a4:	409a      	lsls	r2, r3
 80004a6:	481d      	ldr	r0, [pc, #116]	; (800051c <NVIC_SetPriority+0xd4>)
 80004a8:	1dfb      	adds	r3, r7, #7
 80004aa:	781b      	ldrb	r3, [r3, #0]
 80004ac:	001c      	movs	r4, r3
 80004ae:	230f      	movs	r3, #15
 80004b0:	4023      	ands	r3, r4
 80004b2:	3b08      	subs	r3, #8
 80004b4:	089b      	lsrs	r3, r3, #2
 80004b6:	430a      	orrs	r2, r1
 80004b8:	3306      	adds	r3, #6
 80004ba:	009b      	lsls	r3, r3, #2
 80004bc:	18c3      	adds	r3, r0, r3
 80004be:	3304      	adds	r3, #4
 80004c0:	601a      	str	r2, [r3, #0]
 80004c2:	e027      	b.n	8000514 <NVIC_SetPriority+0xcc>
 80004c4:	4a16      	ldr	r2, [pc, #88]	; (8000520 <NVIC_SetPriority+0xd8>)
 80004c6:	1dfb      	adds	r3, r7, #7
 80004c8:	781b      	ldrb	r3, [r3, #0]
 80004ca:	b25b      	sxtb	r3, r3
 80004cc:	089b      	lsrs	r3, r3, #2
 80004ce:	33c0      	adds	r3, #192	; 0xc0
 80004d0:	009b      	lsls	r3, r3, #2
 80004d2:	589b      	ldr	r3, [r3, r2]
 80004d4:	1dfa      	adds	r2, r7, #7
 80004d6:	7812      	ldrb	r2, [r2, #0]
 80004d8:	0011      	movs	r1, r2
 80004da:	2203      	movs	r2, #3
 80004dc:	400a      	ands	r2, r1
 80004de:	00d2      	lsls	r2, r2, #3
 80004e0:	21ff      	movs	r1, #255	; 0xff
 80004e2:	4091      	lsls	r1, r2
 80004e4:	000a      	movs	r2, r1
 80004e6:	43d2      	mvns	r2, r2
 80004e8:	401a      	ands	r2, r3
 80004ea:	0011      	movs	r1, r2
 80004ec:	683b      	ldr	r3, [r7, #0]
 80004ee:	019b      	lsls	r3, r3, #6
 80004f0:	22ff      	movs	r2, #255	; 0xff
 80004f2:	401a      	ands	r2, r3
 80004f4:	1dfb      	adds	r3, r7, #7
 80004f6:	781b      	ldrb	r3, [r3, #0]
 80004f8:	0018      	movs	r0, r3
 80004fa:	2303      	movs	r3, #3
 80004fc:	4003      	ands	r3, r0
 80004fe:	00db      	lsls	r3, r3, #3
 8000500:	409a      	lsls	r2, r3
 8000502:	4807      	ldr	r0, [pc, #28]	; (8000520 <NVIC_SetPriority+0xd8>)
 8000504:	1dfb      	adds	r3, r7, #7
 8000506:	781b      	ldrb	r3, [r3, #0]
 8000508:	b25b      	sxtb	r3, r3
 800050a:	089b      	lsrs	r3, r3, #2
 800050c:	430a      	orrs	r2, r1
 800050e:	33c0      	adds	r3, #192	; 0xc0
 8000510:	009b      	lsls	r3, r3, #2
 8000512:	501a      	str	r2, [r3, r0]
 8000514:	46c0      	nop			; (mov r8, r8)
 8000516:	46bd      	mov	sp, r7
 8000518:	b003      	add	sp, #12
 800051a:	bd90      	pop	{r4, r7, pc}
 800051c:	e000ed00 	.word	0xe000ed00
 8000520:	e000e100 	.word	0xe000e100

08000524 <SysTick_Config>:
 8000524:	b580      	push	{r7, lr}
 8000526:	b082      	sub	sp, #8
 8000528:	af00      	add	r7, sp, #0
 800052a:	6078      	str	r0, [r7, #4]
 800052c:	687b      	ldr	r3, [r7, #4]
 800052e:	1e5a      	subs	r2, r3, #1
 8000530:	2380      	movs	r3, #128	; 0x80
 8000532:	045b      	lsls	r3, r3, #17
 8000534:	429a      	cmp	r2, r3
 8000536:	d301      	bcc.n	800053c <SysTick_Config+0x18>
 8000538:	2301      	movs	r3, #1
 800053a:	e010      	b.n	800055e <SysTick_Config+0x3a>
 800053c:	4b0a      	ldr	r3, [pc, #40]	; (8000568 <SysTick_Config+0x44>)
 800053e:	687a      	ldr	r2, [r7, #4]
 8000540:	3a01      	subs	r2, #1
 8000542:	605a      	str	r2, [r3, #4]
 8000544:	2301      	movs	r3, #1
 8000546:	425b      	negs	r3, r3
 8000548:	2103      	movs	r1, #3
 800054a:	0018      	movs	r0, r3
 800054c:	f7ff ff7c 	bl	8000448 <NVIC_SetPriority>
 8000550:	4b05      	ldr	r3, [pc, #20]	; (8000568 <SysTick_Config+0x44>)
 8000552:	2200      	movs	r2, #0
 8000554:	609a      	str	r2, [r3, #8]
 8000556:	4b04      	ldr	r3, [pc, #16]	; (8000568 <SysTick_Config+0x44>)
 8000558:	2207      	movs	r2, #7
 800055a:	601a      	str	r2, [r3, #0]
 800055c:	2300      	movs	r3, #0
 800055e:	0018      	movs	r0, r3
 8000560:	46bd      	mov	sp, r7
 8000562:	b002      	add	sp, #8
 8000564:	bd80      	pop	{r7, pc}
 8000566:	46c0      	nop			; (mov r8, r8)
 8000568:	e000e010 	.word	0xe000e010

0800056c <LL_RCC_HSE_Enable>:
 800056c:	b580      	push	{r7, lr}
 800056e:	af00      	add	r7, sp, #0
 8000570:	4b04      	ldr	r3, [pc, #16]	; (8000584 <LL_RCC_HSE_Enable+0x18>)
 8000572:	681a      	ldr	r2, [r3, #0]
 8000574:	4b03      	ldr	r3, [pc, #12]	; (8000584 <LL_RCC_HSE_Enable+0x18>)
 8000576:	2180      	movs	r1, #128	; 0x80
 8000578:	0249      	lsls	r1, r1, #9
 800057a:	430a      	orrs	r2, r1
 800057c:	601a      	str	r2, [r3, #0]
 800057e:	46c0      	nop			; (mov r8, r8)
 8000580:	46bd      	mov	sp, r7
 8000582:	bd80      	pop	{r7, pc}
 8000584:	40021000 	.word	0x40021000

08000588 <LL_RCC_HSE_IsReady>:
 8000588:	b580      	push	{r7, lr}
 800058a:	af00      	add	r7, sp, #0
 800058c:	4b06      	ldr	r3, [pc, #24]	; (80005a8 <LL_RCC_HSE_IsReady+0x20>)
 800058e:	681a      	ldr	r2, [r3, #0]
 8000590:	2380      	movs	r3, #128	; 0x80
 8000592:	029b      	lsls	r3, r3, #10
 8000594:	4013      	ands	r3, r2
 8000596:	4a05      	ldr	r2, [pc, #20]	; (80005ac <LL_RCC_HSE_IsReady+0x24>)
 8000598:	4694      	mov	ip, r2
 800059a:	4463      	add	r3, ip
 800059c:	425a      	negs	r2, r3
 800059e:	4153      	adcs	r3, r2
 80005a0:	b2db      	uxtb	r3, r3
 80005a2:	0018      	movs	r0, r3
 80005a4:	46bd      	mov	sp, r7
 80005a6:	bd80      	pop	{r7, pc}
 80005a8:	40021000 	.word	0x40021000
 80005ac:	fffe0000 	.word	0xfffe0000

080005b0 <LL_RCC_SetSysClkSource>:
 80005b0:	b580      	push	{r7, lr}
 80005b2:	b082      	sub	sp, #8
 80005b4:	af00      	add	r7, sp, #0
 80005b6:	6078      	str	r0, [r7, #4]
 80005b8:	4b06      	ldr	r3, [pc, #24]	; (80005d4 <LL_RCC_SetSysClkSource+0x24>)
 80005ba:	685b      	ldr	r3, [r3, #4]
 80005bc:	2203      	movs	r2, #3
 80005be:	4393      	bics	r3, r2
 80005c0:	0019      	movs	r1, r3
 80005c2:	4b04      	ldr	r3, [pc, #16]	; (80005d4 <LL_RCC_SetSysClkSource+0x24>)
 80005c4:	687a      	ldr	r2, [r7, #4]
 80005c6:	430a      	orrs	r2, r1
 80005c8:	605a      	str	r2, [r3, #4]
 80005ca:	46c0      	nop			; (mov r8, r8)
 80005cc:	46bd      	mov	sp, r7
 80005ce:	b002      	add	sp, #8
 80005d0:	bd80      	pop	{r7, pc}
 80005d2:	46c0      	nop			; (mov r8, r8)
 80005d4:	40021000 	.word	0x40021000

080005d8 <LL_RCC_GetSysClkSource>:
 80005d8:	b580      	push	{r7, lr}
 80005da:	af00      	add	r7, sp, #0
 80005dc:	4b03      	ldr	r3, [pc, #12]	; (80005ec <LL_RCC_GetSysClkSource+0x14>)
 80005de:	685b      	ldr	r3, [r3, #4]
 80005e0:	220c      	movs	r2, #12
 80005e2:	4013      	ands	r3, r2
 80005e4:	0018      	movs	r0, r3
 80005e6:	46bd      	mov	sp, r7
 80005e8:	bd80      	pop	{r7, pc}
 80005ea:	46c0      	nop			; (mov r8, r8)
 80005ec:	40021000 	.word	0x40021000

080005f0 <LL_RCC_SetAHBPrescaler>:
 80005f0:	b580      	push	{r7, lr}
 80005f2:	b082      	sub	sp, #8
 80005f4:	af00      	add	r7, sp, #0
 80005f6:	6078      	str	r0, [r7, #4]
 80005f8:	4b06      	ldr	r3, [pc, #24]	; (8000614 <LL_RCC_SetAHBPrescaler+0x24>)
 80005fa:	685b      	ldr	r3, [r3, #4]
 80005fc:	22f0      	movs	r2, #240	; 0xf0
 80005fe:	4393      	bics	r3, r2
 8000600:	0019      	movs	r1, r3
 8000602:	4b04      	ldr	r3, [pc, #16]	; (8000614 <LL_RCC_SetAHBPrescaler+0x24>)
 8000604:	687a      	ldr	r2, [r7, #4]
 8000606:	430a      	orrs	r2, r1
 8000608:	605a      	str	r2, [r3, #4]
 800060a:	46c0      	nop			; (mov r8, r8)
 800060c:	46bd      	mov	sp, r7
 800060e:	b002      	add	sp, #8
 8000610:	bd80      	pop	{r7, pc}
 8000612:	46c0      	nop			; (mov r8, r8)
 8000614:	40021000 	.word	0x40021000

08000618 <LL_RCC_SetAPB1Prescaler>:
 8000618:	b580      	push	{r7, lr}
 800061a:	b082      	sub	sp, #8
 800061c:	af00      	add	r7, sp, #0
 800061e:	6078      	str	r0, [r7, #4]
 8000620:	4b06      	ldr	r3, [pc, #24]	; (800063c <LL_RCC_SetAPB1Prescaler+0x24>)
 8000622:	685b      	ldr	r3, [r3, #4]
 8000624:	4a06      	ldr	r2, [pc, #24]	; (8000640 <LL_RCC_SetAPB1Prescaler+0x28>)
 8000626:	4013      	ands	r3, r2
 8000628:	0019      	movs	r1, r3
 800062a:	4b04      	ldr	r3, [pc, #16]	; (800063c <LL_RCC_SetAPB1Prescaler+0x24>)
 800062c:	687a      	ldr	r2, [r7, #4]
 800062e:	430a      	orrs	r2, r1
 8000630:	605a      	str	r2, [r3, #4]
 8000632:	46c0      	nop			; (mov r8, r8)
 8000634:	46bd      	mov	sp, r7
 8000636:	b002      	add	sp, #8
 8000638:	bd80      	pop	{r7, pc}
 800063a:	46c0      	nop			; (mov r8, r8)
 800063c:	40021000 	.word	0x40021000
 8000640:	fffff8ff 	.word	0xfffff8ff

08000644 <LL_RCC_PLL_Enable>:
 8000644:	b580      	push	{r7, lr}
 8000646:	af00      	add	r7, sp, #0
 8000648:	4b04      	ldr	r3, [pc, #16]	; (800065c <LL_RCC_PLL_Enable+0x18>)
 800064a:	681a      	ldr	r2, [r3, #0]
 800064c:	4b03      	ldr	r3, [pc, #12]	; (800065c <LL_RCC_PLL_Enable+0x18>)
 800064e:	2180      	movs	r1, #128	; 0x80
 8000650:	0449      	lsls	r1, r1, #17
 8000652:	430a      	orrs	r2, r1
 8000654:	601a      	str	r2, [r3, #0]
 8000656:	46c0      	nop			; (mov r8, r8)
 8000658:	46bd      	mov	sp, r7
 800065a:	bd80      	pop	{r7, pc}
 800065c:	40021000 	.word	0x40021000

08000660 <LL_RCC_PLL_IsReady>:
 8000660:	b580      	push	{r7, lr}
 8000662:	af00      	add	r7, sp, #0
 8000664:	4b07      	ldr	r3, [pc, #28]	; (8000684 <LL_RCC_PLL_IsReady+0x24>)
 8000666:	681a      	ldr	r2, [r3, #0]
 8000668:	2380      	movs	r3, #128	; 0x80
 800066a:	049b      	lsls	r3, r3, #18
 800066c:	4013      	ands	r3, r2
 800066e:	22fe      	movs	r2, #254	; 0xfe
 8000670:	0612      	lsls	r2, r2, #24
 8000672:	4694      	mov	ip, r2
 8000674:	4463      	add	r3, ip
 8000676:	425a      	negs	r2, r3
 8000678:	4153      	adcs	r3, r2
 800067a:	b2db      	uxtb	r3, r3
 800067c:	0018      	movs	r0, r3
 800067e:	46bd      	mov	sp, r7
 8000680:	bd80      	pop	{r7, pc}
 8000682:	46c0      	nop			; (mov r8, r8)
 8000684:	40021000 	.word	0x40021000

08000688 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000688:	b580      	push	{r7, lr}
 800068a:	b082      	sub	sp, #8
 800068c:	af00      	add	r7, sp, #0
 800068e:	6078      	str	r0, [r7, #4]
 8000690:	6039      	str	r1, [r7, #0]
 8000692:	4b0e      	ldr	r3, [pc, #56]	; (80006cc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000694:	685b      	ldr	r3, [r3, #4]
 8000696:	4a0e      	ldr	r2, [pc, #56]	; (80006d0 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8000698:	4013      	ands	r3, r2
 800069a:	0019      	movs	r1, r3
 800069c:	687a      	ldr	r2, [r7, #4]
 800069e:	2380      	movs	r3, #128	; 0x80
 80006a0:	025b      	lsls	r3, r3, #9
 80006a2:	401a      	ands	r2, r3
 80006a4:	683b      	ldr	r3, [r7, #0]
 80006a6:	431a      	orrs	r2, r3
 80006a8:	4b08      	ldr	r3, [pc, #32]	; (80006cc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80006aa:	430a      	orrs	r2, r1
 80006ac:	605a      	str	r2, [r3, #4]
 80006ae:	4b07      	ldr	r3, [pc, #28]	; (80006cc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80006b0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80006b2:	220f      	movs	r2, #15
 80006b4:	4393      	bics	r3, r2
 80006b6:	0019      	movs	r1, r3
 80006b8:	687b      	ldr	r3, [r7, #4]
 80006ba:	220f      	movs	r2, #15
 80006bc:	401a      	ands	r2, r3
 80006be:	4b03      	ldr	r3, [pc, #12]	; (80006cc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80006c0:	430a      	orrs	r2, r1
 80006c2:	62da      	str	r2, [r3, #44]	; 0x2c
 80006c4:	46c0      	nop			; (mov r8, r8)
 80006c6:	46bd      	mov	sp, r7
 80006c8:	b002      	add	sp, #8
 80006ca:	bd80      	pop	{r7, pc}
 80006cc:	40021000 	.word	0x40021000
 80006d0:	ffc2ffff 	.word	0xffc2ffff

080006d4 <LL_FLASH_SetLatency>:
 80006d4:	b580      	push	{r7, lr}
 80006d6:	b082      	sub	sp, #8
 80006d8:	af00      	add	r7, sp, #0
 80006da:	6078      	str	r0, [r7, #4]
 80006dc:	4b06      	ldr	r3, [pc, #24]	; (80006f8 <LL_FLASH_SetLatency+0x24>)
 80006de:	681b      	ldr	r3, [r3, #0]
 80006e0:	2201      	movs	r2, #1
 80006e2:	4393      	bics	r3, r2
 80006e4:	0019      	movs	r1, r3
 80006e6:	4b04      	ldr	r3, [pc, #16]	; (80006f8 <LL_FLASH_SetLatency+0x24>)
 80006e8:	687a      	ldr	r2, [r7, #4]
 80006ea:	430a      	orrs	r2, r1
 80006ec:	601a      	str	r2, [r3, #0]
 80006ee:	46c0      	nop			; (mov r8, r8)
 80006f0:	46bd      	mov	sp, r7
 80006f2:	b002      	add	sp, #8
 80006f4:	bd80      	pop	{r7, pc}
 80006f6:	46c0      	nop			; (mov r8, r8)
 80006f8:	40022000 	.word	0x40022000

080006fc <rcc_config>:
 80006fc:	b580      	push	{r7, lr}
 80006fe:	af00      	add	r7, sp, #0
 8000700:	2001      	movs	r0, #1
 8000702:	f7ff ffe7 	bl	80006d4 <LL_FLASH_SetLatency>
 8000706:	f7ff ff31 	bl	800056c <LL_RCC_HSE_Enable>
 800070a:	46c0      	nop			; (mov r8, r8)
 800070c:	f7ff ff3c 	bl	8000588 <LL_RCC_HSE_IsReady>
 8000710:	0003      	movs	r3, r0
 8000712:	2b01      	cmp	r3, #1
 8000714:	d1fa      	bne.n	800070c <rcc_config+0x10>
 8000716:	23a0      	movs	r3, #160	; 0xa0
 8000718:	039b      	lsls	r3, r3, #14
 800071a:	4a13      	ldr	r2, [pc, #76]	; (8000768 <rcc_config+0x6c>)
 800071c:	0019      	movs	r1, r3
 800071e:	0010      	movs	r0, r2
 8000720:	f7ff ffb2 	bl	8000688 <LL_RCC_PLL_ConfigDomain_SYS>
 8000724:	f7ff ff8e 	bl	8000644 <LL_RCC_PLL_Enable>
 8000728:	46c0      	nop			; (mov r8, r8)
 800072a:	f7ff ff99 	bl	8000660 <LL_RCC_PLL_IsReady>
 800072e:	0003      	movs	r3, r0
 8000730:	2b01      	cmp	r3, #1
 8000732:	d1fa      	bne.n	800072a <rcc_config+0x2e>
 8000734:	2000      	movs	r0, #0
 8000736:	f7ff ff5b 	bl	80005f0 <LL_RCC_SetAHBPrescaler>
 800073a:	2002      	movs	r0, #2
 800073c:	f7ff ff38 	bl	80005b0 <LL_RCC_SetSysClkSource>
 8000740:	46c0      	nop			; (mov r8, r8)
 8000742:	f7ff ff49 	bl	80005d8 <LL_RCC_GetSysClkSource>
 8000746:	0003      	movs	r3, r0
 8000748:	2b08      	cmp	r3, #8
 800074a:	d1fa      	bne.n	8000742 <rcc_config+0x46>
 800074c:	2000      	movs	r0, #0
 800074e:	f7ff ff63 	bl	8000618 <LL_RCC_SetAPB1Prescaler>
 8000752:	4b06      	ldr	r3, [pc, #24]	; (800076c <rcc_config+0x70>)
 8000754:	0018      	movs	r0, r3
 8000756:	f7ff fee5 	bl	8000524 <SysTick_Config>
 800075a:	4b05      	ldr	r3, [pc, #20]	; (8000770 <rcc_config+0x74>)
 800075c:	4a05      	ldr	r2, [pc, #20]	; (8000774 <rcc_config+0x78>)
 800075e:	601a      	str	r2, [r3, #0]
 8000760:	46c0      	nop			; (mov r8, r8)
 8000762:	46bd      	mov	sp, r7
 8000764:	bd80      	pop	{r7, pc}
 8000766:	46c0      	nop			; (mov r8, r8)
 8000768:	00010001 	.word	0x00010001
 800076c:	0000bb80 	.word	0x0000bb80
 8000770:	20000000 	.word	0x20000000
 8000774:	02dc6c00 	.word	0x02dc6c00

08000778 <SysTick_Handler>:
 8000778:	b580      	push	{r7, lr}
 800077a:	af00      	add	r7, sp, #0
 800077c:	4b06      	ldr	r3, [pc, #24]	; (8000798 <SysTick_Handler+0x20>)
 800077e:	681b      	ldr	r3, [r3, #0]
 8000780:	3301      	adds	r3, #1
 8000782:	4906      	ldr	r1, [pc, #24]	; (800079c <SysTick_Handler+0x24>)
 8000784:	0018      	movs	r0, r3
 8000786:	f7ff fe2f 	bl	80003e8 <__aeabi_idivmod>
 800078a:	000b      	movs	r3, r1
 800078c:	001a      	movs	r2, r3
 800078e:	4b02      	ldr	r3, [pc, #8]	; (8000798 <SysTick_Handler+0x20>)
 8000790:	601a      	str	r2, [r3, #0]
 8000792:	46c0      	nop			; (mov r8, r8)
 8000794:	46bd      	mov	sp, r7
 8000796:	bd80      	pop	{r7, pc}
 8000798:	20000708 	.word	0x20000708
 800079c:	00002710 	.word	0x00002710

080007a0 <main>:
 80007a0:	b580      	push	{r7, lr}
 80007a2:	b084      	sub	sp, #16
 80007a4:	af00      	add	r7, sp, #0
 80007a6:	2300      	movs	r3, #0
 80007a8:	60bb      	str	r3, [r7, #8]
 80007aa:	2300      	movs	r3, #0
 80007ac:	607b      	str	r3, [r7, #4]
 80007ae:	2300      	movs	r3, #0
 80007b0:	603b      	str	r3, [r7, #0]
 80007b2:	2300      	movs	r3, #0
 80007b4:	60fb      	str	r3, [r7, #12]
 80007b6:	f7ff ffa1 	bl	80006fc <rcc_config>
 80007ba:	f002 fac3 	bl	8002d44 <term_init>
 80007be:	f001 fcd5 	bl	800216c <dynamixel_init>
 80007c2:	f000 fbb1 	bl	8000f28 <coll_avoid_init>
 80007c6:	f001 ff17 	bl	80025f8 <err_man_init>
 80007ca:	f000 fbf9 	bl	8000fc0 <col_av_read_status>
 80007ce:	1e03      	subs	r3, r0, #0
 80007d0:	d036      	beq.n	8000840 <main+0xa0>
 80007d2:	68fb      	ldr	r3, [r7, #12]
 80007d4:	3301      	adds	r3, #1
 80007d6:	22fa      	movs	r2, #250	; 0xfa
 80007d8:	0091      	lsls	r1, r2, #2
 80007da:	0018      	movs	r0, r3
 80007dc:	f7ff fe04 	bl	80003e8 <__aeabi_idivmod>
 80007e0:	000b      	movs	r3, r1
 80007e2:	60fb      	str	r3, [r7, #12]
 80007e4:	68fb      	ldr	r3, [r7, #12]
 80007e6:	2b00      	cmp	r3, #0
 80007e8:	d133      	bne.n	8000852 <main+0xb2>
 80007ea:	2300      	movs	r3, #0
 80007ec:	60fb      	str	r3, [r7, #12]
 80007ee:	f000 fc0b 	bl	8001008 <col_av_set_block>
 80007f2:	46c0      	nop			; (mov r8, r8)
 80007f4:	f000 fc1c 	bl	8001030 <col_av_get_ack_block>
 80007f8:	1e03      	subs	r3, r0, #0
 80007fa:	d0fb      	beq.n	80007f4 <main+0x54>
 80007fc:	4b16      	ldr	r3, [pc, #88]	; (8000858 <main+0xb8>)
 80007fe:	681b      	ldr	r3, [r3, #0]
 8000800:	60bb      	str	r3, [r7, #8]
 8000802:	f000 fbb3 	bl	8000f6c <reload_sensors>
 8000806:	4b14      	ldr	r3, [pc, #80]	; (8000858 <main+0xb8>)
 8000808:	681b      	ldr	r3, [r3, #0]
 800080a:	607b      	str	r3, [r7, #4]
 800080c:	687a      	ldr	r2, [r7, #4]
 800080e:	68bb      	ldr	r3, [r7, #8]
 8000810:	429a      	cmp	r2, r3
 8000812:	db03      	blt.n	800081c <main+0x7c>
 8000814:	687a      	ldr	r2, [r7, #4]
 8000816:	68bb      	ldr	r3, [r7, #8]
 8000818:	1ad3      	subs	r3, r2, r3
 800081a:	e004      	b.n	8000826 <main+0x86>
 800081c:	687b      	ldr	r3, [r7, #4]
 800081e:	4a0f      	ldr	r2, [pc, #60]	; (800085c <main+0xbc>)
 8000820:	189a      	adds	r2, r3, r2
 8000822:	68bb      	ldr	r3, [r7, #8]
 8000824:	1ad3      	subs	r3, r2, r3
 8000826:	603b      	str	r3, [r7, #0]
 8000828:	683b      	ldr	r3, [r7, #0]
 800082a:	0018      	movs	r0, r3
 800082c:	f001 fec2 	bl	80025b4 <err_man_set_time>
 8000830:	f000 fc08 	bl	8001044 <col_av_any>
 8000834:	0003      	movs	r3, r0
 8000836:	0018      	movs	r0, r3
 8000838:	f000 fbcc 	bl	8000fd4 <col_av_set_status>
 800083c:	f000 fbee 	bl	800101c <col_av_clr_block>
 8000840:	f001 fef2 	bl	8002628 <er_man_disp_get>
 8000844:	1e03      	subs	r3, r0, #0
 8000846:	d0c0      	beq.n	80007ca <main+0x2a>
 8000848:	f001 fe58 	bl	80024fc <err_man_show_err>
 800084c:	f001 ff00 	bl	8002650 <er_man_disp_clr>
 8000850:	e7bb      	b.n	80007ca <main+0x2a>
 8000852:	46c0      	nop			; (mov r8, r8)
 8000854:	e7b9      	b.n	80007ca <main+0x2a>
 8000856:	46c0      	nop			; (mov r8, r8)
 8000858:	20000708 	.word	0x20000708
 800085c:	00002710 	.word	0x00002710

08000860 <SystemInit>:
 8000860:	b580      	push	{r7, lr}
 8000862:	af00      	add	r7, sp, #0
 8000864:	4b1a      	ldr	r3, [pc, #104]	; (80008d0 <SystemInit+0x70>)
 8000866:	681a      	ldr	r2, [r3, #0]
 8000868:	4b19      	ldr	r3, [pc, #100]	; (80008d0 <SystemInit+0x70>)
 800086a:	2101      	movs	r1, #1
 800086c:	430a      	orrs	r2, r1
 800086e:	601a      	str	r2, [r3, #0]
 8000870:	4b17      	ldr	r3, [pc, #92]	; (80008d0 <SystemInit+0x70>)
 8000872:	685a      	ldr	r2, [r3, #4]
 8000874:	4b16      	ldr	r3, [pc, #88]	; (80008d0 <SystemInit+0x70>)
 8000876:	4917      	ldr	r1, [pc, #92]	; (80008d4 <SystemInit+0x74>)
 8000878:	400a      	ands	r2, r1
 800087a:	605a      	str	r2, [r3, #4]
 800087c:	4b14      	ldr	r3, [pc, #80]	; (80008d0 <SystemInit+0x70>)
 800087e:	681a      	ldr	r2, [r3, #0]
 8000880:	4b13      	ldr	r3, [pc, #76]	; (80008d0 <SystemInit+0x70>)
 8000882:	4915      	ldr	r1, [pc, #84]	; (80008d8 <SystemInit+0x78>)
 8000884:	400a      	ands	r2, r1
 8000886:	601a      	str	r2, [r3, #0]
 8000888:	4b11      	ldr	r3, [pc, #68]	; (80008d0 <SystemInit+0x70>)
 800088a:	681a      	ldr	r2, [r3, #0]
 800088c:	4b10      	ldr	r3, [pc, #64]	; (80008d0 <SystemInit+0x70>)
 800088e:	4913      	ldr	r1, [pc, #76]	; (80008dc <SystemInit+0x7c>)
 8000890:	400a      	ands	r2, r1
 8000892:	601a      	str	r2, [r3, #0]
 8000894:	4b0e      	ldr	r3, [pc, #56]	; (80008d0 <SystemInit+0x70>)
 8000896:	685a      	ldr	r2, [r3, #4]
 8000898:	4b0d      	ldr	r3, [pc, #52]	; (80008d0 <SystemInit+0x70>)
 800089a:	4911      	ldr	r1, [pc, #68]	; (80008e0 <SystemInit+0x80>)
 800089c:	400a      	ands	r2, r1
 800089e:	605a      	str	r2, [r3, #4]
 80008a0:	4b0b      	ldr	r3, [pc, #44]	; (80008d0 <SystemInit+0x70>)
 80008a2:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80008a4:	4b0a      	ldr	r3, [pc, #40]	; (80008d0 <SystemInit+0x70>)
 80008a6:	210f      	movs	r1, #15
 80008a8:	438a      	bics	r2, r1
 80008aa:	62da      	str	r2, [r3, #44]	; 0x2c
 80008ac:	4b08      	ldr	r3, [pc, #32]	; (80008d0 <SystemInit+0x70>)
 80008ae:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80008b0:	4b07      	ldr	r3, [pc, #28]	; (80008d0 <SystemInit+0x70>)
 80008b2:	490c      	ldr	r1, [pc, #48]	; (80008e4 <SystemInit+0x84>)
 80008b4:	400a      	ands	r2, r1
 80008b6:	631a      	str	r2, [r3, #48]	; 0x30
 80008b8:	4b05      	ldr	r3, [pc, #20]	; (80008d0 <SystemInit+0x70>)
 80008ba:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 80008bc:	4b04      	ldr	r3, [pc, #16]	; (80008d0 <SystemInit+0x70>)
 80008be:	2101      	movs	r1, #1
 80008c0:	438a      	bics	r2, r1
 80008c2:	635a      	str	r2, [r3, #52]	; 0x34
 80008c4:	4b02      	ldr	r3, [pc, #8]	; (80008d0 <SystemInit+0x70>)
 80008c6:	2200      	movs	r2, #0
 80008c8:	609a      	str	r2, [r3, #8]
 80008ca:	46c0      	nop			; (mov r8, r8)
 80008cc:	46bd      	mov	sp, r7
 80008ce:	bd80      	pop	{r7, pc}
 80008d0:	40021000 	.word	0x40021000
 80008d4:	f8ffb80c 	.word	0xf8ffb80c
 80008d8:	fef6ffff 	.word	0xfef6ffff
 80008dc:	fffbffff 	.word	0xfffbffff
 80008e0:	ffc0ffff 	.word	0xffc0ffff
 80008e4:	fffffeac 	.word	0xfffffeac

080008e8 <NVIC_EnableIRQ>:
 80008e8:	b580      	push	{r7, lr}
 80008ea:	b082      	sub	sp, #8
 80008ec:	af00      	add	r7, sp, #0
 80008ee:	0002      	movs	r2, r0
 80008f0:	1dfb      	adds	r3, r7, #7
 80008f2:	701a      	strb	r2, [r3, #0]
 80008f4:	1dfb      	adds	r3, r7, #7
 80008f6:	781b      	ldrb	r3, [r3, #0]
 80008f8:	001a      	movs	r2, r3
 80008fa:	231f      	movs	r3, #31
 80008fc:	401a      	ands	r2, r3
 80008fe:	4b04      	ldr	r3, [pc, #16]	; (8000910 <NVIC_EnableIRQ+0x28>)
 8000900:	2101      	movs	r1, #1
 8000902:	4091      	lsls	r1, r2
 8000904:	000a      	movs	r2, r1
 8000906:	601a      	str	r2, [r3, #0]
 8000908:	46c0      	nop			; (mov r8, r8)
 800090a:	46bd      	mov	sp, r7
 800090c:	b002      	add	sp, #8
 800090e:	bd80      	pop	{r7, pc}
 8000910:	e000e100 	.word	0xe000e100

08000914 <NVIC_DisableIRQ>:
 8000914:	b580      	push	{r7, lr}
 8000916:	b082      	sub	sp, #8
 8000918:	af00      	add	r7, sp, #0
 800091a:	0002      	movs	r2, r0
 800091c:	1dfb      	adds	r3, r7, #7
 800091e:	701a      	strb	r2, [r3, #0]
 8000920:	1dfb      	adds	r3, r7, #7
 8000922:	781b      	ldrb	r3, [r3, #0]
 8000924:	001a      	movs	r2, r3
 8000926:	231f      	movs	r3, #31
 8000928:	4013      	ands	r3, r2
 800092a:	4905      	ldr	r1, [pc, #20]	; (8000940 <NVIC_DisableIRQ+0x2c>)
 800092c:	2201      	movs	r2, #1
 800092e:	409a      	lsls	r2, r3
 8000930:	0013      	movs	r3, r2
 8000932:	2280      	movs	r2, #128	; 0x80
 8000934:	508b      	str	r3, [r1, r2]
 8000936:	46c0      	nop			; (mov r8, r8)
 8000938:	46bd      	mov	sp, r7
 800093a:	b002      	add	sp, #8
 800093c:	bd80      	pop	{r7, pc}
 800093e:	46c0      	nop			; (mov r8, r8)
 8000940:	e000e100 	.word	0xe000e100

08000944 <NVIC_SetPriority>:
 8000944:	b590      	push	{r4, r7, lr}
 8000946:	b083      	sub	sp, #12
 8000948:	af00      	add	r7, sp, #0
 800094a:	0002      	movs	r2, r0
 800094c:	6039      	str	r1, [r7, #0]
 800094e:	1dfb      	adds	r3, r7, #7
 8000950:	701a      	strb	r2, [r3, #0]
 8000952:	1dfb      	adds	r3, r7, #7
 8000954:	781b      	ldrb	r3, [r3, #0]
 8000956:	2b7f      	cmp	r3, #127	; 0x7f
 8000958:	d932      	bls.n	80009c0 <NVIC_SetPriority+0x7c>
 800095a:	4a2f      	ldr	r2, [pc, #188]	; (8000a18 <NVIC_SetPriority+0xd4>)
 800095c:	1dfb      	adds	r3, r7, #7
 800095e:	781b      	ldrb	r3, [r3, #0]
 8000960:	0019      	movs	r1, r3
 8000962:	230f      	movs	r3, #15
 8000964:	400b      	ands	r3, r1
 8000966:	3b08      	subs	r3, #8
 8000968:	089b      	lsrs	r3, r3, #2
 800096a:	3306      	adds	r3, #6
 800096c:	009b      	lsls	r3, r3, #2
 800096e:	18d3      	adds	r3, r2, r3
 8000970:	3304      	adds	r3, #4
 8000972:	681b      	ldr	r3, [r3, #0]
 8000974:	1dfa      	adds	r2, r7, #7
 8000976:	7812      	ldrb	r2, [r2, #0]
 8000978:	0011      	movs	r1, r2
 800097a:	2203      	movs	r2, #3
 800097c:	400a      	ands	r2, r1
 800097e:	00d2      	lsls	r2, r2, #3
 8000980:	21ff      	movs	r1, #255	; 0xff
 8000982:	4091      	lsls	r1, r2
 8000984:	000a      	movs	r2, r1
 8000986:	43d2      	mvns	r2, r2
 8000988:	401a      	ands	r2, r3
 800098a:	0011      	movs	r1, r2
 800098c:	683b      	ldr	r3, [r7, #0]
 800098e:	019b      	lsls	r3, r3, #6
 8000990:	22ff      	movs	r2, #255	; 0xff
 8000992:	401a      	ands	r2, r3
 8000994:	1dfb      	adds	r3, r7, #7
 8000996:	781b      	ldrb	r3, [r3, #0]
 8000998:	0018      	movs	r0, r3
 800099a:	2303      	movs	r3, #3
 800099c:	4003      	ands	r3, r0
 800099e:	00db      	lsls	r3, r3, #3
 80009a0:	409a      	lsls	r2, r3
 80009a2:	481d      	ldr	r0, [pc, #116]	; (8000a18 <NVIC_SetPriority+0xd4>)
 80009a4:	1dfb      	adds	r3, r7, #7
 80009a6:	781b      	ldrb	r3, [r3, #0]
 80009a8:	001c      	movs	r4, r3
 80009aa:	230f      	movs	r3, #15
 80009ac:	4023      	ands	r3, r4
 80009ae:	3b08      	subs	r3, #8
 80009b0:	089b      	lsrs	r3, r3, #2
 80009b2:	430a      	orrs	r2, r1
 80009b4:	3306      	adds	r3, #6
 80009b6:	009b      	lsls	r3, r3, #2
 80009b8:	18c3      	adds	r3, r0, r3
 80009ba:	3304      	adds	r3, #4
 80009bc:	601a      	str	r2, [r3, #0]
 80009be:	e027      	b.n	8000a10 <NVIC_SetPriority+0xcc>
 80009c0:	4a16      	ldr	r2, [pc, #88]	; (8000a1c <NVIC_SetPriority+0xd8>)
 80009c2:	1dfb      	adds	r3, r7, #7
 80009c4:	781b      	ldrb	r3, [r3, #0]
 80009c6:	b25b      	sxtb	r3, r3
 80009c8:	089b      	lsrs	r3, r3, #2
 80009ca:	33c0      	adds	r3, #192	; 0xc0
 80009cc:	009b      	lsls	r3, r3, #2
 80009ce:	589b      	ldr	r3, [r3, r2]
 80009d0:	1dfa      	adds	r2, r7, #7
 80009d2:	7812      	ldrb	r2, [r2, #0]
 80009d4:	0011      	movs	r1, r2
 80009d6:	2203      	movs	r2, #3
 80009d8:	400a      	ands	r2, r1
 80009da:	00d2      	lsls	r2, r2, #3
 80009dc:	21ff      	movs	r1, #255	; 0xff
 80009de:	4091      	lsls	r1, r2
 80009e0:	000a      	movs	r2, r1
 80009e2:	43d2      	mvns	r2, r2
 80009e4:	401a      	ands	r2, r3
 80009e6:	0011      	movs	r1, r2
 80009e8:	683b      	ldr	r3, [r7, #0]
 80009ea:	019b      	lsls	r3, r3, #6
 80009ec:	22ff      	movs	r2, #255	; 0xff
 80009ee:	401a      	ands	r2, r3
 80009f0:	1dfb      	adds	r3, r7, #7
 80009f2:	781b      	ldrb	r3, [r3, #0]
 80009f4:	0018      	movs	r0, r3
 80009f6:	2303      	movs	r3, #3
 80009f8:	4003      	ands	r3, r0
 80009fa:	00db      	lsls	r3, r3, #3
 80009fc:	409a      	lsls	r2, r3
 80009fe:	4807      	ldr	r0, [pc, #28]	; (8000a1c <NVIC_SetPriority+0xd8>)
 8000a00:	1dfb      	adds	r3, r7, #7
 8000a02:	781b      	ldrb	r3, [r3, #0]
 8000a04:	b25b      	sxtb	r3, r3
 8000a06:	089b      	lsrs	r3, r3, #2
 8000a08:	430a      	orrs	r2, r1
 8000a0a:	33c0      	adds	r3, #192	; 0xc0
 8000a0c:	009b      	lsls	r3, r3, #2
 8000a0e:	501a      	str	r2, [r3, r0]
 8000a10:	46c0      	nop			; (mov r8, r8)
 8000a12:	46bd      	mov	sp, r7
 8000a14:	b003      	add	sp, #12
 8000a16:	bd90      	pop	{r4, r7, pc}
 8000a18:	e000ed00 	.word	0xe000ed00
 8000a1c:	e000e100 	.word	0xe000e100

08000a20 <LL_GPIO_SetOutputPin>:
 8000a20:	b580      	push	{r7, lr}
 8000a22:	b082      	sub	sp, #8
 8000a24:	af00      	add	r7, sp, #0
 8000a26:	6078      	str	r0, [r7, #4]
 8000a28:	6039      	str	r1, [r7, #0]
 8000a2a:	687b      	ldr	r3, [r7, #4]
 8000a2c:	683a      	ldr	r2, [r7, #0]
 8000a2e:	619a      	str	r2, [r3, #24]
 8000a30:	46c0      	nop			; (mov r8, r8)
 8000a32:	46bd      	mov	sp, r7
 8000a34:	b002      	add	sp, #8
 8000a36:	bd80      	pop	{r7, pc}

08000a38 <LL_GPIO_ResetOutputPin>:
 8000a38:	b580      	push	{r7, lr}
 8000a3a:	b082      	sub	sp, #8
 8000a3c:	af00      	add	r7, sp, #0
 8000a3e:	6078      	str	r0, [r7, #4]
 8000a40:	6039      	str	r1, [r7, #0]
 8000a42:	687b      	ldr	r3, [r7, #4]
 8000a44:	683a      	ldr	r2, [r7, #0]
 8000a46:	629a      	str	r2, [r3, #40]	; 0x28
 8000a48:	46c0      	nop			; (mov r8, r8)
 8000a4a:	46bd      	mov	sp, r7
 8000a4c:	b002      	add	sp, #8
 8000a4e:	bd80      	pop	{r7, pc}

08000a50 <LL_APB1_GRP1_EnableClock>:
 8000a50:	b580      	push	{r7, lr}
 8000a52:	b084      	sub	sp, #16
 8000a54:	af00      	add	r7, sp, #0
 8000a56:	6078      	str	r0, [r7, #4]
 8000a58:	4b07      	ldr	r3, [pc, #28]	; (8000a78 <LL_APB1_GRP1_EnableClock+0x28>)
 8000a5a:	69d9      	ldr	r1, [r3, #28]
 8000a5c:	4b06      	ldr	r3, [pc, #24]	; (8000a78 <LL_APB1_GRP1_EnableClock+0x28>)
 8000a5e:	687a      	ldr	r2, [r7, #4]
 8000a60:	430a      	orrs	r2, r1
 8000a62:	61da      	str	r2, [r3, #28]
 8000a64:	4b04      	ldr	r3, [pc, #16]	; (8000a78 <LL_APB1_GRP1_EnableClock+0x28>)
 8000a66:	69db      	ldr	r3, [r3, #28]
 8000a68:	687a      	ldr	r2, [r7, #4]
 8000a6a:	4013      	ands	r3, r2
 8000a6c:	60fb      	str	r3, [r7, #12]
 8000a6e:	68fb      	ldr	r3, [r7, #12]
 8000a70:	46c0      	nop			; (mov r8, r8)
 8000a72:	46bd      	mov	sp, r7
 8000a74:	b004      	add	sp, #16
 8000a76:	bd80      	pop	{r7, pc}
 8000a78:	40021000 	.word	0x40021000

08000a7c <LL_TIM_EnableCounter>:
 8000a7c:	b580      	push	{r7, lr}
 8000a7e:	b082      	sub	sp, #8
 8000a80:	af00      	add	r7, sp, #0
 8000a82:	6078      	str	r0, [r7, #4]
 8000a84:	687b      	ldr	r3, [r7, #4]
 8000a86:	681b      	ldr	r3, [r3, #0]
 8000a88:	2201      	movs	r2, #1
 8000a8a:	431a      	orrs	r2, r3
 8000a8c:	687b      	ldr	r3, [r7, #4]
 8000a8e:	601a      	str	r2, [r3, #0]
 8000a90:	46c0      	nop			; (mov r8, r8)
 8000a92:	46bd      	mov	sp, r7
 8000a94:	b002      	add	sp, #8
 8000a96:	bd80      	pop	{r7, pc}

08000a98 <LL_TIM_SetCounterMode>:
 8000a98:	b580      	push	{r7, lr}
 8000a9a:	b082      	sub	sp, #8
 8000a9c:	af00      	add	r7, sp, #0
 8000a9e:	6078      	str	r0, [r7, #4]
 8000aa0:	6039      	str	r1, [r7, #0]
 8000aa2:	687b      	ldr	r3, [r7, #4]
 8000aa4:	681b      	ldr	r3, [r3, #0]
 8000aa6:	2270      	movs	r2, #112	; 0x70
 8000aa8:	4393      	bics	r3, r2
 8000aaa:	001a      	movs	r2, r3
 8000aac:	683b      	ldr	r3, [r7, #0]
 8000aae:	431a      	orrs	r2, r3
 8000ab0:	687b      	ldr	r3, [r7, #4]
 8000ab2:	601a      	str	r2, [r3, #0]
 8000ab4:	46c0      	nop			; (mov r8, r8)
 8000ab6:	46bd      	mov	sp, r7
 8000ab8:	b002      	add	sp, #8
 8000aba:	bd80      	pop	{r7, pc}

08000abc <LL_TIM_SetPrescaler>:
 8000abc:	b580      	push	{r7, lr}
 8000abe:	b082      	sub	sp, #8
 8000ac0:	af00      	add	r7, sp, #0
 8000ac2:	6078      	str	r0, [r7, #4]
 8000ac4:	6039      	str	r1, [r7, #0]
 8000ac6:	687b      	ldr	r3, [r7, #4]
 8000ac8:	683a      	ldr	r2, [r7, #0]
 8000aca:	629a      	str	r2, [r3, #40]	; 0x28
 8000acc:	46c0      	nop			; (mov r8, r8)
 8000ace:	46bd      	mov	sp, r7
 8000ad0:	b002      	add	sp, #8
 8000ad2:	bd80      	pop	{r7, pc}

08000ad4 <LL_TIM_SetAutoReload>:
 8000ad4:	b580      	push	{r7, lr}
 8000ad6:	b082      	sub	sp, #8
 8000ad8:	af00      	add	r7, sp, #0
 8000ada:	6078      	str	r0, [r7, #4]
 8000adc:	6039      	str	r1, [r7, #0]
 8000ade:	687b      	ldr	r3, [r7, #4]
 8000ae0:	683a      	ldr	r2, [r7, #0]
 8000ae2:	62da      	str	r2, [r3, #44]	; 0x2c
 8000ae4:	46c0      	nop			; (mov r8, r8)
 8000ae6:	46bd      	mov	sp, r7
 8000ae8:	b002      	add	sp, #8
 8000aea:	bd80      	pop	{r7, pc}

08000aec <LL_TIM_ClearFlag_UPDATE>:
 8000aec:	b580      	push	{r7, lr}
 8000aee:	b082      	sub	sp, #8
 8000af0:	af00      	add	r7, sp, #0
 8000af2:	6078      	str	r0, [r7, #4]
 8000af4:	687b      	ldr	r3, [r7, #4]
 8000af6:	2202      	movs	r2, #2
 8000af8:	4252      	negs	r2, r2
 8000afa:	611a      	str	r2, [r3, #16]
 8000afc:	46c0      	nop			; (mov r8, r8)
 8000afe:	46bd      	mov	sp, r7
 8000b00:	b002      	add	sp, #8
 8000b02:	bd80      	pop	{r7, pc}

08000b04 <LL_TIM_EnableIT_UPDATE>:
 8000b04:	b580      	push	{r7, lr}
 8000b06:	b082      	sub	sp, #8
 8000b08:	af00      	add	r7, sp, #0
 8000b0a:	6078      	str	r0, [r7, #4]
 8000b0c:	687b      	ldr	r3, [r7, #4]
 8000b0e:	68db      	ldr	r3, [r3, #12]
 8000b10:	2201      	movs	r2, #1
 8000b12:	431a      	orrs	r2, r3
 8000b14:	687b      	ldr	r3, [r7, #4]
 8000b16:	60da      	str	r2, [r3, #12]
 8000b18:	46c0      	nop			; (mov r8, r8)
 8000b1a:	46bd      	mov	sp, r7
 8000b1c:	b002      	add	sp, #8
 8000b1e:	bd80      	pop	{r7, pc}

08000b20 <tim_init>:
 8000b20:	b580      	push	{r7, lr}
 8000b22:	af00      	add	r7, sp, #0
 8000b24:	2001      	movs	r0, #1
 8000b26:	f7ff ff93 	bl	8000a50 <LL_APB1_GRP1_EnableClock>
 8000b2a:	4a13      	ldr	r2, [pc, #76]	; (8000b78 <tim_init+0x58>)
 8000b2c:	2380      	movs	r3, #128	; 0x80
 8000b2e:	05db      	lsls	r3, r3, #23
 8000b30:	0011      	movs	r1, r2
 8000b32:	0018      	movs	r0, r3
 8000b34:	f7ff ffc2 	bl	8000abc <LL_TIM_SetPrescaler>
 8000b38:	2380      	movs	r3, #128	; 0x80
 8000b3a:	05db      	lsls	r3, r3, #23
 8000b3c:	2109      	movs	r1, #9
 8000b3e:	0018      	movs	r0, r3
 8000b40:	f7ff ffc8 	bl	8000ad4 <LL_TIM_SetAutoReload>
 8000b44:	2380      	movs	r3, #128	; 0x80
 8000b46:	05db      	lsls	r3, r3, #23
 8000b48:	2100      	movs	r1, #0
 8000b4a:	0018      	movs	r0, r3
 8000b4c:	f7ff ffa4 	bl	8000a98 <LL_TIM_SetCounterMode>
 8000b50:	2380      	movs	r3, #128	; 0x80
 8000b52:	05db      	lsls	r3, r3, #23
 8000b54:	0018      	movs	r0, r3
 8000b56:	f7ff ffd5 	bl	8000b04 <LL_TIM_EnableIT_UPDATE>
 8000b5a:	2380      	movs	r3, #128	; 0x80
 8000b5c:	05db      	lsls	r3, r3, #23
 8000b5e:	0018      	movs	r0, r3
 8000b60:	f7ff ff8c 	bl	8000a7c <LL_TIM_EnableCounter>
 8000b64:	200f      	movs	r0, #15
 8000b66:	f7ff febf 	bl	80008e8 <NVIC_EnableIRQ>
 8000b6a:	2145      	movs	r1, #69	; 0x45
 8000b6c:	200f      	movs	r0, #15
 8000b6e:	f7ff fee9 	bl	8000944 <NVIC_SetPriority>
 8000b72:	46c0      	nop			; (mov r8, r8)
 8000b74:	46bd      	mov	sp, r7
 8000b76:	bd80      	pop	{r7, pc}
 8000b78:	0000bb7f 	.word	0x0000bb7f

08000b7c <init_sensors>:
 8000b7c:	b590      	push	{r4, r7, lr}
 8000b7e:	b085      	sub	sp, #20
 8000b80:	af00      	add	r7, sp, #0
 8000b82:	4b3b      	ldr	r3, [pc, #236]	; (8000c70 <init_sensors+0xf4>)
 8000b84:	0018      	movs	r0, r3
 8000b86:	f002 fb9f 	bl	80032c8 <VL53L0X_hw_config>
 8000b8a:	2300      	movs	r3, #0
 8000b8c:	60bb      	str	r3, [r7, #8]
 8000b8e:	2300      	movs	r3, #0
 8000b90:	60fb      	str	r3, [r7, #12]
 8000b92:	e065      	b.n	8000c60 <init_sensors+0xe4>
 8000b94:	68fb      	ldr	r3, [r7, #12]
 8000b96:	22a6      	movs	r2, #166	; 0xa6
 8000b98:	0052      	lsls	r2, r2, #1
 8000b9a:	435a      	muls	r2, r3
 8000b9c:	4b35      	ldr	r3, [pc, #212]	; (8000c74 <init_sensors+0xf8>)
 8000b9e:	18d3      	adds	r3, r2, r3
 8000ba0:	60bb      	str	r3, [r7, #8]
 8000ba2:	4b33      	ldr	r3, [pc, #204]	; (8000c70 <init_sensors+0xf4>)
 8000ba4:	681a      	ldr	r2, [r3, #0]
 8000ba6:	68fb      	ldr	r3, [r7, #12]
 8000ba8:	00db      	lsls	r3, r3, #3
 8000baa:	18d3      	adds	r3, r2, r3
 8000bac:	6818      	ldr	r0, [r3, #0]
 8000bae:	4b30      	ldr	r3, [pc, #192]	; (8000c70 <init_sensors+0xf4>)
 8000bb0:	681a      	ldr	r2, [r3, #0]
 8000bb2:	68fb      	ldr	r3, [r7, #12]
 8000bb4:	00db      	lsls	r3, r3, #3
 8000bb6:	18d3      	adds	r3, r2, r3
 8000bb8:	685b      	ldr	r3, [r3, #4]
 8000bba:	0019      	movs	r1, r3
 8000bbc:	f7ff ff30 	bl	8000a20 <LL_GPIO_SetOutputPin>
 8000bc0:	68bb      	ldr	r3, [r7, #8]
 8000bc2:	0018      	movs	r0, r3
 8000bc4:	f002 fdf6 	bl	80037b4 <VL53L0X_PollingDelay>
 8000bc8:	68ba      	ldr	r2, [r7, #8]
 8000bca:	239e      	movs	r3, #158	; 0x9e
 8000bcc:	005b      	lsls	r3, r3, #1
 8000bce:	2152      	movs	r1, #82	; 0x52
 8000bd0:	54d1      	strb	r1, [r2, r3]
 8000bd2:	68bb      	ldr	r3, [r7, #8]
 8000bd4:	1dfc      	adds	r4, r7, #7
 8000bd6:	0018      	movs	r0, r3
 8000bd8:	f003 f812 	bl	8003c00 <VL53L0X_DataInit>
 8000bdc:	0003      	movs	r3, r0
 8000bde:	7023      	strb	r3, [r4, #0]
 8000be0:	1dfb      	adds	r3, r7, #7
 8000be2:	781b      	ldrb	r3, [r3, #0]
 8000be4:	b25b      	sxtb	r3, r3
 8000be6:	2b00      	cmp	r3, #0
 8000be8:	d136      	bne.n	8000c58 <init_sensors+0xdc>
 8000bea:	68bb      	ldr	r3, [r7, #8]
 8000bec:	0018      	movs	r0, r3
 8000bee:	f003 f9a9 	bl	8003f44 <VL53L0X_StaticInit>
 8000bf2:	68b8      	ldr	r0, [r7, #8]
 8000bf4:	68bb      	ldr	r3, [r7, #8]
 8000bf6:	3341      	adds	r3, #65	; 0x41
 8000bf8:	33ff      	adds	r3, #255	; 0xff
 8000bfa:	0019      	movs	r1, r3
 8000bfc:	68bb      	ldr	r3, [r7, #8]
 8000bfe:	3342      	adds	r3, #66	; 0x42
 8000c00:	33ff      	adds	r3, #255	; 0xff
 8000c02:	001a      	movs	r2, r3
 8000c04:	f004 f9c5 	bl	8004f92 <VL53L0X_PerformRefCalibration>
 8000c08:	68b8      	ldr	r0, [r7, #8]
 8000c0a:	68bb      	ldr	r3, [r7, #8]
 8000c0c:	3345      	adds	r3, #69	; 0x45
 8000c0e:	33ff      	adds	r3, #255	; 0xff
 8000c10:	0019      	movs	r1, r3
 8000c12:	68bb      	ldr	r3, [r7, #8]
 8000c14:	3349      	adds	r3, #73	; 0x49
 8000c16:	33ff      	adds	r3, #255	; 0xff
 8000c18:	001a      	movs	r2, r3
 8000c1a:	f004 ffed 	bl	8005bf8 <VL53L0X_PerformRefSpadManagement>
 8000c1e:	68bb      	ldr	r3, [r7, #8]
 8000c20:	2101      	movs	r1, #1
 8000c22:	0018      	movs	r0, r3
 8000c24:	f003 fc14 	bl	8004450 <VL53L0X_SetDeviceMode>
 8000c28:	68ba      	ldr	r2, [r7, #8]
 8000c2a:	68fb      	ldr	r3, [r7, #12]
 8000c2c:	3308      	adds	r3, #8
 8000c2e:	b2db      	uxtb	r3, r3
 8000c30:	18db      	adds	r3, r3, r3
 8000c32:	b2db      	uxtb	r3, r3
 8000c34:	0019      	movs	r1, r3
 8000c36:	0010      	movs	r0, r2
 8000c38:	f002 ffc3 	bl	8003bc2 <VL53L0X_SetDeviceAddress>
 8000c3c:	68fb      	ldr	r3, [r7, #12]
 8000c3e:	3308      	adds	r3, #8
 8000c40:	b2db      	uxtb	r3, r3
 8000c42:	18db      	adds	r3, r3, r3
 8000c44:	b2d9      	uxtb	r1, r3
 8000c46:	68ba      	ldr	r2, [r7, #8]
 8000c48:	239e      	movs	r3, #158	; 0x9e
 8000c4a:	005b      	lsls	r3, r3, #1
 8000c4c:	54d1      	strb	r1, [r2, r3]
 8000c4e:	68bb      	ldr	r3, [r7, #8]
 8000c50:	0018      	movs	r0, r3
 8000c52:	f004 fa41 	bl	80050d8 <VL53L0X_StartMeasurement>
 8000c56:	e000      	b.n	8000c5a <init_sensors+0xde>
 8000c58:	46c0      	nop			; (mov r8, r8)
 8000c5a:	68fb      	ldr	r3, [r7, #12]
 8000c5c:	3301      	adds	r3, #1
 8000c5e:	60fb      	str	r3, [r7, #12]
 8000c60:	68fb      	ldr	r3, [r7, #12]
 8000c62:	2b08      	cmp	r3, #8
 8000c64:	dd96      	ble.n	8000b94 <init_sensors+0x18>
 8000c66:	46c0      	nop			; (mov r8, r8)
 8000c68:	46bd      	mov	sp, r7
 8000c6a:	b005      	add	sp, #20
 8000c6c:	bd90      	pop	{r4, r7, pc}
 8000c6e:	46c0      	nop			; (mov r8, r8)
 8000c70:	200012d8 	.word	0x200012d8
 8000c74:	2000072c 	.word	0x2000072c

08000c78 <reset_sensor>:
 8000c78:	b5b0      	push	{r4, r5, r7, lr}
 8000c7a:	b084      	sub	sp, #16
 8000c7c:	af00      	add	r7, sp, #0
 8000c7e:	0002      	movs	r2, r0
 8000c80:	1dfb      	adds	r3, r7, #7
 8000c82:	701a      	strb	r2, [r3, #0]
 8000c84:	200f      	movs	r0, #15
 8000c86:	f7ff fe45 	bl	8000914 <NVIC_DisableIRQ>
 8000c8a:	2010      	movs	r0, #16
 8000c8c:	f7ff fe42 	bl	8000914 <NVIC_DisableIRQ>
 8000c90:	f002 fb0a 	bl	80032a8 <VL53L0X_hw_reset>
 8000c94:	1dfb      	adds	r3, r7, #7
 8000c96:	781b      	ldrb	r3, [r3, #0]
 8000c98:	22a6      	movs	r2, #166	; 0xa6
 8000c9a:	0052      	lsls	r2, r2, #1
 8000c9c:	435a      	muls	r2, r3
 8000c9e:	4ba0      	ldr	r3, [pc, #640]	; (8000f20 <reset_sensor+0x2a8>)
 8000ca0:	18d3      	adds	r3, r2, r3
 8000ca2:	0018      	movs	r0, r3
 8000ca4:	f002 fd86 	bl	80037b4 <VL53L0X_PollingDelay>
 8000ca8:	4b9e      	ldr	r3, [pc, #632]	; (8000f24 <reset_sensor+0x2ac>)
 8000caa:	681a      	ldr	r2, [r3, #0]
 8000cac:	1dfb      	adds	r3, r7, #7
 8000cae:	781b      	ldrb	r3, [r3, #0]
 8000cb0:	00db      	lsls	r3, r3, #3
 8000cb2:	18d3      	adds	r3, r2, r3
 8000cb4:	6818      	ldr	r0, [r3, #0]
 8000cb6:	4b9b      	ldr	r3, [pc, #620]	; (8000f24 <reset_sensor+0x2ac>)
 8000cb8:	681a      	ldr	r2, [r3, #0]
 8000cba:	1dfb      	adds	r3, r7, #7
 8000cbc:	781b      	ldrb	r3, [r3, #0]
 8000cbe:	00db      	lsls	r3, r3, #3
 8000cc0:	18d3      	adds	r3, r2, r3
 8000cc2:	685b      	ldr	r3, [r3, #4]
 8000cc4:	0019      	movs	r1, r3
 8000cc6:	f7ff feab 	bl	8000a20 <LL_GPIO_SetOutputPin>
 8000cca:	1dfb      	adds	r3, r7, #7
 8000ccc:	781b      	ldrb	r3, [r3, #0]
 8000cce:	22a6      	movs	r2, #166	; 0xa6
 8000cd0:	0052      	lsls	r2, r2, #1
 8000cd2:	435a      	muls	r2, r3
 8000cd4:	4b92      	ldr	r3, [pc, #584]	; (8000f20 <reset_sensor+0x2a8>)
 8000cd6:	18d3      	adds	r3, r2, r3
 8000cd8:	0018      	movs	r0, r3
 8000cda:	f002 fd6b 	bl	80037b4 <VL53L0X_PollingDelay>
 8000cde:	1dfb      	adds	r3, r7, #7
 8000ce0:	781a      	ldrb	r2, [r3, #0]
 8000ce2:	498f      	ldr	r1, [pc, #572]	; (8000f20 <reset_sensor+0x2a8>)
 8000ce4:	239e      	movs	r3, #158	; 0x9e
 8000ce6:	005b      	lsls	r3, r3, #1
 8000ce8:	20a6      	movs	r0, #166	; 0xa6
 8000cea:	0040      	lsls	r0, r0, #1
 8000cec:	4342      	muls	r2, r0
 8000cee:	188a      	adds	r2, r1, r2
 8000cf0:	18d3      	adds	r3, r2, r3
 8000cf2:	2252      	movs	r2, #82	; 0x52
 8000cf4:	701a      	strb	r2, [r3, #0]
 8000cf6:	1dfb      	adds	r3, r7, #7
 8000cf8:	781b      	ldrb	r3, [r3, #0]
 8000cfa:	22a6      	movs	r2, #166	; 0xa6
 8000cfc:	0052      	lsls	r2, r2, #1
 8000cfe:	435a      	muls	r2, r3
 8000d00:	4b87      	ldr	r3, [pc, #540]	; (8000f20 <reset_sensor+0x2a8>)
 8000d02:	18d3      	adds	r3, r2, r3
 8000d04:	250f      	movs	r5, #15
 8000d06:	197c      	adds	r4, r7, r5
 8000d08:	0018      	movs	r0, r3
 8000d0a:	f002 ff79 	bl	8003c00 <VL53L0X_DataInit>
 8000d0e:	0003      	movs	r3, r0
 8000d10:	7023      	strb	r3, [r4, #0]
 8000d12:	002c      	movs	r4, r5
 8000d14:	193b      	adds	r3, r7, r4
 8000d16:	781b      	ldrb	r3, [r3, #0]
 8000d18:	b25b      	sxtb	r3, r3
 8000d1a:	2b00      	cmp	r3, #0
 8000d1c:	d000      	beq.n	8000d20 <reset_sensor+0xa8>
 8000d1e:	e0d4      	b.n	8000eca <reset_sensor+0x252>
 8000d20:	1dfb      	adds	r3, r7, #7
 8000d22:	781b      	ldrb	r3, [r3, #0]
 8000d24:	22a6      	movs	r2, #166	; 0xa6
 8000d26:	0052      	lsls	r2, r2, #1
 8000d28:	435a      	muls	r2, r3
 8000d2a:	4b7d      	ldr	r3, [pc, #500]	; (8000f20 <reset_sensor+0x2a8>)
 8000d2c:	18d3      	adds	r3, r2, r3
 8000d2e:	0018      	movs	r0, r3
 8000d30:	f002 fd40 	bl	80037b4 <VL53L0X_PollingDelay>
 8000d34:	1dfb      	adds	r3, r7, #7
 8000d36:	781b      	ldrb	r3, [r3, #0]
 8000d38:	22a6      	movs	r2, #166	; 0xa6
 8000d3a:	0052      	lsls	r2, r2, #1
 8000d3c:	435a      	muls	r2, r3
 8000d3e:	4b78      	ldr	r3, [pc, #480]	; (8000f20 <reset_sensor+0x2a8>)
 8000d40:	18d3      	adds	r3, r2, r3
 8000d42:	0025      	movs	r5, r4
 8000d44:	193c      	adds	r4, r7, r4
 8000d46:	0018      	movs	r0, r3
 8000d48:	f003 f8fc 	bl	8003f44 <VL53L0X_StaticInit>
 8000d4c:	0003      	movs	r3, r0
 8000d4e:	7023      	strb	r3, [r4, #0]
 8000d50:	002c      	movs	r4, r5
 8000d52:	193b      	adds	r3, r7, r4
 8000d54:	781b      	ldrb	r3, [r3, #0]
 8000d56:	b25b      	sxtb	r3, r3
 8000d58:	2b00      	cmp	r3, #0
 8000d5a:	d000      	beq.n	8000d5e <reset_sensor+0xe6>
 8000d5c:	e0b7      	b.n	8000ece <reset_sensor+0x256>
 8000d5e:	1dfb      	adds	r3, r7, #7
 8000d60:	781b      	ldrb	r3, [r3, #0]
 8000d62:	22a6      	movs	r2, #166	; 0xa6
 8000d64:	0052      	lsls	r2, r2, #1
 8000d66:	435a      	muls	r2, r3
 8000d68:	4b6d      	ldr	r3, [pc, #436]	; (8000f20 <reset_sensor+0x2a8>)
 8000d6a:	18d3      	adds	r3, r2, r3
 8000d6c:	0018      	movs	r0, r3
 8000d6e:	f002 fd21 	bl	80037b4 <VL53L0X_PollingDelay>
 8000d72:	1dfb      	adds	r3, r7, #7
 8000d74:	781b      	ldrb	r3, [r3, #0]
 8000d76:	22a6      	movs	r2, #166	; 0xa6
 8000d78:	0052      	lsls	r2, r2, #1
 8000d7a:	435a      	muls	r2, r3
 8000d7c:	4b68      	ldr	r3, [pc, #416]	; (8000f20 <reset_sensor+0x2a8>)
 8000d7e:	18d0      	adds	r0, r2, r3
 8000d80:	1dfb      	adds	r3, r7, #7
 8000d82:	781b      	ldrb	r3, [r3, #0]
 8000d84:	22a6      	movs	r2, #166	; 0xa6
 8000d86:	0052      	lsls	r2, r2, #1
 8000d88:	4353      	muls	r3, r2
 8000d8a:	3341      	adds	r3, #65	; 0x41
 8000d8c:	33ff      	adds	r3, #255	; 0xff
 8000d8e:	001a      	movs	r2, r3
 8000d90:	4b63      	ldr	r3, [pc, #396]	; (8000f20 <reset_sensor+0x2a8>)
 8000d92:	18d1      	adds	r1, r2, r3
 8000d94:	1dfb      	adds	r3, r7, #7
 8000d96:	781b      	ldrb	r3, [r3, #0]
 8000d98:	22a6      	movs	r2, #166	; 0xa6
 8000d9a:	0052      	lsls	r2, r2, #1
 8000d9c:	4353      	muls	r3, r2
 8000d9e:	3341      	adds	r3, #65	; 0x41
 8000da0:	33ff      	adds	r3, #255	; 0xff
 8000da2:	001a      	movs	r2, r3
 8000da4:	4b5e      	ldr	r3, [pc, #376]	; (8000f20 <reset_sensor+0x2a8>)
 8000da6:	18d3      	adds	r3, r2, r3
 8000da8:	3301      	adds	r3, #1
 8000daa:	0025      	movs	r5, r4
 8000dac:	197c      	adds	r4, r7, r5
 8000dae:	001a      	movs	r2, r3
 8000db0:	f004 f8ef 	bl	8004f92 <VL53L0X_PerformRefCalibration>
 8000db4:	0003      	movs	r3, r0
 8000db6:	7023      	strb	r3, [r4, #0]
 8000db8:	1dfb      	adds	r3, r7, #7
 8000dba:	781b      	ldrb	r3, [r3, #0]
 8000dbc:	22a6      	movs	r2, #166	; 0xa6
 8000dbe:	0052      	lsls	r2, r2, #1
 8000dc0:	435a      	muls	r2, r3
 8000dc2:	4b57      	ldr	r3, [pc, #348]	; (8000f20 <reset_sensor+0x2a8>)
 8000dc4:	18d3      	adds	r3, r2, r3
 8000dc6:	0018      	movs	r0, r3
 8000dc8:	f002 fcf4 	bl	80037b4 <VL53L0X_PollingDelay>
 8000dcc:	197b      	adds	r3, r7, r5
 8000dce:	781b      	ldrb	r3, [r3, #0]
 8000dd0:	b25b      	sxtb	r3, r3
 8000dd2:	2b00      	cmp	r3, #0
 8000dd4:	d000      	beq.n	8000dd8 <reset_sensor+0x160>
 8000dd6:	e07c      	b.n	8000ed2 <reset_sensor+0x25a>
 8000dd8:	1dfb      	adds	r3, r7, #7
 8000dda:	781b      	ldrb	r3, [r3, #0]
 8000ddc:	22a6      	movs	r2, #166	; 0xa6
 8000dde:	0052      	lsls	r2, r2, #1
 8000de0:	435a      	muls	r2, r3
 8000de2:	4b4f      	ldr	r3, [pc, #316]	; (8000f20 <reset_sensor+0x2a8>)
 8000de4:	18d3      	adds	r3, r2, r3
 8000de6:	197c      	adds	r4, r7, r5
 8000de8:	2101      	movs	r1, #1
 8000dea:	0018      	movs	r0, r3
 8000dec:	f003 fb30 	bl	8004450 <VL53L0X_SetDeviceMode>
 8000df0:	0003      	movs	r3, r0
 8000df2:	7023      	strb	r3, [r4, #0]
 8000df4:	1dfb      	adds	r3, r7, #7
 8000df6:	781b      	ldrb	r3, [r3, #0]
 8000df8:	22a6      	movs	r2, #166	; 0xa6
 8000dfa:	0052      	lsls	r2, r2, #1
 8000dfc:	435a      	muls	r2, r3
 8000dfe:	4b48      	ldr	r3, [pc, #288]	; (8000f20 <reset_sensor+0x2a8>)
 8000e00:	18d3      	adds	r3, r2, r3
 8000e02:	0018      	movs	r0, r3
 8000e04:	f002 fcd6 	bl	80037b4 <VL53L0X_PollingDelay>
 8000e08:	197b      	adds	r3, r7, r5
 8000e0a:	781b      	ldrb	r3, [r3, #0]
 8000e0c:	b25b      	sxtb	r3, r3
 8000e0e:	2b00      	cmp	r3, #0
 8000e10:	d161      	bne.n	8000ed6 <reset_sensor+0x25e>
 8000e12:	1dfb      	adds	r3, r7, #7
 8000e14:	781b      	ldrb	r3, [r3, #0]
 8000e16:	22a6      	movs	r2, #166	; 0xa6
 8000e18:	0052      	lsls	r2, r2, #1
 8000e1a:	435a      	muls	r2, r3
 8000e1c:	4b40      	ldr	r3, [pc, #256]	; (8000f20 <reset_sensor+0x2a8>)
 8000e1e:	18d2      	adds	r2, r2, r3
 8000e20:	1dfb      	adds	r3, r7, #7
 8000e22:	781b      	ldrb	r3, [r3, #0]
 8000e24:	3308      	adds	r3, #8
 8000e26:	b2db      	uxtb	r3, r3
 8000e28:	18db      	adds	r3, r3, r3
 8000e2a:	b2db      	uxtb	r3, r3
 8000e2c:	197c      	adds	r4, r7, r5
 8000e2e:	0019      	movs	r1, r3
 8000e30:	0010      	movs	r0, r2
 8000e32:	f002 fec6 	bl	8003bc2 <VL53L0X_SetDeviceAddress>
 8000e36:	0003      	movs	r3, r0
 8000e38:	7023      	strb	r3, [r4, #0]
 8000e3a:	1dfb      	adds	r3, r7, #7
 8000e3c:	781b      	ldrb	r3, [r3, #0]
 8000e3e:	22a6      	movs	r2, #166	; 0xa6
 8000e40:	0052      	lsls	r2, r2, #1
 8000e42:	435a      	muls	r2, r3
 8000e44:	4b36      	ldr	r3, [pc, #216]	; (8000f20 <reset_sensor+0x2a8>)
 8000e46:	18d3      	adds	r3, r2, r3
 8000e48:	0018      	movs	r0, r3
 8000e4a:	f002 fcb3 	bl	80037b4 <VL53L0X_PollingDelay>
 8000e4e:	197b      	adds	r3, r7, r5
 8000e50:	781b      	ldrb	r3, [r3, #0]
 8000e52:	b25b      	sxtb	r3, r3
 8000e54:	2b00      	cmp	r3, #0
 8000e56:	d140      	bne.n	8000eda <reset_sensor+0x262>
 8000e58:	1dfb      	adds	r3, r7, #7
 8000e5a:	781b      	ldrb	r3, [r3, #0]
 8000e5c:	3308      	adds	r3, #8
 8000e5e:	b2d9      	uxtb	r1, r3
 8000e60:	1dfb      	adds	r3, r7, #7
 8000e62:	781a      	ldrb	r2, [r3, #0]
 8000e64:	1c0b      	adds	r3, r1, #0
 8000e66:	18db      	adds	r3, r3, r3
 8000e68:	b2dc      	uxtb	r4, r3
 8000e6a:	492d      	ldr	r1, [pc, #180]	; (8000f20 <reset_sensor+0x2a8>)
 8000e6c:	239e      	movs	r3, #158	; 0x9e
 8000e6e:	005b      	lsls	r3, r3, #1
 8000e70:	20a6      	movs	r0, #166	; 0xa6
 8000e72:	0040      	lsls	r0, r0, #1
 8000e74:	4342      	muls	r2, r0
 8000e76:	188a      	adds	r2, r1, r2
 8000e78:	18d3      	adds	r3, r2, r3
 8000e7a:	1c22      	adds	r2, r4, #0
 8000e7c:	701a      	strb	r2, [r3, #0]
 8000e7e:	1dfb      	adds	r3, r7, #7
 8000e80:	781b      	ldrb	r3, [r3, #0]
 8000e82:	22a6      	movs	r2, #166	; 0xa6
 8000e84:	0052      	lsls	r2, r2, #1
 8000e86:	435a      	muls	r2, r3
 8000e88:	4b25      	ldr	r3, [pc, #148]	; (8000f20 <reset_sensor+0x2a8>)
 8000e8a:	18d3      	adds	r3, r2, r3
 8000e8c:	197c      	adds	r4, r7, r5
 8000e8e:	0018      	movs	r0, r3
 8000e90:	f004 f922 	bl	80050d8 <VL53L0X_StartMeasurement>
 8000e94:	0003      	movs	r3, r0
 8000e96:	7023      	strb	r3, [r4, #0]
 8000e98:	197b      	adds	r3, r7, r5
 8000e9a:	781b      	ldrb	r3, [r3, #0]
 8000e9c:	b25b      	sxtb	r3, r3
 8000e9e:	2b00      	cmp	r3, #0
 8000ea0:	d11d      	bne.n	8000ede <reset_sensor+0x266>
 8000ea2:	1dfb      	adds	r3, r7, #7
 8000ea4:	781b      	ldrb	r3, [r3, #0]
 8000ea6:	22a6      	movs	r2, #166	; 0xa6
 8000ea8:	0052      	lsls	r2, r2, #1
 8000eaa:	435a      	muls	r2, r3
 8000eac:	4b1c      	ldr	r3, [pc, #112]	; (8000f20 <reset_sensor+0x2a8>)
 8000eae:	18d3      	adds	r3, r2, r3
 8000eb0:	0018      	movs	r0, r3
 8000eb2:	f002 fc7f 	bl	80037b4 <VL53L0X_PollingDelay>
 8000eb6:	200f      	movs	r0, #15
 8000eb8:	f7ff fd16 	bl	80008e8 <NVIC_EnableIRQ>
 8000ebc:	2010      	movs	r0, #16
 8000ebe:	f7ff fd13 	bl	80008e8 <NVIC_EnableIRQ>
 8000ec2:	197b      	adds	r3, r7, r5
 8000ec4:	781b      	ldrb	r3, [r3, #0]
 8000ec6:	b25b      	sxtb	r3, r3
 8000ec8:	e025      	b.n	8000f16 <reset_sensor+0x29e>
 8000eca:	46c0      	nop			; (mov r8, r8)
 8000ecc:	e008      	b.n	8000ee0 <reset_sensor+0x268>
 8000ece:	46c0      	nop			; (mov r8, r8)
 8000ed0:	e006      	b.n	8000ee0 <reset_sensor+0x268>
 8000ed2:	46c0      	nop			; (mov r8, r8)
 8000ed4:	e004      	b.n	8000ee0 <reset_sensor+0x268>
 8000ed6:	46c0      	nop			; (mov r8, r8)
 8000ed8:	e002      	b.n	8000ee0 <reset_sensor+0x268>
 8000eda:	46c0      	nop			; (mov r8, r8)
 8000edc:	e000      	b.n	8000ee0 <reset_sensor+0x268>
 8000ede:	46c0      	nop			; (mov r8, r8)
 8000ee0:	4b10      	ldr	r3, [pc, #64]	; (8000f24 <reset_sensor+0x2ac>)
 8000ee2:	681a      	ldr	r2, [r3, #0]
 8000ee4:	1dfb      	adds	r3, r7, #7
 8000ee6:	781b      	ldrb	r3, [r3, #0]
 8000ee8:	00db      	lsls	r3, r3, #3
 8000eea:	18d3      	adds	r3, r2, r3
 8000eec:	6818      	ldr	r0, [r3, #0]
 8000eee:	4b0d      	ldr	r3, [pc, #52]	; (8000f24 <reset_sensor+0x2ac>)
 8000ef0:	681a      	ldr	r2, [r3, #0]
 8000ef2:	1dfb      	adds	r3, r7, #7
 8000ef4:	781b      	ldrb	r3, [r3, #0]
 8000ef6:	00db      	lsls	r3, r3, #3
 8000ef8:	18d3      	adds	r3, r2, r3
 8000efa:	685b      	ldr	r3, [r3, #4]
 8000efc:	0019      	movs	r1, r3
 8000efe:	f7ff fd9b 	bl	8000a38 <LL_GPIO_ResetOutputPin>
 8000f02:	200f      	movs	r0, #15
 8000f04:	f7ff fcf0 	bl	80008e8 <NVIC_EnableIRQ>
 8000f08:	2010      	movs	r0, #16
 8000f0a:	f7ff fced 	bl	80008e8 <NVIC_EnableIRQ>
 8000f0e:	230f      	movs	r3, #15
 8000f10:	18fb      	adds	r3, r7, r3
 8000f12:	781b      	ldrb	r3, [r3, #0]
 8000f14:	b25b      	sxtb	r3, r3
 8000f16:	0018      	movs	r0, r3
 8000f18:	46bd      	mov	sp, r7
 8000f1a:	b004      	add	sp, #16
 8000f1c:	bdb0      	pop	{r4, r5, r7, pc}
 8000f1e:	46c0      	nop			; (mov r8, r8)
 8000f20:	2000072c 	.word	0x2000072c
 8000f24:	200012d8 	.word	0x200012d8

08000f28 <coll_avoid_init>:
 8000f28:	b580      	push	{r7, lr}
 8000f2a:	b082      	sub	sp, #8
 8000f2c:	af00      	add	r7, sp, #0
 8000f2e:	4b0e      	ldr	r3, [pc, #56]	; (8000f68 <coll_avoid_init+0x40>)
 8000f30:	2200      	movs	r2, #0
 8000f32:	74da      	strb	r2, [r3, #19]
 8000f34:	4b0c      	ldr	r3, [pc, #48]	; (8000f68 <coll_avoid_init+0x40>)
 8000f36:	2200      	movs	r2, #0
 8000f38:	749a      	strb	r2, [r3, #18]
 8000f3a:	2300      	movs	r3, #0
 8000f3c:	607b      	str	r3, [r7, #4]
 8000f3e:	e008      	b.n	8000f52 <coll_avoid_init+0x2a>
 8000f40:	4a09      	ldr	r2, [pc, #36]	; (8000f68 <coll_avoid_init+0x40>)
 8000f42:	687b      	ldr	r3, [r7, #4]
 8000f44:	18d3      	adds	r3, r2, r3
 8000f46:	3309      	adds	r3, #9
 8000f48:	2200      	movs	r2, #0
 8000f4a:	701a      	strb	r2, [r3, #0]
 8000f4c:	687b      	ldr	r3, [r7, #4]
 8000f4e:	3301      	adds	r3, #1
 8000f50:	607b      	str	r3, [r7, #4]
 8000f52:	687b      	ldr	r3, [r7, #4]
 8000f54:	2b08      	cmp	r3, #8
 8000f56:	ddf3      	ble.n	8000f40 <coll_avoid_init+0x18>
 8000f58:	f7ff fe10 	bl	8000b7c <init_sensors>
 8000f5c:	f7ff fde0 	bl	8000b20 <tim_init>
 8000f60:	46c0      	nop			; (mov r8, r8)
 8000f62:	46bd      	mov	sp, r7
 8000f64:	b002      	add	sp, #8
 8000f66:	bd80      	pop	{r7, pc}
 8000f68:	2000070c 	.word	0x2000070c

08000f6c <reload_sensors>:
 8000f6c:	b580      	push	{r7, lr}
 8000f6e:	b082      	sub	sp, #8
 8000f70:	af00      	add	r7, sp, #0
 8000f72:	2300      	movs	r3, #0
 8000f74:	607b      	str	r3, [r7, #4]
 8000f76:	e01a      	b.n	8000fae <reload_sensors+0x42>
 8000f78:	4a10      	ldr	r2, [pc, #64]	; (8000fbc <reload_sensors+0x50>)
 8000f7a:	687b      	ldr	r3, [r7, #4]
 8000f7c:	18d3      	adds	r3, r2, r3
 8000f7e:	3309      	adds	r3, #9
 8000f80:	781b      	ldrb	r3, [r3, #0]
 8000f82:	2b00      	cmp	r3, #0
 8000f84:	d00d      	beq.n	8000fa2 <reload_sensors+0x36>
 8000f86:	687b      	ldr	r3, [r7, #4]
 8000f88:	b2db      	uxtb	r3, r3
 8000f8a:	0018      	movs	r0, r3
 8000f8c:	f7ff fe74 	bl	8000c78 <reset_sensor>
 8000f90:	1e03      	subs	r3, r0, #0
 8000f92:	d108      	bne.n	8000fa6 <reload_sensors+0x3a>
 8000f94:	4a09      	ldr	r2, [pc, #36]	; (8000fbc <reload_sensors+0x50>)
 8000f96:	687b      	ldr	r3, [r7, #4]
 8000f98:	18d3      	adds	r3, r2, r3
 8000f9a:	3309      	adds	r3, #9
 8000f9c:	2200      	movs	r2, #0
 8000f9e:	701a      	strb	r2, [r3, #0]
 8000fa0:	e002      	b.n	8000fa8 <reload_sensors+0x3c>
 8000fa2:	46c0      	nop			; (mov r8, r8)
 8000fa4:	e000      	b.n	8000fa8 <reload_sensors+0x3c>
 8000fa6:	46c0      	nop			; (mov r8, r8)
 8000fa8:	687b      	ldr	r3, [r7, #4]
 8000faa:	3301      	adds	r3, #1
 8000fac:	607b      	str	r3, [r7, #4]
 8000fae:	687b      	ldr	r3, [r7, #4]
 8000fb0:	2b08      	cmp	r3, #8
 8000fb2:	dde1      	ble.n	8000f78 <reload_sensors+0xc>
 8000fb4:	46c0      	nop			; (mov r8, r8)
 8000fb6:	46bd      	mov	sp, r7
 8000fb8:	b002      	add	sp, #8
 8000fba:	bd80      	pop	{r7, pc}
 8000fbc:	2000070c 	.word	0x2000070c

08000fc0 <col_av_read_status>:
 8000fc0:	b580      	push	{r7, lr}
 8000fc2:	af00      	add	r7, sp, #0
 8000fc4:	4b02      	ldr	r3, [pc, #8]	; (8000fd0 <col_av_read_status+0x10>)
 8000fc6:	7cdb      	ldrb	r3, [r3, #19]
 8000fc8:	0018      	movs	r0, r3
 8000fca:	46bd      	mov	sp, r7
 8000fcc:	bd80      	pop	{r7, pc}
 8000fce:	46c0      	nop			; (mov r8, r8)
 8000fd0:	2000070c 	.word	0x2000070c

08000fd4 <col_av_set_status>:
 8000fd4:	b580      	push	{r7, lr}
 8000fd6:	b082      	sub	sp, #8
 8000fd8:	af00      	add	r7, sp, #0
 8000fda:	0002      	movs	r2, r0
 8000fdc:	1dfb      	adds	r3, r7, #7
 8000fde:	701a      	strb	r2, [r3, #0]
 8000fe0:	4b08      	ldr	r3, [pc, #32]	; (8001004 <col_av_set_status+0x30>)
 8000fe2:	7cdb      	ldrb	r3, [r3, #19]
 8000fe4:	b25a      	sxtb	r2, r3
 8000fe6:	1dfb      	adds	r3, r7, #7
 8000fe8:	781b      	ldrb	r3, [r3, #0]
 8000fea:	2101      	movs	r1, #1
 8000fec:	4099      	lsls	r1, r3
 8000fee:	000b      	movs	r3, r1
 8000ff0:	b25b      	sxtb	r3, r3
 8000ff2:	4313      	orrs	r3, r2
 8000ff4:	b25b      	sxtb	r3, r3
 8000ff6:	b2da      	uxtb	r2, r3
 8000ff8:	4b02      	ldr	r3, [pc, #8]	; (8001004 <col_av_set_status+0x30>)
 8000ffa:	74da      	strb	r2, [r3, #19]
 8000ffc:	46c0      	nop			; (mov r8, r8)
 8000ffe:	46bd      	mov	sp, r7
 8001000:	b002      	add	sp, #8
 8001002:	bd80      	pop	{r7, pc}
 8001004:	2000070c 	.word	0x2000070c

08001008 <col_av_set_block>:
 8001008:	b580      	push	{r7, lr}
 800100a:	af00      	add	r7, sp, #0
 800100c:	4b02      	ldr	r3, [pc, #8]	; (8001018 <col_av_set_block+0x10>)
 800100e:	2201      	movs	r2, #1
 8001010:	751a      	strb	r2, [r3, #20]
 8001012:	46c0      	nop			; (mov r8, r8)
 8001014:	46bd      	mov	sp, r7
 8001016:	bd80      	pop	{r7, pc}
 8001018:	2000070c 	.word	0x2000070c

0800101c <col_av_clr_block>:
 800101c:	b580      	push	{r7, lr}
 800101e:	af00      	add	r7, sp, #0
 8001020:	4b02      	ldr	r3, [pc, #8]	; (800102c <col_av_clr_block+0x10>)
 8001022:	2200      	movs	r2, #0
 8001024:	751a      	strb	r2, [r3, #20]
 8001026:	46c0      	nop			; (mov r8, r8)
 8001028:	46bd      	mov	sp, r7
 800102a:	bd80      	pop	{r7, pc}
 800102c:	2000070c 	.word	0x2000070c

08001030 <col_av_get_ack_block>:
 8001030:	b580      	push	{r7, lr}
 8001032:	af00      	add	r7, sp, #0
 8001034:	4b02      	ldr	r3, [pc, #8]	; (8001040 <col_av_get_ack_block+0x10>)
 8001036:	7d5b      	ldrb	r3, [r3, #21]
 8001038:	0018      	movs	r0, r3
 800103a:	46bd      	mov	sp, r7
 800103c:	bd80      	pop	{r7, pc}
 800103e:	46c0      	nop			; (mov r8, r8)
 8001040:	2000070c 	.word	0x2000070c

08001044 <col_av_any>:
 8001044:	b580      	push	{r7, lr}
 8001046:	b082      	sub	sp, #8
 8001048:	af00      	add	r7, sp, #0
 800104a:	1dbb      	adds	r3, r7, #6
 800104c:	2200      	movs	r2, #0
 800104e:	701a      	strb	r2, [r3, #0]
 8001050:	1dfb      	adds	r3, r7, #7
 8001052:	2200      	movs	r2, #0
 8001054:	701a      	strb	r2, [r3, #0]
 8001056:	e010      	b.n	800107a <col_av_any+0x36>
 8001058:	1dfb      	adds	r3, r7, #7
 800105a:	781b      	ldrb	r3, [r3, #0]
 800105c:	4a0c      	ldr	r2, [pc, #48]	; (8001090 <col_av_any+0x4c>)
 800105e:	18d3      	adds	r3, r2, r3
 8001060:	7a5b      	ldrb	r3, [r3, #9]
 8001062:	2b00      	cmp	r3, #0
 8001064:	d004      	beq.n	8001070 <col_av_any+0x2c>
 8001066:	1dbb      	adds	r3, r7, #6
 8001068:	781a      	ldrb	r2, [r3, #0]
 800106a:	1dbb      	adds	r3, r7, #6
 800106c:	3201      	adds	r2, #1
 800106e:	701a      	strb	r2, [r3, #0]
 8001070:	1dfb      	adds	r3, r7, #7
 8001072:	781a      	ldrb	r2, [r3, #0]
 8001074:	1dfb      	adds	r3, r7, #7
 8001076:	3201      	adds	r2, #1
 8001078:	701a      	strb	r2, [r3, #0]
 800107a:	1dfb      	adds	r3, r7, #7
 800107c:	781b      	ldrb	r3, [r3, #0]
 800107e:	2b08      	cmp	r3, #8
 8001080:	d9ea      	bls.n	8001058 <col_av_any+0x14>
 8001082:	1dbb      	adds	r3, r7, #6
 8001084:	781b      	ldrb	r3, [r3, #0]
 8001086:	0018      	movs	r0, r3
 8001088:	46bd      	mov	sp, r7
 800108a:	b002      	add	sp, #8
 800108c:	bd80      	pop	{r7, pc}
 800108e:	46c0      	nop			; (mov r8, r8)
 8001090:	2000070c 	.word	0x2000070c

08001094 <get_dist>:
 8001094:	b5b0      	push	{r4, r5, r7, lr}
 8001096:	b084      	sub	sp, #16
 8001098:	af00      	add	r7, sp, #0
 800109a:	0002      	movs	r2, r0
 800109c:	1dfb      	adds	r3, r7, #7
 800109e:	701a      	strb	r2, [r3, #0]
 80010a0:	240e      	movs	r4, #14
 80010a2:	193b      	adds	r3, r7, r4
 80010a4:	2200      	movs	r2, #0
 80010a6:	701a      	strb	r2, [r3, #0]
 80010a8:	1dfb      	adds	r3, r7, #7
 80010aa:	781b      	ldrb	r3, [r3, #0]
 80010ac:	22a6      	movs	r2, #166	; 0xa6
 80010ae:	0052      	lsls	r2, r2, #1
 80010b0:	435a      	muls	r2, r3
 80010b2:	4b56      	ldr	r3, [pc, #344]	; (800120c <get_dist+0x178>)
 80010b4:	18d3      	adds	r3, r2, r3
 80010b6:	0025      	movs	r5, r4
 80010b8:	193c      	adds	r4, r7, r4
 80010ba:	4a55      	ldr	r2, [pc, #340]	; (8001210 <get_dist+0x17c>)
 80010bc:	0011      	movs	r1, r2
 80010be:	0018      	movs	r0, r3
 80010c0:	f004 f9b8 	bl	8005434 <VL53L0X_GetRangingMeasurementData>
 80010c4:	0003      	movs	r3, r0
 80010c6:	7023      	strb	r3, [r4, #0]
 80010c8:	002c      	movs	r4, r5
 80010ca:	193b      	adds	r3, r7, r4
 80010cc:	781b      	ldrb	r3, [r3, #0]
 80010ce:	b25b      	sxtb	r3, r3
 80010d0:	2b00      	cmp	r3, #0
 80010d2:	d000      	beq.n	80010d6 <get_dist+0x42>
 80010d4:	e07c      	b.n	80011d0 <get_dist+0x13c>
 80010d6:	1dfb      	adds	r3, r7, #7
 80010d8:	781b      	ldrb	r3, [r3, #0]
 80010da:	22a6      	movs	r2, #166	; 0xa6
 80010dc:	0052      	lsls	r2, r2, #1
 80010de:	435a      	muls	r2, r3
 80010e0:	4b4a      	ldr	r3, [pc, #296]	; (800120c <get_dist+0x178>)
 80010e2:	18d3      	adds	r3, r2, r3
 80010e4:	0025      	movs	r5, r4
 80010e6:	193c      	adds	r4, r7, r4
 80010e8:	2104      	movs	r1, #4
 80010ea:	0018      	movs	r0, r3
 80010ec:	f004 fcfe 	bl	8005aec <VL53L0X_ClearInterruptMask>
 80010f0:	0003      	movs	r3, r0
 80010f2:	7023      	strb	r3, [r4, #0]
 80010f4:	002c      	movs	r4, r5
 80010f6:	193b      	adds	r3, r7, r4
 80010f8:	781b      	ldrb	r3, [r3, #0]
 80010fa:	b25b      	sxtb	r3, r3
 80010fc:	2b00      	cmp	r3, #0
 80010fe:	d169      	bne.n	80011d4 <get_dist+0x140>
 8001100:	4b43      	ldr	r3, [pc, #268]	; (8001210 <get_dist+0x17c>)
 8001102:	7e1b      	ldrb	r3, [r3, #24]
 8001104:	2b00      	cmp	r3, #0
 8001106:	d040      	beq.n	800118a <get_dist+0xf6>
 8001108:	1dfb      	adds	r3, r7, #7
 800110a:	781b      	ldrb	r3, [r3, #0]
 800110c:	4a41      	ldr	r2, [pc, #260]	; (8001214 <get_dist+0x180>)
 800110e:	18d3      	adds	r3, r2, r3
 8001110:	7d9b      	ldrb	r3, [r3, #22]
 8001112:	3301      	adds	r3, #1
 8001114:	210a      	movs	r1, #10
 8001116:	0018      	movs	r0, r3
 8001118:	f7ff f966 	bl	80003e8 <__aeabi_idivmod>
 800111c:	000b      	movs	r3, r1
 800111e:	001a      	movs	r2, r3
 8001120:	1dfb      	adds	r3, r7, #7
 8001122:	781b      	ldrb	r3, [r3, #0]
 8001124:	b2d1      	uxtb	r1, r2
 8001126:	4a3b      	ldr	r2, [pc, #236]	; (8001214 <get_dist+0x180>)
 8001128:	18d3      	adds	r3, r2, r3
 800112a:	1c0a      	adds	r2, r1, #0
 800112c:	759a      	strb	r2, [r3, #22]
 800112e:	1dfb      	adds	r3, r7, #7
 8001130:	781b      	ldrb	r3, [r3, #0]
 8001132:	4a38      	ldr	r2, [pc, #224]	; (8001214 <get_dist+0x180>)
 8001134:	18d3      	adds	r3, r2, r3
 8001136:	7d9b      	ldrb	r3, [r3, #22]
 8001138:	2b00      	cmp	r3, #0
 800113a:	d126      	bne.n	800118a <get_dist+0xf6>
 800113c:	1dfb      	adds	r3, r7, #7
 800113e:	781b      	ldrb	r3, [r3, #0]
 8001140:	22a6      	movs	r2, #166	; 0xa6
 8001142:	0052      	lsls	r2, r2, #1
 8001144:	435a      	muls	r2, r3
 8001146:	4b31      	ldr	r3, [pc, #196]	; (800120c <get_dist+0x178>)
 8001148:	18d3      	adds	r3, r2, r3
 800114a:	0025      	movs	r5, r4
 800114c:	193c      	adds	r4, r7, r4
 800114e:	0018      	movs	r0, r3
 8001150:	f004 f8c5 	bl	80052de <VL53L0X_StopMeasurement>
 8001154:	0003      	movs	r3, r0
 8001156:	7023      	strb	r3, [r4, #0]
 8001158:	002c      	movs	r4, r5
 800115a:	193b      	adds	r3, r7, r4
 800115c:	781b      	ldrb	r3, [r3, #0]
 800115e:	b25b      	sxtb	r3, r3
 8001160:	2b00      	cmp	r3, #0
 8001162:	d139      	bne.n	80011d8 <get_dist+0x144>
 8001164:	1dfb      	adds	r3, r7, #7
 8001166:	781b      	ldrb	r3, [r3, #0]
 8001168:	22a6      	movs	r2, #166	; 0xa6
 800116a:	0052      	lsls	r2, r2, #1
 800116c:	435a      	muls	r2, r3
 800116e:	4b27      	ldr	r3, [pc, #156]	; (800120c <get_dist+0x178>)
 8001170:	18d3      	adds	r3, r2, r3
 8001172:	0025      	movs	r5, r4
 8001174:	193c      	adds	r4, r7, r4
 8001176:	0018      	movs	r0, r3
 8001178:	f003 ffae 	bl	80050d8 <VL53L0X_StartMeasurement>
 800117c:	0003      	movs	r3, r0
 800117e:	7023      	strb	r3, [r4, #0]
 8001180:	197b      	adds	r3, r7, r5
 8001182:	781b      	ldrb	r3, [r3, #0]
 8001184:	b25b      	sxtb	r3, r3
 8001186:	2b00      	cmp	r3, #0
 8001188:	d128      	bne.n	80011dc <get_dist+0x148>
 800118a:	4b21      	ldr	r3, [pc, #132]	; (8001210 <get_dist+0x17c>)
 800118c:	891b      	ldrh	r3, [r3, #8]
 800118e:	210a      	movs	r1, #10
 8001190:	0018      	movs	r0, r3
 8001192:	f7fe ffb9 	bl	8000108 <__udivsi3>
 8001196:	0003      	movs	r3, r0
 8001198:	b29a      	uxth	r2, r3
 800119a:	240f      	movs	r4, #15
 800119c:	193b      	adds	r3, r7, r4
 800119e:	701a      	strb	r2, [r3, #0]
 80011a0:	4b1b      	ldr	r3, [pc, #108]	; (8001210 <get_dist+0x17c>)
 80011a2:	891b      	ldrh	r3, [r3, #8]
 80011a4:	210a      	movs	r1, #10
 80011a6:	0018      	movs	r0, r3
 80011a8:	f7ff f834 	bl	8000214 <__aeabi_uidivmod>
 80011ac:	000b      	movs	r3, r1
 80011ae:	b29b      	uxth	r3, r3
 80011b0:	2b04      	cmp	r3, #4
 80011b2:	d904      	bls.n	80011be <get_dist+0x12a>
 80011b4:	193b      	adds	r3, r7, r4
 80011b6:	193a      	adds	r2, r7, r4
 80011b8:	7812      	ldrb	r2, [r2, #0]
 80011ba:	3201      	adds	r2, #1
 80011bc:	701a      	strb	r2, [r3, #0]
 80011be:	230f      	movs	r3, #15
 80011c0:	18fb      	adds	r3, r7, r3
 80011c2:	781b      	ldrb	r3, [r3, #0]
 80011c4:	b2da      	uxtb	r2, r3
 80011c6:	2a32      	cmp	r2, #50	; 0x32
 80011c8:	d900      	bls.n	80011cc <get_dist+0x138>
 80011ca:	2332      	movs	r3, #50	; 0x32
 80011cc:	b2db      	uxtb	r3, r3
 80011ce:	e018      	b.n	8001202 <get_dist+0x16e>
 80011d0:	46c0      	nop			; (mov r8, r8)
 80011d2:	e004      	b.n	80011de <get_dist+0x14a>
 80011d4:	46c0      	nop			; (mov r8, r8)
 80011d6:	e002      	b.n	80011de <get_dist+0x14a>
 80011d8:	46c0      	nop			; (mov r8, r8)
 80011da:	e000      	b.n	80011de <get_dist+0x14a>
 80011dc:	46c0      	nop			; (mov r8, r8)
 80011de:	4b0e      	ldr	r3, [pc, #56]	; (8001218 <get_dist+0x184>)
 80011e0:	681a      	ldr	r2, [r3, #0]
 80011e2:	1dfb      	adds	r3, r7, #7
 80011e4:	781b      	ldrb	r3, [r3, #0]
 80011e6:	00db      	lsls	r3, r3, #3
 80011e8:	18d3      	adds	r3, r2, r3
 80011ea:	6818      	ldr	r0, [r3, #0]
 80011ec:	4b0a      	ldr	r3, [pc, #40]	; (8001218 <get_dist+0x184>)
 80011ee:	681a      	ldr	r2, [r3, #0]
 80011f0:	1dfb      	adds	r3, r7, #7
 80011f2:	781b      	ldrb	r3, [r3, #0]
 80011f4:	00db      	lsls	r3, r3, #3
 80011f6:	18d3      	adds	r3, r2, r3
 80011f8:	685b      	ldr	r3, [r3, #4]
 80011fa:	0019      	movs	r1, r3
 80011fc:	f7ff fc1c 	bl	8000a38 <LL_GPIO_ResetOutputPin>
 8001200:	23ff      	movs	r3, #255	; 0xff
 8001202:	0018      	movs	r0, r3
 8001204:	46bd      	mov	sp, r7
 8001206:	b004      	add	sp, #16
 8001208:	bdb0      	pop	{r4, r5, r7, pc}
 800120a:	46c0      	nop			; (mov r8, r8)
 800120c:	2000072c 	.word	0x2000072c
 8001210:	200012dc 	.word	0x200012dc
 8001214:	2000070c 	.word	0x2000070c
 8001218:	200012d8 	.word	0x200012d8

0800121c <TIM2_IRQHandler>:
 800121c:	b5b0      	push	{r4, r5, r7, lr}
 800121e:	af00      	add	r7, sp, #0
 8001220:	2380      	movs	r3, #128	; 0x80
 8001222:	05db      	lsls	r3, r3, #23
 8001224:	0018      	movs	r0, r3
 8001226:	f7ff fc61 	bl	8000aec <LL_TIM_ClearFlag_UPDATE>
 800122a:	4b31      	ldr	r3, [pc, #196]	; (80012f0 <TIM2_IRQHandler+0xd4>)
 800122c:	7d1b      	ldrb	r3, [r3, #20]
 800122e:	2b00      	cmp	r3, #0
 8001230:	d003      	beq.n	800123a <TIM2_IRQHandler+0x1e>
 8001232:	4b2f      	ldr	r3, [pc, #188]	; (80012f0 <TIM2_IRQHandler+0xd4>)
 8001234:	2201      	movs	r2, #1
 8001236:	755a      	strb	r2, [r3, #21]
 8001238:	e058      	b.n	80012ec <TIM2_IRQHandler+0xd0>
 800123a:	4b2d      	ldr	r3, [pc, #180]	; (80012f0 <TIM2_IRQHandler+0xd4>)
 800123c:	2200      	movs	r2, #0
 800123e:	755a      	strb	r2, [r3, #21]
 8001240:	4b2c      	ldr	r3, [pc, #176]	; (80012f4 <TIM2_IRQHandler+0xd8>)
 8001242:	781b      	ldrb	r3, [r3, #0]
 8001244:	3301      	adds	r3, #1
 8001246:	2109      	movs	r1, #9
 8001248:	0018      	movs	r0, r3
 800124a:	f7ff f8cd 	bl	80003e8 <__aeabi_idivmod>
 800124e:	000b      	movs	r3, r1
 8001250:	b2da      	uxtb	r2, r3
 8001252:	4b28      	ldr	r3, [pc, #160]	; (80012f4 <TIM2_IRQHandler+0xd8>)
 8001254:	701a      	strb	r2, [r3, #0]
 8001256:	4b27      	ldr	r3, [pc, #156]	; (80012f4 <TIM2_IRQHandler+0xd8>)
 8001258:	781b      	ldrb	r3, [r3, #0]
 800125a:	001a      	movs	r2, r3
 800125c:	4b24      	ldr	r3, [pc, #144]	; (80012f0 <TIM2_IRQHandler+0xd4>)
 800125e:	189b      	adds	r3, r3, r2
 8001260:	7a5b      	ldrb	r3, [r3, #9]
 8001262:	2b00      	cmp	r3, #0
 8001264:	d120      	bne.n	80012a8 <TIM2_IRQHandler+0x8c>
 8001266:	4b23      	ldr	r3, [pc, #140]	; (80012f4 <TIM2_IRQHandler+0xd8>)
 8001268:	781a      	ldrb	r2, [r3, #0]
 800126a:	4b22      	ldr	r3, [pc, #136]	; (80012f4 <TIM2_IRQHandler+0xd8>)
 800126c:	781b      	ldrb	r3, [r3, #0]
 800126e:	001c      	movs	r4, r3
 8001270:	0010      	movs	r0, r2
 8001272:	f7ff ff0f 	bl	8001094 <get_dist>
 8001276:	0003      	movs	r3, r0
 8001278:	001a      	movs	r2, r3
 800127a:	4b1d      	ldr	r3, [pc, #116]	; (80012f0 <TIM2_IRQHandler+0xd4>)
 800127c:	551a      	strb	r2, [r3, r4]
 800127e:	4b1d      	ldr	r3, [pc, #116]	; (80012f4 <TIM2_IRQHandler+0xd8>)
 8001280:	781b      	ldrb	r3, [r3, #0]
 8001282:	001a      	movs	r2, r3
 8001284:	4b1a      	ldr	r3, [pc, #104]	; (80012f0 <TIM2_IRQHandler+0xd4>)
 8001286:	5c9b      	ldrb	r3, [r3, r2]
 8001288:	2bff      	cmp	r3, #255	; 0xff
 800128a:	d10f      	bne.n	80012ac <TIM2_IRQHandler+0x90>
 800128c:	4b19      	ldr	r3, [pc, #100]	; (80012f4 <TIM2_IRQHandler+0xd8>)
 800128e:	781b      	ldrb	r3, [r3, #0]
 8001290:	001a      	movs	r2, r3
 8001292:	4b17      	ldr	r3, [pc, #92]	; (80012f0 <TIM2_IRQHandler+0xd4>)
 8001294:	189b      	adds	r3, r3, r2
 8001296:	2201      	movs	r2, #1
 8001298:	725a      	strb	r2, [r3, #9]
 800129a:	4b15      	ldr	r3, [pc, #84]	; (80012f0 <TIM2_IRQHandler+0xd4>)
 800129c:	7c9b      	ldrb	r3, [r3, #18]
 800129e:	3301      	adds	r3, #1
 80012a0:	b2da      	uxtb	r2, r3
 80012a2:	4b13      	ldr	r3, [pc, #76]	; (80012f0 <TIM2_IRQHandler+0xd4>)
 80012a4:	749a      	strb	r2, [r3, #18]
 80012a6:	e002      	b.n	80012ae <TIM2_IRQHandler+0x92>
 80012a8:	46c0      	nop			; (mov r8, r8)
 80012aa:	e000      	b.n	80012ae <TIM2_IRQHandler+0x92>
 80012ac:	46c0      	nop			; (mov r8, r8)
 80012ae:	f7ff fec9 	bl	8001044 <col_av_any>
 80012b2:	0003      	movs	r3, r0
 80012b4:	001a      	movs	r2, r3
 80012b6:	4b0e      	ldr	r3, [pc, #56]	; (80012f0 <TIM2_IRQHandler+0xd4>)
 80012b8:	74da      	strb	r2, [r3, #19]
 80012ba:	4b0d      	ldr	r3, [pc, #52]	; (80012f0 <TIM2_IRQHandler+0xd4>)
 80012bc:	7cdb      	ldrb	r3, [r3, #19]
 80012be:	2b00      	cmp	r3, #0
 80012c0:	d006      	beq.n	80012d0 <TIM2_IRQHandler+0xb4>
 80012c2:	4b0b      	ldr	r3, [pc, #44]	; (80012f0 <TIM2_IRQHandler+0xd4>)
 80012c4:	7c9a      	ldrb	r2, [r3, #18]
 80012c6:	4b0c      	ldr	r3, [pc, #48]	; (80012f8 <TIM2_IRQHandler+0xdc>)
 80012c8:	0011      	movs	r1, r2
 80012ca:	0018      	movs	r0, r3
 80012cc:	f001 f9ca 	bl	8002664 <er_man_add_err>
 80012d0:	4b08      	ldr	r3, [pc, #32]	; (80012f4 <TIM2_IRQHandler+0xd8>)
 80012d2:	781b      	ldrb	r3, [r3, #0]
 80012d4:	2b08      	cmp	r3, #8
 80012d6:	d109      	bne.n	80012ec <TIM2_IRQHandler+0xd0>
 80012d8:	4b05      	ldr	r3, [pc, #20]	; (80012f0 <TIM2_IRQHandler+0xd4>)
 80012da:	2109      	movs	r1, #9
 80012dc:	0018      	movs	r0, r3
 80012de:	f001 f977 	bl	80025d0 <err_man_set_dist>
 80012e2:	4b03      	ldr	r3, [pc, #12]	; (80012f0 <TIM2_IRQHandler+0xd4>)
 80012e4:	2109      	movs	r1, #9
 80012e6:	0018      	movs	r0, r3
 80012e8:	f001 fdd8 	bl	8002e9c <comm_send_msg>
 80012ec:	46bd      	mov	sp, r7
 80012ee:	bdb0      	pop	{r4, r5, r7, pc}
 80012f0:	2000070c 	.word	0x2000070c
 80012f4:	200012f8 	.word	0x200012f8
 80012f8:	20000715 	.word	0x20000715

080012fc <LL_SPI_Enable>:
 80012fc:	b580      	push	{r7, lr}
 80012fe:	b082      	sub	sp, #8
 8001300:	af00      	add	r7, sp, #0
 8001302:	6078      	str	r0, [r7, #4]
 8001304:	687b      	ldr	r3, [r7, #4]
 8001306:	681b      	ldr	r3, [r3, #0]
 8001308:	2240      	movs	r2, #64	; 0x40
 800130a:	431a      	orrs	r2, r3
 800130c:	687b      	ldr	r3, [r7, #4]
 800130e:	601a      	str	r2, [r3, #0]
 8001310:	46c0      	nop			; (mov r8, r8)
 8001312:	46bd      	mov	sp, r7
 8001314:	b002      	add	sp, #8
 8001316:	bd80      	pop	{r7, pc}

08001318 <LL_SPI_SetMode>:
 8001318:	b580      	push	{r7, lr}
 800131a:	b082      	sub	sp, #8
 800131c:	af00      	add	r7, sp, #0
 800131e:	6078      	str	r0, [r7, #4]
 8001320:	6039      	str	r1, [r7, #0]
 8001322:	687b      	ldr	r3, [r7, #4]
 8001324:	681b      	ldr	r3, [r3, #0]
 8001326:	4a05      	ldr	r2, [pc, #20]	; (800133c <LL_SPI_SetMode+0x24>)
 8001328:	401a      	ands	r2, r3
 800132a:	683b      	ldr	r3, [r7, #0]
 800132c:	431a      	orrs	r2, r3
 800132e:	687b      	ldr	r3, [r7, #4]
 8001330:	601a      	str	r2, [r3, #0]
 8001332:	46c0      	nop			; (mov r8, r8)
 8001334:	46bd      	mov	sp, r7
 8001336:	b002      	add	sp, #8
 8001338:	bd80      	pop	{r7, pc}
 800133a:	46c0      	nop			; (mov r8, r8)
 800133c:	fffffefb 	.word	0xfffffefb

08001340 <LL_SPI_SetBaudRatePrescaler>:
 8001340:	b580      	push	{r7, lr}
 8001342:	b082      	sub	sp, #8
 8001344:	af00      	add	r7, sp, #0
 8001346:	6078      	str	r0, [r7, #4]
 8001348:	6039      	str	r1, [r7, #0]
 800134a:	687b      	ldr	r3, [r7, #4]
 800134c:	681b      	ldr	r3, [r3, #0]
 800134e:	2238      	movs	r2, #56	; 0x38
 8001350:	4393      	bics	r3, r2
 8001352:	001a      	movs	r2, r3
 8001354:	683b      	ldr	r3, [r7, #0]
 8001356:	431a      	orrs	r2, r3
 8001358:	687b      	ldr	r3, [r7, #4]
 800135a:	601a      	str	r2, [r3, #0]
 800135c:	46c0      	nop			; (mov r8, r8)
 800135e:	46bd      	mov	sp, r7
 8001360:	b002      	add	sp, #8
 8001362:	bd80      	pop	{r7, pc}

08001364 <LL_SPI_SetTransferBitOrder>:
 8001364:	b580      	push	{r7, lr}
 8001366:	b082      	sub	sp, #8
 8001368:	af00      	add	r7, sp, #0
 800136a:	6078      	str	r0, [r7, #4]
 800136c:	6039      	str	r1, [r7, #0]
 800136e:	687b      	ldr	r3, [r7, #4]
 8001370:	681b      	ldr	r3, [r3, #0]
 8001372:	2280      	movs	r2, #128	; 0x80
 8001374:	4393      	bics	r3, r2
 8001376:	001a      	movs	r2, r3
 8001378:	683b      	ldr	r3, [r7, #0]
 800137a:	431a      	orrs	r2, r3
 800137c:	687b      	ldr	r3, [r7, #4]
 800137e:	601a      	str	r2, [r3, #0]
 8001380:	46c0      	nop			; (mov r8, r8)
 8001382:	46bd      	mov	sp, r7
 8001384:	b002      	add	sp, #8
 8001386:	bd80      	pop	{r7, pc}

08001388 <LL_SPI_SetTransferDirection>:
 8001388:	b580      	push	{r7, lr}
 800138a:	b082      	sub	sp, #8
 800138c:	af00      	add	r7, sp, #0
 800138e:	6078      	str	r0, [r7, #4]
 8001390:	6039      	str	r1, [r7, #0]
 8001392:	687b      	ldr	r3, [r7, #4]
 8001394:	681b      	ldr	r3, [r3, #0]
 8001396:	4a05      	ldr	r2, [pc, #20]	; (80013ac <LL_SPI_SetTransferDirection+0x24>)
 8001398:	401a      	ands	r2, r3
 800139a:	683b      	ldr	r3, [r7, #0]
 800139c:	431a      	orrs	r2, r3
 800139e:	687b      	ldr	r3, [r7, #4]
 80013a0:	601a      	str	r2, [r3, #0]
 80013a2:	46c0      	nop			; (mov r8, r8)
 80013a4:	46bd      	mov	sp, r7
 80013a6:	b002      	add	sp, #8
 80013a8:	bd80      	pop	{r7, pc}
 80013aa:	46c0      	nop			; (mov r8, r8)
 80013ac:	ffff3bff 	.word	0xffff3bff

080013b0 <LL_SPI_SetDataWidth>:
 80013b0:	b580      	push	{r7, lr}
 80013b2:	b082      	sub	sp, #8
 80013b4:	af00      	add	r7, sp, #0
 80013b6:	6078      	str	r0, [r7, #4]
 80013b8:	6039      	str	r1, [r7, #0]
 80013ba:	687b      	ldr	r3, [r7, #4]
 80013bc:	685b      	ldr	r3, [r3, #4]
 80013be:	4a05      	ldr	r2, [pc, #20]	; (80013d4 <LL_SPI_SetDataWidth+0x24>)
 80013c0:	401a      	ands	r2, r3
 80013c2:	683b      	ldr	r3, [r7, #0]
 80013c4:	431a      	orrs	r2, r3
 80013c6:	687b      	ldr	r3, [r7, #4]
 80013c8:	605a      	str	r2, [r3, #4]
 80013ca:	46c0      	nop			; (mov r8, r8)
 80013cc:	46bd      	mov	sp, r7
 80013ce:	b002      	add	sp, #8
 80013d0:	bd80      	pop	{r7, pc}
 80013d2:	46c0      	nop			; (mov r8, r8)
 80013d4:	fffff0ff 	.word	0xfffff0ff

080013d8 <LL_SPI_EnableNSSPulseMgt>:
 80013d8:	b580      	push	{r7, lr}
 80013da:	b082      	sub	sp, #8
 80013dc:	af00      	add	r7, sp, #0
 80013de:	6078      	str	r0, [r7, #4]
 80013e0:	687b      	ldr	r3, [r7, #4]
 80013e2:	685b      	ldr	r3, [r3, #4]
 80013e4:	2208      	movs	r2, #8
 80013e6:	431a      	orrs	r2, r3
 80013e8:	687b      	ldr	r3, [r7, #4]
 80013ea:	605a      	str	r2, [r3, #4]
 80013ec:	46c0      	nop			; (mov r8, r8)
 80013ee:	46bd      	mov	sp, r7
 80013f0:	b002      	add	sp, #8
 80013f2:	bd80      	pop	{r7, pc}

080013f4 <LL_SPI_IsActiveFlag_TXE>:
 80013f4:	b580      	push	{r7, lr}
 80013f6:	b082      	sub	sp, #8
 80013f8:	af00      	add	r7, sp, #0
 80013fa:	6078      	str	r0, [r7, #4]
 80013fc:	687b      	ldr	r3, [r7, #4]
 80013fe:	689b      	ldr	r3, [r3, #8]
 8001400:	2202      	movs	r2, #2
 8001402:	4013      	ands	r3, r2
 8001404:	3b02      	subs	r3, #2
 8001406:	425a      	negs	r2, r3
 8001408:	4153      	adcs	r3, r2
 800140a:	b2db      	uxtb	r3, r3
 800140c:	0018      	movs	r0, r3
 800140e:	46bd      	mov	sp, r7
 8001410:	b002      	add	sp, #8
 8001412:	bd80      	pop	{r7, pc}

08001414 <LL_SPI_TransmitData8>:
 8001414:	b580      	push	{r7, lr}
 8001416:	b082      	sub	sp, #8
 8001418:	af00      	add	r7, sp, #0
 800141a:	6078      	str	r0, [r7, #4]
 800141c:	000a      	movs	r2, r1
 800141e:	1cfb      	adds	r3, r7, #3
 8001420:	701a      	strb	r2, [r3, #0]
 8001422:	687b      	ldr	r3, [r7, #4]
 8001424:	330c      	adds	r3, #12
 8001426:	1cfa      	adds	r2, r7, #3
 8001428:	7812      	ldrb	r2, [r2, #0]
 800142a:	701a      	strb	r2, [r3, #0]
 800142c:	46c0      	nop			; (mov r8, r8)
 800142e:	46bd      	mov	sp, r7
 8001430:	b002      	add	sp, #8
 8001432:	bd80      	pop	{r7, pc}

08001434 <LL_GPIO_SetPinMode>:
 8001434:	b580      	push	{r7, lr}
 8001436:	b084      	sub	sp, #16
 8001438:	af00      	add	r7, sp, #0
 800143a:	60f8      	str	r0, [r7, #12]
 800143c:	60b9      	str	r1, [r7, #8]
 800143e:	607a      	str	r2, [r7, #4]
 8001440:	68fb      	ldr	r3, [r7, #12]
 8001442:	6819      	ldr	r1, [r3, #0]
 8001444:	68bb      	ldr	r3, [r7, #8]
 8001446:	435b      	muls	r3, r3
 8001448:	001a      	movs	r2, r3
 800144a:	0013      	movs	r3, r2
 800144c:	005b      	lsls	r3, r3, #1
 800144e:	189b      	adds	r3, r3, r2
 8001450:	43db      	mvns	r3, r3
 8001452:	400b      	ands	r3, r1
 8001454:	001a      	movs	r2, r3
 8001456:	68bb      	ldr	r3, [r7, #8]
 8001458:	435b      	muls	r3, r3
 800145a:	6879      	ldr	r1, [r7, #4]
 800145c:	434b      	muls	r3, r1
 800145e:	431a      	orrs	r2, r3
 8001460:	68fb      	ldr	r3, [r7, #12]
 8001462:	601a      	str	r2, [r3, #0]
 8001464:	46c0      	nop			; (mov r8, r8)
 8001466:	46bd      	mov	sp, r7
 8001468:	b004      	add	sp, #16
 800146a:	bd80      	pop	{r7, pc}

0800146c <LL_GPIO_SetPinSpeed>:
 800146c:	b580      	push	{r7, lr}
 800146e:	b084      	sub	sp, #16
 8001470:	af00      	add	r7, sp, #0
 8001472:	60f8      	str	r0, [r7, #12]
 8001474:	60b9      	str	r1, [r7, #8]
 8001476:	607a      	str	r2, [r7, #4]
 8001478:	68fb      	ldr	r3, [r7, #12]
 800147a:	6899      	ldr	r1, [r3, #8]
 800147c:	68bb      	ldr	r3, [r7, #8]
 800147e:	435b      	muls	r3, r3
 8001480:	001a      	movs	r2, r3
 8001482:	0013      	movs	r3, r2
 8001484:	005b      	lsls	r3, r3, #1
 8001486:	189b      	adds	r3, r3, r2
 8001488:	43db      	mvns	r3, r3
 800148a:	400b      	ands	r3, r1
 800148c:	001a      	movs	r2, r3
 800148e:	68bb      	ldr	r3, [r7, #8]
 8001490:	435b      	muls	r3, r3
 8001492:	6879      	ldr	r1, [r7, #4]
 8001494:	434b      	muls	r3, r1
 8001496:	431a      	orrs	r2, r3
 8001498:	68fb      	ldr	r3, [r7, #12]
 800149a:	609a      	str	r2, [r3, #8]
 800149c:	46c0      	nop			; (mov r8, r8)
 800149e:	46bd      	mov	sp, r7
 80014a0:	b004      	add	sp, #16
 80014a2:	bd80      	pop	{r7, pc}

080014a4 <LL_GPIO_SetAFPin_0_7>:
 80014a4:	b580      	push	{r7, lr}
 80014a6:	b084      	sub	sp, #16
 80014a8:	af00      	add	r7, sp, #0
 80014aa:	60f8      	str	r0, [r7, #12]
 80014ac:	60b9      	str	r1, [r7, #8]
 80014ae:	607a      	str	r2, [r7, #4]
 80014b0:	68fb      	ldr	r3, [r7, #12]
 80014b2:	6a19      	ldr	r1, [r3, #32]
 80014b4:	68bb      	ldr	r3, [r7, #8]
 80014b6:	435b      	muls	r3, r3
 80014b8:	68ba      	ldr	r2, [r7, #8]
 80014ba:	4353      	muls	r3, r2
 80014bc:	68ba      	ldr	r2, [r7, #8]
 80014be:	435a      	muls	r2, r3
 80014c0:	0013      	movs	r3, r2
 80014c2:	011b      	lsls	r3, r3, #4
 80014c4:	1a9b      	subs	r3, r3, r2
 80014c6:	43db      	mvns	r3, r3
 80014c8:	400b      	ands	r3, r1
 80014ca:	001a      	movs	r2, r3
 80014cc:	68bb      	ldr	r3, [r7, #8]
 80014ce:	435b      	muls	r3, r3
 80014d0:	68b9      	ldr	r1, [r7, #8]
 80014d2:	434b      	muls	r3, r1
 80014d4:	68b9      	ldr	r1, [r7, #8]
 80014d6:	434b      	muls	r3, r1
 80014d8:	6879      	ldr	r1, [r7, #4]
 80014da:	434b      	muls	r3, r1
 80014dc:	431a      	orrs	r2, r3
 80014de:	68fb      	ldr	r3, [r7, #12]
 80014e0:	621a      	str	r2, [r3, #32]
 80014e2:	46c0      	nop			; (mov r8, r8)
 80014e4:	46bd      	mov	sp, r7
 80014e6:	b004      	add	sp, #16
 80014e8:	bd80      	pop	{r7, pc}

080014ea <LL_GPIO_SetOutputPin>:
 80014ea:	b580      	push	{r7, lr}
 80014ec:	b082      	sub	sp, #8
 80014ee:	af00      	add	r7, sp, #0
 80014f0:	6078      	str	r0, [r7, #4]
 80014f2:	6039      	str	r1, [r7, #0]
 80014f4:	687b      	ldr	r3, [r7, #4]
 80014f6:	683a      	ldr	r2, [r7, #0]
 80014f8:	619a      	str	r2, [r3, #24]
 80014fa:	46c0      	nop			; (mov r8, r8)
 80014fc:	46bd      	mov	sp, r7
 80014fe:	b002      	add	sp, #8
 8001500:	bd80      	pop	{r7, pc}

08001502 <LL_GPIO_ResetOutputPin>:
 8001502:	b580      	push	{r7, lr}
 8001504:	b082      	sub	sp, #8
 8001506:	af00      	add	r7, sp, #0
 8001508:	6078      	str	r0, [r7, #4]
 800150a:	6039      	str	r1, [r7, #0]
 800150c:	687b      	ldr	r3, [r7, #4]
 800150e:	683a      	ldr	r2, [r7, #0]
 8001510:	629a      	str	r2, [r3, #40]	; 0x28
 8001512:	46c0      	nop			; (mov r8, r8)
 8001514:	46bd      	mov	sp, r7
 8001516:	b002      	add	sp, #8
 8001518:	bd80      	pop	{r7, pc}
	...

0800151c <LL_AHB1_GRP1_EnableClock>:
 800151c:	b580      	push	{r7, lr}
 800151e:	b084      	sub	sp, #16
 8001520:	af00      	add	r7, sp, #0
 8001522:	6078      	str	r0, [r7, #4]
 8001524:	4b07      	ldr	r3, [pc, #28]	; (8001544 <LL_AHB1_GRP1_EnableClock+0x28>)
 8001526:	6959      	ldr	r1, [r3, #20]
 8001528:	4b06      	ldr	r3, [pc, #24]	; (8001544 <LL_AHB1_GRP1_EnableClock+0x28>)
 800152a:	687a      	ldr	r2, [r7, #4]
 800152c:	430a      	orrs	r2, r1
 800152e:	615a      	str	r2, [r3, #20]
 8001530:	4b04      	ldr	r3, [pc, #16]	; (8001544 <LL_AHB1_GRP1_EnableClock+0x28>)
 8001532:	695b      	ldr	r3, [r3, #20]
 8001534:	687a      	ldr	r2, [r7, #4]
 8001536:	4013      	ands	r3, r2
 8001538:	60fb      	str	r3, [r7, #12]
 800153a:	68fb      	ldr	r3, [r7, #12]
 800153c:	46c0      	nop			; (mov r8, r8)
 800153e:	46bd      	mov	sp, r7
 8001540:	b004      	add	sp, #16
 8001542:	bd80      	pop	{r7, pc}
 8001544:	40021000 	.word	0x40021000

08001548 <LL_APB1_GRP2_EnableClock>:
 8001548:	b580      	push	{r7, lr}
 800154a:	b084      	sub	sp, #16
 800154c:	af00      	add	r7, sp, #0
 800154e:	6078      	str	r0, [r7, #4]
 8001550:	4b07      	ldr	r3, [pc, #28]	; (8001570 <LL_APB1_GRP2_EnableClock+0x28>)
 8001552:	6999      	ldr	r1, [r3, #24]
 8001554:	4b06      	ldr	r3, [pc, #24]	; (8001570 <LL_APB1_GRP2_EnableClock+0x28>)
 8001556:	687a      	ldr	r2, [r7, #4]
 8001558:	430a      	orrs	r2, r1
 800155a:	619a      	str	r2, [r3, #24]
 800155c:	4b04      	ldr	r3, [pc, #16]	; (8001570 <LL_APB1_GRP2_EnableClock+0x28>)
 800155e:	699b      	ldr	r3, [r3, #24]
 8001560:	687a      	ldr	r2, [r7, #4]
 8001562:	4013      	ands	r3, r2
 8001564:	60fb      	str	r3, [r7, #12]
 8001566:	68fb      	ldr	r3, [r7, #12]
 8001568:	46c0      	nop			; (mov r8, r8)
 800156a:	46bd      	mov	sp, r7
 800156c:	b004      	add	sp, #16
 800156e:	bd80      	pop	{r7, pc}
 8001570:	40021000 	.word	0x40021000

08001574 <disp_hw_config>:
 8001574:	b580      	push	{r7, lr}
 8001576:	af00      	add	r7, sp, #0
 8001578:	2380      	movs	r3, #128	; 0x80
 800157a:	031b      	lsls	r3, r3, #12
 800157c:	0018      	movs	r0, r3
 800157e:	f7ff ffcd 	bl	800151c <LL_AHB1_GRP1_EnableClock>
 8001582:	4b34      	ldr	r3, [pc, #208]	; (8001654 <disp_hw_config+0xe0>)
 8001584:	2201      	movs	r2, #1
 8001586:	2110      	movs	r1, #16
 8001588:	0018      	movs	r0, r3
 800158a:	f7ff ff53 	bl	8001434 <LL_GPIO_SetPinMode>
 800158e:	4b31      	ldr	r3, [pc, #196]	; (8001654 <disp_hw_config+0xe0>)
 8001590:	2201      	movs	r2, #1
 8001592:	2120      	movs	r1, #32
 8001594:	0018      	movs	r0, r3
 8001596:	f7ff ff4d 	bl	8001434 <LL_GPIO_SetPinMode>
 800159a:	2380      	movs	r3, #128	; 0x80
 800159c:	029b      	lsls	r3, r3, #10
 800159e:	0018      	movs	r0, r3
 80015a0:	f7ff ffbc 	bl	800151c <LL_AHB1_GRP1_EnableClock>
 80015a4:	2390      	movs	r3, #144	; 0x90
 80015a6:	05db      	lsls	r3, r3, #23
 80015a8:	2202      	movs	r2, #2
 80015aa:	2120      	movs	r1, #32
 80015ac:	0018      	movs	r0, r3
 80015ae:	f7ff ff41 	bl	8001434 <LL_GPIO_SetPinMode>
 80015b2:	2390      	movs	r3, #144	; 0x90
 80015b4:	05db      	lsls	r3, r3, #23
 80015b6:	2200      	movs	r2, #0
 80015b8:	2120      	movs	r1, #32
 80015ba:	0018      	movs	r0, r3
 80015bc:	f7ff ff72 	bl	80014a4 <LL_GPIO_SetAFPin_0_7>
 80015c0:	2390      	movs	r3, #144	; 0x90
 80015c2:	05db      	lsls	r3, r3, #23
 80015c4:	2203      	movs	r2, #3
 80015c6:	2120      	movs	r1, #32
 80015c8:	0018      	movs	r0, r3
 80015ca:	f7ff ff4f 	bl	800146c <LL_GPIO_SetPinSpeed>
 80015ce:	2390      	movs	r3, #144	; 0x90
 80015d0:	05db      	lsls	r3, r3, #23
 80015d2:	2202      	movs	r2, #2
 80015d4:	2180      	movs	r1, #128	; 0x80
 80015d6:	0018      	movs	r0, r3
 80015d8:	f7ff ff2c 	bl	8001434 <LL_GPIO_SetPinMode>
 80015dc:	2390      	movs	r3, #144	; 0x90
 80015de:	05db      	lsls	r3, r3, #23
 80015e0:	2200      	movs	r2, #0
 80015e2:	2180      	movs	r1, #128	; 0x80
 80015e4:	0018      	movs	r0, r3
 80015e6:	f7ff ff5d 	bl	80014a4 <LL_GPIO_SetAFPin_0_7>
 80015ea:	2390      	movs	r3, #144	; 0x90
 80015ec:	05db      	lsls	r3, r3, #23
 80015ee:	2203      	movs	r2, #3
 80015f0:	2180      	movs	r1, #128	; 0x80
 80015f2:	0018      	movs	r0, r3
 80015f4:	f7ff ff3a 	bl	800146c <LL_GPIO_SetPinSpeed>
 80015f8:	2380      	movs	r3, #128	; 0x80
 80015fa:	015b      	lsls	r3, r3, #5
 80015fc:	0018      	movs	r0, r3
 80015fe:	f7ff ffa3 	bl	8001548 <LL_APB1_GRP2_EnableClock>
 8001602:	2382      	movs	r3, #130	; 0x82
 8001604:	005b      	lsls	r3, r3, #1
 8001606:	4a14      	ldr	r2, [pc, #80]	; (8001658 <disp_hw_config+0xe4>)
 8001608:	0019      	movs	r1, r3
 800160a:	0010      	movs	r0, r2
 800160c:	f7ff fe84 	bl	8001318 <LL_SPI_SetMode>
 8001610:	4b11      	ldr	r3, [pc, #68]	; (8001658 <disp_hw_config+0xe4>)
 8001612:	2100      	movs	r1, #0
 8001614:	0018      	movs	r0, r3
 8001616:	f7ff fe93 	bl	8001340 <LL_SPI_SetBaudRatePrescaler>
 800161a:	4b0f      	ldr	r3, [pc, #60]	; (8001658 <disp_hw_config+0xe4>)
 800161c:	2100      	movs	r1, #0
 800161e:	0018      	movs	r0, r3
 8001620:	f7ff feb2 	bl	8001388 <LL_SPI_SetTransferDirection>
 8001624:	4b0c      	ldr	r3, [pc, #48]	; (8001658 <disp_hw_config+0xe4>)
 8001626:	2100      	movs	r1, #0
 8001628:	0018      	movs	r0, r3
 800162a:	f7ff fe9b 	bl	8001364 <LL_SPI_SetTransferBitOrder>
 800162e:	23e0      	movs	r3, #224	; 0xe0
 8001630:	00db      	lsls	r3, r3, #3
 8001632:	4a09      	ldr	r2, [pc, #36]	; (8001658 <disp_hw_config+0xe4>)
 8001634:	0019      	movs	r1, r3
 8001636:	0010      	movs	r0, r2
 8001638:	f7ff feba 	bl	80013b0 <LL_SPI_SetDataWidth>
 800163c:	4b06      	ldr	r3, [pc, #24]	; (8001658 <disp_hw_config+0xe4>)
 800163e:	0018      	movs	r0, r3
 8001640:	f7ff feca 	bl	80013d8 <LL_SPI_EnableNSSPulseMgt>
 8001644:	4b04      	ldr	r3, [pc, #16]	; (8001658 <disp_hw_config+0xe4>)
 8001646:	0018      	movs	r0, r3
 8001648:	f7ff fe58 	bl	80012fc <LL_SPI_Enable>
 800164c:	46c0      	nop			; (mov r8, r8)
 800164e:	46bd      	mov	sp, r7
 8001650:	bd80      	pop	{r7, pc}
 8001652:	46c0      	nop			; (mov r8, r8)
 8001654:	48000800 	.word	0x48000800
 8001658:	40013000 	.word	0x40013000

0800165c <disp_reset>:
 800165c:	b580      	push	{r7, lr}
 800165e:	b082      	sub	sp, #8
 8001660:	af00      	add	r7, sp, #0
 8001662:	2396      	movs	r3, #150	; 0x96
 8001664:	015b      	lsls	r3, r3, #5
 8001666:	607b      	str	r3, [r7, #4]
 8001668:	4b0e      	ldr	r3, [pc, #56]	; (80016a4 <disp_reset+0x48>)
 800166a:	2110      	movs	r1, #16
 800166c:	0018      	movs	r0, r3
 800166e:	f7ff ff48 	bl	8001502 <LL_GPIO_ResetOutputPin>
 8001672:	687b      	ldr	r3, [r7, #4]
 8001674:	3b01      	subs	r3, #1
 8001676:	607b      	str	r3, [r7, #4]
 8001678:	687b      	ldr	r3, [r7, #4]
 800167a:	2b00      	cmp	r3, #0
 800167c:	d1f9      	bne.n	8001672 <disp_reset+0x16>
 800167e:	4b09      	ldr	r3, [pc, #36]	; (80016a4 <disp_reset+0x48>)
 8001680:	2110      	movs	r1, #16
 8001682:	0018      	movs	r0, r3
 8001684:	f7ff ff31 	bl	80014ea <LL_GPIO_SetOutputPin>
 8001688:	2396      	movs	r3, #150	; 0x96
 800168a:	015b      	lsls	r3, r3, #5
 800168c:	607b      	str	r3, [r7, #4]
 800168e:	687b      	ldr	r3, [r7, #4]
 8001690:	3b01      	subs	r3, #1
 8001692:	607b      	str	r3, [r7, #4]
 8001694:	687b      	ldr	r3, [r7, #4]
 8001696:	2b00      	cmp	r3, #0
 8001698:	d1f9      	bne.n	800168e <disp_reset+0x32>
 800169a:	46c0      	nop			; (mov r8, r8)
 800169c:	46bd      	mov	sp, r7
 800169e:	b002      	add	sp, #8
 80016a0:	bd80      	pop	{r7, pc}
 80016a2:	46c0      	nop			; (mov r8, r8)
 80016a4:	48000800 	.word	0x48000800

080016a8 <disp_send_cmd>:
 80016a8:	b580      	push	{r7, lr}
 80016aa:	b082      	sub	sp, #8
 80016ac:	af00      	add	r7, sp, #0
 80016ae:	0002      	movs	r2, r0
 80016b0:	1dfb      	adds	r3, r7, #7
 80016b2:	701a      	strb	r2, [r3, #0]
 80016b4:	4b0b      	ldr	r3, [pc, #44]	; (80016e4 <disp_send_cmd+0x3c>)
 80016b6:	2120      	movs	r1, #32
 80016b8:	0018      	movs	r0, r3
 80016ba:	f7ff ff22 	bl	8001502 <LL_GPIO_ResetOutputPin>
 80016be:	1dfb      	adds	r3, r7, #7
 80016c0:	781b      	ldrb	r3, [r3, #0]
 80016c2:	4a09      	ldr	r2, [pc, #36]	; (80016e8 <disp_send_cmd+0x40>)
 80016c4:	0019      	movs	r1, r3
 80016c6:	0010      	movs	r0, r2
 80016c8:	f7ff fea4 	bl	8001414 <LL_SPI_TransmitData8>
 80016cc:	46c0      	nop			; (mov r8, r8)
 80016ce:	4b06      	ldr	r3, [pc, #24]	; (80016e8 <disp_send_cmd+0x40>)
 80016d0:	0018      	movs	r0, r3
 80016d2:	f7ff fe8f 	bl	80013f4 <LL_SPI_IsActiveFlag_TXE>
 80016d6:	1e03      	subs	r3, r0, #0
 80016d8:	d0f9      	beq.n	80016ce <disp_send_cmd+0x26>
 80016da:	46c0      	nop			; (mov r8, r8)
 80016dc:	46bd      	mov	sp, r7
 80016de:	b002      	add	sp, #8
 80016e0:	bd80      	pop	{r7, pc}
 80016e2:	46c0      	nop			; (mov r8, r8)
 80016e4:	48000800 	.word	0x48000800
 80016e8:	40013000 	.word	0x40013000

080016ec <disp_send_data>:
 80016ec:	b580      	push	{r7, lr}
 80016ee:	b084      	sub	sp, #16
 80016f0:	af00      	add	r7, sp, #0
 80016f2:	6078      	str	r0, [r7, #4]
 80016f4:	000a      	movs	r2, r1
 80016f6:	1cfb      	adds	r3, r7, #3
 80016f8:	701a      	strb	r2, [r3, #0]
 80016fa:	230f      	movs	r3, #15
 80016fc:	18fb      	adds	r3, r7, r3
 80016fe:	2200      	movs	r2, #0
 8001700:	701a      	strb	r2, [r3, #0]
 8001702:	1cfb      	adds	r3, r7, #3
 8001704:	781b      	ldrb	r3, [r3, #0]
 8001706:	2b00      	cmp	r3, #0
 8001708:	d023      	beq.n	8001752 <disp_send_data+0x66>
 800170a:	4b14      	ldr	r3, [pc, #80]	; (800175c <disp_send_data+0x70>)
 800170c:	2120      	movs	r1, #32
 800170e:	0018      	movs	r0, r3
 8001710:	f7ff feeb 	bl	80014ea <LL_GPIO_SetOutputPin>
 8001714:	e015      	b.n	8001742 <disp_send_data+0x56>
 8001716:	220f      	movs	r2, #15
 8001718:	18bb      	adds	r3, r7, r2
 800171a:	781b      	ldrb	r3, [r3, #0]
 800171c:	18ba      	adds	r2, r7, r2
 800171e:	1c59      	adds	r1, r3, #1
 8001720:	7011      	strb	r1, [r2, #0]
 8001722:	001a      	movs	r2, r3
 8001724:	687b      	ldr	r3, [r7, #4]
 8001726:	189b      	adds	r3, r3, r2
 8001728:	781b      	ldrb	r3, [r3, #0]
 800172a:	4a0d      	ldr	r2, [pc, #52]	; (8001760 <disp_send_data+0x74>)
 800172c:	0019      	movs	r1, r3
 800172e:	0010      	movs	r0, r2
 8001730:	f7ff fe70 	bl	8001414 <LL_SPI_TransmitData8>
 8001734:	46c0      	nop			; (mov r8, r8)
 8001736:	4b0a      	ldr	r3, [pc, #40]	; (8001760 <disp_send_data+0x74>)
 8001738:	0018      	movs	r0, r3
 800173a:	f7ff fe5b 	bl	80013f4 <LL_SPI_IsActiveFlag_TXE>
 800173e:	1e03      	subs	r3, r0, #0
 8001740:	d0f9      	beq.n	8001736 <disp_send_data+0x4a>
 8001742:	1cfb      	adds	r3, r7, #3
 8001744:	781b      	ldrb	r3, [r3, #0]
 8001746:	1cfa      	adds	r2, r7, #3
 8001748:	1e59      	subs	r1, r3, #1
 800174a:	7011      	strb	r1, [r2, #0]
 800174c:	2b00      	cmp	r3, #0
 800174e:	d1e2      	bne.n	8001716 <disp_send_data+0x2a>
 8001750:	e000      	b.n	8001754 <disp_send_data+0x68>
 8001752:	46c0      	nop			; (mov r8, r8)
 8001754:	46bd      	mov	sp, r7
 8001756:	b004      	add	sp, #16
 8001758:	bd80      	pop	{r7, pc}
 800175a:	46c0      	nop			; (mov r8, r8)
 800175c:	48000800 	.word	0x48000800
 8001760:	40013000 	.word	0x40013000

08001764 <disp_fill>:
 8001764:	b580      	push	{r7, lr}
 8001766:	b082      	sub	sp, #8
 8001768:	af00      	add	r7, sp, #0
 800176a:	0002      	movs	r2, r0
 800176c:	1dfb      	adds	r3, r7, #7
 800176e:	701a      	strb	r2, [r3, #0]
 8001770:	1dfb      	adds	r3, r7, #7
 8001772:	7819      	ldrb	r1, [r3, #0]
 8001774:	2380      	movs	r3, #128	; 0x80
 8001776:	00da      	lsls	r2, r3, #3
 8001778:	4b03      	ldr	r3, [pc, #12]	; (8001788 <disp_fill+0x24>)
 800177a:	0018      	movs	r0, r3
 800177c:	f007 fdac 	bl	80092d8 <memset>
 8001780:	46c0      	nop			; (mov r8, r8)
 8001782:	46bd      	mov	sp, r7
 8001784:	b002      	add	sp, #8
 8001786:	bd80      	pop	{r7, pc}
 8001788:	200012fc 	.word	0x200012fc

0800178c <disp_update>:
 800178c:	b580      	push	{r7, lr}
 800178e:	b082      	sub	sp, #8
 8001790:	af00      	add	r7, sp, #0
 8001792:	1dfb      	adds	r3, r7, #7
 8001794:	2200      	movs	r2, #0
 8001796:	701a      	strb	r2, [r3, #0]
 8001798:	2020      	movs	r0, #32
 800179a:	f7ff ff85 	bl	80016a8 <disp_send_cmd>
 800179e:	2010      	movs	r0, #16
 80017a0:	f7ff ff82 	bl	80016a8 <disp_send_cmd>
 80017a4:	20d3      	movs	r0, #211	; 0xd3
 80017a6:	f7ff ff7f 	bl	80016a8 <disp_send_cmd>
 80017aa:	2000      	movs	r0, #0
 80017ac:	f7ff ff7c 	bl	80016a8 <disp_send_cmd>
 80017b0:	1dfb      	adds	r3, r7, #7
 80017b2:	2200      	movs	r2, #0
 80017b4:	701a      	strb	r2, [r3, #0]
 80017b6:	e01a      	b.n	80017ee <disp_update+0x62>
 80017b8:	1dfb      	adds	r3, r7, #7
 80017ba:	781b      	ldrb	r3, [r3, #0]
 80017bc:	3b50      	subs	r3, #80	; 0x50
 80017be:	b2db      	uxtb	r3, r3
 80017c0:	0018      	movs	r0, r3
 80017c2:	f7ff ff71 	bl	80016a8 <disp_send_cmd>
 80017c6:	2000      	movs	r0, #0
 80017c8:	f7ff ff6e 	bl	80016a8 <disp_send_cmd>
 80017cc:	2010      	movs	r0, #16
 80017ce:	f7ff ff6b 	bl	80016a8 <disp_send_cmd>
 80017d2:	1dfb      	adds	r3, r7, #7
 80017d4:	781b      	ldrb	r3, [r3, #0]
 80017d6:	01da      	lsls	r2, r3, #7
 80017d8:	4b09      	ldr	r3, [pc, #36]	; (8001800 <disp_update+0x74>)
 80017da:	18d3      	adds	r3, r2, r3
 80017dc:	2180      	movs	r1, #128	; 0x80
 80017de:	0018      	movs	r0, r3
 80017e0:	f7ff ff84 	bl	80016ec <disp_send_data>
 80017e4:	1dfb      	adds	r3, r7, #7
 80017e6:	781a      	ldrb	r2, [r3, #0]
 80017e8:	1dfb      	adds	r3, r7, #7
 80017ea:	3201      	adds	r2, #1
 80017ec:	701a      	strb	r2, [r3, #0]
 80017ee:	1dfb      	adds	r3, r7, #7
 80017f0:	781b      	ldrb	r3, [r3, #0]
 80017f2:	2b07      	cmp	r3, #7
 80017f4:	d9e0      	bls.n	80017b8 <disp_update+0x2c>
 80017f6:	46c0      	nop			; (mov r8, r8)
 80017f8:	46bd      	mov	sp, r7
 80017fa:	b002      	add	sp, #8
 80017fc:	bd80      	pop	{r7, pc}
 80017fe:	46c0      	nop			; (mov r8, r8)
 8001800:	200012fc 	.word	0x200012fc

08001804 <disp_draw_pix>:
 8001804:	b590      	push	{r4, r7, lr}
 8001806:	b083      	sub	sp, #12
 8001808:	af00      	add	r7, sp, #0
 800180a:	0004      	movs	r4, r0
 800180c:	0008      	movs	r0, r1
 800180e:	0011      	movs	r1, r2
 8001810:	1dfb      	adds	r3, r7, #7
 8001812:	1c22      	adds	r2, r4, #0
 8001814:	701a      	strb	r2, [r3, #0]
 8001816:	1dbb      	adds	r3, r7, #6
 8001818:	1c02      	adds	r2, r0, #0
 800181a:	701a      	strb	r2, [r3, #0]
 800181c:	1d7b      	adds	r3, r7, #5
 800181e:	1c0a      	adds	r2, r1, #0
 8001820:	701a      	strb	r2, [r3, #0]
 8001822:	1dfb      	adds	r3, r7, #7
 8001824:	781b      	ldrb	r3, [r3, #0]
 8001826:	2b80      	cmp	r3, #128	; 0x80
 8001828:	d847      	bhi.n	80018ba <disp_draw_pix+0xb6>
 800182a:	1dbb      	adds	r3, r7, #6
 800182c:	781b      	ldrb	r3, [r3, #0]
 800182e:	2b40      	cmp	r3, #64	; 0x40
 8001830:	d843      	bhi.n	80018ba <disp_draw_pix+0xb6>
 8001832:	1d7b      	adds	r3, r7, #5
 8001834:	781b      	ldrb	r3, [r3, #0]
 8001836:	2b01      	cmp	r3, #1
 8001838:	d11e      	bne.n	8001878 <disp_draw_pix+0x74>
 800183a:	1dfb      	adds	r3, r7, #7
 800183c:	781a      	ldrb	r2, [r3, #0]
 800183e:	1dbb      	adds	r3, r7, #6
 8001840:	781b      	ldrb	r3, [r3, #0]
 8001842:	08db      	lsrs	r3, r3, #3
 8001844:	b2d8      	uxtb	r0, r3
 8001846:	0003      	movs	r3, r0
 8001848:	01db      	lsls	r3, r3, #7
 800184a:	18d3      	adds	r3, r2, r3
 800184c:	4a1d      	ldr	r2, [pc, #116]	; (80018c4 <disp_draw_pix+0xc0>)
 800184e:	5cd3      	ldrb	r3, [r2, r3]
 8001850:	b25a      	sxtb	r2, r3
 8001852:	1dbb      	adds	r3, r7, #6
 8001854:	781b      	ldrb	r3, [r3, #0]
 8001856:	2107      	movs	r1, #7
 8001858:	400b      	ands	r3, r1
 800185a:	2101      	movs	r1, #1
 800185c:	4099      	lsls	r1, r3
 800185e:	000b      	movs	r3, r1
 8001860:	b25b      	sxtb	r3, r3
 8001862:	4313      	orrs	r3, r2
 8001864:	b259      	sxtb	r1, r3
 8001866:	1dfb      	adds	r3, r7, #7
 8001868:	781a      	ldrb	r2, [r3, #0]
 800186a:	0003      	movs	r3, r0
 800186c:	01db      	lsls	r3, r3, #7
 800186e:	18d3      	adds	r3, r2, r3
 8001870:	b2c9      	uxtb	r1, r1
 8001872:	4a14      	ldr	r2, [pc, #80]	; (80018c4 <disp_draw_pix+0xc0>)
 8001874:	54d1      	strb	r1, [r2, r3]
 8001876:	e021      	b.n	80018bc <disp_draw_pix+0xb8>
 8001878:	1dfb      	adds	r3, r7, #7
 800187a:	781a      	ldrb	r2, [r3, #0]
 800187c:	1dbb      	adds	r3, r7, #6
 800187e:	781b      	ldrb	r3, [r3, #0]
 8001880:	08db      	lsrs	r3, r3, #3
 8001882:	b2d8      	uxtb	r0, r3
 8001884:	0003      	movs	r3, r0
 8001886:	01db      	lsls	r3, r3, #7
 8001888:	18d3      	adds	r3, r2, r3
 800188a:	4a0e      	ldr	r2, [pc, #56]	; (80018c4 <disp_draw_pix+0xc0>)
 800188c:	5cd3      	ldrb	r3, [r2, r3]
 800188e:	b25b      	sxtb	r3, r3
 8001890:	1dba      	adds	r2, r7, #6
 8001892:	7812      	ldrb	r2, [r2, #0]
 8001894:	2107      	movs	r1, #7
 8001896:	400a      	ands	r2, r1
 8001898:	2101      	movs	r1, #1
 800189a:	4091      	lsls	r1, r2
 800189c:	000a      	movs	r2, r1
 800189e:	b252      	sxtb	r2, r2
 80018a0:	43d2      	mvns	r2, r2
 80018a2:	b252      	sxtb	r2, r2
 80018a4:	4013      	ands	r3, r2
 80018a6:	b259      	sxtb	r1, r3
 80018a8:	1dfb      	adds	r3, r7, #7
 80018aa:	781a      	ldrb	r2, [r3, #0]
 80018ac:	0003      	movs	r3, r0
 80018ae:	01db      	lsls	r3, r3, #7
 80018b0:	18d3      	adds	r3, r2, r3
 80018b2:	b2c9      	uxtb	r1, r1
 80018b4:	4a03      	ldr	r2, [pc, #12]	; (80018c4 <disp_draw_pix+0xc0>)
 80018b6:	54d1      	strb	r1, [r2, r3]
 80018b8:	e000      	b.n	80018bc <disp_draw_pix+0xb8>
 80018ba:	46c0      	nop			; (mov r8, r8)
 80018bc:	46bd      	mov	sp, r7
 80018be:	b003      	add	sp, #12
 80018c0:	bd90      	pop	{r4, r7, pc}
 80018c2:	46c0      	nop			; (mov r8, r8)
 80018c4:	200012fc 	.word	0x200012fc

080018c8 <disp_write_char>:
 80018c8:	b580      	push	{r7, lr}
 80018ca:	b086      	sub	sp, #24
 80018cc:	af00      	add	r7, sp, #0
 80018ce:	0002      	movs	r2, r0
 80018d0:	1dfb      	adds	r3, r7, #7
 80018d2:	701a      	strb	r2, [r3, #0]
 80018d4:	4b2f      	ldr	r3, [pc, #188]	; (8001994 <disp_write_char+0xcc>)
 80018d6:	781b      	ldrb	r3, [r3, #0]
 80018d8:	2b78      	cmp	r3, #120	; 0x78
 80018da:	d803      	bhi.n	80018e4 <disp_write_char+0x1c>
 80018dc:	4b2d      	ldr	r3, [pc, #180]	; (8001994 <disp_write_char+0xcc>)
 80018de:	785b      	ldrb	r3, [r3, #1]
 80018e0:	2b35      	cmp	r3, #53	; 0x35
 80018e2:	d902      	bls.n	80018ea <disp_write_char+0x22>
 80018e4:	2301      	movs	r3, #1
 80018e6:	425b      	negs	r3, r3
 80018e8:	e04f      	b.n	800198a <disp_write_char+0xc2>
 80018ea:	2300      	movs	r3, #0
 80018ec:	617b      	str	r3, [r7, #20]
 80018ee:	e042      	b.n	8001976 <disp_write_char+0xae>
 80018f0:	1dfb      	adds	r3, r7, #7
 80018f2:	781b      	ldrb	r3, [r3, #0]
 80018f4:	3b20      	subs	r3, #32
 80018f6:	001a      	movs	r2, r3
 80018f8:	0013      	movs	r3, r2
 80018fa:	009b      	lsls	r3, r3, #2
 80018fc:	189b      	adds	r3, r3, r2
 80018fe:	005b      	lsls	r3, r3, #1
 8001900:	001a      	movs	r2, r3
 8001902:	697b      	ldr	r3, [r7, #20]
 8001904:	18d2      	adds	r2, r2, r3
 8001906:	4b24      	ldr	r3, [pc, #144]	; (8001998 <disp_write_char+0xd0>)
 8001908:	0052      	lsls	r2, r2, #1
 800190a:	5ad3      	ldrh	r3, [r2, r3]
 800190c:	60fb      	str	r3, [r7, #12]
 800190e:	2300      	movs	r3, #0
 8001910:	613b      	str	r3, [r7, #16]
 8001912:	e02a      	b.n	800196a <disp_write_char+0xa2>
 8001914:	68fa      	ldr	r2, [r7, #12]
 8001916:	693b      	ldr	r3, [r7, #16]
 8001918:	409a      	lsls	r2, r3
 800191a:	2380      	movs	r3, #128	; 0x80
 800191c:	021b      	lsls	r3, r3, #8
 800191e:	4013      	ands	r3, r2
 8001920:	d010      	beq.n	8001944 <disp_write_char+0x7c>
 8001922:	4b1c      	ldr	r3, [pc, #112]	; (8001994 <disp_write_char+0xcc>)
 8001924:	781a      	ldrb	r2, [r3, #0]
 8001926:	693b      	ldr	r3, [r7, #16]
 8001928:	b2db      	uxtb	r3, r3
 800192a:	18d3      	adds	r3, r2, r3
 800192c:	b2d8      	uxtb	r0, r3
 800192e:	4b19      	ldr	r3, [pc, #100]	; (8001994 <disp_write_char+0xcc>)
 8001930:	785a      	ldrb	r2, [r3, #1]
 8001932:	697b      	ldr	r3, [r7, #20]
 8001934:	b2db      	uxtb	r3, r3
 8001936:	18d3      	adds	r3, r2, r3
 8001938:	b2db      	uxtb	r3, r3
 800193a:	2201      	movs	r2, #1
 800193c:	0019      	movs	r1, r3
 800193e:	f7ff ff61 	bl	8001804 <disp_draw_pix>
 8001942:	e00f      	b.n	8001964 <disp_write_char+0x9c>
 8001944:	4b13      	ldr	r3, [pc, #76]	; (8001994 <disp_write_char+0xcc>)
 8001946:	781a      	ldrb	r2, [r3, #0]
 8001948:	693b      	ldr	r3, [r7, #16]
 800194a:	b2db      	uxtb	r3, r3
 800194c:	18d3      	adds	r3, r2, r3
 800194e:	b2d8      	uxtb	r0, r3
 8001950:	4b10      	ldr	r3, [pc, #64]	; (8001994 <disp_write_char+0xcc>)
 8001952:	785a      	ldrb	r2, [r3, #1]
 8001954:	697b      	ldr	r3, [r7, #20]
 8001956:	b2db      	uxtb	r3, r3
 8001958:	18d3      	adds	r3, r2, r3
 800195a:	b2db      	uxtb	r3, r3
 800195c:	2200      	movs	r2, #0
 800195e:	0019      	movs	r1, r3
 8001960:	f7ff ff50 	bl	8001804 <disp_draw_pix>
 8001964:	693b      	ldr	r3, [r7, #16]
 8001966:	3301      	adds	r3, #1
 8001968:	613b      	str	r3, [r7, #16]
 800196a:	693b      	ldr	r3, [r7, #16]
 800196c:	2b06      	cmp	r3, #6
 800196e:	d9d1      	bls.n	8001914 <disp_write_char+0x4c>
 8001970:	697b      	ldr	r3, [r7, #20]
 8001972:	3301      	adds	r3, #1
 8001974:	617b      	str	r3, [r7, #20]
 8001976:	697b      	ldr	r3, [r7, #20]
 8001978:	2b09      	cmp	r3, #9
 800197a:	d9b9      	bls.n	80018f0 <disp_write_char+0x28>
 800197c:	4b05      	ldr	r3, [pc, #20]	; (8001994 <disp_write_char+0xcc>)
 800197e:	781b      	ldrb	r3, [r3, #0]
 8001980:	3307      	adds	r3, #7
 8001982:	b2da      	uxtb	r2, r3
 8001984:	4b03      	ldr	r3, [pc, #12]	; (8001994 <disp_write_char+0xcc>)
 8001986:	701a      	strb	r2, [r3, #0]
 8001988:	2300      	movs	r3, #0
 800198a:	0018      	movs	r0, r3
 800198c:	46bd      	mov	sp, r7
 800198e:	b006      	add	sp, #24
 8001990:	bd80      	pop	{r7, pc}
 8001992:	46c0      	nop			; (mov r8, r8)
 8001994:	200016fc 	.word	0x200016fc
 8001998:	080094bc 	.word	0x080094bc

0800199c <disp_set_cursor>:
 800199c:	b580      	push	{r7, lr}
 800199e:	b082      	sub	sp, #8
 80019a0:	af00      	add	r7, sp, #0
 80019a2:	0002      	movs	r2, r0
 80019a4:	1dfb      	adds	r3, r7, #7
 80019a6:	701a      	strb	r2, [r3, #0]
 80019a8:	1dbb      	adds	r3, r7, #6
 80019aa:	1c0a      	adds	r2, r1, #0
 80019ac:	701a      	strb	r2, [r3, #0]
 80019ae:	1dfb      	adds	r3, r7, #7
 80019b0:	781b      	ldrb	r3, [r3, #0]
 80019b2:	2b12      	cmp	r3, #18
 80019b4:	d815      	bhi.n	80019e2 <disp_set_cursor+0x46>
 80019b6:	1dbb      	adds	r3, r7, #6
 80019b8:	781b      	ldrb	r3, [r3, #0]
 80019ba:	2b0c      	cmp	r3, #12
 80019bc:	d811      	bhi.n	80019e2 <disp_set_cursor+0x46>
 80019be:	1dfb      	adds	r3, r7, #7
 80019c0:	781b      	ldrb	r3, [r3, #0]
 80019c2:	1c1a      	adds	r2, r3, #0
 80019c4:	00d2      	lsls	r2, r2, #3
 80019c6:	1ad3      	subs	r3, r2, r3
 80019c8:	b2da      	uxtb	r2, r3
 80019ca:	4b08      	ldr	r3, [pc, #32]	; (80019ec <disp_set_cursor+0x50>)
 80019cc:	701a      	strb	r2, [r3, #0]
 80019ce:	1dbb      	adds	r3, r7, #6
 80019d0:	781b      	ldrb	r3, [r3, #0]
 80019d2:	1c1a      	adds	r2, r3, #0
 80019d4:	0092      	lsls	r2, r2, #2
 80019d6:	18d3      	adds	r3, r2, r3
 80019d8:	18db      	adds	r3, r3, r3
 80019da:	b2da      	uxtb	r2, r3
 80019dc:	4b03      	ldr	r3, [pc, #12]	; (80019ec <disp_set_cursor+0x50>)
 80019de:	705a      	strb	r2, [r3, #1]
 80019e0:	e000      	b.n	80019e4 <disp_set_cursor+0x48>
 80019e2:	46c0      	nop			; (mov r8, r8)
 80019e4:	46bd      	mov	sp, r7
 80019e6:	b002      	add	sp, #8
 80019e8:	bd80      	pop	{r7, pc}
 80019ea:	46c0      	nop			; (mov r8, r8)
 80019ec:	200016fc 	.word	0x200016fc

080019f0 <disp_init>:
 80019f0:	b580      	push	{r7, lr}
 80019f2:	af00      	add	r7, sp, #0
 80019f4:	f7ff fdbe 	bl	8001574 <disp_hw_config>
 80019f8:	f7ff fe30 	bl	800165c <disp_reset>
 80019fc:	20ae      	movs	r0, #174	; 0xae
 80019fe:	f7ff fe53 	bl	80016a8 <disp_send_cmd>
 8001a02:	2020      	movs	r0, #32
 8001a04:	f7ff fe50 	bl	80016a8 <disp_send_cmd>
 8001a08:	2010      	movs	r0, #16
 8001a0a:	f7ff fe4d 	bl	80016a8 <disp_send_cmd>
 8001a0e:	20c8      	movs	r0, #200	; 0xc8
 8001a10:	f7ff fe4a 	bl	80016a8 <disp_send_cmd>
 8001a14:	2040      	movs	r0, #64	; 0x40
 8001a16:	f7ff fe47 	bl	80016a8 <disp_send_cmd>
 8001a1a:	2081      	movs	r0, #129	; 0x81
 8001a1c:	f7ff fe44 	bl	80016a8 <disp_send_cmd>
 8001a20:	20ff      	movs	r0, #255	; 0xff
 8001a22:	f7ff fe41 	bl	80016a8 <disp_send_cmd>
 8001a26:	20a1      	movs	r0, #161	; 0xa1
 8001a28:	f7ff fe3e 	bl	80016a8 <disp_send_cmd>
 8001a2c:	20a6      	movs	r0, #166	; 0xa6
 8001a2e:	f7ff fe3b 	bl	80016a8 <disp_send_cmd>
 8001a32:	20a8      	movs	r0, #168	; 0xa8
 8001a34:	f7ff fe38 	bl	80016a8 <disp_send_cmd>
 8001a38:	203f      	movs	r0, #63	; 0x3f
 8001a3a:	f7ff fe35 	bl	80016a8 <disp_send_cmd>
 8001a3e:	20a4      	movs	r0, #164	; 0xa4
 8001a40:	f7ff fe32 	bl	80016a8 <disp_send_cmd>
 8001a44:	20d3      	movs	r0, #211	; 0xd3
 8001a46:	f7ff fe2f 	bl	80016a8 <disp_send_cmd>
 8001a4a:	2000      	movs	r0, #0
 8001a4c:	f7ff fe2c 	bl	80016a8 <disp_send_cmd>
 8001a50:	20d5      	movs	r0, #213	; 0xd5
 8001a52:	f7ff fe29 	bl	80016a8 <disp_send_cmd>
 8001a56:	20f0      	movs	r0, #240	; 0xf0
 8001a58:	f7ff fe26 	bl	80016a8 <disp_send_cmd>
 8001a5c:	20da      	movs	r0, #218	; 0xda
 8001a5e:	f7ff fe23 	bl	80016a8 <disp_send_cmd>
 8001a62:	2012      	movs	r0, #18
 8001a64:	f7ff fe20 	bl	80016a8 <disp_send_cmd>
 8001a68:	208d      	movs	r0, #141	; 0x8d
 8001a6a:	f7ff fe1d 	bl	80016a8 <disp_send_cmd>
 8001a6e:	2014      	movs	r0, #20
 8001a70:	f7ff fe1a 	bl	80016a8 <disp_send_cmd>
 8001a74:	20af      	movs	r0, #175	; 0xaf
 8001a76:	f7ff fe17 	bl	80016a8 <disp_send_cmd>
 8001a7a:	2000      	movs	r0, #0
 8001a7c:	f7ff fe72 	bl	8001764 <disp_fill>
 8001a80:	f7ff fe84 	bl	800178c <disp_update>
 8001a84:	4b05      	ldr	r3, [pc, #20]	; (8001a9c <disp_init+0xac>)
 8001a86:	2200      	movs	r2, #0
 8001a88:	701a      	strb	r2, [r3, #0]
 8001a8a:	4b04      	ldr	r3, [pc, #16]	; (8001a9c <disp_init+0xac>)
 8001a8c:	2200      	movs	r2, #0
 8001a8e:	705a      	strb	r2, [r3, #1]
 8001a90:	4b03      	ldr	r3, [pc, #12]	; (8001aa0 <disp_init+0xb0>)
 8001a92:	4a04      	ldr	r2, [pc, #16]	; (8001aa4 <disp_init+0xb4>)
 8001a94:	601a      	str	r2, [r3, #0]
 8001a96:	46c0      	nop			; (mov r8, r8)
 8001a98:	46bd      	mov	sp, r7
 8001a9a:	bd80      	pop	{r7, pc}
 8001a9c:	200016fc 	.word	0x200016fc
 8001aa0:	20001924 	.word	0x20001924
 8001aa4:	080018c9 	.word	0x080018c9

08001aa8 <LL_GPIO_SetPinMode>:
 8001aa8:	b580      	push	{r7, lr}
 8001aaa:	b084      	sub	sp, #16
 8001aac:	af00      	add	r7, sp, #0
 8001aae:	60f8      	str	r0, [r7, #12]
 8001ab0:	60b9      	str	r1, [r7, #8]
 8001ab2:	607a      	str	r2, [r7, #4]
 8001ab4:	68fb      	ldr	r3, [r7, #12]
 8001ab6:	6819      	ldr	r1, [r3, #0]
 8001ab8:	68bb      	ldr	r3, [r7, #8]
 8001aba:	435b      	muls	r3, r3
 8001abc:	001a      	movs	r2, r3
 8001abe:	0013      	movs	r3, r2
 8001ac0:	005b      	lsls	r3, r3, #1
 8001ac2:	189b      	adds	r3, r3, r2
 8001ac4:	43db      	mvns	r3, r3
 8001ac6:	400b      	ands	r3, r1
 8001ac8:	001a      	movs	r2, r3
 8001aca:	68bb      	ldr	r3, [r7, #8]
 8001acc:	435b      	muls	r3, r3
 8001ace:	6879      	ldr	r1, [r7, #4]
 8001ad0:	434b      	muls	r3, r1
 8001ad2:	431a      	orrs	r2, r3
 8001ad4:	68fb      	ldr	r3, [r7, #12]
 8001ad6:	601a      	str	r2, [r3, #0]
 8001ad8:	46c0      	nop			; (mov r8, r8)
 8001ada:	46bd      	mov	sp, r7
 8001adc:	b004      	add	sp, #16
 8001ade:	bd80      	pop	{r7, pc}

08001ae0 <LL_GPIO_SetPinOutputType>:
 8001ae0:	b580      	push	{r7, lr}
 8001ae2:	b084      	sub	sp, #16
 8001ae4:	af00      	add	r7, sp, #0
 8001ae6:	60f8      	str	r0, [r7, #12]
 8001ae8:	60b9      	str	r1, [r7, #8]
 8001aea:	607a      	str	r2, [r7, #4]
 8001aec:	68fb      	ldr	r3, [r7, #12]
 8001aee:	685b      	ldr	r3, [r3, #4]
 8001af0:	68ba      	ldr	r2, [r7, #8]
 8001af2:	43d2      	mvns	r2, r2
 8001af4:	401a      	ands	r2, r3
 8001af6:	68bb      	ldr	r3, [r7, #8]
 8001af8:	6879      	ldr	r1, [r7, #4]
 8001afa:	434b      	muls	r3, r1
 8001afc:	431a      	orrs	r2, r3
 8001afe:	68fb      	ldr	r3, [r7, #12]
 8001b00:	605a      	str	r2, [r3, #4]
 8001b02:	46c0      	nop			; (mov r8, r8)
 8001b04:	46bd      	mov	sp, r7
 8001b06:	b004      	add	sp, #16
 8001b08:	bd80      	pop	{r7, pc}

08001b0a <LL_GPIO_SetPinSpeed>:
 8001b0a:	b580      	push	{r7, lr}
 8001b0c:	b084      	sub	sp, #16
 8001b0e:	af00      	add	r7, sp, #0
 8001b10:	60f8      	str	r0, [r7, #12]
 8001b12:	60b9      	str	r1, [r7, #8]
 8001b14:	607a      	str	r2, [r7, #4]
 8001b16:	68fb      	ldr	r3, [r7, #12]
 8001b18:	6899      	ldr	r1, [r3, #8]
 8001b1a:	68bb      	ldr	r3, [r7, #8]
 8001b1c:	435b      	muls	r3, r3
 8001b1e:	001a      	movs	r2, r3
 8001b20:	0013      	movs	r3, r2
 8001b22:	005b      	lsls	r3, r3, #1
 8001b24:	189b      	adds	r3, r3, r2
 8001b26:	43db      	mvns	r3, r3
 8001b28:	400b      	ands	r3, r1
 8001b2a:	001a      	movs	r2, r3
 8001b2c:	68bb      	ldr	r3, [r7, #8]
 8001b2e:	435b      	muls	r3, r3
 8001b30:	6879      	ldr	r1, [r7, #4]
 8001b32:	434b      	muls	r3, r1
 8001b34:	431a      	orrs	r2, r3
 8001b36:	68fb      	ldr	r3, [r7, #12]
 8001b38:	609a      	str	r2, [r3, #8]
 8001b3a:	46c0      	nop			; (mov r8, r8)
 8001b3c:	46bd      	mov	sp, r7
 8001b3e:	b004      	add	sp, #16
 8001b40:	bd80      	pop	{r7, pc}

08001b42 <LL_GPIO_SetPinPull>:
 8001b42:	b580      	push	{r7, lr}
 8001b44:	b084      	sub	sp, #16
 8001b46:	af00      	add	r7, sp, #0
 8001b48:	60f8      	str	r0, [r7, #12]
 8001b4a:	60b9      	str	r1, [r7, #8]
 8001b4c:	607a      	str	r2, [r7, #4]
 8001b4e:	68fb      	ldr	r3, [r7, #12]
 8001b50:	68d9      	ldr	r1, [r3, #12]
 8001b52:	68bb      	ldr	r3, [r7, #8]
 8001b54:	435b      	muls	r3, r3
 8001b56:	001a      	movs	r2, r3
 8001b58:	0013      	movs	r3, r2
 8001b5a:	005b      	lsls	r3, r3, #1
 8001b5c:	189b      	adds	r3, r3, r2
 8001b5e:	43db      	mvns	r3, r3
 8001b60:	400b      	ands	r3, r1
 8001b62:	001a      	movs	r2, r3
 8001b64:	68bb      	ldr	r3, [r7, #8]
 8001b66:	435b      	muls	r3, r3
 8001b68:	6879      	ldr	r1, [r7, #4]
 8001b6a:	434b      	muls	r3, r1
 8001b6c:	431a      	orrs	r2, r3
 8001b6e:	68fb      	ldr	r3, [r7, #12]
 8001b70:	60da      	str	r2, [r3, #12]
 8001b72:	46c0      	nop			; (mov r8, r8)
 8001b74:	46bd      	mov	sp, r7
 8001b76:	b004      	add	sp, #16
 8001b78:	bd80      	pop	{r7, pc}

08001b7a <LL_GPIO_SetAFPin_8_15>:
 8001b7a:	b580      	push	{r7, lr}
 8001b7c:	b084      	sub	sp, #16
 8001b7e:	af00      	add	r7, sp, #0
 8001b80:	60f8      	str	r0, [r7, #12]
 8001b82:	60b9      	str	r1, [r7, #8]
 8001b84:	607a      	str	r2, [r7, #4]
 8001b86:	68fb      	ldr	r3, [r7, #12]
 8001b88:	6a59      	ldr	r1, [r3, #36]	; 0x24
 8001b8a:	68bb      	ldr	r3, [r7, #8]
 8001b8c:	0a1b      	lsrs	r3, r3, #8
 8001b8e:	68ba      	ldr	r2, [r7, #8]
 8001b90:	0a12      	lsrs	r2, r2, #8
 8001b92:	4353      	muls	r3, r2
 8001b94:	68ba      	ldr	r2, [r7, #8]
 8001b96:	0a12      	lsrs	r2, r2, #8
 8001b98:	4353      	muls	r3, r2
 8001b9a:	68ba      	ldr	r2, [r7, #8]
 8001b9c:	0a12      	lsrs	r2, r2, #8
 8001b9e:	435a      	muls	r2, r3
 8001ba0:	0013      	movs	r3, r2
 8001ba2:	011b      	lsls	r3, r3, #4
 8001ba4:	1a9b      	subs	r3, r3, r2
 8001ba6:	43db      	mvns	r3, r3
 8001ba8:	400b      	ands	r3, r1
 8001baa:	001a      	movs	r2, r3
 8001bac:	68bb      	ldr	r3, [r7, #8]
 8001bae:	0a1b      	lsrs	r3, r3, #8
 8001bb0:	68b9      	ldr	r1, [r7, #8]
 8001bb2:	0a09      	lsrs	r1, r1, #8
 8001bb4:	434b      	muls	r3, r1
 8001bb6:	68b9      	ldr	r1, [r7, #8]
 8001bb8:	0a09      	lsrs	r1, r1, #8
 8001bba:	434b      	muls	r3, r1
 8001bbc:	68b9      	ldr	r1, [r7, #8]
 8001bbe:	0a09      	lsrs	r1, r1, #8
 8001bc0:	434b      	muls	r3, r1
 8001bc2:	6879      	ldr	r1, [r7, #4]
 8001bc4:	434b      	muls	r3, r1
 8001bc6:	431a      	orrs	r2, r3
 8001bc8:	68fb      	ldr	r3, [r7, #12]
 8001bca:	625a      	str	r2, [r3, #36]	; 0x24
 8001bcc:	46c0      	nop			; (mov r8, r8)
 8001bce:	46bd      	mov	sp, r7
 8001bd0:	b004      	add	sp, #16
 8001bd2:	bd80      	pop	{r7, pc}

08001bd4 <LL_GPIO_SetOutputPin>:
 8001bd4:	b580      	push	{r7, lr}
 8001bd6:	b082      	sub	sp, #8
 8001bd8:	af00      	add	r7, sp, #0
 8001bda:	6078      	str	r0, [r7, #4]
 8001bdc:	6039      	str	r1, [r7, #0]
 8001bde:	687b      	ldr	r3, [r7, #4]
 8001be0:	683a      	ldr	r2, [r7, #0]
 8001be2:	619a      	str	r2, [r3, #24]
 8001be4:	46c0      	nop			; (mov r8, r8)
 8001be6:	46bd      	mov	sp, r7
 8001be8:	b002      	add	sp, #8
 8001bea:	bd80      	pop	{r7, pc}

08001bec <LL_USART_Enable>:
 8001bec:	b580      	push	{r7, lr}
 8001bee:	b082      	sub	sp, #8
 8001bf0:	af00      	add	r7, sp, #0
 8001bf2:	6078      	str	r0, [r7, #4]
 8001bf4:	687b      	ldr	r3, [r7, #4]
 8001bf6:	681b      	ldr	r3, [r3, #0]
 8001bf8:	2201      	movs	r2, #1
 8001bfa:	431a      	orrs	r2, r3
 8001bfc:	687b      	ldr	r3, [r7, #4]
 8001bfe:	601a      	str	r2, [r3, #0]
 8001c00:	46c0      	nop			; (mov r8, r8)
 8001c02:	46bd      	mov	sp, r7
 8001c04:	b002      	add	sp, #8
 8001c06:	bd80      	pop	{r7, pc}

08001c08 <LL_USART_EnableDirectionRx>:
 8001c08:	b580      	push	{r7, lr}
 8001c0a:	b082      	sub	sp, #8
 8001c0c:	af00      	add	r7, sp, #0
 8001c0e:	6078      	str	r0, [r7, #4]
 8001c10:	687b      	ldr	r3, [r7, #4]
 8001c12:	681b      	ldr	r3, [r3, #0]
 8001c14:	2204      	movs	r2, #4
 8001c16:	431a      	orrs	r2, r3
 8001c18:	687b      	ldr	r3, [r7, #4]
 8001c1a:	601a      	str	r2, [r3, #0]
 8001c1c:	46c0      	nop			; (mov r8, r8)
 8001c1e:	46bd      	mov	sp, r7
 8001c20:	b002      	add	sp, #8
 8001c22:	bd80      	pop	{r7, pc}

08001c24 <LL_USART_DisableDirectionRx>:
 8001c24:	b580      	push	{r7, lr}
 8001c26:	b082      	sub	sp, #8
 8001c28:	af00      	add	r7, sp, #0
 8001c2a:	6078      	str	r0, [r7, #4]
 8001c2c:	687b      	ldr	r3, [r7, #4]
 8001c2e:	681b      	ldr	r3, [r3, #0]
 8001c30:	2204      	movs	r2, #4
 8001c32:	4393      	bics	r3, r2
 8001c34:	001a      	movs	r2, r3
 8001c36:	687b      	ldr	r3, [r7, #4]
 8001c38:	601a      	str	r2, [r3, #0]
 8001c3a:	46c0      	nop			; (mov r8, r8)
 8001c3c:	46bd      	mov	sp, r7
 8001c3e:	b002      	add	sp, #8
 8001c40:	bd80      	pop	{r7, pc}

08001c42 <LL_USART_EnableDirectionTx>:
 8001c42:	b580      	push	{r7, lr}
 8001c44:	b082      	sub	sp, #8
 8001c46:	af00      	add	r7, sp, #0
 8001c48:	6078      	str	r0, [r7, #4]
 8001c4a:	687b      	ldr	r3, [r7, #4]
 8001c4c:	681b      	ldr	r3, [r3, #0]
 8001c4e:	2208      	movs	r2, #8
 8001c50:	431a      	orrs	r2, r3
 8001c52:	687b      	ldr	r3, [r7, #4]
 8001c54:	601a      	str	r2, [r3, #0]
 8001c56:	46c0      	nop			; (mov r8, r8)
 8001c58:	46bd      	mov	sp, r7
 8001c5a:	b002      	add	sp, #8
 8001c5c:	bd80      	pop	{r7, pc}

08001c5e <LL_USART_DisableDirectionTx>:
 8001c5e:	b580      	push	{r7, lr}
 8001c60:	b082      	sub	sp, #8
 8001c62:	af00      	add	r7, sp, #0
 8001c64:	6078      	str	r0, [r7, #4]
 8001c66:	687b      	ldr	r3, [r7, #4]
 8001c68:	681b      	ldr	r3, [r3, #0]
 8001c6a:	2208      	movs	r2, #8
 8001c6c:	4393      	bics	r3, r2
 8001c6e:	001a      	movs	r2, r3
 8001c70:	687b      	ldr	r3, [r7, #4]
 8001c72:	601a      	str	r2, [r3, #0]
 8001c74:	46c0      	nop			; (mov r8, r8)
 8001c76:	46bd      	mov	sp, r7
 8001c78:	b002      	add	sp, #8
 8001c7a:	bd80      	pop	{r7, pc}

08001c7c <LL_USART_SetParity>:
 8001c7c:	b580      	push	{r7, lr}
 8001c7e:	b082      	sub	sp, #8
 8001c80:	af00      	add	r7, sp, #0
 8001c82:	6078      	str	r0, [r7, #4]
 8001c84:	6039      	str	r1, [r7, #0]
 8001c86:	687b      	ldr	r3, [r7, #4]
 8001c88:	681b      	ldr	r3, [r3, #0]
 8001c8a:	4a05      	ldr	r2, [pc, #20]	; (8001ca0 <LL_USART_SetParity+0x24>)
 8001c8c:	401a      	ands	r2, r3
 8001c8e:	683b      	ldr	r3, [r7, #0]
 8001c90:	431a      	orrs	r2, r3
 8001c92:	687b      	ldr	r3, [r7, #4]
 8001c94:	601a      	str	r2, [r3, #0]
 8001c96:	46c0      	nop			; (mov r8, r8)
 8001c98:	46bd      	mov	sp, r7
 8001c9a:	b002      	add	sp, #8
 8001c9c:	bd80      	pop	{r7, pc}
 8001c9e:	46c0      	nop			; (mov r8, r8)
 8001ca0:	fffff9ff 	.word	0xfffff9ff

08001ca4 <LL_USART_SetDataWidth>:
 8001ca4:	b580      	push	{r7, lr}
 8001ca6:	b082      	sub	sp, #8
 8001ca8:	af00      	add	r7, sp, #0
 8001caa:	6078      	str	r0, [r7, #4]
 8001cac:	6039      	str	r1, [r7, #0]
 8001cae:	687b      	ldr	r3, [r7, #4]
 8001cb0:	681b      	ldr	r3, [r3, #0]
 8001cb2:	4a05      	ldr	r2, [pc, #20]	; (8001cc8 <LL_USART_SetDataWidth+0x24>)
 8001cb4:	401a      	ands	r2, r3
 8001cb6:	683b      	ldr	r3, [r7, #0]
 8001cb8:	431a      	orrs	r2, r3
 8001cba:	687b      	ldr	r3, [r7, #4]
 8001cbc:	601a      	str	r2, [r3, #0]
 8001cbe:	46c0      	nop			; (mov r8, r8)
 8001cc0:	46bd      	mov	sp, r7
 8001cc2:	b002      	add	sp, #8
 8001cc4:	bd80      	pop	{r7, pc}
 8001cc6:	46c0      	nop			; (mov r8, r8)
 8001cc8:	ffffefff 	.word	0xffffefff

08001ccc <LL_USART_SetStopBitsLength>:
 8001ccc:	b580      	push	{r7, lr}
 8001cce:	b082      	sub	sp, #8
 8001cd0:	af00      	add	r7, sp, #0
 8001cd2:	6078      	str	r0, [r7, #4]
 8001cd4:	6039      	str	r1, [r7, #0]
 8001cd6:	687b      	ldr	r3, [r7, #4]
 8001cd8:	685b      	ldr	r3, [r3, #4]
 8001cda:	4a05      	ldr	r2, [pc, #20]	; (8001cf0 <LL_USART_SetStopBitsLength+0x24>)
 8001cdc:	401a      	ands	r2, r3
 8001cde:	683b      	ldr	r3, [r7, #0]
 8001ce0:	431a      	orrs	r2, r3
 8001ce2:	687b      	ldr	r3, [r7, #4]
 8001ce4:	605a      	str	r2, [r3, #4]
 8001ce6:	46c0      	nop			; (mov r8, r8)
 8001ce8:	46bd      	mov	sp, r7
 8001cea:	b002      	add	sp, #8
 8001cec:	bd80      	pop	{r7, pc}
 8001cee:	46c0      	nop			; (mov r8, r8)
 8001cf0:	ffffcfff 	.word	0xffffcfff

08001cf4 <LL_USART_SetBaudRate>:
 8001cf4:	b5b0      	push	{r4, r5, r7, lr}
 8001cf6:	b084      	sub	sp, #16
 8001cf8:	af00      	add	r7, sp, #0
 8001cfa:	60f8      	str	r0, [r7, #12]
 8001cfc:	60b9      	str	r1, [r7, #8]
 8001cfe:	607a      	str	r2, [r7, #4]
 8001d00:	603b      	str	r3, [r7, #0]
 8001d02:	2500      	movs	r5, #0
 8001d04:	2400      	movs	r4, #0
 8001d06:	687a      	ldr	r2, [r7, #4]
 8001d08:	2380      	movs	r3, #128	; 0x80
 8001d0a:	021b      	lsls	r3, r3, #8
 8001d0c:	429a      	cmp	r2, r3
 8001d0e:	d117      	bne.n	8001d40 <LL_USART_SetBaudRate+0x4c>
 8001d10:	68bb      	ldr	r3, [r7, #8]
 8001d12:	005a      	lsls	r2, r3, #1
 8001d14:	683b      	ldr	r3, [r7, #0]
 8001d16:	085b      	lsrs	r3, r3, #1
 8001d18:	18d3      	adds	r3, r2, r3
 8001d1a:	6839      	ldr	r1, [r7, #0]
 8001d1c:	0018      	movs	r0, r3
 8001d1e:	f7fe f9f3 	bl	8000108 <__udivsi3>
 8001d22:	0003      	movs	r3, r0
 8001d24:	b29b      	uxth	r3, r3
 8001d26:	001d      	movs	r5, r3
 8001d28:	4b0e      	ldr	r3, [pc, #56]	; (8001d64 <LL_USART_SetBaudRate+0x70>)
 8001d2a:	402b      	ands	r3, r5
 8001d2c:	001c      	movs	r4, r3
 8001d2e:	086b      	lsrs	r3, r5, #1
 8001d30:	b29b      	uxth	r3, r3
 8001d32:	001a      	movs	r2, r3
 8001d34:	2307      	movs	r3, #7
 8001d36:	4013      	ands	r3, r2
 8001d38:	431c      	orrs	r4, r3
 8001d3a:	68fb      	ldr	r3, [r7, #12]
 8001d3c:	60dc      	str	r4, [r3, #12]
 8001d3e:	e00c      	b.n	8001d5a <LL_USART_SetBaudRate+0x66>
 8001d40:	683b      	ldr	r3, [r7, #0]
 8001d42:	085a      	lsrs	r2, r3, #1
 8001d44:	68bb      	ldr	r3, [r7, #8]
 8001d46:	18d3      	adds	r3, r2, r3
 8001d48:	6839      	ldr	r1, [r7, #0]
 8001d4a:	0018      	movs	r0, r3
 8001d4c:	f7fe f9dc 	bl	8000108 <__udivsi3>
 8001d50:	0003      	movs	r3, r0
 8001d52:	b29b      	uxth	r3, r3
 8001d54:	001a      	movs	r2, r3
 8001d56:	68fb      	ldr	r3, [r7, #12]
 8001d58:	60da      	str	r2, [r3, #12]
 8001d5a:	46c0      	nop			; (mov r8, r8)
 8001d5c:	46bd      	mov	sp, r7
 8001d5e:	b004      	add	sp, #16
 8001d60:	bdb0      	pop	{r4, r5, r7, pc}
 8001d62:	46c0      	nop			; (mov r8, r8)
 8001d64:	0000fff0 	.word	0x0000fff0

08001d68 <LL_USART_EnableHalfDuplex>:
 8001d68:	b580      	push	{r7, lr}
 8001d6a:	b082      	sub	sp, #8
 8001d6c:	af00      	add	r7, sp, #0
 8001d6e:	6078      	str	r0, [r7, #4]
 8001d70:	687b      	ldr	r3, [r7, #4]
 8001d72:	689b      	ldr	r3, [r3, #8]
 8001d74:	2208      	movs	r2, #8
 8001d76:	431a      	orrs	r2, r3
 8001d78:	687b      	ldr	r3, [r7, #4]
 8001d7a:	609a      	str	r2, [r3, #8]
 8001d7c:	46c0      	nop			; (mov r8, r8)
 8001d7e:	46bd      	mov	sp, r7
 8001d80:	b002      	add	sp, #8
 8001d82:	bd80      	pop	{r7, pc}

08001d84 <LL_USART_IsActiveFlag_TC>:
 8001d84:	b580      	push	{r7, lr}
 8001d86:	b082      	sub	sp, #8
 8001d88:	af00      	add	r7, sp, #0
 8001d8a:	6078      	str	r0, [r7, #4]
 8001d8c:	687b      	ldr	r3, [r7, #4]
 8001d8e:	69db      	ldr	r3, [r3, #28]
 8001d90:	2240      	movs	r2, #64	; 0x40
 8001d92:	4013      	ands	r3, r2
 8001d94:	3b40      	subs	r3, #64	; 0x40
 8001d96:	425a      	negs	r2, r3
 8001d98:	4153      	adcs	r3, r2
 8001d9a:	b2db      	uxtb	r3, r3
 8001d9c:	0018      	movs	r0, r3
 8001d9e:	46bd      	mov	sp, r7
 8001da0:	b002      	add	sp, #8
 8001da2:	bd80      	pop	{r7, pc}

08001da4 <LL_USART_IsActiveFlag_TXE>:
 8001da4:	b580      	push	{r7, lr}
 8001da6:	b082      	sub	sp, #8
 8001da8:	af00      	add	r7, sp, #0
 8001daa:	6078      	str	r0, [r7, #4]
 8001dac:	687b      	ldr	r3, [r7, #4]
 8001dae:	69db      	ldr	r3, [r3, #28]
 8001db0:	2280      	movs	r2, #128	; 0x80
 8001db2:	4013      	ands	r3, r2
 8001db4:	3b80      	subs	r3, #128	; 0x80
 8001db6:	425a      	negs	r2, r3
 8001db8:	4153      	adcs	r3, r2
 8001dba:	b2db      	uxtb	r3, r3
 8001dbc:	0018      	movs	r0, r3
 8001dbe:	46bd      	mov	sp, r7
 8001dc0:	b002      	add	sp, #8
 8001dc2:	bd80      	pop	{r7, pc}

08001dc4 <LL_USART_ClearFlag_TC>:
 8001dc4:	b580      	push	{r7, lr}
 8001dc6:	b082      	sub	sp, #8
 8001dc8:	af00      	add	r7, sp, #0
 8001dca:	6078      	str	r0, [r7, #4]
 8001dcc:	687b      	ldr	r3, [r7, #4]
 8001dce:	2240      	movs	r2, #64	; 0x40
 8001dd0:	621a      	str	r2, [r3, #32]
 8001dd2:	46c0      	nop			; (mov r8, r8)
 8001dd4:	46bd      	mov	sp, r7
 8001dd6:	b002      	add	sp, #8
 8001dd8:	bd80      	pop	{r7, pc}

08001dda <LL_USART_TransmitData8>:
 8001dda:	b580      	push	{r7, lr}
 8001ddc:	b082      	sub	sp, #8
 8001dde:	af00      	add	r7, sp, #0
 8001de0:	6078      	str	r0, [r7, #4]
 8001de2:	000a      	movs	r2, r1
 8001de4:	1cfb      	adds	r3, r7, #3
 8001de6:	701a      	strb	r2, [r3, #0]
 8001de8:	1cfb      	adds	r3, r7, #3
 8001dea:	781b      	ldrb	r3, [r3, #0]
 8001dec:	b29a      	uxth	r2, r3
 8001dee:	687b      	ldr	r3, [r7, #4]
 8001df0:	851a      	strh	r2, [r3, #40]	; 0x28
 8001df2:	46c0      	nop			; (mov r8, r8)
 8001df4:	46bd      	mov	sp, r7
 8001df6:	b002      	add	sp, #8
 8001df8:	bd80      	pop	{r7, pc}
	...

08001dfc <LL_AHB1_GRP1_EnableClock>:
 8001dfc:	b580      	push	{r7, lr}
 8001dfe:	b084      	sub	sp, #16
 8001e00:	af00      	add	r7, sp, #0
 8001e02:	6078      	str	r0, [r7, #4]
 8001e04:	4b07      	ldr	r3, [pc, #28]	; (8001e24 <LL_AHB1_GRP1_EnableClock+0x28>)
 8001e06:	6959      	ldr	r1, [r3, #20]
 8001e08:	4b06      	ldr	r3, [pc, #24]	; (8001e24 <LL_AHB1_GRP1_EnableClock+0x28>)
 8001e0a:	687a      	ldr	r2, [r7, #4]
 8001e0c:	430a      	orrs	r2, r1
 8001e0e:	615a      	str	r2, [r3, #20]
 8001e10:	4b04      	ldr	r3, [pc, #16]	; (8001e24 <LL_AHB1_GRP1_EnableClock+0x28>)
 8001e12:	695b      	ldr	r3, [r3, #20]
 8001e14:	687a      	ldr	r2, [r7, #4]
 8001e16:	4013      	ands	r3, r2
 8001e18:	60fb      	str	r3, [r7, #12]
 8001e1a:	68fb      	ldr	r3, [r7, #12]
 8001e1c:	46c0      	nop			; (mov r8, r8)
 8001e1e:	46bd      	mov	sp, r7
 8001e20:	b004      	add	sp, #16
 8001e22:	bd80      	pop	{r7, pc}
 8001e24:	40021000 	.word	0x40021000

08001e28 <LL_APB1_GRP2_EnableClock>:
 8001e28:	b580      	push	{r7, lr}
 8001e2a:	b084      	sub	sp, #16
 8001e2c:	af00      	add	r7, sp, #0
 8001e2e:	6078      	str	r0, [r7, #4]
 8001e30:	4b07      	ldr	r3, [pc, #28]	; (8001e50 <LL_APB1_GRP2_EnableClock+0x28>)
 8001e32:	6999      	ldr	r1, [r3, #24]
 8001e34:	4b06      	ldr	r3, [pc, #24]	; (8001e50 <LL_APB1_GRP2_EnableClock+0x28>)
 8001e36:	687a      	ldr	r2, [r7, #4]
 8001e38:	430a      	orrs	r2, r1
 8001e3a:	619a      	str	r2, [r3, #24]
 8001e3c:	4b04      	ldr	r3, [pc, #16]	; (8001e50 <LL_APB1_GRP2_EnableClock+0x28>)
 8001e3e:	699b      	ldr	r3, [r3, #24]
 8001e40:	687a      	ldr	r2, [r7, #4]
 8001e42:	4013      	ands	r3, r2
 8001e44:	60fb      	str	r3, [r7, #12]
 8001e46:	68fb      	ldr	r3, [r7, #12]
 8001e48:	46c0      	nop			; (mov r8, r8)
 8001e4a:	46bd      	mov	sp, r7
 8001e4c:	b004      	add	sp, #16
 8001e4e:	bd80      	pop	{r7, pc}
 8001e50:	40021000 	.word	0x40021000

08001e54 <dyn_send_cmd>:
 8001e54:	b580      	push	{r7, lr}
 8001e56:	b084      	sub	sp, #16
 8001e58:	af00      	add	r7, sp, #0
 8001e5a:	6078      	str	r0, [r7, #4]
 8001e5c:	6039      	str	r1, [r7, #0]
 8001e5e:	2300      	movs	r3, #0
 8001e60:	60fb      	str	r3, [r7, #12]
 8001e62:	b672      	cpsid	i
 8001e64:	46c0      	nop			; (mov r8, r8)
 8001e66:	4b1d      	ldr	r3, [pc, #116]	; (8001edc <dyn_send_cmd+0x88>)
 8001e68:	0018      	movs	r0, r3
 8001e6a:	f7ff fedb 	bl	8001c24 <LL_USART_DisableDirectionRx>
 8001e6e:	4b1b      	ldr	r3, [pc, #108]	; (8001edc <dyn_send_cmd+0x88>)
 8001e70:	0018      	movs	r0, r3
 8001e72:	f7ff fee6 	bl	8001c42 <LL_USART_EnableDirectionTx>
 8001e76:	4b19      	ldr	r3, [pc, #100]	; (8001edc <dyn_send_cmd+0x88>)
 8001e78:	0018      	movs	r0, r3
 8001e7a:	f7ff ffa3 	bl	8001dc4 <LL_USART_ClearFlag_TC>
 8001e7e:	e012      	b.n	8001ea6 <dyn_send_cmd+0x52>
 8001e80:	46c0      	nop			; (mov r8, r8)
 8001e82:	4b16      	ldr	r3, [pc, #88]	; (8001edc <dyn_send_cmd+0x88>)
 8001e84:	0018      	movs	r0, r3
 8001e86:	f7ff ff8d 	bl	8001da4 <LL_USART_IsActiveFlag_TXE>
 8001e8a:	1e03      	subs	r3, r0, #0
 8001e8c:	d0f9      	beq.n	8001e82 <dyn_send_cmd+0x2e>
 8001e8e:	68fb      	ldr	r3, [r7, #12]
 8001e90:	1c5a      	adds	r2, r3, #1
 8001e92:	60fa      	str	r2, [r7, #12]
 8001e94:	001a      	movs	r2, r3
 8001e96:	687b      	ldr	r3, [r7, #4]
 8001e98:	189b      	adds	r3, r3, r2
 8001e9a:	781b      	ldrb	r3, [r3, #0]
 8001e9c:	4a0f      	ldr	r2, [pc, #60]	; (8001edc <dyn_send_cmd+0x88>)
 8001e9e:	0019      	movs	r1, r3
 8001ea0:	0010      	movs	r0, r2
 8001ea2:	f7ff ff9a 	bl	8001dda <LL_USART_TransmitData8>
 8001ea6:	683b      	ldr	r3, [r7, #0]
 8001ea8:	1e5a      	subs	r2, r3, #1
 8001eaa:	603a      	str	r2, [r7, #0]
 8001eac:	2b00      	cmp	r3, #0
 8001eae:	d1e7      	bne.n	8001e80 <dyn_send_cmd+0x2c>
 8001eb0:	46c0      	nop			; (mov r8, r8)
 8001eb2:	4b0a      	ldr	r3, [pc, #40]	; (8001edc <dyn_send_cmd+0x88>)
 8001eb4:	0018      	movs	r0, r3
 8001eb6:	f7ff ff65 	bl	8001d84 <LL_USART_IsActiveFlag_TC>
 8001eba:	1e03      	subs	r3, r0, #0
 8001ebc:	d0f9      	beq.n	8001eb2 <dyn_send_cmd+0x5e>
 8001ebe:	4b07      	ldr	r3, [pc, #28]	; (8001edc <dyn_send_cmd+0x88>)
 8001ec0:	0018      	movs	r0, r3
 8001ec2:	f7ff fecc 	bl	8001c5e <LL_USART_DisableDirectionTx>
 8001ec6:	4b05      	ldr	r3, [pc, #20]	; (8001edc <dyn_send_cmd+0x88>)
 8001ec8:	0018      	movs	r0, r3
 8001eca:	f7ff fe9d 	bl	8001c08 <LL_USART_EnableDirectionRx>
 8001ece:	b662      	cpsie	i
 8001ed0:	46c0      	nop			; (mov r8, r8)
 8001ed2:	46c0      	nop			; (mov r8, r8)
 8001ed4:	46bd      	mov	sp, r7
 8001ed6:	b004      	add	sp, #16
 8001ed8:	bd80      	pop	{r7, pc}
 8001eda:	46c0      	nop			; (mov r8, r8)
 8001edc:	40013800 	.word	0x40013800

08001ee0 <dyn_delay>:
 8001ee0:	b580      	push	{r7, lr}
 8001ee2:	b082      	sub	sp, #8
 8001ee4:	af00      	add	r7, sp, #0
 8001ee6:	6078      	str	r0, [r7, #4]
 8001ee8:	46c0      	nop			; (mov r8, r8)
 8001eea:	687b      	ldr	r3, [r7, #4]
 8001eec:	1e5a      	subs	r2, r3, #1
 8001eee:	607a      	str	r2, [r7, #4]
 8001ef0:	2b00      	cmp	r3, #0
 8001ef2:	d1fa      	bne.n	8001eea <dyn_delay+0xa>
 8001ef4:	46c0      	nop			; (mov r8, r8)
 8001ef6:	46bd      	mov	sp, r7
 8001ef8:	b002      	add	sp, #8
 8001efa:	bd80      	pop	{r7, pc}

08001efc <dyn_set_angle>:
 8001efc:	b5b0      	push	{r4, r5, r7, lr}
 8001efe:	b086      	sub	sp, #24
 8001f00:	af00      	add	r7, sp, #0
 8001f02:	0002      	movs	r2, r0
 8001f04:	1dfb      	adds	r3, r7, #7
 8001f06:	701a      	strb	r2, [r3, #0]
 8001f08:	1d3b      	adds	r3, r7, #4
 8001f0a:	1c0a      	adds	r2, r1, #0
 8001f0c:	801a      	strh	r2, [r3, #0]
 8001f0e:	1d3b      	adds	r3, r7, #4
 8001f10:	881b      	ldrh	r3, [r3, #0]
 8001f12:	0a1b      	lsrs	r3, r3, #8
 8001f14:	b29a      	uxth	r2, r3
 8001f16:	2017      	movs	r0, #23
 8001f18:	183b      	adds	r3, r7, r0
 8001f1a:	701a      	strb	r2, [r3, #0]
 8001f1c:	2416      	movs	r4, #22
 8001f1e:	193b      	adds	r3, r7, r4
 8001f20:	1d3a      	adds	r2, r7, #4
 8001f22:	8812      	ldrh	r2, [r2, #0]
 8001f24:	701a      	strb	r2, [r3, #0]
 8001f26:	1dfa      	adds	r2, r7, #7
 8001f28:	193b      	adds	r3, r7, r4
 8001f2a:	7812      	ldrb	r2, [r2, #0]
 8001f2c:	781b      	ldrb	r3, [r3, #0]
 8001f2e:	18d3      	adds	r3, r2, r3
 8001f30:	b2da      	uxtb	r2, r3
 8001f32:	183b      	adds	r3, r7, r0
 8001f34:	781b      	ldrb	r3, [r3, #0]
 8001f36:	18d3      	adds	r3, r2, r3
 8001f38:	b2da      	uxtb	r2, r3
 8001f3a:	2515      	movs	r5, #21
 8001f3c:	197b      	adds	r3, r7, r5
 8001f3e:	3226      	adds	r2, #38	; 0x26
 8001f40:	701a      	strb	r2, [r3, #0]
 8001f42:	210c      	movs	r1, #12
 8001f44:	187b      	adds	r3, r7, r1
 8001f46:	22ff      	movs	r2, #255	; 0xff
 8001f48:	701a      	strb	r2, [r3, #0]
 8001f4a:	187b      	adds	r3, r7, r1
 8001f4c:	22ff      	movs	r2, #255	; 0xff
 8001f4e:	705a      	strb	r2, [r3, #1]
 8001f50:	187b      	adds	r3, r7, r1
 8001f52:	1dfa      	adds	r2, r7, #7
 8001f54:	7812      	ldrb	r2, [r2, #0]
 8001f56:	709a      	strb	r2, [r3, #2]
 8001f58:	187b      	adds	r3, r7, r1
 8001f5a:	2205      	movs	r2, #5
 8001f5c:	70da      	strb	r2, [r3, #3]
 8001f5e:	187b      	adds	r3, r7, r1
 8001f60:	2203      	movs	r2, #3
 8001f62:	711a      	strb	r2, [r3, #4]
 8001f64:	187b      	adds	r3, r7, r1
 8001f66:	221e      	movs	r2, #30
 8001f68:	715a      	strb	r2, [r3, #5]
 8001f6a:	187b      	adds	r3, r7, r1
 8001f6c:	193a      	adds	r2, r7, r4
 8001f6e:	7812      	ldrb	r2, [r2, #0]
 8001f70:	719a      	strb	r2, [r3, #6]
 8001f72:	187b      	adds	r3, r7, r1
 8001f74:	183a      	adds	r2, r7, r0
 8001f76:	7812      	ldrb	r2, [r2, #0]
 8001f78:	71da      	strb	r2, [r3, #7]
 8001f7a:	197b      	adds	r3, r7, r5
 8001f7c:	781b      	ldrb	r3, [r3, #0]
 8001f7e:	43db      	mvns	r3, r3
 8001f80:	b2da      	uxtb	r2, r3
 8001f82:	187b      	adds	r3, r7, r1
 8001f84:	721a      	strb	r2, [r3, #8]
 8001f86:	1d3b      	adds	r3, r7, #4
 8001f88:	881a      	ldrh	r2, [r3, #0]
 8001f8a:	2380      	movs	r3, #128	; 0x80
 8001f8c:	01db      	lsls	r3, r3, #7
 8001f8e:	429a      	cmp	r2, r3
 8001f90:	d208      	bcs.n	8001fa4 <dyn_set_angle+0xa8>
 8001f92:	4b06      	ldr	r3, [pc, #24]	; (8001fac <dyn_set_angle+0xb0>)
 8001f94:	781b      	ldrb	r3, [r3, #0]
 8001f96:	001a      	movs	r2, r3
 8001f98:	187b      	adds	r3, r7, r1
 8001f9a:	0011      	movs	r1, r2
 8001f9c:	0018      	movs	r0, r3
 8001f9e:	f7ff ff59 	bl	8001e54 <dyn_send_cmd>
 8001fa2:	e000      	b.n	8001fa6 <dyn_set_angle+0xaa>
 8001fa4:	46c0      	nop			; (mov r8, r8)
 8001fa6:	46bd      	mov	sp, r7
 8001fa8:	b006      	add	sp, #24
 8001faa:	bdb0      	pop	{r4, r5, r7, pc}
 8001fac:	08009c28 	.word	0x08009c28

08001fb0 <dyn_set_init_pos>:
 8001fb0:	b5b0      	push	{r4, r5, r7, lr}
 8001fb2:	b088      	sub	sp, #32
 8001fb4:	af00      	add	r7, sp, #0
 8001fb6:	6078      	str	r0, [r7, #4]
 8001fb8:	2300      	movs	r3, #0
 8001fba:	61fb      	str	r3, [r7, #28]
 8001fbc:	2300      	movs	r3, #0
 8001fbe:	61bb      	str	r3, [r7, #24]
 8001fc0:	2300      	movs	r3, #0
 8001fc2:	61fb      	str	r3, [r7, #28]
 8001fc4:	2300      	movs	r3, #0
 8001fc6:	61bb      	str	r3, [r7, #24]
 8001fc8:	e052      	b.n	8002070 <dyn_set_init_pos+0xc0>
 8001fca:	69bb      	ldr	r3, [r7, #24]
 8001fcc:	687a      	ldr	r2, [r7, #4]
 8001fce:	18d2      	adds	r2, r2, r3
 8001fd0:	2017      	movs	r0, #23
 8001fd2:	183b      	adds	r3, r7, r0
 8001fd4:	7812      	ldrb	r2, [r2, #0]
 8001fd6:	701a      	strb	r2, [r3, #0]
 8001fd8:	69bb      	ldr	r3, [r7, #24]
 8001fda:	3301      	adds	r3, #1
 8001fdc:	687a      	ldr	r2, [r7, #4]
 8001fde:	18d2      	adds	r2, r2, r3
 8001fe0:	2416      	movs	r4, #22
 8001fe2:	193b      	adds	r3, r7, r4
 8001fe4:	7812      	ldrb	r2, [r2, #0]
 8001fe6:	701a      	strb	r2, [r3, #0]
 8001fe8:	69fb      	ldr	r3, [r7, #28]
 8001fea:	b2da      	uxtb	r2, r3
 8001fec:	193b      	adds	r3, r7, r4
 8001fee:	781b      	ldrb	r3, [r3, #0]
 8001ff0:	18d3      	adds	r3, r2, r3
 8001ff2:	b2da      	uxtb	r2, r3
 8001ff4:	183b      	adds	r3, r7, r0
 8001ff6:	781b      	ldrb	r3, [r3, #0]
 8001ff8:	18d3      	adds	r3, r2, r3
 8001ffa:	b2da      	uxtb	r2, r3
 8001ffc:	2515      	movs	r5, #21
 8001ffe:	197b      	adds	r3, r7, r5
 8002000:	3227      	adds	r2, #39	; 0x27
 8002002:	701a      	strb	r2, [r3, #0]
 8002004:	210c      	movs	r1, #12
 8002006:	187b      	adds	r3, r7, r1
 8002008:	22ff      	movs	r2, #255	; 0xff
 800200a:	701a      	strb	r2, [r3, #0]
 800200c:	187b      	adds	r3, r7, r1
 800200e:	22ff      	movs	r2, #255	; 0xff
 8002010:	705a      	strb	r2, [r3, #1]
 8002012:	69fb      	ldr	r3, [r7, #28]
 8002014:	b2db      	uxtb	r3, r3
 8002016:	3301      	adds	r3, #1
 8002018:	b2da      	uxtb	r2, r3
 800201a:	187b      	adds	r3, r7, r1
 800201c:	709a      	strb	r2, [r3, #2]
 800201e:	187b      	adds	r3, r7, r1
 8002020:	2205      	movs	r2, #5
 8002022:	70da      	strb	r2, [r3, #3]
 8002024:	187b      	adds	r3, r7, r1
 8002026:	2203      	movs	r2, #3
 8002028:	711a      	strb	r2, [r3, #4]
 800202a:	187b      	adds	r3, r7, r1
 800202c:	221e      	movs	r2, #30
 800202e:	715a      	strb	r2, [r3, #5]
 8002030:	187b      	adds	r3, r7, r1
 8002032:	193a      	adds	r2, r7, r4
 8002034:	7812      	ldrb	r2, [r2, #0]
 8002036:	719a      	strb	r2, [r3, #6]
 8002038:	187b      	adds	r3, r7, r1
 800203a:	183a      	adds	r2, r7, r0
 800203c:	7812      	ldrb	r2, [r2, #0]
 800203e:	71da      	strb	r2, [r3, #7]
 8002040:	197b      	adds	r3, r7, r5
 8002042:	781b      	ldrb	r3, [r3, #0]
 8002044:	43db      	mvns	r3, r3
 8002046:	b2da      	uxtb	r2, r3
 8002048:	187b      	adds	r3, r7, r1
 800204a:	721a      	strb	r2, [r3, #8]
 800204c:	4b0c      	ldr	r3, [pc, #48]	; (8002080 <dyn_set_init_pos+0xd0>)
 800204e:	781b      	ldrb	r3, [r3, #0]
 8002050:	001a      	movs	r2, r3
 8002052:	187b      	adds	r3, r7, r1
 8002054:	0011      	movs	r1, r2
 8002056:	0018      	movs	r0, r3
 8002058:	f7ff fefc 	bl	8001e54 <dyn_send_cmd>
 800205c:	4b09      	ldr	r3, [pc, #36]	; (8002084 <dyn_set_init_pos+0xd4>)
 800205e:	0018      	movs	r0, r3
 8002060:	f7ff ff3e 	bl	8001ee0 <dyn_delay>
 8002064:	69fb      	ldr	r3, [r7, #28]
 8002066:	3301      	adds	r3, #1
 8002068:	61fb      	str	r3, [r7, #28]
 800206a:	69bb      	ldr	r3, [r7, #24]
 800206c:	3302      	adds	r3, #2
 800206e:	61bb      	str	r3, [r7, #24]
 8002070:	69fb      	ldr	r3, [r7, #28]
 8002072:	2b02      	cmp	r3, #2
 8002074:	dda9      	ble.n	8001fca <dyn_set_init_pos+0x1a>
 8002076:	46c0      	nop			; (mov r8, r8)
 8002078:	46bd      	mov	sp, r7
 800207a:	b008      	add	sp, #32
 800207c:	bdb0      	pop	{r4, r5, r7, pc}
 800207e:	46c0      	nop			; (mov r8, r8)
 8002080:	08009c29 	.word	0x08009c29
 8002084:	0000bb80 	.word	0x0000bb80

08002088 <dyn_set_speed>:
 8002088:	b5b0      	push	{r4, r5, r7, lr}
 800208a:	b088      	sub	sp, #32
 800208c:	af00      	add	r7, sp, #0
 800208e:	6078      	str	r0, [r7, #4]
 8002090:	2300      	movs	r3, #0
 8002092:	61fb      	str	r3, [r7, #28]
 8002094:	2300      	movs	r3, #0
 8002096:	61bb      	str	r3, [r7, #24]
 8002098:	2300      	movs	r3, #0
 800209a:	61fb      	str	r3, [r7, #28]
 800209c:	2300      	movs	r3, #0
 800209e:	61bb      	str	r3, [r7, #24]
 80020a0:	e052      	b.n	8002148 <dyn_set_speed+0xc0>
 80020a2:	69bb      	ldr	r3, [r7, #24]
 80020a4:	687a      	ldr	r2, [r7, #4]
 80020a6:	18d2      	adds	r2, r2, r3
 80020a8:	2017      	movs	r0, #23
 80020aa:	183b      	adds	r3, r7, r0
 80020ac:	7812      	ldrb	r2, [r2, #0]
 80020ae:	701a      	strb	r2, [r3, #0]
 80020b0:	69bb      	ldr	r3, [r7, #24]
 80020b2:	3301      	adds	r3, #1
 80020b4:	687a      	ldr	r2, [r7, #4]
 80020b6:	18d2      	adds	r2, r2, r3
 80020b8:	2416      	movs	r4, #22
 80020ba:	193b      	adds	r3, r7, r4
 80020bc:	7812      	ldrb	r2, [r2, #0]
 80020be:	701a      	strb	r2, [r3, #0]
 80020c0:	69fb      	ldr	r3, [r7, #28]
 80020c2:	b2da      	uxtb	r2, r3
 80020c4:	193b      	adds	r3, r7, r4
 80020c6:	781b      	ldrb	r3, [r3, #0]
 80020c8:	18d3      	adds	r3, r2, r3
 80020ca:	b2da      	uxtb	r2, r3
 80020cc:	183b      	adds	r3, r7, r0
 80020ce:	781b      	ldrb	r3, [r3, #0]
 80020d0:	18d3      	adds	r3, r2, r3
 80020d2:	b2da      	uxtb	r2, r3
 80020d4:	2515      	movs	r5, #21
 80020d6:	197b      	adds	r3, r7, r5
 80020d8:	3229      	adds	r2, #41	; 0x29
 80020da:	701a      	strb	r2, [r3, #0]
 80020dc:	210c      	movs	r1, #12
 80020de:	187b      	adds	r3, r7, r1
 80020e0:	22ff      	movs	r2, #255	; 0xff
 80020e2:	701a      	strb	r2, [r3, #0]
 80020e4:	187b      	adds	r3, r7, r1
 80020e6:	22ff      	movs	r2, #255	; 0xff
 80020e8:	705a      	strb	r2, [r3, #1]
 80020ea:	69fb      	ldr	r3, [r7, #28]
 80020ec:	b2db      	uxtb	r3, r3
 80020ee:	3301      	adds	r3, #1
 80020f0:	b2da      	uxtb	r2, r3
 80020f2:	187b      	adds	r3, r7, r1
 80020f4:	709a      	strb	r2, [r3, #2]
 80020f6:	187b      	adds	r3, r7, r1
 80020f8:	2205      	movs	r2, #5
 80020fa:	70da      	strb	r2, [r3, #3]
 80020fc:	187b      	adds	r3, r7, r1
 80020fe:	2203      	movs	r2, #3
 8002100:	711a      	strb	r2, [r3, #4]
 8002102:	187b      	adds	r3, r7, r1
 8002104:	2220      	movs	r2, #32
 8002106:	715a      	strb	r2, [r3, #5]
 8002108:	187b      	adds	r3, r7, r1
 800210a:	193a      	adds	r2, r7, r4
 800210c:	7812      	ldrb	r2, [r2, #0]
 800210e:	719a      	strb	r2, [r3, #6]
 8002110:	187b      	adds	r3, r7, r1
 8002112:	183a      	adds	r2, r7, r0
 8002114:	7812      	ldrb	r2, [r2, #0]
 8002116:	71da      	strb	r2, [r3, #7]
 8002118:	197b      	adds	r3, r7, r5
 800211a:	781b      	ldrb	r3, [r3, #0]
 800211c:	43db      	mvns	r3, r3
 800211e:	b2da      	uxtb	r2, r3
 8002120:	187b      	adds	r3, r7, r1
 8002122:	721a      	strb	r2, [r3, #8]
 8002124:	4b0c      	ldr	r3, [pc, #48]	; (8002158 <dyn_set_speed+0xd0>)
 8002126:	781b      	ldrb	r3, [r3, #0]
 8002128:	001a      	movs	r2, r3
 800212a:	187b      	adds	r3, r7, r1
 800212c:	0011      	movs	r1, r2
 800212e:	0018      	movs	r0, r3
 8002130:	f7ff fe90 	bl	8001e54 <dyn_send_cmd>
 8002134:	4b09      	ldr	r3, [pc, #36]	; (800215c <dyn_set_speed+0xd4>)
 8002136:	0018      	movs	r0, r3
 8002138:	f7ff fed2 	bl	8001ee0 <dyn_delay>
 800213c:	69fb      	ldr	r3, [r7, #28]
 800213e:	3301      	adds	r3, #1
 8002140:	61fb      	str	r3, [r7, #28]
 8002142:	69bb      	ldr	r3, [r7, #24]
 8002144:	3302      	adds	r3, #2
 8002146:	61bb      	str	r3, [r7, #24]
 8002148:	69fb      	ldr	r3, [r7, #28]
 800214a:	2b02      	cmp	r3, #2
 800214c:	dda9      	ble.n	80020a2 <dyn_set_speed+0x1a>
 800214e:	46c0      	nop			; (mov r8, r8)
 8002150:	46bd      	mov	sp, r7
 8002152:	b008      	add	sp, #32
 8002154:	bdb0      	pop	{r4, r5, r7, pc}
 8002156:	46c0      	nop			; (mov r8, r8)
 8002158:	08009c2a 	.word	0x08009c2a
 800215c:	0000bb80 	.word	0x0000bb80

08002160 <dyn_disable_torque>:
 8002160:	b580      	push	{r7, lr}
 8002162:	af00      	add	r7, sp, #0
 8002164:	46c0      	nop			; (mov r8, r8)
 8002166:	46bd      	mov	sp, r7
 8002168:	bd80      	pop	{r7, pc}
	...

0800216c <dynamixel_init>:
 800216c:	b580      	push	{r7, lr}
 800216e:	af00      	add	r7, sp, #0
 8002170:	2380      	movs	r3, #128	; 0x80
 8002172:	029b      	lsls	r3, r3, #10
 8002174:	0018      	movs	r0, r3
 8002176:	f7ff fe41 	bl	8001dfc <LL_AHB1_GRP1_EnableClock>
 800217a:	2380      	movs	r3, #128	; 0x80
 800217c:	0099      	lsls	r1, r3, #2
 800217e:	2390      	movs	r3, #144	; 0x90
 8002180:	05db      	lsls	r3, r3, #23
 8002182:	2202      	movs	r2, #2
 8002184:	0018      	movs	r0, r3
 8002186:	f7ff fc8f 	bl	8001aa8 <LL_GPIO_SetPinMode>
 800218a:	2380      	movs	r3, #128	; 0x80
 800218c:	0099      	lsls	r1, r3, #2
 800218e:	2390      	movs	r3, #144	; 0x90
 8002190:	05db      	lsls	r3, r3, #23
 8002192:	2201      	movs	r2, #1
 8002194:	0018      	movs	r0, r3
 8002196:	f7ff fcf0 	bl	8001b7a <LL_GPIO_SetAFPin_8_15>
 800219a:	2380      	movs	r3, #128	; 0x80
 800219c:	0099      	lsls	r1, r3, #2
 800219e:	2390      	movs	r3, #144	; 0x90
 80021a0:	05db      	lsls	r3, r3, #23
 80021a2:	2200      	movs	r2, #0
 80021a4:	0018      	movs	r0, r3
 80021a6:	f7ff fc9b 	bl	8001ae0 <LL_GPIO_SetPinOutputType>
 80021aa:	2390      	movs	r3, #144	; 0x90
 80021ac:	05db      	lsls	r3, r3, #23
 80021ae:	2202      	movs	r2, #2
 80021b0:	2104      	movs	r1, #4
 80021b2:	0018      	movs	r0, r3
 80021b4:	f7ff fcc5 	bl	8001b42 <LL_GPIO_SetPinPull>
 80021b8:	2380      	movs	r3, #128	; 0x80
 80021ba:	0099      	lsls	r1, r3, #2
 80021bc:	2390      	movs	r3, #144	; 0x90
 80021be:	05db      	lsls	r3, r3, #23
 80021c0:	2203      	movs	r2, #3
 80021c2:	0018      	movs	r0, r3
 80021c4:	f7ff fca1 	bl	8001b0a <LL_GPIO_SetPinSpeed>
 80021c8:	2380      	movs	r3, #128	; 0x80
 80021ca:	01db      	lsls	r3, r3, #7
 80021cc:	0018      	movs	r0, r3
 80021ce:	f7ff fe2b 	bl	8001e28 <LL_APB1_GRP2_EnableClock>
 80021d2:	4b1f      	ldr	r3, [pc, #124]	; (8002250 <dynamixel_init+0xe4>)
 80021d4:	2100      	movs	r1, #0
 80021d6:	0018      	movs	r0, r3
 80021d8:	f7ff fd50 	bl	8001c7c <LL_USART_SetParity>
 80021dc:	4b1c      	ldr	r3, [pc, #112]	; (8002250 <dynamixel_init+0xe4>)
 80021de:	2100      	movs	r1, #0
 80021e0:	0018      	movs	r0, r3
 80021e2:	f7ff fd5f 	bl	8001ca4 <LL_USART_SetDataWidth>
 80021e6:	4b1a      	ldr	r3, [pc, #104]	; (8002250 <dynamixel_init+0xe4>)
 80021e8:	2100      	movs	r1, #0
 80021ea:	0018      	movs	r0, r3
 80021ec:	f7ff fd6e 	bl	8001ccc <LL_USART_SetStopBitsLength>
 80021f0:	4b18      	ldr	r3, [pc, #96]	; (8002254 <dynamixel_init+0xe8>)
 80021f2:	6819      	ldr	r1, [r3, #0]
 80021f4:	4b18      	ldr	r3, [pc, #96]	; (8002258 <dynamixel_init+0xec>)
 80021f6:	4816      	ldr	r0, [pc, #88]	; (8002250 <dynamixel_init+0xe4>)
 80021f8:	2200      	movs	r2, #0
 80021fa:	f7ff fd7b 	bl	8001cf4 <LL_USART_SetBaudRate>
 80021fe:	4b14      	ldr	r3, [pc, #80]	; (8002250 <dynamixel_init+0xe4>)
 8002200:	0018      	movs	r0, r3
 8002202:	f7ff fdb1 	bl	8001d68 <LL_USART_EnableHalfDuplex>
 8002206:	4b12      	ldr	r3, [pc, #72]	; (8002250 <dynamixel_init+0xe4>)
 8002208:	0018      	movs	r0, r3
 800220a:	f7ff fd28 	bl	8001c5e <LL_USART_DisableDirectionTx>
 800220e:	4b10      	ldr	r3, [pc, #64]	; (8002250 <dynamixel_init+0xe4>)
 8002210:	0018      	movs	r0, r3
 8002212:	f7ff fcf9 	bl	8001c08 <LL_USART_EnableDirectionRx>
 8002216:	4b0e      	ldr	r3, [pc, #56]	; (8002250 <dynamixel_init+0xe4>)
 8002218:	0018      	movs	r0, r3
 800221a:	f7ff fce7 	bl	8001bec <LL_USART_Enable>
 800221e:	2380      	movs	r3, #128	; 0x80
 8002220:	031b      	lsls	r3, r3, #12
 8002222:	0018      	movs	r0, r3
 8002224:	f7ff fdea 	bl	8001dfc <LL_AHB1_GRP1_EnableClock>
 8002228:	4b0c      	ldr	r3, [pc, #48]	; (800225c <dynamixel_init+0xf0>)
 800222a:	2201      	movs	r2, #1
 800222c:	2140      	movs	r1, #64	; 0x40
 800222e:	0018      	movs	r0, r3
 8002230:	f7ff fc3a 	bl	8001aa8 <LL_GPIO_SetPinMode>
 8002234:	4b09      	ldr	r3, [pc, #36]	; (800225c <dynamixel_init+0xf0>)
 8002236:	2200      	movs	r2, #0
 8002238:	2140      	movs	r1, #64	; 0x40
 800223a:	0018      	movs	r0, r3
 800223c:	f7ff fc50 	bl	8001ae0 <LL_GPIO_SetPinOutputType>
 8002240:	4b06      	ldr	r3, [pc, #24]	; (800225c <dynamixel_init+0xf0>)
 8002242:	2140      	movs	r1, #64	; 0x40
 8002244:	0018      	movs	r0, r3
 8002246:	f7ff fcc5 	bl	8001bd4 <LL_GPIO_SetOutputPin>
 800224a:	46c0      	nop			; (mov r8, r8)
 800224c:	46bd      	mov	sp, r7
 800224e:	bd80      	pop	{r7, pc}
 8002250:	40013800 	.word	0x40013800
 8002254:	20000000 	.word	0x20000000
 8002258:	000f4240 	.word	0x000f4240
 800225c:	48000800 	.word	0x48000800

08002260 <dyn_manager>:
 8002260:	b580      	push	{r7, lr}
 8002262:	b084      	sub	sp, #16
 8002264:	af00      	add	r7, sp, #0
 8002266:	6078      	str	r0, [r7, #4]
 8002268:	687b      	ldr	r3, [r7, #4]
 800226a:	60fb      	str	r3, [r7, #12]
 800226c:	68fb      	ldr	r3, [r7, #12]
 800226e:	3301      	adds	r3, #1
 8002270:	60bb      	str	r3, [r7, #8]
 8002272:	68fb      	ldr	r3, [r7, #12]
 8002274:	781b      	ldrb	r3, [r3, #0]
 8002276:	2b03      	cmp	r3, #3
 8002278:	d01d      	beq.n	80022b6 <dyn_manager+0x56>
 800227a:	dc21      	bgt.n	80022c0 <dyn_manager+0x60>
 800227c:	2b02      	cmp	r3, #2
 800227e:	d017      	beq.n	80022b0 <dyn_manager+0x50>
 8002280:	dc1e      	bgt.n	80022c0 <dyn_manager+0x60>
 8002282:	2b00      	cmp	r3, #0
 8002284:	d002      	beq.n	800228c <dyn_manager+0x2c>
 8002286:	2b01      	cmp	r3, #1
 8002288:	d00c      	beq.n	80022a4 <dyn_manager+0x44>
 800228a:	e019      	b.n	80022c0 <dyn_manager+0x60>
 800228c:	68bb      	ldr	r3, [r7, #8]
 800228e:	7818      	ldrb	r0, [r3, #0]
 8002290:	68bb      	ldr	r3, [r7, #8]
 8002292:	785a      	ldrb	r2, [r3, #1]
 8002294:	789b      	ldrb	r3, [r3, #2]
 8002296:	021b      	lsls	r3, r3, #8
 8002298:	4313      	orrs	r3, r2
 800229a:	b29b      	uxth	r3, r3
 800229c:	0019      	movs	r1, r3
 800229e:	f7ff fe2d 	bl	8001efc <dyn_set_angle>
 80022a2:	e00e      	b.n	80022c2 <dyn_manager+0x62>
 80022a4:	68fb      	ldr	r3, [r7, #12]
 80022a6:	3301      	adds	r3, #1
 80022a8:	0018      	movs	r0, r3
 80022aa:	f7ff feed 	bl	8002088 <dyn_set_speed>
 80022ae:	e008      	b.n	80022c2 <dyn_manager+0x62>
 80022b0:	f7ff ff56 	bl	8002160 <dyn_disable_torque>
 80022b4:	e005      	b.n	80022c2 <dyn_manager+0x62>
 80022b6:	68fb      	ldr	r3, [r7, #12]
 80022b8:	3301      	adds	r3, #1
 80022ba:	0018      	movs	r0, r3
 80022bc:	f7ff fe78 	bl	8001fb0 <dyn_set_init_pos>
 80022c0:	46c0      	nop			; (mov r8, r8)
 80022c2:	46c0      	nop			; (mov r8, r8)
 80022c4:	46bd      	mov	sp, r7
 80022c6:	b004      	add	sp, #16
 80022c8:	bd80      	pop	{r7, pc}
	...

080022cc <NVIC_EnableIRQ>:
 80022cc:	b580      	push	{r7, lr}
 80022ce:	b082      	sub	sp, #8
 80022d0:	af00      	add	r7, sp, #0
 80022d2:	0002      	movs	r2, r0
 80022d4:	1dfb      	adds	r3, r7, #7
 80022d6:	701a      	strb	r2, [r3, #0]
 80022d8:	1dfb      	adds	r3, r7, #7
 80022da:	781b      	ldrb	r3, [r3, #0]
 80022dc:	001a      	movs	r2, r3
 80022de:	231f      	movs	r3, #31
 80022e0:	401a      	ands	r2, r3
 80022e2:	4b04      	ldr	r3, [pc, #16]	; (80022f4 <NVIC_EnableIRQ+0x28>)
 80022e4:	2101      	movs	r1, #1
 80022e6:	4091      	lsls	r1, r2
 80022e8:	000a      	movs	r2, r1
 80022ea:	601a      	str	r2, [r3, #0]
 80022ec:	46c0      	nop			; (mov r8, r8)
 80022ee:	46bd      	mov	sp, r7
 80022f0:	b002      	add	sp, #8
 80022f2:	bd80      	pop	{r7, pc}
 80022f4:	e000e100 	.word	0xe000e100

080022f8 <NVIC_SetPriority>:
 80022f8:	b590      	push	{r4, r7, lr}
 80022fa:	b083      	sub	sp, #12
 80022fc:	af00      	add	r7, sp, #0
 80022fe:	0002      	movs	r2, r0
 8002300:	6039      	str	r1, [r7, #0]
 8002302:	1dfb      	adds	r3, r7, #7
 8002304:	701a      	strb	r2, [r3, #0]
 8002306:	1dfb      	adds	r3, r7, #7
 8002308:	781b      	ldrb	r3, [r3, #0]
 800230a:	2b7f      	cmp	r3, #127	; 0x7f
 800230c:	d932      	bls.n	8002374 <NVIC_SetPriority+0x7c>
 800230e:	4a2f      	ldr	r2, [pc, #188]	; (80023cc <NVIC_SetPriority+0xd4>)
 8002310:	1dfb      	adds	r3, r7, #7
 8002312:	781b      	ldrb	r3, [r3, #0]
 8002314:	0019      	movs	r1, r3
 8002316:	230f      	movs	r3, #15
 8002318:	400b      	ands	r3, r1
 800231a:	3b08      	subs	r3, #8
 800231c:	089b      	lsrs	r3, r3, #2
 800231e:	3306      	adds	r3, #6
 8002320:	009b      	lsls	r3, r3, #2
 8002322:	18d3      	adds	r3, r2, r3
 8002324:	3304      	adds	r3, #4
 8002326:	681b      	ldr	r3, [r3, #0]
 8002328:	1dfa      	adds	r2, r7, #7
 800232a:	7812      	ldrb	r2, [r2, #0]
 800232c:	0011      	movs	r1, r2
 800232e:	2203      	movs	r2, #3
 8002330:	400a      	ands	r2, r1
 8002332:	00d2      	lsls	r2, r2, #3
 8002334:	21ff      	movs	r1, #255	; 0xff
 8002336:	4091      	lsls	r1, r2
 8002338:	000a      	movs	r2, r1
 800233a:	43d2      	mvns	r2, r2
 800233c:	401a      	ands	r2, r3
 800233e:	0011      	movs	r1, r2
 8002340:	683b      	ldr	r3, [r7, #0]
 8002342:	019b      	lsls	r3, r3, #6
 8002344:	22ff      	movs	r2, #255	; 0xff
 8002346:	401a      	ands	r2, r3
 8002348:	1dfb      	adds	r3, r7, #7
 800234a:	781b      	ldrb	r3, [r3, #0]
 800234c:	0018      	movs	r0, r3
 800234e:	2303      	movs	r3, #3
 8002350:	4003      	ands	r3, r0
 8002352:	00db      	lsls	r3, r3, #3
 8002354:	409a      	lsls	r2, r3
 8002356:	481d      	ldr	r0, [pc, #116]	; (80023cc <NVIC_SetPriority+0xd4>)
 8002358:	1dfb      	adds	r3, r7, #7
 800235a:	781b      	ldrb	r3, [r3, #0]
 800235c:	001c      	movs	r4, r3
 800235e:	230f      	movs	r3, #15
 8002360:	4023      	ands	r3, r4
 8002362:	3b08      	subs	r3, #8
 8002364:	089b      	lsrs	r3, r3, #2
 8002366:	430a      	orrs	r2, r1
 8002368:	3306      	adds	r3, #6
 800236a:	009b      	lsls	r3, r3, #2
 800236c:	18c3      	adds	r3, r0, r3
 800236e:	3304      	adds	r3, #4
 8002370:	601a      	str	r2, [r3, #0]
 8002372:	e027      	b.n	80023c4 <NVIC_SetPriority+0xcc>
 8002374:	4a16      	ldr	r2, [pc, #88]	; (80023d0 <NVIC_SetPriority+0xd8>)
 8002376:	1dfb      	adds	r3, r7, #7
 8002378:	781b      	ldrb	r3, [r3, #0]
 800237a:	b25b      	sxtb	r3, r3
 800237c:	089b      	lsrs	r3, r3, #2
 800237e:	33c0      	adds	r3, #192	; 0xc0
 8002380:	009b      	lsls	r3, r3, #2
 8002382:	589b      	ldr	r3, [r3, r2]
 8002384:	1dfa      	adds	r2, r7, #7
 8002386:	7812      	ldrb	r2, [r2, #0]
 8002388:	0011      	movs	r1, r2
 800238a:	2203      	movs	r2, #3
 800238c:	400a      	ands	r2, r1
 800238e:	00d2      	lsls	r2, r2, #3
 8002390:	21ff      	movs	r1, #255	; 0xff
 8002392:	4091      	lsls	r1, r2
 8002394:	000a      	movs	r2, r1
 8002396:	43d2      	mvns	r2, r2
 8002398:	401a      	ands	r2, r3
 800239a:	0011      	movs	r1, r2
 800239c:	683b      	ldr	r3, [r7, #0]
 800239e:	019b      	lsls	r3, r3, #6
 80023a0:	22ff      	movs	r2, #255	; 0xff
 80023a2:	401a      	ands	r2, r3
 80023a4:	1dfb      	adds	r3, r7, #7
 80023a6:	781b      	ldrb	r3, [r3, #0]
 80023a8:	0018      	movs	r0, r3
 80023aa:	2303      	movs	r3, #3
 80023ac:	4003      	ands	r3, r0
 80023ae:	00db      	lsls	r3, r3, #3
 80023b0:	409a      	lsls	r2, r3
 80023b2:	4807      	ldr	r0, [pc, #28]	; (80023d0 <NVIC_SetPriority+0xd8>)
 80023b4:	1dfb      	adds	r3, r7, #7
 80023b6:	781b      	ldrb	r3, [r3, #0]
 80023b8:	b25b      	sxtb	r3, r3
 80023ba:	089b      	lsrs	r3, r3, #2
 80023bc:	430a      	orrs	r2, r1
 80023be:	33c0      	adds	r3, #192	; 0xc0
 80023c0:	009b      	lsls	r3, r3, #2
 80023c2:	501a      	str	r2, [r3, r0]
 80023c4:	46c0      	nop			; (mov r8, r8)
 80023c6:	46bd      	mov	sp, r7
 80023c8:	b003      	add	sp, #12
 80023ca:	bd90      	pop	{r4, r7, pc}
 80023cc:	e000ed00 	.word	0xe000ed00
 80023d0:	e000e100 	.word	0xe000e100

080023d4 <LL_TIM_EnableCounter>:
 80023d4:	b580      	push	{r7, lr}
 80023d6:	b082      	sub	sp, #8
 80023d8:	af00      	add	r7, sp, #0
 80023da:	6078      	str	r0, [r7, #4]
 80023dc:	687b      	ldr	r3, [r7, #4]
 80023de:	681b      	ldr	r3, [r3, #0]
 80023e0:	2201      	movs	r2, #1
 80023e2:	431a      	orrs	r2, r3
 80023e4:	687b      	ldr	r3, [r7, #4]
 80023e6:	601a      	str	r2, [r3, #0]
 80023e8:	46c0      	nop			; (mov r8, r8)
 80023ea:	46bd      	mov	sp, r7
 80023ec:	b002      	add	sp, #8
 80023ee:	bd80      	pop	{r7, pc}

080023f0 <LL_TIM_SetCounterMode>:
 80023f0:	b580      	push	{r7, lr}
 80023f2:	b082      	sub	sp, #8
 80023f4:	af00      	add	r7, sp, #0
 80023f6:	6078      	str	r0, [r7, #4]
 80023f8:	6039      	str	r1, [r7, #0]
 80023fa:	687b      	ldr	r3, [r7, #4]
 80023fc:	681b      	ldr	r3, [r3, #0]
 80023fe:	2270      	movs	r2, #112	; 0x70
 8002400:	4393      	bics	r3, r2
 8002402:	001a      	movs	r2, r3
 8002404:	683b      	ldr	r3, [r7, #0]
 8002406:	431a      	orrs	r2, r3
 8002408:	687b      	ldr	r3, [r7, #4]
 800240a:	601a      	str	r2, [r3, #0]
 800240c:	46c0      	nop			; (mov r8, r8)
 800240e:	46bd      	mov	sp, r7
 8002410:	b002      	add	sp, #8
 8002412:	bd80      	pop	{r7, pc}

08002414 <LL_TIM_SetPrescaler>:
 8002414:	b580      	push	{r7, lr}
 8002416:	b082      	sub	sp, #8
 8002418:	af00      	add	r7, sp, #0
 800241a:	6078      	str	r0, [r7, #4]
 800241c:	6039      	str	r1, [r7, #0]
 800241e:	687b      	ldr	r3, [r7, #4]
 8002420:	683a      	ldr	r2, [r7, #0]
 8002422:	629a      	str	r2, [r3, #40]	; 0x28
 8002424:	46c0      	nop			; (mov r8, r8)
 8002426:	46bd      	mov	sp, r7
 8002428:	b002      	add	sp, #8
 800242a:	bd80      	pop	{r7, pc}

0800242c <LL_TIM_SetAutoReload>:
 800242c:	b580      	push	{r7, lr}
 800242e:	b082      	sub	sp, #8
 8002430:	af00      	add	r7, sp, #0
 8002432:	6078      	str	r0, [r7, #4]
 8002434:	6039      	str	r1, [r7, #0]
 8002436:	687b      	ldr	r3, [r7, #4]
 8002438:	683a      	ldr	r2, [r7, #0]
 800243a:	62da      	str	r2, [r3, #44]	; 0x2c
 800243c:	46c0      	nop			; (mov r8, r8)
 800243e:	46bd      	mov	sp, r7
 8002440:	b002      	add	sp, #8
 8002442:	bd80      	pop	{r7, pc}

08002444 <LL_TIM_ClearFlag_UPDATE>:
 8002444:	b580      	push	{r7, lr}
 8002446:	b082      	sub	sp, #8
 8002448:	af00      	add	r7, sp, #0
 800244a:	6078      	str	r0, [r7, #4]
 800244c:	687b      	ldr	r3, [r7, #4]
 800244e:	2202      	movs	r2, #2
 8002450:	4252      	negs	r2, r2
 8002452:	611a      	str	r2, [r3, #16]
 8002454:	46c0      	nop			; (mov r8, r8)
 8002456:	46bd      	mov	sp, r7
 8002458:	b002      	add	sp, #8
 800245a:	bd80      	pop	{r7, pc}

0800245c <LL_TIM_EnableIT_UPDATE>:
 800245c:	b580      	push	{r7, lr}
 800245e:	b082      	sub	sp, #8
 8002460:	af00      	add	r7, sp, #0
 8002462:	6078      	str	r0, [r7, #4]
 8002464:	687b      	ldr	r3, [r7, #4]
 8002466:	68db      	ldr	r3, [r3, #12]
 8002468:	2201      	movs	r2, #1
 800246a:	431a      	orrs	r2, r3
 800246c:	687b      	ldr	r3, [r7, #4]
 800246e:	60da      	str	r2, [r3, #12]
 8002470:	46c0      	nop			; (mov r8, r8)
 8002472:	46bd      	mov	sp, r7
 8002474:	b002      	add	sp, #8
 8002476:	bd80      	pop	{r7, pc}

08002478 <LL_APB1_GRP1_EnableClock>:
 8002478:	b580      	push	{r7, lr}
 800247a:	b084      	sub	sp, #16
 800247c:	af00      	add	r7, sp, #0
 800247e:	6078      	str	r0, [r7, #4]
 8002480:	4b07      	ldr	r3, [pc, #28]	; (80024a0 <LL_APB1_GRP1_EnableClock+0x28>)
 8002482:	69d9      	ldr	r1, [r3, #28]
 8002484:	4b06      	ldr	r3, [pc, #24]	; (80024a0 <LL_APB1_GRP1_EnableClock+0x28>)
 8002486:	687a      	ldr	r2, [r7, #4]
 8002488:	430a      	orrs	r2, r1
 800248a:	61da      	str	r2, [r3, #28]
 800248c:	4b04      	ldr	r3, [pc, #16]	; (80024a0 <LL_APB1_GRP1_EnableClock+0x28>)
 800248e:	69db      	ldr	r3, [r3, #28]
 8002490:	687a      	ldr	r2, [r7, #4]
 8002492:	4013      	ands	r3, r2
 8002494:	60fb      	str	r3, [r7, #12]
 8002496:	68fb      	ldr	r3, [r7, #12]
 8002498:	46c0      	nop			; (mov r8, r8)
 800249a:	46bd      	mov	sp, r7
 800249c:	b004      	add	sp, #16
 800249e:	bd80      	pop	{r7, pc}
 80024a0:	40021000 	.word	0x40021000

080024a4 <tim_init>:
 80024a4:	b580      	push	{r7, lr}
 80024a6:	af00      	add	r7, sp, #0
 80024a8:	2002      	movs	r0, #2
 80024aa:	f7ff ffe5 	bl	8002478 <LL_APB1_GRP1_EnableClock>
 80024ae:	4a11      	ldr	r2, [pc, #68]	; (80024f4 <tim_init+0x50>)
 80024b0:	4b11      	ldr	r3, [pc, #68]	; (80024f8 <tim_init+0x54>)
 80024b2:	0011      	movs	r1, r2
 80024b4:	0018      	movs	r0, r3
 80024b6:	f7ff ffad 	bl	8002414 <LL_TIM_SetPrescaler>
 80024ba:	4b0f      	ldr	r3, [pc, #60]	; (80024f8 <tim_init+0x54>)
 80024bc:	2163      	movs	r1, #99	; 0x63
 80024be:	0018      	movs	r0, r3
 80024c0:	f7ff ffb4 	bl	800242c <LL_TIM_SetAutoReload>
 80024c4:	4b0c      	ldr	r3, [pc, #48]	; (80024f8 <tim_init+0x54>)
 80024c6:	2100      	movs	r1, #0
 80024c8:	0018      	movs	r0, r3
 80024ca:	f7ff ff91 	bl	80023f0 <LL_TIM_SetCounterMode>
 80024ce:	4b0a      	ldr	r3, [pc, #40]	; (80024f8 <tim_init+0x54>)
 80024d0:	0018      	movs	r0, r3
 80024d2:	f7ff ffc3 	bl	800245c <LL_TIM_EnableIT_UPDATE>
 80024d6:	4b08      	ldr	r3, [pc, #32]	; (80024f8 <tim_init+0x54>)
 80024d8:	0018      	movs	r0, r3
 80024da:	f7ff ff7b 	bl	80023d4 <LL_TIM_EnableCounter>
 80024de:	2010      	movs	r0, #16
 80024e0:	f7ff fef4 	bl	80022cc <NVIC_EnableIRQ>
 80024e4:	2145      	movs	r1, #69	; 0x45
 80024e6:	2010      	movs	r0, #16
 80024e8:	f7ff ff06 	bl	80022f8 <NVIC_SetPriority>
 80024ec:	46c0      	nop			; (mov r8, r8)
 80024ee:	46bd      	mov	sp, r7
 80024f0:	bd80      	pop	{r7, pc}
 80024f2:	46c0      	nop			; (mov r8, r8)
 80024f4:	0000bb7f 	.word	0x0000bb7f
 80024f8:	40000400 	.word	0x40000400

080024fc <err_man_show_err>:
 80024fc:	b580      	push	{r7, lr}
 80024fe:	b082      	sub	sp, #8
 8002500:	af00      	add	r7, sp, #0
 8002502:	2300      	movs	r3, #0
 8002504:	607b      	str	r3, [r7, #4]
 8002506:	2000      	movs	r0, #0
 8002508:	f7ff f92c 	bl	8001764 <disp_fill>
 800250c:	2300      	movs	r3, #0
 800250e:	607b      	str	r3, [r7, #4]
 8002510:	e030      	b.n	8002574 <err_man_show_err+0x78>
 8002512:	687b      	ldr	r3, [r7, #4]
 8002514:	4a22      	ldr	r2, [pc, #136]	; (80025a0 <err_man_show_err+0xa4>)
 8002516:	4013      	ands	r3, r2
 8002518:	d504      	bpl.n	8002524 <err_man_show_err+0x28>
 800251a:	3b01      	subs	r3, #1
 800251c:	2202      	movs	r2, #2
 800251e:	4252      	negs	r2, r2
 8002520:	4313      	orrs	r3, r2
 8002522:	3301      	adds	r3, #1
 8002524:	b2db      	uxtb	r3, r3
 8002526:	1c1a      	adds	r2, r3, #0
 8002528:	00d2      	lsls	r2, r2, #3
 800252a:	1ad3      	subs	r3, r2, r3
 800252c:	b2da      	uxtb	r2, r3
 800252e:	687b      	ldr	r3, [r7, #4]
 8002530:	105b      	asrs	r3, r3, #1
 8002532:	b2db      	uxtb	r3, r3
 8002534:	0019      	movs	r1, r3
 8002536:	0010      	movs	r0, r2
 8002538:	f7ff fa30 	bl	800199c <disp_set_cursor>
 800253c:	4a19      	ldr	r2, [pc, #100]	; (80025a4 <err_man_show_err+0xa8>)
 800253e:	687b      	ldr	r3, [r7, #4]
 8002540:	18d3      	adds	r3, r2, r3
 8002542:	3308      	adds	r3, #8
 8002544:	781b      	ldrb	r3, [r3, #0]
 8002546:	2bff      	cmp	r3, #255	; 0xff
 8002548:	d106      	bne.n	8002558 <err_man_show_err+0x5c>
 800254a:	687a      	ldr	r2, [r7, #4]
 800254c:	4b16      	ldr	r3, [pc, #88]	; (80025a8 <err_man_show_err+0xac>)
 800254e:	0011      	movs	r1, r2
 8002550:	0018      	movs	r0, r3
 8002552:	f001 fb09 	bl	8003b68 <xprintf>
 8002556:	e00a      	b.n	800256e <err_man_show_err+0x72>
 8002558:	4a12      	ldr	r2, [pc, #72]	; (80025a4 <err_man_show_err+0xa8>)
 800255a:	687b      	ldr	r3, [r7, #4]
 800255c:	18d3      	adds	r3, r2, r3
 800255e:	3308      	adds	r3, #8
 8002560:	781b      	ldrb	r3, [r3, #0]
 8002562:	001a      	movs	r2, r3
 8002564:	6879      	ldr	r1, [r7, #4]
 8002566:	4b11      	ldr	r3, [pc, #68]	; (80025ac <err_man_show_err+0xb0>)
 8002568:	0018      	movs	r0, r3
 800256a:	f001 fafd 	bl	8003b68 <xprintf>
 800256e:	687b      	ldr	r3, [r7, #4]
 8002570:	3301      	adds	r3, #1
 8002572:	607b      	str	r3, [r7, #4]
 8002574:	687b      	ldr	r3, [r7, #4]
 8002576:	2b08      	cmp	r3, #8
 8002578:	ddcb      	ble.n	8002512 <err_man_show_err+0x16>
 800257a:	2105      	movs	r1, #5
 800257c:	2000      	movs	r0, #0
 800257e:	f7ff fa0d 	bl	800199c <disp_set_cursor>
 8002582:	4b08      	ldr	r3, [pc, #32]	; (80025a4 <err_man_show_err+0xa8>)
 8002584:	781b      	ldrb	r3, [r3, #0]
 8002586:	001a      	movs	r2, r3
 8002588:	4b09      	ldr	r3, [pc, #36]	; (80025b0 <err_man_show_err+0xb4>)
 800258a:	0011      	movs	r1, r2
 800258c:	0018      	movs	r0, r3
 800258e:	f001 faeb 	bl	8003b68 <xprintf>
 8002592:	f7ff f8fb 	bl	800178c <disp_update>
 8002596:	46c0      	nop			; (mov r8, r8)
 8002598:	46bd      	mov	sp, r7
 800259a:	b002      	add	sp, #8
 800259c:	bd80      	pop	{r7, pc}
 800259e:	46c0      	nop			; (mov r8, r8)
 80025a0:	80000001 	.word	0x80000001
 80025a4:	20001700 	.word	0x20001700
 80025a8:	0800949c 	.word	0x0800949c
 80025ac:	080094a4 	.word	0x080094a4
 80025b0:	080094ac 	.word	0x080094ac

080025b4 <err_man_set_time>:
 80025b4:	b580      	push	{r7, lr}
 80025b6:	b082      	sub	sp, #8
 80025b8:	af00      	add	r7, sp, #0
 80025ba:	6078      	str	r0, [r7, #4]
 80025bc:	4b03      	ldr	r3, [pc, #12]	; (80025cc <err_man_set_time+0x18>)
 80025be:	687a      	ldr	r2, [r7, #4]
 80025c0:	605a      	str	r2, [r3, #4]
 80025c2:	46c0      	nop			; (mov r8, r8)
 80025c4:	46bd      	mov	sp, r7
 80025c6:	b002      	add	sp, #8
 80025c8:	bd80      	pop	{r7, pc}
 80025ca:	46c0      	nop			; (mov r8, r8)
 80025cc:	20001700 	.word	0x20001700

080025d0 <err_man_set_dist>:
 80025d0:	b580      	push	{r7, lr}
 80025d2:	b082      	sub	sp, #8
 80025d4:	af00      	add	r7, sp, #0
 80025d6:	6078      	str	r0, [r7, #4]
 80025d8:	000a      	movs	r2, r1
 80025da:	1cfb      	adds	r3, r7, #3
 80025dc:	701a      	strb	r2, [r3, #0]
 80025de:	1cfb      	adds	r3, r7, #3
 80025e0:	781a      	ldrb	r2, [r3, #0]
 80025e2:	6879      	ldr	r1, [r7, #4]
 80025e4:	4b03      	ldr	r3, [pc, #12]	; (80025f4 <err_man_set_dist+0x24>)
 80025e6:	0018      	movs	r0, r3
 80025e8:	f006 fe24 	bl	8009234 <memcpy>
 80025ec:	46c0      	nop			; (mov r8, r8)
 80025ee:	46bd      	mov	sp, r7
 80025f0:	b002      	add	sp, #8
 80025f2:	bd80      	pop	{r7, pc}
 80025f4:	20001708 	.word	0x20001708

080025f8 <err_man_init>:
 80025f8:	b580      	push	{r7, lr}
 80025fa:	af00      	add	r7, sp, #0
 80025fc:	4b09      	ldr	r3, [pc, #36]	; (8002624 <err_man_init+0x2c>)
 80025fe:	2200      	movs	r2, #0
 8002600:	701a      	strb	r2, [r3, #0]
 8002602:	4b08      	ldr	r3, [pc, #32]	; (8002624 <err_man_init+0x2c>)
 8002604:	2200      	movs	r2, #0
 8002606:	769a      	strb	r2, [r3, #26]
 8002608:	4b06      	ldr	r3, [pc, #24]	; (8002624 <err_man_init+0x2c>)
 800260a:	2200      	movs	r2, #0
 800260c:	605a      	str	r2, [r3, #4]
 800260e:	4b05      	ldr	r3, [pc, #20]	; (8002624 <err_man_init+0x2c>)
 8002610:	2200      	movs	r2, #0
 8002612:	705a      	strb	r2, [r3, #1]
 8002614:	f7ff f9ec 	bl	80019f0 <disp_init>
 8002618:	f7ff ff44 	bl	80024a4 <tim_init>
 800261c:	46c0      	nop			; (mov r8, r8)
 800261e:	46bd      	mov	sp, r7
 8002620:	bd80      	pop	{r7, pc}
 8002622:	46c0      	nop			; (mov r8, r8)
 8002624:	20001700 	.word	0x20001700

08002628 <er_man_disp_get>:
 8002628:	b580      	push	{r7, lr}
 800262a:	af00      	add	r7, sp, #0
 800262c:	4b02      	ldr	r3, [pc, #8]	; (8002638 <er_man_disp_get+0x10>)
 800262e:	7e9b      	ldrb	r3, [r3, #26]
 8002630:	0018      	movs	r0, r3
 8002632:	46bd      	mov	sp, r7
 8002634:	bd80      	pop	{r7, pc}
 8002636:	46c0      	nop			; (mov r8, r8)
 8002638:	20001700 	.word	0x20001700

0800263c <er_man_disp_set>:
 800263c:	b580      	push	{r7, lr}
 800263e:	af00      	add	r7, sp, #0
 8002640:	4b02      	ldr	r3, [pc, #8]	; (800264c <er_man_disp_set+0x10>)
 8002642:	2201      	movs	r2, #1
 8002644:	769a      	strb	r2, [r3, #26]
 8002646:	46c0      	nop			; (mov r8, r8)
 8002648:	46bd      	mov	sp, r7
 800264a:	bd80      	pop	{r7, pc}
 800264c:	20001700 	.word	0x20001700

08002650 <er_man_disp_clr>:
 8002650:	b580      	push	{r7, lr}
 8002652:	af00      	add	r7, sp, #0
 8002654:	4b02      	ldr	r3, [pc, #8]	; (8002660 <er_man_disp_clr+0x10>)
 8002656:	2200      	movs	r2, #0
 8002658:	769a      	strb	r2, [r3, #26]
 800265a:	46c0      	nop			; (mov r8, r8)
 800265c:	46bd      	mov	sp, r7
 800265e:	bd80      	pop	{r7, pc}
 8002660:	20001700 	.word	0x20001700

08002664 <er_man_add_err>:
 8002664:	b580      	push	{r7, lr}
 8002666:	b082      	sub	sp, #8
 8002668:	af00      	add	r7, sp, #0
 800266a:	6078      	str	r0, [r7, #4]
 800266c:	000a      	movs	r2, r1
 800266e:	1cfb      	adds	r3, r7, #3
 8002670:	701a      	strb	r2, [r3, #0]
 8002672:	4b0d      	ldr	r3, [pc, #52]	; (80026a8 <er_man_add_err+0x44>)
 8002674:	2211      	movs	r2, #17
 8002676:	6879      	ldr	r1, [r7, #4]
 8002678:	189b      	adds	r3, r3, r2
 800267a:	2209      	movs	r2, #9
 800267c:	0018      	movs	r0, r3
 800267e:	f006 fdd9 	bl	8009234 <memcpy>
 8002682:	4b09      	ldr	r3, [pc, #36]	; (80026a8 <er_man_add_err+0x44>)
 8002684:	1cfa      	adds	r2, r7, #3
 8002686:	7812      	ldrb	r2, [r2, #0]
 8002688:	709a      	strb	r2, [r3, #2]
 800268a:	1cfb      	adds	r3, r7, #3
 800268c:	781b      	ldrb	r3, [r3, #0]
 800268e:	2b00      	cmp	r3, #0
 8002690:	d006      	beq.n	80026a0 <er_man_add_err+0x3c>
 8002692:	4b05      	ldr	r3, [pc, #20]	; (80026a8 <er_man_add_err+0x44>)
 8002694:	781b      	ldrb	r3, [r3, #0]
 8002696:	3301      	adds	r3, #1
 8002698:	b2da      	uxtb	r2, r3
 800269a:	4b03      	ldr	r3, [pc, #12]	; (80026a8 <er_man_add_err+0x44>)
 800269c:	701a      	strb	r2, [r3, #0]
 800269e:	46c0      	nop			; (mov r8, r8)
 80026a0:	46c0      	nop			; (mov r8, r8)
 80026a2:	46bd      	mov	sp, r7
 80026a4:	b002      	add	sp, #8
 80026a6:	bd80      	pop	{r7, pc}
 80026a8:	20001700 	.word	0x20001700

080026ac <TIM3_IRQHandler>:
 80026ac:	b580      	push	{r7, lr}
 80026ae:	af00      	add	r7, sp, #0
 80026b0:	f7ff ffc4 	bl	800263c <er_man_disp_set>
 80026b4:	4b03      	ldr	r3, [pc, #12]	; (80026c4 <TIM3_IRQHandler+0x18>)
 80026b6:	0018      	movs	r0, r3
 80026b8:	f7ff fec4 	bl	8002444 <LL_TIM_ClearFlag_UPDATE>
 80026bc:	46c0      	nop			; (mov r8, r8)
 80026be:	46bd      	mov	sp, r7
 80026c0:	bd80      	pop	{r7, pc}
 80026c2:	46c0      	nop			; (mov r8, r8)
 80026c4:	40000400 	.word	0x40000400

080026c8 <NMI_Handler>:
 80026c8:	b580      	push	{r7, lr}
 80026ca:	af00      	add	r7, sp, #0
 80026cc:	46c0      	nop			; (mov r8, r8)
 80026ce:	46bd      	mov	sp, r7
 80026d0:	bd80      	pop	{r7, pc}

080026d2 <HardFault_Handler>:
 80026d2:	b580      	push	{r7, lr}
 80026d4:	af00      	add	r7, sp, #0
 80026d6:	e7fe      	b.n	80026d6 <HardFault_Handler+0x4>

080026d8 <SVC_Handler>:
 80026d8:	b580      	push	{r7, lr}
 80026da:	af00      	add	r7, sp, #0
 80026dc:	46c0      	nop			; (mov r8, r8)
 80026de:	46bd      	mov	sp, r7
 80026e0:	bd80      	pop	{r7, pc}

080026e2 <PendSV_Handler>:
 80026e2:	b580      	push	{r7, lr}
 80026e4:	af00      	add	r7, sp, #0
 80026e6:	46c0      	nop			; (mov r8, r8)
 80026e8:	46bd      	mov	sp, r7
 80026ea:	bd80      	pop	{r7, pc}

080026ec <NVIC_EnableIRQ>:
 80026ec:	b580      	push	{r7, lr}
 80026ee:	b082      	sub	sp, #8
 80026f0:	af00      	add	r7, sp, #0
 80026f2:	0002      	movs	r2, r0
 80026f4:	1dfb      	adds	r3, r7, #7
 80026f6:	701a      	strb	r2, [r3, #0]
 80026f8:	1dfb      	adds	r3, r7, #7
 80026fa:	781b      	ldrb	r3, [r3, #0]
 80026fc:	001a      	movs	r2, r3
 80026fe:	231f      	movs	r3, #31
 8002700:	401a      	ands	r2, r3
 8002702:	4b04      	ldr	r3, [pc, #16]	; (8002714 <NVIC_EnableIRQ+0x28>)
 8002704:	2101      	movs	r1, #1
 8002706:	4091      	lsls	r1, r2
 8002708:	000a      	movs	r2, r1
 800270a:	601a      	str	r2, [r3, #0]
 800270c:	46c0      	nop			; (mov r8, r8)
 800270e:	46bd      	mov	sp, r7
 8002710:	b002      	add	sp, #8
 8002712:	bd80      	pop	{r7, pc}
 8002714:	e000e100 	.word	0xe000e100

08002718 <NVIC_DisableIRQ>:
 8002718:	b580      	push	{r7, lr}
 800271a:	b082      	sub	sp, #8
 800271c:	af00      	add	r7, sp, #0
 800271e:	0002      	movs	r2, r0
 8002720:	1dfb      	adds	r3, r7, #7
 8002722:	701a      	strb	r2, [r3, #0]
 8002724:	1dfb      	adds	r3, r7, #7
 8002726:	781b      	ldrb	r3, [r3, #0]
 8002728:	001a      	movs	r2, r3
 800272a:	231f      	movs	r3, #31
 800272c:	4013      	ands	r3, r2
 800272e:	4905      	ldr	r1, [pc, #20]	; (8002744 <NVIC_DisableIRQ+0x2c>)
 8002730:	2201      	movs	r2, #1
 8002732:	409a      	lsls	r2, r3
 8002734:	0013      	movs	r3, r2
 8002736:	2280      	movs	r2, #128	; 0x80
 8002738:	508b      	str	r3, [r1, r2]
 800273a:	46c0      	nop			; (mov r8, r8)
 800273c:	46bd      	mov	sp, r7
 800273e:	b002      	add	sp, #8
 8002740:	bd80      	pop	{r7, pc}
 8002742:	46c0      	nop			; (mov r8, r8)
 8002744:	e000e100 	.word	0xe000e100

08002748 <NVIC_SetPriority>:
 8002748:	b590      	push	{r4, r7, lr}
 800274a:	b083      	sub	sp, #12
 800274c:	af00      	add	r7, sp, #0
 800274e:	0002      	movs	r2, r0
 8002750:	6039      	str	r1, [r7, #0]
 8002752:	1dfb      	adds	r3, r7, #7
 8002754:	701a      	strb	r2, [r3, #0]
 8002756:	1dfb      	adds	r3, r7, #7
 8002758:	781b      	ldrb	r3, [r3, #0]
 800275a:	2b7f      	cmp	r3, #127	; 0x7f
 800275c:	d932      	bls.n	80027c4 <NVIC_SetPriority+0x7c>
 800275e:	4a2f      	ldr	r2, [pc, #188]	; (800281c <NVIC_SetPriority+0xd4>)
 8002760:	1dfb      	adds	r3, r7, #7
 8002762:	781b      	ldrb	r3, [r3, #0]
 8002764:	0019      	movs	r1, r3
 8002766:	230f      	movs	r3, #15
 8002768:	400b      	ands	r3, r1
 800276a:	3b08      	subs	r3, #8
 800276c:	089b      	lsrs	r3, r3, #2
 800276e:	3306      	adds	r3, #6
 8002770:	009b      	lsls	r3, r3, #2
 8002772:	18d3      	adds	r3, r2, r3
 8002774:	3304      	adds	r3, #4
 8002776:	681b      	ldr	r3, [r3, #0]
 8002778:	1dfa      	adds	r2, r7, #7
 800277a:	7812      	ldrb	r2, [r2, #0]
 800277c:	0011      	movs	r1, r2
 800277e:	2203      	movs	r2, #3
 8002780:	400a      	ands	r2, r1
 8002782:	00d2      	lsls	r2, r2, #3
 8002784:	21ff      	movs	r1, #255	; 0xff
 8002786:	4091      	lsls	r1, r2
 8002788:	000a      	movs	r2, r1
 800278a:	43d2      	mvns	r2, r2
 800278c:	401a      	ands	r2, r3
 800278e:	0011      	movs	r1, r2
 8002790:	683b      	ldr	r3, [r7, #0]
 8002792:	019b      	lsls	r3, r3, #6
 8002794:	22ff      	movs	r2, #255	; 0xff
 8002796:	401a      	ands	r2, r3
 8002798:	1dfb      	adds	r3, r7, #7
 800279a:	781b      	ldrb	r3, [r3, #0]
 800279c:	0018      	movs	r0, r3
 800279e:	2303      	movs	r3, #3
 80027a0:	4003      	ands	r3, r0
 80027a2:	00db      	lsls	r3, r3, #3
 80027a4:	409a      	lsls	r2, r3
 80027a6:	481d      	ldr	r0, [pc, #116]	; (800281c <NVIC_SetPriority+0xd4>)
 80027a8:	1dfb      	adds	r3, r7, #7
 80027aa:	781b      	ldrb	r3, [r3, #0]
 80027ac:	001c      	movs	r4, r3
 80027ae:	230f      	movs	r3, #15
 80027b0:	4023      	ands	r3, r4
 80027b2:	3b08      	subs	r3, #8
 80027b4:	089b      	lsrs	r3, r3, #2
 80027b6:	430a      	orrs	r2, r1
 80027b8:	3306      	adds	r3, #6
 80027ba:	009b      	lsls	r3, r3, #2
 80027bc:	18c3      	adds	r3, r0, r3
 80027be:	3304      	adds	r3, #4
 80027c0:	601a      	str	r2, [r3, #0]
 80027c2:	e027      	b.n	8002814 <NVIC_SetPriority+0xcc>
 80027c4:	4a16      	ldr	r2, [pc, #88]	; (8002820 <NVIC_SetPriority+0xd8>)
 80027c6:	1dfb      	adds	r3, r7, #7
 80027c8:	781b      	ldrb	r3, [r3, #0]
 80027ca:	b25b      	sxtb	r3, r3
 80027cc:	089b      	lsrs	r3, r3, #2
 80027ce:	33c0      	adds	r3, #192	; 0xc0
 80027d0:	009b      	lsls	r3, r3, #2
 80027d2:	589b      	ldr	r3, [r3, r2]
 80027d4:	1dfa      	adds	r2, r7, #7
 80027d6:	7812      	ldrb	r2, [r2, #0]
 80027d8:	0011      	movs	r1, r2
 80027da:	2203      	movs	r2, #3
 80027dc:	400a      	ands	r2, r1
 80027de:	00d2      	lsls	r2, r2, #3
 80027e0:	21ff      	movs	r1, #255	; 0xff
 80027e2:	4091      	lsls	r1, r2
 80027e4:	000a      	movs	r2, r1
 80027e6:	43d2      	mvns	r2, r2
 80027e8:	401a      	ands	r2, r3
 80027ea:	0011      	movs	r1, r2
 80027ec:	683b      	ldr	r3, [r7, #0]
 80027ee:	019b      	lsls	r3, r3, #6
 80027f0:	22ff      	movs	r2, #255	; 0xff
 80027f2:	401a      	ands	r2, r3
 80027f4:	1dfb      	adds	r3, r7, #7
 80027f6:	781b      	ldrb	r3, [r3, #0]
 80027f8:	0018      	movs	r0, r3
 80027fa:	2303      	movs	r3, #3
 80027fc:	4003      	ands	r3, r0
 80027fe:	00db      	lsls	r3, r3, #3
 8002800:	409a      	lsls	r2, r3
 8002802:	4807      	ldr	r0, [pc, #28]	; (8002820 <NVIC_SetPriority+0xd8>)
 8002804:	1dfb      	adds	r3, r7, #7
 8002806:	781b      	ldrb	r3, [r3, #0]
 8002808:	b25b      	sxtb	r3, r3
 800280a:	089b      	lsrs	r3, r3, #2
 800280c:	430a      	orrs	r2, r1
 800280e:	33c0      	adds	r3, #192	; 0xc0
 8002810:	009b      	lsls	r3, r3, #2
 8002812:	501a      	str	r2, [r3, r0]
 8002814:	46c0      	nop			; (mov r8, r8)
 8002816:	46bd      	mov	sp, r7
 8002818:	b003      	add	sp, #12
 800281a:	bd90      	pop	{r4, r7, pc}
 800281c:	e000ed00 	.word	0xe000ed00
 8002820:	e000e100 	.word	0xe000e100

08002824 <LL_USART_Enable>:
 8002824:	b580      	push	{r7, lr}
 8002826:	b082      	sub	sp, #8
 8002828:	af00      	add	r7, sp, #0
 800282a:	6078      	str	r0, [r7, #4]
 800282c:	687b      	ldr	r3, [r7, #4]
 800282e:	681b      	ldr	r3, [r3, #0]
 8002830:	2201      	movs	r2, #1
 8002832:	431a      	orrs	r2, r3
 8002834:	687b      	ldr	r3, [r7, #4]
 8002836:	601a      	str	r2, [r3, #0]
 8002838:	46c0      	nop			; (mov r8, r8)
 800283a:	46bd      	mov	sp, r7
 800283c:	b002      	add	sp, #8
 800283e:	bd80      	pop	{r7, pc}

08002840 <LL_USART_SetTransferDirection>:
 8002840:	b580      	push	{r7, lr}
 8002842:	b082      	sub	sp, #8
 8002844:	af00      	add	r7, sp, #0
 8002846:	6078      	str	r0, [r7, #4]
 8002848:	6039      	str	r1, [r7, #0]
 800284a:	687b      	ldr	r3, [r7, #4]
 800284c:	681b      	ldr	r3, [r3, #0]
 800284e:	220c      	movs	r2, #12
 8002850:	4393      	bics	r3, r2
 8002852:	001a      	movs	r2, r3
 8002854:	683b      	ldr	r3, [r7, #0]
 8002856:	431a      	orrs	r2, r3
 8002858:	687b      	ldr	r3, [r7, #4]
 800285a:	601a      	str	r2, [r3, #0]
 800285c:	46c0      	nop			; (mov r8, r8)
 800285e:	46bd      	mov	sp, r7
 8002860:	b002      	add	sp, #8
 8002862:	bd80      	pop	{r7, pc}

08002864 <LL_USART_SetParity>:
 8002864:	b580      	push	{r7, lr}
 8002866:	b082      	sub	sp, #8
 8002868:	af00      	add	r7, sp, #0
 800286a:	6078      	str	r0, [r7, #4]
 800286c:	6039      	str	r1, [r7, #0]
 800286e:	687b      	ldr	r3, [r7, #4]
 8002870:	681b      	ldr	r3, [r3, #0]
 8002872:	4a05      	ldr	r2, [pc, #20]	; (8002888 <LL_USART_SetParity+0x24>)
 8002874:	401a      	ands	r2, r3
 8002876:	683b      	ldr	r3, [r7, #0]
 8002878:	431a      	orrs	r2, r3
 800287a:	687b      	ldr	r3, [r7, #4]
 800287c:	601a      	str	r2, [r3, #0]
 800287e:	46c0      	nop			; (mov r8, r8)
 8002880:	46bd      	mov	sp, r7
 8002882:	b002      	add	sp, #8
 8002884:	bd80      	pop	{r7, pc}
 8002886:	46c0      	nop			; (mov r8, r8)
 8002888:	fffff9ff 	.word	0xfffff9ff

0800288c <LL_USART_SetDataWidth>:
 800288c:	b580      	push	{r7, lr}
 800288e:	b082      	sub	sp, #8
 8002890:	af00      	add	r7, sp, #0
 8002892:	6078      	str	r0, [r7, #4]
 8002894:	6039      	str	r1, [r7, #0]
 8002896:	687b      	ldr	r3, [r7, #4]
 8002898:	681b      	ldr	r3, [r3, #0]
 800289a:	4a05      	ldr	r2, [pc, #20]	; (80028b0 <LL_USART_SetDataWidth+0x24>)
 800289c:	401a      	ands	r2, r3
 800289e:	683b      	ldr	r3, [r7, #0]
 80028a0:	431a      	orrs	r2, r3
 80028a2:	687b      	ldr	r3, [r7, #4]
 80028a4:	601a      	str	r2, [r3, #0]
 80028a6:	46c0      	nop			; (mov r8, r8)
 80028a8:	46bd      	mov	sp, r7
 80028aa:	b002      	add	sp, #8
 80028ac:	bd80      	pop	{r7, pc}
 80028ae:	46c0      	nop			; (mov r8, r8)
 80028b0:	ffffefff 	.word	0xffffefff

080028b4 <LL_USART_SetStopBitsLength>:
 80028b4:	b580      	push	{r7, lr}
 80028b6:	b082      	sub	sp, #8
 80028b8:	af00      	add	r7, sp, #0
 80028ba:	6078      	str	r0, [r7, #4]
 80028bc:	6039      	str	r1, [r7, #0]
 80028be:	687b      	ldr	r3, [r7, #4]
 80028c0:	685b      	ldr	r3, [r3, #4]
 80028c2:	4a05      	ldr	r2, [pc, #20]	; (80028d8 <LL_USART_SetStopBitsLength+0x24>)
 80028c4:	401a      	ands	r2, r3
 80028c6:	683b      	ldr	r3, [r7, #0]
 80028c8:	431a      	orrs	r2, r3
 80028ca:	687b      	ldr	r3, [r7, #4]
 80028cc:	605a      	str	r2, [r3, #4]
 80028ce:	46c0      	nop			; (mov r8, r8)
 80028d0:	46bd      	mov	sp, r7
 80028d2:	b002      	add	sp, #8
 80028d4:	bd80      	pop	{r7, pc}
 80028d6:	46c0      	nop			; (mov r8, r8)
 80028d8:	ffffcfff 	.word	0xffffcfff

080028dc <LL_USART_SetBaudRate>:
 80028dc:	b5b0      	push	{r4, r5, r7, lr}
 80028de:	b084      	sub	sp, #16
 80028e0:	af00      	add	r7, sp, #0
 80028e2:	60f8      	str	r0, [r7, #12]
 80028e4:	60b9      	str	r1, [r7, #8]
 80028e6:	607a      	str	r2, [r7, #4]
 80028e8:	603b      	str	r3, [r7, #0]
 80028ea:	2500      	movs	r5, #0
 80028ec:	2400      	movs	r4, #0
 80028ee:	687a      	ldr	r2, [r7, #4]
 80028f0:	2380      	movs	r3, #128	; 0x80
 80028f2:	021b      	lsls	r3, r3, #8
 80028f4:	429a      	cmp	r2, r3
 80028f6:	d117      	bne.n	8002928 <LL_USART_SetBaudRate+0x4c>
 80028f8:	68bb      	ldr	r3, [r7, #8]
 80028fa:	005a      	lsls	r2, r3, #1
 80028fc:	683b      	ldr	r3, [r7, #0]
 80028fe:	085b      	lsrs	r3, r3, #1
 8002900:	18d3      	adds	r3, r2, r3
 8002902:	6839      	ldr	r1, [r7, #0]
 8002904:	0018      	movs	r0, r3
 8002906:	f7fd fbff 	bl	8000108 <__udivsi3>
 800290a:	0003      	movs	r3, r0
 800290c:	b29b      	uxth	r3, r3
 800290e:	001d      	movs	r5, r3
 8002910:	4b0e      	ldr	r3, [pc, #56]	; (800294c <LL_USART_SetBaudRate+0x70>)
 8002912:	402b      	ands	r3, r5
 8002914:	001c      	movs	r4, r3
 8002916:	086b      	lsrs	r3, r5, #1
 8002918:	b29b      	uxth	r3, r3
 800291a:	001a      	movs	r2, r3
 800291c:	2307      	movs	r3, #7
 800291e:	4013      	ands	r3, r2
 8002920:	431c      	orrs	r4, r3
 8002922:	68fb      	ldr	r3, [r7, #12]
 8002924:	60dc      	str	r4, [r3, #12]
 8002926:	e00c      	b.n	8002942 <LL_USART_SetBaudRate+0x66>
 8002928:	683b      	ldr	r3, [r7, #0]
 800292a:	085a      	lsrs	r2, r3, #1
 800292c:	68bb      	ldr	r3, [r7, #8]
 800292e:	18d3      	adds	r3, r2, r3
 8002930:	6839      	ldr	r1, [r7, #0]
 8002932:	0018      	movs	r0, r3
 8002934:	f7fd fbe8 	bl	8000108 <__udivsi3>
 8002938:	0003      	movs	r3, r0
 800293a:	b29b      	uxth	r3, r3
 800293c:	001a      	movs	r2, r3
 800293e:	68fb      	ldr	r3, [r7, #12]
 8002940:	60da      	str	r2, [r3, #12]
 8002942:	46c0      	nop			; (mov r8, r8)
 8002944:	46bd      	mov	sp, r7
 8002946:	b004      	add	sp, #16
 8002948:	bdb0      	pop	{r4, r5, r7, pc}
 800294a:	46c0      	nop			; (mov r8, r8)
 800294c:	0000fff0 	.word	0x0000fff0

08002950 <LL_USART_IsActiveFlag_TC>:
 8002950:	b580      	push	{r7, lr}
 8002952:	b082      	sub	sp, #8
 8002954:	af00      	add	r7, sp, #0
 8002956:	6078      	str	r0, [r7, #4]
 8002958:	687b      	ldr	r3, [r7, #4]
 800295a:	69db      	ldr	r3, [r3, #28]
 800295c:	2240      	movs	r2, #64	; 0x40
 800295e:	4013      	ands	r3, r2
 8002960:	3b40      	subs	r3, #64	; 0x40
 8002962:	425a      	negs	r2, r3
 8002964:	4153      	adcs	r3, r2
 8002966:	b2db      	uxtb	r3, r3
 8002968:	0018      	movs	r0, r3
 800296a:	46bd      	mov	sp, r7
 800296c:	b002      	add	sp, #8
 800296e:	bd80      	pop	{r7, pc}

08002970 <LL_USART_IsActiveFlag_TXE>:
 8002970:	b580      	push	{r7, lr}
 8002972:	b082      	sub	sp, #8
 8002974:	af00      	add	r7, sp, #0
 8002976:	6078      	str	r0, [r7, #4]
 8002978:	687b      	ldr	r3, [r7, #4]
 800297a:	69db      	ldr	r3, [r3, #28]
 800297c:	2280      	movs	r2, #128	; 0x80
 800297e:	4013      	ands	r3, r2
 8002980:	3b80      	subs	r3, #128	; 0x80
 8002982:	425a      	negs	r2, r3
 8002984:	4153      	adcs	r3, r2
 8002986:	b2db      	uxtb	r3, r3
 8002988:	0018      	movs	r0, r3
 800298a:	46bd      	mov	sp, r7
 800298c:	b002      	add	sp, #8
 800298e:	bd80      	pop	{r7, pc}

08002990 <LL_USART_ClearFlag_TC>:
 8002990:	b580      	push	{r7, lr}
 8002992:	b082      	sub	sp, #8
 8002994:	af00      	add	r7, sp, #0
 8002996:	6078      	str	r0, [r7, #4]
 8002998:	687b      	ldr	r3, [r7, #4]
 800299a:	2240      	movs	r2, #64	; 0x40
 800299c:	621a      	str	r2, [r3, #32]
 800299e:	46c0      	nop			; (mov r8, r8)
 80029a0:	46bd      	mov	sp, r7
 80029a2:	b002      	add	sp, #8
 80029a4:	bd80      	pop	{r7, pc}

080029a6 <LL_USART_EnableDMAReq_RX>:
 80029a6:	b580      	push	{r7, lr}
 80029a8:	b082      	sub	sp, #8
 80029aa:	af00      	add	r7, sp, #0
 80029ac:	6078      	str	r0, [r7, #4]
 80029ae:	687b      	ldr	r3, [r7, #4]
 80029b0:	689b      	ldr	r3, [r3, #8]
 80029b2:	2240      	movs	r2, #64	; 0x40
 80029b4:	431a      	orrs	r2, r3
 80029b6:	687b      	ldr	r3, [r7, #4]
 80029b8:	609a      	str	r2, [r3, #8]
 80029ba:	46c0      	nop			; (mov r8, r8)
 80029bc:	46bd      	mov	sp, r7
 80029be:	b002      	add	sp, #8
 80029c0:	bd80      	pop	{r7, pc}

080029c2 <LL_USART_TransmitData8>:
 80029c2:	b580      	push	{r7, lr}
 80029c4:	b082      	sub	sp, #8
 80029c6:	af00      	add	r7, sp, #0
 80029c8:	6078      	str	r0, [r7, #4]
 80029ca:	000a      	movs	r2, r1
 80029cc:	1cfb      	adds	r3, r7, #3
 80029ce:	701a      	strb	r2, [r3, #0]
 80029d0:	1cfb      	adds	r3, r7, #3
 80029d2:	781b      	ldrb	r3, [r3, #0]
 80029d4:	b29a      	uxth	r2, r3
 80029d6:	687b      	ldr	r3, [r7, #4]
 80029d8:	851a      	strh	r2, [r3, #40]	; 0x28
 80029da:	46c0      	nop			; (mov r8, r8)
 80029dc:	46bd      	mov	sp, r7
 80029de:	b002      	add	sp, #8
 80029e0:	bd80      	pop	{r7, pc}
	...

080029e4 <LL_DMA_EnableChannel>:
 80029e4:	b580      	push	{r7, lr}
 80029e6:	b082      	sub	sp, #8
 80029e8:	af00      	add	r7, sp, #0
 80029ea:	6078      	str	r0, [r7, #4]
 80029ec:	6039      	str	r1, [r7, #0]
 80029ee:	683b      	ldr	r3, [r7, #0]
 80029f0:	3b01      	subs	r3, #1
 80029f2:	4a0a      	ldr	r2, [pc, #40]	; (8002a1c <LL_DMA_EnableChannel+0x38>)
 80029f4:	5cd3      	ldrb	r3, [r2, r3]
 80029f6:	001a      	movs	r2, r3
 80029f8:	687b      	ldr	r3, [r7, #4]
 80029fa:	18d3      	adds	r3, r2, r3
 80029fc:	681a      	ldr	r2, [r3, #0]
 80029fe:	683b      	ldr	r3, [r7, #0]
 8002a00:	3b01      	subs	r3, #1
 8002a02:	4906      	ldr	r1, [pc, #24]	; (8002a1c <LL_DMA_EnableChannel+0x38>)
 8002a04:	5ccb      	ldrb	r3, [r1, r3]
 8002a06:	0019      	movs	r1, r3
 8002a08:	687b      	ldr	r3, [r7, #4]
 8002a0a:	18cb      	adds	r3, r1, r3
 8002a0c:	2101      	movs	r1, #1
 8002a0e:	430a      	orrs	r2, r1
 8002a10:	601a      	str	r2, [r3, #0]
 8002a12:	46c0      	nop			; (mov r8, r8)
 8002a14:	46bd      	mov	sp, r7
 8002a16:	b002      	add	sp, #8
 8002a18:	bd80      	pop	{r7, pc}
 8002a1a:	46c0      	nop			; (mov r8, r8)
 8002a1c:	08009c2c 	.word	0x08009c2c

08002a20 <LL_DMA_SetMode>:
 8002a20:	b580      	push	{r7, lr}
 8002a22:	b084      	sub	sp, #16
 8002a24:	af00      	add	r7, sp, #0
 8002a26:	60f8      	str	r0, [r7, #12]
 8002a28:	60b9      	str	r1, [r7, #8]
 8002a2a:	607a      	str	r2, [r7, #4]
 8002a2c:	68bb      	ldr	r3, [r7, #8]
 8002a2e:	3b01      	subs	r3, #1
 8002a30:	4a0b      	ldr	r2, [pc, #44]	; (8002a60 <LL_DMA_SetMode+0x40>)
 8002a32:	5cd3      	ldrb	r3, [r2, r3]
 8002a34:	001a      	movs	r2, r3
 8002a36:	68fb      	ldr	r3, [r7, #12]
 8002a38:	18d3      	adds	r3, r2, r3
 8002a3a:	681b      	ldr	r3, [r3, #0]
 8002a3c:	2220      	movs	r2, #32
 8002a3e:	4393      	bics	r3, r2
 8002a40:	0019      	movs	r1, r3
 8002a42:	68bb      	ldr	r3, [r7, #8]
 8002a44:	3b01      	subs	r3, #1
 8002a46:	4a06      	ldr	r2, [pc, #24]	; (8002a60 <LL_DMA_SetMode+0x40>)
 8002a48:	5cd3      	ldrb	r3, [r2, r3]
 8002a4a:	001a      	movs	r2, r3
 8002a4c:	68fb      	ldr	r3, [r7, #12]
 8002a4e:	18d3      	adds	r3, r2, r3
 8002a50:	687a      	ldr	r2, [r7, #4]
 8002a52:	430a      	orrs	r2, r1
 8002a54:	601a      	str	r2, [r3, #0]
 8002a56:	46c0      	nop			; (mov r8, r8)
 8002a58:	46bd      	mov	sp, r7
 8002a5a:	b004      	add	sp, #16
 8002a5c:	bd80      	pop	{r7, pc}
 8002a5e:	46c0      	nop			; (mov r8, r8)
 8002a60:	08009c2c 	.word	0x08009c2c

08002a64 <LL_DMA_SetMemoryIncMode>:
 8002a64:	b580      	push	{r7, lr}
 8002a66:	b084      	sub	sp, #16
 8002a68:	af00      	add	r7, sp, #0
 8002a6a:	60f8      	str	r0, [r7, #12]
 8002a6c:	60b9      	str	r1, [r7, #8]
 8002a6e:	607a      	str	r2, [r7, #4]
 8002a70:	68bb      	ldr	r3, [r7, #8]
 8002a72:	3b01      	subs	r3, #1
 8002a74:	4a0b      	ldr	r2, [pc, #44]	; (8002aa4 <LL_DMA_SetMemoryIncMode+0x40>)
 8002a76:	5cd3      	ldrb	r3, [r2, r3]
 8002a78:	001a      	movs	r2, r3
 8002a7a:	68fb      	ldr	r3, [r7, #12]
 8002a7c:	18d3      	adds	r3, r2, r3
 8002a7e:	681b      	ldr	r3, [r3, #0]
 8002a80:	2280      	movs	r2, #128	; 0x80
 8002a82:	4393      	bics	r3, r2
 8002a84:	0019      	movs	r1, r3
 8002a86:	68bb      	ldr	r3, [r7, #8]
 8002a88:	3b01      	subs	r3, #1
 8002a8a:	4a06      	ldr	r2, [pc, #24]	; (8002aa4 <LL_DMA_SetMemoryIncMode+0x40>)
 8002a8c:	5cd3      	ldrb	r3, [r2, r3]
 8002a8e:	001a      	movs	r2, r3
 8002a90:	68fb      	ldr	r3, [r7, #12]
 8002a92:	18d3      	adds	r3, r2, r3
 8002a94:	687a      	ldr	r2, [r7, #4]
 8002a96:	430a      	orrs	r2, r1
 8002a98:	601a      	str	r2, [r3, #0]
 8002a9a:	46c0      	nop			; (mov r8, r8)
 8002a9c:	46bd      	mov	sp, r7
 8002a9e:	b004      	add	sp, #16
 8002aa0:	bd80      	pop	{r7, pc}
 8002aa2:	46c0      	nop			; (mov r8, r8)
 8002aa4:	08009c2c 	.word	0x08009c2c

08002aa8 <LL_DMA_SetDataLength>:
 8002aa8:	b580      	push	{r7, lr}
 8002aaa:	b084      	sub	sp, #16
 8002aac:	af00      	add	r7, sp, #0
 8002aae:	60f8      	str	r0, [r7, #12]
 8002ab0:	60b9      	str	r1, [r7, #8]
 8002ab2:	607a      	str	r2, [r7, #4]
 8002ab4:	68bb      	ldr	r3, [r7, #8]
 8002ab6:	3b01      	subs	r3, #1
 8002ab8:	4a0a      	ldr	r2, [pc, #40]	; (8002ae4 <LL_DMA_SetDataLength+0x3c>)
 8002aba:	5cd3      	ldrb	r3, [r2, r3]
 8002abc:	001a      	movs	r2, r3
 8002abe:	68fb      	ldr	r3, [r7, #12]
 8002ac0:	18d3      	adds	r3, r2, r3
 8002ac2:	685b      	ldr	r3, [r3, #4]
 8002ac4:	0c1b      	lsrs	r3, r3, #16
 8002ac6:	0419      	lsls	r1, r3, #16
 8002ac8:	68bb      	ldr	r3, [r7, #8]
 8002aca:	3b01      	subs	r3, #1
 8002acc:	4a05      	ldr	r2, [pc, #20]	; (8002ae4 <LL_DMA_SetDataLength+0x3c>)
 8002ace:	5cd3      	ldrb	r3, [r2, r3]
 8002ad0:	001a      	movs	r2, r3
 8002ad2:	68fb      	ldr	r3, [r7, #12]
 8002ad4:	18d3      	adds	r3, r2, r3
 8002ad6:	687a      	ldr	r2, [r7, #4]
 8002ad8:	430a      	orrs	r2, r1
 8002ada:	605a      	str	r2, [r3, #4]
 8002adc:	46c0      	nop			; (mov r8, r8)
 8002ade:	46bd      	mov	sp, r7
 8002ae0:	b004      	add	sp, #16
 8002ae2:	bd80      	pop	{r7, pc}
 8002ae4:	08009c2c 	.word	0x08009c2c

08002ae8 <LL_DMA_ConfigAddresses>:
 8002ae8:	b580      	push	{r7, lr}
 8002aea:	b084      	sub	sp, #16
 8002aec:	af00      	add	r7, sp, #0
 8002aee:	60f8      	str	r0, [r7, #12]
 8002af0:	60b9      	str	r1, [r7, #8]
 8002af2:	607a      	str	r2, [r7, #4]
 8002af4:	603b      	str	r3, [r7, #0]
 8002af6:	69bb      	ldr	r3, [r7, #24]
 8002af8:	2b10      	cmp	r3, #16
 8002afa:	d112      	bne.n	8002b22 <LL_DMA_ConfigAddresses+0x3a>
 8002afc:	68bb      	ldr	r3, [r7, #8]
 8002afe:	3b01      	subs	r3, #1
 8002b00:	4a13      	ldr	r2, [pc, #76]	; (8002b50 <LL_DMA_ConfigAddresses+0x68>)
 8002b02:	5cd3      	ldrb	r3, [r2, r3]
 8002b04:	001a      	movs	r2, r3
 8002b06:	68fb      	ldr	r3, [r7, #12]
 8002b08:	18d3      	adds	r3, r2, r3
 8002b0a:	687a      	ldr	r2, [r7, #4]
 8002b0c:	60da      	str	r2, [r3, #12]
 8002b0e:	68bb      	ldr	r3, [r7, #8]
 8002b10:	3b01      	subs	r3, #1
 8002b12:	4a0f      	ldr	r2, [pc, #60]	; (8002b50 <LL_DMA_ConfigAddresses+0x68>)
 8002b14:	5cd3      	ldrb	r3, [r2, r3]
 8002b16:	001a      	movs	r2, r3
 8002b18:	68fb      	ldr	r3, [r7, #12]
 8002b1a:	18d3      	adds	r3, r2, r3
 8002b1c:	683a      	ldr	r2, [r7, #0]
 8002b1e:	609a      	str	r2, [r3, #8]
 8002b20:	e011      	b.n	8002b46 <LL_DMA_ConfigAddresses+0x5e>
 8002b22:	68bb      	ldr	r3, [r7, #8]
 8002b24:	3b01      	subs	r3, #1
 8002b26:	4a0a      	ldr	r2, [pc, #40]	; (8002b50 <LL_DMA_ConfigAddresses+0x68>)
 8002b28:	5cd3      	ldrb	r3, [r2, r3]
 8002b2a:	001a      	movs	r2, r3
 8002b2c:	68fb      	ldr	r3, [r7, #12]
 8002b2e:	18d3      	adds	r3, r2, r3
 8002b30:	687a      	ldr	r2, [r7, #4]
 8002b32:	609a      	str	r2, [r3, #8]
 8002b34:	68bb      	ldr	r3, [r7, #8]
 8002b36:	3b01      	subs	r3, #1
 8002b38:	4a05      	ldr	r2, [pc, #20]	; (8002b50 <LL_DMA_ConfigAddresses+0x68>)
 8002b3a:	5cd3      	ldrb	r3, [r2, r3]
 8002b3c:	001a      	movs	r2, r3
 8002b3e:	68fb      	ldr	r3, [r7, #12]
 8002b40:	18d3      	adds	r3, r2, r3
 8002b42:	683a      	ldr	r2, [r7, #0]
 8002b44:	60da      	str	r2, [r3, #12]
 8002b46:	46c0      	nop			; (mov r8, r8)
 8002b48:	46bd      	mov	sp, r7
 8002b4a:	b004      	add	sp, #16
 8002b4c:	bd80      	pop	{r7, pc}
 8002b4e:	46c0      	nop			; (mov r8, r8)
 8002b50:	08009c2c 	.word	0x08009c2c

08002b54 <LL_DMA_IsActiveFlag_TC5>:
 8002b54:	b580      	push	{r7, lr}
 8002b56:	b082      	sub	sp, #8
 8002b58:	af00      	add	r7, sp, #0
 8002b5a:	6078      	str	r0, [r7, #4]
 8002b5c:	687b      	ldr	r3, [r7, #4]
 8002b5e:	681a      	ldr	r2, [r3, #0]
 8002b60:	2380      	movs	r3, #128	; 0x80
 8002b62:	029b      	lsls	r3, r3, #10
 8002b64:	4013      	ands	r3, r2
 8002b66:	4a05      	ldr	r2, [pc, #20]	; (8002b7c <LL_DMA_IsActiveFlag_TC5+0x28>)
 8002b68:	4694      	mov	ip, r2
 8002b6a:	4463      	add	r3, ip
 8002b6c:	425a      	negs	r2, r3
 8002b6e:	4153      	adcs	r3, r2
 8002b70:	b2db      	uxtb	r3, r3
 8002b72:	0018      	movs	r0, r3
 8002b74:	46bd      	mov	sp, r7
 8002b76:	b002      	add	sp, #8
 8002b78:	bd80      	pop	{r7, pc}
 8002b7a:	46c0      	nop			; (mov r8, r8)
 8002b7c:	fffe0000 	.word	0xfffe0000

08002b80 <LL_DMA_ClearFlag_TC5>:
 8002b80:	b580      	push	{r7, lr}
 8002b82:	b082      	sub	sp, #8
 8002b84:	af00      	add	r7, sp, #0
 8002b86:	6078      	str	r0, [r7, #4]
 8002b88:	687b      	ldr	r3, [r7, #4]
 8002b8a:	2280      	movs	r2, #128	; 0x80
 8002b8c:	0292      	lsls	r2, r2, #10
 8002b8e:	605a      	str	r2, [r3, #4]
 8002b90:	46c0      	nop			; (mov r8, r8)
 8002b92:	46bd      	mov	sp, r7
 8002b94:	b002      	add	sp, #8
 8002b96:	bd80      	pop	{r7, pc}

08002b98 <LL_DMA_EnableIT_TC>:
 8002b98:	b580      	push	{r7, lr}
 8002b9a:	b082      	sub	sp, #8
 8002b9c:	af00      	add	r7, sp, #0
 8002b9e:	6078      	str	r0, [r7, #4]
 8002ba0:	6039      	str	r1, [r7, #0]
 8002ba2:	683b      	ldr	r3, [r7, #0]
 8002ba4:	3b01      	subs	r3, #1
 8002ba6:	4a0a      	ldr	r2, [pc, #40]	; (8002bd0 <LL_DMA_EnableIT_TC+0x38>)
 8002ba8:	5cd3      	ldrb	r3, [r2, r3]
 8002baa:	001a      	movs	r2, r3
 8002bac:	687b      	ldr	r3, [r7, #4]
 8002bae:	18d3      	adds	r3, r2, r3
 8002bb0:	681a      	ldr	r2, [r3, #0]
 8002bb2:	683b      	ldr	r3, [r7, #0]
 8002bb4:	3b01      	subs	r3, #1
 8002bb6:	4906      	ldr	r1, [pc, #24]	; (8002bd0 <LL_DMA_EnableIT_TC+0x38>)
 8002bb8:	5ccb      	ldrb	r3, [r1, r3]
 8002bba:	0019      	movs	r1, r3
 8002bbc:	687b      	ldr	r3, [r7, #4]
 8002bbe:	18cb      	adds	r3, r1, r3
 8002bc0:	2102      	movs	r1, #2
 8002bc2:	430a      	orrs	r2, r1
 8002bc4:	601a      	str	r2, [r3, #0]
 8002bc6:	46c0      	nop			; (mov r8, r8)
 8002bc8:	46bd      	mov	sp, r7
 8002bca:	b002      	add	sp, #8
 8002bcc:	bd80      	pop	{r7, pc}
 8002bce:	46c0      	nop			; (mov r8, r8)
 8002bd0:	08009c2c 	.word	0x08009c2c

08002bd4 <LL_GPIO_SetPinMode>:
 8002bd4:	b580      	push	{r7, lr}
 8002bd6:	b084      	sub	sp, #16
 8002bd8:	af00      	add	r7, sp, #0
 8002bda:	60f8      	str	r0, [r7, #12]
 8002bdc:	60b9      	str	r1, [r7, #8]
 8002bde:	607a      	str	r2, [r7, #4]
 8002be0:	68fb      	ldr	r3, [r7, #12]
 8002be2:	6819      	ldr	r1, [r3, #0]
 8002be4:	68bb      	ldr	r3, [r7, #8]
 8002be6:	435b      	muls	r3, r3
 8002be8:	001a      	movs	r2, r3
 8002bea:	0013      	movs	r3, r2
 8002bec:	005b      	lsls	r3, r3, #1
 8002bee:	189b      	adds	r3, r3, r2
 8002bf0:	43db      	mvns	r3, r3
 8002bf2:	400b      	ands	r3, r1
 8002bf4:	001a      	movs	r2, r3
 8002bf6:	68bb      	ldr	r3, [r7, #8]
 8002bf8:	435b      	muls	r3, r3
 8002bfa:	6879      	ldr	r1, [r7, #4]
 8002bfc:	434b      	muls	r3, r1
 8002bfe:	431a      	orrs	r2, r3
 8002c00:	68fb      	ldr	r3, [r7, #12]
 8002c02:	601a      	str	r2, [r3, #0]
 8002c04:	46c0      	nop			; (mov r8, r8)
 8002c06:	46bd      	mov	sp, r7
 8002c08:	b004      	add	sp, #16
 8002c0a:	bd80      	pop	{r7, pc}

08002c0c <LL_GPIO_SetPinOutputType>:
 8002c0c:	b580      	push	{r7, lr}
 8002c0e:	b084      	sub	sp, #16
 8002c10:	af00      	add	r7, sp, #0
 8002c12:	60f8      	str	r0, [r7, #12]
 8002c14:	60b9      	str	r1, [r7, #8]
 8002c16:	607a      	str	r2, [r7, #4]
 8002c18:	68fb      	ldr	r3, [r7, #12]
 8002c1a:	685b      	ldr	r3, [r3, #4]
 8002c1c:	68ba      	ldr	r2, [r7, #8]
 8002c1e:	43d2      	mvns	r2, r2
 8002c20:	401a      	ands	r2, r3
 8002c22:	68bb      	ldr	r3, [r7, #8]
 8002c24:	6879      	ldr	r1, [r7, #4]
 8002c26:	434b      	muls	r3, r1
 8002c28:	431a      	orrs	r2, r3
 8002c2a:	68fb      	ldr	r3, [r7, #12]
 8002c2c:	605a      	str	r2, [r3, #4]
 8002c2e:	46c0      	nop			; (mov r8, r8)
 8002c30:	46bd      	mov	sp, r7
 8002c32:	b004      	add	sp, #16
 8002c34:	bd80      	pop	{r7, pc}

08002c36 <LL_GPIO_SetPinSpeed>:
 8002c36:	b580      	push	{r7, lr}
 8002c38:	b084      	sub	sp, #16
 8002c3a:	af00      	add	r7, sp, #0
 8002c3c:	60f8      	str	r0, [r7, #12]
 8002c3e:	60b9      	str	r1, [r7, #8]
 8002c40:	607a      	str	r2, [r7, #4]
 8002c42:	68fb      	ldr	r3, [r7, #12]
 8002c44:	6899      	ldr	r1, [r3, #8]
 8002c46:	68bb      	ldr	r3, [r7, #8]
 8002c48:	435b      	muls	r3, r3
 8002c4a:	001a      	movs	r2, r3
 8002c4c:	0013      	movs	r3, r2
 8002c4e:	005b      	lsls	r3, r3, #1
 8002c50:	189b      	adds	r3, r3, r2
 8002c52:	43db      	mvns	r3, r3
 8002c54:	400b      	ands	r3, r1
 8002c56:	001a      	movs	r2, r3
 8002c58:	68bb      	ldr	r3, [r7, #8]
 8002c5a:	435b      	muls	r3, r3
 8002c5c:	6879      	ldr	r1, [r7, #4]
 8002c5e:	434b      	muls	r3, r1
 8002c60:	431a      	orrs	r2, r3
 8002c62:	68fb      	ldr	r3, [r7, #12]
 8002c64:	609a      	str	r2, [r3, #8]
 8002c66:	46c0      	nop			; (mov r8, r8)
 8002c68:	46bd      	mov	sp, r7
 8002c6a:	b004      	add	sp, #16
 8002c6c:	bd80      	pop	{r7, pc}

08002c6e <LL_GPIO_SetPinPull>:
 8002c6e:	b580      	push	{r7, lr}
 8002c70:	b084      	sub	sp, #16
 8002c72:	af00      	add	r7, sp, #0
 8002c74:	60f8      	str	r0, [r7, #12]
 8002c76:	60b9      	str	r1, [r7, #8]
 8002c78:	607a      	str	r2, [r7, #4]
 8002c7a:	68fb      	ldr	r3, [r7, #12]
 8002c7c:	68d9      	ldr	r1, [r3, #12]
 8002c7e:	68bb      	ldr	r3, [r7, #8]
 8002c80:	435b      	muls	r3, r3
 8002c82:	001a      	movs	r2, r3
 8002c84:	0013      	movs	r3, r2
 8002c86:	005b      	lsls	r3, r3, #1
 8002c88:	189b      	adds	r3, r3, r2
 8002c8a:	43db      	mvns	r3, r3
 8002c8c:	400b      	ands	r3, r1
 8002c8e:	001a      	movs	r2, r3
 8002c90:	68bb      	ldr	r3, [r7, #8]
 8002c92:	435b      	muls	r3, r3
 8002c94:	6879      	ldr	r1, [r7, #4]
 8002c96:	434b      	muls	r3, r1
 8002c98:	431a      	orrs	r2, r3
 8002c9a:	68fb      	ldr	r3, [r7, #12]
 8002c9c:	60da      	str	r2, [r3, #12]
 8002c9e:	46c0      	nop			; (mov r8, r8)
 8002ca0:	46bd      	mov	sp, r7
 8002ca2:	b004      	add	sp, #16
 8002ca4:	bd80      	pop	{r7, pc}

08002ca6 <LL_GPIO_SetAFPin_0_7>:
 8002ca6:	b580      	push	{r7, lr}
 8002ca8:	b084      	sub	sp, #16
 8002caa:	af00      	add	r7, sp, #0
 8002cac:	60f8      	str	r0, [r7, #12]
 8002cae:	60b9      	str	r1, [r7, #8]
 8002cb0:	607a      	str	r2, [r7, #4]
 8002cb2:	68fb      	ldr	r3, [r7, #12]
 8002cb4:	6a19      	ldr	r1, [r3, #32]
 8002cb6:	68bb      	ldr	r3, [r7, #8]
 8002cb8:	435b      	muls	r3, r3
 8002cba:	68ba      	ldr	r2, [r7, #8]
 8002cbc:	4353      	muls	r3, r2
 8002cbe:	68ba      	ldr	r2, [r7, #8]
 8002cc0:	435a      	muls	r2, r3
 8002cc2:	0013      	movs	r3, r2
 8002cc4:	011b      	lsls	r3, r3, #4
 8002cc6:	1a9b      	subs	r3, r3, r2
 8002cc8:	43db      	mvns	r3, r3
 8002cca:	400b      	ands	r3, r1
 8002ccc:	001a      	movs	r2, r3
 8002cce:	68bb      	ldr	r3, [r7, #8]
 8002cd0:	435b      	muls	r3, r3
 8002cd2:	68b9      	ldr	r1, [r7, #8]
 8002cd4:	434b      	muls	r3, r1
 8002cd6:	68b9      	ldr	r1, [r7, #8]
 8002cd8:	434b      	muls	r3, r1
 8002cda:	6879      	ldr	r1, [r7, #4]
 8002cdc:	434b      	muls	r3, r1
 8002cde:	431a      	orrs	r2, r3
 8002ce0:	68fb      	ldr	r3, [r7, #12]
 8002ce2:	621a      	str	r2, [r3, #32]
 8002ce4:	46c0      	nop			; (mov r8, r8)
 8002ce6:	46bd      	mov	sp, r7
 8002ce8:	b004      	add	sp, #16
 8002cea:	bd80      	pop	{r7, pc}

08002cec <LL_AHB1_GRP1_EnableClock>:
 8002cec:	b580      	push	{r7, lr}
 8002cee:	b084      	sub	sp, #16
 8002cf0:	af00      	add	r7, sp, #0
 8002cf2:	6078      	str	r0, [r7, #4]
 8002cf4:	4b07      	ldr	r3, [pc, #28]	; (8002d14 <LL_AHB1_GRP1_EnableClock+0x28>)
 8002cf6:	6959      	ldr	r1, [r3, #20]
 8002cf8:	4b06      	ldr	r3, [pc, #24]	; (8002d14 <LL_AHB1_GRP1_EnableClock+0x28>)
 8002cfa:	687a      	ldr	r2, [r7, #4]
 8002cfc:	430a      	orrs	r2, r1
 8002cfe:	615a      	str	r2, [r3, #20]
 8002d00:	4b04      	ldr	r3, [pc, #16]	; (8002d14 <LL_AHB1_GRP1_EnableClock+0x28>)
 8002d02:	695b      	ldr	r3, [r3, #20]
 8002d04:	687a      	ldr	r2, [r7, #4]
 8002d06:	4013      	ands	r3, r2
 8002d08:	60fb      	str	r3, [r7, #12]
 8002d0a:	68fb      	ldr	r3, [r7, #12]
 8002d0c:	46c0      	nop			; (mov r8, r8)
 8002d0e:	46bd      	mov	sp, r7
 8002d10:	b004      	add	sp, #16
 8002d12:	bd80      	pop	{r7, pc}
 8002d14:	40021000 	.word	0x40021000

08002d18 <LL_APB1_GRP1_EnableClock>:
 8002d18:	b580      	push	{r7, lr}
 8002d1a:	b084      	sub	sp, #16
 8002d1c:	af00      	add	r7, sp, #0
 8002d1e:	6078      	str	r0, [r7, #4]
 8002d20:	4b07      	ldr	r3, [pc, #28]	; (8002d40 <LL_APB1_GRP1_EnableClock+0x28>)
 8002d22:	69d9      	ldr	r1, [r3, #28]
 8002d24:	4b06      	ldr	r3, [pc, #24]	; (8002d40 <LL_APB1_GRP1_EnableClock+0x28>)
 8002d26:	687a      	ldr	r2, [r7, #4]
 8002d28:	430a      	orrs	r2, r1
 8002d2a:	61da      	str	r2, [r3, #28]
 8002d2c:	4b04      	ldr	r3, [pc, #16]	; (8002d40 <LL_APB1_GRP1_EnableClock+0x28>)
 8002d2e:	69db      	ldr	r3, [r3, #28]
 8002d30:	687a      	ldr	r2, [r7, #4]
 8002d32:	4013      	ands	r3, r2
 8002d34:	60fb      	str	r3, [r7, #12]
 8002d36:	68fb      	ldr	r3, [r7, #12]
 8002d38:	46c0      	nop			; (mov r8, r8)
 8002d3a:	46bd      	mov	sp, r7
 8002d3c:	b004      	add	sp, #16
 8002d3e:	bd80      	pop	{r7, pc}
 8002d40:	40021000 	.word	0x40021000

08002d44 <term_init>:
 8002d44:	b580      	push	{r7, lr}
 8002d46:	b082      	sub	sp, #8
 8002d48:	af02      	add	r7, sp, #8
 8002d4a:	2380      	movs	r3, #128	; 0x80
 8002d4c:	029b      	lsls	r3, r3, #10
 8002d4e:	0018      	movs	r0, r3
 8002d50:	f7ff ffcc 	bl	8002cec <LL_AHB1_GRP1_EnableClock>
 8002d54:	2390      	movs	r3, #144	; 0x90
 8002d56:	05db      	lsls	r3, r3, #23
 8002d58:	2202      	movs	r2, #2
 8002d5a:	2104      	movs	r1, #4
 8002d5c:	0018      	movs	r0, r3
 8002d5e:	f7ff ff39 	bl	8002bd4 <LL_GPIO_SetPinMode>
 8002d62:	2390      	movs	r3, #144	; 0x90
 8002d64:	05db      	lsls	r3, r3, #23
 8002d66:	2201      	movs	r2, #1
 8002d68:	2104      	movs	r1, #4
 8002d6a:	0018      	movs	r0, r3
 8002d6c:	f7ff ff9b 	bl	8002ca6 <LL_GPIO_SetAFPin_0_7>
 8002d70:	2390      	movs	r3, #144	; 0x90
 8002d72:	05db      	lsls	r3, r3, #23
 8002d74:	2200      	movs	r2, #0
 8002d76:	2104      	movs	r1, #4
 8002d78:	0018      	movs	r0, r3
 8002d7a:	f7ff ff47 	bl	8002c0c <LL_GPIO_SetPinOutputType>
 8002d7e:	2390      	movs	r3, #144	; 0x90
 8002d80:	05db      	lsls	r3, r3, #23
 8002d82:	2202      	movs	r2, #2
 8002d84:	2104      	movs	r1, #4
 8002d86:	0018      	movs	r0, r3
 8002d88:	f7ff ff71 	bl	8002c6e <LL_GPIO_SetPinPull>
 8002d8c:	2390      	movs	r3, #144	; 0x90
 8002d8e:	05db      	lsls	r3, r3, #23
 8002d90:	2203      	movs	r2, #3
 8002d92:	2104      	movs	r1, #4
 8002d94:	0018      	movs	r0, r3
 8002d96:	f7ff ff4e 	bl	8002c36 <LL_GPIO_SetPinSpeed>
 8002d9a:	2390      	movs	r3, #144	; 0x90
 8002d9c:	05db      	lsls	r3, r3, #23
 8002d9e:	2202      	movs	r2, #2
 8002da0:	2108      	movs	r1, #8
 8002da2:	0018      	movs	r0, r3
 8002da4:	f7ff ff16 	bl	8002bd4 <LL_GPIO_SetPinMode>
 8002da8:	2390      	movs	r3, #144	; 0x90
 8002daa:	05db      	lsls	r3, r3, #23
 8002dac:	2201      	movs	r2, #1
 8002dae:	2108      	movs	r1, #8
 8002db0:	0018      	movs	r0, r3
 8002db2:	f7ff ff78 	bl	8002ca6 <LL_GPIO_SetAFPin_0_7>
 8002db6:	2390      	movs	r3, #144	; 0x90
 8002db8:	05db      	lsls	r3, r3, #23
 8002dba:	2200      	movs	r2, #0
 8002dbc:	2108      	movs	r1, #8
 8002dbe:	0018      	movs	r0, r3
 8002dc0:	f7ff ff55 	bl	8002c6e <LL_GPIO_SetPinPull>
 8002dc4:	2390      	movs	r3, #144	; 0x90
 8002dc6:	05db      	lsls	r3, r3, #23
 8002dc8:	2203      	movs	r2, #3
 8002dca:	2108      	movs	r1, #8
 8002dcc:	0018      	movs	r0, r3
 8002dce:	f7ff ff32 	bl	8002c36 <LL_GPIO_SetPinSpeed>
 8002dd2:	2380      	movs	r3, #128	; 0x80
 8002dd4:	029b      	lsls	r3, r3, #10
 8002dd6:	0018      	movs	r0, r3
 8002dd8:	f7ff ff9e 	bl	8002d18 <LL_APB1_GRP1_EnableClock>
 8002ddc:	4b2a      	ldr	r3, [pc, #168]	; (8002e88 <term_init+0x144>)
 8002dde:	210c      	movs	r1, #12
 8002de0:	0018      	movs	r0, r3
 8002de2:	f7ff fd2d 	bl	8002840 <LL_USART_SetTransferDirection>
 8002de6:	4b28      	ldr	r3, [pc, #160]	; (8002e88 <term_init+0x144>)
 8002de8:	2100      	movs	r1, #0
 8002dea:	0018      	movs	r0, r3
 8002dec:	f7ff fd3a 	bl	8002864 <LL_USART_SetParity>
 8002df0:	4b25      	ldr	r3, [pc, #148]	; (8002e88 <term_init+0x144>)
 8002df2:	2100      	movs	r1, #0
 8002df4:	0018      	movs	r0, r3
 8002df6:	f7ff fd49 	bl	800288c <LL_USART_SetDataWidth>
 8002dfa:	4b23      	ldr	r3, [pc, #140]	; (8002e88 <term_init+0x144>)
 8002dfc:	2100      	movs	r1, #0
 8002dfe:	0018      	movs	r0, r3
 8002e00:	f7ff fd58 	bl	80028b4 <LL_USART_SetStopBitsLength>
 8002e04:	4b21      	ldr	r3, [pc, #132]	; (8002e8c <term_init+0x148>)
 8002e06:	6819      	ldr	r1, [r3, #0]
 8002e08:	23e1      	movs	r3, #225	; 0xe1
 8002e0a:	025b      	lsls	r3, r3, #9
 8002e0c:	481e      	ldr	r0, [pc, #120]	; (8002e88 <term_init+0x144>)
 8002e0e:	2200      	movs	r2, #0
 8002e10:	f7ff fd64 	bl	80028dc <LL_USART_SetBaudRate>
 8002e14:	4b1c      	ldr	r3, [pc, #112]	; (8002e88 <term_init+0x144>)
 8002e16:	0018      	movs	r0, r3
 8002e18:	f7ff fdc5 	bl	80029a6 <LL_USART_EnableDMAReq_RX>
 8002e1c:	2001      	movs	r0, #1
 8002e1e:	f7ff ff65 	bl	8002cec <LL_AHB1_GRP1_EnableClock>
 8002e22:	4b1b      	ldr	r3, [pc, #108]	; (8002e90 <term_init+0x14c>)
 8002e24:	491b      	ldr	r1, [pc, #108]	; (8002e94 <term_init+0x150>)
 8002e26:	481c      	ldr	r0, [pc, #112]	; (8002e98 <term_init+0x154>)
 8002e28:	2200      	movs	r2, #0
 8002e2a:	9200      	str	r2, [sp, #0]
 8002e2c:	000a      	movs	r2, r1
 8002e2e:	2105      	movs	r1, #5
 8002e30:	f7ff fe5a 	bl	8002ae8 <LL_DMA_ConfigAddresses>
 8002e34:	4b18      	ldr	r3, [pc, #96]	; (8002e98 <term_init+0x154>)
 8002e36:	220a      	movs	r2, #10
 8002e38:	2105      	movs	r1, #5
 8002e3a:	0018      	movs	r0, r3
 8002e3c:	f7ff fe34 	bl	8002aa8 <LL_DMA_SetDataLength>
 8002e40:	4b15      	ldr	r3, [pc, #84]	; (8002e98 <term_init+0x154>)
 8002e42:	2280      	movs	r2, #128	; 0x80
 8002e44:	2105      	movs	r1, #5
 8002e46:	0018      	movs	r0, r3
 8002e48:	f7ff fe0c 	bl	8002a64 <LL_DMA_SetMemoryIncMode>
 8002e4c:	4b12      	ldr	r3, [pc, #72]	; (8002e98 <term_init+0x154>)
 8002e4e:	2220      	movs	r2, #32
 8002e50:	2105      	movs	r1, #5
 8002e52:	0018      	movs	r0, r3
 8002e54:	f7ff fde4 	bl	8002a20 <LL_DMA_SetMode>
 8002e58:	4b0f      	ldr	r3, [pc, #60]	; (8002e98 <term_init+0x154>)
 8002e5a:	2105      	movs	r1, #5
 8002e5c:	0018      	movs	r0, r3
 8002e5e:	f7ff fe9b 	bl	8002b98 <LL_DMA_EnableIT_TC>
 8002e62:	2102      	movs	r1, #2
 8002e64:	200b      	movs	r0, #11
 8002e66:	f7ff fc6f 	bl	8002748 <NVIC_SetPriority>
 8002e6a:	200b      	movs	r0, #11
 8002e6c:	f7ff fc3e 	bl	80026ec <NVIC_EnableIRQ>
 8002e70:	4b05      	ldr	r3, [pc, #20]	; (8002e88 <term_init+0x144>)
 8002e72:	0018      	movs	r0, r3
 8002e74:	f7ff fcd6 	bl	8002824 <LL_USART_Enable>
 8002e78:	4b07      	ldr	r3, [pc, #28]	; (8002e98 <term_init+0x154>)
 8002e7a:	2105      	movs	r1, #5
 8002e7c:	0018      	movs	r0, r3
 8002e7e:	f7ff fdb1 	bl	80029e4 <LL_DMA_EnableChannel>
 8002e82:	46c0      	nop			; (mov r8, r8)
 8002e84:	46bd      	mov	sp, r7
 8002e86:	bd80      	pop	{r7, pc}
 8002e88:	40004400 	.word	0x40004400
 8002e8c:	20000000 	.word	0x20000000
 8002e90:	2000171c 	.word	0x2000171c
 8002e94:	40004424 	.word	0x40004424
 8002e98:	40020000 	.word	0x40020000

08002e9c <comm_send_msg>:
 8002e9c:	b580      	push	{r7, lr}
 8002e9e:	b084      	sub	sp, #16
 8002ea0:	af00      	add	r7, sp, #0
 8002ea2:	6078      	str	r0, [r7, #4]
 8002ea4:	6039      	str	r1, [r7, #0]
 8002ea6:	2300      	movs	r3, #0
 8002ea8:	60fb      	str	r3, [r7, #12]
 8002eaa:	4b14      	ldr	r3, [pc, #80]	; (8002efc <comm_send_msg+0x60>)
 8002eac:	0018      	movs	r0, r3
 8002eae:	f7ff fd6f 	bl	8002990 <LL_USART_ClearFlag_TC>
 8002eb2:	e012      	b.n	8002eda <comm_send_msg+0x3e>
 8002eb4:	46c0      	nop			; (mov r8, r8)
 8002eb6:	4b11      	ldr	r3, [pc, #68]	; (8002efc <comm_send_msg+0x60>)
 8002eb8:	0018      	movs	r0, r3
 8002eba:	f7ff fd59 	bl	8002970 <LL_USART_IsActiveFlag_TXE>
 8002ebe:	1e03      	subs	r3, r0, #0
 8002ec0:	d0f9      	beq.n	8002eb6 <comm_send_msg+0x1a>
 8002ec2:	68fb      	ldr	r3, [r7, #12]
 8002ec4:	1c5a      	adds	r2, r3, #1
 8002ec6:	60fa      	str	r2, [r7, #12]
 8002ec8:	001a      	movs	r2, r3
 8002eca:	687b      	ldr	r3, [r7, #4]
 8002ecc:	189b      	adds	r3, r3, r2
 8002ece:	781b      	ldrb	r3, [r3, #0]
 8002ed0:	4a0a      	ldr	r2, [pc, #40]	; (8002efc <comm_send_msg+0x60>)
 8002ed2:	0019      	movs	r1, r3
 8002ed4:	0010      	movs	r0, r2
 8002ed6:	f7ff fd74 	bl	80029c2 <LL_USART_TransmitData8>
 8002eda:	683b      	ldr	r3, [r7, #0]
 8002edc:	1e5a      	subs	r2, r3, #1
 8002ede:	603a      	str	r2, [r7, #0]
 8002ee0:	2b00      	cmp	r3, #0
 8002ee2:	d1e7      	bne.n	8002eb4 <comm_send_msg+0x18>
 8002ee4:	46c0      	nop			; (mov r8, r8)
 8002ee6:	4b05      	ldr	r3, [pc, #20]	; (8002efc <comm_send_msg+0x60>)
 8002ee8:	0018      	movs	r0, r3
 8002eea:	f7ff fd31 	bl	8002950 <LL_USART_IsActiveFlag_TC>
 8002eee:	1e03      	subs	r3, r0, #0
 8002ef0:	d0f9      	beq.n	8002ee6 <comm_send_msg+0x4a>
 8002ef2:	46c0      	nop			; (mov r8, r8)
 8002ef4:	46bd      	mov	sp, r7
 8002ef6:	b004      	add	sp, #16
 8002ef8:	bd80      	pop	{r7, pc}
 8002efa:	46c0      	nop			; (mov r8, r8)
 8002efc:	40004400 	.word	0x40004400

08002f00 <DMA1_Channel4_5_IRQHandler>:
 8002f00:	b580      	push	{r7, lr}
 8002f02:	af00      	add	r7, sp, #0
 8002f04:	200f      	movs	r0, #15
 8002f06:	f7ff fc07 	bl	8002718 <NVIC_DisableIRQ>
 8002f0a:	2010      	movs	r0, #16
 8002f0c:	f7ff fc04 	bl	8002718 <NVIC_DisableIRQ>
 8002f10:	4b0e      	ldr	r3, [pc, #56]	; (8002f4c <DMA1_Channel4_5_IRQHandler+0x4c>)
 8002f12:	0018      	movs	r0, r3
 8002f14:	f7ff fe1e 	bl	8002b54 <LL_DMA_IsActiveFlag_TC5>
 8002f18:	1e03      	subs	r3, r0, #0
 8002f1a:	d00d      	beq.n	8002f38 <DMA1_Channel4_5_IRQHandler+0x38>
 8002f1c:	4b0b      	ldr	r3, [pc, #44]	; (8002f4c <DMA1_Channel4_5_IRQHandler+0x4c>)
 8002f1e:	0018      	movs	r0, r3
 8002f20:	f7ff fe2e 	bl	8002b80 <LL_DMA_ClearFlag_TC5>
 8002f24:	490a      	ldr	r1, [pc, #40]	; (8002f50 <DMA1_Channel4_5_IRQHandler+0x50>)
 8002f26:	4b0b      	ldr	r3, [pc, #44]	; (8002f54 <DMA1_Channel4_5_IRQHandler+0x54>)
 8002f28:	220a      	movs	r2, #10
 8002f2a:	0018      	movs	r0, r3
 8002f2c:	f006 f982 	bl	8009234 <memcpy>
 8002f30:	4b08      	ldr	r3, [pc, #32]	; (8002f54 <DMA1_Channel4_5_IRQHandler+0x54>)
 8002f32:	0018      	movs	r0, r3
 8002f34:	f7ff f994 	bl	8002260 <dyn_manager>
 8002f38:	200f      	movs	r0, #15
 8002f3a:	f7ff fbd7 	bl	80026ec <NVIC_EnableIRQ>
 8002f3e:	2010      	movs	r0, #16
 8002f40:	f7ff fbd4 	bl	80026ec <NVIC_EnableIRQ>
 8002f44:	46c0      	nop			; (mov r8, r8)
 8002f46:	46bd      	mov	sp, r7
 8002f48:	bd80      	pop	{r7, pc}
 8002f4a:	46c0      	nop			; (mov r8, r8)
 8002f4c:	40020000 	.word	0x40020000
 8002f50:	2000171c 	.word	0x2000171c
 8002f54:	2000181b 	.word	0x2000181b

08002f58 <LL_GPIO_SetPinMode>:
 8002f58:	b580      	push	{r7, lr}
 8002f5a:	b084      	sub	sp, #16
 8002f5c:	af00      	add	r7, sp, #0
 8002f5e:	60f8      	str	r0, [r7, #12]
 8002f60:	60b9      	str	r1, [r7, #8]
 8002f62:	607a      	str	r2, [r7, #4]
 8002f64:	68fb      	ldr	r3, [r7, #12]
 8002f66:	6819      	ldr	r1, [r3, #0]
 8002f68:	68bb      	ldr	r3, [r7, #8]
 8002f6a:	435b      	muls	r3, r3
 8002f6c:	001a      	movs	r2, r3
 8002f6e:	0013      	movs	r3, r2
 8002f70:	005b      	lsls	r3, r3, #1
 8002f72:	189b      	adds	r3, r3, r2
 8002f74:	43db      	mvns	r3, r3
 8002f76:	400b      	ands	r3, r1
 8002f78:	001a      	movs	r2, r3
 8002f7a:	68bb      	ldr	r3, [r7, #8]
 8002f7c:	435b      	muls	r3, r3
 8002f7e:	6879      	ldr	r1, [r7, #4]
 8002f80:	434b      	muls	r3, r1
 8002f82:	431a      	orrs	r2, r3
 8002f84:	68fb      	ldr	r3, [r7, #12]
 8002f86:	601a      	str	r2, [r3, #0]
 8002f88:	46c0      	nop			; (mov r8, r8)
 8002f8a:	46bd      	mov	sp, r7
 8002f8c:	b004      	add	sp, #16
 8002f8e:	bd80      	pop	{r7, pc}

08002f90 <LL_GPIO_SetPinOutputType>:
 8002f90:	b580      	push	{r7, lr}
 8002f92:	b084      	sub	sp, #16
 8002f94:	af00      	add	r7, sp, #0
 8002f96:	60f8      	str	r0, [r7, #12]
 8002f98:	60b9      	str	r1, [r7, #8]
 8002f9a:	607a      	str	r2, [r7, #4]
 8002f9c:	68fb      	ldr	r3, [r7, #12]
 8002f9e:	685b      	ldr	r3, [r3, #4]
 8002fa0:	68ba      	ldr	r2, [r7, #8]
 8002fa2:	43d2      	mvns	r2, r2
 8002fa4:	401a      	ands	r2, r3
 8002fa6:	68bb      	ldr	r3, [r7, #8]
 8002fa8:	6879      	ldr	r1, [r7, #4]
 8002faa:	434b      	muls	r3, r1
 8002fac:	431a      	orrs	r2, r3
 8002fae:	68fb      	ldr	r3, [r7, #12]
 8002fb0:	605a      	str	r2, [r3, #4]
 8002fb2:	46c0      	nop			; (mov r8, r8)
 8002fb4:	46bd      	mov	sp, r7
 8002fb6:	b004      	add	sp, #16
 8002fb8:	bd80      	pop	{r7, pc}

08002fba <LL_GPIO_SetPinSpeed>:
 8002fba:	b580      	push	{r7, lr}
 8002fbc:	b084      	sub	sp, #16
 8002fbe:	af00      	add	r7, sp, #0
 8002fc0:	60f8      	str	r0, [r7, #12]
 8002fc2:	60b9      	str	r1, [r7, #8]
 8002fc4:	607a      	str	r2, [r7, #4]
 8002fc6:	68fb      	ldr	r3, [r7, #12]
 8002fc8:	6899      	ldr	r1, [r3, #8]
 8002fca:	68bb      	ldr	r3, [r7, #8]
 8002fcc:	435b      	muls	r3, r3
 8002fce:	001a      	movs	r2, r3
 8002fd0:	0013      	movs	r3, r2
 8002fd2:	005b      	lsls	r3, r3, #1
 8002fd4:	189b      	adds	r3, r3, r2
 8002fd6:	43db      	mvns	r3, r3
 8002fd8:	400b      	ands	r3, r1
 8002fda:	001a      	movs	r2, r3
 8002fdc:	68bb      	ldr	r3, [r7, #8]
 8002fde:	435b      	muls	r3, r3
 8002fe0:	6879      	ldr	r1, [r7, #4]
 8002fe2:	434b      	muls	r3, r1
 8002fe4:	431a      	orrs	r2, r3
 8002fe6:	68fb      	ldr	r3, [r7, #12]
 8002fe8:	609a      	str	r2, [r3, #8]
 8002fea:	46c0      	nop			; (mov r8, r8)
 8002fec:	46bd      	mov	sp, r7
 8002fee:	b004      	add	sp, #16
 8002ff0:	bd80      	pop	{r7, pc}

08002ff2 <LL_GPIO_SetAFPin_0_7>:
 8002ff2:	b580      	push	{r7, lr}
 8002ff4:	b084      	sub	sp, #16
 8002ff6:	af00      	add	r7, sp, #0
 8002ff8:	60f8      	str	r0, [r7, #12]
 8002ffa:	60b9      	str	r1, [r7, #8]
 8002ffc:	607a      	str	r2, [r7, #4]
 8002ffe:	68fb      	ldr	r3, [r7, #12]
 8003000:	6a19      	ldr	r1, [r3, #32]
 8003002:	68bb      	ldr	r3, [r7, #8]
 8003004:	435b      	muls	r3, r3
 8003006:	68ba      	ldr	r2, [r7, #8]
 8003008:	4353      	muls	r3, r2
 800300a:	68ba      	ldr	r2, [r7, #8]
 800300c:	435a      	muls	r2, r3
 800300e:	0013      	movs	r3, r2
 8003010:	011b      	lsls	r3, r3, #4
 8003012:	1a9b      	subs	r3, r3, r2
 8003014:	43db      	mvns	r3, r3
 8003016:	400b      	ands	r3, r1
 8003018:	001a      	movs	r2, r3
 800301a:	68bb      	ldr	r3, [r7, #8]
 800301c:	435b      	muls	r3, r3
 800301e:	68b9      	ldr	r1, [r7, #8]
 8003020:	434b      	muls	r3, r1
 8003022:	68b9      	ldr	r1, [r7, #8]
 8003024:	434b      	muls	r3, r1
 8003026:	6879      	ldr	r1, [r7, #4]
 8003028:	434b      	muls	r3, r1
 800302a:	431a      	orrs	r2, r3
 800302c:	68fb      	ldr	r3, [r7, #12]
 800302e:	621a      	str	r2, [r3, #32]
 8003030:	46c0      	nop			; (mov r8, r8)
 8003032:	46bd      	mov	sp, r7
 8003034:	b004      	add	sp, #16
 8003036:	bd80      	pop	{r7, pc}

08003038 <LL_GPIO_ResetOutputPin>:
 8003038:	b580      	push	{r7, lr}
 800303a:	b082      	sub	sp, #8
 800303c:	af00      	add	r7, sp, #0
 800303e:	6078      	str	r0, [r7, #4]
 8003040:	6039      	str	r1, [r7, #0]
 8003042:	687b      	ldr	r3, [r7, #4]
 8003044:	683a      	ldr	r2, [r7, #0]
 8003046:	629a      	str	r2, [r3, #40]	; 0x28
 8003048:	46c0      	nop			; (mov r8, r8)
 800304a:	46bd      	mov	sp, r7
 800304c:	b002      	add	sp, #8
 800304e:	bd80      	pop	{r7, pc}

08003050 <LL_AHB1_GRP1_EnableClock>:
 8003050:	b580      	push	{r7, lr}
 8003052:	b084      	sub	sp, #16
 8003054:	af00      	add	r7, sp, #0
 8003056:	6078      	str	r0, [r7, #4]
 8003058:	4b07      	ldr	r3, [pc, #28]	; (8003078 <LL_AHB1_GRP1_EnableClock+0x28>)
 800305a:	6959      	ldr	r1, [r3, #20]
 800305c:	4b06      	ldr	r3, [pc, #24]	; (8003078 <LL_AHB1_GRP1_EnableClock+0x28>)
 800305e:	687a      	ldr	r2, [r7, #4]
 8003060:	430a      	orrs	r2, r1
 8003062:	615a      	str	r2, [r3, #20]
 8003064:	4b04      	ldr	r3, [pc, #16]	; (8003078 <LL_AHB1_GRP1_EnableClock+0x28>)
 8003066:	695b      	ldr	r3, [r3, #20]
 8003068:	687a      	ldr	r2, [r7, #4]
 800306a:	4013      	ands	r3, r2
 800306c:	60fb      	str	r3, [r7, #12]
 800306e:	68fb      	ldr	r3, [r7, #12]
 8003070:	46c0      	nop			; (mov r8, r8)
 8003072:	46bd      	mov	sp, r7
 8003074:	b004      	add	sp, #16
 8003076:	bd80      	pop	{r7, pc}
 8003078:	40021000 	.word	0x40021000

0800307c <LL_APB1_GRP1_EnableClock>:
 800307c:	b580      	push	{r7, lr}
 800307e:	b084      	sub	sp, #16
 8003080:	af00      	add	r7, sp, #0
 8003082:	6078      	str	r0, [r7, #4]
 8003084:	4b07      	ldr	r3, [pc, #28]	; (80030a4 <LL_APB1_GRP1_EnableClock+0x28>)
 8003086:	69d9      	ldr	r1, [r3, #28]
 8003088:	4b06      	ldr	r3, [pc, #24]	; (80030a4 <LL_APB1_GRP1_EnableClock+0x28>)
 800308a:	687a      	ldr	r2, [r7, #4]
 800308c:	430a      	orrs	r2, r1
 800308e:	61da      	str	r2, [r3, #28]
 8003090:	4b04      	ldr	r3, [pc, #16]	; (80030a4 <LL_APB1_GRP1_EnableClock+0x28>)
 8003092:	69db      	ldr	r3, [r3, #28]
 8003094:	687a      	ldr	r2, [r7, #4]
 8003096:	4013      	ands	r3, r2
 8003098:	60fb      	str	r3, [r7, #12]
 800309a:	68fb      	ldr	r3, [r7, #12]
 800309c:	46c0      	nop			; (mov r8, r8)
 800309e:	46bd      	mov	sp, r7
 80030a0:	b004      	add	sp, #16
 80030a2:	bd80      	pop	{r7, pc}
 80030a4:	40021000 	.word	0x40021000

080030a8 <LL_RCC_SetI2CClockSource>:
 80030a8:	b580      	push	{r7, lr}
 80030aa:	b082      	sub	sp, #8
 80030ac:	af00      	add	r7, sp, #0
 80030ae:	6078      	str	r0, [r7, #4]
 80030b0:	4b06      	ldr	r3, [pc, #24]	; (80030cc <LL_RCC_SetI2CClockSource+0x24>)
 80030b2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80030b4:	2210      	movs	r2, #16
 80030b6:	4393      	bics	r3, r2
 80030b8:	0019      	movs	r1, r3
 80030ba:	4b04      	ldr	r3, [pc, #16]	; (80030cc <LL_RCC_SetI2CClockSource+0x24>)
 80030bc:	687a      	ldr	r2, [r7, #4]
 80030be:	430a      	orrs	r2, r1
 80030c0:	631a      	str	r2, [r3, #48]	; 0x30
 80030c2:	46c0      	nop			; (mov r8, r8)
 80030c4:	46bd      	mov	sp, r7
 80030c6:	b002      	add	sp, #8
 80030c8:	bd80      	pop	{r7, pc}
 80030ca:	46c0      	nop			; (mov r8, r8)
 80030cc:	40021000 	.word	0x40021000

080030d0 <LL_I2C_Enable>:
 80030d0:	b580      	push	{r7, lr}
 80030d2:	b082      	sub	sp, #8
 80030d4:	af00      	add	r7, sp, #0
 80030d6:	6078      	str	r0, [r7, #4]
 80030d8:	687b      	ldr	r3, [r7, #4]
 80030da:	681b      	ldr	r3, [r3, #0]
 80030dc:	2201      	movs	r2, #1
 80030de:	431a      	orrs	r2, r3
 80030e0:	687b      	ldr	r3, [r7, #4]
 80030e2:	601a      	str	r2, [r3, #0]
 80030e4:	46c0      	nop			; (mov r8, r8)
 80030e6:	46bd      	mov	sp, r7
 80030e8:	b002      	add	sp, #8
 80030ea:	bd80      	pop	{r7, pc}

080030ec <LL_I2C_Disable>:
 80030ec:	b580      	push	{r7, lr}
 80030ee:	b082      	sub	sp, #8
 80030f0:	af00      	add	r7, sp, #0
 80030f2:	6078      	str	r0, [r7, #4]
 80030f4:	687b      	ldr	r3, [r7, #4]
 80030f6:	681b      	ldr	r3, [r3, #0]
 80030f8:	2201      	movs	r2, #1
 80030fa:	4393      	bics	r3, r2
 80030fc:	001a      	movs	r2, r3
 80030fe:	687b      	ldr	r3, [r7, #4]
 8003100:	601a      	str	r2, [r3, #0]
 8003102:	46c0      	nop			; (mov r8, r8)
 8003104:	46bd      	mov	sp, r7
 8003106:	b002      	add	sp, #8
 8003108:	bd80      	pop	{r7, pc}
	...

0800310c <LL_I2C_SetDigitalFilter>:
 800310c:	b580      	push	{r7, lr}
 800310e:	b082      	sub	sp, #8
 8003110:	af00      	add	r7, sp, #0
 8003112:	6078      	str	r0, [r7, #4]
 8003114:	6039      	str	r1, [r7, #0]
 8003116:	687b      	ldr	r3, [r7, #4]
 8003118:	681b      	ldr	r3, [r3, #0]
 800311a:	4a05      	ldr	r2, [pc, #20]	; (8003130 <LL_I2C_SetDigitalFilter+0x24>)
 800311c:	401a      	ands	r2, r3
 800311e:	683b      	ldr	r3, [r7, #0]
 8003120:	021b      	lsls	r3, r3, #8
 8003122:	431a      	orrs	r2, r3
 8003124:	687b      	ldr	r3, [r7, #4]
 8003126:	601a      	str	r2, [r3, #0]
 8003128:	46c0      	nop			; (mov r8, r8)
 800312a:	46bd      	mov	sp, r7
 800312c:	b002      	add	sp, #8
 800312e:	bd80      	pop	{r7, pc}
 8003130:	fffff0ff 	.word	0xfffff0ff

08003134 <LL_I2C_DisableAnalogFilter>:
 8003134:	b580      	push	{r7, lr}
 8003136:	b082      	sub	sp, #8
 8003138:	af00      	add	r7, sp, #0
 800313a:	6078      	str	r0, [r7, #4]
 800313c:	687b      	ldr	r3, [r7, #4]
 800313e:	681b      	ldr	r3, [r3, #0]
 8003140:	2280      	movs	r2, #128	; 0x80
 8003142:	0152      	lsls	r2, r2, #5
 8003144:	431a      	orrs	r2, r3
 8003146:	687b      	ldr	r3, [r7, #4]
 8003148:	601a      	str	r2, [r3, #0]
 800314a:	46c0      	nop			; (mov r8, r8)
 800314c:	46bd      	mov	sp, r7
 800314e:	b002      	add	sp, #8
 8003150:	bd80      	pop	{r7, pc}

08003152 <LL_I2C_DisableClockStretching>:
 8003152:	b580      	push	{r7, lr}
 8003154:	b082      	sub	sp, #8
 8003156:	af00      	add	r7, sp, #0
 8003158:	6078      	str	r0, [r7, #4]
 800315a:	687b      	ldr	r3, [r7, #4]
 800315c:	681b      	ldr	r3, [r3, #0]
 800315e:	2280      	movs	r2, #128	; 0x80
 8003160:	0292      	lsls	r2, r2, #10
 8003162:	431a      	orrs	r2, r3
 8003164:	687b      	ldr	r3, [r7, #4]
 8003166:	601a      	str	r2, [r3, #0]
 8003168:	46c0      	nop			; (mov r8, r8)
 800316a:	46bd      	mov	sp, r7
 800316c:	b002      	add	sp, #8
 800316e:	bd80      	pop	{r7, pc}

08003170 <LL_I2C_SetMasterAddressingMode>:
 8003170:	b580      	push	{r7, lr}
 8003172:	b082      	sub	sp, #8
 8003174:	af00      	add	r7, sp, #0
 8003176:	6078      	str	r0, [r7, #4]
 8003178:	6039      	str	r1, [r7, #0]
 800317a:	687b      	ldr	r3, [r7, #4]
 800317c:	685b      	ldr	r3, [r3, #4]
 800317e:	4a05      	ldr	r2, [pc, #20]	; (8003194 <LL_I2C_SetMasterAddressingMode+0x24>)
 8003180:	401a      	ands	r2, r3
 8003182:	683b      	ldr	r3, [r7, #0]
 8003184:	431a      	orrs	r2, r3
 8003186:	687b      	ldr	r3, [r7, #4]
 8003188:	605a      	str	r2, [r3, #4]
 800318a:	46c0      	nop			; (mov r8, r8)
 800318c:	46bd      	mov	sp, r7
 800318e:	b002      	add	sp, #8
 8003190:	bd80      	pop	{r7, pc}
 8003192:	46c0      	nop			; (mov r8, r8)
 8003194:	fffff7ff 	.word	0xfffff7ff

08003198 <LL_I2C_SetTiming>:
 8003198:	b580      	push	{r7, lr}
 800319a:	b082      	sub	sp, #8
 800319c:	af00      	add	r7, sp, #0
 800319e:	6078      	str	r0, [r7, #4]
 80031a0:	6039      	str	r1, [r7, #0]
 80031a2:	687b      	ldr	r3, [r7, #4]
 80031a4:	683a      	ldr	r2, [r7, #0]
 80031a6:	611a      	str	r2, [r3, #16]
 80031a8:	46c0      	nop			; (mov r8, r8)
 80031aa:	46bd      	mov	sp, r7
 80031ac:	b002      	add	sp, #8
 80031ae:	bd80      	pop	{r7, pc}

080031b0 <LL_I2C_SetMode>:
 80031b0:	b580      	push	{r7, lr}
 80031b2:	b082      	sub	sp, #8
 80031b4:	af00      	add	r7, sp, #0
 80031b6:	6078      	str	r0, [r7, #4]
 80031b8:	6039      	str	r1, [r7, #0]
 80031ba:	687b      	ldr	r3, [r7, #4]
 80031bc:	681b      	ldr	r3, [r3, #0]
 80031be:	4a05      	ldr	r2, [pc, #20]	; (80031d4 <LL_I2C_SetMode+0x24>)
 80031c0:	401a      	ands	r2, r3
 80031c2:	683b      	ldr	r3, [r7, #0]
 80031c4:	431a      	orrs	r2, r3
 80031c6:	687b      	ldr	r3, [r7, #4]
 80031c8:	601a      	str	r2, [r3, #0]
 80031ca:	46c0      	nop			; (mov r8, r8)
 80031cc:	46bd      	mov	sp, r7
 80031ce:	b002      	add	sp, #8
 80031d0:	bd80      	pop	{r7, pc}
 80031d2:	46c0      	nop			; (mov r8, r8)
 80031d4:	ffcfffff 	.word	0xffcfffff

080031d8 <LL_I2C_IsActiveFlag_TXIS>:
 80031d8:	b580      	push	{r7, lr}
 80031da:	b082      	sub	sp, #8
 80031dc:	af00      	add	r7, sp, #0
 80031de:	6078      	str	r0, [r7, #4]
 80031e0:	687b      	ldr	r3, [r7, #4]
 80031e2:	699b      	ldr	r3, [r3, #24]
 80031e4:	2202      	movs	r2, #2
 80031e6:	4013      	ands	r3, r2
 80031e8:	3b02      	subs	r3, #2
 80031ea:	425a      	negs	r2, r3
 80031ec:	4153      	adcs	r3, r2
 80031ee:	b2db      	uxtb	r3, r3
 80031f0:	0018      	movs	r0, r3
 80031f2:	46bd      	mov	sp, r7
 80031f4:	b002      	add	sp, #8
 80031f6:	bd80      	pop	{r7, pc}

080031f8 <LL_I2C_IsActiveFlag_RXNE>:
 80031f8:	b580      	push	{r7, lr}
 80031fa:	b082      	sub	sp, #8
 80031fc:	af00      	add	r7, sp, #0
 80031fe:	6078      	str	r0, [r7, #4]
 8003200:	687b      	ldr	r3, [r7, #4]
 8003202:	699b      	ldr	r3, [r3, #24]
 8003204:	2204      	movs	r2, #4
 8003206:	4013      	ands	r3, r2
 8003208:	3b04      	subs	r3, #4
 800320a:	425a      	negs	r2, r3
 800320c:	4153      	adcs	r3, r2
 800320e:	b2db      	uxtb	r3, r3
 8003210:	0018      	movs	r0, r3
 8003212:	46bd      	mov	sp, r7
 8003214:	b002      	add	sp, #8
 8003216:	bd80      	pop	{r7, pc}

08003218 <LL_I2C_IsActiveFlag_TC>:
 8003218:	b580      	push	{r7, lr}
 800321a:	b082      	sub	sp, #8
 800321c:	af00      	add	r7, sp, #0
 800321e:	6078      	str	r0, [r7, #4]
 8003220:	687b      	ldr	r3, [r7, #4]
 8003222:	699b      	ldr	r3, [r3, #24]
 8003224:	2240      	movs	r2, #64	; 0x40
 8003226:	4013      	ands	r3, r2
 8003228:	3b40      	subs	r3, #64	; 0x40
 800322a:	425a      	negs	r2, r3
 800322c:	4153      	adcs	r3, r2
 800322e:	b2db      	uxtb	r3, r3
 8003230:	0018      	movs	r0, r3
 8003232:	46bd      	mov	sp, r7
 8003234:	b002      	add	sp, #8
 8003236:	bd80      	pop	{r7, pc}

08003238 <LL_I2C_HandleTransfer>:
 8003238:	b580      	push	{r7, lr}
 800323a:	b084      	sub	sp, #16
 800323c:	af00      	add	r7, sp, #0
 800323e:	60f8      	str	r0, [r7, #12]
 8003240:	60b9      	str	r1, [r7, #8]
 8003242:	607a      	str	r2, [r7, #4]
 8003244:	603b      	str	r3, [r7, #0]
 8003246:	68fb      	ldr	r3, [r7, #12]
 8003248:	685b      	ldr	r3, [r3, #4]
 800324a:	4a09      	ldr	r2, [pc, #36]	; (8003270 <LL_I2C_HandleTransfer+0x38>)
 800324c:	401a      	ands	r2, r3
 800324e:	68b9      	ldr	r1, [r7, #8]
 8003250:	687b      	ldr	r3, [r7, #4]
 8003252:	4319      	orrs	r1, r3
 8003254:	683b      	ldr	r3, [r7, #0]
 8003256:	041b      	lsls	r3, r3, #16
 8003258:	4319      	orrs	r1, r3
 800325a:	69bb      	ldr	r3, [r7, #24]
 800325c:	4319      	orrs	r1, r3
 800325e:	69fb      	ldr	r3, [r7, #28]
 8003260:	430b      	orrs	r3, r1
 8003262:	431a      	orrs	r2, r3
 8003264:	68fb      	ldr	r3, [r7, #12]
 8003266:	605a      	str	r2, [r3, #4]
 8003268:	46c0      	nop			; (mov r8, r8)
 800326a:	46bd      	mov	sp, r7
 800326c:	b004      	add	sp, #16
 800326e:	bd80      	pop	{r7, pc}
 8003270:	fc008000 	.word	0xfc008000

08003274 <LL_I2C_ReceiveData8>:
 8003274:	b580      	push	{r7, lr}
 8003276:	b082      	sub	sp, #8
 8003278:	af00      	add	r7, sp, #0
 800327a:	6078      	str	r0, [r7, #4]
 800327c:	687b      	ldr	r3, [r7, #4]
 800327e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8003280:	b2db      	uxtb	r3, r3
 8003282:	0018      	movs	r0, r3
 8003284:	46bd      	mov	sp, r7
 8003286:	b002      	add	sp, #8
 8003288:	bd80      	pop	{r7, pc}

0800328a <LL_I2C_TransmitData8>:
 800328a:	b580      	push	{r7, lr}
 800328c:	b082      	sub	sp, #8
 800328e:	af00      	add	r7, sp, #0
 8003290:	6078      	str	r0, [r7, #4]
 8003292:	000a      	movs	r2, r1
 8003294:	1cfb      	adds	r3, r7, #3
 8003296:	701a      	strb	r2, [r3, #0]
 8003298:	1cfb      	adds	r3, r7, #3
 800329a:	781a      	ldrb	r2, [r3, #0]
 800329c:	687b      	ldr	r3, [r7, #4]
 800329e:	629a      	str	r2, [r3, #40]	; 0x28
 80032a0:	46c0      	nop			; (mov r8, r8)
 80032a2:	46bd      	mov	sp, r7
 80032a4:	b002      	add	sp, #8
 80032a6:	bd80      	pop	{r7, pc}

080032a8 <VL53L0X_hw_reset>:
 80032a8:	b580      	push	{r7, lr}
 80032aa:	af00      	add	r7, sp, #0
 80032ac:	4b05      	ldr	r3, [pc, #20]	; (80032c4 <VL53L0X_hw_reset+0x1c>)
 80032ae:	0018      	movs	r0, r3
 80032b0:	f7ff ff1c 	bl	80030ec <LL_I2C_Disable>
 80032b4:	4b03      	ldr	r3, [pc, #12]	; (80032c4 <VL53L0X_hw_reset+0x1c>)
 80032b6:	0018      	movs	r0, r3
 80032b8:	f7ff ff0a 	bl	80030d0 <LL_I2C_Enable>
 80032bc:	46c0      	nop			; (mov r8, r8)
 80032be:	46bd      	mov	sp, r7
 80032c0:	bd80      	pop	{r7, pc}
 80032c2:	46c0      	nop			; (mov r8, r8)
 80032c4:	40005400 	.word	0x40005400

080032c8 <VL53L0X_hw_config>:
 80032c8:	b590      	push	{r4, r7, lr}
 80032ca:	b085      	sub	sp, #20
 80032cc:	af00      	add	r7, sp, #0
 80032ce:	6078      	str	r0, [r7, #4]
 80032d0:	2380      	movs	r3, #128	; 0x80
 80032d2:	02db      	lsls	r3, r3, #11
 80032d4:	0018      	movs	r0, r3
 80032d6:	f7ff febb 	bl	8003050 <LL_AHB1_GRP1_EnableClock>
 80032da:	4b52      	ldr	r3, [pc, #328]	; (8003424 <VL53L0X_hw_config+0x15c>)
 80032dc:	2202      	movs	r2, #2
 80032de:	2140      	movs	r1, #64	; 0x40
 80032e0:	0018      	movs	r0, r3
 80032e2:	f7ff fe39 	bl	8002f58 <LL_GPIO_SetPinMode>
 80032e6:	4b4f      	ldr	r3, [pc, #316]	; (8003424 <VL53L0X_hw_config+0x15c>)
 80032e8:	2201      	movs	r2, #1
 80032ea:	2140      	movs	r1, #64	; 0x40
 80032ec:	0018      	movs	r0, r3
 80032ee:	f7ff fe4f 	bl	8002f90 <LL_GPIO_SetPinOutputType>
 80032f2:	4b4c      	ldr	r3, [pc, #304]	; (8003424 <VL53L0X_hw_config+0x15c>)
 80032f4:	2201      	movs	r2, #1
 80032f6:	2140      	movs	r1, #64	; 0x40
 80032f8:	0018      	movs	r0, r3
 80032fa:	f7ff fe7a 	bl	8002ff2 <LL_GPIO_SetAFPin_0_7>
 80032fe:	4b49      	ldr	r3, [pc, #292]	; (8003424 <VL53L0X_hw_config+0x15c>)
 8003300:	2203      	movs	r2, #3
 8003302:	2140      	movs	r1, #64	; 0x40
 8003304:	0018      	movs	r0, r3
 8003306:	f7ff fe58 	bl	8002fba <LL_GPIO_SetPinSpeed>
 800330a:	4b46      	ldr	r3, [pc, #280]	; (8003424 <VL53L0X_hw_config+0x15c>)
 800330c:	2202      	movs	r2, #2
 800330e:	2180      	movs	r1, #128	; 0x80
 8003310:	0018      	movs	r0, r3
 8003312:	f7ff fe21 	bl	8002f58 <LL_GPIO_SetPinMode>
 8003316:	4b43      	ldr	r3, [pc, #268]	; (8003424 <VL53L0X_hw_config+0x15c>)
 8003318:	2201      	movs	r2, #1
 800331a:	2180      	movs	r1, #128	; 0x80
 800331c:	0018      	movs	r0, r3
 800331e:	f7ff fe37 	bl	8002f90 <LL_GPIO_SetPinOutputType>
 8003322:	4b40      	ldr	r3, [pc, #256]	; (8003424 <VL53L0X_hw_config+0x15c>)
 8003324:	2201      	movs	r2, #1
 8003326:	2180      	movs	r1, #128	; 0x80
 8003328:	0018      	movs	r0, r3
 800332a:	f7ff fe62 	bl	8002ff2 <LL_GPIO_SetAFPin_0_7>
 800332e:	4b3d      	ldr	r3, [pc, #244]	; (8003424 <VL53L0X_hw_config+0x15c>)
 8003330:	2203      	movs	r2, #3
 8003332:	2180      	movs	r1, #128	; 0x80
 8003334:	0018      	movs	r0, r3
 8003336:	f7ff fe40 	bl	8002fba <LL_GPIO_SetPinSpeed>
 800333a:	2380      	movs	r3, #128	; 0x80
 800333c:	031b      	lsls	r3, r3, #12
 800333e:	0018      	movs	r0, r3
 8003340:	f7ff fe86 	bl	8003050 <LL_AHB1_GRP1_EnableClock>
 8003344:	230e      	movs	r3, #14
 8003346:	18fb      	adds	r3, r7, r3
 8003348:	2200      	movs	r2, #0
 800334a:	801a      	strh	r2, [r3, #0]
 800334c:	e034      	b.n	80033b8 <VL53L0X_hw_config+0xf0>
 800334e:	240e      	movs	r4, #14
 8003350:	193b      	adds	r3, r7, r4
 8003352:	881a      	ldrh	r2, [r3, #0]
 8003354:	4b34      	ldr	r3, [pc, #208]	; (8003428 <VL53L0X_hw_config+0x160>)
 8003356:	00d2      	lsls	r2, r2, #3
 8003358:	58d0      	ldr	r0, [r2, r3]
 800335a:	193b      	adds	r3, r7, r4
 800335c:	881b      	ldrh	r3, [r3, #0]
 800335e:	4a32      	ldr	r2, [pc, #200]	; (8003428 <VL53L0X_hw_config+0x160>)
 8003360:	00db      	lsls	r3, r3, #3
 8003362:	18d3      	adds	r3, r2, r3
 8003364:	3304      	adds	r3, #4
 8003366:	681b      	ldr	r3, [r3, #0]
 8003368:	2201      	movs	r2, #1
 800336a:	0019      	movs	r1, r3
 800336c:	f7ff fdf4 	bl	8002f58 <LL_GPIO_SetPinMode>
 8003370:	193b      	adds	r3, r7, r4
 8003372:	881a      	ldrh	r2, [r3, #0]
 8003374:	4b2c      	ldr	r3, [pc, #176]	; (8003428 <VL53L0X_hw_config+0x160>)
 8003376:	00d2      	lsls	r2, r2, #3
 8003378:	58d0      	ldr	r0, [r2, r3]
 800337a:	193b      	adds	r3, r7, r4
 800337c:	881b      	ldrh	r3, [r3, #0]
 800337e:	4a2a      	ldr	r2, [pc, #168]	; (8003428 <VL53L0X_hw_config+0x160>)
 8003380:	00db      	lsls	r3, r3, #3
 8003382:	18d3      	adds	r3, r2, r3
 8003384:	3304      	adds	r3, #4
 8003386:	681b      	ldr	r3, [r3, #0]
 8003388:	2200      	movs	r2, #0
 800338a:	0019      	movs	r1, r3
 800338c:	f7ff fe00 	bl	8002f90 <LL_GPIO_SetPinOutputType>
 8003390:	193b      	adds	r3, r7, r4
 8003392:	881a      	ldrh	r2, [r3, #0]
 8003394:	4b24      	ldr	r3, [pc, #144]	; (8003428 <VL53L0X_hw_config+0x160>)
 8003396:	00d2      	lsls	r2, r2, #3
 8003398:	58d0      	ldr	r0, [r2, r3]
 800339a:	193b      	adds	r3, r7, r4
 800339c:	881b      	ldrh	r3, [r3, #0]
 800339e:	4a22      	ldr	r2, [pc, #136]	; (8003428 <VL53L0X_hw_config+0x160>)
 80033a0:	00db      	lsls	r3, r3, #3
 80033a2:	18d3      	adds	r3, r2, r3
 80033a4:	3304      	adds	r3, #4
 80033a6:	681b      	ldr	r3, [r3, #0]
 80033a8:	0019      	movs	r1, r3
 80033aa:	f7ff fe45 	bl	8003038 <LL_GPIO_ResetOutputPin>
 80033ae:	193b      	adds	r3, r7, r4
 80033b0:	881a      	ldrh	r2, [r3, #0]
 80033b2:	193b      	adds	r3, r7, r4
 80033b4:	3201      	adds	r2, #1
 80033b6:	801a      	strh	r2, [r3, #0]
 80033b8:	230e      	movs	r3, #14
 80033ba:	18fb      	adds	r3, r7, r3
 80033bc:	881b      	ldrh	r3, [r3, #0]
 80033be:	2b08      	cmp	r3, #8
 80033c0:	d9c5      	bls.n	800334e <VL53L0X_hw_config+0x86>
 80033c2:	687b      	ldr	r3, [r7, #4]
 80033c4:	4a18      	ldr	r2, [pc, #96]	; (8003428 <VL53L0X_hw_config+0x160>)
 80033c6:	601a      	str	r2, [r3, #0]
 80033c8:	2010      	movs	r0, #16
 80033ca:	f7ff fe6d 	bl	80030a8 <LL_RCC_SetI2CClockSource>
 80033ce:	2380      	movs	r3, #128	; 0x80
 80033d0:	039b      	lsls	r3, r3, #14
 80033d2:	0018      	movs	r0, r3
 80033d4:	f7ff fe52 	bl	800307c <LL_APB1_GRP1_EnableClock>
 80033d8:	4b14      	ldr	r3, [pc, #80]	; (800342c <VL53L0X_hw_config+0x164>)
 80033da:	0018      	movs	r0, r3
 80033dc:	f7ff feaa 	bl	8003134 <LL_I2C_DisableAnalogFilter>
 80033e0:	4b12      	ldr	r3, [pc, #72]	; (800342c <VL53L0X_hw_config+0x164>)
 80033e2:	2101      	movs	r1, #1
 80033e4:	0018      	movs	r0, r3
 80033e6:	f7ff fe91 	bl	800310c <LL_I2C_SetDigitalFilter>
 80033ea:	4a11      	ldr	r2, [pc, #68]	; (8003430 <VL53L0X_hw_config+0x168>)
 80033ec:	4b0f      	ldr	r3, [pc, #60]	; (800342c <VL53L0X_hw_config+0x164>)
 80033ee:	0011      	movs	r1, r2
 80033f0:	0018      	movs	r0, r3
 80033f2:	f7ff fed1 	bl	8003198 <LL_I2C_SetTiming>
 80033f6:	4b0d      	ldr	r3, [pc, #52]	; (800342c <VL53L0X_hw_config+0x164>)
 80033f8:	0018      	movs	r0, r3
 80033fa:	f7ff feaa 	bl	8003152 <LL_I2C_DisableClockStretching>
 80033fe:	4b0b      	ldr	r3, [pc, #44]	; (800342c <VL53L0X_hw_config+0x164>)
 8003400:	2100      	movs	r1, #0
 8003402:	0018      	movs	r0, r3
 8003404:	f7ff feb4 	bl	8003170 <LL_I2C_SetMasterAddressingMode>
 8003408:	4b08      	ldr	r3, [pc, #32]	; (800342c <VL53L0X_hw_config+0x164>)
 800340a:	2100      	movs	r1, #0
 800340c:	0018      	movs	r0, r3
 800340e:	f7ff fecf 	bl	80031b0 <LL_I2C_SetMode>
 8003412:	4b06      	ldr	r3, [pc, #24]	; (800342c <VL53L0X_hw_config+0x164>)
 8003414:	0018      	movs	r0, r3
 8003416:	f7ff fe5b 	bl	80030d0 <LL_I2C_Enable>
 800341a:	46c0      	nop			; (mov r8, r8)
 800341c:	46bd      	mov	sp, r7
 800341e:	b005      	add	sp, #20
 8003420:	bd90      	pop	{r4, r7, pc}
 8003422:	46c0      	nop			; (mov r8, r8)
 8003424:	48000400 	.word	0x48000400
 8003428:	08009c34 	.word	0x08009c34
 800342c:	40005400 	.word	0x40005400
 8003430:	50330309 	.word	0x50330309

08003434 <VL53L0X_WriteMulti>:
 8003434:	b590      	push	{r4, r7, lr}
 8003436:	b089      	sub	sp, #36	; 0x24
 8003438:	af02      	add	r7, sp, #8
 800343a:	60f8      	str	r0, [r7, #12]
 800343c:	607a      	str	r2, [r7, #4]
 800343e:	603b      	str	r3, [r7, #0]
 8003440:	230b      	movs	r3, #11
 8003442:	18fb      	adds	r3, r7, r3
 8003444:	1c0a      	adds	r2, r1, #0
 8003446:	701a      	strb	r2, [r3, #0]
 8003448:	4b38      	ldr	r3, [pc, #224]	; (800352c <VL53L0X_WriteMulti+0xf8>)
 800344a:	613b      	str	r3, [r7, #16]
 800344c:	68fa      	ldr	r2, [r7, #12]
 800344e:	239e      	movs	r3, #158	; 0x9e
 8003450:	005b      	lsls	r3, r3, #1
 8003452:	5cd3      	ldrb	r3, [r2, r3]
 8003454:	0019      	movs	r1, r3
 8003456:	683b      	ldr	r3, [r7, #0]
 8003458:	1c5a      	adds	r2, r3, #1
 800345a:	4835      	ldr	r0, [pc, #212]	; (8003530 <VL53L0X_WriteMulti+0xfc>)
 800345c:	2380      	movs	r3, #128	; 0x80
 800345e:	019b      	lsls	r3, r3, #6
 8003460:	9301      	str	r3, [sp, #4]
 8003462:	2380      	movs	r3, #128	; 0x80
 8003464:	049b      	lsls	r3, r3, #18
 8003466:	9300      	str	r3, [sp, #0]
 8003468:	0013      	movs	r3, r2
 800346a:	2200      	movs	r2, #0
 800346c:	f7ff fee4 	bl	8003238 <LL_I2C_HandleTransfer>
 8003470:	46c0      	nop			; (mov r8, r8)
 8003472:	4b2f      	ldr	r3, [pc, #188]	; (8003530 <VL53L0X_WriteMulti+0xfc>)
 8003474:	0018      	movs	r0, r3
 8003476:	f7ff feaf 	bl	80031d8 <LL_I2C_IsActiveFlag_TXIS>
 800347a:	1e03      	subs	r3, r0, #0
 800347c:	d104      	bne.n	8003488 <VL53L0X_WriteMulti+0x54>
 800347e:	693b      	ldr	r3, [r7, #16]
 8003480:	1e5a      	subs	r2, r3, #1
 8003482:	613a      	str	r2, [r7, #16]
 8003484:	2b00      	cmp	r3, #0
 8003486:	dcf4      	bgt.n	8003472 <VL53L0X_WriteMulti+0x3e>
 8003488:	693b      	ldr	r3, [r7, #16]
 800348a:	2b00      	cmp	r3, #0
 800348c:	dc02      	bgt.n	8003494 <VL53L0X_WriteMulti+0x60>
 800348e:	2307      	movs	r3, #7
 8003490:	425b      	negs	r3, r3
 8003492:	e047      	b.n	8003524 <VL53L0X_WriteMulti+0xf0>
 8003494:	230b      	movs	r3, #11
 8003496:	18fb      	adds	r3, r7, r3
 8003498:	781b      	ldrb	r3, [r3, #0]
 800349a:	4a25      	ldr	r2, [pc, #148]	; (8003530 <VL53L0X_WriteMulti+0xfc>)
 800349c:	0019      	movs	r1, r3
 800349e:	0010      	movs	r0, r2
 80034a0:	f7ff fef3 	bl	800328a <LL_I2C_TransmitData8>
 80034a4:	2317      	movs	r3, #23
 80034a6:	18fb      	adds	r3, r7, r3
 80034a8:	2200      	movs	r2, #0
 80034aa:	701a      	strb	r2, [r3, #0]
 80034ac:	e021      	b.n	80034f2 <VL53L0X_WriteMulti+0xbe>
 80034ae:	46c0      	nop			; (mov r8, r8)
 80034b0:	4b1f      	ldr	r3, [pc, #124]	; (8003530 <VL53L0X_WriteMulti+0xfc>)
 80034b2:	0018      	movs	r0, r3
 80034b4:	f7ff fe90 	bl	80031d8 <LL_I2C_IsActiveFlag_TXIS>
 80034b8:	1e03      	subs	r3, r0, #0
 80034ba:	d104      	bne.n	80034c6 <VL53L0X_WriteMulti+0x92>
 80034bc:	693b      	ldr	r3, [r7, #16]
 80034be:	1e5a      	subs	r2, r3, #1
 80034c0:	613a      	str	r2, [r7, #16]
 80034c2:	2b00      	cmp	r3, #0
 80034c4:	dcf4      	bgt.n	80034b0 <VL53L0X_WriteMulti+0x7c>
 80034c6:	693b      	ldr	r3, [r7, #16]
 80034c8:	2b00      	cmp	r3, #0
 80034ca:	dc02      	bgt.n	80034d2 <VL53L0X_WriteMulti+0x9e>
 80034cc:	2307      	movs	r3, #7
 80034ce:	425b      	negs	r3, r3
 80034d0:	e028      	b.n	8003524 <VL53L0X_WriteMulti+0xf0>
 80034d2:	2417      	movs	r4, #23
 80034d4:	193b      	adds	r3, r7, r4
 80034d6:	781b      	ldrb	r3, [r3, #0]
 80034d8:	687a      	ldr	r2, [r7, #4]
 80034da:	18d3      	adds	r3, r2, r3
 80034dc:	781b      	ldrb	r3, [r3, #0]
 80034de:	4a14      	ldr	r2, [pc, #80]	; (8003530 <VL53L0X_WriteMulti+0xfc>)
 80034e0:	0019      	movs	r1, r3
 80034e2:	0010      	movs	r0, r2
 80034e4:	f7ff fed1 	bl	800328a <LL_I2C_TransmitData8>
 80034e8:	193b      	adds	r3, r7, r4
 80034ea:	781a      	ldrb	r2, [r3, #0]
 80034ec:	193b      	adds	r3, r7, r4
 80034ee:	3201      	adds	r2, #1
 80034f0:	701a      	strb	r2, [r3, #0]
 80034f2:	2317      	movs	r3, #23
 80034f4:	18fb      	adds	r3, r7, r3
 80034f6:	781b      	ldrb	r3, [r3, #0]
 80034f8:	683a      	ldr	r2, [r7, #0]
 80034fa:	429a      	cmp	r2, r3
 80034fc:	d8d7      	bhi.n	80034ae <VL53L0X_WriteMulti+0x7a>
 80034fe:	46c0      	nop			; (mov r8, r8)
 8003500:	4b0b      	ldr	r3, [pc, #44]	; (8003530 <VL53L0X_WriteMulti+0xfc>)
 8003502:	0018      	movs	r0, r3
 8003504:	f7ff fe88 	bl	8003218 <LL_I2C_IsActiveFlag_TC>
 8003508:	1e03      	subs	r3, r0, #0
 800350a:	d004      	beq.n	8003516 <VL53L0X_WriteMulti+0xe2>
 800350c:	693b      	ldr	r3, [r7, #16]
 800350e:	1e5a      	subs	r2, r3, #1
 8003510:	613a      	str	r2, [r7, #16]
 8003512:	2b00      	cmp	r3, #0
 8003514:	dcf4      	bgt.n	8003500 <VL53L0X_WriteMulti+0xcc>
 8003516:	693b      	ldr	r3, [r7, #16]
 8003518:	2b00      	cmp	r3, #0
 800351a:	dc02      	bgt.n	8003522 <VL53L0X_WriteMulti+0xee>
 800351c:	2307      	movs	r3, #7
 800351e:	425b      	negs	r3, r3
 8003520:	e000      	b.n	8003524 <VL53L0X_WriteMulti+0xf0>
 8003522:	2300      	movs	r3, #0
 8003524:	0018      	movs	r0, r3
 8003526:	46bd      	mov	sp, r7
 8003528:	b007      	add	sp, #28
 800352a:	bd90      	pop	{r4, r7, pc}
 800352c:	000005dc 	.word	0x000005dc
 8003530:	40005400 	.word	0x40005400

08003534 <VL53L0X_ReadMulti>:
 8003534:	b5b0      	push	{r4, r5, r7, lr}
 8003536:	b088      	sub	sp, #32
 8003538:	af02      	add	r7, sp, #8
 800353a:	60f8      	str	r0, [r7, #12]
 800353c:	607a      	str	r2, [r7, #4]
 800353e:	603b      	str	r3, [r7, #0]
 8003540:	200b      	movs	r0, #11
 8003542:	183b      	adds	r3, r7, r0
 8003544:	1c0a      	adds	r2, r1, #0
 8003546:	701a      	strb	r2, [r3, #0]
 8003548:	4b31      	ldr	r3, [pc, #196]	; (8003610 <VL53L0X_ReadMulti+0xdc>)
 800354a:	613b      	str	r3, [r7, #16]
 800354c:	183b      	adds	r3, r7, r0
 800354e:	7819      	ldrb	r1, [r3, #0]
 8003550:	68f8      	ldr	r0, [r7, #12]
 8003552:	2300      	movs	r3, #0
 8003554:	2200      	movs	r2, #0
 8003556:	f7ff ff6d 	bl	8003434 <VL53L0X_WriteMulti>
 800355a:	0003      	movs	r3, r0
 800355c:	3307      	adds	r3, #7
 800355e:	d102      	bne.n	8003566 <VL53L0X_ReadMulti+0x32>
 8003560:	2307      	movs	r3, #7
 8003562:	425b      	negs	r3, r3
 8003564:	e050      	b.n	8003608 <VL53L0X_ReadMulti+0xd4>
 8003566:	68fa      	ldr	r2, [r7, #12]
 8003568:	239e      	movs	r3, #158	; 0x9e
 800356a:	005b      	lsls	r3, r3, #1
 800356c:	5cd3      	ldrb	r3, [r2, r3]
 800356e:	0019      	movs	r1, r3
 8003570:	683a      	ldr	r2, [r7, #0]
 8003572:	4828      	ldr	r0, [pc, #160]	; (8003614 <VL53L0X_ReadMulti+0xe0>)
 8003574:	2390      	movs	r3, #144	; 0x90
 8003576:	019b      	lsls	r3, r3, #6
 8003578:	9301      	str	r3, [sp, #4]
 800357a:	2380      	movs	r3, #128	; 0x80
 800357c:	049b      	lsls	r3, r3, #18
 800357e:	9300      	str	r3, [sp, #0]
 8003580:	0013      	movs	r3, r2
 8003582:	2200      	movs	r2, #0
 8003584:	f7ff fe58 	bl	8003238 <LL_I2C_HandleTransfer>
 8003588:	2317      	movs	r3, #23
 800358a:	18fb      	adds	r3, r7, r3
 800358c:	2200      	movs	r2, #0
 800358e:	701a      	strb	r2, [r3, #0]
 8003590:	e021      	b.n	80035d6 <VL53L0X_ReadMulti+0xa2>
 8003592:	46c0      	nop			; (mov r8, r8)
 8003594:	4b1f      	ldr	r3, [pc, #124]	; (8003614 <VL53L0X_ReadMulti+0xe0>)
 8003596:	0018      	movs	r0, r3
 8003598:	f7ff fe2e 	bl	80031f8 <LL_I2C_IsActiveFlag_RXNE>
 800359c:	1e03      	subs	r3, r0, #0
 800359e:	d104      	bne.n	80035aa <VL53L0X_ReadMulti+0x76>
 80035a0:	693b      	ldr	r3, [r7, #16]
 80035a2:	1e5a      	subs	r2, r3, #1
 80035a4:	613a      	str	r2, [r7, #16]
 80035a6:	2b00      	cmp	r3, #0
 80035a8:	dcf4      	bgt.n	8003594 <VL53L0X_ReadMulti+0x60>
 80035aa:	693b      	ldr	r3, [r7, #16]
 80035ac:	2b00      	cmp	r3, #0
 80035ae:	dc02      	bgt.n	80035b6 <VL53L0X_ReadMulti+0x82>
 80035b0:	2307      	movs	r3, #7
 80035b2:	425b      	negs	r3, r3
 80035b4:	e028      	b.n	8003608 <VL53L0X_ReadMulti+0xd4>
 80035b6:	2517      	movs	r5, #23
 80035b8:	197b      	adds	r3, r7, r5
 80035ba:	781b      	ldrb	r3, [r3, #0]
 80035bc:	687a      	ldr	r2, [r7, #4]
 80035be:	18d4      	adds	r4, r2, r3
 80035c0:	4b14      	ldr	r3, [pc, #80]	; (8003614 <VL53L0X_ReadMulti+0xe0>)
 80035c2:	0018      	movs	r0, r3
 80035c4:	f7ff fe56 	bl	8003274 <LL_I2C_ReceiveData8>
 80035c8:	0003      	movs	r3, r0
 80035ca:	7023      	strb	r3, [r4, #0]
 80035cc:	197b      	adds	r3, r7, r5
 80035ce:	781a      	ldrb	r2, [r3, #0]
 80035d0:	197b      	adds	r3, r7, r5
 80035d2:	3201      	adds	r2, #1
 80035d4:	701a      	strb	r2, [r3, #0]
 80035d6:	2317      	movs	r3, #23
 80035d8:	18fb      	adds	r3, r7, r3
 80035da:	781b      	ldrb	r3, [r3, #0]
 80035dc:	683a      	ldr	r2, [r7, #0]
 80035de:	429a      	cmp	r2, r3
 80035e0:	d8d7      	bhi.n	8003592 <VL53L0X_ReadMulti+0x5e>
 80035e2:	46c0      	nop			; (mov r8, r8)
 80035e4:	4b0b      	ldr	r3, [pc, #44]	; (8003614 <VL53L0X_ReadMulti+0xe0>)
 80035e6:	0018      	movs	r0, r3
 80035e8:	f7ff fe16 	bl	8003218 <LL_I2C_IsActiveFlag_TC>
 80035ec:	1e03      	subs	r3, r0, #0
 80035ee:	d004      	beq.n	80035fa <VL53L0X_ReadMulti+0xc6>
 80035f0:	693b      	ldr	r3, [r7, #16]
 80035f2:	1e5a      	subs	r2, r3, #1
 80035f4:	613a      	str	r2, [r7, #16]
 80035f6:	2b00      	cmp	r3, #0
 80035f8:	dcf4      	bgt.n	80035e4 <VL53L0X_ReadMulti+0xb0>
 80035fa:	693b      	ldr	r3, [r7, #16]
 80035fc:	2b00      	cmp	r3, #0
 80035fe:	dc02      	bgt.n	8003606 <VL53L0X_ReadMulti+0xd2>
 8003600:	2307      	movs	r3, #7
 8003602:	425b      	negs	r3, r3
 8003604:	e000      	b.n	8003608 <VL53L0X_ReadMulti+0xd4>
 8003606:	2300      	movs	r3, #0
 8003608:	0018      	movs	r0, r3
 800360a:	46bd      	mov	sp, r7
 800360c:	b006      	add	sp, #24
 800360e:	bdb0      	pop	{r4, r5, r7, pc}
 8003610:	000005dc 	.word	0x000005dc
 8003614:	40005400 	.word	0x40005400

08003618 <VL53L0X_WrByte>:
 8003618:	b580      	push	{r7, lr}
 800361a:	b082      	sub	sp, #8
 800361c:	af00      	add	r7, sp, #0
 800361e:	6078      	str	r0, [r7, #4]
 8003620:	0008      	movs	r0, r1
 8003622:	0011      	movs	r1, r2
 8003624:	1cfb      	adds	r3, r7, #3
 8003626:	1c02      	adds	r2, r0, #0
 8003628:	701a      	strb	r2, [r3, #0]
 800362a:	1cbb      	adds	r3, r7, #2
 800362c:	1c0a      	adds	r2, r1, #0
 800362e:	701a      	strb	r2, [r3, #0]
 8003630:	1cba      	adds	r2, r7, #2
 8003632:	1cfb      	adds	r3, r7, #3
 8003634:	7819      	ldrb	r1, [r3, #0]
 8003636:	6878      	ldr	r0, [r7, #4]
 8003638:	2301      	movs	r3, #1
 800363a:	f7ff fefb 	bl	8003434 <VL53L0X_WriteMulti>
 800363e:	2300      	movs	r3, #0
 8003640:	0018      	movs	r0, r3
 8003642:	46bd      	mov	sp, r7
 8003644:	b002      	add	sp, #8
 8003646:	bd80      	pop	{r7, pc}

08003648 <VL53L0X_WrWord>:
 8003648:	b580      	push	{r7, lr}
 800364a:	b084      	sub	sp, #16
 800364c:	af00      	add	r7, sp, #0
 800364e:	6078      	str	r0, [r7, #4]
 8003650:	0008      	movs	r0, r1
 8003652:	0011      	movs	r1, r2
 8003654:	1cfb      	adds	r3, r7, #3
 8003656:	1c02      	adds	r2, r0, #0
 8003658:	701a      	strb	r2, [r3, #0]
 800365a:	003b      	movs	r3, r7
 800365c:	1c0a      	adds	r2, r1, #0
 800365e:	801a      	strh	r2, [r3, #0]
 8003660:	003b      	movs	r3, r7
 8003662:	881b      	ldrh	r3, [r3, #0]
 8003664:	0a1b      	lsrs	r3, r3, #8
 8003666:	b29b      	uxth	r3, r3
 8003668:	b2da      	uxtb	r2, r3
 800366a:	210c      	movs	r1, #12
 800366c:	187b      	adds	r3, r7, r1
 800366e:	701a      	strb	r2, [r3, #0]
 8003670:	003b      	movs	r3, r7
 8003672:	881b      	ldrh	r3, [r3, #0]
 8003674:	b2da      	uxtb	r2, r3
 8003676:	187b      	adds	r3, r7, r1
 8003678:	705a      	strb	r2, [r3, #1]
 800367a:	187a      	adds	r2, r7, r1
 800367c:	1cfb      	adds	r3, r7, #3
 800367e:	7819      	ldrb	r1, [r3, #0]
 8003680:	6878      	ldr	r0, [r7, #4]
 8003682:	2302      	movs	r3, #2
 8003684:	f7ff fed6 	bl	8003434 <VL53L0X_WriteMulti>
 8003688:	2300      	movs	r3, #0
 800368a:	0018      	movs	r0, r3
 800368c:	46bd      	mov	sp, r7
 800368e:	b004      	add	sp, #16
 8003690:	bd80      	pop	{r7, pc}

08003692 <VL53L0X_UpdateByte>:
 8003692:	b590      	push	{r4, r7, lr}
 8003694:	b085      	sub	sp, #20
 8003696:	af00      	add	r7, sp, #0
 8003698:	6078      	str	r0, [r7, #4]
 800369a:	000c      	movs	r4, r1
 800369c:	0010      	movs	r0, r2
 800369e:	0019      	movs	r1, r3
 80036a0:	1cfb      	adds	r3, r7, #3
 80036a2:	1c22      	adds	r2, r4, #0
 80036a4:	701a      	strb	r2, [r3, #0]
 80036a6:	1cbb      	adds	r3, r7, #2
 80036a8:	1c02      	adds	r2, r0, #0
 80036aa:	701a      	strb	r2, [r3, #0]
 80036ac:	1c7b      	adds	r3, r7, #1
 80036ae:	1c0a      	adds	r2, r1, #0
 80036b0:	701a      	strb	r2, [r3, #0]
 80036b2:	240f      	movs	r4, #15
 80036b4:	193a      	adds	r2, r7, r4
 80036b6:	1cfb      	adds	r3, r7, #3
 80036b8:	7819      	ldrb	r1, [r3, #0]
 80036ba:	6878      	ldr	r0, [r7, #4]
 80036bc:	2301      	movs	r3, #1
 80036be:	f7ff ff39 	bl	8003534 <VL53L0X_ReadMulti>
 80036c2:	0021      	movs	r1, r4
 80036c4:	187b      	adds	r3, r7, r1
 80036c6:	781b      	ldrb	r3, [r3, #0]
 80036c8:	1cba      	adds	r2, r7, #2
 80036ca:	7812      	ldrb	r2, [r2, #0]
 80036cc:	4013      	ands	r3, r2
 80036ce:	b2da      	uxtb	r2, r3
 80036d0:	1c7b      	adds	r3, r7, #1
 80036d2:	781b      	ldrb	r3, [r3, #0]
 80036d4:	4313      	orrs	r3, r2
 80036d6:	b2da      	uxtb	r2, r3
 80036d8:	187b      	adds	r3, r7, r1
 80036da:	701a      	strb	r2, [r3, #0]
 80036dc:	187a      	adds	r2, r7, r1
 80036de:	1cfb      	adds	r3, r7, #3
 80036e0:	7819      	ldrb	r1, [r3, #0]
 80036e2:	6878      	ldr	r0, [r7, #4]
 80036e4:	2301      	movs	r3, #1
 80036e6:	f7ff fea5 	bl	8003434 <VL53L0X_WriteMulti>
 80036ea:	2300      	movs	r3, #0
 80036ec:	0018      	movs	r0, r3
 80036ee:	46bd      	mov	sp, r7
 80036f0:	b005      	add	sp, #20
 80036f2:	bd90      	pop	{r4, r7, pc}

080036f4 <VL53L0X_RdByte>:
 80036f4:	b580      	push	{r7, lr}
 80036f6:	b084      	sub	sp, #16
 80036f8:	af00      	add	r7, sp, #0
 80036fa:	60f8      	str	r0, [r7, #12]
 80036fc:	607a      	str	r2, [r7, #4]
 80036fe:	200b      	movs	r0, #11
 8003700:	183b      	adds	r3, r7, r0
 8003702:	1c0a      	adds	r2, r1, #0
 8003704:	701a      	strb	r2, [r3, #0]
 8003706:	687a      	ldr	r2, [r7, #4]
 8003708:	183b      	adds	r3, r7, r0
 800370a:	7819      	ldrb	r1, [r3, #0]
 800370c:	68f8      	ldr	r0, [r7, #12]
 800370e:	2301      	movs	r3, #1
 8003710:	f7ff ff10 	bl	8003534 <VL53L0X_ReadMulti>
 8003714:	2300      	movs	r3, #0
 8003716:	0018      	movs	r0, r3
 8003718:	46bd      	mov	sp, r7
 800371a:	b004      	add	sp, #16
 800371c:	bd80      	pop	{r7, pc}

0800371e <VL53L0X_RdWord>:
 800371e:	b590      	push	{r4, r7, lr}
 8003720:	b087      	sub	sp, #28
 8003722:	af00      	add	r7, sp, #0
 8003724:	60f8      	str	r0, [r7, #12]
 8003726:	607a      	str	r2, [r7, #4]
 8003728:	200b      	movs	r0, #11
 800372a:	183b      	adds	r3, r7, r0
 800372c:	1c0a      	adds	r2, r1, #0
 800372e:	701a      	strb	r2, [r3, #0]
 8003730:	2414      	movs	r4, #20
 8003732:	193a      	adds	r2, r7, r4
 8003734:	183b      	adds	r3, r7, r0
 8003736:	7819      	ldrb	r1, [r3, #0]
 8003738:	68f8      	ldr	r0, [r7, #12]
 800373a:	2302      	movs	r3, #2
 800373c:	f7ff fefa 	bl	8003534 <VL53L0X_ReadMulti>
 8003740:	0021      	movs	r1, r4
 8003742:	187b      	adds	r3, r7, r1
 8003744:	781b      	ldrb	r3, [r3, #0]
 8003746:	b29b      	uxth	r3, r3
 8003748:	021b      	lsls	r3, r3, #8
 800374a:	b29a      	uxth	r2, r3
 800374c:	187b      	adds	r3, r7, r1
 800374e:	785b      	ldrb	r3, [r3, #1]
 8003750:	b29b      	uxth	r3, r3
 8003752:	18d3      	adds	r3, r2, r3
 8003754:	b29a      	uxth	r2, r3
 8003756:	687b      	ldr	r3, [r7, #4]
 8003758:	801a      	strh	r2, [r3, #0]
 800375a:	2300      	movs	r3, #0
 800375c:	0018      	movs	r0, r3
 800375e:	46bd      	mov	sp, r7
 8003760:	b007      	add	sp, #28
 8003762:	bd90      	pop	{r4, r7, pc}

08003764 <VL53L0X_RdDWord>:
 8003764:	b590      	push	{r4, r7, lr}
 8003766:	b087      	sub	sp, #28
 8003768:	af00      	add	r7, sp, #0
 800376a:	60f8      	str	r0, [r7, #12]
 800376c:	607a      	str	r2, [r7, #4]
 800376e:	200b      	movs	r0, #11
 8003770:	183b      	adds	r3, r7, r0
 8003772:	1c0a      	adds	r2, r1, #0
 8003774:	701a      	strb	r2, [r3, #0]
 8003776:	2414      	movs	r4, #20
 8003778:	193a      	adds	r2, r7, r4
 800377a:	183b      	adds	r3, r7, r0
 800377c:	7819      	ldrb	r1, [r3, #0]
 800377e:	68f8      	ldr	r0, [r7, #12]
 8003780:	2304      	movs	r3, #4
 8003782:	f7ff fed7 	bl	8003534 <VL53L0X_ReadMulti>
 8003786:	0021      	movs	r1, r4
 8003788:	187b      	adds	r3, r7, r1
 800378a:	781b      	ldrb	r3, [r3, #0]
 800378c:	061a      	lsls	r2, r3, #24
 800378e:	187b      	adds	r3, r7, r1
 8003790:	785b      	ldrb	r3, [r3, #1]
 8003792:	041b      	lsls	r3, r3, #16
 8003794:	18d2      	adds	r2, r2, r3
 8003796:	187b      	adds	r3, r7, r1
 8003798:	789b      	ldrb	r3, [r3, #2]
 800379a:	021b      	lsls	r3, r3, #8
 800379c:	18d3      	adds	r3, r2, r3
 800379e:	187a      	adds	r2, r7, r1
 80037a0:	78d2      	ldrb	r2, [r2, #3]
 80037a2:	189a      	adds	r2, r3, r2
 80037a4:	687b      	ldr	r3, [r7, #4]
 80037a6:	601a      	str	r2, [r3, #0]
 80037a8:	2300      	movs	r3, #0
 80037aa:	0018      	movs	r0, r3
 80037ac:	46bd      	mov	sp, r7
 80037ae:	b007      	add	sp, #28
 80037b0:	bd90      	pop	{r4, r7, pc}
	...

080037b4 <VL53L0X_PollingDelay>:
 80037b4:	b580      	push	{r7, lr}
 80037b6:	b084      	sub	sp, #16
 80037b8:	af00      	add	r7, sp, #0
 80037ba:	6078      	str	r0, [r7, #4]
 80037bc:	4b06      	ldr	r3, [pc, #24]	; (80037d8 <VL53L0X_PollingDelay+0x24>)
 80037be:	60fb      	str	r3, [r7, #12]
 80037c0:	46c0      	nop			; (mov r8, r8)
 80037c2:	68fb      	ldr	r3, [r7, #12]
 80037c4:	1e5a      	subs	r2, r3, #1
 80037c6:	60fa      	str	r2, [r7, #12]
 80037c8:	2b00      	cmp	r3, #0
 80037ca:	d1fa      	bne.n	80037c2 <VL53L0X_PollingDelay+0xe>
 80037cc:	2300      	movs	r3, #0
 80037ce:	0018      	movs	r0, r3
 80037d0:	46bd      	mov	sp, r7
 80037d2:	b004      	add	sp, #16
 80037d4:	bd80      	pop	{r7, pc}
 80037d6:	46c0      	nop			; (mov r8, r8)
 80037d8:	00001388 	.word	0x00001388

080037dc <xputc>:
 80037dc:	b580      	push	{r7, lr}
 80037de:	b082      	sub	sp, #8
 80037e0:	af00      	add	r7, sp, #0
 80037e2:	0002      	movs	r2, r0
 80037e4:	1dfb      	adds	r3, r7, #7
 80037e6:	701a      	strb	r2, [r3, #0]
 80037e8:	1dfb      	adds	r3, r7, #7
 80037ea:	781b      	ldrb	r3, [r3, #0]
 80037ec:	2b0a      	cmp	r3, #10
 80037ee:	d102      	bne.n	80037f6 <xputc+0x1a>
 80037f0:	200d      	movs	r0, #13
 80037f2:	f7ff fff3 	bl	80037dc <xputc>
 80037f6:	4b0d      	ldr	r3, [pc, #52]	; (800382c <xputc+0x50>)
 80037f8:	681b      	ldr	r3, [r3, #0]
 80037fa:	2b00      	cmp	r3, #0
 80037fc:	d008      	beq.n	8003810 <xputc+0x34>
 80037fe:	4b0b      	ldr	r3, [pc, #44]	; (800382c <xputc+0x50>)
 8003800:	681b      	ldr	r3, [r3, #0]
 8003802:	1c59      	adds	r1, r3, #1
 8003804:	4a09      	ldr	r2, [pc, #36]	; (800382c <xputc+0x50>)
 8003806:	6011      	str	r1, [r2, #0]
 8003808:	1dfa      	adds	r2, r7, #7
 800380a:	7812      	ldrb	r2, [r2, #0]
 800380c:	701a      	strb	r2, [r3, #0]
 800380e:	e009      	b.n	8003824 <xputc+0x48>
 8003810:	4b07      	ldr	r3, [pc, #28]	; (8003830 <xputc+0x54>)
 8003812:	681b      	ldr	r3, [r3, #0]
 8003814:	2b00      	cmp	r3, #0
 8003816:	d005      	beq.n	8003824 <xputc+0x48>
 8003818:	4b05      	ldr	r3, [pc, #20]	; (8003830 <xputc+0x54>)
 800381a:	681b      	ldr	r3, [r3, #0]
 800381c:	1dfa      	adds	r2, r7, #7
 800381e:	7812      	ldrb	r2, [r2, #0]
 8003820:	0010      	movs	r0, r2
 8003822:	4798      	blx	r3
 8003824:	46bd      	mov	sp, r7
 8003826:	b002      	add	sp, #8
 8003828:	bd80      	pop	{r7, pc}
 800382a:	46c0      	nop			; (mov r8, r8)
 800382c:	2000191c 	.word	0x2000191c
 8003830:	20001924 	.word	0x20001924

08003834 <xputs>:
 8003834:	b580      	push	{r7, lr}
 8003836:	b082      	sub	sp, #8
 8003838:	af00      	add	r7, sp, #0
 800383a:	6078      	str	r0, [r7, #4]
 800383c:	e006      	b.n	800384c <xputs+0x18>
 800383e:	687b      	ldr	r3, [r7, #4]
 8003840:	1c5a      	adds	r2, r3, #1
 8003842:	607a      	str	r2, [r7, #4]
 8003844:	781b      	ldrb	r3, [r3, #0]
 8003846:	0018      	movs	r0, r3
 8003848:	f7ff ffc8 	bl	80037dc <xputc>
 800384c:	687b      	ldr	r3, [r7, #4]
 800384e:	781b      	ldrb	r3, [r3, #0]
 8003850:	2b00      	cmp	r3, #0
 8003852:	d1f4      	bne.n	800383e <xputs+0xa>
 8003854:	46c0      	nop			; (mov r8, r8)
 8003856:	46c0      	nop			; (mov r8, r8)
 8003858:	46bd      	mov	sp, r7
 800385a:	b002      	add	sp, #8
 800385c:	bd80      	pop	{r7, pc}
	...

08003860 <xvprintf>:
 8003860:	b590      	push	{r4, r7, lr}
 8003862:	b093      	sub	sp, #76	; 0x4c
 8003864:	af00      	add	r7, sp, #0
 8003866:	6078      	str	r0, [r7, #4]
 8003868:	6039      	str	r1, [r7, #0]
 800386a:	687b      	ldr	r3, [r7, #4]
 800386c:	1c5a      	adds	r2, r3, #1
 800386e:	607a      	str	r2, [r7, #4]
 8003870:	2133      	movs	r1, #51	; 0x33
 8003872:	187a      	adds	r2, r7, r1
 8003874:	781b      	ldrb	r3, [r3, #0]
 8003876:	7013      	strb	r3, [r2, #0]
 8003878:	000a      	movs	r2, r1
 800387a:	18bb      	adds	r3, r7, r2
 800387c:	781b      	ldrb	r3, [r3, #0]
 800387e:	2b00      	cmp	r3, #0
 8003880:	d100      	bne.n	8003884 <xvprintf+0x24>
 8003882:	e167      	b.n	8003b54 <xvprintf+0x2f4>
 8003884:	18bb      	adds	r3, r7, r2
 8003886:	781b      	ldrb	r3, [r3, #0]
 8003888:	2b25      	cmp	r3, #37	; 0x25
 800388a:	d005      	beq.n	8003898 <xvprintf+0x38>
 800388c:	18bb      	adds	r3, r7, r2
 800388e:	781b      	ldrb	r3, [r3, #0]
 8003890:	0018      	movs	r0, r3
 8003892:	f7ff ffa3 	bl	80037dc <xputc>
 8003896:	e15c      	b.n	8003b52 <xvprintf+0x2f2>
 8003898:	2300      	movs	r3, #0
 800389a:	637b      	str	r3, [r7, #52]	; 0x34
 800389c:	687b      	ldr	r3, [r7, #4]
 800389e:	1c5a      	adds	r2, r3, #1
 80038a0:	607a      	str	r2, [r7, #4]
 80038a2:	2133      	movs	r1, #51	; 0x33
 80038a4:	187a      	adds	r2, r7, r1
 80038a6:	781b      	ldrb	r3, [r3, #0]
 80038a8:	7013      	strb	r3, [r2, #0]
 80038aa:	187b      	adds	r3, r7, r1
 80038ac:	781b      	ldrb	r3, [r3, #0]
 80038ae:	2b30      	cmp	r3, #48	; 0x30
 80038b0:	d108      	bne.n	80038c4 <xvprintf+0x64>
 80038b2:	2301      	movs	r3, #1
 80038b4:	637b      	str	r3, [r7, #52]	; 0x34
 80038b6:	687b      	ldr	r3, [r7, #4]
 80038b8:	1c5a      	adds	r2, r3, #1
 80038ba:	607a      	str	r2, [r7, #4]
 80038bc:	187a      	adds	r2, r7, r1
 80038be:	781b      	ldrb	r3, [r3, #0]
 80038c0:	7013      	strb	r3, [r2, #0]
 80038c2:	e00c      	b.n	80038de <xvprintf+0x7e>
 80038c4:	2133      	movs	r1, #51	; 0x33
 80038c6:	187b      	adds	r3, r7, r1
 80038c8:	781b      	ldrb	r3, [r3, #0]
 80038ca:	2b2d      	cmp	r3, #45	; 0x2d
 80038cc:	d107      	bne.n	80038de <xvprintf+0x7e>
 80038ce:	2302      	movs	r3, #2
 80038d0:	637b      	str	r3, [r7, #52]	; 0x34
 80038d2:	687b      	ldr	r3, [r7, #4]
 80038d4:	1c5a      	adds	r2, r3, #1
 80038d6:	607a      	str	r2, [r7, #4]
 80038d8:	187a      	adds	r2, r7, r1
 80038da:	781b      	ldrb	r3, [r3, #0]
 80038dc:	7013      	strb	r3, [r2, #0]
 80038de:	2300      	movs	r3, #0
 80038e0:	63bb      	str	r3, [r7, #56]	; 0x38
 80038e2:	e011      	b.n	8003908 <xvprintf+0xa8>
 80038e4:	6bba      	ldr	r2, [r7, #56]	; 0x38
 80038e6:	0013      	movs	r3, r2
 80038e8:	009b      	lsls	r3, r3, #2
 80038ea:	189b      	adds	r3, r3, r2
 80038ec:	005b      	lsls	r3, r3, #1
 80038ee:	001a      	movs	r2, r3
 80038f0:	2133      	movs	r1, #51	; 0x33
 80038f2:	187b      	adds	r3, r7, r1
 80038f4:	781b      	ldrb	r3, [r3, #0]
 80038f6:	18d3      	adds	r3, r2, r3
 80038f8:	3b30      	subs	r3, #48	; 0x30
 80038fa:	63bb      	str	r3, [r7, #56]	; 0x38
 80038fc:	687b      	ldr	r3, [r7, #4]
 80038fe:	1c5a      	adds	r2, r3, #1
 8003900:	607a      	str	r2, [r7, #4]
 8003902:	187a      	adds	r2, r7, r1
 8003904:	781b      	ldrb	r3, [r3, #0]
 8003906:	7013      	strb	r3, [r2, #0]
 8003908:	2233      	movs	r2, #51	; 0x33
 800390a:	18bb      	adds	r3, r7, r2
 800390c:	781b      	ldrb	r3, [r3, #0]
 800390e:	2b2f      	cmp	r3, #47	; 0x2f
 8003910:	d903      	bls.n	800391a <xvprintf+0xba>
 8003912:	18bb      	adds	r3, r7, r2
 8003914:	781b      	ldrb	r3, [r3, #0]
 8003916:	2b39      	cmp	r3, #57	; 0x39
 8003918:	d9e4      	bls.n	80038e4 <xvprintf+0x84>
 800391a:	2233      	movs	r2, #51	; 0x33
 800391c:	18bb      	adds	r3, r7, r2
 800391e:	781b      	ldrb	r3, [r3, #0]
 8003920:	2b6c      	cmp	r3, #108	; 0x6c
 8003922:	d003      	beq.n	800392c <xvprintf+0xcc>
 8003924:	18bb      	adds	r3, r7, r2
 8003926:	781b      	ldrb	r3, [r3, #0]
 8003928:	2b4c      	cmp	r3, #76	; 0x4c
 800392a:	d10a      	bne.n	8003942 <xvprintf+0xe2>
 800392c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800392e:	2204      	movs	r2, #4
 8003930:	4313      	orrs	r3, r2
 8003932:	637b      	str	r3, [r7, #52]	; 0x34
 8003934:	687b      	ldr	r3, [r7, #4]
 8003936:	1c5a      	adds	r2, r3, #1
 8003938:	607a      	str	r2, [r7, #4]
 800393a:	2233      	movs	r2, #51	; 0x33
 800393c:	18ba      	adds	r2, r7, r2
 800393e:	781b      	ldrb	r3, [r3, #0]
 8003940:	7013      	strb	r3, [r2, #0]
 8003942:	2233      	movs	r2, #51	; 0x33
 8003944:	18bb      	adds	r3, r7, r2
 8003946:	781b      	ldrb	r3, [r3, #0]
 8003948:	2b00      	cmp	r3, #0
 800394a:	d100      	bne.n	800394e <xvprintf+0xee>
 800394c:	e104      	b.n	8003b58 <xvprintf+0x2f8>
 800394e:	2132      	movs	r1, #50	; 0x32
 8003950:	187b      	adds	r3, r7, r1
 8003952:	18ba      	adds	r2, r7, r2
 8003954:	7812      	ldrb	r2, [r2, #0]
 8003956:	701a      	strb	r2, [r3, #0]
 8003958:	187b      	adds	r3, r7, r1
 800395a:	781b      	ldrb	r3, [r3, #0]
 800395c:	2b60      	cmp	r3, #96	; 0x60
 800395e:	d904      	bls.n	800396a <xvprintf+0x10a>
 8003960:	187b      	adds	r3, r7, r1
 8003962:	187a      	adds	r2, r7, r1
 8003964:	7812      	ldrb	r2, [r2, #0]
 8003966:	3a20      	subs	r2, #32
 8003968:	701a      	strb	r2, [r3, #0]
 800396a:	2332      	movs	r3, #50	; 0x32
 800396c:	18fb      	adds	r3, r7, r3
 800396e:	781b      	ldrb	r3, [r3, #0]
 8003970:	3b42      	subs	r3, #66	; 0x42
 8003972:	2b16      	cmp	r3, #22
 8003974:	d847      	bhi.n	8003a06 <xvprintf+0x1a6>
 8003976:	009a      	lsls	r2, r3, #2
 8003978:	4b7a      	ldr	r3, [pc, #488]	; (8003b64 <xvprintf+0x304>)
 800397a:	18d3      	adds	r3, r2, r3
 800397c:	681b      	ldr	r3, [r3, #0]
 800397e:	469f      	mov	pc, r3
 8003980:	683b      	ldr	r3, [r7, #0]
 8003982:	1d1a      	adds	r2, r3, #4
 8003984:	603a      	str	r2, [r7, #0]
 8003986:	681b      	ldr	r3, [r3, #0]
 8003988:	627b      	str	r3, [r7, #36]	; 0x24
 800398a:	2300      	movs	r3, #0
 800398c:	63fb      	str	r3, [r7, #60]	; 0x3c
 800398e:	e002      	b.n	8003996 <xvprintf+0x136>
 8003990:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8003992:	3301      	adds	r3, #1
 8003994:	63fb      	str	r3, [r7, #60]	; 0x3c
 8003996:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8003998:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800399a:	18d3      	adds	r3, r2, r3
 800399c:	781b      	ldrb	r3, [r3, #0]
 800399e:	2b00      	cmp	r3, #0
 80039a0:	d1f6      	bne.n	8003990 <xvprintf+0x130>
 80039a2:	e002      	b.n	80039aa <xvprintf+0x14a>
 80039a4:	2020      	movs	r0, #32
 80039a6:	f7ff ff19 	bl	80037dc <xputc>
 80039aa:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80039ac:	2202      	movs	r2, #2
 80039ae:	4013      	ands	r3, r2
 80039b0:	d105      	bne.n	80039be <xvprintf+0x15e>
 80039b2:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80039b4:	1c5a      	adds	r2, r3, #1
 80039b6:	63fa      	str	r2, [r7, #60]	; 0x3c
 80039b8:	6bba      	ldr	r2, [r7, #56]	; 0x38
 80039ba:	429a      	cmp	r2, r3
 80039bc:	d8f2      	bhi.n	80039a4 <xvprintf+0x144>
 80039be:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80039c0:	0018      	movs	r0, r3
 80039c2:	f7ff ff37 	bl	8003834 <xputs>
 80039c6:	e002      	b.n	80039ce <xvprintf+0x16e>
 80039c8:	2020      	movs	r0, #32
 80039ca:	f7ff ff07 	bl	80037dc <xputc>
 80039ce:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80039d0:	1c5a      	adds	r2, r3, #1
 80039d2:	63fa      	str	r2, [r7, #60]	; 0x3c
 80039d4:	6bba      	ldr	r2, [r7, #56]	; 0x38
 80039d6:	429a      	cmp	r2, r3
 80039d8:	d8f6      	bhi.n	80039c8 <xvprintf+0x168>
 80039da:	e0ba      	b.n	8003b52 <xvprintf+0x2f2>
 80039dc:	683b      	ldr	r3, [r7, #0]
 80039de:	1d1a      	adds	r2, r3, #4
 80039e0:	603a      	str	r2, [r7, #0]
 80039e2:	681b      	ldr	r3, [r3, #0]
 80039e4:	b2db      	uxtb	r3, r3
 80039e6:	0018      	movs	r0, r3
 80039e8:	f7ff fef8 	bl	80037dc <xputc>
 80039ec:	e0b1      	b.n	8003b52 <xvprintf+0x2f2>
 80039ee:	2302      	movs	r3, #2
 80039f0:	647b      	str	r3, [r7, #68]	; 0x44
 80039f2:	e00f      	b.n	8003a14 <xvprintf+0x1b4>
 80039f4:	2308      	movs	r3, #8
 80039f6:	647b      	str	r3, [r7, #68]	; 0x44
 80039f8:	e00c      	b.n	8003a14 <xvprintf+0x1b4>
 80039fa:	230a      	movs	r3, #10
 80039fc:	647b      	str	r3, [r7, #68]	; 0x44
 80039fe:	e009      	b.n	8003a14 <xvprintf+0x1b4>
 8003a00:	2310      	movs	r3, #16
 8003a02:	647b      	str	r3, [r7, #68]	; 0x44
 8003a04:	e006      	b.n	8003a14 <xvprintf+0x1b4>
 8003a06:	2333      	movs	r3, #51	; 0x33
 8003a08:	18fb      	adds	r3, r7, r3
 8003a0a:	781b      	ldrb	r3, [r3, #0]
 8003a0c:	0018      	movs	r0, r3
 8003a0e:	f7ff fee5 	bl	80037dc <xputc>
 8003a12:	e09e      	b.n	8003b52 <xvprintf+0x2f2>
 8003a14:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8003a16:	2204      	movs	r2, #4
 8003a18:	4013      	ands	r3, r2
 8003a1a:	d005      	beq.n	8003a28 <xvprintf+0x1c8>
 8003a1c:	683b      	ldr	r3, [r7, #0]
 8003a1e:	1d1a      	adds	r2, r3, #4
 8003a20:	603a      	str	r2, [r7, #0]
 8003a22:	681b      	ldr	r3, [r3, #0]
 8003a24:	62fb      	str	r3, [r7, #44]	; 0x2c
 8003a26:	e00e      	b.n	8003a46 <xvprintf+0x1e6>
 8003a28:	2332      	movs	r3, #50	; 0x32
 8003a2a:	18fb      	adds	r3, r7, r3
 8003a2c:	781b      	ldrb	r3, [r3, #0]
 8003a2e:	2b44      	cmp	r3, #68	; 0x44
 8003a30:	d104      	bne.n	8003a3c <xvprintf+0x1dc>
 8003a32:	683b      	ldr	r3, [r7, #0]
 8003a34:	1d1a      	adds	r2, r3, #4
 8003a36:	603a      	str	r2, [r7, #0]
 8003a38:	681b      	ldr	r3, [r3, #0]
 8003a3a:	e003      	b.n	8003a44 <xvprintf+0x1e4>
 8003a3c:	683b      	ldr	r3, [r7, #0]
 8003a3e:	1d1a      	adds	r2, r3, #4
 8003a40:	603a      	str	r2, [r7, #0]
 8003a42:	681b      	ldr	r3, [r3, #0]
 8003a44:	62fb      	str	r3, [r7, #44]	; 0x2c
 8003a46:	2332      	movs	r3, #50	; 0x32
 8003a48:	18fb      	adds	r3, r7, r3
 8003a4a:	781b      	ldrb	r3, [r3, #0]
 8003a4c:	2b44      	cmp	r3, #68	; 0x44
 8003a4e:	d109      	bne.n	8003a64 <xvprintf+0x204>
 8003a50:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8003a52:	2b00      	cmp	r3, #0
 8003a54:	da06      	bge.n	8003a64 <xvprintf+0x204>
 8003a56:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8003a58:	425b      	negs	r3, r3
 8003a5a:	62fb      	str	r3, [r7, #44]	; 0x2c
 8003a5c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8003a5e:	2210      	movs	r2, #16
 8003a60:	4313      	orrs	r3, r2
 8003a62:	637b      	str	r3, [r7, #52]	; 0x34
 8003a64:	2300      	movs	r3, #0
 8003a66:	643b      	str	r3, [r7, #64]	; 0x40
 8003a68:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8003a6a:	62bb      	str	r3, [r7, #40]	; 0x28
 8003a6c:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8003a6e:	6c79      	ldr	r1, [r7, #68]	; 0x44
 8003a70:	0018      	movs	r0, r3
 8003a72:	f7fc fbcf 	bl	8000214 <__aeabi_uidivmod>
 8003a76:	000b      	movs	r3, r1
 8003a78:	001a      	movs	r2, r3
 8003a7a:	2432      	movs	r4, #50	; 0x32
 8003a7c:	193b      	adds	r3, r7, r4
 8003a7e:	701a      	strb	r2, [r3, #0]
 8003a80:	6c79      	ldr	r1, [r7, #68]	; 0x44
 8003a82:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8003a84:	f7fc fb40 	bl	8000108 <__udivsi3>
 8003a88:	0003      	movs	r3, r0
 8003a8a:	62bb      	str	r3, [r7, #40]	; 0x28
 8003a8c:	193b      	adds	r3, r7, r4
 8003a8e:	781b      	ldrb	r3, [r3, #0]
 8003a90:	2b09      	cmp	r3, #9
 8003a92:	d90d      	bls.n	8003ab0 <xvprintf+0x250>
 8003a94:	2333      	movs	r3, #51	; 0x33
 8003a96:	18fb      	adds	r3, r7, r3
 8003a98:	781b      	ldrb	r3, [r3, #0]
 8003a9a:	2b78      	cmp	r3, #120	; 0x78
 8003a9c:	d101      	bne.n	8003aa2 <xvprintf+0x242>
 8003a9e:	2327      	movs	r3, #39	; 0x27
 8003aa0:	e000      	b.n	8003aa4 <xvprintf+0x244>
 8003aa2:	2307      	movs	r3, #7
 8003aa4:	2132      	movs	r1, #50	; 0x32
 8003aa6:	187a      	adds	r2, r7, r1
 8003aa8:	1879      	adds	r1, r7, r1
 8003aaa:	7809      	ldrb	r1, [r1, #0]
 8003aac:	185b      	adds	r3, r3, r1
 8003aae:	7013      	strb	r3, [r2, #0]
 8003ab0:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8003ab2:	1c5a      	adds	r2, r3, #1
 8003ab4:	643a      	str	r2, [r7, #64]	; 0x40
 8003ab6:	2232      	movs	r2, #50	; 0x32
 8003ab8:	18ba      	adds	r2, r7, r2
 8003aba:	7812      	ldrb	r2, [r2, #0]
 8003abc:	3230      	adds	r2, #48	; 0x30
 8003abe:	b2d1      	uxtb	r1, r2
 8003ac0:	220c      	movs	r2, #12
 8003ac2:	18ba      	adds	r2, r7, r2
 8003ac4:	54d1      	strb	r1, [r2, r3]
 8003ac6:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8003ac8:	2b00      	cmp	r3, #0
 8003aca:	d002      	beq.n	8003ad2 <xvprintf+0x272>
 8003acc:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8003ace:	2b17      	cmp	r3, #23
 8003ad0:	d9cc      	bls.n	8003a6c <xvprintf+0x20c>
 8003ad2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8003ad4:	2210      	movs	r2, #16
 8003ad6:	4013      	ands	r3, r2
 8003ad8:	d006      	beq.n	8003ae8 <xvprintf+0x288>
 8003ada:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8003adc:	1c5a      	adds	r2, r3, #1
 8003ade:	643a      	str	r2, [r7, #64]	; 0x40
 8003ae0:	220c      	movs	r2, #12
 8003ae2:	18ba      	adds	r2, r7, r2
 8003ae4:	212d      	movs	r1, #45	; 0x2d
 8003ae6:	54d1      	strb	r1, [r2, r3]
 8003ae8:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8003aea:	63fb      	str	r3, [r7, #60]	; 0x3c
 8003aec:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8003aee:	2201      	movs	r2, #1
 8003af0:	4013      	ands	r3, r2
 8003af2:	d001      	beq.n	8003af8 <xvprintf+0x298>
 8003af4:	2230      	movs	r2, #48	; 0x30
 8003af6:	e000      	b.n	8003afa <xvprintf+0x29a>
 8003af8:	2220      	movs	r2, #32
 8003afa:	2332      	movs	r3, #50	; 0x32
 8003afc:	18fb      	adds	r3, r7, r3
 8003afe:	701a      	strb	r2, [r3, #0]
 8003b00:	e005      	b.n	8003b0e <xvprintf+0x2ae>
 8003b02:	2332      	movs	r3, #50	; 0x32
 8003b04:	18fb      	adds	r3, r7, r3
 8003b06:	781b      	ldrb	r3, [r3, #0]
 8003b08:	0018      	movs	r0, r3
 8003b0a:	f7ff fe67 	bl	80037dc <xputc>
 8003b0e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8003b10:	2202      	movs	r2, #2
 8003b12:	4013      	ands	r3, r2
 8003b14:	d105      	bne.n	8003b22 <xvprintf+0x2c2>
 8003b16:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8003b18:	1c5a      	adds	r2, r3, #1
 8003b1a:	63fa      	str	r2, [r7, #60]	; 0x3c
 8003b1c:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8003b1e:	429a      	cmp	r2, r3
 8003b20:	d8ef      	bhi.n	8003b02 <xvprintf+0x2a2>
 8003b22:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8003b24:	3b01      	subs	r3, #1
 8003b26:	643b      	str	r3, [r7, #64]	; 0x40
 8003b28:	230c      	movs	r3, #12
 8003b2a:	18fa      	adds	r2, r7, r3
 8003b2c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8003b2e:	18d3      	adds	r3, r2, r3
 8003b30:	781b      	ldrb	r3, [r3, #0]
 8003b32:	0018      	movs	r0, r3
 8003b34:	f7ff fe52 	bl	80037dc <xputc>
 8003b38:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8003b3a:	2b00      	cmp	r3, #0
 8003b3c:	d1f1      	bne.n	8003b22 <xvprintf+0x2c2>
 8003b3e:	e002      	b.n	8003b46 <xvprintf+0x2e6>
 8003b40:	2020      	movs	r0, #32
 8003b42:	f7ff fe4b 	bl	80037dc <xputc>
 8003b46:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8003b48:	1c5a      	adds	r2, r3, #1
 8003b4a:	63fa      	str	r2, [r7, #60]	; 0x3c
 8003b4c:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8003b4e:	429a      	cmp	r2, r3
 8003b50:	d8f6      	bhi.n	8003b40 <xvprintf+0x2e0>
 8003b52:	e68a      	b.n	800386a <xvprintf+0xa>
 8003b54:	46c0      	nop			; (mov r8, r8)
 8003b56:	e000      	b.n	8003b5a <xvprintf+0x2fa>
 8003b58:	46c0      	nop			; (mov r8, r8)
 8003b5a:	46c0      	nop			; (mov r8, r8)
 8003b5c:	46bd      	mov	sp, r7
 8003b5e:	b013      	add	sp, #76	; 0x4c
 8003b60:	bd90      	pop	{r4, r7, pc}
 8003b62:	46c0      	nop			; (mov r8, r8)
 8003b64:	08009c7c 	.word	0x08009c7c

08003b68 <xprintf>:
 8003b68:	b40f      	push	{r0, r1, r2, r3}
 8003b6a:	b580      	push	{r7, lr}
 8003b6c:	b082      	sub	sp, #8
 8003b6e:	af00      	add	r7, sp, #0
 8003b70:	2314      	movs	r3, #20
 8003b72:	18fb      	adds	r3, r7, r3
 8003b74:	607b      	str	r3, [r7, #4]
 8003b76:	687a      	ldr	r2, [r7, #4]
 8003b78:	693b      	ldr	r3, [r7, #16]
 8003b7a:	0011      	movs	r1, r2
 8003b7c:	0018      	movs	r0, r3
 8003b7e:	f7ff fe6f 	bl	8003860 <xvprintf>
 8003b82:	46c0      	nop			; (mov r8, r8)
 8003b84:	46bd      	mov	sp, r7
 8003b86:	b002      	add	sp, #8
 8003b88:	bc80      	pop	{r7}
 8003b8a:	bc08      	pop	{r3}
 8003b8c:	b004      	add	sp, #16
 8003b8e:	4718      	bx	r3

08003b90 <VL53L0X_GetOffsetCalibrationDataMicroMeter>:
 8003b90:	b5b0      	push	{r4, r5, r7, lr}
 8003b92:	b084      	sub	sp, #16
 8003b94:	af00      	add	r7, sp, #0
 8003b96:	6078      	str	r0, [r7, #4]
 8003b98:	6039      	str	r1, [r7, #0]
 8003b9a:	250f      	movs	r5, #15
 8003b9c:	197b      	adds	r3, r7, r5
 8003b9e:	2200      	movs	r2, #0
 8003ba0:	701a      	strb	r2, [r3, #0]
 8003ba2:	197c      	adds	r4, r7, r5
 8003ba4:	683a      	ldr	r2, [r7, #0]
 8003ba6:	687b      	ldr	r3, [r7, #4]
 8003ba8:	0011      	movs	r1, r2
 8003baa:	0018      	movs	r0, r3
 8003bac:	f002 f83e 	bl	8005c2c <VL53L0X_get_offset_calibration_data_micro_meter>
 8003bb0:	0003      	movs	r3, r0
 8003bb2:	7023      	strb	r3, [r4, #0]
 8003bb4:	197b      	adds	r3, r7, r5
 8003bb6:	781b      	ldrb	r3, [r3, #0]
 8003bb8:	b25b      	sxtb	r3, r3
 8003bba:	0018      	movs	r0, r3
 8003bbc:	46bd      	mov	sp, r7
 8003bbe:	b004      	add	sp, #16
 8003bc0:	bdb0      	pop	{r4, r5, r7, pc}

08003bc2 <VL53L0X_SetDeviceAddress>:
 8003bc2:	b5b0      	push	{r4, r5, r7, lr}
 8003bc4:	b084      	sub	sp, #16
 8003bc6:	af00      	add	r7, sp, #0
 8003bc8:	6078      	str	r0, [r7, #4]
 8003bca:	000a      	movs	r2, r1
 8003bcc:	1cfb      	adds	r3, r7, #3
 8003bce:	701a      	strb	r2, [r3, #0]
 8003bd0:	210f      	movs	r1, #15
 8003bd2:	187b      	adds	r3, r7, r1
 8003bd4:	2200      	movs	r2, #0
 8003bd6:	701a      	strb	r2, [r3, #0]
 8003bd8:	1cfb      	adds	r3, r7, #3
 8003bda:	781b      	ldrb	r3, [r3, #0]
 8003bdc:	085b      	lsrs	r3, r3, #1
 8003bde:	b2da      	uxtb	r2, r3
 8003be0:	000d      	movs	r5, r1
 8003be2:	187c      	adds	r4, r7, r1
 8003be4:	687b      	ldr	r3, [r7, #4]
 8003be6:	218a      	movs	r1, #138	; 0x8a
 8003be8:	0018      	movs	r0, r3
 8003bea:	f7ff fd15 	bl	8003618 <VL53L0X_WrByte>
 8003bee:	0003      	movs	r3, r0
 8003bf0:	7023      	strb	r3, [r4, #0]
 8003bf2:	197b      	adds	r3, r7, r5
 8003bf4:	781b      	ldrb	r3, [r3, #0]
 8003bf6:	b25b      	sxtb	r3, r3
 8003bf8:	0018      	movs	r0, r3
 8003bfa:	46bd      	mov	sp, r7
 8003bfc:	b004      	add	sp, #16
 8003bfe:	bdb0      	pop	{r4, r5, r7, pc}

08003c00 <VL53L0X_DataInit>:
 8003c00:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003c02:	b097      	sub	sp, #92	; 0x5c
 8003c04:	af00      	add	r7, sp, #0
 8003c06:	6078      	str	r0, [r7, #4]
 8003c08:	2557      	movs	r5, #87	; 0x57
 8003c0a:	197b      	adds	r3, r7, r5
 8003c0c:	2200      	movs	r2, #0
 8003c0e:	701a      	strb	r2, [r3, #0]
 8003c10:	197c      	adds	r4, r7, r5
 8003c12:	6878      	ldr	r0, [r7, #4]
 8003c14:	2301      	movs	r3, #1
 8003c16:	22fe      	movs	r2, #254	; 0xfe
 8003c18:	2189      	movs	r1, #137	; 0x89
 8003c1a:	f7ff fd3a 	bl	8003692 <VL53L0X_UpdateByte>
 8003c1e:	0003      	movs	r3, r0
 8003c20:	7023      	strb	r3, [r4, #0]
 8003c22:	197b      	adds	r3, r7, r5
 8003c24:	781b      	ldrb	r3, [r3, #0]
 8003c26:	b25b      	sxtb	r3, r3
 8003c28:	2b00      	cmp	r3, #0
 8003c2a:	d108      	bne.n	8003c3e <VL53L0X_DataInit+0x3e>
 8003c2c:	197c      	adds	r4, r7, r5
 8003c2e:	687b      	ldr	r3, [r7, #4]
 8003c30:	2200      	movs	r2, #0
 8003c32:	2188      	movs	r1, #136	; 0x88
 8003c34:	0018      	movs	r0, r3
 8003c36:	f7ff fcef 	bl	8003618 <VL53L0X_WrByte>
 8003c3a:	0003      	movs	r3, r0
 8003c3c:	7023      	strb	r3, [r4, #0]
 8003c3e:	687b      	ldr	r3, [r7, #4]
 8003c40:	22f0      	movs	r2, #240	; 0xf0
 8003c42:	2100      	movs	r1, #0
 8003c44:	5499      	strb	r1, [r3, r2]
 8003c46:	687a      	ldr	r2, [r7, #4]
 8003c48:	2399      	movs	r3, #153	; 0x99
 8003c4a:	005b      	lsls	r3, r3, #1
 8003c4c:	21fa      	movs	r1, #250	; 0xfa
 8003c4e:	0089      	lsls	r1, r1, #2
 8003c50:	52d1      	strh	r1, [r2, r3]
 8003c52:	687a      	ldr	r2, [r7, #4]
 8003c54:	239a      	movs	r3, #154	; 0x9a
 8003c56:	005b      	lsls	r3, r3, #1
 8003c58:	21c8      	movs	r1, #200	; 0xc8
 8003c5a:	0049      	lsls	r1, r1, #1
 8003c5c:	52d1      	strh	r1, [r2, r3]
 8003c5e:	687a      	ldr	r2, [r7, #4]
 8003c60:	239c      	movs	r3, #156	; 0x9c
 8003c62:	005b      	lsls	r3, r3, #1
 8003c64:	49b5      	ldr	r1, [pc, #724]	; (8003f3c <VL53L0X_DataInit+0x33c>)
 8003c66:	50d1      	str	r1, [r2, r3]
 8003c68:	687b      	ldr	r3, [r7, #4]
 8003c6a:	22d4      	movs	r2, #212	; 0xd4
 8003c6c:	49b4      	ldr	r1, [pc, #720]	; (8003f40 <VL53L0X_DataInit+0x340>)
 8003c6e:	5099      	str	r1, [r3, r2]
 8003c70:	687b      	ldr	r3, [r7, #4]
 8003c72:	2200      	movs	r2, #0
 8003c74:	621a      	str	r2, [r3, #32]
 8003c76:	2657      	movs	r6, #87	; 0x57
 8003c78:	19bc      	adds	r4, r7, r6
 8003c7a:	2510      	movs	r5, #16
 8003c7c:	197a      	adds	r2, r7, r5
 8003c7e:	687b      	ldr	r3, [r7, #4]
 8003c80:	0011      	movs	r1, r2
 8003c82:	0018      	movs	r0, r3
 8003c84:	f000 fb2a 	bl	80042dc <VL53L0X_GetDeviceParameters>
 8003c88:	0003      	movs	r3, r0
 8003c8a:	7023      	strb	r3, [r4, #0]
 8003c8c:	19bb      	adds	r3, r7, r6
 8003c8e:	781b      	ldrb	r3, [r3, #0]
 8003c90:	b25b      	sxtb	r3, r3
 8003c92:	2b00      	cmp	r3, #0
 8003c94:	d10d      	bne.n	8003cb2 <VL53L0X_DataInit+0xb2>
 8003c96:	197b      	adds	r3, r7, r5
 8003c98:	2200      	movs	r2, #0
 8003c9a:	701a      	strb	r2, [r3, #0]
 8003c9c:	197b      	adds	r3, r7, r5
 8003c9e:	2200      	movs	r2, #0
 8003ca0:	705a      	strb	r2, [r3, #1]
 8003ca2:	687b      	ldr	r3, [r7, #4]
 8003ca4:	197a      	adds	r2, r7, r5
 8003ca6:	3310      	adds	r3, #16
 8003ca8:	0011      	movs	r1, r2
 8003caa:	2240      	movs	r2, #64	; 0x40
 8003cac:	0018      	movs	r0, r3
 8003cae:	f005 fac1 	bl	8009234 <memcpy>
 8003cb2:	687a      	ldr	r2, [r7, #4]
 8003cb4:	238a      	movs	r3, #138	; 0x8a
 8003cb6:	005b      	lsls	r3, r3, #1
 8003cb8:	2164      	movs	r1, #100	; 0x64
 8003cba:	52d1      	strh	r1, [r2, r3]
 8003cbc:	687a      	ldr	r2, [r7, #4]
 8003cbe:	238b      	movs	r3, #139	; 0x8b
 8003cc0:	005b      	lsls	r3, r3, #1
 8003cc2:	21e1      	movs	r1, #225	; 0xe1
 8003cc4:	0089      	lsls	r1, r1, #2
 8003cc6:	52d1      	strh	r1, [r2, r3]
 8003cc8:	687a      	ldr	r2, [r7, #4]
 8003cca:	238c      	movs	r3, #140	; 0x8c
 8003ccc:	005b      	lsls	r3, r3, #1
 8003cce:	21fa      	movs	r1, #250	; 0xfa
 8003cd0:	0049      	lsls	r1, r1, #1
 8003cd2:	52d1      	strh	r1, [r2, r3]
 8003cd4:	687a      	ldr	r2, [r7, #4]
 8003cd6:	238e      	movs	r3, #142	; 0x8e
 8003cd8:	005b      	lsls	r3, r3, #1
 8003cda:	21a0      	movs	r1, #160	; 0xa0
 8003cdc:	0109      	lsls	r1, r1, #4
 8003cde:	52d1      	strh	r1, [r2, r3]
 8003ce0:	687a      	ldr	r2, [r7, #4]
 8003ce2:	2398      	movs	r3, #152	; 0x98
 8003ce4:	005b      	lsls	r3, r3, #1
 8003ce6:	2101      	movs	r1, #1
 8003ce8:	54d1      	strb	r1, [r2, r3]
 8003cea:	687b      	ldr	r3, [r7, #4]
 8003cec:	2201      	movs	r2, #1
 8003cee:	2180      	movs	r1, #128	; 0x80
 8003cf0:	0018      	movs	r0, r3
 8003cf2:	f7ff fc91 	bl	8003618 <VL53L0X_WrByte>
 8003cf6:	0003      	movs	r3, r0
 8003cf8:	0019      	movs	r1, r3
 8003cfa:	2457      	movs	r4, #87	; 0x57
 8003cfc:	193b      	adds	r3, r7, r4
 8003cfe:	193a      	adds	r2, r7, r4
 8003d00:	7812      	ldrb	r2, [r2, #0]
 8003d02:	430a      	orrs	r2, r1
 8003d04:	701a      	strb	r2, [r3, #0]
 8003d06:	687b      	ldr	r3, [r7, #4]
 8003d08:	2201      	movs	r2, #1
 8003d0a:	21ff      	movs	r1, #255	; 0xff
 8003d0c:	0018      	movs	r0, r3
 8003d0e:	f7ff fc83 	bl	8003618 <VL53L0X_WrByte>
 8003d12:	0003      	movs	r3, r0
 8003d14:	0019      	movs	r1, r3
 8003d16:	193b      	adds	r3, r7, r4
 8003d18:	193a      	adds	r2, r7, r4
 8003d1a:	7812      	ldrb	r2, [r2, #0]
 8003d1c:	430a      	orrs	r2, r1
 8003d1e:	701a      	strb	r2, [r3, #0]
 8003d20:	687b      	ldr	r3, [r7, #4]
 8003d22:	2200      	movs	r2, #0
 8003d24:	2100      	movs	r1, #0
 8003d26:	0018      	movs	r0, r3
 8003d28:	f7ff fc76 	bl	8003618 <VL53L0X_WrByte>
 8003d2c:	0003      	movs	r3, r0
 8003d2e:	0019      	movs	r1, r3
 8003d30:	193b      	adds	r3, r7, r4
 8003d32:	193a      	adds	r2, r7, r4
 8003d34:	7812      	ldrb	r2, [r2, #0]
 8003d36:	430a      	orrs	r2, r1
 8003d38:	701a      	strb	r2, [r3, #0]
 8003d3a:	250f      	movs	r5, #15
 8003d3c:	197a      	adds	r2, r7, r5
 8003d3e:	687b      	ldr	r3, [r7, #4]
 8003d40:	2191      	movs	r1, #145	; 0x91
 8003d42:	0018      	movs	r0, r3
 8003d44:	f7ff fcd6 	bl	80036f4 <VL53L0X_RdByte>
 8003d48:	0003      	movs	r3, r0
 8003d4a:	0019      	movs	r1, r3
 8003d4c:	193b      	adds	r3, r7, r4
 8003d4e:	193a      	adds	r2, r7, r4
 8003d50:	7812      	ldrb	r2, [r2, #0]
 8003d52:	430a      	orrs	r2, r1
 8003d54:	701a      	strb	r2, [r3, #0]
 8003d56:	197b      	adds	r3, r7, r5
 8003d58:	7819      	ldrb	r1, [r3, #0]
 8003d5a:	687a      	ldr	r2, [r7, #4]
 8003d5c:	238d      	movs	r3, #141	; 0x8d
 8003d5e:	005b      	lsls	r3, r3, #1
 8003d60:	54d1      	strb	r1, [r2, r3]
 8003d62:	687b      	ldr	r3, [r7, #4]
 8003d64:	2201      	movs	r2, #1
 8003d66:	2100      	movs	r1, #0
 8003d68:	0018      	movs	r0, r3
 8003d6a:	f7ff fc55 	bl	8003618 <VL53L0X_WrByte>
 8003d6e:	0003      	movs	r3, r0
 8003d70:	0019      	movs	r1, r3
 8003d72:	193b      	adds	r3, r7, r4
 8003d74:	193a      	adds	r2, r7, r4
 8003d76:	7812      	ldrb	r2, [r2, #0]
 8003d78:	430a      	orrs	r2, r1
 8003d7a:	701a      	strb	r2, [r3, #0]
 8003d7c:	687b      	ldr	r3, [r7, #4]
 8003d7e:	2200      	movs	r2, #0
 8003d80:	21ff      	movs	r1, #255	; 0xff
 8003d82:	0018      	movs	r0, r3
 8003d84:	f7ff fc48 	bl	8003618 <VL53L0X_WrByte>
 8003d88:	0003      	movs	r3, r0
 8003d8a:	0019      	movs	r1, r3
 8003d8c:	193b      	adds	r3, r7, r4
 8003d8e:	193a      	adds	r2, r7, r4
 8003d90:	7812      	ldrb	r2, [r2, #0]
 8003d92:	430a      	orrs	r2, r1
 8003d94:	701a      	strb	r2, [r3, #0]
 8003d96:	687b      	ldr	r3, [r7, #4]
 8003d98:	2200      	movs	r2, #0
 8003d9a:	2180      	movs	r1, #128	; 0x80
 8003d9c:	0018      	movs	r0, r3
 8003d9e:	f7ff fc3b 	bl	8003618 <VL53L0X_WrByte>
 8003da2:	0003      	movs	r3, r0
 8003da4:	0019      	movs	r1, r3
 8003da6:	193b      	adds	r3, r7, r4
 8003da8:	193a      	adds	r2, r7, r4
 8003daa:	7812      	ldrb	r2, [r2, #0]
 8003dac:	430a      	orrs	r2, r1
 8003dae:	701a      	strb	r2, [r3, #0]
 8003db0:	2300      	movs	r3, #0
 8003db2:	653b      	str	r3, [r7, #80]	; 0x50
 8003db4:	e016      	b.n	8003de4 <VL53L0X_DataInit+0x1e4>
 8003db6:	2457      	movs	r4, #87	; 0x57
 8003db8:	193b      	adds	r3, r7, r4
 8003dba:	781b      	ldrb	r3, [r3, #0]
 8003dbc:	b25b      	sxtb	r3, r3
 8003dbe:	2b00      	cmp	r3, #0
 8003dc0:	d114      	bne.n	8003dec <VL53L0X_DataInit+0x1ec>
 8003dc2:	6d3b      	ldr	r3, [r7, #80]	; 0x50
 8003dc4:	b299      	uxth	r1, r3
 8003dc6:	687b      	ldr	r3, [r7, #4]
 8003dc8:	2201      	movs	r2, #1
 8003dca:	0018      	movs	r0, r3
 8003dcc:	f000 fe4c 	bl	8004a68 <VL53L0X_SetLimitCheckEnable>
 8003dd0:	0003      	movs	r3, r0
 8003dd2:	0019      	movs	r1, r3
 8003dd4:	193b      	adds	r3, r7, r4
 8003dd6:	193a      	adds	r2, r7, r4
 8003dd8:	7812      	ldrb	r2, [r2, #0]
 8003dda:	430a      	orrs	r2, r1
 8003ddc:	701a      	strb	r2, [r3, #0]
 8003dde:	6d3b      	ldr	r3, [r7, #80]	; 0x50
 8003de0:	3301      	adds	r3, #1
 8003de2:	653b      	str	r3, [r7, #80]	; 0x50
 8003de4:	6d3b      	ldr	r3, [r7, #80]	; 0x50
 8003de6:	2b05      	cmp	r3, #5
 8003de8:	dde5      	ble.n	8003db6 <VL53L0X_DataInit+0x1b6>
 8003dea:	e000      	b.n	8003dee <VL53L0X_DataInit+0x1ee>
 8003dec:	46c0      	nop			; (mov r8, r8)
 8003dee:	2257      	movs	r2, #87	; 0x57
 8003df0:	18bb      	adds	r3, r7, r2
 8003df2:	781b      	ldrb	r3, [r3, #0]
 8003df4:	b25b      	sxtb	r3, r3
 8003df6:	2b00      	cmp	r3, #0
 8003df8:	d108      	bne.n	8003e0c <VL53L0X_DataInit+0x20c>
 8003dfa:	18bc      	adds	r4, r7, r2
 8003dfc:	687b      	ldr	r3, [r7, #4]
 8003dfe:	2200      	movs	r2, #0
 8003e00:	2102      	movs	r1, #2
 8003e02:	0018      	movs	r0, r3
 8003e04:	f000 fe30 	bl	8004a68 <VL53L0X_SetLimitCheckEnable>
 8003e08:	0003      	movs	r3, r0
 8003e0a:	7023      	strb	r3, [r4, #0]
 8003e0c:	2257      	movs	r2, #87	; 0x57
 8003e0e:	18bb      	adds	r3, r7, r2
 8003e10:	781b      	ldrb	r3, [r3, #0]
 8003e12:	b25b      	sxtb	r3, r3
 8003e14:	2b00      	cmp	r3, #0
 8003e16:	d108      	bne.n	8003e2a <VL53L0X_DataInit+0x22a>
 8003e18:	18bc      	adds	r4, r7, r2
 8003e1a:	687b      	ldr	r3, [r7, #4]
 8003e1c:	2200      	movs	r2, #0
 8003e1e:	2103      	movs	r1, #3
 8003e20:	0018      	movs	r0, r3
 8003e22:	f000 fe21 	bl	8004a68 <VL53L0X_SetLimitCheckEnable>
 8003e26:	0003      	movs	r3, r0
 8003e28:	7023      	strb	r3, [r4, #0]
 8003e2a:	2257      	movs	r2, #87	; 0x57
 8003e2c:	18bb      	adds	r3, r7, r2
 8003e2e:	781b      	ldrb	r3, [r3, #0]
 8003e30:	b25b      	sxtb	r3, r3
 8003e32:	2b00      	cmp	r3, #0
 8003e34:	d108      	bne.n	8003e48 <VL53L0X_DataInit+0x248>
 8003e36:	18bc      	adds	r4, r7, r2
 8003e38:	687b      	ldr	r3, [r7, #4]
 8003e3a:	2200      	movs	r2, #0
 8003e3c:	2104      	movs	r1, #4
 8003e3e:	0018      	movs	r0, r3
 8003e40:	f000 fe12 	bl	8004a68 <VL53L0X_SetLimitCheckEnable>
 8003e44:	0003      	movs	r3, r0
 8003e46:	7023      	strb	r3, [r4, #0]
 8003e48:	2257      	movs	r2, #87	; 0x57
 8003e4a:	18bb      	adds	r3, r7, r2
 8003e4c:	781b      	ldrb	r3, [r3, #0]
 8003e4e:	b25b      	sxtb	r3, r3
 8003e50:	2b00      	cmp	r3, #0
 8003e52:	d108      	bne.n	8003e66 <VL53L0X_DataInit+0x266>
 8003e54:	18bc      	adds	r4, r7, r2
 8003e56:	687b      	ldr	r3, [r7, #4]
 8003e58:	2200      	movs	r2, #0
 8003e5a:	2105      	movs	r1, #5
 8003e5c:	0018      	movs	r0, r3
 8003e5e:	f000 fe03 	bl	8004a68 <VL53L0X_SetLimitCheckEnable>
 8003e62:	0003      	movs	r3, r0
 8003e64:	7023      	strb	r3, [r4, #0]
 8003e66:	2257      	movs	r2, #87	; 0x57
 8003e68:	18bb      	adds	r3, r7, r2
 8003e6a:	781b      	ldrb	r3, [r3, #0]
 8003e6c:	b25b      	sxtb	r3, r3
 8003e6e:	2b00      	cmp	r3, #0
 8003e70:	d109      	bne.n	8003e86 <VL53L0X_DataInit+0x286>
 8003e72:	18bc      	adds	r4, r7, r2
 8003e74:	2390      	movs	r3, #144	; 0x90
 8003e76:	035a      	lsls	r2, r3, #13
 8003e78:	687b      	ldr	r3, [r7, #4]
 8003e7a:	2100      	movs	r1, #0
 8003e7c:	0018      	movs	r0, r3
 8003e7e:	f000 fedf 	bl	8004c40 <VL53L0X_SetLimitCheckValue>
 8003e82:	0003      	movs	r3, r0
 8003e84:	7023      	strb	r3, [r4, #0]
 8003e86:	2257      	movs	r2, #87	; 0x57
 8003e88:	18bb      	adds	r3, r7, r2
 8003e8a:	781b      	ldrb	r3, [r3, #0]
 8003e8c:	b25b      	sxtb	r3, r3
 8003e8e:	2b00      	cmp	r3, #0
 8003e90:	d109      	bne.n	8003ea6 <VL53L0X_DataInit+0x2a6>
 8003e92:	18bc      	adds	r4, r7, r2
 8003e94:	2380      	movs	r3, #128	; 0x80
 8003e96:	01da      	lsls	r2, r3, #7
 8003e98:	687b      	ldr	r3, [r7, #4]
 8003e9a:	2101      	movs	r1, #1
 8003e9c:	0018      	movs	r0, r3
 8003e9e:	f000 fecf 	bl	8004c40 <VL53L0X_SetLimitCheckValue>
 8003ea2:	0003      	movs	r3, r0
 8003ea4:	7023      	strb	r3, [r4, #0]
 8003ea6:	2257      	movs	r2, #87	; 0x57
 8003ea8:	18bb      	adds	r3, r7, r2
 8003eaa:	781b      	ldrb	r3, [r3, #0]
 8003eac:	b25b      	sxtb	r3, r3
 8003eae:	2b00      	cmp	r3, #0
 8003eb0:	d109      	bne.n	8003ec6 <VL53L0X_DataInit+0x2c6>
 8003eb2:	18bc      	adds	r4, r7, r2
 8003eb4:	238c      	movs	r3, #140	; 0x8c
 8003eb6:	039a      	lsls	r2, r3, #14
 8003eb8:	687b      	ldr	r3, [r7, #4]
 8003eba:	2102      	movs	r1, #2
 8003ebc:	0018      	movs	r0, r3
 8003ebe:	f000 febf 	bl	8004c40 <VL53L0X_SetLimitCheckValue>
 8003ec2:	0003      	movs	r3, r0
 8003ec4:	7023      	strb	r3, [r4, #0]
 8003ec6:	2257      	movs	r2, #87	; 0x57
 8003ec8:	18bb      	adds	r3, r7, r2
 8003eca:	781b      	ldrb	r3, [r3, #0]
 8003ecc:	b25b      	sxtb	r3, r3
 8003ece:	2b00      	cmp	r3, #0
 8003ed0:	d108      	bne.n	8003ee4 <VL53L0X_DataInit+0x2e4>
 8003ed2:	18bc      	adds	r4, r7, r2
 8003ed4:	687b      	ldr	r3, [r7, #4]
 8003ed6:	2200      	movs	r2, #0
 8003ed8:	2103      	movs	r1, #3
 8003eda:	0018      	movs	r0, r3
 8003edc:	f000 feb0 	bl	8004c40 <VL53L0X_SetLimitCheckValue>
 8003ee0:	0003      	movs	r3, r0
 8003ee2:	7023      	strb	r3, [r4, #0]
 8003ee4:	2057      	movs	r0, #87	; 0x57
 8003ee6:	183b      	adds	r3, r7, r0
 8003ee8:	781b      	ldrb	r3, [r3, #0]
 8003eea:	b25b      	sxtb	r3, r3
 8003eec:	2b00      	cmp	r3, #0
 8003eee:	d112      	bne.n	8003f16 <VL53L0X_DataInit+0x316>
 8003ef0:	687a      	ldr	r2, [r7, #4]
 8003ef2:	2388      	movs	r3, #136	; 0x88
 8003ef4:	005b      	lsls	r3, r3, #1
 8003ef6:	21ff      	movs	r1, #255	; 0xff
 8003ef8:	54d1      	strb	r1, [r2, r3]
 8003efa:	183c      	adds	r4, r7, r0
 8003efc:	687b      	ldr	r3, [r7, #4]
 8003efe:	22ff      	movs	r2, #255	; 0xff
 8003f00:	2101      	movs	r1, #1
 8003f02:	0018      	movs	r0, r3
 8003f04:	f7ff fb88 	bl	8003618 <VL53L0X_WrByte>
 8003f08:	0003      	movs	r3, r0
 8003f0a:	7023      	strb	r3, [r4, #0]
 8003f0c:	687a      	ldr	r2, [r7, #4]
 8003f0e:	2389      	movs	r3, #137	; 0x89
 8003f10:	005b      	lsls	r3, r3, #1
 8003f12:	2101      	movs	r1, #1
 8003f14:	54d1      	strb	r1, [r2, r3]
 8003f16:	2357      	movs	r3, #87	; 0x57
 8003f18:	18fb      	adds	r3, r7, r3
 8003f1a:	781b      	ldrb	r3, [r3, #0]
 8003f1c:	b25b      	sxtb	r3, r3
 8003f1e:	2b00      	cmp	r3, #0
 8003f20:	d103      	bne.n	8003f2a <VL53L0X_DataInit+0x32a>
 8003f22:	687b      	ldr	r3, [r7, #4]
 8003f24:	22f5      	movs	r2, #245	; 0xf5
 8003f26:	2100      	movs	r1, #0
 8003f28:	5499      	strb	r1, [r3, r2]
 8003f2a:	2357      	movs	r3, #87	; 0x57
 8003f2c:	18fb      	adds	r3, r7, r3
 8003f2e:	781b      	ldrb	r3, [r3, #0]
 8003f30:	b25b      	sxtb	r3, r3
 8003f32:	0018      	movs	r0, r3
 8003f34:	46bd      	mov	sp, r7
 8003f36:	b017      	add	sp, #92	; 0x5c
 8003f38:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8003f3a:	46c0      	nop			; (mov r8, r8)
 8003f3c:	00016b85 	.word	0x00016b85
 8003f40:	000970a4 	.word	0x000970a4

08003f44 <VL53L0X_StaticInit>:
 8003f44:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003f46:	b09f      	sub	sp, #124	; 0x7c
 8003f48:	af02      	add	r7, sp, #8
 8003f4a:	6078      	str	r0, [r7, #4]
 8003f4c:	246f      	movs	r4, #111	; 0x6f
 8003f4e:	193b      	adds	r3, r7, r4
 8003f50:	2200      	movs	r2, #0
 8003f52:	701a      	strb	r2, [r3, #0]
 8003f54:	231c      	movs	r3, #28
 8003f56:	18fb      	adds	r3, r7, r3
 8003f58:	0018      	movs	r0, r3
 8003f5a:	2340      	movs	r3, #64	; 0x40
 8003f5c:	001a      	movs	r2, r3
 8003f5e:	2100      	movs	r1, #0
 8003f60:	f005 f9ba 	bl	80092d8 <memset>
 8003f64:	231a      	movs	r3, #26
 8003f66:	18fb      	adds	r3, r7, r3
 8003f68:	2200      	movs	r2, #0
 8003f6a:	801a      	strh	r2, [r3, #0]
 8003f6c:	2319      	movs	r3, #25
 8003f6e:	18fb      	adds	r3, r7, r3
 8003f70:	2200      	movs	r2, #0
 8003f72:	701a      	strb	r2, [r3, #0]
 8003f74:	2367      	movs	r3, #103	; 0x67
 8003f76:	18fb      	adds	r3, r7, r3
 8003f78:	2200      	movs	r2, #0
 8003f7a:	701a      	strb	r2, [r3, #0]
 8003f7c:	2300      	movs	r3, #0
 8003f7e:	663b      	str	r3, [r7, #96]	; 0x60
 8003f80:	2318      	movs	r3, #24
 8003f82:	18fb      	adds	r3, r7, r3
 8003f84:	2200      	movs	r2, #0
 8003f86:	701a      	strb	r2, [r3, #0]
 8003f88:	2300      	movs	r3, #0
 8003f8a:	617b      	str	r3, [r7, #20]
 8003f8c:	255f      	movs	r5, #95	; 0x5f
 8003f8e:	197b      	adds	r3, r7, r5
 8003f90:	2200      	movs	r2, #0
 8003f92:	701a      	strb	r2, [r3, #0]
 8003f94:	193c      	adds	r4, r7, r4
 8003f96:	687b      	ldr	r3, [r7, #4]
 8003f98:	2101      	movs	r1, #1
 8003f9a:	0018      	movs	r0, r3
 8003f9c:	f002 ff1d 	bl	8006dda <VL53L0X_get_info_from_device>
 8003fa0:	0003      	movs	r3, r0
 8003fa2:	7023      	strb	r3, [r4, #0]
 8003fa4:	687b      	ldr	r3, [r7, #4]
 8003fa6:	22f3      	movs	r2, #243	; 0xf3
 8003fa8:	5c9b      	ldrb	r3, [r3, r2]
 8003faa:	663b      	str	r3, [r7, #96]	; 0x60
 8003fac:	197b      	adds	r3, r7, r5
 8003fae:	687a      	ldr	r2, [r7, #4]
 8003fb0:	21f4      	movs	r1, #244	; 0xf4
 8003fb2:	5c52      	ldrb	r2, [r2, r1]
 8003fb4:	701a      	strb	r2, [r3, #0]
 8003fb6:	197b      	adds	r3, r7, r5
 8003fb8:	781b      	ldrb	r3, [r3, #0]
 8003fba:	2b01      	cmp	r3, #1
 8003fbc:	d80e      	bhi.n	8003fdc <VL53L0X_StaticInit+0x98>
 8003fbe:	197b      	adds	r3, r7, r5
 8003fc0:	781b      	ldrb	r3, [r3, #0]
 8003fc2:	2b01      	cmp	r3, #1
 8003fc4:	d102      	bne.n	8003fcc <VL53L0X_StaticInit+0x88>
 8003fc6:	6e3b      	ldr	r3, [r7, #96]	; 0x60
 8003fc8:	2b20      	cmp	r3, #32
 8003fca:	d807      	bhi.n	8003fdc <VL53L0X_StaticInit+0x98>
 8003fcc:	235f      	movs	r3, #95	; 0x5f
 8003fce:	18fb      	adds	r3, r7, r3
 8003fd0:	781b      	ldrb	r3, [r3, #0]
 8003fd2:	2b00      	cmp	r3, #0
 8003fd4:	d10f      	bne.n	8003ff6 <VL53L0X_StaticInit+0xb2>
 8003fd6:	6e3b      	ldr	r3, [r7, #96]	; 0x60
 8003fd8:	2b0c      	cmp	r3, #12
 8003fda:	d90c      	bls.n	8003ff6 <VL53L0X_StaticInit+0xb2>
 8003fdc:	236f      	movs	r3, #111	; 0x6f
 8003fde:	18fc      	adds	r4, r7, r3
 8003fe0:	2318      	movs	r3, #24
 8003fe2:	18fa      	adds	r2, r7, r3
 8003fe4:	2314      	movs	r3, #20
 8003fe6:	18f9      	adds	r1, r7, r3
 8003fe8:	687b      	ldr	r3, [r7, #4]
 8003fea:	0018      	movs	r0, r3
 8003fec:	f002 f86d 	bl	80060ca <VL53L0X_perform_ref_spad_management>
 8003ff0:	0003      	movs	r3, r0
 8003ff2:	7023      	strb	r3, [r4, #0]
 8003ff4:	e00b      	b.n	800400e <VL53L0X_StaticInit+0xca>
 8003ff6:	236f      	movs	r3, #111	; 0x6f
 8003ff8:	18fc      	adds	r4, r7, r3
 8003ffa:	235f      	movs	r3, #95	; 0x5f
 8003ffc:	18fb      	adds	r3, r7, r3
 8003ffe:	781a      	ldrb	r2, [r3, #0]
 8004000:	6e39      	ldr	r1, [r7, #96]	; 0x60
 8004002:	687b      	ldr	r3, [r7, #4]
 8004004:	0018      	movs	r0, r3
 8004006:	f002 fac7 	bl	8006598 <VL53L0X_set_reference_spads>
 800400a:	0003      	movs	r3, r0
 800400c:	7023      	strb	r3, [r4, #0]
 800400e:	4bb2      	ldr	r3, [pc, #712]	; (80042d8 <VL53L0X_StaticInit+0x394>)
 8004010:	66bb      	str	r3, [r7, #104]	; 0x68
 8004012:	236f      	movs	r3, #111	; 0x6f
 8004014:	18fb      	adds	r3, r7, r3
 8004016:	781b      	ldrb	r3, [r3, #0]
 8004018:	b25b      	sxtb	r3, r3
 800401a:	2b00      	cmp	r3, #0
 800401c:	d112      	bne.n	8004044 <VL53L0X_StaticInit+0x100>
 800401e:	2067      	movs	r0, #103	; 0x67
 8004020:	183b      	adds	r3, r7, r0
 8004022:	6879      	ldr	r1, [r7, #4]
 8004024:	2298      	movs	r2, #152	; 0x98
 8004026:	0052      	lsls	r2, r2, #1
 8004028:	5c8a      	ldrb	r2, [r1, r2]
 800402a:	701a      	strb	r2, [r3, #0]
 800402c:	183b      	adds	r3, r7, r0
 800402e:	781b      	ldrb	r3, [r3, #0]
 8004030:	2b00      	cmp	r3, #0
 8004032:	d105      	bne.n	8004040 <VL53L0X_StaticInit+0xfc>
 8004034:	687a      	ldr	r2, [r7, #4]
 8004036:	2396      	movs	r3, #150	; 0x96
 8004038:	005b      	lsls	r3, r3, #1
 800403a:	58d3      	ldr	r3, [r2, r3]
 800403c:	66bb      	str	r3, [r7, #104]	; 0x68
 800403e:	e001      	b.n	8004044 <VL53L0X_StaticInit+0x100>
 8004040:	4ba5      	ldr	r3, [pc, #660]	; (80042d8 <VL53L0X_StaticInit+0x394>)
 8004042:	66bb      	str	r3, [r7, #104]	; 0x68
 8004044:	226f      	movs	r2, #111	; 0x6f
 8004046:	18bb      	adds	r3, r7, r2
 8004048:	781b      	ldrb	r3, [r3, #0]
 800404a:	b25b      	sxtb	r3, r3
 800404c:	2b00      	cmp	r3, #0
 800404e:	d108      	bne.n	8004062 <VL53L0X_StaticInit+0x11e>
 8004050:	18bc      	adds	r4, r7, r2
 8004052:	6eba      	ldr	r2, [r7, #104]	; 0x68
 8004054:	687b      	ldr	r3, [r7, #4]
 8004056:	0011      	movs	r1, r2
 8004058:	0018      	movs	r0, r3
 800405a:	f004 f92d 	bl	80082b8 <VL53L0X_load_tuning_settings>
 800405e:	0003      	movs	r3, r0
 8004060:	7023      	strb	r3, [r4, #0]
 8004062:	226f      	movs	r2, #111	; 0x6f
 8004064:	18bb      	adds	r3, r7, r2
 8004066:	781b      	ldrb	r3, [r3, #0]
 8004068:	b25b      	sxtb	r3, r3
 800406a:	2b00      	cmp	r3, #0
 800406c:	d10a      	bne.n	8004084 <VL53L0X_StaticInit+0x140>
 800406e:	18bc      	adds	r4, r7, r2
 8004070:	6878      	ldr	r0, [r7, #4]
 8004072:	2300      	movs	r3, #0
 8004074:	9300      	str	r3, [sp, #0]
 8004076:	2304      	movs	r3, #4
 8004078:	2200      	movs	r2, #0
 800407a:	2100      	movs	r1, #0
 800407c:	f001 fb6c 	bl	8005758 <VL53L0X_SetGpioConfig>
 8004080:	0003      	movs	r3, r0
 8004082:	7023      	strb	r3, [r4, #0]
 8004084:	256f      	movs	r5, #111	; 0x6f
 8004086:	197b      	adds	r3, r7, r5
 8004088:	781b      	ldrb	r3, [r3, #0]
 800408a:	b25b      	sxtb	r3, r3
 800408c:	2b00      	cmp	r3, #0
 800408e:	d123      	bne.n	80040d8 <VL53L0X_StaticInit+0x194>
 8004090:	197c      	adds	r4, r7, r5
 8004092:	687b      	ldr	r3, [r7, #4]
 8004094:	2201      	movs	r2, #1
 8004096:	21ff      	movs	r1, #255	; 0xff
 8004098:	0018      	movs	r0, r3
 800409a:	f7ff fabd 	bl	8003618 <VL53L0X_WrByte>
 800409e:	0003      	movs	r3, r0
 80040a0:	7023      	strb	r3, [r4, #0]
 80040a2:	231a      	movs	r3, #26
 80040a4:	18fa      	adds	r2, r7, r3
 80040a6:	687b      	ldr	r3, [r7, #4]
 80040a8:	2184      	movs	r1, #132	; 0x84
 80040aa:	0018      	movs	r0, r3
 80040ac:	f7ff fb37 	bl	800371e <VL53L0X_RdWord>
 80040b0:	0003      	movs	r3, r0
 80040b2:	0019      	movs	r1, r3
 80040b4:	197b      	adds	r3, r7, r5
 80040b6:	197a      	adds	r2, r7, r5
 80040b8:	7812      	ldrb	r2, [r2, #0]
 80040ba:	430a      	orrs	r2, r1
 80040bc:	701a      	strb	r2, [r3, #0]
 80040be:	687b      	ldr	r3, [r7, #4]
 80040c0:	2200      	movs	r2, #0
 80040c2:	21ff      	movs	r1, #255	; 0xff
 80040c4:	0018      	movs	r0, r3
 80040c6:	f7ff faa7 	bl	8003618 <VL53L0X_WrByte>
 80040ca:	0003      	movs	r3, r0
 80040cc:	0019      	movs	r1, r3
 80040ce:	197b      	adds	r3, r7, r5
 80040d0:	197a      	adds	r2, r7, r5
 80040d2:	7812      	ldrb	r2, [r2, #0]
 80040d4:	430a      	orrs	r2, r1
 80040d6:	701a      	strb	r2, [r3, #0]
 80040d8:	236f      	movs	r3, #111	; 0x6f
 80040da:	18fb      	adds	r3, r7, r3
 80040dc:	781b      	ldrb	r3, [r3, #0]
 80040de:	b25b      	sxtb	r3, r3
 80040e0:	2b00      	cmp	r3, #0
 80040e2:	d107      	bne.n	80040f4 <VL53L0X_StaticInit+0x1b0>
 80040e4:	231a      	movs	r3, #26
 80040e6:	18fb      	adds	r3, r7, r3
 80040e8:	881b      	ldrh	r3, [r3, #0]
 80040ea:	011b      	lsls	r3, r3, #4
 80040ec:	0019      	movs	r1, r3
 80040ee:	687b      	ldr	r3, [r7, #4]
 80040f0:	22d4      	movs	r2, #212	; 0xd4
 80040f2:	5099      	str	r1, [r3, r2]
 80040f4:	226f      	movs	r2, #111	; 0x6f
 80040f6:	18bb      	adds	r3, r7, r2
 80040f8:	781b      	ldrb	r3, [r3, #0]
 80040fa:	b25b      	sxtb	r3, r3
 80040fc:	2b00      	cmp	r3, #0
 80040fe:	d109      	bne.n	8004114 <VL53L0X_StaticInit+0x1d0>
 8004100:	18bc      	adds	r4, r7, r2
 8004102:	231c      	movs	r3, #28
 8004104:	18fa      	adds	r2, r7, r3
 8004106:	687b      	ldr	r3, [r7, #4]
 8004108:	0011      	movs	r1, r2
 800410a:	0018      	movs	r0, r3
 800410c:	f000 f8e6 	bl	80042dc <VL53L0X_GetDeviceParameters>
 8004110:	0003      	movs	r3, r0
 8004112:	7023      	strb	r3, [r4, #0]
 8004114:	256f      	movs	r5, #111	; 0x6f
 8004116:	197b      	adds	r3, r7, r5
 8004118:	781b      	ldrb	r3, [r3, #0]
 800411a:	b25b      	sxtb	r3, r3
 800411c:	2b00      	cmp	r3, #0
 800411e:	d114      	bne.n	800414a <VL53L0X_StaticInit+0x206>
 8004120:	197c      	adds	r4, r7, r5
 8004122:	2619      	movs	r6, #25
 8004124:	19ba      	adds	r2, r7, r6
 8004126:	687b      	ldr	r3, [r7, #4]
 8004128:	0011      	movs	r1, r2
 800412a:	0018      	movs	r0, r3
 800412c:	f000 f9d6 	bl	80044dc <VL53L0X_GetFractionEnable>
 8004130:	0003      	movs	r3, r0
 8004132:	7023      	strb	r3, [r4, #0]
 8004134:	197b      	adds	r3, r7, r5
 8004136:	781b      	ldrb	r3, [r3, #0]
 8004138:	b25b      	sxtb	r3, r3
 800413a:	2b00      	cmp	r3, #0
 800413c:	d105      	bne.n	800414a <VL53L0X_StaticInit+0x206>
 800413e:	19bb      	adds	r3, r7, r6
 8004140:	7819      	ldrb	r1, [r3, #0]
 8004142:	687a      	ldr	r2, [r7, #4]
 8004144:	2312      	movs	r3, #18
 8004146:	33ff      	adds	r3, #255	; 0xff
 8004148:	54d1      	strb	r1, [r2, r3]
 800414a:	236f      	movs	r3, #111	; 0x6f
 800414c:	18fb      	adds	r3, r7, r3
 800414e:	781b      	ldrb	r3, [r3, #0]
 8004150:	b25b      	sxtb	r3, r3
 8004152:	2b00      	cmp	r3, #0
 8004154:	d108      	bne.n	8004168 <VL53L0X_StaticInit+0x224>
 8004156:	687b      	ldr	r3, [r7, #4]
 8004158:	221c      	movs	r2, #28
 800415a:	18ba      	adds	r2, r7, r2
 800415c:	3310      	adds	r3, #16
 800415e:	0011      	movs	r1, r2
 8004160:	2240      	movs	r2, #64	; 0x40
 8004162:	0018      	movs	r0, r3
 8004164:	f005 f866 	bl	8009234 <memcpy>
 8004168:	256f      	movs	r5, #111	; 0x6f
 800416a:	197b      	adds	r3, r7, r5
 800416c:	781b      	ldrb	r3, [r3, #0]
 800416e:	b25b      	sxtb	r3, r3
 8004170:	2b00      	cmp	r3, #0
 8004172:	d114      	bne.n	800419e <VL53L0X_StaticInit+0x25a>
 8004174:	197c      	adds	r4, r7, r5
 8004176:	2619      	movs	r6, #25
 8004178:	19ba      	adds	r2, r7, r6
 800417a:	687b      	ldr	r3, [r7, #4]
 800417c:	2101      	movs	r1, #1
 800417e:	0018      	movs	r0, r3
 8004180:	f7ff fab8 	bl	80036f4 <VL53L0X_RdByte>
 8004184:	0003      	movs	r3, r0
 8004186:	7023      	strb	r3, [r4, #0]
 8004188:	197b      	adds	r3, r7, r5
 800418a:	781b      	ldrb	r3, [r3, #0]
 800418c:	b25b      	sxtb	r3, r3
 800418e:	2b00      	cmp	r3, #0
 8004190:	d105      	bne.n	800419e <VL53L0X_StaticInit+0x25a>
 8004192:	19bb      	adds	r3, r7, r6
 8004194:	7819      	ldrb	r1, [r3, #0]
 8004196:	687a      	ldr	r2, [r7, #4]
 8004198:	2388      	movs	r3, #136	; 0x88
 800419a:	005b      	lsls	r3, r3, #1
 800419c:	54d1      	strb	r1, [r2, r3]
 800419e:	226f      	movs	r2, #111	; 0x6f
 80041a0:	18bb      	adds	r3, r7, r2
 80041a2:	781b      	ldrb	r3, [r3, #0]
 80041a4:	b25b      	sxtb	r3, r3
 80041a6:	2b00      	cmp	r3, #0
 80041a8:	d108      	bne.n	80041bc <VL53L0X_StaticInit+0x278>
 80041aa:	18bc      	adds	r4, r7, r2
 80041ac:	687b      	ldr	r3, [r7, #4]
 80041ae:	2200      	movs	r2, #0
 80041b0:	2100      	movs	r1, #0
 80041b2:	0018      	movs	r0, r3
 80041b4:	f000 fa08 	bl	80045c8 <VL53L0X_SetSequenceStepEnable>
 80041b8:	0003      	movs	r3, r0
 80041ba:	7023      	strb	r3, [r4, #0]
 80041bc:	226f      	movs	r2, #111	; 0x6f
 80041be:	18bb      	adds	r3, r7, r2
 80041c0:	781b      	ldrb	r3, [r3, #0]
 80041c2:	b25b      	sxtb	r3, r3
 80041c4:	2b00      	cmp	r3, #0
 80041c6:	d108      	bne.n	80041da <VL53L0X_StaticInit+0x296>
 80041c8:	18bc      	adds	r4, r7, r2
 80041ca:	687b      	ldr	r3, [r7, #4]
 80041cc:	2200      	movs	r2, #0
 80041ce:	2102      	movs	r1, #2
 80041d0:	0018      	movs	r0, r3
 80041d2:	f000 f9f9 	bl	80045c8 <VL53L0X_SetSequenceStepEnable>
 80041d6:	0003      	movs	r3, r0
 80041d8:	7023      	strb	r3, [r4, #0]
 80041da:	236f      	movs	r3, #111	; 0x6f
 80041dc:	18fb      	adds	r3, r7, r3
 80041de:	781b      	ldrb	r3, [r3, #0]
 80041e0:	b25b      	sxtb	r3, r3
 80041e2:	2b00      	cmp	r3, #0
 80041e4:	d104      	bne.n	80041f0 <VL53L0X_StaticInit+0x2ac>
 80041e6:	687a      	ldr	r2, [r7, #4]
 80041e8:	2389      	movs	r3, #137	; 0x89
 80041ea:	005b      	lsls	r3, r3, #1
 80041ec:	2103      	movs	r1, #3
 80041ee:	54d1      	strb	r1, [r2, r3]
 80041f0:	226f      	movs	r2, #111	; 0x6f
 80041f2:	18bb      	adds	r3, r7, r2
 80041f4:	781b      	ldrb	r3, [r3, #0]
 80041f6:	b25b      	sxtb	r3, r3
 80041f8:	2b00      	cmp	r3, #0
 80041fa:	d109      	bne.n	8004210 <VL53L0X_StaticInit+0x2cc>
 80041fc:	18bc      	adds	r4, r7, r2
 80041fe:	2313      	movs	r3, #19
 8004200:	18fa      	adds	r2, r7, r3
 8004202:	687b      	ldr	r3, [r7, #4]
 8004204:	2100      	movs	r1, #0
 8004206:	0018      	movs	r0, r3
 8004208:	f000 f9c0 	bl	800458c <VL53L0X_GetVcselPulsePeriod>
 800420c:	0003      	movs	r3, r0
 800420e:	7023      	strb	r3, [r4, #0]
 8004210:	236f      	movs	r3, #111	; 0x6f
 8004212:	18fb      	adds	r3, r7, r3
 8004214:	781b      	ldrb	r3, [r3, #0]
 8004216:	b25b      	sxtb	r3, r3
 8004218:	2b00      	cmp	r3, #0
 800421a:	d105      	bne.n	8004228 <VL53L0X_StaticInit+0x2e4>
 800421c:	2313      	movs	r3, #19
 800421e:	18fb      	adds	r3, r7, r3
 8004220:	7819      	ldrb	r1, [r3, #0]
 8004222:	687b      	ldr	r3, [r7, #4]
 8004224:	22e8      	movs	r2, #232	; 0xe8
 8004226:	5499      	strb	r1, [r3, r2]
 8004228:	226f      	movs	r2, #111	; 0x6f
 800422a:	18bb      	adds	r3, r7, r2
 800422c:	781b      	ldrb	r3, [r3, #0]
 800422e:	b25b      	sxtb	r3, r3
 8004230:	2b00      	cmp	r3, #0
 8004232:	d109      	bne.n	8004248 <VL53L0X_StaticInit+0x304>
 8004234:	18bc      	adds	r4, r7, r2
 8004236:	2313      	movs	r3, #19
 8004238:	18fa      	adds	r2, r7, r3
 800423a:	687b      	ldr	r3, [r7, #4]
 800423c:	2101      	movs	r1, #1
 800423e:	0018      	movs	r0, r3
 8004240:	f000 f9a4 	bl	800458c <VL53L0X_GetVcselPulsePeriod>
 8004244:	0003      	movs	r3, r0
 8004246:	7023      	strb	r3, [r4, #0]
 8004248:	236f      	movs	r3, #111	; 0x6f
 800424a:	18fb      	adds	r3, r7, r3
 800424c:	781b      	ldrb	r3, [r3, #0]
 800424e:	b25b      	sxtb	r3, r3
 8004250:	2b00      	cmp	r3, #0
 8004252:	d105      	bne.n	8004260 <VL53L0X_StaticInit+0x31c>
 8004254:	2313      	movs	r3, #19
 8004256:	18fb      	adds	r3, r7, r3
 8004258:	7819      	ldrb	r1, [r3, #0]
 800425a:	687b      	ldr	r3, [r7, #4]
 800425c:	22e0      	movs	r2, #224	; 0xe0
 800425e:	5499      	strb	r1, [r3, r2]
 8004260:	226f      	movs	r2, #111	; 0x6f
 8004262:	18bb      	adds	r3, r7, r2
 8004264:	781b      	ldrb	r3, [r3, #0]
 8004266:	b25b      	sxtb	r3, r3
 8004268:	2b00      	cmp	r3, #0
 800426a:	d109      	bne.n	8004280 <VL53L0X_StaticInit+0x33c>
 800426c:	18bc      	adds	r4, r7, r2
 800426e:	230c      	movs	r3, #12
 8004270:	18fa      	adds	r2, r7, r3
 8004272:	687b      	ldr	r3, [r7, #4]
 8004274:	2103      	movs	r1, #3
 8004276:	0018      	movs	r0, r3
 8004278:	f003 fba6 	bl	80079c8 <get_sequence_step_timeout>
 800427c:	0003      	movs	r3, r0
 800427e:	7023      	strb	r3, [r4, #0]
 8004280:	236f      	movs	r3, #111	; 0x6f
 8004282:	18fb      	adds	r3, r7, r3
 8004284:	781b      	ldrb	r3, [r3, #0]
 8004286:	b25b      	sxtb	r3, r3
 8004288:	2b00      	cmp	r3, #0
 800428a:	d103      	bne.n	8004294 <VL53L0X_StaticInit+0x350>
 800428c:	68fa      	ldr	r2, [r7, #12]
 800428e:	687b      	ldr	r3, [r7, #4]
 8004290:	21e4      	movs	r1, #228	; 0xe4
 8004292:	505a      	str	r2, [r3, r1]
 8004294:	226f      	movs	r2, #111	; 0x6f
 8004296:	18bb      	adds	r3, r7, r2
 8004298:	781b      	ldrb	r3, [r3, #0]
 800429a:	b25b      	sxtb	r3, r3
 800429c:	2b00      	cmp	r3, #0
 800429e:	d109      	bne.n	80042b4 <VL53L0X_StaticInit+0x370>
 80042a0:	18bc      	adds	r4, r7, r2
 80042a2:	230c      	movs	r3, #12
 80042a4:	18fa      	adds	r2, r7, r3
 80042a6:	687b      	ldr	r3, [r7, #4]
 80042a8:	2104      	movs	r1, #4
 80042aa:	0018      	movs	r0, r3
 80042ac:	f003 fb8c 	bl	80079c8 <get_sequence_step_timeout>
 80042b0:	0003      	movs	r3, r0
 80042b2:	7023      	strb	r3, [r4, #0]
 80042b4:	236f      	movs	r3, #111	; 0x6f
 80042b6:	18fb      	adds	r3, r7, r3
 80042b8:	781b      	ldrb	r3, [r3, #0]
 80042ba:	b25b      	sxtb	r3, r3
 80042bc:	2b00      	cmp	r3, #0
 80042be:	d103      	bne.n	80042c8 <VL53L0X_StaticInit+0x384>
 80042c0:	68fa      	ldr	r2, [r7, #12]
 80042c2:	687b      	ldr	r3, [r7, #4]
 80042c4:	21dc      	movs	r1, #220	; 0xdc
 80042c6:	505a      	str	r2, [r3, r1]
 80042c8:	236f      	movs	r3, #111	; 0x6f
 80042ca:	18fb      	adds	r3, r7, r3
 80042cc:	781b      	ldrb	r3, [r3, #0]
 80042ce:	b25b      	sxtb	r3, r3
 80042d0:	0018      	movs	r0, r3
 80042d2:	46bd      	mov	sp, r7
 80042d4:	b01d      	add	sp, #116	; 0x74
 80042d6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80042d8:	20000004 	.word	0x20000004

080042dc <VL53L0X_GetDeviceParameters>:
 80042dc:	b5b0      	push	{r4, r5, r7, lr}
 80042de:	b084      	sub	sp, #16
 80042e0:	af00      	add	r7, sp, #0
 80042e2:	6078      	str	r0, [r7, #4]
 80042e4:	6039      	str	r1, [r7, #0]
 80042e6:	250f      	movs	r5, #15
 80042e8:	197b      	adds	r3, r7, r5
 80042ea:	2200      	movs	r2, #0
 80042ec:	701a      	strb	r2, [r3, #0]
 80042ee:	683a      	ldr	r2, [r7, #0]
 80042f0:	197c      	adds	r4, r7, r5
 80042f2:	687b      	ldr	r3, [r7, #4]
 80042f4:	0011      	movs	r1, r2
 80042f6:	0018      	movs	r0, r3
 80042f8:	f000 f8dc 	bl	80044b4 <VL53L0X_GetDeviceMode>
 80042fc:	0003      	movs	r3, r0
 80042fe:	7023      	strb	r3, [r4, #0]
 8004300:	0029      	movs	r1, r5
 8004302:	187b      	adds	r3, r7, r1
 8004304:	781b      	ldrb	r3, [r3, #0]
 8004306:	b25b      	sxtb	r3, r3
 8004308:	2b00      	cmp	r3, #0
 800430a:	d10a      	bne.n	8004322 <VL53L0X_GetDeviceParameters+0x46>
 800430c:	683b      	ldr	r3, [r7, #0]
 800430e:	3308      	adds	r3, #8
 8004310:	001a      	movs	r2, r3
 8004312:	187c      	adds	r4, r7, r1
 8004314:	687b      	ldr	r3, [r7, #4]
 8004316:	0011      	movs	r1, r2
 8004318:	0018      	movs	r0, r3
 800431a:	f000 fb0c 	bl	8004936 <VL53L0X_GetInterMeasurementPeriodMilliSeconds>
 800431e:	0003      	movs	r3, r0
 8004320:	7023      	strb	r3, [r4, #0]
 8004322:	230f      	movs	r3, #15
 8004324:	18fb      	adds	r3, r7, r3
 8004326:	781b      	ldrb	r3, [r3, #0]
 8004328:	b25b      	sxtb	r3, r3
 800432a:	2b00      	cmp	r3, #0
 800432c:	d102      	bne.n	8004334 <VL53L0X_GetDeviceParameters+0x58>
 800432e:	683b      	ldr	r3, [r7, #0]
 8004330:	2200      	movs	r2, #0
 8004332:	731a      	strb	r2, [r3, #12]
 8004334:	210f      	movs	r1, #15
 8004336:	187b      	adds	r3, r7, r1
 8004338:	781b      	ldrb	r3, [r3, #0]
 800433a:	b25b      	sxtb	r3, r3
 800433c:	2b00      	cmp	r3, #0
 800433e:	d10a      	bne.n	8004356 <VL53L0X_GetDeviceParameters+0x7a>
 8004340:	683b      	ldr	r3, [r7, #0]
 8004342:	3310      	adds	r3, #16
 8004344:	001a      	movs	r2, r3
 8004346:	187c      	adds	r4, r7, r1
 8004348:	687b      	ldr	r3, [r7, #4]
 800434a:	0011      	movs	r1, r2
 800434c:	0018      	movs	r0, r3
 800434e:	f000 fb4f 	bl	80049f0 <VL53L0X_GetXTalkCompensationRateMegaCps>
 8004352:	0003      	movs	r3, r0
 8004354:	7023      	strb	r3, [r4, #0]
 8004356:	210f      	movs	r1, #15
 8004358:	187b      	adds	r3, r7, r1
 800435a:	781b      	ldrb	r3, [r3, #0]
 800435c:	b25b      	sxtb	r3, r3
 800435e:	2b00      	cmp	r3, #0
 8004360:	d10a      	bne.n	8004378 <VL53L0X_GetDeviceParameters+0x9c>
 8004362:	683b      	ldr	r3, [r7, #0]
 8004364:	3314      	adds	r3, #20
 8004366:	001a      	movs	r2, r3
 8004368:	187c      	adds	r4, r7, r1
 800436a:	687b      	ldr	r3, [r7, #4]
 800436c:	0011      	movs	r1, r2
 800436e:	0018      	movs	r0, r3
 8004370:	f7ff fc0e 	bl	8003b90 <VL53L0X_GetOffsetCalibrationDataMicroMeter>
 8004374:	0003      	movs	r3, r0
 8004376:	7023      	strb	r3, [r4, #0]
 8004378:	230f      	movs	r3, #15
 800437a:	18fb      	adds	r3, r7, r3
 800437c:	781b      	ldrb	r3, [r3, #0]
 800437e:	b25b      	sxtb	r3, r3
 8004380:	2b00      	cmp	r3, #0
 8004382:	d13b      	bne.n	80043fc <VL53L0X_GetDeviceParameters+0x120>
 8004384:	2300      	movs	r3, #0
 8004386:	60bb      	str	r3, [r7, #8]
 8004388:	e031      	b.n	80043ee <VL53L0X_GetDeviceParameters+0x112>
 800438a:	240f      	movs	r4, #15
 800438c:	193b      	adds	r3, r7, r4
 800438e:	781b      	ldrb	r3, [r3, #0]
 8004390:	b25b      	sxtb	r3, r3
 8004392:	2b00      	cmp	r3, #0
 8004394:	d12f      	bne.n	80043f6 <VL53L0X_GetDeviceParameters+0x11a>
 8004396:	68bb      	ldr	r3, [r7, #8]
 8004398:	b299      	uxth	r1, r3
 800439a:	68bb      	ldr	r3, [r7, #8]
 800439c:	3308      	adds	r3, #8
 800439e:	009b      	lsls	r3, r3, #2
 80043a0:	683a      	ldr	r2, [r7, #0]
 80043a2:	18d3      	adds	r3, r2, r3
 80043a4:	1d1a      	adds	r2, r3, #4
 80043a6:	687b      	ldr	r3, [r7, #4]
 80043a8:	0018      	movs	r0, r3
 80043aa:	f000 fcbd 	bl	8004d28 <VL53L0X_GetLimitCheckValue>
 80043ae:	0003      	movs	r3, r0
 80043b0:	0019      	movs	r1, r3
 80043b2:	193b      	adds	r3, r7, r4
 80043b4:	193a      	adds	r2, r7, r4
 80043b6:	7812      	ldrb	r2, [r2, #0]
 80043b8:	430a      	orrs	r2, r1
 80043ba:	701a      	strb	r2, [r3, #0]
 80043bc:	193b      	adds	r3, r7, r4
 80043be:	781b      	ldrb	r3, [r3, #0]
 80043c0:	b25b      	sxtb	r3, r3
 80043c2:	2b00      	cmp	r3, #0
 80043c4:	d119      	bne.n	80043fa <VL53L0X_GetDeviceParameters+0x11e>
 80043c6:	68bb      	ldr	r3, [r7, #8]
 80043c8:	b299      	uxth	r1, r3
 80043ca:	68bb      	ldr	r3, [r7, #8]
 80043cc:	3318      	adds	r3, #24
 80043ce:	683a      	ldr	r2, [r7, #0]
 80043d0:	18d2      	adds	r2, r2, r3
 80043d2:	687b      	ldr	r3, [r7, #4]
 80043d4:	0018      	movs	r0, r3
 80043d6:	f000 fc03 	bl	8004be0 <VL53L0X_GetLimitCheckEnable>
 80043da:	0003      	movs	r3, r0
 80043dc:	0019      	movs	r1, r3
 80043de:	193b      	adds	r3, r7, r4
 80043e0:	193a      	adds	r2, r7, r4
 80043e2:	7812      	ldrb	r2, [r2, #0]
 80043e4:	430a      	orrs	r2, r1
 80043e6:	701a      	strb	r2, [r3, #0]
 80043e8:	68bb      	ldr	r3, [r7, #8]
 80043ea:	3301      	adds	r3, #1
 80043ec:	60bb      	str	r3, [r7, #8]
 80043ee:	68bb      	ldr	r3, [r7, #8]
 80043f0:	2b05      	cmp	r3, #5
 80043f2:	ddca      	ble.n	800438a <VL53L0X_GetDeviceParameters+0xae>
 80043f4:	e002      	b.n	80043fc <VL53L0X_GetDeviceParameters+0x120>
 80043f6:	46c0      	nop			; (mov r8, r8)
 80043f8:	e000      	b.n	80043fc <VL53L0X_GetDeviceParameters+0x120>
 80043fa:	46c0      	nop			; (mov r8, r8)
 80043fc:	210f      	movs	r1, #15
 80043fe:	187b      	adds	r3, r7, r1
 8004400:	781b      	ldrb	r3, [r3, #0]
 8004402:	b25b      	sxtb	r3, r3
 8004404:	2b00      	cmp	r3, #0
 8004406:	d10a      	bne.n	800441e <VL53L0X_GetDeviceParameters+0x142>
 8004408:	683b      	ldr	r3, [r7, #0]
 800440a:	333c      	adds	r3, #60	; 0x3c
 800440c:	001a      	movs	r2, r3
 800440e:	187c      	adds	r4, r7, r1
 8004410:	687b      	ldr	r3, [r7, #4]
 8004412:	0011      	movs	r1, r2
 8004414:	0018      	movs	r0, r3
 8004416:	f000 fd37 	bl	8004e88 <VL53L0X_GetWrapAroundCheckEnable>
 800441a:	0003      	movs	r3, r0
 800441c:	7023      	strb	r3, [r4, #0]
 800441e:	210f      	movs	r1, #15
 8004420:	187b      	adds	r3, r7, r1
 8004422:	781b      	ldrb	r3, [r3, #0]
 8004424:	b25b      	sxtb	r3, r3
 8004426:	2b00      	cmp	r3, #0
 8004428:	d109      	bne.n	800443e <VL53L0X_GetDeviceParameters+0x162>
 800442a:	683b      	ldr	r3, [r7, #0]
 800442c:	1d1a      	adds	r2, r3, #4
 800442e:	187c      	adds	r4, r7, r1
 8004430:	687b      	ldr	r3, [r7, #4]
 8004432:	0011      	movs	r1, r2
 8004434:	0018      	movs	r0, r3
 8004436:	f000 f890 	bl	800455a <VL53L0X_GetMeasurementTimingBudgetMicroSeconds>
 800443a:	0003      	movs	r3, r0
 800443c:	7023      	strb	r3, [r4, #0]
 800443e:	230f      	movs	r3, #15
 8004440:	18fb      	adds	r3, r7, r3
 8004442:	781b      	ldrb	r3, [r3, #0]
 8004444:	b25b      	sxtb	r3, r3
 8004446:	0018      	movs	r0, r3
 8004448:	46bd      	mov	sp, r7
 800444a:	b004      	add	sp, #16
 800444c:	bdb0      	pop	{r4, r5, r7, pc}
	...

08004450 <VL53L0X_SetDeviceMode>:
 8004450:	b580      	push	{r7, lr}
 8004452:	b084      	sub	sp, #16
 8004454:	af00      	add	r7, sp, #0
 8004456:	6078      	str	r0, [r7, #4]
 8004458:	000a      	movs	r2, r1
 800445a:	1cfb      	adds	r3, r7, #3
 800445c:	701a      	strb	r2, [r3, #0]
 800445e:	230f      	movs	r3, #15
 8004460:	18fb      	adds	r3, r7, r3
 8004462:	2200      	movs	r2, #0
 8004464:	701a      	strb	r2, [r3, #0]
 8004466:	1cfb      	adds	r3, r7, #3
 8004468:	781b      	ldrb	r3, [r3, #0]
 800446a:	2215      	movs	r2, #21
 800446c:	429a      	cmp	r2, r3
 800446e:	4192      	sbcs	r2, r2
 8004470:	4252      	negs	r2, r2
 8004472:	b2d2      	uxtb	r2, r2
 8004474:	2a00      	cmp	r2, #0
 8004476:	d10e      	bne.n	8004496 <VL53L0X_SetDeviceMode+0x46>
 8004478:	2201      	movs	r2, #1
 800447a:	409a      	lsls	r2, r3
 800447c:	0013      	movs	r3, r2
 800447e:	4a0c      	ldr	r2, [pc, #48]	; (80044b0 <VL53L0X_SetDeviceMode+0x60>)
 8004480:	4013      	ands	r3, r2
 8004482:	1e5a      	subs	r2, r3, #1
 8004484:	4193      	sbcs	r3, r2
 8004486:	b2db      	uxtb	r3, r3
 8004488:	2b00      	cmp	r3, #0
 800448a:	d004      	beq.n	8004496 <VL53L0X_SetDeviceMode+0x46>
 800448c:	687b      	ldr	r3, [r7, #4]
 800448e:	1cfa      	adds	r2, r7, #3
 8004490:	7812      	ldrb	r2, [r2, #0]
 8004492:	741a      	strb	r2, [r3, #16]
 8004494:	e003      	b.n	800449e <VL53L0X_SetDeviceMode+0x4e>
 8004496:	230f      	movs	r3, #15
 8004498:	18fb      	adds	r3, r7, r3
 800449a:	22f8      	movs	r2, #248	; 0xf8
 800449c:	701a      	strb	r2, [r3, #0]
 800449e:	230f      	movs	r3, #15
 80044a0:	18fb      	adds	r3, r7, r3
 80044a2:	781b      	ldrb	r3, [r3, #0]
 80044a4:	b25b      	sxtb	r3, r3
 80044a6:	0018      	movs	r0, r3
 80044a8:	46bd      	mov	sp, r7
 80044aa:	b004      	add	sp, #16
 80044ac:	bd80      	pop	{r7, pc}
 80044ae:	46c0      	nop			; (mov r8, r8)
 80044b0:	0030000b 	.word	0x0030000b

080044b4 <VL53L0X_GetDeviceMode>:
 80044b4:	b580      	push	{r7, lr}
 80044b6:	b084      	sub	sp, #16
 80044b8:	af00      	add	r7, sp, #0
 80044ba:	6078      	str	r0, [r7, #4]
 80044bc:	6039      	str	r1, [r7, #0]
 80044be:	210f      	movs	r1, #15
 80044c0:	187b      	adds	r3, r7, r1
 80044c2:	2200      	movs	r2, #0
 80044c4:	701a      	strb	r2, [r3, #0]
 80044c6:	687b      	ldr	r3, [r7, #4]
 80044c8:	7c1a      	ldrb	r2, [r3, #16]
 80044ca:	683b      	ldr	r3, [r7, #0]
 80044cc:	701a      	strb	r2, [r3, #0]
 80044ce:	187b      	adds	r3, r7, r1
 80044d0:	781b      	ldrb	r3, [r3, #0]
 80044d2:	b25b      	sxtb	r3, r3
 80044d4:	0018      	movs	r0, r3
 80044d6:	46bd      	mov	sp, r7
 80044d8:	b004      	add	sp, #16
 80044da:	bd80      	pop	{r7, pc}

080044dc <VL53L0X_GetFractionEnable>:
 80044dc:	b5b0      	push	{r4, r5, r7, lr}
 80044de:	b084      	sub	sp, #16
 80044e0:	af00      	add	r7, sp, #0
 80044e2:	6078      	str	r0, [r7, #4]
 80044e4:	6039      	str	r1, [r7, #0]
 80044e6:	250f      	movs	r5, #15
 80044e8:	197b      	adds	r3, r7, r5
 80044ea:	2200      	movs	r2, #0
 80044ec:	701a      	strb	r2, [r3, #0]
 80044ee:	197c      	adds	r4, r7, r5
 80044f0:	683a      	ldr	r2, [r7, #0]
 80044f2:	687b      	ldr	r3, [r7, #4]
 80044f4:	2109      	movs	r1, #9
 80044f6:	0018      	movs	r0, r3
 80044f8:	f7ff f8fc 	bl	80036f4 <VL53L0X_RdByte>
 80044fc:	0003      	movs	r3, r0
 80044fe:	7023      	strb	r3, [r4, #0]
 8004500:	197b      	adds	r3, r7, r5
 8004502:	781b      	ldrb	r3, [r3, #0]
 8004504:	b25b      	sxtb	r3, r3
 8004506:	2b00      	cmp	r3, #0
 8004508:	d106      	bne.n	8004518 <VL53L0X_GetFractionEnable+0x3c>
 800450a:	683b      	ldr	r3, [r7, #0]
 800450c:	781b      	ldrb	r3, [r3, #0]
 800450e:	2201      	movs	r2, #1
 8004510:	4013      	ands	r3, r2
 8004512:	b2da      	uxtb	r2, r3
 8004514:	683b      	ldr	r3, [r7, #0]
 8004516:	701a      	strb	r2, [r3, #0]
 8004518:	230f      	movs	r3, #15
 800451a:	18fb      	adds	r3, r7, r3
 800451c:	781b      	ldrb	r3, [r3, #0]
 800451e:	b25b      	sxtb	r3, r3
 8004520:	0018      	movs	r0, r3
 8004522:	46bd      	mov	sp, r7
 8004524:	b004      	add	sp, #16
 8004526:	bdb0      	pop	{r4, r5, r7, pc}

08004528 <VL53L0X_SetMeasurementTimingBudgetMicroSeconds>:
 8004528:	b5b0      	push	{r4, r5, r7, lr}
 800452a:	b084      	sub	sp, #16
 800452c:	af00      	add	r7, sp, #0
 800452e:	6078      	str	r0, [r7, #4]
 8004530:	6039      	str	r1, [r7, #0]
 8004532:	250f      	movs	r5, #15
 8004534:	197b      	adds	r3, r7, r5
 8004536:	2200      	movs	r2, #0
 8004538:	701a      	strb	r2, [r3, #0]
 800453a:	197c      	adds	r4, r7, r5
 800453c:	683a      	ldr	r2, [r7, #0]
 800453e:	687b      	ldr	r3, [r7, #4]
 8004540:	0011      	movs	r1, r2
 8004542:	0018      	movs	r0, r3
 8004544:	f003 fcda 	bl	8007efc <VL53L0X_set_measurement_timing_budget_micro_seconds>
 8004548:	0003      	movs	r3, r0
 800454a:	7023      	strb	r3, [r4, #0]
 800454c:	197b      	adds	r3, r7, r5
 800454e:	781b      	ldrb	r3, [r3, #0]
 8004550:	b25b      	sxtb	r3, r3
 8004552:	0018      	movs	r0, r3
 8004554:	46bd      	mov	sp, r7
 8004556:	b004      	add	sp, #16
 8004558:	bdb0      	pop	{r4, r5, r7, pc}

0800455a <VL53L0X_GetMeasurementTimingBudgetMicroSeconds>:
 800455a:	b5b0      	push	{r4, r5, r7, lr}
 800455c:	b084      	sub	sp, #16
 800455e:	af00      	add	r7, sp, #0
 8004560:	6078      	str	r0, [r7, #4]
 8004562:	6039      	str	r1, [r7, #0]
 8004564:	250f      	movs	r5, #15
 8004566:	197b      	adds	r3, r7, r5
 8004568:	2200      	movs	r2, #0
 800456a:	701a      	strb	r2, [r3, #0]
 800456c:	197c      	adds	r4, r7, r5
 800456e:	683a      	ldr	r2, [r7, #0]
 8004570:	687b      	ldr	r3, [r7, #4]
 8004572:	0011      	movs	r1, r2
 8004574:	0018      	movs	r0, r3
 8004576:	f003 fdcd 	bl	8008114 <VL53L0X_get_measurement_timing_budget_micro_seconds>
 800457a:	0003      	movs	r3, r0
 800457c:	7023      	strb	r3, [r4, #0]
 800457e:	197b      	adds	r3, r7, r5
 8004580:	781b      	ldrb	r3, [r3, #0]
 8004582:	b25b      	sxtb	r3, r3
 8004584:	0018      	movs	r0, r3
 8004586:	46bd      	mov	sp, r7
 8004588:	b004      	add	sp, #16
 800458a:	bdb0      	pop	{r4, r5, r7, pc}

0800458c <VL53L0X_GetVcselPulsePeriod>:
 800458c:	b5b0      	push	{r4, r5, r7, lr}
 800458e:	b086      	sub	sp, #24
 8004590:	af00      	add	r7, sp, #0
 8004592:	60f8      	str	r0, [r7, #12]
 8004594:	607a      	str	r2, [r7, #4]
 8004596:	200b      	movs	r0, #11
 8004598:	183b      	adds	r3, r7, r0
 800459a:	1c0a      	adds	r2, r1, #0
 800459c:	701a      	strb	r2, [r3, #0]
 800459e:	2517      	movs	r5, #23
 80045a0:	197b      	adds	r3, r7, r5
 80045a2:	2200      	movs	r2, #0
 80045a4:	701a      	strb	r2, [r3, #0]
 80045a6:	197c      	adds	r4, r7, r5
 80045a8:	687a      	ldr	r2, [r7, #4]
 80045aa:	183b      	adds	r3, r7, r0
 80045ac:	7819      	ldrb	r1, [r3, #0]
 80045ae:	68fb      	ldr	r3, [r7, #12]
 80045b0:	0018      	movs	r0, r3
 80045b2:	f003 fc5b 	bl	8007e6c <VL53L0X_get_vcsel_pulse_period>
 80045b6:	0003      	movs	r3, r0
 80045b8:	7023      	strb	r3, [r4, #0]
 80045ba:	197b      	adds	r3, r7, r5
 80045bc:	781b      	ldrb	r3, [r3, #0]
 80045be:	b25b      	sxtb	r3, r3
 80045c0:	0018      	movs	r0, r3
 80045c2:	46bd      	mov	sp, r7
 80045c4:	b006      	add	sp, #24
 80045c6:	bdb0      	pop	{r4, r5, r7, pc}

080045c8 <VL53L0X_SetSequenceStepEnable>:
 80045c8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80045ca:	b087      	sub	sp, #28
 80045cc:	af00      	add	r7, sp, #0
 80045ce:	6078      	str	r0, [r7, #4]
 80045d0:	0008      	movs	r0, r1
 80045d2:	0011      	movs	r1, r2
 80045d4:	1cfb      	adds	r3, r7, #3
 80045d6:	1c02      	adds	r2, r0, #0
 80045d8:	701a      	strb	r2, [r3, #0]
 80045da:	1cbb      	adds	r3, r7, #2
 80045dc:	1c0a      	adds	r2, r1, #0
 80045de:	701a      	strb	r2, [r3, #0]
 80045e0:	2517      	movs	r5, #23
 80045e2:	197b      	adds	r3, r7, r5
 80045e4:	2200      	movs	r2, #0
 80045e6:	701a      	strb	r2, [r3, #0]
 80045e8:	210f      	movs	r1, #15
 80045ea:	187b      	adds	r3, r7, r1
 80045ec:	2200      	movs	r2, #0
 80045ee:	701a      	strb	r2, [r3, #0]
 80045f0:	2316      	movs	r3, #22
 80045f2:	18fb      	adds	r3, r7, r3
 80045f4:	2200      	movs	r2, #0
 80045f6:	701a      	strb	r2, [r3, #0]
 80045f8:	197c      	adds	r4, r7, r5
 80045fa:	000e      	movs	r6, r1
 80045fc:	187a      	adds	r2, r7, r1
 80045fe:	687b      	ldr	r3, [r7, #4]
 8004600:	2101      	movs	r1, #1
 8004602:	0018      	movs	r0, r3
 8004604:	f7ff f876 	bl	80036f4 <VL53L0X_RdByte>
 8004608:	0003      	movs	r3, r0
 800460a:	7023      	strb	r3, [r4, #0]
 800460c:	2316      	movs	r3, #22
 800460e:	18fb      	adds	r3, r7, r3
 8004610:	19ba      	adds	r2, r7, r6
 8004612:	7812      	ldrb	r2, [r2, #0]
 8004614:	701a      	strb	r2, [r3, #0]
 8004616:	197b      	adds	r3, r7, r5
 8004618:	781b      	ldrb	r3, [r3, #0]
 800461a:	b25b      	sxtb	r3, r3
 800461c:	2b00      	cmp	r3, #0
 800461e:	d000      	beq.n	8004622 <VL53L0X_SetSequenceStepEnable+0x5a>
 8004620:	e070      	b.n	8004704 <VL53L0X_SetSequenceStepEnable+0x13c>
 8004622:	1cbb      	adds	r3, r7, #2
 8004624:	781b      	ldrb	r3, [r3, #0]
 8004626:	2b01      	cmp	r3, #1
 8004628:	d136      	bne.n	8004698 <VL53L0X_SetSequenceStepEnable+0xd0>
 800462a:	1cfb      	adds	r3, r7, #3
 800462c:	781b      	ldrb	r3, [r3, #0]
 800462e:	2b04      	cmp	r3, #4
 8004630:	d82d      	bhi.n	800468e <VL53L0X_SetSequenceStepEnable+0xc6>
 8004632:	009a      	lsls	r2, r3, #2
 8004634:	4b52      	ldr	r3, [pc, #328]	; (8004780 <VL53L0X_SetSequenceStepEnable+0x1b8>)
 8004636:	18d3      	adds	r3, r2, r3
 8004638:	681b      	ldr	r3, [r3, #0]
 800463a:	469f      	mov	pc, r3
 800463c:	2216      	movs	r2, #22
 800463e:	18bb      	adds	r3, r7, r2
 8004640:	18ba      	adds	r2, r7, r2
 8004642:	7812      	ldrb	r2, [r2, #0]
 8004644:	2110      	movs	r1, #16
 8004646:	430a      	orrs	r2, r1
 8004648:	701a      	strb	r2, [r3, #0]
 800464a:	e05c      	b.n	8004706 <VL53L0X_SetSequenceStepEnable+0x13e>
 800464c:	2216      	movs	r2, #22
 800464e:	18bb      	adds	r3, r7, r2
 8004650:	18ba      	adds	r2, r7, r2
 8004652:	7812      	ldrb	r2, [r2, #0]
 8004654:	2128      	movs	r1, #40	; 0x28
 8004656:	430a      	orrs	r2, r1
 8004658:	701a      	strb	r2, [r3, #0]
 800465a:	e054      	b.n	8004706 <VL53L0X_SetSequenceStepEnable+0x13e>
 800465c:	2216      	movs	r2, #22
 800465e:	18bb      	adds	r3, r7, r2
 8004660:	18ba      	adds	r2, r7, r2
 8004662:	7812      	ldrb	r2, [r2, #0]
 8004664:	2104      	movs	r1, #4
 8004666:	430a      	orrs	r2, r1
 8004668:	701a      	strb	r2, [r3, #0]
 800466a:	e04c      	b.n	8004706 <VL53L0X_SetSequenceStepEnable+0x13e>
 800466c:	2216      	movs	r2, #22
 800466e:	18bb      	adds	r3, r7, r2
 8004670:	18ba      	adds	r2, r7, r2
 8004672:	7812      	ldrb	r2, [r2, #0]
 8004674:	2140      	movs	r1, #64	; 0x40
 8004676:	430a      	orrs	r2, r1
 8004678:	701a      	strb	r2, [r3, #0]
 800467a:	e044      	b.n	8004706 <VL53L0X_SetSequenceStepEnable+0x13e>
 800467c:	2216      	movs	r2, #22
 800467e:	18bb      	adds	r3, r7, r2
 8004680:	18ba      	adds	r2, r7, r2
 8004682:	7812      	ldrb	r2, [r2, #0]
 8004684:	2180      	movs	r1, #128	; 0x80
 8004686:	4249      	negs	r1, r1
 8004688:	430a      	orrs	r2, r1
 800468a:	701a      	strb	r2, [r3, #0]
 800468c:	e03b      	b.n	8004706 <VL53L0X_SetSequenceStepEnable+0x13e>
 800468e:	2317      	movs	r3, #23
 8004690:	18fb      	adds	r3, r7, r3
 8004692:	22fc      	movs	r2, #252	; 0xfc
 8004694:	701a      	strb	r2, [r3, #0]
 8004696:	e036      	b.n	8004706 <VL53L0X_SetSequenceStepEnable+0x13e>
 8004698:	1cfb      	adds	r3, r7, #3
 800469a:	781b      	ldrb	r3, [r3, #0]
 800469c:	2b04      	cmp	r3, #4
 800469e:	d82c      	bhi.n	80046fa <VL53L0X_SetSequenceStepEnable+0x132>
 80046a0:	009a      	lsls	r2, r3, #2
 80046a2:	4b38      	ldr	r3, [pc, #224]	; (8004784 <VL53L0X_SetSequenceStepEnable+0x1bc>)
 80046a4:	18d3      	adds	r3, r2, r3
 80046a6:	681b      	ldr	r3, [r3, #0]
 80046a8:	469f      	mov	pc, r3
 80046aa:	2216      	movs	r2, #22
 80046ac:	18bb      	adds	r3, r7, r2
 80046ae:	18ba      	adds	r2, r7, r2
 80046b0:	7812      	ldrb	r2, [r2, #0]
 80046b2:	2110      	movs	r1, #16
 80046b4:	438a      	bics	r2, r1
 80046b6:	701a      	strb	r2, [r3, #0]
 80046b8:	e025      	b.n	8004706 <VL53L0X_SetSequenceStepEnable+0x13e>
 80046ba:	2216      	movs	r2, #22
 80046bc:	18bb      	adds	r3, r7, r2
 80046be:	18ba      	adds	r2, r7, r2
 80046c0:	7812      	ldrb	r2, [r2, #0]
 80046c2:	2128      	movs	r1, #40	; 0x28
 80046c4:	438a      	bics	r2, r1
 80046c6:	701a      	strb	r2, [r3, #0]
 80046c8:	e01d      	b.n	8004706 <VL53L0X_SetSequenceStepEnable+0x13e>
 80046ca:	2216      	movs	r2, #22
 80046cc:	18bb      	adds	r3, r7, r2
 80046ce:	18ba      	adds	r2, r7, r2
 80046d0:	7812      	ldrb	r2, [r2, #0]
 80046d2:	2104      	movs	r1, #4
 80046d4:	438a      	bics	r2, r1
 80046d6:	701a      	strb	r2, [r3, #0]
 80046d8:	e015      	b.n	8004706 <VL53L0X_SetSequenceStepEnable+0x13e>
 80046da:	2216      	movs	r2, #22
 80046dc:	18bb      	adds	r3, r7, r2
 80046de:	18ba      	adds	r2, r7, r2
 80046e0:	7812      	ldrb	r2, [r2, #0]
 80046e2:	2140      	movs	r1, #64	; 0x40
 80046e4:	438a      	bics	r2, r1
 80046e6:	701a      	strb	r2, [r3, #0]
 80046e8:	e00d      	b.n	8004706 <VL53L0X_SetSequenceStepEnable+0x13e>
 80046ea:	2216      	movs	r2, #22
 80046ec:	18bb      	adds	r3, r7, r2
 80046ee:	18ba      	adds	r2, r7, r2
 80046f0:	7812      	ldrb	r2, [r2, #0]
 80046f2:	217f      	movs	r1, #127	; 0x7f
 80046f4:	400a      	ands	r2, r1
 80046f6:	701a      	strb	r2, [r3, #0]
 80046f8:	e005      	b.n	8004706 <VL53L0X_SetSequenceStepEnable+0x13e>
 80046fa:	2317      	movs	r3, #23
 80046fc:	18fb      	adds	r3, r7, r3
 80046fe:	22fc      	movs	r2, #252	; 0xfc
 8004700:	701a      	strb	r2, [r3, #0]
 8004702:	e000      	b.n	8004706 <VL53L0X_SetSequenceStepEnable+0x13e>
 8004704:	46c0      	nop			; (mov r8, r8)
 8004706:	230f      	movs	r3, #15
 8004708:	18fb      	adds	r3, r7, r3
 800470a:	781b      	ldrb	r3, [r3, #0]
 800470c:	2116      	movs	r1, #22
 800470e:	187a      	adds	r2, r7, r1
 8004710:	7812      	ldrb	r2, [r2, #0]
 8004712:	429a      	cmp	r2, r3
 8004714:	d02b      	beq.n	800476e <VL53L0X_SetSequenceStepEnable+0x1a6>
 8004716:	2217      	movs	r2, #23
 8004718:	18bb      	adds	r3, r7, r2
 800471a:	781b      	ldrb	r3, [r3, #0]
 800471c:	b25b      	sxtb	r3, r3
 800471e:	2b00      	cmp	r3, #0
 8004720:	d109      	bne.n	8004736 <VL53L0X_SetSequenceStepEnable+0x16e>
 8004722:	18bc      	adds	r4, r7, r2
 8004724:	187b      	adds	r3, r7, r1
 8004726:	781a      	ldrb	r2, [r3, #0]
 8004728:	687b      	ldr	r3, [r7, #4]
 800472a:	2101      	movs	r1, #1
 800472c:	0018      	movs	r0, r3
 800472e:	f7fe ff73 	bl	8003618 <VL53L0X_WrByte>
 8004732:	0003      	movs	r3, r0
 8004734:	7023      	strb	r3, [r4, #0]
 8004736:	2317      	movs	r3, #23
 8004738:	18fb      	adds	r3, r7, r3
 800473a:	781b      	ldrb	r3, [r3, #0]
 800473c:	b25b      	sxtb	r3, r3
 800473e:	2b00      	cmp	r3, #0
 8004740:	d106      	bne.n	8004750 <VL53L0X_SetSequenceStepEnable+0x188>
 8004742:	687a      	ldr	r2, [r7, #4]
 8004744:	2316      	movs	r3, #22
 8004746:	18f9      	adds	r1, r7, r3
 8004748:	2388      	movs	r3, #136	; 0x88
 800474a:	005b      	lsls	r3, r3, #1
 800474c:	7809      	ldrb	r1, [r1, #0]
 800474e:	54d1      	strb	r1, [r2, r3]
 8004750:	2317      	movs	r3, #23
 8004752:	18fb      	adds	r3, r7, r3
 8004754:	781b      	ldrb	r3, [r3, #0]
 8004756:	b25b      	sxtb	r3, r3
 8004758:	2b00      	cmp	r3, #0
 800475a:	d108      	bne.n	800476e <VL53L0X_SetSequenceStepEnable+0x1a6>
 800475c:	687b      	ldr	r3, [r7, #4]
 800475e:	695b      	ldr	r3, [r3, #20]
 8004760:	613b      	str	r3, [r7, #16]
 8004762:	693a      	ldr	r2, [r7, #16]
 8004764:	687b      	ldr	r3, [r7, #4]
 8004766:	0011      	movs	r1, r2
 8004768:	0018      	movs	r0, r3
 800476a:	f7ff fedd 	bl	8004528 <VL53L0X_SetMeasurementTimingBudgetMicroSeconds>
 800476e:	2317      	movs	r3, #23
 8004770:	18fb      	adds	r3, r7, r3
 8004772:	781b      	ldrb	r3, [r3, #0]
 8004774:	b25b      	sxtb	r3, r3
 8004776:	0018      	movs	r0, r3
 8004778:	46bd      	mov	sp, r7
 800477a:	b007      	add	sp, #28
 800477c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800477e:	46c0      	nop			; (mov r8, r8)
 8004780:	08009cd8 	.word	0x08009cd8
 8004784:	08009cec 	.word	0x08009cec

08004788 <sequence_step_enabled>:
 8004788:	b590      	push	{r4, r7, lr}
 800478a:	b087      	sub	sp, #28
 800478c:	af00      	add	r7, sp, #0
 800478e:	60f8      	str	r0, [r7, #12]
 8004790:	0008      	movs	r0, r1
 8004792:	0011      	movs	r1, r2
 8004794:	607b      	str	r3, [r7, #4]
 8004796:	240b      	movs	r4, #11
 8004798:	193b      	adds	r3, r7, r4
 800479a:	1c02      	adds	r2, r0, #0
 800479c:	701a      	strb	r2, [r3, #0]
 800479e:	230a      	movs	r3, #10
 80047a0:	18fb      	adds	r3, r7, r3
 80047a2:	1c0a      	adds	r2, r1, #0
 80047a4:	701a      	strb	r2, [r3, #0]
 80047a6:	2317      	movs	r3, #23
 80047a8:	18fb      	adds	r3, r7, r3
 80047aa:	2200      	movs	r2, #0
 80047ac:	701a      	strb	r2, [r3, #0]
 80047ae:	687b      	ldr	r3, [r7, #4]
 80047b0:	2200      	movs	r2, #0
 80047b2:	701a      	strb	r2, [r3, #0]
 80047b4:	193b      	adds	r3, r7, r4
 80047b6:	781b      	ldrb	r3, [r3, #0]
 80047b8:	2b04      	cmp	r3, #4
 80047ba:	d838      	bhi.n	800482e <sequence_step_enabled+0xa6>
 80047bc:	009a      	lsls	r2, r3, #2
 80047be:	4b22      	ldr	r3, [pc, #136]	; (8004848 <sequence_step_enabled+0xc0>)
 80047c0:	18d3      	adds	r3, r2, r3
 80047c2:	681b      	ldr	r3, [r3, #0]
 80047c4:	469f      	mov	pc, r3
 80047c6:	230a      	movs	r3, #10
 80047c8:	18fb      	adds	r3, r7, r3
 80047ca:	781b      	ldrb	r3, [r3, #0]
 80047cc:	111b      	asrs	r3, r3, #4
 80047ce:	b2db      	uxtb	r3, r3
 80047d0:	2201      	movs	r2, #1
 80047d2:	4013      	ands	r3, r2
 80047d4:	b2da      	uxtb	r2, r3
 80047d6:	687b      	ldr	r3, [r7, #4]
 80047d8:	701a      	strb	r2, [r3, #0]
 80047da:	e02c      	b.n	8004836 <sequence_step_enabled+0xae>
 80047dc:	230a      	movs	r3, #10
 80047de:	18fb      	adds	r3, r7, r3
 80047e0:	781b      	ldrb	r3, [r3, #0]
 80047e2:	10db      	asrs	r3, r3, #3
 80047e4:	b2db      	uxtb	r3, r3
 80047e6:	2201      	movs	r2, #1
 80047e8:	4013      	ands	r3, r2
 80047ea:	b2da      	uxtb	r2, r3
 80047ec:	687b      	ldr	r3, [r7, #4]
 80047ee:	701a      	strb	r2, [r3, #0]
 80047f0:	e021      	b.n	8004836 <sequence_step_enabled+0xae>
 80047f2:	230a      	movs	r3, #10
 80047f4:	18fb      	adds	r3, r7, r3
 80047f6:	781b      	ldrb	r3, [r3, #0]
 80047f8:	109b      	asrs	r3, r3, #2
 80047fa:	b2db      	uxtb	r3, r3
 80047fc:	2201      	movs	r2, #1
 80047fe:	4013      	ands	r3, r2
 8004800:	b2da      	uxtb	r2, r3
 8004802:	687b      	ldr	r3, [r7, #4]
 8004804:	701a      	strb	r2, [r3, #0]
 8004806:	e016      	b.n	8004836 <sequence_step_enabled+0xae>
 8004808:	230a      	movs	r3, #10
 800480a:	18fb      	adds	r3, r7, r3
 800480c:	781b      	ldrb	r3, [r3, #0]
 800480e:	119b      	asrs	r3, r3, #6
 8004810:	b2db      	uxtb	r3, r3
 8004812:	2201      	movs	r2, #1
 8004814:	4013      	ands	r3, r2
 8004816:	b2da      	uxtb	r2, r3
 8004818:	687b      	ldr	r3, [r7, #4]
 800481a:	701a      	strb	r2, [r3, #0]
 800481c:	e00b      	b.n	8004836 <sequence_step_enabled+0xae>
 800481e:	230a      	movs	r3, #10
 8004820:	18fb      	adds	r3, r7, r3
 8004822:	781b      	ldrb	r3, [r3, #0]
 8004824:	09db      	lsrs	r3, r3, #7
 8004826:	b2da      	uxtb	r2, r3
 8004828:	687b      	ldr	r3, [r7, #4]
 800482a:	701a      	strb	r2, [r3, #0]
 800482c:	e003      	b.n	8004836 <sequence_step_enabled+0xae>
 800482e:	2317      	movs	r3, #23
 8004830:	18fb      	adds	r3, r7, r3
 8004832:	22fc      	movs	r2, #252	; 0xfc
 8004834:	701a      	strb	r2, [r3, #0]
 8004836:	2317      	movs	r3, #23
 8004838:	18fb      	adds	r3, r7, r3
 800483a:	781b      	ldrb	r3, [r3, #0]
 800483c:	b25b      	sxtb	r3, r3
 800483e:	0018      	movs	r0, r3
 8004840:	46bd      	mov	sp, r7
 8004842:	b007      	add	sp, #28
 8004844:	bd90      	pop	{r4, r7, pc}
 8004846:	46c0      	nop			; (mov r8, r8)
 8004848:	08009d00 	.word	0x08009d00

0800484c <VL53L0X_GetSequenceStepEnables>:
 800484c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800484e:	b085      	sub	sp, #20
 8004850:	af00      	add	r7, sp, #0
 8004852:	6078      	str	r0, [r7, #4]
 8004854:	6039      	str	r1, [r7, #0]
 8004856:	250f      	movs	r5, #15
 8004858:	197b      	adds	r3, r7, r5
 800485a:	2200      	movs	r2, #0
 800485c:	701a      	strb	r2, [r3, #0]
 800485e:	260e      	movs	r6, #14
 8004860:	19bb      	adds	r3, r7, r6
 8004862:	2200      	movs	r2, #0
 8004864:	701a      	strb	r2, [r3, #0]
 8004866:	197c      	adds	r4, r7, r5
 8004868:	19ba      	adds	r2, r7, r6
 800486a:	687b      	ldr	r3, [r7, #4]
 800486c:	2101      	movs	r1, #1
 800486e:	0018      	movs	r0, r3
 8004870:	f7fe ff40 	bl	80036f4 <VL53L0X_RdByte>
 8004874:	0003      	movs	r3, r0
 8004876:	7023      	strb	r3, [r4, #0]
 8004878:	197b      	adds	r3, r7, r5
 800487a:	781b      	ldrb	r3, [r3, #0]
 800487c:	b25b      	sxtb	r3, r3
 800487e:	2b00      	cmp	r3, #0
 8004880:	d109      	bne.n	8004896 <VL53L0X_GetSequenceStepEnables+0x4a>
 8004882:	19bb      	adds	r3, r7, r6
 8004884:	781a      	ldrb	r2, [r3, #0]
 8004886:	683b      	ldr	r3, [r7, #0]
 8004888:	197c      	adds	r4, r7, r5
 800488a:	6878      	ldr	r0, [r7, #4]
 800488c:	2100      	movs	r1, #0
 800488e:	f7ff ff7b 	bl	8004788 <sequence_step_enabled>
 8004892:	0003      	movs	r3, r0
 8004894:	7023      	strb	r3, [r4, #0]
 8004896:	210f      	movs	r1, #15
 8004898:	187b      	adds	r3, r7, r1
 800489a:	781b      	ldrb	r3, [r3, #0]
 800489c:	b25b      	sxtb	r3, r3
 800489e:	2b00      	cmp	r3, #0
 80048a0:	d10b      	bne.n	80048ba <VL53L0X_GetSequenceStepEnables+0x6e>
 80048a2:	230e      	movs	r3, #14
 80048a4:	18fb      	adds	r3, r7, r3
 80048a6:	781a      	ldrb	r2, [r3, #0]
 80048a8:	683b      	ldr	r3, [r7, #0]
 80048aa:	3302      	adds	r3, #2
 80048ac:	187c      	adds	r4, r7, r1
 80048ae:	6878      	ldr	r0, [r7, #4]
 80048b0:	2101      	movs	r1, #1
 80048b2:	f7ff ff69 	bl	8004788 <sequence_step_enabled>
 80048b6:	0003      	movs	r3, r0
 80048b8:	7023      	strb	r3, [r4, #0]
 80048ba:	210f      	movs	r1, #15
 80048bc:	187b      	adds	r3, r7, r1
 80048be:	781b      	ldrb	r3, [r3, #0]
 80048c0:	b25b      	sxtb	r3, r3
 80048c2:	2b00      	cmp	r3, #0
 80048c4:	d10b      	bne.n	80048de <VL53L0X_GetSequenceStepEnables+0x92>
 80048c6:	230e      	movs	r3, #14
 80048c8:	18fb      	adds	r3, r7, r3
 80048ca:	781a      	ldrb	r2, [r3, #0]
 80048cc:	683b      	ldr	r3, [r7, #0]
 80048ce:	3301      	adds	r3, #1
 80048d0:	187c      	adds	r4, r7, r1
 80048d2:	6878      	ldr	r0, [r7, #4]
 80048d4:	2102      	movs	r1, #2
 80048d6:	f7ff ff57 	bl	8004788 <sequence_step_enabled>
 80048da:	0003      	movs	r3, r0
 80048dc:	7023      	strb	r3, [r4, #0]
 80048de:	210f      	movs	r1, #15
 80048e0:	187b      	adds	r3, r7, r1
 80048e2:	781b      	ldrb	r3, [r3, #0]
 80048e4:	b25b      	sxtb	r3, r3
 80048e6:	2b00      	cmp	r3, #0
 80048e8:	d10b      	bne.n	8004902 <VL53L0X_GetSequenceStepEnables+0xb6>
 80048ea:	230e      	movs	r3, #14
 80048ec:	18fb      	adds	r3, r7, r3
 80048ee:	781a      	ldrb	r2, [r3, #0]
 80048f0:	683b      	ldr	r3, [r7, #0]
 80048f2:	3303      	adds	r3, #3
 80048f4:	187c      	adds	r4, r7, r1
 80048f6:	6878      	ldr	r0, [r7, #4]
 80048f8:	2103      	movs	r1, #3
 80048fa:	f7ff ff45 	bl	8004788 <sequence_step_enabled>
 80048fe:	0003      	movs	r3, r0
 8004900:	7023      	strb	r3, [r4, #0]
 8004902:	210f      	movs	r1, #15
 8004904:	187b      	adds	r3, r7, r1
 8004906:	781b      	ldrb	r3, [r3, #0]
 8004908:	b25b      	sxtb	r3, r3
 800490a:	2b00      	cmp	r3, #0
 800490c:	d10b      	bne.n	8004926 <VL53L0X_GetSequenceStepEnables+0xda>
 800490e:	230e      	movs	r3, #14
 8004910:	18fb      	adds	r3, r7, r3
 8004912:	781a      	ldrb	r2, [r3, #0]
 8004914:	683b      	ldr	r3, [r7, #0]
 8004916:	3304      	adds	r3, #4
 8004918:	187c      	adds	r4, r7, r1
 800491a:	6878      	ldr	r0, [r7, #4]
 800491c:	2104      	movs	r1, #4
 800491e:	f7ff ff33 	bl	8004788 <sequence_step_enabled>
 8004922:	0003      	movs	r3, r0
 8004924:	7023      	strb	r3, [r4, #0]
 8004926:	230f      	movs	r3, #15
 8004928:	18fb      	adds	r3, r7, r3
 800492a:	781b      	ldrb	r3, [r3, #0]
 800492c:	b25b      	sxtb	r3, r3
 800492e:	0018      	movs	r0, r3
 8004930:	46bd      	mov	sp, r7
 8004932:	b005      	add	sp, #20
 8004934:	bdf0      	pop	{r4, r5, r6, r7, pc}

08004936 <VL53L0X_GetInterMeasurementPeriodMilliSeconds>:
 8004936:	b5b0      	push	{r4, r5, r7, lr}
 8004938:	b084      	sub	sp, #16
 800493a:	af00      	add	r7, sp, #0
 800493c:	6078      	str	r0, [r7, #4]
 800493e:	6039      	str	r1, [r7, #0]
 8004940:	250f      	movs	r5, #15
 8004942:	197b      	adds	r3, r7, r5
 8004944:	2200      	movs	r2, #0
 8004946:	701a      	strb	r2, [r3, #0]
 8004948:	197c      	adds	r4, r7, r5
 800494a:	230c      	movs	r3, #12
 800494c:	18fa      	adds	r2, r7, r3
 800494e:	687b      	ldr	r3, [r7, #4]
 8004950:	21f8      	movs	r1, #248	; 0xf8
 8004952:	0018      	movs	r0, r3
 8004954:	f7fe fee3 	bl	800371e <VL53L0X_RdWord>
 8004958:	0003      	movs	r3, r0
 800495a:	7023      	strb	r3, [r4, #0]
 800495c:	197b      	adds	r3, r7, r5
 800495e:	781b      	ldrb	r3, [r3, #0]
 8004960:	b25b      	sxtb	r3, r3
 8004962:	2b00      	cmp	r3, #0
 8004964:	d109      	bne.n	800497a <VL53L0X_GetInterMeasurementPeriodMilliSeconds+0x44>
 8004966:	197c      	adds	r4, r7, r5
 8004968:	2308      	movs	r3, #8
 800496a:	18fa      	adds	r2, r7, r3
 800496c:	687b      	ldr	r3, [r7, #4]
 800496e:	2104      	movs	r1, #4
 8004970:	0018      	movs	r0, r3
 8004972:	f7fe fef7 	bl	8003764 <VL53L0X_RdDWord>
 8004976:	0003      	movs	r3, r0
 8004978:	7023      	strb	r3, [r4, #0]
 800497a:	230f      	movs	r3, #15
 800497c:	18fb      	adds	r3, r7, r3
 800497e:	781b      	ldrb	r3, [r3, #0]
 8004980:	b25b      	sxtb	r3, r3
 8004982:	2b00      	cmp	r3, #0
 8004984:	d113      	bne.n	80049ae <VL53L0X_GetInterMeasurementPeriodMilliSeconds+0x78>
 8004986:	210c      	movs	r1, #12
 8004988:	187b      	adds	r3, r7, r1
 800498a:	881b      	ldrh	r3, [r3, #0]
 800498c:	2b00      	cmp	r3, #0
 800498e:	d00a      	beq.n	80049a6 <VL53L0X_GetInterMeasurementPeriodMilliSeconds+0x70>
 8004990:	68ba      	ldr	r2, [r7, #8]
 8004992:	187b      	adds	r3, r7, r1
 8004994:	881b      	ldrh	r3, [r3, #0]
 8004996:	0019      	movs	r1, r3
 8004998:	0010      	movs	r0, r2
 800499a:	f7fb fbb5 	bl	8000108 <__udivsi3>
 800499e:	0003      	movs	r3, r0
 80049a0:	001a      	movs	r2, r3
 80049a2:	683b      	ldr	r3, [r7, #0]
 80049a4:	601a      	str	r2, [r3, #0]
 80049a6:	683b      	ldr	r3, [r7, #0]
 80049a8:	681a      	ldr	r2, [r3, #0]
 80049aa:	687b      	ldr	r3, [r7, #4]
 80049ac:	619a      	str	r2, [r3, #24]
 80049ae:	230f      	movs	r3, #15
 80049b0:	18fb      	adds	r3, r7, r3
 80049b2:	781b      	ldrb	r3, [r3, #0]
 80049b4:	b25b      	sxtb	r3, r3
 80049b6:	0018      	movs	r0, r3
 80049b8:	46bd      	mov	sp, r7
 80049ba:	b004      	add	sp, #16
 80049bc:	bdb0      	pop	{r4, r5, r7, pc}

080049be <VL53L0X_GetXTalkCompensationEnable>:
 80049be:	b580      	push	{r7, lr}
 80049c0:	b084      	sub	sp, #16
 80049c2:	af00      	add	r7, sp, #0
 80049c4:	6078      	str	r0, [r7, #4]
 80049c6:	6039      	str	r1, [r7, #0]
 80049c8:	210f      	movs	r1, #15
 80049ca:	187b      	adds	r3, r7, r1
 80049cc:	2200      	movs	r2, #0
 80049ce:	701a      	strb	r2, [r3, #0]
 80049d0:	200e      	movs	r0, #14
 80049d2:	183b      	adds	r3, r7, r0
 80049d4:	687a      	ldr	r2, [r7, #4]
 80049d6:	7f12      	ldrb	r2, [r2, #28]
 80049d8:	701a      	strb	r2, [r3, #0]
 80049da:	683b      	ldr	r3, [r7, #0]
 80049dc:	183a      	adds	r2, r7, r0
 80049de:	7812      	ldrb	r2, [r2, #0]
 80049e0:	701a      	strb	r2, [r3, #0]
 80049e2:	187b      	adds	r3, r7, r1
 80049e4:	781b      	ldrb	r3, [r3, #0]
 80049e6:	b25b      	sxtb	r3, r3
 80049e8:	0018      	movs	r0, r3
 80049ea:	46bd      	mov	sp, r7
 80049ec:	b004      	add	sp, #16
 80049ee:	bd80      	pop	{r7, pc}

080049f0 <VL53L0X_GetXTalkCompensationRateMegaCps>:
 80049f0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80049f2:	b087      	sub	sp, #28
 80049f4:	af00      	add	r7, sp, #0
 80049f6:	6078      	str	r0, [r7, #4]
 80049f8:	6039      	str	r1, [r7, #0]
 80049fa:	2517      	movs	r5, #23
 80049fc:	197b      	adds	r3, r7, r5
 80049fe:	2200      	movs	r2, #0
 8004a00:	701a      	strb	r2, [r3, #0]
 8004a02:	197c      	adds	r4, r7, r5
 8004a04:	260e      	movs	r6, #14
 8004a06:	19ba      	adds	r2, r7, r6
 8004a08:	687b      	ldr	r3, [r7, #4]
 8004a0a:	2120      	movs	r1, #32
 8004a0c:	0018      	movs	r0, r3
 8004a0e:	f7fe fe86 	bl	800371e <VL53L0X_RdWord>
 8004a12:	0003      	movs	r3, r0
 8004a14:	7023      	strb	r3, [r4, #0]
 8004a16:	197b      	adds	r3, r7, r5
 8004a18:	781b      	ldrb	r3, [r3, #0]
 8004a1a:	b25b      	sxtb	r3, r3
 8004a1c:	2b00      	cmp	r3, #0
 8004a1e:	d11b      	bne.n	8004a58 <VL53L0X_GetXTalkCompensationRateMegaCps+0x68>
 8004a20:	19bb      	adds	r3, r7, r6
 8004a22:	881b      	ldrh	r3, [r3, #0]
 8004a24:	2b00      	cmp	r3, #0
 8004a26:	d109      	bne.n	8004a3c <VL53L0X_GetXTalkCompensationRateMegaCps+0x4c>
 8004a28:	687b      	ldr	r3, [r7, #4]
 8004a2a:	6a1b      	ldr	r3, [r3, #32]
 8004a2c:	613b      	str	r3, [r7, #16]
 8004a2e:	683b      	ldr	r3, [r7, #0]
 8004a30:	693a      	ldr	r2, [r7, #16]
 8004a32:	601a      	str	r2, [r3, #0]
 8004a34:	687b      	ldr	r3, [r7, #4]
 8004a36:	2200      	movs	r2, #0
 8004a38:	771a      	strb	r2, [r3, #28]
 8004a3a:	e00d      	b.n	8004a58 <VL53L0X_GetXTalkCompensationRateMegaCps+0x68>
 8004a3c:	230e      	movs	r3, #14
 8004a3e:	18fb      	adds	r3, r7, r3
 8004a40:	881b      	ldrh	r3, [r3, #0]
 8004a42:	00db      	lsls	r3, r3, #3
 8004a44:	613b      	str	r3, [r7, #16]
 8004a46:	683b      	ldr	r3, [r7, #0]
 8004a48:	693a      	ldr	r2, [r7, #16]
 8004a4a:	601a      	str	r2, [r3, #0]
 8004a4c:	687b      	ldr	r3, [r7, #4]
 8004a4e:	693a      	ldr	r2, [r7, #16]
 8004a50:	621a      	str	r2, [r3, #32]
 8004a52:	687b      	ldr	r3, [r7, #4]
 8004a54:	2201      	movs	r2, #1
 8004a56:	771a      	strb	r2, [r3, #28]
 8004a58:	2317      	movs	r3, #23
 8004a5a:	18fb      	adds	r3, r7, r3
 8004a5c:	781b      	ldrb	r3, [r3, #0]
 8004a5e:	b25b      	sxtb	r3, r3
 8004a60:	0018      	movs	r0, r3
 8004a62:	46bd      	mov	sp, r7
 8004a64:	b007      	add	sp, #28
 8004a66:	bdf0      	pop	{r4, r5, r6, r7, pc}

08004a68 <VL53L0X_SetLimitCheckEnable>:
 8004a68:	b590      	push	{r4, r7, lr}
 8004a6a:	b087      	sub	sp, #28
 8004a6c:	af00      	add	r7, sp, #0
 8004a6e:	6078      	str	r0, [r7, #4]
 8004a70:	0008      	movs	r0, r1
 8004a72:	0011      	movs	r1, r2
 8004a74:	1cbb      	adds	r3, r7, #2
 8004a76:	1c02      	adds	r2, r0, #0
 8004a78:	801a      	strh	r2, [r3, #0]
 8004a7a:	1c7b      	adds	r3, r7, #1
 8004a7c:	1c0a      	adds	r2, r1, #0
 8004a7e:	701a      	strb	r2, [r3, #0]
 8004a80:	2117      	movs	r1, #23
 8004a82:	187b      	adds	r3, r7, r1
 8004a84:	2200      	movs	r2, #0
 8004a86:	701a      	strb	r2, [r3, #0]
 8004a88:	2300      	movs	r3, #0
 8004a8a:	613b      	str	r3, [r7, #16]
 8004a8c:	230f      	movs	r3, #15
 8004a8e:	18fb      	adds	r3, r7, r3
 8004a90:	2200      	movs	r2, #0
 8004a92:	701a      	strb	r2, [r3, #0]
 8004a94:	230e      	movs	r3, #14
 8004a96:	18fb      	adds	r3, r7, r3
 8004a98:	2200      	movs	r2, #0
 8004a9a:	701a      	strb	r2, [r3, #0]
 8004a9c:	1cbb      	adds	r3, r7, #2
 8004a9e:	881b      	ldrh	r3, [r3, #0]
 8004aa0:	2b05      	cmp	r3, #5
 8004aa2:	d903      	bls.n	8004aac <VL53L0X_SetLimitCheckEnable+0x44>
 8004aa4:	187b      	adds	r3, r7, r1
 8004aa6:	22fc      	movs	r2, #252	; 0xfc
 8004aa8:	701a      	strb	r2, [r3, #0]
 8004aaa:	e074      	b.n	8004b96 <VL53L0X_SetLimitCheckEnable+0x12e>
 8004aac:	1c7b      	adds	r3, r7, #1
 8004aae:	781b      	ldrb	r3, [r3, #0]
 8004ab0:	2b00      	cmp	r3, #0
 8004ab2:	d10a      	bne.n	8004aca <VL53L0X_SetLimitCheckEnable+0x62>
 8004ab4:	2300      	movs	r3, #0
 8004ab6:	613b      	str	r3, [r7, #16]
 8004ab8:	230f      	movs	r3, #15
 8004aba:	18fb      	adds	r3, r7, r3
 8004abc:	2200      	movs	r2, #0
 8004abe:	701a      	strb	r2, [r3, #0]
 8004ac0:	230e      	movs	r3, #14
 8004ac2:	18fb      	adds	r3, r7, r3
 8004ac4:	2201      	movs	r2, #1
 8004ac6:	701a      	strb	r2, [r3, #0]
 8004ac8:	e010      	b.n	8004aec <VL53L0X_SetLimitCheckEnable+0x84>
 8004aca:	1cbb      	adds	r3, r7, #2
 8004acc:	881b      	ldrh	r3, [r3, #0]
 8004ace:	687a      	ldr	r2, [r7, #4]
 8004ad0:	330c      	adds	r3, #12
 8004ad2:	009b      	lsls	r3, r3, #2
 8004ad4:	18d3      	adds	r3, r2, r3
 8004ad6:	3304      	adds	r3, #4
 8004ad8:	681b      	ldr	r3, [r3, #0]
 8004ada:	613b      	str	r3, [r7, #16]
 8004adc:	230e      	movs	r3, #14
 8004ade:	18fb      	adds	r3, r7, r3
 8004ae0:	2200      	movs	r2, #0
 8004ae2:	701a      	strb	r2, [r3, #0]
 8004ae4:	230f      	movs	r3, #15
 8004ae6:	18fb      	adds	r3, r7, r3
 8004ae8:	2201      	movs	r2, #1
 8004aea:	701a      	strb	r2, [r3, #0]
 8004aec:	1cbb      	adds	r3, r7, #2
 8004aee:	881b      	ldrh	r3, [r3, #0]
 8004af0:	2b05      	cmp	r3, #5
 8004af2:	d84c      	bhi.n	8004b8e <VL53L0X_SetLimitCheckEnable+0x126>
 8004af4:	009a      	lsls	r2, r3, #2
 8004af6:	4b39      	ldr	r3, [pc, #228]	; (8004bdc <VL53L0X_SetLimitCheckEnable+0x174>)
 8004af8:	18d3      	adds	r3, r2, r3
 8004afa:	681b      	ldr	r3, [r3, #0]
 8004afc:	469f      	mov	pc, r3
 8004afe:	687b      	ldr	r3, [r7, #4]
 8004b00:	220f      	movs	r2, #15
 8004b02:	18ba      	adds	r2, r7, r2
 8004b04:	2128      	movs	r1, #40	; 0x28
 8004b06:	7812      	ldrb	r2, [r2, #0]
 8004b08:	545a      	strb	r2, [r3, r1]
 8004b0a:	e044      	b.n	8004b96 <VL53L0X_SetLimitCheckEnable+0x12e>
 8004b0c:	693b      	ldr	r3, [r7, #16]
 8004b0e:	0a5b      	lsrs	r3, r3, #9
 8004b10:	b29a      	uxth	r2, r3
 8004b12:	2317      	movs	r3, #23
 8004b14:	18fc      	adds	r4, r7, r3
 8004b16:	687b      	ldr	r3, [r7, #4]
 8004b18:	2144      	movs	r1, #68	; 0x44
 8004b1a:	0018      	movs	r0, r3
 8004b1c:	f7fe fd94 	bl	8003648 <VL53L0X_WrWord>
 8004b20:	0003      	movs	r3, r0
 8004b22:	7023      	strb	r3, [r4, #0]
 8004b24:	e037      	b.n	8004b96 <VL53L0X_SetLimitCheckEnable+0x12e>
 8004b26:	687b      	ldr	r3, [r7, #4]
 8004b28:	220f      	movs	r2, #15
 8004b2a:	18ba      	adds	r2, r7, r2
 8004b2c:	212a      	movs	r1, #42	; 0x2a
 8004b2e:	7812      	ldrb	r2, [r2, #0]
 8004b30:	545a      	strb	r2, [r3, r1]
 8004b32:	e030      	b.n	8004b96 <VL53L0X_SetLimitCheckEnable+0x12e>
 8004b34:	687b      	ldr	r3, [r7, #4]
 8004b36:	220f      	movs	r2, #15
 8004b38:	18ba      	adds	r2, r7, r2
 8004b3a:	212b      	movs	r1, #43	; 0x2b
 8004b3c:	7812      	ldrb	r2, [r2, #0]
 8004b3e:	545a      	strb	r2, [r3, r1]
 8004b40:	e029      	b.n	8004b96 <VL53L0X_SetLimitCheckEnable+0x12e>
 8004b42:	210d      	movs	r1, #13
 8004b44:	187a      	adds	r2, r7, r1
 8004b46:	230e      	movs	r3, #14
 8004b48:	18fb      	adds	r3, r7, r3
 8004b4a:	781b      	ldrb	r3, [r3, #0]
 8004b4c:	18db      	adds	r3, r3, r3
 8004b4e:	7013      	strb	r3, [r2, #0]
 8004b50:	2317      	movs	r3, #23
 8004b52:	18fc      	adds	r4, r7, r3
 8004b54:	187b      	adds	r3, r7, r1
 8004b56:	781b      	ldrb	r3, [r3, #0]
 8004b58:	6878      	ldr	r0, [r7, #4]
 8004b5a:	22fe      	movs	r2, #254	; 0xfe
 8004b5c:	2160      	movs	r1, #96	; 0x60
 8004b5e:	f7fe fd98 	bl	8003692 <VL53L0X_UpdateByte>
 8004b62:	0003      	movs	r3, r0
 8004b64:	7023      	strb	r3, [r4, #0]
 8004b66:	e016      	b.n	8004b96 <VL53L0X_SetLimitCheckEnable+0x12e>
 8004b68:	210d      	movs	r1, #13
 8004b6a:	187b      	adds	r3, r7, r1
 8004b6c:	220e      	movs	r2, #14
 8004b6e:	18ba      	adds	r2, r7, r2
 8004b70:	7812      	ldrb	r2, [r2, #0]
 8004b72:	0112      	lsls	r2, r2, #4
 8004b74:	701a      	strb	r2, [r3, #0]
 8004b76:	2317      	movs	r3, #23
 8004b78:	18fc      	adds	r4, r7, r3
 8004b7a:	187b      	adds	r3, r7, r1
 8004b7c:	781b      	ldrb	r3, [r3, #0]
 8004b7e:	6878      	ldr	r0, [r7, #4]
 8004b80:	22ef      	movs	r2, #239	; 0xef
 8004b82:	2160      	movs	r1, #96	; 0x60
 8004b84:	f7fe fd85 	bl	8003692 <VL53L0X_UpdateByte>
 8004b88:	0003      	movs	r3, r0
 8004b8a:	7023      	strb	r3, [r4, #0]
 8004b8c:	e003      	b.n	8004b96 <VL53L0X_SetLimitCheckEnable+0x12e>
 8004b8e:	2317      	movs	r3, #23
 8004b90:	18fb      	adds	r3, r7, r3
 8004b92:	22fc      	movs	r2, #252	; 0xfc
 8004b94:	701a      	strb	r2, [r3, #0]
 8004b96:	2317      	movs	r3, #23
 8004b98:	18fb      	adds	r3, r7, r3
 8004b9a:	781b      	ldrb	r3, [r3, #0]
 8004b9c:	b25b      	sxtb	r3, r3
 8004b9e:	2b00      	cmp	r3, #0
 8004ba0:	d114      	bne.n	8004bcc <VL53L0X_SetLimitCheckEnable+0x164>
 8004ba2:	1c7b      	adds	r3, r7, #1
 8004ba4:	781b      	ldrb	r3, [r3, #0]
 8004ba6:	2b00      	cmp	r3, #0
 8004ba8:	d108      	bne.n	8004bbc <VL53L0X_SetLimitCheckEnable+0x154>
 8004baa:	1cbb      	adds	r3, r7, #2
 8004bac:	881b      	ldrh	r3, [r3, #0]
 8004bae:	687a      	ldr	r2, [r7, #4]
 8004bb0:	2128      	movs	r1, #40	; 0x28
 8004bb2:	18d3      	adds	r3, r2, r3
 8004bb4:	185b      	adds	r3, r3, r1
 8004bb6:	2200      	movs	r2, #0
 8004bb8:	701a      	strb	r2, [r3, #0]
 8004bba:	e007      	b.n	8004bcc <VL53L0X_SetLimitCheckEnable+0x164>
 8004bbc:	1cbb      	adds	r3, r7, #2
 8004bbe:	881b      	ldrh	r3, [r3, #0]
 8004bc0:	687a      	ldr	r2, [r7, #4]
 8004bc2:	2128      	movs	r1, #40	; 0x28
 8004bc4:	18d3      	adds	r3, r2, r3
 8004bc6:	185b      	adds	r3, r3, r1
 8004bc8:	2201      	movs	r2, #1
 8004bca:	701a      	strb	r2, [r3, #0]
 8004bcc:	2317      	movs	r3, #23
 8004bce:	18fb      	adds	r3, r7, r3
 8004bd0:	781b      	ldrb	r3, [r3, #0]
 8004bd2:	b25b      	sxtb	r3, r3
 8004bd4:	0018      	movs	r0, r3
 8004bd6:	46bd      	mov	sp, r7
 8004bd8:	b007      	add	sp, #28
 8004bda:	bd90      	pop	{r4, r7, pc}
 8004bdc:	08009d14 	.word	0x08009d14

08004be0 <VL53L0X_GetLimitCheckEnable>:
 8004be0:	b590      	push	{r4, r7, lr}
 8004be2:	b087      	sub	sp, #28
 8004be4:	af00      	add	r7, sp, #0
 8004be6:	60f8      	str	r0, [r7, #12]
 8004be8:	607a      	str	r2, [r7, #4]
 8004bea:	200a      	movs	r0, #10
 8004bec:	183b      	adds	r3, r7, r0
 8004bee:	1c0a      	adds	r2, r1, #0
 8004bf0:	801a      	strh	r2, [r3, #0]
 8004bf2:	2117      	movs	r1, #23
 8004bf4:	187b      	adds	r3, r7, r1
 8004bf6:	2200      	movs	r2, #0
 8004bf8:	701a      	strb	r2, [r3, #0]
 8004bfa:	183b      	adds	r3, r7, r0
 8004bfc:	881b      	ldrh	r3, [r3, #0]
 8004bfe:	2b05      	cmp	r3, #5
 8004c00:	d906      	bls.n	8004c10 <VL53L0X_GetLimitCheckEnable+0x30>
 8004c02:	187b      	adds	r3, r7, r1
 8004c04:	22fc      	movs	r2, #252	; 0xfc
 8004c06:	701a      	strb	r2, [r3, #0]
 8004c08:	687b      	ldr	r3, [r7, #4]
 8004c0a:	2200      	movs	r2, #0
 8004c0c:	701a      	strb	r2, [r3, #0]
 8004c0e:	e00e      	b.n	8004c2e <VL53L0X_GetLimitCheckEnable+0x4e>
 8004c10:	230a      	movs	r3, #10
 8004c12:	18fb      	adds	r3, r7, r3
 8004c14:	881a      	ldrh	r2, [r3, #0]
 8004c16:	2416      	movs	r4, #22
 8004c18:	193b      	adds	r3, r7, r4
 8004c1a:	68f9      	ldr	r1, [r7, #12]
 8004c1c:	2028      	movs	r0, #40	; 0x28
 8004c1e:	188a      	adds	r2, r1, r2
 8004c20:	1812      	adds	r2, r2, r0
 8004c22:	7812      	ldrb	r2, [r2, #0]
 8004c24:	701a      	strb	r2, [r3, #0]
 8004c26:	687b      	ldr	r3, [r7, #4]
 8004c28:	193a      	adds	r2, r7, r4
 8004c2a:	7812      	ldrb	r2, [r2, #0]
 8004c2c:	701a      	strb	r2, [r3, #0]
 8004c2e:	2317      	movs	r3, #23
 8004c30:	18fb      	adds	r3, r7, r3
 8004c32:	781b      	ldrb	r3, [r3, #0]
 8004c34:	b25b      	sxtb	r3, r3
 8004c36:	0018      	movs	r0, r3
 8004c38:	46bd      	mov	sp, r7
 8004c3a:	b007      	add	sp, #28
 8004c3c:	bd90      	pop	{r4, r7, pc}
	...

08004c40 <VL53L0X_SetLimitCheckValue>:
 8004c40:	b5b0      	push	{r4, r5, r7, lr}
 8004c42:	b086      	sub	sp, #24
 8004c44:	af00      	add	r7, sp, #0
 8004c46:	60f8      	str	r0, [r7, #12]
 8004c48:	607a      	str	r2, [r7, #4]
 8004c4a:	240a      	movs	r4, #10
 8004c4c:	193b      	adds	r3, r7, r4
 8004c4e:	1c0a      	adds	r2, r1, #0
 8004c50:	801a      	strh	r2, [r3, #0]
 8004c52:	2317      	movs	r3, #23
 8004c54:	18fb      	adds	r3, r7, r3
 8004c56:	2200      	movs	r2, #0
 8004c58:	701a      	strb	r2, [r3, #0]
 8004c5a:	193b      	adds	r3, r7, r4
 8004c5c:	881a      	ldrh	r2, [r3, #0]
 8004c5e:	2516      	movs	r5, #22
 8004c60:	197b      	adds	r3, r7, r5
 8004c62:	68f9      	ldr	r1, [r7, #12]
 8004c64:	2028      	movs	r0, #40	; 0x28
 8004c66:	188a      	adds	r2, r1, r2
 8004c68:	1812      	adds	r2, r2, r0
 8004c6a:	7812      	ldrb	r2, [r2, #0]
 8004c6c:	701a      	strb	r2, [r3, #0]
 8004c6e:	197b      	adds	r3, r7, r5
 8004c70:	781b      	ldrb	r3, [r3, #0]
 8004c72:	2b00      	cmp	r3, #0
 8004c74:	d109      	bne.n	8004c8a <VL53L0X_SetLimitCheckValue+0x4a>
 8004c76:	193b      	adds	r3, r7, r4
 8004c78:	881b      	ldrh	r3, [r3, #0]
 8004c7a:	68fa      	ldr	r2, [r7, #12]
 8004c7c:	330c      	adds	r3, #12
 8004c7e:	009b      	lsls	r3, r3, #2
 8004c80:	18d3      	adds	r3, r2, r3
 8004c82:	3304      	adds	r3, #4
 8004c84:	687a      	ldr	r2, [r7, #4]
 8004c86:	601a      	str	r2, [r3, #0]
 8004c88:	e043      	b.n	8004d12 <VL53L0X_SetLimitCheckValue+0xd2>
 8004c8a:	230a      	movs	r3, #10
 8004c8c:	18fb      	adds	r3, r7, r3
 8004c8e:	881b      	ldrh	r3, [r3, #0]
 8004c90:	2b05      	cmp	r3, #5
 8004c92:	d82a      	bhi.n	8004cea <VL53L0X_SetLimitCheckValue+0xaa>
 8004c94:	009a      	lsls	r2, r3, #2
 8004c96:	4b23      	ldr	r3, [pc, #140]	; (8004d24 <VL53L0X_SetLimitCheckValue+0xe4>)
 8004c98:	18d3      	adds	r3, r2, r3
 8004c9a:	681b      	ldr	r3, [r3, #0]
 8004c9c:	469f      	mov	pc, r3
 8004c9e:	68fb      	ldr	r3, [r7, #12]
 8004ca0:	687a      	ldr	r2, [r7, #4]
 8004ca2:	635a      	str	r2, [r3, #52]	; 0x34
 8004ca4:	e025      	b.n	8004cf2 <VL53L0X_SetLimitCheckValue+0xb2>
 8004ca6:	687b      	ldr	r3, [r7, #4]
 8004ca8:	0a5b      	lsrs	r3, r3, #9
 8004caa:	b29a      	uxth	r2, r3
 8004cac:	2317      	movs	r3, #23
 8004cae:	18fc      	adds	r4, r7, r3
 8004cb0:	68fb      	ldr	r3, [r7, #12]
 8004cb2:	2144      	movs	r1, #68	; 0x44
 8004cb4:	0018      	movs	r0, r3
 8004cb6:	f7fe fcc7 	bl	8003648 <VL53L0X_WrWord>
 8004cba:	0003      	movs	r3, r0
 8004cbc:	7023      	strb	r3, [r4, #0]
 8004cbe:	e018      	b.n	8004cf2 <VL53L0X_SetLimitCheckValue+0xb2>
 8004cc0:	68fb      	ldr	r3, [r7, #12]
 8004cc2:	687a      	ldr	r2, [r7, #4]
 8004cc4:	63da      	str	r2, [r3, #60]	; 0x3c
 8004cc6:	e014      	b.n	8004cf2 <VL53L0X_SetLimitCheckValue+0xb2>
 8004cc8:	68fb      	ldr	r3, [r7, #12]
 8004cca:	687a      	ldr	r2, [r7, #4]
 8004ccc:	641a      	str	r2, [r3, #64]	; 0x40
 8004cce:	e010      	b.n	8004cf2 <VL53L0X_SetLimitCheckValue+0xb2>
 8004cd0:	687b      	ldr	r3, [r7, #4]
 8004cd2:	0a5b      	lsrs	r3, r3, #9
 8004cd4:	b29a      	uxth	r2, r3
 8004cd6:	2317      	movs	r3, #23
 8004cd8:	18fc      	adds	r4, r7, r3
 8004cda:	68fb      	ldr	r3, [r7, #12]
 8004cdc:	2164      	movs	r1, #100	; 0x64
 8004cde:	0018      	movs	r0, r3
 8004ce0:	f7fe fcb2 	bl	8003648 <VL53L0X_WrWord>
 8004ce4:	0003      	movs	r3, r0
 8004ce6:	7023      	strb	r3, [r4, #0]
 8004ce8:	e003      	b.n	8004cf2 <VL53L0X_SetLimitCheckValue+0xb2>
 8004cea:	2317      	movs	r3, #23
 8004cec:	18fb      	adds	r3, r7, r3
 8004cee:	22fc      	movs	r2, #252	; 0xfc
 8004cf0:	701a      	strb	r2, [r3, #0]
 8004cf2:	2317      	movs	r3, #23
 8004cf4:	18fb      	adds	r3, r7, r3
 8004cf6:	781b      	ldrb	r3, [r3, #0]
 8004cf8:	b25b      	sxtb	r3, r3
 8004cfa:	2b00      	cmp	r3, #0
 8004cfc:	d109      	bne.n	8004d12 <VL53L0X_SetLimitCheckValue+0xd2>
 8004cfe:	230a      	movs	r3, #10
 8004d00:	18fb      	adds	r3, r7, r3
 8004d02:	881b      	ldrh	r3, [r3, #0]
 8004d04:	68fa      	ldr	r2, [r7, #12]
 8004d06:	330c      	adds	r3, #12
 8004d08:	009b      	lsls	r3, r3, #2
 8004d0a:	18d3      	adds	r3, r2, r3
 8004d0c:	3304      	adds	r3, #4
 8004d0e:	687a      	ldr	r2, [r7, #4]
 8004d10:	601a      	str	r2, [r3, #0]
 8004d12:	2317      	movs	r3, #23
 8004d14:	18fb      	adds	r3, r7, r3
 8004d16:	781b      	ldrb	r3, [r3, #0]
 8004d18:	b25b      	sxtb	r3, r3
 8004d1a:	0018      	movs	r0, r3
 8004d1c:	46bd      	mov	sp, r7
 8004d1e:	b006      	add	sp, #24
 8004d20:	bdb0      	pop	{r4, r5, r7, pc}
 8004d22:	46c0      	nop			; (mov r8, r8)
 8004d24:	08009d2c 	.word	0x08009d2c

08004d28 <VL53L0X_GetLimitCheckValue>:
 8004d28:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004d2a:	b089      	sub	sp, #36	; 0x24
 8004d2c:	af00      	add	r7, sp, #0
 8004d2e:	60f8      	str	r0, [r7, #12]
 8004d30:	607a      	str	r2, [r7, #4]
 8004d32:	200a      	movs	r0, #10
 8004d34:	183b      	adds	r3, r7, r0
 8004d36:	1c0a      	adds	r2, r1, #0
 8004d38:	801a      	strh	r2, [r3, #0]
 8004d3a:	231f      	movs	r3, #31
 8004d3c:	18fb      	adds	r3, r7, r3
 8004d3e:	2200      	movs	r2, #0
 8004d40:	701a      	strb	r2, [r3, #0]
 8004d42:	231e      	movs	r3, #30
 8004d44:	18fb      	adds	r3, r7, r3
 8004d46:	2200      	movs	r2, #0
 8004d48:	701a      	strb	r2, [r3, #0]
 8004d4a:	183b      	adds	r3, r7, r0
 8004d4c:	881b      	ldrh	r3, [r3, #0]
 8004d4e:	2b05      	cmp	r3, #5
 8004d50:	d84e      	bhi.n	8004df0 <VL53L0X_GetLimitCheckValue+0xc8>
 8004d52:	009a      	lsls	r2, r3, #2
 8004d54:	4b4b      	ldr	r3, [pc, #300]	; (8004e84 <VL53L0X_GetLimitCheckValue+0x15c>)
 8004d56:	18d3      	adds	r3, r2, r3
 8004d58:	681b      	ldr	r3, [r3, #0]
 8004d5a:	469f      	mov	pc, r3
 8004d5c:	68fb      	ldr	r3, [r7, #12]
 8004d5e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8004d60:	61bb      	str	r3, [r7, #24]
 8004d62:	231e      	movs	r3, #30
 8004d64:	18fb      	adds	r3, r7, r3
 8004d66:	2200      	movs	r2, #0
 8004d68:	701a      	strb	r2, [r3, #0]
 8004d6a:	e045      	b.n	8004df8 <VL53L0X_GetLimitCheckValue+0xd0>
 8004d6c:	251f      	movs	r5, #31
 8004d6e:	197c      	adds	r4, r7, r5
 8004d70:	2616      	movs	r6, #22
 8004d72:	19ba      	adds	r2, r7, r6
 8004d74:	68fb      	ldr	r3, [r7, #12]
 8004d76:	2144      	movs	r1, #68	; 0x44
 8004d78:	0018      	movs	r0, r3
 8004d7a:	f7fe fcd0 	bl	800371e <VL53L0X_RdWord>
 8004d7e:	0003      	movs	r3, r0
 8004d80:	7023      	strb	r3, [r4, #0]
 8004d82:	197b      	adds	r3, r7, r5
 8004d84:	781b      	ldrb	r3, [r3, #0]
 8004d86:	b25b      	sxtb	r3, r3
 8004d88:	2b00      	cmp	r3, #0
 8004d8a:	d103      	bne.n	8004d94 <VL53L0X_GetLimitCheckValue+0x6c>
 8004d8c:	19bb      	adds	r3, r7, r6
 8004d8e:	881b      	ldrh	r3, [r3, #0]
 8004d90:	025b      	lsls	r3, r3, #9
 8004d92:	61bb      	str	r3, [r7, #24]
 8004d94:	231e      	movs	r3, #30
 8004d96:	18fb      	adds	r3, r7, r3
 8004d98:	2201      	movs	r2, #1
 8004d9a:	701a      	strb	r2, [r3, #0]
 8004d9c:	e02c      	b.n	8004df8 <VL53L0X_GetLimitCheckValue+0xd0>
 8004d9e:	68fb      	ldr	r3, [r7, #12]
 8004da0:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8004da2:	61bb      	str	r3, [r7, #24]
 8004da4:	231e      	movs	r3, #30
 8004da6:	18fb      	adds	r3, r7, r3
 8004da8:	2200      	movs	r2, #0
 8004daa:	701a      	strb	r2, [r3, #0]
 8004dac:	e024      	b.n	8004df8 <VL53L0X_GetLimitCheckValue+0xd0>
 8004dae:	68fb      	ldr	r3, [r7, #12]
 8004db0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8004db2:	61bb      	str	r3, [r7, #24]
 8004db4:	231e      	movs	r3, #30
 8004db6:	18fb      	adds	r3, r7, r3
 8004db8:	2200      	movs	r2, #0
 8004dba:	701a      	strb	r2, [r3, #0]
 8004dbc:	e01c      	b.n	8004df8 <VL53L0X_GetLimitCheckValue+0xd0>
 8004dbe:	251f      	movs	r5, #31
 8004dc0:	197c      	adds	r4, r7, r5
 8004dc2:	2616      	movs	r6, #22
 8004dc4:	19ba      	adds	r2, r7, r6
 8004dc6:	68fb      	ldr	r3, [r7, #12]
 8004dc8:	2164      	movs	r1, #100	; 0x64
 8004dca:	0018      	movs	r0, r3
 8004dcc:	f7fe fca7 	bl	800371e <VL53L0X_RdWord>
 8004dd0:	0003      	movs	r3, r0
 8004dd2:	7023      	strb	r3, [r4, #0]
 8004dd4:	197b      	adds	r3, r7, r5
 8004dd6:	781b      	ldrb	r3, [r3, #0]
 8004dd8:	b25b      	sxtb	r3, r3
 8004dda:	2b00      	cmp	r3, #0
 8004ddc:	d103      	bne.n	8004de6 <VL53L0X_GetLimitCheckValue+0xbe>
 8004dde:	19bb      	adds	r3, r7, r6
 8004de0:	881b      	ldrh	r3, [r3, #0]
 8004de2:	025b      	lsls	r3, r3, #9
 8004de4:	61bb      	str	r3, [r7, #24]
 8004de6:	231e      	movs	r3, #30
 8004de8:	18fb      	adds	r3, r7, r3
 8004dea:	2200      	movs	r2, #0
 8004dec:	701a      	strb	r2, [r3, #0]
 8004dee:	e003      	b.n	8004df8 <VL53L0X_GetLimitCheckValue+0xd0>
 8004df0:	231f      	movs	r3, #31
 8004df2:	18fb      	adds	r3, r7, r3
 8004df4:	22fc      	movs	r2, #252	; 0xfc
 8004df6:	701a      	strb	r2, [r3, #0]
 8004df8:	231f      	movs	r3, #31
 8004dfa:	18fb      	adds	r3, r7, r3
 8004dfc:	781b      	ldrb	r3, [r3, #0]
 8004dfe:	b25b      	sxtb	r3, r3
 8004e00:	2b00      	cmp	r3, #0
 8004e02:	d136      	bne.n	8004e72 <VL53L0X_GetLimitCheckValue+0x14a>
 8004e04:	231e      	movs	r3, #30
 8004e06:	18fb      	adds	r3, r7, r3
 8004e08:	781b      	ldrb	r3, [r3, #0]
 8004e0a:	2b01      	cmp	r3, #1
 8004e0c:	d12e      	bne.n	8004e6c <VL53L0X_GetLimitCheckValue+0x144>
 8004e0e:	69bb      	ldr	r3, [r7, #24]
 8004e10:	2b00      	cmp	r3, #0
 8004e12:	d115      	bne.n	8004e40 <VL53L0X_GetLimitCheckValue+0x118>
 8004e14:	210a      	movs	r1, #10
 8004e16:	187b      	adds	r3, r7, r1
 8004e18:	881b      	ldrh	r3, [r3, #0]
 8004e1a:	68fa      	ldr	r2, [r7, #12]
 8004e1c:	330c      	adds	r3, #12
 8004e1e:	009b      	lsls	r3, r3, #2
 8004e20:	18d3      	adds	r3, r2, r3
 8004e22:	3304      	adds	r3, #4
 8004e24:	681b      	ldr	r3, [r3, #0]
 8004e26:	61bb      	str	r3, [r7, #24]
 8004e28:	687b      	ldr	r3, [r7, #4]
 8004e2a:	69ba      	ldr	r2, [r7, #24]
 8004e2c:	601a      	str	r2, [r3, #0]
 8004e2e:	187b      	adds	r3, r7, r1
 8004e30:	881b      	ldrh	r3, [r3, #0]
 8004e32:	68fa      	ldr	r2, [r7, #12]
 8004e34:	2128      	movs	r1, #40	; 0x28
 8004e36:	18d3      	adds	r3, r2, r3
 8004e38:	185b      	adds	r3, r3, r1
 8004e3a:	2200      	movs	r2, #0
 8004e3c:	701a      	strb	r2, [r3, #0]
 8004e3e:	e018      	b.n	8004e72 <VL53L0X_GetLimitCheckValue+0x14a>
 8004e40:	687b      	ldr	r3, [r7, #4]
 8004e42:	69ba      	ldr	r2, [r7, #24]
 8004e44:	601a      	str	r2, [r3, #0]
 8004e46:	210a      	movs	r1, #10
 8004e48:	187b      	adds	r3, r7, r1
 8004e4a:	881b      	ldrh	r3, [r3, #0]
 8004e4c:	68fa      	ldr	r2, [r7, #12]
 8004e4e:	330c      	adds	r3, #12
 8004e50:	009b      	lsls	r3, r3, #2
 8004e52:	18d3      	adds	r3, r2, r3
 8004e54:	3304      	adds	r3, #4
 8004e56:	69ba      	ldr	r2, [r7, #24]
 8004e58:	601a      	str	r2, [r3, #0]
 8004e5a:	187b      	adds	r3, r7, r1
 8004e5c:	881b      	ldrh	r3, [r3, #0]
 8004e5e:	68fa      	ldr	r2, [r7, #12]
 8004e60:	2128      	movs	r1, #40	; 0x28
 8004e62:	18d3      	adds	r3, r2, r3
 8004e64:	185b      	adds	r3, r3, r1
 8004e66:	2201      	movs	r2, #1
 8004e68:	701a      	strb	r2, [r3, #0]
 8004e6a:	e002      	b.n	8004e72 <VL53L0X_GetLimitCheckValue+0x14a>
 8004e6c:	687b      	ldr	r3, [r7, #4]
 8004e6e:	69ba      	ldr	r2, [r7, #24]
 8004e70:	601a      	str	r2, [r3, #0]
 8004e72:	231f      	movs	r3, #31
 8004e74:	18fb      	adds	r3, r7, r3
 8004e76:	781b      	ldrb	r3, [r3, #0]
 8004e78:	b25b      	sxtb	r3, r3
 8004e7a:	0018      	movs	r0, r3
 8004e7c:	46bd      	mov	sp, r7
 8004e7e:	b009      	add	sp, #36	; 0x24
 8004e80:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8004e82:	46c0      	nop			; (mov r8, r8)
 8004e84:	08009d44 	.word	0x08009d44

08004e88 <VL53L0X_GetWrapAroundCheckEnable>:
 8004e88:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004e8a:	b085      	sub	sp, #20
 8004e8c:	af00      	add	r7, sp, #0
 8004e8e:	6078      	str	r0, [r7, #4]
 8004e90:	6039      	str	r1, [r7, #0]
 8004e92:	250f      	movs	r5, #15
 8004e94:	197b      	adds	r3, r7, r5
 8004e96:	2200      	movs	r2, #0
 8004e98:	701a      	strb	r2, [r3, #0]
 8004e9a:	197c      	adds	r4, r7, r5
 8004e9c:	260e      	movs	r6, #14
 8004e9e:	19ba      	adds	r2, r7, r6
 8004ea0:	687b      	ldr	r3, [r7, #4]
 8004ea2:	2101      	movs	r1, #1
 8004ea4:	0018      	movs	r0, r3
 8004ea6:	f7fe fc25 	bl	80036f4 <VL53L0X_RdByte>
 8004eaa:	0003      	movs	r3, r0
 8004eac:	7023      	strb	r3, [r4, #0]
 8004eae:	197b      	adds	r3, r7, r5
 8004eb0:	781b      	ldrb	r3, [r3, #0]
 8004eb2:	b25b      	sxtb	r3, r3
 8004eb4:	2b00      	cmp	r3, #0
 8004eb6:	d111      	bne.n	8004edc <VL53L0X_GetWrapAroundCheckEnable+0x54>
 8004eb8:	19bb      	adds	r3, r7, r6
 8004eba:	7819      	ldrb	r1, [r3, #0]
 8004ebc:	687a      	ldr	r2, [r7, #4]
 8004ebe:	2388      	movs	r3, #136	; 0x88
 8004ec0:	005b      	lsls	r3, r3, #1
 8004ec2:	54d1      	strb	r1, [r2, r3]
 8004ec4:	19bb      	adds	r3, r7, r6
 8004ec6:	781b      	ldrb	r3, [r3, #0]
 8004ec8:	b25b      	sxtb	r3, r3
 8004eca:	2b00      	cmp	r3, #0
 8004ecc:	da03      	bge.n	8004ed6 <VL53L0X_GetWrapAroundCheckEnable+0x4e>
 8004ece:	683b      	ldr	r3, [r7, #0]
 8004ed0:	2201      	movs	r2, #1
 8004ed2:	701a      	strb	r2, [r3, #0]
 8004ed4:	e002      	b.n	8004edc <VL53L0X_GetWrapAroundCheckEnable+0x54>
 8004ed6:	683b      	ldr	r3, [r7, #0]
 8004ed8:	2200      	movs	r2, #0
 8004eda:	701a      	strb	r2, [r3, #0]
 8004edc:	230f      	movs	r3, #15
 8004ede:	18fb      	adds	r3, r7, r3
 8004ee0:	781b      	ldrb	r3, [r3, #0]
 8004ee2:	b25b      	sxtb	r3, r3
 8004ee4:	2b00      	cmp	r3, #0
 8004ee6:	d104      	bne.n	8004ef2 <VL53L0X_GetWrapAroundCheckEnable+0x6a>
 8004ee8:	683b      	ldr	r3, [r7, #0]
 8004eea:	7819      	ldrb	r1, [r3, #0]
 8004eec:	687b      	ldr	r3, [r7, #4]
 8004eee:	224c      	movs	r2, #76	; 0x4c
 8004ef0:	5499      	strb	r1, [r3, r2]
 8004ef2:	230f      	movs	r3, #15
 8004ef4:	18fb      	adds	r3, r7, r3
 8004ef6:	781b      	ldrb	r3, [r3, #0]
 8004ef8:	b25b      	sxtb	r3, r3
 8004efa:	0018      	movs	r0, r3
 8004efc:	46bd      	mov	sp, r7
 8004efe:	b005      	add	sp, #20
 8004f00:	bdf0      	pop	{r4, r5, r6, r7, pc}

08004f02 <VL53L0X_PerformSingleMeasurement>:
 8004f02:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004f04:	b085      	sub	sp, #20
 8004f06:	af00      	add	r7, sp, #0
 8004f08:	6078      	str	r0, [r7, #4]
 8004f0a:	250f      	movs	r5, #15
 8004f0c:	197b      	adds	r3, r7, r5
 8004f0e:	2200      	movs	r2, #0
 8004f10:	701a      	strb	r2, [r3, #0]
 8004f12:	197c      	adds	r4, r7, r5
 8004f14:	260e      	movs	r6, #14
 8004f16:	19ba      	adds	r2, r7, r6
 8004f18:	687b      	ldr	r3, [r7, #4]
 8004f1a:	0011      	movs	r1, r2
 8004f1c:	0018      	movs	r0, r3
 8004f1e:	f7ff fac9 	bl	80044b4 <VL53L0X_GetDeviceMode>
 8004f22:	0003      	movs	r3, r0
 8004f24:	7023      	strb	r3, [r4, #0]
 8004f26:	002a      	movs	r2, r5
 8004f28:	18bb      	adds	r3, r7, r2
 8004f2a:	781b      	ldrb	r3, [r3, #0]
 8004f2c:	b25b      	sxtb	r3, r3
 8004f2e:	2b00      	cmp	r3, #0
 8004f30:	d10a      	bne.n	8004f48 <VL53L0X_PerformSingleMeasurement+0x46>
 8004f32:	19bb      	adds	r3, r7, r6
 8004f34:	781b      	ldrb	r3, [r3, #0]
 8004f36:	2b00      	cmp	r3, #0
 8004f38:	d106      	bne.n	8004f48 <VL53L0X_PerformSingleMeasurement+0x46>
 8004f3a:	18bc      	adds	r4, r7, r2
 8004f3c:	687b      	ldr	r3, [r7, #4]
 8004f3e:	0018      	movs	r0, r3
 8004f40:	f000 f8ca 	bl	80050d8 <VL53L0X_StartMeasurement>
 8004f44:	0003      	movs	r3, r0
 8004f46:	7023      	strb	r3, [r4, #0]
 8004f48:	220f      	movs	r2, #15
 8004f4a:	18bb      	adds	r3, r7, r2
 8004f4c:	781b      	ldrb	r3, [r3, #0]
 8004f4e:	b25b      	sxtb	r3, r3
 8004f50:	2b00      	cmp	r3, #0
 8004f52:	d106      	bne.n	8004f62 <VL53L0X_PerformSingleMeasurement+0x60>
 8004f54:	18bc      	adds	r4, r7, r2
 8004f56:	687b      	ldr	r3, [r7, #4]
 8004f58:	0018      	movs	r0, r3
 8004f5a:	f001 fe60 	bl	8006c1e <VL53L0X_measurement_poll_for_completion>
 8004f5e:	0003      	movs	r3, r0
 8004f60:	7023      	strb	r3, [r4, #0]
 8004f62:	230f      	movs	r3, #15
 8004f64:	18fb      	adds	r3, r7, r3
 8004f66:	781b      	ldrb	r3, [r3, #0]
 8004f68:	b25b      	sxtb	r3, r3
 8004f6a:	2b00      	cmp	r3, #0
 8004f6c:	d109      	bne.n	8004f82 <VL53L0X_PerformSingleMeasurement+0x80>
 8004f6e:	230e      	movs	r3, #14
 8004f70:	18fb      	adds	r3, r7, r3
 8004f72:	781b      	ldrb	r3, [r3, #0]
 8004f74:	2b00      	cmp	r3, #0
 8004f76:	d104      	bne.n	8004f82 <VL53L0X_PerformSingleMeasurement+0x80>
 8004f78:	687a      	ldr	r2, [r7, #4]
 8004f7a:	2389      	movs	r3, #137	; 0x89
 8004f7c:	005b      	lsls	r3, r3, #1
 8004f7e:	2103      	movs	r1, #3
 8004f80:	54d1      	strb	r1, [r2, r3]
 8004f82:	230f      	movs	r3, #15
 8004f84:	18fb      	adds	r3, r7, r3
 8004f86:	781b      	ldrb	r3, [r3, #0]
 8004f88:	b25b      	sxtb	r3, r3
 8004f8a:	0018      	movs	r0, r3
 8004f8c:	46bd      	mov	sp, r7
 8004f8e:	b005      	add	sp, #20
 8004f90:	bdf0      	pop	{r4, r5, r6, r7, pc}

08004f92 <VL53L0X_PerformRefCalibration>:
 8004f92:	b5b0      	push	{r4, r5, r7, lr}
 8004f94:	b086      	sub	sp, #24
 8004f96:	af00      	add	r7, sp, #0
 8004f98:	60f8      	str	r0, [r7, #12]
 8004f9a:	60b9      	str	r1, [r7, #8]
 8004f9c:	607a      	str	r2, [r7, #4]
 8004f9e:	2517      	movs	r5, #23
 8004fa0:	197b      	adds	r3, r7, r5
 8004fa2:	2200      	movs	r2, #0
 8004fa4:	701a      	strb	r2, [r3, #0]
 8004fa6:	197c      	adds	r4, r7, r5
 8004fa8:	687a      	ldr	r2, [r7, #4]
 8004faa:	68b9      	ldr	r1, [r7, #8]
 8004fac:	68f8      	ldr	r0, [r7, #12]
 8004fae:	2301      	movs	r3, #1
 8004fb0:	f001 fde0 	bl	8006b74 <VL53L0X_perform_ref_calibration>
 8004fb4:	0003      	movs	r3, r0
 8004fb6:	7023      	strb	r3, [r4, #0]
 8004fb8:	197b      	adds	r3, r7, r5
 8004fba:	781b      	ldrb	r3, [r3, #0]
 8004fbc:	b25b      	sxtb	r3, r3
 8004fbe:	0018      	movs	r0, r3
 8004fc0:	46bd      	mov	sp, r7
 8004fc2:	b006      	add	sp, #24
 8004fc4:	bdb0      	pop	{r4, r5, r7, pc}
	...

08004fc8 <VL53L0X_CheckAndLoadInterruptSettings>:
 8004fc8:	b590      	push	{r4, r7, lr}
 8004fca:	b087      	sub	sp, #28
 8004fcc:	af00      	add	r7, sp, #0
 8004fce:	6078      	str	r0, [r7, #4]
 8004fd0:	000a      	movs	r2, r1
 8004fd2:	1cfb      	adds	r3, r7, #3
 8004fd4:	701a      	strb	r2, [r3, #0]
 8004fd6:	2317      	movs	r3, #23
 8004fd8:	18fb      	adds	r3, r7, r3
 8004fda:	2200      	movs	r2, #0
 8004fdc:	701a      	strb	r2, [r3, #0]
 8004fde:	2016      	movs	r0, #22
 8004fe0:	183b      	adds	r3, r7, r0
 8004fe2:	687a      	ldr	r2, [r7, #4]
 8004fe4:	21da      	movs	r1, #218	; 0xda
 8004fe6:	5c52      	ldrb	r2, [r2, r1]
 8004fe8:	701a      	strb	r2, [r3, #0]
 8004fea:	0002      	movs	r2, r0
 8004fec:	18bb      	adds	r3, r7, r2
 8004fee:	781b      	ldrb	r3, [r3, #0]
 8004ff0:	2b01      	cmp	r3, #1
 8004ff2:	d007      	beq.n	8005004 <VL53L0X_CheckAndLoadInterruptSettings+0x3c>
 8004ff4:	18bb      	adds	r3, r7, r2
 8004ff6:	781b      	ldrb	r3, [r3, #0]
 8004ff8:	2b02      	cmp	r3, #2
 8004ffa:	d003      	beq.n	8005004 <VL53L0X_CheckAndLoadInterruptSettings+0x3c>
 8004ffc:	18bb      	adds	r3, r7, r2
 8004ffe:	781b      	ldrb	r3, [r3, #0]
 8005000:	2b03      	cmp	r3, #3
 8005002:	d15e      	bne.n	80050c2 <VL53L0X_CheckAndLoadInterruptSettings+0xfa>
 8005004:	2317      	movs	r3, #23
 8005006:	18fc      	adds	r4, r7, r3
 8005008:	230c      	movs	r3, #12
 800500a:	18fb      	adds	r3, r7, r3
 800500c:	2210      	movs	r2, #16
 800500e:	18ba      	adds	r2, r7, r2
 8005010:	6878      	ldr	r0, [r7, #4]
 8005012:	2101      	movs	r1, #1
 8005014:	f000 fd28 	bl	8005a68 <VL53L0X_GetInterruptThresholds>
 8005018:	0003      	movs	r3, r0
 800501a:	7023      	strb	r3, [r4, #0]
 800501c:	693a      	ldr	r2, [r7, #16]
 800501e:	23ff      	movs	r3, #255	; 0xff
 8005020:	041b      	lsls	r3, r3, #16
 8005022:	429a      	cmp	r2, r3
 8005024:	d804      	bhi.n	8005030 <VL53L0X_CheckAndLoadInterruptSettings+0x68>
 8005026:	68fa      	ldr	r2, [r7, #12]
 8005028:	23ff      	movs	r3, #255	; 0xff
 800502a:	041b      	lsls	r3, r3, #16
 800502c:	429a      	cmp	r2, r3
 800502e:	d948      	bls.n	80050c2 <VL53L0X_CheckAndLoadInterruptSettings+0xfa>
 8005030:	2217      	movs	r2, #23
 8005032:	18bb      	adds	r3, r7, r2
 8005034:	781b      	ldrb	r3, [r3, #0]
 8005036:	b25b      	sxtb	r3, r3
 8005038:	2b00      	cmp	r3, #0
 800503a:	d142      	bne.n	80050c2 <VL53L0X_CheckAndLoadInterruptSettings+0xfa>
 800503c:	1cfb      	adds	r3, r7, #3
 800503e:	781b      	ldrb	r3, [r3, #0]
 8005040:	2b00      	cmp	r3, #0
 8005042:	d009      	beq.n	8005058 <VL53L0X_CheckAndLoadInterruptSettings+0x90>
 8005044:	18bc      	adds	r4, r7, r2
 8005046:	4a23      	ldr	r2, [pc, #140]	; (80050d4 <VL53L0X_CheckAndLoadInterruptSettings+0x10c>)
 8005048:	687b      	ldr	r3, [r7, #4]
 800504a:	0011      	movs	r1, r2
 800504c:	0018      	movs	r0, r3
 800504e:	f003 f933 	bl	80082b8 <VL53L0X_load_tuning_settings>
 8005052:	0003      	movs	r3, r0
 8005054:	7023      	strb	r3, [r4, #0]
 8005056:	e034      	b.n	80050c2 <VL53L0X_CheckAndLoadInterruptSettings+0xfa>
 8005058:	687b      	ldr	r3, [r7, #4]
 800505a:	2204      	movs	r2, #4
 800505c:	21ff      	movs	r1, #255	; 0xff
 800505e:	0018      	movs	r0, r3
 8005060:	f7fe fada 	bl	8003618 <VL53L0X_WrByte>
 8005064:	0003      	movs	r3, r0
 8005066:	0019      	movs	r1, r3
 8005068:	2417      	movs	r4, #23
 800506a:	193b      	adds	r3, r7, r4
 800506c:	193a      	adds	r2, r7, r4
 800506e:	7812      	ldrb	r2, [r2, #0]
 8005070:	430a      	orrs	r2, r1
 8005072:	701a      	strb	r2, [r3, #0]
 8005074:	687b      	ldr	r3, [r7, #4]
 8005076:	2200      	movs	r2, #0
 8005078:	2170      	movs	r1, #112	; 0x70
 800507a:	0018      	movs	r0, r3
 800507c:	f7fe facc 	bl	8003618 <VL53L0X_WrByte>
 8005080:	0003      	movs	r3, r0
 8005082:	0019      	movs	r1, r3
 8005084:	193b      	adds	r3, r7, r4
 8005086:	193a      	adds	r2, r7, r4
 8005088:	7812      	ldrb	r2, [r2, #0]
 800508a:	430a      	orrs	r2, r1
 800508c:	701a      	strb	r2, [r3, #0]
 800508e:	687b      	ldr	r3, [r7, #4]
 8005090:	2200      	movs	r2, #0
 8005092:	21ff      	movs	r1, #255	; 0xff
 8005094:	0018      	movs	r0, r3
 8005096:	f7fe fabf 	bl	8003618 <VL53L0X_WrByte>
 800509a:	0003      	movs	r3, r0
 800509c:	0019      	movs	r1, r3
 800509e:	193b      	adds	r3, r7, r4
 80050a0:	193a      	adds	r2, r7, r4
 80050a2:	7812      	ldrb	r2, [r2, #0]
 80050a4:	430a      	orrs	r2, r1
 80050a6:	701a      	strb	r2, [r3, #0]
 80050a8:	687b      	ldr	r3, [r7, #4]
 80050aa:	2200      	movs	r2, #0
 80050ac:	2180      	movs	r1, #128	; 0x80
 80050ae:	0018      	movs	r0, r3
 80050b0:	f7fe fab2 	bl	8003618 <VL53L0X_WrByte>
 80050b4:	0003      	movs	r3, r0
 80050b6:	0019      	movs	r1, r3
 80050b8:	193b      	adds	r3, r7, r4
 80050ba:	193a      	adds	r2, r7, r4
 80050bc:	7812      	ldrb	r2, [r2, #0]
 80050be:	430a      	orrs	r2, r1
 80050c0:	701a      	strb	r2, [r3, #0]
 80050c2:	2317      	movs	r3, #23
 80050c4:	18fb      	adds	r3, r7, r3
 80050c6:	781b      	ldrb	r3, [r3, #0]
 80050c8:	b25b      	sxtb	r3, r3
 80050ca:	0018      	movs	r0, r3
 80050cc:	46bd      	mov	sp, r7
 80050ce:	b007      	add	sp, #28
 80050d0:	bd90      	pop	{r4, r7, pc}
 80050d2:	46c0      	nop			; (mov r8, r8)
 80050d4:	200000f8 	.word	0x200000f8

080050d8 <VL53L0X_StartMeasurement>:
 80050d8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80050da:	b087      	sub	sp, #28
 80050dc:	af00      	add	r7, sp, #0
 80050de:	6078      	str	r0, [r7, #4]
 80050e0:	2517      	movs	r5, #23
 80050e2:	197b      	adds	r3, r7, r5
 80050e4:	2200      	movs	r2, #0
 80050e6:	701a      	strb	r2, [r3, #0]
 80050e8:	230f      	movs	r3, #15
 80050ea:	18fb      	adds	r3, r7, r3
 80050ec:	2201      	movs	r2, #1
 80050ee:	701a      	strb	r2, [r3, #0]
 80050f0:	260e      	movs	r6, #14
 80050f2:	19ba      	adds	r2, r7, r6
 80050f4:	687b      	ldr	r3, [r7, #4]
 80050f6:	0011      	movs	r1, r2
 80050f8:	0018      	movs	r0, r3
 80050fa:	f7ff f9db 	bl	80044b4 <VL53L0X_GetDeviceMode>
 80050fe:	197c      	adds	r4, r7, r5
 8005100:	687b      	ldr	r3, [r7, #4]
 8005102:	2201      	movs	r2, #1
 8005104:	2180      	movs	r1, #128	; 0x80
 8005106:	0018      	movs	r0, r3
 8005108:	f7fe fa86 	bl	8003618 <VL53L0X_WrByte>
 800510c:	0003      	movs	r3, r0
 800510e:	7023      	strb	r3, [r4, #0]
 8005110:	197c      	adds	r4, r7, r5
 8005112:	687b      	ldr	r3, [r7, #4]
 8005114:	2201      	movs	r2, #1
 8005116:	21ff      	movs	r1, #255	; 0xff
 8005118:	0018      	movs	r0, r3
 800511a:	f7fe fa7d 	bl	8003618 <VL53L0X_WrByte>
 800511e:	0003      	movs	r3, r0
 8005120:	7023      	strb	r3, [r4, #0]
 8005122:	197c      	adds	r4, r7, r5
 8005124:	687b      	ldr	r3, [r7, #4]
 8005126:	2200      	movs	r2, #0
 8005128:	2100      	movs	r1, #0
 800512a:	0018      	movs	r0, r3
 800512c:	f7fe fa74 	bl	8003618 <VL53L0X_WrByte>
 8005130:	0003      	movs	r3, r0
 8005132:	7023      	strb	r3, [r4, #0]
 8005134:	687a      	ldr	r2, [r7, #4]
 8005136:	238d      	movs	r3, #141	; 0x8d
 8005138:	005b      	lsls	r3, r3, #1
 800513a:	5cd2      	ldrb	r2, [r2, r3]
 800513c:	197c      	adds	r4, r7, r5
 800513e:	687b      	ldr	r3, [r7, #4]
 8005140:	2191      	movs	r1, #145	; 0x91
 8005142:	0018      	movs	r0, r3
 8005144:	f7fe fa68 	bl	8003618 <VL53L0X_WrByte>
 8005148:	0003      	movs	r3, r0
 800514a:	7023      	strb	r3, [r4, #0]
 800514c:	197c      	adds	r4, r7, r5
 800514e:	687b      	ldr	r3, [r7, #4]
 8005150:	2201      	movs	r2, #1
 8005152:	2100      	movs	r1, #0
 8005154:	0018      	movs	r0, r3
 8005156:	f7fe fa5f 	bl	8003618 <VL53L0X_WrByte>
 800515a:	0003      	movs	r3, r0
 800515c:	7023      	strb	r3, [r4, #0]
 800515e:	197c      	adds	r4, r7, r5
 8005160:	687b      	ldr	r3, [r7, #4]
 8005162:	2200      	movs	r2, #0
 8005164:	21ff      	movs	r1, #255	; 0xff
 8005166:	0018      	movs	r0, r3
 8005168:	f7fe fa56 	bl	8003618 <VL53L0X_WrByte>
 800516c:	0003      	movs	r3, r0
 800516e:	7023      	strb	r3, [r4, #0]
 8005170:	197c      	adds	r4, r7, r5
 8005172:	687b      	ldr	r3, [r7, #4]
 8005174:	2200      	movs	r2, #0
 8005176:	2180      	movs	r1, #128	; 0x80
 8005178:	0018      	movs	r0, r3
 800517a:	f7fe fa4d 	bl	8003618 <VL53L0X_WrByte>
 800517e:	0003      	movs	r3, r0
 8005180:	7023      	strb	r3, [r4, #0]
 8005182:	19bb      	adds	r3, r7, r6
 8005184:	781b      	ldrb	r3, [r3, #0]
 8005186:	2b03      	cmp	r3, #3
 8005188:	d100      	bne.n	800518c <VL53L0X_StartMeasurement+0xb4>
 800518a:	e073      	b.n	8005274 <VL53L0X_StartMeasurement+0x19c>
 800518c:	dd00      	ble.n	8005190 <VL53L0X_StartMeasurement+0xb8>
 800518e:	e094      	b.n	80052ba <VL53L0X_StartMeasurement+0x1e2>
 8005190:	2b00      	cmp	r3, #0
 8005192:	d002      	beq.n	800519a <VL53L0X_StartMeasurement+0xc2>
 8005194:	2b01      	cmp	r3, #1
 8005196:	d04a      	beq.n	800522e <VL53L0X_StartMeasurement+0x156>
 8005198:	e08f      	b.n	80052ba <VL53L0X_StartMeasurement+0x1e2>
 800519a:	2517      	movs	r5, #23
 800519c:	197c      	adds	r4, r7, r5
 800519e:	687b      	ldr	r3, [r7, #4]
 80051a0:	2201      	movs	r2, #1
 80051a2:	2100      	movs	r1, #0
 80051a4:	0018      	movs	r0, r3
 80051a6:	f7fe fa37 	bl	8003618 <VL53L0X_WrByte>
 80051aa:	0003      	movs	r3, r0
 80051ac:	7023      	strb	r3, [r4, #0]
 80051ae:	230d      	movs	r3, #13
 80051b0:	18fb      	adds	r3, r7, r3
 80051b2:	220f      	movs	r2, #15
 80051b4:	18ba      	adds	r2, r7, r2
 80051b6:	7812      	ldrb	r2, [r2, #0]
 80051b8:	701a      	strb	r2, [r3, #0]
 80051ba:	197b      	adds	r3, r7, r5
 80051bc:	781b      	ldrb	r3, [r3, #0]
 80051be:	b25b      	sxtb	r3, r3
 80051c0:	2b00      	cmp	r3, #0
 80051c2:	d000      	beq.n	80051c6 <VL53L0X_StartMeasurement+0xee>
 80051c4:	e07e      	b.n	80052c4 <VL53L0X_StartMeasurement+0x1ec>
 80051c6:	2300      	movs	r3, #0
 80051c8:	613b      	str	r3, [r7, #16]
 80051ca:	693b      	ldr	r3, [r7, #16]
 80051cc:	2b00      	cmp	r3, #0
 80051ce:	d00a      	beq.n	80051e6 <VL53L0X_StartMeasurement+0x10e>
 80051d0:	2317      	movs	r3, #23
 80051d2:	18fc      	adds	r4, r7, r3
 80051d4:	230d      	movs	r3, #13
 80051d6:	18fa      	adds	r2, r7, r3
 80051d8:	687b      	ldr	r3, [r7, #4]
 80051da:	2100      	movs	r1, #0
 80051dc:	0018      	movs	r0, r3
 80051de:	f7fe fa89 	bl	80036f4 <VL53L0X_RdByte>
 80051e2:	0003      	movs	r3, r0
 80051e4:	7023      	strb	r3, [r4, #0]
 80051e6:	693b      	ldr	r3, [r7, #16]
 80051e8:	3301      	adds	r3, #1
 80051ea:	613b      	str	r3, [r7, #16]
 80051ec:	230d      	movs	r3, #13
 80051ee:	18fb      	adds	r3, r7, r3
 80051f0:	781b      	ldrb	r3, [r3, #0]
 80051f2:	210f      	movs	r1, #15
 80051f4:	187a      	adds	r2, r7, r1
 80051f6:	7812      	ldrb	r2, [r2, #0]
 80051f8:	4013      	ands	r3, r2
 80051fa:	b2db      	uxtb	r3, r3
 80051fc:	187a      	adds	r2, r7, r1
 80051fe:	7812      	ldrb	r2, [r2, #0]
 8005200:	429a      	cmp	r2, r3
 8005202:	d10a      	bne.n	800521a <VL53L0X_StartMeasurement+0x142>
 8005204:	2317      	movs	r3, #23
 8005206:	18fb      	adds	r3, r7, r3
 8005208:	781b      	ldrb	r3, [r3, #0]
 800520a:	b25b      	sxtb	r3, r3
 800520c:	2b00      	cmp	r3, #0
 800520e:	d104      	bne.n	800521a <VL53L0X_StartMeasurement+0x142>
 8005210:	693a      	ldr	r2, [r7, #16]
 8005212:	23fa      	movs	r3, #250	; 0xfa
 8005214:	00db      	lsls	r3, r3, #3
 8005216:	429a      	cmp	r2, r3
 8005218:	d3d7      	bcc.n	80051ca <VL53L0X_StartMeasurement+0xf2>
 800521a:	693a      	ldr	r2, [r7, #16]
 800521c:	23fa      	movs	r3, #250	; 0xfa
 800521e:	00db      	lsls	r3, r3, #3
 8005220:	429a      	cmp	r2, r3
 8005222:	d34f      	bcc.n	80052c4 <VL53L0X_StartMeasurement+0x1ec>
 8005224:	2317      	movs	r3, #23
 8005226:	18fb      	adds	r3, r7, r3
 8005228:	22f9      	movs	r2, #249	; 0xf9
 800522a:	701a      	strb	r2, [r3, #0]
 800522c:	e04a      	b.n	80052c4 <VL53L0X_StartMeasurement+0x1ec>
 800522e:	2217      	movs	r2, #23
 8005230:	18bb      	adds	r3, r7, r2
 8005232:	781b      	ldrb	r3, [r3, #0]
 8005234:	b25b      	sxtb	r3, r3
 8005236:	2b00      	cmp	r3, #0
 8005238:	d107      	bne.n	800524a <VL53L0X_StartMeasurement+0x172>
 800523a:	18bc      	adds	r4, r7, r2
 800523c:	687b      	ldr	r3, [r7, #4]
 800523e:	2101      	movs	r1, #1
 8005240:	0018      	movs	r0, r3
 8005242:	f7ff fec1 	bl	8004fc8 <VL53L0X_CheckAndLoadInterruptSettings>
 8005246:	0003      	movs	r3, r0
 8005248:	7023      	strb	r3, [r4, #0]
 800524a:	2517      	movs	r5, #23
 800524c:	197c      	adds	r4, r7, r5
 800524e:	687b      	ldr	r3, [r7, #4]
 8005250:	2202      	movs	r2, #2
 8005252:	2100      	movs	r1, #0
 8005254:	0018      	movs	r0, r3
 8005256:	f7fe f9df 	bl	8003618 <VL53L0X_WrByte>
 800525a:	0003      	movs	r3, r0
 800525c:	7023      	strb	r3, [r4, #0]
 800525e:	197b      	adds	r3, r7, r5
 8005260:	781b      	ldrb	r3, [r3, #0]
 8005262:	b25b      	sxtb	r3, r3
 8005264:	2b00      	cmp	r3, #0
 8005266:	d12f      	bne.n	80052c8 <VL53L0X_StartMeasurement+0x1f0>
 8005268:	687a      	ldr	r2, [r7, #4]
 800526a:	2389      	movs	r3, #137	; 0x89
 800526c:	005b      	lsls	r3, r3, #1
 800526e:	2104      	movs	r1, #4
 8005270:	54d1      	strb	r1, [r2, r3]
 8005272:	e029      	b.n	80052c8 <VL53L0X_StartMeasurement+0x1f0>
 8005274:	2217      	movs	r2, #23
 8005276:	18bb      	adds	r3, r7, r2
 8005278:	781b      	ldrb	r3, [r3, #0]
 800527a:	b25b      	sxtb	r3, r3
 800527c:	2b00      	cmp	r3, #0
 800527e:	d107      	bne.n	8005290 <VL53L0X_StartMeasurement+0x1b8>
 8005280:	18bc      	adds	r4, r7, r2
 8005282:	687b      	ldr	r3, [r7, #4]
 8005284:	2101      	movs	r1, #1
 8005286:	0018      	movs	r0, r3
 8005288:	f7ff fe9e 	bl	8004fc8 <VL53L0X_CheckAndLoadInterruptSettings>
 800528c:	0003      	movs	r3, r0
 800528e:	7023      	strb	r3, [r4, #0]
 8005290:	2517      	movs	r5, #23
 8005292:	197c      	adds	r4, r7, r5
 8005294:	687b      	ldr	r3, [r7, #4]
 8005296:	2204      	movs	r2, #4
 8005298:	2100      	movs	r1, #0
 800529a:	0018      	movs	r0, r3
 800529c:	f7fe f9bc 	bl	8003618 <VL53L0X_WrByte>
 80052a0:	0003      	movs	r3, r0
 80052a2:	7023      	strb	r3, [r4, #0]
 80052a4:	197b      	adds	r3, r7, r5
 80052a6:	781b      	ldrb	r3, [r3, #0]
 80052a8:	b25b      	sxtb	r3, r3
 80052aa:	2b00      	cmp	r3, #0
 80052ac:	d10e      	bne.n	80052cc <VL53L0X_StartMeasurement+0x1f4>
 80052ae:	687a      	ldr	r2, [r7, #4]
 80052b0:	2389      	movs	r3, #137	; 0x89
 80052b2:	005b      	lsls	r3, r3, #1
 80052b4:	2104      	movs	r1, #4
 80052b6:	54d1      	strb	r1, [r2, r3]
 80052b8:	e008      	b.n	80052cc <VL53L0X_StartMeasurement+0x1f4>
 80052ba:	2317      	movs	r3, #23
 80052bc:	18fb      	adds	r3, r7, r3
 80052be:	22f8      	movs	r2, #248	; 0xf8
 80052c0:	701a      	strb	r2, [r3, #0]
 80052c2:	e004      	b.n	80052ce <VL53L0X_StartMeasurement+0x1f6>
 80052c4:	46c0      	nop			; (mov r8, r8)
 80052c6:	e002      	b.n	80052ce <VL53L0X_StartMeasurement+0x1f6>
 80052c8:	46c0      	nop			; (mov r8, r8)
 80052ca:	e000      	b.n	80052ce <VL53L0X_StartMeasurement+0x1f6>
 80052cc:	46c0      	nop			; (mov r8, r8)
 80052ce:	2317      	movs	r3, #23
 80052d0:	18fb      	adds	r3, r7, r3
 80052d2:	781b      	ldrb	r3, [r3, #0]
 80052d4:	b25b      	sxtb	r3, r3
 80052d6:	0018      	movs	r0, r3
 80052d8:	46bd      	mov	sp, r7
 80052da:	b007      	add	sp, #28
 80052dc:	bdf0      	pop	{r4, r5, r6, r7, pc}

080052de <VL53L0X_StopMeasurement>:
 80052de:	b5b0      	push	{r4, r5, r7, lr}
 80052e0:	b084      	sub	sp, #16
 80052e2:	af00      	add	r7, sp, #0
 80052e4:	6078      	str	r0, [r7, #4]
 80052e6:	250f      	movs	r5, #15
 80052e8:	197b      	adds	r3, r7, r5
 80052ea:	2200      	movs	r2, #0
 80052ec:	701a      	strb	r2, [r3, #0]
 80052ee:	197c      	adds	r4, r7, r5
 80052f0:	687b      	ldr	r3, [r7, #4]
 80052f2:	2200      	movs	r2, #0
 80052f4:	2100      	movs	r1, #0
 80052f6:	0018      	movs	r0, r3
 80052f8:	f7fe f98e 	bl	8003618 <VL53L0X_WrByte>
 80052fc:	0003      	movs	r3, r0
 80052fe:	7023      	strb	r3, [r4, #0]
 8005300:	197c      	adds	r4, r7, r5
 8005302:	687b      	ldr	r3, [r7, #4]
 8005304:	2201      	movs	r2, #1
 8005306:	21ff      	movs	r1, #255	; 0xff
 8005308:	0018      	movs	r0, r3
 800530a:	f7fe f985 	bl	8003618 <VL53L0X_WrByte>
 800530e:	0003      	movs	r3, r0
 8005310:	7023      	strb	r3, [r4, #0]
 8005312:	197c      	adds	r4, r7, r5
 8005314:	687b      	ldr	r3, [r7, #4]
 8005316:	2200      	movs	r2, #0
 8005318:	2100      	movs	r1, #0
 800531a:	0018      	movs	r0, r3
 800531c:	f7fe f97c 	bl	8003618 <VL53L0X_WrByte>
 8005320:	0003      	movs	r3, r0
 8005322:	7023      	strb	r3, [r4, #0]
 8005324:	197c      	adds	r4, r7, r5
 8005326:	687b      	ldr	r3, [r7, #4]
 8005328:	2200      	movs	r2, #0
 800532a:	2191      	movs	r1, #145	; 0x91
 800532c:	0018      	movs	r0, r3
 800532e:	f7fe f973 	bl	8003618 <VL53L0X_WrByte>
 8005332:	0003      	movs	r3, r0
 8005334:	7023      	strb	r3, [r4, #0]
 8005336:	197c      	adds	r4, r7, r5
 8005338:	687b      	ldr	r3, [r7, #4]
 800533a:	2201      	movs	r2, #1
 800533c:	2100      	movs	r1, #0
 800533e:	0018      	movs	r0, r3
 8005340:	f7fe f96a 	bl	8003618 <VL53L0X_WrByte>
 8005344:	0003      	movs	r3, r0
 8005346:	7023      	strb	r3, [r4, #0]
 8005348:	197c      	adds	r4, r7, r5
 800534a:	687b      	ldr	r3, [r7, #4]
 800534c:	2200      	movs	r2, #0
 800534e:	21ff      	movs	r1, #255	; 0xff
 8005350:	0018      	movs	r0, r3
 8005352:	f7fe f961 	bl	8003618 <VL53L0X_WrByte>
 8005356:	0003      	movs	r3, r0
 8005358:	7023      	strb	r3, [r4, #0]
 800535a:	197b      	adds	r3, r7, r5
 800535c:	781b      	ldrb	r3, [r3, #0]
 800535e:	b25b      	sxtb	r3, r3
 8005360:	2b00      	cmp	r3, #0
 8005362:	d104      	bne.n	800536e <VL53L0X_StopMeasurement+0x90>
 8005364:	687a      	ldr	r2, [r7, #4]
 8005366:	2389      	movs	r3, #137	; 0x89
 8005368:	005b      	lsls	r3, r3, #1
 800536a:	2103      	movs	r1, #3
 800536c:	54d1      	strb	r1, [r2, r3]
 800536e:	220f      	movs	r2, #15
 8005370:	18bb      	adds	r3, r7, r2
 8005372:	781b      	ldrb	r3, [r3, #0]
 8005374:	b25b      	sxtb	r3, r3
 8005376:	2b00      	cmp	r3, #0
 8005378:	d107      	bne.n	800538a <VL53L0X_StopMeasurement+0xac>
 800537a:	18bc      	adds	r4, r7, r2
 800537c:	687b      	ldr	r3, [r7, #4]
 800537e:	2100      	movs	r1, #0
 8005380:	0018      	movs	r0, r3
 8005382:	f7ff fe21 	bl	8004fc8 <VL53L0X_CheckAndLoadInterruptSettings>
 8005386:	0003      	movs	r3, r0
 8005388:	7023      	strb	r3, [r4, #0]
 800538a:	230f      	movs	r3, #15
 800538c:	18fb      	adds	r3, r7, r3
 800538e:	781b      	ldrb	r3, [r3, #0]
 8005390:	b25b      	sxtb	r3, r3
 8005392:	0018      	movs	r0, r3
 8005394:	46bd      	mov	sp, r7
 8005396:	b004      	add	sp, #16
 8005398:	bdb0      	pop	{r4, r5, r7, pc}

0800539a <VL53L0X_GetMeasurementDataReady>:
 800539a:	b5f0      	push	{r4, r5, r6, r7, lr}
 800539c:	b085      	sub	sp, #20
 800539e:	af00      	add	r7, sp, #0
 80053a0:	6078      	str	r0, [r7, #4]
 80053a2:	6039      	str	r1, [r7, #0]
 80053a4:	200f      	movs	r0, #15
 80053a6:	183b      	adds	r3, r7, r0
 80053a8:	2200      	movs	r2, #0
 80053aa:	701a      	strb	r2, [r3, #0]
 80053ac:	240e      	movs	r4, #14
 80053ae:	193b      	adds	r3, r7, r4
 80053b0:	687a      	ldr	r2, [r7, #4]
 80053b2:	21da      	movs	r1, #218	; 0xda
 80053b4:	5c52      	ldrb	r2, [r2, r1]
 80053b6:	701a      	strb	r2, [r3, #0]
 80053b8:	193b      	adds	r3, r7, r4
 80053ba:	781b      	ldrb	r3, [r3, #0]
 80053bc:	2b04      	cmp	r3, #4
 80053be:	d114      	bne.n	80053ea <VL53L0X_GetMeasurementDataReady+0x50>
 80053c0:	183c      	adds	r4, r7, r0
 80053c2:	2308      	movs	r3, #8
 80053c4:	18fa      	adds	r2, r7, r3
 80053c6:	687b      	ldr	r3, [r7, #4]
 80053c8:	0011      	movs	r1, r2
 80053ca:	0018      	movs	r0, r3
 80053cc:	f000 fbe8 	bl	8005ba0 <VL53L0X_GetInterruptMaskStatus>
 80053d0:	0003      	movs	r3, r0
 80053d2:	7023      	strb	r3, [r4, #0]
 80053d4:	68bb      	ldr	r3, [r7, #8]
 80053d6:	2b04      	cmp	r3, #4
 80053d8:	d103      	bne.n	80053e2 <VL53L0X_GetMeasurementDataReady+0x48>
 80053da:	683b      	ldr	r3, [r7, #0]
 80053dc:	2201      	movs	r2, #1
 80053de:	701a      	strb	r2, [r3, #0]
 80053e0:	e020      	b.n	8005424 <VL53L0X_GetMeasurementDataReady+0x8a>
 80053e2:	683b      	ldr	r3, [r7, #0]
 80053e4:	2200      	movs	r2, #0
 80053e6:	701a      	strb	r2, [r3, #0]
 80053e8:	e01c      	b.n	8005424 <VL53L0X_GetMeasurementDataReady+0x8a>
 80053ea:	250f      	movs	r5, #15
 80053ec:	197c      	adds	r4, r7, r5
 80053ee:	260d      	movs	r6, #13
 80053f0:	19ba      	adds	r2, r7, r6
 80053f2:	687b      	ldr	r3, [r7, #4]
 80053f4:	2114      	movs	r1, #20
 80053f6:	0018      	movs	r0, r3
 80053f8:	f7fe f97c 	bl	80036f4 <VL53L0X_RdByte>
 80053fc:	0003      	movs	r3, r0
 80053fe:	7023      	strb	r3, [r4, #0]
 8005400:	197b      	adds	r3, r7, r5
 8005402:	781b      	ldrb	r3, [r3, #0]
 8005404:	b25b      	sxtb	r3, r3
 8005406:	2b00      	cmp	r3, #0
 8005408:	d10c      	bne.n	8005424 <VL53L0X_GetMeasurementDataReady+0x8a>
 800540a:	19bb      	adds	r3, r7, r6
 800540c:	781b      	ldrb	r3, [r3, #0]
 800540e:	001a      	movs	r2, r3
 8005410:	2301      	movs	r3, #1
 8005412:	4013      	ands	r3, r2
 8005414:	d003      	beq.n	800541e <VL53L0X_GetMeasurementDataReady+0x84>
 8005416:	683b      	ldr	r3, [r7, #0]
 8005418:	2201      	movs	r2, #1
 800541a:	701a      	strb	r2, [r3, #0]
 800541c:	e002      	b.n	8005424 <VL53L0X_GetMeasurementDataReady+0x8a>
 800541e:	683b      	ldr	r3, [r7, #0]
 8005420:	2200      	movs	r2, #0
 8005422:	701a      	strb	r2, [r3, #0]
 8005424:	230f      	movs	r3, #15
 8005426:	18fb      	adds	r3, r7, r3
 8005428:	781b      	ldrb	r3, [r3, #0]
 800542a:	b25b      	sxtb	r3, r3
 800542c:	0018      	movs	r0, r3
 800542e:	46bd      	mov	sp, r7
 8005430:	b005      	add	sp, #20
 8005432:	bdf0      	pop	{r4, r5, r6, r7, pc}

08005434 <VL53L0X_GetRangingMeasurementData>:
 8005434:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005436:	b097      	sub	sp, #92	; 0x5c
 8005438:	af02      	add	r7, sp, #8
 800543a:	6078      	str	r0, [r7, #4]
 800543c:	6039      	str	r1, [r7, #0]
 800543e:	264f      	movs	r6, #79	; 0x4f
 8005440:	19bb      	adds	r3, r7, r6
 8005442:	2200      	movs	r2, #0
 8005444:	701a      	strb	r2, [r3, #0]
 8005446:	19bc      	adds	r4, r7, r6
 8005448:	2528      	movs	r5, #40	; 0x28
 800544a:	197a      	adds	r2, r7, r5
 800544c:	6878      	ldr	r0, [r7, #4]
 800544e:	230c      	movs	r3, #12
 8005450:	2114      	movs	r1, #20
 8005452:	f7fe f86f 	bl	8003534 <VL53L0X_ReadMulti>
 8005456:	0003      	movs	r3, r0
 8005458:	7023      	strb	r3, [r4, #0]
 800545a:	19bb      	adds	r3, r7, r6
 800545c:	781b      	ldrb	r3, [r3, #0]
 800545e:	b25b      	sxtb	r3, r3
 8005460:	2b00      	cmp	r3, #0
 8005462:	d000      	beq.n	8005466 <VL53L0X_GetRangingMeasurementData+0x32>
 8005464:	e0f0      	b.n	8005648 <VL53L0X_GetRangingMeasurementData+0x214>
 8005466:	683b      	ldr	r3, [r7, #0]
 8005468:	2200      	movs	r2, #0
 800546a:	759a      	strb	r2, [r3, #22]
 800546c:	683b      	ldr	r3, [r7, #0]
 800546e:	2200      	movs	r2, #0
 8005470:	601a      	str	r2, [r3, #0]
 8005472:	0028      	movs	r0, r5
 8005474:	183b      	adds	r3, r7, r0
 8005476:	7a9b      	ldrb	r3, [r3, #10]
 8005478:	b29b      	uxth	r3, r3
 800547a:	021b      	lsls	r3, r3, #8
 800547c:	b299      	uxth	r1, r3
 800547e:	183b      	adds	r3, r7, r0
 8005480:	7adb      	ldrb	r3, [r3, #11]
 8005482:	b29a      	uxth	r2, r3
 8005484:	244c      	movs	r4, #76	; 0x4c
 8005486:	193b      	adds	r3, r7, r4
 8005488:	188a      	adds	r2, r1, r2
 800548a:	801a      	strh	r2, [r3, #0]
 800548c:	683b      	ldr	r3, [r7, #0]
 800548e:	2200      	movs	r2, #0
 8005490:	605a      	str	r2, [r3, #4]
 8005492:	183b      	adds	r3, r7, r0
 8005494:	799b      	ldrb	r3, [r3, #6]
 8005496:	b29b      	uxth	r3, r3
 8005498:	021b      	lsls	r3, r3, #8
 800549a:	b29a      	uxth	r2, r3
 800549c:	183b      	adds	r3, r7, r0
 800549e:	79db      	ldrb	r3, [r3, #7]
 80054a0:	b29b      	uxth	r3, r3
 80054a2:	18d3      	adds	r3, r2, r3
 80054a4:	b29b      	uxth	r3, r3
 80054a6:	025b      	lsls	r3, r3, #9
 80054a8:	647b      	str	r3, [r7, #68]	; 0x44
 80054aa:	683b      	ldr	r3, [r7, #0]
 80054ac:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 80054ae:	60da      	str	r2, [r3, #12]
 80054b0:	183b      	adds	r3, r7, r0
 80054b2:	7a1b      	ldrb	r3, [r3, #8]
 80054b4:	b29b      	uxth	r3, r3
 80054b6:	021b      	lsls	r3, r3, #8
 80054b8:	b299      	uxth	r1, r3
 80054ba:	183b      	adds	r3, r7, r0
 80054bc:	7a5b      	ldrb	r3, [r3, #9]
 80054be:	b29a      	uxth	r2, r3
 80054c0:	2542      	movs	r5, #66	; 0x42
 80054c2:	197b      	adds	r3, r7, r5
 80054c4:	188a      	adds	r2, r1, r2
 80054c6:	801a      	strh	r2, [r3, #0]
 80054c8:	197b      	adds	r3, r7, r5
 80054ca:	881b      	ldrh	r3, [r3, #0]
 80054cc:	025b      	lsls	r3, r3, #9
 80054ce:	001a      	movs	r2, r3
 80054d0:	683b      	ldr	r3, [r7, #0]
 80054d2:	611a      	str	r2, [r3, #16]
 80054d4:	183b      	adds	r3, r7, r0
 80054d6:	789b      	ldrb	r3, [r3, #2]
 80054d8:	b29b      	uxth	r3, r3
 80054da:	021b      	lsls	r3, r3, #8
 80054dc:	b299      	uxth	r1, r3
 80054de:	183b      	adds	r3, r7, r0
 80054e0:	78db      	ldrb	r3, [r3, #3]
 80054e2:	b29a      	uxth	r2, r3
 80054e4:	2540      	movs	r5, #64	; 0x40
 80054e6:	197b      	adds	r3, r7, r5
 80054e8:	188a      	adds	r2, r1, r2
 80054ea:	801a      	strh	r2, [r3, #0]
 80054ec:	683b      	ldr	r3, [r7, #0]
 80054ee:	197a      	adds	r2, r7, r5
 80054f0:	8812      	ldrh	r2, [r2, #0]
 80054f2:	829a      	strh	r2, [r3, #20]
 80054f4:	233f      	movs	r3, #63	; 0x3f
 80054f6:	18fb      	adds	r3, r7, r3
 80054f8:	183a      	adds	r2, r7, r0
 80054fa:	7812      	ldrb	r2, [r2, #0]
 80054fc:	701a      	strb	r2, [r3, #0]
 80054fe:	203c      	movs	r0, #60	; 0x3c
 8005500:	183b      	adds	r3, r7, r0
 8005502:	6879      	ldr	r1, [r7, #4]
 8005504:	2299      	movs	r2, #153	; 0x99
 8005506:	0052      	lsls	r2, r2, #1
 8005508:	5a8a      	ldrh	r2, [r1, r2]
 800550a:	801a      	strh	r2, [r3, #0]
 800550c:	263b      	movs	r6, #59	; 0x3b
 800550e:	19bb      	adds	r3, r7, r6
 8005510:	6879      	ldr	r1, [r7, #4]
 8005512:	2212      	movs	r2, #18
 8005514:	32ff      	adds	r2, #255	; 0xff
 8005516:	5c8a      	ldrb	r2, [r1, r2]
 8005518:	701a      	strb	r2, [r3, #0]
 800551a:	183b      	adds	r3, r7, r0
 800551c:	881a      	ldrh	r2, [r3, #0]
 800551e:	23fa      	movs	r3, #250	; 0xfa
 8005520:	009b      	lsls	r3, r3, #2
 8005522:	429a      	cmp	r2, r3
 8005524:	d053      	beq.n	80055ce <VL53L0X_GetRangingMeasurementData+0x19a>
 8005526:	183b      	adds	r3, r7, r0
 8005528:	881b      	ldrh	r3, [r3, #0]
 800552a:	193a      	adds	r2, r7, r4
 800552c:	8812      	ldrh	r2, [r2, #0]
 800552e:	4353      	muls	r3, r2
 8005530:	33f5      	adds	r3, #245	; 0xf5
 8005532:	33ff      	adds	r3, #255	; 0xff
 8005534:	22fa      	movs	r2, #250	; 0xfa
 8005536:	0091      	lsls	r1, r2, #2
 8005538:	0018      	movs	r0, r3
 800553a:	f7fa fe6f 	bl	800021c <__divsi3>
 800553e:	0003      	movs	r3, r0
 8005540:	001a      	movs	r2, r3
 8005542:	193b      	adds	r3, r7, r4
 8005544:	801a      	strh	r2, [r3, #0]
 8005546:	687b      	ldr	r3, [r7, #4]
 8005548:	6a1a      	ldr	r2, [r3, #32]
 800554a:	2138      	movs	r1, #56	; 0x38
 800554c:	187b      	adds	r3, r7, r1
 800554e:	801a      	strh	r2, [r3, #0]
 8005550:	2037      	movs	r0, #55	; 0x37
 8005552:	183b      	adds	r3, r7, r0
 8005554:	687a      	ldr	r2, [r7, #4]
 8005556:	7f12      	ldrb	r2, [r2, #28]
 8005558:	701a      	strb	r2, [r3, #0]
 800555a:	183b      	adds	r3, r7, r0
 800555c:	781b      	ldrb	r3, [r3, #0]
 800555e:	2b00      	cmp	r3, #0
 8005560:	d035      	beq.n	80055ce <VL53L0X_GetRangingMeasurementData+0x19a>
 8005562:	187b      	adds	r3, r7, r1
 8005564:	881b      	ldrh	r3, [r3, #0]
 8005566:	197a      	adds	r2, r7, r5
 8005568:	8812      	ldrh	r2, [r2, #0]
 800556a:	4353      	muls	r3, r2
 800556c:	121a      	asrs	r2, r3, #8
 800556e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8005570:	429a      	cmp	r2, r3
 8005572:	d10d      	bne.n	8005590 <VL53L0X_GetRangingMeasurementData+0x15c>
 8005574:	19bb      	adds	r3, r7, r6
 8005576:	781b      	ldrb	r3, [r3, #0]
 8005578:	2b00      	cmp	r3, #0
 800557a:	d004      	beq.n	8005586 <VL53L0X_GetRangingMeasurementData+0x152>
 800557c:	234a      	movs	r3, #74	; 0x4a
 800557e:	18fb      	adds	r3, r7, r3
 8005580:	4a52      	ldr	r2, [pc, #328]	; (80056cc <VL53L0X_GetRangingMeasurementData+0x298>)
 8005582:	801a      	strh	r2, [r3, #0]
 8005584:	e01d      	b.n	80055c2 <VL53L0X_GetRangingMeasurementData+0x18e>
 8005586:	234a      	movs	r3, #74	; 0x4a
 8005588:	18fb      	adds	r3, r7, r3
 800558a:	4a51      	ldr	r2, [pc, #324]	; (80056d0 <VL53L0X_GetRangingMeasurementData+0x29c>)
 800558c:	801a      	strh	r2, [r3, #0]
 800558e:	e018      	b.n	80055c2 <VL53L0X_GetRangingMeasurementData+0x18e>
 8005590:	234c      	movs	r3, #76	; 0x4c
 8005592:	18fb      	adds	r3, r7, r3
 8005594:	881b      	ldrh	r3, [r3, #0]
 8005596:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 8005598:	435a      	muls	r2, r3
 800559a:	0010      	movs	r0, r2
 800559c:	2338      	movs	r3, #56	; 0x38
 800559e:	18fb      	adds	r3, r7, r3
 80055a0:	881b      	ldrh	r3, [r3, #0]
 80055a2:	2240      	movs	r2, #64	; 0x40
 80055a4:	18ba      	adds	r2, r7, r2
 80055a6:	8812      	ldrh	r2, [r2, #0]
 80055a8:	4353      	muls	r3, r2
 80055aa:	121b      	asrs	r3, r3, #8
 80055ac:	001a      	movs	r2, r3
 80055ae:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80055b0:	1a9b      	subs	r3, r3, r2
 80055b2:	0019      	movs	r1, r3
 80055b4:	f7fa fda8 	bl	8000108 <__udivsi3>
 80055b8:	0003      	movs	r3, r0
 80055ba:	001a      	movs	r2, r3
 80055bc:	234a      	movs	r3, #74	; 0x4a
 80055be:	18fb      	adds	r3, r7, r3
 80055c0:	801a      	strh	r2, [r3, #0]
 80055c2:	234c      	movs	r3, #76	; 0x4c
 80055c4:	18fb      	adds	r3, r7, r3
 80055c6:	224a      	movs	r2, #74	; 0x4a
 80055c8:	18ba      	adds	r2, r7, r2
 80055ca:	8812      	ldrh	r2, [r2, #0]
 80055cc:	801a      	strh	r2, [r3, #0]
 80055ce:	233b      	movs	r3, #59	; 0x3b
 80055d0:	18fb      	adds	r3, r7, r3
 80055d2:	781b      	ldrb	r3, [r3, #0]
 80055d4:	2b00      	cmp	r3, #0
 80055d6:	d00e      	beq.n	80055f6 <VL53L0X_GetRangingMeasurementData+0x1c2>
 80055d8:	214c      	movs	r1, #76	; 0x4c
 80055da:	187b      	adds	r3, r7, r1
 80055dc:	881b      	ldrh	r3, [r3, #0]
 80055de:	089b      	lsrs	r3, r3, #2
 80055e0:	b29a      	uxth	r2, r3
 80055e2:	683b      	ldr	r3, [r7, #0]
 80055e4:	811a      	strh	r2, [r3, #8]
 80055e6:	187b      	adds	r3, r7, r1
 80055e8:	881b      	ldrh	r3, [r3, #0]
 80055ea:	b2db      	uxtb	r3, r3
 80055ec:	019b      	lsls	r3, r3, #6
 80055ee:	b2da      	uxtb	r2, r3
 80055f0:	683b      	ldr	r3, [r7, #0]
 80055f2:	75da      	strb	r2, [r3, #23]
 80055f4:	e007      	b.n	8005606 <VL53L0X_GetRangingMeasurementData+0x1d2>
 80055f6:	683b      	ldr	r3, [r7, #0]
 80055f8:	224c      	movs	r2, #76	; 0x4c
 80055fa:	18ba      	adds	r2, r7, r2
 80055fc:	8812      	ldrh	r2, [r2, #0]
 80055fe:	811a      	strh	r2, [r3, #8]
 8005600:	683b      	ldr	r3, [r7, #0]
 8005602:	2200      	movs	r2, #0
 8005604:	75da      	strb	r2, [r3, #23]
 8005606:	2340      	movs	r3, #64	; 0x40
 8005608:	18fb      	adds	r3, r7, r3
 800560a:	881c      	ldrh	r4, [r3, #0]
 800560c:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 800560e:	233f      	movs	r3, #63	; 0x3f
 8005610:	18fb      	adds	r3, r7, r3
 8005612:	7819      	ldrb	r1, [r3, #0]
 8005614:	6878      	ldr	r0, [r7, #4]
 8005616:	2536      	movs	r5, #54	; 0x36
 8005618:	197b      	adds	r3, r7, r5
 800561a:	9301      	str	r3, [sp, #4]
 800561c:	683b      	ldr	r3, [r7, #0]
 800561e:	9300      	str	r3, [sp, #0]
 8005620:	0023      	movs	r3, r4
 8005622:	f003 fbab 	bl	8008d7c <VL53L0X_get_pal_range_status>
 8005626:	0003      	movs	r3, r0
 8005628:	0019      	movs	r1, r3
 800562a:	204f      	movs	r0, #79	; 0x4f
 800562c:	183b      	adds	r3, r7, r0
 800562e:	183a      	adds	r2, r7, r0
 8005630:	7812      	ldrb	r2, [r2, #0]
 8005632:	430a      	orrs	r2, r1
 8005634:	701a      	strb	r2, [r3, #0]
 8005636:	183b      	adds	r3, r7, r0
 8005638:	781b      	ldrb	r3, [r3, #0]
 800563a:	b25b      	sxtb	r3, r3
 800563c:	2b00      	cmp	r3, #0
 800563e:	d103      	bne.n	8005648 <VL53L0X_GetRangingMeasurementData+0x214>
 8005640:	197b      	adds	r3, r7, r5
 8005642:	781a      	ldrb	r2, [r3, #0]
 8005644:	683b      	ldr	r3, [r7, #0]
 8005646:	761a      	strb	r2, [r3, #24]
 8005648:	234f      	movs	r3, #79	; 0x4f
 800564a:	18fb      	adds	r3, r7, r3
 800564c:	781b      	ldrb	r3, [r3, #0]
 800564e:	b25b      	sxtb	r3, r3
 8005650:	2b00      	cmp	r3, #0
 8005652:	d132      	bne.n	80056ba <VL53L0X_GetRangingMeasurementData+0x286>
 8005654:	210c      	movs	r1, #12
 8005656:	187a      	adds	r2, r7, r1
 8005658:	687b      	ldr	r3, [r7, #4]
 800565a:	3350      	adds	r3, #80	; 0x50
 800565c:	cb31      	ldmia	r3!, {r0, r4, r5}
 800565e:	c231      	stmia	r2!, {r0, r4, r5}
 8005660:	cb31      	ldmia	r3!, {r0, r4, r5}
 8005662:	c231      	stmia	r2!, {r0, r4, r5}
 8005664:	681b      	ldr	r3, [r3, #0]
 8005666:	6013      	str	r3, [r2, #0]
 8005668:	683b      	ldr	r3, [r7, #0]
 800566a:	891a      	ldrh	r2, [r3, #8]
 800566c:	187b      	adds	r3, r7, r1
 800566e:	811a      	strh	r2, [r3, #8]
 8005670:	683b      	ldr	r3, [r7, #0]
 8005672:	7dda      	ldrb	r2, [r3, #23]
 8005674:	187b      	adds	r3, r7, r1
 8005676:	75da      	strb	r2, [r3, #23]
 8005678:	683b      	ldr	r3, [r7, #0]
 800567a:	895a      	ldrh	r2, [r3, #10]
 800567c:	187b      	adds	r3, r7, r1
 800567e:	815a      	strh	r2, [r3, #10]
 8005680:	683b      	ldr	r3, [r7, #0]
 8005682:	685a      	ldr	r2, [r3, #4]
 8005684:	187b      	adds	r3, r7, r1
 8005686:	605a      	str	r2, [r3, #4]
 8005688:	683b      	ldr	r3, [r7, #0]
 800568a:	68da      	ldr	r2, [r3, #12]
 800568c:	187b      	adds	r3, r7, r1
 800568e:	60da      	str	r2, [r3, #12]
 8005690:	683b      	ldr	r3, [r7, #0]
 8005692:	691a      	ldr	r2, [r3, #16]
 8005694:	187b      	adds	r3, r7, r1
 8005696:	611a      	str	r2, [r3, #16]
 8005698:	683b      	ldr	r3, [r7, #0]
 800569a:	8a9a      	ldrh	r2, [r3, #20]
 800569c:	187b      	adds	r3, r7, r1
 800569e:	829a      	strh	r2, [r3, #20]
 80056a0:	683b      	ldr	r3, [r7, #0]
 80056a2:	7e1a      	ldrb	r2, [r3, #24]
 80056a4:	187b      	adds	r3, r7, r1
 80056a6:	761a      	strb	r2, [r3, #24]
 80056a8:	687b      	ldr	r3, [r7, #4]
 80056aa:	187a      	adds	r2, r7, r1
 80056ac:	3350      	adds	r3, #80	; 0x50
 80056ae:	ca13      	ldmia	r2!, {r0, r1, r4}
 80056b0:	c313      	stmia	r3!, {r0, r1, r4}
 80056b2:	ca13      	ldmia	r2!, {r0, r1, r4}
 80056b4:	c313      	stmia	r3!, {r0, r1, r4}
 80056b6:	6812      	ldr	r2, [r2, #0]
 80056b8:	601a      	str	r2, [r3, #0]
 80056ba:	234f      	movs	r3, #79	; 0x4f
 80056bc:	18fb      	adds	r3, r7, r3
 80056be:	781b      	ldrb	r3, [r3, #0]
 80056c0:	b25b      	sxtb	r3, r3
 80056c2:	0018      	movs	r0, r3
 80056c4:	46bd      	mov	sp, r7
 80056c6:	b015      	add	sp, #84	; 0x54
 80056c8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80056ca:	46c0      	nop			; (mov r8, r8)
 80056cc:	000022b8 	.word	0x000022b8
 80056d0:	ffff8ae0 	.word	0xffff8ae0

080056d4 <VL53L0X_PerformSingleRangingMeasurement>:
 80056d4:	b5b0      	push	{r4, r5, r7, lr}
 80056d6:	b084      	sub	sp, #16
 80056d8:	af00      	add	r7, sp, #0
 80056da:	6078      	str	r0, [r7, #4]
 80056dc:	6039      	str	r1, [r7, #0]
 80056de:	250f      	movs	r5, #15
 80056e0:	197b      	adds	r3, r7, r5
 80056e2:	2200      	movs	r2, #0
 80056e4:	701a      	strb	r2, [r3, #0]
 80056e6:	197c      	adds	r4, r7, r5
 80056e8:	687b      	ldr	r3, [r7, #4]
 80056ea:	2100      	movs	r1, #0
 80056ec:	0018      	movs	r0, r3
 80056ee:	f7fe feaf 	bl	8004450 <VL53L0X_SetDeviceMode>
 80056f2:	0003      	movs	r3, r0
 80056f4:	7023      	strb	r3, [r4, #0]
 80056f6:	197b      	adds	r3, r7, r5
 80056f8:	781b      	ldrb	r3, [r3, #0]
 80056fa:	b25b      	sxtb	r3, r3
 80056fc:	2b00      	cmp	r3, #0
 80056fe:	d106      	bne.n	800570e <VL53L0X_PerformSingleRangingMeasurement+0x3a>
 8005700:	197c      	adds	r4, r7, r5
 8005702:	687b      	ldr	r3, [r7, #4]
 8005704:	0018      	movs	r0, r3
 8005706:	f7ff fbfc 	bl	8004f02 <VL53L0X_PerformSingleMeasurement>
 800570a:	0003      	movs	r3, r0
 800570c:	7023      	strb	r3, [r4, #0]
 800570e:	220f      	movs	r2, #15
 8005710:	18bb      	adds	r3, r7, r2
 8005712:	781b      	ldrb	r3, [r3, #0]
 8005714:	b25b      	sxtb	r3, r3
 8005716:	2b00      	cmp	r3, #0
 8005718:	d108      	bne.n	800572c <VL53L0X_PerformSingleRangingMeasurement+0x58>
 800571a:	18bc      	adds	r4, r7, r2
 800571c:	683a      	ldr	r2, [r7, #0]
 800571e:	687b      	ldr	r3, [r7, #4]
 8005720:	0011      	movs	r1, r2
 8005722:	0018      	movs	r0, r3
 8005724:	f7ff fe86 	bl	8005434 <VL53L0X_GetRangingMeasurementData>
 8005728:	0003      	movs	r3, r0
 800572a:	7023      	strb	r3, [r4, #0]
 800572c:	220f      	movs	r2, #15
 800572e:	18bb      	adds	r3, r7, r2
 8005730:	781b      	ldrb	r3, [r3, #0]
 8005732:	b25b      	sxtb	r3, r3
 8005734:	2b00      	cmp	r3, #0
 8005736:	d107      	bne.n	8005748 <VL53L0X_PerformSingleRangingMeasurement+0x74>
 8005738:	18bc      	adds	r4, r7, r2
 800573a:	687b      	ldr	r3, [r7, #4]
 800573c:	2100      	movs	r1, #0
 800573e:	0018      	movs	r0, r3
 8005740:	f000 f9d4 	bl	8005aec <VL53L0X_ClearInterruptMask>
 8005744:	0003      	movs	r3, r0
 8005746:	7023      	strb	r3, [r4, #0]
 8005748:	230f      	movs	r3, #15
 800574a:	18fb      	adds	r3, r7, r3
 800574c:	781b      	ldrb	r3, [r3, #0]
 800574e:	b25b      	sxtb	r3, r3
 8005750:	0018      	movs	r0, r3
 8005752:	46bd      	mov	sp, r7
 8005754:	b004      	add	sp, #16
 8005756:	bdb0      	pop	{r4, r5, r7, pc}

08005758 <VL53L0X_SetGpioConfig>:
 8005758:	b590      	push	{r4, r7, lr}
 800575a:	b085      	sub	sp, #20
 800575c:	af00      	add	r7, sp, #0
 800575e:	6078      	str	r0, [r7, #4]
 8005760:	000c      	movs	r4, r1
 8005762:	0010      	movs	r0, r2
 8005764:	0019      	movs	r1, r3
 8005766:	1cfb      	adds	r3, r7, #3
 8005768:	1c22      	adds	r2, r4, #0
 800576a:	701a      	strb	r2, [r3, #0]
 800576c:	1cbb      	adds	r3, r7, #2
 800576e:	1c02      	adds	r2, r0, #0
 8005770:	701a      	strb	r2, [r3, #0]
 8005772:	1c7b      	adds	r3, r7, #1
 8005774:	1c0a      	adds	r2, r1, #0
 8005776:	701a      	strb	r2, [r3, #0]
 8005778:	210f      	movs	r1, #15
 800577a:	187b      	adds	r3, r7, r1
 800577c:	2200      	movs	r2, #0
 800577e:	701a      	strb	r2, [r3, #0]
 8005780:	1cfb      	adds	r3, r7, #3
 8005782:	781b      	ldrb	r3, [r3, #0]
 8005784:	2b00      	cmp	r3, #0
 8005786:	d003      	beq.n	8005790 <VL53L0X_SetGpioConfig+0x38>
 8005788:	187b      	adds	r3, r7, r1
 800578a:	22f6      	movs	r2, #246	; 0xf6
 800578c:	701a      	strb	r2, [r3, #0]
 800578e:	e160      	b.n	8005a52 <VL53L0X_SetGpioConfig+0x2fa>
 8005790:	1cbb      	adds	r3, r7, #2
 8005792:	781b      	ldrb	r3, [r3, #0]
 8005794:	2b14      	cmp	r3, #20
 8005796:	d11a      	bne.n	80057ce <VL53L0X_SetGpioConfig+0x76>
 8005798:	2320      	movs	r3, #32
 800579a:	18fb      	adds	r3, r7, r3
 800579c:	781b      	ldrb	r3, [r3, #0]
 800579e:	2b00      	cmp	r3, #0
 80057a0:	d104      	bne.n	80057ac <VL53L0X_SetGpioConfig+0x54>
 80057a2:	230e      	movs	r3, #14
 80057a4:	18fb      	adds	r3, r7, r3
 80057a6:	2210      	movs	r2, #16
 80057a8:	701a      	strb	r2, [r3, #0]
 80057aa:	e003      	b.n	80057b4 <VL53L0X_SetGpioConfig+0x5c>
 80057ac:	230e      	movs	r3, #14
 80057ae:	18fb      	adds	r3, r7, r3
 80057b0:	2201      	movs	r2, #1
 80057b2:	701a      	strb	r2, [r3, #0]
 80057b4:	230f      	movs	r3, #15
 80057b6:	18fc      	adds	r4, r7, r3
 80057b8:	230e      	movs	r3, #14
 80057ba:	18fb      	adds	r3, r7, r3
 80057bc:	781a      	ldrb	r2, [r3, #0]
 80057be:	687b      	ldr	r3, [r7, #4]
 80057c0:	2184      	movs	r1, #132	; 0x84
 80057c2:	0018      	movs	r0, r3
 80057c4:	f7fd ff28 	bl	8003618 <VL53L0X_WrByte>
 80057c8:	0003      	movs	r3, r0
 80057ca:	7023      	strb	r3, [r4, #0]
 80057cc:	e141      	b.n	8005a52 <VL53L0X_SetGpioConfig+0x2fa>
 80057ce:	1cbb      	adds	r3, r7, #2
 80057d0:	781b      	ldrb	r3, [r3, #0]
 80057d2:	2b15      	cmp	r3, #21
 80057d4:	d000      	beq.n	80057d8 <VL53L0X_SetGpioConfig+0x80>
 80057d6:	e0c4      	b.n	8005962 <VL53L0X_SetGpioConfig+0x20a>
 80057d8:	687b      	ldr	r3, [r7, #4]
 80057da:	2201      	movs	r2, #1
 80057dc:	21ff      	movs	r1, #255	; 0xff
 80057de:	0018      	movs	r0, r3
 80057e0:	f7fd ff1a 	bl	8003618 <VL53L0X_WrByte>
 80057e4:	0003      	movs	r3, r0
 80057e6:	0019      	movs	r1, r3
 80057e8:	240f      	movs	r4, #15
 80057ea:	193b      	adds	r3, r7, r4
 80057ec:	193a      	adds	r2, r7, r4
 80057ee:	7812      	ldrb	r2, [r2, #0]
 80057f0:	430a      	orrs	r2, r1
 80057f2:	701a      	strb	r2, [r3, #0]
 80057f4:	687b      	ldr	r3, [r7, #4]
 80057f6:	2200      	movs	r2, #0
 80057f8:	2100      	movs	r1, #0
 80057fa:	0018      	movs	r0, r3
 80057fc:	f7fd ff0c 	bl	8003618 <VL53L0X_WrByte>
 8005800:	0003      	movs	r3, r0
 8005802:	0019      	movs	r1, r3
 8005804:	193b      	adds	r3, r7, r4
 8005806:	193a      	adds	r2, r7, r4
 8005808:	7812      	ldrb	r2, [r2, #0]
 800580a:	430a      	orrs	r2, r1
 800580c:	701a      	strb	r2, [r3, #0]
 800580e:	687b      	ldr	r3, [r7, #4]
 8005810:	2200      	movs	r2, #0
 8005812:	21ff      	movs	r1, #255	; 0xff
 8005814:	0018      	movs	r0, r3
 8005816:	f7fd feff 	bl	8003618 <VL53L0X_WrByte>
 800581a:	0003      	movs	r3, r0
 800581c:	0019      	movs	r1, r3
 800581e:	193b      	adds	r3, r7, r4
 8005820:	193a      	adds	r2, r7, r4
 8005822:	7812      	ldrb	r2, [r2, #0]
 8005824:	430a      	orrs	r2, r1
 8005826:	701a      	strb	r2, [r3, #0]
 8005828:	687b      	ldr	r3, [r7, #4]
 800582a:	2201      	movs	r2, #1
 800582c:	2180      	movs	r1, #128	; 0x80
 800582e:	0018      	movs	r0, r3
 8005830:	f7fd fef2 	bl	8003618 <VL53L0X_WrByte>
 8005834:	0003      	movs	r3, r0
 8005836:	0019      	movs	r1, r3
 8005838:	193b      	adds	r3, r7, r4
 800583a:	193a      	adds	r2, r7, r4
 800583c:	7812      	ldrb	r2, [r2, #0]
 800583e:	430a      	orrs	r2, r1
 8005840:	701a      	strb	r2, [r3, #0]
 8005842:	687b      	ldr	r3, [r7, #4]
 8005844:	2202      	movs	r2, #2
 8005846:	2185      	movs	r1, #133	; 0x85
 8005848:	0018      	movs	r0, r3
 800584a:	f7fd fee5 	bl	8003618 <VL53L0X_WrByte>
 800584e:	0003      	movs	r3, r0
 8005850:	0019      	movs	r1, r3
 8005852:	193b      	adds	r3, r7, r4
 8005854:	193a      	adds	r2, r7, r4
 8005856:	7812      	ldrb	r2, [r2, #0]
 8005858:	430a      	orrs	r2, r1
 800585a:	701a      	strb	r2, [r3, #0]
 800585c:	687b      	ldr	r3, [r7, #4]
 800585e:	2204      	movs	r2, #4
 8005860:	21ff      	movs	r1, #255	; 0xff
 8005862:	0018      	movs	r0, r3
 8005864:	f7fd fed8 	bl	8003618 <VL53L0X_WrByte>
 8005868:	0003      	movs	r3, r0
 800586a:	0019      	movs	r1, r3
 800586c:	193b      	adds	r3, r7, r4
 800586e:	193a      	adds	r2, r7, r4
 8005870:	7812      	ldrb	r2, [r2, #0]
 8005872:	430a      	orrs	r2, r1
 8005874:	701a      	strb	r2, [r3, #0]
 8005876:	687b      	ldr	r3, [r7, #4]
 8005878:	2200      	movs	r2, #0
 800587a:	21cd      	movs	r1, #205	; 0xcd
 800587c:	0018      	movs	r0, r3
 800587e:	f7fd fecb 	bl	8003618 <VL53L0X_WrByte>
 8005882:	0003      	movs	r3, r0
 8005884:	0019      	movs	r1, r3
 8005886:	193b      	adds	r3, r7, r4
 8005888:	193a      	adds	r2, r7, r4
 800588a:	7812      	ldrb	r2, [r2, #0]
 800588c:	430a      	orrs	r2, r1
 800588e:	701a      	strb	r2, [r3, #0]
 8005890:	687b      	ldr	r3, [r7, #4]
 8005892:	2211      	movs	r2, #17
 8005894:	21cc      	movs	r1, #204	; 0xcc
 8005896:	0018      	movs	r0, r3
 8005898:	f7fd febe 	bl	8003618 <VL53L0X_WrByte>
 800589c:	0003      	movs	r3, r0
 800589e:	0019      	movs	r1, r3
 80058a0:	193b      	adds	r3, r7, r4
 80058a2:	193a      	adds	r2, r7, r4
 80058a4:	7812      	ldrb	r2, [r2, #0]
 80058a6:	430a      	orrs	r2, r1
 80058a8:	701a      	strb	r2, [r3, #0]
 80058aa:	687b      	ldr	r3, [r7, #4]
 80058ac:	2207      	movs	r2, #7
 80058ae:	21ff      	movs	r1, #255	; 0xff
 80058b0:	0018      	movs	r0, r3
 80058b2:	f7fd feb1 	bl	8003618 <VL53L0X_WrByte>
 80058b6:	0003      	movs	r3, r0
 80058b8:	0019      	movs	r1, r3
 80058ba:	193b      	adds	r3, r7, r4
 80058bc:	193a      	adds	r2, r7, r4
 80058be:	7812      	ldrb	r2, [r2, #0]
 80058c0:	430a      	orrs	r2, r1
 80058c2:	701a      	strb	r2, [r3, #0]
 80058c4:	687b      	ldr	r3, [r7, #4]
 80058c6:	2200      	movs	r2, #0
 80058c8:	21be      	movs	r1, #190	; 0xbe
 80058ca:	0018      	movs	r0, r3
 80058cc:	f7fd fea4 	bl	8003618 <VL53L0X_WrByte>
 80058d0:	0003      	movs	r3, r0
 80058d2:	0019      	movs	r1, r3
 80058d4:	193b      	adds	r3, r7, r4
 80058d6:	193a      	adds	r2, r7, r4
 80058d8:	7812      	ldrb	r2, [r2, #0]
 80058da:	430a      	orrs	r2, r1
 80058dc:	701a      	strb	r2, [r3, #0]
 80058de:	687b      	ldr	r3, [r7, #4]
 80058e0:	2206      	movs	r2, #6
 80058e2:	21ff      	movs	r1, #255	; 0xff
 80058e4:	0018      	movs	r0, r3
 80058e6:	f7fd fe97 	bl	8003618 <VL53L0X_WrByte>
 80058ea:	0003      	movs	r3, r0
 80058ec:	0019      	movs	r1, r3
 80058ee:	193b      	adds	r3, r7, r4
 80058f0:	193a      	adds	r2, r7, r4
 80058f2:	7812      	ldrb	r2, [r2, #0]
 80058f4:	430a      	orrs	r2, r1
 80058f6:	701a      	strb	r2, [r3, #0]
 80058f8:	687b      	ldr	r3, [r7, #4]
 80058fa:	2209      	movs	r2, #9
 80058fc:	21cc      	movs	r1, #204	; 0xcc
 80058fe:	0018      	movs	r0, r3
 8005900:	f7fd fe8a 	bl	8003618 <VL53L0X_WrByte>
 8005904:	0003      	movs	r3, r0
 8005906:	0019      	movs	r1, r3
 8005908:	193b      	adds	r3, r7, r4
 800590a:	193a      	adds	r2, r7, r4
 800590c:	7812      	ldrb	r2, [r2, #0]
 800590e:	430a      	orrs	r2, r1
 8005910:	701a      	strb	r2, [r3, #0]
 8005912:	687b      	ldr	r3, [r7, #4]
 8005914:	2200      	movs	r2, #0
 8005916:	21ff      	movs	r1, #255	; 0xff
 8005918:	0018      	movs	r0, r3
 800591a:	f7fd fe7d 	bl	8003618 <VL53L0X_WrByte>
 800591e:	0003      	movs	r3, r0
 8005920:	0019      	movs	r1, r3
 8005922:	193b      	adds	r3, r7, r4
 8005924:	193a      	adds	r2, r7, r4
 8005926:	7812      	ldrb	r2, [r2, #0]
 8005928:	430a      	orrs	r2, r1
 800592a:	701a      	strb	r2, [r3, #0]
 800592c:	687b      	ldr	r3, [r7, #4]
 800592e:	2201      	movs	r2, #1
 8005930:	21ff      	movs	r1, #255	; 0xff
 8005932:	0018      	movs	r0, r3
 8005934:	f7fd fe70 	bl	8003618 <VL53L0X_WrByte>
 8005938:	0003      	movs	r3, r0
 800593a:	0019      	movs	r1, r3
 800593c:	193b      	adds	r3, r7, r4
 800593e:	193a      	adds	r2, r7, r4
 8005940:	7812      	ldrb	r2, [r2, #0]
 8005942:	430a      	orrs	r2, r1
 8005944:	701a      	strb	r2, [r3, #0]
 8005946:	687b      	ldr	r3, [r7, #4]
 8005948:	2200      	movs	r2, #0
 800594a:	2100      	movs	r1, #0
 800594c:	0018      	movs	r0, r3
 800594e:	f7fd fe63 	bl	8003618 <VL53L0X_WrByte>
 8005952:	0003      	movs	r3, r0
 8005954:	0019      	movs	r1, r3
 8005956:	193b      	adds	r3, r7, r4
 8005958:	193a      	adds	r2, r7, r4
 800595a:	7812      	ldrb	r2, [r2, #0]
 800595c:	430a      	orrs	r2, r1
 800595e:	701a      	strb	r2, [r3, #0]
 8005960:	e077      	b.n	8005a52 <VL53L0X_SetGpioConfig+0x2fa>
 8005962:	230f      	movs	r3, #15
 8005964:	18fb      	adds	r3, r7, r3
 8005966:	781b      	ldrb	r3, [r3, #0]
 8005968:	b25b      	sxtb	r3, r3
 800596a:	2b00      	cmp	r3, #0
 800596c:	d126      	bne.n	80059bc <VL53L0X_SetGpioConfig+0x264>
 800596e:	1c7b      	adds	r3, r7, #1
 8005970:	781b      	ldrb	r3, [r3, #0]
 8005972:	2b04      	cmp	r3, #4
 8005974:	d81d      	bhi.n	80059b2 <VL53L0X_SetGpioConfig+0x25a>
 8005976:	009a      	lsls	r2, r3, #2
 8005978:	4b3a      	ldr	r3, [pc, #232]	; (8005a64 <VL53L0X_SetGpioConfig+0x30c>)
 800597a:	18d3      	adds	r3, r2, r3
 800597c:	681b      	ldr	r3, [r3, #0]
 800597e:	469f      	mov	pc, r3
 8005980:	230e      	movs	r3, #14
 8005982:	18fb      	adds	r3, r7, r3
 8005984:	2200      	movs	r2, #0
 8005986:	701a      	strb	r2, [r3, #0]
 8005988:	e019      	b.n	80059be <VL53L0X_SetGpioConfig+0x266>
 800598a:	230e      	movs	r3, #14
 800598c:	18fb      	adds	r3, r7, r3
 800598e:	2201      	movs	r2, #1
 8005990:	701a      	strb	r2, [r3, #0]
 8005992:	e014      	b.n	80059be <VL53L0X_SetGpioConfig+0x266>
 8005994:	230e      	movs	r3, #14
 8005996:	18fb      	adds	r3, r7, r3
 8005998:	2202      	movs	r2, #2
 800599a:	701a      	strb	r2, [r3, #0]
 800599c:	e00f      	b.n	80059be <VL53L0X_SetGpioConfig+0x266>
 800599e:	230e      	movs	r3, #14
 80059a0:	18fb      	adds	r3, r7, r3
 80059a2:	2203      	movs	r2, #3
 80059a4:	701a      	strb	r2, [r3, #0]
 80059a6:	e00a      	b.n	80059be <VL53L0X_SetGpioConfig+0x266>
 80059a8:	230e      	movs	r3, #14
 80059aa:	18fb      	adds	r3, r7, r3
 80059ac:	2204      	movs	r2, #4
 80059ae:	701a      	strb	r2, [r3, #0]
 80059b0:	e005      	b.n	80059be <VL53L0X_SetGpioConfig+0x266>
 80059b2:	230f      	movs	r3, #15
 80059b4:	18fb      	adds	r3, r7, r3
 80059b6:	22f5      	movs	r2, #245	; 0xf5
 80059b8:	701a      	strb	r2, [r3, #0]
 80059ba:	e000      	b.n	80059be <VL53L0X_SetGpioConfig+0x266>
 80059bc:	46c0      	nop			; (mov r8, r8)
 80059be:	220f      	movs	r2, #15
 80059c0:	18bb      	adds	r3, r7, r2
 80059c2:	781b      	ldrb	r3, [r3, #0]
 80059c4:	b25b      	sxtb	r3, r3
 80059c6:	2b00      	cmp	r3, #0
 80059c8:	d10a      	bne.n	80059e0 <VL53L0X_SetGpioConfig+0x288>
 80059ca:	18bc      	adds	r4, r7, r2
 80059cc:	230e      	movs	r3, #14
 80059ce:	18fb      	adds	r3, r7, r3
 80059d0:	781a      	ldrb	r2, [r3, #0]
 80059d2:	687b      	ldr	r3, [r7, #4]
 80059d4:	210a      	movs	r1, #10
 80059d6:	0018      	movs	r0, r3
 80059d8:	f7fd fe1e 	bl	8003618 <VL53L0X_WrByte>
 80059dc:	0003      	movs	r3, r0
 80059de:	7023      	strb	r3, [r4, #0]
 80059e0:	230f      	movs	r3, #15
 80059e2:	18fb      	adds	r3, r7, r3
 80059e4:	781b      	ldrb	r3, [r3, #0]
 80059e6:	b25b      	sxtb	r3, r3
 80059e8:	2b00      	cmp	r3, #0
 80059ea:	d119      	bne.n	8005a20 <VL53L0X_SetGpioConfig+0x2c8>
 80059ec:	2320      	movs	r3, #32
 80059ee:	18fb      	adds	r3, r7, r3
 80059f0:	781b      	ldrb	r3, [r3, #0]
 80059f2:	2b00      	cmp	r3, #0
 80059f4:	d104      	bne.n	8005a00 <VL53L0X_SetGpioConfig+0x2a8>
 80059f6:	230e      	movs	r3, #14
 80059f8:	18fb      	adds	r3, r7, r3
 80059fa:	2200      	movs	r2, #0
 80059fc:	701a      	strb	r2, [r3, #0]
 80059fe:	e003      	b.n	8005a08 <VL53L0X_SetGpioConfig+0x2b0>
 8005a00:	230e      	movs	r3, #14
 8005a02:	18fb      	adds	r3, r7, r3
 8005a04:	2210      	movs	r2, #16
 8005a06:	701a      	strb	r2, [r3, #0]
 8005a08:	230f      	movs	r3, #15
 8005a0a:	18fc      	adds	r4, r7, r3
 8005a0c:	230e      	movs	r3, #14
 8005a0e:	18fb      	adds	r3, r7, r3
 8005a10:	781b      	ldrb	r3, [r3, #0]
 8005a12:	6878      	ldr	r0, [r7, #4]
 8005a14:	22ef      	movs	r2, #239	; 0xef
 8005a16:	2184      	movs	r1, #132	; 0x84
 8005a18:	f7fd fe3b 	bl	8003692 <VL53L0X_UpdateByte>
 8005a1c:	0003      	movs	r3, r0
 8005a1e:	7023      	strb	r3, [r4, #0]
 8005a20:	230f      	movs	r3, #15
 8005a22:	18fb      	adds	r3, r7, r3
 8005a24:	781b      	ldrb	r3, [r3, #0]
 8005a26:	b25b      	sxtb	r3, r3
 8005a28:	2b00      	cmp	r3, #0
 8005a2a:	d104      	bne.n	8005a36 <VL53L0X_SetGpioConfig+0x2de>
 8005a2c:	687b      	ldr	r3, [r7, #4]
 8005a2e:	1c7a      	adds	r2, r7, #1
 8005a30:	21da      	movs	r1, #218	; 0xda
 8005a32:	7812      	ldrb	r2, [r2, #0]
 8005a34:	545a      	strb	r2, [r3, r1]
 8005a36:	220f      	movs	r2, #15
 8005a38:	18bb      	adds	r3, r7, r2
 8005a3a:	781b      	ldrb	r3, [r3, #0]
 8005a3c:	b25b      	sxtb	r3, r3
 8005a3e:	2b00      	cmp	r3, #0
 8005a40:	d107      	bne.n	8005a52 <VL53L0X_SetGpioConfig+0x2fa>
 8005a42:	18bc      	adds	r4, r7, r2
 8005a44:	687b      	ldr	r3, [r7, #4]
 8005a46:	2100      	movs	r1, #0
 8005a48:	0018      	movs	r0, r3
 8005a4a:	f000 f84f 	bl	8005aec <VL53L0X_ClearInterruptMask>
 8005a4e:	0003      	movs	r3, r0
 8005a50:	7023      	strb	r3, [r4, #0]
 8005a52:	230f      	movs	r3, #15
 8005a54:	18fb      	adds	r3, r7, r3
 8005a56:	781b      	ldrb	r3, [r3, #0]
 8005a58:	b25b      	sxtb	r3, r3
 8005a5a:	0018      	movs	r0, r3
 8005a5c:	46bd      	mov	sp, r7
 8005a5e:	b005      	add	sp, #20
 8005a60:	bd90      	pop	{r4, r7, pc}
 8005a62:	46c0      	nop			; (mov r8, r8)
 8005a64:	08009d5c 	.word	0x08009d5c

08005a68 <VL53L0X_GetInterruptThresholds>:
 8005a68:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005a6a:	b087      	sub	sp, #28
 8005a6c:	af00      	add	r7, sp, #0
 8005a6e:	60f8      	str	r0, [r7, #12]
 8005a70:	607a      	str	r2, [r7, #4]
 8005a72:	603b      	str	r3, [r7, #0]
 8005a74:	230b      	movs	r3, #11
 8005a76:	18fb      	adds	r3, r7, r3
 8005a78:	1c0a      	adds	r2, r1, #0
 8005a7a:	701a      	strb	r2, [r3, #0]
 8005a7c:	2517      	movs	r5, #23
 8005a7e:	197b      	adds	r3, r7, r5
 8005a80:	2200      	movs	r2, #0
 8005a82:	701a      	strb	r2, [r3, #0]
 8005a84:	197c      	adds	r4, r7, r5
 8005a86:	2614      	movs	r6, #20
 8005a88:	19ba      	adds	r2, r7, r6
 8005a8a:	68fb      	ldr	r3, [r7, #12]
 8005a8c:	210e      	movs	r1, #14
 8005a8e:	0018      	movs	r0, r3
 8005a90:	f7fd fe45 	bl	800371e <VL53L0X_RdWord>
 8005a94:	0003      	movs	r3, r0
 8005a96:	7023      	strb	r3, [r4, #0]
 8005a98:	0031      	movs	r1, r6
 8005a9a:	187b      	adds	r3, r7, r1
 8005a9c:	881b      	ldrh	r3, [r3, #0]
 8005a9e:	045b      	lsls	r3, r3, #17
 8005aa0:	001a      	movs	r2, r3
 8005aa2:	4b11      	ldr	r3, [pc, #68]	; (8005ae8 <VL53L0X_GetInterruptThresholds+0x80>)
 8005aa4:	401a      	ands	r2, r3
 8005aa6:	687b      	ldr	r3, [r7, #4]
 8005aa8:	601a      	str	r2, [r3, #0]
 8005aaa:	197b      	adds	r3, r7, r5
 8005aac:	781b      	ldrb	r3, [r3, #0]
 8005aae:	b25b      	sxtb	r3, r3
 8005ab0:	2b00      	cmp	r3, #0
 8005ab2:	d111      	bne.n	8005ad8 <VL53L0X_GetInterruptThresholds+0x70>
 8005ab4:	197c      	adds	r4, r7, r5
 8005ab6:	000d      	movs	r5, r1
 8005ab8:	187a      	adds	r2, r7, r1
 8005aba:	68fb      	ldr	r3, [r7, #12]
 8005abc:	210c      	movs	r1, #12
 8005abe:	0018      	movs	r0, r3
 8005ac0:	f7fd fe2d 	bl	800371e <VL53L0X_RdWord>
 8005ac4:	0003      	movs	r3, r0
 8005ac6:	7023      	strb	r3, [r4, #0]
 8005ac8:	197b      	adds	r3, r7, r5
 8005aca:	881b      	ldrh	r3, [r3, #0]
 8005acc:	045b      	lsls	r3, r3, #17
 8005ace:	001a      	movs	r2, r3
 8005ad0:	4b05      	ldr	r3, [pc, #20]	; (8005ae8 <VL53L0X_GetInterruptThresholds+0x80>)
 8005ad2:	401a      	ands	r2, r3
 8005ad4:	683b      	ldr	r3, [r7, #0]
 8005ad6:	601a      	str	r2, [r3, #0]
 8005ad8:	2317      	movs	r3, #23
 8005ada:	18fb      	adds	r3, r7, r3
 8005adc:	781b      	ldrb	r3, [r3, #0]
 8005ade:	b25b      	sxtb	r3, r3
 8005ae0:	0018      	movs	r0, r3
 8005ae2:	46bd      	mov	sp, r7
 8005ae4:	b007      	add	sp, #28
 8005ae6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005ae8:	1ffe0000 	.word	0x1ffe0000

08005aec <VL53L0X_ClearInterruptMask>:
 8005aec:	b5b0      	push	{r4, r5, r7, lr}
 8005aee:	b084      	sub	sp, #16
 8005af0:	af00      	add	r7, sp, #0
 8005af2:	6078      	str	r0, [r7, #4]
 8005af4:	6039      	str	r1, [r7, #0]
 8005af6:	230f      	movs	r3, #15
 8005af8:	18fb      	adds	r3, r7, r3
 8005afa:	2200      	movs	r2, #0
 8005afc:	701a      	strb	r2, [r3, #0]
 8005afe:	230e      	movs	r3, #14
 8005b00:	18fb      	adds	r3, r7, r3
 8005b02:	2200      	movs	r2, #0
 8005b04:	701a      	strb	r2, [r3, #0]
 8005b06:	250f      	movs	r5, #15
 8005b08:	197c      	adds	r4, r7, r5
 8005b0a:	687b      	ldr	r3, [r7, #4]
 8005b0c:	2201      	movs	r2, #1
 8005b0e:	210b      	movs	r1, #11
 8005b10:	0018      	movs	r0, r3
 8005b12:	f7fd fd81 	bl	8003618 <VL53L0X_WrByte>
 8005b16:	0003      	movs	r3, r0
 8005b18:	7023      	strb	r3, [r4, #0]
 8005b1a:	687b      	ldr	r3, [r7, #4]
 8005b1c:	2200      	movs	r2, #0
 8005b1e:	210b      	movs	r1, #11
 8005b20:	0018      	movs	r0, r3
 8005b22:	f7fd fd79 	bl	8003618 <VL53L0X_WrByte>
 8005b26:	0003      	movs	r3, r0
 8005b28:	0019      	movs	r1, r3
 8005b2a:	002c      	movs	r4, r5
 8005b2c:	193b      	adds	r3, r7, r4
 8005b2e:	193a      	adds	r2, r7, r4
 8005b30:	7812      	ldrb	r2, [r2, #0]
 8005b32:	430a      	orrs	r2, r1
 8005b34:	701a      	strb	r2, [r3, #0]
 8005b36:	250d      	movs	r5, #13
 8005b38:	197a      	adds	r2, r7, r5
 8005b3a:	687b      	ldr	r3, [r7, #4]
 8005b3c:	2113      	movs	r1, #19
 8005b3e:	0018      	movs	r0, r3
 8005b40:	f7fd fdd8 	bl	80036f4 <VL53L0X_RdByte>
 8005b44:	0003      	movs	r3, r0
 8005b46:	0019      	movs	r1, r3
 8005b48:	0020      	movs	r0, r4
 8005b4a:	183b      	adds	r3, r7, r0
 8005b4c:	183a      	adds	r2, r7, r0
 8005b4e:	7812      	ldrb	r2, [r2, #0]
 8005b50:	430a      	orrs	r2, r1
 8005b52:	701a      	strb	r2, [r3, #0]
 8005b54:	210e      	movs	r1, #14
 8005b56:	187b      	adds	r3, r7, r1
 8005b58:	781a      	ldrb	r2, [r3, #0]
 8005b5a:	187b      	adds	r3, r7, r1
 8005b5c:	3201      	adds	r2, #1
 8005b5e:	701a      	strb	r2, [r3, #0]
 8005b60:	197b      	adds	r3, r7, r5
 8005b62:	781b      	ldrb	r3, [r3, #0]
 8005b64:	001a      	movs	r2, r3
 8005b66:	2307      	movs	r3, #7
 8005b68:	4013      	ands	r3, r2
 8005b6a:	d008      	beq.n	8005b7e <VL53L0X_ClearInterruptMask+0x92>
 8005b6c:	187b      	adds	r3, r7, r1
 8005b6e:	781b      	ldrb	r3, [r3, #0]
 8005b70:	2b02      	cmp	r3, #2
 8005b72:	d804      	bhi.n	8005b7e <VL53L0X_ClearInterruptMask+0x92>
 8005b74:	183b      	adds	r3, r7, r0
 8005b76:	781b      	ldrb	r3, [r3, #0]
 8005b78:	b25b      	sxtb	r3, r3
 8005b7a:	2b00      	cmp	r3, #0
 8005b7c:	d0c3      	beq.n	8005b06 <VL53L0X_ClearInterruptMask+0x1a>
 8005b7e:	230e      	movs	r3, #14
 8005b80:	18fb      	adds	r3, r7, r3
 8005b82:	781b      	ldrb	r3, [r3, #0]
 8005b84:	2b02      	cmp	r3, #2
 8005b86:	d903      	bls.n	8005b90 <VL53L0X_ClearInterruptMask+0xa4>
 8005b88:	230f      	movs	r3, #15
 8005b8a:	18fb      	adds	r3, r7, r3
 8005b8c:	22f4      	movs	r2, #244	; 0xf4
 8005b8e:	701a      	strb	r2, [r3, #0]
 8005b90:	230f      	movs	r3, #15
 8005b92:	18fb      	adds	r3, r7, r3
 8005b94:	781b      	ldrb	r3, [r3, #0]
 8005b96:	b25b      	sxtb	r3, r3
 8005b98:	0018      	movs	r0, r3
 8005b9a:	46bd      	mov	sp, r7
 8005b9c:	b004      	add	sp, #16
 8005b9e:	bdb0      	pop	{r4, r5, r7, pc}

08005ba0 <VL53L0X_GetInterruptMaskStatus>:
 8005ba0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005ba2:	b085      	sub	sp, #20
 8005ba4:	af00      	add	r7, sp, #0
 8005ba6:	6078      	str	r0, [r7, #4]
 8005ba8:	6039      	str	r1, [r7, #0]
 8005baa:	250f      	movs	r5, #15
 8005bac:	197b      	adds	r3, r7, r5
 8005bae:	2200      	movs	r2, #0
 8005bb0:	701a      	strb	r2, [r3, #0]
 8005bb2:	197c      	adds	r4, r7, r5
 8005bb4:	260e      	movs	r6, #14
 8005bb6:	19ba      	adds	r2, r7, r6
 8005bb8:	687b      	ldr	r3, [r7, #4]
 8005bba:	2113      	movs	r1, #19
 8005bbc:	0018      	movs	r0, r3
 8005bbe:	f7fd fd99 	bl	80036f4 <VL53L0X_RdByte>
 8005bc2:	0003      	movs	r3, r0
 8005bc4:	7023      	strb	r3, [r4, #0]
 8005bc6:	0031      	movs	r1, r6
 8005bc8:	187b      	adds	r3, r7, r1
 8005bca:	781b      	ldrb	r3, [r3, #0]
 8005bcc:	001a      	movs	r2, r3
 8005bce:	2307      	movs	r3, #7
 8005bd0:	401a      	ands	r2, r3
 8005bd2:	683b      	ldr	r3, [r7, #0]
 8005bd4:	601a      	str	r2, [r3, #0]
 8005bd6:	187b      	adds	r3, r7, r1
 8005bd8:	781b      	ldrb	r3, [r3, #0]
 8005bda:	001a      	movs	r2, r3
 8005bdc:	2318      	movs	r3, #24
 8005bde:	4013      	ands	r3, r2
 8005be0:	d002      	beq.n	8005be8 <VL53L0X_GetInterruptMaskStatus+0x48>
 8005be2:	197b      	adds	r3, r7, r5
 8005be4:	22fa      	movs	r2, #250	; 0xfa
 8005be6:	701a      	strb	r2, [r3, #0]
 8005be8:	230f      	movs	r3, #15
 8005bea:	18fb      	adds	r3, r7, r3
 8005bec:	781b      	ldrb	r3, [r3, #0]
 8005bee:	b25b      	sxtb	r3, r3
 8005bf0:	0018      	movs	r0, r3
 8005bf2:	46bd      	mov	sp, r7
 8005bf4:	b005      	add	sp, #20
 8005bf6:	bdf0      	pop	{r4, r5, r6, r7, pc}

08005bf8 <VL53L0X_PerformRefSpadManagement>:
 8005bf8:	b5b0      	push	{r4, r5, r7, lr}
 8005bfa:	b086      	sub	sp, #24
 8005bfc:	af00      	add	r7, sp, #0
 8005bfe:	60f8      	str	r0, [r7, #12]
 8005c00:	60b9      	str	r1, [r7, #8]
 8005c02:	607a      	str	r2, [r7, #4]
 8005c04:	2517      	movs	r5, #23
 8005c06:	197b      	adds	r3, r7, r5
 8005c08:	2200      	movs	r2, #0
 8005c0a:	701a      	strb	r2, [r3, #0]
 8005c0c:	197c      	adds	r4, r7, r5
 8005c0e:	687a      	ldr	r2, [r7, #4]
 8005c10:	68b9      	ldr	r1, [r7, #8]
 8005c12:	68fb      	ldr	r3, [r7, #12]
 8005c14:	0018      	movs	r0, r3
 8005c16:	f000 fa58 	bl	80060ca <VL53L0X_perform_ref_spad_management>
 8005c1a:	0003      	movs	r3, r0
 8005c1c:	7023      	strb	r3, [r4, #0]
 8005c1e:	197b      	adds	r3, r7, r5
 8005c20:	781b      	ldrb	r3, [r3, #0]
 8005c22:	b25b      	sxtb	r3, r3
 8005c24:	0018      	movs	r0, r3
 8005c26:	46bd      	mov	sp, r7
 8005c28:	b006      	add	sp, #24
 8005c2a:	bdb0      	pop	{r4, r5, r7, pc}

08005c2c <VL53L0X_get_offset_calibration_data_micro_meter>:
 8005c2c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005c2e:	b085      	sub	sp, #20
 8005c30:	af00      	add	r7, sp, #0
 8005c32:	6078      	str	r0, [r7, #4]
 8005c34:	6039      	str	r1, [r7, #0]
 8005c36:	210f      	movs	r1, #15
 8005c38:	187b      	adds	r3, r7, r1
 8005c3a:	2200      	movs	r2, #0
 8005c3c:	701a      	strb	r2, [r3, #0]
 8005c3e:	230c      	movs	r3, #12
 8005c40:	18fb      	adds	r3, r7, r3
 8005c42:	4a23      	ldr	r2, [pc, #140]	; (8005cd0 <VL53L0X_get_offset_calibration_data_micro_meter+0xa4>)
 8005c44:	801a      	strh	r2, [r3, #0]
 8005c46:	220a      	movs	r2, #10
 8005c48:	18bb      	adds	r3, r7, r2
 8005c4a:	2280      	movs	r2, #128	; 0x80
 8005c4c:	0152      	lsls	r2, r2, #5
 8005c4e:	801a      	strh	r2, [r3, #0]
 8005c50:	000e      	movs	r6, r1
 8005c52:	187c      	adds	r4, r7, r1
 8005c54:	2508      	movs	r5, #8
 8005c56:	197a      	adds	r2, r7, r5
 8005c58:	687b      	ldr	r3, [r7, #4]
 8005c5a:	2128      	movs	r1, #40	; 0x28
 8005c5c:	0018      	movs	r0, r3
 8005c5e:	f7fd fd5e 	bl	800371e <VL53L0X_RdWord>
 8005c62:	0003      	movs	r3, r0
 8005c64:	7023      	strb	r3, [r4, #0]
 8005c66:	19bb      	adds	r3, r7, r6
 8005c68:	781b      	ldrb	r3, [r3, #0]
 8005c6a:	b25b      	sxtb	r3, r3
 8005c6c:	2b00      	cmp	r3, #0
 8005c6e:	d127      	bne.n	8005cc0 <VL53L0X_get_offset_calibration_data_micro_meter+0x94>
 8005c70:	197b      	adds	r3, r7, r5
 8005c72:	881b      	ldrh	r3, [r3, #0]
 8005c74:	051b      	lsls	r3, r3, #20
 8005c76:	0d1b      	lsrs	r3, r3, #20
 8005c78:	b29a      	uxth	r2, r3
 8005c7a:	197b      	adds	r3, r7, r5
 8005c7c:	801a      	strh	r2, [r3, #0]
 8005c7e:	0029      	movs	r1, r5
 8005c80:	197b      	adds	r3, r7, r5
 8005c82:	881b      	ldrh	r3, [r3, #0]
 8005c84:	001a      	movs	r2, r3
 8005c86:	230c      	movs	r3, #12
 8005c88:	18fb      	adds	r3, r7, r3
 8005c8a:	2000      	movs	r0, #0
 8005c8c:	5e1b      	ldrsh	r3, [r3, r0]
 8005c8e:	429a      	cmp	r2, r3
 8005c90:	dd0d      	ble.n	8005cae <VL53L0X_get_offset_calibration_data_micro_meter+0x82>
 8005c92:	187b      	adds	r3, r7, r1
 8005c94:	881a      	ldrh	r2, [r3, #0]
 8005c96:	230a      	movs	r3, #10
 8005c98:	18fb      	adds	r3, r7, r3
 8005c9a:	881b      	ldrh	r3, [r3, #0]
 8005c9c:	1ad3      	subs	r3, r2, r3
 8005c9e:	b29b      	uxth	r3, r3
 8005ca0:	b21b      	sxth	r3, r3
 8005ca2:	001a      	movs	r2, r3
 8005ca4:	23fa      	movs	r3, #250	; 0xfa
 8005ca6:	435a      	muls	r2, r3
 8005ca8:	683b      	ldr	r3, [r7, #0]
 8005caa:	601a      	str	r2, [r3, #0]
 8005cac:	e008      	b.n	8005cc0 <VL53L0X_get_offset_calibration_data_micro_meter+0x94>
 8005cae:	2308      	movs	r3, #8
 8005cb0:	18fb      	adds	r3, r7, r3
 8005cb2:	881b      	ldrh	r3, [r3, #0]
 8005cb4:	b21b      	sxth	r3, r3
 8005cb6:	001a      	movs	r2, r3
 8005cb8:	23fa      	movs	r3, #250	; 0xfa
 8005cba:	435a      	muls	r2, r3
 8005cbc:	683b      	ldr	r3, [r7, #0]
 8005cbe:	601a      	str	r2, [r3, #0]
 8005cc0:	230f      	movs	r3, #15
 8005cc2:	18fb      	adds	r3, r7, r3
 8005cc4:	781b      	ldrb	r3, [r3, #0]
 8005cc6:	b25b      	sxtb	r3, r3
 8005cc8:	0018      	movs	r0, r3
 8005cca:	46bd      	mov	sp, r7
 8005ccc:	b005      	add	sp, #20
 8005cce:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005cd0:	000007ff 	.word	0x000007ff

08005cd4 <get_next_good_spad>:
 8005cd4:	b580      	push	{r7, lr}
 8005cd6:	b08a      	sub	sp, #40	; 0x28
 8005cd8:	af00      	add	r7, sp, #0
 8005cda:	60f8      	str	r0, [r7, #12]
 8005cdc:	60b9      	str	r1, [r7, #8]
 8005cde:	607a      	str	r2, [r7, #4]
 8005ce0:	603b      	str	r3, [r7, #0]
 8005ce2:	2308      	movs	r3, #8
 8005ce4:	61bb      	str	r3, [r7, #24]
 8005ce6:	231e      	movs	r3, #30
 8005ce8:	18fb      	adds	r3, r7, r3
 8005cea:	2200      	movs	r2, #0
 8005cec:	701a      	strb	r2, [r3, #0]
 8005cee:	683b      	ldr	r3, [r7, #0]
 8005cf0:	2201      	movs	r2, #1
 8005cf2:	4252      	negs	r2, r2
 8005cf4:	601a      	str	r2, [r3, #0]
 8005cf6:	69b9      	ldr	r1, [r7, #24]
 8005cf8:	6878      	ldr	r0, [r7, #4]
 8005cfa:	f7fa fa05 	bl	8000108 <__udivsi3>
 8005cfe:	0003      	movs	r3, r0
 8005d00:	617b      	str	r3, [r7, #20]
 8005d02:	687b      	ldr	r3, [r7, #4]
 8005d04:	69b9      	ldr	r1, [r7, #24]
 8005d06:	0018      	movs	r0, r3
 8005d08:	f7fa fa84 	bl	8000214 <__aeabi_uidivmod>
 8005d0c:	000b      	movs	r3, r1
 8005d0e:	613b      	str	r3, [r7, #16]
 8005d10:	697b      	ldr	r3, [r7, #20]
 8005d12:	627b      	str	r3, [r7, #36]	; 0x24
 8005d14:	e038      	b.n	8005d88 <get_next_good_spad+0xb4>
 8005d16:	2300      	movs	r3, #0
 8005d18:	623b      	str	r3, [r7, #32]
 8005d1a:	68fa      	ldr	r2, [r7, #12]
 8005d1c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8005d1e:	18d2      	adds	r2, r2, r3
 8005d20:	211f      	movs	r1, #31
 8005d22:	187b      	adds	r3, r7, r1
 8005d24:	7812      	ldrb	r2, [r2, #0]
 8005d26:	701a      	strb	r2, [r3, #0]
 8005d28:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8005d2a:	697b      	ldr	r3, [r7, #20]
 8005d2c:	429a      	cmp	r2, r3
 8005d2e:	d124      	bne.n	8005d7a <get_next_good_spad+0xa6>
 8005d30:	187b      	adds	r3, r7, r1
 8005d32:	781a      	ldrb	r2, [r3, #0]
 8005d34:	693b      	ldr	r3, [r7, #16]
 8005d36:	411a      	asrs	r2, r3
 8005d38:	187b      	adds	r3, r7, r1
 8005d3a:	701a      	strb	r2, [r3, #0]
 8005d3c:	693b      	ldr	r3, [r7, #16]
 8005d3e:	623b      	str	r3, [r7, #32]
 8005d40:	e01b      	b.n	8005d7a <get_next_good_spad+0xa6>
 8005d42:	231f      	movs	r3, #31
 8005d44:	18fb      	adds	r3, r7, r3
 8005d46:	781b      	ldrb	r3, [r3, #0]
 8005d48:	2201      	movs	r2, #1
 8005d4a:	4013      	ands	r3, r2
 8005d4c:	d00c      	beq.n	8005d68 <get_next_good_spad+0x94>
 8005d4e:	231e      	movs	r3, #30
 8005d50:	18fb      	adds	r3, r7, r3
 8005d52:	2201      	movs	r2, #1
 8005d54:	701a      	strb	r2, [r3, #0]
 8005d56:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8005d58:	69ba      	ldr	r2, [r7, #24]
 8005d5a:	435a      	muls	r2, r3
 8005d5c:	6a3b      	ldr	r3, [r7, #32]
 8005d5e:	18d3      	adds	r3, r2, r3
 8005d60:	001a      	movs	r2, r3
 8005d62:	683b      	ldr	r3, [r7, #0]
 8005d64:	601a      	str	r2, [r3, #0]
 8005d66:	e00c      	b.n	8005d82 <get_next_good_spad+0xae>
 8005d68:	221f      	movs	r2, #31
 8005d6a:	18bb      	adds	r3, r7, r2
 8005d6c:	18ba      	adds	r2, r7, r2
 8005d6e:	7812      	ldrb	r2, [r2, #0]
 8005d70:	0852      	lsrs	r2, r2, #1
 8005d72:	701a      	strb	r2, [r3, #0]
 8005d74:	6a3b      	ldr	r3, [r7, #32]
 8005d76:	3301      	adds	r3, #1
 8005d78:	623b      	str	r3, [r7, #32]
 8005d7a:	6a3a      	ldr	r2, [r7, #32]
 8005d7c:	69bb      	ldr	r3, [r7, #24]
 8005d7e:	429a      	cmp	r2, r3
 8005d80:	d3df      	bcc.n	8005d42 <get_next_good_spad+0x6e>
 8005d82:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8005d84:	3301      	adds	r3, #1
 8005d86:	627b      	str	r3, [r7, #36]	; 0x24
 8005d88:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8005d8a:	68bb      	ldr	r3, [r7, #8]
 8005d8c:	429a      	cmp	r2, r3
 8005d8e:	d204      	bcs.n	8005d9a <get_next_good_spad+0xc6>
 8005d90:	231e      	movs	r3, #30
 8005d92:	18fb      	adds	r3, r7, r3
 8005d94:	781b      	ldrb	r3, [r3, #0]
 8005d96:	2b00      	cmp	r3, #0
 8005d98:	d0bd      	beq.n	8005d16 <get_next_good_spad+0x42>
 8005d9a:	46c0      	nop			; (mov r8, r8)
 8005d9c:	46bd      	mov	sp, r7
 8005d9e:	b00a      	add	sp, #40	; 0x28
 8005da0:	bd80      	pop	{r7, pc}
	...

08005da4 <is_aperture>:
 8005da4:	b580      	push	{r7, lr}
 8005da6:	b084      	sub	sp, #16
 8005da8:	af00      	add	r7, sp, #0
 8005daa:	6078      	str	r0, [r7, #4]
 8005dac:	210f      	movs	r1, #15
 8005dae:	187b      	adds	r3, r7, r1
 8005db0:	2201      	movs	r2, #1
 8005db2:	701a      	strb	r2, [r3, #0]
 8005db4:	687b      	ldr	r3, [r7, #4]
 8005db6:	099b      	lsrs	r3, r3, #6
 8005db8:	60bb      	str	r3, [r7, #8]
 8005dba:	4b08      	ldr	r3, [pc, #32]	; (8005ddc <is_aperture+0x38>)
 8005dbc:	68ba      	ldr	r2, [r7, #8]
 8005dbe:	0092      	lsls	r2, r2, #2
 8005dc0:	58d3      	ldr	r3, [r2, r3]
 8005dc2:	2b00      	cmp	r3, #0
 8005dc4:	d102      	bne.n	8005dcc <is_aperture+0x28>
 8005dc6:	187b      	adds	r3, r7, r1
 8005dc8:	2200      	movs	r2, #0
 8005dca:	701a      	strb	r2, [r3, #0]
 8005dcc:	230f      	movs	r3, #15
 8005dce:	18fb      	adds	r3, r7, r3
 8005dd0:	781b      	ldrb	r3, [r3, #0]
 8005dd2:	0018      	movs	r0, r3
 8005dd4:	46bd      	mov	sp, r7
 8005dd6:	b004      	add	sp, #16
 8005dd8:	bd80      	pop	{r7, pc}
 8005dda:	46c0      	nop			; (mov r8, r8)
 8005ddc:	200002b0 	.word	0x200002b0

08005de0 <enable_spad_bit>:
 8005de0:	b590      	push	{r4, r7, lr}
 8005de2:	b089      	sub	sp, #36	; 0x24
 8005de4:	af00      	add	r7, sp, #0
 8005de6:	60f8      	str	r0, [r7, #12]
 8005de8:	60b9      	str	r1, [r7, #8]
 8005dea:	607a      	str	r2, [r7, #4]
 8005dec:	241f      	movs	r4, #31
 8005dee:	193b      	adds	r3, r7, r4
 8005df0:	2200      	movs	r2, #0
 8005df2:	701a      	strb	r2, [r3, #0]
 8005df4:	2308      	movs	r3, #8
 8005df6:	61bb      	str	r3, [r7, #24]
 8005df8:	69b9      	ldr	r1, [r7, #24]
 8005dfa:	6878      	ldr	r0, [r7, #4]
 8005dfc:	f7fa f984 	bl	8000108 <__udivsi3>
 8005e00:	0003      	movs	r3, r0
 8005e02:	617b      	str	r3, [r7, #20]
 8005e04:	687b      	ldr	r3, [r7, #4]
 8005e06:	69b9      	ldr	r1, [r7, #24]
 8005e08:	0018      	movs	r0, r3
 8005e0a:	f7fa fa03 	bl	8000214 <__aeabi_uidivmod>
 8005e0e:	000b      	movs	r3, r1
 8005e10:	613b      	str	r3, [r7, #16]
 8005e12:	697a      	ldr	r2, [r7, #20]
 8005e14:	68bb      	ldr	r3, [r7, #8]
 8005e16:	429a      	cmp	r2, r3
 8005e18:	d303      	bcc.n	8005e22 <enable_spad_bit+0x42>
 8005e1a:	193b      	adds	r3, r7, r4
 8005e1c:	22ce      	movs	r2, #206	; 0xce
 8005e1e:	701a      	strb	r2, [r3, #0]
 8005e20:	e010      	b.n	8005e44 <enable_spad_bit+0x64>
 8005e22:	68fa      	ldr	r2, [r7, #12]
 8005e24:	697b      	ldr	r3, [r7, #20]
 8005e26:	18d3      	adds	r3, r2, r3
 8005e28:	781b      	ldrb	r3, [r3, #0]
 8005e2a:	b25a      	sxtb	r2, r3
 8005e2c:	2101      	movs	r1, #1
 8005e2e:	693b      	ldr	r3, [r7, #16]
 8005e30:	4099      	lsls	r1, r3
 8005e32:	000b      	movs	r3, r1
 8005e34:	b25b      	sxtb	r3, r3
 8005e36:	4313      	orrs	r3, r2
 8005e38:	b259      	sxtb	r1, r3
 8005e3a:	68fa      	ldr	r2, [r7, #12]
 8005e3c:	697b      	ldr	r3, [r7, #20]
 8005e3e:	18d3      	adds	r3, r2, r3
 8005e40:	b2ca      	uxtb	r2, r1
 8005e42:	701a      	strb	r2, [r3, #0]
 8005e44:	231f      	movs	r3, #31
 8005e46:	18fb      	adds	r3, r7, r3
 8005e48:	781b      	ldrb	r3, [r3, #0]
 8005e4a:	b25b      	sxtb	r3, r3
 8005e4c:	0018      	movs	r0, r3
 8005e4e:	46bd      	mov	sp, r7
 8005e50:	b009      	add	sp, #36	; 0x24
 8005e52:	bd90      	pop	{r4, r7, pc}

08005e54 <set_ref_spad_map>:
 8005e54:	b5b0      	push	{r4, r5, r7, lr}
 8005e56:	b084      	sub	sp, #16
 8005e58:	af00      	add	r7, sp, #0
 8005e5a:	6078      	str	r0, [r7, #4]
 8005e5c:	6039      	str	r1, [r7, #0]
 8005e5e:	250f      	movs	r5, #15
 8005e60:	197c      	adds	r4, r7, r5
 8005e62:	683a      	ldr	r2, [r7, #0]
 8005e64:	6878      	ldr	r0, [r7, #4]
 8005e66:	2306      	movs	r3, #6
 8005e68:	21b0      	movs	r1, #176	; 0xb0
 8005e6a:	f7fd fae3 	bl	8003434 <VL53L0X_WriteMulti>
 8005e6e:	0003      	movs	r3, r0
 8005e70:	7023      	strb	r3, [r4, #0]
 8005e72:	197b      	adds	r3, r7, r5
 8005e74:	781b      	ldrb	r3, [r3, #0]
 8005e76:	b25b      	sxtb	r3, r3
 8005e78:	0018      	movs	r0, r3
 8005e7a:	46bd      	mov	sp, r7
 8005e7c:	b004      	add	sp, #16
 8005e7e:	bdb0      	pop	{r4, r5, r7, pc}

08005e80 <get_ref_spad_map>:
 8005e80:	b5b0      	push	{r4, r5, r7, lr}
 8005e82:	b084      	sub	sp, #16
 8005e84:	af00      	add	r7, sp, #0
 8005e86:	6078      	str	r0, [r7, #4]
 8005e88:	6039      	str	r1, [r7, #0]
 8005e8a:	250f      	movs	r5, #15
 8005e8c:	197c      	adds	r4, r7, r5
 8005e8e:	683a      	ldr	r2, [r7, #0]
 8005e90:	6878      	ldr	r0, [r7, #4]
 8005e92:	2306      	movs	r3, #6
 8005e94:	21b0      	movs	r1, #176	; 0xb0
 8005e96:	f7fd fb4d 	bl	8003534 <VL53L0X_ReadMulti>
 8005e9a:	0003      	movs	r3, r0
 8005e9c:	7023      	strb	r3, [r4, #0]
 8005e9e:	197b      	adds	r3, r7, r5
 8005ea0:	781b      	ldrb	r3, [r3, #0]
 8005ea2:	b25b      	sxtb	r3, r3
 8005ea4:	0018      	movs	r0, r3
 8005ea6:	46bd      	mov	sp, r7
 8005ea8:	b004      	add	sp, #16
 8005eaa:	bdb0      	pop	{r4, r5, r7, pc}

08005eac <enable_ref_spads>:
 8005eac:	b590      	push	{r4, r7, lr}
 8005eae:	b08d      	sub	sp, #52	; 0x34
 8005eb0:	af00      	add	r7, sp, #0
 8005eb2:	60f8      	str	r0, [r7, #12]
 8005eb4:	607a      	str	r2, [r7, #4]
 8005eb6:	603b      	str	r3, [r7, #0]
 8005eb8:	230b      	movs	r3, #11
 8005eba:	18fb      	adds	r3, r7, r3
 8005ebc:	1c0a      	adds	r2, r1, #0
 8005ebe:	701a      	strb	r2, [r3, #0]
 8005ec0:	232f      	movs	r3, #47	; 0x2f
 8005ec2:	18fb      	adds	r3, r7, r3
 8005ec4:	2200      	movs	r2, #0
 8005ec6:	701a      	strb	r2, [r3, #0]
 8005ec8:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 8005eca:	61fb      	str	r3, [r7, #28]
 8005ecc:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 8005ece:	623b      	str	r3, [r7, #32]
 8005ed0:	2300      	movs	r3, #0
 8005ed2:	62bb      	str	r3, [r7, #40]	; 0x28
 8005ed4:	e02f      	b.n	8005f36 <enable_ref_spads+0x8a>
 8005ed6:	231c      	movs	r3, #28
 8005ed8:	18fb      	adds	r3, r7, r3
 8005eda:	6a3a      	ldr	r2, [r7, #32]
 8005edc:	6c39      	ldr	r1, [r7, #64]	; 0x40
 8005ede:	6878      	ldr	r0, [r7, #4]
 8005ee0:	f7ff fef8 	bl	8005cd4 <get_next_good_spad>
 8005ee4:	69fb      	ldr	r3, [r7, #28]
 8005ee6:	3301      	adds	r3, #1
 8005ee8:	d104      	bne.n	8005ef4 <enable_ref_spads+0x48>
 8005eea:	232f      	movs	r3, #47	; 0x2f
 8005eec:	18fb      	adds	r3, r7, r3
 8005eee:	22ce      	movs	r2, #206	; 0xce
 8005ef0:	701a      	strb	r2, [r3, #0]
 8005ef2:	e024      	b.n	8005f3e <enable_ref_spads+0x92>
 8005ef4:	69fb      	ldr	r3, [r7, #28]
 8005ef6:	001a      	movs	r2, r3
 8005ef8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8005efa:	18d3      	adds	r3, r2, r3
 8005efc:	0018      	movs	r0, r3
 8005efe:	f7ff ff51 	bl	8005da4 <is_aperture>
 8005f02:	0003      	movs	r3, r0
 8005f04:	001a      	movs	r2, r3
 8005f06:	230b      	movs	r3, #11
 8005f08:	18fb      	adds	r3, r7, r3
 8005f0a:	781b      	ldrb	r3, [r3, #0]
 8005f0c:	4293      	cmp	r3, r2
 8005f0e:	d004      	beq.n	8005f1a <enable_ref_spads+0x6e>
 8005f10:	232f      	movs	r3, #47	; 0x2f
 8005f12:	18fb      	adds	r3, r7, r3
 8005f14:	22ce      	movs	r2, #206	; 0xce
 8005f16:	701a      	strb	r2, [r3, #0]
 8005f18:	e011      	b.n	8005f3e <enable_ref_spads+0x92>
 8005f1a:	69fb      	ldr	r3, [r7, #28]
 8005f1c:	623b      	str	r3, [r7, #32]
 8005f1e:	6a3a      	ldr	r2, [r7, #32]
 8005f20:	6c39      	ldr	r1, [r7, #64]	; 0x40
 8005f22:	683b      	ldr	r3, [r7, #0]
 8005f24:	0018      	movs	r0, r3
 8005f26:	f7ff ff5b 	bl	8005de0 <enable_spad_bit>
 8005f2a:	6a3b      	ldr	r3, [r7, #32]
 8005f2c:	3301      	adds	r3, #1
 8005f2e:	623b      	str	r3, [r7, #32]
 8005f30:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8005f32:	3301      	adds	r3, #1
 8005f34:	62bb      	str	r3, [r7, #40]	; 0x28
 8005f36:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8005f38:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8005f3a:	429a      	cmp	r2, r3
 8005f3c:	d3cb      	bcc.n	8005ed6 <enable_ref_spads+0x2a>
 8005f3e:	6d3b      	ldr	r3, [r7, #80]	; 0x50
 8005f40:	6a3a      	ldr	r2, [r7, #32]
 8005f42:	601a      	str	r2, [r3, #0]
 8005f44:	222f      	movs	r2, #47	; 0x2f
 8005f46:	18bb      	adds	r3, r7, r2
 8005f48:	781b      	ldrb	r3, [r3, #0]
 8005f4a:	b25b      	sxtb	r3, r3
 8005f4c:	2b00      	cmp	r3, #0
 8005f4e:	d108      	bne.n	8005f62 <enable_ref_spads+0xb6>
 8005f50:	18bc      	adds	r4, r7, r2
 8005f52:	683a      	ldr	r2, [r7, #0]
 8005f54:	68fb      	ldr	r3, [r7, #12]
 8005f56:	0011      	movs	r1, r2
 8005f58:	0018      	movs	r0, r3
 8005f5a:	f7ff ff7b 	bl	8005e54 <set_ref_spad_map>
 8005f5e:	0003      	movs	r3, r0
 8005f60:	7023      	strb	r3, [r4, #0]
 8005f62:	222f      	movs	r2, #47	; 0x2f
 8005f64:	18bb      	adds	r3, r7, r2
 8005f66:	781b      	ldrb	r3, [r3, #0]
 8005f68:	b25b      	sxtb	r3, r3
 8005f6a:	2b00      	cmp	r3, #0
 8005f6c:	d123      	bne.n	8005fb6 <enable_ref_spads+0x10a>
 8005f6e:	18bc      	adds	r4, r7, r2
 8005f70:	2314      	movs	r3, #20
 8005f72:	18fa      	adds	r2, r7, r3
 8005f74:	68fb      	ldr	r3, [r7, #12]
 8005f76:	0011      	movs	r1, r2
 8005f78:	0018      	movs	r0, r3
 8005f7a:	f7ff ff81 	bl	8005e80 <get_ref_spad_map>
 8005f7e:	0003      	movs	r3, r0
 8005f80:	7023      	strb	r3, [r4, #0]
 8005f82:	2300      	movs	r3, #0
 8005f84:	627b      	str	r3, [r7, #36]	; 0x24
 8005f86:	e012      	b.n	8005fae <enable_ref_spads+0x102>
 8005f88:	683a      	ldr	r2, [r7, #0]
 8005f8a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8005f8c:	18d3      	adds	r3, r2, r3
 8005f8e:	781a      	ldrb	r2, [r3, #0]
 8005f90:	2314      	movs	r3, #20
 8005f92:	18f9      	adds	r1, r7, r3
 8005f94:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8005f96:	18cb      	adds	r3, r1, r3
 8005f98:	781b      	ldrb	r3, [r3, #0]
 8005f9a:	429a      	cmp	r2, r3
 8005f9c:	d004      	beq.n	8005fa8 <enable_ref_spads+0xfc>
 8005f9e:	232f      	movs	r3, #47	; 0x2f
 8005fa0:	18fb      	adds	r3, r7, r3
 8005fa2:	22ce      	movs	r2, #206	; 0xce
 8005fa4:	701a      	strb	r2, [r3, #0]
 8005fa6:	e006      	b.n	8005fb6 <enable_ref_spads+0x10a>
 8005fa8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8005faa:	3301      	adds	r3, #1
 8005fac:	627b      	str	r3, [r7, #36]	; 0x24
 8005fae:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8005fb0:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8005fb2:	429a      	cmp	r2, r3
 8005fb4:	d3e8      	bcc.n	8005f88 <enable_ref_spads+0xdc>
 8005fb6:	232f      	movs	r3, #47	; 0x2f
 8005fb8:	18fb      	adds	r3, r7, r3
 8005fba:	781b      	ldrb	r3, [r3, #0]
 8005fbc:	b25b      	sxtb	r3, r3
 8005fbe:	0018      	movs	r0, r3
 8005fc0:	46bd      	mov	sp, r7
 8005fc2:	b00d      	add	sp, #52	; 0x34
 8005fc4:	bd90      	pop	{r4, r7, pc}

08005fc6 <perform_ref_signal_measurement>:
 8005fc6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005fc8:	b08b      	sub	sp, #44	; 0x2c
 8005fca:	af00      	add	r7, sp, #0
 8005fcc:	6078      	str	r0, [r7, #4]
 8005fce:	6039      	str	r1, [r7, #0]
 8005fd0:	2027      	movs	r0, #39	; 0x27
 8005fd2:	183b      	adds	r3, r7, r0
 8005fd4:	2200      	movs	r2, #0
 8005fd6:	701a      	strb	r2, [r3, #0]
 8005fd8:	2126      	movs	r1, #38	; 0x26
 8005fda:	187b      	adds	r3, r7, r1
 8005fdc:	2200      	movs	r2, #0
 8005fde:	701a      	strb	r2, [r3, #0]
 8005fe0:	187b      	adds	r3, r7, r1
 8005fe2:	6879      	ldr	r1, [r7, #4]
 8005fe4:	2288      	movs	r2, #136	; 0x88
 8005fe6:	0052      	lsls	r2, r2, #1
 8005fe8:	5c8a      	ldrb	r2, [r1, r2]
 8005fea:	701a      	strb	r2, [r3, #0]
 8005fec:	183b      	adds	r3, r7, r0
 8005fee:	781b      	ldrb	r3, [r3, #0]
 8005ff0:	b25b      	sxtb	r3, r3
 8005ff2:	2b00      	cmp	r3, #0
 8005ff4:	d108      	bne.n	8006008 <perform_ref_signal_measurement+0x42>
 8005ff6:	183c      	adds	r4, r7, r0
 8005ff8:	687b      	ldr	r3, [r7, #4]
 8005ffa:	22c0      	movs	r2, #192	; 0xc0
 8005ffc:	2101      	movs	r1, #1
 8005ffe:	0018      	movs	r0, r3
 8006000:	f7fd fb0a 	bl	8003618 <VL53L0X_WrByte>
 8006004:	0003      	movs	r3, r0
 8006006:	7023      	strb	r3, [r4, #0]
 8006008:	2227      	movs	r2, #39	; 0x27
 800600a:	18bb      	adds	r3, r7, r2
 800600c:	781b      	ldrb	r3, [r3, #0]
 800600e:	b25b      	sxtb	r3, r3
 8006010:	2b00      	cmp	r3, #0
 8006012:	d109      	bne.n	8006028 <perform_ref_signal_measurement+0x62>
 8006014:	18bc      	adds	r4, r7, r2
 8006016:	2308      	movs	r3, #8
 8006018:	18fa      	adds	r2, r7, r3
 800601a:	687b      	ldr	r3, [r7, #4]
 800601c:	0011      	movs	r1, r2
 800601e:	0018      	movs	r0, r3
 8006020:	f7ff fb58 	bl	80056d4 <VL53L0X_PerformSingleRangingMeasurement>
 8006024:	0003      	movs	r3, r0
 8006026:	7023      	strb	r3, [r4, #0]
 8006028:	2227      	movs	r2, #39	; 0x27
 800602a:	18bb      	adds	r3, r7, r2
 800602c:	781b      	ldrb	r3, [r3, #0]
 800602e:	b25b      	sxtb	r3, r3
 8006030:	2b00      	cmp	r3, #0
 8006032:	d108      	bne.n	8006046 <perform_ref_signal_measurement+0x80>
 8006034:	18bc      	adds	r4, r7, r2
 8006036:	687b      	ldr	r3, [r7, #4]
 8006038:	2201      	movs	r2, #1
 800603a:	21ff      	movs	r1, #255	; 0xff
 800603c:	0018      	movs	r0, r3
 800603e:	f7fd faeb 	bl	8003618 <VL53L0X_WrByte>
 8006042:	0003      	movs	r3, r0
 8006044:	7023      	strb	r3, [r4, #0]
 8006046:	2227      	movs	r2, #39	; 0x27
 8006048:	18bb      	adds	r3, r7, r2
 800604a:	781b      	ldrb	r3, [r3, #0]
 800604c:	b25b      	sxtb	r3, r3
 800604e:	2b00      	cmp	r3, #0
 8006050:	d108      	bne.n	8006064 <perform_ref_signal_measurement+0x9e>
 8006052:	18bc      	adds	r4, r7, r2
 8006054:	683a      	ldr	r2, [r7, #0]
 8006056:	687b      	ldr	r3, [r7, #4]
 8006058:	21b6      	movs	r1, #182	; 0xb6
 800605a:	0018      	movs	r0, r3
 800605c:	f7fd fb5f 	bl	800371e <VL53L0X_RdWord>
 8006060:	0003      	movs	r3, r0
 8006062:	7023      	strb	r3, [r4, #0]
 8006064:	2227      	movs	r2, #39	; 0x27
 8006066:	18bb      	adds	r3, r7, r2
 8006068:	781b      	ldrb	r3, [r3, #0]
 800606a:	b25b      	sxtb	r3, r3
 800606c:	2b00      	cmp	r3, #0
 800606e:	d108      	bne.n	8006082 <perform_ref_signal_measurement+0xbc>
 8006070:	18bc      	adds	r4, r7, r2
 8006072:	687b      	ldr	r3, [r7, #4]
 8006074:	2200      	movs	r2, #0
 8006076:	21ff      	movs	r1, #255	; 0xff
 8006078:	0018      	movs	r0, r3
 800607a:	f7fd facd 	bl	8003618 <VL53L0X_WrByte>
 800607e:	0003      	movs	r3, r0
 8006080:	7023      	strb	r3, [r4, #0]
 8006082:	2527      	movs	r5, #39	; 0x27
 8006084:	197b      	adds	r3, r7, r5
 8006086:	781b      	ldrb	r3, [r3, #0]
 8006088:	b25b      	sxtb	r3, r3
 800608a:	2b00      	cmp	r3, #0
 800608c:	d115      	bne.n	80060ba <perform_ref_signal_measurement+0xf4>
 800608e:	197c      	adds	r4, r7, r5
 8006090:	2626      	movs	r6, #38	; 0x26
 8006092:	19bb      	adds	r3, r7, r6
 8006094:	781a      	ldrb	r2, [r3, #0]
 8006096:	687b      	ldr	r3, [r7, #4]
 8006098:	2101      	movs	r1, #1
 800609a:	0018      	movs	r0, r3
 800609c:	f7fd fabc 	bl	8003618 <VL53L0X_WrByte>
 80060a0:	0003      	movs	r3, r0
 80060a2:	7023      	strb	r3, [r4, #0]
 80060a4:	197b      	adds	r3, r7, r5
 80060a6:	781b      	ldrb	r3, [r3, #0]
 80060a8:	b25b      	sxtb	r3, r3
 80060aa:	2b00      	cmp	r3, #0
 80060ac:	d105      	bne.n	80060ba <perform_ref_signal_measurement+0xf4>
 80060ae:	687a      	ldr	r2, [r7, #4]
 80060b0:	19b9      	adds	r1, r7, r6
 80060b2:	2388      	movs	r3, #136	; 0x88
 80060b4:	005b      	lsls	r3, r3, #1
 80060b6:	7809      	ldrb	r1, [r1, #0]
 80060b8:	54d1      	strb	r1, [r2, r3]
 80060ba:	2327      	movs	r3, #39	; 0x27
 80060bc:	18fb      	adds	r3, r7, r3
 80060be:	781b      	ldrb	r3, [r3, #0]
 80060c0:	b25b      	sxtb	r3, r3
 80060c2:	0018      	movs	r0, r3
 80060c4:	46bd      	mov	sp, r7
 80060c6:	b00b      	add	sp, #44	; 0x2c
 80060c8:	bdf0      	pop	{r4, r5, r6, r7, pc}

080060ca <VL53L0X_perform_ref_spad_management>:
 80060ca:	b5f0      	push	{r4, r5, r6, r7, lr}
 80060cc:	b09d      	sub	sp, #116	; 0x74
 80060ce:	af06      	add	r7, sp, #24
 80060d0:	60f8      	str	r0, [r7, #12]
 80060d2:	60b9      	str	r1, [r7, #8]
 80060d4:	607a      	str	r2, [r7, #4]
 80060d6:	2357      	movs	r3, #87	; 0x57
 80060d8:	18fb      	adds	r3, r7, r3
 80060da:	2200      	movs	r2, #0
 80060dc:	701a      	strb	r2, [r3, #0]
 80060de:	233a      	movs	r3, #58	; 0x3a
 80060e0:	18fb      	adds	r3, r7, r3
 80060e2:	22b4      	movs	r2, #180	; 0xb4
 80060e4:	701a      	strb	r2, [r3, #0]
 80060e6:	2303      	movs	r3, #3
 80060e8:	637b      	str	r3, [r7, #52]	; 0x34
 80060ea:	232c      	movs	r3, #44	; 0x2c
 80060ec:	633b      	str	r3, [r7, #48]	; 0x30
 80060ee:	2300      	movs	r3, #0
 80060f0:	653b      	str	r3, [r7, #80]	; 0x50
 80060f2:	2300      	movs	r3, #0
 80060f4:	61bb      	str	r3, [r7, #24]
 80060f6:	2300      	movs	r3, #0
 80060f8:	617b      	str	r3, [r7, #20]
 80060fa:	212e      	movs	r1, #46	; 0x2e
 80060fc:	187b      	adds	r3, r7, r1
 80060fe:	22a0      	movs	r2, #160	; 0xa0
 8006100:	0112      	lsls	r2, r2, #4
 8006102:	801a      	strh	r2, [r3, #0]
 8006104:	2300      	movs	r3, #0
 8006106:	64fb      	str	r3, [r7, #76]	; 0x4c
 8006108:	2300      	movs	r3, #0
 800610a:	64bb      	str	r3, [r7, #72]	; 0x48
 800610c:	2306      	movs	r3, #6
 800610e:	62bb      	str	r3, [r7, #40]	; 0x28
 8006110:	2300      	movs	r3, #0
 8006112:	627b      	str	r3, [r7, #36]	; 0x24
 8006114:	2300      	movs	r3, #0
 8006116:	647b      	str	r3, [r7, #68]	; 0x44
 8006118:	2343      	movs	r3, #67	; 0x43
 800611a:	18fb      	adds	r3, r7, r3
 800611c:	2200      	movs	r2, #0
 800611e:	701a      	strb	r2, [r3, #0]
 8006120:	2311      	movs	r3, #17
 8006122:	18fb      	adds	r3, r7, r3
 8006124:	2200      	movs	r2, #0
 8006126:	701a      	strb	r2, [r3, #0]
 8006128:	2310      	movs	r3, #16
 800612a:	18fb      	adds	r3, r7, r3
 800612c:	2200      	movs	r2, #0
 800612e:	701a      	strb	r2, [r3, #0]
 8006130:	2300      	movs	r3, #0
 8006132:	63fb      	str	r3, [r7, #60]	; 0x3c
 8006134:	233b      	movs	r3, #59	; 0x3b
 8006136:	18fb      	adds	r3, r7, r3
 8006138:	2200      	movs	r2, #0
 800613a:	701a      	strb	r2, [r3, #0]
 800613c:	187b      	adds	r3, r7, r1
 800613e:	68f9      	ldr	r1, [r7, #12]
 8006140:	228e      	movs	r2, #142	; 0x8e
 8006142:	0052      	lsls	r2, r2, #1
 8006144:	5a8a      	ldrh	r2, [r1, r2]
 8006146:	801a      	strh	r2, [r3, #0]
 8006148:	2300      	movs	r3, #0
 800614a:	64bb      	str	r3, [r7, #72]	; 0x48
 800614c:	e00a      	b.n	8006164 <VL53L0X_perform_ref_spad_management+0x9a>
 800614e:	68f9      	ldr	r1, [r7, #12]
 8006150:	2382      	movs	r3, #130	; 0x82
 8006152:	005b      	lsls	r3, r3, #1
 8006154:	6cba      	ldr	r2, [r7, #72]	; 0x48
 8006156:	188a      	adds	r2, r1, r2
 8006158:	18d3      	adds	r3, r2, r3
 800615a:	2200      	movs	r2, #0
 800615c:	701a      	strb	r2, [r3, #0]
 800615e:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 8006160:	3301      	adds	r3, #1
 8006162:	64bb      	str	r3, [r7, #72]	; 0x48
 8006164:	6cba      	ldr	r2, [r7, #72]	; 0x48
 8006166:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8006168:	429a      	cmp	r2, r3
 800616a:	d3f0      	bcc.n	800614e <VL53L0X_perform_ref_spad_management+0x84>
 800616c:	2557      	movs	r5, #87	; 0x57
 800616e:	197c      	adds	r4, r7, r5
 8006170:	68fb      	ldr	r3, [r7, #12]
 8006172:	2201      	movs	r2, #1
 8006174:	21ff      	movs	r1, #255	; 0xff
 8006176:	0018      	movs	r0, r3
 8006178:	f7fd fa4e 	bl	8003618 <VL53L0X_WrByte>
 800617c:	0003      	movs	r3, r0
 800617e:	7023      	strb	r3, [r4, #0]
 8006180:	197b      	adds	r3, r7, r5
 8006182:	781b      	ldrb	r3, [r3, #0]
 8006184:	b25b      	sxtb	r3, r3
 8006186:	2b00      	cmp	r3, #0
 8006188:	d108      	bne.n	800619c <VL53L0X_perform_ref_spad_management+0xd2>
 800618a:	197c      	adds	r4, r7, r5
 800618c:	68fb      	ldr	r3, [r7, #12]
 800618e:	2200      	movs	r2, #0
 8006190:	214f      	movs	r1, #79	; 0x4f
 8006192:	0018      	movs	r0, r3
 8006194:	f7fd fa40 	bl	8003618 <VL53L0X_WrByte>
 8006198:	0003      	movs	r3, r0
 800619a:	7023      	strb	r3, [r4, #0]
 800619c:	2257      	movs	r2, #87	; 0x57
 800619e:	18bb      	adds	r3, r7, r2
 80061a0:	781b      	ldrb	r3, [r3, #0]
 80061a2:	b25b      	sxtb	r3, r3
 80061a4:	2b00      	cmp	r3, #0
 80061a6:	d108      	bne.n	80061ba <VL53L0X_perform_ref_spad_management+0xf0>
 80061a8:	18bc      	adds	r4, r7, r2
 80061aa:	68fb      	ldr	r3, [r7, #12]
 80061ac:	222c      	movs	r2, #44	; 0x2c
 80061ae:	214e      	movs	r1, #78	; 0x4e
 80061b0:	0018      	movs	r0, r3
 80061b2:	f7fd fa31 	bl	8003618 <VL53L0X_WrByte>
 80061b6:	0003      	movs	r3, r0
 80061b8:	7023      	strb	r3, [r4, #0]
 80061ba:	2257      	movs	r2, #87	; 0x57
 80061bc:	18bb      	adds	r3, r7, r2
 80061be:	781b      	ldrb	r3, [r3, #0]
 80061c0:	b25b      	sxtb	r3, r3
 80061c2:	2b00      	cmp	r3, #0
 80061c4:	d108      	bne.n	80061d8 <VL53L0X_perform_ref_spad_management+0x10e>
 80061c6:	18bc      	adds	r4, r7, r2
 80061c8:	68fb      	ldr	r3, [r7, #12]
 80061ca:	2200      	movs	r2, #0
 80061cc:	21ff      	movs	r1, #255	; 0xff
 80061ce:	0018      	movs	r0, r3
 80061d0:	f7fd fa22 	bl	8003618 <VL53L0X_WrByte>
 80061d4:	0003      	movs	r3, r0
 80061d6:	7023      	strb	r3, [r4, #0]
 80061d8:	2257      	movs	r2, #87	; 0x57
 80061da:	18bb      	adds	r3, r7, r2
 80061dc:	781b      	ldrb	r3, [r3, #0]
 80061de:	b25b      	sxtb	r3, r3
 80061e0:	2b00      	cmp	r3, #0
 80061e2:	d10a      	bne.n	80061fa <VL53L0X_perform_ref_spad_management+0x130>
 80061e4:	18bc      	adds	r4, r7, r2
 80061e6:	233a      	movs	r3, #58	; 0x3a
 80061e8:	18fb      	adds	r3, r7, r3
 80061ea:	781a      	ldrb	r2, [r3, #0]
 80061ec:	68fb      	ldr	r3, [r7, #12]
 80061ee:	21b6      	movs	r1, #182	; 0xb6
 80061f0:	0018      	movs	r0, r3
 80061f2:	f7fd fa11 	bl	8003618 <VL53L0X_WrByte>
 80061f6:	0003      	movs	r3, r0
 80061f8:	7023      	strb	r3, [r4, #0]
 80061fa:	2257      	movs	r2, #87	; 0x57
 80061fc:	18bb      	adds	r3, r7, r2
 80061fe:	781b      	ldrb	r3, [r3, #0]
 8006200:	b25b      	sxtb	r3, r3
 8006202:	2b00      	cmp	r3, #0
 8006204:	d108      	bne.n	8006218 <VL53L0X_perform_ref_spad_management+0x14e>
 8006206:	18bc      	adds	r4, r7, r2
 8006208:	68fb      	ldr	r3, [r7, #12]
 800620a:	2200      	movs	r2, #0
 800620c:	2180      	movs	r1, #128	; 0x80
 800620e:	0018      	movs	r0, r3
 8006210:	f7fd fa02 	bl	8003618 <VL53L0X_WrByte>
 8006214:	0003      	movs	r3, r0
 8006216:	7023      	strb	r3, [r4, #0]
 8006218:	2257      	movs	r2, #87	; 0x57
 800621a:	18bb      	adds	r3, r7, r2
 800621c:	781b      	ldrb	r3, [r3, #0]
 800621e:	b25b      	sxtb	r3, r3
 8006220:	2b00      	cmp	r3, #0
 8006222:	d10a      	bne.n	800623a <VL53L0X_perform_ref_spad_management+0x170>
 8006224:	18bc      	adds	r4, r7, r2
 8006226:	2310      	movs	r3, #16
 8006228:	18fa      	adds	r2, r7, r3
 800622a:	2311      	movs	r3, #17
 800622c:	18f9      	adds	r1, r7, r3
 800622e:	68f8      	ldr	r0, [r7, #12]
 8006230:	2300      	movs	r3, #0
 8006232:	f000 fc9f 	bl	8006b74 <VL53L0X_perform_ref_calibration>
 8006236:	0003      	movs	r3, r0
 8006238:	7023      	strb	r3, [r4, #0]
 800623a:	2257      	movs	r2, #87	; 0x57
 800623c:	18bb      	adds	r3, r7, r2
 800623e:	781b      	ldrb	r3, [r3, #0]
 8006240:	b25b      	sxtb	r3, r3
 8006242:	2b00      	cmp	r3, #0
 8006244:	d123      	bne.n	800628e <VL53L0X_perform_ref_spad_management+0x1c4>
 8006246:	2300      	movs	r3, #0
 8006248:	653b      	str	r3, [r7, #80]	; 0x50
 800624a:	6d3b      	ldr	r3, [r7, #80]	; 0x50
 800624c:	61bb      	str	r3, [r7, #24]
 800624e:	2300      	movs	r3, #0
 8006250:	64fb      	str	r3, [r7, #76]	; 0x4c
 8006252:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006254:	b2d9      	uxtb	r1, r3
 8006256:	68fb      	ldr	r3, [r7, #12]
 8006258:	330b      	adds	r3, #11
 800625a:	33ff      	adds	r3, #255	; 0xff
 800625c:	001d      	movs	r5, r3
 800625e:	68fb      	ldr	r3, [r7, #12]
 8006260:	1d5e      	adds	r6, r3, #5
 8006262:	36ff      	adds	r6, #255	; 0xff
 8006264:	233a      	movs	r3, #58	; 0x3a
 8006266:	18fb      	adds	r3, r7, r3
 8006268:	781b      	ldrb	r3, [r3, #0]
 800626a:	18bc      	adds	r4, r7, r2
 800626c:	68f8      	ldr	r0, [r7, #12]
 800626e:	2218      	movs	r2, #24
 8006270:	18ba      	adds	r2, r7, r2
 8006272:	9204      	str	r2, [sp, #16]
 8006274:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8006276:	9203      	str	r2, [sp, #12]
 8006278:	6d3a      	ldr	r2, [r7, #80]	; 0x50
 800627a:	9202      	str	r2, [sp, #8]
 800627c:	9301      	str	r3, [sp, #4]
 800627e:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8006280:	9300      	str	r3, [sp, #0]
 8006282:	0033      	movs	r3, r6
 8006284:	002a      	movs	r2, r5
 8006286:	f7ff fe11 	bl	8005eac <enable_ref_spads>
 800628a:	0003      	movs	r3, r0
 800628c:	7023      	strb	r3, [r4, #0]
 800628e:	2557      	movs	r5, #87	; 0x57
 8006290:	197b      	adds	r3, r7, r5
 8006292:	781b      	ldrb	r3, [r3, #0]
 8006294:	b25b      	sxtb	r3, r3
 8006296:	2b00      	cmp	r3, #0
 8006298:	d000      	beq.n	800629c <VL53L0X_perform_ref_spad_management+0x1d2>
 800629a:	e086      	b.n	80063aa <VL53L0X_perform_ref_spad_management+0x2e0>
 800629c:	69bb      	ldr	r3, [r7, #24]
 800629e:	653b      	str	r3, [r7, #80]	; 0x50
 80062a0:	197c      	adds	r4, r7, r5
 80062a2:	2612      	movs	r6, #18
 80062a4:	19ba      	adds	r2, r7, r6
 80062a6:	68fb      	ldr	r3, [r7, #12]
 80062a8:	0011      	movs	r1, r2
 80062aa:	0018      	movs	r0, r3
 80062ac:	f7ff fe8b 	bl	8005fc6 <perform_ref_signal_measurement>
 80062b0:	0003      	movs	r3, r0
 80062b2:	7023      	strb	r3, [r4, #0]
 80062b4:	197b      	adds	r3, r7, r5
 80062b6:	781b      	ldrb	r3, [r3, #0]
 80062b8:	b25b      	sxtb	r3, r3
 80062ba:	2b00      	cmp	r3, #0
 80062bc:	d000      	beq.n	80062c0 <VL53L0X_perform_ref_spad_management+0x1f6>
 80062be:	e070      	b.n	80063a2 <VL53L0X_perform_ref_spad_management+0x2d8>
 80062c0:	19bb      	adds	r3, r7, r6
 80062c2:	881b      	ldrh	r3, [r3, #0]
 80062c4:	222e      	movs	r2, #46	; 0x2e
 80062c6:	18ba      	adds	r2, r7, r2
 80062c8:	8812      	ldrh	r2, [r2, #0]
 80062ca:	429a      	cmp	r2, r3
 80062cc:	d269      	bcs.n	80063a2 <VL53L0X_perform_ref_spad_management+0x2d8>
 80062ce:	2300      	movs	r3, #0
 80062d0:	64bb      	str	r3, [r7, #72]	; 0x48
 80062d2:	e00a      	b.n	80062ea <VL53L0X_perform_ref_spad_management+0x220>
 80062d4:	68f9      	ldr	r1, [r7, #12]
 80062d6:	2382      	movs	r3, #130	; 0x82
 80062d8:	005b      	lsls	r3, r3, #1
 80062da:	6cba      	ldr	r2, [r7, #72]	; 0x48
 80062dc:	188a      	adds	r2, r1, r2
 80062de:	18d3      	adds	r3, r2, r3
 80062e0:	2200      	movs	r2, #0
 80062e2:	701a      	strb	r2, [r3, #0]
 80062e4:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 80062e6:	3301      	adds	r3, #1
 80062e8:	64bb      	str	r3, [r7, #72]	; 0x48
 80062ea:	6cba      	ldr	r2, [r7, #72]	; 0x48
 80062ec:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80062ee:	429a      	cmp	r2, r3
 80062f0:	d3f0      	bcc.n	80062d4 <VL53L0X_perform_ref_spad_management+0x20a>
 80062f2:	e002      	b.n	80062fa <VL53L0X_perform_ref_spad_management+0x230>
 80062f4:	6d3b      	ldr	r3, [r7, #80]	; 0x50
 80062f6:	3301      	adds	r3, #1
 80062f8:	653b      	str	r3, [r7, #80]	; 0x50
 80062fa:	233a      	movs	r3, #58	; 0x3a
 80062fc:	18fb      	adds	r3, r7, r3
 80062fe:	781a      	ldrb	r2, [r3, #0]
 8006300:	6d3b      	ldr	r3, [r7, #80]	; 0x50
 8006302:	18d3      	adds	r3, r2, r3
 8006304:	0018      	movs	r0, r3
 8006306:	f7ff fd4d 	bl	8005da4 <is_aperture>
 800630a:	1e03      	subs	r3, r0, #0
 800630c:	d103      	bne.n	8006316 <VL53L0X_perform_ref_spad_management+0x24c>
 800630e:	6d3a      	ldr	r2, [r7, #80]	; 0x50
 8006310:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8006312:	429a      	cmp	r2, r3
 8006314:	d3ee      	bcc.n	80062f4 <VL53L0X_perform_ref_spad_management+0x22a>
 8006316:	2301      	movs	r3, #1
 8006318:	64fb      	str	r3, [r7, #76]	; 0x4c
 800631a:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800631c:	b2d9      	uxtb	r1, r3
 800631e:	68fb      	ldr	r3, [r7, #12]
 8006320:	330b      	adds	r3, #11
 8006322:	33ff      	adds	r3, #255	; 0xff
 8006324:	001d      	movs	r5, r3
 8006326:	68fb      	ldr	r3, [r7, #12]
 8006328:	1d5e      	adds	r6, r3, #5
 800632a:	36ff      	adds	r6, #255	; 0xff
 800632c:	233a      	movs	r3, #58	; 0x3a
 800632e:	18fb      	adds	r3, r7, r3
 8006330:	781b      	ldrb	r3, [r3, #0]
 8006332:	2257      	movs	r2, #87	; 0x57
 8006334:	18bc      	adds	r4, r7, r2
 8006336:	68f8      	ldr	r0, [r7, #12]
 8006338:	2218      	movs	r2, #24
 800633a:	18ba      	adds	r2, r7, r2
 800633c:	9204      	str	r2, [sp, #16]
 800633e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8006340:	9203      	str	r2, [sp, #12]
 8006342:	6d3a      	ldr	r2, [r7, #80]	; 0x50
 8006344:	9202      	str	r2, [sp, #8]
 8006346:	9301      	str	r3, [sp, #4]
 8006348:	6abb      	ldr	r3, [r7, #40]	; 0x28
 800634a:	9300      	str	r3, [sp, #0]
 800634c:	0033      	movs	r3, r6
 800634e:	002a      	movs	r2, r5
 8006350:	f7ff fdac 	bl	8005eac <enable_ref_spads>
 8006354:	0003      	movs	r3, r0
 8006356:	7023      	strb	r3, [r4, #0]
 8006358:	2557      	movs	r5, #87	; 0x57
 800635a:	197b      	adds	r3, r7, r5
 800635c:	781b      	ldrb	r3, [r3, #0]
 800635e:	b25b      	sxtb	r3, r3
 8006360:	2b00      	cmp	r3, #0
 8006362:	d121      	bne.n	80063a8 <VL53L0X_perform_ref_spad_management+0x2de>
 8006364:	69bb      	ldr	r3, [r7, #24]
 8006366:	653b      	str	r3, [r7, #80]	; 0x50
 8006368:	197c      	adds	r4, r7, r5
 800636a:	2612      	movs	r6, #18
 800636c:	19ba      	adds	r2, r7, r6
 800636e:	68fb      	ldr	r3, [r7, #12]
 8006370:	0011      	movs	r1, r2
 8006372:	0018      	movs	r0, r3
 8006374:	f7ff fe27 	bl	8005fc6 <perform_ref_signal_measurement>
 8006378:	0003      	movs	r3, r0
 800637a:	7023      	strb	r3, [r4, #0]
 800637c:	197b      	adds	r3, r7, r5
 800637e:	781b      	ldrb	r3, [r3, #0]
 8006380:	b25b      	sxtb	r3, r3
 8006382:	2b00      	cmp	r3, #0
 8006384:	d110      	bne.n	80063a8 <VL53L0X_perform_ref_spad_management+0x2de>
 8006386:	19bb      	adds	r3, r7, r6
 8006388:	881b      	ldrh	r3, [r3, #0]
 800638a:	222e      	movs	r2, #46	; 0x2e
 800638c:	18ba      	adds	r2, r7, r2
 800638e:	8812      	ldrh	r2, [r2, #0]
 8006390:	429a      	cmp	r2, r3
 8006392:	d209      	bcs.n	80063a8 <VL53L0X_perform_ref_spad_management+0x2de>
 8006394:	233b      	movs	r3, #59	; 0x3b
 8006396:	18fb      	adds	r3, r7, r3
 8006398:	2201      	movs	r2, #1
 800639a:	701a      	strb	r2, [r3, #0]
 800639c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800639e:	63fb      	str	r3, [r7, #60]	; 0x3c
 80063a0:	e002      	b.n	80063a8 <VL53L0X_perform_ref_spad_management+0x2de>
 80063a2:	2300      	movs	r3, #0
 80063a4:	64fb      	str	r3, [r7, #76]	; 0x4c
 80063a6:	e000      	b.n	80063aa <VL53L0X_perform_ref_spad_management+0x2e0>
 80063a8:	46c0      	nop			; (mov r8, r8)
 80063aa:	2357      	movs	r3, #87	; 0x57
 80063ac:	18fb      	adds	r3, r7, r3
 80063ae:	781b      	ldrb	r3, [r3, #0]
 80063b0:	b25b      	sxtb	r3, r3
 80063b2:	2b00      	cmp	r3, #0
 80063b4:	d000      	beq.n	80063b8 <VL53L0X_perform_ref_spad_management+0x2ee>
 80063b6:	e0ca      	b.n	800654e <VL53L0X_perform_ref_spad_management+0x484>
 80063b8:	2412      	movs	r4, #18
 80063ba:	193b      	adds	r3, r7, r4
 80063bc:	881b      	ldrh	r3, [r3, #0]
 80063be:	252e      	movs	r5, #46	; 0x2e
 80063c0:	197a      	adds	r2, r7, r5
 80063c2:	8812      	ldrh	r2, [r2, #0]
 80063c4:	429a      	cmp	r2, r3
 80063c6:	d800      	bhi.n	80063ca <VL53L0X_perform_ref_spad_management+0x300>
 80063c8:	e0c1      	b.n	800654e <VL53L0X_perform_ref_spad_management+0x484>
 80063ca:	233b      	movs	r3, #59	; 0x3b
 80063cc:	18fb      	adds	r3, r7, r3
 80063ce:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 80063d0:	701a      	strb	r2, [r3, #0]
 80063d2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80063d4:	63fb      	str	r3, [r7, #60]	; 0x3c
 80063d6:	68fb      	ldr	r3, [r7, #12]
 80063d8:	1d59      	adds	r1, r3, #5
 80063da:	31ff      	adds	r1, #255	; 0xff
 80063dc:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80063de:	231c      	movs	r3, #28
 80063e0:	18fb      	adds	r3, r7, r3
 80063e2:	0018      	movs	r0, r3
 80063e4:	f002 ff26 	bl	8009234 <memcpy>
 80063e8:	193b      	adds	r3, r7, r4
 80063ea:	881b      	ldrh	r3, [r3, #0]
 80063ec:	001a      	movs	r2, r3
 80063ee:	197b      	adds	r3, r7, r5
 80063f0:	881b      	ldrh	r3, [r3, #0]
 80063f2:	1ad3      	subs	r3, r2, r3
 80063f4:	17da      	asrs	r2, r3, #31
 80063f6:	189b      	adds	r3, r3, r2
 80063f8:	4053      	eors	r3, r2
 80063fa:	647b      	str	r3, [r7, #68]	; 0x44
 80063fc:	2343      	movs	r3, #67	; 0x43
 80063fe:	18fb      	adds	r3, r7, r3
 8006400:	2200      	movs	r2, #0
 8006402:	701a      	strb	r2, [r3, #0]
 8006404:	e099      	b.n	800653a <VL53L0X_perform_ref_spad_management+0x470>
 8006406:	68fb      	ldr	r3, [r7, #12]
 8006408:	330b      	adds	r3, #11
 800640a:	33ff      	adds	r3, #255	; 0xff
 800640c:	0018      	movs	r0, r3
 800640e:	2314      	movs	r3, #20
 8006410:	18fb      	adds	r3, r7, r3
 8006412:	6d3a      	ldr	r2, [r7, #80]	; 0x50
 8006414:	6ab9      	ldr	r1, [r7, #40]	; 0x28
 8006416:	f7ff fc5d 	bl	8005cd4 <get_next_good_spad>
 800641a:	697b      	ldr	r3, [r7, #20]
 800641c:	3301      	adds	r3, #1
 800641e:	d104      	bne.n	800642a <VL53L0X_perform_ref_spad_management+0x360>
 8006420:	2357      	movs	r3, #87	; 0x57
 8006422:	18fb      	adds	r3, r7, r3
 8006424:	22ce      	movs	r2, #206	; 0xce
 8006426:	701a      	strb	r2, [r3, #0]
 8006428:	e091      	b.n	800654e <VL53L0X_perform_ref_spad_management+0x484>
 800642a:	233a      	movs	r3, #58	; 0x3a
 800642c:	18fb      	adds	r3, r7, r3
 800642e:	781b      	ldrb	r3, [r3, #0]
 8006430:	697a      	ldr	r2, [r7, #20]
 8006432:	189b      	adds	r3, r3, r2
 8006434:	0018      	movs	r0, r3
 8006436:	f7ff fcb5 	bl	8005da4 <is_aperture>
 800643a:	0003      	movs	r3, r0
 800643c:	001a      	movs	r2, r3
 800643e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006440:	4293      	cmp	r3, r2
 8006442:	d004      	beq.n	800644e <VL53L0X_perform_ref_spad_management+0x384>
 8006444:	2343      	movs	r3, #67	; 0x43
 8006446:	18fb      	adds	r3, r7, r3
 8006448:	2201      	movs	r2, #1
 800644a:	701a      	strb	r2, [r3, #0]
 800644c:	e07f      	b.n	800654e <VL53L0X_perform_ref_spad_management+0x484>
 800644e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8006450:	3301      	adds	r3, #1
 8006452:	63fb      	str	r3, [r7, #60]	; 0x3c
 8006454:	697b      	ldr	r3, [r7, #20]
 8006456:	653b      	str	r3, [r7, #80]	; 0x50
 8006458:	68fb      	ldr	r3, [r7, #12]
 800645a:	3305      	adds	r3, #5
 800645c:	33ff      	adds	r3, #255	; 0xff
 800645e:	2557      	movs	r5, #87	; 0x57
 8006460:	197c      	adds	r4, r7, r5
 8006462:	6d3a      	ldr	r2, [r7, #80]	; 0x50
 8006464:	6ab9      	ldr	r1, [r7, #40]	; 0x28
 8006466:	0018      	movs	r0, r3
 8006468:	f7ff fcba 	bl	8005de0 <enable_spad_bit>
 800646c:	0003      	movs	r3, r0
 800646e:	7023      	strb	r3, [r4, #0]
 8006470:	0029      	movs	r1, r5
 8006472:	187b      	adds	r3, r7, r1
 8006474:	781b      	ldrb	r3, [r3, #0]
 8006476:	b25b      	sxtb	r3, r3
 8006478:	2b00      	cmp	r3, #0
 800647a:	d10d      	bne.n	8006498 <VL53L0X_perform_ref_spad_management+0x3ce>
 800647c:	6d3b      	ldr	r3, [r7, #80]	; 0x50
 800647e:	3301      	adds	r3, #1
 8006480:	653b      	str	r3, [r7, #80]	; 0x50
 8006482:	68fb      	ldr	r3, [r7, #12]
 8006484:	1d5a      	adds	r2, r3, #5
 8006486:	32ff      	adds	r2, #255	; 0xff
 8006488:	187c      	adds	r4, r7, r1
 800648a:	68fb      	ldr	r3, [r7, #12]
 800648c:	0011      	movs	r1, r2
 800648e:	0018      	movs	r0, r3
 8006490:	f7ff fce0 	bl	8005e54 <set_ref_spad_map>
 8006494:	0003      	movs	r3, r0
 8006496:	7023      	strb	r3, [r4, #0]
 8006498:	2557      	movs	r5, #87	; 0x57
 800649a:	197b      	adds	r3, r7, r5
 800649c:	781b      	ldrb	r3, [r3, #0]
 800649e:	b25b      	sxtb	r3, r3
 80064a0:	2b00      	cmp	r3, #0
 80064a2:	d151      	bne.n	8006548 <VL53L0X_perform_ref_spad_management+0x47e>
 80064a4:	197c      	adds	r4, r7, r5
 80064a6:	2612      	movs	r6, #18
 80064a8:	19ba      	adds	r2, r7, r6
 80064aa:	68fb      	ldr	r3, [r7, #12]
 80064ac:	0011      	movs	r1, r2
 80064ae:	0018      	movs	r0, r3
 80064b0:	f7ff fd89 	bl	8005fc6 <perform_ref_signal_measurement>
 80064b4:	0003      	movs	r3, r0
 80064b6:	7023      	strb	r3, [r4, #0]
 80064b8:	0029      	movs	r1, r5
 80064ba:	187b      	adds	r3, r7, r1
 80064bc:	781b      	ldrb	r3, [r3, #0]
 80064be:	b25b      	sxtb	r3, r3
 80064c0:	2b00      	cmp	r3, #0
 80064c2:	d143      	bne.n	800654c <VL53L0X_perform_ref_spad_management+0x482>
 80064c4:	0030      	movs	r0, r6
 80064c6:	183b      	adds	r3, r7, r0
 80064c8:	881b      	ldrh	r3, [r3, #0]
 80064ca:	001a      	movs	r2, r3
 80064cc:	242e      	movs	r4, #46	; 0x2e
 80064ce:	193b      	adds	r3, r7, r4
 80064d0:	881b      	ldrh	r3, [r3, #0]
 80064d2:	1ad3      	subs	r3, r2, r3
 80064d4:	17da      	asrs	r2, r3, #31
 80064d6:	189b      	adds	r3, r3, r2
 80064d8:	4053      	eors	r3, r2
 80064da:	627b      	str	r3, [r7, #36]	; 0x24
 80064dc:	183b      	adds	r3, r7, r0
 80064de:	881b      	ldrh	r3, [r3, #0]
 80064e0:	193a      	adds	r2, r7, r4
 80064e2:	8812      	ldrh	r2, [r2, #0]
 80064e4:	429a      	cmp	r2, r3
 80064e6:	d21d      	bcs.n	8006524 <VL53L0X_perform_ref_spad_management+0x45a>
 80064e8:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 80064ea:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80064ec:	429a      	cmp	r2, r3
 80064ee:	d914      	bls.n	800651a <VL53L0X_perform_ref_spad_management+0x450>
 80064f0:	187c      	adds	r4, r7, r1
 80064f2:	251c      	movs	r5, #28
 80064f4:	197a      	adds	r2, r7, r5
 80064f6:	68fb      	ldr	r3, [r7, #12]
 80064f8:	0011      	movs	r1, r2
 80064fa:	0018      	movs	r0, r3
 80064fc:	f7ff fcaa 	bl	8005e54 <set_ref_spad_map>
 8006500:	0003      	movs	r3, r0
 8006502:	7023      	strb	r3, [r4, #0]
 8006504:	68fb      	ldr	r3, [r7, #12]
 8006506:	3305      	adds	r3, #5
 8006508:	33ff      	adds	r3, #255	; 0xff
 800650a:	6aba      	ldr	r2, [r7, #40]	; 0x28
 800650c:	1979      	adds	r1, r7, r5
 800650e:	0018      	movs	r0, r3
 8006510:	f002 fe90 	bl	8009234 <memcpy>
 8006514:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8006516:	3b01      	subs	r3, #1
 8006518:	63fb      	str	r3, [r7, #60]	; 0x3c
 800651a:	2343      	movs	r3, #67	; 0x43
 800651c:	18fb      	adds	r3, r7, r3
 800651e:	2201      	movs	r2, #1
 8006520:	701a      	strb	r2, [r3, #0]
 8006522:	e00a      	b.n	800653a <VL53L0X_perform_ref_spad_management+0x470>
 8006524:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006526:	647b      	str	r3, [r7, #68]	; 0x44
 8006528:	68fb      	ldr	r3, [r7, #12]
 800652a:	1d59      	adds	r1, r3, #5
 800652c:	31ff      	adds	r1, #255	; 0xff
 800652e:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8006530:	231c      	movs	r3, #28
 8006532:	18fb      	adds	r3, r7, r3
 8006534:	0018      	movs	r0, r3
 8006536:	f002 fe7d 	bl	8009234 <memcpy>
 800653a:	2343      	movs	r3, #67	; 0x43
 800653c:	18fb      	adds	r3, r7, r3
 800653e:	781b      	ldrb	r3, [r3, #0]
 8006540:	2b00      	cmp	r3, #0
 8006542:	d100      	bne.n	8006546 <VL53L0X_perform_ref_spad_management+0x47c>
 8006544:	e75f      	b.n	8006406 <VL53L0X_perform_ref_spad_management+0x33c>
 8006546:	e002      	b.n	800654e <VL53L0X_perform_ref_spad_management+0x484>
 8006548:	46c0      	nop			; (mov r8, r8)
 800654a:	e000      	b.n	800654e <VL53L0X_perform_ref_spad_management+0x484>
 800654c:	46c0      	nop			; (mov r8, r8)
 800654e:	2357      	movs	r3, #87	; 0x57
 8006550:	18fb      	adds	r3, r7, r3
 8006552:	781b      	ldrb	r3, [r3, #0]
 8006554:	b25b      	sxtb	r3, r3
 8006556:	2b00      	cmp	r3, #0
 8006558:	d116      	bne.n	8006588 <VL53L0X_perform_ref_spad_management+0x4be>
 800655a:	68bb      	ldr	r3, [r7, #8]
 800655c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
 800655e:	601a      	str	r2, [r3, #0]
 8006560:	687b      	ldr	r3, [r7, #4]
 8006562:	223b      	movs	r2, #59	; 0x3b
 8006564:	18ba      	adds	r2, r7, r2
 8006566:	7812      	ldrb	r2, [r2, #0]
 8006568:	701a      	strb	r2, [r3, #0]
 800656a:	68fb      	ldr	r3, [r7, #12]
 800656c:	22f5      	movs	r2, #245	; 0xf5
 800656e:	2101      	movs	r1, #1
 8006570:	5499      	strb	r1, [r3, r2]
 8006572:	68bb      	ldr	r3, [r7, #8]
 8006574:	681b      	ldr	r3, [r3, #0]
 8006576:	b2d9      	uxtb	r1, r3
 8006578:	68fb      	ldr	r3, [r7, #12]
 800657a:	22f3      	movs	r2, #243	; 0xf3
 800657c:	5499      	strb	r1, [r3, r2]
 800657e:	687b      	ldr	r3, [r7, #4]
 8006580:	7819      	ldrb	r1, [r3, #0]
 8006582:	68fb      	ldr	r3, [r7, #12]
 8006584:	22f4      	movs	r2, #244	; 0xf4
 8006586:	5499      	strb	r1, [r3, r2]
 8006588:	2357      	movs	r3, #87	; 0x57
 800658a:	18fb      	adds	r3, r7, r3
 800658c:	781b      	ldrb	r3, [r3, #0]
 800658e:	b25b      	sxtb	r3, r3
 8006590:	0018      	movs	r0, r3
 8006592:	46bd      	mov	sp, r7
 8006594:	b017      	add	sp, #92	; 0x5c
 8006596:	bdf0      	pop	{r4, r5, r6, r7, pc}

08006598 <VL53L0X_set_reference_spads>:
 8006598:	b5f0      	push	{r4, r5, r6, r7, lr}
 800659a:	b093      	sub	sp, #76	; 0x4c
 800659c:	af06      	add	r7, sp, #24
 800659e:	60f8      	str	r0, [r7, #12]
 80065a0:	60b9      	str	r1, [r7, #8]
 80065a2:	1dfb      	adds	r3, r7, #7
 80065a4:	701a      	strb	r2, [r3, #0]
 80065a6:	212f      	movs	r1, #47	; 0x2f
 80065a8:	187b      	adds	r3, r7, r1
 80065aa:	2200      	movs	r2, #0
 80065ac:	701a      	strb	r2, [r3, #0]
 80065ae:	2300      	movs	r3, #0
 80065b0:	62bb      	str	r3, [r7, #40]	; 0x28
 80065b2:	2323      	movs	r3, #35	; 0x23
 80065b4:	18fb      	adds	r3, r7, r3
 80065b6:	22b4      	movs	r2, #180	; 0xb4
 80065b8:	701a      	strb	r2, [r3, #0]
 80065ba:	2306      	movs	r3, #6
 80065bc:	61fb      	str	r3, [r7, #28]
 80065be:	232c      	movs	r3, #44	; 0x2c
 80065c0:	61bb      	str	r3, [r7, #24]
 80065c2:	000d      	movs	r5, r1
 80065c4:	187c      	adds	r4, r7, r1
 80065c6:	68fb      	ldr	r3, [r7, #12]
 80065c8:	2201      	movs	r2, #1
 80065ca:	21ff      	movs	r1, #255	; 0xff
 80065cc:	0018      	movs	r0, r3
 80065ce:	f7fd f823 	bl	8003618 <VL53L0X_WrByte>
 80065d2:	0003      	movs	r3, r0
 80065d4:	7023      	strb	r3, [r4, #0]
 80065d6:	197b      	adds	r3, r7, r5
 80065d8:	781b      	ldrb	r3, [r3, #0]
 80065da:	b25b      	sxtb	r3, r3
 80065dc:	2b00      	cmp	r3, #0
 80065de:	d108      	bne.n	80065f2 <VL53L0X_set_reference_spads+0x5a>
 80065e0:	197c      	adds	r4, r7, r5
 80065e2:	68fb      	ldr	r3, [r7, #12]
 80065e4:	2200      	movs	r2, #0
 80065e6:	214f      	movs	r1, #79	; 0x4f
 80065e8:	0018      	movs	r0, r3
 80065ea:	f7fd f815 	bl	8003618 <VL53L0X_WrByte>
 80065ee:	0003      	movs	r3, r0
 80065f0:	7023      	strb	r3, [r4, #0]
 80065f2:	222f      	movs	r2, #47	; 0x2f
 80065f4:	18bb      	adds	r3, r7, r2
 80065f6:	781b      	ldrb	r3, [r3, #0]
 80065f8:	b25b      	sxtb	r3, r3
 80065fa:	2b00      	cmp	r3, #0
 80065fc:	d108      	bne.n	8006610 <VL53L0X_set_reference_spads+0x78>
 80065fe:	18bc      	adds	r4, r7, r2
 8006600:	68fb      	ldr	r3, [r7, #12]
 8006602:	222c      	movs	r2, #44	; 0x2c
 8006604:	214e      	movs	r1, #78	; 0x4e
 8006606:	0018      	movs	r0, r3
 8006608:	f7fd f806 	bl	8003618 <VL53L0X_WrByte>
 800660c:	0003      	movs	r3, r0
 800660e:	7023      	strb	r3, [r4, #0]
 8006610:	222f      	movs	r2, #47	; 0x2f
 8006612:	18bb      	adds	r3, r7, r2
 8006614:	781b      	ldrb	r3, [r3, #0]
 8006616:	b25b      	sxtb	r3, r3
 8006618:	2b00      	cmp	r3, #0
 800661a:	d108      	bne.n	800662e <VL53L0X_set_reference_spads+0x96>
 800661c:	18bc      	adds	r4, r7, r2
 800661e:	68fb      	ldr	r3, [r7, #12]
 8006620:	2200      	movs	r2, #0
 8006622:	21ff      	movs	r1, #255	; 0xff
 8006624:	0018      	movs	r0, r3
 8006626:	f7fc fff7 	bl	8003618 <VL53L0X_WrByte>
 800662a:	0003      	movs	r3, r0
 800662c:	7023      	strb	r3, [r4, #0]
 800662e:	222f      	movs	r2, #47	; 0x2f
 8006630:	18bb      	adds	r3, r7, r2
 8006632:	781b      	ldrb	r3, [r3, #0]
 8006634:	b25b      	sxtb	r3, r3
 8006636:	2b00      	cmp	r3, #0
 8006638:	d10a      	bne.n	8006650 <VL53L0X_set_reference_spads+0xb8>
 800663a:	18bc      	adds	r4, r7, r2
 800663c:	2323      	movs	r3, #35	; 0x23
 800663e:	18fb      	adds	r3, r7, r3
 8006640:	781a      	ldrb	r2, [r3, #0]
 8006642:	68fb      	ldr	r3, [r7, #12]
 8006644:	21b6      	movs	r1, #182	; 0xb6
 8006646:	0018      	movs	r0, r3
 8006648:	f7fc ffe6 	bl	8003618 <VL53L0X_WrByte>
 800664c:	0003      	movs	r3, r0
 800664e:	7023      	strb	r3, [r4, #0]
 8006650:	2300      	movs	r3, #0
 8006652:	627b      	str	r3, [r7, #36]	; 0x24
 8006654:	e00a      	b.n	800666c <VL53L0X_set_reference_spads+0xd4>
 8006656:	68f9      	ldr	r1, [r7, #12]
 8006658:	2382      	movs	r3, #130	; 0x82
 800665a:	005b      	lsls	r3, r3, #1
 800665c:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 800665e:	188a      	adds	r2, r1, r2
 8006660:	18d3      	adds	r3, r2, r3
 8006662:	2200      	movs	r2, #0
 8006664:	701a      	strb	r2, [r3, #0]
 8006666:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006668:	3301      	adds	r3, #1
 800666a:	627b      	str	r3, [r7, #36]	; 0x24
 800666c:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 800666e:	69fb      	ldr	r3, [r7, #28]
 8006670:	429a      	cmp	r2, r3
 8006672:	d3f0      	bcc.n	8006656 <VL53L0X_set_reference_spads+0xbe>
 8006674:	1dfb      	adds	r3, r7, #7
 8006676:	781b      	ldrb	r3, [r3, #0]
 8006678:	2b00      	cmp	r3, #0
 800667a:	d011      	beq.n	80066a0 <VL53L0X_set_reference_spads+0x108>
 800667c:	e002      	b.n	8006684 <VL53L0X_set_reference_spads+0xec>
 800667e:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8006680:	3301      	adds	r3, #1
 8006682:	62bb      	str	r3, [r7, #40]	; 0x28
 8006684:	2323      	movs	r3, #35	; 0x23
 8006686:	18fb      	adds	r3, r7, r3
 8006688:	781a      	ldrb	r2, [r3, #0]
 800668a:	6abb      	ldr	r3, [r7, #40]	; 0x28
 800668c:	18d3      	adds	r3, r2, r3
 800668e:	0018      	movs	r0, r3
 8006690:	f7ff fb88 	bl	8005da4 <is_aperture>
 8006694:	1e03      	subs	r3, r0, #0
 8006696:	d103      	bne.n	80066a0 <VL53L0X_set_reference_spads+0x108>
 8006698:	6aba      	ldr	r2, [r7, #40]	; 0x28
 800669a:	69bb      	ldr	r3, [r7, #24]
 800669c:	429a      	cmp	r2, r3
 800669e:	d3ee      	bcc.n	800667e <VL53L0X_set_reference_spads+0xe6>
 80066a0:	68fb      	ldr	r3, [r7, #12]
 80066a2:	330b      	adds	r3, #11
 80066a4:	33ff      	adds	r3, #255	; 0xff
 80066a6:	001d      	movs	r5, r3
 80066a8:	68fb      	ldr	r3, [r7, #12]
 80066aa:	1d5e      	adds	r6, r3, #5
 80066ac:	36ff      	adds	r6, #255	; 0xff
 80066ae:	2323      	movs	r3, #35	; 0x23
 80066b0:	18fb      	adds	r3, r7, r3
 80066b2:	781b      	ldrb	r3, [r3, #0]
 80066b4:	222f      	movs	r2, #47	; 0x2f
 80066b6:	18bc      	adds	r4, r7, r2
 80066b8:	1dfa      	adds	r2, r7, #7
 80066ba:	7811      	ldrb	r1, [r2, #0]
 80066bc:	68f8      	ldr	r0, [r7, #12]
 80066be:	2214      	movs	r2, #20
 80066c0:	18ba      	adds	r2, r7, r2
 80066c2:	9204      	str	r2, [sp, #16]
 80066c4:	68ba      	ldr	r2, [r7, #8]
 80066c6:	9203      	str	r2, [sp, #12]
 80066c8:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80066ca:	9202      	str	r2, [sp, #8]
 80066cc:	9301      	str	r3, [sp, #4]
 80066ce:	69fb      	ldr	r3, [r7, #28]
 80066d0:	9300      	str	r3, [sp, #0]
 80066d2:	0033      	movs	r3, r6
 80066d4:	002a      	movs	r2, r5
 80066d6:	f7ff fbe9 	bl	8005eac <enable_ref_spads>
 80066da:	0003      	movs	r3, r0
 80066dc:	7023      	strb	r3, [r4, #0]
 80066de:	222f      	movs	r2, #47	; 0x2f
 80066e0:	18bb      	adds	r3, r7, r2
 80066e2:	781b      	ldrb	r3, [r3, #0]
 80066e4:	b25b      	sxtb	r3, r3
 80066e6:	2b00      	cmp	r3, #0
 80066e8:	d10d      	bne.n	8006706 <VL53L0X_set_reference_spads+0x16e>
 80066ea:	68fb      	ldr	r3, [r7, #12]
 80066ec:	22f5      	movs	r2, #245	; 0xf5
 80066ee:	2101      	movs	r1, #1
 80066f0:	5499      	strb	r1, [r3, r2]
 80066f2:	68bb      	ldr	r3, [r7, #8]
 80066f4:	b2d9      	uxtb	r1, r3
 80066f6:	68fb      	ldr	r3, [r7, #12]
 80066f8:	22f3      	movs	r2, #243	; 0xf3
 80066fa:	5499      	strb	r1, [r3, r2]
 80066fc:	68fb      	ldr	r3, [r7, #12]
 80066fe:	1dfa      	adds	r2, r7, #7
 8006700:	21f4      	movs	r1, #244	; 0xf4
 8006702:	7812      	ldrb	r2, [r2, #0]
 8006704:	545a      	strb	r2, [r3, r1]
 8006706:	232f      	movs	r3, #47	; 0x2f
 8006708:	18fb      	adds	r3, r7, r3
 800670a:	781b      	ldrb	r3, [r3, #0]
 800670c:	b25b      	sxtb	r3, r3
 800670e:	0018      	movs	r0, r3
 8006710:	46bd      	mov	sp, r7
 8006712:	b00d      	add	sp, #52	; 0x34
 8006714:	bdf0      	pop	{r4, r5, r6, r7, pc}

08006716 <VL53L0X_perform_single_ref_calibration>:
 8006716:	b590      	push	{r4, r7, lr}
 8006718:	b085      	sub	sp, #20
 800671a:	af00      	add	r7, sp, #0
 800671c:	6078      	str	r0, [r7, #4]
 800671e:	000a      	movs	r2, r1
 8006720:	1cfb      	adds	r3, r7, #3
 8006722:	701a      	strb	r2, [r3, #0]
 8006724:	210f      	movs	r1, #15
 8006726:	187b      	adds	r3, r7, r1
 8006728:	2200      	movs	r2, #0
 800672a:	701a      	strb	r2, [r3, #0]
 800672c:	187b      	adds	r3, r7, r1
 800672e:	781b      	ldrb	r3, [r3, #0]
 8006730:	b25b      	sxtb	r3, r3
 8006732:	2b00      	cmp	r3, #0
 8006734:	d10c      	bne.n	8006750 <VL53L0X_perform_single_ref_calibration+0x3a>
 8006736:	1cfb      	adds	r3, r7, #3
 8006738:	781b      	ldrb	r3, [r3, #0]
 800673a:	2201      	movs	r2, #1
 800673c:	4313      	orrs	r3, r2
 800673e:	b2da      	uxtb	r2, r3
 8006740:	187c      	adds	r4, r7, r1
 8006742:	687b      	ldr	r3, [r7, #4]
 8006744:	2100      	movs	r1, #0
 8006746:	0018      	movs	r0, r3
 8006748:	f7fc ff66 	bl	8003618 <VL53L0X_WrByte>
 800674c:	0003      	movs	r3, r0
 800674e:	7023      	strb	r3, [r4, #0]
 8006750:	220f      	movs	r2, #15
 8006752:	18bb      	adds	r3, r7, r2
 8006754:	781b      	ldrb	r3, [r3, #0]
 8006756:	b25b      	sxtb	r3, r3
 8006758:	2b00      	cmp	r3, #0
 800675a:	d106      	bne.n	800676a <VL53L0X_perform_single_ref_calibration+0x54>
 800675c:	18bc      	adds	r4, r7, r2
 800675e:	687b      	ldr	r3, [r7, #4]
 8006760:	0018      	movs	r0, r3
 8006762:	f000 fa5c 	bl	8006c1e <VL53L0X_measurement_poll_for_completion>
 8006766:	0003      	movs	r3, r0
 8006768:	7023      	strb	r3, [r4, #0]
 800676a:	220f      	movs	r2, #15
 800676c:	18bb      	adds	r3, r7, r2
 800676e:	781b      	ldrb	r3, [r3, #0]
 8006770:	b25b      	sxtb	r3, r3
 8006772:	2b00      	cmp	r3, #0
 8006774:	d107      	bne.n	8006786 <VL53L0X_perform_single_ref_calibration+0x70>
 8006776:	18bc      	adds	r4, r7, r2
 8006778:	687b      	ldr	r3, [r7, #4]
 800677a:	2100      	movs	r1, #0
 800677c:	0018      	movs	r0, r3
 800677e:	f7ff f9b5 	bl	8005aec <VL53L0X_ClearInterruptMask>
 8006782:	0003      	movs	r3, r0
 8006784:	7023      	strb	r3, [r4, #0]
 8006786:	220f      	movs	r2, #15
 8006788:	18bb      	adds	r3, r7, r2
 800678a:	781b      	ldrb	r3, [r3, #0]
 800678c:	b25b      	sxtb	r3, r3
 800678e:	2b00      	cmp	r3, #0
 8006790:	d108      	bne.n	80067a4 <VL53L0X_perform_single_ref_calibration+0x8e>
 8006792:	18bc      	adds	r4, r7, r2
 8006794:	687b      	ldr	r3, [r7, #4]
 8006796:	2200      	movs	r2, #0
 8006798:	2100      	movs	r1, #0
 800679a:	0018      	movs	r0, r3
 800679c:	f7fc ff3c 	bl	8003618 <VL53L0X_WrByte>
 80067a0:	0003      	movs	r3, r0
 80067a2:	7023      	strb	r3, [r4, #0]
 80067a4:	230f      	movs	r3, #15
 80067a6:	18fb      	adds	r3, r7, r3
 80067a8:	781b      	ldrb	r3, [r3, #0]
 80067aa:	b25b      	sxtb	r3, r3
 80067ac:	0018      	movs	r0, r3
 80067ae:	46bd      	mov	sp, r7
 80067b0:	b005      	add	sp, #20
 80067b2:	bd90      	pop	{r4, r7, pc}

080067b4 <VL53L0X_ref_calibration_io>:
 80067b4:	b590      	push	{r4, r7, lr}
 80067b6:	b085      	sub	sp, #20
 80067b8:	af00      	add	r7, sp, #0
 80067ba:	6078      	str	r0, [r7, #4]
 80067bc:	000c      	movs	r4, r1
 80067be:	0010      	movs	r0, r2
 80067c0:	0019      	movs	r1, r3
 80067c2:	1cfb      	adds	r3, r7, #3
 80067c4:	1c22      	adds	r2, r4, #0
 80067c6:	701a      	strb	r2, [r3, #0]
 80067c8:	1cbb      	adds	r3, r7, #2
 80067ca:	1c02      	adds	r2, r0, #0
 80067cc:	701a      	strb	r2, [r3, #0]
 80067ce:	1c7b      	adds	r3, r7, #1
 80067d0:	1c0a      	adds	r2, r1, #0
 80067d2:	701a      	strb	r2, [r3, #0]
 80067d4:	240f      	movs	r4, #15
 80067d6:	193b      	adds	r3, r7, r4
 80067d8:	2200      	movs	r2, #0
 80067da:	701a      	strb	r2, [r3, #0]
 80067dc:	230e      	movs	r3, #14
 80067de:	18fb      	adds	r3, r7, r3
 80067e0:	2200      	movs	r2, #0
 80067e2:	701a      	strb	r2, [r3, #0]
 80067e4:	687b      	ldr	r3, [r7, #4]
 80067e6:	2201      	movs	r2, #1
 80067e8:	21ff      	movs	r1, #255	; 0xff
 80067ea:	0018      	movs	r0, r3
 80067ec:	f7fc ff14 	bl	8003618 <VL53L0X_WrByte>
 80067f0:	0003      	movs	r3, r0
 80067f2:	0019      	movs	r1, r3
 80067f4:	193b      	adds	r3, r7, r4
 80067f6:	193a      	adds	r2, r7, r4
 80067f8:	7812      	ldrb	r2, [r2, #0]
 80067fa:	430a      	orrs	r2, r1
 80067fc:	701a      	strb	r2, [r3, #0]
 80067fe:	687b      	ldr	r3, [r7, #4]
 8006800:	2200      	movs	r2, #0
 8006802:	2100      	movs	r1, #0
 8006804:	0018      	movs	r0, r3
 8006806:	f7fc ff07 	bl	8003618 <VL53L0X_WrByte>
 800680a:	0003      	movs	r3, r0
 800680c:	0019      	movs	r1, r3
 800680e:	193b      	adds	r3, r7, r4
 8006810:	193a      	adds	r2, r7, r4
 8006812:	7812      	ldrb	r2, [r2, #0]
 8006814:	430a      	orrs	r2, r1
 8006816:	701a      	strb	r2, [r3, #0]
 8006818:	687b      	ldr	r3, [r7, #4]
 800681a:	2200      	movs	r2, #0
 800681c:	21ff      	movs	r1, #255	; 0xff
 800681e:	0018      	movs	r0, r3
 8006820:	f7fc fefa 	bl	8003618 <VL53L0X_WrByte>
 8006824:	0003      	movs	r3, r0
 8006826:	0019      	movs	r1, r3
 8006828:	193b      	adds	r3, r7, r4
 800682a:	193a      	adds	r2, r7, r4
 800682c:	7812      	ldrb	r2, [r2, #0]
 800682e:	430a      	orrs	r2, r1
 8006830:	701a      	strb	r2, [r3, #0]
 8006832:	1cfb      	adds	r3, r7, #3
 8006834:	781b      	ldrb	r3, [r3, #0]
 8006836:	2b00      	cmp	r3, #0
 8006838:	d026      	beq.n	8006888 <VL53L0X_ref_calibration_io+0xd4>
 800683a:	2328      	movs	r3, #40	; 0x28
 800683c:	18fb      	adds	r3, r7, r3
 800683e:	781b      	ldrb	r3, [r3, #0]
 8006840:	2b00      	cmp	r3, #0
 8006842:	d00c      	beq.n	800685e <VL53L0X_ref_calibration_io+0xaa>
 8006844:	6a3a      	ldr	r2, [r7, #32]
 8006846:	687b      	ldr	r3, [r7, #4]
 8006848:	21cb      	movs	r1, #203	; 0xcb
 800684a:	0018      	movs	r0, r3
 800684c:	f7fc ff52 	bl	80036f4 <VL53L0X_RdByte>
 8006850:	0003      	movs	r3, r0
 8006852:	0019      	movs	r1, r3
 8006854:	193b      	adds	r3, r7, r4
 8006856:	193a      	adds	r2, r7, r4
 8006858:	7812      	ldrb	r2, [r2, #0]
 800685a:	430a      	orrs	r2, r1
 800685c:	701a      	strb	r2, [r3, #0]
 800685e:	232c      	movs	r3, #44	; 0x2c
 8006860:	18fb      	adds	r3, r7, r3
 8006862:	781b      	ldrb	r3, [r3, #0]
 8006864:	2b00      	cmp	r3, #0
 8006866:	d037      	beq.n	80068d8 <VL53L0X_ref_calibration_io+0x124>
 8006868:	230e      	movs	r3, #14
 800686a:	18fa      	adds	r2, r7, r3
 800686c:	687b      	ldr	r3, [r7, #4]
 800686e:	21ee      	movs	r1, #238	; 0xee
 8006870:	0018      	movs	r0, r3
 8006872:	f7fc ff3f 	bl	80036f4 <VL53L0X_RdByte>
 8006876:	0003      	movs	r3, r0
 8006878:	0019      	movs	r1, r3
 800687a:	220f      	movs	r2, #15
 800687c:	18bb      	adds	r3, r7, r2
 800687e:	18ba      	adds	r2, r7, r2
 8006880:	7812      	ldrb	r2, [r2, #0]
 8006882:	430a      	orrs	r2, r1
 8006884:	701a      	strb	r2, [r3, #0]
 8006886:	e027      	b.n	80068d8 <VL53L0X_ref_calibration_io+0x124>
 8006888:	2328      	movs	r3, #40	; 0x28
 800688a:	18fb      	adds	r3, r7, r3
 800688c:	781b      	ldrb	r3, [r3, #0]
 800688e:	2b00      	cmp	r3, #0
 8006890:	d00e      	beq.n	80068b0 <VL53L0X_ref_calibration_io+0xfc>
 8006892:	1cbb      	adds	r3, r7, #2
 8006894:	781a      	ldrb	r2, [r3, #0]
 8006896:	687b      	ldr	r3, [r7, #4]
 8006898:	21cb      	movs	r1, #203	; 0xcb
 800689a:	0018      	movs	r0, r3
 800689c:	f7fc febc 	bl	8003618 <VL53L0X_WrByte>
 80068a0:	0003      	movs	r3, r0
 80068a2:	0019      	movs	r1, r3
 80068a4:	220f      	movs	r2, #15
 80068a6:	18bb      	adds	r3, r7, r2
 80068a8:	18ba      	adds	r2, r7, r2
 80068aa:	7812      	ldrb	r2, [r2, #0]
 80068ac:	430a      	orrs	r2, r1
 80068ae:	701a      	strb	r2, [r3, #0]
 80068b0:	232c      	movs	r3, #44	; 0x2c
 80068b2:	18fb      	adds	r3, r7, r3
 80068b4:	781b      	ldrb	r3, [r3, #0]
 80068b6:	2b00      	cmp	r3, #0
 80068b8:	d00e      	beq.n	80068d8 <VL53L0X_ref_calibration_io+0x124>
 80068ba:	1c7b      	adds	r3, r7, #1
 80068bc:	781b      	ldrb	r3, [r3, #0]
 80068be:	6878      	ldr	r0, [r7, #4]
 80068c0:	2280      	movs	r2, #128	; 0x80
 80068c2:	21ee      	movs	r1, #238	; 0xee
 80068c4:	f7fc fee5 	bl	8003692 <VL53L0X_UpdateByte>
 80068c8:	0003      	movs	r3, r0
 80068ca:	0019      	movs	r1, r3
 80068cc:	220f      	movs	r2, #15
 80068ce:	18bb      	adds	r3, r7, r2
 80068d0:	18ba      	adds	r2, r7, r2
 80068d2:	7812      	ldrb	r2, [r2, #0]
 80068d4:	430a      	orrs	r2, r1
 80068d6:	701a      	strb	r2, [r3, #0]
 80068d8:	687b      	ldr	r3, [r7, #4]
 80068da:	2201      	movs	r2, #1
 80068dc:	21ff      	movs	r1, #255	; 0xff
 80068de:	0018      	movs	r0, r3
 80068e0:	f7fc fe9a 	bl	8003618 <VL53L0X_WrByte>
 80068e4:	0003      	movs	r3, r0
 80068e6:	0019      	movs	r1, r3
 80068e8:	240f      	movs	r4, #15
 80068ea:	193b      	adds	r3, r7, r4
 80068ec:	193a      	adds	r2, r7, r4
 80068ee:	7812      	ldrb	r2, [r2, #0]
 80068f0:	430a      	orrs	r2, r1
 80068f2:	701a      	strb	r2, [r3, #0]
 80068f4:	687b      	ldr	r3, [r7, #4]
 80068f6:	2201      	movs	r2, #1
 80068f8:	2100      	movs	r1, #0
 80068fa:	0018      	movs	r0, r3
 80068fc:	f7fc fe8c 	bl	8003618 <VL53L0X_WrByte>
 8006900:	0003      	movs	r3, r0
 8006902:	0019      	movs	r1, r3
 8006904:	193b      	adds	r3, r7, r4
 8006906:	193a      	adds	r2, r7, r4
 8006908:	7812      	ldrb	r2, [r2, #0]
 800690a:	430a      	orrs	r2, r1
 800690c:	701a      	strb	r2, [r3, #0]
 800690e:	687b      	ldr	r3, [r7, #4]
 8006910:	2200      	movs	r2, #0
 8006912:	21ff      	movs	r1, #255	; 0xff
 8006914:	0018      	movs	r0, r3
 8006916:	f7fc fe7f 	bl	8003618 <VL53L0X_WrByte>
 800691a:	0003      	movs	r3, r0
 800691c:	0019      	movs	r1, r3
 800691e:	0020      	movs	r0, r4
 8006920:	183b      	adds	r3, r7, r0
 8006922:	183a      	adds	r2, r7, r0
 8006924:	7812      	ldrb	r2, [r2, #0]
 8006926:	430a      	orrs	r2, r1
 8006928:	701a      	strb	r2, [r3, #0]
 800692a:	230e      	movs	r3, #14
 800692c:	18fb      	adds	r3, r7, r3
 800692e:	781b      	ldrb	r3, [r3, #0]
 8006930:	2210      	movs	r2, #16
 8006932:	4393      	bics	r3, r2
 8006934:	b2da      	uxtb	r2, r3
 8006936:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8006938:	701a      	strb	r2, [r3, #0]
 800693a:	183b      	adds	r3, r7, r0
 800693c:	781b      	ldrb	r3, [r3, #0]
 800693e:	b25b      	sxtb	r3, r3
 8006940:	0018      	movs	r0, r3
 8006942:	46bd      	mov	sp, r7
 8006944:	b005      	add	sp, #20
 8006946:	bd90      	pop	{r4, r7, pc}

08006948 <VL53L0X_perform_vhv_calibration>:
 8006948:	b5f0      	push	{r4, r5, r6, r7, lr}
 800694a:	b08b      	sub	sp, #44	; 0x2c
 800694c:	af04      	add	r7, sp, #16
 800694e:	60f8      	str	r0, [r7, #12]
 8006950:	60b9      	str	r1, [r7, #8]
 8006952:	0019      	movs	r1, r3
 8006954:	1dfb      	adds	r3, r7, #7
 8006956:	701a      	strb	r2, [r3, #0]
 8006958:	1dbb      	adds	r3, r7, #6
 800695a:	1c0a      	adds	r2, r1, #0
 800695c:	701a      	strb	r2, [r3, #0]
 800695e:	2317      	movs	r3, #23
 8006960:	18fb      	adds	r3, r7, r3
 8006962:	2200      	movs	r2, #0
 8006964:	701a      	strb	r2, [r3, #0]
 8006966:	2116      	movs	r1, #22
 8006968:	187b      	adds	r3, r7, r1
 800696a:	2200      	movs	r2, #0
 800696c:	701a      	strb	r2, [r3, #0]
 800696e:	2315      	movs	r3, #21
 8006970:	18fb      	adds	r3, r7, r3
 8006972:	2200      	movs	r2, #0
 8006974:	701a      	strb	r2, [r3, #0]
 8006976:	2314      	movs	r3, #20
 8006978:	18fb      	adds	r3, r7, r3
 800697a:	2200      	movs	r2, #0
 800697c:	701a      	strb	r2, [r3, #0]
 800697e:	2313      	movs	r3, #19
 8006980:	18fb      	adds	r3, r7, r3
 8006982:	2200      	movs	r2, #0
 8006984:	701a      	strb	r2, [r3, #0]
 8006986:	1dbb      	adds	r3, r7, #6
 8006988:	781b      	ldrb	r3, [r3, #0]
 800698a:	2b00      	cmp	r3, #0
 800698c:	d005      	beq.n	800699a <VL53L0X_perform_vhv_calibration+0x52>
 800698e:	187b      	adds	r3, r7, r1
 8006990:	68f9      	ldr	r1, [r7, #12]
 8006992:	2288      	movs	r2, #136	; 0x88
 8006994:	0052      	lsls	r2, r2, #1
 8006996:	5c8a      	ldrb	r2, [r1, r2]
 8006998:	701a      	strb	r2, [r3, #0]
 800699a:	2517      	movs	r5, #23
 800699c:	197c      	adds	r4, r7, r5
 800699e:	68fb      	ldr	r3, [r7, #12]
 80069a0:	2201      	movs	r2, #1
 80069a2:	2101      	movs	r1, #1
 80069a4:	0018      	movs	r0, r3
 80069a6:	f7fc fe37 	bl	8003618 <VL53L0X_WrByte>
 80069aa:	0003      	movs	r3, r0
 80069ac:	7023      	strb	r3, [r4, #0]
 80069ae:	197b      	adds	r3, r7, r5
 80069b0:	781b      	ldrb	r3, [r3, #0]
 80069b2:	b25b      	sxtb	r3, r3
 80069b4:	2b00      	cmp	r3, #0
 80069b6:	d107      	bne.n	80069c8 <VL53L0X_perform_vhv_calibration+0x80>
 80069b8:	197c      	adds	r4, r7, r5
 80069ba:	68fb      	ldr	r3, [r7, #12]
 80069bc:	2140      	movs	r1, #64	; 0x40
 80069be:	0018      	movs	r0, r3
 80069c0:	f7ff fea9 	bl	8006716 <VL53L0X_perform_single_ref_calibration>
 80069c4:	0003      	movs	r3, r0
 80069c6:	7023      	strb	r3, [r4, #0]
 80069c8:	2217      	movs	r2, #23
 80069ca:	18bb      	adds	r3, r7, r2
 80069cc:	781b      	ldrb	r3, [r3, #0]
 80069ce:	b25b      	sxtb	r3, r3
 80069d0:	2b00      	cmp	r3, #0
 80069d2:	d11b      	bne.n	8006a0c <VL53L0X_perform_vhv_calibration+0xc4>
 80069d4:	1dfb      	adds	r3, r7, #7
 80069d6:	781b      	ldrb	r3, [r3, #0]
 80069d8:	2b01      	cmp	r3, #1
 80069da:	d117      	bne.n	8006a0c <VL53L0X_perform_vhv_calibration+0xc4>
 80069dc:	18bc      	adds	r4, r7, r2
 80069de:	2314      	movs	r3, #20
 80069e0:	18fb      	adds	r3, r7, r3
 80069e2:	7819      	ldrb	r1, [r3, #0]
 80069e4:	2315      	movs	r3, #21
 80069e6:	18fb      	adds	r3, r7, r3
 80069e8:	781a      	ldrb	r2, [r3, #0]
 80069ea:	68f8      	ldr	r0, [r7, #12]
 80069ec:	2300      	movs	r3, #0
 80069ee:	9303      	str	r3, [sp, #12]
 80069f0:	2301      	movs	r3, #1
 80069f2:	9302      	str	r3, [sp, #8]
 80069f4:	2313      	movs	r3, #19
 80069f6:	18fb      	adds	r3, r7, r3
 80069f8:	9301      	str	r3, [sp, #4]
 80069fa:	68bb      	ldr	r3, [r7, #8]
 80069fc:	9300      	str	r3, [sp, #0]
 80069fe:	000b      	movs	r3, r1
 8006a00:	2101      	movs	r1, #1
 8006a02:	f7ff fed7 	bl	80067b4 <VL53L0X_ref_calibration_io>
 8006a06:	0003      	movs	r3, r0
 8006a08:	7023      	strb	r3, [r4, #0]
 8006a0a:	e002      	b.n	8006a12 <VL53L0X_perform_vhv_calibration+0xca>
 8006a0c:	68bb      	ldr	r3, [r7, #8]
 8006a0e:	2200      	movs	r2, #0
 8006a10:	701a      	strb	r2, [r3, #0]
 8006a12:	2517      	movs	r5, #23
 8006a14:	197b      	adds	r3, r7, r5
 8006a16:	781b      	ldrb	r3, [r3, #0]
 8006a18:	b25b      	sxtb	r3, r3
 8006a1a:	2b00      	cmp	r3, #0
 8006a1c:	d119      	bne.n	8006a52 <VL53L0X_perform_vhv_calibration+0x10a>
 8006a1e:	1dbb      	adds	r3, r7, #6
 8006a20:	781b      	ldrb	r3, [r3, #0]
 8006a22:	2b00      	cmp	r3, #0
 8006a24:	d015      	beq.n	8006a52 <VL53L0X_perform_vhv_calibration+0x10a>
 8006a26:	197c      	adds	r4, r7, r5
 8006a28:	2616      	movs	r6, #22
 8006a2a:	19bb      	adds	r3, r7, r6
 8006a2c:	781a      	ldrb	r2, [r3, #0]
 8006a2e:	68fb      	ldr	r3, [r7, #12]
 8006a30:	2101      	movs	r1, #1
 8006a32:	0018      	movs	r0, r3
 8006a34:	f7fc fdf0 	bl	8003618 <VL53L0X_WrByte>
 8006a38:	0003      	movs	r3, r0
 8006a3a:	7023      	strb	r3, [r4, #0]
 8006a3c:	197b      	adds	r3, r7, r5
 8006a3e:	781b      	ldrb	r3, [r3, #0]
 8006a40:	b25b      	sxtb	r3, r3
 8006a42:	2b00      	cmp	r3, #0
 8006a44:	d105      	bne.n	8006a52 <VL53L0X_perform_vhv_calibration+0x10a>
 8006a46:	68fa      	ldr	r2, [r7, #12]
 8006a48:	19b9      	adds	r1, r7, r6
 8006a4a:	2388      	movs	r3, #136	; 0x88
 8006a4c:	005b      	lsls	r3, r3, #1
 8006a4e:	7809      	ldrb	r1, [r1, #0]
 8006a50:	54d1      	strb	r1, [r2, r3]
 8006a52:	2317      	movs	r3, #23
 8006a54:	18fb      	adds	r3, r7, r3
 8006a56:	781b      	ldrb	r3, [r3, #0]
 8006a58:	b25b      	sxtb	r3, r3
 8006a5a:	0018      	movs	r0, r3
 8006a5c:	46bd      	mov	sp, r7
 8006a5e:	b007      	add	sp, #28
 8006a60:	bdf0      	pop	{r4, r5, r6, r7, pc}

08006a62 <VL53L0X_perform_phase_calibration>:
 8006a62:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006a64:	b08b      	sub	sp, #44	; 0x2c
 8006a66:	af04      	add	r7, sp, #16
 8006a68:	60f8      	str	r0, [r7, #12]
 8006a6a:	60b9      	str	r1, [r7, #8]
 8006a6c:	0019      	movs	r1, r3
 8006a6e:	1dfb      	adds	r3, r7, #7
 8006a70:	701a      	strb	r2, [r3, #0]
 8006a72:	1dbb      	adds	r3, r7, #6
 8006a74:	1c0a      	adds	r2, r1, #0
 8006a76:	701a      	strb	r2, [r3, #0]
 8006a78:	2317      	movs	r3, #23
 8006a7a:	18fb      	adds	r3, r7, r3
 8006a7c:	2200      	movs	r2, #0
 8006a7e:	701a      	strb	r2, [r3, #0]
 8006a80:	2116      	movs	r1, #22
 8006a82:	187b      	adds	r3, r7, r1
 8006a84:	2200      	movs	r2, #0
 8006a86:	701a      	strb	r2, [r3, #0]
 8006a88:	2315      	movs	r3, #21
 8006a8a:	18fb      	adds	r3, r7, r3
 8006a8c:	2200      	movs	r2, #0
 8006a8e:	701a      	strb	r2, [r3, #0]
 8006a90:	2314      	movs	r3, #20
 8006a92:	18fb      	adds	r3, r7, r3
 8006a94:	2200      	movs	r2, #0
 8006a96:	701a      	strb	r2, [r3, #0]
 8006a98:	1dbb      	adds	r3, r7, #6
 8006a9a:	781b      	ldrb	r3, [r3, #0]
 8006a9c:	2b00      	cmp	r3, #0
 8006a9e:	d005      	beq.n	8006aac <VL53L0X_perform_phase_calibration+0x4a>
 8006aa0:	187b      	adds	r3, r7, r1
 8006aa2:	68f9      	ldr	r1, [r7, #12]
 8006aa4:	2288      	movs	r2, #136	; 0x88
 8006aa6:	0052      	lsls	r2, r2, #1
 8006aa8:	5c8a      	ldrb	r2, [r1, r2]
 8006aaa:	701a      	strb	r2, [r3, #0]
 8006aac:	2517      	movs	r5, #23
 8006aae:	197c      	adds	r4, r7, r5
 8006ab0:	68fb      	ldr	r3, [r7, #12]
 8006ab2:	2202      	movs	r2, #2
 8006ab4:	2101      	movs	r1, #1
 8006ab6:	0018      	movs	r0, r3
 8006ab8:	f7fc fdae 	bl	8003618 <VL53L0X_WrByte>
 8006abc:	0003      	movs	r3, r0
 8006abe:	7023      	strb	r3, [r4, #0]
 8006ac0:	197b      	adds	r3, r7, r5
 8006ac2:	781b      	ldrb	r3, [r3, #0]
 8006ac4:	b25b      	sxtb	r3, r3
 8006ac6:	2b00      	cmp	r3, #0
 8006ac8:	d107      	bne.n	8006ada <VL53L0X_perform_phase_calibration+0x78>
 8006aca:	197c      	adds	r4, r7, r5
 8006acc:	68fb      	ldr	r3, [r7, #12]
 8006ace:	2100      	movs	r1, #0
 8006ad0:	0018      	movs	r0, r3
 8006ad2:	f7ff fe20 	bl	8006716 <VL53L0X_perform_single_ref_calibration>
 8006ad6:	0003      	movs	r3, r0
 8006ad8:	7023      	strb	r3, [r4, #0]
 8006ada:	2217      	movs	r2, #23
 8006adc:	18bb      	adds	r3, r7, r2
 8006ade:	781b      	ldrb	r3, [r3, #0]
 8006ae0:	b25b      	sxtb	r3, r3
 8006ae2:	2b00      	cmp	r3, #0
 8006ae4:	d11b      	bne.n	8006b1e <VL53L0X_perform_phase_calibration+0xbc>
 8006ae6:	1dfb      	adds	r3, r7, #7
 8006ae8:	781b      	ldrb	r3, [r3, #0]
 8006aea:	2b01      	cmp	r3, #1
 8006aec:	d117      	bne.n	8006b1e <VL53L0X_perform_phase_calibration+0xbc>
 8006aee:	18bc      	adds	r4, r7, r2
 8006af0:	2314      	movs	r3, #20
 8006af2:	18fb      	adds	r3, r7, r3
 8006af4:	7819      	ldrb	r1, [r3, #0]
 8006af6:	2315      	movs	r3, #21
 8006af8:	18fb      	adds	r3, r7, r3
 8006afa:	781a      	ldrb	r2, [r3, #0]
 8006afc:	68f8      	ldr	r0, [r7, #12]
 8006afe:	2301      	movs	r3, #1
 8006b00:	9303      	str	r3, [sp, #12]
 8006b02:	2300      	movs	r3, #0
 8006b04:	9302      	str	r3, [sp, #8]
 8006b06:	68bb      	ldr	r3, [r7, #8]
 8006b08:	9301      	str	r3, [sp, #4]
 8006b0a:	2313      	movs	r3, #19
 8006b0c:	18fb      	adds	r3, r7, r3
 8006b0e:	9300      	str	r3, [sp, #0]
 8006b10:	000b      	movs	r3, r1
 8006b12:	2101      	movs	r1, #1
 8006b14:	f7ff fe4e 	bl	80067b4 <VL53L0X_ref_calibration_io>
 8006b18:	0003      	movs	r3, r0
 8006b1a:	7023      	strb	r3, [r4, #0]
 8006b1c:	e002      	b.n	8006b24 <VL53L0X_perform_phase_calibration+0xc2>
 8006b1e:	68bb      	ldr	r3, [r7, #8]
 8006b20:	2200      	movs	r2, #0
 8006b22:	701a      	strb	r2, [r3, #0]
 8006b24:	2517      	movs	r5, #23
 8006b26:	197b      	adds	r3, r7, r5
 8006b28:	781b      	ldrb	r3, [r3, #0]
 8006b2a:	b25b      	sxtb	r3, r3
 8006b2c:	2b00      	cmp	r3, #0
 8006b2e:	d119      	bne.n	8006b64 <VL53L0X_perform_phase_calibration+0x102>
 8006b30:	1dbb      	adds	r3, r7, #6
 8006b32:	781b      	ldrb	r3, [r3, #0]
 8006b34:	2b00      	cmp	r3, #0
 8006b36:	d015      	beq.n	8006b64 <VL53L0X_perform_phase_calibration+0x102>
 8006b38:	197c      	adds	r4, r7, r5
 8006b3a:	2616      	movs	r6, #22
 8006b3c:	19bb      	adds	r3, r7, r6
 8006b3e:	781a      	ldrb	r2, [r3, #0]
 8006b40:	68fb      	ldr	r3, [r7, #12]
 8006b42:	2101      	movs	r1, #1
 8006b44:	0018      	movs	r0, r3
 8006b46:	f7fc fd67 	bl	8003618 <VL53L0X_WrByte>
 8006b4a:	0003      	movs	r3, r0
 8006b4c:	7023      	strb	r3, [r4, #0]
 8006b4e:	197b      	adds	r3, r7, r5
 8006b50:	781b      	ldrb	r3, [r3, #0]
 8006b52:	b25b      	sxtb	r3, r3
 8006b54:	2b00      	cmp	r3, #0
 8006b56:	d105      	bne.n	8006b64 <VL53L0X_perform_phase_calibration+0x102>
 8006b58:	68fa      	ldr	r2, [r7, #12]
 8006b5a:	19b9      	adds	r1, r7, r6
 8006b5c:	2388      	movs	r3, #136	; 0x88
 8006b5e:	005b      	lsls	r3, r3, #1
 8006b60:	7809      	ldrb	r1, [r1, #0]
 8006b62:	54d1      	strb	r1, [r2, r3]
 8006b64:	2317      	movs	r3, #23
 8006b66:	18fb      	adds	r3, r7, r3
 8006b68:	781b      	ldrb	r3, [r3, #0]
 8006b6a:	b25b      	sxtb	r3, r3
 8006b6c:	0018      	movs	r0, r3
 8006b6e:	46bd      	mov	sp, r7
 8006b70:	b007      	add	sp, #28
 8006b72:	bdf0      	pop	{r4, r5, r6, r7, pc}

08006b74 <VL53L0X_perform_ref_calibration>:
 8006b74:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006b76:	b087      	sub	sp, #28
 8006b78:	af00      	add	r7, sp, #0
 8006b7a:	60f8      	str	r0, [r7, #12]
 8006b7c:	60b9      	str	r1, [r7, #8]
 8006b7e:	607a      	str	r2, [r7, #4]
 8006b80:	001a      	movs	r2, r3
 8006b82:	1cfb      	adds	r3, r7, #3
 8006b84:	701a      	strb	r2, [r3, #0]
 8006b86:	2017      	movs	r0, #23
 8006b88:	183b      	adds	r3, r7, r0
 8006b8a:	2200      	movs	r2, #0
 8006b8c:	701a      	strb	r2, [r3, #0]
 8006b8e:	2116      	movs	r1, #22
 8006b90:	187b      	adds	r3, r7, r1
 8006b92:	2200      	movs	r2, #0
 8006b94:	701a      	strb	r2, [r3, #0]
 8006b96:	187b      	adds	r3, r7, r1
 8006b98:	68f9      	ldr	r1, [r7, #12]
 8006b9a:	2288      	movs	r2, #136	; 0x88
 8006b9c:	0052      	lsls	r2, r2, #1
 8006b9e:	5c8a      	ldrb	r2, [r1, r2]
 8006ba0:	701a      	strb	r2, [r3, #0]
 8006ba2:	0005      	movs	r5, r0
 8006ba4:	183c      	adds	r4, r7, r0
 8006ba6:	1cfb      	adds	r3, r7, #3
 8006ba8:	781a      	ldrb	r2, [r3, #0]
 8006baa:	68b9      	ldr	r1, [r7, #8]
 8006bac:	68f8      	ldr	r0, [r7, #12]
 8006bae:	2300      	movs	r3, #0
 8006bb0:	f7ff feca 	bl	8006948 <VL53L0X_perform_vhv_calibration>
 8006bb4:	0003      	movs	r3, r0
 8006bb6:	7023      	strb	r3, [r4, #0]
 8006bb8:	197b      	adds	r3, r7, r5
 8006bba:	781b      	ldrb	r3, [r3, #0]
 8006bbc:	b25b      	sxtb	r3, r3
 8006bbe:	2b00      	cmp	r3, #0
 8006bc0:	d109      	bne.n	8006bd6 <VL53L0X_perform_ref_calibration+0x62>
 8006bc2:	197c      	adds	r4, r7, r5
 8006bc4:	1cfb      	adds	r3, r7, #3
 8006bc6:	781a      	ldrb	r2, [r3, #0]
 8006bc8:	6879      	ldr	r1, [r7, #4]
 8006bca:	68f8      	ldr	r0, [r7, #12]
 8006bcc:	2300      	movs	r3, #0
 8006bce:	f7ff ff48 	bl	8006a62 <VL53L0X_perform_phase_calibration>
 8006bd2:	0003      	movs	r3, r0
 8006bd4:	7023      	strb	r3, [r4, #0]
 8006bd6:	2517      	movs	r5, #23
 8006bd8:	197b      	adds	r3, r7, r5
 8006bda:	781b      	ldrb	r3, [r3, #0]
 8006bdc:	b25b      	sxtb	r3, r3
 8006bde:	2b00      	cmp	r3, #0
 8006be0:	d115      	bne.n	8006c0e <VL53L0X_perform_ref_calibration+0x9a>
 8006be2:	197c      	adds	r4, r7, r5
 8006be4:	2616      	movs	r6, #22
 8006be6:	19bb      	adds	r3, r7, r6
 8006be8:	781a      	ldrb	r2, [r3, #0]
 8006bea:	68fb      	ldr	r3, [r7, #12]
 8006bec:	2101      	movs	r1, #1
 8006bee:	0018      	movs	r0, r3
 8006bf0:	f7fc fd12 	bl	8003618 <VL53L0X_WrByte>
 8006bf4:	0003      	movs	r3, r0
 8006bf6:	7023      	strb	r3, [r4, #0]
 8006bf8:	197b      	adds	r3, r7, r5
 8006bfa:	781b      	ldrb	r3, [r3, #0]
 8006bfc:	b25b      	sxtb	r3, r3
 8006bfe:	2b00      	cmp	r3, #0
 8006c00:	d105      	bne.n	8006c0e <VL53L0X_perform_ref_calibration+0x9a>
 8006c02:	68fa      	ldr	r2, [r7, #12]
 8006c04:	19b9      	adds	r1, r7, r6
 8006c06:	2388      	movs	r3, #136	; 0x88
 8006c08:	005b      	lsls	r3, r3, #1
 8006c0a:	7809      	ldrb	r1, [r1, #0]
 8006c0c:	54d1      	strb	r1, [r2, r3]
 8006c0e:	2317      	movs	r3, #23
 8006c10:	18fb      	adds	r3, r7, r3
 8006c12:	781b      	ldrb	r3, [r3, #0]
 8006c14:	b25b      	sxtb	r3, r3
 8006c16:	0018      	movs	r0, r3
 8006c18:	46bd      	mov	sp, r7
 8006c1a:	b007      	add	sp, #28
 8006c1c:	bdf0      	pop	{r4, r5, r6, r7, pc}

08006c1e <VL53L0X_measurement_poll_for_completion>:
 8006c1e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006c20:	b087      	sub	sp, #28
 8006c22:	af00      	add	r7, sp, #0
 8006c24:	6078      	str	r0, [r7, #4]
 8006c26:	2317      	movs	r3, #23
 8006c28:	18fb      	adds	r3, r7, r3
 8006c2a:	2200      	movs	r2, #0
 8006c2c:	701a      	strb	r2, [r3, #0]
 8006c2e:	230f      	movs	r3, #15
 8006c30:	18fb      	adds	r3, r7, r3
 8006c32:	2200      	movs	r2, #0
 8006c34:	701a      	strb	r2, [r3, #0]
 8006c36:	2300      	movs	r3, #0
 8006c38:	613b      	str	r3, [r7, #16]
 8006c3a:	2517      	movs	r5, #23
 8006c3c:	197c      	adds	r4, r7, r5
 8006c3e:	260f      	movs	r6, #15
 8006c40:	19ba      	adds	r2, r7, r6
 8006c42:	687b      	ldr	r3, [r7, #4]
 8006c44:	0011      	movs	r1, r2
 8006c46:	0018      	movs	r0, r3
 8006c48:	f7fe fba7 	bl	800539a <VL53L0X_GetMeasurementDataReady>
 8006c4c:	0003      	movs	r3, r0
 8006c4e:	7023      	strb	r3, [r4, #0]
 8006c50:	0029      	movs	r1, r5
 8006c52:	187b      	adds	r3, r7, r1
 8006c54:	781b      	ldrb	r3, [r3, #0]
 8006c56:	b25b      	sxtb	r3, r3
 8006c58:	2b00      	cmp	r3, #0
 8006c5a:	d114      	bne.n	8006c86 <VL53L0X_measurement_poll_for_completion+0x68>
 8006c5c:	19bb      	adds	r3, r7, r6
 8006c5e:	781b      	ldrb	r3, [r3, #0]
 8006c60:	2b01      	cmp	r3, #1
 8006c62:	d012      	beq.n	8006c8a <VL53L0X_measurement_poll_for_completion+0x6c>
 8006c64:	693b      	ldr	r3, [r7, #16]
 8006c66:	3301      	adds	r3, #1
 8006c68:	613b      	str	r3, [r7, #16]
 8006c6a:	693a      	ldr	r2, [r7, #16]
 8006c6c:	23fa      	movs	r3, #250	; 0xfa
 8006c6e:	00db      	lsls	r3, r3, #3
 8006c70:	429a      	cmp	r2, r3
 8006c72:	d303      	bcc.n	8006c7c <VL53L0X_measurement_poll_for_completion+0x5e>
 8006c74:	187b      	adds	r3, r7, r1
 8006c76:	22f9      	movs	r2, #249	; 0xf9
 8006c78:	701a      	strb	r2, [r3, #0]
 8006c7a:	e007      	b.n	8006c8c <VL53L0X_measurement_poll_for_completion+0x6e>
 8006c7c:	687b      	ldr	r3, [r7, #4]
 8006c7e:	0018      	movs	r0, r3
 8006c80:	f7fc fd98 	bl	80037b4 <VL53L0X_PollingDelay>
 8006c84:	e7d9      	b.n	8006c3a <VL53L0X_measurement_poll_for_completion+0x1c>
 8006c86:	46c0      	nop			; (mov r8, r8)
 8006c88:	e000      	b.n	8006c8c <VL53L0X_measurement_poll_for_completion+0x6e>
 8006c8a:	46c0      	nop			; (mov r8, r8)
 8006c8c:	2317      	movs	r3, #23
 8006c8e:	18fb      	adds	r3, r7, r3
 8006c90:	781b      	ldrb	r3, [r3, #0]
 8006c92:	b25b      	sxtb	r3, r3
 8006c94:	0018      	movs	r0, r3
 8006c96:	46bd      	mov	sp, r7
 8006c98:	b007      	add	sp, #28
 8006c9a:	bdf0      	pop	{r4, r5, r6, r7, pc}

08006c9c <VL53L0X_decode_vcsel_period>:
 8006c9c:	b580      	push	{r7, lr}
 8006c9e:	b084      	sub	sp, #16
 8006ca0:	af00      	add	r7, sp, #0
 8006ca2:	0002      	movs	r2, r0
 8006ca4:	1dfb      	adds	r3, r7, #7
 8006ca6:	701a      	strb	r2, [r3, #0]
 8006ca8:	210f      	movs	r1, #15
 8006caa:	187b      	adds	r3, r7, r1
 8006cac:	2200      	movs	r2, #0
 8006cae:	701a      	strb	r2, [r3, #0]
 8006cb0:	1dfb      	adds	r3, r7, #7
 8006cb2:	781b      	ldrb	r3, [r3, #0]
 8006cb4:	3301      	adds	r3, #1
 8006cb6:	b2db      	uxtb	r3, r3
 8006cb8:	187a      	adds	r2, r7, r1
 8006cba:	18db      	adds	r3, r3, r3
 8006cbc:	7013      	strb	r3, [r2, #0]
 8006cbe:	187b      	adds	r3, r7, r1
 8006cc0:	781b      	ldrb	r3, [r3, #0]
 8006cc2:	0018      	movs	r0, r3
 8006cc4:	46bd      	mov	sp, r7
 8006cc6:	b004      	add	sp, #16
 8006cc8:	bd80      	pop	{r7, pc}

08006cca <VL53L0X_isqrt>:
 8006cca:	b580      	push	{r7, lr}
 8006ccc:	b084      	sub	sp, #16
 8006cce:	af00      	add	r7, sp, #0
 8006cd0:	6078      	str	r0, [r7, #4]
 8006cd2:	2300      	movs	r3, #0
 8006cd4:	60fb      	str	r3, [r7, #12]
 8006cd6:	2380      	movs	r3, #128	; 0x80
 8006cd8:	05db      	lsls	r3, r3, #23
 8006cda:	60bb      	str	r3, [r7, #8]
 8006cdc:	e002      	b.n	8006ce4 <VL53L0X_isqrt+0x1a>
 8006cde:	68bb      	ldr	r3, [r7, #8]
 8006ce0:	089b      	lsrs	r3, r3, #2
 8006ce2:	60bb      	str	r3, [r7, #8]
 8006ce4:	68ba      	ldr	r2, [r7, #8]
 8006ce6:	687b      	ldr	r3, [r7, #4]
 8006ce8:	429a      	cmp	r2, r3
 8006cea:	d8f8      	bhi.n	8006cde <VL53L0X_isqrt+0x14>
 8006cec:	e017      	b.n	8006d1e <VL53L0X_isqrt+0x54>
 8006cee:	68fa      	ldr	r2, [r7, #12]
 8006cf0:	68bb      	ldr	r3, [r7, #8]
 8006cf2:	18d3      	adds	r3, r2, r3
 8006cf4:	687a      	ldr	r2, [r7, #4]
 8006cf6:	429a      	cmp	r2, r3
 8006cf8:	d30b      	bcc.n	8006d12 <VL53L0X_isqrt+0x48>
 8006cfa:	68fa      	ldr	r2, [r7, #12]
 8006cfc:	68bb      	ldr	r3, [r7, #8]
 8006cfe:	18d3      	adds	r3, r2, r3
 8006d00:	687a      	ldr	r2, [r7, #4]
 8006d02:	1ad3      	subs	r3, r2, r3
 8006d04:	607b      	str	r3, [r7, #4]
 8006d06:	68fb      	ldr	r3, [r7, #12]
 8006d08:	085b      	lsrs	r3, r3, #1
 8006d0a:	68ba      	ldr	r2, [r7, #8]
 8006d0c:	18d3      	adds	r3, r2, r3
 8006d0e:	60fb      	str	r3, [r7, #12]
 8006d10:	e002      	b.n	8006d18 <VL53L0X_isqrt+0x4e>
 8006d12:	68fb      	ldr	r3, [r7, #12]
 8006d14:	085b      	lsrs	r3, r3, #1
 8006d16:	60fb      	str	r3, [r7, #12]
 8006d18:	68bb      	ldr	r3, [r7, #8]
 8006d1a:	089b      	lsrs	r3, r3, #2
 8006d1c:	60bb      	str	r3, [r7, #8]
 8006d1e:	68bb      	ldr	r3, [r7, #8]
 8006d20:	2b00      	cmp	r3, #0
 8006d22:	d1e4      	bne.n	8006cee <VL53L0X_isqrt+0x24>
 8006d24:	68fb      	ldr	r3, [r7, #12]
 8006d26:	0018      	movs	r0, r3
 8006d28:	46bd      	mov	sp, r7
 8006d2a:	b004      	add	sp, #16
 8006d2c:	bd80      	pop	{r7, pc}

08006d2e <VL53L0X_device_read_strobe>:
 8006d2e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006d30:	b087      	sub	sp, #28
 8006d32:	af00      	add	r7, sp, #0
 8006d34:	6078      	str	r0, [r7, #4]
 8006d36:	2417      	movs	r4, #23
 8006d38:	193b      	adds	r3, r7, r4
 8006d3a:	2200      	movs	r2, #0
 8006d3c:	701a      	strb	r2, [r3, #0]
 8006d3e:	687b      	ldr	r3, [r7, #4]
 8006d40:	2200      	movs	r2, #0
 8006d42:	2183      	movs	r1, #131	; 0x83
 8006d44:	0018      	movs	r0, r3
 8006d46:	f7fc fc67 	bl	8003618 <VL53L0X_WrByte>
 8006d4a:	0003      	movs	r3, r0
 8006d4c:	0019      	movs	r1, r3
 8006d4e:	193b      	adds	r3, r7, r4
 8006d50:	193a      	adds	r2, r7, r4
 8006d52:	7812      	ldrb	r2, [r2, #0]
 8006d54:	430a      	orrs	r2, r1
 8006d56:	701a      	strb	r2, [r3, #0]
 8006d58:	193b      	adds	r3, r7, r4
 8006d5a:	781b      	ldrb	r3, [r3, #0]
 8006d5c:	b25b      	sxtb	r3, r3
 8006d5e:	2b00      	cmp	r3, #0
 8006d60:	d126      	bne.n	8006db0 <VL53L0X_device_read_strobe+0x82>
 8006d62:	2300      	movs	r3, #0
 8006d64:	613b      	str	r3, [r7, #16]
 8006d66:	2617      	movs	r6, #23
 8006d68:	19bc      	adds	r4, r7, r6
 8006d6a:	250f      	movs	r5, #15
 8006d6c:	197a      	adds	r2, r7, r5
 8006d6e:	687b      	ldr	r3, [r7, #4]
 8006d70:	2183      	movs	r1, #131	; 0x83
 8006d72:	0018      	movs	r0, r3
 8006d74:	f7fc fcbe 	bl	80036f4 <VL53L0X_RdByte>
 8006d78:	0003      	movs	r3, r0
 8006d7a:	7023      	strb	r3, [r4, #0]
 8006d7c:	197b      	adds	r3, r7, r5
 8006d7e:	781b      	ldrb	r3, [r3, #0]
 8006d80:	2b00      	cmp	r3, #0
 8006d82:	d10c      	bne.n	8006d9e <VL53L0X_device_read_strobe+0x70>
 8006d84:	19bb      	adds	r3, r7, r6
 8006d86:	781b      	ldrb	r3, [r3, #0]
 8006d88:	b25b      	sxtb	r3, r3
 8006d8a:	2b00      	cmp	r3, #0
 8006d8c:	d107      	bne.n	8006d9e <VL53L0X_device_read_strobe+0x70>
 8006d8e:	693b      	ldr	r3, [r7, #16]
 8006d90:	3301      	adds	r3, #1
 8006d92:	613b      	str	r3, [r7, #16]
 8006d94:	693a      	ldr	r2, [r7, #16]
 8006d96:	23fa      	movs	r3, #250	; 0xfa
 8006d98:	00db      	lsls	r3, r3, #3
 8006d9a:	429a      	cmp	r2, r3
 8006d9c:	d3e3      	bcc.n	8006d66 <VL53L0X_device_read_strobe+0x38>
 8006d9e:	693a      	ldr	r2, [r7, #16]
 8006da0:	23fa      	movs	r3, #250	; 0xfa
 8006da2:	00db      	lsls	r3, r3, #3
 8006da4:	429a      	cmp	r2, r3
 8006da6:	d303      	bcc.n	8006db0 <VL53L0X_device_read_strobe+0x82>
 8006da8:	2317      	movs	r3, #23
 8006daa:	18fb      	adds	r3, r7, r3
 8006dac:	22f9      	movs	r2, #249	; 0xf9
 8006dae:	701a      	strb	r2, [r3, #0]
 8006db0:	687b      	ldr	r3, [r7, #4]
 8006db2:	2201      	movs	r2, #1
 8006db4:	2183      	movs	r1, #131	; 0x83
 8006db6:	0018      	movs	r0, r3
 8006db8:	f7fc fc2e 	bl	8003618 <VL53L0X_WrByte>
 8006dbc:	0003      	movs	r3, r0
 8006dbe:	0019      	movs	r1, r3
 8006dc0:	2017      	movs	r0, #23
 8006dc2:	183b      	adds	r3, r7, r0
 8006dc4:	183a      	adds	r2, r7, r0
 8006dc6:	7812      	ldrb	r2, [r2, #0]
 8006dc8:	430a      	orrs	r2, r1
 8006dca:	701a      	strb	r2, [r3, #0]
 8006dcc:	183b      	adds	r3, r7, r0
 8006dce:	781b      	ldrb	r3, [r3, #0]
 8006dd0:	b25b      	sxtb	r3, r3
 8006dd2:	0018      	movs	r0, r3
 8006dd4:	46bd      	mov	sp, r7
 8006dd6:	b007      	add	sp, #28
 8006dd8:	bdf0      	pop	{r4, r5, r6, r7, pc}

08006dda <VL53L0X_get_info_from_device>:
 8006dda:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006ddc:	b097      	sub	sp, #92	; 0x5c
 8006dde:	af00      	add	r7, sp, #0
 8006de0:	6078      	str	r0, [r7, #4]
 8006de2:	000a      	movs	r2, r1
 8006de4:	1cfb      	adds	r3, r7, #3
 8006de6:	701a      	strb	r2, [r3, #0]
 8006de8:	2457      	movs	r4, #87	; 0x57
 8006dea:	193b      	adds	r3, r7, r4
 8006dec:	2200      	movs	r2, #0
 8006dee:	701a      	strb	r2, [r3, #0]
 8006df0:	2356      	movs	r3, #86	; 0x56
 8006df2:	18fb      	adds	r3, r7, r3
 8006df4:	2200      	movs	r2, #0
 8006df6:	701a      	strb	r2, [r3, #0]
 8006df8:	2255      	movs	r2, #85	; 0x55
 8006dfa:	18bb      	adds	r3, r7, r2
 8006dfc:	2200      	movs	r2, #0
 8006dfe:	701a      	strb	r2, [r3, #0]
 8006e00:	2300      	movs	r3, #0
 8006e02:	62bb      	str	r3, [r7, #40]	; 0x28
 8006e04:	2300      	movs	r3, #0
 8006e06:	627b      	str	r3, [r7, #36]	; 0x24
 8006e08:	2300      	movs	r3, #0
 8006e0a:	643b      	str	r3, [r7, #64]	; 0x40
 8006e0c:	2152      	movs	r1, #82	; 0x52
 8006e0e:	187b      	adds	r3, r7, r1
 8006e10:	2200      	movs	r2, #0
 8006e12:	801a      	strh	r2, [r3, #0]
 8006e14:	23c8      	movs	r3, #200	; 0xc8
 8006e16:	015b      	lsls	r3, r3, #5
 8006e18:	63fb      	str	r3, [r7, #60]	; 0x3c
 8006e1a:	2300      	movs	r3, #0
 8006e1c:	64fb      	str	r3, [r7, #76]	; 0x4c
 8006e1e:	2300      	movs	r3, #0
 8006e20:	64bb      	str	r3, [r7, #72]	; 0x48
 8006e22:	2300      	movs	r3, #0
 8006e24:	63bb      	str	r3, [r7, #56]	; 0x38
 8006e26:	2537      	movs	r5, #55	; 0x37
 8006e28:	197b      	adds	r3, r7, r5
 8006e2a:	687a      	ldr	r2, [r7, #4]
 8006e2c:	21f0      	movs	r1, #240	; 0xf0
 8006e2e:	5c52      	ldrb	r2, [r2, r1]
 8006e30:	701a      	strb	r2, [r3, #0]
 8006e32:	197b      	adds	r3, r7, r5
 8006e34:	781b      	ldrb	r3, [r3, #0]
 8006e36:	2b07      	cmp	r3, #7
 8006e38:	d101      	bne.n	8006e3e <VL53L0X_get_info_from_device+0x64>
 8006e3a:	f000 fc51 	bl	80076e0 <VL53L0X_get_info_from_device+0x906>
 8006e3e:	687b      	ldr	r3, [r7, #4]
 8006e40:	2201      	movs	r2, #1
 8006e42:	2180      	movs	r1, #128	; 0x80
 8006e44:	0018      	movs	r0, r3
 8006e46:	f7fc fbe7 	bl	8003618 <VL53L0X_WrByte>
 8006e4a:	0003      	movs	r3, r0
 8006e4c:	0019      	movs	r1, r3
 8006e4e:	193b      	adds	r3, r7, r4
 8006e50:	193a      	adds	r2, r7, r4
 8006e52:	7812      	ldrb	r2, [r2, #0]
 8006e54:	430a      	orrs	r2, r1
 8006e56:	701a      	strb	r2, [r3, #0]
 8006e58:	687b      	ldr	r3, [r7, #4]
 8006e5a:	2201      	movs	r2, #1
 8006e5c:	21ff      	movs	r1, #255	; 0xff
 8006e5e:	0018      	movs	r0, r3
 8006e60:	f7fc fbda 	bl	8003618 <VL53L0X_WrByte>
 8006e64:	0003      	movs	r3, r0
 8006e66:	0019      	movs	r1, r3
 8006e68:	193b      	adds	r3, r7, r4
 8006e6a:	193a      	adds	r2, r7, r4
 8006e6c:	7812      	ldrb	r2, [r2, #0]
 8006e6e:	430a      	orrs	r2, r1
 8006e70:	701a      	strb	r2, [r3, #0]
 8006e72:	687b      	ldr	r3, [r7, #4]
 8006e74:	2200      	movs	r2, #0
 8006e76:	2100      	movs	r1, #0
 8006e78:	0018      	movs	r0, r3
 8006e7a:	f7fc fbcd 	bl	8003618 <VL53L0X_WrByte>
 8006e7e:	0003      	movs	r3, r0
 8006e80:	0019      	movs	r1, r3
 8006e82:	193b      	adds	r3, r7, r4
 8006e84:	193a      	adds	r2, r7, r4
 8006e86:	7812      	ldrb	r2, [r2, #0]
 8006e88:	430a      	orrs	r2, r1
 8006e8a:	701a      	strb	r2, [r3, #0]
 8006e8c:	687b      	ldr	r3, [r7, #4]
 8006e8e:	2206      	movs	r2, #6
 8006e90:	21ff      	movs	r1, #255	; 0xff
 8006e92:	0018      	movs	r0, r3
 8006e94:	f7fc fbc0 	bl	8003618 <VL53L0X_WrByte>
 8006e98:	0003      	movs	r3, r0
 8006e9a:	0019      	movs	r1, r3
 8006e9c:	193b      	adds	r3, r7, r4
 8006e9e:	193a      	adds	r2, r7, r4
 8006ea0:	7812      	ldrb	r2, [r2, #0]
 8006ea2:	430a      	orrs	r2, r1
 8006ea4:	701a      	strb	r2, [r3, #0]
 8006ea6:	2636      	movs	r6, #54	; 0x36
 8006ea8:	19ba      	adds	r2, r7, r6
 8006eaa:	687b      	ldr	r3, [r7, #4]
 8006eac:	2183      	movs	r1, #131	; 0x83
 8006eae:	0018      	movs	r0, r3
 8006eb0:	f7fc fc20 	bl	80036f4 <VL53L0X_RdByte>
 8006eb4:	0003      	movs	r3, r0
 8006eb6:	0019      	movs	r1, r3
 8006eb8:	193b      	adds	r3, r7, r4
 8006eba:	193a      	adds	r2, r7, r4
 8006ebc:	7812      	ldrb	r2, [r2, #0]
 8006ebe:	430a      	orrs	r2, r1
 8006ec0:	701a      	strb	r2, [r3, #0]
 8006ec2:	19bb      	adds	r3, r7, r6
 8006ec4:	781b      	ldrb	r3, [r3, #0]
 8006ec6:	2204      	movs	r2, #4
 8006ec8:	4313      	orrs	r3, r2
 8006eca:	b2da      	uxtb	r2, r3
 8006ecc:	687b      	ldr	r3, [r7, #4]
 8006ece:	2183      	movs	r1, #131	; 0x83
 8006ed0:	0018      	movs	r0, r3
 8006ed2:	f7fc fba1 	bl	8003618 <VL53L0X_WrByte>
 8006ed6:	0003      	movs	r3, r0
 8006ed8:	0019      	movs	r1, r3
 8006eda:	193b      	adds	r3, r7, r4
 8006edc:	193a      	adds	r2, r7, r4
 8006ede:	7812      	ldrb	r2, [r2, #0]
 8006ee0:	430a      	orrs	r2, r1
 8006ee2:	701a      	strb	r2, [r3, #0]
 8006ee4:	687b      	ldr	r3, [r7, #4]
 8006ee6:	2207      	movs	r2, #7
 8006ee8:	21ff      	movs	r1, #255	; 0xff
 8006eea:	0018      	movs	r0, r3
 8006eec:	f7fc fb94 	bl	8003618 <VL53L0X_WrByte>
 8006ef0:	0003      	movs	r3, r0
 8006ef2:	0019      	movs	r1, r3
 8006ef4:	193b      	adds	r3, r7, r4
 8006ef6:	193a      	adds	r2, r7, r4
 8006ef8:	7812      	ldrb	r2, [r2, #0]
 8006efa:	430a      	orrs	r2, r1
 8006efc:	701a      	strb	r2, [r3, #0]
 8006efe:	687b      	ldr	r3, [r7, #4]
 8006f00:	2201      	movs	r2, #1
 8006f02:	2181      	movs	r1, #129	; 0x81
 8006f04:	0018      	movs	r0, r3
 8006f06:	f7fc fb87 	bl	8003618 <VL53L0X_WrByte>
 8006f0a:	0003      	movs	r3, r0
 8006f0c:	0019      	movs	r1, r3
 8006f0e:	193b      	adds	r3, r7, r4
 8006f10:	193a      	adds	r2, r7, r4
 8006f12:	7812      	ldrb	r2, [r2, #0]
 8006f14:	430a      	orrs	r2, r1
 8006f16:	701a      	strb	r2, [r3, #0]
 8006f18:	687b      	ldr	r3, [r7, #4]
 8006f1a:	0018      	movs	r0, r3
 8006f1c:	f7fc fc4a 	bl	80037b4 <VL53L0X_PollingDelay>
 8006f20:	0003      	movs	r3, r0
 8006f22:	0019      	movs	r1, r3
 8006f24:	193b      	adds	r3, r7, r4
 8006f26:	193a      	adds	r2, r7, r4
 8006f28:	7812      	ldrb	r2, [r2, #0]
 8006f2a:	430a      	orrs	r2, r1
 8006f2c:	701a      	strb	r2, [r3, #0]
 8006f2e:	687b      	ldr	r3, [r7, #4]
 8006f30:	2201      	movs	r2, #1
 8006f32:	2180      	movs	r1, #128	; 0x80
 8006f34:	0018      	movs	r0, r3
 8006f36:	f7fc fb6f 	bl	8003618 <VL53L0X_WrByte>
 8006f3a:	0003      	movs	r3, r0
 8006f3c:	0019      	movs	r1, r3
 8006f3e:	193b      	adds	r3, r7, r4
 8006f40:	193a      	adds	r2, r7, r4
 8006f42:	7812      	ldrb	r2, [r2, #0]
 8006f44:	430a      	orrs	r2, r1
 8006f46:	701a      	strb	r2, [r3, #0]
 8006f48:	1cfb      	adds	r3, r7, #3
 8006f4a:	781b      	ldrb	r3, [r3, #0]
 8006f4c:	2201      	movs	r2, #1
 8006f4e:	4013      	ands	r3, r2
 8006f50:	d100      	bne.n	8006f54 <VL53L0X_get_info_from_device+0x17a>
 8006f52:	e0a3      	b.n	800709c <VL53L0X_get_info_from_device+0x2c2>
 8006f54:	197b      	adds	r3, r7, r5
 8006f56:	781b      	ldrb	r3, [r3, #0]
 8006f58:	2201      	movs	r2, #1
 8006f5a:	4013      	ands	r3, r2
 8006f5c:	d000      	beq.n	8006f60 <VL53L0X_get_info_from_device+0x186>
 8006f5e:	e09d      	b.n	800709c <VL53L0X_get_info_from_device+0x2c2>
 8006f60:	687b      	ldr	r3, [r7, #4]
 8006f62:	226b      	movs	r2, #107	; 0x6b
 8006f64:	2194      	movs	r1, #148	; 0x94
 8006f66:	0018      	movs	r0, r3
 8006f68:	f7fc fb56 	bl	8003618 <VL53L0X_WrByte>
 8006f6c:	0003      	movs	r3, r0
 8006f6e:	0019      	movs	r1, r3
 8006f70:	193b      	adds	r3, r7, r4
 8006f72:	193a      	adds	r2, r7, r4
 8006f74:	7812      	ldrb	r2, [r2, #0]
 8006f76:	430a      	orrs	r2, r1
 8006f78:	701a      	strb	r2, [r3, #0]
 8006f7a:	687b      	ldr	r3, [r7, #4]
 8006f7c:	0018      	movs	r0, r3
 8006f7e:	f7ff fed6 	bl	8006d2e <VL53L0X_device_read_strobe>
 8006f82:	0003      	movs	r3, r0
 8006f84:	0019      	movs	r1, r3
 8006f86:	193b      	adds	r3, r7, r4
 8006f88:	193a      	adds	r2, r7, r4
 8006f8a:	7812      	ldrb	r2, [r2, #0]
 8006f8c:	430a      	orrs	r2, r1
 8006f8e:	701a      	strb	r2, [r3, #0]
 8006f90:	2630      	movs	r6, #48	; 0x30
 8006f92:	19ba      	adds	r2, r7, r6
 8006f94:	687b      	ldr	r3, [r7, #4]
 8006f96:	2190      	movs	r1, #144	; 0x90
 8006f98:	0018      	movs	r0, r3
 8006f9a:	f7fc fbe3 	bl	8003764 <VL53L0X_RdDWord>
 8006f9e:	0003      	movs	r3, r0
 8006fa0:	0019      	movs	r1, r3
 8006fa2:	193b      	adds	r3, r7, r4
 8006fa4:	193a      	adds	r2, r7, r4
 8006fa6:	7812      	ldrb	r2, [r2, #0]
 8006fa8:	430a      	orrs	r2, r1
 8006faa:	701a      	strb	r2, [r3, #0]
 8006fac:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8006fae:	0a1b      	lsrs	r3, r3, #8
 8006fb0:	b2da      	uxtb	r2, r3
 8006fb2:	2356      	movs	r3, #86	; 0x56
 8006fb4:	18fb      	adds	r3, r7, r3
 8006fb6:	217f      	movs	r1, #127	; 0x7f
 8006fb8:	400a      	ands	r2, r1
 8006fba:	701a      	strb	r2, [r3, #0]
 8006fbc:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8006fbe:	0bdb      	lsrs	r3, r3, #15
 8006fc0:	b2da      	uxtb	r2, r3
 8006fc2:	2355      	movs	r3, #85	; 0x55
 8006fc4:	18fb      	adds	r3, r7, r3
 8006fc6:	2101      	movs	r1, #1
 8006fc8:	400a      	ands	r2, r1
 8006fca:	701a      	strb	r2, [r3, #0]
 8006fcc:	687b      	ldr	r3, [r7, #4]
 8006fce:	2224      	movs	r2, #36	; 0x24
 8006fd0:	2194      	movs	r1, #148	; 0x94
 8006fd2:	0018      	movs	r0, r3
 8006fd4:	f7fc fb20 	bl	8003618 <VL53L0X_WrByte>
 8006fd8:	0003      	movs	r3, r0
 8006fda:	0019      	movs	r1, r3
 8006fdc:	193b      	adds	r3, r7, r4
 8006fde:	193a      	adds	r2, r7, r4
 8006fe0:	7812      	ldrb	r2, [r2, #0]
 8006fe2:	430a      	orrs	r2, r1
 8006fe4:	701a      	strb	r2, [r3, #0]
 8006fe6:	687b      	ldr	r3, [r7, #4]
 8006fe8:	0018      	movs	r0, r3
 8006fea:	f7ff fea0 	bl	8006d2e <VL53L0X_device_read_strobe>
 8006fee:	0003      	movs	r3, r0
 8006ff0:	0019      	movs	r1, r3
 8006ff2:	193b      	adds	r3, r7, r4
 8006ff4:	193a      	adds	r2, r7, r4
 8006ff6:	7812      	ldrb	r2, [r2, #0]
 8006ff8:	430a      	orrs	r2, r1
 8006ffa:	701a      	strb	r2, [r3, #0]
 8006ffc:	19ba      	adds	r2, r7, r6
 8006ffe:	687b      	ldr	r3, [r7, #4]
 8007000:	2190      	movs	r1, #144	; 0x90
 8007002:	0018      	movs	r0, r3
 8007004:	f7fc fbae 	bl	8003764 <VL53L0X_RdDWord>
 8007008:	0003      	movs	r3, r0
 800700a:	0019      	movs	r1, r3
 800700c:	193b      	adds	r3, r7, r4
 800700e:	193a      	adds	r2, r7, r4
 8007010:	7812      	ldrb	r2, [r2, #0]
 8007012:	430a      	orrs	r2, r1
 8007014:	701a      	strb	r2, [r3, #0]
 8007016:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8007018:	0e1b      	lsrs	r3, r3, #24
 800701a:	b2da      	uxtb	r2, r3
 800701c:	2508      	movs	r5, #8
 800701e:	197b      	adds	r3, r7, r5
 8007020:	701a      	strb	r2, [r3, #0]
 8007022:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8007024:	0c1b      	lsrs	r3, r3, #16
 8007026:	b2da      	uxtb	r2, r3
 8007028:	197b      	adds	r3, r7, r5
 800702a:	705a      	strb	r2, [r3, #1]
 800702c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800702e:	0a1b      	lsrs	r3, r3, #8
 8007030:	b2da      	uxtb	r2, r3
 8007032:	197b      	adds	r3, r7, r5
 8007034:	709a      	strb	r2, [r3, #2]
 8007036:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8007038:	b2da      	uxtb	r2, r3
 800703a:	197b      	adds	r3, r7, r5
 800703c:	70da      	strb	r2, [r3, #3]
 800703e:	687b      	ldr	r3, [r7, #4]
 8007040:	2225      	movs	r2, #37	; 0x25
 8007042:	2194      	movs	r1, #148	; 0x94
 8007044:	0018      	movs	r0, r3
 8007046:	f7fc fae7 	bl	8003618 <VL53L0X_WrByte>
 800704a:	0003      	movs	r3, r0
 800704c:	0019      	movs	r1, r3
 800704e:	193b      	adds	r3, r7, r4
 8007050:	193a      	adds	r2, r7, r4
 8007052:	7812      	ldrb	r2, [r2, #0]
 8007054:	430a      	orrs	r2, r1
 8007056:	701a      	strb	r2, [r3, #0]
 8007058:	687b      	ldr	r3, [r7, #4]
 800705a:	0018      	movs	r0, r3
 800705c:	f7ff fe67 	bl	8006d2e <VL53L0X_device_read_strobe>
 8007060:	0003      	movs	r3, r0
 8007062:	0019      	movs	r1, r3
 8007064:	193b      	adds	r3, r7, r4
 8007066:	193a      	adds	r2, r7, r4
 8007068:	7812      	ldrb	r2, [r2, #0]
 800706a:	430a      	orrs	r2, r1
 800706c:	701a      	strb	r2, [r3, #0]
 800706e:	19ba      	adds	r2, r7, r6
 8007070:	687b      	ldr	r3, [r7, #4]
 8007072:	2190      	movs	r1, #144	; 0x90
 8007074:	0018      	movs	r0, r3
 8007076:	f7fc fb75 	bl	8003764 <VL53L0X_RdDWord>
 800707a:	0003      	movs	r3, r0
 800707c:	0019      	movs	r1, r3
 800707e:	193b      	adds	r3, r7, r4
 8007080:	193a      	adds	r2, r7, r4
 8007082:	7812      	ldrb	r2, [r2, #0]
 8007084:	430a      	orrs	r2, r1
 8007086:	701a      	strb	r2, [r3, #0]
 8007088:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800708a:	0e1b      	lsrs	r3, r3, #24
 800708c:	b2da      	uxtb	r2, r3
 800708e:	197b      	adds	r3, r7, r5
 8007090:	711a      	strb	r2, [r3, #4]
 8007092:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8007094:	0c1b      	lsrs	r3, r3, #16
 8007096:	b2da      	uxtb	r2, r3
 8007098:	197b      	adds	r3, r7, r5
 800709a:	715a      	strb	r2, [r3, #5]
 800709c:	1cfb      	adds	r3, r7, #3
 800709e:	781b      	ldrb	r3, [r3, #0]
 80070a0:	2202      	movs	r2, #2
 80070a2:	4013      	ands	r3, r2
 80070a4:	d100      	bne.n	80070a8 <VL53L0X_get_info_from_device+0x2ce>
 80070a6:	e1aa      	b.n	80073fe <VL53L0X_get_info_from_device+0x624>
 80070a8:	2337      	movs	r3, #55	; 0x37
 80070aa:	18fb      	adds	r3, r7, r3
 80070ac:	781b      	ldrb	r3, [r3, #0]
 80070ae:	2202      	movs	r2, #2
 80070b0:	4013      	ands	r3, r2
 80070b2:	d000      	beq.n	80070b6 <VL53L0X_get_info_from_device+0x2dc>
 80070b4:	e1a3      	b.n	80073fe <VL53L0X_get_info_from_device+0x624>
 80070b6:	687b      	ldr	r3, [r7, #4]
 80070b8:	2202      	movs	r2, #2
 80070ba:	2194      	movs	r1, #148	; 0x94
 80070bc:	0018      	movs	r0, r3
 80070be:	f7fc faab 	bl	8003618 <VL53L0X_WrByte>
 80070c2:	0003      	movs	r3, r0
 80070c4:	0019      	movs	r1, r3
 80070c6:	2457      	movs	r4, #87	; 0x57
 80070c8:	193b      	adds	r3, r7, r4
 80070ca:	193a      	adds	r2, r7, r4
 80070cc:	7812      	ldrb	r2, [r2, #0]
 80070ce:	430a      	orrs	r2, r1
 80070d0:	701a      	strb	r2, [r3, #0]
 80070d2:	687b      	ldr	r3, [r7, #4]
 80070d4:	0018      	movs	r0, r3
 80070d6:	f7ff fe2a 	bl	8006d2e <VL53L0X_device_read_strobe>
 80070da:	0003      	movs	r3, r0
 80070dc:	0019      	movs	r1, r3
 80070de:	193b      	adds	r3, r7, r4
 80070e0:	193a      	adds	r2, r7, r4
 80070e2:	7812      	ldrb	r2, [r2, #0]
 80070e4:	430a      	orrs	r2, r1
 80070e6:	701a      	strb	r2, [r3, #0]
 80070e8:	232f      	movs	r3, #47	; 0x2f
 80070ea:	18fa      	adds	r2, r7, r3
 80070ec:	687b      	ldr	r3, [r7, #4]
 80070ee:	2190      	movs	r1, #144	; 0x90
 80070f0:	0018      	movs	r0, r3
 80070f2:	f7fc faff 	bl	80036f4 <VL53L0X_RdByte>
 80070f6:	0003      	movs	r3, r0
 80070f8:	0019      	movs	r1, r3
 80070fa:	193b      	adds	r3, r7, r4
 80070fc:	193a      	adds	r2, r7, r4
 80070fe:	7812      	ldrb	r2, [r2, #0]
 8007100:	430a      	orrs	r2, r1
 8007102:	701a      	strb	r2, [r3, #0]
 8007104:	687b      	ldr	r3, [r7, #4]
 8007106:	227b      	movs	r2, #123	; 0x7b
 8007108:	2194      	movs	r1, #148	; 0x94
 800710a:	0018      	movs	r0, r3
 800710c:	f7fc fa84 	bl	8003618 <VL53L0X_WrByte>
 8007110:	0003      	movs	r3, r0
 8007112:	0019      	movs	r1, r3
 8007114:	193b      	adds	r3, r7, r4
 8007116:	193a      	adds	r2, r7, r4
 8007118:	7812      	ldrb	r2, [r2, #0]
 800711a:	430a      	orrs	r2, r1
 800711c:	701a      	strb	r2, [r3, #0]
 800711e:	687b      	ldr	r3, [r7, #4]
 8007120:	0018      	movs	r0, r3
 8007122:	f7ff fe04 	bl	8006d2e <VL53L0X_device_read_strobe>
 8007126:	0003      	movs	r3, r0
 8007128:	0019      	movs	r1, r3
 800712a:	193b      	adds	r3, r7, r4
 800712c:	193a      	adds	r2, r7, r4
 800712e:	7812      	ldrb	r2, [r2, #0]
 8007130:	430a      	orrs	r2, r1
 8007132:	701a      	strb	r2, [r3, #0]
 8007134:	232e      	movs	r3, #46	; 0x2e
 8007136:	18fa      	adds	r2, r7, r3
 8007138:	687b      	ldr	r3, [r7, #4]
 800713a:	2190      	movs	r1, #144	; 0x90
 800713c:	0018      	movs	r0, r3
 800713e:	f7fc fad9 	bl	80036f4 <VL53L0X_RdByte>
 8007142:	0003      	movs	r3, r0
 8007144:	0019      	movs	r1, r3
 8007146:	193b      	adds	r3, r7, r4
 8007148:	193a      	adds	r2, r7, r4
 800714a:	7812      	ldrb	r2, [r2, #0]
 800714c:	430a      	orrs	r2, r1
 800714e:	701a      	strb	r2, [r3, #0]
 8007150:	687b      	ldr	r3, [r7, #4]
 8007152:	2277      	movs	r2, #119	; 0x77
 8007154:	2194      	movs	r1, #148	; 0x94
 8007156:	0018      	movs	r0, r3
 8007158:	f7fc fa5e 	bl	8003618 <VL53L0X_WrByte>
 800715c:	0003      	movs	r3, r0
 800715e:	0019      	movs	r1, r3
 8007160:	193b      	adds	r3, r7, r4
 8007162:	193a      	adds	r2, r7, r4
 8007164:	7812      	ldrb	r2, [r2, #0]
 8007166:	430a      	orrs	r2, r1
 8007168:	701a      	strb	r2, [r3, #0]
 800716a:	687b      	ldr	r3, [r7, #4]
 800716c:	0018      	movs	r0, r3
 800716e:	f7ff fdde 	bl	8006d2e <VL53L0X_device_read_strobe>
 8007172:	0003      	movs	r3, r0
 8007174:	0019      	movs	r1, r3
 8007176:	193b      	adds	r3, r7, r4
 8007178:	193a      	adds	r2, r7, r4
 800717a:	7812      	ldrb	r2, [r2, #0]
 800717c:	430a      	orrs	r2, r1
 800717e:	701a      	strb	r2, [r3, #0]
 8007180:	2330      	movs	r3, #48	; 0x30
 8007182:	18fa      	adds	r2, r7, r3
 8007184:	687b      	ldr	r3, [r7, #4]
 8007186:	2190      	movs	r1, #144	; 0x90
 8007188:	0018      	movs	r0, r3
 800718a:	f7fc faeb 	bl	8003764 <VL53L0X_RdDWord>
 800718e:	0003      	movs	r3, r0
 8007190:	0019      	movs	r1, r3
 8007192:	193b      	adds	r3, r7, r4
 8007194:	193a      	adds	r2, r7, r4
 8007196:	7812      	ldrb	r2, [r2, #0]
 8007198:	430a      	orrs	r2, r1
 800719a:	701a      	strb	r2, [r3, #0]
 800719c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800719e:	0e5b      	lsrs	r3, r3, #25
 80071a0:	b2db      	uxtb	r3, r3
 80071a2:	227f      	movs	r2, #127	; 0x7f
 80071a4:	4013      	ands	r3, r2
 80071a6:	b2da      	uxtb	r2, r3
 80071a8:	2510      	movs	r5, #16
 80071aa:	197b      	adds	r3, r7, r5
 80071ac:	701a      	strb	r2, [r3, #0]
 80071ae:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80071b0:	0c9b      	lsrs	r3, r3, #18
 80071b2:	b2db      	uxtb	r3, r3
 80071b4:	227f      	movs	r2, #127	; 0x7f
 80071b6:	4013      	ands	r3, r2
 80071b8:	b2da      	uxtb	r2, r3
 80071ba:	197b      	adds	r3, r7, r5
 80071bc:	705a      	strb	r2, [r3, #1]
 80071be:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80071c0:	0adb      	lsrs	r3, r3, #11
 80071c2:	b2db      	uxtb	r3, r3
 80071c4:	227f      	movs	r2, #127	; 0x7f
 80071c6:	4013      	ands	r3, r2
 80071c8:	b2da      	uxtb	r2, r3
 80071ca:	197b      	adds	r3, r7, r5
 80071cc:	709a      	strb	r2, [r3, #2]
 80071ce:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80071d0:	091b      	lsrs	r3, r3, #4
 80071d2:	b2db      	uxtb	r3, r3
 80071d4:	227f      	movs	r2, #127	; 0x7f
 80071d6:	4013      	ands	r3, r2
 80071d8:	b2da      	uxtb	r2, r3
 80071da:	197b      	adds	r3, r7, r5
 80071dc:	70da      	strb	r2, [r3, #3]
 80071de:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80071e0:	b2db      	uxtb	r3, r3
 80071e2:	00db      	lsls	r3, r3, #3
 80071e4:	b2db      	uxtb	r3, r3
 80071e6:	2278      	movs	r2, #120	; 0x78
 80071e8:	4013      	ands	r3, r2
 80071ea:	b2da      	uxtb	r2, r3
 80071ec:	2636      	movs	r6, #54	; 0x36
 80071ee:	19bb      	adds	r3, r7, r6
 80071f0:	701a      	strb	r2, [r3, #0]
 80071f2:	687b      	ldr	r3, [r7, #4]
 80071f4:	2278      	movs	r2, #120	; 0x78
 80071f6:	2194      	movs	r1, #148	; 0x94
 80071f8:	0018      	movs	r0, r3
 80071fa:	f7fc fa0d 	bl	8003618 <VL53L0X_WrByte>
 80071fe:	0003      	movs	r3, r0
 8007200:	0019      	movs	r1, r3
 8007202:	193b      	adds	r3, r7, r4
 8007204:	193a      	adds	r2, r7, r4
 8007206:	7812      	ldrb	r2, [r2, #0]
 8007208:	430a      	orrs	r2, r1
 800720a:	701a      	strb	r2, [r3, #0]
 800720c:	687b      	ldr	r3, [r7, #4]
 800720e:	0018      	movs	r0, r3
 8007210:	f7ff fd8d 	bl	8006d2e <VL53L0X_device_read_strobe>
 8007214:	0003      	movs	r3, r0
 8007216:	0019      	movs	r1, r3
 8007218:	193b      	adds	r3, r7, r4
 800721a:	193a      	adds	r2, r7, r4
 800721c:	7812      	ldrb	r2, [r2, #0]
 800721e:	430a      	orrs	r2, r1
 8007220:	701a      	strb	r2, [r3, #0]
 8007222:	2330      	movs	r3, #48	; 0x30
 8007224:	18fa      	adds	r2, r7, r3
 8007226:	687b      	ldr	r3, [r7, #4]
 8007228:	2190      	movs	r1, #144	; 0x90
 800722a:	0018      	movs	r0, r3
 800722c:	f7fc fa9a 	bl	8003764 <VL53L0X_RdDWord>
 8007230:	0003      	movs	r3, r0
 8007232:	0019      	movs	r1, r3
 8007234:	193b      	adds	r3, r7, r4
 8007236:	193a      	adds	r2, r7, r4
 8007238:	7812      	ldrb	r2, [r2, #0]
 800723a:	430a      	orrs	r2, r1
 800723c:	701a      	strb	r2, [r3, #0]
 800723e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8007240:	0f5b      	lsrs	r3, r3, #29
 8007242:	b2db      	uxtb	r3, r3
 8007244:	227f      	movs	r2, #127	; 0x7f
 8007246:	4013      	ands	r3, r2
 8007248:	b2da      	uxtb	r2, r3
 800724a:	0031      	movs	r1, r6
 800724c:	187b      	adds	r3, r7, r1
 800724e:	781b      	ldrb	r3, [r3, #0]
 8007250:	18d3      	adds	r3, r2, r3
 8007252:	b2da      	uxtb	r2, r3
 8007254:	197b      	adds	r3, r7, r5
 8007256:	711a      	strb	r2, [r3, #4]
 8007258:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800725a:	0d9b      	lsrs	r3, r3, #22
 800725c:	b2db      	uxtb	r3, r3
 800725e:	227f      	movs	r2, #127	; 0x7f
 8007260:	4013      	ands	r3, r2
 8007262:	b2da      	uxtb	r2, r3
 8007264:	197b      	adds	r3, r7, r5
 8007266:	715a      	strb	r2, [r3, #5]
 8007268:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800726a:	0bdb      	lsrs	r3, r3, #15
 800726c:	b2db      	uxtb	r3, r3
 800726e:	227f      	movs	r2, #127	; 0x7f
 8007270:	4013      	ands	r3, r2
 8007272:	b2da      	uxtb	r2, r3
 8007274:	197b      	adds	r3, r7, r5
 8007276:	719a      	strb	r2, [r3, #6]
 8007278:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800727a:	0a1b      	lsrs	r3, r3, #8
 800727c:	b2db      	uxtb	r3, r3
 800727e:	227f      	movs	r2, #127	; 0x7f
 8007280:	4013      	ands	r3, r2
 8007282:	b2da      	uxtb	r2, r3
 8007284:	197b      	adds	r3, r7, r5
 8007286:	71da      	strb	r2, [r3, #7]
 8007288:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800728a:	085b      	lsrs	r3, r3, #1
 800728c:	b2db      	uxtb	r3, r3
 800728e:	227f      	movs	r2, #127	; 0x7f
 8007290:	4013      	ands	r3, r2
 8007292:	b2da      	uxtb	r2, r3
 8007294:	197b      	adds	r3, r7, r5
 8007296:	721a      	strb	r2, [r3, #8]
 8007298:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800729a:	b2db      	uxtb	r3, r3
 800729c:	019b      	lsls	r3, r3, #6
 800729e:	b2db      	uxtb	r3, r3
 80072a0:	2240      	movs	r2, #64	; 0x40
 80072a2:	4013      	ands	r3, r2
 80072a4:	b2da      	uxtb	r2, r3
 80072a6:	000e      	movs	r6, r1
 80072a8:	19bb      	adds	r3, r7, r6
 80072aa:	701a      	strb	r2, [r3, #0]
 80072ac:	687b      	ldr	r3, [r7, #4]
 80072ae:	2279      	movs	r2, #121	; 0x79
 80072b0:	2194      	movs	r1, #148	; 0x94
 80072b2:	0018      	movs	r0, r3
 80072b4:	f7fc f9b0 	bl	8003618 <VL53L0X_WrByte>
 80072b8:	0003      	movs	r3, r0
 80072ba:	0019      	movs	r1, r3
 80072bc:	193b      	adds	r3, r7, r4
 80072be:	193a      	adds	r2, r7, r4
 80072c0:	7812      	ldrb	r2, [r2, #0]
 80072c2:	430a      	orrs	r2, r1
 80072c4:	701a      	strb	r2, [r3, #0]
 80072c6:	687b      	ldr	r3, [r7, #4]
 80072c8:	0018      	movs	r0, r3
 80072ca:	f7ff fd30 	bl	8006d2e <VL53L0X_device_read_strobe>
 80072ce:	0003      	movs	r3, r0
 80072d0:	0019      	movs	r1, r3
 80072d2:	193b      	adds	r3, r7, r4
 80072d4:	193a      	adds	r2, r7, r4
 80072d6:	7812      	ldrb	r2, [r2, #0]
 80072d8:	430a      	orrs	r2, r1
 80072da:	701a      	strb	r2, [r3, #0]
 80072dc:	2330      	movs	r3, #48	; 0x30
 80072de:	18fa      	adds	r2, r7, r3
 80072e0:	687b      	ldr	r3, [r7, #4]
 80072e2:	2190      	movs	r1, #144	; 0x90
 80072e4:	0018      	movs	r0, r3
 80072e6:	f7fc fa3d 	bl	8003764 <VL53L0X_RdDWord>
 80072ea:	0003      	movs	r3, r0
 80072ec:	0019      	movs	r1, r3
 80072ee:	193b      	adds	r3, r7, r4
 80072f0:	193a      	adds	r2, r7, r4
 80072f2:	7812      	ldrb	r2, [r2, #0]
 80072f4:	430a      	orrs	r2, r1
 80072f6:	701a      	strb	r2, [r3, #0]
 80072f8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80072fa:	0e9b      	lsrs	r3, r3, #26
 80072fc:	b2db      	uxtb	r3, r3
 80072fe:	227f      	movs	r2, #127	; 0x7f
 8007300:	4013      	ands	r3, r2
 8007302:	b2da      	uxtb	r2, r3
 8007304:	19bb      	adds	r3, r7, r6
 8007306:	781b      	ldrb	r3, [r3, #0]
 8007308:	18d3      	adds	r3, r2, r3
 800730a:	b2da      	uxtb	r2, r3
 800730c:	197b      	adds	r3, r7, r5
 800730e:	725a      	strb	r2, [r3, #9]
 8007310:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8007312:	0cdb      	lsrs	r3, r3, #19
 8007314:	b2db      	uxtb	r3, r3
 8007316:	227f      	movs	r2, #127	; 0x7f
 8007318:	4013      	ands	r3, r2
 800731a:	b2da      	uxtb	r2, r3
 800731c:	197b      	adds	r3, r7, r5
 800731e:	729a      	strb	r2, [r3, #10]
 8007320:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8007322:	0b1b      	lsrs	r3, r3, #12
 8007324:	b2db      	uxtb	r3, r3
 8007326:	227f      	movs	r2, #127	; 0x7f
 8007328:	4013      	ands	r3, r2
 800732a:	b2da      	uxtb	r2, r3
 800732c:	197b      	adds	r3, r7, r5
 800732e:	72da      	strb	r2, [r3, #11]
 8007330:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8007332:	095b      	lsrs	r3, r3, #5
 8007334:	b2db      	uxtb	r3, r3
 8007336:	227f      	movs	r2, #127	; 0x7f
 8007338:	4013      	ands	r3, r2
 800733a:	b2da      	uxtb	r2, r3
 800733c:	197b      	adds	r3, r7, r5
 800733e:	731a      	strb	r2, [r3, #12]
 8007340:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8007342:	b2db      	uxtb	r3, r3
 8007344:	009b      	lsls	r3, r3, #2
 8007346:	b2db      	uxtb	r3, r3
 8007348:	227c      	movs	r2, #124	; 0x7c
 800734a:	4013      	ands	r3, r2
 800734c:	b2da      	uxtb	r2, r3
 800734e:	19bb      	adds	r3, r7, r6
 8007350:	701a      	strb	r2, [r3, #0]
 8007352:	687b      	ldr	r3, [r7, #4]
 8007354:	227a      	movs	r2, #122	; 0x7a
 8007356:	2194      	movs	r1, #148	; 0x94
 8007358:	0018      	movs	r0, r3
 800735a:	f7fc f95d 	bl	8003618 <VL53L0X_WrByte>
 800735e:	0003      	movs	r3, r0
 8007360:	0019      	movs	r1, r3
 8007362:	193b      	adds	r3, r7, r4
 8007364:	193a      	adds	r2, r7, r4
 8007366:	7812      	ldrb	r2, [r2, #0]
 8007368:	430a      	orrs	r2, r1
 800736a:	701a      	strb	r2, [r3, #0]
 800736c:	687b      	ldr	r3, [r7, #4]
 800736e:	0018      	movs	r0, r3
 8007370:	f7ff fcdd 	bl	8006d2e <VL53L0X_device_read_strobe>
 8007374:	0003      	movs	r3, r0
 8007376:	0019      	movs	r1, r3
 8007378:	193b      	adds	r3, r7, r4
 800737a:	193a      	adds	r2, r7, r4
 800737c:	7812      	ldrb	r2, [r2, #0]
 800737e:	430a      	orrs	r2, r1
 8007380:	701a      	strb	r2, [r3, #0]
 8007382:	2330      	movs	r3, #48	; 0x30
 8007384:	18fa      	adds	r2, r7, r3
 8007386:	687b      	ldr	r3, [r7, #4]
 8007388:	2190      	movs	r1, #144	; 0x90
 800738a:	0018      	movs	r0, r3
 800738c:	f7fc f9ea 	bl	8003764 <VL53L0X_RdDWord>
 8007390:	0003      	movs	r3, r0
 8007392:	0019      	movs	r1, r3
 8007394:	193b      	adds	r3, r7, r4
 8007396:	193a      	adds	r2, r7, r4
 8007398:	7812      	ldrb	r2, [r2, #0]
 800739a:	430a      	orrs	r2, r1
 800739c:	701a      	strb	r2, [r3, #0]
 800739e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80073a0:	0f9b      	lsrs	r3, r3, #30
 80073a2:	b2db      	uxtb	r3, r3
 80073a4:	227f      	movs	r2, #127	; 0x7f
 80073a6:	4013      	ands	r3, r2
 80073a8:	b2da      	uxtb	r2, r3
 80073aa:	19bb      	adds	r3, r7, r6
 80073ac:	781b      	ldrb	r3, [r3, #0]
 80073ae:	18d3      	adds	r3, r2, r3
 80073b0:	b2da      	uxtb	r2, r3
 80073b2:	0029      	movs	r1, r5
 80073b4:	187b      	adds	r3, r7, r1
 80073b6:	735a      	strb	r2, [r3, #13]
 80073b8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80073ba:	0ddb      	lsrs	r3, r3, #23
 80073bc:	b2db      	uxtb	r3, r3
 80073be:	227f      	movs	r2, #127	; 0x7f
 80073c0:	4013      	ands	r3, r2
 80073c2:	b2da      	uxtb	r2, r3
 80073c4:	187b      	adds	r3, r7, r1
 80073c6:	739a      	strb	r2, [r3, #14]
 80073c8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80073ca:	0c1b      	lsrs	r3, r3, #16
 80073cc:	b2db      	uxtb	r3, r3
 80073ce:	227f      	movs	r2, #127	; 0x7f
 80073d0:	4013      	ands	r3, r2
 80073d2:	b2da      	uxtb	r2, r3
 80073d4:	187b      	adds	r3, r7, r1
 80073d6:	73da      	strb	r2, [r3, #15]
 80073d8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80073da:	0a5b      	lsrs	r3, r3, #9
 80073dc:	b2db      	uxtb	r3, r3
 80073de:	227f      	movs	r2, #127	; 0x7f
 80073e0:	4013      	ands	r3, r2
 80073e2:	b2da      	uxtb	r2, r3
 80073e4:	187b      	adds	r3, r7, r1
 80073e6:	741a      	strb	r2, [r3, #16]
 80073e8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80073ea:	089b      	lsrs	r3, r3, #2
 80073ec:	b2db      	uxtb	r3, r3
 80073ee:	227f      	movs	r2, #127	; 0x7f
 80073f0:	4013      	ands	r3, r2
 80073f2:	b2da      	uxtb	r2, r3
 80073f4:	187b      	adds	r3, r7, r1
 80073f6:	745a      	strb	r2, [r3, #17]
 80073f8:	187b      	adds	r3, r7, r1
 80073fa:	2200      	movs	r2, #0
 80073fc:	749a      	strb	r2, [r3, #18]
 80073fe:	1cfb      	adds	r3, r7, #3
 8007400:	781b      	ldrb	r3, [r3, #0]
 8007402:	2204      	movs	r2, #4
 8007404:	4013      	ands	r3, r2
 8007406:	d100      	bne.n	800740a <VL53L0X_get_info_from_device+0x630>
 8007408:	e0fc      	b.n	8007604 <VL53L0X_get_info_from_device+0x82a>
 800740a:	2337      	movs	r3, #55	; 0x37
 800740c:	18fb      	adds	r3, r7, r3
 800740e:	781b      	ldrb	r3, [r3, #0]
 8007410:	2204      	movs	r2, #4
 8007412:	4013      	ands	r3, r2
 8007414:	d000      	beq.n	8007418 <VL53L0X_get_info_from_device+0x63e>
 8007416:	e0f5      	b.n	8007604 <VL53L0X_get_info_from_device+0x82a>
 8007418:	687b      	ldr	r3, [r7, #4]
 800741a:	227b      	movs	r2, #123	; 0x7b
 800741c:	2194      	movs	r1, #148	; 0x94
 800741e:	0018      	movs	r0, r3
 8007420:	f7fc f8fa 	bl	8003618 <VL53L0X_WrByte>
 8007424:	0003      	movs	r3, r0
 8007426:	0019      	movs	r1, r3
 8007428:	2457      	movs	r4, #87	; 0x57
 800742a:	193b      	adds	r3, r7, r4
 800742c:	193a      	adds	r2, r7, r4
 800742e:	7812      	ldrb	r2, [r2, #0]
 8007430:	430a      	orrs	r2, r1
 8007432:	701a      	strb	r2, [r3, #0]
 8007434:	687b      	ldr	r3, [r7, #4]
 8007436:	0018      	movs	r0, r3
 8007438:	f7ff fc79 	bl	8006d2e <VL53L0X_device_read_strobe>
 800743c:	0003      	movs	r3, r0
 800743e:	0019      	movs	r1, r3
 8007440:	193b      	adds	r3, r7, r4
 8007442:	193a      	adds	r2, r7, r4
 8007444:	7812      	ldrb	r2, [r2, #0]
 8007446:	430a      	orrs	r2, r1
 8007448:	701a      	strb	r2, [r3, #0]
 800744a:	2328      	movs	r3, #40	; 0x28
 800744c:	18fa      	adds	r2, r7, r3
 800744e:	687b      	ldr	r3, [r7, #4]
 8007450:	2190      	movs	r1, #144	; 0x90
 8007452:	0018      	movs	r0, r3
 8007454:	f7fc f986 	bl	8003764 <VL53L0X_RdDWord>
 8007458:	0003      	movs	r3, r0
 800745a:	0019      	movs	r1, r3
 800745c:	193b      	adds	r3, r7, r4
 800745e:	193a      	adds	r2, r7, r4
 8007460:	7812      	ldrb	r2, [r2, #0]
 8007462:	430a      	orrs	r2, r1
 8007464:	701a      	strb	r2, [r3, #0]
 8007466:	687b      	ldr	r3, [r7, #4]
 8007468:	227c      	movs	r2, #124	; 0x7c
 800746a:	2194      	movs	r1, #148	; 0x94
 800746c:	0018      	movs	r0, r3
 800746e:	f7fc f8d3 	bl	8003618 <VL53L0X_WrByte>
 8007472:	0003      	movs	r3, r0
 8007474:	0019      	movs	r1, r3
 8007476:	193b      	adds	r3, r7, r4
 8007478:	193a      	adds	r2, r7, r4
 800747a:	7812      	ldrb	r2, [r2, #0]
 800747c:	430a      	orrs	r2, r1
 800747e:	701a      	strb	r2, [r3, #0]
 8007480:	687b      	ldr	r3, [r7, #4]
 8007482:	0018      	movs	r0, r3
 8007484:	f7ff fc53 	bl	8006d2e <VL53L0X_device_read_strobe>
 8007488:	0003      	movs	r3, r0
 800748a:	0019      	movs	r1, r3
 800748c:	193b      	adds	r3, r7, r4
 800748e:	193a      	adds	r2, r7, r4
 8007490:	7812      	ldrb	r2, [r2, #0]
 8007492:	430a      	orrs	r2, r1
 8007494:	701a      	strb	r2, [r3, #0]
 8007496:	2324      	movs	r3, #36	; 0x24
 8007498:	18fa      	adds	r2, r7, r3
 800749a:	687b      	ldr	r3, [r7, #4]
 800749c:	2190      	movs	r1, #144	; 0x90
 800749e:	0018      	movs	r0, r3
 80074a0:	f7fc f960 	bl	8003764 <VL53L0X_RdDWord>
 80074a4:	0003      	movs	r3, r0
 80074a6:	0019      	movs	r1, r3
 80074a8:	193b      	adds	r3, r7, r4
 80074aa:	193a      	adds	r2, r7, r4
 80074ac:	7812      	ldrb	r2, [r2, #0]
 80074ae:	430a      	orrs	r2, r1
 80074b0:	701a      	strb	r2, [r3, #0]
 80074b2:	687b      	ldr	r3, [r7, #4]
 80074b4:	2273      	movs	r2, #115	; 0x73
 80074b6:	2194      	movs	r1, #148	; 0x94
 80074b8:	0018      	movs	r0, r3
 80074ba:	f7fc f8ad 	bl	8003618 <VL53L0X_WrByte>
 80074be:	0003      	movs	r3, r0
 80074c0:	0019      	movs	r1, r3
 80074c2:	193b      	adds	r3, r7, r4
 80074c4:	193a      	adds	r2, r7, r4
 80074c6:	7812      	ldrb	r2, [r2, #0]
 80074c8:	430a      	orrs	r2, r1
 80074ca:	701a      	strb	r2, [r3, #0]
 80074cc:	687b      	ldr	r3, [r7, #4]
 80074ce:	0018      	movs	r0, r3
 80074d0:	f7ff fc2d 	bl	8006d2e <VL53L0X_device_read_strobe>
 80074d4:	0003      	movs	r3, r0
 80074d6:	0019      	movs	r1, r3
 80074d8:	193b      	adds	r3, r7, r4
 80074da:	193a      	adds	r2, r7, r4
 80074dc:	7812      	ldrb	r2, [r2, #0]
 80074de:	430a      	orrs	r2, r1
 80074e0:	701a      	strb	r2, [r3, #0]
 80074e2:	2530      	movs	r5, #48	; 0x30
 80074e4:	197a      	adds	r2, r7, r5
 80074e6:	687b      	ldr	r3, [r7, #4]
 80074e8:	2190      	movs	r1, #144	; 0x90
 80074ea:	0018      	movs	r0, r3
 80074ec:	f7fc f93a 	bl	8003764 <VL53L0X_RdDWord>
 80074f0:	0003      	movs	r3, r0
 80074f2:	0019      	movs	r1, r3
 80074f4:	193b      	adds	r3, r7, r4
 80074f6:	193a      	adds	r2, r7, r4
 80074f8:	7812      	ldrb	r2, [r2, #0]
 80074fa:	430a      	orrs	r2, r1
 80074fc:	701a      	strb	r2, [r3, #0]
 80074fe:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8007500:	021b      	lsls	r3, r3, #8
 8007502:	041b      	lsls	r3, r3, #16
 8007504:	0c1b      	lsrs	r3, r3, #16
 8007506:	64bb      	str	r3, [r7, #72]	; 0x48
 8007508:	687b      	ldr	r3, [r7, #4]
 800750a:	2274      	movs	r2, #116	; 0x74
 800750c:	2194      	movs	r1, #148	; 0x94
 800750e:	0018      	movs	r0, r3
 8007510:	f7fc f882 	bl	8003618 <VL53L0X_WrByte>
 8007514:	0003      	movs	r3, r0
 8007516:	0019      	movs	r1, r3
 8007518:	193b      	adds	r3, r7, r4
 800751a:	193a      	adds	r2, r7, r4
 800751c:	7812      	ldrb	r2, [r2, #0]
 800751e:	430a      	orrs	r2, r1
 8007520:	701a      	strb	r2, [r3, #0]
 8007522:	687b      	ldr	r3, [r7, #4]
 8007524:	0018      	movs	r0, r3
 8007526:	f7ff fc02 	bl	8006d2e <VL53L0X_device_read_strobe>
 800752a:	0003      	movs	r3, r0
 800752c:	0019      	movs	r1, r3
 800752e:	193b      	adds	r3, r7, r4
 8007530:	193a      	adds	r2, r7, r4
 8007532:	7812      	ldrb	r2, [r2, #0]
 8007534:	430a      	orrs	r2, r1
 8007536:	701a      	strb	r2, [r3, #0]
 8007538:	197a      	adds	r2, r7, r5
 800753a:	687b      	ldr	r3, [r7, #4]
 800753c:	2190      	movs	r1, #144	; 0x90
 800753e:	0018      	movs	r0, r3
 8007540:	f7fc f910 	bl	8003764 <VL53L0X_RdDWord>
 8007544:	0003      	movs	r3, r0
 8007546:	0019      	movs	r1, r3
 8007548:	193b      	adds	r3, r7, r4
 800754a:	193a      	adds	r2, r7, r4
 800754c:	7812      	ldrb	r2, [r2, #0]
 800754e:	430a      	orrs	r2, r1
 8007550:	701a      	strb	r2, [r3, #0]
 8007552:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8007554:	0e1b      	lsrs	r3, r3, #24
 8007556:	6cba      	ldr	r2, [r7, #72]	; 0x48
 8007558:	4313      	orrs	r3, r2
 800755a:	64bb      	str	r3, [r7, #72]	; 0x48
 800755c:	687b      	ldr	r3, [r7, #4]
 800755e:	2275      	movs	r2, #117	; 0x75
 8007560:	2194      	movs	r1, #148	; 0x94
 8007562:	0018      	movs	r0, r3
 8007564:	f7fc f858 	bl	8003618 <VL53L0X_WrByte>
 8007568:	0003      	movs	r3, r0
 800756a:	0019      	movs	r1, r3
 800756c:	193b      	adds	r3, r7, r4
 800756e:	193a      	adds	r2, r7, r4
 8007570:	7812      	ldrb	r2, [r2, #0]
 8007572:	430a      	orrs	r2, r1
 8007574:	701a      	strb	r2, [r3, #0]
 8007576:	687b      	ldr	r3, [r7, #4]
 8007578:	0018      	movs	r0, r3
 800757a:	f7ff fbd8 	bl	8006d2e <VL53L0X_device_read_strobe>
 800757e:	0003      	movs	r3, r0
 8007580:	0019      	movs	r1, r3
 8007582:	193b      	adds	r3, r7, r4
 8007584:	193a      	adds	r2, r7, r4
 8007586:	7812      	ldrb	r2, [r2, #0]
 8007588:	430a      	orrs	r2, r1
 800758a:	701a      	strb	r2, [r3, #0]
 800758c:	197a      	adds	r2, r7, r5
 800758e:	687b      	ldr	r3, [r7, #4]
 8007590:	2190      	movs	r1, #144	; 0x90
 8007592:	0018      	movs	r0, r3
 8007594:	f7fc f8e6 	bl	8003764 <VL53L0X_RdDWord>
 8007598:	0003      	movs	r3, r0
 800759a:	0019      	movs	r1, r3
 800759c:	193b      	adds	r3, r7, r4
 800759e:	193a      	adds	r2, r7, r4
 80075a0:	7812      	ldrb	r2, [r2, #0]
 80075a2:	430a      	orrs	r2, r1
 80075a4:	701a      	strb	r2, [r3, #0]
 80075a6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80075a8:	021b      	lsls	r3, r3, #8
 80075aa:	041b      	lsls	r3, r3, #16
 80075ac:	0c1b      	lsrs	r3, r3, #16
 80075ae:	64fb      	str	r3, [r7, #76]	; 0x4c
 80075b0:	687b      	ldr	r3, [r7, #4]
 80075b2:	2276      	movs	r2, #118	; 0x76
 80075b4:	2194      	movs	r1, #148	; 0x94
 80075b6:	0018      	movs	r0, r3
 80075b8:	f7fc f82e 	bl	8003618 <VL53L0X_WrByte>
 80075bc:	0003      	movs	r3, r0
 80075be:	0019      	movs	r1, r3
 80075c0:	193b      	adds	r3, r7, r4
 80075c2:	193a      	adds	r2, r7, r4
 80075c4:	7812      	ldrb	r2, [r2, #0]
 80075c6:	430a      	orrs	r2, r1
 80075c8:	701a      	strb	r2, [r3, #0]
 80075ca:	687b      	ldr	r3, [r7, #4]
 80075cc:	0018      	movs	r0, r3
 80075ce:	f7ff fbae 	bl	8006d2e <VL53L0X_device_read_strobe>
 80075d2:	0003      	movs	r3, r0
 80075d4:	0019      	movs	r1, r3
 80075d6:	193b      	adds	r3, r7, r4
 80075d8:	193a      	adds	r2, r7, r4
 80075da:	7812      	ldrb	r2, [r2, #0]
 80075dc:	430a      	orrs	r2, r1
 80075de:	701a      	strb	r2, [r3, #0]
 80075e0:	197a      	adds	r2, r7, r5
 80075e2:	687b      	ldr	r3, [r7, #4]
 80075e4:	2190      	movs	r1, #144	; 0x90
 80075e6:	0018      	movs	r0, r3
 80075e8:	f7fc f8bc 	bl	8003764 <VL53L0X_RdDWord>
 80075ec:	0003      	movs	r3, r0
 80075ee:	0019      	movs	r1, r3
 80075f0:	193b      	adds	r3, r7, r4
 80075f2:	193a      	adds	r2, r7, r4
 80075f4:	7812      	ldrb	r2, [r2, #0]
 80075f6:	430a      	orrs	r2, r1
 80075f8:	701a      	strb	r2, [r3, #0]
 80075fa:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80075fc:	0e1b      	lsrs	r3, r3, #24
 80075fe:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 8007600:	4313      	orrs	r3, r2
 8007602:	64fb      	str	r3, [r7, #76]	; 0x4c
 8007604:	687b      	ldr	r3, [r7, #4]
 8007606:	2200      	movs	r2, #0
 8007608:	2181      	movs	r1, #129	; 0x81
 800760a:	0018      	movs	r0, r3
 800760c:	f7fc f804 	bl	8003618 <VL53L0X_WrByte>
 8007610:	0003      	movs	r3, r0
 8007612:	0019      	movs	r1, r3
 8007614:	2457      	movs	r4, #87	; 0x57
 8007616:	193b      	adds	r3, r7, r4
 8007618:	193a      	adds	r2, r7, r4
 800761a:	7812      	ldrb	r2, [r2, #0]
 800761c:	430a      	orrs	r2, r1
 800761e:	701a      	strb	r2, [r3, #0]
 8007620:	687b      	ldr	r3, [r7, #4]
 8007622:	2206      	movs	r2, #6
 8007624:	21ff      	movs	r1, #255	; 0xff
 8007626:	0018      	movs	r0, r3
 8007628:	f7fb fff6 	bl	8003618 <VL53L0X_WrByte>
 800762c:	0003      	movs	r3, r0
 800762e:	0019      	movs	r1, r3
 8007630:	193b      	adds	r3, r7, r4
 8007632:	193a      	adds	r2, r7, r4
 8007634:	7812      	ldrb	r2, [r2, #0]
 8007636:	430a      	orrs	r2, r1
 8007638:	701a      	strb	r2, [r3, #0]
 800763a:	2536      	movs	r5, #54	; 0x36
 800763c:	197a      	adds	r2, r7, r5
 800763e:	687b      	ldr	r3, [r7, #4]
 8007640:	2183      	movs	r1, #131	; 0x83
 8007642:	0018      	movs	r0, r3
 8007644:	f7fc f856 	bl	80036f4 <VL53L0X_RdByte>
 8007648:	0003      	movs	r3, r0
 800764a:	0019      	movs	r1, r3
 800764c:	193b      	adds	r3, r7, r4
 800764e:	193a      	adds	r2, r7, r4
 8007650:	7812      	ldrb	r2, [r2, #0]
 8007652:	430a      	orrs	r2, r1
 8007654:	701a      	strb	r2, [r3, #0]
 8007656:	197b      	adds	r3, r7, r5
 8007658:	781b      	ldrb	r3, [r3, #0]
 800765a:	2204      	movs	r2, #4
 800765c:	4393      	bics	r3, r2
 800765e:	b2da      	uxtb	r2, r3
 8007660:	687b      	ldr	r3, [r7, #4]
 8007662:	2183      	movs	r1, #131	; 0x83
 8007664:	0018      	movs	r0, r3
 8007666:	f7fb ffd7 	bl	8003618 <VL53L0X_WrByte>
 800766a:	0003      	movs	r3, r0
 800766c:	0019      	movs	r1, r3
 800766e:	193b      	adds	r3, r7, r4
 8007670:	193a      	adds	r2, r7, r4
 8007672:	7812      	ldrb	r2, [r2, #0]
 8007674:	430a      	orrs	r2, r1
 8007676:	701a      	strb	r2, [r3, #0]
 8007678:	687b      	ldr	r3, [r7, #4]
 800767a:	2201      	movs	r2, #1
 800767c:	21ff      	movs	r1, #255	; 0xff
 800767e:	0018      	movs	r0, r3
 8007680:	f7fb ffca 	bl	8003618 <VL53L0X_WrByte>
 8007684:	0003      	movs	r3, r0
 8007686:	0019      	movs	r1, r3
 8007688:	193b      	adds	r3, r7, r4
 800768a:	193a      	adds	r2, r7, r4
 800768c:	7812      	ldrb	r2, [r2, #0]
 800768e:	430a      	orrs	r2, r1
 8007690:	701a      	strb	r2, [r3, #0]
 8007692:	687b      	ldr	r3, [r7, #4]
 8007694:	2201      	movs	r2, #1
 8007696:	2100      	movs	r1, #0
 8007698:	0018      	movs	r0, r3
 800769a:	f7fb ffbd 	bl	8003618 <VL53L0X_WrByte>
 800769e:	0003      	movs	r3, r0
 80076a0:	0019      	movs	r1, r3
 80076a2:	193b      	adds	r3, r7, r4
 80076a4:	193a      	adds	r2, r7, r4
 80076a6:	7812      	ldrb	r2, [r2, #0]
 80076a8:	430a      	orrs	r2, r1
 80076aa:	701a      	strb	r2, [r3, #0]
 80076ac:	687b      	ldr	r3, [r7, #4]
 80076ae:	2200      	movs	r2, #0
 80076b0:	21ff      	movs	r1, #255	; 0xff
 80076b2:	0018      	movs	r0, r3
 80076b4:	f7fb ffb0 	bl	8003618 <VL53L0X_WrByte>
 80076b8:	0003      	movs	r3, r0
 80076ba:	0019      	movs	r1, r3
 80076bc:	193b      	adds	r3, r7, r4
 80076be:	193a      	adds	r2, r7, r4
 80076c0:	7812      	ldrb	r2, [r2, #0]
 80076c2:	430a      	orrs	r2, r1
 80076c4:	701a      	strb	r2, [r3, #0]
 80076c6:	687b      	ldr	r3, [r7, #4]
 80076c8:	2200      	movs	r2, #0
 80076ca:	2180      	movs	r1, #128	; 0x80
 80076cc:	0018      	movs	r0, r3
 80076ce:	f7fb ffa3 	bl	8003618 <VL53L0X_WrByte>
 80076d2:	0003      	movs	r3, r0
 80076d4:	0019      	movs	r1, r3
 80076d6:	193b      	adds	r3, r7, r4
 80076d8:	193a      	adds	r2, r7, r4
 80076da:	7812      	ldrb	r2, [r2, #0]
 80076dc:	430a      	orrs	r2, r1
 80076de:	701a      	strb	r2, [r3, #0]
 80076e0:	2357      	movs	r3, #87	; 0x57
 80076e2:	18fb      	adds	r3, r7, r3
 80076e4:	781b      	ldrb	r3, [r3, #0]
 80076e6:	b25b      	sxtb	r3, r3
 80076e8:	2b00      	cmp	r3, #0
 80076ea:	d000      	beq.n	80076ee <VL53L0X_get_info_from_device+0x914>
 80076ec:	e093      	b.n	8007816 <VL53L0X_get_info_from_device+0xa3c>
 80076ee:	2137      	movs	r1, #55	; 0x37
 80076f0:	187b      	adds	r3, r7, r1
 80076f2:	781b      	ldrb	r3, [r3, #0]
 80076f4:	2b07      	cmp	r3, #7
 80076f6:	d100      	bne.n	80076fa <VL53L0X_get_info_from_device+0x920>
 80076f8:	e08d      	b.n	8007816 <VL53L0X_get_info_from_device+0xa3c>
 80076fa:	1cfb      	adds	r3, r7, #3
 80076fc:	781b      	ldrb	r3, [r3, #0]
 80076fe:	2201      	movs	r2, #1
 8007700:	4013      	ands	r3, r2
 8007702:	d026      	beq.n	8007752 <VL53L0X_get_info_from_device+0x978>
 8007704:	187b      	adds	r3, r7, r1
 8007706:	781b      	ldrb	r3, [r3, #0]
 8007708:	2201      	movs	r2, #1
 800770a:	4013      	ands	r3, r2
 800770c:	d121      	bne.n	8007752 <VL53L0X_get_info_from_device+0x978>
 800770e:	687b      	ldr	r3, [r7, #4]
 8007710:	2256      	movs	r2, #86	; 0x56
 8007712:	18ba      	adds	r2, r7, r2
 8007714:	21f3      	movs	r1, #243	; 0xf3
 8007716:	7812      	ldrb	r2, [r2, #0]
 8007718:	545a      	strb	r2, [r3, r1]
 800771a:	687b      	ldr	r3, [r7, #4]
 800771c:	2255      	movs	r2, #85	; 0x55
 800771e:	18ba      	adds	r2, r7, r2
 8007720:	21f4      	movs	r1, #244	; 0xf4
 8007722:	7812      	ldrb	r2, [r2, #0]
 8007724:	545a      	strb	r2, [r3, r1]
 8007726:	2300      	movs	r3, #0
 8007728:	647b      	str	r3, [r7, #68]	; 0x44
 800772a:	e00f      	b.n	800774c <VL53L0X_get_info_from_device+0x972>
 800772c:	2308      	movs	r3, #8
 800772e:	18fa      	adds	r2, r7, r3
 8007730:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8007732:	18d3      	adds	r3, r2, r3
 8007734:	7818      	ldrb	r0, [r3, #0]
 8007736:	6879      	ldr	r1, [r7, #4]
 8007738:	2385      	movs	r3, #133	; 0x85
 800773a:	005b      	lsls	r3, r3, #1
 800773c:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 800773e:	188a      	adds	r2, r1, r2
 8007740:	18d3      	adds	r3, r2, r3
 8007742:	1c02      	adds	r2, r0, #0
 8007744:	701a      	strb	r2, [r3, #0]
 8007746:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8007748:	3301      	adds	r3, #1
 800774a:	647b      	str	r3, [r7, #68]	; 0x44
 800774c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800774e:	2b05      	cmp	r3, #5
 8007750:	ddec      	ble.n	800772c <VL53L0X_get_info_from_device+0x952>
 8007752:	1cfb      	adds	r3, r7, #3
 8007754:	781b      	ldrb	r3, [r3, #0]
 8007756:	2202      	movs	r2, #2
 8007758:	4013      	ands	r3, r2
 800775a:	d011      	beq.n	8007780 <VL53L0X_get_info_from_device+0x9a6>
 800775c:	2337      	movs	r3, #55	; 0x37
 800775e:	18fb      	adds	r3, r7, r3
 8007760:	781b      	ldrb	r3, [r3, #0]
 8007762:	2202      	movs	r2, #2
 8007764:	4013      	ands	r3, r2
 8007766:	d10b      	bne.n	8007780 <VL53L0X_get_info_from_device+0x9a6>
 8007768:	232f      	movs	r3, #47	; 0x2f
 800776a:	18fb      	adds	r3, r7, r3
 800776c:	7819      	ldrb	r1, [r3, #0]
 800776e:	687b      	ldr	r3, [r7, #4]
 8007770:	22f1      	movs	r2, #241	; 0xf1
 8007772:	5499      	strb	r1, [r3, r2]
 8007774:	232e      	movs	r3, #46	; 0x2e
 8007776:	18fb      	adds	r3, r7, r3
 8007778:	7819      	ldrb	r1, [r3, #0]
 800777a:	687b      	ldr	r3, [r7, #4]
 800777c:	22f2      	movs	r2, #242	; 0xf2
 800777e:	5499      	strb	r1, [r3, r2]
 8007780:	1cfb      	adds	r3, r7, #3
 8007782:	781b      	ldrb	r3, [r3, #0]
 8007784:	2204      	movs	r2, #4
 8007786:	4013      	ands	r3, r2
 8007788:	d036      	beq.n	80077f8 <VL53L0X_get_info_from_device+0xa1e>
 800778a:	2337      	movs	r3, #55	; 0x37
 800778c:	18fb      	adds	r3, r7, r3
 800778e:	781b      	ldrb	r3, [r3, #0]
 8007790:	2204      	movs	r2, #4
 8007792:	4013      	ands	r3, r2
 8007794:	d130      	bne.n	80077f8 <VL53L0X_get_info_from_device+0xa1e>
 8007796:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8007798:	687b      	ldr	r3, [r7, #4]
 800779a:	21f8      	movs	r1, #248	; 0xf8
 800779c:	505a      	str	r2, [r3, r1]
 800779e:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 80077a0:	687b      	ldr	r3, [r7, #4]
 80077a2:	21fc      	movs	r1, #252	; 0xfc
 80077a4:	505a      	str	r2, [r3, r1]
 80077a6:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 80077a8:	025b      	lsls	r3, r3, #9
 80077aa:	63bb      	str	r3, [r7, #56]	; 0x38
 80077ac:	687a      	ldr	r2, [r7, #4]
 80077ae:	2380      	movs	r3, #128	; 0x80
 80077b0:	005b      	lsls	r3, r3, #1
 80077b2:	6bb9      	ldr	r1, [r7, #56]	; 0x38
 80077b4:	50d1      	str	r1, [r2, r3]
 80077b6:	2152      	movs	r1, #82	; 0x52
 80077b8:	187b      	adds	r3, r7, r1
 80077ba:	2200      	movs	r2, #0
 80077bc:	801a      	strh	r2, [r3, #0]
 80077be:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80077c0:	2b00      	cmp	r3, #0
 80077c2:	d013      	beq.n	80077ec <VL53L0X_get_info_from_device+0xa12>
 80077c4:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 80077c6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80077c8:	1ad3      	subs	r3, r2, r3
 80077ca:	643b      	str	r3, [r7, #64]	; 0x40
 80077cc:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 80077ce:	0013      	movs	r3, r2
 80077d0:	015b      	lsls	r3, r3, #5
 80077d2:	1a9b      	subs	r3, r3, r2
 80077d4:	009b      	lsls	r3, r3, #2
 80077d6:	189b      	adds	r3, r3, r2
 80077d8:	00db      	lsls	r3, r3, #3
 80077da:	091a      	lsrs	r2, r3, #4
 80077dc:	187b      	adds	r3, r7, r1
 80077de:	801a      	strh	r2, [r3, #0]
 80077e0:	187b      	adds	r3, r7, r1
 80077e2:	881b      	ldrh	r3, [r3, #0]
 80077e4:	425b      	negs	r3, r3
 80077e6:	b29a      	uxth	r2, r3
 80077e8:	187b      	adds	r3, r7, r1
 80077ea:	801a      	strh	r2, [r3, #0]
 80077ec:	2352      	movs	r3, #82	; 0x52
 80077ee:	18fb      	adds	r3, r7, r3
 80077f0:	2200      	movs	r2, #0
 80077f2:	5e9a      	ldrsh	r2, [r3, r2]
 80077f4:	687b      	ldr	r3, [r7, #4]
 80077f6:	60da      	str	r2, [r3, #12]
 80077f8:	2337      	movs	r3, #55	; 0x37
 80077fa:	18fa      	adds	r2, r7, r3
 80077fc:	1cfb      	adds	r3, r7, #3
 80077fe:	7812      	ldrb	r2, [r2, #0]
 8007800:	781b      	ldrb	r3, [r3, #0]
 8007802:	4313      	orrs	r3, r2
 8007804:	b2da      	uxtb	r2, r3
 8007806:	2136      	movs	r1, #54	; 0x36
 8007808:	187b      	adds	r3, r7, r1
 800780a:	701a      	strb	r2, [r3, #0]
 800780c:	187b      	adds	r3, r7, r1
 800780e:	7819      	ldrb	r1, [r3, #0]
 8007810:	687b      	ldr	r3, [r7, #4]
 8007812:	22f0      	movs	r2, #240	; 0xf0
 8007814:	5499      	strb	r1, [r3, r2]
 8007816:	2357      	movs	r3, #87	; 0x57
 8007818:	18fb      	adds	r3, r7, r3
 800781a:	781b      	ldrb	r3, [r3, #0]
 800781c:	b25b      	sxtb	r3, r3
 800781e:	0018      	movs	r0, r3
 8007820:	46bd      	mov	sp, r7
 8007822:	b017      	add	sp, #92	; 0x5c
 8007824:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

08007828 <VL53L0X_calc_macro_period_ps>:
 8007828:	b580      	push	{r7, lr}
 800782a:	b086      	sub	sp, #24
 800782c:	af00      	add	r7, sp, #0
 800782e:	6078      	str	r0, [r7, #4]
 8007830:	000a      	movs	r2, r1
 8007832:	1cfb      	adds	r3, r7, #3
 8007834:	701a      	strb	r2, [r3, #0]
 8007836:	4a09      	ldr	r2, [pc, #36]	; (800785c <VL53L0X_calc_macro_period_ps+0x34>)
 8007838:	2300      	movs	r3, #0
 800783a:	613a      	str	r2, [r7, #16]
 800783c:	617b      	str	r3, [r7, #20]
 800783e:	2390      	movs	r3, #144	; 0x90
 8007840:	011b      	lsls	r3, r3, #4
 8007842:	60fb      	str	r3, [r7, #12]
 8007844:	1cfb      	adds	r3, r7, #3
 8007846:	781b      	ldrb	r3, [r3, #0]
 8007848:	68fa      	ldr	r2, [r7, #12]
 800784a:	4353      	muls	r3, r2
 800784c:	693a      	ldr	r2, [r7, #16]
 800784e:	4353      	muls	r3, r2
 8007850:	60bb      	str	r3, [r7, #8]
 8007852:	68bb      	ldr	r3, [r7, #8]
 8007854:	0018      	movs	r0, r3
 8007856:	46bd      	mov	sp, r7
 8007858:	b006      	add	sp, #24
 800785a:	bd80      	pop	{r7, pc}
 800785c:	00000677 	.word	0x00000677

08007860 <VL53L0X_encode_timeout>:
 8007860:	b580      	push	{r7, lr}
 8007862:	b086      	sub	sp, #24
 8007864:	af00      	add	r7, sp, #0
 8007866:	6078      	str	r0, [r7, #4]
 8007868:	2316      	movs	r3, #22
 800786a:	18fb      	adds	r3, r7, r3
 800786c:	2200      	movs	r2, #0
 800786e:	801a      	strh	r2, [r3, #0]
 8007870:	2300      	movs	r3, #0
 8007872:	613b      	str	r3, [r7, #16]
 8007874:	230e      	movs	r3, #14
 8007876:	18fb      	adds	r3, r7, r3
 8007878:	2200      	movs	r2, #0
 800787a:	801a      	strh	r2, [r3, #0]
 800787c:	687b      	ldr	r3, [r7, #4]
 800787e:	2b00      	cmp	r3, #0
 8007880:	d01e      	beq.n	80078c0 <VL53L0X_encode_timeout+0x60>
 8007882:	687b      	ldr	r3, [r7, #4]
 8007884:	3b01      	subs	r3, #1
 8007886:	613b      	str	r3, [r7, #16]
 8007888:	e008      	b.n	800789c <VL53L0X_encode_timeout+0x3c>
 800788a:	693b      	ldr	r3, [r7, #16]
 800788c:	085b      	lsrs	r3, r3, #1
 800788e:	613b      	str	r3, [r7, #16]
 8007890:	210e      	movs	r1, #14
 8007892:	187b      	adds	r3, r7, r1
 8007894:	881a      	ldrh	r2, [r3, #0]
 8007896:	187b      	adds	r3, r7, r1
 8007898:	3201      	adds	r2, #1
 800789a:	801a      	strh	r2, [r3, #0]
 800789c:	693b      	ldr	r3, [r7, #16]
 800789e:	22ff      	movs	r2, #255	; 0xff
 80078a0:	4393      	bics	r3, r2
 80078a2:	d1f2      	bne.n	800788a <VL53L0X_encode_timeout+0x2a>
 80078a4:	230e      	movs	r3, #14
 80078a6:	18fb      	adds	r3, r7, r3
 80078a8:	881b      	ldrh	r3, [r3, #0]
 80078aa:	021b      	lsls	r3, r3, #8
 80078ac:	b299      	uxth	r1, r3
 80078ae:	693b      	ldr	r3, [r7, #16]
 80078b0:	b29b      	uxth	r3, r3
 80078b2:	22ff      	movs	r2, #255	; 0xff
 80078b4:	4013      	ands	r3, r2
 80078b6:	b29a      	uxth	r2, r3
 80078b8:	2316      	movs	r3, #22
 80078ba:	18fb      	adds	r3, r7, r3
 80078bc:	188a      	adds	r2, r1, r2
 80078be:	801a      	strh	r2, [r3, #0]
 80078c0:	2316      	movs	r3, #22
 80078c2:	18fb      	adds	r3, r7, r3
 80078c4:	881b      	ldrh	r3, [r3, #0]
 80078c6:	0018      	movs	r0, r3
 80078c8:	46bd      	mov	sp, r7
 80078ca:	b006      	add	sp, #24
 80078cc:	bd80      	pop	{r7, pc}

080078ce <VL53L0X_decode_timeout>:
 80078ce:	b580      	push	{r7, lr}
 80078d0:	b084      	sub	sp, #16
 80078d2:	af00      	add	r7, sp, #0
 80078d4:	0002      	movs	r2, r0
 80078d6:	1dbb      	adds	r3, r7, #6
 80078d8:	801a      	strh	r2, [r3, #0]
 80078da:	2300      	movs	r3, #0
 80078dc:	60fb      	str	r3, [r7, #12]
 80078de:	1dbb      	adds	r3, r7, #6
 80078e0:	881b      	ldrh	r3, [r3, #0]
 80078e2:	22ff      	movs	r2, #255	; 0xff
 80078e4:	4013      	ands	r3, r2
 80078e6:	1dba      	adds	r2, r7, #6
 80078e8:	8812      	ldrh	r2, [r2, #0]
 80078ea:	0a12      	lsrs	r2, r2, #8
 80078ec:	b292      	uxth	r2, r2
 80078ee:	4093      	lsls	r3, r2
 80078f0:	3301      	adds	r3, #1
 80078f2:	60fb      	str	r3, [r7, #12]
 80078f4:	68fb      	ldr	r3, [r7, #12]
 80078f6:	0018      	movs	r0, r3
 80078f8:	46bd      	mov	sp, r7
 80078fa:	b004      	add	sp, #16
 80078fc:	bd80      	pop	{r7, pc}

080078fe <VL53L0X_calc_timeout_mclks>:
 80078fe:	b580      	push	{r7, lr}
 8007900:	b088      	sub	sp, #32
 8007902:	af00      	add	r7, sp, #0
 8007904:	60f8      	str	r0, [r7, #12]
 8007906:	60b9      	str	r1, [r7, #8]
 8007908:	1dfb      	adds	r3, r7, #7
 800790a:	701a      	strb	r2, [r3, #0]
 800790c:	2300      	movs	r3, #0
 800790e:	61fb      	str	r3, [r7, #28]
 8007910:	1dfb      	adds	r3, r7, #7
 8007912:	781a      	ldrb	r2, [r3, #0]
 8007914:	68fb      	ldr	r3, [r7, #12]
 8007916:	0011      	movs	r1, r2
 8007918:	0018      	movs	r0, r3
 800791a:	f7ff ff85 	bl	8007828 <VL53L0X_calc_macro_period_ps>
 800791e:	0003      	movs	r3, r0
 8007920:	61bb      	str	r3, [r7, #24]
 8007922:	69bb      	ldr	r3, [r7, #24]
 8007924:	33f5      	adds	r3, #245	; 0xf5
 8007926:	33ff      	adds	r3, #255	; 0xff
 8007928:	22fa      	movs	r2, #250	; 0xfa
 800792a:	0091      	lsls	r1, r2, #2
 800792c:	0018      	movs	r0, r3
 800792e:	f7f8 fbeb 	bl	8000108 <__udivsi3>
 8007932:	0003      	movs	r3, r0
 8007934:	617b      	str	r3, [r7, #20]
 8007936:	68ba      	ldr	r2, [r7, #8]
 8007938:	0013      	movs	r3, r2
 800793a:	015b      	lsls	r3, r3, #5
 800793c:	1a9b      	subs	r3, r3, r2
 800793e:	009b      	lsls	r3, r3, #2
 8007940:	189b      	adds	r3, r3, r2
 8007942:	00db      	lsls	r3, r3, #3
 8007944:	001a      	movs	r2, r3
 8007946:	697b      	ldr	r3, [r7, #20]
 8007948:	085b      	lsrs	r3, r3, #1
 800794a:	18d3      	adds	r3, r2, r3
 800794c:	6979      	ldr	r1, [r7, #20]
 800794e:	0018      	movs	r0, r3
 8007950:	f7f8 fbda 	bl	8000108 <__udivsi3>
 8007954:	0003      	movs	r3, r0
 8007956:	61fb      	str	r3, [r7, #28]
 8007958:	69fb      	ldr	r3, [r7, #28]
 800795a:	0018      	movs	r0, r3
 800795c:	46bd      	mov	sp, r7
 800795e:	b008      	add	sp, #32
 8007960:	bd80      	pop	{r7, pc}

08007962 <VL53L0X_calc_timeout_us>:
 8007962:	b580      	push	{r7, lr}
 8007964:	b086      	sub	sp, #24
 8007966:	af00      	add	r7, sp, #0
 8007968:	6078      	str	r0, [r7, #4]
 800796a:	0008      	movs	r0, r1
 800796c:	0011      	movs	r1, r2
 800796e:	1cbb      	adds	r3, r7, #2
 8007970:	1c02      	adds	r2, r0, #0
 8007972:	801a      	strh	r2, [r3, #0]
 8007974:	1c7b      	adds	r3, r7, #1
 8007976:	1c0a      	adds	r2, r1, #0
 8007978:	701a      	strb	r2, [r3, #0]
 800797a:	2300      	movs	r3, #0
 800797c:	617b      	str	r3, [r7, #20]
 800797e:	1c7b      	adds	r3, r7, #1
 8007980:	781a      	ldrb	r2, [r3, #0]
 8007982:	687b      	ldr	r3, [r7, #4]
 8007984:	0011      	movs	r1, r2
 8007986:	0018      	movs	r0, r3
 8007988:	f7ff ff4e 	bl	8007828 <VL53L0X_calc_macro_period_ps>
 800798c:	0003      	movs	r3, r0
 800798e:	613b      	str	r3, [r7, #16]
 8007990:	693b      	ldr	r3, [r7, #16]
 8007992:	33f5      	adds	r3, #245	; 0xf5
 8007994:	33ff      	adds	r3, #255	; 0xff
 8007996:	22fa      	movs	r2, #250	; 0xfa
 8007998:	0091      	lsls	r1, r2, #2
 800799a:	0018      	movs	r0, r3
 800799c:	f7f8 fbb4 	bl	8000108 <__udivsi3>
 80079a0:	0003      	movs	r3, r0
 80079a2:	60fb      	str	r3, [r7, #12]
 80079a4:	1cbb      	adds	r3, r7, #2
 80079a6:	881b      	ldrh	r3, [r3, #0]
 80079a8:	68fa      	ldr	r2, [r7, #12]
 80079aa:	4353      	muls	r3, r2
 80079ac:	33f5      	adds	r3, #245	; 0xf5
 80079ae:	33ff      	adds	r3, #255	; 0xff
 80079b0:	22fa      	movs	r2, #250	; 0xfa
 80079b2:	0091      	lsls	r1, r2, #2
 80079b4:	0018      	movs	r0, r3
 80079b6:	f7f8 fba7 	bl	8000108 <__udivsi3>
 80079ba:	0003      	movs	r3, r0
 80079bc:	617b      	str	r3, [r7, #20]
 80079be:	697b      	ldr	r3, [r7, #20]
 80079c0:	0018      	movs	r0, r3
 80079c2:	46bd      	mov	sp, r7
 80079c4:	b006      	add	sp, #24
 80079c6:	bd80      	pop	{r7, pc}

080079c8 <get_sequence_step_timeout>:
 80079c8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80079ca:	b08d      	sub	sp, #52	; 0x34
 80079cc:	af00      	add	r7, sp, #0
 80079ce:	60f8      	str	r0, [r7, #12]
 80079d0:	607a      	str	r2, [r7, #4]
 80079d2:	200b      	movs	r0, #11
 80079d4:	183b      	adds	r3, r7, r0
 80079d6:	1c0a      	adds	r2, r1, #0
 80079d8:	701a      	strb	r2, [r3, #0]
 80079da:	232f      	movs	r3, #47	; 0x2f
 80079dc:	18fb      	adds	r3, r7, r3
 80079de:	2200      	movs	r2, #0
 80079e0:	701a      	strb	r2, [r3, #0]
 80079e2:	2320      	movs	r3, #32
 80079e4:	18fb      	adds	r3, r7, r3
 80079e6:	2200      	movs	r2, #0
 80079e8:	701a      	strb	r2, [r3, #0]
 80079ea:	2300      	movs	r3, #0
 80079ec:	62bb      	str	r3, [r7, #40]	; 0x28
 80079ee:	231e      	movs	r3, #30
 80079f0:	18fb      	adds	r3, r7, r3
 80079f2:	2200      	movs	r2, #0
 80079f4:	801a      	strh	r2, [r3, #0]
 80079f6:	2324      	movs	r3, #36	; 0x24
 80079f8:	18fb      	adds	r3, r7, r3
 80079fa:	2200      	movs	r2, #0
 80079fc:	801a      	strh	r2, [r3, #0]
 80079fe:	183b      	adds	r3, r7, r0
 8007a00:	781b      	ldrb	r3, [r3, #0]
 8007a02:	2b00      	cmp	r3, #0
 8007a04:	d007      	beq.n	8007a16 <get_sequence_step_timeout+0x4e>
 8007a06:	183b      	adds	r3, r7, r0
 8007a08:	781b      	ldrb	r3, [r3, #0]
 8007a0a:	2b01      	cmp	r3, #1
 8007a0c:	d003      	beq.n	8007a16 <get_sequence_step_timeout+0x4e>
 8007a0e:	183b      	adds	r3, r7, r0
 8007a10:	781b      	ldrb	r3, [r3, #0]
 8007a12:	2b02      	cmp	r3, #2
 8007a14:	d130      	bne.n	8007a78 <get_sequence_step_timeout+0xb0>
 8007a16:	252f      	movs	r5, #47	; 0x2f
 8007a18:	197c      	adds	r4, r7, r5
 8007a1a:	2321      	movs	r3, #33	; 0x21
 8007a1c:	18fa      	adds	r2, r7, r3
 8007a1e:	68fb      	ldr	r3, [r7, #12]
 8007a20:	2100      	movs	r1, #0
 8007a22:	0018      	movs	r0, r3
 8007a24:	f7fc fdb2 	bl	800458c <VL53L0X_GetVcselPulsePeriod>
 8007a28:	0003      	movs	r3, r0
 8007a2a:	7023      	strb	r3, [r4, #0]
 8007a2c:	197b      	adds	r3, r7, r5
 8007a2e:	781b      	ldrb	r3, [r3, #0]
 8007a30:	b25b      	sxtb	r3, r3
 8007a32:	2b00      	cmp	r3, #0
 8007a34:	d109      	bne.n	8007a4a <get_sequence_step_timeout+0x82>
 8007a36:	197c      	adds	r4, r7, r5
 8007a38:	2320      	movs	r3, #32
 8007a3a:	18fa      	adds	r2, r7, r3
 8007a3c:	68fb      	ldr	r3, [r7, #12]
 8007a3e:	2146      	movs	r1, #70	; 0x46
 8007a40:	0018      	movs	r0, r3
 8007a42:	f7fb fe57 	bl	80036f4 <VL53L0X_RdByte>
 8007a46:	0003      	movs	r3, r0
 8007a48:	7023      	strb	r3, [r4, #0]
 8007a4a:	2320      	movs	r3, #32
 8007a4c:	18fb      	adds	r3, r7, r3
 8007a4e:	781b      	ldrb	r3, [r3, #0]
 8007a50:	b29b      	uxth	r3, r3
 8007a52:	0018      	movs	r0, r3
 8007a54:	f7ff ff3b 	bl	80078ce <VL53L0X_decode_timeout>
 8007a58:	0002      	movs	r2, r0
 8007a5a:	2122      	movs	r1, #34	; 0x22
 8007a5c:	187b      	adds	r3, r7, r1
 8007a5e:	801a      	strh	r2, [r3, #0]
 8007a60:	2321      	movs	r3, #33	; 0x21
 8007a62:	18fb      	adds	r3, r7, r3
 8007a64:	781a      	ldrb	r2, [r3, #0]
 8007a66:	187b      	adds	r3, r7, r1
 8007a68:	8819      	ldrh	r1, [r3, #0]
 8007a6a:	68fb      	ldr	r3, [r7, #12]
 8007a6c:	0018      	movs	r0, r3
 8007a6e:	f7ff ff78 	bl	8007962 <VL53L0X_calc_timeout_us>
 8007a72:	0003      	movs	r3, r0
 8007a74:	62bb      	str	r3, [r7, #40]	; 0x28
 8007a76:	e0b6      	b.n	8007be6 <get_sequence_step_timeout+0x21e>
 8007a78:	230b      	movs	r3, #11
 8007a7a:	18fb      	adds	r3, r7, r3
 8007a7c:	781b      	ldrb	r3, [r3, #0]
 8007a7e:	2b03      	cmp	r3, #3
 8007a80:	d13e      	bne.n	8007b00 <get_sequence_step_timeout+0x138>
 8007a82:	252f      	movs	r5, #47	; 0x2f
 8007a84:	197c      	adds	r4, r7, r5
 8007a86:	2621      	movs	r6, #33	; 0x21
 8007a88:	19ba      	adds	r2, r7, r6
 8007a8a:	68fb      	ldr	r3, [r7, #12]
 8007a8c:	2100      	movs	r1, #0
 8007a8e:	0018      	movs	r0, r3
 8007a90:	f7fc fd7c 	bl	800458c <VL53L0X_GetVcselPulsePeriod>
 8007a94:	0003      	movs	r3, r0
 8007a96:	7023      	strb	r3, [r4, #0]
 8007a98:	197b      	adds	r3, r7, r5
 8007a9a:	781b      	ldrb	r3, [r3, #0]
 8007a9c:	b25b      	sxtb	r3, r3
 8007a9e:	2b00      	cmp	r3, #0
 8007aa0:	d000      	beq.n	8007aa4 <get_sequence_step_timeout+0xdc>
 8007aa2:	e0a0      	b.n	8007be6 <get_sequence_step_timeout+0x21e>
 8007aa4:	197c      	adds	r4, r7, r5
 8007aa6:	19ba      	adds	r2, r7, r6
 8007aa8:	68fb      	ldr	r3, [r7, #12]
 8007aaa:	2100      	movs	r1, #0
 8007aac:	0018      	movs	r0, r3
 8007aae:	f7fc fd6d 	bl	800458c <VL53L0X_GetVcselPulsePeriod>
 8007ab2:	0003      	movs	r3, r0
 8007ab4:	7023      	strb	r3, [r4, #0]
 8007ab6:	197b      	adds	r3, r7, r5
 8007ab8:	781b      	ldrb	r3, [r3, #0]
 8007aba:	b25b      	sxtb	r3, r3
 8007abc:	2b00      	cmp	r3, #0
 8007abe:	d109      	bne.n	8007ad4 <get_sequence_step_timeout+0x10c>
 8007ac0:	197c      	adds	r4, r7, r5
 8007ac2:	231e      	movs	r3, #30
 8007ac4:	18fa      	adds	r2, r7, r3
 8007ac6:	68fb      	ldr	r3, [r7, #12]
 8007ac8:	2151      	movs	r1, #81	; 0x51
 8007aca:	0018      	movs	r0, r3
 8007acc:	f7fb fe27 	bl	800371e <VL53L0X_RdWord>
 8007ad0:	0003      	movs	r3, r0
 8007ad2:	7023      	strb	r3, [r4, #0]
 8007ad4:	231e      	movs	r3, #30
 8007ad6:	18fb      	adds	r3, r7, r3
 8007ad8:	881b      	ldrh	r3, [r3, #0]
 8007ada:	0018      	movs	r0, r3
 8007adc:	f7ff fef7 	bl	80078ce <VL53L0X_decode_timeout>
 8007ae0:	0002      	movs	r2, r0
 8007ae2:	2126      	movs	r1, #38	; 0x26
 8007ae4:	187b      	adds	r3, r7, r1
 8007ae6:	801a      	strh	r2, [r3, #0]
 8007ae8:	2321      	movs	r3, #33	; 0x21
 8007aea:	18fb      	adds	r3, r7, r3
 8007aec:	781a      	ldrb	r2, [r3, #0]
 8007aee:	187b      	adds	r3, r7, r1
 8007af0:	8819      	ldrh	r1, [r3, #0]
 8007af2:	68fb      	ldr	r3, [r7, #12]
 8007af4:	0018      	movs	r0, r3
 8007af6:	f7ff ff34 	bl	8007962 <VL53L0X_calc_timeout_us>
 8007afa:	0003      	movs	r3, r0
 8007afc:	62bb      	str	r3, [r7, #40]	; 0x28
 8007afe:	e072      	b.n	8007be6 <get_sequence_step_timeout+0x21e>
 8007b00:	230b      	movs	r3, #11
 8007b02:	18fb      	adds	r3, r7, r3
 8007b04:	781b      	ldrb	r3, [r3, #0]
 8007b06:	2b04      	cmp	r3, #4
 8007b08:	d16d      	bne.n	8007be6 <get_sequence_step_timeout+0x21e>
 8007b0a:	2414      	movs	r4, #20
 8007b0c:	193a      	adds	r2, r7, r4
 8007b0e:	68fb      	ldr	r3, [r7, #12]
 8007b10:	0011      	movs	r1, r2
 8007b12:	0018      	movs	r0, r3
 8007b14:	f7fc fe9a 	bl	800484c <VL53L0X_GetSequenceStepEnables>
 8007b18:	2626      	movs	r6, #38	; 0x26
 8007b1a:	19bb      	adds	r3, r7, r6
 8007b1c:	2200      	movs	r2, #0
 8007b1e:	801a      	strh	r2, [r3, #0]
 8007b20:	193b      	adds	r3, r7, r4
 8007b22:	78db      	ldrb	r3, [r3, #3]
 8007b24:	2b00      	cmp	r3, #0
 8007b26:	d021      	beq.n	8007b6c <get_sequence_step_timeout+0x1a4>
 8007b28:	252f      	movs	r5, #47	; 0x2f
 8007b2a:	197c      	adds	r4, r7, r5
 8007b2c:	2321      	movs	r3, #33	; 0x21
 8007b2e:	18fa      	adds	r2, r7, r3
 8007b30:	68fb      	ldr	r3, [r7, #12]
 8007b32:	2100      	movs	r1, #0
 8007b34:	0018      	movs	r0, r3
 8007b36:	f7fc fd29 	bl	800458c <VL53L0X_GetVcselPulsePeriod>
 8007b3a:	0003      	movs	r3, r0
 8007b3c:	7023      	strb	r3, [r4, #0]
 8007b3e:	197b      	adds	r3, r7, r5
 8007b40:	781b      	ldrb	r3, [r3, #0]
 8007b42:	b25b      	sxtb	r3, r3
 8007b44:	2b00      	cmp	r3, #0
 8007b46:	d111      	bne.n	8007b6c <get_sequence_step_timeout+0x1a4>
 8007b48:	197c      	adds	r4, r7, r5
 8007b4a:	251e      	movs	r5, #30
 8007b4c:	197a      	adds	r2, r7, r5
 8007b4e:	68fb      	ldr	r3, [r7, #12]
 8007b50:	2151      	movs	r1, #81	; 0x51
 8007b52:	0018      	movs	r0, r3
 8007b54:	f7fb fde3 	bl	800371e <VL53L0X_RdWord>
 8007b58:	0003      	movs	r3, r0
 8007b5a:	7023      	strb	r3, [r4, #0]
 8007b5c:	197b      	adds	r3, r7, r5
 8007b5e:	881b      	ldrh	r3, [r3, #0]
 8007b60:	0018      	movs	r0, r3
 8007b62:	f7ff feb4 	bl	80078ce <VL53L0X_decode_timeout>
 8007b66:	0002      	movs	r2, r0
 8007b68:	19bb      	adds	r3, r7, r6
 8007b6a:	801a      	strh	r2, [r3, #0]
 8007b6c:	222f      	movs	r2, #47	; 0x2f
 8007b6e:	18bb      	adds	r3, r7, r2
 8007b70:	781b      	ldrb	r3, [r3, #0]
 8007b72:	b25b      	sxtb	r3, r3
 8007b74:	2b00      	cmp	r3, #0
 8007b76:	d109      	bne.n	8007b8c <get_sequence_step_timeout+0x1c4>
 8007b78:	18bc      	adds	r4, r7, r2
 8007b7a:	2321      	movs	r3, #33	; 0x21
 8007b7c:	18fa      	adds	r2, r7, r3
 8007b7e:	68fb      	ldr	r3, [r7, #12]
 8007b80:	2101      	movs	r1, #1
 8007b82:	0018      	movs	r0, r3
 8007b84:	f7fc fd02 	bl	800458c <VL53L0X_GetVcselPulsePeriod>
 8007b88:	0003      	movs	r3, r0
 8007b8a:	7023      	strb	r3, [r4, #0]
 8007b8c:	222f      	movs	r2, #47	; 0x2f
 8007b8e:	18bb      	adds	r3, r7, r2
 8007b90:	781b      	ldrb	r3, [r3, #0]
 8007b92:	b25b      	sxtb	r3, r3
 8007b94:	2b00      	cmp	r3, #0
 8007b96:	d112      	bne.n	8007bbe <get_sequence_step_timeout+0x1f6>
 8007b98:	18bc      	adds	r4, r7, r2
 8007b9a:	251c      	movs	r5, #28
 8007b9c:	197a      	adds	r2, r7, r5
 8007b9e:	68fb      	ldr	r3, [r7, #12]
 8007ba0:	2171      	movs	r1, #113	; 0x71
 8007ba2:	0018      	movs	r0, r3
 8007ba4:	f7fb fdbb 	bl	800371e <VL53L0X_RdWord>
 8007ba8:	0003      	movs	r3, r0
 8007baa:	7023      	strb	r3, [r4, #0]
 8007bac:	197b      	adds	r3, r7, r5
 8007bae:	881b      	ldrh	r3, [r3, #0]
 8007bb0:	0018      	movs	r0, r3
 8007bb2:	f7ff fe8c 	bl	80078ce <VL53L0X_decode_timeout>
 8007bb6:	0002      	movs	r2, r0
 8007bb8:	2324      	movs	r3, #36	; 0x24
 8007bba:	18fb      	adds	r3, r7, r3
 8007bbc:	801a      	strh	r2, [r3, #0]
 8007bbe:	2024      	movs	r0, #36	; 0x24
 8007bc0:	183b      	adds	r3, r7, r0
 8007bc2:	1839      	adds	r1, r7, r0
 8007bc4:	2226      	movs	r2, #38	; 0x26
 8007bc6:	18ba      	adds	r2, r7, r2
 8007bc8:	8809      	ldrh	r1, [r1, #0]
 8007bca:	8812      	ldrh	r2, [r2, #0]
 8007bcc:	1a8a      	subs	r2, r1, r2
 8007bce:	801a      	strh	r2, [r3, #0]
 8007bd0:	2321      	movs	r3, #33	; 0x21
 8007bd2:	18fb      	adds	r3, r7, r3
 8007bd4:	781a      	ldrb	r2, [r3, #0]
 8007bd6:	183b      	adds	r3, r7, r0
 8007bd8:	8819      	ldrh	r1, [r3, #0]
 8007bda:	68fb      	ldr	r3, [r7, #12]
 8007bdc:	0018      	movs	r0, r3
 8007bde:	f7ff fec0 	bl	8007962 <VL53L0X_calc_timeout_us>
 8007be2:	0003      	movs	r3, r0
 8007be4:	62bb      	str	r3, [r7, #40]	; 0x28
 8007be6:	687b      	ldr	r3, [r7, #4]
 8007be8:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8007bea:	601a      	str	r2, [r3, #0]
 8007bec:	232f      	movs	r3, #47	; 0x2f
 8007bee:	18fb      	adds	r3, r7, r3
 8007bf0:	781b      	ldrb	r3, [r3, #0]
 8007bf2:	b25b      	sxtb	r3, r3
 8007bf4:	0018      	movs	r0, r3
 8007bf6:	46bd      	mov	sp, r7
 8007bf8:	b00d      	add	sp, #52	; 0x34
 8007bfa:	bdf0      	pop	{r4, r5, r6, r7, pc}

08007bfc <set_sequence_step_timeout>:
 8007bfc:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007bfe:	b08b      	sub	sp, #44	; 0x2c
 8007c00:	af00      	add	r7, sp, #0
 8007c02:	60f8      	str	r0, [r7, #12]
 8007c04:	607a      	str	r2, [r7, #4]
 8007c06:	200b      	movs	r0, #11
 8007c08:	183b      	adds	r3, r7, r0
 8007c0a:	1c0a      	adds	r2, r1, #0
 8007c0c:	701a      	strb	r2, [r3, #0]
 8007c0e:	2327      	movs	r3, #39	; 0x27
 8007c10:	18fb      	adds	r3, r7, r3
 8007c12:	2200      	movs	r2, #0
 8007c14:	701a      	strb	r2, [r3, #0]
 8007c16:	183b      	adds	r3, r7, r0
 8007c18:	781b      	ldrb	r3, [r3, #0]
 8007c1a:	2b00      	cmp	r3, #0
 8007c1c:	d007      	beq.n	8007c2e <set_sequence_step_timeout+0x32>
 8007c1e:	183b      	adds	r3, r7, r0
 8007c20:	781b      	ldrb	r3, [r3, #0]
 8007c22:	2b01      	cmp	r3, #1
 8007c24:	d003      	beq.n	8007c2e <set_sequence_step_timeout+0x32>
 8007c26:	183b      	adds	r3, r7, r0
 8007c28:	781b      	ldrb	r3, [r3, #0]
 8007c2a:	2b02      	cmp	r3, #2
 8007c2c:	d147      	bne.n	8007cbe <set_sequence_step_timeout+0xc2>
 8007c2e:	2527      	movs	r5, #39	; 0x27
 8007c30:	197c      	adds	r4, r7, r5
 8007c32:	261b      	movs	r6, #27
 8007c34:	19ba      	adds	r2, r7, r6
 8007c36:	68fb      	ldr	r3, [r7, #12]
 8007c38:	2100      	movs	r1, #0
 8007c3a:	0018      	movs	r0, r3
 8007c3c:	f7fc fca6 	bl	800458c <VL53L0X_GetVcselPulsePeriod>
 8007c40:	0003      	movs	r3, r0
 8007c42:	7023      	strb	r3, [r4, #0]
 8007c44:	197b      	adds	r3, r7, r5
 8007c46:	781b      	ldrb	r3, [r3, #0]
 8007c48:	b25b      	sxtb	r3, r3
 8007c4a:	2b00      	cmp	r3, #0
 8007c4c:	d124      	bne.n	8007c98 <set_sequence_step_timeout+0x9c>
 8007c4e:	19bb      	adds	r3, r7, r6
 8007c50:	781a      	ldrb	r2, [r3, #0]
 8007c52:	6879      	ldr	r1, [r7, #4]
 8007c54:	68fb      	ldr	r3, [r7, #12]
 8007c56:	0018      	movs	r0, r3
 8007c58:	f7ff fe51 	bl	80078fe <VL53L0X_calc_timeout_mclks>
 8007c5c:	0002      	movs	r2, r0
 8007c5e:	211c      	movs	r1, #28
 8007c60:	187b      	adds	r3, r7, r1
 8007c62:	801a      	strh	r2, [r3, #0]
 8007c64:	187b      	adds	r3, r7, r1
 8007c66:	881a      	ldrh	r2, [r3, #0]
 8007c68:	2380      	movs	r3, #128	; 0x80
 8007c6a:	005b      	lsls	r3, r3, #1
 8007c6c:	429a      	cmp	r2, r3
 8007c6e:	d904      	bls.n	8007c7a <set_sequence_step_timeout+0x7e>
 8007c70:	2326      	movs	r3, #38	; 0x26
 8007c72:	18fb      	adds	r3, r7, r3
 8007c74:	22ff      	movs	r2, #255	; 0xff
 8007c76:	701a      	strb	r2, [r3, #0]
 8007c78:	e007      	b.n	8007c8a <set_sequence_step_timeout+0x8e>
 8007c7a:	231c      	movs	r3, #28
 8007c7c:	18fb      	adds	r3, r7, r3
 8007c7e:	881b      	ldrh	r3, [r3, #0]
 8007c80:	b2da      	uxtb	r2, r3
 8007c82:	2326      	movs	r3, #38	; 0x26
 8007c84:	18fb      	adds	r3, r7, r3
 8007c86:	3a01      	subs	r2, #1
 8007c88:	701a      	strb	r2, [r3, #0]
 8007c8a:	2326      	movs	r3, #38	; 0x26
 8007c8c:	18fb      	adds	r3, r7, r3
 8007c8e:	781b      	ldrb	r3, [r3, #0]
 8007c90:	b299      	uxth	r1, r3
 8007c92:	68fb      	ldr	r3, [r7, #12]
 8007c94:	22d8      	movs	r2, #216	; 0xd8
 8007c96:	5299      	strh	r1, [r3, r2]
 8007c98:	2227      	movs	r2, #39	; 0x27
 8007c9a:	18bb      	adds	r3, r7, r2
 8007c9c:	781b      	ldrb	r3, [r3, #0]
 8007c9e:	b25b      	sxtb	r3, r3
 8007ca0:	2b00      	cmp	r3, #0
 8007ca2:	d000      	beq.n	8007ca6 <set_sequence_step_timeout+0xaa>
 8007ca4:	e0da      	b.n	8007e5c <set_sequence_step_timeout+0x260>
 8007ca6:	18bc      	adds	r4, r7, r2
 8007ca8:	2326      	movs	r3, #38	; 0x26
 8007caa:	18fb      	adds	r3, r7, r3
 8007cac:	781a      	ldrb	r2, [r3, #0]
 8007cae:	68fb      	ldr	r3, [r7, #12]
 8007cb0:	2146      	movs	r1, #70	; 0x46
 8007cb2:	0018      	movs	r0, r3
 8007cb4:	f7fb fcb0 	bl	8003618 <VL53L0X_WrByte>
 8007cb8:	0003      	movs	r3, r0
 8007cba:	7023      	strb	r3, [r4, #0]
 8007cbc:	e0ce      	b.n	8007e5c <set_sequence_step_timeout+0x260>
 8007cbe:	230b      	movs	r3, #11
 8007cc0:	18fb      	adds	r3, r7, r3
 8007cc2:	781b      	ldrb	r3, [r3, #0]
 8007cc4:	2b03      	cmp	r3, #3
 8007cc6:	d146      	bne.n	8007d56 <set_sequence_step_timeout+0x15a>
 8007cc8:	2227      	movs	r2, #39	; 0x27
 8007cca:	18bb      	adds	r3, r7, r2
 8007ccc:	781b      	ldrb	r3, [r3, #0]
 8007cce:	b25b      	sxtb	r3, r3
 8007cd0:	2b00      	cmp	r3, #0
 8007cd2:	d123      	bne.n	8007d1c <set_sequence_step_timeout+0x120>
 8007cd4:	18bc      	adds	r4, r7, r2
 8007cd6:	251b      	movs	r5, #27
 8007cd8:	197a      	adds	r2, r7, r5
 8007cda:	68fb      	ldr	r3, [r7, #12]
 8007cdc:	2100      	movs	r1, #0
 8007cde:	0018      	movs	r0, r3
 8007ce0:	f7fc fc54 	bl	800458c <VL53L0X_GetVcselPulsePeriod>
 8007ce4:	0003      	movs	r3, r0
 8007ce6:	7023      	strb	r3, [r4, #0]
 8007ce8:	197b      	adds	r3, r7, r5
 8007cea:	781a      	ldrb	r2, [r3, #0]
 8007cec:	6879      	ldr	r1, [r7, #4]
 8007cee:	68fb      	ldr	r3, [r7, #12]
 8007cf0:	0018      	movs	r0, r3
 8007cf2:	f7ff fe04 	bl	80078fe <VL53L0X_calc_timeout_mclks>
 8007cf6:	0002      	movs	r2, r0
 8007cf8:	2124      	movs	r1, #36	; 0x24
 8007cfa:	187b      	adds	r3, r7, r1
 8007cfc:	801a      	strh	r2, [r3, #0]
 8007cfe:	187b      	adds	r3, r7, r1
 8007d00:	881b      	ldrh	r3, [r3, #0]
 8007d02:	0018      	movs	r0, r3
 8007d04:	f7ff fdac 	bl	8007860 <VL53L0X_encode_timeout>
 8007d08:	0003      	movs	r3, r0
 8007d0a:	001a      	movs	r2, r3
 8007d0c:	2118      	movs	r1, #24
 8007d0e:	187b      	adds	r3, r7, r1
 8007d10:	801a      	strh	r2, [r3, #0]
 8007d12:	187b      	adds	r3, r7, r1
 8007d14:	8819      	ldrh	r1, [r3, #0]
 8007d16:	68fb      	ldr	r3, [r7, #12]
 8007d18:	22d8      	movs	r2, #216	; 0xd8
 8007d1a:	5299      	strh	r1, [r3, r2]
 8007d1c:	2127      	movs	r1, #39	; 0x27
 8007d1e:	187b      	adds	r3, r7, r1
 8007d20:	781b      	ldrb	r3, [r3, #0]
 8007d22:	b25b      	sxtb	r3, r3
 8007d24:	2b00      	cmp	r3, #0
 8007d26:	d10a      	bne.n	8007d3e <set_sequence_step_timeout+0x142>
 8007d28:	2318      	movs	r3, #24
 8007d2a:	18fb      	adds	r3, r7, r3
 8007d2c:	881a      	ldrh	r2, [r3, #0]
 8007d2e:	187c      	adds	r4, r7, r1
 8007d30:	68fb      	ldr	r3, [r7, #12]
 8007d32:	2151      	movs	r1, #81	; 0x51
 8007d34:	0018      	movs	r0, r3
 8007d36:	f7fb fc87 	bl	8003648 <VL53L0X_WrWord>
 8007d3a:	0003      	movs	r3, r0
 8007d3c:	7023      	strb	r3, [r4, #0]
 8007d3e:	2327      	movs	r3, #39	; 0x27
 8007d40:	18fb      	adds	r3, r7, r3
 8007d42:	781b      	ldrb	r3, [r3, #0]
 8007d44:	b25b      	sxtb	r3, r3
 8007d46:	2b00      	cmp	r3, #0
 8007d48:	d000      	beq.n	8007d4c <set_sequence_step_timeout+0x150>
 8007d4a:	e087      	b.n	8007e5c <set_sequence_step_timeout+0x260>
 8007d4c:	68fb      	ldr	r3, [r7, #12]
 8007d4e:	21e4      	movs	r1, #228	; 0xe4
 8007d50:	687a      	ldr	r2, [r7, #4]
 8007d52:	505a      	str	r2, [r3, r1]
 8007d54:	e082      	b.n	8007e5c <set_sequence_step_timeout+0x260>
 8007d56:	230b      	movs	r3, #11
 8007d58:	18fb      	adds	r3, r7, r3
 8007d5a:	781b      	ldrb	r3, [r3, #0]
 8007d5c:	2b04      	cmp	r3, #4
 8007d5e:	d000      	beq.n	8007d62 <set_sequence_step_timeout+0x166>
 8007d60:	e078      	b.n	8007e54 <set_sequence_step_timeout+0x258>
 8007d62:	2410      	movs	r4, #16
 8007d64:	193a      	adds	r2, r7, r4
 8007d66:	68fb      	ldr	r3, [r7, #12]
 8007d68:	0011      	movs	r1, r2
 8007d6a:	0018      	movs	r0, r3
 8007d6c:	f7fc fd6e 	bl	800484c <VL53L0X_GetSequenceStepEnables>
 8007d70:	2624      	movs	r6, #36	; 0x24
 8007d72:	19bb      	adds	r3, r7, r6
 8007d74:	2200      	movs	r2, #0
 8007d76:	801a      	strh	r2, [r3, #0]
 8007d78:	193b      	adds	r3, r7, r4
 8007d7a:	78db      	ldrb	r3, [r3, #3]
 8007d7c:	2b00      	cmp	r3, #0
 8007d7e:	d021      	beq.n	8007dc4 <set_sequence_step_timeout+0x1c8>
 8007d80:	2527      	movs	r5, #39	; 0x27
 8007d82:	197c      	adds	r4, r7, r5
 8007d84:	231b      	movs	r3, #27
 8007d86:	18fa      	adds	r2, r7, r3
 8007d88:	68fb      	ldr	r3, [r7, #12]
 8007d8a:	2100      	movs	r1, #0
 8007d8c:	0018      	movs	r0, r3
 8007d8e:	f7fc fbfd 	bl	800458c <VL53L0X_GetVcselPulsePeriod>
 8007d92:	0003      	movs	r3, r0
 8007d94:	7023      	strb	r3, [r4, #0]
 8007d96:	197b      	adds	r3, r7, r5
 8007d98:	781b      	ldrb	r3, [r3, #0]
 8007d9a:	b25b      	sxtb	r3, r3
 8007d9c:	2b00      	cmp	r3, #0
 8007d9e:	d111      	bne.n	8007dc4 <set_sequence_step_timeout+0x1c8>
 8007da0:	197c      	adds	r4, r7, r5
 8007da2:	2518      	movs	r5, #24
 8007da4:	197a      	adds	r2, r7, r5
 8007da6:	68fb      	ldr	r3, [r7, #12]
 8007da8:	2151      	movs	r1, #81	; 0x51
 8007daa:	0018      	movs	r0, r3
 8007dac:	f7fb fcb7 	bl	800371e <VL53L0X_RdWord>
 8007db0:	0003      	movs	r3, r0
 8007db2:	7023      	strb	r3, [r4, #0]
 8007db4:	197b      	adds	r3, r7, r5
 8007db6:	881b      	ldrh	r3, [r3, #0]
 8007db8:	0018      	movs	r0, r3
 8007dba:	f7ff fd88 	bl	80078ce <VL53L0X_decode_timeout>
 8007dbe:	0002      	movs	r2, r0
 8007dc0:	19bb      	adds	r3, r7, r6
 8007dc2:	801a      	strh	r2, [r3, #0]
 8007dc4:	2227      	movs	r2, #39	; 0x27
 8007dc6:	18bb      	adds	r3, r7, r2
 8007dc8:	781b      	ldrb	r3, [r3, #0]
 8007dca:	b25b      	sxtb	r3, r3
 8007dcc:	2b00      	cmp	r3, #0
 8007dce:	d109      	bne.n	8007de4 <set_sequence_step_timeout+0x1e8>
 8007dd0:	18bc      	adds	r4, r7, r2
 8007dd2:	231b      	movs	r3, #27
 8007dd4:	18fa      	adds	r2, r7, r3
 8007dd6:	68fb      	ldr	r3, [r7, #12]
 8007dd8:	2101      	movs	r1, #1
 8007dda:	0018      	movs	r0, r3
 8007ddc:	f7fc fbd6 	bl	800458c <VL53L0X_GetVcselPulsePeriod>
 8007de0:	0003      	movs	r3, r0
 8007de2:	7023      	strb	r3, [r4, #0]
 8007de4:	2527      	movs	r5, #39	; 0x27
 8007de6:	197b      	adds	r3, r7, r5
 8007de8:	781b      	ldrb	r3, [r3, #0]
 8007dea:	b25b      	sxtb	r3, r3
 8007dec:	2b00      	cmp	r3, #0
 8007dee:	d135      	bne.n	8007e5c <set_sequence_step_timeout+0x260>
 8007df0:	231b      	movs	r3, #27
 8007df2:	18fb      	adds	r3, r7, r3
 8007df4:	781a      	ldrb	r2, [r3, #0]
 8007df6:	6879      	ldr	r1, [r7, #4]
 8007df8:	68fb      	ldr	r3, [r7, #12]
 8007dfa:	0018      	movs	r0, r3
 8007dfc:	f7ff fd7f 	bl	80078fe <VL53L0X_calc_timeout_mclks>
 8007e00:	0003      	movs	r3, r0
 8007e02:	623b      	str	r3, [r7, #32]
 8007e04:	2324      	movs	r3, #36	; 0x24
 8007e06:	18fb      	adds	r3, r7, r3
 8007e08:	881b      	ldrh	r3, [r3, #0]
 8007e0a:	6a3a      	ldr	r2, [r7, #32]
 8007e0c:	18d3      	adds	r3, r2, r3
 8007e0e:	623b      	str	r3, [r7, #32]
 8007e10:	261e      	movs	r6, #30
 8007e12:	19bc      	adds	r4, r7, r6
 8007e14:	6a3b      	ldr	r3, [r7, #32]
 8007e16:	0018      	movs	r0, r3
 8007e18:	f7ff fd22 	bl	8007860 <VL53L0X_encode_timeout>
 8007e1c:	0003      	movs	r3, r0
 8007e1e:	8023      	strh	r3, [r4, #0]
 8007e20:	197b      	adds	r3, r7, r5
 8007e22:	781b      	ldrb	r3, [r3, #0]
 8007e24:	b25b      	sxtb	r3, r3
 8007e26:	2b00      	cmp	r3, #0
 8007e28:	d109      	bne.n	8007e3e <set_sequence_step_timeout+0x242>
 8007e2a:	197c      	adds	r4, r7, r5
 8007e2c:	19bb      	adds	r3, r7, r6
 8007e2e:	881a      	ldrh	r2, [r3, #0]
 8007e30:	68fb      	ldr	r3, [r7, #12]
 8007e32:	2171      	movs	r1, #113	; 0x71
 8007e34:	0018      	movs	r0, r3
 8007e36:	f7fb fc07 	bl	8003648 <VL53L0X_WrWord>
 8007e3a:	0003      	movs	r3, r0
 8007e3c:	7023      	strb	r3, [r4, #0]
 8007e3e:	2327      	movs	r3, #39	; 0x27
 8007e40:	18fb      	adds	r3, r7, r3
 8007e42:	781b      	ldrb	r3, [r3, #0]
 8007e44:	b25b      	sxtb	r3, r3
 8007e46:	2b00      	cmp	r3, #0
 8007e48:	d108      	bne.n	8007e5c <set_sequence_step_timeout+0x260>
 8007e4a:	68fb      	ldr	r3, [r7, #12]
 8007e4c:	21dc      	movs	r1, #220	; 0xdc
 8007e4e:	687a      	ldr	r2, [r7, #4]
 8007e50:	505a      	str	r2, [r3, r1]
 8007e52:	e003      	b.n	8007e5c <set_sequence_step_timeout+0x260>
 8007e54:	2327      	movs	r3, #39	; 0x27
 8007e56:	18fb      	adds	r3, r7, r3
 8007e58:	22fc      	movs	r2, #252	; 0xfc
 8007e5a:	701a      	strb	r2, [r3, #0]
 8007e5c:	2327      	movs	r3, #39	; 0x27
 8007e5e:	18fb      	adds	r3, r7, r3
 8007e60:	781b      	ldrb	r3, [r3, #0]
 8007e62:	b25b      	sxtb	r3, r3
 8007e64:	0018      	movs	r0, r3
 8007e66:	46bd      	mov	sp, r7
 8007e68:	b00b      	add	sp, #44	; 0x2c
 8007e6a:	bdf0      	pop	{r4, r5, r6, r7, pc}

08007e6c <VL53L0X_get_vcsel_pulse_period>:
 8007e6c:	b590      	push	{r4, r7, lr}
 8007e6e:	b087      	sub	sp, #28
 8007e70:	af00      	add	r7, sp, #0
 8007e72:	60f8      	str	r0, [r7, #12]
 8007e74:	607a      	str	r2, [r7, #4]
 8007e76:	200b      	movs	r0, #11
 8007e78:	183b      	adds	r3, r7, r0
 8007e7a:	1c0a      	adds	r2, r1, #0
 8007e7c:	701a      	strb	r2, [r3, #0]
 8007e7e:	2317      	movs	r3, #23
 8007e80:	18fb      	adds	r3, r7, r3
 8007e82:	2200      	movs	r2, #0
 8007e84:	701a      	strb	r2, [r3, #0]
 8007e86:	183b      	adds	r3, r7, r0
 8007e88:	781b      	ldrb	r3, [r3, #0]
 8007e8a:	2b00      	cmp	r3, #0
 8007e8c:	d002      	beq.n	8007e94 <VL53L0X_get_vcsel_pulse_period+0x28>
 8007e8e:	2b01      	cmp	r3, #1
 8007e90:	d00c      	beq.n	8007eac <VL53L0X_get_vcsel_pulse_period+0x40>
 8007e92:	e017      	b.n	8007ec4 <VL53L0X_get_vcsel_pulse_period+0x58>
 8007e94:	2317      	movs	r3, #23
 8007e96:	18fc      	adds	r4, r7, r3
 8007e98:	2316      	movs	r3, #22
 8007e9a:	18fa      	adds	r2, r7, r3
 8007e9c:	68fb      	ldr	r3, [r7, #12]
 8007e9e:	2150      	movs	r1, #80	; 0x50
 8007ea0:	0018      	movs	r0, r3
 8007ea2:	f7fb fc27 	bl	80036f4 <VL53L0X_RdByte>
 8007ea6:	0003      	movs	r3, r0
 8007ea8:	7023      	strb	r3, [r4, #0]
 8007eaa:	e00f      	b.n	8007ecc <VL53L0X_get_vcsel_pulse_period+0x60>
 8007eac:	2317      	movs	r3, #23
 8007eae:	18fc      	adds	r4, r7, r3
 8007eb0:	2316      	movs	r3, #22
 8007eb2:	18fa      	adds	r2, r7, r3
 8007eb4:	68fb      	ldr	r3, [r7, #12]
 8007eb6:	2170      	movs	r1, #112	; 0x70
 8007eb8:	0018      	movs	r0, r3
 8007eba:	f7fb fc1b 	bl	80036f4 <VL53L0X_RdByte>
 8007ebe:	0003      	movs	r3, r0
 8007ec0:	7023      	strb	r3, [r4, #0]
 8007ec2:	e003      	b.n	8007ecc <VL53L0X_get_vcsel_pulse_period+0x60>
 8007ec4:	2317      	movs	r3, #23
 8007ec6:	18fb      	adds	r3, r7, r3
 8007ec8:	22fc      	movs	r2, #252	; 0xfc
 8007eca:	701a      	strb	r2, [r3, #0]
 8007ecc:	2317      	movs	r3, #23
 8007ece:	18fb      	adds	r3, r7, r3
 8007ed0:	781b      	ldrb	r3, [r3, #0]
 8007ed2:	b25b      	sxtb	r3, r3
 8007ed4:	2b00      	cmp	r3, #0
 8007ed6:	d109      	bne.n	8007eec <VL53L0X_get_vcsel_pulse_period+0x80>
 8007ed8:	2316      	movs	r3, #22
 8007eda:	18fb      	adds	r3, r7, r3
 8007edc:	781b      	ldrb	r3, [r3, #0]
 8007ede:	0018      	movs	r0, r3
 8007ee0:	f7fe fedc 	bl	8006c9c <VL53L0X_decode_vcsel_period>
 8007ee4:	0003      	movs	r3, r0
 8007ee6:	001a      	movs	r2, r3
 8007ee8:	687b      	ldr	r3, [r7, #4]
 8007eea:	701a      	strb	r2, [r3, #0]
 8007eec:	2317      	movs	r3, #23
 8007eee:	18fb      	adds	r3, r7, r3
 8007ef0:	781b      	ldrb	r3, [r3, #0]
 8007ef2:	b25b      	sxtb	r3, r3
 8007ef4:	0018      	movs	r0, r3
 8007ef6:	46bd      	mov	sp, r7
 8007ef8:	b007      	add	sp, #28
 8007efa:	bd90      	pop	{r4, r7, pc}

08007efc <VL53L0X_set_measurement_timing_budget_micro_seconds>:
 8007efc:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007efe:	b093      	sub	sp, #76	; 0x4c
 8007f00:	af00      	add	r7, sp, #0
 8007f02:	6078      	str	r0, [r7, #4]
 8007f04:	6039      	str	r1, [r7, #0]
 8007f06:	2147      	movs	r1, #71	; 0x47
 8007f08:	187b      	adds	r3, r7, r1
 8007f0a:	2200      	movs	r2, #0
 8007f0c:	701a      	strb	r2, [r3, #0]
 8007f0e:	23fa      	movs	r3, #250	; 0xfa
 8007f10:	00db      	lsls	r3, r3, #3
 8007f12:	613b      	str	r3, [r7, #16]
 8007f14:	4b7a      	ldr	r3, [pc, #488]	; (8008100 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x204>)
 8007f16:	63fb      	str	r3, [r7, #60]	; 0x3c
 8007f18:	23f0      	movs	r3, #240	; 0xf0
 8007f1a:	009b      	lsls	r3, r3, #2
 8007f1c:	63bb      	str	r3, [r7, #56]	; 0x38
 8007f1e:	23a5      	movs	r3, #165	; 0xa5
 8007f20:	009b      	lsls	r3, r3, #2
 8007f22:	637b      	str	r3, [r7, #52]	; 0x34
 8007f24:	4b77      	ldr	r3, [pc, #476]	; (8008104 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x208>)
 8007f26:	633b      	str	r3, [r7, #48]	; 0x30
 8007f28:	4b77      	ldr	r3, [pc, #476]	; (8008108 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x20c>)
 8007f2a:	62fb      	str	r3, [r7, #44]	; 0x2c
 8007f2c:	23a5      	movs	r3, #165	; 0xa5
 8007f2e:	009b      	lsls	r3, r3, #2
 8007f30:	62bb      	str	r3, [r7, #40]	; 0x28
 8007f32:	4b76      	ldr	r3, [pc, #472]	; (800810c <VL53L0X_set_measurement_timing_budget_micro_seconds+0x210>)
 8007f34:	627b      	str	r3, [r7, #36]	; 0x24
 8007f36:	2300      	movs	r3, #0
 8007f38:	60fb      	str	r3, [r7, #12]
 8007f3a:	4b75      	ldr	r3, [pc, #468]	; (8008110 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x214>)
 8007f3c:	623b      	str	r3, [r7, #32]
 8007f3e:	2300      	movs	r3, #0
 8007f40:	61fb      	str	r3, [r7, #28]
 8007f42:	683a      	ldr	r2, [r7, #0]
 8007f44:	6a3b      	ldr	r3, [r7, #32]
 8007f46:	429a      	cmp	r2, r3
 8007f48:	d206      	bcs.n	8007f58 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x5c>
 8007f4a:	187b      	adds	r3, r7, r1
 8007f4c:	22fc      	movs	r2, #252	; 0xfc
 8007f4e:	701a      	strb	r2, [r3, #0]
 8007f50:	187b      	adds	r3, r7, r1
 8007f52:	781b      	ldrb	r3, [r3, #0]
 8007f54:	b25b      	sxtb	r3, r3
 8007f56:	e0ce      	b.n	80080f6 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x1fa>
 8007f58:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
 8007f5a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8007f5c:	18d3      	adds	r3, r2, r3
 8007f5e:	683a      	ldr	r2, [r7, #0]
 8007f60:	1ad3      	subs	r3, r2, r3
 8007f62:	643b      	str	r3, [r7, #64]	; 0x40
 8007f64:	2647      	movs	r6, #71	; 0x47
 8007f66:	19bc      	adds	r4, r7, r6
 8007f68:	2514      	movs	r5, #20
 8007f6a:	197a      	adds	r2, r7, r5
 8007f6c:	687b      	ldr	r3, [r7, #4]
 8007f6e:	0011      	movs	r1, r2
 8007f70:	0018      	movs	r0, r3
 8007f72:	f7fc fc6b 	bl	800484c <VL53L0X_GetSequenceStepEnables>
 8007f76:	0003      	movs	r3, r0
 8007f78:	7023      	strb	r3, [r4, #0]
 8007f7a:	19bb      	adds	r3, r7, r6
 8007f7c:	781b      	ldrb	r3, [r3, #0]
 8007f7e:	b25b      	sxtb	r3, r3
 8007f80:	2b00      	cmp	r3, #0
 8007f82:	d000      	beq.n	8007f86 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x8a>
 8007f84:	e06d      	b.n	8008062 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x166>
 8007f86:	197b      	adds	r3, r7, r5
 8007f88:	781b      	ldrb	r3, [r3, #0]
 8007f8a:	2b00      	cmp	r3, #0
 8007f8c:	d107      	bne.n	8007f9e <VL53L0X_set_measurement_timing_budget_micro_seconds+0xa2>
 8007f8e:	197b      	adds	r3, r7, r5
 8007f90:	785b      	ldrb	r3, [r3, #1]
 8007f92:	2b00      	cmp	r3, #0
 8007f94:	d103      	bne.n	8007f9e <VL53L0X_set_measurement_timing_budget_micro_seconds+0xa2>
 8007f96:	197b      	adds	r3, r7, r5
 8007f98:	789b      	ldrb	r3, [r3, #2]
 8007f9a:	2b00      	cmp	r3, #0
 8007f9c:	d061      	beq.n	8008062 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x166>
 8007f9e:	2547      	movs	r5, #71	; 0x47
 8007fa0:	197c      	adds	r4, r7, r5
 8007fa2:	2310      	movs	r3, #16
 8007fa4:	18fa      	adds	r2, r7, r3
 8007fa6:	687b      	ldr	r3, [r7, #4]
 8007fa8:	2102      	movs	r1, #2
 8007faa:	0018      	movs	r0, r3
 8007fac:	f7ff fd0c 	bl	80079c8 <get_sequence_step_timeout>
 8007fb0:	0003      	movs	r3, r0
 8007fb2:	7023      	strb	r3, [r4, #0]
 8007fb4:	197b      	adds	r3, r7, r5
 8007fb6:	781b      	ldrb	r3, [r3, #0]
 8007fb8:	b25b      	sxtb	r3, r3
 8007fba:	2b00      	cmp	r3, #0
 8007fbc:	d003      	beq.n	8007fc6 <VL53L0X_set_measurement_timing_budget_micro_seconds+0xca>
 8007fbe:	197b      	adds	r3, r7, r5
 8007fc0:	781b      	ldrb	r3, [r3, #0]
 8007fc2:	b25b      	sxtb	r3, r3
 8007fc4:	e097      	b.n	80080f6 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x1fa>
 8007fc6:	2314      	movs	r3, #20
 8007fc8:	18fb      	adds	r3, r7, r3
 8007fca:	781b      	ldrb	r3, [r3, #0]
 8007fcc:	2b00      	cmp	r3, #0
 8007fce:	d010      	beq.n	8007ff2 <VL53L0X_set_measurement_timing_budget_micro_seconds+0xf6>
 8007fd0:	693b      	ldr	r3, [r7, #16]
 8007fd2:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8007fd4:	18d3      	adds	r3, r2, r3
 8007fd6:	61fb      	str	r3, [r7, #28]
 8007fd8:	69fa      	ldr	r2, [r7, #28]
 8007fda:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8007fdc:	429a      	cmp	r2, r3
 8007fde:	d204      	bcs.n	8007fea <VL53L0X_set_measurement_timing_budget_micro_seconds+0xee>
 8007fe0:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8007fe2:	69fb      	ldr	r3, [r7, #28]
 8007fe4:	1ad3      	subs	r3, r2, r3
 8007fe6:	643b      	str	r3, [r7, #64]	; 0x40
 8007fe8:	e003      	b.n	8007ff2 <VL53L0X_set_measurement_timing_budget_micro_seconds+0xf6>
 8007fea:	2347      	movs	r3, #71	; 0x47
 8007fec:	18fb      	adds	r3, r7, r3
 8007fee:	22fc      	movs	r2, #252	; 0xfc
 8007ff0:	701a      	strb	r2, [r3, #0]
 8007ff2:	2247      	movs	r2, #71	; 0x47
 8007ff4:	18bb      	adds	r3, r7, r2
 8007ff6:	781b      	ldrb	r3, [r3, #0]
 8007ff8:	b25b      	sxtb	r3, r3
 8007ffa:	2b00      	cmp	r3, #0
 8007ffc:	d003      	beq.n	8008006 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x10a>
 8007ffe:	18bb      	adds	r3, r7, r2
 8008000:	781b      	ldrb	r3, [r3, #0]
 8008002:	b25b      	sxtb	r3, r3
 8008004:	e077      	b.n	80080f6 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x1fa>
 8008006:	2314      	movs	r3, #20
 8008008:	18fb      	adds	r3, r7, r3
 800800a:	789b      	ldrb	r3, [r3, #2]
 800800c:	2b00      	cmp	r3, #0
 800800e:	d012      	beq.n	8008036 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x13a>
 8008010:	693a      	ldr	r2, [r7, #16]
 8008012:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8008014:	18d3      	adds	r3, r2, r3
 8008016:	005b      	lsls	r3, r3, #1
 8008018:	61fb      	str	r3, [r7, #28]
 800801a:	69fa      	ldr	r2, [r7, #28]
 800801c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800801e:	429a      	cmp	r2, r3
 8008020:	d204      	bcs.n	800802c <VL53L0X_set_measurement_timing_budget_micro_seconds+0x130>
 8008022:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8008024:	69fb      	ldr	r3, [r7, #28]
 8008026:	1ad3      	subs	r3, r2, r3
 8008028:	643b      	str	r3, [r7, #64]	; 0x40
 800802a:	e01a      	b.n	8008062 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x166>
 800802c:	2347      	movs	r3, #71	; 0x47
 800802e:	18fb      	adds	r3, r7, r3
 8008030:	22fc      	movs	r2, #252	; 0xfc
 8008032:	701a      	strb	r2, [r3, #0]
 8008034:	e015      	b.n	8008062 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x166>
 8008036:	2314      	movs	r3, #20
 8008038:	18fb      	adds	r3, r7, r3
 800803a:	785b      	ldrb	r3, [r3, #1]
 800803c:	2b00      	cmp	r3, #0
 800803e:	d010      	beq.n	8008062 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x166>
 8008040:	693b      	ldr	r3, [r7, #16]
 8008042:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8008044:	18d3      	adds	r3, r2, r3
 8008046:	61fb      	str	r3, [r7, #28]
 8008048:	69fa      	ldr	r2, [r7, #28]
 800804a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800804c:	429a      	cmp	r2, r3
 800804e:	d204      	bcs.n	800805a <VL53L0X_set_measurement_timing_budget_micro_seconds+0x15e>
 8008050:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8008052:	69fb      	ldr	r3, [r7, #28]
 8008054:	1ad3      	subs	r3, r2, r3
 8008056:	643b      	str	r3, [r7, #64]	; 0x40
 8008058:	e003      	b.n	8008062 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x166>
 800805a:	2347      	movs	r3, #71	; 0x47
 800805c:	18fb      	adds	r3, r7, r3
 800805e:	22fc      	movs	r2, #252	; 0xfc
 8008060:	701a      	strb	r2, [r3, #0]
 8008062:	2247      	movs	r2, #71	; 0x47
 8008064:	18bb      	adds	r3, r7, r2
 8008066:	781b      	ldrb	r3, [r3, #0]
 8008068:	b25b      	sxtb	r3, r3
 800806a:	2b00      	cmp	r3, #0
 800806c:	d003      	beq.n	8008076 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x17a>
 800806e:	18bb      	adds	r3, r7, r2
 8008070:	781b      	ldrb	r3, [r3, #0]
 8008072:	b25b      	sxtb	r3, r3
 8008074:	e03f      	b.n	80080f6 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x1fa>
 8008076:	2314      	movs	r3, #20
 8008078:	18fb      	adds	r3, r7, r3
 800807a:	78db      	ldrb	r3, [r3, #3]
 800807c:	2b00      	cmp	r3, #0
 800807e:	d01b      	beq.n	80080b8 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x1bc>
 8008080:	2347      	movs	r3, #71	; 0x47
 8008082:	18fc      	adds	r4, r7, r3
 8008084:	230c      	movs	r3, #12
 8008086:	18fa      	adds	r2, r7, r3
 8008088:	687b      	ldr	r3, [r7, #4]
 800808a:	2103      	movs	r1, #3
 800808c:	0018      	movs	r0, r3
 800808e:	f7ff fc9b 	bl	80079c8 <get_sequence_step_timeout>
 8008092:	0003      	movs	r3, r0
 8008094:	7023      	strb	r3, [r4, #0]
 8008096:	68fb      	ldr	r3, [r7, #12]
 8008098:	6aba      	ldr	r2, [r7, #40]	; 0x28
 800809a:	18d3      	adds	r3, r2, r3
 800809c:	61fb      	str	r3, [r7, #28]
 800809e:	69fa      	ldr	r2, [r7, #28]
 80080a0:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80080a2:	429a      	cmp	r2, r3
 80080a4:	d204      	bcs.n	80080b0 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x1b4>
 80080a6:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 80080a8:	69fb      	ldr	r3, [r7, #28]
 80080aa:	1ad3      	subs	r3, r2, r3
 80080ac:	643b      	str	r3, [r7, #64]	; 0x40
 80080ae:	e003      	b.n	80080b8 <VL53L0X_set_measurement_timing_budget_micro_seconds+0x1bc>
 80080b0:	2347      	movs	r3, #71	; 0x47
 80080b2:	18fb      	adds	r3, r7, r3
 80080b4:	22fc      	movs	r2, #252	; 0xfc
 80080b6:	701a      	strb	r2, [r3, #0]
 80080b8:	2147      	movs	r1, #71	; 0x47
 80080ba:	187b      	adds	r3, r7, r1
 80080bc:	781b      	ldrb	r3, [r3, #0]
 80080be:	b25b      	sxtb	r3, r3
 80080c0:	2b00      	cmp	r3, #0
 80080c2:	d114      	bne.n	80080ee <VL53L0X_set_measurement_timing_budget_micro_seconds+0x1f2>
 80080c4:	2314      	movs	r3, #20
 80080c6:	18fb      	adds	r3, r7, r3
 80080c8:	791b      	ldrb	r3, [r3, #4]
 80080ca:	2b00      	cmp	r3, #0
 80080cc:	d00f      	beq.n	80080ee <VL53L0X_set_measurement_timing_budget_micro_seconds+0x1f2>
 80080ce:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 80080d0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80080d2:	1ad3      	subs	r3, r2, r3
 80080d4:	643b      	str	r3, [r7, #64]	; 0x40
 80080d6:	187c      	adds	r4, r7, r1
 80080d8:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 80080da:	687b      	ldr	r3, [r7, #4]
 80080dc:	2104      	movs	r1, #4
 80080de:	0018      	movs	r0, r3
 80080e0:	f7ff fd8c 	bl	8007bfc <set_sequence_step_timeout>
 80080e4:	0003      	movs	r3, r0
 80080e6:	7023      	strb	r3, [r4, #0]
 80080e8:	687b      	ldr	r3, [r7, #4]
 80080ea:	683a      	ldr	r2, [r7, #0]
 80080ec:	615a      	str	r2, [r3, #20]
 80080ee:	2347      	movs	r3, #71	; 0x47
 80080f0:	18fb      	adds	r3, r7, r3
 80080f2:	781b      	ldrb	r3, [r3, #0]
 80080f4:	b25b      	sxtb	r3, r3
 80080f6:	0018      	movs	r0, r3
 80080f8:	46bd      	mov	sp, r7
 80080fa:	b013      	add	sp, #76	; 0x4c
 80080fc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80080fe:	46c0      	nop			; (mov r8, r8)
 8008100:	00000776 	.word	0x00000776
 8008104:	0000024e 	.word	0x0000024e
 8008108:	000002b2 	.word	0x000002b2
 800810c:	00000226 	.word	0x00000226
 8008110:	00004e20 	.word	0x00004e20

08008114 <VL53L0X_get_measurement_timing_budget_micro_seconds>:
 8008114:	b5b0      	push	{r4, r5, r7, lr}
 8008116:	b090      	sub	sp, #64	; 0x40
 8008118:	af00      	add	r7, sp, #0
 800811a:	6078      	str	r0, [r7, #4]
 800811c:	6039      	str	r1, [r7, #0]
 800811e:	213f      	movs	r1, #63	; 0x3f
 8008120:	187b      	adds	r3, r7, r1
 8008122:	2200      	movs	r2, #0
 8008124:	701a      	strb	r2, [r3, #0]
 8008126:	23fa      	movs	r3, #250	; 0xfa
 8008128:	00db      	lsls	r3, r3, #3
 800812a:	613b      	str	r3, [r7, #16]
 800812c:	4b5e      	ldr	r3, [pc, #376]	; (80082a8 <VL53L0X_get_measurement_timing_budget_micro_seconds+0x194>)
 800812e:	63bb      	str	r3, [r7, #56]	; 0x38
 8008130:	23f0      	movs	r3, #240	; 0xf0
 8008132:	009b      	lsls	r3, r3, #2
 8008134:	637b      	str	r3, [r7, #52]	; 0x34
 8008136:	23a5      	movs	r3, #165	; 0xa5
 8008138:	009b      	lsls	r3, r3, #2
 800813a:	633b      	str	r3, [r7, #48]	; 0x30
 800813c:	4b5b      	ldr	r3, [pc, #364]	; (80082ac <VL53L0X_get_measurement_timing_budget_micro_seconds+0x198>)
 800813e:	62fb      	str	r3, [r7, #44]	; 0x2c
 8008140:	4b5b      	ldr	r3, [pc, #364]	; (80082b0 <VL53L0X_get_measurement_timing_budget_micro_seconds+0x19c>)
 8008142:	62bb      	str	r3, [r7, #40]	; 0x28
 8008144:	23a5      	movs	r3, #165	; 0xa5
 8008146:	009b      	lsls	r3, r3, #2
 8008148:	627b      	str	r3, [r7, #36]	; 0x24
 800814a:	4b5a      	ldr	r3, [pc, #360]	; (80082b4 <VL53L0X_get_measurement_timing_budget_micro_seconds+0x1a0>)
 800814c:	623b      	str	r3, [r7, #32]
 800814e:	2300      	movs	r3, #0
 8008150:	60fb      	str	r3, [r7, #12]
 8008152:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8008154:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8008156:	18d2      	adds	r2, r2, r3
 8008158:	683b      	ldr	r3, [r7, #0]
 800815a:	601a      	str	r2, [r3, #0]
 800815c:	000d      	movs	r5, r1
 800815e:	187c      	adds	r4, r7, r1
 8008160:	2318      	movs	r3, #24
 8008162:	18fa      	adds	r2, r7, r3
 8008164:	687b      	ldr	r3, [r7, #4]
 8008166:	0011      	movs	r1, r2
 8008168:	0018      	movs	r0, r3
 800816a:	f7fc fb6f 	bl	800484c <VL53L0X_GetSequenceStepEnables>
 800816e:	0003      	movs	r3, r0
 8008170:	7023      	strb	r3, [r4, #0]
 8008172:	197b      	adds	r3, r7, r5
 8008174:	781b      	ldrb	r3, [r3, #0]
 8008176:	b25b      	sxtb	r3, r3
 8008178:	2b00      	cmp	r3, #0
 800817a:	d003      	beq.n	8008184 <VL53L0X_get_measurement_timing_budget_micro_seconds+0x70>
 800817c:	197b      	adds	r3, r7, r5
 800817e:	781b      	ldrb	r3, [r3, #0]
 8008180:	b25b      	sxtb	r3, r3
 8008182:	e08d      	b.n	80082a0 <VL53L0X_get_measurement_timing_budget_micro_seconds+0x18c>
 8008184:	2218      	movs	r2, #24
 8008186:	18bb      	adds	r3, r7, r2
 8008188:	781b      	ldrb	r3, [r3, #0]
 800818a:	2b00      	cmp	r3, #0
 800818c:	d107      	bne.n	800819e <VL53L0X_get_measurement_timing_budget_micro_seconds+0x8a>
 800818e:	18bb      	adds	r3, r7, r2
 8008190:	785b      	ldrb	r3, [r3, #1]
 8008192:	2b00      	cmp	r3, #0
 8008194:	d103      	bne.n	800819e <VL53L0X_get_measurement_timing_budget_micro_seconds+0x8a>
 8008196:	18bb      	adds	r3, r7, r2
 8008198:	789b      	ldrb	r3, [r3, #2]
 800819a:	2b00      	cmp	r3, #0
 800819c:	d038      	beq.n	8008210 <VL53L0X_get_measurement_timing_budget_micro_seconds+0xfc>
 800819e:	253f      	movs	r5, #63	; 0x3f
 80081a0:	197c      	adds	r4, r7, r5
 80081a2:	2310      	movs	r3, #16
 80081a4:	18fa      	adds	r2, r7, r3
 80081a6:	687b      	ldr	r3, [r7, #4]
 80081a8:	2102      	movs	r1, #2
 80081aa:	0018      	movs	r0, r3
 80081ac:	f7ff fc0c 	bl	80079c8 <get_sequence_step_timeout>
 80081b0:	0003      	movs	r3, r0
 80081b2:	7023      	strb	r3, [r4, #0]
 80081b4:	197b      	adds	r3, r7, r5
 80081b6:	781b      	ldrb	r3, [r3, #0]
 80081b8:	b25b      	sxtb	r3, r3
 80081ba:	2b00      	cmp	r3, #0
 80081bc:	d128      	bne.n	8008210 <VL53L0X_get_measurement_timing_budget_micro_seconds+0xfc>
 80081be:	2318      	movs	r3, #24
 80081c0:	18fb      	adds	r3, r7, r3
 80081c2:	781b      	ldrb	r3, [r3, #0]
 80081c4:	2b00      	cmp	r3, #0
 80081c6:	d007      	beq.n	80081d8 <VL53L0X_get_measurement_timing_budget_micro_seconds+0xc4>
 80081c8:	683b      	ldr	r3, [r7, #0]
 80081ca:	681a      	ldr	r2, [r3, #0]
 80081cc:	6939      	ldr	r1, [r7, #16]
 80081ce:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80081d0:	18cb      	adds	r3, r1, r3
 80081d2:	18d2      	adds	r2, r2, r3
 80081d4:	683b      	ldr	r3, [r7, #0]
 80081d6:	601a      	str	r2, [r3, #0]
 80081d8:	2318      	movs	r3, #24
 80081da:	18fb      	adds	r3, r7, r3
 80081dc:	789b      	ldrb	r3, [r3, #2]
 80081de:	2b00      	cmp	r3, #0
 80081e0:	d009      	beq.n	80081f6 <VL53L0X_get_measurement_timing_budget_micro_seconds+0xe2>
 80081e2:	683b      	ldr	r3, [r7, #0]
 80081e4:	681a      	ldr	r2, [r3, #0]
 80081e6:	6939      	ldr	r1, [r7, #16]
 80081e8:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80081ea:	18cb      	adds	r3, r1, r3
 80081ec:	005b      	lsls	r3, r3, #1
 80081ee:	18d2      	adds	r2, r2, r3
 80081f0:	683b      	ldr	r3, [r7, #0]
 80081f2:	601a      	str	r2, [r3, #0]
 80081f4:	e00c      	b.n	8008210 <VL53L0X_get_measurement_timing_budget_micro_seconds+0xfc>
 80081f6:	2318      	movs	r3, #24
 80081f8:	18fb      	adds	r3, r7, r3
 80081fa:	785b      	ldrb	r3, [r3, #1]
 80081fc:	2b00      	cmp	r3, #0
 80081fe:	d007      	beq.n	8008210 <VL53L0X_get_measurement_timing_budget_micro_seconds+0xfc>
 8008200:	683b      	ldr	r3, [r7, #0]
 8008202:	681a      	ldr	r2, [r3, #0]
 8008204:	6939      	ldr	r1, [r7, #16]
 8008206:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8008208:	18cb      	adds	r3, r1, r3
 800820a:	18d2      	adds	r2, r2, r3
 800820c:	683b      	ldr	r3, [r7, #0]
 800820e:	601a      	str	r2, [r3, #0]
 8008210:	223f      	movs	r2, #63	; 0x3f
 8008212:	18bb      	adds	r3, r7, r2
 8008214:	781b      	ldrb	r3, [r3, #0]
 8008216:	b25b      	sxtb	r3, r3
 8008218:	2b00      	cmp	r3, #0
 800821a:	d116      	bne.n	800824a <VL53L0X_get_measurement_timing_budget_micro_seconds+0x136>
 800821c:	2318      	movs	r3, #24
 800821e:	18fb      	adds	r3, r7, r3
 8008220:	78db      	ldrb	r3, [r3, #3]
 8008222:	2b00      	cmp	r3, #0
 8008224:	d011      	beq.n	800824a <VL53L0X_get_measurement_timing_budget_micro_seconds+0x136>
 8008226:	18bc      	adds	r4, r7, r2
 8008228:	230c      	movs	r3, #12
 800822a:	18fa      	adds	r2, r7, r3
 800822c:	687b      	ldr	r3, [r7, #4]
 800822e:	2103      	movs	r1, #3
 8008230:	0018      	movs	r0, r3
 8008232:	f7ff fbc9 	bl	80079c8 <get_sequence_step_timeout>
 8008236:	0003      	movs	r3, r0
 8008238:	7023      	strb	r3, [r4, #0]
 800823a:	683b      	ldr	r3, [r7, #0]
 800823c:	681a      	ldr	r2, [r3, #0]
 800823e:	68f9      	ldr	r1, [r7, #12]
 8008240:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8008242:	18cb      	adds	r3, r1, r3
 8008244:	18d2      	adds	r2, r2, r3
 8008246:	683b      	ldr	r3, [r7, #0]
 8008248:	601a      	str	r2, [r3, #0]
 800824a:	223f      	movs	r2, #63	; 0x3f
 800824c:	18bb      	adds	r3, r7, r2
 800824e:	781b      	ldrb	r3, [r3, #0]
 8008250:	b25b      	sxtb	r3, r3
 8008252:	2b00      	cmp	r3, #0
 8008254:	d116      	bne.n	8008284 <VL53L0X_get_measurement_timing_budget_micro_seconds+0x170>
 8008256:	2318      	movs	r3, #24
 8008258:	18fb      	adds	r3, r7, r3
 800825a:	791b      	ldrb	r3, [r3, #4]
 800825c:	2b00      	cmp	r3, #0
 800825e:	d011      	beq.n	8008284 <VL53L0X_get_measurement_timing_budget_micro_seconds+0x170>
 8008260:	18bc      	adds	r4, r7, r2
 8008262:	2314      	movs	r3, #20
 8008264:	18fa      	adds	r2, r7, r3
 8008266:	687b      	ldr	r3, [r7, #4]
 8008268:	2104      	movs	r1, #4
 800826a:	0018      	movs	r0, r3
 800826c:	f7ff fbac 	bl	80079c8 <get_sequence_step_timeout>
 8008270:	0003      	movs	r3, r0
 8008272:	7023      	strb	r3, [r4, #0]
 8008274:	683b      	ldr	r3, [r7, #0]
 8008276:	681a      	ldr	r2, [r3, #0]
 8008278:	6979      	ldr	r1, [r7, #20]
 800827a:	6a3b      	ldr	r3, [r7, #32]
 800827c:	18cb      	adds	r3, r1, r3
 800827e:	18d2      	adds	r2, r2, r3
 8008280:	683b      	ldr	r3, [r7, #0]
 8008282:	601a      	str	r2, [r3, #0]
 8008284:	233f      	movs	r3, #63	; 0x3f
 8008286:	18fb      	adds	r3, r7, r3
 8008288:	781b      	ldrb	r3, [r3, #0]
 800828a:	b25b      	sxtb	r3, r3
 800828c:	2b00      	cmp	r3, #0
 800828e:	d103      	bne.n	8008298 <VL53L0X_get_measurement_timing_budget_micro_seconds+0x184>
 8008290:	683b      	ldr	r3, [r7, #0]
 8008292:	681a      	ldr	r2, [r3, #0]
 8008294:	687b      	ldr	r3, [r7, #4]
 8008296:	615a      	str	r2, [r3, #20]
 8008298:	233f      	movs	r3, #63	; 0x3f
 800829a:	18fb      	adds	r3, r7, r3
 800829c:	781b      	ldrb	r3, [r3, #0]
 800829e:	b25b      	sxtb	r3, r3
 80082a0:	0018      	movs	r0, r3
 80082a2:	46bd      	mov	sp, r7
 80082a4:	b010      	add	sp, #64	; 0x40
 80082a6:	bdb0      	pop	{r4, r5, r7, pc}
 80082a8:	00000776 	.word	0x00000776
 80082ac:	0000024e 	.word	0x0000024e
 80082b0:	000002b2 	.word	0x000002b2
 80082b4:	00000226 	.word	0x00000226

080082b8 <VL53L0X_load_tuning_settings>:
 80082b8:	b5b0      	push	{r4, r5, r7, lr}
 80082ba:	b088      	sub	sp, #32
 80082bc:	af00      	add	r7, sp, #0
 80082be:	6078      	str	r0, [r7, #4]
 80082c0:	6039      	str	r1, [r7, #0]
 80082c2:	231f      	movs	r3, #31
 80082c4:	18fb      	adds	r3, r7, r3
 80082c6:	2200      	movs	r2, #0
 80082c8:	701a      	strb	r2, [r3, #0]
 80082ca:	2300      	movs	r3, #0
 80082cc:	617b      	str	r3, [r7, #20]
 80082ce:	e105      	b.n	80084dc <VL53L0X_load_tuning_settings+0x224>
 80082d0:	697b      	ldr	r3, [r7, #20]
 80082d2:	683a      	ldr	r2, [r7, #0]
 80082d4:	18d2      	adds	r2, r2, r3
 80082d6:	2113      	movs	r1, #19
 80082d8:	187b      	adds	r3, r7, r1
 80082da:	7812      	ldrb	r2, [r2, #0]
 80082dc:	701a      	strb	r2, [r3, #0]
 80082de:	697b      	ldr	r3, [r7, #20]
 80082e0:	3301      	adds	r3, #1
 80082e2:	617b      	str	r3, [r7, #20]
 80082e4:	187b      	adds	r3, r7, r1
 80082e6:	781b      	ldrb	r3, [r3, #0]
 80082e8:	2bff      	cmp	r3, #255	; 0xff
 80082ea:	d000      	beq.n	80082ee <VL53L0X_load_tuning_settings+0x36>
 80082ec:	e0ba      	b.n	8008464 <VL53L0X_load_tuning_settings+0x1ac>
 80082ee:	697b      	ldr	r3, [r7, #20]
 80082f0:	683a      	ldr	r2, [r7, #0]
 80082f2:	18d2      	adds	r2, r2, r3
 80082f4:	2111      	movs	r1, #17
 80082f6:	187b      	adds	r3, r7, r1
 80082f8:	7812      	ldrb	r2, [r2, #0]
 80082fa:	701a      	strb	r2, [r3, #0]
 80082fc:	697b      	ldr	r3, [r7, #20]
 80082fe:	3301      	adds	r3, #1
 8008300:	617b      	str	r3, [r7, #20]
 8008302:	187b      	adds	r3, r7, r1
 8008304:	781b      	ldrb	r3, [r3, #0]
 8008306:	2b03      	cmp	r3, #3
 8008308:	d100      	bne.n	800830c <VL53L0X_load_tuning_settings+0x54>
 800830a:	e07f      	b.n	800840c <VL53L0X_load_tuning_settings+0x154>
 800830c:	dd00      	ble.n	8008310 <VL53L0X_load_tuning_settings+0x58>
 800830e:	e0a4      	b.n	800845a <VL53L0X_load_tuning_settings+0x1a2>
 8008310:	2b02      	cmp	r3, #2
 8008312:	d054      	beq.n	80083be <VL53L0X_load_tuning_settings+0x106>
 8008314:	dd00      	ble.n	8008318 <VL53L0X_load_tuning_settings+0x60>
 8008316:	e0a0      	b.n	800845a <VL53L0X_load_tuning_settings+0x1a2>
 8008318:	2b00      	cmp	r3, #0
 800831a:	d002      	beq.n	8008322 <VL53L0X_load_tuning_settings+0x6a>
 800831c:	2b01      	cmp	r3, #1
 800831e:	d027      	beq.n	8008370 <VL53L0X_load_tuning_settings+0xb8>
 8008320:	e09b      	b.n	800845a <VL53L0X_load_tuning_settings+0x1a2>
 8008322:	697b      	ldr	r3, [r7, #20]
 8008324:	683a      	ldr	r2, [r7, #0]
 8008326:	18d2      	adds	r2, r2, r3
 8008328:	2110      	movs	r1, #16
 800832a:	187b      	adds	r3, r7, r1
 800832c:	7812      	ldrb	r2, [r2, #0]
 800832e:	701a      	strb	r2, [r3, #0]
 8008330:	697b      	ldr	r3, [r7, #20]
 8008332:	3301      	adds	r3, #1
 8008334:	617b      	str	r3, [r7, #20]
 8008336:	697b      	ldr	r3, [r7, #20]
 8008338:	683a      	ldr	r2, [r7, #0]
 800833a:	18d2      	adds	r2, r2, r3
 800833c:	200f      	movs	r0, #15
 800833e:	183b      	adds	r3, r7, r0
 8008340:	7812      	ldrb	r2, [r2, #0]
 8008342:	701a      	strb	r2, [r3, #0]
 8008344:	697b      	ldr	r3, [r7, #20]
 8008346:	3301      	adds	r3, #1
 8008348:	617b      	str	r3, [r7, #20]
 800834a:	187b      	adds	r3, r7, r1
 800834c:	781b      	ldrb	r3, [r3, #0]
 800834e:	b29b      	uxth	r3, r3
 8008350:	021b      	lsls	r3, r3, #8
 8008352:	b299      	uxth	r1, r3
 8008354:	183b      	adds	r3, r7, r0
 8008356:	781b      	ldrb	r3, [r3, #0]
 8008358:	b29a      	uxth	r2, r3
 800835a:	200c      	movs	r0, #12
 800835c:	183b      	adds	r3, r7, r0
 800835e:	188a      	adds	r2, r1, r2
 8008360:	801a      	strh	r2, [r3, #0]
 8008362:	687a      	ldr	r2, [r7, #4]
 8008364:	1839      	adds	r1, r7, r0
 8008366:	238a      	movs	r3, #138	; 0x8a
 8008368:	005b      	lsls	r3, r3, #1
 800836a:	8809      	ldrh	r1, [r1, #0]
 800836c:	52d1      	strh	r1, [r2, r3]
 800836e:	e0b5      	b.n	80084dc <VL53L0X_load_tuning_settings+0x224>
 8008370:	697b      	ldr	r3, [r7, #20]
 8008372:	683a      	ldr	r2, [r7, #0]
 8008374:	18d2      	adds	r2, r2, r3
 8008376:	2110      	movs	r1, #16
 8008378:	187b      	adds	r3, r7, r1
 800837a:	7812      	ldrb	r2, [r2, #0]
 800837c:	701a      	strb	r2, [r3, #0]
 800837e:	697b      	ldr	r3, [r7, #20]
 8008380:	3301      	adds	r3, #1
 8008382:	617b      	str	r3, [r7, #20]
 8008384:	697b      	ldr	r3, [r7, #20]
 8008386:	683a      	ldr	r2, [r7, #0]
 8008388:	18d2      	adds	r2, r2, r3
 800838a:	200f      	movs	r0, #15
 800838c:	183b      	adds	r3, r7, r0
 800838e:	7812      	ldrb	r2, [r2, #0]
 8008390:	701a      	strb	r2, [r3, #0]
 8008392:	697b      	ldr	r3, [r7, #20]
 8008394:	3301      	adds	r3, #1
 8008396:	617b      	str	r3, [r7, #20]
 8008398:	187b      	adds	r3, r7, r1
 800839a:	781b      	ldrb	r3, [r3, #0]
 800839c:	b29b      	uxth	r3, r3
 800839e:	021b      	lsls	r3, r3, #8
 80083a0:	b299      	uxth	r1, r3
 80083a2:	183b      	adds	r3, r7, r0
 80083a4:	781b      	ldrb	r3, [r3, #0]
 80083a6:	b29a      	uxth	r2, r3
 80083a8:	200c      	movs	r0, #12
 80083aa:	183b      	adds	r3, r7, r0
 80083ac:	188a      	adds	r2, r1, r2
 80083ae:	801a      	strh	r2, [r3, #0]
 80083b0:	687a      	ldr	r2, [r7, #4]
 80083b2:	1839      	adds	r1, r7, r0
 80083b4:	238b      	movs	r3, #139	; 0x8b
 80083b6:	005b      	lsls	r3, r3, #1
 80083b8:	8809      	ldrh	r1, [r1, #0]
 80083ba:	52d1      	strh	r1, [r2, r3]
 80083bc:	e08e      	b.n	80084dc <VL53L0X_load_tuning_settings+0x224>
 80083be:	697b      	ldr	r3, [r7, #20]
 80083c0:	683a      	ldr	r2, [r7, #0]
 80083c2:	18d2      	adds	r2, r2, r3
 80083c4:	2110      	movs	r1, #16
 80083c6:	187b      	adds	r3, r7, r1
 80083c8:	7812      	ldrb	r2, [r2, #0]
 80083ca:	701a      	strb	r2, [r3, #0]
 80083cc:	697b      	ldr	r3, [r7, #20]
 80083ce:	3301      	adds	r3, #1
 80083d0:	617b      	str	r3, [r7, #20]
 80083d2:	697b      	ldr	r3, [r7, #20]
 80083d4:	683a      	ldr	r2, [r7, #0]
 80083d6:	18d2      	adds	r2, r2, r3
 80083d8:	200f      	movs	r0, #15
 80083da:	183b      	adds	r3, r7, r0
 80083dc:	7812      	ldrb	r2, [r2, #0]
 80083de:	701a      	strb	r2, [r3, #0]
 80083e0:	697b      	ldr	r3, [r7, #20]
 80083e2:	3301      	adds	r3, #1
 80083e4:	617b      	str	r3, [r7, #20]
 80083e6:	187b      	adds	r3, r7, r1
 80083e8:	781b      	ldrb	r3, [r3, #0]
 80083ea:	b29b      	uxth	r3, r3
 80083ec:	021b      	lsls	r3, r3, #8
 80083ee:	b299      	uxth	r1, r3
 80083f0:	183b      	adds	r3, r7, r0
 80083f2:	781b      	ldrb	r3, [r3, #0]
 80083f4:	b29a      	uxth	r2, r3
 80083f6:	200c      	movs	r0, #12
 80083f8:	183b      	adds	r3, r7, r0
 80083fa:	188a      	adds	r2, r1, r2
 80083fc:	801a      	strh	r2, [r3, #0]
 80083fe:	687a      	ldr	r2, [r7, #4]
 8008400:	1839      	adds	r1, r7, r0
 8008402:	238c      	movs	r3, #140	; 0x8c
 8008404:	005b      	lsls	r3, r3, #1
 8008406:	8809      	ldrh	r1, [r1, #0]
 8008408:	52d1      	strh	r1, [r2, r3]
 800840a:	e067      	b.n	80084dc <VL53L0X_load_tuning_settings+0x224>
 800840c:	697b      	ldr	r3, [r7, #20]
 800840e:	683a      	ldr	r2, [r7, #0]
 8008410:	18d2      	adds	r2, r2, r3
 8008412:	2110      	movs	r1, #16
 8008414:	187b      	adds	r3, r7, r1
 8008416:	7812      	ldrb	r2, [r2, #0]
 8008418:	701a      	strb	r2, [r3, #0]
 800841a:	697b      	ldr	r3, [r7, #20]
 800841c:	3301      	adds	r3, #1
 800841e:	617b      	str	r3, [r7, #20]
 8008420:	697b      	ldr	r3, [r7, #20]
 8008422:	683a      	ldr	r2, [r7, #0]
 8008424:	18d2      	adds	r2, r2, r3
 8008426:	200f      	movs	r0, #15
 8008428:	183b      	adds	r3, r7, r0
 800842a:	7812      	ldrb	r2, [r2, #0]
 800842c:	701a      	strb	r2, [r3, #0]
 800842e:	697b      	ldr	r3, [r7, #20]
 8008430:	3301      	adds	r3, #1
 8008432:	617b      	str	r3, [r7, #20]
 8008434:	187b      	adds	r3, r7, r1
 8008436:	781b      	ldrb	r3, [r3, #0]
 8008438:	b29b      	uxth	r3, r3
 800843a:	021b      	lsls	r3, r3, #8
 800843c:	b299      	uxth	r1, r3
 800843e:	183b      	adds	r3, r7, r0
 8008440:	781b      	ldrb	r3, [r3, #0]
 8008442:	b29a      	uxth	r2, r3
 8008444:	200c      	movs	r0, #12
 8008446:	183b      	adds	r3, r7, r0
 8008448:	188a      	adds	r2, r1, r2
 800844a:	801a      	strh	r2, [r3, #0]
 800844c:	687a      	ldr	r2, [r7, #4]
 800844e:	1839      	adds	r1, r7, r0
 8008450:	238e      	movs	r3, #142	; 0x8e
 8008452:	005b      	lsls	r3, r3, #1
 8008454:	8809      	ldrh	r1, [r1, #0]
 8008456:	52d1      	strh	r1, [r2, r3]
 8008458:	e040      	b.n	80084dc <VL53L0X_load_tuning_settings+0x224>
 800845a:	231f      	movs	r3, #31
 800845c:	18fb      	adds	r3, r7, r3
 800845e:	22fc      	movs	r2, #252	; 0xfc
 8008460:	701a      	strb	r2, [r3, #0]
 8008462:	e03b      	b.n	80084dc <VL53L0X_load_tuning_settings+0x224>
 8008464:	2313      	movs	r3, #19
 8008466:	18fb      	adds	r3, r7, r3
 8008468:	781b      	ldrb	r3, [r3, #0]
 800846a:	2b04      	cmp	r3, #4
 800846c:	d832      	bhi.n	80084d4 <VL53L0X_load_tuning_settings+0x21c>
 800846e:	697b      	ldr	r3, [r7, #20]
 8008470:	683a      	ldr	r2, [r7, #0]
 8008472:	18d2      	adds	r2, r2, r3
 8008474:	2312      	movs	r3, #18
 8008476:	18fb      	adds	r3, r7, r3
 8008478:	7812      	ldrb	r2, [r2, #0]
 800847a:	701a      	strb	r2, [r3, #0]
 800847c:	697b      	ldr	r3, [r7, #20]
 800847e:	3301      	adds	r3, #1
 8008480:	617b      	str	r3, [r7, #20]
 8008482:	2300      	movs	r3, #0
 8008484:	61bb      	str	r3, [r7, #24]
 8008486:	e00f      	b.n	80084a8 <VL53L0X_load_tuning_settings+0x1f0>
 8008488:	697b      	ldr	r3, [r7, #20]
 800848a:	683a      	ldr	r2, [r7, #0]
 800848c:	18d3      	adds	r3, r2, r3
 800848e:	7819      	ldrb	r1, [r3, #0]
 8008490:	2308      	movs	r3, #8
 8008492:	18fa      	adds	r2, r7, r3
 8008494:	69bb      	ldr	r3, [r7, #24]
 8008496:	18d3      	adds	r3, r2, r3
 8008498:	1c0a      	adds	r2, r1, #0
 800849a:	701a      	strb	r2, [r3, #0]
 800849c:	697b      	ldr	r3, [r7, #20]
 800849e:	3301      	adds	r3, #1
 80084a0:	617b      	str	r3, [r7, #20]
 80084a2:	69bb      	ldr	r3, [r7, #24]
 80084a4:	3301      	adds	r3, #1
 80084a6:	61bb      	str	r3, [r7, #24]
 80084a8:	2113      	movs	r1, #19
 80084aa:	187b      	adds	r3, r7, r1
 80084ac:	781b      	ldrb	r3, [r3, #0]
 80084ae:	69ba      	ldr	r2, [r7, #24]
 80084b0:	429a      	cmp	r2, r3
 80084b2:	dbe9      	blt.n	8008488 <VL53L0X_load_tuning_settings+0x1d0>
 80084b4:	187b      	adds	r3, r7, r1
 80084b6:	781d      	ldrb	r5, [r3, #0]
 80084b8:	231f      	movs	r3, #31
 80084ba:	18fc      	adds	r4, r7, r3
 80084bc:	2308      	movs	r3, #8
 80084be:	18fa      	adds	r2, r7, r3
 80084c0:	2312      	movs	r3, #18
 80084c2:	18fb      	adds	r3, r7, r3
 80084c4:	7819      	ldrb	r1, [r3, #0]
 80084c6:	6878      	ldr	r0, [r7, #4]
 80084c8:	002b      	movs	r3, r5
 80084ca:	f7fa ffb3 	bl	8003434 <VL53L0X_WriteMulti>
 80084ce:	0003      	movs	r3, r0
 80084d0:	7023      	strb	r3, [r4, #0]
 80084d2:	e003      	b.n	80084dc <VL53L0X_load_tuning_settings+0x224>
 80084d4:	231f      	movs	r3, #31
 80084d6:	18fb      	adds	r3, r7, r3
 80084d8:	22fc      	movs	r2, #252	; 0xfc
 80084da:	701a      	strb	r2, [r3, #0]
 80084dc:	697b      	ldr	r3, [r7, #20]
 80084de:	683a      	ldr	r2, [r7, #0]
 80084e0:	18d3      	adds	r3, r2, r3
 80084e2:	781b      	ldrb	r3, [r3, #0]
 80084e4:	2b00      	cmp	r3, #0
 80084e6:	d006      	beq.n	80084f6 <VL53L0X_load_tuning_settings+0x23e>
 80084e8:	231f      	movs	r3, #31
 80084ea:	18fb      	adds	r3, r7, r3
 80084ec:	781b      	ldrb	r3, [r3, #0]
 80084ee:	b25b      	sxtb	r3, r3
 80084f0:	2b00      	cmp	r3, #0
 80084f2:	d100      	bne.n	80084f6 <VL53L0X_load_tuning_settings+0x23e>
 80084f4:	e6ec      	b.n	80082d0 <VL53L0X_load_tuning_settings+0x18>
 80084f6:	231f      	movs	r3, #31
 80084f8:	18fb      	adds	r3, r7, r3
 80084fa:	781b      	ldrb	r3, [r3, #0]
 80084fc:	b25b      	sxtb	r3, r3
 80084fe:	0018      	movs	r0, r3
 8008500:	46bd      	mov	sp, r7
 8008502:	b008      	add	sp, #32
 8008504:	bdb0      	pop	{r4, r5, r7, pc}

08008506 <VL53L0X_get_total_xtalk_rate>:
 8008506:	b5f0      	push	{r4, r5, r6, r7, lr}
 8008508:	b089      	sub	sp, #36	; 0x24
 800850a:	af00      	add	r7, sp, #0
 800850c:	60f8      	str	r0, [r7, #12]
 800850e:	60b9      	str	r1, [r7, #8]
 8008510:	607a      	str	r2, [r7, #4]
 8008512:	251f      	movs	r5, #31
 8008514:	197b      	adds	r3, r7, r5
 8008516:	2200      	movs	r2, #0
 8008518:	701a      	strb	r2, [r3, #0]
 800851a:	687b      	ldr	r3, [r7, #4]
 800851c:	2200      	movs	r2, #0
 800851e:	601a      	str	r2, [r3, #0]
 8008520:	197c      	adds	r4, r7, r5
 8008522:	2613      	movs	r6, #19
 8008524:	19ba      	adds	r2, r7, r6
 8008526:	68fb      	ldr	r3, [r7, #12]
 8008528:	0011      	movs	r1, r2
 800852a:	0018      	movs	r0, r3
 800852c:	f7fc fa47 	bl	80049be <VL53L0X_GetXTalkCompensationEnable>
 8008530:	0003      	movs	r3, r0
 8008532:	7023      	strb	r3, [r4, #0]
 8008534:	197b      	adds	r3, r7, r5
 8008536:	781b      	ldrb	r3, [r3, #0]
 8008538:	b25b      	sxtb	r3, r3
 800853a:	2b00      	cmp	r3, #0
 800853c:	d111      	bne.n	8008562 <VL53L0X_get_total_xtalk_rate+0x5c>
 800853e:	19bb      	adds	r3, r7, r6
 8008540:	781b      	ldrb	r3, [r3, #0]
 8008542:	2b00      	cmp	r3, #0
 8008544:	d00d      	beq.n	8008562 <VL53L0X_get_total_xtalk_rate+0x5c>
 8008546:	68fb      	ldr	r3, [r7, #12]
 8008548:	6a1b      	ldr	r3, [r3, #32]
 800854a:	61bb      	str	r3, [r7, #24]
 800854c:	68bb      	ldr	r3, [r7, #8]
 800854e:	8a9b      	ldrh	r3, [r3, #20]
 8008550:	001a      	movs	r2, r3
 8008552:	69bb      	ldr	r3, [r7, #24]
 8008554:	4353      	muls	r3, r2
 8008556:	617b      	str	r3, [r7, #20]
 8008558:	697b      	ldr	r3, [r7, #20]
 800855a:	3380      	adds	r3, #128	; 0x80
 800855c:	0a1a      	lsrs	r2, r3, #8
 800855e:	687b      	ldr	r3, [r7, #4]
 8008560:	601a      	str	r2, [r3, #0]
 8008562:	231f      	movs	r3, #31
 8008564:	18fb      	adds	r3, r7, r3
 8008566:	781b      	ldrb	r3, [r3, #0]
 8008568:	b25b      	sxtb	r3, r3
 800856a:	0018      	movs	r0, r3
 800856c:	46bd      	mov	sp, r7
 800856e:	b009      	add	sp, #36	; 0x24
 8008570:	bdf0      	pop	{r4, r5, r6, r7, pc}

08008572 <VL53L0X_get_total_signal_rate>:
 8008572:	b5b0      	push	{r4, r5, r7, lr}
 8008574:	b086      	sub	sp, #24
 8008576:	af00      	add	r7, sp, #0
 8008578:	60f8      	str	r0, [r7, #12]
 800857a:	60b9      	str	r1, [r7, #8]
 800857c:	607a      	str	r2, [r7, #4]
 800857e:	2517      	movs	r5, #23
 8008580:	197b      	adds	r3, r7, r5
 8008582:	2200      	movs	r2, #0
 8008584:	701a      	strb	r2, [r3, #0]
 8008586:	68bb      	ldr	r3, [r7, #8]
 8008588:	68da      	ldr	r2, [r3, #12]
 800858a:	687b      	ldr	r3, [r7, #4]
 800858c:	601a      	str	r2, [r3, #0]
 800858e:	197c      	adds	r4, r7, r5
 8008590:	2310      	movs	r3, #16
 8008592:	18fa      	adds	r2, r7, r3
 8008594:	68b9      	ldr	r1, [r7, #8]
 8008596:	68fb      	ldr	r3, [r7, #12]
 8008598:	0018      	movs	r0, r3
 800859a:	f7ff ffb4 	bl	8008506 <VL53L0X_get_total_xtalk_rate>
 800859e:	0003      	movs	r3, r0
 80085a0:	7023      	strb	r3, [r4, #0]
 80085a2:	197b      	adds	r3, r7, r5
 80085a4:	781b      	ldrb	r3, [r3, #0]
 80085a6:	b25b      	sxtb	r3, r3
 80085a8:	2b00      	cmp	r3, #0
 80085aa:	d105      	bne.n	80085b8 <VL53L0X_get_total_signal_rate+0x46>
 80085ac:	687b      	ldr	r3, [r7, #4]
 80085ae:	681a      	ldr	r2, [r3, #0]
 80085b0:	693b      	ldr	r3, [r7, #16]
 80085b2:	18d2      	adds	r2, r2, r3
 80085b4:	687b      	ldr	r3, [r7, #4]
 80085b6:	601a      	str	r2, [r3, #0]
 80085b8:	2317      	movs	r3, #23
 80085ba:	18fb      	adds	r3, r7, r3
 80085bc:	781b      	ldrb	r3, [r3, #0]
 80085be:	b25b      	sxtb	r3, r3
 80085c0:	0018      	movs	r0, r3
 80085c2:	46bd      	mov	sp, r7
 80085c4:	b006      	add	sp, #24
 80085c6:	bdb0      	pop	{r4, r5, r7, pc}

080085c8 <VL53L0X_calc_dmax>:
 80085c8:	b580      	push	{r7, lr}
 80085ca:	b09a      	sub	sp, #104	; 0x68
 80085cc:	af00      	add	r7, sp, #0
 80085ce:	60f8      	str	r0, [r7, #12]
 80085d0:	60b9      	str	r1, [r7, #8]
 80085d2:	607a      	str	r2, [r7, #4]
 80085d4:	603b      	str	r3, [r7, #0]
 80085d6:	2312      	movs	r3, #18
 80085d8:	657b      	str	r3, [r7, #84]	; 0x54
 80085da:	2380      	movs	r3, #128	; 0x80
 80085dc:	01db      	lsls	r3, r3, #7
 80085de:	653b      	str	r3, [r7, #80]	; 0x50
 80085e0:	2342      	movs	r3, #66	; 0x42
 80085e2:	64fb      	str	r3, [r7, #76]	; 0x4c
 80085e4:	2306      	movs	r3, #6
 80085e6:	64bb      	str	r3, [r7, #72]	; 0x48
 80085e8:	2307      	movs	r3, #7
 80085ea:	647b      	str	r3, [r7, #68]	; 0x44
 80085ec:	2343      	movs	r3, #67	; 0x43
 80085ee:	18fb      	adds	r3, r7, r3
 80085f0:	2200      	movs	r2, #0
 80085f2:	701a      	strb	r2, [r3, #0]
 80085f4:	68fa      	ldr	r2, [r7, #12]
 80085f6:	239a      	movs	r3, #154	; 0x9a
 80085f8:	005b      	lsls	r3, r3, #1
 80085fa:	5ad3      	ldrh	r3, [r2, r3]
 80085fc:	63fb      	str	r3, [r7, #60]	; 0x3c
 80085fe:	68fa      	ldr	r2, [r7, #12]
 8008600:	239c      	movs	r3, #156	; 0x9c
 8008602:	005b      	lsls	r3, r3, #1
 8008604:	58d3      	ldr	r3, [r2, r3]
 8008606:	63bb      	str	r3, [r7, #56]	; 0x38
 8008608:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800860a:	6bba      	ldr	r2, [r7, #56]	; 0x38
 800860c:	4353      	muls	r3, r2
 800860e:	637b      	str	r3, [r7, #52]	; 0x34
 8008610:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8008612:	3380      	adds	r3, #128	; 0x80
 8008614:	0a1b      	lsrs	r3, r3, #8
 8008616:	637b      	str	r3, [r7, #52]	; 0x34
 8008618:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800861a:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
 800861c:	4353      	muls	r3, r2
 800861e:	637b      	str	r3, [r7, #52]	; 0x34
 8008620:	2300      	movs	r3, #0
 8008622:	667b      	str	r3, [r7, #100]	; 0x64
 8008624:	687b      	ldr	r3, [r7, #4]
 8008626:	2b00      	cmp	r3, #0
 8008628:	d01c      	beq.n	8008664 <VL53L0X_calc_dmax+0x9c>
 800862a:	68bb      	ldr	r3, [r7, #8]
 800862c:	029b      	lsls	r3, r3, #10
 800862e:	633b      	str	r3, [r7, #48]	; 0x30
 8008630:	687b      	ldr	r3, [r7, #4]
 8008632:	085b      	lsrs	r3, r3, #1
 8008634:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8008636:	18d3      	adds	r3, r2, r3
 8008638:	667b      	str	r3, [r7, #100]	; 0x64
 800863a:	6879      	ldr	r1, [r7, #4]
 800863c:	6e78      	ldr	r0, [r7, #100]	; 0x64
 800863e:	f7f7 fd63 	bl	8000108 <__udivsi3>
 8008642:	0003      	movs	r3, r0
 8008644:	667b      	str	r3, [r7, #100]	; 0x64
 8008646:	6e7a      	ldr	r2, [r7, #100]	; 0x64
 8008648:	0013      	movs	r3, r2
 800864a:	005b      	lsls	r3, r3, #1
 800864c:	189b      	adds	r3, r3, r2
 800864e:	667b      	str	r3, [r7, #100]	; 0x64
 8008650:	6e7b      	ldr	r3, [r7, #100]	; 0x64
 8008652:	435b      	muls	r3, r3
 8008654:	667b      	str	r3, [r7, #100]	; 0x64
 8008656:	6e7b      	ldr	r3, [r7, #100]	; 0x64
 8008658:	2280      	movs	r2, #128	; 0x80
 800865a:	0212      	lsls	r2, r2, #8
 800865c:	4694      	mov	ip, r2
 800865e:	4463      	add	r3, ip
 8008660:	0c1b      	lsrs	r3, r3, #16
 8008662:	667b      	str	r3, [r7, #100]	; 0x64
 8008664:	683b      	ldr	r3, [r7, #0]
 8008666:	6f3a      	ldr	r2, [r7, #112]	; 0x70
 8008668:	4353      	muls	r3, r2
 800866a:	62fb      	str	r3, [r7, #44]	; 0x2c
 800866c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800866e:	2280      	movs	r2, #128	; 0x80
 8008670:	0212      	lsls	r2, r2, #8
 8008672:	4694      	mov	ip, r2
 8008674:	4463      	add	r3, ip
 8008676:	0c1b      	lsrs	r3, r3, #16
 8008678:	62fb      	str	r3, [r7, #44]	; 0x2c
 800867a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800867c:	435b      	muls	r3, r3
 800867e:	62fb      	str	r3, [r7, #44]	; 0x2c
 8008680:	6f7b      	ldr	r3, [r7, #116]	; 0x74
 8008682:	2280      	movs	r2, #128	; 0x80
 8008684:	0212      	lsls	r2, r2, #8
 8008686:	4694      	mov	ip, r2
 8008688:	4463      	add	r3, ip
 800868a:	0c1b      	lsrs	r3, r3, #16
 800868c:	62bb      	str	r3, [r7, #40]	; 0x28
 800868e:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 8008690:	085a      	lsrs	r2, r3, #1
 8008692:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8008694:	18d3      	adds	r3, r2, r3
 8008696:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 8008698:	0018      	movs	r0, r3
 800869a:	f7f7 fd35 	bl	8000108 <__udivsi3>
 800869e:	0003      	movs	r3, r0
 80086a0:	62bb      	str	r3, [r7, #40]	; 0x28
 80086a2:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80086a4:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 80086a6:	4353      	muls	r3, r2
 80086a8:	62bb      	str	r3, [r7, #40]	; 0x28
 80086aa:	6aba      	ldr	r2, [r7, #40]	; 0x28
 80086ac:	2380      	movs	r3, #128	; 0x80
 80086ae:	025b      	lsls	r3, r3, #9
 80086b0:	429a      	cmp	r2, r3
 80086b2:	d302      	bcc.n	80086ba <VL53L0X_calc_dmax+0xf2>
 80086b4:	4b5d      	ldr	r3, [pc, #372]	; (800882c <VL53L0X_calc_dmax+0x264>)
 80086b6:	663b      	str	r3, [r7, #96]	; 0x60
 80086b8:	e017      	b.n	80086ea <VL53L0X_calc_dmax+0x122>
 80086ba:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 80086bc:	085a      	lsrs	r2, r3, #1
 80086be:	6f7b      	ldr	r3, [r7, #116]	; 0x74
 80086c0:	18d3      	adds	r3, r2, r3
 80086c2:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 80086c4:	0018      	movs	r0, r3
 80086c6:	f7f7 fd1f 	bl	8000108 <__udivsi3>
 80086ca:	0003      	movs	r3, r0
 80086cc:	677b      	str	r3, [r7, #116]	; 0x74
 80086ce:	6f7b      	ldr	r3, [r7, #116]	; 0x74
 80086d0:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 80086d2:	4353      	muls	r3, r2
 80086d4:	677b      	str	r3, [r7, #116]	; 0x74
 80086d6:	6f7b      	ldr	r3, [r7, #116]	; 0x74
 80086d8:	2280      	movs	r2, #128	; 0x80
 80086da:	0212      	lsls	r2, r2, #8
 80086dc:	4694      	mov	ip, r2
 80086de:	4463      	add	r3, ip
 80086e0:	0c1b      	lsrs	r3, r3, #16
 80086e2:	663b      	str	r3, [r7, #96]	; 0x60
 80086e4:	6e3b      	ldr	r3, [r7, #96]	; 0x60
 80086e6:	435b      	muls	r3, r3
 80086e8:	663b      	str	r3, [r7, #96]	; 0x60
 80086ea:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 80086ec:	039b      	lsls	r3, r3, #14
 80086ee:	33f5      	adds	r3, #245	; 0xf5
 80086f0:	33ff      	adds	r3, #255	; 0xff
 80086f2:	22fa      	movs	r2, #250	; 0xfa
 80086f4:	0091      	lsls	r1, r2, #2
 80086f6:	0018      	movs	r0, r3
 80086f8:	f7f7 fd06 	bl	8000108 <__udivsi3>
 80086fc:	0003      	movs	r3, r0
 80086fe:	627b      	str	r3, [r7, #36]	; 0x24
 8008700:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8008702:	435b      	muls	r3, r3
 8008704:	627b      	str	r3, [r7, #36]	; 0x24
 8008706:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8008708:	435b      	muls	r3, r3
 800870a:	623b      	str	r3, [r7, #32]
 800870c:	6a3b      	ldr	r3, [r7, #32]
 800870e:	3308      	adds	r3, #8
 8008710:	091b      	lsrs	r3, r3, #4
 8008712:	623b      	str	r3, [r7, #32]
 8008714:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8008716:	6a3b      	ldr	r3, [r7, #32]
 8008718:	1ad3      	subs	r3, r2, r3
 800871a:	627b      	str	r3, [r7, #36]	; 0x24
 800871c:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 800871e:	0013      	movs	r3, r2
 8008720:	005b      	lsls	r3, r3, #1
 8008722:	189b      	adds	r3, r3, r2
 8008724:	011b      	lsls	r3, r3, #4
 8008726:	61fb      	str	r3, [r7, #28]
 8008728:	69fb      	ldr	r3, [r7, #28]
 800872a:	2280      	movs	r2, #128	; 0x80
 800872c:	0192      	lsls	r2, r2, #6
 800872e:	4694      	mov	ip, r2
 8008730:	4463      	add	r3, ip
 8008732:	0b9b      	lsrs	r3, r3, #14
 8008734:	61fb      	str	r3, [r7, #28]
 8008736:	6afa      	ldr	r2, [r7, #44]	; 0x2c
 8008738:	6e3b      	ldr	r3, [r7, #96]	; 0x60
 800873a:	18d3      	adds	r3, r2, r3
 800873c:	61bb      	str	r3, [r7, #24]
 800873e:	6fbb      	ldr	r3, [r7, #120]	; 0x78
 8008740:	085b      	lsrs	r3, r3, #1
 8008742:	69ba      	ldr	r2, [r7, #24]
 8008744:	18d3      	adds	r3, r2, r3
 8008746:	61bb      	str	r3, [r7, #24]
 8008748:	6fb9      	ldr	r1, [r7, #120]	; 0x78
 800874a:	69b8      	ldr	r0, [r7, #24]
 800874c:	f7f7 fcdc 	bl	8000108 <__udivsi3>
 8008750:	0003      	movs	r3, r0
 8008752:	61bb      	str	r3, [r7, #24]
 8008754:	69bb      	ldr	r3, [r7, #24]
 8008756:	039b      	lsls	r3, r3, #14
 8008758:	61bb      	str	r3, [r7, #24]
 800875a:	69fb      	ldr	r3, [r7, #28]
 800875c:	085b      	lsrs	r3, r3, #1
 800875e:	69ba      	ldr	r2, [r7, #24]
 8008760:	18d3      	adds	r3, r2, r3
 8008762:	61bb      	str	r3, [r7, #24]
 8008764:	69f9      	ldr	r1, [r7, #28]
 8008766:	69b8      	ldr	r0, [r7, #24]
 8008768:	f7f7 fcce 	bl	8000108 <__udivsi3>
 800876c:	0003      	movs	r3, r0
 800876e:	61bb      	str	r3, [r7, #24]
 8008770:	69bb      	ldr	r3, [r7, #24]
 8008772:	6e7a      	ldr	r2, [r7, #100]	; 0x64
 8008774:	4353      	muls	r3, r2
 8008776:	61bb      	str	r3, [r7, #24]
 8008778:	69bb      	ldr	r3, [r7, #24]
 800877a:	33f5      	adds	r3, #245	; 0xf5
 800877c:	33ff      	adds	r3, #255	; 0xff
 800877e:	22fa      	movs	r2, #250	; 0xfa
 8008780:	0091      	lsls	r1, r2, #2
 8008782:	0018      	movs	r0, r3
 8008784:	f7f7 fcc0 	bl	8000108 <__udivsi3>
 8008788:	0003      	movs	r3, r0
 800878a:	61bb      	str	r3, [r7, #24]
 800878c:	69bb      	ldr	r3, [r7, #24]
 800878e:	011b      	lsls	r3, r3, #4
 8008790:	61bb      	str	r3, [r7, #24]
 8008792:	69bb      	ldr	r3, [r7, #24]
 8008794:	33f5      	adds	r3, #245	; 0xf5
 8008796:	33ff      	adds	r3, #255	; 0xff
 8008798:	22fa      	movs	r2, #250	; 0xfa
 800879a:	0091      	lsls	r1, r2, #2
 800879c:	0018      	movs	r0, r3
 800879e:	f7f7 fcb3 	bl	8000108 <__udivsi3>
 80087a2:	0003      	movs	r3, r0
 80087a4:	61bb      	str	r3, [r7, #24]
 80087a6:	6d3b      	ldr	r3, [r7, #80]	; 0x50
 80087a8:	3380      	adds	r3, #128	; 0x80
 80087aa:	0a1b      	lsrs	r3, r3, #8
 80087ac:	617b      	str	r3, [r7, #20]
 80087ae:	697b      	ldr	r3, [r7, #20]
 80087b0:	2b00      	cmp	r3, #0
 80087b2:	d00a      	beq.n	80087ca <VL53L0X_calc_dmax+0x202>
 80087b4:	697b      	ldr	r3, [r7, #20]
 80087b6:	085a      	lsrs	r2, r3, #1
 80087b8:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80087ba:	18d3      	adds	r3, r2, r3
 80087bc:	6979      	ldr	r1, [r7, #20]
 80087be:	0018      	movs	r0, r3
 80087c0:	f7f7 fca2 	bl	8000108 <__udivsi3>
 80087c4:	0003      	movs	r3, r0
 80087c6:	65bb      	str	r3, [r7, #88]	; 0x58
 80087c8:	e001      	b.n	80087ce <VL53L0X_calc_dmax+0x206>
 80087ca:	2300      	movs	r3, #0
 80087cc:	65bb      	str	r3, [r7, #88]	; 0x58
 80087ce:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 80087d0:	0018      	movs	r0, r3
 80087d2:	f7fe fa7a 	bl	8006cca <VL53L0X_isqrt>
 80087d6:	0003      	movs	r3, r0
 80087d8:	613b      	str	r3, [r7, #16]
 80087da:	69bb      	ldr	r3, [r7, #24]
 80087dc:	2b00      	cmp	r3, #0
 80087de:	d00a      	beq.n	80087f6 <VL53L0X_calc_dmax+0x22e>
 80087e0:	69bb      	ldr	r3, [r7, #24]
 80087e2:	085a      	lsrs	r2, r3, #1
 80087e4:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80087e6:	18d3      	adds	r3, r2, r3
 80087e8:	69b9      	ldr	r1, [r7, #24]
 80087ea:	0018      	movs	r0, r3
 80087ec:	f7f7 fc8c 	bl	8000108 <__udivsi3>
 80087f0:	0003      	movs	r3, r0
 80087f2:	65fb      	str	r3, [r7, #92]	; 0x5c
 80087f4:	e001      	b.n	80087fa <VL53L0X_calc_dmax+0x232>
 80087f6:	2300      	movs	r3, #0
 80087f8:	65fb      	str	r3, [r7, #92]	; 0x5c
 80087fa:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
 80087fc:	0018      	movs	r0, r3
 80087fe:	f7fe fa64 	bl	8006cca <VL53L0X_isqrt>
 8008802:	0003      	movs	r3, r0
 8008804:	65fb      	str	r3, [r7, #92]	; 0x5c
 8008806:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
 8008808:	693a      	ldr	r2, [r7, #16]
 800880a:	601a      	str	r2, [r3, #0]
 800880c:	693a      	ldr	r2, [r7, #16]
 800880e:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
 8008810:	429a      	cmp	r2, r3
 8008812:	d902      	bls.n	800881a <VL53L0X_calc_dmax+0x252>
 8008814:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
 8008816:	6dfa      	ldr	r2, [r7, #92]	; 0x5c
 8008818:	601a      	str	r2, [r3, #0]
 800881a:	2343      	movs	r3, #67	; 0x43
 800881c:	18fb      	adds	r3, r7, r3
 800881e:	781b      	ldrb	r3, [r3, #0]
 8008820:	b25b      	sxtb	r3, r3
 8008822:	0018      	movs	r0, r3
 8008824:	46bd      	mov	sp, r7
 8008826:	b01a      	add	sp, #104	; 0x68
 8008828:	bd80      	pop	{r7, pc}
 800882a:	46c0      	nop			; (mov r8, r8)
 800882c:	fff00000 	.word	0xfff00000

08008830 <VL53L0X_calc_sigma_estimate>:
 8008830:	b5b0      	push	{r4, r5, r7, lr}
 8008832:	b0b4      	sub	sp, #208	; 0xd0
 8008834:	af04      	add	r7, sp, #16
 8008836:	60f8      	str	r0, [r7, #12]
 8008838:	60b9      	str	r1, [r7, #8]
 800883a:	607a      	str	r2, [r7, #4]
 800883c:	603b      	str	r3, [r7, #0]
 800883e:	23c8      	movs	r3, #200	; 0xc8
 8008840:	009b      	lsls	r3, r3, #2
 8008842:	2290      	movs	r2, #144	; 0x90
 8008844:	18ba      	adds	r2, r7, r2
 8008846:	6013      	str	r3, [r2, #0]
 8008848:	2396      	movs	r3, #150	; 0x96
 800884a:	009b      	lsls	r3, r3, #2
 800884c:	228c      	movs	r2, #140	; 0x8c
 800884e:	18b9      	adds	r1, r7, r2
 8008850:	600b      	str	r3, [r1, #0]
 8008852:	23c8      	movs	r3, #200	; 0xc8
 8008854:	035b      	lsls	r3, r3, #13
 8008856:	2188      	movs	r1, #136	; 0x88
 8008858:	1879      	adds	r1, r7, r1
 800885a:	600b      	str	r3, [r1, #0]
 800885c:	4bb5      	ldr	r3, [pc, #724]	; (8008b34 <VL53L0X_calc_sigma_estimate+0x304>)
 800885e:	2184      	movs	r1, #132	; 0x84
 8008860:	1879      	adds	r1, r7, r1
 8008862:	600b      	str	r3, [r1, #0]
 8008864:	4bb4      	ldr	r3, [pc, #720]	; (8008b38 <VL53L0X_calc_sigma_estimate+0x308>)
 8008866:	2180      	movs	r1, #128	; 0x80
 8008868:	1879      	adds	r1, r7, r1
 800886a:	600b      	str	r3, [r1, #0]
 800886c:	23f0      	movs	r3, #240	; 0xf0
 800886e:	021b      	lsls	r3, r3, #8
 8008870:	67fb      	str	r3, [r7, #124]	; 0x7c
 8008872:	18bb      	adds	r3, r7, r2
 8008874:	6819      	ldr	r1, [r3, #0]
 8008876:	23f0      	movs	r3, #240	; 0xf0
 8008878:	0618      	lsls	r0, r3, #24
 800887a:	f7f7 fc45 	bl	8000108 <__udivsi3>
 800887e:	0003      	movs	r3, r0
 8008880:	67bb      	str	r3, [r7, #120]	; 0x78
 8008882:	4bae      	ldr	r3, [pc, #696]	; (8008b3c <VL53L0X_calc_sigma_estimate+0x30c>)
 8008884:	677b      	str	r3, [r7, #116]	; 0x74
 8008886:	2380      	movs	r3, #128	; 0x80
 8008888:	021b      	lsls	r3, r3, #8
 800888a:	673b      	str	r3, [r7, #112]	; 0x70
 800888c:	23c8      	movs	r3, #200	; 0xc8
 800888e:	039b      	lsls	r3, r3, #14
 8008890:	66fb      	str	r3, [r7, #108]	; 0x6c
 8008892:	4bab      	ldr	r3, [pc, #684]	; (8008b40 <VL53L0X_calc_sigma_estimate+0x310>)
 8008894:	66bb      	str	r3, [r7, #104]	; 0x68
 8008896:	219f      	movs	r1, #159	; 0x9f
 8008898:	187b      	adds	r3, r7, r1
 800889a:	2200      	movs	r2, #0
 800889c:	701a      	strb	r2, [r3, #0]
 800889e:	68fb      	ldr	r3, [r7, #12]
 80088a0:	6a1b      	ldr	r3, [r3, #32]
 80088a2:	617b      	str	r3, [r7, #20]
 80088a4:	68bb      	ldr	r3, [r7, #8]
 80088a6:	691a      	ldr	r2, [r3, #16]
 80088a8:	0013      	movs	r3, r2
 80088aa:	015b      	lsls	r3, r3, #5
 80088ac:	1a9b      	subs	r3, r3, r2
 80088ae:	009b      	lsls	r3, r3, #2
 80088b0:	189b      	adds	r3, r3, r2
 80088b2:	00db      	lsls	r3, r3, #3
 80088b4:	0c1b      	lsrs	r3, r3, #16
 80088b6:	667b      	str	r3, [r7, #100]	; 0x64
 80088b8:	68bb      	ldr	r3, [r7, #8]
 80088ba:	68db      	ldr	r3, [r3, #12]
 80088bc:	663b      	str	r3, [r7, #96]	; 0x60
 80088be:	000d      	movs	r5, r1
 80088c0:	187c      	adds	r4, r7, r1
 80088c2:	2310      	movs	r3, #16
 80088c4:	18fa      	adds	r2, r7, r3
 80088c6:	68b9      	ldr	r1, [r7, #8]
 80088c8:	68fb      	ldr	r3, [r7, #12]
 80088ca:	0018      	movs	r0, r3
 80088cc:	f7ff fe51 	bl	8008572 <VL53L0X_get_total_signal_rate>
 80088d0:	0003      	movs	r3, r0
 80088d2:	7023      	strb	r3, [r4, #0]
 80088d4:	197c      	adds	r4, r7, r5
 80088d6:	2314      	movs	r3, #20
 80088d8:	18fa      	adds	r2, r7, r3
 80088da:	68b9      	ldr	r1, [r7, #8]
 80088dc:	68fb      	ldr	r3, [r7, #12]
 80088de:	0018      	movs	r0, r3
 80088e0:	f7ff fe11 	bl	8008506 <VL53L0X_get_total_xtalk_rate>
 80088e4:	0003      	movs	r3, r0
 80088e6:	7023      	strb	r3, [r4, #0]
 80088e8:	693a      	ldr	r2, [r7, #16]
 80088ea:	0013      	movs	r3, r2
 80088ec:	015b      	lsls	r3, r3, #5
 80088ee:	1a9b      	subs	r3, r3, r2
 80088f0:	009b      	lsls	r3, r3, #2
 80088f2:	189b      	adds	r3, r3, r2
 80088f4:	00db      	lsls	r3, r3, #3
 80088f6:	65fb      	str	r3, [r7, #92]	; 0x5c
 80088f8:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
 80088fa:	2280      	movs	r2, #128	; 0x80
 80088fc:	0212      	lsls	r2, r2, #8
 80088fe:	4694      	mov	ip, r2
 8008900:	4463      	add	r3, ip
 8008902:	0c1b      	lsrs	r3, r3, #16
 8008904:	65fb      	str	r3, [r7, #92]	; 0x5c
 8008906:	697a      	ldr	r2, [r7, #20]
 8008908:	0013      	movs	r3, r2
 800890a:	015b      	lsls	r3, r3, #5
 800890c:	1a9b      	subs	r3, r3, r2
 800890e:	009b      	lsls	r3, r3, #2
 8008910:	189b      	adds	r3, r3, r2
 8008912:	00db      	lsls	r3, r3, #3
 8008914:	21a0      	movs	r1, #160	; 0xa0
 8008916:	187a      	adds	r2, r7, r1
 8008918:	6013      	str	r3, [r2, #0]
 800891a:	187b      	adds	r3, r7, r1
 800891c:	681a      	ldr	r2, [r3, #0]
 800891e:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8008920:	429a      	cmp	r2, r3
 8008922:	d902      	bls.n	800892a <VL53L0X_calc_sigma_estimate+0xfa>
 8008924:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8008926:	187a      	adds	r2, r7, r1
 8008928:	6013      	str	r3, [r2, #0]
 800892a:	239f      	movs	r3, #159	; 0x9f
 800892c:	18fb      	adds	r3, r7, r3
 800892e:	781b      	ldrb	r3, [r3, #0]
 8008930:	b25b      	sxtb	r3, r3
 8008932:	2b00      	cmp	r3, #0
 8008934:	d174      	bne.n	8008a20 <VL53L0X_calc_sigma_estimate+0x1f0>
 8008936:	68fb      	ldr	r3, [r7, #12]
 8008938:	22dc      	movs	r2, #220	; 0xdc
 800893a:	589b      	ldr	r3, [r3, r2]
 800893c:	20b8      	movs	r0, #184	; 0xb8
 800893e:	183a      	adds	r2, r7, r0
 8008940:	6013      	str	r3, [r2, #0]
 8008942:	245b      	movs	r4, #91	; 0x5b
 8008944:	193b      	adds	r3, r7, r4
 8008946:	68fa      	ldr	r2, [r7, #12]
 8008948:	21e0      	movs	r1, #224	; 0xe0
 800894a:	5c52      	ldrb	r2, [r2, r1]
 800894c:	701a      	strb	r2, [r3, #0]
 800894e:	193b      	adds	r3, r7, r4
 8008950:	781a      	ldrb	r2, [r3, #0]
 8008952:	183b      	adds	r3, r7, r0
 8008954:	6819      	ldr	r1, [r3, #0]
 8008956:	68fb      	ldr	r3, [r7, #12]
 8008958:	0018      	movs	r0, r3
 800895a:	f7fe ffd0 	bl	80078fe <VL53L0X_calc_timeout_mclks>
 800895e:	0003      	movs	r3, r0
 8008960:	657b      	str	r3, [r7, #84]	; 0x54
 8008962:	68fb      	ldr	r3, [r7, #12]
 8008964:	22e4      	movs	r2, #228	; 0xe4
 8008966:	589b      	ldr	r3, [r3, r2]
 8008968:	20b4      	movs	r0, #180	; 0xb4
 800896a:	183a      	adds	r2, r7, r0
 800896c:	6013      	str	r3, [r2, #0]
 800896e:	2553      	movs	r5, #83	; 0x53
 8008970:	197b      	adds	r3, r7, r5
 8008972:	68fa      	ldr	r2, [r7, #12]
 8008974:	21e8      	movs	r1, #232	; 0xe8
 8008976:	5c52      	ldrb	r2, [r2, r1]
 8008978:	701a      	strb	r2, [r3, #0]
 800897a:	197b      	adds	r3, r7, r5
 800897c:	781a      	ldrb	r2, [r3, #0]
 800897e:	183b      	adds	r3, r7, r0
 8008980:	6819      	ldr	r1, [r3, #0]
 8008982:	68fb      	ldr	r3, [r7, #12]
 8008984:	0018      	movs	r0, r3
 8008986:	f7fe ffba 	bl	80078fe <VL53L0X_calc_timeout_mclks>
 800898a:	0003      	movs	r3, r0
 800898c:	64fb      	str	r3, [r7, #76]	; 0x4c
 800898e:	2303      	movs	r3, #3
 8008990:	2298      	movs	r2, #152	; 0x98
 8008992:	18b9      	adds	r1, r7, r2
 8008994:	600b      	str	r3, [r1, #0]
 8008996:	193b      	adds	r3, r7, r4
 8008998:	781b      	ldrb	r3, [r3, #0]
 800899a:	2b08      	cmp	r3, #8
 800899c:	d102      	bne.n	80089a4 <VL53L0X_calc_sigma_estimate+0x174>
 800899e:	2302      	movs	r3, #2
 80089a0:	18ba      	adds	r2, r7, r2
 80089a2:	6013      	str	r3, [r2, #0]
 80089a4:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 80089a6:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 80089a8:	18d3      	adds	r3, r2, r3
 80089aa:	2298      	movs	r2, #152	; 0x98
 80089ac:	18ba      	adds	r2, r7, r2
 80089ae:	6812      	ldr	r2, [r2, #0]
 80089b0:	4353      	muls	r3, r2
 80089b2:	02db      	lsls	r3, r3, #11
 80089b4:	2494      	movs	r4, #148	; 0x94
 80089b6:	193a      	adds	r2, r7, r4
 80089b8:	6013      	str	r3, [r2, #0]
 80089ba:	193b      	adds	r3, r7, r4
 80089bc:	681b      	ldr	r3, [r3, #0]
 80089be:	33f5      	adds	r3, #245	; 0xf5
 80089c0:	33ff      	adds	r3, #255	; 0xff
 80089c2:	22fa      	movs	r2, #250	; 0xfa
 80089c4:	0091      	lsls	r1, r2, #2
 80089c6:	0018      	movs	r0, r3
 80089c8:	f7f7 fb9e 	bl	8000108 <__udivsi3>
 80089cc:	0003      	movs	r3, r0
 80089ce:	193a      	adds	r2, r7, r4
 80089d0:	6013      	str	r3, [r2, #0]
 80089d2:	193b      	adds	r3, r7, r4
 80089d4:	681b      	ldr	r3, [r3, #0]
 80089d6:	6eba      	ldr	r2, [r7, #104]	; 0x68
 80089d8:	4353      	muls	r3, r2
 80089da:	193a      	adds	r2, r7, r4
 80089dc:	6013      	str	r3, [r2, #0]
 80089de:	193b      	adds	r3, r7, r4
 80089e0:	681b      	ldr	r3, [r3, #0]
 80089e2:	33f5      	adds	r3, #245	; 0xf5
 80089e4:	33ff      	adds	r3, #255	; 0xff
 80089e6:	22fa      	movs	r2, #250	; 0xfa
 80089e8:	0091      	lsls	r1, r2, #2
 80089ea:	0018      	movs	r0, r3
 80089ec:	f7f7 fb8c 	bl	8000108 <__udivsi3>
 80089f0:	0003      	movs	r3, r0
 80089f2:	0021      	movs	r1, r4
 80089f4:	187a      	adds	r2, r7, r1
 80089f6:	6013      	str	r3, [r2, #0]
 80089f8:	693b      	ldr	r3, [r7, #16]
 80089fa:	3380      	adds	r3, #128	; 0x80
 80089fc:	0a1b      	lsrs	r3, r3, #8
 80089fe:	613b      	str	r3, [r7, #16]
 8008a00:	693a      	ldr	r2, [r7, #16]
 8008a02:	187b      	adds	r3, r7, r1
 8008a04:	681b      	ldr	r3, [r3, #0]
 8008a06:	4353      	muls	r3, r2
 8008a08:	22bc      	movs	r2, #188	; 0xbc
 8008a0a:	18b9      	adds	r1, r7, r2
 8008a0c:	600b      	str	r3, [r1, #0]
 8008a0e:	18bb      	adds	r3, r7, r2
 8008a10:	681b      	ldr	r3, [r3, #0]
 8008a12:	3380      	adds	r3, #128	; 0x80
 8008a14:	0a1b      	lsrs	r3, r3, #8
 8008a16:	18ba      	adds	r2, r7, r2
 8008a18:	6013      	str	r3, [r2, #0]
 8008a1a:	693b      	ldr	r3, [r7, #16]
 8008a1c:	021b      	lsls	r3, r3, #8
 8008a1e:	613b      	str	r3, [r7, #16]
 8008a20:	229f      	movs	r2, #159	; 0x9f
 8008a22:	18bb      	adds	r3, r7, r2
 8008a24:	781b      	ldrb	r3, [r3, #0]
 8008a26:	b25b      	sxtb	r3, r3
 8008a28:	2b00      	cmp	r3, #0
 8008a2a:	d003      	beq.n	8008a34 <VL53L0X_calc_sigma_estimate+0x204>
 8008a2c:	18bb      	adds	r3, r7, r2
 8008a2e:	781b      	ldrb	r3, [r3, #0]
 8008a30:	b25b      	sxtb	r3, r3
 8008a32:	e198      	b.n	8008d66 <VL53L0X_calc_sigma_estimate+0x536>
 8008a34:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
 8008a36:	2b00      	cmp	r3, #0
 8008a38:	d10e      	bne.n	8008a58 <VL53L0X_calc_sigma_estimate+0x228>
 8008a3a:	687b      	ldr	r3, [r7, #4]
 8008a3c:	2180      	movs	r1, #128	; 0x80
 8008a3e:	187a      	adds	r2, r7, r1
 8008a40:	6812      	ldr	r2, [r2, #0]
 8008a42:	601a      	str	r2, [r3, #0]
 8008a44:	68fa      	ldr	r2, [r7, #12]
 8008a46:	2390      	movs	r3, #144	; 0x90
 8008a48:	005b      	lsls	r3, r3, #1
 8008a4a:	1879      	adds	r1, r7, r1
 8008a4c:	6809      	ldr	r1, [r1, #0]
 8008a4e:	50d1      	str	r1, [r2, r3]
 8008a50:	683b      	ldr	r3, [r7, #0]
 8008a52:	2200      	movs	r2, #0
 8008a54:	601a      	str	r2, [r3, #0]
 8008a56:	e182      	b.n	8008d5e <VL53L0X_calc_sigma_estimate+0x52e>
 8008a58:	22bc      	movs	r2, #188	; 0xbc
 8008a5a:	18bb      	adds	r3, r7, r2
 8008a5c:	681b      	ldr	r3, [r3, #0]
 8008a5e:	2b00      	cmp	r3, #0
 8008a60:	d102      	bne.n	8008a68 <VL53L0X_calc_sigma_estimate+0x238>
 8008a62:	2301      	movs	r3, #1
 8008a64:	18ba      	adds	r2, r7, r2
 8008a66:	6013      	str	r3, [r2, #0]
 8008a68:	2390      	movs	r3, #144	; 0x90
 8008a6a:	18fb      	adds	r3, r7, r3
 8008a6c:	681b      	ldr	r3, [r3, #0]
 8008a6e:	64bb      	str	r3, [r7, #72]	; 0x48
 8008a70:	6e7b      	ldr	r3, [r7, #100]	; 0x64
 8008a72:	041b      	lsls	r3, r3, #16
 8008a74:	6df9      	ldr	r1, [r7, #92]	; 0x5c
 8008a76:	0018      	movs	r0, r3
 8008a78:	f7f7 fb46 	bl	8000108 <__udivsi3>
 8008a7c:	0003      	movs	r3, r0
 8008a7e:	21b0      	movs	r1, #176	; 0xb0
 8008a80:	187a      	adds	r2, r7, r1
 8008a82:	6013      	str	r3, [r2, #0]
 8008a84:	187b      	adds	r3, r7, r1
 8008a86:	681a      	ldr	r2, [r3, #0]
 8008a88:	6fbb      	ldr	r3, [r7, #120]	; 0x78
 8008a8a:	429a      	cmp	r2, r3
 8008a8c:	d902      	bls.n	8008a94 <VL53L0X_calc_sigma_estimate+0x264>
 8008a8e:	6fbb      	ldr	r3, [r7, #120]	; 0x78
 8008a90:	187a      	adds	r2, r7, r1
 8008a92:	6013      	str	r3, [r2, #0]
 8008a94:	21b0      	movs	r1, #176	; 0xb0
 8008a96:	187b      	adds	r3, r7, r1
 8008a98:	681b      	ldr	r3, [r3, #0]
 8008a9a:	228c      	movs	r2, #140	; 0x8c
 8008a9c:	18ba      	adds	r2, r7, r2
 8008a9e:	6812      	ldr	r2, [r2, #0]
 8008aa0:	4353      	muls	r3, r2
 8008aa2:	187a      	adds	r2, r7, r1
 8008aa4:	6013      	str	r3, [r2, #0]
 8008aa6:	23bc      	movs	r3, #188	; 0xbc
 8008aa8:	18fb      	adds	r3, r7, r3
 8008aaa:	681a      	ldr	r2, [r3, #0]
 8008aac:	0013      	movs	r3, r2
 8008aae:	005b      	lsls	r3, r3, #1
 8008ab0:	189b      	adds	r3, r3, r2
 8008ab2:	009b      	lsls	r3, r3, #2
 8008ab4:	0018      	movs	r0, r3
 8008ab6:	f7fe f908 	bl	8006cca <VL53L0X_isqrt>
 8008aba:	0003      	movs	r3, r0
 8008abc:	005b      	lsls	r3, r3, #1
 8008abe:	647b      	str	r3, [r7, #68]	; 0x44
 8008ac0:	68bb      	ldr	r3, [r7, #8]
 8008ac2:	891b      	ldrh	r3, [r3, #8]
 8008ac4:	001a      	movs	r2, r3
 8008ac6:	6f7b      	ldr	r3, [r7, #116]	; 0x74
 8008ac8:	4353      	muls	r3, r2
 8008aca:	643b      	str	r3, [r7, #64]	; 0x40
 8008acc:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
 8008ace:	041a      	lsls	r2, r3, #16
 8008ad0:	23a0      	movs	r3, #160	; 0xa0
 8008ad2:	18fb      	adds	r3, r7, r3
 8008ad4:	681b      	ldr	r3, [r3, #0]
 8008ad6:	005b      	lsls	r3, r3, #1
 8008ad8:	1ad3      	subs	r3, r2, r3
 8008ada:	33f5      	adds	r3, #245	; 0xf5
 8008adc:	33ff      	adds	r3, #255	; 0xff
 8008ade:	22fa      	movs	r2, #250	; 0xfa
 8008ae0:	0091      	lsls	r1, r2, #2
 8008ae2:	0018      	movs	r0, r3
 8008ae4:	f7f7 fb10 	bl	8000108 <__udivsi3>
 8008ae8:	0003      	movs	r3, r0
 8008aea:	63fb      	str	r3, [r7, #60]	; 0x3c
 8008aec:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
 8008aee:	041b      	lsls	r3, r3, #16
 8008af0:	33f5      	adds	r3, #245	; 0xf5
 8008af2:	33ff      	adds	r3, #255	; 0xff
 8008af4:	22fa      	movs	r2, #250	; 0xfa
 8008af6:	0091      	lsls	r1, r2, #2
 8008af8:	0018      	movs	r0, r3
 8008afa:	f7f7 fb05 	bl	8000108 <__udivsi3>
 8008afe:	0003      	movs	r3, r0
 8008b00:	63bb      	str	r3, [r7, #56]	; 0x38
 8008b02:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8008b04:	021b      	lsls	r3, r3, #8
 8008b06:	63fb      	str	r3, [r7, #60]	; 0x3c
 8008b08:	6bb9      	ldr	r1, [r7, #56]	; 0x38
 8008b0a:	6bf8      	ldr	r0, [r7, #60]	; 0x3c
 8008b0c:	f7f7 fafc 	bl	8000108 <__udivsi3>
 8008b10:	0003      	movs	r3, r0
 8008b12:	17da      	asrs	r2, r3, #31
 8008b14:	189b      	adds	r3, r3, r2
 8008b16:	4053      	eors	r3, r2
 8008b18:	637b      	str	r3, [r7, #52]	; 0x34
 8008b1a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8008b1c:	021b      	lsls	r3, r3, #8
 8008b1e:	637b      	str	r3, [r7, #52]	; 0x34
 8008b20:	68bb      	ldr	r3, [r7, #8]
 8008b22:	7e1b      	ldrb	r3, [r3, #24]
 8008b24:	2b00      	cmp	r3, #0
 8008b26:	d00d      	beq.n	8008b44 <VL53L0X_calc_sigma_estimate+0x314>
 8008b28:	2380      	movs	r3, #128	; 0x80
 8008b2a:	025b      	lsls	r3, r3, #9
 8008b2c:	22ac      	movs	r2, #172	; 0xac
 8008b2e:	18ba      	adds	r2, r7, r2
 8008b30:	6013      	str	r3, [r2, #0]
 8008b32:	e039      	b.n	8008ba8 <VL53L0X_calc_sigma_estimate+0x378>
 8008b34:	0000125c 	.word	0x0000125c
 8008b38:	028f87ae 	.word	0x028f87ae
 8008b3c:	0006999a 	.word	0x0006999a
 8008b40:	00000677 	.word	0x00000677
 8008b44:	2384      	movs	r3, #132	; 0x84
 8008b46:	18fb      	adds	r3, r7, r3
 8008b48:	6819      	ldr	r1, [r3, #0]
 8008b4a:	6c38      	ldr	r0, [r7, #64]	; 0x40
 8008b4c:	f7f7 fadc 	bl	8000108 <__udivsi3>
 8008b50:	0003      	movs	r3, r0
 8008b52:	21ac      	movs	r1, #172	; 0xac
 8008b54:	187a      	adds	r2, r7, r1
 8008b56:	6013      	str	r3, [r2, #0]
 8008b58:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8008b5a:	2280      	movs	r2, #128	; 0x80
 8008b5c:	0252      	lsls	r2, r2, #9
 8008b5e:	1ad2      	subs	r2, r2, r3
 8008b60:	187b      	adds	r3, r7, r1
 8008b62:	681b      	ldr	r3, [r3, #0]
 8008b64:	4353      	muls	r3, r2
 8008b66:	187a      	adds	r2, r7, r1
 8008b68:	6013      	str	r3, [r2, #0]
 8008b6a:	187b      	adds	r3, r7, r1
 8008b6c:	681a      	ldr	r2, [r3, #0]
 8008b6e:	6f3b      	ldr	r3, [r7, #112]	; 0x70
 8008b70:	18d3      	adds	r3, r2, r3
 8008b72:	0c1b      	lsrs	r3, r3, #16
 8008b74:	000a      	movs	r2, r1
 8008b76:	18b9      	adds	r1, r7, r2
 8008b78:	600b      	str	r3, [r1, #0]
 8008b7a:	18bb      	adds	r3, r7, r2
 8008b7c:	681b      	ldr	r3, [r3, #0]
 8008b7e:	2180      	movs	r1, #128	; 0x80
 8008b80:	0249      	lsls	r1, r1, #9
 8008b82:	468c      	mov	ip, r1
 8008b84:	4463      	add	r3, ip
 8008b86:	18b9      	adds	r1, r7, r2
 8008b88:	600b      	str	r3, [r1, #0]
 8008b8a:	18bb      	adds	r3, r7, r2
 8008b8c:	681b      	ldr	r3, [r3, #0]
 8008b8e:	085b      	lsrs	r3, r3, #1
 8008b90:	18b9      	adds	r1, r7, r2
 8008b92:	600b      	str	r3, [r1, #0]
 8008b94:	18bb      	adds	r3, r7, r2
 8008b96:	681b      	ldr	r3, [r3, #0]
 8008b98:	435b      	muls	r3, r3
 8008b9a:	18b9      	adds	r1, r7, r2
 8008b9c:	600b      	str	r3, [r1, #0]
 8008b9e:	18bb      	adds	r3, r7, r2
 8008ba0:	681b      	ldr	r3, [r3, #0]
 8008ba2:	0b9b      	lsrs	r3, r3, #14
 8008ba4:	18ba      	adds	r2, r7, r2
 8008ba6:	6013      	str	r3, [r2, #0]
 8008ba8:	23ac      	movs	r3, #172	; 0xac
 8008baa:	18fb      	adds	r3, r7, r3
 8008bac:	681b      	ldr	r3, [r3, #0]
 8008bae:	6cba      	ldr	r2, [r7, #72]	; 0x48
 8008bb0:	4353      	muls	r3, r2
 8008bb2:	633b      	str	r3, [r7, #48]	; 0x30
 8008bb4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8008bb6:	2280      	movs	r2, #128	; 0x80
 8008bb8:	0212      	lsls	r2, r2, #8
 8008bba:	4694      	mov	ip, r2
 8008bbc:	4463      	add	r3, ip
 8008bbe:	0c1b      	lsrs	r3, r3, #16
 8008bc0:	633b      	str	r3, [r7, #48]	; 0x30
 8008bc2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8008bc4:	435b      	muls	r3, r3
 8008bc6:	633b      	str	r3, [r7, #48]	; 0x30
 8008bc8:	23b0      	movs	r3, #176	; 0xb0
 8008bca:	18fb      	adds	r3, r7, r3
 8008bcc:	681b      	ldr	r3, [r3, #0]
 8008bce:	62fb      	str	r3, [r7, #44]	; 0x2c
 8008bd0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8008bd2:	2280      	movs	r2, #128	; 0x80
 8008bd4:	0212      	lsls	r2, r2, #8
 8008bd6:	4694      	mov	ip, r2
 8008bd8:	4463      	add	r3, ip
 8008bda:	0c1b      	lsrs	r3, r3, #16
 8008bdc:	62fb      	str	r3, [r7, #44]	; 0x2c
 8008bde:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8008be0:	435b      	muls	r3, r3
 8008be2:	62fb      	str	r3, [r7, #44]	; 0x2c
 8008be4:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8008be6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8008be8:	18d3      	adds	r3, r2, r3
 8008bea:	62bb      	str	r3, [r7, #40]	; 0x28
 8008bec:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8008bee:	0018      	movs	r0, r3
 8008bf0:	f7fe f86b 	bl	8006cca <VL53L0X_isqrt>
 8008bf4:	0003      	movs	r3, r0
 8008bf6:	627b      	str	r3, [r7, #36]	; 0x24
 8008bf8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8008bfa:	041b      	lsls	r3, r3, #16
 8008bfc:	627b      	str	r3, [r7, #36]	; 0x24
 8008bfe:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8008c00:	3332      	adds	r3, #50	; 0x32
 8008c02:	2164      	movs	r1, #100	; 0x64
 8008c04:	0018      	movs	r0, r3
 8008c06:	f7f7 fa7f 	bl	8000108 <__udivsi3>
 8008c0a:	0003      	movs	r3, r0
 8008c0c:	6c79      	ldr	r1, [r7, #68]	; 0x44
 8008c0e:	0018      	movs	r0, r3
 8008c10:	f7f7 fa7a 	bl	8000108 <__udivsi3>
 8008c14:	0003      	movs	r3, r0
 8008c16:	21a8      	movs	r1, #168	; 0xa8
 8008c18:	187a      	adds	r2, r7, r1
 8008c1a:	6013      	str	r3, [r2, #0]
 8008c1c:	187b      	adds	r3, r7, r1
 8008c1e:	681b      	ldr	r3, [r3, #0]
 8008c20:	4a53      	ldr	r2, [pc, #332]	; (8008d70 <VL53L0X_calc_sigma_estimate+0x540>)
 8008c22:	4353      	muls	r3, r2
 8008c24:	000a      	movs	r2, r1
 8008c26:	18b9      	adds	r1, r7, r2
 8008c28:	600b      	str	r3, [r1, #0]
 8008c2a:	18bb      	adds	r3, r7, r2
 8008c2c:	681b      	ldr	r3, [r3, #0]
 8008c2e:	4951      	ldr	r1, [pc, #324]	; (8008d74 <VL53L0X_calc_sigma_estimate+0x544>)
 8008c30:	468c      	mov	ip, r1
 8008c32:	4463      	add	r3, ip
 8008c34:	18b9      	adds	r1, r7, r2
 8008c36:	600b      	str	r3, [r1, #0]
 8008c38:	0014      	movs	r4, r2
 8008c3a:	18bb      	adds	r3, r7, r2
 8008c3c:	681b      	ldr	r3, [r3, #0]
 8008c3e:	494e      	ldr	r1, [pc, #312]	; (8008d78 <VL53L0X_calc_sigma_estimate+0x548>)
 8008c40:	0018      	movs	r0, r3
 8008c42:	f7f7 fa61 	bl	8000108 <__udivsi3>
 8008c46:	0003      	movs	r3, r0
 8008c48:	0021      	movs	r1, r4
 8008c4a:	187a      	adds	r2, r7, r1
 8008c4c:	6013      	str	r3, [r2, #0]
 8008c4e:	187b      	adds	r3, r7, r1
 8008c50:	681a      	ldr	r2, [r3, #0]
 8008c52:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
 8008c54:	429a      	cmp	r2, r3
 8008c56:	d902      	bls.n	8008c5e <VL53L0X_calc_sigma_estimate+0x42e>
 8008c58:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
 8008c5a:	187a      	adds	r2, r7, r1
 8008c5c:	6013      	str	r3, [r2, #0]
 8008c5e:	23b8      	movs	r3, #184	; 0xb8
 8008c60:	18fb      	adds	r3, r7, r3
 8008c62:	681a      	ldr	r2, [r3, #0]
 8008c64:	23b4      	movs	r3, #180	; 0xb4
 8008c66:	18fb      	adds	r3, r7, r3
 8008c68:	681b      	ldr	r3, [r3, #0]
 8008c6a:	18d3      	adds	r3, r2, r3
 8008c6c:	33f5      	adds	r3, #245	; 0xf5
 8008c6e:	33ff      	adds	r3, #255	; 0xff
 8008c70:	22fa      	movs	r2, #250	; 0xfa
 8008c72:	0091      	lsls	r1, r2, #2
 8008c74:	0018      	movs	r0, r3
 8008c76:	f7f7 fa47 	bl	8000108 <__udivsi3>
 8008c7a:	0003      	movs	r3, r0
 8008c7c:	623b      	str	r3, [r7, #32]
 8008c7e:	6a3b      	ldr	r3, [r7, #32]
 8008c80:	085a      	lsrs	r2, r3, #1
 8008c82:	2388      	movs	r3, #136	; 0x88
 8008c84:	18fb      	adds	r3, r7, r3
 8008c86:	681b      	ldr	r3, [r3, #0]
 8008c88:	18d3      	adds	r3, r2, r3
 8008c8a:	6a39      	ldr	r1, [r7, #32]
 8008c8c:	0018      	movs	r0, r3
 8008c8e:	f7f7 fa3b 	bl	8000108 <__udivsi3>
 8008c92:	0003      	movs	r3, r0
 8008c94:	0018      	movs	r0, r3
 8008c96:	f7fe f818 	bl	8006cca <VL53L0X_isqrt>
 8008c9a:	0003      	movs	r3, r0
 8008c9c:	61fb      	str	r3, [r7, #28]
 8008c9e:	69fb      	ldr	r3, [r7, #28]
 8008ca0:	021b      	lsls	r3, r3, #8
 8008ca2:	61fb      	str	r3, [r7, #28]
 8008ca4:	69fb      	ldr	r3, [r7, #28]
 8008ca6:	33f5      	adds	r3, #245	; 0xf5
 8008ca8:	33ff      	adds	r3, #255	; 0xff
 8008caa:	22fa      	movs	r2, #250	; 0xfa
 8008cac:	0091      	lsls	r1, r2, #2
 8008cae:	0018      	movs	r0, r3
 8008cb0:	f7f7 fa2a 	bl	8000108 <__udivsi3>
 8008cb4:	0003      	movs	r3, r0
 8008cb6:	61fb      	str	r3, [r7, #28]
 8008cb8:	23a8      	movs	r3, #168	; 0xa8
 8008cba:	18fb      	adds	r3, r7, r3
 8008cbc:	681b      	ldr	r3, [r3, #0]
 8008cbe:	435b      	muls	r3, r3
 8008cc0:	633b      	str	r3, [r7, #48]	; 0x30
 8008cc2:	69fb      	ldr	r3, [r7, #28]
 8008cc4:	435b      	muls	r3, r3
 8008cc6:	62fb      	str	r3, [r7, #44]	; 0x2c
 8008cc8:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8008cca:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8008ccc:	18d3      	adds	r3, r2, r3
 8008cce:	0018      	movs	r0, r3
 8008cd0:	f7fd fffb 	bl	8006cca <VL53L0X_isqrt>
 8008cd4:	0003      	movs	r3, r0
 8008cd6:	61bb      	str	r3, [r7, #24]
 8008cd8:	69ba      	ldr	r2, [r7, #24]
 8008cda:	0013      	movs	r3, r2
 8008cdc:	015b      	lsls	r3, r3, #5
 8008cde:	1a9b      	subs	r3, r3, r2
 8008ce0:	009b      	lsls	r3, r3, #2
 8008ce2:	189b      	adds	r3, r3, r2
 8008ce4:	00db      	lsls	r3, r3, #3
 8008ce6:	22a4      	movs	r2, #164	; 0xa4
 8008ce8:	18b9      	adds	r1, r7, r2
 8008cea:	600b      	str	r3, [r1, #0]
 8008cec:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
 8008cee:	2b00      	cmp	r3, #0
 8008cf0:	d00b      	beq.n	8008d0a <VL53L0X_calc_sigma_estimate+0x4da>
 8008cf2:	23bc      	movs	r3, #188	; 0xbc
 8008cf4:	18fb      	adds	r3, r7, r3
 8008cf6:	681b      	ldr	r3, [r3, #0]
 8008cf8:	2b00      	cmp	r3, #0
 8008cfa:	d006      	beq.n	8008d0a <VL53L0X_calc_sigma_estimate+0x4da>
 8008cfc:	18bb      	adds	r3, r7, r2
 8008cfe:	681a      	ldr	r2, [r3, #0]
 8008d00:	2380      	movs	r3, #128	; 0x80
 8008d02:	18fb      	adds	r3, r7, r3
 8008d04:	681b      	ldr	r3, [r3, #0]
 8008d06:	429a      	cmp	r2, r3
 8008d08:	d905      	bls.n	8008d16 <VL53L0X_calc_sigma_estimate+0x4e6>
 8008d0a:	2380      	movs	r3, #128	; 0x80
 8008d0c:	18fb      	adds	r3, r7, r3
 8008d0e:	681b      	ldr	r3, [r3, #0]
 8008d10:	22a4      	movs	r2, #164	; 0xa4
 8008d12:	18ba      	adds	r2, r7, r2
 8008d14:	6013      	str	r3, [r2, #0]
 8008d16:	687b      	ldr	r3, [r7, #4]
 8008d18:	22a4      	movs	r2, #164	; 0xa4
 8008d1a:	18ba      	adds	r2, r7, r2
 8008d1c:	6812      	ldr	r2, [r2, #0]
 8008d1e:	601a      	str	r2, [r3, #0]
 8008d20:	687b      	ldr	r3, [r7, #4]
 8008d22:	6819      	ldr	r1, [r3, #0]
 8008d24:	68fa      	ldr	r2, [r7, #12]
 8008d26:	2390      	movs	r3, #144	; 0x90
 8008d28:	005b      	lsls	r3, r3, #1
 8008d2a:	50d1      	str	r1, [r2, r3]
 8008d2c:	6939      	ldr	r1, [r7, #16]
 8008d2e:	239f      	movs	r3, #159	; 0x9f
 8008d30:	18fc      	adds	r4, r7, r3
 8008d32:	23ac      	movs	r3, #172	; 0xac
 8008d34:	18fb      	adds	r3, r7, r3
 8008d36:	681d      	ldr	r5, [r3, #0]
 8008d38:	6e3a      	ldr	r2, [r7, #96]	; 0x60
 8008d3a:	68f8      	ldr	r0, [r7, #12]
 8008d3c:	683b      	ldr	r3, [r7, #0]
 8008d3e:	9303      	str	r3, [sp, #12]
 8008d40:	2394      	movs	r3, #148	; 0x94
 8008d42:	18fb      	adds	r3, r7, r3
 8008d44:	681b      	ldr	r3, [r3, #0]
 8008d46:	9302      	str	r3, [sp, #8]
 8008d48:	23b0      	movs	r3, #176	; 0xb0
 8008d4a:	18fb      	adds	r3, r7, r3
 8008d4c:	681b      	ldr	r3, [r3, #0]
 8008d4e:	9301      	str	r3, [sp, #4]
 8008d50:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 8008d52:	9300      	str	r3, [sp, #0]
 8008d54:	002b      	movs	r3, r5
 8008d56:	f7ff fc37 	bl	80085c8 <VL53L0X_calc_dmax>
 8008d5a:	0003      	movs	r3, r0
 8008d5c:	7023      	strb	r3, [r4, #0]
 8008d5e:	239f      	movs	r3, #159	; 0x9f
 8008d60:	18fb      	adds	r3, r7, r3
 8008d62:	781b      	ldrb	r3, [r3, #0]
 8008d64:	b25b      	sxtb	r3, r3
 8008d66:	0018      	movs	r0, r3
 8008d68:	46bd      	mov	sp, r7
 8008d6a:	b030      	add	sp, #192	; 0xc0
 8008d6c:	bdb0      	pop	{r4, r5, r7, pc}
 8008d6e:	46c0      	nop			; (mov r8, r8)
 8008d70:	00000bb5 	.word	0x00000bb5
 8008d74:	00001388 	.word	0x00001388
 8008d78:	00002710 	.word	0x00002710

08008d7c <VL53L0X_get_pal_range_status>:
 8008d7c:	b5b0      	push	{r4, r5, r7, lr}
 8008d7e:	b090      	sub	sp, #64	; 0x40
 8008d80:	af00      	add	r7, sp, #0
 8008d82:	60f8      	str	r0, [r7, #12]
 8008d84:	0008      	movs	r0, r1
 8008d86:	607a      	str	r2, [r7, #4]
 8008d88:	0019      	movs	r1, r3
 8008d8a:	240b      	movs	r4, #11
 8008d8c:	193b      	adds	r3, r7, r4
 8008d8e:	1c02      	adds	r2, r0, #0
 8008d90:	701a      	strb	r2, [r3, #0]
 8008d92:	2308      	movs	r3, #8
 8008d94:	18fb      	adds	r3, r7, r3
 8008d96:	1c0a      	adds	r2, r1, #0
 8008d98:	801a      	strh	r2, [r3, #0]
 8008d9a:	233f      	movs	r3, #63	; 0x3f
 8008d9c:	18fb      	adds	r3, r7, r3
 8008d9e:	2200      	movs	r2, #0
 8008da0:	701a      	strb	r2, [r3, #0]
 8008da2:	233d      	movs	r3, #61	; 0x3d
 8008da4:	18fb      	adds	r3, r7, r3
 8008da6:	2200      	movs	r2, #0
 8008da8:	701a      	strb	r2, [r3, #0]
 8008daa:	233c      	movs	r3, #60	; 0x3c
 8008dac:	18fb      	adds	r3, r7, r3
 8008dae:	2200      	movs	r2, #0
 8008db0:	701a      	strb	r2, [r3, #0]
 8008db2:	233b      	movs	r3, #59	; 0x3b
 8008db4:	18fb      	adds	r3, r7, r3
 8008db6:	2200      	movs	r2, #0
 8008db8:	701a      	strb	r2, [r3, #0]
 8008dba:	232b      	movs	r3, #43	; 0x2b
 8008dbc:	18fb      	adds	r3, r7, r3
 8008dbe:	2200      	movs	r2, #0
 8008dc0:	701a      	strb	r2, [r3, #0]
 8008dc2:	232a      	movs	r3, #42	; 0x2a
 8008dc4:	18fb      	adds	r3, r7, r3
 8008dc6:	2200      	movs	r2, #0
 8008dc8:	701a      	strb	r2, [r3, #0]
 8008dca:	2329      	movs	r3, #41	; 0x29
 8008dcc:	18fb      	adds	r3, r7, r3
 8008dce:	2200      	movs	r2, #0
 8008dd0:	701a      	strb	r2, [r3, #0]
 8008dd2:	2328      	movs	r3, #40	; 0x28
 8008dd4:	18fb      	adds	r3, r7, r3
 8008dd6:	2200      	movs	r2, #0
 8008dd8:	701a      	strb	r2, [r3, #0]
 8008dda:	2132      	movs	r1, #50	; 0x32
 8008ddc:	187b      	adds	r3, r7, r1
 8008dde:	2200      	movs	r2, #0
 8008de0:	701a      	strb	r2, [r3, #0]
 8008de2:	2316      	movs	r3, #22
 8008de4:	18fb      	adds	r3, r7, r3
 8008de6:	2200      	movs	r2, #0
 8008de8:	801a      	strh	r2, [r3, #0]
 8008dea:	2300      	movs	r3, #0
 8008dec:	613b      	str	r3, [r7, #16]
 8008dee:	193b      	adds	r3, r7, r4
 8008df0:	781b      	ldrb	r3, [r3, #0]
 8008df2:	10db      	asrs	r3, r3, #3
 8008df4:	b2da      	uxtb	r2, r3
 8008df6:	0008      	movs	r0, r1
 8008df8:	187b      	adds	r3, r7, r1
 8008dfa:	210f      	movs	r1, #15
 8008dfc:	400a      	ands	r2, r1
 8008dfe:	701a      	strb	r2, [r3, #0]
 8008e00:	0002      	movs	r2, r0
 8008e02:	18bb      	adds	r3, r7, r2
 8008e04:	781b      	ldrb	r3, [r3, #0]
 8008e06:	2b00      	cmp	r3, #0
 8008e08:	d017      	beq.n	8008e3a <VL53L0X_get_pal_range_status+0xbe>
 8008e0a:	18bb      	adds	r3, r7, r2
 8008e0c:	781b      	ldrb	r3, [r3, #0]
 8008e0e:	2b05      	cmp	r3, #5
 8008e10:	d013      	beq.n	8008e3a <VL53L0X_get_pal_range_status+0xbe>
 8008e12:	18bb      	adds	r3, r7, r2
 8008e14:	781b      	ldrb	r3, [r3, #0]
 8008e16:	2b07      	cmp	r3, #7
 8008e18:	d00f      	beq.n	8008e3a <VL53L0X_get_pal_range_status+0xbe>
 8008e1a:	18bb      	adds	r3, r7, r2
 8008e1c:	781b      	ldrb	r3, [r3, #0]
 8008e1e:	2b0c      	cmp	r3, #12
 8008e20:	d00b      	beq.n	8008e3a <VL53L0X_get_pal_range_status+0xbe>
 8008e22:	18bb      	adds	r3, r7, r2
 8008e24:	781b      	ldrb	r3, [r3, #0]
 8008e26:	2b0d      	cmp	r3, #13
 8008e28:	d007      	beq.n	8008e3a <VL53L0X_get_pal_range_status+0xbe>
 8008e2a:	18bb      	adds	r3, r7, r2
 8008e2c:	781b      	ldrb	r3, [r3, #0]
 8008e2e:	2b0e      	cmp	r3, #14
 8008e30:	d003      	beq.n	8008e3a <VL53L0X_get_pal_range_status+0xbe>
 8008e32:	18bb      	adds	r3, r7, r2
 8008e34:	781b      	ldrb	r3, [r3, #0]
 8008e36:	2b0f      	cmp	r3, #15
 8008e38:	d104      	bne.n	8008e44 <VL53L0X_get_pal_range_status+0xc8>
 8008e3a:	233e      	movs	r3, #62	; 0x3e
 8008e3c:	18fb      	adds	r3, r7, r3
 8008e3e:	2201      	movs	r2, #1
 8008e40:	701a      	strb	r2, [r3, #0]
 8008e42:	e003      	b.n	8008e4c <VL53L0X_get_pal_range_status+0xd0>
 8008e44:	233e      	movs	r3, #62	; 0x3e
 8008e46:	18fb      	adds	r3, r7, r3
 8008e48:	2200      	movs	r2, #0
 8008e4a:	701a      	strb	r2, [r3, #0]
 8008e4c:	223f      	movs	r2, #63	; 0x3f
 8008e4e:	18bb      	adds	r3, r7, r2
 8008e50:	781b      	ldrb	r3, [r3, #0]
 8008e52:	b25b      	sxtb	r3, r3
 8008e54:	2b00      	cmp	r3, #0
 8008e56:	d109      	bne.n	8008e6c <VL53L0X_get_pal_range_status+0xf0>
 8008e58:	18bc      	adds	r4, r7, r2
 8008e5a:	232b      	movs	r3, #43	; 0x2b
 8008e5c:	18fa      	adds	r2, r7, r3
 8008e5e:	68fb      	ldr	r3, [r7, #12]
 8008e60:	2100      	movs	r1, #0
 8008e62:	0018      	movs	r0, r3
 8008e64:	f7fb febc 	bl	8004be0 <VL53L0X_GetLimitCheckEnable>
 8008e68:	0003      	movs	r3, r0
 8008e6a:	7023      	strb	r3, [r4, #0]
 8008e6c:	232b      	movs	r3, #43	; 0x2b
 8008e6e:	18fb      	adds	r3, r7, r3
 8008e70:	781b      	ldrb	r3, [r3, #0]
 8008e72:	2b00      	cmp	r3, #0
 8008e74:	d034      	beq.n	8008ee0 <VL53L0X_get_pal_range_status+0x164>
 8008e76:	253f      	movs	r5, #63	; 0x3f
 8008e78:	197b      	adds	r3, r7, r5
 8008e7a:	781b      	ldrb	r3, [r3, #0]
 8008e7c:	b25b      	sxtb	r3, r3
 8008e7e:	2b00      	cmp	r3, #0
 8008e80:	d12e      	bne.n	8008ee0 <VL53L0X_get_pal_range_status+0x164>
 8008e82:	197c      	adds	r4, r7, r5
 8008e84:	2310      	movs	r3, #16
 8008e86:	18fb      	adds	r3, r7, r3
 8008e88:	2224      	movs	r2, #36	; 0x24
 8008e8a:	18ba      	adds	r2, r7, r2
 8008e8c:	6d39      	ldr	r1, [r7, #80]	; 0x50
 8008e8e:	68f8      	ldr	r0, [r7, #12]
 8008e90:	f7ff fcce 	bl	8008830 <VL53L0X_calc_sigma_estimate>
 8008e94:	0003      	movs	r3, r0
 8008e96:	7023      	strb	r3, [r4, #0]
 8008e98:	197b      	adds	r3, r7, r5
 8008e9a:	781b      	ldrb	r3, [r3, #0]
 8008e9c:	b25b      	sxtb	r3, r3
 8008e9e:	2b00      	cmp	r3, #0
 8008ea0:	d103      	bne.n	8008eaa <VL53L0X_get_pal_range_status+0x12e>
 8008ea2:	693b      	ldr	r3, [r7, #16]
 8008ea4:	b29a      	uxth	r2, r3
 8008ea6:	6d3b      	ldr	r3, [r7, #80]	; 0x50
 8008ea8:	815a      	strh	r2, [r3, #10]
 8008eaa:	223f      	movs	r2, #63	; 0x3f
 8008eac:	18bb      	adds	r3, r7, r2
 8008eae:	781b      	ldrb	r3, [r3, #0]
 8008eb0:	b25b      	sxtb	r3, r3
 8008eb2:	2b00      	cmp	r3, #0
 8008eb4:	d114      	bne.n	8008ee0 <VL53L0X_get_pal_range_status+0x164>
 8008eb6:	18bc      	adds	r4, r7, r2
 8008eb8:	2320      	movs	r3, #32
 8008eba:	18fa      	adds	r2, r7, r3
 8008ebc:	68fb      	ldr	r3, [r7, #12]
 8008ebe:	2100      	movs	r1, #0
 8008ec0:	0018      	movs	r0, r3
 8008ec2:	f7fb ff31 	bl	8004d28 <VL53L0X_GetLimitCheckValue>
 8008ec6:	0003      	movs	r3, r0
 8008ec8:	7023      	strb	r3, [r4, #0]
 8008eca:	6a3b      	ldr	r3, [r7, #32]
 8008ecc:	2b00      	cmp	r3, #0
 8008ece:	d007      	beq.n	8008ee0 <VL53L0X_get_pal_range_status+0x164>
 8008ed0:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8008ed2:	6a3b      	ldr	r3, [r7, #32]
 8008ed4:	429a      	cmp	r2, r3
 8008ed6:	d903      	bls.n	8008ee0 <VL53L0X_get_pal_range_status+0x164>
 8008ed8:	233d      	movs	r3, #61	; 0x3d
 8008eda:	18fb      	adds	r3, r7, r3
 8008edc:	2201      	movs	r2, #1
 8008ede:	701a      	strb	r2, [r3, #0]
 8008ee0:	223f      	movs	r2, #63	; 0x3f
 8008ee2:	18bb      	adds	r3, r7, r2
 8008ee4:	781b      	ldrb	r3, [r3, #0]
 8008ee6:	b25b      	sxtb	r3, r3
 8008ee8:	2b00      	cmp	r3, #0
 8008eea:	d109      	bne.n	8008f00 <VL53L0X_get_pal_range_status+0x184>
 8008eec:	18bc      	adds	r4, r7, r2
 8008eee:	2329      	movs	r3, #41	; 0x29
 8008ef0:	18fa      	adds	r2, r7, r3
 8008ef2:	68fb      	ldr	r3, [r7, #12]
 8008ef4:	2102      	movs	r1, #2
 8008ef6:	0018      	movs	r0, r3
 8008ef8:	f7fb fe72 	bl	8004be0 <VL53L0X_GetLimitCheckEnable>
 8008efc:	0003      	movs	r3, r0
 8008efe:	7023      	strb	r3, [r4, #0]
 8008f00:	2329      	movs	r3, #41	; 0x29
 8008f02:	18fb      	adds	r3, r7, r3
 8008f04:	781b      	ldrb	r3, [r3, #0]
 8008f06:	2b00      	cmp	r3, #0
 8008f08:	d051      	beq.n	8008fae <VL53L0X_get_pal_range_status+0x232>
 8008f0a:	253f      	movs	r5, #63	; 0x3f
 8008f0c:	197b      	adds	r3, r7, r5
 8008f0e:	781b      	ldrb	r3, [r3, #0]
 8008f10:	b25b      	sxtb	r3, r3
 8008f12:	2b00      	cmp	r3, #0
 8008f14:	d14b      	bne.n	8008fae <VL53L0X_get_pal_range_status+0x232>
 8008f16:	197c      	adds	r4, r7, r5
 8008f18:	231c      	movs	r3, #28
 8008f1a:	18fa      	adds	r2, r7, r3
 8008f1c:	68fb      	ldr	r3, [r7, #12]
 8008f1e:	2102      	movs	r1, #2
 8008f20:	0018      	movs	r0, r3
 8008f22:	f7fb ff01 	bl	8004d28 <VL53L0X_GetLimitCheckValue>
 8008f26:	0003      	movs	r3, r0
 8008f28:	7023      	strb	r3, [r4, #0]
 8008f2a:	197b      	adds	r3, r7, r5
 8008f2c:	781b      	ldrb	r3, [r3, #0]
 8008f2e:	b25b      	sxtb	r3, r3
 8008f30:	2b00      	cmp	r3, #0
 8008f32:	d108      	bne.n	8008f46 <VL53L0X_get_pal_range_status+0x1ca>
 8008f34:	197c      	adds	r4, r7, r5
 8008f36:	68fb      	ldr	r3, [r7, #12]
 8008f38:	2201      	movs	r2, #1
 8008f3a:	21ff      	movs	r1, #255	; 0xff
 8008f3c:	0018      	movs	r0, r3
 8008f3e:	f7fa fb6b 	bl	8003618 <VL53L0X_WrByte>
 8008f42:	0003      	movs	r3, r0
 8008f44:	7023      	strb	r3, [r4, #0]
 8008f46:	223f      	movs	r2, #63	; 0x3f
 8008f48:	18bb      	adds	r3, r7, r2
 8008f4a:	781b      	ldrb	r3, [r3, #0]
 8008f4c:	b25b      	sxtb	r3, r3
 8008f4e:	2b00      	cmp	r3, #0
 8008f50:	d109      	bne.n	8008f66 <VL53L0X_get_pal_range_status+0x1ea>
 8008f52:	18bc      	adds	r4, r7, r2
 8008f54:	2316      	movs	r3, #22
 8008f56:	18fa      	adds	r2, r7, r3
 8008f58:	68fb      	ldr	r3, [r7, #12]
 8008f5a:	21b6      	movs	r1, #182	; 0xb6
 8008f5c:	0018      	movs	r0, r3
 8008f5e:	f7fa fbde 	bl	800371e <VL53L0X_RdWord>
 8008f62:	0003      	movs	r3, r0
 8008f64:	7023      	strb	r3, [r4, #0]
 8008f66:	223f      	movs	r2, #63	; 0x3f
 8008f68:	18bb      	adds	r3, r7, r2
 8008f6a:	781b      	ldrb	r3, [r3, #0]
 8008f6c:	b25b      	sxtb	r3, r3
 8008f6e:	2b00      	cmp	r3, #0
 8008f70:	d108      	bne.n	8008f84 <VL53L0X_get_pal_range_status+0x208>
 8008f72:	18bc      	adds	r4, r7, r2
 8008f74:	68fb      	ldr	r3, [r7, #12]
 8008f76:	2200      	movs	r2, #0
 8008f78:	21ff      	movs	r1, #255	; 0xff
 8008f7a:	0018      	movs	r0, r3
 8008f7c:	f7fa fb4c 	bl	8003618 <VL53L0X_WrByte>
 8008f80:	0003      	movs	r3, r0
 8008f82:	7023      	strb	r3, [r4, #0]
 8008f84:	2316      	movs	r3, #22
 8008f86:	18fb      	adds	r3, r7, r3
 8008f88:	881b      	ldrh	r3, [r3, #0]
 8008f8a:	025b      	lsls	r3, r3, #9
 8008f8c:	62fb      	str	r3, [r7, #44]	; 0x2c
 8008f8e:	68fa      	ldr	r2, [r7, #12]
 8008f90:	2394      	movs	r3, #148	; 0x94
 8008f92:	005b      	lsls	r3, r3, #1
 8008f94:	6af9      	ldr	r1, [r7, #44]	; 0x2c
 8008f96:	50d1      	str	r1, [r2, r3]
 8008f98:	69fb      	ldr	r3, [r7, #28]
 8008f9a:	2b00      	cmp	r3, #0
 8008f9c:	d007      	beq.n	8008fae <VL53L0X_get_pal_range_status+0x232>
 8008f9e:	69fb      	ldr	r3, [r7, #28]
 8008fa0:	6afa      	ldr	r2, [r7, #44]	; 0x2c
 8008fa2:	429a      	cmp	r2, r3
 8008fa4:	d903      	bls.n	8008fae <VL53L0X_get_pal_range_status+0x232>
 8008fa6:	233c      	movs	r3, #60	; 0x3c
 8008fa8:	18fb      	adds	r3, r7, r3
 8008faa:	2201      	movs	r2, #1
 8008fac:	701a      	strb	r2, [r3, #0]
 8008fae:	223f      	movs	r2, #63	; 0x3f
 8008fb0:	18bb      	adds	r3, r7, r2
 8008fb2:	781b      	ldrb	r3, [r3, #0]
 8008fb4:	b25b      	sxtb	r3, r3
 8008fb6:	2b00      	cmp	r3, #0
 8008fb8:	d109      	bne.n	8008fce <VL53L0X_get_pal_range_status+0x252>
 8008fba:	18bc      	adds	r4, r7, r2
 8008fbc:	2328      	movs	r3, #40	; 0x28
 8008fbe:	18fa      	adds	r2, r7, r3
 8008fc0:	68fb      	ldr	r3, [r7, #12]
 8008fc2:	2103      	movs	r1, #3
 8008fc4:	0018      	movs	r0, r3
 8008fc6:	f7fb fe0b 	bl	8004be0 <VL53L0X_GetLimitCheckEnable>
 8008fca:	0003      	movs	r3, r0
 8008fcc:	7023      	strb	r3, [r4, #0]
 8008fce:	2328      	movs	r3, #40	; 0x28
 8008fd0:	18fb      	adds	r3, r7, r3
 8008fd2:	781b      	ldrb	r3, [r3, #0]
 8008fd4:	2b00      	cmp	r3, #0
 8008fd6:	d02e      	beq.n	8009036 <VL53L0X_get_pal_range_status+0x2ba>
 8008fd8:	233f      	movs	r3, #63	; 0x3f
 8008fda:	18fb      	adds	r3, r7, r3
 8008fdc:	781b      	ldrb	r3, [r3, #0]
 8008fde:	b25b      	sxtb	r3, r3
 8008fe0:	2b00      	cmp	r3, #0
 8008fe2:	d128      	bne.n	8009036 <VL53L0X_get_pal_range_status+0x2ba>
 8008fe4:	2308      	movs	r3, #8
 8008fe6:	18fb      	adds	r3, r7, r3
 8008fe8:	881b      	ldrh	r3, [r3, #0]
 8008fea:	2b00      	cmp	r3, #0
 8008fec:	d102      	bne.n	8008ff4 <VL53L0X_get_pal_range_status+0x278>
 8008fee:	2300      	movs	r3, #0
 8008ff0:	637b      	str	r3, [r7, #52]	; 0x34
 8008ff2:	e00a      	b.n	800900a <VL53L0X_get_pal_range_status+0x28e>
 8008ff4:	687b      	ldr	r3, [r7, #4]
 8008ff6:	021a      	lsls	r2, r3, #8
 8008ff8:	2308      	movs	r3, #8
 8008ffa:	18fb      	adds	r3, r7, r3
 8008ffc:	881b      	ldrh	r3, [r3, #0]
 8008ffe:	0019      	movs	r1, r3
 8009000:	0010      	movs	r0, r2
 8009002:	f7f7 f881 	bl	8000108 <__udivsi3>
 8009006:	0003      	movs	r3, r0
 8009008:	637b      	str	r3, [r7, #52]	; 0x34
 800900a:	233f      	movs	r3, #63	; 0x3f
 800900c:	18fc      	adds	r4, r7, r3
 800900e:	2318      	movs	r3, #24
 8009010:	18fa      	adds	r2, r7, r3
 8009012:	68fb      	ldr	r3, [r7, #12]
 8009014:	2103      	movs	r1, #3
 8009016:	0018      	movs	r0, r3
 8009018:	f7fb fe86 	bl	8004d28 <VL53L0X_GetLimitCheckValue>
 800901c:	0003      	movs	r3, r0
 800901e:	7023      	strb	r3, [r4, #0]
 8009020:	69bb      	ldr	r3, [r7, #24]
 8009022:	2b00      	cmp	r3, #0
 8009024:	d007      	beq.n	8009036 <VL53L0X_get_pal_range_status+0x2ba>
 8009026:	69bb      	ldr	r3, [r7, #24]
 8009028:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 800902a:	429a      	cmp	r2, r3
 800902c:	d203      	bcs.n	8009036 <VL53L0X_get_pal_range_status+0x2ba>
 800902e:	233b      	movs	r3, #59	; 0x3b
 8009030:	18fb      	adds	r3, r7, r3
 8009032:	2201      	movs	r2, #1
 8009034:	701a      	strb	r2, [r3, #0]
 8009036:	233f      	movs	r3, #63	; 0x3f
 8009038:	18fb      	adds	r3, r7, r3
 800903a:	781b      	ldrb	r3, [r3, #0]
 800903c:	b25b      	sxtb	r3, r3
 800903e:	2b00      	cmp	r3, #0
 8009040:	d152      	bne.n	80090e8 <VL53L0X_get_pal_range_status+0x36c>
 8009042:	233e      	movs	r3, #62	; 0x3e
 8009044:	18fb      	adds	r3, r7, r3
 8009046:	781b      	ldrb	r3, [r3, #0]
 8009048:	2b01      	cmp	r3, #1
 800904a:	d103      	bne.n	8009054 <VL53L0X_get_pal_range_status+0x2d8>
 800904c:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 800904e:	22ff      	movs	r2, #255	; 0xff
 8009050:	701a      	strb	r2, [r3, #0]
 8009052:	e049      	b.n	80090e8 <VL53L0X_get_pal_range_status+0x36c>
 8009054:	2232      	movs	r2, #50	; 0x32
 8009056:	18bb      	adds	r3, r7, r2
 8009058:	781b      	ldrb	r3, [r3, #0]
 800905a:	2b01      	cmp	r3, #1
 800905c:	d007      	beq.n	800906e <VL53L0X_get_pal_range_status+0x2f2>
 800905e:	18bb      	adds	r3, r7, r2
 8009060:	781b      	ldrb	r3, [r3, #0]
 8009062:	2b02      	cmp	r3, #2
 8009064:	d003      	beq.n	800906e <VL53L0X_get_pal_range_status+0x2f2>
 8009066:	18bb      	adds	r3, r7, r2
 8009068:	781b      	ldrb	r3, [r3, #0]
 800906a:	2b03      	cmp	r3, #3
 800906c:	d103      	bne.n	8009076 <VL53L0X_get_pal_range_status+0x2fa>
 800906e:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8009070:	2205      	movs	r2, #5
 8009072:	701a      	strb	r2, [r3, #0]
 8009074:	e038      	b.n	80090e8 <VL53L0X_get_pal_range_status+0x36c>
 8009076:	2232      	movs	r2, #50	; 0x32
 8009078:	18bb      	adds	r3, r7, r2
 800907a:	781b      	ldrb	r3, [r3, #0]
 800907c:	2b06      	cmp	r3, #6
 800907e:	d003      	beq.n	8009088 <VL53L0X_get_pal_range_status+0x30c>
 8009080:	18bb      	adds	r3, r7, r2
 8009082:	781b      	ldrb	r3, [r3, #0]
 8009084:	2b09      	cmp	r3, #9
 8009086:	d103      	bne.n	8009090 <VL53L0X_get_pal_range_status+0x314>
 8009088:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 800908a:	2204      	movs	r2, #4
 800908c:	701a      	strb	r2, [r3, #0]
 800908e:	e02b      	b.n	80090e8 <VL53L0X_get_pal_range_status+0x36c>
 8009090:	2232      	movs	r2, #50	; 0x32
 8009092:	18bb      	adds	r3, r7, r2
 8009094:	781b      	ldrb	r3, [r3, #0]
 8009096:	2b08      	cmp	r3, #8
 8009098:	d008      	beq.n	80090ac <VL53L0X_get_pal_range_status+0x330>
 800909a:	18bb      	adds	r3, r7, r2
 800909c:	781b      	ldrb	r3, [r3, #0]
 800909e:	2b0a      	cmp	r3, #10
 80090a0:	d004      	beq.n	80090ac <VL53L0X_get_pal_range_status+0x330>
 80090a2:	233c      	movs	r3, #60	; 0x3c
 80090a4:	18fb      	adds	r3, r7, r3
 80090a6:	781b      	ldrb	r3, [r3, #0]
 80090a8:	2b01      	cmp	r3, #1
 80090aa:	d103      	bne.n	80090b4 <VL53L0X_get_pal_range_status+0x338>
 80090ac:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 80090ae:	2203      	movs	r2, #3
 80090b0:	701a      	strb	r2, [r3, #0]
 80090b2:	e019      	b.n	80090e8 <VL53L0X_get_pal_range_status+0x36c>
 80090b4:	2332      	movs	r3, #50	; 0x32
 80090b6:	18fb      	adds	r3, r7, r3
 80090b8:	781b      	ldrb	r3, [r3, #0]
 80090ba:	2b04      	cmp	r3, #4
 80090bc:	d004      	beq.n	80090c8 <VL53L0X_get_pal_range_status+0x34c>
 80090be:	233b      	movs	r3, #59	; 0x3b
 80090c0:	18fb      	adds	r3, r7, r3
 80090c2:	781b      	ldrb	r3, [r3, #0]
 80090c4:	2b01      	cmp	r3, #1
 80090c6:	d103      	bne.n	80090d0 <VL53L0X_get_pal_range_status+0x354>
 80090c8:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 80090ca:	2202      	movs	r2, #2
 80090cc:	701a      	strb	r2, [r3, #0]
 80090ce:	e00b      	b.n	80090e8 <VL53L0X_get_pal_range_status+0x36c>
 80090d0:	233d      	movs	r3, #61	; 0x3d
 80090d2:	18fb      	adds	r3, r7, r3
 80090d4:	781b      	ldrb	r3, [r3, #0]
 80090d6:	2b01      	cmp	r3, #1
 80090d8:	d103      	bne.n	80090e2 <VL53L0X_get_pal_range_status+0x366>
 80090da:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 80090dc:	2201      	movs	r2, #1
 80090de:	701a      	strb	r2, [r3, #0]
 80090e0:	e002      	b.n	80090e8 <VL53L0X_get_pal_range_status+0x36c>
 80090e2:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 80090e4:	2200      	movs	r2, #0
 80090e6:	701a      	strb	r2, [r3, #0]
 80090e8:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 80090ea:	781b      	ldrb	r3, [r3, #0]
 80090ec:	2b00      	cmp	r3, #0
 80090ee:	d102      	bne.n	80090f6 <VL53L0X_get_pal_range_status+0x37a>
 80090f0:	6d3b      	ldr	r3, [r7, #80]	; 0x50
 80090f2:	2200      	movs	r2, #0
 80090f4:	815a      	strh	r2, [r3, #10]
 80090f6:	253f      	movs	r5, #63	; 0x3f
 80090f8:	197c      	adds	r4, r7, r5
 80090fa:	232a      	movs	r3, #42	; 0x2a
 80090fc:	18fa      	adds	r2, r7, r3
 80090fe:	68fb      	ldr	r3, [r7, #12]
 8009100:	2101      	movs	r1, #1
 8009102:	0018      	movs	r0, r3
 8009104:	f7fb fd6c 	bl	8004be0 <VL53L0X_GetLimitCheckEnable>
 8009108:	0003      	movs	r3, r0
 800910a:	7023      	strb	r3, [r4, #0]
 800910c:	197b      	adds	r3, r7, r5
 800910e:	781b      	ldrb	r3, [r3, #0]
 8009110:	b25b      	sxtb	r3, r3
 8009112:	2b00      	cmp	r3, #0
 8009114:	d163      	bne.n	80091de <VL53L0X_get_pal_range_status+0x462>
 8009116:	232b      	movs	r3, #43	; 0x2b
 8009118:	18fb      	adds	r3, r7, r3
 800911a:	781b      	ldrb	r3, [r3, #0]
 800911c:	2b00      	cmp	r3, #0
 800911e:	d004      	beq.n	800912a <VL53L0X_get_pal_range_status+0x3ae>
 8009120:	233d      	movs	r3, #61	; 0x3d
 8009122:	18fb      	adds	r3, r7, r3
 8009124:	781b      	ldrb	r3, [r3, #0]
 8009126:	2b01      	cmp	r3, #1
 8009128:	d104      	bne.n	8009134 <VL53L0X_get_pal_range_status+0x3b8>
 800912a:	2333      	movs	r3, #51	; 0x33
 800912c:	18fb      	adds	r3, r7, r3
 800912e:	2201      	movs	r2, #1
 8009130:	701a      	strb	r2, [r3, #0]
 8009132:	e003      	b.n	800913c <VL53L0X_get_pal_range_status+0x3c0>
 8009134:	2333      	movs	r3, #51	; 0x33
 8009136:	18fb      	adds	r3, r7, r3
 8009138:	2200      	movs	r2, #0
 800913a:	701a      	strb	r2, [r3, #0]
 800913c:	68fb      	ldr	r3, [r7, #12]
 800913e:	2233      	movs	r2, #51	; 0x33
 8009140:	18ba      	adds	r2, r7, r2
 8009142:	212e      	movs	r1, #46	; 0x2e
 8009144:	7812      	ldrb	r2, [r2, #0]
 8009146:	545a      	strb	r2, [r3, r1]
 8009148:	2332      	movs	r3, #50	; 0x32
 800914a:	18fb      	adds	r3, r7, r3
 800914c:	781b      	ldrb	r3, [r3, #0]
 800914e:	2b04      	cmp	r3, #4
 8009150:	d004      	beq.n	800915c <VL53L0X_get_pal_range_status+0x3e0>
 8009152:	232a      	movs	r3, #42	; 0x2a
 8009154:	18fb      	adds	r3, r7, r3
 8009156:	781b      	ldrb	r3, [r3, #0]
 8009158:	2b00      	cmp	r3, #0
 800915a:	d104      	bne.n	8009166 <VL53L0X_get_pal_range_status+0x3ea>
 800915c:	2333      	movs	r3, #51	; 0x33
 800915e:	18fb      	adds	r3, r7, r3
 8009160:	2201      	movs	r2, #1
 8009162:	701a      	strb	r2, [r3, #0]
 8009164:	e003      	b.n	800916e <VL53L0X_get_pal_range_status+0x3f2>
 8009166:	2333      	movs	r3, #51	; 0x33
 8009168:	18fb      	adds	r3, r7, r3
 800916a:	2200      	movs	r2, #0
 800916c:	701a      	strb	r2, [r3, #0]
 800916e:	68fb      	ldr	r3, [r7, #12]
 8009170:	2233      	movs	r2, #51	; 0x33
 8009172:	18ba      	adds	r2, r7, r2
 8009174:	212f      	movs	r1, #47	; 0x2f
 8009176:	7812      	ldrb	r2, [r2, #0]
 8009178:	545a      	strb	r2, [r3, r1]
 800917a:	2329      	movs	r3, #41	; 0x29
 800917c:	18fb      	adds	r3, r7, r3
 800917e:	781b      	ldrb	r3, [r3, #0]
 8009180:	2b00      	cmp	r3, #0
 8009182:	d004      	beq.n	800918e <VL53L0X_get_pal_range_status+0x412>
 8009184:	233c      	movs	r3, #60	; 0x3c
 8009186:	18fb      	adds	r3, r7, r3
 8009188:	781b      	ldrb	r3, [r3, #0]
 800918a:	2b01      	cmp	r3, #1
 800918c:	d104      	bne.n	8009198 <VL53L0X_get_pal_range_status+0x41c>
 800918e:	2333      	movs	r3, #51	; 0x33
 8009190:	18fb      	adds	r3, r7, r3
 8009192:	2201      	movs	r2, #1
 8009194:	701a      	strb	r2, [r3, #0]
 8009196:	e003      	b.n	80091a0 <VL53L0X_get_pal_range_status+0x424>
 8009198:	2333      	movs	r3, #51	; 0x33
 800919a:	18fb      	adds	r3, r7, r3
 800919c:	2200      	movs	r2, #0
 800919e:	701a      	strb	r2, [r3, #0]
 80091a0:	68fb      	ldr	r3, [r7, #12]
 80091a2:	2233      	movs	r2, #51	; 0x33
 80091a4:	18ba      	adds	r2, r7, r2
 80091a6:	2130      	movs	r1, #48	; 0x30
 80091a8:	7812      	ldrb	r2, [r2, #0]
 80091aa:	545a      	strb	r2, [r3, r1]
 80091ac:	2328      	movs	r3, #40	; 0x28
 80091ae:	18fb      	adds	r3, r7, r3
 80091b0:	781b      	ldrb	r3, [r3, #0]
 80091b2:	2b00      	cmp	r3, #0
 80091b4:	d004      	beq.n	80091c0 <VL53L0X_get_pal_range_status+0x444>
 80091b6:	233b      	movs	r3, #59	; 0x3b
 80091b8:	18fb      	adds	r3, r7, r3
 80091ba:	781b      	ldrb	r3, [r3, #0]
 80091bc:	2b01      	cmp	r3, #1
 80091be:	d104      	bne.n	80091ca <VL53L0X_get_pal_range_status+0x44e>
 80091c0:	2333      	movs	r3, #51	; 0x33
 80091c2:	18fb      	adds	r3, r7, r3
 80091c4:	2201      	movs	r2, #1
 80091c6:	701a      	strb	r2, [r3, #0]
 80091c8:	e003      	b.n	80091d2 <VL53L0X_get_pal_range_status+0x456>
 80091ca:	2333      	movs	r3, #51	; 0x33
 80091cc:	18fb      	adds	r3, r7, r3
 80091ce:	2200      	movs	r2, #0
 80091d0:	701a      	strb	r2, [r3, #0]
 80091d2:	68fb      	ldr	r3, [r7, #12]
 80091d4:	2233      	movs	r2, #51	; 0x33
 80091d6:	18ba      	adds	r2, r7, r2
 80091d8:	2131      	movs	r1, #49	; 0x31
 80091da:	7812      	ldrb	r2, [r2, #0]
 80091dc:	545a      	strb	r2, [r3, r1]
 80091de:	233f      	movs	r3, #63	; 0x3f
 80091e0:	18fb      	adds	r3, r7, r3
 80091e2:	781b      	ldrb	r3, [r3, #0]
 80091e4:	b25b      	sxtb	r3, r3
 80091e6:	0018      	movs	r0, r3
 80091e8:	46bd      	mov	sp, r7
 80091ea:	b010      	add	sp, #64	; 0x40
 80091ec:	bdb0      	pop	{r4, r5, r7, pc}
	...

080091f0 <__libc_init_array>:
 80091f0:	b570      	push	{r4, r5, r6, lr}
 80091f2:	4d0c      	ldr	r5, [pc, #48]	; (8009224 <__libc_init_array+0x34>)
 80091f4:	4e0c      	ldr	r6, [pc, #48]	; (8009228 <__libc_init_array+0x38>)
 80091f6:	1b76      	subs	r6, r6, r5
 80091f8:	10b6      	asrs	r6, r6, #2
 80091fa:	d005      	beq.n	8009208 <__libc_init_array+0x18>
 80091fc:	2400      	movs	r4, #0
 80091fe:	cd08      	ldmia	r5!, {r3}
 8009200:	3401      	adds	r4, #1
 8009202:	4798      	blx	r3
 8009204:	42a6      	cmp	r6, r4
 8009206:	d1fa      	bne.n	80091fe <__libc_init_array+0xe>
 8009208:	f000 f93c 	bl	8009484 <_init>
 800920c:	4d07      	ldr	r5, [pc, #28]	; (800922c <__libc_init_array+0x3c>)
 800920e:	4e08      	ldr	r6, [pc, #32]	; (8009230 <__libc_init_array+0x40>)
 8009210:	1b76      	subs	r6, r6, r5
 8009212:	10b6      	asrs	r6, r6, #2
 8009214:	d005      	beq.n	8009222 <__libc_init_array+0x32>
 8009216:	2400      	movs	r4, #0
 8009218:	cd08      	ldmia	r5!, {r3}
 800921a:	3401      	adds	r4, #1
 800921c:	4798      	blx	r3
 800921e:	42a6      	cmp	r6, r4
 8009220:	d1fa      	bne.n	8009218 <__libc_init_array+0x28>
 8009222:	bd70      	pop	{r4, r5, r6, pc}
 8009224:	08009d74 	.word	0x08009d74
 8009228:	08009d74 	.word	0x08009d74
 800922c:	08009d74 	.word	0x08009d74
 8009230:	08009d7c 	.word	0x08009d7c

08009234 <memcpy>:
 8009234:	b5f0      	push	{r4, r5, r6, r7, lr}
 8009236:	46c6      	mov	lr, r8
 8009238:	b500      	push	{lr}
 800923a:	2a0f      	cmp	r2, #15
 800923c:	d941      	bls.n	80092c2 <memcpy+0x8e>
 800923e:	2703      	movs	r7, #3
 8009240:	000d      	movs	r5, r1
 8009242:	003e      	movs	r6, r7
 8009244:	4305      	orrs	r5, r0
 8009246:	000c      	movs	r4, r1
 8009248:	0003      	movs	r3, r0
 800924a:	402e      	ands	r6, r5
 800924c:	422f      	tst	r7, r5
 800924e:	d13d      	bne.n	80092cc <memcpy+0x98>
 8009250:	0015      	movs	r5, r2
 8009252:	3d10      	subs	r5, #16
 8009254:	092d      	lsrs	r5, r5, #4
 8009256:	46ac      	mov	ip, r5
 8009258:	012d      	lsls	r5, r5, #4
 800925a:	46a8      	mov	r8, r5
 800925c:	4480      	add	r8, r0
 800925e:	6825      	ldr	r5, [r4, #0]
 8009260:	6867      	ldr	r7, [r4, #4]
 8009262:	601d      	str	r5, [r3, #0]
 8009264:	605f      	str	r7, [r3, #4]
 8009266:	68a5      	ldr	r5, [r4, #8]
 8009268:	68e7      	ldr	r7, [r4, #12]
 800926a:	609d      	str	r5, [r3, #8]
 800926c:	60df      	str	r7, [r3, #12]
 800926e:	3410      	adds	r4, #16
 8009270:	001f      	movs	r7, r3
 8009272:	3310      	adds	r3, #16
 8009274:	4547      	cmp	r7, r8
 8009276:	d1f2      	bne.n	800925e <memcpy+0x2a>
 8009278:	4665      	mov	r5, ip
 800927a:	230f      	movs	r3, #15
 800927c:	240c      	movs	r4, #12
 800927e:	3501      	adds	r5, #1
 8009280:	012d      	lsls	r5, r5, #4
 8009282:	1949      	adds	r1, r1, r5
 8009284:	4013      	ands	r3, r2
 8009286:	1945      	adds	r5, r0, r5
 8009288:	4214      	tst	r4, r2
 800928a:	d022      	beq.n	80092d2 <memcpy+0x9e>
 800928c:	598c      	ldr	r4, [r1, r6]
 800928e:	51ac      	str	r4, [r5, r6]
 8009290:	3604      	adds	r6, #4
 8009292:	1b9c      	subs	r4, r3, r6
 8009294:	2c03      	cmp	r4, #3
 8009296:	d8f9      	bhi.n	800928c <memcpy+0x58>
 8009298:	2403      	movs	r4, #3
 800929a:	3b04      	subs	r3, #4
 800929c:	089b      	lsrs	r3, r3, #2
 800929e:	3301      	adds	r3, #1
 80092a0:	009b      	lsls	r3, r3, #2
 80092a2:	4022      	ands	r2, r4
 80092a4:	18ed      	adds	r5, r5, r3
 80092a6:	18c9      	adds	r1, r1, r3
 80092a8:	1e56      	subs	r6, r2, #1
 80092aa:	2a00      	cmp	r2, #0
 80092ac:	d006      	beq.n	80092bc <memcpy+0x88>
 80092ae:	2300      	movs	r3, #0
 80092b0:	5ccc      	ldrb	r4, [r1, r3]
 80092b2:	001a      	movs	r2, r3
 80092b4:	54ec      	strb	r4, [r5, r3]
 80092b6:	3301      	adds	r3, #1
 80092b8:	4296      	cmp	r6, r2
 80092ba:	d1f9      	bne.n	80092b0 <memcpy+0x7c>
 80092bc:	bc80      	pop	{r7}
 80092be:	46b8      	mov	r8, r7
 80092c0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80092c2:	0005      	movs	r5, r0
 80092c4:	1e56      	subs	r6, r2, #1
 80092c6:	2a00      	cmp	r2, #0
 80092c8:	d1f1      	bne.n	80092ae <memcpy+0x7a>
 80092ca:	e7f7      	b.n	80092bc <memcpy+0x88>
 80092cc:	0005      	movs	r5, r0
 80092ce:	1e56      	subs	r6, r2, #1
 80092d0:	e7ed      	b.n	80092ae <memcpy+0x7a>
 80092d2:	001a      	movs	r2, r3
 80092d4:	e7f6      	b.n	80092c4 <memcpy+0x90>
 80092d6:	46c0      	nop			; (mov r8, r8)

080092d8 <memset>:
 80092d8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80092da:	0005      	movs	r5, r0
 80092dc:	0783      	lsls	r3, r0, #30
 80092de:	d04a      	beq.n	8009376 <memset+0x9e>
 80092e0:	1e54      	subs	r4, r2, #1
 80092e2:	2a00      	cmp	r2, #0
 80092e4:	d044      	beq.n	8009370 <memset+0x98>
 80092e6:	0003      	movs	r3, r0
 80092e8:	2203      	movs	r2, #3
 80092ea:	b2ce      	uxtb	r6, r1
 80092ec:	e002      	b.n	80092f4 <memset+0x1c>
 80092ee:	3501      	adds	r5, #1
 80092f0:	3c01      	subs	r4, #1
 80092f2:	d33d      	bcc.n	8009370 <memset+0x98>
 80092f4:	3301      	adds	r3, #1
 80092f6:	702e      	strb	r6, [r5, #0]
 80092f8:	4213      	tst	r3, r2
 80092fa:	d1f8      	bne.n	80092ee <memset+0x16>
 80092fc:	2c03      	cmp	r4, #3
 80092fe:	d92f      	bls.n	8009360 <memset+0x88>
 8009300:	22ff      	movs	r2, #255	; 0xff
 8009302:	400a      	ands	r2, r1
 8009304:	0215      	lsls	r5, r2, #8
 8009306:	4315      	orrs	r5, r2
 8009308:	042a      	lsls	r2, r5, #16
 800930a:	4315      	orrs	r5, r2
 800930c:	2c0f      	cmp	r4, #15
 800930e:	d935      	bls.n	800937c <memset+0xa4>
 8009310:	0027      	movs	r7, r4
 8009312:	3f10      	subs	r7, #16
 8009314:	093f      	lsrs	r7, r7, #4
 8009316:	013e      	lsls	r6, r7, #4
 8009318:	46b4      	mov	ip, r6
 800931a:	001e      	movs	r6, r3
 800931c:	001a      	movs	r2, r3
 800931e:	3610      	adds	r6, #16
 8009320:	4466      	add	r6, ip
 8009322:	6015      	str	r5, [r2, #0]
 8009324:	6055      	str	r5, [r2, #4]
 8009326:	6095      	str	r5, [r2, #8]
 8009328:	60d5      	str	r5, [r2, #12]
 800932a:	3210      	adds	r2, #16
 800932c:	42b2      	cmp	r2, r6
 800932e:	d1f8      	bne.n	8009322 <memset+0x4a>
 8009330:	260f      	movs	r6, #15
 8009332:	220c      	movs	r2, #12
 8009334:	3701      	adds	r7, #1
 8009336:	013f      	lsls	r7, r7, #4
 8009338:	4026      	ands	r6, r4
 800933a:	19db      	adds	r3, r3, r7
 800933c:	0037      	movs	r7, r6
 800933e:	4222      	tst	r2, r4
 8009340:	d017      	beq.n	8009372 <memset+0x9a>
 8009342:	1f3e      	subs	r6, r7, #4
 8009344:	08b6      	lsrs	r6, r6, #2
 8009346:	00b4      	lsls	r4, r6, #2
 8009348:	46a4      	mov	ip, r4
 800934a:	001a      	movs	r2, r3
 800934c:	1d1c      	adds	r4, r3, #4
 800934e:	4464      	add	r4, ip
 8009350:	c220      	stmia	r2!, {r5}
 8009352:	42a2      	cmp	r2, r4
 8009354:	d1fc      	bne.n	8009350 <memset+0x78>
 8009356:	2403      	movs	r4, #3
 8009358:	3601      	adds	r6, #1
 800935a:	00b6      	lsls	r6, r6, #2
 800935c:	199b      	adds	r3, r3, r6
 800935e:	403c      	ands	r4, r7
 8009360:	2c00      	cmp	r4, #0
 8009362:	d005      	beq.n	8009370 <memset+0x98>
 8009364:	b2c9      	uxtb	r1, r1
 8009366:	191c      	adds	r4, r3, r4
 8009368:	7019      	strb	r1, [r3, #0]
 800936a:	3301      	adds	r3, #1
 800936c:	429c      	cmp	r4, r3
 800936e:	d1fb      	bne.n	8009368 <memset+0x90>
 8009370:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8009372:	0034      	movs	r4, r6
 8009374:	e7f4      	b.n	8009360 <memset+0x88>
 8009376:	0014      	movs	r4, r2
 8009378:	0003      	movs	r3, r0
 800937a:	e7bf      	b.n	80092fc <memset+0x24>
 800937c:	0027      	movs	r7, r4
 800937e:	e7e0      	b.n	8009342 <memset+0x6a>

08009380 <register_fini>:
 8009380:	4b03      	ldr	r3, [pc, #12]	; (8009390 <register_fini+0x10>)
 8009382:	b510      	push	{r4, lr}
 8009384:	2b00      	cmp	r3, #0
 8009386:	d002      	beq.n	800938e <register_fini+0xe>
 8009388:	4802      	ldr	r0, [pc, #8]	; (8009394 <register_fini+0x14>)
 800938a:	f000 f805 	bl	8009398 <atexit>
 800938e:	bd10      	pop	{r4, pc}
 8009390:	00000000 	.word	0x00000000
 8009394:	080093a9 	.word	0x080093a9

08009398 <atexit>:
 8009398:	b510      	push	{r4, lr}
 800939a:	0001      	movs	r1, r0
 800939c:	2300      	movs	r3, #0
 800939e:	2200      	movs	r2, #0
 80093a0:	2000      	movs	r0, #0
 80093a2:	f000 f819 	bl	80093d8 <__register_exitproc>
 80093a6:	bd10      	pop	{r4, pc}

080093a8 <__libc_fini_array>:
 80093a8:	b570      	push	{r4, r5, r6, lr}
 80093aa:	4d07      	ldr	r5, [pc, #28]	; (80093c8 <__libc_fini_array+0x20>)
 80093ac:	4c07      	ldr	r4, [pc, #28]	; (80093cc <__libc_fini_array+0x24>)
 80093ae:	1b64      	subs	r4, r4, r5
 80093b0:	10a4      	asrs	r4, r4, #2
 80093b2:	d005      	beq.n	80093c0 <__libc_fini_array+0x18>
 80093b4:	3c01      	subs	r4, #1
 80093b6:	00a3      	lsls	r3, r4, #2
 80093b8:	58eb      	ldr	r3, [r5, r3]
 80093ba:	4798      	blx	r3
 80093bc:	2c00      	cmp	r4, #0
 80093be:	d1f9      	bne.n	80093b4 <__libc_fini_array+0xc>
 80093c0:	f000 f866 	bl	8009490 <_fini>
 80093c4:	bd70      	pop	{r4, r5, r6, pc}
 80093c6:	46c0      	nop			; (mov r8, r8)
 80093c8:	08009d7c 	.word	0x08009d7c
 80093cc:	08009d80 	.word	0x08009d80

080093d0 <__retarget_lock_acquire_recursive>:
 80093d0:	4770      	bx	lr
 80093d2:	46c0      	nop			; (mov r8, r8)

080093d4 <__retarget_lock_release_recursive>:
 80093d4:	4770      	bx	lr
 80093d6:	46c0      	nop			; (mov r8, r8)

080093d8 <__register_exitproc>:
 80093d8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80093da:	46d6      	mov	lr, sl
 80093dc:	464f      	mov	r7, r9
 80093de:	4646      	mov	r6, r8
 80093e0:	b5c0      	push	{r6, r7, lr}
 80093e2:	4f26      	ldr	r7, [pc, #152]	; (800947c <__register_exitproc+0xa4>)
 80093e4:	b082      	sub	sp, #8
 80093e6:	0006      	movs	r6, r0
 80093e8:	6838      	ldr	r0, [r7, #0]
 80093ea:	4692      	mov	sl, r2
 80093ec:	4698      	mov	r8, r3
 80093ee:	4689      	mov	r9, r1
 80093f0:	f7ff ffee 	bl	80093d0 <__retarget_lock_acquire_recursive>
 80093f4:	4b22      	ldr	r3, [pc, #136]	; (8009480 <__register_exitproc+0xa8>)
 80093f6:	681b      	ldr	r3, [r3, #0]
 80093f8:	9301      	str	r3, [sp, #4]
 80093fa:	23a4      	movs	r3, #164	; 0xa4
 80093fc:	9a01      	ldr	r2, [sp, #4]
 80093fe:	005b      	lsls	r3, r3, #1
 8009400:	58d5      	ldr	r5, [r2, r3]
 8009402:	2d00      	cmp	r5, #0
 8009404:	d02e      	beq.n	8009464 <__register_exitproc+0x8c>
 8009406:	686c      	ldr	r4, [r5, #4]
 8009408:	2c1f      	cmp	r4, #31
 800940a:	dc30      	bgt.n	800946e <__register_exitproc+0x96>
 800940c:	2e00      	cmp	r6, #0
 800940e:	d10f      	bne.n	8009430 <__register_exitproc+0x58>
 8009410:	1c63      	adds	r3, r4, #1
 8009412:	606b      	str	r3, [r5, #4]
 8009414:	464b      	mov	r3, r9
 8009416:	3402      	adds	r4, #2
 8009418:	00a4      	lsls	r4, r4, #2
 800941a:	6838      	ldr	r0, [r7, #0]
 800941c:	5163      	str	r3, [r4, r5]
 800941e:	f7ff ffd9 	bl	80093d4 <__retarget_lock_release_recursive>
 8009422:	2000      	movs	r0, #0
 8009424:	b002      	add	sp, #8
 8009426:	bce0      	pop	{r5, r6, r7}
 8009428:	46ba      	mov	sl, r7
 800942a:	46b1      	mov	r9, r6
 800942c:	46a8      	mov	r8, r5
 800942e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8009430:	2288      	movs	r2, #136	; 0x88
 8009432:	4651      	mov	r1, sl
 8009434:	0028      	movs	r0, r5
 8009436:	00a3      	lsls	r3, r4, #2
 8009438:	18eb      	adds	r3, r5, r3
 800943a:	5099      	str	r1, [r3, r2]
 800943c:	3a87      	subs	r2, #135	; 0x87
 800943e:	40a2      	lsls	r2, r4
 8009440:	3089      	adds	r0, #137	; 0x89
 8009442:	30ff      	adds	r0, #255	; 0xff
 8009444:	6801      	ldr	r1, [r0, #0]
 8009446:	4311      	orrs	r1, r2
 8009448:	6001      	str	r1, [r0, #0]
 800944a:	2184      	movs	r1, #132	; 0x84
 800944c:	4640      	mov	r0, r8
 800944e:	0049      	lsls	r1, r1, #1
 8009450:	5058      	str	r0, [r3, r1]
 8009452:	2e02      	cmp	r6, #2
 8009454:	d1dc      	bne.n	8009410 <__register_exitproc+0x38>
 8009456:	002b      	movs	r3, r5
 8009458:	338d      	adds	r3, #141	; 0x8d
 800945a:	33ff      	adds	r3, #255	; 0xff
 800945c:	6819      	ldr	r1, [r3, #0]
 800945e:	430a      	orrs	r2, r1
 8009460:	601a      	str	r2, [r3, #0]
 8009462:	e7d5      	b.n	8009410 <__register_exitproc+0x38>
 8009464:	0015      	movs	r5, r2
 8009466:	354d      	adds	r5, #77	; 0x4d
 8009468:	35ff      	adds	r5, #255	; 0xff
 800946a:	50d5      	str	r5, [r2, r3]
 800946c:	e7cb      	b.n	8009406 <__register_exitproc+0x2e>
 800946e:	6838      	ldr	r0, [r7, #0]
 8009470:	f7ff ffb0 	bl	80093d4 <__retarget_lock_release_recursive>
 8009474:	2001      	movs	r0, #1
 8009476:	4240      	negs	r0, r0
 8009478:	e7d4      	b.n	8009424 <__register_exitproc+0x4c>
 800947a:	46c0      	nop			; (mov r8, r8)
 800947c:	200006e8 	.word	0x200006e8
 8009480:	08009d70 	.word	0x08009d70

08009484 <_init>:
 8009484:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8009486:	46c0      	nop			; (mov r8, r8)
 8009488:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800948a:	bc08      	pop	{r3}
 800948c:	469e      	mov	lr, r3
 800948e:	4770      	bx	lr

08009490 <_fini>:
 8009490:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8009492:	46c0      	nop			; (mov r8, r8)
 8009494:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8009496:	bc08      	pop	{r3}
 8009498:	469e      	mov	lr, r3
 800949a:	4770      	bx	lr
