	.include "asm/macros.inc"
	.text
	.align 2, 0
	.syntax unified

	arm_func_start ovxDC_3000000
ovxDC_3000000: @ 0x03000000
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	ldr r0, _0300026C @ =0x03000658
	ldr r3, _03000270 @ =0x02028B28
	ldr r1, _03000274 @ =0x02032D14
	ldr r7, _03000278 @ =0x03000672
	ldr r6, _0300027C @ =0x03000670
	ldr r5, _03000280 @ =0x0300066C
	ldr r4, _03000284 @ =0x02028B64
	mov lr, #0
	strh lr, [r7]
	str lr, [r5]
	str r3, [r4, #0x10]
	mov r2, #0x3c
	str r2, [r0, #8]
	strh lr, [r6]
	str r2, [r4, #0xc]
	sub fp, ip, #4
	ldr ip, [r1]
	mov r3, #0x1840
	ldr r2, _03000288 @ =0x02028B20
	add r3, r3, #0x20
	str r3, [r2]
	add r1, ip, #0x2640
	str ip, [r0]
	add r1, r1, #0x30
	str r1, [r0, #4]
	ldr r3, _0300028C @ =0x02032D10
	ldr r1, [r3]
	str r1, [r2, #4]
	mov sl, lr
	ldr r3, _03000290 @ =0x02028798
	mov r1, r4
	bl ovxDC_30007C4
	subs r8, r0, #0
	mov sb, r5
	movne r0, r8
	bne _030002BC
	ldr r5, _03000294 @ =0x03000668
	ldr r3, _03000298 @ =0x03000650
	ldr r4, _0300029C @ =0x03000652
	ldr r1, _030002A0 @ =0x03000654
	ldr r2, _03000274 @ =0x02032D14
	strh sl, [r5]
	strh sl, [r3]
	strh sl, [r4]
	ldr r3, [r2]
	ldr r2, _030002A4 @ =0x03000664
	str r3, [r1]
	str sl, [r2]
	bl ovxDC_3002460
	subs r8, r0, #0
	beq _030000E8
	bl ovxDC_3002628
	ldr r0, _03000284 @ =0x02028B64
	bl ovxDC_30006C0
	mov r0, r8
	b _030002BC
_030000E8:
	mov r2, #0x200
	add r2, r2, #0x4000000
	ldrh r3, [r2]
	orr r3, r3, #0x2000
	strh r3, [r2]
	mov r1, #0x208
	ldr r2, _030002A8 @ =0x0300067A
	mvn r3, #0xfc00
	strh r3, [r2]
	add r1, r1, #0x4000000
	ldrh r2, [r5]
	mov r3, #1
	strh r3, [r1]
	cmp r2, #2
	beq _0300021C
	mov r8, #2
	mov r7, sl
	ldr r6, _030002AC @ =0x03000674
_03000130:
	ldr r3, _030002B0 @ =0x03000678
	ldrh r3, [r3]
	tst r3, #2
	movne sl, #0x300
	strhne r8, [r5]
	addne sl, sl, #1
	bne _0300015C
	tst r3, #1
	movne sl, #0x300
	addne sl, sl, #2
	strhne r8, [r5]
_0300015C:
	ldrh r4, [r5]
	cmp r4, #1
	bne _03000210
	ldr r3, _0300029C @ =0x03000652
	ldrh r0, [r3]
	eor r0, r0, #1
	bl ovxDC_3000A04
	cmp r0, #0
	bne _030001CC
	ldr r1, _03000278 @ =0x03000672
	ldrh r3, [r1]
	cmp r3, #0
	beq _030001A8
	ldr r3, [r6]
	add r3, r3, #1
	str r3, [r6]
	cmp r3, #0x258
	blo _030001B4
	b _03000200
_030001A8:
	ldr r2, _03000278 @ =0x03000672
	str r3, [r6]
	strh r4, [r2]
_030001B4:
	str r7, [sb]
	strh r7, [r5]
	ldr r3, _0300027C @ =0x03000670
	mov r1, #1
	strh r1, [r3]
	b _03000210
_030001CC:
	ldr r1, _0300027C @ =0x03000670
	ldr r3, [sb]
	ldrh r2, [r1]
	add r3, r3, #1
	str r3, [sb]
	cmp r2, #0
	beq _030001F4
	cmp r3, #0xf
	strhhi r8, [r5]
	bhi _03000210
_030001F4:
	ldr r3, [sb]
	cmp r3, #0x258
	blo _0300020C
_03000200:
	strh r8, [r5]
	mov sl, #0x300
	b _03000210
_0300020C:
	strh r7, [r5]
_03000210:
	ldrh r3, [r5]
	cmp r3, #2
	bne _03000130
_0300021C:
	mov r3, #0x208
	add r3, r3, #0x4000000
	mov r1, #0x200
	mov r2, #0
	strh r2, [r3]
	add r1, r1, #0x4000000
	ldrh r3, [r1]
	bic r3, r3, #0x2000
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	strh r3, [r1]
	bl ovxDC_3002628
	ldr r0, _03000284 @ =0x02028B64
	bl ovxDC_30006C0
	cmp sl, #0
	bne _03000264
	cmp r0, #0
	beq _030002B4
_03000264:
	mov r0, sl
	b _030002BC
	.align 2, 0
_0300026C: .4byte 0x03000658
_03000270: .4byte 0x02028B28
_03000274: .4byte 0x02032D14
_03000278: .4byte 0x03000672
_0300027C: .4byte 0x03000670
_03000280: .4byte 0x0300066C
_03000284: .4byte 0x02028B64
_03000288: .4byte 0x02028B20
_0300028C: .4byte 0x02032D10
_03000290: .4byte 0x02028798
_03000294: .4byte 0x03000668
_03000298: .4byte 0x03000650
_0300029C: .4byte 0x03000652
_030002A0: .4byte 0x03000654
_030002A4: .4byte 0x03000664
_030002A8: .4byte 0x0300067A
_030002AC: .4byte 0x03000674
_030002B0: .4byte 0x03000678
_030002B4:
	mvn r0, #0x258
	sub r0, r0, #3
_030002BC:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_30002C4
ovxDC_30002C4: @ 0x030002C4
	mov ip, sp
	mov r1, #0xdf00000
	push {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}
	add r1, r1, #0xa0000
	mov r0, #0x104
	add r0, r0, #0x4000000
	mov r2, #0xc10000
	ldrh r3, [r1]
	add r2, r2, #0xf500
	ldr r8, _03000490 @ =0x03000680
	orr r3, r3, #2
	strh r3, [r1]
	add r2, r2, #0xc3
	ldr sl, _03000494 @ =0x03000682
	mov r1, #0x200
	str r2, [r0]
	add r1, r1, #0x4000002
	ldrh r3, [r1]
	sub fp, ip, #4
	ldr r7, _03000498 @ =0x0300067C
	tst r3, #0x10
	bne _0300032C
	mov r2, r1
_03000320:
	ldrh r3, [r2]
	tst r3, #0x10
	beq _03000320
_0300032C:
	mov r5, #0x200
	add r5, r5, #0x4000002
	mov r1, #0x104
	add r1, r1, #0x4000002
	mov ip, #0xff00
	orr r0, ip, #0xb0
	orr r0, r0, #0xe000000
	mov lr, #0xdf00000
	add lr, lr, #0xa0000
	orr ip, ip, #0xb1
	orr ip, ip, #0xe000000
	mov r4, #0x104
	add r4, r4, #0x4000000
	mov r3, #0x10
	strh r3, [r5]
	mov r2, #0x10000
	str r2, [r1]
	add r3, r3, #0x30
	strb r3, [r0]
	mov r1, #0xc10000
	ldrh r3, [lr]
	add r1, r1, #0xd700
	bic r3, r3, #2
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	strh r3, [lr]
	mov r2, #0x20
	strb r2, [ip]
	add r1, r1, #8
	str r1, [r4]
	ldrh r3, [r5]
	tst r3, #0x10
	bne _030003C0
	mov r2, r5
_030003B4:
	ldrh r3, [r2]
	tst r3, #0x10
	beq _030003B4
_030003C0:
	mov r1, #0x200
	add r1, r1, #0x4000002
	mov r0, #0x104
	add r0, r0, #0x4000002
	mov r6, #0x200
	add r6, r6, #0x4000000
	mov r3, #0x10
	strh r3, [r1]
	mov r2, #0x10000
	str r2, [r0]
	mov r5, #0x208
	ldrh r3, [r6]
	add r5, r5, #0x4000000
	strh r3, [r8]
	mov r4, #0x7f00
	ldrh r3, [r5]
	add r4, r4, #0xfc
	strh r3, [sl]
	add r4, r4, #0x3000000
	ldr r3, [r4]
	str r3, [r7]
	sub r2, r2, #0x10000
	strh r2, [r6]
	ldr r3, _0300049C @ =sub_0800023C
	strh r2, [r5]
	str r3, [r4]
	bl ovxDC_3000000
	mov r1, #0xff00
	orr r2, r1, #0xb0
	orr r2, r2, #0xe000000
	ldrb r3, [r2]
	mov ip, #0xdf00000
	and r3, r3, #0xbf
	strb r3, [r2]
	add ip, ip, #0xa0000
	ldrh r3, [ip]
	orr r1, r1, #0xb1
	bic r3, r3, #2
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	strh r3, [ip]
	orr r1, r1, #0xe000000
	ldrb r3, [r1]
	and r3, r3, #0xdf
	strb r3, [r1]
	ldr r2, [r7]
	str r2, [r4]
	ldrh r3, [r8]
	strh r3, [r6]
	ldrh r2, [sl]
	strh r2, [r5]
	b _030004A0
	.align 2, 0
_03000490: .4byte 0x03000680
_03000494: .4byte 0x03000682
_03000498: .4byte 0x0300067C
_0300049C: .4byte sub_0800023C
_030004A0:
	ldmdb fp, {r4, r5, r6, r7, r8, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_30004A8
ovxDC_30004A8: @ 0x030004A8
	mov ip, sp
	push {r4, r5, r6, fp, ip, lr, pc}
	mov r1, #0xd4
	add r1, r1, #0x4000000
	mov r3, #0xdf00000
	add r3, r3, #0xc0000
	str r3, [r1]
	ldr r6, _030005D4 @ =0x03000654
	ldr r5, _030005D8 @ =0x03000650
	ldr r3, [r6]
	str r3, [r1, #4]
	sub fp, ip, #4
	ldrh r2, [r5]
	add r3, r3, #0x28
	str r3, [r6]
	add r2, r2, #1
	strh r2, [r5]
	mov r3, #-0x7fffffec
	str r3, [r1, #8]
	lsl r2, r2, #0x10
	ldr r0, [r1, #8]
	cmp r2, #0xf60000
	bne _030005FC
	mov r3, #0x130
	add r3, r3, #0x4000000
	ldrh r2, [r3]
	ldr ip, _030005DC @ =0x0300067A
	ldr r1, _030005E0 @ =0x03000678
	ldr r4, _030005E4 @ =0x03000664
	mvn r2, r2
	lsl r2, r2, #0x16
	lsr r2, r2, #0x16
	lsl r2, r2, #0x10
	ldrh r0, [ip]
	lsr r3, r2, #0x10
	bic r3, r3, r0
	strh r3, [r1]
	ldr r0, [r4]
	asr r2, r2, #0x10
	strh r2, [ip]
	add r0, r0, #1
	str r0, [r4]
	bl ovxDC_3001E80
	ldr r0, _030005E8 @ =0x03000652
	ldrh r3, [r0]
	eor ip, r3, #1
	strh ip, [r0]
	ldrh r3, [r0]
	mov r2, #0
	strh r2, [r5]
	ldr r1, _030005EC @ =0x02032D14
	add r2, r3, r3, lsl #2
	add r3, r3, r2, lsl #3
	ldr lr, [r1]
	rsb r3, r3, r3, lsl #4
	ldr r1, [r4]
	add r3, lr, r3, lsl #4
	str r3, [r6]
	cmp r1, #4
	ble _030005FC
	ldr r2, _030005F0 @ =0x03000668
	ldrh r3, [r2]
	cmp r3, #1
	bne _030005F4
	eor r2, ip, #1
	strh r2, [r0]
	ldrh r3, [r0]
	sub r2, r1, #1
	add r1, r3, r3, lsl #2
	add r3, r3, r1, lsl #3
	rsb r3, r3, r3, lsl #4
	str r2, [r4]
	add r3, lr, r3, lsl #4
	str r3, [r6]
	b _030005FC
	.align 2, 0
_030005D4: .4byte 0x03000654
_030005D8: .4byte 0x03000650
_030005DC: .4byte 0x0300067A
_030005E0: .4byte 0x03000678
_030005E4: .4byte 0x03000664
_030005E8: .4byte 0x03000652
_030005EC: .4byte 0x02032D14
_030005F0: .4byte 0x03000668
_030005F4:
	mov r3, #1
	strh r3, [r2]
_030005FC:
	mov r2, #0xff00
	add r2, r2, #0xb1
	add r2, r2, #0xe000000
	mov r1, #0x7f00
	ldrb r3, [r2]
	add r1, r1, #0xf8
	orr r3, r3, #2
	strb r3, [r2]
	add r1, r1, #0x3000000
	ldrb r3, [r2]
	mov r0, #0x2000
	strh r0, [r1]
	and r3, r3, #0xfd
	strb r3, [r2]
	ldmdb fp, {r4, r5, r6, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_300063C
ovxDC_300063C: @ 0x0300063C
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr
_03000650:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.global ovxDC_3000684
ovxDC_3000684:
	.4byte ovxDC_30004A8
	.4byte ovxDC_300063C
	.4byte ovxDC_300063C
	.4byte ovxDC_300063C
	.4byte ovxDC_300063C
	.4byte ovxDC_300063C
	.4byte ovxDC_300063C
	.4byte ovxDC_300063C
	.4byte ovxDC_300063C
	.4byte ovxDC_300063C
	.4byte ovxDC_300063C
	.4byte ovxDC_300063C
	.4byte ovxDC_300063C
	.4byte ovxDC_300063C
	.4byte ovxDC_300063C

	arm_func_start ovxDC_30006C0
ovxDC_30006C0: @ 0x030006C0
	mov ip, sp
	push {r4, r5, r6, fp, ip, lr, pc}
	mov r1, #0
	sub fp, ip, #4
	mov ip, r1
	mov r5, r1
	ldr lr, [r0, #0xc]
	mov r2, r5
	ldr r6, _030007AC @ =0x03006684
	cmp r5, lr
	bge _03000720
	ldr r3, [r6]
	mov r4, lr
	ldr lr, [r3, #0x140]
_030006F8:
	ldrb r3, [lr, r2]
	add r2, r2, #1
	tst r3, #0xf
	beq _03000718
	add r5, r5, #1
	mov ip, r2
	cmp r1, #0
	moveq r1, ip
_03000718:
	cmp r2, r4
	blt _030006F8
_03000720:
	stmib r0, {r1, ip}
	ldr r3, [r6]
	ldrb r1, [r3, #0x47]
	mov r2, #0x26c
	strh r5, [r3, r2]
	and r1, r1, #0xf
	ldrh ip, [r3, #0x44]
	cmp r1, #2
	mov r3, r1
	andgt r3, ip, #0xf
	bgt _030007B4
	cmp r1, #1
	bne _03000778
	and r3, ip, #0x2000
	and r2, ip, #0x10
	asr r2, r2, #4
	orr r2, r2, r3, lsr #10
	and r1, ip, #0x80
	and r3, ip, #0x400
	asr r3, r3, #8
	orr r3, r3, r1, lsr #6
	b _030007A0
_03000778:
	cmp r3, #2
	bne _030007B0
	and r3, ip, #0x4000
	and r2, ip, #0x20
	asr r2, r2, #5
	orr r2, r2, r3, lsr #11
	and r1, ip, #0x100
	and r3, ip, #0x800
	asr r3, r3, #9
	orr r3, r3, r1, lsr #7
_030007A0:
	add r2, r2, r3
	str r2, [r0]
	b _030007B8
	.align 2, 0
_030007AC: .4byte 0x03006684
_030007B0:
	mov r3, #0
_030007B4:
	str r3, [r0]
_030007B8:
	mov r0, r5
	ldmdb fp, {r4, r5, r6, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_30007C4
ovxDC_30007C4: @ 0x030007C4
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	mov r4, r0
	mov r7, r1
	mov sb, r2
	ldr sl, [r4]
	mov r8, r3
	tst sl, #3
	bne _030007F8
	ldr r3, [r4, #4]
	ands r5, r3, #3
	beq _03000800
_030007F8:
	mvn r0, #0x258
	b _030009F4
_03000800:
	ldr r0, _030009B4 @ =0x03006684
	ldr lr, [r0]
	ldr r3, [lr, #0x128]
	ldr ip, [r4, #8]
	tst r3, #0x40
	moveq r3, #0x68
	movne r3, #0xd0
	mul r1, r3, ip
	ldr r2, [sb]
	mov r6, r0
	cmp r2, r1
	blt _0300083C
	ldr r3, [r7, #0xc]
	cmp r3, ip
	bge _03000848
_0300083C:
	mvn r0, #0x258
	sub r0, r0, #1
	b _030009F4
_03000848:
	mov r2, #0x9c00
	str r8, [lr, #0x264]
	mov r1, #0x300
	str r1, [lr, #0x188]
	add r2, r2, #0xff
	str r1, [lr, #0x18c]
	mov r3, #0x7700
	str r2, [lr, #0x180]
	add r3, r3, #0xff
	str r3, [lr, #0x184]
	str sl, [lr, #0x130]
	str r5, [lr, #0x1e0]
	str r5, [lr, #0x1dc]
	ldr r3, [r7, #0x10]
	ldr r2, [sb, #4]
	str r3, [lr, #0x140]
	str r2, [lr, #0x13c]
	ldmib r4, {r2, r3}
	str r3, [lr, #0x1e8]
	str r3, [lr, #0x1e4]
	ldr r3, [r7, #0xc]
	mov ip, r5
	str r2, [lr, #0x134]
	cmp ip, r3
	bge _030008D0
	mov r0, r6
	mov r1, ip
_030008B4:
	ldr r3, [r0]
	ldr r2, [r3, #0x140]
	strb r1, [r2, ip]
	ldr r3, [r7, #0xc]
	add ip, ip, #1
	cmp ip, r3
	blt _030008B4
_030008D0:
	ldr r3, [r6]
	mov r2, #0
	str r2, [r3, #0x1cc]
	str r2, [r3, #0x1d0]
	str r2, [r3, #0x1d4]
	str r2, [r3, #0x1d8]
	str r2, [r3, #0x144]
	strh r2, [r3, #0x44]
	mov r1, #0x57
	strb r1, [r3, #0x47]
	mov ip, r2
	ldr r3, [r6]
	mov r5, r6
	strh r2, [r3, #0x44]
	sub r1, r1, #0x1f
	str r1, [r3, #0x50]
	mov lr, ip
	str r1, [r3, #0x4c]
	mov sb, #0x278
	strb r2, [r3, #0x48]
	mov r4, #0x27c
	ldr r3, [r6]
	add r2, r2, #1
	strb r2, [r3, #0x49]
	add sl, r4, #2
	ldr r3, [r6]
	mov r8, #0xff
	strb r2, [r3, #0x4a]
_03000940:
	ldr r2, [r5]
	lsl r1, ip, #2
	add r3, r2, #0x270
	str lr, [r3, r1]
	lsl r0, ip, #1
	add r3, r2, sb
	strh lr, [r3, r0]
	add r2, r2, r4
	strb r8, [r2, ip]
	ldr r3, [r5]
	add r3, r3, sl
	strb lr, [r3, ip]
	add ip, ip, #1
	cmp ip, #1
	ble _03000940
	ldr r3, [r6]
	mov r0, #0
	str r0, [r3, #0x14c]
	str r0, [r3, #0x54]
	mov ip, r3
	ldr r1, [ip, #0x264]
	mov r2, #0x118
	ldrsh r3, [r1, #0x36]
	add r2, r2, #2
	cmp r3, r0
	ble _030009B8
	add r3, r3, #0x40
	lsr r3, r3, #7
	b _030009BC
	.align 2, 0
_030009B4: .4byte 0x03006684
_030009B8:
	mov r3, r0
_030009BC:
	strb r3, [ip, r2]
	ldr r0, _030009F8 @ =0x03006684
	mov ip, #0
_030009C8:
	ldr r3, [r0]
	ldr r2, [r3, #0x264]
	ldrb r1, [r2, ip]
	add r3, r3, #0x88
	strb r1, [r3, ip]
	add ip, ip, #1
	cmp ip, #0x2f
	ble _030009C8
	ldr r3, [r6]
	mov r0, #0
	str r7, [r3, #0x268]
_030009F4:
	b _030009FC
	.align 2, 0
_030009F8: .4byte 0x03006684
_030009FC:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3000A04
ovxDC_3000A04: @ 0x03000A04
	mov ip, sp
	push {r4, fp, ip, lr, pc}
	cmp r0, #0
	ldr r2, _03000A8C @ =0x03006684
	and r0, r0, #1
	ldr r3, [r2]
	sub fp, ip, #4
	str r0, [r3, #0x12c]
	mov r4, r2
	ldrne r2, [r3, #0x134]
	ldreq r2, [r3, #0x130]
	str r2, [r3, #0x138]
	mov ip, r4
	ldr r2, [r4]
	mov r3, #0
	str r3, [r2]
	mov r1, r3
	strh r3, [r2, #4]
	mov r0, r1
	strh r3, [r2, #6]
_03000A54:
	lsl r2, r1, #1
	ldr r3, [ip]
	add r1, r1, #1
	add r3, r3, #8
	strh r0, [r3, r2]
	cmp r1, #3
	ble _03000A54
	bl ovxDC_3000C94
	cmp r0, #0
	beq _03000A90
	ldr r2, [r4]
	ldr r3, [r2, #0x14c]
	bic r3, r3, #0x11
	b _03000A9C
	.align 2, 0
_03000A8C: .4byte 0x03006684
_03000A90:
	ldr r2, [r4]
	ldr r3, [r2, #0x14c]
	orr r3, r3, #1
_03000A9C:
	str r3, [r2, #0x14c]
	ldr r3, [r4]
	ldr r0, [r3, #0x12c]
	lsl r0, r0, #2
	add r0, r0, #0x4c
	add r0, r3, r0
	bl ovxDC_3000AE0
	ldr r1, [r4]
	ldr r2, [r1, #0x14c]
	ldr r3, [r1, #0x12c]
	tst r2, #1
	mvneq r0, #0
	movne r0, #0
	eor r3, r3, #1
	str r3, [r1, #0x12c]
	ldmdb fp, {r4, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3000AE0
ovxDC_3000AE0: @ 0x03000AE0
	mov ip, sp
	push {r4, r5, r6, fp, ip, lr, pc}
	ldr r2, _03000BB0 @ =0x03006684
	sub fp, ip, #4
	ldr ip, [r2]
	mov r4, r0
	ldr r3, [ip, #0x14c]
	mov r5, r2
	tst r3, #2
	beq _03000C74
	ldr r1, [ip, #0x1d0]
	cmp r1, #0x16
	ble _03000C74
	ldr r0, [ip, #0x1cc]
	lsl r0, r0, #4
	bl ovxDC_3003624
	ldr r3, [r5]
	ldr r1, [r3, #0x1d8]
	ldr r2, [r3, #0x1d4]
	mov r6, r0
	add r3, r2, r2, lsl #2
	rsb r3, r3, r3, lsl #4
	add r2, r2, r3, lsl #2
	lsl r0, r2, #1
	bl ovxDC_3003624
	ldr r1, [r5]
	add r0, r0, #0x4000
	ldr r3, [r1, #0x12c]
	asr r0, r0, #0xf
	eor r3, r3, #1
	add r3, r1, r3
	ldrb r2, [r3, #0x49]
	sub r0, r0, #0x87
	cmp r2, #0
	bne _03000B80
	mov r2, #0x19c
	add r3, r0, r0, lsl #1
	add r3, r3, #0x90
	asr r3, r3, #5
	strb r3, [r1, r2]
_03000B80:
	ldr r3, [r5]
	ldr r2, [r3, #0x12c]
	add r3, r3, r2
	ldrb r1, [r3, #0x49]
	rsb r2, r6, r0
	ldr r3, [r4]
	lsl r2, r2, r1
	add r0, r2, r3, lsl #2
	cmp r0, #0x6f
	bgt _03000BB4
	mov r0, #0x70
	b _03000BBC
	.align 2, 0
_03000BB0: .4byte 0x03006684
_03000BB4:
	cmp r0, #0x150
	movge r0, #0x150
_03000BBC:
	add r3, r0, r0, lsl #1
	add r3, r0, r3, lsl #2
	add r3, r3, #0x300
	asr r0, r3, #6
	str r0, [r4]
	ldr ip, [r5]
	ldr r1, [ip, #0x12c]
	add r3, ip, r1
	ldrb r2, [r3, #0x49]
	cmp r2, #0
	bne _03000C54
	lsl r1, r1, #2
	add r2, ip, #0x270
	ldr r3, [r2, r1]
	add r3, r3, r0
	str r3, [r2, r1]
	ldr r0, [ip, #0x12c]
	add r2, ip, #0x278
	lsl r1, r0, #1
	ldrh r3, [r2, r1]
	add r3, r3, #1
	strh r3, [r2, r1]
	mov lr, #0x27c
	add r1, ip, lr
	ldrb r2, [r1, r0]
	ldr r3, [r4]
	cmp r2, r3
	ldrbgt r3, [r4]
	strbgt r3, [r1, r0]
	ldr r3, [r5]
	add r2, lr, #2
	ldr r0, [r3, #0x12c]
	add r2, r3, r2
	ldrb r1, [r2, r0]
	ldr r3, [r4]
	cmp r1, r3
	ldrblt r3, [r4]
	strblt r3, [r2, r0]
_03000C54:
	ldr r2, [r5]
	ldr r3, [r2, #0x12c]
	add r1, r3, #1
	add r2, r2, #0x48
	ldrb r3, [r2, r1]
	cmp r3, #0
	subne r3, r3, #1
	strbne r3, [r2, r1]
_03000C74:
	ldr r2, [r5]
	mov r3, #0
	str r3, [r2, #0x1d8]
	str r3, [r2, #0x1d4]
	str r3, [r2, #0x1d0]
	str r3, [r2, #0x1cc]
	ldmdb fp, {r4, r5, r6, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3000C94
ovxDC_3000C94: @ 0x03000C94
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	ldr r3, _03000E94 @ =0x03006684
	sub sp, sp, #0x50
	ldr r0, [r3]
	mov r2, #0
	str r2, [r0, #0x164]
	str r2, [r0, #0x160]
	sub fp, ip, #4
	ldr r1, [r0, #0x14c]
	mov r8, r3
	str r2, [r0, #0x10]
	tst r1, #1
	bne _03000D04
	sub r7, fp, #0x38
	mov r0, r7
	sub r6, fp, #0x48
	mov r1, r6
	sub r5, fp, #0x58
	mov r2, r5
	sub r4, fp, #0x5c
	mov r3, r4
	bl ovxDC_3001DAC
	cmp r0, #0
	mov sb, r6
	beq _03000D70
_03000CFC:
	mvn r0, #0
	b _03000FBC
_03000D04:
	ldr r3, [r0, #0x168]
	asr r3, r3, #2
	str r3, [fp, #-0x64]
	sub r5, fp, #0x64
	ldr r3, [r0, #0x174]
	sub r4, fp, #0x6c
	str r3, [fp, #-0x60]
_03000D20:
	mov r2, r5
	ldr r1, [r8]
	mov r0, #0
	str r0, [sp]
	mov r3, r4
	add r0, r1, #0x168
	add r1, r1, #0x170
	bl ovxDC_3004970
	cmp r0, #0
	bne _03000CFC
	mov r0, r4
	sub r1, fp, #0x38
	sub r2, fp, #0x48
	sub ip, fp, #0x5c
	str ip, [sp]
	sub r3, fp, #0x58
	bl ovxDC_3001958
	cmp r0, #0
	sub sb, fp, #0x48
	bne _03000D20
_03000D70:
	ldr r1, [r8]
	ldr r3, [fp, #-0x48]
	str r3, [r1, #0x160]
	ldr r2, [fp, #-0x44]
	mov r0, #0x1ec
	str r2, [r1, #0x164]
	mov r3, #0
	strb r3, [r1, r0]
	ldr r2, [r8]
	ldr r3, [r2, #0x14c]
	mov sl, #1
	and r3, r3, #0x18
	cmp r3, #0x18
	beq _03000E98
	ldr r0, [fp, #-0x48]
	ldr r3, [r2, #0x158]
	add r0, r0, r3
	str r0, [fp, #-0x74]
	ldr r3, [fp, #-0x44]
	ldr r2, [r2, #0x15c]
	sub r4, fp, #0x74
	add r3, r3, r2
	str r3, [fp, #-0x70]
	mov r1, r3
	bl ovxDC_30017E0
	cmp r0, #0
	bne _03000E98
	mov r0, r4
	bl ovxDC_3003EB0
	cmp r0, #0
	bne _03000E98
	mov r0, r4
	sub r1, fp, #0x30
	sub r3, fp, #0x5b
	str r3, [sp]
	sub r2, fp, #0x40
	sub r3, fp, #0x50
	bl ovxDC_300188C
	subs r4, r0, #0
	bne _03000E98
	ldrb r3, [fp, #-0x5b]
	ldrb r2, [fp, #-0x5c]
	and r1, r2, r3
	lsl r1, r1, #0x18
	tst r1, #0x2000000
	asr r5, r1, #0x18
	beq _03000E3C
	sub r0, fp, #0x38
	mov r1, sb
	mov r2, r4
	bl ovxDC_300318C
_03000E3C:
	tst r5, #1
	beq _03000E54
	mov r0, sb
	sub r1, fp, #0x58
	mov r2, r4
	bl ovxDC_300318C
_03000E54:
	ldr r2, [r8]
	ldrsh r3, [r2, #4]
	cmp r3, #0
	beq _03000E98
	ldr r3, [r2, #0x14c]
	mov r0, r4
	bic r3, r3, #8
	orr r3, r3, #0x10
	str r3, [r2, #0x14c]
	mov r1, r5
	sub r3, fp, #0x58
	str r3, [sp]
	sub r2, fp, #0x38
	mov r3, sb
	bl ovxDC_3000FC4
	b _03000FB8
	.align 2, 0
_03000E94: .4byte 0x03006684
_03000E98:
	ldr r1, [r8]
	ldr r3, [r1, #0x14c]
	and r3, r3, #0x18
	cmp r3, #0x10
	beq _03000FB8
	eor r7, sl, #1
	lsl ip, r7, #3
	mov r5, sb
	ldr r0, [r5, ip]
	ldr r3, [r1, #0x158]
	rsb r0, r3, r0
	str r0, [fp, #-0x74]
	sub r3, fp, #0x44
	ldr r2, [r3, ip]
	ldr r1, [r1, #0x15c]
	sub r4, fp, #0x74
	rsb r2, r1, r2
	str r2, [fp, #-0x70]
	mov r1, r2
	bl ovxDC_30017E0
	cmp r0, #0
	bne _03000FB8
	mov r0, r4
	bl ovxDC_3003EB0
	cmp r0, #0
	bne _03000FB8
	mov r0, r4
	sub r4, fp, #0x38
	lsl r3, sl, #3
	add r1, r4, r3
	add r2, r5, r3
	add lr, fp, sl
	sub ip, lr, #0x5c
	sub r6, fp, #0x58
	str ip, [sp]
	add r3, r6, r3
	bl ovxDC_300188C
	cmp r0, #0
	bne _03000FB8
	sub r1, fp, #0x5c
	ldrb r3, [r1, sl]
	mov lr, r1
	ldrb r2, [lr, r7]
	and r1, r2, r3
	lsl r1, r1, #0x18
	tst r1, #0x2000000
	asr r7, r1, #0x18
	beq _03000F68
	mov r0, r4
	mov r1, r5
	mov r2, sl
	bl ovxDC_300318C
_03000F68:
	tst r7, #1
	beq _03000F80
	mov r0, r5
	mov r1, r6
	mov r2, sl
	bl ovxDC_300318C
_03000F80:
	ldr r2, [r8]
	ldrsh r3, [r2, #4]
	cmp r3, #0
	beq _03000FB8
	ldr r3, [r2, #0x14c]
	mov r0, #1
	orr r3, r3, #0x18
	str r3, [r2, #0x14c]
	mov r1, r7
	sub r3, fp, #0x58
	str r3, [sp]
	sub r2, fp, #0x38
	mov r3, sb
	bl ovxDC_3000FC4
_03000FB8:
	mov r0, #0
_03000FBC:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3000FC4
ovxDC_3000FC4: @ 0x03000FC4
	mov ip, sp
	push {r4, fp, ip, lr, pc}
	lsl r1, r1, #0x18
	sub fp, ip, #4
	ldr ip, _03001070 @ =0x03006684
	asr r1, r1, #0x18
	ldr r4, [ip]
	eor lr, r0, #1
	str r1, [r4, #0x10]
	lsl lr, lr, #3
	ldr r1, [lr, r2]
	str r1, [r4, #0x14]
	add ip, lr, r2
	ldr r1, [ip, #4]
	str r1, [r4, #0x18]
	lsl r0, r0, #3
	ldr r1, [r0, r2]
	str r1, [r4, #0x1c]
	add r2, r0, r2
	ldr r1, [r2, #4]
	str r1, [r4, #0x20]
	ldr r2, [lr, r3]
	str r2, [r4, #0x24]
	add r1, lr, r3
	ldr r2, [r1, #4]
	str r2, [r4, #0x28]
	ldr r1, [r0, r3]
	str r1, [r4, #0x2c]
	add r3, r0, r3
	ldr r2, [r3, #4]
	str r2, [r4, #0x30]
	ldr r1, [fp, #4]
	ldr r3, [lr, r1]
	str r3, [r4, #0x34]
	add lr, lr, r1
	ldr r3, [lr, #4]
	str r3, [r4, #0x38]
	ldr r2, [r0, r1]
	str r2, [r4, #0x3c]
	add r0, r0, r1
	ldr r3, [r0, #4]
	str r3, [r4, #0x40]
	b _03001074
	.align 2, 0
_03001070: .4byte 0x03006684
_03001074:
	ldmdb fp, {r4, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_300107C
ovxDC_300107C: @ 0x0300107C
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x68
	str r1, [fp, #-0x4c]
	str r2, [fp, #-0x50]
	str r3, [fp, #-0x54]
	and r0, r0, #0xff
	str r0, [fp, #-0x48]
	lsl r3, r0, #0x18
	asrs r4, r3, #0x18
	beq _03001140
	ldr r3, _03001408 @ =0x03006684
	ldr lr, [r1]
	ldr ip, [r1, #4]
	ldr r2, [r3]
	add r0, r2, #0x150
	ldm r0, {r0, r1}
	rsb r0, r0, lr
	rsb r1, r1, ip
	bl ovxDC_30017E0
	cmp r0, #0
	mov r0, #0
	bne _03001658
	ldr r0, _03001408 @ =0x03006684
	ldr r1, [fp, #-0x4c]
	ldr r3, [r0]
	ldm r1, {ip, lr}
	mov r7, ip
	ldr r0, [r3, #0x150]
	mov r4, lr
	ldr r1, [r3, #0x154]
	add r2, r0, r0, lsl #1
	add r2, r0, r2, lsl #2
	add r2, r2, r2, lsl #3
	lsl r2, r2, #3
	add r2, r2, #0x4000
	asr r2, r2, #0xf
	rsb r5, r2, #0
	add r3, r1, r1, lsl #1
	add r3, r1, r3, lsl #2
	add r3, r3, r3, lsl #3
	lsl r3, r3, #3
	add r3, r3, #0x4000
	asr r3, r3, #0xf
	rsb r6, r3, #0
	sub sb, ip, r0, asr #1
	sub sl, lr, r1, asr #1
	b _0300122C
_03001140:
	ldr r3, _03001408 @ =0x03006684
	ldr ip, [fp, #-0x4c]
	ldr r2, [r3]
	ldr lr, [ip]
	ldr r0, [r2, #0x150]
	ldr ip, [ip, #4]
	ldr r1, [r2, #0x154]
	add r0, lr, r0
	add r1, ip, r1
	bl ovxDC_30017E0
	cmp r0, #0
	beq _030011D4
	mov r0, r4
	b _03001658
_03001178:
	ldr r3, [fp, #-0x3c]
	ldr r2, [fp, #-0x34]
	sub r3, r3, #0x40
	sub r3, r3, r2, lsl #7
	str r3, [fp, #-0x44]
	sub r0, fp, #0x34
	ldr r2, [r4, ip]
	sub r3, fp, #0x44
	ldr r1, [r0, ip]
	sub r2, r2, #0x40
	sub r2, r2, r1, lsl #7
	str r2, [r3, ip]
	b _030012B8
_030011AC:
	ldr r1, [fp, #-0x84]
	mov r0, #0x4000000
	asr r3, r1, #0x18
	b _030011C8
_030011BC:
	ldr r2, [fp, #-0x84]
	mov r0, #0x4000000
	asr r3, r2, #0x18
_030011C8:
	lsl r0, r0, r3
	asr r0, r0, #0x18
	b _03001658
_030011D4:
	ldr ip, _03001408 @ =0x03006684
	ldr r0, [fp, #-0x4c]
	ldr r3, [ip]
	ldm r0, {ip, lr}
	ldr r1, [r3, #0x154]
	mov r4, lr
	ldr r0, [r3, #0x150]
	mov r7, ip
	add r2, r0, r0, lsl #1
	add r2, r0, r2, lsl #2
	add r2, r2, r2, lsl #3
	lsl r2, r2, #3
	add r2, r2, #0x4000
	asr r5, r2, #0xf
	add r3, r1, r1, lsl #1
	add r3, r1, r3, lsl #2
	add r3, r3, r3, lsl #3
	lsl r3, r3, #3
	add r3, r3, #0x4000
	asr r6, r3, #0xf
	add sb, ip, r0, asr #1
	add sl, lr, r1, asr #1
_0300122C:
	mov r8, #1
	mov ip, #4
	ldr r1, [fp, #-0x48]
	sub r2, fp, #0x34
	str r2, [fp, #-0x88]
	lsl r1, r1, #0x18
	str r1, [fp, #-0x84]
_03001248:
	add r2, r8, #5
	mla r3, r5, r2, r7
	mla r1, r6, r2, r4
	asr r3, r3, #7
	str r3, [fp, #-0x34]
	ldr r3, _0300140C @ =0x03006138
	sub r0, fp, #0x34
	ldrb r2, [r3, r8]
	asr r1, r1, #7
	str r1, [r0, ip]
	cmp r2, #1
	bne _03001298
	ldr r0, [fp, #-0x88]
	sub r4, fp, #0x3c
	str ip, [fp, #-0x90]
	mov r1, r4
	bl ovxDC_3003D84
	ldr ip, [fp, #-0x90]
	lsls r0, r0, #0x18
	beq _03001178
_03001298:
	cmp r8, #0x18
	beq _030011AC
	ldr r1, [fp, #-0x4c]
	ldr r7, [r1]
	add r8, r8, #1
	ldr r4, [r1, #4]
	cmp r8, #0x19
	ble _03001248
_030012B8:
	mov r2, #0
	str r2, [fp, #-0x70]
	str r2, [fp, #-0x58]
	str r2, [fp, #-0x68]
	str r2, [fp, #-0x6c]
	str r2, [fp, #-0x64]
	str r2, [fp, #-0x78]
	ldr r3, [fp, #-0x88]
	sub ip, fp, #0x44
	str ip, [fp, #-0x80]
	mvn r0, #0x18
	str r0, [fp, #-0x8c]
	mov r7, #4
	str r2, [fp, #-0x74]
	mov r8, r2
	str r3, [fp, #-0x7c]
_030012F8:
	ldr r1, [fp, #-0x4c]
	ldr r2, [r1]
	add r0, r8, #5
	mla r1, r5, r0, r2
	ldr r2, [fp, #-0x4c]
	ldr r3, [r2, #4]
	mla ip, r6, r0, r3
	ldr r2, [fp, #-0x44]
	add r1, r1, r2
	asr r1, r1, #7
	str r1, [fp, #-0x34]
	ldr r1, _0300140C @ =0x03006138
	ldr r0, [fp, #-0x80]
	ldr r3, [r0, r7]
	ldrb r2, [r1, r8]
	add ip, ip, r3
	ldr r3, [fp, #-0x7c]
	asr ip, ip, #7
	str ip, [r3, r7]
	cmp r2, #0
	bne _03001388
	add r1, ip, ip, lsl #2
	ldr ip, _03001408 @ =0x03006684
	ldr r2, [fp, #-0x34]
	ldr r3, [ip]
	add r1, r2, r1, lsl #6
	ldr r0, [r3, #0x138]
	and r2, r2, #7
	ldrb r3, [r0, r1, asr #3]
	rsb r2, r2, #7
	asr r3, r3, r2
	ldr r0, [fp, #-0x58]
	tst r3, #1
	addne r0, r0, #1
	str r0, [fp, #-0x58]
	b _030014F8
_03001388:
	add r1, ip, ip, lsl #2
	ldr ip, _03001408 @ =0x03006684
	ldr r2, [fp, #-0x34]
	ldr r3, [ip]
	add r1, r2, r1, lsl #6
	ldr r0, [r3, #0x138]
	and r2, r2, #7
	ldrb r3, [r0, r1, asr #3]
	rsb r2, r2, #7
	asr r3, r3, r2
	tst r3, #1
	bne _03001410
	ldr r0, [fp, #-0x7c]
	ldr r1, [fp, #-0x80]
	bl ovxDC_3001668
	cmn r0, #1
	bne _03001410
	ldr r3, [fp, #-0x34]
	ldr r0, [fp, #-0x58]
	ldr r1, [fp, #-0x7c]
	lsl r3, r3, #7
	add r3, r3, #0x40
	str r3, [fp, #-0x3c]
	add r0, r0, #2
	str r0, [fp, #-0x58]
	ldr r3, [r1, r7]
	sub r2, fp, #0x3c
	lsl r3, r3, #7
	add r3, r3, #0x40
	str r3, [r2, r7]
	mov r4, r2
	b _030014A4
	.align 2, 0
_03001408: .4byte 0x03006684
_0300140C: .4byte 0x03006138
_03001410:
	sub r4, fp, #0x3c
	mov r1, r4
	ldr r0, [fp, #-0x88]
	sub r2, fp, #0x29
	bl ovxDC_30038F4
	ldr r3, _0300165C @ =0x03006684
	ldr r2, [r3]
	ldrsb r0, [fp, #-0x29]
	mov r3, #0x19c
	ldrb r1, [r2, r3]
	cmp r0, r1
	bge _030014A4
	ldr ip, [fp, #-0x74]
	mov r3, r0
	add ip, ip, r0
	ldr r0, [fp, #-0x78]
	str ip, [fp, #-0x74]
	add r0, r0, #1
	str r0, [fp, #-0x78]
	cmp r3, #6
	ble _030014A4
	ldr r2, [fp, #-0x3c]
	ldr r1, [fp, #-0x34]
	ldr r3, [fp, #-0x44]
	ldr ip, [fp, #-0x80]
	sub r2, r2, #0x40
	sub r2, r2, r1, lsl #7
	add r3, r3, r2
	str r3, [fp, #-0x44]
	ldr r3, [fp, #-0x88]
	ldr r2, [r4, r7]
	ldr r1, [r3, r7]
	sub r2, r2, #0x40
	ldr r3, [ip, r7]
	sub r2, r2, r1, lsl #7
	add r3, r3, r2
	str r3, [ip, r7]
_030014A4:
	ldr r3, [fp, #-0x3c]
	ldr r0, [fp, #-0x8c]
	rsb r3, sb, r3
	str r3, [fp, #-0x3c]
	ldr r2, [r4, r7]
	ldr r1, [fp, #-0x70]
	rsb r2, sl, r2
	mla r0, r2, r0, r1
	str r0, [fp, #-0x70]
	str r2, [r4, r7]
	ldr r3, [fp, #-0x3c]
	ldr ip, [fp, #-0x68]
	ldr r1, [fp, #-0x8c]
	add ip, ip, r2
	ldr r2, [fp, #-0x6c]
	mla r1, r3, r1, r2
	ldr r0, [fp, #-0x64]
	str ip, [fp, #-0x68]
	add r0, r0, r3
	str r0, [fp, #-0x64]
	str r1, [fp, #-0x6c]
_030014F8:
	ldr r3, [fp, #-0x58]
	cmp r3, #5
	bgt _030011BC
	ldr ip, [fp, #-0x8c]
	add r8, r8, #1
	add ip, ip, #2
	str ip, [fp, #-0x8c]
	cmp r8, #0x19
	ble _030012F8
	ldr r0, [fp, #-0x64]
	ldr r1, [fp, #-0x68]
	add r3, r0, r0, lsl #1
	rsb r3, r3, r3, lsl #3
	add r3, r0, r3, lsl #1
	rsb r3, r3, r3, lsl #7
	add r3, r3, #0x8000
	asr r3, r3, #0x10
	add r2, r1, r1, lsl #1
	rsb r2, r2, r2, lsl #3
	add r2, r1, r2, lsl #1
	rsb r2, r2, r2, lsl #7
	add r2, r2, #0x8000
	str r3, [fp, #-0x60]
	asr r2, r2, #0x10
	str r2, [fp, #-0x5c]
	ldr r2, [fp, #-0x6c]
	ldr ip, _0300165C @ =0x03006684
	rsb r3, r2, r2, lsl #3
	rsb r3, r2, r3, lsl #4
	rsb r3, r2, r3, lsl #2
	lsl r3, r3, #1
	add r3, r3, #0x4000
	ldr r1, [ip]
	asr r0, r3, #0xf
	str r0, [r1, #0x150]
	ldr r2, [fp, #-0x70]
	rsb r3, r2, r2, lsl #3
	rsb r3, r2, r3, lsl #4
	rsb r3, r2, r3, lsl #2
	lsl r3, r3, #1
	add r3, r3, #0x4000
	asr r2, r3, #0xf
	str r2, [r1, #0x154]
	ldr r3, [fp, #-0x84]
	asrs lr, r3, #0x18
	rsbne r3, r0, #0
	strne r3, [r1, #0x150]
	rsbne r2, r2, #0
	strne r2, [r1, #0x154]
	ldr ip, _0300165C @ =0x03006684
	ldr r0, [fp, #-0x60]
	ldr r2, [fp, #-0x50]
	ldr r1, [ip]
	ldr r3, [r1, #0x150]
	add ip, sb, r0
	sub r3, ip, r3, asr #1
	str r3, [r2]
	ldr r3, [fp, #-0x5c]
	ldr r2, [r1, #0x154]
	add r0, sl, r3
	ldr r3, [fp, #-0x50]
	sub r2, r0, r2, asr #1
	str r2, [r3, #4]
	ldr r3, [r1, #0x150]
	ldr r2, [fp, #-0x54]
	add ip, ip, r3, asr #1
	str ip, [r2]
	ldr r3, [r1, #0x154]
	add r0, r0, r3, asr #1
	str r0, [r2, #4]
	ldr ip, [fp, #-0x74]
	ldr r3, [r1, #0x1cc]
	ldr r2, [r1, #0x1d0]
	add r3, r3, ip
	str r3, [r1, #0x1cc]
	ldr r0, [fp, #-0x78]
	ldr ip, [r1, #0x150]
	add r2, r2, r0
	mov r0, #0x5000000
	str r2, [r1, #0x1d0]
	lsl r0, r0, lr
	ldr r3, [r1, #0x1d8]
	asr r0, r0, #0x18
	ldr r2, [r1, #0x1d4]
	add r3, r3, #1
	str r3, [r1, #0x1d8]
	add r2, r2, ip
	str r2, [r1, #0x1d4]
_03001658:
	b _03001660
	.align 2, 0
_0300165C: .4byte 0x03006684
_03001660:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3001668
ovxDC_3001668: @ 0x03001668
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	sub fp, ip, #4
	mov lr, r0
	ldr r3, [lr]
	mov r5, r1
	sub ip, r3, #1
	str ip, [lr]
	cmp ip, #0
	blt _030016C8
	ldr r1, [lr, #4]
	ldr r3, _030017C4 @ =0x03006684
	add r1, r1, r1, lsl #2
	ldr r2, [r3]
	add r1, ip, r1, lsl #6
	ldr r0, [r2, #0x138]
	and r3, ip, #7
	ldrb r2, [r0, r1, asr #3]
	rsb r3, r3, #7
	asr r2, r2, r3
	tst r2, #1
	ldrne r3, [r5]
	subne r3, r3, #0x80
	bne _03001710
_030016C8:
	ldm lr, {r3, r4}
	add ip, r3, #2
	str ip, [lr]
	cmp ip, #0x140
	bge _0300171C
	ldr r3, _030017C4 @ =0x03006684
	add r1, r4, r4, lsl #2
	ldr r2, [r3]
	add r1, ip, r1, lsl #6
	ldr r0, [r2, #0x138]
	and r3, ip, #7
	ldrb r2, [r0, r1, asr #3]
	rsb r3, r3, #7
	asr r2, r2, r3
	tst r2, #1
	beq _0300171C
	ldr r3, [r5]
	add r3, r3, #0x80
_03001710:
	str r3, [r5]
	mov r0, #0
	b _030017D8
_0300171C:
	ldr r3, [lr]
	sub r2, r4, #1
	str r2, [lr, #4]
	sub ip, r3, #1
	str ip, [lr]
	cmp r2, #0
	blt _0300176C
	ldr r3, _030017C4 @ =0x03006684
	add r1, r2, r2, lsl #2
	ldr r2, [r3]
	add r1, ip, r1, lsl #6
	ldr r0, [r2, #0x138]
	and r3, ip, #7
	ldrb r2, [r0, r1, asr #3]
	rsb r3, r3, #7
	asr r2, r2, r3
	tst r2, #1
	ldrne r3, [r5, #4]
	subne r3, r3, #0x80
	bne _030017B8
_0300176C:
	ldr r3, [lr, #4]
	add r2, r3, #2
	str r2, [lr, #4]
	cmp r2, #0xf5
	bgt _030017C8
	ldr r1, [lr]
	ldr r3, _030017C4 @ =0x03006684
	add r2, r2, r2, lsl #2
	ldr r0, [r3]
	add r2, r1, r2, lsl #6
	ldr ip, [r0, #0x138]
	and r1, r1, #7
	ldrb r3, [ip, r2, asr #3]
	rsb r1, r1, #7
	asr r3, r3, r1
	tst r3, #1
	beq _030017C8
	ldr r3, [r5, #4]
	add r3, r3, #0x80
_030017B8:
	str r3, [r5, #4]
	mov r0, #0
	b _030017D8
	.align 2, 0
_030017C4: .4byte 0x03006684
_030017C8:
	ldr r3, [lr, #4]
	mvn r0, #0
	add r3, r3, r0
	str r3, [lr, #4]
_030017D8:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_30017E0
ovxDC_30017E0: @ 0x030017E0
	mov ip, sp
	push {fp, ip, lr, pc}
	ldr r3, _0300183C @ =0x03006684
	sub fp, ip, #4
	ldr ip, [r3]
	ldr r2, [ip, #0x188]
	cmp r0, r2
	blt _0300180C
	ldr r3, [ip, #0x180]
	cmp r0, r3
	blt _03001818
_0300180C:
	mvn r0, #0
	ldmdb fp, {fp, sp, lr}
	bx lr
_03001818:
	ldr r3, [ip, #0x18c]
	cmp r1, r3
	blt _0300180C
	ldr r3, [ip, #0x184]
	cmp r1, r3
	bge _0300180C
	mov r0, #0
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_0300183C: .4byte 0x03006684

	arm_func_start ovxDC_3001840
ovxDC_3001840: @ 0x03001840
	mov ip, sp
	push {fp, ip, lr, pc}
	mov r2, #0x13c
	add r2, r2, #1
	ldr r3, [r0]
	sub fp, ip, #4
	sub r3, r3, #1
	cmp r3, r2
	bhi _03001880
	ldr r3, [r0, #4]
	sub r3, r3, #1
	cmp r3, #0xf2
	mvnhi r0, #0
	movls r0, #0
	ldmdb fp, {fp, sp, lr}
	bx lr
_03001880:
	mvn r0, #0
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovxDC_300188C
ovxDC_300188C: @ 0x0300188C
	mov ip, sp
	push {r4, r5, r6, r7, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #8
	mov r4, r0
	mov r0, #1
	mov ip, r1
	mov r1, r4
	mov r5, r2
	mov r2, ip
	mov r7, r3
	ldr r6, [fp, #4]
	mov r3, r5
	bl ovxDC_300107C
	strb r0, [r6]
	ands r0, r0, #2
	beq _03001924
	mov r0, #0
	mov r1, r4
	sub r2, fp, #0x24
	mov r3, r7
	bl ovxDC_300107C
	ldrb r3, [r6]
	orr r3, r3, r0
	strb r3, [r6]
	tst r3, #1
	beq _03001940
	ldr r3, [fp, #-0x24]
	ldr r1, [r5]
	ldr r2, [fp, #-0x20]
	ldr r0, [r5, #4]
	add r3, r3, r1
	asr r3, r3, #1
	add r2, r2, r0
	str r3, [r5]
	asr r2, r2, #1
	str r2, [r5, #4]
	b _03001940
_03001924:
	mov r1, r4
	mov r2, r5
	mov r3, r7
	bl ovxDC_300107C
	ldrb r3, [r6]
	orr r3, r3, r0
	strb r3, [r6]
_03001940:
	ldrb r3, [r6]
	tst r3, #3
	mvneq r0, #0
	movne r0, #0
	ldmdb fp, {r4, r5, r6, r7, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3001958
ovxDC_3001958: @ 0x03001958
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #8
	mov r5, r0
	ldr r4, _03001C2C @ =0x03006684
	mov r8, r1
	ldr ip, [r5]
	mov r6, r2
	ldr sl, [fp, #4]
	mov r7, r3
	ldr lr, [r4]
	lsl ip, ip, #1
	ldr lr, [lr, #0x150]
	mov sb, r4
	rsb r0, lr, ip
	cmp r0, #0xa000
	ble _03001A1C
	mov r0, #1
	mov r1, r5
	mov r2, r8
	mov r3, r6
	bl ovxDC_300107C
	strb r0, [sl]
	ands r0, r0, #2
	beq _03001A08
	ldr r3, [r6]
	str r3, [r7]
	ldr r2, [r6, #4]
	str r2, [r7, #4]
	ldr r3, [r8]
	mov r0, #1
	str r3, [fp, #-0x30]
	sub r4, fp, #0x30
	ldrb r3, [sl]
	mov r1, r4
	ldr ip, [r8, #4]
	lsl r3, r3, #0x18
	str ip, [fp, #-0x2c]
	asr r3, r3, #0x19
	strb r3, [sl]
	mov r2, r8
	mov r3, r6
	b _03001ACC
_03001A08:
	mov r1, r5
	sub r4, fp, #0x30
	mov r2, r4
	mov r3, r7
	b _03001ACC
_03001A1C:
	add r3, ip, lr
	cmp r3, #0xa000
	bge _03001AA0
	mov r0, #0
	mov r1, r5
	sub r4, fp, #0x30
	mov r2, r4
	mov r3, r7
	bl ovxDC_300107C
	strb r0, [sl]
	tst r0, #1
	beq _03001A8C
	ldr r3, [fp, #-0x30]
	str r3, [r8]
	ldr r2, [fp, #-0x2c]
	str r2, [r8, #4]
	ldr r3, [r7]
	str r3, [r6]
	ldr r2, [r7, #4]
	str r2, [r6, #4]
	mov r0, #0
	ldrb r3, [sl]
	mov r1, r6
	lsl r3, r3, #1
	strb r3, [sl]
	mov r2, r4
	mov r3, r7
	b _03001ACC
_03001A8C:
	mov r0, #1
	mov r1, r5
	mov r2, r8
	mov r3, r6
	b _03001ACC
_03001AA0:
	mov r0, #1
	mov r1, r5
	mov r2, r8
	mov r3, r6
	bl ovxDC_300107C
	mov r1, r5
	sub r4, fp, #0x30
	mov r2, r4
	strb r0, [sl]
	mov r3, r7
	mov r0, #0
_03001ACC:
	bl ovxDC_300107C
	ldrb r3, [sl]
	orr r3, r3, r0
	strb r3, [sl]
	ldrb r3, [sl]
	and r3, r3, #3
	cmp r3, #2
	beq _03001B4C
	bgt _03001AFC
	cmp r3, #1
	beq _03001B08
	b _03001BA0
_03001AFC:
	cmp r3, #3
	beq _03001BA8
	b _03001BA0
_03001B08:
	ldr r3, [fp, #-0x30]
	str r3, [r8]
	ldr r2, [r4, #4]
	str r2, [r8, #4]
	ldr r3, [r7]
	str r3, [r6]
	ldr r2, [r7, #4]
	str r2, [r6, #4]
	mov r0, #0
	ldrb r3, [sl]
	mov r1, r6
	lsl r3, r3, #1
	and r3, r3, #0xa
	strb r3, [sl]
	mov r2, r4
	mov r3, r7
	b _03001B8C
_03001B4C:
	ldr r3, [r6]
	str r3, [r7]
	ldr r2, [r6, #4]
	str r2, [r7, #4]
	ldr r3, [r8]
	str r3, [fp, #-0x30]
	ldr r2, [r8, #4]
	str r2, [r4, #4]
	mov r0, #1
	ldrb r3, [sl]
	mov r1, r4
	lsr r3, r3, r0
	and r3, r3, #5
	strb r3, [sl]
	mov r2, r8
	mov r3, r6
_03001B8C:
	bl ovxDC_300107C
	ldrb r3, [sl]
	orr r3, r3, r0
	strb r3, [sl]
	b _03001BA8
_03001BA0:
	mvn r0, #0
	b _03001C74
_03001BA8:
	ldrb r2, [sl]
	and r3, r2, #3
	cmp r3, #3
	bne _03001BE0
	ldr r3, [fp, #-0x30]
	ldr r2, [r6]
	add r3, r3, r2
	asr r3, r3, #1
	str r3, [r6]
	ldr r2, [r4, #4]
	ldr r3, [r6, #4]
	add r2, r2, r3
	asr r2, r2, #1
	b _03001BF4
_03001BE0:
	tst r2, #1
	beq _03001BF8
	ldr r3, [fp, #-0x30]
	str r3, [r6]
	ldr r2, [r4, #4]
_03001BF4:
	str r2, [r6, #4]
_03001BF8:
	ldrb r3, [sl]
	tst r3, #2
	beq _03001C30
	ldr r2, [r8, #4]
	ldr r3, [r6, #4]
	ldr r1, [sb]
	rsb r2, r3, r2
	lsl r2, r2, #7
	asr r2, r2, #7
	str r2, [r1, #0x158]
	ldr r3, [r6]
	ldr r2, [r8]
	b _03001C54
	.align 2, 0
_03001C2C: .4byte 0x03006684
_03001C30:
	ldr r2, [r6, #4]
	ldr r3, [r7, #4]
	ldr r1, [sb]
	rsb r2, r3, r2
	lsl r2, r2, #7
	asr r2, r2, #7
	str r2, [r1, #0x158]
	ldr r3, [r7]
	ldr r2, [r6]
_03001C54:
	rsb r3, r2, r3
	lsl r3, r3, #7
	asr r3, r3, #7
	str r3, [r1, #0x15c]
	ldr r0, [r6, #4]
	asr r0, r0, #7
	bl ovxDC_3001C7C
	mov r0, #0
_03001C74:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3001C7C
ovxDC_3001C7C: @ 0x03001C7C
	mov ip, sp
	push {r4, r5, r6, r7, fp, ip, lr, pc}
	ldr r3, _03001D6C @ =0x03006684
	sub fp, ip, #4
	ldr r2, [r3]
	mov r6, r0
	ldr r1, [r2, #0x1d8]
	mov r7, r3
	cmp r1, #1
	beq _03001CBC
	cmp r1, #2
	beq _03001CC4
	ldr r0, [r2, #0x1d4]
	bl ovxDC_3003624
	mov r5, r0
	b _03001CCC
_03001CBC:
	ldr r5, [r2, #0x1d4]
	b _03001CCC
_03001CC4:
	ldr r3, [r2, #0x1d4]
	asr r5, r3, #1
_03001CCC:
	add r0, r5, r5, lsl #3
	add r0, r0, r0, lsl #6
	asr r1, r0, #0xc
	add lr, r1, r1, lsl #1
	add ip, lr, lr, lsl #4
	asr ip, ip, #0xd
	add r3, ip, #2
	add r2, r1, r1, lsl #2
	add r1, r1, r2, lsl #1
	rsb r1, r1, r1, lsl #3
	asr r2, r1, #0xd
	asr r0, r0, #0x13
	ldr r4, [r7]
	add r0, r0, #2
	str r3, [r4, #0x1b0]
	add ip, ip, #1
	str r0, [r4, #0x1ac]
	asr lr, lr, #0xa
	str ip, [r4, #0x1b4]
	asr r1, r1, #0xe
	str lr, [r4, #0x1c4]
	add r3, r2, #2
	add r2, r2, #1
	str r2, [r4, #0x1bc]
	sub r1, r1, #3
	str r3, [r4, #0x1b8]
	asr r2, r2, #1
	add r2, r2, #2
	add r3, r5, r5, lsl #2
	add r3, r5, r3, lsl #1
	asr r3, r3, #0xf
	str r2, [r4, #0x1a0]
	add r3, r3, #2
	str r3, [r4, #0x1a4]
	cmp r1, #7
	bgt _03001D70
	mov r3, #0x19c
	add r3, r3, #1
	mov r2, #0
	b _03001D7C
	.align 2, 0
_03001D6C: .4byte 0x03006684
_03001D70:
	mov r3, #0x19c
	add r3, r3, #1
	mov r2, #1
_03001D7C:
	strb r2, [r4, r3]
	ldr r1, [r7]
	mov r3, #0x60
	str r3, [r1, #0x168]
	sub r2, r6, #0xe
	str r2, [r1, #0x16c]
	add r3, r3, #0x80
	str r3, [r1, #0x170]
	add r2, r6, #0xe
	str r2, [r1, #0x174]
	ldmdb fp, {r4, r5, r6, r7, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3001DAC
ovxDC_3001DAC: @ 0x03001DAC
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x14
	mov sb, r0
	mov sl, r1
	mov r8, r2
	mov r7, r3
	mov r5, #2
	sub r6, fp, #0x30
	sub r4, fp, #0x38
_03001DD8:
	mov r0, r5
	bl ovxDC_3005058
	ldr r0, _03001E00 @ =0x03006684
	ldr r3, [r0]
	ldr r2, [r3, #0x168]
	asr r2, r2, #2
	str r2, [fp, #-0x30]
	ldr r1, [r3, #0x174]
	str r1, [r6, #4]
	b _03001E34
	.align 2, 0
_03001E00: .4byte 0x03006684
_03001E04:
	sub r0, fp, #0x38
	bl ovxDC_3004A3C
	cmp r0, #0
	bne _03001E34
	mov r0, r4
	mov r1, sb
	mov r2, sl
	str r7, [sp]
	mov r3, r8
	bl ovxDC_3001958
	cmp r0, #0
	beq _03001E70
_03001E34:
	ldr r0, _03001E74 @ =0x03006684
	ldr r1, [r0]
	mov r2, r6
	mov r0, #0
	str r0, [sp]
	mov r3, r4
	add r0, r1, #0x168
	add r1, r1, #0x170
	bl ovxDC_3004970
	cmp r0, #0
	beq _03001E04
	sub r5, r5, #1
	cmp r5, #1
	bgt _03001DD8
	mvn r0, #0
_03001E70:
	b _03001E78
	.align 2, 0
_03001E74: .4byte 0x03006684
_03001E78:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3001E80
ovxDC_3001E80: @ 0x03001E80
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x40
	ldr ip, _030021EC @ =0x03006684
	ldr r0, [ip]
	ldr r3, [r0, #0x264]
	ldr r1, [r0, #0x12c]
	ldrsh r8, [r3, #0x36]
	add r2, r0, #0x4c
	ldr r3, [r0, #0x54]
	eor r1, r1, #1
	ldr sb, [r2, r1, lsl #2]
	add r3, r3, #1
	str r3, [r0, #0x54]
	cmp r8, #0
	addgt r3, r8, #0x40
	asrgt r3, r3, #7
	andgt r3, r3, #0xff
	movle r3, #0
	mov r5, r3
	add r3, r5, #0x2d
	and r7, r3, #0xff
	mov r2, #0x88
	add r2, r2, #0xdf00000
	add r2, r2, #0xc0000
	mov r1, #0x118
	add r1, r1, #1
	mov r0, #0x28
	sub r3, fp, #0x58
	str r3, [fp, #-0x68]
	add r0, r0, #0xdf00000
	ldr ip, _030021EC @ =0x03006684
	mov r4, r3
	ldrh r3, [r2]
	add r0, r0, #0xc0000
	ldr r2, [ip]
	and r3, r3, #0xff
	str r3, [fp, #-0x60]
	mov lr, #0
	strb r3, [r2, r1]
_03001F24:
	ldrh r2, [r0], #2
	ldr r3, [ip]
	strb r2, [r4, lr]
	add r3, r3, #0x58
	strb r2, [r3, lr]
	add lr, lr, #1
	cmp lr, #0x2f
	ble _03001F24
	ldr r6, _030021EC @ =0x03006684
	ldr r1, [r6]
	ldr r3, [r1, #0x128]
	tst r3, #0x100
	beq _03001F74
	mov r3, #0x2000
	str r3, [r1, #0x11c]
	ldr r2, [r1, #0x120]
	ldr r3, [r1, #0x14c]
	str r2, [r1, #0x124]
	orr r3, r3, #2
	str r3, [r1, #0x14c]
_03001F74:
	ldr r1, _030021EC @ =0x03006684
	ldr r2, [r1]
	ldr r3, [r2, #0x14c]
	mov r6, #0x2000
	str r6, [fp, #-0x64]
	tst r3, #2
	bne _030020E8
	tst r3, #0x40
	beq _030020C8
	ldr r0, [fp, #-0x68]
	sub r1, fp, #0x59
	bl ovxDC_3002330
	ldr r1, _030021EC @ =0x03006684
	mov r3, #0x118
	ldr r2, [r1]
	and r6, r0, #0xff
	strb r0, [r2, r3]
	cmp r6, r5
	bls _03002328
	ldr r3, [r1]
	ldr r1, [r3, #0x124]
	rsb r2, r8, r7, lsl #7
	mul r0, r2, r1
	rsb sl, r8, r6, lsl #7
	mov r1, sl
	bl ovxDC_3003624
	mov r7, r0
	mov r0, #0x5a000
	rsb r4, r5, r6
	mov r1, r4
	bl ovxDC_3003624
	ldr r2, _030021EC @ =0x03006684
	ldr r3, [r2]
	ldr ip, [r3, #0x264]
	ldrb r2, [fp, #-0x59]
	str r0, [fp, #-0x64]
	ldrb r1, [ip, r2]
	mov r0, #0x5a000
	rsb r1, r5, r1
	bl ovxDC_3003624
	ldr r1, _030021EC @ =0x03006684
	mov r3, #0x1180
	ldr r2, [r1]
	add r3, r3, #0x33
	str r0, [r2, #0x11c]
	cmp r7, r3
	strle r7, [r2, #0x124]
	ble _030020B0
	cmp r8, #0
	ble _03002050
	mov r0, #0x2340000
	ldr r1, [r2, #0x124]
	add r0, r0, #0x26000
	bl ovxDC_3003624
	b _03002070
_03002050:
	ldr r2, [r2, #0x124]
	rsb r3, r2, r3
	mul r0, r3, sl
	mul r1, r6, r2
	lsl r0, r0, #5
	asr r1, r1, #1
	bl ovxDC_3003624
	add r0, r0, #0x2000
_03002070:
	str r0, [fp, #-0x64]
	ldr r0, [fp, #-0x64]
	lsl r3, r5, #0xd
	mla r0, r4, r0, r3
	ldr r3, _030021EC @ =0x03006684
	ldr r2, [r3]
	ldr ip, [r2, #0x264]
	ldrb r3, [fp, #-0x59]
	ldrb r1, [ip, r3]
	bl ovxDC_3003624
	ldr r6, _030021EC @ =0x03006684
	ldr r2, [r6]
	mov r3, #0x1180
	str r0, [r2, #0x11c]
	add r3, r3, #0x33
	str r3, [r2, #0x124]
_030020B0:
	ldr r1, _030021EC @ =0x03006684
	ldr r2, [r1]
	ldr r3, [r2, #0x14c]
	orr r3, r3, #6
	str r3, [r2, #0x14c]
	b _030020E8
_030020C8:
	mov r0, r2
	ldr r1, [r0, #0x264]
	mov r2, #0x1180
	ldrh r3, [r1, #0x32]
	add r2, r2, #0x33
	cmp r3, r2
	movhi r3, r2
	str r3, [r0, #0x124]
_030020E8:
	ldr r3, _030021EC @ =0x03006684
	ldr r2, [r3]
	ldr r3, [r2, #0x128]
	tst r3, #0x80
	bne _030022E0
	ldr r3, [r2, #0x14c]
	tst r3, #2
	moveq r3, #0x118
	addeq r3, r3, #2
	strbeq r5, [r2, r3]
	beq _03002130
	ldr r6, [fp, #-0x60]
	rsb r3, r5, r6
	add r3, r3, r3, lsl #1
	cmp r3, #0x2d
	movle r3, #0x118
	addle r3, r3, #2
	strble r6, [r2, r3]
_03002130:
	mov r7, #0xff00
	add r7, r7, #0x80
	add r7, r7, #0xe000000
	mov lr, #0
	mov r4, #0x118
	add r4, r4, #2
	ldr r6, _030021EC @ =0x03006684
_0300214C:
	ldr r0, [r6]
	ldr r3, [r0, #0x14c]
	tst r3, #2
	addeq r3, r0, #0x88
	ldrbeq r2, [r3, lr]
	ldrbeq r1, [r0, r4]
	beq _03002258
	tst r3, #1
	bne _030021B8
	ldr r3, [r0, #0x264]
	ldrb r2, [r3, lr]
	ldr r1, [r0, #0x11c]
	rsb r2, r5, r2
	mul r3, r1, r2
	add r0, r0, #0x88
	add r3, r3, #0x1000
	add r3, r5, r3, asr #13
	strb r3, [r0, lr]
	ldr r1, [r6]
	add r3, r1, #0x88
	ldrb r2, [r3, lr]
	ldrb r0, [r1, r4]
	rsb r2, r0, r2
	mul r3, sb, r2
	add r3, r3, #0x40
	add r0, r0, r3, asr #7
	b _030022B0
_030021B8:
	ldr r2, [fp, #-0x68]
	ldrb r1, [r2, lr]
	add r0, r0, #0x88
	ldrb r2, [r0, lr]
	mov ip, #0
	cmp r2, r1, lsl #1
	bgt _030021F0
	rsb r3, r2, r1
	add r3, r3, r3, lsl #2
	cmp r3, r2
	bgt _030021F0
	strb r1, [r0, lr]
	b _03002228
	.align 2, 0
_030021EC: .4byte 0x03006684
_030021F0:
	ldr r0, [r6]
	ldr r3, [r0, #0x14c]
	tst r3, #4
	beq _03002228
	ldr r3, [r0, #0x264]
	ldrb r2, [r3, lr]
	ldr r1, [r0, #0x11c]
	rsb r2, r5, r2
	mul r3, r1, r2
	mov ip, #1
	add r2, r0, #0x88
	add r3, r3, #0x1000
	add r3, r5, r3, asr #13
	strb r3, [r2, lr]
_03002228:
	ldr r1, [r6]
	ldr r3, [r1, #0x14c]
	cmp ip, #0
	lsr r3, r3, #2
	eor r3, r3, #1
	andeq r3, r3, #1
	movne r3, #1
	cmp r3, #0
	beq _0300226C
	add r3, r1, #0x88
	ldrb r2, [r3, lr]
	ldrb r1, [r1, r4]
_03002258:
	rsb r2, r1, r2
	mul r3, sb, r2
	add r3, r3, #0x40
	add r0, r1, r3, asr #7
	b _030022B0
_0300226C:
	add ip, r1, #0x88
	ldrb r2, [ip, lr]
	ldrb r1, [r1, r4]
	rsb r3, r1, r2
	mul r0, sb, r3
	ldr r3, [fp, #-0x64]
	rsb r2, r5, r2
	mul r3, r2, r3
	lsl r1, r1, #1
	ldr r2, [fp, #-0x64]
	add r1, r1, r0, asr #6
	mul r2, r1, r2
	add r3, r3, #0x1000
	add r3, r5, r3, asr #13
	strb r3, [ip, lr]
	add r2, r2, #0x2000
	asr r0, r2, #0xe
_030022B0:
	cmp r0, #0
	movlt r0, #0
	blt _030022C4
	cmp r0, #0x7f
	movge r0, #0x7f
_030022C4:
	strb r0, [r7, lr]
	ldr r3, [r6]
	add r3, r3, #0xb8
	strb r0, [r3, lr]
	add lr, lr, #1
	cmp lr, #0x2f
	ble _0300214C
_030022E0:
	ldr r3, _03002324 @ =0x03006684
	ldr ip, [r3]
	mov r0, #0xff00
	ldr r3, [ip, #0x14c]
	orr r1, r0, #0xb2
	bic r3, r3, #4
	str r3, [ip, #0x14c]
	mov r2, #0x124
	ldrb r3, [ip, r2]
	orr r1, r1, #0xe000000
	strb r3, [r1]
	orr r0, r0, #0xb3
	ldr r3, [ip, #0x124]
	orr r0, r0, #0xe000000
	asr r3, r3, #8
	strb r3, [r0]
	b _03002328
	.align 2, 0
_03002324: .4byte 0x03006684
_03002328:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3002330
ovxDC_3002330: @ 0x03002330
	mov ip, sp
	push {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}
	ldr r8, _030023B0 @ =0x03006684
	sub fp, ip, #4
	ldr r2, [r8]
	mov sl, r0
	ldr r3, [r2, #0x10]
	mov r7, r1
	ands r0, r3, #3
	beq _03002458
	ldr r5, [r2, #0x30]
	ldr r6, [r2, #0x28]
	cmp r0, #1
	beq _03002374
	cmp r0, #2
	beq _030023B4
	b _030023EC
_03002374:
	ldr r0, [r2, #0x3c]
	asr r0, r0, #7
	sub r0, r0, #0xa0
	bl ovxDC_3003440
	ldr r2, [r8]
	ldr r3, [r2, #0x2c]
	mov r4, r0
	asr r3, r3, #7
	sub r0, r3, #0xa0
	bl ovxDC_3003440
	cmp r4, r0
	ldrlt r3, [r8]
	ldrlt r5, [r3, #0x40]
	ldrlt r6, [r3, #0x38]
	b _030023EC
	.align 2, 0
_030023B0: .4byte 0x03006684
_030023B4:
	ldr r0, [r2, #0x1c]
	asr r0, r0, #7
	sub r0, r0, #0xa0
	bl ovxDC_3003440
	ldr r2, [r8]
	ldr r3, [r2, #0x2c]
	mov r4, r0
	asr r3, r3, #7
	sub r0, r3, #0xa0
	bl ovxDC_3003440
	cmp r4, r0
	ldrlt r3, [r8]
	ldrlt r5, [r3, #0x20]
	ldrlt r6, [r3, #0x18]
_030023EC:
	asr r3, r5, #7
	add r3, r3, r3, lsl #2
	add r3, r3, r3, lsl #2
	asr r3, r3, #0xa
	lsl r5, r3, #3
	asr r2, r6, #7
	add r2, r2, r2, lsl #2
	add r2, r2, r2, lsl #2
	asr r2, r2, #0xa
	lsl r6, r2, #3
	mov r0, #0x7f
	mov r1, #1
	add r3, r5, r1
	strb r3, [r7]
_03002424:
	add r2, r5, r1
	ldrb r3, [sl, r2]
	cmp r3, r0
	movlt r0, r3
	strblt r2, [r7]
	add r2, r6, r1
	ldrb r3, [sl, r2]
	cmp r3, r0
	movlt r0, r3
	strblt r2, [r7]
	add r1, r1, #1
	cmp r1, #6
	ble _03002424
_03002458:
	ldmdb fp, {r4, r5, r6, r7, r8, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3002460
ovxDC_3002460: @ 0x03002460
	mov ip, sp
	push {r4, fp, ip, lr, pc}
	mov r1, #0xff00
	orr r2, r1, #0xb1
	orr r2, r2, #0xe000000
	sub fp, ip, #4
	ldrb r3, [r2]
	orr ip, r1, #0xb0
	and r3, r3, #0xef
	strb r3, [r2]
	orr ip, ip, #0xe000000
	ldrb r3, [ip]
	orr r3, r3, #5
	strb r3, [ip]
	ldrb r2, [ip]
	orr r2, r2, #2
	strb r2, [ip]
	ldrb r3, [ip]
	ldr r0, _03002594 @ =0x03006684
	orr r3, r3, #0x20
	strb r3, [ip]
	ldr lr, [r0]
	mov r4, r0
	ldr r1, [lr, #0x264]
	mov r2, #0x1ec
	ldrh r3, [r1, #0x3c]
	add r2, r2, #2
	and r3, r3, #3
	mov r1, r3
	strh r3, [lr, r2]
	cmp r1, #2
	bne _03002538
	mov r2, #0x20c0
	ldrb r3, [ip]
	add r2, r2, #5
	orr r3, r3, #0x10
	strb r3, [ip]
_030024F4:
	subs r2, r2, #1
	bne _030024F4
	ldr r3, [r4]
	ldr r2, [r3, #0x128]
	tst r2, #0x200
	beq _03002520
	mov r0, #4
_03002510:
	bl ovxDC_3002A94
	cmp r0, #0
	beq _03002598
	b _03002588
_03002520:
	mov r0, #3
	bl ovxDC_3002A94
	cmp r0, #0
	beq _03002598
	mov r0, #3
	b _03002510
_03002538:
	cmp r1, #1
	bne _03002588
	ldr r3, [lr, #0x128]
	tst r3, #0x200
	beq _03002560
	mov r0, #4
	bl ovxDC_3002A94
_03002554:
	cmp r0, #0
	beq _0300256C
	b _03002588
_03002560:
	mov r0, r1
	bl ovxDC_3002678
	b _03002554
_0300256C:
	mov r2, #0xff00
	add r2, r2, #0xb0
	add r2, r2, #0xe000000
	ldrb r3, [r2]
	orr r3, r3, #0x10
	strb r3, [r2]
	b _03002598
_03002588:
	mvn r0, #0x258
	sub r0, r0, #2
	b _03002620
	.align 2, 0
_03002594: .4byte 0x03006684
_03002598:
	ldr r3, [r4]
	ldr r2, [r3, #0x128]
	tst r2, #0x80
	beq _030025EC
	mov lr, #0xff00
	add lr, lr, #0x80
	add lr, lr, #0xe000000
	mov ip, #0
	mov r0, r4
_030025BC:
	ldr r3, [r0]
	add r3, r3, #0xe8
	ldrb r2, [r3, ip]
	strb r2, [lr], #1
	ldr r1, [r0]
	add r3, r1, #0xe8
	ldrb r2, [r3, ip]
	add r1, r1, #0xb8
	strb r2, [r1, ip]
	add ip, ip, #1
	cmp ip, #0x2f
	ble _030025BC
_030025EC:
	mov r2, #0xff00
	orr r3, r2, #0xb2
	orr r3, r3, #0xe000000
	orr r1, r2, #0xb3
	orr r1, r1, #0xe000000
	mov r0, #0
	strb r0, [r3]
	orr r2, r2, #0xb0
	strb r0, [r1]
	orr r2, r2, #0xe000000
	ldrb r3, [r2]
	orr r3, r3, #8
	strb r3, [r2]
_03002620:
	ldmdb fp, {r4, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3002628
ovxDC_3002628: @ 0x03002628
	mov ip, sp
	push {fp, ip, lr, pc}
	mov r1, #0xff00
	add r1, r1, #0xb0
	add r1, r1, #0xe000000
	ldrb r3, [r1]
	and r3, r3, #0xf7
	strb r3, [r1]
	ldrb r2, [r1]
	and r2, r2, #0xef
	strb r2, [r1]
	ldrb r3, [r1]
	and r3, r3, #0xfc
	strb r3, [r1]
	ldrb r2, [r1]
	sub fp, ip, #4
	and r2, r2, #0xdf
	strb r2, [r1]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3002678
ovxDC_3002678: @ 0x03002678
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	mov r2, #0xff00
	add r2, r2, #0xb0
	add r2, r2, #0xe000000
	sub sp, sp, #0x1c
	ldrb r3, [r2]
	cmp r0, #0
	and r3, r3, #0xef
	strb r3, [r2]
	sub fp, ip, #4
	str r0, [fp, #-0x30]
	bne _030026CC
	mov r1, #0xb
	str r1, [fp, #-0x38]
	mov sl, #0x2d000
	ldr r2, _030029A8 @ =0x03006168
	add sl, sl, #0x104
	str r2, [fp, #-0x44]
	mov r6, #7
	b _03002704
_030026CC:
	ldr r3, _030029AC @ =0x03006684
	mov ip, #1
	str ip, [fp, #-0x30]
	ldr r2, [r3]
	mov lr, #7
	str lr, [fp, #-0x38]
	ldr r3, [r2, #0x264]
	mov sl, #0x2d000
	ldrb r6, [r3, #0x31]
	add sl, sl, #0x104
	ldr r1, _030029B0 @ =0x03006154
	subs r6, r6, #0xb
	movmi r6, #0
	str r1, [fp, #-0x44]
_03002704:
	ldr r0, [fp, #-0x30]
	bl ovxDC_3002A94
	cmp r0, #0
	beq _0300273C
	ldr r0, [fp, #-0x30]
	bl ovxDC_3002A94
	cmp r0, #0
	beq _0300273C
_03002724:
	mvn r0, #0
	b _03002A84
_0300272C:
	add r3, r6, r8
	lsl r3, r3, #0xf
	asr r8, r3, #0x10
	b _03002A14
_0300273C:
	mov r7, #0xff00
	add r7, r7, #0xff
	ldr r2, [fp, #-0x38]
	mov r5, #0
	str r5, [fp, #-0x40]
	mov r3, #1
	str r3, [fp, #-0x3c]
	mov r8, r6
	str r5, [fp, #-0x34]
	cmp r2, #0xb
	movge r2, #0xb
	str r2, [fp, #-0x38]
	cmp r5, r2
	bge _03002A14
_03002774:
	add r3, r6, r5
	lsl r3, r3, #0x10
	asr r6, r3, #0x10
	cmp r6, #0x3f
	movgt r6, #0x3f
	bgt _03002794
	cmp r6, #0
	movlt r6, #0
_03002794:
	ldr r4, _030029AC @ =0x03006684
	ldr r3, [r4]
	strb r6, [r3, #0x46]
	ldr r2, [r4]
	ldrb r1, [r2, #0x46]
	mov r0, #0x30
	bl ovxDC_3002FA8
	cmp r0, #0
	mov sb, r4
	beq _030027D4
	ldr r3, [sb]
	ldrb r1, [r3, #0x46]
	mov r0, #0x30
	bl ovxDC_3002FA8
	cmp r0, #0
	bne _03002724
_030027D4:
	mov r2, #0xff00
	add r2, r2, #0xb0
	add r2, r2, #0xe000000
	ldrb r3, [r2]
	subs r1, sl, #1
	orr r3, r3, #0x10
	strb r3, [r2]
	sub r4, fp, #0x2c
	beq _03002800
_030027F8:
	subs r1, r1, #1
	bne _030027F8
_03002800:
	mov r2, #0xff00
	add r2, r2, #0xb0
	add r2, r2, #0xe000000
	ldrb r3, [r2]
	mov r0, #0x57
	and r3, r3, #0xef
	strb r3, [r2]
	mov r1, r4
	mov r2, #4
	bl ovxDC_30030B0
	cmp r0, #0
	beq _03002848
	mov r0, #0x57
	mov r1, r4
	mov r2, #4
	bl ovxDC_30030B0
	cmp r0, #0
	bne _03002724
_03002848:
	ldr r1, [sb]
	ldrb r0, [fp, #-0x2c]
	ldr lr, [fp, #-0x34]
	ldrb r2, [fp, #-0x2b]
	lsl ip, lr, #2
	add r3, r1, #0x1f0
	orr r2, r2, r0, lsl #8
	strh r2, [r3, ip]
	ldr r3, [fp, #-0x30]
	add r1, r1, #0x1f0
	ldrb r0, [fp, #-0x2a]
	cmp lr, #0
	cmpeq r3, #1
	ldrb r3, [fp, #-0x29]
	add r1, r1, #2
	orr r3, r3, r0, lsl #8
	strh r3, [r1, ip]
	mov ip, r3
	add r1, r2, ip
	bne _030028AC
	cmp ip, r2
	subgt r3, r6, #0xb
	lslgt r3, r3, #0x10
	asrgt r6, r3, #0x10
	bgt _030029FC
_030028AC:
	ldr lr, [fp, #-0x3c]
	cmp lr, #0
	beq _03002954
	cmp r1, #0x10
	movle r3, #0
	movgt r3, #1
	cmp r6, #0x3e
	movgt r0, r3
	movle r0, #0
	cmp r0, #0
	bne _03002724
	ldr lr, [fp, #-0x44]
	ldrh r3, [lr]
	cmp r1, r3
	strlt r0, [fp, #-0x3c]
	blt _03002954
	ldr r2, [fp, #-0x44]
	ldrh r3, [r2, #2]
	mov r5, #1
	cmp r1, r3
	blt _0300292C
	mov r0, #0x20000
_03002904:
	mov r3, r0
	add r0, r0, #0x10000
	asr r5, r3, #0x10
	cmp r5, #9
	bgt _0300292C
	ldr ip, [fp, #-0x44]
	lsl r3, r5, #1
	ldrh r2, [r3, ip]
	cmp r1, r2
	bge _03002904
_0300292C:
	add r3, r5, #1
	lsl r3, r3, #0x10
	asr r5, r3, #0x10
	cmp r5, #0xa
	ldr lr, [fp, #-0x3c]
	mov r7, r1
	movle lr, #0
	str lr, [fp, #-0x3c]
	mov r8, r6
	b _030029FC
_03002954:
	ldr r3, [fp, #-0x40]
	tst r3, #4
	bne _03002980
	cmp ip, r2
	movle r5, #2
	mvngt r5, #1
	orr r3, r3, #4
	mov r7, r1
	str r3, [fp, #-0x40]
	mov r8, r6
	b _030029F0
_03002980:
	cmp r1, r7
	beq _0300272C
	cmp r7, r1
	ble _030029B4
	mov r7, r1
	mov r8, r6
	cmp r5, #0
	movle r3, #1
	movgt r3, #2
	b _030029C4
	.align 2, 0
_030029A8: .4byte 0x03006168
_030029AC: .4byte 0x03006684
_030029B0: .4byte 0x03006154
_030029B4:
	mov r6, r8
	cmp r5, #0
	movle r3, #2
	movgt r3, #1
_030029C4:
	ldr ip, [fp, #-0x40]
	orr r2, ip, r3
	and lr, r2, #0xff
	str lr, [fp, #-0x40]
	tst r2, #2
	beq _030029E4
	tst r2, #1
	bne _03002A14
_030029E4:
	cmp r3, #2
	mvnne r5, #1
	moveq r5, #2
_030029F0:
	add r3, r6, r5
	cmp r3, #0x3f
	bhi _03002A14
_030029FC:
	ldr r1, [fp, #-0x34]
	ldr r2, [fp, #-0x38]
	add r1, r1, #1
	str r1, [fp, #-0x34]
	cmp r1, r2
	blt _03002774
_03002A14:
	cmp r7, #0x10
	bgt _03002724
	ldr r4, _03002A88 @ =0x03006684
	ldr r3, [r4]
	strb r8, [r3, #0x46]
	ldr r2, [r4]
	ldrb r1, [r2, #0x46]
	mov r0, #0x30
	bl ovxDC_3002FA8
	cmp r0, #0
	beq _03002A5C
	ldr r3, [r4]
	ldrb r1, [r3, #0x46]
	mov r0, #0x30
	bl ovxDC_3002FA8
	cmp r0, #0
	mvn r0, #0
	bne _03002A84
_03002A5C:
	mov r0, #2
	bl ovxDC_3002A94
	cmp r0, #0
	beq _03002A80
	mov r0, #2
	bl ovxDC_3002A94
	cmp r0, #0
	mvn r0, #0
	bne _03002A84
_03002A80:
	mov r0, #0
_03002A84:
	b _03002A8C
	.align 2, 0
_03002A88: .4byte 0x03006684
_03002A8C:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3002A94
ovxDC_3002A94: @ 0x03002A94
	mov ip, sp
	push {r4, fp, ip, lr, pc}
	ldr r3, _03002BE8 @ =0x03006684
	sub sp, sp, #8
	ldr r2, [r3]
	ldr r1, [r2, #0x264]
	sub fp, ip, #4
	ldrb r4, [r1, #0x30]
	mov r2, r3
	cmp r4, #0x36
	movhi r4, #0x1b
	cmp r0, #4
	ldrls pc, [pc, r0, lsl #2]
	b _03002BE0
_03002ACC: @ jump table
	.4byte _03002BCC @ case 0
	.4byte _03002AE0 @ case 1
	.4byte _03002B28 @ case 2
	.4byte _03002B70 @ case 3
	.4byte _03002BB4 @ case 4
_03002AE0:
	ldr r0, _03002BEC @ =0x0300617C
	mov r1, #0x14
	bl ovxDC_300300C
	cmp r0, #0
	bne _03002BE0
	mov r3, #0x10
	lsl r1, r4, #0x18
	asr r1, r1, #0x18
	add r1, r1, #7
	strb r3, [fp, #-0x18]
	mov r2, #0x11
	strb r2, [fp, #-0x16]
	sub r0, fp, #0x18
	strb r1, [fp, #-0x15]
	asr r3, r1, #8
	strb r3, [fp, #-0x17]
	mov r1, #2
	b _03002BD4
_03002B28:
	ldr r0, _03002BF0 @ =0x030061A4
	mov r1, #5
	bl ovxDC_300300C
	cmp r0, #0
	bne _03002BE0
	mov r3, #0x10
	lsl r1, r4, #0x18
	asr r1, r1, #0x18
	add r1, r1, #7
	strb r3, [fp, #-0x18]
	mov r2, #0x11
	strb r2, [fp, #-0x16]
	sub r0, fp, #0x18
	strb r1, [fp, #-0x15]
	asr r3, r1, #8
	strb r3, [fp, #-0x17]
	mov r1, #2
	b _03002BD4
_03002B70:
	ldr r0, _03002BF4 @ =0x030061DA
	mov r1, #0x1c
	bl ovxDC_300300C
	cmp r0, #0
	bne _03002BE0
	mov r1, #2
	lsl r3, r4, #0x18
	asr r3, r3, #0x18
	strb r1, [fp, #-0x18]
	add r3, r3, #0x28
	strb r3, [fp, #-0x17]
	mov r2, #3
	strb r2, [fp, #-0x16]
	asr r3, r3, #8
	strb r3, [fp, #-0x15]
	sub r0, fp, #0x18
	b _03002BD4
_03002BB4:
	mov r3, #0x1ec
	ldr r0, [r2]
	add r3, r3, #1
	ldrb r1, [r0, r3]
	add r0, r0, #0x21c
	b _03002BD4
_03002BCC:
	ldr r0, _03002BF8 @ =0x030061AE
	mov r1, #0x16
_03002BD4:
	bl ovxDC_300300C
	cmp r0, #0
	beq _03002BFC
_03002BE0:
	mvn r0, #0
	b _03002C00
	.align 2, 0
_03002BE8: .4byte 0x03006684
_03002BEC: .4byte 0x0300617C
_03002BF0: .4byte 0x030061A4
_03002BF4: .4byte 0x030061DA
_03002BF8: .4byte 0x030061AE
_03002BFC:
	mov r0, #0
_03002C00:
	ldmdb fp, {r4, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3002C08
ovxDC_3002C08: @ 0x03002C08
	mov ip, sp
	push {fp, ip, lr, pc}
	mov r1, #0xff00
	add r1, r1, #0xb0
	add r1, r1, #0xe000000
	ldrb r3, [r1]
	orr r3, r3, #1
	strb r3, [r1]
	ldrb r2, [r1]
	orr r2, r2, #4
	strb r2, [r1]
	sub fp, ip, #4
	ldrb r3, [r1]
	mov r2, #0xa
	orr r3, r3, #2
	strb r3, [r1]
_03002C48:
	subs r2, r2, #1
	bne _03002C48
	mov r2, #0xff00
	add r2, r2, #0xb0
	add r2, r2, #0xe000000
	ldrb r3, [r2]
	mov r1, #7
	and r3, r3, #0xfe
	strb r3, [r2]
_03002C6C:
	subs r1, r1, #1
	bne _03002C6C
	mov r2, #0xff00
	add r2, r2, #0xb0
	add r2, r2, #0xe000000
	ldrb r3, [r2]
	and r3, r3, #0xfd
	strb r3, [r2]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3002C94
ovxDC_3002C94: @ 0x03002C94
	mov ip, sp
	push {fp, ip, lr, pc}
	mov r3, #0xff00
	add r3, r3, #0xb0
	add r3, r3, #0xe000000
	ldrb r2, [r3]
	orr r2, r2, #4
	strb r2, [r3]
	sub fp, ip, #4
	ldrb r1, [r3]
	mov r2, #0xa
	and r1, r1, #0xfe
	strb r1, [r3]
_03002CC8:
	subs r2, r2, #1
	bne _03002CC8
	mov r2, #0xff00
	add r2, r2, #0xb0
	add r2, r2, #0xe000000
	ldrb r3, [r2]
	mov r1, #7
	orr r3, r3, #2
	strb r3, [r2]
_03002CEC:
	subs r1, r1, #1
	bne _03002CEC
	mov r2, #0xff00
	add r2, r2, #0xb0
	add r2, r2, #0xe000000
	ldrb r3, [r2]
	orr r3, r3, #1
	strb r3, [r2]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3002D14
ovxDC_3002D14: @ 0x03002D14
	mov ip, sp
	push {fp, ip, lr, pc}
	mov r3, #0xa
	sub fp, ip, #4
_03002D24:
	subs r3, r3, #1
	bne _03002D24
	mov r2, #0xff00
	add r2, r2, #0xb0
	add r2, r2, #0xe000000
	ldrb r3, [r2]
	mov r1, #7
	orr r3, r3, #2
	strb r3, [r2]
_03002D48:
	subs r1, r1, #1
	bne _03002D48
	mov r1, #0xff00
	add r1, r1, #0xb0
	add r1, r1, #0xe000000
	ldrb r0, [r1]
	ldrb r3, [r1]
	and r3, r3, #0xfd
	strb r3, [r1]
	ldrb r2, [r1]
	and r0, r0, #1
	orr r2, r2, #4
	strb r2, [r1]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3002D84
ovxDC_3002D84: @ 0x03002D84
	mov ip, sp
	push {fp, ip, lr, pc}
	cmp r0, #0
	sub fp, ip, #4
	beq _03002DB0
	mov r2, #0xff00
	add r2, r2, #0xb0
	add r2, r2, #0xe000000
	ldrb r3, [r2]
	orr r3, r3, #1
	b _03002DC4
_03002DB0:
	mov r2, #0xff00
	add r2, r2, #0xb0
	add r2, r2, #0xe000000
	ldrb r3, [r2]
	and r3, r3, #0xfe
_03002DC4:
	strb r3, [r2]
	mov r3, #0xa
_03002DCC:
	subs r3, r3, #1
	bne _03002DCC
	mov r2, #0xff00
	add r2, r2, #0xb0
	add r2, r2, #0xe000000
	ldrb r3, [r2]
	mov r1, #7
	orr r3, r3, #2
	strb r3, [r2]
_03002DF0:
	subs r1, r1, #1
	bne _03002DF0
	mov r2, #0xff00
	add r2, r2, #0xb0
	add r2, r2, #0xe000000
	ldrb r3, [r2]
	and r3, r3, #0xfd
	strb r3, [r2]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3002E18
ovxDC_3002E18: @ 0x03002E18
	mov ip, sp
	and r0, r0, #0xff
	push {fp, ip, lr, pc}
	mov r3, #0xff00
	add r3, r3, #0xb0
	add r3, r3, #0xe000000
	mov r1, r3
	sub fp, ip, #4
	mov lr, #0x80
	ldrb r2, [r3]
	mov ip, #0
	orr r2, r2, #4
	strb r2, [r3]
_03002E4C:
	mov r3, #8
	and r2, r0, lr
	lsr lr, lr, #1
	add ip, ip, #1
_03002E5C:
	subs r3, r3, #1
	bne _03002E5C
	cmp r2, #0
	ldrbne r3, [r1]
	orrne r3, r3, #1
	ldrbeq r3, [r1]
	andeq r3, r3, #0xfe
	strb r3, [r1]
	mov r3, #8
_03002E80:
	subs r3, r3, #1
	bne _03002E80
	ldrb r3, [r1]
	mov r2, #7
	orr r3, r3, #2
	strb r3, [r1]
_03002E98:
	subs r2, r2, #1
	bne _03002E98
	ldrb r3, [r1]
	and r3, r3, #0xfd
	strb r3, [r1]
	cmp ip, #7
	ble _03002E4C
	mov r2, #0xff00
	add r2, r2, #0xb0
	add r2, r2, #0xe000000
	ldrb r3, [r2]
	and r3, r3, #0xfb
	strb r3, [r2]
	bl ovxDC_3002D14
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3002ED8
ovxDC_3002ED8: @ 0x03002ED8
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	mov r3, #0xff00
	add r3, r3, #0xb0
	sub fp, ip, #4
	mov r5, r0
	mov lr, #0
	mov ip, lr
	mov r4, r3
	add r3, r3, #0xe000000
	ldrb r2, [r3]
	mov r0, r3
	and r2, r2, #0xfb
	strb r2, [r3]
_03002F10:
	lsl r3, lr, #1
	and lr, r3, #0xff
	mov r3, #0xa
	add ip, ip, #1
_03002F20:
	subs r3, r3, #1
	bne _03002F20
	ldrb r3, [r0]
	mov r2, #7
	orr r3, r3, #2
	strb r3, [r0]
_03002F38:
	subs r2, r2, #1
	bne _03002F38
	add r1, r4, #0xe000000
	orr r2, lr, #1
	ldrb r3, [r1]
	and r2, r2, #0xff
	tst r3, #1
	ldrb r3, [r1]
	movne lr, r2
	and r3, r3, #0xfd
	strb r3, [r1]
	cmp ip, #7
	ble _03002F10
	tst lr, #1
	ldrbne r3, [r1]
	orrne r3, r3, #1
	ldrbeq r3, [r1]
	andeq r3, r3, #0xfe
	strb r3, [r1]
	mov r2, #0xff00
	add r2, r2, #0xb0
	add r2, r2, #0xe000000
	ldrb r3, [r2]
	orr r3, r3, #4
	strb r3, [r2]
	strb lr, [r5]
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3002FA8
ovxDC_3002FA8: @ 0x03002FA8
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	sub fp, ip, #4
	and r4, r0, #0xff
	and r5, r1, #0xff
	bl ovxDC_3002C08
	mov r0, #0x22
	bl ovxDC_3002E18
	cmp r0, #0
	bne _03002FFC
	mov r0, r4
	bl ovxDC_3002E18
	cmp r0, #0
	bne _03002FFC
	mov r0, r5
	bl ovxDC_3002E18
	subs r4, r0, #0
	bne _03002FFC
	bl ovxDC_3002C94
	mov r0, r4
	b _03003004
_03002FFC:
	bl ovxDC_3002C94
	mvn r0, #0
_03003004:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_300300C
ovxDC_300300C: @ 0x0300300C
	mov ip, sp
	push {r4, r5, r6, r7, fp, ip, lr, pc}
	sub fp, ip, #4
	mov r5, #0
	mov r7, r1
	cmp r5, r7
	mov r6, r0
	bge _030030A4
_0300302C:
	bl ovxDC_3002C08
	mov r0, #0x22
	bl ovxDC_3002E18
	cmp r0, #0
	bne _03003080
	ldrb r4, [r6, r5, lsl #1]
	mov r0, r4
	bl ovxDC_3002E18
	cmp r0, #0
	beq _0300306C
	b _03003080
_03003058:
	mov r3, r4
	ldrb r4, [r6, r5, lsl #1]
	rsb r3, r3, r4
	cmp r3, #1
	bne _03003098
_0300306C:
	add r3, r6, r5, lsl #1
	ldrb r0, [r3, #1]
	bl ovxDC_3002E18
	cmp r0, #0
	beq _0300308C
_03003080:
	bl ovxDC_3002C94
	mvn r0, #0
	b _030030A8
_0300308C:
	add r5, r5, #1
	cmp r5, r7
	blt _03003058
_03003098:
	bl ovxDC_3002C94
	cmp r5, r7
	blt _0300302C
_030030A4:
	mov r0, #0
_030030A8:
	ldmdb fp, {r4, r5, r6, r7, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_30030B0
ovxDC_30030B0: @ 0x030030B0
	mov ip, sp
	push {r4, r5, r6, fp, ip, lr, pc}
	sub fp, ip, #4
	mov r5, r1
	mov r4, r2
	mov r6, r0
	bl ovxDC_3002C08
	mov r0, #0x22
	bl ovxDC_3002E18
	cmp r0, #0
	bne _03003100
	and r0, r6, #0xff
	bl ovxDC_3002E18
	cmp r0, #0
	bne _03003100
	bl ovxDC_3002C08
	mov r0, #0x23
	bl ovxDC_3002E18
	cmp r0, #0
	beq _03003118
_03003100:
	bl ovxDC_3002C94
	mvn r0, #0
	b _03003138
_0300310C:
	add r5, r5, #1
	mov r0, #0
	bl ovxDC_3002D84
_03003118:
	mov r0, r5
	bl ovxDC_3002ED8
	subs r4, r4, #1
	bne _0300310C
	mov r0, #1
	bl ovxDC_3002D84
	bl ovxDC_3002C94
	mov r0, r4
_03003138:
	ldmdb fp, {r4, r5, r6, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3003140
ovxDC_3003140: @ 0x03003140
	mov ip, sp
	push {fp, ip, lr, pc}
	ldr r3, [r0]
	sub fp, ip, #4
	cmp r3, #0x284
	blo _0300317C
	ldr r3, [r0, #4]
	ldr r2, _03003188 @ =0x03006684
	add r3, r3, #3
	bic r3, r3, #3
	str r3, [r2]
	mov r0, #0
	str r0, [r3, #0x128]
	ldmdb fp, {fp, sp, lr}
	bx lr
_0300317C:
	mvn r0, #0
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03003188: .4byte 0x03006684

	arm_func_start ovxDC_300318C
ovxDC_300318C: @ 0x0300318C
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x10
	ldr r5, _03003410 @ =0x03006684
	ldr r4, [r5]
	mov lr, #0x1ec
	ldrb r3, [r4, lr]
	mov sl, r2
	and r3, r3, #0xfe
	strb r3, [r4, lr]
	mov r8, r1
	ldr ip, [r5]
	mov r7, r0
	ldrb r3, [ip, lr]
	mov sb, r5
	tst r3, #1
	beq _0300320C
	eor r6, sl, #1
	lsl r5, r6, #3
	add r0, r7, r5
	lsl r4, sl, #3
	add r1, r7, r4
	sub r2, fp, #0x29
	sub r3, fp, #0x30
	bl ovxDC_3003464
	add r0, r8, r5
	add r1, r8, r4
	sub r2, fp, #0x2a
	sub r3, fp, #0x34
	bl ovxDC_3003464
	b _03003240
_0300320C:
	lsl r4, sl, #3
	add r0, r8, r4
	eor r6, sl, #1
	lsl r5, r6, #3
	add r1, r8, r5
	sub r2, fp, #0x29
	sub r3, fp, #0x30
	bl ovxDC_3003464
	add r0, r7, r4
	add r1, r7, r5
	sub r2, fp, #0x2a
	sub r3, fp, #0x34
	bl ovxDC_3003464
_03003240:
	ldr r2, [sb]
	ldrb r3, [r2, #0x47]
	and r3, r3, #0xf
	cmp r3, #2
	bhi _03003280
	ldr r3, [fp, #-0x30]
	cmp r3, #0
	beq _03003438
	ldr r3, [fp, #-0x34]
	cmp r3, #0
	beq _03003438
	ldrb r2, [fp, #-0x29]
	ldrb r3, [fp, #-0x2a]
	cmp r2, r3
	bne _03003438
	b _0300328C
_03003280:
	ldrb r3, [r2, #0x44]
	and r3, r3, #0xf
	strb r3, [fp, #-0x29]
_0300328C:
	ldrb r3, [fp, #-0x29]
	tst r3, #8
	beq _030032B4
	ldr r2, [sb]
	ldrb r3, [r2, #0x47]
	orr r3, r3, #0x80
	strb r3, [r2, #0x47]
	ldr r4, [fp, #-0x30]
	cmp r4, #0
	b _030032C4
_030032B4:
	ldr r0, [fp, #-0x30]
	ldr r1, [fp, #-0x34]
	bl ovxDC_30047AC
	subs r4, r0, #0
_030032C4:
	beq _03003438
	ldr r0, [sb]
	ldrh r3, [r0, #4]
	ldr r1, [r0, #0x128]
	add r2, r3, #1
	lsl r3, r3, #0x10
	strh r2, [r0, #4]
	asr r3, r3, #0xf
	add r2, r0, #8
	strh r4, [r2, r3]
	tst r1, #0x40
	beq _0300330C
	ldrb r3, [fp, #-0x29]
	tst r3, #4
	ldrne r3, [r0, #0x1e0]
	bne _0300331C
	ldr r3, [r0, #0x1e8]
	b _0300331C
_0300330C:
	ldrb r3, [fp, #-0x29]
	tst r3, #4
	ldrne r3, [r0, #0x1dc]
	ldreq r3, [r0, #0x1e4]
_0300331C:
	cmp r4, r3
	bgt _03003438
	ldr r2, [sb]
	mov r0, #0x1ec
	ldrb r3, [r2, r0]
	orr r3, r3, #2
	strb r3, [r2, r0]
	ldr r1, [sb]
	mov r3, #0x148
	ldrb r5, [r1, r3]
	ldrb r2, [r1, #0x47]
	ldr r3, [r1, #0x140]
	tst r2, #0x80
	add r3, r4, r3
	ldrb r2, [r3, #-1]
	andeq r5, r5, #0xf7
	cmp r5, r2, lsr #4
	bls _030033E4
	ldrb r3, [r1, r0]
	tst r3, #1
	beq _03003390
	mov r0, r7
	ldrb r3, [fp, #-0x29]
	mov r1, r8
	str r3, [sp]
	mov r2, r6
	mov r3, r4
	bl ovxDC_3004178
	b _030033AC
_03003390:
	mov r0, r8
	ldrb r3, [fp, #-0x29]
	mov r1, r7
	str r3, [sp]
	mov r2, sl
	mov r3, r4
	bl ovxDC_3004178
_030033AC:
	ldr r3, [sb]
	ldr r2, [r3, #0x140]
	mvn r0, #0
	add r2, r4, r2
	ldrb r3, [r2, r0]
	and r3, r3, #0xf
	cmp r3, #0xe
	addls r3, r3, #1
	orr r3, r3, r5, lsl #4
	strb r3, [r2, r0]
	ldr r1, [sb]
	ldrh r3, [r1, #6]
	add r3, r3, #1
	strh r3, [r1, #6]
_030033E4:
	ldr r1, [sb]
	ldr r0, [r1, #0x14c]
	tst r0, #0x40
	bne _03003438
	tst r0, #0x20
	bne _03003418
	ldr r2, _03003414 @ =0x03006134
	orr r3, r0, #0x20
	str r3, [r1, #0x14c]
	strh r4, [r2]
	b _03003438
	.align 2, 0
_03003410: .4byte 0x03006684
_03003414: .4byte 0x03006134
_03003418:
	ldr r3, _03003434 @ =0x03006134
	ldrsh r2, [r3]
	cmp r2, r4
	beq _03003438
	orr r3, r0, #0x40
	str r3, [r1, #0x14c]
	b _03003438
	.align 2, 0
_03003434: .4byte 0x03006134
_03003438:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3003440
ovxDC_3003440: @ 0x03003440
	mov ip, sp
	push {fp, ip, lr, pc}
	cmp r0, #0
	sub fp, ip, #4
	ldmdbge fp, {fp, sp, lr}
	bxge lr
	rsb r0, r0, #0
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3003464
ovxDC_3003464: @ 0x03003464
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	sub fp, ip, #4
	mov r5, r2
	mov r4, r3
	mov r2, r4
	bl ovxDC_3003534
	cmn r0, #1
	beq _030034EC
	ldr r2, _03003524 @ =0x03006684
	ldr r2, [r2]
	ldrb r3, [r2, #0x47]
	and r3, r3, #0xf
	cmp r3, #2
	ldrls r3, [r4]
	asrls r3, r3, #0xa
	andls r3, r3, #0xc
	ldrbhi r3, [r2, #0x44]
	andhi r3, r3, #0xf
	strb r3, [r5]
	ldrb r3, [r5]
	ands r5, r3, #8
	beq _030034F8
	ldr r0, [r4]
	asr r0, r0, #0xa
	and r0, r0, #0xc
	bl ovxDC_3004DA0
	lsls r0, r0, #0x18
	bne _030034EC
	ldr r3, [r4]
	lsl r3, r3, #0x14
	lsr r3, r3, #0x14
	str r3, [r4]
	b _0300352C
_030034EC:
	mov r3, #0
	str r3, [r4]
	b _0300352C
_030034F8:
	ldr r0, [r4]
	lsr r0, r0, #0xa
	and r0, r0, #0xff
	bl ovxDC_3004DA0
	lsls r0, r0, #0x18
	bne _03003528
	ldr r3, [r4]
	lsl r3, r3, #0x16
	lsr r3, r3, #0x16
	str r3, [r4]
	b _0300352C
	.align 2, 0
_03003524: .4byte 0x03006684
_03003528:
	str r5, [r4]
_0300352C:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3003534
ovxDC_3003534: @ 0x03003534
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x20
	str r2, [fp, #-0x48]
	ldr r2, [r1, #4]
	mov r7, #5
	ldr ip, [r0, #4]
	sub sb, fp, #0x44
	rsb r2, ip, r2
	add r3, r2, r2, lsl #1
	add r2, r2, r3, lsl #2
	add r2, r2, r2, lsl #3
	lsl r2, r2, #3
	add r2, r2, #0x4000
	asr r6, r2, #0xf
	ldr r3, [r1]
	add r4, r6, r6, lsl #2
	ldr r1, [r0]
	mov sl, ip
	rsb r3, r1, r3
	add r2, r3, r3, lsl #1
	add r3, r3, r2, lsl #2
	add r3, r3, r3, lsl #3
	lsl r3, r3, #3
	add r3, r3, #0x4000
	asr r5, r3, #0xf
	add r2, r5, r5, lsl #2
	ldr r3, _03003618 @ =0x03006684
	add lr, r2, r1
	ldr r8, [r3]
_030035B0:
	add r2, sl, r4
	add r4, r4, r6
	asr r0, lr, #7
	add lr, lr, r5
	sub ip, r7, #5
	add r7, r7, #1
	asr r2, r2, #7
	add r2, r2, r2, lsl #2
	add r2, r0, r2, lsl #6
	ldr r1, [r8, #0x138]
	and r0, r0, #7
	ldrb r3, [r1, r2, asr #3]
	rsb r0, r0, #7
	asr r3, r3, r0
	and r3, r3, #1
	sub r2, fp, #0x44
	strb r3, [r2, ip]
	cmp r7, #0x1e
	ble _030035B0
	ldr r1, [fp, #-0x48]
	mov r0, sb
	bl ovxDC_30054F8
	cmp r0, #1
	mvnne r0, #0
	moveq r0, #0
	b _0300361C
	.align 2, 0
_03003618: .4byte 0x03006684
_0300361C:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3003624
ovxDC_3003624: @ 0x03003624
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	svc #0x60000
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovxDC_300363C
ovxDC_300363C: @ 0x0300363C
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	ldr r3, _030038E4 @ =0x03006684
	sub sp, sp, #0x94
	ldr lr, [r3]
	sub fp, ip, #4
	ldr ip, [lr, #0x1a0]
	str r1, [fp, #-0xac]
	ldr r1, [r0]
	mov r6, r2
	ldr r2, [r0, #4]
	cmp ip, #0x10
	bgt _030038E8
	str r1, [fp, #-0xbc]
	rsb r4, ip, #0
	ldrb r7, [r0]
	cmp r4, ip
	mov r0, r2
	bge _030036B4
	mov r1, lr
	sub ip, fp, #0xa8
	mov lr, #0
_03003694:
	ldr r3, [r1, #0x1a0]
	add r3, r4, r3
	lsl r3, r3, #2
	str lr, [ip, r3]
	ldr r2, [r1, #0x1a0]
	add r4, r4, #1
	cmp r4, r2
	blt _03003694
_030036B4:
	mov sl, #0
	mov r8, sl
	ldr r2, _030038E4 @ =0x03006684
	mov sb, sl
	ldr ip, [r2]
	mov r5, r0
	ldr r1, [ip, #0x1a0]
	add r4, r5, r6
	ldr r2, [fp, #-0xbc]
	add r3, r0, r0, lsl #2
	rsb r1, r1, r2
	add r1, r1, r3, lsl #6
	mov r2, #0x1a0
	ldrb r3, [ip, r2]
	cmp r5, r4
	ldr r0, [ip, #0x138]
	rsb r3, r3, r7
	and r3, r3, #7
	str r3, [fp, #-0xb0]
	add lr, r0, r1, asr #3
	bge _030037B4
	str ip, [fp, #-0xb8]
	str r4, [fp, #-0xb4]
_03003710:
	ldrb r3, [lr, #1]
	ldrb r1, [lr]
	add r0, lr, #0x28
	ldrb r2, [lr, #2]
	lsl r3, r3, #8
	orr r3, r3, r1, lsl #16
	orr ip, r3, r2
	ldr r3, [fp, #-0xb0]
	add r6, r5, #1
	ldr r2, [fp, #-0xb8]
	add r1, r3, #8
	ldr r3, [r2, #0x1a0]
	lsl ip, ip, r1
	rsb r4, r3, #0
	cmp r4, r3
	bge _030037A0
	ldr lr, _030038E4 @ =0x03006684
	sub r1, fp, #0xa8
	mov r7, lr
_0300375C:
	cmp ip, #0
	bge _03003788
	ldr r3, [lr]
	ldr r2, [r3, #0x1a0]
	add r8, r8, r5
	add r2, r4, r2
	lsl r2, r2, #2
	ldr r3, [r1, r2]
	add sl, sl, #1
	add r3, r3, #1
	str r3, [r1, r2]
_03003788:
	ldr r3, [r7]
	lsl ip, ip, #1
	ldr r2, [r3, #0x1a0]
	add r4, r4, #1
	cmp r4, r2
	blt _0300375C
_030037A0:
	mov lr, r0
	ldr r3, [fp, #-0xb4]
	mov r5, r6
	cmp r5, r3
	blt _03003710
_030037B4:
	ldr r2, _030038E4 @ =0x03006684
	ldr r3, [r2]
	mvn r4, #0
	ldr r1, [r3, #0x1a0]
	lsl r6, r8, #7
	rsb ip, r1, #0
	cmp r4, ip
	blt _0300381C
	add r2, r1, r4
	sub r0, fp, #0xa8
	ldr r3, [r0, r2, lsl #2]
	cmp r3, #1
	ble _0300381C
	lsl r3, r1, #2
	sub r2, r3, #4
	mov r1, r0
	mov r0, ip
_030037F8:
	ldr r3, [r1, r2]
	mla sb, r3, r4, sb
	sub r2, r2, #4
	sub r4, r4, #1
	cmp r4, r0
	blt _0300381C
	ldr r3, [r1, r2]
	cmp r3, #1
	bgt _030037F8
_0300381C:
	ldr r2, _030038E4 @ =0x03006684
	ldr r3, [r2]
	add r5, r4, #1
	ldr r2, [r3, #0x1a0]
	mov r4, #0
	cmp r4, r2
	bge _0300387C
	lsl r1, r2, #2
	sub r0, fp, #0xa8
	ldr r3, [r0, r1]
	cmp r3, #1
	ble _0300387C
	mov ip, r2
	mov r2, r1
	mov r1, r0
_03003858:
	ldr r3, [r1, r2]
	mla sb, r3, r4, sb
	add r2, r2, #4
	add r4, r4, #1
	cmp r4, ip
	bge _0300387C
	ldr r3, [r1, r2]
	cmp r3, #1
	bgt _03003858
_0300387C:
	ldr r0, [fp, #-0xbc]
	mla r0, sl, r0, sb
	mov r1, sl
	sub r4, r4, #1
	lsl r0, r0, #7
	bl ovxDC_3003624
	ldr r3, [fp, #-0xac]
	str r0, [r3]
	mov r1, sl
	mov r0, r6
	bl ovxDC_3003624
	ldr r2, [fp, #-0xac]
	ldr r3, _030038E4 @ =0x03006684
	str r0, [r2, #4]
	ldr r1, [r3]
	rsb r4, r5, r4
	ldr r3, [r1, #0x1b4]
	add r2, r4, #1
	str r2, [r1, #0x1c0]
	cmp r2, r3
	blt _030038E8
	ldr r3, [r1, #0x1bc]
	cmp r2, r3
	mvngt r0, #0
	movle r0, #0
	b _030038EC
	.align 2, 0
_030038E4: .4byte 0x03006684
_030038E8:
	mvn r0, #0
_030038EC:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_30038F4
ovxDC_30038F4: @ 0x030038F4
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x5c
	mov r7, r2
	str r0, [fp, #-0x60]
	sub r3, fp, #0x4e
	str r1, [fp, #-0x64]
	sub r0, fp, #0x5c
	sub r1, fp, #0x54
	str r0, [fp, #-0x7c]
	mov r2, r1
	str r1, [fp, #-0x80]
	mov r0, #0
	ldr r1, _03003C1C @ =0x03006684
_03003930:
	strb r0, [r3], #-1
	cmp r3, r2
	bge _03003930
	ldr lr, [fp, #-0x60]
	ldr r2, [fp, #-0x7c]
	ldr ip, [lr, #4]
	mov r0, #0
	ldr lr, [lr]
	add r3, r2, #4
	str lr, [fp, #-0x78]
_03003958:
	strb r0, [r3], #-1
	cmp r3, r2
	bge _03003958
	mov r3, #0
	str r3, [fp, #-0x6c]
	str r3, [fp, #-0x68]
	strb r3, [r7]
	sub r3, ip, #2
	cmp r3, #0xf0
	bls _030039B8
	ldr r1, [r1]
	mov r2, #0x19c
	ldrb r3, [r1, r2]
	add r3, r3, #1
	strb r3, [r7]
	ldr r0, [fp, #-0x78]
	ldr r1, [fp, #-0x64]
	lsl r2, r0, #7
	add r2, r2, #0x40
	lsl r3, ip, #7
	str r2, [r1]
	add r3, r3, #0x40
	str r3, [r1, #4]
	b _03003D7C
_030039B8:
	sub r2, fp, #0x4c
	str r2, [fp, #-0x84]
	ldr r0, [fp, #-0x60]
	ldr lr, [fp, #-0x6c]
	ldrb r2, [r0]
	ldr sb, [fp, #-0x80]
	sub r2, r2, #3
	and r2, r2, #7
	str r2, [fp, #-0x70]
	ldr r2, [r1]
	add r3, r3, r3, lsl #2
	ldr r1, [r2, #0x138]
	lsl r3, r3, #6
	ldr r2, [fp, #-0x78]
	sub r3, r3, #3
	ldr sl, [fp, #-0x7c]
	add r3, r3, r2
	add r1, r1, r3, asr #3
_03003A00:
	mov ip, #0
	add r3, r1, #0x28
	str r3, [fp, #-0x74]
	add r6, lr, #1
	ldrb r2, [r1]
	rsb r4, lr, lr, lsl #3
	ldrb r3, [r1, #1]
	sub r8, lr, #2
	ldr r0, [fp, #-0x70]
	orr r3, r3, r2, lsl #8
	lsl r3, r3, r0
	lsl r3, r3, #0x10
	asr r1, r3, #0x10
_03003A34:
	ands r2, r1, #0x8000
	lsl r5, r1, #0x10
	beq _03003AA4
	add r1, ip, r4
	mov r2, #1
	sub r3, fp, #0x4c
	strb r2, [r3, r1]
	ldrb r3, [sb, ip]
	add r3, r3, r2
	strb r3, [sb, ip]
	ldr r0, [fp, #-0x68]
	sub r2, ip, #3
	lsl r3, r0, #0x18
	add r2, r2, r3, asr #24
	ldrb r1, [r7]
	and r2, r2, #0xff
	str r2, [fp, #-0x68]
	ldrb r0, [sl, lr]
	add r1, r1, #1
	strb r1, [r7]
	add r0, r0, #1
	strb r0, [sl, lr]
	ldr r1, [fp, #-0x6c]
	lsl r3, r1, #0x18
	add r3, r8, r3, asr #24
	and r3, r3, #0xff
	str r3, [fp, #-0x6c]
	b _03003AB0
_03003AA4:
	add r3, ip, r4
	sub r0, fp, #0x4c
	strb r2, [r0, r3]
_03003AB0:
	lsl r3, r5, #1
	asr r1, r3, #0x10
	add ip, ip, #1
	cmp ip, #6
	ble _03003A34
	mov lr, r6
	ldr r1, [fp, #-0x74]
	cmp lr, #4
	ble _03003A00
	mov r5, #0
	mov r8, #4
	ldr r0, [fp, #-0x80]
	mov ip, #1
	b _03003AEC
_03003AE8:
	add ip, ip, #1
_03003AEC:
	cmp ip, #3
	bgt _03003B2C
	lsl r3, r8, #0x18
	cmp r3, #0x4000000
	bne _03003B18
	add r3, ip, #3
	ldrb r1, [r0, r3]
	and r2, ip, #0xff
	cmp r1, #0
	moveq r8, r2
	b _03003AE8
_03003B18:
	add r3, ip, #3
	ldrb r2, [r0, r3]
	cmp r2, #0
	beq _03003AE8
	mov r5, #1
_03003B2C:
	mov r6, #0xfc
	ldr r0, [fp, #-0x80]
	mvn ip, #0
	b _03003B40
_03003B3C:
	sub ip, ip, #1
_03003B40:
	cmn ip, #3
	blt _03003B84
	lsl r3, r6, #0x18
	asr r3, r3, #0x18
	cmn r3, #4
	bne _03003B70
	add r3, ip, #3
	ldrb r1, [r0, r3]
	and r2, ip, #0xff
	cmp r1, #0
	moveq r6, r2
	b _03003B3C
_03003B70:
	add r3, ip, #3
	ldrb r2, [r0, r3]
	cmp r2, #0
	beq _03003B3C
	mov r5, #1
_03003B84:
	mov r4, #3
	ldr r0, [fp, #-0x7c]
	mov ip, #1
	b _03003B98
_03003B94:
	add ip, ip, #1
_03003B98:
	cmp ip, #2
	bgt _03003BD8
	lsl r3, r4, #0x18
	cmp r3, #0x3000000
	bne _03003BC4
	add r3, ip, #2
	ldrb r1, [r0, r3]
	and r2, ip, #0xff
	cmp r1, #0
	moveq r4, r2
	b _03003B94
_03003BC4:
	add r3, ip, #2
	ldrb r2, [r0, r3]
	cmp r2, #0
	beq _03003B94
	mov r5, #1
_03003BD8:
	mov lr, #0xfd
	ldr r0, [fp, #-0x7c]
	mvn ip, #0
	b _03003BEC
_03003BE8:
	sub ip, ip, #1
_03003BEC:
	cmn ip, #2
	blt _03003C34
	lsl r3, lr, #0x18
	asr r3, r3, #0x18
	cmn r3, #3
	bne _03003C20
	add r3, ip, #2
	ldrb r1, [r0, r3]
	and r2, ip, #0xff
	cmp r1, #0
	moveq lr, r2
	b _03003BE8
	.align 2, 0
_03003C1C: .4byte 0x03006684
_03003C20:
	add r3, ip, #2
	ldrb r2, [r0, r3]
	cmp r2, #0
	beq _03003BE8
	mov r5, #1
_03003C34:
	cmp r5, #0
	beq _03003D08
	mov r3, #0
	lsl r2, lr, #0x18
	asr r2, r2, #0x18
	add lr, r2, #1
	lsl r2, r4, #0x18
	str r3, [fp, #-0x6c]
	asr r2, r2, #0x18
	str r3, [fp, #-0x68]
	sub r1, r2, #1
	strb r3, [r7]
	cmp lr, r1
	bgt _03003D08
	lsl r2, r6, #0x18
	asr sb, r2, #0x18
	lsl r3, r8, #0x18
	asr r3, r3, #0x18
	sub sl, r3, #1
	mov r8, r1
	mov r5, r3
_03003C88:
	add ip, sb, #1
	cmp ip, sl
	add r6, lr, #1
	bgt _03003CFC
	add r3, lr, #2
	rsb r3, r3, r3, lsl #3
	add r4, r3, #3
	sub r0, r5, #1
	ldr r1, [fp, #-0x84]
_03003CAC:
	add r3, ip, r4
	ldrb r2, [r1, r3]
	cmp r2, #0
	beq _03003CF0
	ldr r2, [fp, #-0x68]
	lsl r3, r2, #0x18
	add r3, ip, r3, asr #24
	and r3, r3, #0xff
	str r3, [fp, #-0x68]
	ldr r3, [fp, #-0x6c]
	lsl r2, r3, #0x18
	add r2, lr, r2, asr #24
	ldrb r3, [r7]
	and r2, r2, #0xff
	str r2, [fp, #-0x6c]
	add r3, r3, #1
	strb r3, [r7]
_03003CF0:
	add ip, ip, #1
	cmp ip, r0
	ble _03003CAC
_03003CFC:
	mov lr, r6
	cmp lr, r8
	ble _03003C88
_03003D08:
	ldrsb r1, [r7]
	ldr r3, [fp, #-0x78]
	mul r3, r1, r3
	ldr lr, [fp, #-0x68]
	ldrb r0, [r7]
	lsl r2, lr, #0x18
	lsl r0, r0, #0x18
	asr r0, r0, #0x19
	add r3, r3, r2, asr #24
	add r0, r0, r3, lsl #7
	bl ovxDC_3003624
	ldr r1, [fp, #-0x64]
	add r0, r0, #0x40
	str r0, [r1]
	ldr r2, [fp, #-0x60]
	ldrsb r1, [r7]
	ldr r3, [r2, #4]
	mul r2, r1, r3
	ldrb r0, [r7]
	ldr lr, [fp, #-0x6c]
	lsl r0, r0, #0x18
	asr r0, r0, #0x19
	lsl r3, lr, #0x18
	add r2, r2, r3, asr #24
	add r0, r0, r2, lsl #7
	bl ovxDC_3003624
	ldr r1, [fp, #-0x64]
	add r0, r0, #0x40
	str r0, [r1, #4]
_03003D7C:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3003D84
ovxDC_3003D84: @ 0x03003D84
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #4
	mov r7, #0
	mov r4, r7
	mov r6, r7
	mvn r5, #1
	str r1, [fp, #-0x2c]
	mov sl, r0
	ldr sb, [sl, #4]
_03003DB0:
	add r3, sb, r5
	cmp r3, #0xf5
	add r8, r5, #1
	bhi _03003E2C
	mvn ip, #2
	ldr lr, [sl]
	add r3, r3, r3, lsl #2
	ldr r2, _03003EA0 @ =0x03006684
	add r3, lr, r3, lsl #6
	ldr r1, [r2]
	add r0, r3, ip
	ldr r1, [r1, #0x138]
_03003DE0:
	add r3, lr, ip
	and r3, r3, #7
	ldrb r2, [r1, r0, asr #3]
	rsb r3, r3, #7
	asr r2, r2, r3
	tst r2, #1
	beq _03003E1C
	lsl r3, r6, #0x18
	add r3, ip, r3, asr #24
	and r6, r3, #0xff
	lsl r2, r7, #0x18
	add r2, r5, r2, asr #24
	and r7, r2, #0xff
	add r3, r4, #1
	and r4, r3, #0xff
_03003E1C:
	add r0, r0, #1
	add ip, ip, #1
	cmp ip, #3
	ble _03003DE0
_03003E2C:
	mov r5, r8
	cmp r5, #2
	ble _03003DB0
	lsl r4, r4, #0x18
	asrs r5, r4, #0x18
	beq _03003EA4
	ldr r3, [sl]
	mul r0, r5, r3
	mov r1, r5
	asr r4, r4, #0x19
	lsl r3, r6, #0x18
	add r0, r0, r3, asr #24
	add r0, r4, r0, lsl #7
	bl ovxDC_3003624
	ldr r3, [sl, #4]
	mul r2, r5, r3
	ldr r3, [fp, #-0x2c]
	add r0, r0, #0x40
	str r0, [r3]
	mov r1, r5
	lsl r3, r7, #0x18
	add r2, r2, r3, asr #24
	add r0, r4, r2, lsl #7
	bl ovxDC_3003624
	ldr r3, [fp, #-0x2c]
	add r0, r0, #0x40
	str r0, [r3, #4]
	mov r0, #0
	b _03003EA8
	.align 2, 0
_03003EA0: .4byte 0x03006684
_03003EA4:
	mvn r0, #0
_03003EA8:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3003EB0
ovxDC_3003EB0: @ 0x03003EB0
	mov ip, sp
	push {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x10
	mov r8, r0
	ldr r3, [r8]
	sub r4, fp, #0x28
	ldr r2, [r8, #4]
	asr r3, r3, #7
	str r3, [fp, #-0x28]
	asr r2, r2, #7
	str r2, [fp, #-0x24]
	mov r0, r4
	bl ovxDC_30048E0
	tst r0, #0xff
	beq _03003F00
	mov r0, r4
	bl ovxDC_3005A60
	cmp r0, #5
	bgt _03003F34
_03003F00:
	mov r0, r4
	bl ovxDC_3004F24
	cmp r0, #0
	mvn r0, #0
	bne _03004170
	mov r0, r4
	bl ovxDC_30048E0
	tst r0, #0xff
	beq _03004134
	mov r0, r4
	bl ovxDC_3005A60
	cmp r0, #5
	ble _03004134
_03003F34:
	ldr r3, _0300413C @ =0x03006684
	ldr r0, [r3]
	ldr r2, [r0, #0x12c]
	add r2, r0, r2
	ldrb r1, [r2, #0x49]
	mov r7, r3
	cmp r1, #0
	movne r3, #0xb
	moveq r3, #0xf
	str r3, [r0, #0x148]
	sub r3, fp, #0x20
	ldmdb r3, {r0, r1}
	mov r2, #1
	sub r3, fp, #0x2c
	bl ovxDC_3005120
	mvn r4, #0
	mov r6, r0
	sub r3, fp, #0x20
	ldmdb r3, {r0, r1}
	mov r2, r4
	sub r3, fp, #0x30
	bl ovxDC_3005120
	mov r5, r0
	cmp r5, r4
	cmpne r6, r4
	beq _03004020
	ldr r3, [r7]
	ldr r0, [r3, #0x1ac]
	rsb r2, r5, r6
	add r0, r0, #1
	rsb r0, r0, r2
	bl ovxDC_3003440
	ldr r3, [r7]
	ldr r2, [r3, #0x1ac]
	mov r4, r0
	sub r3, fp, #0x2c
	ldmda r3, {r0, r3}
	sub r0, r3, r0
	sub r2, r2, #1
	rsb r0, r2, r0
	bl ovxDC_3003440
	cmp r0, #3
	ldrgt r2, [r7]
	ldrgt r3, [r2, #0x148]
	bicgt r3, r3, #1
	strgt r3, [r2, #0x148]
	cmp r4, #3
	ldrgt r2, [r7]
	ldrgt r3, [r2, #0x148]
	bicgt r3, r3, #2
	strgt r3, [r2, #0x148]
	cmp r4, r0
	addlt r3, r6, r5
	subge r2, fp, #0x2c
	ldmdage r2, {r2, r3}
	addge r3, r3, r2
	lsl r3, r3, #6
	add r4, r3, #0x40
	b _03004140
_03004020:
	cmn r6, #1
	beq _030040A8
	ldr r2, [r7]
	ldr r1, [r2, #0x1b8]
	cmp r6, r1
	bgt _0300404C
	lsl r3, r6, #1
	ldr r2, [r2, #0x1ac]
	sub r3, r3, #2
	rsb r3, r2, r3
	b _03004064
_0300404C:
	ldr r0, [fp, #-0x2c]
	add r3, r0, #1
	cmp r3, r1
	bgt _03004134
	ldr r3, [r2, #0x1ac]
	rsb r3, r3, r0, lsl #1
_03004064:
	lsl r3, r3, #6
	add r4, r3, #0x40
	ldr r1, [r7]
	ldr r3, [r1, #0x18c]
	cmp r4, r3
	blt _03004134
	ldr r3, [fp, #-0x2c]
	rsb r3, r3, r6
	cmp r3, #1
	ldrgt r3, [r1, #0x148]
	bicgt r3, r3, #3
	strgt r3, [r1, #0x148]
	bgt _03004140
	ldr r3, [r1, #0x148]
	bic r3, r3, #1
	str r3, [r1, #0x148]
	b _03004140
_030040A8:
	cmn r5, #1
	beq _03004134
	ldr r2, [r7]
	ldr r0, [r2, #0x1b8]
	rsb r3, r5, #0xf5
	cmp r3, r0
	bgt _030040D8
	lsl r3, r5, #1
	ldr r2, [r2, #0x1ac]
	add r3, r3, #2
	add r3, r3, r2
	b _030040F0
_030040D8:
	ldr r1, [fp, #-0x30]
	rsb r3, r1, #0xf6
	cmp r3, r0
	bgt _03004134
	ldr r3, [r2, #0x1ac]
	add r3, r3, r1, lsl #1
_030040F0:
	lsl r3, r3, #6
	add r4, r3, #0x40
	ldr r2, [r7]
	ldr r3, [r2, #0x184]
	cmp r4, r3
	bgt _03004134
	ldr r3, [fp, #-0x30]
	rsb r3, r5, r3
	cmp r3, #1
	ldrgt r3, [r2, #0x148]
	bicgt r3, r3, #3
	strgt r3, [r2, #0x148]
	bgt _03004140
	ldr r3, [r2, #0x148]
	bic r3, r3, #1
	str r3, [r2, #0x148]
	b _03004140
_03004134:
	mvn r0, #0
	b _03004170
	.align 2, 0
_0300413C: .4byte 0x03006684
_03004140:
	ldr ip, [r7]
	ldr r3, [r8, #4]
	ldr r2, [ip, #0x158]
	rsb r3, r3, r4
	mul r0, r2, r3
	ldr r1, [ip, #0x15c]
	bl ovxDC_3003624
	ldr r3, [r8]
	str r4, [r8, #4]
	add r3, r3, r0
	mov r0, #0
	str r3, [r8]
_03004170:
	ldmdb fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3004178
ovxDC_3004178: @ 0x03004178
	mov ip, sp
	push {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0xd8
	mov ip, r0
	mov r4, r2
	lsl r2, r4, #3
	add r0, ip, r2
	mov r6, r1
	eor r4, r4, #1
	lsl r4, r4, #3
	add r1, ip, r4
	add r2, r6, r2
	sub r7, fp, #0xf0
	ldr r5, [fp, #4]
	mov r8, r3
	ands r5, r5, #4
	str r7, [sp]
	moveq ip, #0xa
	movne ip, #0xd
	str ip, [sp, #4]
	add r3, r6, r4
	bl ovxDC_3004298
	cmp r5, #0
	beq _03004204
	mov r1, r7
	ldr r3, _0300423C @ =0x03006684
	mov r2, #0x50
	ldr ip, [r3]
	sub r0, r8, #1
	ldr r3, [ip, #0x13c]
	add r0, r0, r0, lsl #2
	add r0, r3, r0, lsl #5
	bl ovxDC_3004264
	b _0300425C
_03004204:
	ldr r3, _0300423C @ =0x03006684
	ldr ip, [r3]
	ldr r2, [ip, #0x128]
	tst r2, #0x40
	beq _03004240
	mov r1, r7
	mov r2, #0x68
	sub r0, r8, #1
	add r3, r0, r0, lsl #1
	ldr ip, [ip, #0x13c]
	add r0, r0, r3, lsl #2
	add r0, ip, r0, lsl #4
	bl ovxDC_3004264
	b _0300425C
	.align 2, 0
_0300423C: .4byte 0x03006684
_03004240:
	mov r1, r7
	sub r0, r8, #1
	add r3, r0, r0, lsl #1
	ldr r2, [ip, #0x13c]
	add r0, r0, r3, lsl #2
	add r0, r2, r0, lsl #3
	bl ovxDC_30054C4
_0300425C:
	ldmdb fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3004264
ovxDC_3004264: @ 0x03004264
	mov ip, sp
	push {fp, ip, lr, pc}
	lsl r2, r2, #1
	cmp r2, #0
	sub fp, ip, #4
	ldmdble fp, {fp, sp, lr}
	bxle lr
_03004280:
	ldrb r3, [r1], #1
	strb r3, [r0], #1
	subs r2, r2, #1
	bne _03004280
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3004298
ovxDC_3004298: @ 0x03004298
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x58
	mov ip, #2
	str ip, [fp, #-0x44]
	ldr ip, [r1]
	ldr r5, [r0]
	rsb ip, r5, ip
	add lr, ip, ip, lsl #1
	add ip, ip, lr, lsl #2
	add ip, ip, ip, lsl #3
	lsl ip, ip, #3
	add ip, ip, #0x4000
	asr ip, ip, #0xf
	str ip, [fp, #-0x2c]
	add ip, r5, ip, lsl #1
	str ip, [fp, #-0x3c]
	ldr ip, [r1, #4]
	ldr r4, [r0, #4]
	rsb ip, r4, ip
	add r1, ip, ip, lsl #1
	add ip, ip, r1, lsl #2
	add ip, ip, ip, lsl #3
	lsl ip, ip, #3
	add ip, ip, #0x4000
	ldr r0, [r3]
	asr ip, ip, #0xf
	str ip, [fp, #-0x30]
	ldr lr, [r2]
	ldr r7, [fp, #8]
	rsb r0, lr, r0
	add r1, r0, r0, lsl #1
	add r0, r0, r1, lsl #2
	add r0, r0, r0, lsl #3
	lsl r0, r0, #3
	add r0, r0, #0x4000
	ldr r1, [r3, #4]
	asr r0, r0, #0xf
	str r0, [fp, #-0x34]
	add r8, r4, ip, lsl #1
	ldr ip, [r2, #4]
	add r0, lr, r0, lsl #1
	rsb r1, ip, r1
	add r3, r1, r1, lsl #1
	add r1, r1, r3, lsl #2
	add r1, r1, r1, lsl #3
	lsl r1, r1, #3
	add r1, r1, #0x4000
	str r0, [fp, #-0x40]
	asr r1, r1, #0xf
	str r1, [fp, #-0x38]
	str r5, [fp, #-0x74]
	str r4, [fp, #-0x6c]
	str lr, [fp, #-0x78]
	str ip, [fp, #-0x70]
	add sb, ip, r1, lsl #1
	ldr r1, [fp, #-0x2c]
	ldr r2, [fp, #-0x30]
	ldr r3, [fp, #-0x34]
	ldr ip, [fp, #-0x38]
	ldr r0, [fp, #-0x2c]
	lsl r1, r1, #2
	str r1, [fp, #-0x4c]
	lsl r2, r2, #2
	str r2, [fp, #-0x50]
	lsl r3, r3, #2
	str r3, [fp, #-0x54]
	lsl ip, ip, #2
	str ip, [fp, #-0x58]
	ldr r1, [fp, #-0x30]
	lsl r0, r0, #5
	str r0, [fp, #-0x5c]
	lsl r1, r1, #5
	str r1, [fp, #-0x60]
	ldr r2, [fp, #-0x34]
	mov sl, #0
	ldr r3, [fp, #-0x38]
	lsl r2, r2, #5
	str r2, [fp, #-0x64]
	lsl r3, r3, #5
	str r3, [fp, #-0x68]
_030043E0:
	ldr ip, [fp, #-0x40]
	ldr r0, [fp, #-0x3c]
	mov r4, #0x19
	rsb r3, r0, ip
	add r2, r3, r3, lsl #1
	add r3, r3, r2, lsl #2
	add r3, r3, r3, lsl #3
	lsl r3, r3, #3
	add r3, r3, #0x4000
	asr r6, r3, #0xf
	rsb r2, r8, sb
	add r3, r2, r2, lsl #1
	add r2, r2, r3, lsl #2
	add r2, r2, r2, lsl #3
	lsl r2, r2, #3
	add r2, r2, #0x4000
	asr r5, r2, #0xf
	add r3, r0, r6, lsl #2
	add lr, r3, r6
	add r2, r8, r5, lsl #2
	add ip, r2, r5
_03004434:
	asr r2, lr, #7
	asr r3, ip, #7
	subs r7, r7, #1
	ldr r0, _0300476C @ =0x03006684
	add r1, r3, r3, lsl #2
	ldr r3, [r0]
	add r1, r2, r1, lsl #6
	ldr r0, [r3, #0x138]
	and r2, r2, #7
	ldrb r3, [r0, r1, asr #3]
	rsb r2, r2, #7
	asr r3, r3, r2
	and r3, r3, #1
	add sl, sl, r3
	bne _03004488
	ldr r1, [fp, #4]
	strh sl, [r1], #2
	ldr r7, [fp, #8]
	str r1, [fp, #4]
	mov sl, #0
	b _0300448C
_03004488:
	lsl sl, sl, #1
_0300448C:
	add lr, lr, r6
	add ip, ip, r5
	subs r4, r4, #1
	bpl _03004434
	ldr r2, [fp, #-0x3c]
	ldr r3, [fp, #-0x2c]
	ldr ip, [fp, #-0x30]
	ldr r0, [fp, #-0x40]
	ldr r1, [fp, #-0x34]
	add r2, r2, r3
	str r2, [fp, #-0x3c]
	add r0, r0, r1
	str r0, [fp, #-0x40]
	ldr r3, [fp, #-0x44]
	add r8, r8, ip
	ldr r2, [fp, #-0x38]
	subs r3, r3, #1
	str r3, [fp, #-0x44]
	add sb, sb, r2
	bpl _030043E0
	ldr ip, [fp, #-0x74]
	ldr r0, [fp, #-0x4c]
	ldr r1, [fp, #-0x2c]
	add r3, ip, r0
	add r3, r3, r1
	str r3, [fp, #-0x3c]
	ldr r3, [fp, #-0x6c]
	ldr ip, [fp, #-0x50]
	ldr r0, [fp, #-0x30]
	ldr r1, [fp, #-0x78]
	add r2, r3, ip
	add r8, r2, r0
	ldr r2, [fp, #-0x54]
	ldr ip, [fp, #-0x34]
	ldr r0, [fp, #-0x70]
	add r3, r1, r2
	add r3, r3, ip
	str r3, [fp, #-0x40]
	ldr r1, [fp, #-0x58]
	ldr r3, [fp, #-0x38]
	mov ip, #0x19
	str ip, [fp, #-0x44]
	add r2, r0, r1
	add sb, r2, r3
_0300453C:
	sub r0, fp, #0x40
	ldm r0, {r0, r1}
	mov r4, #0x21
	rsb r3, r1, r0
	add r2, r3, r3, lsl #1
	add r3, r3, r2, lsl #2
	add r3, r3, r3, lsl #3
	lsl r3, r3, #3
	add r3, r3, #0x4000
	asr r6, r3, #0xf
	rsb r2, r8, sb
	add r3, r2, r2, lsl #1
	add r2, r2, r3, lsl #2
	add r2, r2, r2, lsl #3
	lsl r2, r2, #3
	add r2, r2, #0x4000
	asr r5, r2, #0xf
	add lr, r1, r6
	add ip, r8, r5
_03004588:
	asr r2, lr, #7
	asr r3, ip, #7
	subs r7, r7, #1
	ldr r0, _0300476C @ =0x03006684
	add r1, r3, r3, lsl #2
	ldr r3, [r0]
	add r1, r2, r1, lsl #6
	ldr r0, [r3, #0x138]
	and r2, r2, #7
	ldrb r3, [r0, r1, asr #3]
	rsb r2, r2, #7
	asr r3, r3, r2
	and r3, r3, #1
	add sl, sl, r3
	bne _030045DC
	ldr r1, [fp, #4]
	strh sl, [r1], #2
	ldr r7, [fp, #8]
	str r1, [fp, #4]
	mov sl, #0
	b _030045E0
_030045DC:
	lsl sl, sl, #1
_030045E0:
	add lr, lr, r6
	add ip, ip, r5
	subs r4, r4, #1
	bpl _03004588
	ldr r2, [fp, #-0x3c]
	ldr r3, [fp, #-0x2c]
	ldr ip, [fp, #-0x30]
	ldr r0, [fp, #-0x40]
	ldr r1, [fp, #-0x34]
	add r2, r2, r3
	str r2, [fp, #-0x3c]
	add r0, r0, r1
	str r0, [fp, #-0x40]
	ldr r3, [fp, #-0x44]
	add r8, r8, ip
	ldr r2, [fp, #-0x38]
	subs r3, r3, #1
	str r3, [fp, #-0x44]
	add sb, sb, r2
	bpl _0300453C
	ldr ip, [fp, #-0x74]
	ldr r0, [fp, #-0x5c]
	ldr r1, [fp, #-0x2c]
	add r3, ip, r0
	rsb r3, r1, r3
	str r3, [fp, #-0x3c]
	ldr r3, [fp, #-0x6c]
	ldr ip, [fp, #-0x60]
	ldr r0, [fp, #-0x30]
	ldr r1, [fp, #-0x78]
	add r2, r3, ip
	rsb r8, r0, r2
	ldr r2, [fp, #-0x64]
	ldr ip, [fp, #-0x34]
	ldr r0, [fp, #-0x70]
	add r3, r1, r2
	rsb r3, ip, r3
	str r3, [fp, #-0x40]
	ldr r1, [fp, #-0x68]
	ldr r3, [fp, #-0x38]
	mov ip, #0x1f
	str ip, [fp, #-0x44]
	add r2, r0, r1
	rsb sb, r3, r2
_03004690:
	sub r0, fp, #0x40
	ldm r0, {r0, r1}
	rsb r3, r1, r0
	add r2, r3, r3, lsl #1
	add r3, r3, r2, lsl #2
	add r3, r3, r3, lsl #3
	lsl r3, r3, #3
	add r3, r3, #0x4000
	asr r6, r3, #0xf
	rsb r2, r8, sb
	add r3, r2, r2, lsl #1
	add r2, r2, r3, lsl #2
	add r2, r2, r2, lsl #3
	lsl r2, r2, #3
	add r2, r2, #0x4000
	asr r5, r2, #0xf
	add r3, r1, r6, lsl #2
	add r2, r8, r5, lsl #2
	add ip, r2, r5
	ldr r2, [fp, #-0x2c]
	add lr, r3, r6
	ldr r3, [fp, #-0x30]
	add r2, r1, r2
	str r2, [fp, #-0x7c]
	ldr r1, [fp, #-0x34]
	mov r4, #0x19
	ldr r2, [fp, #-0x38]
	add r8, r8, r3
	ldr r3, [fp, #-0x44]
	add r0, r0, r1
	add sb, sb, r2
	str r0, [fp, #-0x80]
	add r3, r3, #1
	str r3, [fp, #-0x48]
_03004718:
	asr r2, lr, #7
	asr r3, ip, #7
	subs r7, r7, #1
	ldr r0, _0300476C @ =0x03006684
	add r1, r3, r3, lsl #2
	ldr r3, [r0]
	add r1, r2, r1, lsl #6
	ldr r0, [r3, #0x138]
	and r2, r2, #7
	ldrb r3, [r0, r1, asr #3]
	rsb r2, r2, #7
	asr r3, r3, r2
	and r3, r3, #1
	add sl, sl, r3
	bne _03004770
	ldr r1, [fp, #4]
	strh sl, [r1], #2
	ldr r7, [fp, #8]
	str r1, [fp, #4]
	mov sl, #0
	b _03004774
	.align 2, 0
_0300476C: .4byte 0x03006684
_03004770:
	lsl sl, sl, #1
_03004774:
	add lr, lr, r6
	add ip, ip, r5
	subs r4, r4, #1
	bpl _03004718
	ldr r2, [fp, #-0x7c]
	ldr r3, [fp, #-0x80]
	ldr ip, [fp, #-0x48]
	str r2, [fp, #-0x3c]
	str ip, [fp, #-0x44]
	str r3, [fp, #-0x40]
	cmp ip, #0x21
	ble _03004690
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_30047AC
ovxDC_30047AC: @ 0x030047AC
	mov ip, sp
	push {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	mov r5, r0
	ldr ip, _03004888 @ =0x03006684
	mov r8, #0
	ldr r2, [ip]
	mov r6, r1
	ldr r3, [r2, #0x144]
	mov r7, ip
	cmp r3, r8
	movne sl, r3
	moveq sl, r5
	cmp r5, r8
	ble _03004878
	cmp r6, r8
	ble _03004890
	rsb r4, r6, r5
	mov r0, r4
	bl ovxDC_3003440
	cmp r0, #1
	bgt _03004858
	ldr r2, [r7]
	ldrb r3, [r2, #0x47]
	and r3, r3, #0xcf
	strb r3, [r2, #0x47]
	mov r0, r4
	bl ovxDC_3003440
	ldr r2, [r7]
	ldrb r3, [r2, #0x47]
	orr r3, r3, r0, lsl #4
	strb r3, [r2, #0x47]
	ldr r1, [r7]
	ldrb r3, [r1, #0x47]
	orr r3, r3, #0x40
	strb r3, [r1, #0x47]
	ldr r0, [r7]
	ldrb r3, [r0, #0x47]
	orr r3, r3, #0x80
	strb r3, [r0, #0x47]
	ldr r2, [r7]
	str r5, [r2, #0x144]
	b _030048D4
_03004858:
	rsb r0, sl, r6
	bl ovxDC_3003440
	mov r4, r0
	rsb r0, sl, r5
	bl ovxDC_3003440
	cmp r4, r0
	movlt r8, #1
	b _03004890
_03004878:
	cmp r6, #0
	bgt _0300488C
	mov r0, r8
	b _030048D8
	.align 2, 0
_03004888: .4byte 0x03006684
_0300488C:
	mov r8, #1
_03004890:
	lsls r8, r8, #0x18
	beq _030048B0
	ldr r3, [r7]
	ldrb r3, [r3, #0x47]
	ands r0, r3, #0x40
	beq _030048D8
	and r3, r3, #0x30
	sub r5, r6, r3, lsr #4
_030048B0:
	ldr r2, [r7]
	ldrb r3, [r2, #0x47]
	and r3, r3, #0x7f
	strb r3, [r2, #0x47]
	rsb r0, sl, r5
	bl ovxDC_3003440
	cmp r0, #7
	ldrle r3, [r7]
	strle r5, [r3, #0x144]
_030048D4:
	mov r0, r5
_030048D8:
	ldmdb fp, {r4, r5, r6, r7, r8, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_30048E0
ovxDC_30048E0: @ 0x030048E0
	mov ip, sp
	push {fp, ip, lr, pc}
	ldr r1, _0300496C @ =0x03006684
	ldr r2, [r0]
	sub fp, ip, #4
	ldr r3, [r0, #4]
	and ip, r2, #7
	cmp ip, #3
	add r3, r3, r3, lsl #2
	ldr r0, [r1]
	add r2, r2, r3, lsl #6
	ldr r1, [r0, #0x138]
	asr r2, r2, #3
	add r0, r2, r1
	bgt _0300493C
	ldrb r3, [r0, #-1]
	ldrb r2, [r2, r1]
	orr r2, r2, r3, lsl #8
	rsb r1, ip, #4
	asr r0, r2, r1
	and r0, r0, #0xff
	ldmdb fp, {fp, sp, lr}
	bx lr
_0300493C:
	cmp ip, #4
	ldrble r0, [r2, r1]
	ldmdble fp, {fp, sp, lr}
	bxle lr
	ldrb r3, [r2, r1]
	ldrb r2, [r0, #1]
	rsb r1, ip, #0xc
	orr r2, r2, r3, lsl #8
	asr r0, r2, r1
	and r0, r0, #0xff
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_0300496C: .4byte 0x03006684

	arm_func_start ovxDC_3004970
ovxDC_3004970: @ 0x03004970
	mov ip, sp
	push {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0xc
	mov r6, r0
	mov sl, r1
	mov r4, r2
	ldrb r8, [fp, #4]
	mov r7, r3
	sub r5, fp, #0x2c
	b _030049CC
_0300499C:
	cmp r8, #0
	beq _030049C0
	ldr r3, [r6]
	ldr r2, [r5, #4]
	asr r3, r3, #2
	str r3, [r4]
	sub r2, r2, #1
	str r2, [r4, #4]
	b _030049CC
_030049C0:
	ldr r3, [r4]
	add r3, r3, #1
	str r3, [r4]
_030049CC:
	mov r0, r6
	mov r1, sl
	mov r2, r4
	mov r3, r5
	bl ovxDC_3005BB4
	cmp r0, #0
	bne _03004A30
	mov r0, r5
	sub r1, fp, #0x30
	bl ovxDC_3005248
	cmp r0, #0
	bne _0300499C
	mov r0, r5
	ldr r2, [fp, #-0x30]
	mov r1, r7
	bl ovxDC_300363C
	cmp r0, #0
	bne _0300499C
	ldr r3, [r6]
	ldr r2, [fp, #-0x28]
	asr r3, r3, #2
	str r3, [r4]
	sub r2, r2, #1
	str r2, [r4, #4]
	b _03004A34
_03004A30:
	mvn r0, #0
_03004A34:
	ldmdb fp, {r4, r5, r6, r7, r8, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3004A3C
ovxDC_3004A3C: @ 0x03004A3C
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x6c
	str r0, [fp, #-0x84]
	ldr ip, _03004D5C @ =0x03006684
	ldr r1, [r0]
	ldr r2, [ip]
	ldr r0, [r0, #4]
	asr r6, r1, #7
	ldr r3, [r2, #0x198]
	asr r7, r0, #7
	subs r3, r7, r3
	bpl _03004A88
	mov r3, #0
	str r3, [fp, #-0x6c]
	sub r1, fp, #0x70
	str r1, [fp, #-0x90]
	b _03004A94
_03004A88:
	sub r2, fp, #0x70
	str r2, [fp, #-0x90]
	str r3, [fp, #-0x6c]
_03004A94:
	ldr ip, _03004D5C @ =0x03006684
	ldr r3, [ip]
	ldr r2, [r3, #0x198]
	add r2, r2, r7
	cmp r2, #0xf5
	movgt r3, #0xf5
	strgt r3, [fp, #-0x74]
	subgt sl, fp, #0x78
	suble sl, fp, #0x78
	strle r2, [fp, #-0x74]
	ldr r1, _03004D5C @ =0x03006684
	ldr r2, [r1]
	mov r3, #0
	str r3, [fp, #-0x8c]
	ldr ip, [fp, #-0x8c]
	ldr r3, [r2, #0x190]
	str ip, [fp, #-0x88]
	rsb r3, r3, r6
	str r3, [fp, #-0x78]
	cmp r3, #0
	ble _03004B5C
	ldr r3, [r2, #0x194]
	subs r3, r6, r3
	movmi r1, ip
	strmi r1, [fp, #-0x70]
	strpl r3, [fp, #-0x70]
	ldr r3, [fp, #-0x70]
	asr r3, r3, #2
	str r3, [fp, #-0x80]
	ldr r3, [fp, #-0x88]
	sub r2, fp, #0x48
	add r8, r2, r3, lsl #3
	ldr r3, [sl, #4]
	sub sb, fp, #0x80
	str r3, [fp, #-0x7c]
_03004B20:
	mov r1, sl
	mov r2, sb
	ldr r0, [fp, #-0x90]
	mov ip, #1
	str ip, [sp]
	mov r3, r8
	bl ovxDC_3004970
	cmp r0, #0
	bne _03004B5C
	ldr r1, [fp, #-0x88]
	add r8, r8, #8
	add r1, r1, #1
	str r1, [fp, #-0x88]
	cmp r1, #3
	ble _03004B20
_03004B5C:
	ldr r2, _03004D5C @ =0x03006684
	ldr r1, [r2]
	mov r2, #0x13c
	ldr r3, [r1, #0x190]
	add r2, r2, #3
	add r3, r3, r6
	str r3, [fp, #-0x70]
	cmp r3, r2
	bgt _03004BF4
	ldr r3, [r1, #0x194]
	add r0, r3, r6
	cmp r0, r2
	strgt r2, [fp, #-0x78]
	strle r0, [fp, #-0x78]
	ldr r3, [fp, #-0x70]
	asr r3, r3, #2
	str r3, [fp, #-0x80]
	sub sb, fp, #0x80
	ldr r3, [fp, #-0x8c]
	sub r2, fp, #0x68
	add r6, r2, r3, lsl #3
	ldr r3, [sl, #4]
	mov r7, #1
	str r3, [fp, #-0x7c]
_03004BBC:
	mov r1, sl
	ldr r0, [fp, #-0x90]
	mov r2, sb
	str r7, [sp]
	mov r3, r6
	bl ovxDC_3004970
	cmp r0, #0
	bne _03004BF4
	ldr ip, [fp, #-0x8c]
	add r6, r6, #8
	add ip, ip, #1
	str ip, [fp, #-0x8c]
	cmp ip, #3
	ble _03004BBC
_03004BF4:
	sub r1, fp, #0x8c
	ldm r1, {r1, r2}
	cmp r1, #0
	movle r3, #0
	movgt r3, #1
	cmp r2, #0
	movgt r0, r3
	movle r0, #0
	cmp r0, #0
	beq _03004CDC
	mov r8, #0
	cmp r8, r2
	bge _03004D28
_03004C28:
	ldr r3, [fp, #-0x8c]
	mov r6, #0
	cmp r6, r3
	bge _03004CC8
	lsl r7, r8, #3
	sub sl, fp, #0x48
	sub sb, fp, #0x44
_03004C44:
	lsl ip, r6, #3
	ldr r0, [sl, r7]
	sub r3, fp, #0x68
	ldr r2, [r3, ip]
	ldr r1, [sb, r7]
	add r0, r0, r2
	sub r3, fp, #0x64
	ldr r2, [r3, ip]
	asr r4, r0, #1
	ldr ip, [fp, #-0x84]
	add r1, r1, r2
	ldr r0, [ip]
	asr r5, r1, #1
	rsb r0, r4, r0
	bl ovxDC_3003440
	ldr r1, _03004D5C @ =0x03006684
	ldr r3, [r1]
	ldr r2, [r3, #0x178]
	cmp r0, r2
	bge _03004CB8
	ldr r2, [fp, #-0x84]
	ldr r0, [r2, #4]
	rsb r0, r5, r0
	bl ovxDC_3003440
	ldr r3, _03004D5C @ =0x03006684
	ldr ip, [r3]
	ldr r3, [ip, #0x17c]
	cmp r0, r3
	blt _03004D30
_03004CB8:
	ldr ip, [fp, #-0x8c]
	add r6, r6, #1
	cmp r6, ip
	blt _03004C44
_03004CC8:
	ldr r1, [fp, #-0x88]
	add r8, r8, #1
	cmp r8, r1
	blt _03004C28
	b _03004D28
_03004CDC:
	ldr r2, [fp, #-0x88]
	cmp r2, #1
	bne _03004D1C
	ldr r3, [fp, #-0x84]
	ldr ip, _03004D5C @ =0x03006684
	ldr r2, [r3]
	ldr r3, [fp, #-0x48]
	ldr r1, [ip]
	rsb r2, r3, r2
	str r2, [r1, #0x150]
	ldr r2, [fp, #-0x84]
	ldr r3, [r2, #4]
	ldr r2, [fp, #-0x44]
	rsb r3, r2, r3
	str r3, [r1, #0x154]
	b _03004D90
_03004D1C:
	ldr r3, [fp, #-0x8c]
	cmp r3, #1
	beq _03004D60
_03004D28:
	mvn r0, #0
	b _03004D90
_03004D30:
	ldr r1, [fp, #-0x84]
	ldr r2, [sl, r7]
	ldr r3, [r1]
	rsb r3, r2, r3
	str r3, [ip, #0x150]
	ldr r2, [r1, #4]
	ldr r3, [sb, r7]
	rsb r2, r3, r2
	str r2, [ip, #0x154]
	mov r0, #0
	b _03004D90
	.align 2, 0
_03004D5C: .4byte 0x03006684
_03004D60:
	ldr ip, [fp, #-0x84]
	ldr r3, [fp, #-0x68]
	ldr r2, [ip]
	ldr ip, _03004D94 @ =0x03006684
	ldr r1, [ip]
	rsb r3, r2, r3
	str r3, [r1, #0x150]
	ldr ip, [fp, #-0x84]
	ldr r2, [fp, #-0x64]
	ldr r3, [ip, #4]
	rsb r2, r3, r2
	str r2, [r1, #0x154]
_03004D90:
	b _03004D98
	.align 2, 0
_03004D94: .4byte 0x03006684
_03004D98:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3004DA0
ovxDC_3004DA0: @ 0x03004DA0
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	ldr r2, _03004F04 @ =0x03006684
	sub fp, ip, #4
	mov ip, r0
	ldr lr, [r2]
	and r5, ip, #0xff
	ldrb r1, [lr, #0x47]
	mov r4, r2
	and r3, r1, #0xf
	cmp r3, #6
	bhi _03004EE8
	add r2, r1, #1
	and r3, ip, #8
	lsl r3, r3, #0xa
	strb r2, [lr, #0x47]
	and r1, ip, #1
	ldrh r2, [lr, #0x44]
	and r0, ip, #2
	add r2, r2, r3
	add r2, r2, r1, lsl #4
	and r3, ip, #4
	lsl r3, r3, #8
	orr r3, r3, r0, lsl #6
	add r2, r2, r3
	strh r2, [lr, #0x44]
	ldr lr, [r4]
	ldrb r3, [lr, #0x47]
	and r3, r3, #0xf
	cmp r3, #3
	bne _03004E78
	ldrh r3, [lr, #0x44]
	bic ip, r3, #0xf
	lsl ip, ip, #0x10
	lsr ip, ip, #0x10
	and r2, r3, #0x4000
	cmp r2, #0
	movne r2, #8
	moveq r2, #0
	and r0, r3, #0x20
	cmp r0, #0
	orrne r2, r2, #1
	and r1, r3, #0x100
	cmp r1, #0
	movne r1, #2
	moveq r1, #0
	and r3, r3, #0x800
	cmp r3, #0
	movne r3, #4
	moveq r3, #0
	add r1, r1, r3
	add r2, r2, r1
	orr ip, ip, r2
	strh ip, [lr, #0x44]
_03004E78:
	ldr lr, [r4]
	ldrb r3, [lr, #0x47]
	and r3, r3, #0xf
	cmp r3, #7
	bne _03004EE8
	ldrh r3, [lr, #0x44]
	bic ip, r3, #0xf
	lsl ip, ip, #0x10
	lsr ip, ip, #0x10
	and r2, r3, #0x8000
	cmp r2, #0
	movne r2, #8
	moveq r2, #0
	and r0, r3, #0x40
	cmp r0, #0
	orrne r2, r2, #1
	and r1, r3, #0x200
	cmp r1, #0
	movne r1, #2
	moveq r1, #0
	and r3, r3, #0x1000
	cmp r3, #0
	movne r3, #4
	moveq r3, #0
	add r1, r1, r3
	add r2, r2, r1
	orr ip, ip, r2
	strh ip, [lr, #0x44]
_03004EE8:
	ldr r2, [r4]
	ldrb r3, [r2, #0x47]
	and r3, r3, #0xf
	cmp r3, #2
	bhi _03004F08
	mov r0, #0
	b _03004F1C
	.align 2, 0
_03004F04: .4byte 0x03006684
_03004F08:
	ldrb r3, [r2, #0x44]
	and r3, r3, #0xf
	cmp r5, r3
	moveq r0, #0
	mvnne r0, #0
_03004F1C:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3004F24
ovxDC_3004F24: @ 0x03004F24
	mov ip, sp
	push {r4, r5, r6, r7, fp, ip, lr, pc}
	sub fp, ip, #4
	mov r4, #0
	mov r5, r0
	ldr r6, [r5, #4]
_03004F3C:
	ldr r3, [r5, #4]
	sub r2, r3, #1
	sub r3, r6, #3
	str r2, [r5, #4]
	cmp r2, r3
	blt _03004F70
	cmp r2, #0
	blt _03004F70
	mov r0, r5
	bl ovxDC_30048E0
	tst r0, #0xff
	subne r4, r4, #1
	b _03004F3C
_03004F70:
	add r7, r6, #3
	str r6, [r5, #4]
_03004F78:
	ldr r3, [r5, #4]
	add r3, r3, #1
	str r3, [r5, #4]
	cmp r3, r7
	bgt _03004FA8
	cmp r3, #0xf5
	bgt _03004FA8
	mov r0, r5
	bl ovxDC_30048E0
	tst r0, #0xff
	addne r4, r4, #1
	b _03004F78
_03004FA8:
	cmp r4, #0
	beq _03004FF4
	ble _03005000
	ldr r4, _03004FFC @ =0x03006684
	ldr r3, [r4]
	ldr r1, [r3, #0x1ac]
	ldr r2, [r3, #0x158]
	mul r0, r2, r1
	ldr r1, [r3, #0x15c]
	bl ovxDC_3003624
	ldr r3, [r5]
	add r3, r3, r0, asr #1
	str r3, [r5]
	ldr r2, [r4]
	ldr r3, [r2, #0x1ac]
	add r3, r6, r3, asr #1
	str r3, [r5, #4]
	cmp r3, #0xf5
	ble _03005044
_03004FF4:
	mvn r0, #0
	b _03005048
	.align 2, 0
_03004FFC: .4byte 0x03006684
_03005000:
	ldr r4, _0300504C @ =0x03006684
	ldr r3, [r4]
	ldr r1, [r3, #0x1ac]
	ldr r2, [r3, #0x158]
	mul r0, r2, r1
	ldr r1, [r3, #0x15c]
	bl ovxDC_3003624
	ldr r3, [r5]
	sub r3, r3, r0, asr #1
	str r3, [r5]
	ldr r2, [r4]
	ldr r3, [r2, #0x1ac]
	mvn r0, #0
	sub r3, r6, r3, asr #1
	str r3, [r5, #4]
	cmp r3, #0
	blt _03005048
_03005044:
	mov r0, #0
_03005048:
	b _03005050
	.align 2, 0
_0300504C: .4byte 0x03006684
_03005050:
	ldmdb fp, {r4, r5, r6, r7, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3005058
ovxDC_3005058: @ 0x03005058
	mov ip, sp
	push {fp, ip, lr, pc}
	ldr lr, _0300511C @ =0x03006684
	ldr r2, [lr]
	mvn r3, #3
	str r0, [r2, #0x1a8]
	sub fp, ip, #4
	str r3, [r2, #0x1c8]
	mov ip, #0x10
	str ip, [r2, #0x1ac]
	mov r1, #0x15
	str r1, [r2, #0x1b8]
	add r3, r3, #0xf
	str r3, [r2, #0x1b4]
	mov r0, #0xc
	str r0, [r2, #0x1b0]
	add r3, r3, #9
	str r3, [r2, #0x1bc]
	str r0, [r2, #0x1a0]
	sub r3, r3, #0xd
	str r3, [r2, #0x1a4]
	sub r1, r1, #0xf
	str r1, [r2, #0x1c4]
	add r3, r3, #0x59
	str r3, [r2, #0x168]
	add r1, r1, #0x32
	str r1, [r2, #0x16c]
	add r3, r3, #0x80
	str r3, [r2, #0x170]
	add r1, r1, #0x86
	str r1, [r2, #0x174]
	sub r3, r3, #0x98
	str r3, [r2, #0x190]
	sub r1, r1, #0x44
	str r1, [r2, #0x194]
	sub r3, r3, #0x3b
	str r3, [r2, #0x198]
	mov r1, #0x19c
	strb ip, [r2, r1]
	mov r3, #0x3e4
	ldr r2, [lr]
	add r3, r3, #1
	str r3, [r2, #0x178]
	str r3, [r2, #0x17c]
	add r1, r1, #1
	mov r3, #0
	strb r3, [r2, r1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_0300511C: .4byte 0x03006684

	arm_func_start ovxDC_3005120
ovxDC_3005120: @ 0x03005120
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #8
	sub ip, fp, #0x30
	stm ip, {r0, r1}
	mov r6, r3
	subs r7, r2, #0
	mvn r1, #0
	str r1, [r6]
	mov sb, r1
	ble _03005174
	ldr r2, _0300523C @ =0x03006684
	ldr r3, [r2]
	ldr r1, [r3, #0x1b8]
	ldr r3, [fp, #-0x2c]
	mov sl, ip
	add r5, r1, r3
	cmp r5, #0xf5
	movge r5, #0xf5
	b _03005190
_03005174:
	ldr r1, _0300523C @ =0x03006684
	ldr r3, [r1]
	ldr r2, [r3, #0x1b8]
	ldr r3, [fp, #-0x2c]
	sub sl, fp, #0x30
	subs r5, r3, r2
	movmi r5, #0
_03005190:
	mov r8, #4
	mov r4, sl
_03005198:
	ldr r3, [r4, r8]
	cmp r3, r5
	bne _030051D0
	ldr r0, [r6]
	cmn r0, #1
	beq _03005240
	ldr r2, _0300523C @ =0x03006684
	ldr r3, [r2]
	ldr r2, [r3, #0x148]
	bic r2, r2, #2
	str r2, [r3, #0x148]
	ldr r0, [r6]
	add r0, r0, r7
	b _03005240
_030051D0:
	add r3, r7, r3
	str r3, [sl, #4]
	mov r0, sl
	bl ovxDC_30048E0
	and r0, r0, #0xff
	cmp r0, #0xff
	beq _03005198
	cmp r0, #0
	bne _03005214
	ldr r3, [r6]
	ldr r0, [r4, r8]
	cmn r3, #1
	bne _03005240
	rsb r3, r7, r0
	str r3, [r6]
	ldr r0, [r4, r8]
	b _03005240
_03005214:
	ldr r3, [r6]
	cmn r3, #1
	bne _03005198
	ldr r2, [r4, r8]
	add r3, sb, r7
	cmp r2, r3
	streq sb, [r6]
	beq _03005198
	mov sb, r2
	b _03005198
	.align 2, 0
_0300523C: .4byte 0x03006684
_03005240:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3005248
ovxDC_3005248: @ 0x03005248
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x14
	ldr ip, _030054B4 @ =0x03006684
	ldr r2, [ip]
	mov r3, #2
	str r3, [r2, #0x1a8]
	str r0, [fp, #-0x2c]
	ldr r3, [r0]
	mov sb, ip
	and r3, r3, #7
	mov r4, r3
	str r1, [fp, #-0x30]
	cmp r4, #3
	bgt _030052A4
	mvn r1, #0
	str r1, [fp, #-0x34]
	b _030052B4
_03005294:
	mov r8, r5
	b _03005394
_0300529C:
	mov r0, r5
	b _03005474
_030052A4:
	cmp r3, #4
	movle r3, #0
	movgt r3, #1
	str r3, [fp, #-0x34]
_030052B4:
	ldr ip, [sb]
	ldr r2, [fp, #-0x2c]
	ldr r3, [fp, #-0x2c]
	mvn r6, #0
	ldr r1, [r2, #4]
	mov sl, r6
	ldr r0, [r3]
	mov r7, #0
	ldr r2, [ip, #0x1ac]
	mov r5, r1
	ldr r3, [ip, #0x138]
	subs lr, r1, r2
	movmi lr, r7
	add r3, r3, r0, asr #3
	add r2, r5, r1, lsl #2
	add ip, r3, r2, lsl #3
	str r0, [fp, #-0x38]
	str r1, [fp, #-0x3c]
	b _03005380
_03005300:
	sub r5, r5, #1
	ldr r1, [fp, #-0x34]
	sub ip, ip, #0x28
	cmp r1, #0
	ldrblt r3, [ip, #-1]
	ldrblt r2, [ip]
	rsblt r1, r4, #4
	blt _03005330
	ble _03005340
	ldrb r3, [ip]
	ldrb r2, [ip, #1]
	rsb r1, r4, #0xc
_03005330:
	orr r2, r2, r3, lsl #8
	asr r2, r2, r1
	and r2, r2, #0xff
	b _03005344
_03005340:
	ldrb r2, [ip]
_03005344:
	cmp r2, #0xff
	beq _03005380
	cmp r2, #0
	beq _03005294
	ldr r3, [sb]
	ldr r2, [r3, #0x1c4]
	cmp r7, r2
	bgt _03005390
	add r7, r7, #1
	cmn r6, #1
	bne _03005380
	sub r3, sl, #1
	cmp r5, r3
	moveq r6, r3
	movne sl, r5
_03005380:
	cmp r5, lr
	bne _03005300
	cmn r6, #1
	beq _030054B8
_03005390:
	sub r8, r6, #1
_03005394:
	ldr r0, [sb]
	mvn r6, #0
	ldr r3, [fp, #-0x2c]
	mov sl, r6
	ldr r2, [r3, #4]
	mov r7, #0
	ldr r1, [r0, #0x1ac]
	mov r5, r2
	ldr r3, [fp, #-0x3c]
	add r2, r5, r2, lsl #2
	add lr, r3, r1
	ldr r3, [r0, #0x138]
	cmp lr, #0xf5
	movge lr, #0xf5
	ldr r1, [fp, #-0x38]
	cmp r5, lr
	add r3, r3, r1, asr #3
	add ip, r3, r2, lsl #3
	beq _030054B8
_030053E0:
	add r5, r5, #1
	ldr r2, [fp, #-0x34]
	add ip, ip, #0x28
	cmp r2, #0
	ldrblt r3, [ip, #-1]
	ldrblt r2, [ip]
	rsblt r1, r4, #4
	blt _03005410
	ble _03005420
	ldrb r3, [ip]
	ldrb r2, [ip, #1]
	rsb r1, r4, #0xc
_03005410:
	orr r2, r2, r3, lsl #8
	asr r2, r2, r1
	and r2, r2, #0xff
	b _03005424
_03005420:
	ldrb r2, [ip]
_03005424:
	cmp r2, #0xff
	beq _03005460
	cmp r2, #0
	beq _0300529C
	ldr r3, [sb]
	ldr r2, [r3, #0x1c4]
	cmp r7, r2
	bgt _03005470
	add r7, r7, #1
	cmn r6, #1
	bne _03005460
	add r3, sl, #1
	cmp r5, r3
	moveq r6, r3
	movne sl, r5
_03005460:
	cmp r5, lr
	bne _030053E0
	cmn r6, #1
	beq _030054B8
_03005470:
	add r0, r6, #1
_03005474:
	rsb r3, r8, r0
	sub r0, r3, #1
	ldr r3, [fp, #-0x30]
	str r0, [r3]
	ldr ip, [sb]
	ldr r3, [ip, #0x1b0]
	cmp r0, r3
	blt _030054B8
	ldr r3, [ip, #0x1b8]
	cmp r0, r3
	bgt _030054B8
	ldr r1, [fp, #-0x2c]
	add r3, r8, #1
	str r3, [r1, #4]
	mov r0, #0
	b _030054BC
	.align 2, 0
_030054B4: .4byte 0x03006684
_030054B8:
	mvn r0, #0
_030054BC:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_30054C4
ovxDC_30054C4: @ 0x030054C4
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	mov ip, #0x67
	ldr lr, _030054F4 @ =0x03006214
_030054D8:
	ldrh r3, [r1], #2
	ldrb r2, [lr, r3]
	strb r2, [r0], #1
	subs ip, ip, #1
	bpl _030054D8
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030054F4: .4byte 0x03006214

	arm_func_start ovxDC_30054F8
ovxDC_30054F8: @ 0x030054F8
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	mov r2, #0xf
	sub fp, ip, #4
	sub sp, sp, #0x10
	str r1, [fp, #-0x30]
	mov r6, r0
	ldr sb, _030055F8 @ =0x03006654
	sub r7, fp, #0x2c
	ldr r8, _030055FC @ =0x03006634
_03005520:
	ldrb r3, [r6, r2]
	cmp r3, #0
	movne r3, #0
	moveq r3, #1
	strb r3, [r6, r2]
	add r2, r2, #1
	cmp r2, #0x18
	ble _03005520
	mov r0, sb
	add r5, r6, #1
	mov r1, r5
	mov r4, #2
	str r4, [sp]
	mov r2, r7
	str r8, [sp, #4]
	mov r3, #0x18
	bl ovxDC_3005900
	mov r0, r7
	ldr r3, _03005600 @ =0x03006614
	mov r1, r5
	str r3, [sp]
	mov r2, #0x18
	str r8, [sp, #4]
	mov r3, r4
	bl ovxDC_300563C
	mov sl, r0
	mov r0, sb
	mov r1, r5
	str r4, [sp]
	mov r2, r7
	str r8, [sp, #4]
	mov r3, #0x18
	bl ovxDC_3005900
	ldrb r3, [fp, #-0x2c]
	cmp r3, #0x1f
	bne _03005604
	ldrb r3, [fp, #-0x2b]
	cmp r3, #0x1f
	bne _03005604
	mov r1, #0
	mov r2, #1
_030055C4:
	ldrb r3, [r6, r2]
	lsl r1, r1, #1
	cmp r3, #0
	orrne r1, r1, #1
	add r2, r2, #1
	cmp r2, #0xe
	ble _030055C4
	cmp sl, #3
	beq _03005604
	ldr r3, [fp, #-0x30]
	str r1, [r3]
	mov r0, #1
	b _03005608
	.align 2, 0
_030055F8: .4byte 0x03006654
_030055FC: .4byte 0x03006634
_03005600: .4byte 0x03006614
_03005604:
	mvn r0, #0
_03005608:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3005610
ovxDC_3005610: @ 0x03005610
	mov ip, sp
	push {fp, ip, lr, pc}
	and r2, r2, #0xff
	sub fp, ip, #4
	ldrb ip, [r0, r2]
	and r3, r3, #0xff
	ldrb r2, [r0, r3]
	eor r2, r2, ip
	ldrb r0, [r1, r2]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovxDC_300563C
ovxDC_300563C: @ 0x0300563C
	mov ip, sp
	push {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #4
	mov r5, r3
	mov ip, #0
	mov lr, ip
	cmp ip, r5
	mov r4, r0
	mov r7, r1
	ldr r8, [fp, #4]
	mov r6, r2
	bge _03005688
_03005670:
	ldrb r3, [r4, ip]
	cmp r3, #0x1f
	addeq lr, lr, #1
	add ip, ip, #1
	cmp ip, r5
	blt _03005670
_03005688:
	cmp lr, r5
	moveq r0, #0
	beq _0300576C
	ldrb r3, [r4]
	cmp r3, #0x1f
	beq _03005728
	mov r0, r3
	mov r1, #3
	bl ovxDC_3005A1C
	ldrb r3, [r4, #1]
	and r0, r0, #0xff
	cmp r0, r3
	ldrbeq r3, [r4]
	strbeq r3, [fp, #-0x24]
	moveq r5, #1
	beq _03005730
	ldrb r0, [r4]
	mov r1, #3
	bl ovxDC_3005A1C
	mov r2, r0
	ldr r1, [fp, #8]
	mov r0, r8
	ldrb r3, [r4, #1]
	and r2, r2, #0xff
	bl ovxDC_3005610
	ldrb r1, [r4]
	and r0, r0, #0xff
	bl ovxDC_300598C
	strb r0, [fp, #-0x24]
	mov r3, #0
	strb r3, [fp, #-0x22]
	sub r1, fp, #0x24
	ldrb r0, [r4]
	mov r2, r6
	strb r0, [fp, #-0x23]
	mov r3, r5
	mov r0, r8
	bl ovxDC_30057BC
	cmn r0, #1
	bne _03005730
_03005728:
	mov r0, #3
	b _0300576C
_03005730:
	mov ip, #0
	cmp ip, r5
	bge _03005768
	sub r0, fp, #0x24
	mvn r1, #0
_03005744:
	ldrb r2, [r0, ip]
	rsb r2, r2, r6
	add r2, r2, r7
	ldrb r3, [r2, r1]
	add ip, ip, #1
	eor r3, r3, #1
	strb r3, [r2, r1]
	cmp ip, r5
	blt _03005744
_03005768:
	mov r0, #1
_0300576C:
	ldmdb fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3005774
ovxDC_3005774: @ 0x03005774
	mov ip, sp
	push {fp, ip, lr, pc}
	and r3, r0, #0xff
	and r0, r1, #0xff
	cmp r0, #0x1f
	cmpne r3, #0x1f
	sub fp, ip, #4
	beq _030057B0
	add r0, r3, r0
	sub r3, r0, #0x1f
	cmp r0, #0x1e
	movhi r0, r3
	and r0, r0, #0xff
	ldmdb fp, {fp, sp, lr}
	bx lr
_030057B0:
	mov r0, #0x1f
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovxDC_30057BC
ovxDC_30057BC: @ 0x030057BC
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub r2, r2, #1
	sub fp, ip, #4
	sub sp, sp, #0x1c
	mov ip, #0
	mov sl, #1
	str ip, [fp, #-0x38]
	mov sb, r3
	str r2, [fp, #-0x34]
	cmp sl, sb
	str r0, [fp, #-0x30]
	mov ip, r1
	bgt _030058C4
	sub r1, fp, #0x2c
	str r1, [fp, #-0x3c]
_030057FC:
	ldr r8, [fp, #-0x34]
	add r2, sl, #1
	str r2, [fp, #-0x40]
	cmp r8, #0
	blt _030058A0
_03005810:
	ldrb r3, [ip]
	mov r5, #1
	ldr r1, [fp, #-0x30]
	cmp r5, sb
	ldrb r6, [r1, r3]
	sub r7, r8, #1
	bgt _03005870
_0300582C:
	ldrb r4, [ip, r5]
	and r0, r8, #0xff
	str ip, [fp, #-0x44]
	mov r1, r5
	bl ovxDC_3005A1C
	mov r1, r0
	mov r0, r4
	and r1, r1, #0xff
	bl ovxDC_3005774
	add r5, r5, #1
	ldr r2, [fp, #-0x30]
	and r0, r0, #0xff
	ldrb r3, [r2, r0]
	cmp r5, sb
	ldr ip, [fp, #-0x44]
	eor r6, r3, r6
	ble _0300582C
_03005870:
	cmp r6, #0
	bne _03005898
	ldr r3, [fp, #-0x38]
	add r3, r3, #1
	str r3, [fp, #-0x38]
	ldr r1, [fp, #-0x3c]
	sub r3, sl, #1
	strb r8, [r1, r3]
	str r7, [fp, #-0x34]
	b _030058A0
_03005898:
	subs r8, r7, #0
	bge _03005810
_030058A0:
	ldr r2, [fp, #-0x38]
	cmp sl, r2
	subne r2, sl, #1
	ldrne r1, [fp, #-0x3c]
	movne r3, #0x1f
	strbne r3, [r1, r2]
	ldr sl, [fp, #-0x40]
	cmp sl, sb
	ble _030057FC
_030058C4:
	mov sl, #0
	cmp sl, sb
	bge _030058E8
	sub r2, fp, #0x2c
_030058D4:
	ldrb r3, [r2, sl]
	strb r3, [ip, sl]
	add sl, sl, #1
	cmp sl, sb
	blt _030058D4
_030058E8:
	ldr r2, [fp, #-0x38]
	cmp sb, r2
	moveq r0, #1
	mvnne r0, #0
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3005900
ovxDC_3005900: @ 0x03005900
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	mov r4, #0
	mov r6, r4
	mov r8, r0
	mov r7, r1
	mov sb, r2
	ldr sl, [fp, #4]
	mov r1, r3
	cmp r4, sl
	bge _03005984
_03005930:
	mov lr, #0
	mov ip, lr
	cmp lr, r1
	add r0, r6, r1
	add r5, r4, #1
	bge _03005968
_03005948:
	ldrb r3, [r7, ip]
	cmp r3, #0
	addne r3, ip, r6
	ldrbne r2, [r8, r3]
	eorne lr, r2, lr
	add ip, ip, #1
	cmp ip, r1
	blt _03005948
_03005968:
	ldr r2, [fp, #8]
	ldrb r3, [r2, lr]
	strb r3, [sb, r4]
	mov r6, r0
	mov r4, r5
	cmp r4, sl
	blt _03005930
_03005984:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_300598C
ovxDC_300598C: @ 0x0300598C
	mov ip, sp
	push {fp, ip, lr, pc}
	and r3, r0, #0xff
	and r0, r1, #0xff
	cmp r0, #0x1f
	cmpne r3, #0x1f
	sub fp, ip, #4
	beq _030059C8
	rsb r0, r0, r3
	add r3, r0, #0x1f
	cmp r0, #0
	movlt r0, r3
	and r0, r0, #0xff
	ldmdb fp, {fp, sp, lr}
	bx lr
_030059C8:
	mov r0, #0x1f
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovxDC_30059D4
ovxDC_30059D4: @ 0x030059D4
	mov ip, sp
	push {fp, ip, lr, pc}
	and r3, r0, #0xff
	and r0, r1, #0xff
	cmp r0, #0x1f
	cmpne r3, #0x1f
	sub fp, ip, #4
	beq _03005A10
	add r0, r3, r0
	sub r3, r0, #0x1f
	cmp r0, #0x1e
	movhi r0, r3
	and r0, r0, #0xff
	ldmdb fp, {fp, sp, lr}
	bx lr
_03005A10:
	mov r0, #0x1f
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3005A1C
ovxDC_3005A1C: @ 0x03005A1C
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	mov r3, #0
	cmp r3, r1
	sub fp, ip, #4
	and r5, r0, #0xff
	bge _03005A54
	mov r4, r1
_03005A3C:
	mov r0, r3
	mov r1, r5
	bl ovxDC_30059D4
	and r3, r0, #0xff
	subs r4, r4, #1
	bne _03005A3C
_03005A54:
	mov r0, r3
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3005A60
ovxDC_3005A60: @ 0x03005A60
	mov ip, sp
	push {r4, r5, r6, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x18
	mov r5, r0
	ldr r3, [r5]
	sub r4, fp, #0x20
	asr r3, r3, #2
	str r3, [fp, #-0x20]
	mov r0, r4
	ldr r3, [r5, #4]
	sub r1, fp, #0x24
	str r3, [fp, #-0x1c]
	sub r2, fp, #0x28
	bl ovxDC_3005FDC
	cmp r0, #0
	beq _03005AB8
	ldr r0, [fp, #-0x24]
	cmn r0, #1
	beq _03005BAC
	str r0, [fp, #-0x28]
	b _03005AC8
_03005AB8:
	ldr r3, [fp, #-0x24]
	cmn r3, #1
	ldreq r3, [fp, #-0x28]
	streq r3, [fp, #-0x24]
_03005AC8:
	mov r0, r4
	sub r1, fp, #0x2c
	sub r2, fp, #0x30
	bl ovxDC_3005E78
	cmp r0, #0
	beq _03005AF4
	ldr r0, [fp, #-0x2c]
	cmn r0, #1
	beq _03005BAC
	str r0, [fp, #-0x30]
	b _03005B04
_03005AF4:
	ldr r3, [fp, #-0x2c]
	cmn r3, #1
	ldreq r3, [fp, #-0x30]
	streq r3, [fp, #-0x2c]
_03005B04:
	mov r4, #0
	str r4, [r5]
	ldr ip, [fp, #-0x2c]
	ldr r6, _03005BA4 @ =0x03006684
	ldr r1, [fp, #-0x24]
	ldr r3, [r6]
	ldr r2, [r3, #0x1bc]
	mov r0, r4
	rsb r3, r1, ip
	cmp r3, r2
	bge _03005B48
	mov r2, #1
	add r4, r3, r2
	mov r0, r2
	add r3, ip, r1
	add r3, r3, r2
	str r3, [r5]
_03005B48:
	ldr lr, [fp, #-0x30]
	ldr r3, [r6]
	ldr ip, [fp, #-0x28]
	ldr r2, [r3, #0x1bc]
	rsb r1, ip, lr
	cmp r1, r2
	bge _03005B84
	add r3, r4, #1
	add r4, r3, r1
	add r0, r0, #1
	ldr r2, [r5]
	add r3, lr, ip
	add r2, r2, #1
	add r2, r2, r3
	str r2, [r5]
_03005B84:
	cmp r0, #0
	beq _03005BA8
	ldr r3, [r5]
	asr r3, r3, r0
	sub r0, r0, #1
	str r3, [r5]
	asr r0, r4, r0
	b _03005BAC
	.align 2, 0
_03005BA4: .4byte 0x03006684
_03005BA8:
	mvn r0, #0
_03005BAC:
	ldmdb fp, {r4, r5, r6, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3005BB4
ovxDC_3005BB4: @ 0x03005BB4
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0xc
	mov r5, r2
	ldr ip, [r5, #4]
	str r0, [fp, #-0x2c]
	ldr r2, [r0, #4]
	mov r0, #0
	str r0, [fp, #-0x34]
	mov sb, r1
	str r3, [fp, #-0x30]
	cmp ip, r2
	blt _03005D80
	ldr r8, _03005CFC @ =0x03006684
_03005BF0:
	mov lr, #0
	ldr r1, [r5]
	mov r7, lr
	ldr r0, [sb]
	mov r4, lr
	ldr r3, [r8]
	cmp r1, r0, asr #2
	ldr r2, [r3, #0x138]
	asr r1, r1, #3
	add r2, r2, r1, lsl #2
	add r3, ip, ip, lsl #2
	lsl r3, r3, #3
	ldr r6, [r2, r3]
	add sl, r2, r3
	bgt _03005D48
_03005C2C:
	ldr r1, [r5]
	lsl r3, r1, #2
	and r0, r1, #1
	and r2, r3, #0x1c
	cmp r0, #0
	andne r3, r3, #0x18
	orreq r3, r2, #4
	cmp r7, #0
	mov r0, r1
	lsr r3, r6, r3
	and r1, r3, #0xf
	bne _03005C9C
	cmp r1, #0xf
	addeq r4, r4, #1
	beq _03005D0C
	ldr r2, [r8]
	ldr r3, [r2, #0x1a8]
	cmp r4, r3
	blt _03005D08
	ldr r3, [r2, #0x1a4]
	cmp r4, r3
	bgt _03005D08
	cmp r1, #0
	movne lr, #0
	moveq lr, #1
	str r1, [fp, #-0x34]
	mov r7, #1
	b _03005D0C
_03005C9C:
	cmp r1, #0
	beq _03005CC4
	cmp lr, #1
	bne _03005D00
	mov r3, #0x19c
	ldr r1, [r8]
	add r3, r3, #1
	ldrb r2, [r1, r3]
	cmp r2, #0
	bne _03005D00
_03005CC4:
	cmp lr, #0
	addeq lr, lr, #1
	beq _03005D0C
	ldr r1, [fp, #-0x30]
	mov r0, r5
	ldr r3, [fp, #-0x34]
	mov r2, r4
	bl ovxDC_3005D8C
	cmp r0, #0
	beq _03005D84
	mov lr, #0
	mov r7, lr
	ldr r0, [r5]
	b _03005D08
	.align 2, 0
_03005CFC: .4byte 0x03006684
_03005D00:
	mov lr, #0
	mov r7, lr
_03005D08:
	mov r4, #0
_03005D0C:
	add r1, r0, #1
	str r1, [r5]
	tst r1, #7
	ldreq r6, [sl, #4]!
	ldr r3, [sb]
	cmp r1, r3, asr #2
	ble _03005C2C
	cmp r4, #1
	ble _03005D48
	ldr r3, [r8]
	ldr r2, [r3, #0x1a4]
	cmp r4, r2
	bgt _03005D48
	cmp r1, #0x4f
	ble _03005C2C
_03005D48:
	ldr r2, [fp, #-0x2c]
	ldr r3, [r2]
	asr r3, r3, #2
	str r3, [r5]
	ldr r2, [r5, #4]
	ldr r1, [r8]
	ldr r3, [r1, #0x1c8]
	add r2, r2, r3
	ldr r3, [fp, #-0x2c]
	ldr r1, [r3, #4]
	mov ip, r2
	str r2, [r5, #4]
	cmp ip, r1
	bge _03005BF0
_03005D80:
	mvn r0, #0
_03005D84:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3005D8C
ovxDC_3005D8C: @ 0x03005D8C
	mov ip, sp
	push {r4, r5, r6, r7, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #8
	mov r5, r1
	mov lr, r2
	ands ip, r3, #0xff
	beq _03005DF8
	mov r2, #0
	tst r3, #8
	ldr r1, [r0, #4]
	sub r7, fp, #0x20
	ldr r0, [r0]
	sub r6, fp, #0x24
	beq _03005DE0
	mov r3, #8
_03005DCC:
	add r2, r2, #1
	cmp r2, #3
	bgt _03005DE0
	ands r4, ip, r3, asr r2
	bne _03005DCC
_03005DE0:
	rsb r3, lr, r0
	sub r3, r3, #2
	sub r2, r2, #9
	str r3, [r5]
	add r4, r2, r0, lsl #2
	b _03005E1C
_03005DF8:
	sub r7, fp, #0x20
	ldr r3, [r0]
	sub r6, fp, #0x24
	ldr r1, [r0, #4]
	lsl r2, r3, #2
	sub r4, r2, #5
	rsb r3, lr, r3
	sub r3, r3, #1
	str r3, [r5]
_03005E1C:
	mov r0, r5
	str r1, [r5, #4]
	mov r2, r6
	mov r1, r7
	bl ovxDC_3005FDC
	cmp r0, #0
	bne _03005E6C
	ldr r3, _03005E68 @ =0x03006684
	ldr ip, [fp, #-0x24]
	ldr r2, [r3]
	ldr r1, [r2, #0x1bc]
	rsb r3, ip, r4
	cmp r3, r1
	bge _03005E6C
	add r3, ip, r4
	add r3, r3, #1
	asr r3, r3, #1
	str r3, [r5]
	b _03005E70
	.align 2, 0
_03005E68: .4byte 0x03006684
_03005E6C:
	mvn r0, #0
_03005E70:
	ldmdb fp, {r4, r5, r6, r7, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3005E78
ovxDC_3005E78: @ 0x03005E78
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	mvn r3, #0
	sub sp, sp, #4
	mov sl, r1
	str r3, [sl]
	ldr r4, [r0]
	sub fp, ip, #4
	ldr r3, _03005F60 @ =0x03006684
	mov r7, #0xf
	ldr ip, [r3]
	asr lr, r4, #3
	ldr r3, [r0, #4]
	mov r5, lr
	ldr r1, [ip, #0x138]
	mov r6, r3
	add r1, r1, lr, lsl #2
	add r3, r6, r3, lsl #2
	lsl r3, r3, #3
	ldr r0, [ip, #0x1a4]
	add sb, r1, r3
	ldr lr, [r1, r3]
	add r8, r4, r0
	cmp r8, #0x4f
	movge r8, #0x4f
	str r2, [fp, #-0x2c]
	cmp r4, r8
	bge _03005FD0
_03005EE8:
	add r4, r4, #1
	asr r3, r4, #3
	cmp r5, r3
	movne r5, r3
	ldrne lr, [sb, #4]!
	lsl r3, r4, #2
	and r1, r4, #1
	and r2, r3, #0x1c
	cmp r1, #0
	andne r3, r3, #0x18
	orreq r3, r2, #4
	lsr r3, lr, r3
	ands r0, r3, #0xf
	bne _03005F64
	mov r2, r0
	tst r7, #1
	lsl r1, r4, #2
	bne _03005F48
_03005F30:
	add r2, r2, #1
	cmp r2, #3
	bgt _03005F48
	asr r3, r7, r2
	tst r3, #1
	beq _03005F30
_03005F48:
	add r3, r2, #1
	ldr r2, [fp, #-0x2c]
	rsb r3, r3, r1
	str r3, [r2]
	mov r0, #0
	b _03005FD4
	.align 2, 0
_03005F60: .4byte 0x03006684
_03005F64:
	ldr r2, [sl]
	subs r3, r0, #0xf
	movne r3, #1
	cmn r2, #1
	movne r3, #0
	cmp r3, #0
	beq _03005FC4
	cmp r7, #0xf
	beq _03005FC4
	mov r2, #0
	mov r3, #8
	tst r7, r3
	lsl r1, r4, #2
	beq _03005FB8
	mov ip, r3
_03005FA0:
	add r2, r2, #1
	cmp r2, #3
	bgt _03005FB8
	asr r3, ip, r2
	tst r7, r3
	bne _03005FA0
_03005FB8:
	sub r3, r2, #5
	add r3, r1, r3
	str r3, [sl]
_03005FC4:
	mov r7, r0
	cmp r4, r8
	blt _03005EE8
_03005FD0:
	mvn r0, #0
_03005FD4:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovxDC_3005FDC
ovxDC_3005FDC: @ 0x03005FDC
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	mvn r3, #0
	mov sl, r1
	str r3, [sl]
	sub fp, ip, #4
	ldr r4, [r0]
	mov r7, #0xf
	ldr r3, _030060C0 @ =0x03006684
	mov sb, r2
	ldr ip, [r3]
	asr lr, r4, #3
	ldr r3, [r0, #4]
	mov r5, lr
	ldr r1, [ip, #0x1a4]
	mov r6, r3
	subs r8, r4, r1
	movmi r8, #0
	add r3, r6, r3, lsl #2
	lsl r3, r3, #3
	ldr r0, [ip, #0x138]
	cmp r4, r8
	add r0, r0, lr, lsl #2
	ldr ip, [r0, r3]
	add lr, r0, r3
	ble _03006128
_03006044:
	sub r4, r4, #1
	asr r3, r4, #3
	cmp r5, r3
	movne r5, r3
	ldrne ip, [lr, #-4]!
	lsl r3, r4, #2
	and r1, r4, #1
	and r2, r3, #0x1c
	cmp r1, #0
	andne r3, r3, #0x18
	orreq r3, r2, #4
	lsr r3, ip, r3
	ands r0, r3, #0xf
	bne _030060C4
	mov r2, r0
	mov r3, #8
	tst r7, r3
	lsl r1, r4, #2
	bne _030060AC
	mov r0, r3
_03006094:
	add r2, r2, #1
	cmp r2, #3
	bgt _030060AC
	asr r3, r0, r2
	tst r7, r3
	beq _03006094
_030060AC:
	add r3, r2, #4
	add r3, r1, r3
	str r3, [sb]
	mov r0, #0
	b _0300612C
	.align 2, 0
_030060C0: .4byte 0x03006684
_030060C4:
	ldr r2, [sl]
	subs r3, r0, #0xf
	movne r3, #1
	cmn r2, #1
	movne r3, #0
	cmp r3, #0
	beq _0300611C
	cmp r7, #0xf
	beq _0300611C
	mov r2, #0
	tst r7, #1
	lsl r1, r4, #2
	beq _03006110
_030060F8:
	add r2, r2, #1
	cmp r2, #3
	bgt _03006110
	asr r3, r7, r2
	tst r3, #1
	bne _030060F8
_03006110:
	sub r3, r2, #8
	rsb r3, r3, r1
	str r3, [sl]
_0300611C:
	mov r7, r0
	cmp r4, r8
	bgt _03006044
_03006128:
	mvn r0, #0
_0300612C:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	.incbin "baserom.gba", 0x70FB10, 0x554

	.align 2, 0
