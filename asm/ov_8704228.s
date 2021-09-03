	.include "asm/macros.inc"
	.text
	.align 2, 0
	.syntax unified

	arm_func_start ovx28_3000000
ovx28_3000000: @ 0x03000000
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	mov ip, r0
	ldrh r1, [ip, #0x10]
	ldr lr, [ip, #0x14]
	add r2, r1, lr
	ldrb r0, [r2, #1]
	ldrb r3, [lr, r1]
	orr r3, r3, r0, lsl #8
	lsl r3, r3, #0x10
	asr r0, r3, #0x10
	add r1, r1, #2
	lsr r2, r3, #0x10
	strh r1, [ip, #0x10]
	cmp r2, #0x9f00
	blo _030000B0
	mov r3, #0x9f00
	add r3, r3, #2
	cmp r2, r3
	moveq r0, #0xc2
	mov r2, #0x9f00
	add r2, r2, #4
	lsl r3, r0, #0x10
	cmp r2, r3, lsr #16
	moveq r0, #0xc4
	mov r3, #0x9f00
	add r3, r3, #0x10
	lsl r2, r0, #0x10
	cmp r3, r2, lsr #16
	moveq r0, #0xd0
	mov r3, #0x9f00
	add r3, r3, #0x12
	lsl r2, r0, #0x10
	cmp r3, r2, lsr #16
	moveq r0, #0xd2
	ldrh r1, [ip, #0x10]
	lsr r2, r0, #8
	add r1, r1, lr
	strb r2, [r1, #-1]
	ldrh r3, [ip, #0x10]
	ldr r2, [ip, #0x14]
	add r3, r3, r2
	strb r0, [r3, #-2]
_030000B0:
	lsl r3, r0, #0x10
	ldr r1, [ip, #0x14]
	lsr r3, r3, #0x10
	ldrb r2, [r1, r3]
	strb r2, [ip, #6]
	add r3, r3, r1
	ldrb r2, [r3, #1]
	strb r2, [ip, #7]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30000D8
ovx28_30000D8: @ 0x030000D8
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	mov ip, r0
	ldrh r1, [ip, #0x10]
	ldr lr, [ip, #0x14]
	add r2, r1, lr
	ldrb r0, [r2, #1]
	ldrb r3, [lr, r1]
	orr r3, r3, r0, lsl #8
	lsl r3, r3, #0x10
	asr r0, r3, #0x10
	add r1, r1, #2
	lsr r2, r3, #0x10
	strh r1, [ip, #0x10]
	cmp r2, #0x9f00
	blo _03000188
	mov r3, #0x9f00
	add r3, r3, #2
	cmp r2, r3
	moveq r0, #0xc2
	mov r2, #0x9f00
	add r2, r2, #4
	lsl r3, r0, #0x10
	cmp r2, r3, lsr #16
	moveq r0, #0xc4
	mov r3, #0x9f00
	add r3, r3, #0x10
	lsl r2, r0, #0x10
	cmp r3, r2, lsr #16
	moveq r0, #0xd0
	mov r3, #0x9f00
	add r3, r3, #0x12
	lsl r2, r0, #0x10
	cmp r3, r2, lsr #16
	moveq r0, #0xd2
	ldrh r1, [ip, #0x10]
	lsr r2, r0, #8
	add r1, r1, lr
	strb r2, [r1, #-1]
	ldrh r3, [ip, #0x10]
	ldr r2, [ip, #0x14]
	add r3, r3, r2
	strb r0, [r3, #-2]
_03000188:
	ldr r3, [ip, #0x14]
	lsl r2, r0, #0x10
	ldrb r1, [r3, r2, lsr #16]
	strb r1, [ip, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30001A0
ovx28_30001A0: @ 0x030001A0
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	mov r4, r0
	ldrh r3, [r4, #0x18]
	sub fp, ip, #4
	cmp r3, #0
	bne _03000290
	ldr r5, _030002A0 @ =ovx28_3003A04
_030001C0:
	ldrh r2, [r4, #0x10]
	ldr r1, [r4, #0x14]
	add r3, r2, #1
	strh r3, [r4, #0x10]
	lsl r2, r2, #0x10
	ldrb r3, [r1, r2, lsr #16]
	mov r0, r4
	ldr ip, [r5, r3, lsl #2]
	mov lr, pc
	bx ip

	arm_func_start ovx28_30001E8
ovx28_30001E8: @ 0x030001E8
	ldrh r3, [r4, #0x18]
	cmp r3, #0
	bne _0300021C
	ldrh r3, [r4, #0x10]
	ldr r1, [r4, #0x14]
	add r2, r3, #1
	strh r2, [r4, #0x10]
	lsl r3, r3, #0x10
	ldrb r3, [r1, r3, lsr #16]
	mov r0, r4
	ldr ip, [r5, r3, lsl #2]
	mov lr, pc
	bx ip
_0300021C:
	ldrh r3, [r4, #0x18]
	cmp r3, #0
	bne _03000250
	ldrh r3, [r4, #0x10]
	ldr r1, [r4, #0x14]
	add r2, r3, #1
	strh r2, [r4, #0x10]
	lsl r3, r3, #0x10
	ldrb r3, [r1, r3, lsr #16]
	mov r0, r4
	ldr ip, [r5, r3, lsl #2]
	mov lr, pc
	bx ip
_03000250:
	ldrh r3, [r4, #0x18]
	cmp r3, #0
	bne _03000284
	ldrh r3, [r4, #0x10]
	ldr r1, [r4, #0x14]
	add r2, r3, #1
	strh r2, [r4, #0x10]
	lsl r3, r3, #0x10
	ldrb r3, [r1, r3, lsr #16]
	mov r0, r4
	ldr ip, [r5, r3, lsl #2]
	mov lr, pc
	bx ip
_03000284:
	ldrh r3, [r4, #0x18]
	cmp r3, #0
	beq _030001C0
_03000290:
	ldrh r3, [r4, #0x18]
	sub r3, r3, #1
	strh r3, [r4, #0x18]
	b _030002A4
	.align 2, 0
_030002A0: .4byte ovx28_3003A04
_030002A4:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovx28_30002AC
ovx28_30002AC: @ 0x030002AC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0x10]
	ldr r1, [r0, #0x14]
	add r2, r3, #1
	strh r2, [r0, #0x10]
	lsl r3, r3, #0x10
	ldrb r2, [r1, r3, lsr #16]
	sub fp, ip, #4
	strh r2, [r0, #0x18]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30002DC
ovx28_30002DC: @ 0x030002DC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	strh r3, [r0, #0x18]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30002F8
ovx28_30002F8: @ 0x030002F8
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_300030C
ovx28_300030C: @ 0x0300030C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r2, [r0, #0x10]
	ldr r1, [r0, #0x14]
	add r3, r2, #1
	strh r3, [r0, #0x10]
	ldrb lr, [r0, #1]
	lsl r2, r2, #0x10
	ldrb r3, [r1, r2, lsr #16]
	sub fp, ip, #4
	rsb r3, r3, lr
	mov ip, r3
	ldr r1, _03000378 @ =0x03003904
	and r3, ip, #0xff
	ldrb r3, [r1, r3]
	orr r2, r3, #2
	strb r2, [r0]
	tst ip, #0xff00
	orrne r3, r3, #3
	strbne r3, [r0]
	eor r3, ip, lr
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03000378: .4byte 0x03003904

	arm_func_start ovx28_300037C
ovx28_300037C: @ 0x0300037C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #6]
	strh r3, [r0, #0xe]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000398
ovx28_3000398: @ 0x03000398
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30003AC
ovx28_30003AC: @ 0x030003AC
	mov ip, sp
	push {fp, ip, lr, pc}
	mov lr, r0
	ldrh r3, [lr, #0x10]
	ldr r0, [lr, #0x14]
	sub fp, ip, #4
	ldrb r1, [r0, r3]
	add r2, r3, r0
	ldrb ip, [r2, #1]
	add r3, r3, #2
	orr r1, r1, ip, lsl #8
	strh r3, [lr, #0x10]
	lsl r1, r1, #0x10
	ldrb r3, [lr]
	asr r1, r1, #0x10
	tst r3, #0x80
	strhne r1, [lr, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30003F8
ovx28_30003F8: @ 0x030003F8
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	tst r3, #0x80
	sub fp, ip, #4
	ldmdbeq fp, {fp, sp, lr}
	bxeq lr
	ldrh r3, [r0, #0xe]
	ldr r2, [r0, #0x14]
	ldrsh r1, [r2, r3]
	add r3, r3, #2
	strh r3, [r0, #0xe]
	strh r1, [r0, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000434
ovx28_3000434: @ 0x03000434
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r2, [r0, #0x10]
	ldrb r1, [r0, #1]
	add r3, r2, #1
	strh r3, [r0, #0x10]
	sub fp, ip, #4
	ldr ip, [r0, #0x14]
	lsl r2, r2, #0x10
	ldrb r3, [ip, r2, lsr #16]
	orr r1, r1, r3
	strb r1, [r0, #1]
	ldr r3, _03000478 @ =0x03003904
	ldrb r2, [r3, r1]
	strb r2, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03000478: .4byte 0x03003904

	arm_func_start ovx28_300047C
ovx28_300047C: @ 0x0300047C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r2, [r0, #0xe]
	ldr r3, [r0, #0x14]
	add r2, r2, r3
	ldrh r3, [r0]
	strh r3, [r2, #-2]
	ldrh r3, [r0, #0xe]
	sub fp, ip, #4
	sub r3, r3, #2
	strh r3, [r0, #0xe]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30004B0
ovx28_30004B0: @ 0x030004B0
	mov ip, sp
	push {fp, ip, lr, pc}
	mov lr, r0
	ldrh r3, [lr, #0x10]
	ldr r0, [lr, #0x14]
	sub fp, ip, #4
	ldrb r1, [r0, r3]
	add r2, r3, r0
	ldrb ip, [r2, #1]
	add r3, r3, #2
	orr r1, r1, ip, lsl #8
	strh r3, [lr, #0x10]
	lsl r1, r1, #0x10
	ldrb r3, [lr]
	asr r1, r1, #0x10
	tst r3, #0x80
	strheq r1, [lr, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30004FC
ovx28_30004FC: @ 0x030004FC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0xe]
	ldr r2, [r0, #0x14]
	ldrsh r1, [r2, r3]
	add r3, r3, #2
	strh r3, [r0, #0xe]
	sub fp, ip, #4
	strh r1, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000528
ovx28_3000528: @ 0x03000528
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	tst r3, #0x80
	sub fp, ip, #4
	ldmdbne fp, {fp, sp, lr}
	bxne lr
	ldrh r3, [r0, #0xe]
	ldr r2, [r0, #0x14]
	ldrsh r1, [r2, r3]
	add r3, r3, #2
	strh r3, [r0, #0xe]
	strh r1, [r0, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000564
ovx28_3000564: @ 0x03000564
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000578
ovx28_3000578: @ 0x03000578
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r2, [r0, #0x10]
	ldrb r1, [r0, #1]
	add r3, r2, #1
	strh r3, [r0, #0x10]
	sub fp, ip, #4
	ldr ip, [r0, #0x14]
	lsl r2, r2, #0x10
	ldrb r3, [ip, r2, lsr #16]
	eor r1, r1, r3
	strb r1, [r0, #1]
	ldr r3, _030005BC @ =0x03003904
	ldrb r2, [r3, r1]
	strb r2, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030005BC: .4byte 0x03003904

	arm_func_start ovx28_30005C0
ovx28_30005C0: @ 0x030005C0
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r2, [r0, #6]
	ldrsh r3, [r0, #4]
	strh r2, [r0, #4]
	strh r3, [r0, #6]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30005E4
ovx28_30005E4: @ 0x030005E4
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #6]
	strh r3, [r0, #0x10]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000600
ovx28_3000600: @ 0x03000600
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000614
ovx28_3000614: @ 0x03000614
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r2, [r0, #0x10]
	ldrb r1, [r0, #1]
	add r3, r2, #1
	strh r3, [r0, #0x10]
	lsl r2, r2, #0x10
	ldr r3, [r0, #0x14]
	sub fp, ip, #4
	ldrb ip, [r3, r2, lsr #16]
	ldr lr, _0300065C @ =0x03003904
	and r1, r1, ip
	ldrb r3, [lr, r1]
	strb r1, [r0, #1]
	orr r3, r3, #0x10
	strb r3, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_0300065C: .4byte 0x03003904

	arm_func_start ovx28_3000660
ovx28_3000660: @ 0x03000660
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r2, [r0, #0xe]
	ldr r3, [r0, #0x14]
	add r2, r2, r3
	ldrh r3, [r0, #6]
	strh r3, [r2, #-2]
	ldrh r3, [r0, #0xe]
	sub fp, ip, #4
	sub r3, r3, #2
	strh r3, [r0, #0xe]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000694
ovx28_3000694: @ 0x03000694
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0xe]
	sub fp, ip, #4
	ldr ip, [r0, #0x14]
	ldrsh lr, [ip, r3]
	ldrsh r1, [r0, #6]
	add r3, r3, #2
	strh r3, [r0, #0xe]
	ldrh r2, [r0, #0xe]
	strh lr, [r0, #6]
	add r2, r2, ip
	strh r1, [r2, #-2]
	ldrh r3, [r0, #0xe]
	sub r3, r3, #2
	strh r3, [r0, #0xe]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30006DC
ovx28_30006DC: @ 0x030006DC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0xe]
	ldr r2, [r0, #0x14]
	ldrsh r1, [r2, r3]
	add r3, r3, #2
	strh r3, [r0, #0xe]
	sub fp, ip, #4
	strh r1, [r0, #6]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000708
ovx28_3000708: @ 0x03000708
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_300071C
ovx28_300071C: @ 0x0300071C
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	mov ip, r0
	ldrh r1, [ip, #0x10]
	ldr r0, [ip, #0x14]
	ldrb r2, [ip]
	add r3, r1, #1
	strh r3, [ip, #0x10]
	lsl r1, r1, #0x10
	ldrb r3, [r0, r1, lsr #16]
	and r2, r2, #1
	add r3, r3, r2
	ldrb r0, [ip, #1]
	and r3, r3, #0xff
	ldr r2, _030007A0 @ =0x03003904
	rsb r1, r3, r0
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	orr r3, r3, #2
	and r3, r3, #0xfb
	strb r3, [ip]
	tst r1, #0xff00
	orrne r3, r3, #1
	strbne r3, [ip]
	eor r3, r1, r0
	tst r3, #0x80
	ldrbne r3, [ip]
	orrne r3, r3, #4
	strbne r3, [ip]
	strb lr, [ip, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030007A0: .4byte 0x03003904

	arm_func_start ovx28_30007A4
ovx28_30007A4: @ 0x030007A4
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	mov ip, r0
	ldrh r3, [ip, #0x10]
	ldr lr, [ip, #0x14]
	ldrb r1, [lr, r3]
	add r2, r3, lr
	ldrb r0, [r2, #1]
	add r3, r3, #2
	orr r1, r1, r0, lsl #8
	strh r3, [ip, #0x10]
	lsl r1, r1, #0x10
	ldrb r3, [ip]
	asr r1, r1, #0x10
	tst r3, #1
	ldmdbeq fp, {fp, sp, lr}
	bxeq lr
	ldrh r3, [ip, #0xe]
	ldrh r2, [ip, #0x10]
	add r3, r3, lr
	strh r2, [r3, #-2]
	ldrh r2, [ip, #0xe]
	strh r1, [ip, #0x10]
	sub r2, r2, #2
	strh r2, [ip, #0xe]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000814
ovx28_3000814: @ 0x03000814
	mov ip, sp
	push {fp, ip, lr, pc}
	mov lr, r0
	ldrh r3, [lr, #0x10]
	ldr r0, [lr, #0x14]
	sub fp, ip, #4
	ldrb r1, [r0, r3]
	add r2, r3, r0
	ldrb ip, [r2, #1]
	add r3, r3, #2
	orr r1, r1, ip, lsl #8
	strh r3, [lr, #0x10]
	lsl r1, r1, #0x10
	ldrb r3, [lr]
	asr r1, r1, #0x10
	tst r3, #1
	strhne r1, [lr, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000860
ovx28_3000860: @ 0x03000860
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	tst r3, #1
	sub fp, ip, #4
	ldmdbeq fp, {fp, sp, lr}
	bxeq lr
	ldrh r3, [r0, #0xe]
	ldr r2, [r0, #0x14]
	ldrsh r1, [r2, r3]
	add r3, r3, #2
	strh r3, [r0, #0xe]
	strh r1, [r0, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_300089C
ovx28_300089C: @ 0x0300089C
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30008B0
ovx28_30008B0: @ 0x030008B0
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r2, [r0, #0x10]
	ldr r1, [r0, #0x14]
	add r3, r2, #1
	strh r3, [r0, #0x10]
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	lsl r2, r2, #0x10
	ldrb r3, [r1, r2, lsr #16]
	rsb r1, r3, ip
	ldr r2, _03000920 @ =0x03003904
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	orr r3, r3, #2
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r1, #0xff00
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r1, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03000920: .4byte 0x03003904

	arm_func_start ovx28_3000924
ovx28_3000924: @ 0x03000924
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r2, [r0, #0xe]
	ldr r3, [r0, #0x14]
	add r2, r2, r3
	ldrh r3, [r0, #4]
	strh r3, [r2, #-2]
	ldrh r3, [r0, #0xe]
	sub fp, ip, #4
	sub r3, r3, #2
	strh r3, [r0, #0xe]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000958
ovx28_3000958: @ 0x03000958
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	mov ip, r0
	ldrh r3, [ip, #0x10]
	ldr lr, [ip, #0x14]
	ldrb r1, [lr, r3]
	add r2, r3, lr
	ldrb r0, [r2, #1]
	add r3, r3, #2
	orr r1, r1, r0, lsl #8
	strh r3, [ip, #0x10]
	lsl r1, r1, #0x10
	ldrb r3, [ip]
	asr r1, r1, #0x10
	tst r3, #1
	ldmdbne fp, {fp, sp, lr}
	bxne lr
	ldrh r3, [ip, #0xe]
	ldrh r2, [ip, #0x10]
	add r3, r3, lr
	strh r2, [r3, #-2]
	ldrh r2, [ip, #0xe]
	strh r1, [ip, #0x10]
	sub r2, r2, #2
	strh r2, [ip, #0xe]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30009C8
ovx28_30009C8: @ 0x030009C8
	mov ip, sp
	push {fp, ip, lr, pc}
	mov lr, r0
	ldrh r3, [lr, #0x10]
	ldr r0, [lr, #0x14]
	sub fp, ip, #4
	ldrb r1, [r0, r3]
	add r2, r3, r0
	ldrb ip, [r2, #1]
	add r3, r3, #2
	orr r1, r1, ip, lsl #8
	strh r3, [lr, #0x10]
	lsl r1, r1, #0x10
	ldrb r3, [lr]
	asr r1, r1, #0x10
	tst r3, #1
	strheq r1, [lr, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000A14
ovx28_3000A14: @ 0x03000A14
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0xe]
	ldr r2, [r0, #0x14]
	ldrsh r1, [r2, r3]
	add r3, r3, #2
	strh r3, [r0, #0xe]
	sub fp, ip, #4
	strh r1, [r0, #4]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000A40
ovx28_3000A40: @ 0x03000A40
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	tst r3, #1
	sub fp, ip, #4
	ldmdbne fp, {fp, sp, lr}
	bxne lr
	ldrh r3, [r0, #0xe]
	ldr r2, [r0, #0x14]
	ldrsh r1, [r2, r3]
	add r3, r3, #2
	strh r3, [r0, #0xe]
	strh r1, [r0, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000A7C
ovx28_3000A7C: @ 0x03000A7C
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000A90
ovx28_3000A90: @ 0x03000A90
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	mov ip, r0
	ldrh r1, [ip, #0x10]
	ldr r0, [ip, #0x14]
	ldrb r2, [ip]
	add r3, r1, #1
	strh r3, [ip, #0x10]
	lsl r1, r1, #0x10
	ldrb r3, [r0, r1, lsr #16]
	and r2, r2, #1
	add r3, r3, r2
	ldrb r0, [ip, #1]
	and r3, r3, #0xff
	ldr r2, _03000B10 @ =0x03003904
	add r1, r0, r3
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	and r3, r3, #0xfb
	strb r3, [ip]
	tst r1, #0x100
	orrne r3, r3, #1
	strbne r3, [ip]
	eor r3, r1, r0
	tst r3, #0x80
	ldrbne r3, [ip]
	orrne r3, r3, #4
	strbne r3, [ip]
	strb lr, [ip, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03000B10: .4byte 0x03003904

	arm_func_start ovx28_3000B14
ovx28_3000B14: @ 0x03000B14
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r2, [r0, #0x10]
	ldr r1, [r0, #0x14]
	add r3, r2, r1
	ldrb lr, [r3, #1]
	sub fp, ip, #4
	ldrb ip, [r1, r2]
	ldrh r3, [r0, #0xe]
	add r2, r2, #2
	strh r2, [r0, #0x10]
	add r3, r3, r1
	strh r2, [r3, #-2]
	ldrh r2, [r0, #0xe]
	orr ip, ip, lr, lsl #8
	strh ip, [r0, #0x10]
	sub r2, r2, #2
	strh r2, [r0, #0xe]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000B64
ovx28_3000B64: @ 0x03000B64
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	mov ip, r0
	ldrh r3, [ip, #0x10]
	ldr lr, [ip, #0x14]
	ldrb r1, [lr, r3]
	add r2, r3, lr
	ldrb r0, [r2, #1]
	add r3, r3, #2
	orr r1, r1, r0, lsl #8
	strh r3, [ip, #0x10]
	lsl r1, r1, #0x10
	ldrb r3, [ip]
	asr r1, r1, #0x10
	tst r3, #0x40
	ldmdbeq fp, {fp, sp, lr}
	bxeq lr
	ldrh r3, [ip, #0xe]
	ldrh r2, [ip, #0x10]
	add r3, r3, lr
	strh r2, [r3, #-2]
	ldrh r2, [ip, #0xe]
	strh r1, [ip, #0x10]
	sub r2, r2, #2
	strh r2, [ip, #0xe]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000BD4
ovx28_3000BD4: @ 0x03000BD4
	mov ip, sp
	push {fp, ip, lr, pc}
	mov lr, r0
	ldrh r3, [lr, #0x10]
	ldr r0, [lr, #0x14]
	sub fp, ip, #4
	ldrb r1, [r0, r3]
	add r2, r3, r0
	ldrb ip, [r2, #1]
	add r3, r3, #2
	orr r1, r1, ip, lsl #8
	strh r3, [lr, #0x10]
	lsl r1, r1, #0x10
	ldrb r3, [lr]
	asr r1, r1, #0x10
	tst r3, #0x40
	strhne r1, [lr, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000C20
ovx28_3000C20: @ 0x03000C20
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0xe]
	ldr r2, [r0, #0x14]
	ldrsh r1, [r2, r3]
	add r3, r3, #2
	strh r3, [r0, #0xe]
	sub fp, ip, #4
	strh r1, [r0, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000C4C
ovx28_3000C4C: @ 0x03000C4C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	tst r3, #0x40
	sub fp, ip, #4
	ldmdbeq fp, {fp, sp, lr}
	bxeq lr
	ldrh r3, [r0, #0xe]
	ldr r2, [r0, #0x14]
	ldrsh r1, [r2, r3]
	add r3, r3, #2
	strh r3, [r0, #0xe]
	strh r1, [r0, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000C88
ovx28_3000C88: @ 0x03000C88
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r2, [r0, #0x10]
	ldr r1, [r0, #0x14]
	add r3, r2, #1
	strh r3, [r0, #0x10]
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	lsl r2, r2, #0x10
	ldrb r3, [r1, r2, lsr #16]
	add r1, ip, r3
	ldr r2, _03000CF4 @ =0x03003904
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r1, #0x100
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r1, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03000CF4: .4byte 0x03003904

	arm_func_start ovx28_3000CF8
ovx28_3000CF8: @ 0x03000CF8
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r2, [r0, #0xe]
	ldr r3, [r0, #0x14]
	add r2, r2, r3
	ldrh r3, [r0, #2]
	strh r3, [r2, #-2]
	ldrh r3, [r0, #0xe]
	sub fp, ip, #4
	sub r3, r3, #2
	strh r3, [r0, #0xe]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000D2C
ovx28_3000D2C: @ 0x03000D2C
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	mov ip, r0
	ldrh r3, [ip, #0x10]
	ldr lr, [ip, #0x14]
	ldrb r1, [lr, r3]
	add r2, r3, lr
	ldrb r0, [r2, #1]
	add r3, r3, #2
	orr r1, r1, r0, lsl #8
	strh r3, [ip, #0x10]
	lsl r1, r1, #0x10
	ldrb r3, [ip]
	asr r1, r1, #0x10
	tst r3, #0x40
	ldmdbne fp, {fp, sp, lr}
	bxne lr
	ldrh r3, [ip, #0xe]
	ldrh r2, [ip, #0x10]
	add r3, r3, lr
	strh r2, [r3, #-2]
	ldrh r2, [ip, #0xe]
	strh r1, [ip, #0x10]
	sub r2, r2, #2
	strh r2, [ip, #0xe]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000D9C
ovx28_3000D9C: @ 0x03000D9C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldr r1, [r0, #0x14]
	ldrh lr, [r0, #0x10]
	sub fp, ip, #4
	add r2, lr, r1
	ldrb ip, [r2, #1]
	ldrb r3, [r1, lr]
	orr r3, r3, ip, lsl #8
	strh r3, [r0, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000DCC
ovx28_3000DCC: @ 0x03000DCC
	mov ip, sp
	push {fp, ip, lr, pc}
	mov lr, r0
	ldrh r3, [lr, #0x10]
	ldr r0, [lr, #0x14]
	sub fp, ip, #4
	ldrb r1, [r0, r3]
	add r2, r3, r0
	ldrb ip, [r2, #1]
	add r3, r3, #2
	orr r1, r1, ip, lsl #8
	strh r3, [lr, #0x10]
	lsl r1, r1, #0x10
	ldrb r3, [lr]
	asr r1, r1, #0x10
	tst r3, #0x40
	strheq r1, [lr, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000E18
ovx28_3000E18: @ 0x03000E18
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0xe]
	ldr r2, [r0, #0x14]
	ldrsh r1, [r2, r3]
	add r3, r3, #2
	strh r3, [r0, #0xe]
	sub fp, ip, #4
	strh r1, [r0, #2]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000E44
ovx28_3000E44: @ 0x03000E44
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	tst r3, #0x40
	sub fp, ip, #4
	ldmdbne fp, {fp, sp, lr}
	bxne lr
	ldrh r3, [r0, #0xe]
	ldr r2, [r0, #0x14]
	ldrsh r1, [r2, r3]
	add r3, r3, #2
	strh r3, [r0, #0xe]
	strh r1, [r0, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3000E80
ovx28_3000E80: @ 0x03000E80
	mov ip, sp
	push {fp, ip, lr, pc}
	ldr r3, _03000EB4 @ =0x03003904
	ldrb r2, [r0, #1]
	ldrb r1, [r3]
	tst r2, #0x80
	orr r3, r1, #2
	strb r3, [r0]
	sub fp, ip, #4
	orrne r3, r1, #6
	strbne r3, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03000EB4: .4byte 0x03003904

	arm_func_start ovx28_3000EB8
ovx28_3000EB8: @ 0x03000EB8
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #6]
	ldr r2, [r0, #0x14]
	ldrb lr, [r0, #1]
	ldrb r3, [r2, r1]
	sub fp, ip, #4
	rsb r3, r3, lr
	mov ip, r3
	ldr r1, _03000F18 @ =0x03003904
	and r3, ip, #0xff
	ldrb r3, [r1, r3]
	orr r2, r3, #2
	strb r2, [r0]
	tst ip, #0xff00
	orrne r3, r3, #3
	strbne r3, [r0]
	eor r3, ip, lr
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03000F18: .4byte 0x03003904

	arm_func_start ovx28_3000F1C
ovx28_3000F1C: @ 0x03000F1C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #6]
	ldr r1, _03000F74 @ =0x03003904
	ldrb lr, [r0, #1]
	sub fp, ip, #4
	rsb r3, r3, lr
	mov ip, r3
	and r3, ip, #0xff
	ldrb r3, [r1, r3]
	orr r2, r3, #2
	strb r2, [r0]
	tst ip, #0xff00
	orrne r3, r3, #3
	strbne r3, [r0]
	eor r3, ip, lr
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03000F74: .4byte 0x03003904

	arm_func_start ovx28_3000F78
ovx28_3000F78: @ 0x03000F78
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #7]
	ldr r1, _03000FD0 @ =0x03003904
	ldrb lr, [r0, #1]
	sub fp, ip, #4
	rsb r3, r3, lr
	mov ip, r3
	and r3, ip, #0xff
	ldrb r3, [r1, r3]
	orr r2, r3, #2
	strb r2, [r0]
	tst ip, #0xff00
	orrne r3, r3, #3
	strbne r3, [r0]
	eor r3, ip, lr
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03000FD0: .4byte 0x03003904

	arm_func_start ovx28_3000FD4
ovx28_3000FD4: @ 0x03000FD4
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #4]
	ldr r1, _0300102C @ =0x03003904
	ldrb lr, [r0, #1]
	sub fp, ip, #4
	rsb r3, r3, lr
	mov ip, r3
	and r3, ip, #0xff
	ldrb r3, [r1, r3]
	orr r2, r3, #2
	strb r2, [r0]
	tst ip, #0xff00
	orrne r3, r3, #3
	strbne r3, [r0]
	eor r3, ip, lr
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_0300102C: .4byte 0x03003904

	arm_func_start ovx28_3001030
ovx28_3001030: @ 0x03001030
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #5]
	ldr r1, _03001088 @ =0x03003904
	ldrb lr, [r0, #1]
	sub fp, ip, #4
	rsb r3, r3, lr
	mov ip, r3
	and r3, ip, #0xff
	ldrb r3, [r1, r3]
	orr r2, r3, #2
	strb r2, [r0]
	tst ip, #0xff00
	orrne r3, r3, #3
	strbne r3, [r0]
	eor r3, ip, lr
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001088: .4byte 0x03003904

	arm_func_start ovx28_300108C
ovx28_300108C: @ 0x0300108C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #2]
	ldr r1, _030010E4 @ =0x03003904
	ldrb lr, [r0, #1]
	sub fp, ip, #4
	rsb r3, r3, lr
	mov ip, r3
	and r3, ip, #0xff
	ldrb r3, [r1, r3]
	orr r2, r3, #2
	strb r2, [r0]
	tst ip, #0xff00
	orrne r3, r3, #3
	strbne r3, [r0]
	eor r3, ip, lr
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030010E4: .4byte 0x03003904

	arm_func_start ovx28_30010E8
ovx28_30010E8: @ 0x030010E8
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #3]
	ldr r1, _03001140 @ =0x03003904
	ldrb lr, [r0, #1]
	sub fp, ip, #4
	rsb r3, r3, lr
	mov ip, r3
	and r3, ip, #0xff
	ldrb r3, [r1, r3]
	orr r2, r3, #2
	strb r2, [r0]
	tst ip, #0xff00
	orrne r3, r3, #3
	strbne r3, [r0]
	eor r3, ip, lr
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001140: .4byte 0x03003904

	arm_func_start ovx28_3001144
ovx28_3001144: @ 0x03001144
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r1, [r0, #1]
	ldr r3, _0300116C @ =0x03003904
	strb r1, [r0, #1]
	ldrb r2, [r3, r1]
	sub fp, ip, #4
	strb r2, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_0300116C: .4byte 0x03003904

	arm_func_start ovx28_3001170
ovx28_3001170: @ 0x03001170
	mov ip, sp
	push {fp, ip, lr, pc}
	ldr r1, [r0, #0x14]
	ldrb r3, [r0, #1]
	sub fp, ip, #4
	ldrh ip, [r0, #6]
	ldrb r2, [r1, ip]
	orr r3, r3, r2
	strb r3, [r0, #1]
	ldr r2, _030011A8 @ =0x03003904
	ldrb r1, [r2, r3]
	strb r1, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030011A8: .4byte 0x03003904

	arm_func_start ovx28_30011AC
ovx28_30011AC: @ 0x030011AC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	ldrb r2, [r0, #6]
	orr r3, r3, r2
	strb r3, [r0, #1]
	ldr r2, _030011DC @ =0x03003904
	ldrb r1, [r2, r3]
	sub fp, ip, #4
	strb r1, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030011DC: .4byte 0x03003904

	arm_func_start ovx28_30011E0
ovx28_30011E0: @ 0x030011E0
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	ldrb r2, [r0, #7]
	orr r3, r3, r2
	strb r3, [r0, #1]
	ldr r2, _03001210 @ =0x03003904
	ldrb r1, [r2, r3]
	sub fp, ip, #4
	strb r1, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001210: .4byte 0x03003904

	arm_func_start ovx28_3001214
ovx28_3001214: @ 0x03001214
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	ldrb r2, [r0, #4]
	orr r3, r3, r2
	strb r3, [r0, #1]
	ldr r2, _03001244 @ =0x03003904
	ldrb r1, [r2, r3]
	sub fp, ip, #4
	strb r1, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001244: .4byte 0x03003904

	arm_func_start ovx28_3001248
ovx28_3001248: @ 0x03001248
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	ldrb r2, [r0, #5]
	orr r3, r3, r2
	strb r3, [r0, #1]
	ldr r2, _03001278 @ =0x03003904
	ldrb r1, [r2, r3]
	sub fp, ip, #4
	strb r1, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001278: .4byte 0x03003904

	arm_func_start ovx28_300127C
ovx28_300127C: @ 0x0300127C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	ldrb r2, [r0, #2]
	orr r3, r3, r2
	strb r3, [r0, #1]
	ldr r2, _030012AC @ =0x03003904
	ldrb r1, [r2, r3]
	sub fp, ip, #4
	strb r1, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030012AC: .4byte 0x03003904

	arm_func_start ovx28_30012B0
ovx28_30012B0: @ 0x030012B0
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	ldrb r2, [r0, #3]
	orr r3, r3, r2
	strb r3, [r0, #1]
	ldr r2, _030012E0 @ =0x03003904
	ldrb r1, [r2, r3]
	sub fp, ip, #4
	strb r1, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030012E0: .4byte 0x03003904

	arm_func_start ovx28_30012E4
ovx28_30012E4: @ 0x030012E4
	mov ip, sp
	push {fp, ip, lr, pc}
	mov r1, #0
	strb r1, [r0, #1]
	ldr r3, _0300130C @ =0x03003904
	ldrb r2, [r3, r1]
	sub fp, ip, #4
	strb r2, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_0300130C: .4byte 0x03003904

	arm_func_start ovx28_3001310
ovx28_3001310: @ 0x03001310
	mov ip, sp
	push {fp, ip, lr, pc}
	ldr r1, [r0, #0x14]
	ldrb r3, [r0, #1]
	sub fp, ip, #4
	ldrh ip, [r0, #6]
	ldrb r2, [r1, ip]
	eor r3, r3, r2
	strb r3, [r0, #1]
	ldr r2, _03001348 @ =0x03003904
	ldrb r1, [r2, r3]
	strb r1, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001348: .4byte 0x03003904

	arm_func_start ovx28_300134C
ovx28_300134C: @ 0x0300134C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	ldrb r2, [r0, #6]
	eor r3, r3, r2
	strb r3, [r0, #1]
	ldr r2, _0300137C @ =0x03003904
	ldrb r1, [r2, r3]
	sub fp, ip, #4
	strb r1, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_0300137C: .4byte 0x03003904

	arm_func_start ovx28_3001380
ovx28_3001380: @ 0x03001380
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	ldrb r2, [r0, #7]
	eor r3, r3, r2
	strb r3, [r0, #1]
	ldr r2, _030013B0 @ =0x03003904
	ldrb r1, [r2, r3]
	sub fp, ip, #4
	strb r1, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030013B0: .4byte 0x03003904

	arm_func_start ovx28_30013B4
ovx28_30013B4: @ 0x030013B4
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	ldrb r2, [r0, #4]
	eor r3, r3, r2
	strb r3, [r0, #1]
	ldr r2, _030013E4 @ =0x03003904
	ldrb r1, [r2, r3]
	sub fp, ip, #4
	strb r1, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030013E4: .4byte 0x03003904

	arm_func_start ovx28_30013E8
ovx28_30013E8: @ 0x030013E8
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	ldrb r2, [r0, #5]
	eor r3, r3, r2
	strb r3, [r0, #1]
	ldr r2, _03001418 @ =0x03003904
	ldrb r1, [r2, r3]
	sub fp, ip, #4
	strb r1, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001418: .4byte 0x03003904

	arm_func_start ovx28_300141C
ovx28_300141C: @ 0x0300141C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	ldrb r2, [r0, #2]
	eor r3, r3, r2
	strb r3, [r0, #1]
	ldr r2, _0300144C @ =0x03003904
	ldrb r1, [r2, r3]
	sub fp, ip, #4
	strb r1, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_0300144C: .4byte 0x03003904

	arm_func_start ovx28_3001450
ovx28_3001450: @ 0x03001450
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	ldrb r2, [r0, #3]
	eor r3, r3, r2
	strb r3, [r0, #1]
	ldr r2, _03001480 @ =0x03003904
	ldrb r1, [r2, r3]
	sub fp, ip, #4
	strb r1, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001480: .4byte 0x03003904

	arm_func_start ovx28_3001484
ovx28_3001484: @ 0x03001484
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r1, [r0, #1]
	ldr r2, _030014B0 @ =0x03003904
	ldrb r3, [r2, r1]
	sub fp, ip, #4
	strb r1, [r0, #1]
	orr r3, r3, #0x10
	strb r3, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030014B0: .4byte 0x03003904

	arm_func_start ovx28_30014B4
ovx28_30014B4: @ 0x030014B4
	mov ip, sp
	push {fp, ip, lr, pc}
	ldr r3, [r0, #0x14]
	ldrb r2, [r0, #1]
	ldrh lr, [r0, #6]
	ldrb r1, [r3, lr]
	sub fp, ip, #4
	ldr ip, _030014F0 @ =0x03003904
	and r2, r2, r1
	ldrb r3, [ip, r2]
	strb r2, [r0, #1]
	orr r3, r3, #0x10
	strb r3, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030014F0: .4byte 0x03003904

	arm_func_start ovx28_30014F4
ovx28_30014F4: @ 0x030014F4
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #6]
	sub fp, ip, #4
	ldr ip, _03001528 @ =0x03003904
	and r2, r2, r1
	ldrb r3, [ip, r2]
	strb r2, [r0, #1]
	orr r3, r3, #0x10
	strb r3, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001528: .4byte 0x03003904

	arm_func_start ovx28_300152C
ovx28_300152C: @ 0x0300152C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #7]
	sub fp, ip, #4
	ldr ip, _03001560 @ =0x03003904
	and r2, r2, r1
	ldrb r3, [ip, r2]
	strb r2, [r0, #1]
	orr r3, r3, #0x10
	strb r3, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001560: .4byte 0x03003904

	arm_func_start ovx28_3001564
ovx28_3001564: @ 0x03001564
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #4]
	sub fp, ip, #4
	ldr ip, _03001598 @ =0x03003904
	and r2, r2, r1
	ldrb r3, [ip, r2]
	strb r2, [r0, #1]
	orr r3, r3, #0x10
	strb r3, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001598: .4byte 0x03003904

	arm_func_start ovx28_300159C
ovx28_300159C: @ 0x0300159C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #5]
	sub fp, ip, #4
	ldr ip, _030015D0 @ =0x03003904
	and r2, r2, r1
	ldrb r3, [ip, r2]
	strb r2, [r0, #1]
	orr r3, r3, #0x10
	strb r3, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030015D0: .4byte 0x03003904

	arm_func_start ovx28_30015D4
ovx28_30015D4: @ 0x030015D4
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #2]
	sub fp, ip, #4
	ldr ip, _03001608 @ =0x03003904
	and r2, r2, r1
	ldrb r3, [ip, r2]
	strb r2, [r0, #1]
	orr r3, r3, #0x10
	strb r3, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001608: .4byte 0x03003904

	arm_func_start ovx28_300160C
ovx28_300160C: @ 0x0300160C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #3]
	sub fp, ip, #4
	ldr ip, _03001640 @ =0x03003904
	and r2, r2, r1
	ldrb r3, [ip, r2]
	strb r2, [r0, #1]
	orr r3, r3, #0x10
	strb r3, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001640: .4byte 0x03003904

	arm_func_start ovx28_3001644
ovx28_3001644: @ 0x03001644
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	ldr r2, _030016AC @ =0x03003904
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	and r3, r3, #1
	add r3, ip, r3
	and r3, r3, #0xff
	rsb r1, r3, ip
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	orr r3, r3, #2
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r1, #0xff00
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r1, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030016AC: .4byte 0x03003904

	arm_func_start ovx28_30016B0
ovx28_30016B0: @ 0x030016B0
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	mov ip, r0
	ldrh r0, [ip, #6]
	ldr r1, [ip, #0x14]
	ldrb r3, [ip]
	ldrb r2, [r1, r0]
	and r3, r3, #1
	add r2, r2, r3
	ldrb r0, [ip, #1]
	and r2, r2, #0xff
	ldr r1, _03001728 @ =0x03003904
	rsb r2, r2, r0
	and lr, r2, #0xff
	ldrb r3, [r1, lr]
	orr r3, r3, #2
	and r3, r3, #0xfb
	strb r3, [ip]
	tst r2, #0xff00
	orrne r3, r3, #1
	strbne r3, [ip]
	eor r3, r2, r0
	tst r3, #0x80
	ldrbne r3, [ip]
	orrne r3, r3, #4
	strbne r3, [ip]
	strb lr, [ip, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001728: .4byte 0x03003904

	arm_func_start ovx28_300172C
ovx28_300172C: @ 0x0300172C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	ldrb r2, [r0, #6]
	ldr r1, _03001798 @ =0x03003904
	and r3, r3, #1
	add r2, r2, r3
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	and r2, r2, #0xff
	rsb r2, r2, ip
	and lr, r2, #0xff
	ldrb r3, [r1, lr]
	orr r3, r3, #2
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r2, #0xff00
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r2, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001798: .4byte 0x03003904

	arm_func_start ovx28_300179C
ovx28_300179C: @ 0x0300179C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	ldrb r2, [r0, #7]
	ldr r1, _03001808 @ =0x03003904
	and r3, r3, #1
	add r2, r2, r3
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	and r2, r2, #0xff
	rsb r2, r2, ip
	and lr, r2, #0xff
	ldrb r3, [r1, lr]
	orr r3, r3, #2
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r2, #0xff00
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r2, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001808: .4byte 0x03003904

	arm_func_start ovx28_300180C
ovx28_300180C: @ 0x0300180C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	ldrb r2, [r0, #4]
	ldr r1, _03001878 @ =0x03003904
	and r3, r3, #1
	add r2, r2, r3
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	and r2, r2, #0xff
	rsb r2, r2, ip
	and lr, r2, #0xff
	ldrb r3, [r1, lr]
	orr r3, r3, #2
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r2, #0xff00
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r2, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001878: .4byte 0x03003904

	arm_func_start ovx28_300187C
ovx28_300187C: @ 0x0300187C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	ldrb r2, [r0, #5]
	ldr r1, _030018E8 @ =0x03003904
	and r3, r3, #1
	add r2, r2, r3
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	and r2, r2, #0xff
	rsb r2, r2, ip
	and lr, r2, #0xff
	ldrb r3, [r1, lr]
	orr r3, r3, #2
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r2, #0xff00
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r2, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030018E8: .4byte 0x03003904

	arm_func_start ovx28_30018EC
ovx28_30018EC: @ 0x030018EC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	ldrb r2, [r0, #2]
	ldr r1, _03001958 @ =0x03003904
	and r3, r3, #1
	add r2, r2, r3
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	and r2, r2, #0xff
	rsb r2, r2, ip
	and lr, r2, #0xff
	ldrb r3, [r1, lr]
	orr r3, r3, #2
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r2, #0xff00
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r2, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001958: .4byte 0x03003904

	arm_func_start ovx28_300195C
ovx28_300195C: @ 0x0300195C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	ldrb r2, [r0, #3]
	ldr r1, _030019C8 @ =0x03003904
	and r3, r3, #1
	add r2, r2, r3
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	and r2, r2, #0xff
	rsb r2, r2, ip
	and lr, r2, #0xff
	ldrb r3, [r1, lr]
	orr r3, r3, #2
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r2, #0xff00
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r2, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030019C8: .4byte 0x03003904

	arm_func_start ovx28_30019CC
ovx28_30019CC: @ 0x030019CC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	ldr r1, _03001A0C @ =0x03003904
	sub fp, ip, #4
	rsb ip, r3, r3
	ldrb r2, [r1, ip]
	orr r2, r2, #2
	and r2, r2, #0xfb
	strb r2, [r0]
	tst r3, #0x80
	orrne r3, r2, #4
	strbne r3, [r0]
	strb ip, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001A0C: .4byte 0x03003904

	arm_func_start ovx28_3001A10
ovx28_3001A10: @ 0x03001A10
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #6]
	ldr r2, [r0, #0x14]
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	ldrb r3, [r2, r1]
	rsb r1, r3, ip
	ldr r2, _03001A74 @ =0x03003904
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	orr r3, r3, #2
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r1, #0xff00
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r1, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001A74: .4byte 0x03003904

	arm_func_start ovx28_3001A78
ovx28_3001A78: @ 0x03001A78
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #6]
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	ldr r2, _03001AD4 @ =0x03003904
	rsb r1, r3, ip
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	orr r3, r3, #2
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r1, #0xff00
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r1, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001AD4: .4byte 0x03003904

	arm_func_start ovx28_3001AD8
ovx28_3001AD8: @ 0x03001AD8
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #7]
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	ldr r2, _03001B34 @ =0x03003904
	rsb r1, r3, ip
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	orr r3, r3, #2
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r1, #0xff00
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r1, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001B34: .4byte 0x03003904

	arm_func_start ovx28_3001B38
ovx28_3001B38: @ 0x03001B38
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #4]
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	ldr r2, _03001B94 @ =0x03003904
	rsb r1, r3, ip
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	orr r3, r3, #2
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r1, #0xff00
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r1, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001B94: .4byte 0x03003904

	arm_func_start ovx28_3001B98
ovx28_3001B98: @ 0x03001B98
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #5]
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	ldr r2, _03001BF4 @ =0x03003904
	rsb r1, r3, ip
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	orr r3, r3, #2
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r1, #0xff00
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r1, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001BF4: .4byte 0x03003904

	arm_func_start ovx28_3001BF8
ovx28_3001BF8: @ 0x03001BF8
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #2]
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	ldr r2, _03001C54 @ =0x03003904
	rsb r1, r3, ip
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	orr r3, r3, #2
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r1, #0xff00
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r1, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001C54: .4byte 0x03003904

	arm_func_start ovx28_3001C58
ovx28_3001C58: @ 0x03001C58
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #3]
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	ldr r2, _03001CB4 @ =0x03003904
	rsb r1, r3, ip
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	orr r3, r3, #2
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r1, #0xff00
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r1, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001CB4: .4byte 0x03003904

	arm_func_start ovx28_3001CB8
ovx28_3001CB8: @ 0x03001CB8
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	ldr r2, _03001D1C @ =0x03003904
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	and r3, r3, #1
	add r3, ip, r3
	and r3, r3, #0xff
	add r1, ip, r3
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r1, #0x100
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r1, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001D1C: .4byte 0x03003904

	arm_func_start ovx28_3001D20
ovx28_3001D20: @ 0x03001D20
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	mov ip, r0
	ldrh r0, [ip, #6]
	ldr r1, [ip, #0x14]
	ldrb r3, [ip]
	ldrb r2, [r1, r0]
	and r3, r3, #1
	add r2, r2, r3
	ldrb r0, [ip, #1]
	and r2, r2, #0xff
	ldr r1, _03001D94 @ =0x03003904
	add r2, r0, r2
	and lr, r2, #0xff
	ldrb r3, [r1, lr]
	and r3, r3, #0xfb
	strb r3, [ip]
	tst r2, #0x100
	orrne r3, r3, #1
	strbne r3, [ip]
	eor r3, r2, r0
	tst r3, #0x80
	ldrbne r3, [ip]
	orrne r3, r3, #4
	strbne r3, [ip]
	strb lr, [ip, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001D94: .4byte 0x03003904

	arm_func_start ovx28_3001D98
ovx28_3001D98: @ 0x03001D98
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	ldrb r2, [r0, #6]
	ldr r1, _03001E00 @ =0x03003904
	and r3, r3, #1
	add r2, r2, r3
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	and r2, r2, #0xff
	add r2, ip, r2
	and lr, r2, #0xff
	ldrb r3, [r1, lr]
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r2, #0x100
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r2, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001E00: .4byte 0x03003904

	arm_func_start ovx28_3001E04
ovx28_3001E04: @ 0x03001E04
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	ldrb r2, [r0, #7]
	ldr r1, _03001E6C @ =0x03003904
	and r3, r3, #1
	add r2, r2, r3
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	and r2, r2, #0xff
	add r2, ip, r2
	and lr, r2, #0xff
	ldrb r3, [r1, lr]
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r2, #0x100
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r2, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001E6C: .4byte 0x03003904

	arm_func_start ovx28_3001E70
ovx28_3001E70: @ 0x03001E70
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	ldrb r2, [r0, #4]
	ldr r1, _03001ED8 @ =0x03003904
	and r3, r3, #1
	add r2, r2, r3
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	and r2, r2, #0xff
	add r2, ip, r2
	and lr, r2, #0xff
	ldrb r3, [r1, lr]
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r2, #0x100
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r2, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001ED8: .4byte 0x03003904

	arm_func_start ovx28_3001EDC
ovx28_3001EDC: @ 0x03001EDC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	ldrb r2, [r0, #5]
	ldr r1, _03001F44 @ =0x03003904
	and r3, r3, #1
	add r2, r2, r3
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	and r2, r2, #0xff
	add r2, ip, r2
	and lr, r2, #0xff
	ldrb r3, [r1, lr]
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r2, #0x100
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r2, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001F44: .4byte 0x03003904

	arm_func_start ovx28_3001F48
ovx28_3001F48: @ 0x03001F48
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	ldrb r2, [r0, #2]
	ldr r1, _03001FB0 @ =0x03003904
	and r3, r3, #1
	add r2, r2, r3
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	and r2, r2, #0xff
	add r2, ip, r2
	and lr, r2, #0xff
	ldrb r3, [r1, lr]
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r2, #0x100
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r2, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03001FB0: .4byte 0x03003904

	arm_func_start ovx28_3001FB4
ovx28_3001FB4: @ 0x03001FB4
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	ldrb r2, [r0, #3]
	ldr r1, _0300201C @ =0x03003904
	and r3, r3, #1
	add r2, r2, r3
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	and r2, r2, #0xff
	add r2, ip, r2
	and lr, r2, #0xff
	ldrb r3, [r1, lr]
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r2, #0x100
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r2, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_0300201C: .4byte 0x03003904

	arm_func_start ovx28_3002020
ovx28_3002020: @ 0x03002020
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	ldr r2, _03002074 @ =0x03003904
	lsl r1, ip, #1
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r1, #0x100
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r1, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03002074: .4byte 0x03003904

	arm_func_start ovx28_3002078
ovx28_3002078: @ 0x03002078
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #6]
	ldr r2, [r0, #0x14]
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	ldrb r3, [r2, r1]
	add r1, ip, r3
	ldr r2, _030020D8 @ =0x03003904
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r1, #0x100
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r1, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030020D8: .4byte 0x03003904

	arm_func_start ovx28_30020DC
ovx28_30020DC: @ 0x030020DC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #6]
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	ldr r2, _03002134 @ =0x03003904
	add r1, ip, r3
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r1, #0x100
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r1, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03002134: .4byte 0x03003904

	arm_func_start ovx28_3002138
ovx28_3002138: @ 0x03002138
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #7]
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	ldr r2, _03002190 @ =0x03003904
	add r1, ip, r3
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r1, #0x100
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r1, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03002190: .4byte 0x03003904

	arm_func_start ovx28_3002194
ovx28_3002194: @ 0x03002194
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #4]
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	ldr r2, _030021EC @ =0x03003904
	add r1, ip, r3
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r1, #0x100
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r1, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030021EC: .4byte 0x03003904

	arm_func_start ovx28_30021F0
ovx28_30021F0: @ 0x030021F0
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #5]
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	ldr r2, _03002248 @ =0x03003904
	add r1, ip, r3
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r1, #0x100
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r1, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03002248: .4byte 0x03003904

	arm_func_start ovx28_300224C
ovx28_300224C: @ 0x0300224C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #2]
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	ldr r2, _030022A4 @ =0x03003904
	add r1, ip, r3
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r1, #0x100
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r1, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030022A4: .4byte 0x03003904

	arm_func_start ovx28_30022A8
ovx28_30022A8: @ 0x030022A8
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #3]
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	ldr r2, _03002300 @ =0x03003904
	add r1, ip, r3
	and lr, r1, #0xff
	ldrb r3, [r2, lr]
	and r3, r3, #0xfb
	strb r3, [r0]
	tst r1, #0x100
	orrne r3, r3, #1
	strbne r3, [r0]
	eor r3, r1, ip
	tst r3, #0x80
	ldrbne r3, [r0]
	orrne r3, r3, #4
	strbne r3, [r0]
	strb lr, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03002300: .4byte 0x03003904

	arm_func_start ovx28_3002304
ovx28_3002304: @ 0x03002304
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002318
ovx28_3002318: @ 0x03002318
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #6]
	ldr r3, [r0, #0x14]
	ldrb r2, [r3, r1]
	sub fp, ip, #4
	strb r2, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_300233C
ovx28_300233C: @ 0x0300233C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #6]
	strb r3, [r0, #1]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002358
ovx28_3002358: @ 0x03002358
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #7]
	strb r3, [r0, #1]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002374
ovx28_3002374: @ 0x03002374
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #4]
	strb r3, [r0, #1]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002390
ovx28_3002390: @ 0x03002390
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #5]
	strb r3, [r0, #1]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30023AC
ovx28_30023AC: @ 0x030023AC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #2]
	strb r3, [r0, #1]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30023C8
ovx28_30023C8: @ 0x030023C8
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #3]
	strb r3, [r0, #1]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30023E4
ovx28_30023E4: @ 0x030023E4
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #6]
	ldr r2, [r0, #0x14]
	ldrb r3, [r0, #1]
	sub fp, ip, #4
	strb r3, [r2, r1]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002408
ovx28_3002408: @ 0x03002408
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #6]
	ldr r2, [r0, #0x14]
	ldrb r3, [r0, #6]
	sub fp, ip, #4
	strb r3, [r2, r1]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_300242C
ovx28_300242C: @ 0x0300242C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #6]
	ldr r2, [r0, #0x14]
	ldrb r3, [r0, #7]
	sub fp, ip, #4
	strb r3, [r2, r1]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002450
ovx28_3002450: @ 0x03002450
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #6]
	ldr r2, [r0, #0x14]
	ldrb r3, [r0, #4]
	sub fp, ip, #4
	strb r3, [r2, r1]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002474
ovx28_3002474: @ 0x03002474
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #6]
	ldr r2, [r0, #0x14]
	ldrb r3, [r0, #5]
	sub fp, ip, #4
	strb r3, [r2, r1]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002498
ovx28_3002498: @ 0x03002498
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #6]
	ldr r2, [r0, #0x14]
	ldrb r3, [r0, #2]
	sub fp, ip, #4
	strb r3, [r2, r1]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30024BC
ovx28_30024BC: @ 0x030024BC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #6]
	ldr r2, [r0, #0x14]
	ldrb r3, [r0, #3]
	sub fp, ip, #4
	strb r3, [r2, r1]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30024E0
ovx28_30024E0: @ 0x030024E0
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	strb r3, [r0, #6]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30024FC
ovx28_30024FC: @ 0x030024FC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #6]
	ldr r3, [r0, #0x14]
	ldrb r2, [r3, r1]
	sub fp, ip, #4
	strb r2, [r0, #6]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002520
ovx28_3002520: @ 0x03002520
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002534
ovx28_3002534: @ 0x03002534
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #7]
	strb r3, [r0, #6]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002550
ovx28_3002550: @ 0x03002550
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #4]
	strb r3, [r0, #6]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_300256C
ovx28_300256C: @ 0x0300256C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #5]
	strb r3, [r0, #6]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002588
ovx28_3002588: @ 0x03002588
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #2]
	strb r3, [r0, #6]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30025A4
ovx28_30025A4: @ 0x030025A4
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #3]
	strb r3, [r0, #6]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30025C0
ovx28_30025C0: @ 0x030025C0
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	strb r3, [r0, #7]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30025DC
ovx28_30025DC: @ 0x030025DC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #6]
	ldr r3, [r0, #0x14]
	ldrb r2, [r3, r1]
	sub fp, ip, #4
	strb r2, [r0, #7]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002600
ovx28_3002600: @ 0x03002600
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #6]
	strb r3, [r0, #7]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_300261C
ovx28_300261C: @ 0x0300261C
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002630
ovx28_3002630: @ 0x03002630
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #4]
	strb r3, [r0, #7]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_300264C
ovx28_300264C: @ 0x0300264C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #5]
	strb r3, [r0, #7]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002668
ovx28_3002668: @ 0x03002668
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #2]
	strb r3, [r0, #7]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002684
ovx28_3002684: @ 0x03002684
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #3]
	strb r3, [r0, #7]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30026A0
ovx28_30026A0: @ 0x030026A0
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	strb r3, [r0, #4]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30026BC
ovx28_30026BC: @ 0x030026BC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #6]
	ldr r3, [r0, #0x14]
	ldrb r2, [r3, r1]
	sub fp, ip, #4
	strb r2, [r0, #4]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30026E0
ovx28_30026E0: @ 0x030026E0
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #6]
	strb r3, [r0, #4]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30026FC
ovx28_30026FC: @ 0x030026FC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #7]
	strb r3, [r0, #4]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002718
ovx28_3002718: @ 0x03002718
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_300272C
ovx28_300272C: @ 0x0300272C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #5]
	strb r3, [r0, #4]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002748
ovx28_3002748: @ 0x03002748
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #2]
	strb r3, [r0, #4]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002764
ovx28_3002764: @ 0x03002764
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #3]
	strb r3, [r0, #4]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002780
ovx28_3002780: @ 0x03002780
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	strb r3, [r0, #5]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_300279C
ovx28_300279C: @ 0x0300279C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #6]
	ldr r3, [r0, #0x14]
	ldrb r2, [r3, r1]
	sub fp, ip, #4
	strb r2, [r0, #5]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30027C0
ovx28_30027C0: @ 0x030027C0
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #6]
	strb r3, [r0, #5]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30027DC
ovx28_30027DC: @ 0x030027DC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #7]
	strb r3, [r0, #5]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30027F8
ovx28_30027F8: @ 0x030027F8
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #4]
	strb r3, [r0, #5]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002814
ovx28_3002814: @ 0x03002814
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002828
ovx28_3002828: @ 0x03002828
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #2]
	strb r3, [r0, #5]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002844
ovx28_3002844: @ 0x03002844
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #3]
	strb r3, [r0, #5]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002860
ovx28_3002860: @ 0x03002860
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	strb r3, [r0, #2]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_300287C
ovx28_300287C: @ 0x0300287C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #6]
	ldr r3, [r0, #0x14]
	ldrb r2, [r3, r1]
	sub fp, ip, #4
	strb r2, [r0, #2]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30028A0
ovx28_30028A0: @ 0x030028A0
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #6]
	strb r3, [r0, #2]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30028BC
ovx28_30028BC: @ 0x030028BC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #7]
	strb r3, [r0, #2]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30028D8
ovx28_30028D8: @ 0x030028D8
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #4]
	strb r3, [r0, #2]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30028F4
ovx28_30028F4: @ 0x030028F4
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #5]
	strb r3, [r0, #2]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002910
ovx28_3002910: @ 0x03002910
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002924
ovx28_3002924: @ 0x03002924
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #3]
	strb r3, [r0, #2]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002940
ovx28_3002940: @ 0x03002940
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	strb r3, [r0, #3]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_300295C
ovx28_300295C: @ 0x0300295C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #6]
	ldr r3, [r0, #0x14]
	ldrb r2, [r3, r1]
	sub fp, ip, #4
	strb r2, [r0, #3]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002980
ovx28_3002980: @ 0x03002980
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #6]
	strb r3, [r0, #3]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_300299C
ovx28_300299C: @ 0x0300299C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #7]
	strb r3, [r0, #3]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30029B8
ovx28_30029B8: @ 0x030029B8
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #4]
	strb r3, [r0, #3]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30029D4
ovx28_30029D4: @ 0x030029D4
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #5]
	strb r3, [r0, #3]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30029F0
ovx28_30029F0: @ 0x030029F0
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #2]
	strb r3, [r0, #3]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002A0C
ovx28_3002A0C: @ 0x03002A0C
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002A20
ovx28_3002A20: @ 0x03002A20
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	and r3, r3, #0xfe
	strb r3, [r0]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002A40
ovx28_3002A40: @ 0x03002A40
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0x10]
	ldr r1, [r0, #0x14]
	add r2, r3, #1
	strh r2, [r0, #0x10]
	lsl r3, r3, #0x10
	ldrb r2, [r1, r3, lsr #16]
	sub fp, ip, #4
	strb r2, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002A70
ovx28_3002A70: @ 0x03002A70
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	mov r4, r0
	ldrb lr, [r4, #1]
	ldrb r2, [r4]
	sub fp, ip, #4
	ldr r0, _03002ACC @ =0x03003904
	sub r3, lr, #1
	mov r5, r3
	lsl r1, r5, #0x10
	and r3, r1, #0xff0000
	and r2, r2, #1
	and r1, r1, #0xf00000
	ldrb ip, [r0, r3, lsr #16]
	and lr, lr, #0xf0
	orr ip, ip, r2
	orr r3, ip, #2
	strb r3, [r4]
	cmp lr, r1, lsr #16
	orrne r3, ip, #0x12
	strbne r3, [r4]
	strb r5, [r4, #1]
	b _03002AD0
	.align 2, 0
_03002ACC: .4byte 0x03003904
_03002AD0:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002AD8
ovx28_3002AD8: @ 0x03002AD8
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	mov r4, r0
	ldrb lr, [r4, #1]
	ldrb r2, [r4]
	sub fp, ip, #4
	ldr r0, _03002B30 @ =0x03003904
	add r3, lr, #1
	mov r5, r3
	mov r1, r5
	and r3, r1, #0xff
	and r2, r2, #1
	and r1, r1, #0xf0
	ldrb ip, [r0, r3]
	and lr, lr, #0xf0
	orr r3, ip, r2
	strb r3, [r4]
	cmp r1, lr
	orrne r3, r3, #0x10
	strbne r3, [r4]
	strb r5, [r4, #1]
	b _03002B34
	.align 2, 0
_03002B30: .4byte 0x03003904
_03002B34:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002B3C
ovx28_3002B3C: @ 0x03002B3C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0xe]
	sub r3, r3, #1
	strh r3, [r0, #0xe]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002B5C
ovx28_3002B5C: @ 0x03002B5C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #6]
	ldrh r2, [r0, #0xe]
	add r3, r3, r2
	lsr r1, r3, #0x10
	strb r1, [r0]
	strh r3, [r0, #6]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002B88
ovx28_3002B88: @ 0x03002B88
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	tst r3, #1
	sub fp, ip, #4
	beq _03002BC0
	ldrh r3, [r0, #0x10]
	ldr r2, [r0, #0x14]
	ldrsb r1, [r2, r3]
	add r3, r3, r1
_03002BB0:
	add r3, r3, #1
	strh r3, [r0, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr
_03002BC0:
	ldrh r3, [r0, #0x10]
	b _03002BB0

	arm_func_start ovx28_3002BC8
ovx28_3002BC8: @ 0x03002BC8
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	eor r3, r3, #1
	strb r3, [r0]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002BE8
ovx28_3002BE8: @ 0x03002BE8
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r2, [r0, #0x10]
	ldr r1, [r0, #0x14]
	add r3, r2, #1
	strh r3, [r0, #0x10]
	sub fp, ip, #4
	ldrh ip, [r0, #6]
	lsl r2, r2, #0x10
	ldrb r3, [r1, r2, lsr #16]
	strb r3, [r1, ip]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002C1C
ovx28_3002C1C: @ 0x03002C1C
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	mov r4, r0
	ldrh r1, [r4, #6]
	ldr r3, [r4, #0x14]
	ldrb lr, [r3, r1]
	sub fp, ip, #4
	ldr r0, _03002C88 @ =0x03003904
	sub r2, lr, #1
	mov r5, r2
	lsl r2, r5, #0x10
	and r3, r2, #0xff0000
	and r2, r2, #0xf00000
	ldrb r1, [r4]
	and lr, lr, #0xf0
	ldrb ip, [r0, r3, lsr #16]
	and r1, r1, #1
	orr ip, ip, r1
	orr r3, ip, #2
	strb r3, [r4]
	cmp lr, r2, lsr #16
	orrne r3, ip, #0x12
	strbne r3, [r4]
	ldrh r2, [r4, #6]
	ldr r3, [r4, #0x14]
	strb r5, [r3, r2]
	b _03002C8C
	.align 2, 0
_03002C88: .4byte 0x03003904
_03002C8C:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002C94
ovx28_3002C94: @ 0x03002C94
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	mov r4, r0
	ldrh r1, [r4, #6]
	ldr r3, [r4, #0x14]
	ldrb lr, [r3, r1]
	sub fp, ip, #4
	ldr r0, _03002CF8 @ =0x03003904
	add r2, lr, #1
	mov r5, r2
	and r3, r2, #0xff
	and r2, r2, #0xf0
	ldrb r1, [r4]
	and lr, lr, #0xf0
	ldrb ip, [r0, r3]
	and r1, r1, #1
	orr r3, ip, r1
	strb r3, [r4]
	cmp r2, lr
	orrne r3, r3, #0x10
	strbne r3, [r4]
	ldrh r2, [r4, #6]
	ldr r3, [r4, #0x14]
	strb r5, [r3, r2]
	b _03002CFC
	.align 2, 0
_03002CF8: .4byte 0x03003904
_03002CFC:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002D04
ovx28_3002D04: @ 0x03002D04
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0xe]
	add r3, r3, #1
	strh r3, [r0, #0xe]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002D24
ovx28_3002D24: @ 0x03002D24
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0x10]
	sub fp, ip, #4
	ldr ip, [r0, #0x14]
	ldrb r1, [ip, r3]
	add r2, r3, ip
	ldrb lr, [r2, #1]
	add r3, r3, #2
	strh r3, [r0, #0x10]
	ldrb r2, [r0, #1]
	orr r1, r1, lr, lsl #8
	strb r2, [ip, r1]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002D60
ovx28_3002D60: @ 0x03002D60
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0x10]
	sub fp, ip, #4
	ldr ip, [r0, #0x14]
	ldrb r1, [ip, r3]
	add r2, r3, ip
	ldrb lr, [r2, #1]
	add r3, r3, #2
	strh r3, [r0, #0x10]
	orr r1, r1, lr, lsl #8
	strh r1, [r0, #0xe]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002D98
ovx28_3002D98: @ 0x03002D98
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	tst r3, #1
	sub fp, ip, #4
	beq _03002DC4
	ldrh r3, [r0, #0x10]
_03002DB4:
	add r3, r3, #1
	strh r3, [r0, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr
_03002DC4:
	ldrh r3, [r0, #0x10]
	ldr r2, [r0, #0x14]
	ldrsb r1, [r2, r3]
	add r3, r3, r1
	b _03002DB4

	arm_func_start ovx28_3002DD8
ovx28_3002DD8: @ 0x03002DD8
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #1]
	mvn r3, r3
	strb r3, [r0, #1]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002DF8
ovx28_3002DF8: @ 0x03002DF8
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0x10]
	ldr r1, [r0, #0x14]
	add r2, r3, #1
	strh r2, [r0, #0x10]
	lsl r3, r3, #0x10
	ldrb r2, [r1, r3, lsr #16]
	sub fp, ip, #4
	strb r2, [r0, #6]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002E28
ovx28_3002E28: @ 0x03002E28
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	mov r4, r0
	ldrb lr, [r4, #6]
	ldrb r2, [r4]
	sub fp, ip, #4
	ldr r0, _03002E84 @ =0x03003904
	sub r3, lr, #1
	mov r5, r3
	lsl r1, r5, #0x10
	and r3, r1, #0xff0000
	and r2, r2, #1
	and r1, r1, #0xf00000
	ldrb ip, [r0, r3, lsr #16]
	and lr, lr, #0xf0
	orr ip, ip, r2
	orr r3, ip, #2
	strb r3, [r4]
	cmp lr, r1, lsr #16
	orrne r3, ip, #0x12
	strbne r3, [r4]
	strb r5, [r4, #6]
	b _03002E88
	.align 2, 0
_03002E84: .4byte 0x03003904
_03002E88:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002E90
ovx28_3002E90: @ 0x03002E90
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	mov r4, r0
	ldrb lr, [r4, #6]
	ldrb r2, [r4]
	sub fp, ip, #4
	ldr r0, _03002EE8 @ =0x03003904
	add r3, lr, #1
	mov r5, r3
	mov r1, r5
	and r3, r1, #0xff
	and r2, r2, #1
	and r1, r1, #0xf0
	ldrb ip, [r0, r3]
	and lr, lr, #0xf0
	orr r3, ip, r2
	strb r3, [r4]
	cmp r1, lr
	orrne r3, r3, #0x10
	strbne r3, [r4]
	strb r5, [r4, #6]
	b _03002EEC
	.align 2, 0
_03002EE8: .4byte 0x03003904
_03002EEC:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002EF4
ovx28_3002EF4: @ 0x03002EF4
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #6]
	sub r3, r3, #1
	strh r3, [r0, #6]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002F14
ovx28_3002F14: @ 0x03002F14
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #6]
	lsl r3, r3, #1
	lsr r2, r3, #0x10
	strb r2, [r0]
	strh r3, [r0, #6]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002F3C
ovx28_3002F3C: @ 0x03002F3C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	tst r3, #0x40
	sub fp, ip, #4
	beq _03002F74
	ldrh r3, [r0, #0x10]
	ldr r2, [r0, #0x14]
	ldrsb r1, [r2, r3]
	add r3, r3, r1
_03002F64:
	add r3, r3, #1
	strh r3, [r0, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr
_03002F74:
	ldrh r3, [r0, #0x10]
	b _03002F64

	arm_func_start ovx28_3002F7C
ovx28_3002F7C: @ 0x03002F7C
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002F90
ovx28_3002F90: @ 0x03002F90
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0x10]
	ldr r1, [r0, #0x14]
	add r2, r3, #1
	strh r2, [r0, #0x10]
	lsl r3, r3, #0x10
	ldrb r2, [r1, r3, lsr #16]
	sub fp, ip, #4
	strb r2, [r0, #7]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3002FC0
ovx28_3002FC0: @ 0x03002FC0
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	mov r4, r0
	ldrb lr, [r4, #7]
	ldrb r2, [r4]
	sub fp, ip, #4
	ldr r0, _0300301C @ =0x03003904
	sub r3, lr, #1
	mov r5, r3
	lsl r1, r5, #0x10
	and r3, r1, #0xff0000
	and r2, r2, #1
	and r1, r1, #0xf00000
	ldrb ip, [r0, r3, lsr #16]
	and lr, lr, #0xf0
	orr ip, ip, r2
	orr r3, ip, #2
	strb r3, [r4]
	cmp lr, r1, lsr #16
	orrne r3, ip, #0x12
	strbne r3, [r4]
	strb r5, [r4, #7]
	b _03003020
	.align 2, 0
_0300301C: .4byte 0x03003904
_03003020:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovx28_3003028
ovx28_3003028: @ 0x03003028
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	mov r4, r0
	ldrb lr, [r4, #7]
	ldrb r2, [r4]
	sub fp, ip, #4
	ldr r0, _03003080 @ =0x03003904
	add r3, lr, #1
	mov r5, r3
	mov r1, r5
	and r3, r1, #0xff
	and r2, r2, #1
	and r1, r1, #0xf0
	ldrb ip, [r0, r3]
	and lr, lr, #0xf0
	orr r3, ip, r2
	strb r3, [r4]
	cmp r1, lr
	orrne r3, r3, #0x10
	strbne r3, [r4]
	strb r5, [r4, #7]
	b _03003084
	.align 2, 0
_03003080: .4byte 0x03003904
_03003084:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovx28_300308C
ovx28_300308C: @ 0x0300308C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #6]
	add r3, r3, #1
	strh r3, [r0, #6]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30030AC
ovx28_30030AC: @ 0x030030AC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0x10]
	sub fp, ip, #4
	ldr ip, [r0, #0x14]
	ldrb r1, [ip, r3]
	add r2, r3, ip
	ldrb lr, [r2, #1]
	add r3, r3, #2
	strh r3, [r0, #0x10]
	ldrb r2, [r0, #6]
	orr r1, r1, lr, lsl #8
	strb r2, [ip, r1]
	ldr r3, [r0, #0x14]
	ldrb r2, [r0, #7]
	add r1, r1, r3
	strb r2, [r1, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30030F8
ovx28_30030F8: @ 0x030030F8
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0x10]
	sub fp, ip, #4
	ldr ip, [r0, #0x14]
	ldrb r1, [ip, r3]
	add r2, r3, ip
	ldrb lr, [r2, #1]
	add r3, r3, #2
	strh r3, [r0, #0x10]
	orr r1, r1, lr, lsl #8
	strh r1, [r0, #6]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3003130
ovx28_3003130: @ 0x03003130
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	tst r3, #0x40
	sub fp, ip, #4
	beq _0300315C
	ldrh r3, [r0, #0x10]
_0300314C:
	add r3, r3, #1
	strh r3, [r0, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr
_0300315C:
	ldrh r3, [r0, #0x10]
	ldr r2, [r0, #0x14]
	ldrsb r1, [r2, r3]
	add r3, r3, r1
	b _0300314C

	arm_func_start ovx28_3003170
ovx28_3003170: @ 0x03003170
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r1, [r0]
	tst r1, #1
	sub fp, ip, #4
	ldrb ip, [r0, #1]
	and r1, r1, #0xfe
	lsr r3, ip, #1
	orr r2, r3, #0x80
	movne r3, r2
	and ip, ip, #1
	strb r3, [r0, #1]
	orr r1, r1, ip
	strb r1, [r0]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30031B0
ovx28_30031B0: @ 0x030031B0
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0x10]
	ldr r1, [r0, #0x14]
	add r2, r3, #1
	strh r2, [r0, #0x10]
	lsl r3, r3, #0x10
	ldrb r2, [r1, r3, lsr #16]
	sub fp, ip, #4
	strb r2, [r0, #4]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30031E0
ovx28_30031E0: @ 0x030031E0
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	mov r4, r0
	ldrb lr, [r4, #4]
	ldrb r2, [r4]
	sub fp, ip, #4
	ldr r0, _0300323C @ =0x03003904
	sub r3, lr, #1
	mov r5, r3
	lsl r1, r5, #0x10
	and r3, r1, #0xff0000
	and r2, r2, #1
	and r1, r1, #0xf00000
	ldrb ip, [r0, r3, lsr #16]
	and lr, lr, #0xf0
	orr ip, ip, r2
	orr r3, ip, #2
	strb r3, [r4]
	cmp lr, r1, lsr #16
	orrne r3, ip, #0x12
	strbne r3, [r4]
	strb r5, [r4, #4]
	b _03003240
	.align 2, 0
_0300323C: .4byte 0x03003904
_03003240:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovx28_3003248
ovx28_3003248: @ 0x03003248
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	mov r4, r0
	ldrb lr, [r4, #4]
	ldrb r2, [r4]
	sub fp, ip, #4
	ldr r0, _030032A0 @ =0x03003904
	add r3, lr, #1
	mov r5, r3
	mov r1, r5
	and r3, r1, #0xff
	and r2, r2, #1
	and r1, r1, #0xf0
	ldrb ip, [r0, r3]
	and lr, lr, #0xf0
	orr r3, ip, r2
	strb r3, [r4]
	cmp r1, lr
	orrne r3, r3, #0x10
	strbne r3, [r4]
	strb r5, [r4, #4]
	b _030032A4
	.align 2, 0
_030032A0: .4byte 0x03003904
_030032A4:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovx28_30032AC
ovx28_30032AC: @ 0x030032AC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #4]
	sub r3, r3, #1
	strh r3, [r0, #4]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30032CC
ovx28_30032CC: @ 0x030032CC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #4]
	ldr r3, [r0, #0x14]
	ldrb r2, [r3, r1]
	sub fp, ip, #4
	strb r2, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30032F0
ovx28_30032F0: @ 0x030032F0
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r2, [r0, #6]
	ldrh r1, [r0, #4]
	ldrb r3, [r0]
	add r2, r2, r1
	bic r3, r3, #2
	orr r3, r3, r2, lsr #16
	strb r3, [r0]
	strh r2, [r0, #6]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3003324
ovx28_3003324: @ 0x03003324
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0x10]
	ldr r2, [r0, #0x14]
	ldrsb r1, [r2, r3]
	sub fp, ip, #4
	add r3, r3, r1
	add r3, r3, #1
	strh r3, [r0, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3003350
ovx28_3003350: @ 0x03003350
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0]
	and r2, r2, #1
	orr r2, r2, r1, lsl #1
	lsr r1, r1, #7
	cmp r1, #0
	strb r2, [r0, #1]
	orrne r3, r3, #1
	andeq r3, r3, #0xfe
	strb r3, [r0]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3003390
ovx28_3003390: @ 0x03003390
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0x10]
	ldr r1, [r0, #0x14]
	add r2, r3, #1
	strh r2, [r0, #0x10]
	lsl r3, r3, #0x10
	ldrb r2, [r1, r3, lsr #16]
	sub fp, ip, #4
	strb r2, [r0, #5]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30033C0
ovx28_30033C0: @ 0x030033C0
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	mov r4, r0
	ldrb lr, [r4, #5]
	ldrb r2, [r4]
	sub fp, ip, #4
	ldr r0, _0300341C @ =0x03003904
	sub r3, lr, #1
	mov r5, r3
	lsl r1, r5, #0x10
	and r3, r1, #0xff0000
	and r2, r2, #1
	and r1, r1, #0xf00000
	ldrb ip, [r0, r3, lsr #16]
	and lr, lr, #0xf0
	orr ip, ip, r2
	orr r3, ip, #2
	strb r3, [r4]
	cmp lr, r1, lsr #16
	orrne r3, ip, #0x12
	strbne r3, [r4]
	strb r5, [r4, #5]
	b _03003420
	.align 2, 0
_0300341C: .4byte 0x03003904
_03003420:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovx28_3003428
ovx28_3003428: @ 0x03003428
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	mov r4, r0
	ldrb lr, [r4, #5]
	ldrb r2, [r4]
	sub fp, ip, #4
	ldr r0, _03003480 @ =0x03003904
	add r3, lr, #1
	mov r5, r3
	mov r1, r5
	and r3, r1, #0xff
	and r2, r2, #1
	and r1, r1, #0xf0
	ldrb ip, [r0, r3]
	and lr, lr, #0xf0
	orr r3, ip, r2
	strb r3, [r4]
	cmp r1, lr
	orrne r3, r3, #0x10
	strbne r3, [r4]
	strb r5, [r4, #5]
	b _03003484
	.align 2, 0
_03003480: .4byte 0x03003904
_03003484:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovx28_300348C
ovx28_300348C: @ 0x0300348C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #4]
	add r3, r3, #1
	strh r3, [r0, #4]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30034AC
ovx28_30034AC: @ 0x030034AC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #4]
	ldr r2, [r0, #0x14]
	ldrb r3, [r0, #1]
	sub fp, ip, #4
	strb r3, [r2, r1]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30034D0
ovx28_30034D0: @ 0x030034D0
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0x10]
	sub fp, ip, #4
	ldr ip, [r0, #0x14]
	ldrb r1, [ip, r3]
	add r2, r3, ip
	ldrb lr, [r2, #1]
	add r3, r3, #2
	strh r3, [r0, #0x10]
	orr r1, r1, lr, lsl #8
	strh r1, [r0, #4]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3003508
ovx28_3003508: @ 0x03003508
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0, #3]
	sub r3, r3, #1
	tst r3, #0xff
	strb r3, [r0, #3]
	sub fp, ip, #4
	beq _03003548
	ldrh r3, [r0, #0x10]
	ldr r2, [r0, #0x14]
	ldrsb r1, [r2, r3]
	add r3, r3, r1
_03003538:
	add r3, r3, #1
	strh r3, [r0, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr
_03003548:
	ldrh r3, [r0, #0x10]
	b _03003538

	arm_func_start ovx28_3003550
ovx28_3003550: @ 0x03003550
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r1, [r0]
	ldrb r3, [r0, #1]
	and r1, r1, #0xec
	and r2, r3, #1
	orr r1, r1, r2
	and r3, r3, #0xff
	lsr r3, r3, #1
	tst r1, #1
	orr r2, r3, #0x80
	strb r1, [r0]
	movne r3, r2
	strb r3, [r0, #1]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3003594
ovx28_3003594: @ 0x03003594
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0x10]
	ldr r1, [r0, #0x14]
	add r2, r3, #1
	strh r2, [r0, #0x10]
	lsl r3, r3, #0x10
	ldrb r2, [r1, r3, lsr #16]
	sub fp, ip, #4
	strb r2, [r0, #2]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30035C4
ovx28_30035C4: @ 0x030035C4
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	mov r4, r0
	ldrb lr, [r4, #2]
	ldrb r2, [r4]
	sub fp, ip, #4
	ldr r0, _03003620 @ =0x03003904
	sub r3, lr, #1
	mov r5, r3
	lsl r1, r5, #0x10
	and r3, r1, #0xff0000
	and r2, r2, #1
	and r1, r1, #0xf00000
	ldrb ip, [r0, r3, lsr #16]
	and lr, lr, #0xf0
	orr ip, ip, r2
	orr r3, ip, #2
	strb r3, [r4]
	cmp lr, r1, lsr #16
	orrne r3, ip, #0x12
	strbne r3, [r4]
	strb r5, [r4, #2]
	b _03003624
	.align 2, 0
_03003620: .4byte 0x03003904
_03003624:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovx28_300362C
ovx28_300362C: @ 0x0300362C
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	mov r4, r0
	ldrb lr, [r4, #2]
	ldrb r2, [r4]
	sub fp, ip, #4
	ldr r0, _03003684 @ =0x03003904
	add r3, lr, #1
	mov r5, r3
	mov r1, r5
	and r3, r1, #0xff
	and r2, r2, #1
	and r1, r1, #0xf0
	ldrb ip, [r0, r3]
	and lr, lr, #0xf0
	orr r3, ip, r2
	strb r3, [r4]
	cmp r1, lr
	orrne r3, r3, #0x10
	strbne r3, [r4]
	strb r5, [r4, #2]
	b _03003688
	.align 2, 0
_03003684: .4byte 0x03003904
_03003688:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovx28_3003690
ovx28_3003690: @ 0x03003690
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #2]
	sub r3, r3, #1
	strh r3, [r0, #2]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30036B0
ovx28_30036B0: @ 0x030036B0
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #2]
	ldr r3, [r0, #0x14]
	ldrb r2, [r3, r1]
	sub fp, ip, #4
	strb r2, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30036D4
ovx28_30036D4: @ 0x030036D4
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r2, [r0, #6]
	ldrh r1, [r0, #2]
	ldrb r3, [r0]
	add r2, r2, r1
	bic r3, r3, #2
	orr r3, r3, r2, lsr #16
	strb r3, [r0]
	strh r2, [r0, #6]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3003708
ovx28_3003708: @ 0x03003708
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r2, [r0]
	and r2, r2, #0xec
	strb r2, [r0]
	ldrb r3, [r0]
	ldrb r2, [r0, #1]
	orr r3, r3, r2, lsr #7
	strb r3, [r0]
	sub fp, ip, #4
	and r3, r3, #1
	orr r3, r3, r2, lsl #1
	strb r3, [r0, #1]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3003744
ovx28_3003744: @ 0x03003744
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0x10]
	ldr r1, [r0, #0x14]
	add r2, r3, #1
	strh r2, [r0, #0x10]
	lsl r3, r3, #0x10
	ldrb r2, [r1, r3, lsr #16]
	sub fp, ip, #4
	strb r2, [r0, #3]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3003774
ovx28_3003774: @ 0x03003774
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	mov r4, r0
	ldrb lr, [r4, #3]
	ldrb r2, [r4]
	sub fp, ip, #4
	ldr r0, _030037D0 @ =0x03003904
	sub r3, lr, #1
	mov r5, r3
	lsl r1, r5, #0x10
	and r3, r1, #0xff0000
	and r2, r2, #1
	and r1, r1, #0xf00000
	ldrb ip, [r0, r3, lsr #16]
	and lr, lr, #0xf0
	orr ip, ip, r2
	orr r3, ip, #2
	strb r3, [r4]
	cmp lr, r1, lsr #16
	orrne r3, ip, #0x12
	strbne r3, [r4]
	strb r5, [r4, #3]
	b _030037D4
	.align 2, 0
_030037D0: .4byte 0x03003904
_030037D4:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovx28_30037DC
ovx28_30037DC: @ 0x030037DC
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	mov r4, r0
	ldrb lr, [r4, #3]
	ldrb r2, [r4]
	sub fp, ip, #4
	ldr r0, _03003834 @ =0x03003904
	add r3, lr, #1
	mov r5, r3
	mov r1, r5
	and r3, r1, #0xff
	and r2, r2, #1
	and r1, r1, #0xf0
	ldrb ip, [r0, r3]
	and lr, lr, #0xf0
	orr r3, ip, r2
	strb r3, [r4]
	cmp r1, lr
	orrne r3, r3, #0x10
	strbne r3, [r4]
	strb r5, [r4, #3]
	b _03003838
	.align 2, 0
_03003834: .4byte 0x03003904
_03003838:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovx28_3003840
ovx28_3003840: @ 0x03003840
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #2]
	add r3, r3, #1
	strh r3, [r0, #2]
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3003860
ovx28_3003860: @ 0x03003860
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r1, [r0, #2]
	ldr r2, [r0, #0x14]
	ldrb r3, [r0, #1]
	sub fp, ip, #4
	strb r3, [r2, r1]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3003884
ovx28_3003884: @ 0x03003884
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0x10]
	sub fp, ip, #4
	ldr ip, [r0, #0x14]
	ldrb r1, [ip, r3]
	add r2, r3, ip
	ldrb lr, [r2, #1]
	add r3, r3, #2
	strh r3, [r0, #0x10]
	orr r1, r1, lr, lsl #8
	strh r1, [r0, #2]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30038BC
ovx28_30038BC: @ 0x030038BC
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30038D0
ovx28_30038D0: @ 0x030038D0
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrh r3, [r0, #0x10]
	ldr r1, [r0, #0x14]
	sub fp, ip, #4
	ldrb ip, [r1, r3]
	add r2, r3, r1
	ldrb lr, [r2, #1]
	add r3, r3, #2
	strh r3, [r0, #0x10]
	orr r0, ip, lr, lsl #8
	ldmdb fp, {fp, sp, lr}
	bx lr
_03003904:
	.byte 0x44, 0x00, 0x00, 0x04, 0x00, 0x04, 0x04, 0x00, 0x00, 0x04, 0x04, 0x00
	.byte 0x04, 0x00, 0x00, 0x04, 0x00, 0x04, 0x04, 0x00, 0x04, 0x00, 0x00, 0x04, 0x04, 0x00, 0x00, 0x04
	.byte 0x00, 0x04, 0x04, 0x00, 0x00, 0x04, 0x04, 0x00, 0x04, 0x00, 0x00, 0x04, 0x04, 0x00, 0x00, 0x04
	.byte 0x00, 0x04, 0x04, 0x00, 0x04, 0x00, 0x00, 0x04, 0x00, 0x04, 0x04, 0x00, 0x00, 0x04, 0x04, 0x00
	.byte 0x04, 0x00, 0x00, 0x04, 0x00, 0x04, 0x04, 0x00, 0x04, 0x00, 0x00, 0x04, 0x04, 0x00, 0x00, 0x04
	.byte 0x00, 0x04, 0x04, 0x00, 0x04, 0x00, 0x00, 0x04, 0x00, 0x04, 0x04, 0x00, 0x00, 0x04, 0x04, 0x00
	.byte 0x04, 0x00, 0x00, 0x04, 0x04, 0x00, 0x00, 0x04, 0x00, 0x04, 0x04, 0x00, 0x00, 0x04, 0x04, 0x00
	.byte 0x04, 0x00, 0x00, 0x04, 0x00, 0x04, 0x04, 0x00, 0x04, 0x00, 0x00, 0x04, 0x04, 0x00, 0x00, 0x04
	.byte 0x00, 0x04, 0x04, 0x00, 0x80, 0x84, 0x84, 0x80, 0x84, 0x80, 0x80, 0x84, 0x84, 0x80, 0x80, 0x84
	.byte 0x80, 0x84, 0x84, 0x80, 0x84, 0x80, 0x80, 0x84, 0x80, 0x84, 0x84, 0x80, 0x80, 0x84, 0x84, 0x80
	.byte 0x84, 0x80, 0x80, 0x84, 0x84, 0x80, 0x80, 0x84, 0x80, 0x84, 0x84, 0x80, 0x80, 0x84, 0x84, 0x80
	.byte 0x84, 0x80, 0x80, 0x84, 0x80, 0x84, 0x84, 0x80, 0x84, 0x80, 0x80, 0x84, 0x84, 0x80, 0x80, 0x84
	.byte 0x80, 0x84, 0x84, 0x80, 0x84, 0x80, 0x80, 0x84, 0x80, 0x84, 0x84, 0x80, 0x80, 0x84, 0x84, 0x80
	.byte 0x84, 0x80, 0x80, 0x84, 0x80, 0x84, 0x84, 0x80, 0x84, 0x80, 0x80, 0x84, 0x84, 0x80, 0x80, 0x84
	.byte 0x80, 0x84, 0x84, 0x80, 0x80, 0x84, 0x84, 0x80, 0x84, 0x80, 0x80, 0x84, 0x84, 0x80, 0x80, 0x84
	.byte 0x80, 0x84, 0x84, 0x80, 0x84, 0x80, 0x80, 0x84, 0x80, 0x84, 0x84, 0x80, 0x80, 0x84, 0x84, 0x80
	.byte 0x84, 0x80, 0x80, 0x84

	.global ovx28_3003A04
ovx28_3003A04:
	.4byte ovx28_30038BC
	.4byte ovx28_3003884
	.4byte ovx28_3003860
	.4byte ovx28_3003840
	.4byte ovx28_30037DC
	.4byte ovx28_3003774
	.4byte ovx28_3003744
	.4byte ovx28_3003708
	.4byte sub_08018370
	.4byte ovx28_30036D4
	.4byte ovx28_30036B0
	.4byte ovx28_3003690
	.4byte ovx28_300362C
	.4byte ovx28_30035C4
	.4byte ovx28_3003594
	.4byte ovx28_3003550
	.4byte ovx28_3003508
	.4byte ovx28_30034D0
	.4byte ovx28_30034AC
	.4byte ovx28_300348C
	.4byte ovx28_3003428
	.4byte ovx28_30033C0
	.4byte ovx28_3003390
	.4byte ovx28_3003350
	.4byte ovx28_3003324
	.4byte ovx28_30032F0
	.4byte ovx28_30032CC
	.4byte ovx28_30032AC
	.4byte ovx28_3003248
	.4byte ovx28_30031E0
	.4byte ovx28_30031B0
	.4byte ovx28_3003170
	.4byte ovx28_3003130
	.4byte ovx28_30030F8
	.4byte ovx28_30030AC
	.4byte ovx28_300308C
	.4byte ovx28_3003028
	.4byte ovx28_3002FC0
	.4byte ovx28_3002F90
	.4byte sub_08018370
	.4byte ovx28_3002F3C
	.4byte ovx28_3002F14
	.4byte ovx28_3000000
	.4byte ovx28_3002EF4
	.4byte ovx28_3002E90
	.4byte ovx28_3002E28
	.4byte ovx28_3002DF8
	.4byte ovx28_3002DD8
	.4byte ovx28_3002D98
	.4byte ovx28_3002D60
	.4byte ovx28_3002D24
	.4byte ovx28_3002D04
	.4byte ovx28_3002C94
	.4byte ovx28_3002C1C
	.4byte ovx28_3002BE8
	.4byte ovx28_3002BC8
	.4byte ovx28_3002B88
	.4byte ovx28_3002B5C
	.4byte ovx28_30000D8
	.4byte ovx28_3002B3C
	.4byte ovx28_3002AD8
	.4byte ovx28_3002A70
	.4byte ovx28_3002A40
	.4byte ovx28_3002A20
	.4byte ovx28_3002A0C
	.4byte ovx28_30029F0
	.4byte ovx28_30029D4
	.4byte ovx28_30029B8
	.4byte ovx28_300299C
	.4byte ovx28_3002980
	.4byte ovx28_300295C
	.4byte ovx28_3002940
	.4byte ovx28_3002924
	.4byte ovx28_3002910
	.4byte ovx28_30028F4
	.4byte ovx28_30028D8
	.4byte ovx28_30028BC
	.4byte ovx28_30028A0
	.4byte ovx28_300287C
	.4byte ovx28_3002860
	.4byte ovx28_3002844
	.4byte ovx28_3002828
	.4byte ovx28_3002814
	.4byte ovx28_30027F8
	.4byte ovx28_30027DC
	.4byte ovx28_30027C0
	.4byte ovx28_300279C
	.4byte ovx28_3002780
	.4byte ovx28_3002764
	.4byte ovx28_3002748
	.4byte ovx28_300272C
	.4byte ovx28_3002718
	.4byte ovx28_30026FC
	.4byte ovx28_30026E0
	.4byte ovx28_30026BC
	.4byte ovx28_30026A0
	.4byte ovx28_3002684
	.4byte ovx28_3002668
	.4byte ovx28_300264C
	.4byte ovx28_3002630
	.4byte ovx28_300261C
	.4byte ovx28_3002600
	.4byte ovx28_30025DC
	.4byte ovx28_30025C0
	.4byte ovx28_30025A4
	.4byte ovx28_3002588
	.4byte ovx28_300256C
	.4byte ovx28_3002550
	.4byte ovx28_3002534
	.4byte ovx28_3002520
	.4byte ovx28_30024FC
	.4byte ovx28_30024E0
	.4byte ovx28_30024BC
	.4byte ovx28_3002498
	.4byte ovx28_3002474
	.4byte ovx28_3002450
	.4byte ovx28_300242C
	.4byte ovx28_3002408
	.4byte ovx28_30002DC
	.4byte ovx28_30023E4
	.4byte ovx28_30023C8
	.4byte ovx28_30023AC
	.4byte ovx28_3002390
	.4byte ovx28_3002374
	.4byte ovx28_3002358
	.4byte ovx28_300233C
	.4byte ovx28_3002318
	.4byte ovx28_3002304
	.4byte ovx28_30022A8
	.4byte ovx28_300224C
	.4byte ovx28_30021F0
	.4byte ovx28_3002194
	.4byte ovx28_3002138
	.4byte ovx28_30020DC
	.4byte ovx28_3002078
	.4byte ovx28_3002020
	.4byte ovx28_3001FB4
	.4byte ovx28_3001F48
	.4byte ovx28_3001EDC
	.4byte ovx28_3001E70
	.4byte ovx28_3001E04
	.4byte ovx28_3001D98
	.4byte ovx28_3001D20
	.4byte ovx28_3001CB8
	.4byte ovx28_3001C58
	.4byte ovx28_3001BF8
	.4byte ovx28_3001B98
	.4byte ovx28_3001B38
	.4byte ovx28_3001AD8
	.4byte ovx28_3001A78
	.4byte ovx28_3001A10
	.4byte ovx28_30019CC
	.4byte ovx28_300195C
	.4byte ovx28_30018EC
	.4byte ovx28_300187C
	.4byte ovx28_300180C
	.4byte ovx28_300179C
	.4byte ovx28_300172C
	.4byte ovx28_30016B0
	.4byte ovx28_3001644
	.4byte ovx28_300160C
	.4byte ovx28_30015D4
	.4byte ovx28_300159C
	.4byte ovx28_3001564
	.4byte ovx28_300152C
	.4byte ovx28_30014F4
	.4byte ovx28_30014B4
	.4byte ovx28_3001484
	.4byte ovx28_3001450
	.4byte ovx28_300141C
	.4byte ovx28_30013E8
	.4byte ovx28_30013B4
	.4byte ovx28_3001380
	.4byte ovx28_300134C
	.4byte ovx28_3001310
	.4byte ovx28_30012E4
	.4byte ovx28_30012B0
	.4byte ovx28_300127C
	.4byte ovx28_3001248
	.4byte ovx28_3001214
	.4byte ovx28_30011E0
	.4byte ovx28_30011AC
	.4byte ovx28_3001170
	.4byte ovx28_3001144
	.4byte ovx28_30010E8
	.4byte ovx28_300108C
	.4byte ovx28_3001030
	.4byte ovx28_3000FD4
	.4byte ovx28_3000F78
	.4byte ovx28_3000F1C
	.4byte ovx28_3000EB8
	.4byte ovx28_3000E80
	.4byte ovx28_3000E44
	.4byte ovx28_3000E18
	.4byte ovx28_3000DCC
	.4byte ovx28_3000D9C
	.4byte ovx28_3000D2C
	.4byte ovx28_3000CF8
	.4byte ovx28_3000C88
	.4byte sub_0802206C
	.4byte ovx28_3000C4C
	.4byte ovx28_3000C20
	.4byte ovx28_3000BD4
	.4byte sub_08018370
	.4byte ovx28_3000B64
	.4byte ovx28_3000B14
	.4byte ovx28_3000A90
	.4byte sub_08022044
	.4byte ovx28_3000A40
	.4byte ovx28_3000A14
	.4byte ovx28_30009C8
	.4byte ovx28_30002AC
	.4byte ovx28_3000958
	.4byte ovx28_3000924
	.4byte ovx28_30008B0
	.4byte sub_08018370
	.4byte ovx28_3000860
	.4byte sub_08018370
	.4byte ovx28_3000814
	.4byte sub_08018370
	.4byte ovx28_30007A4
	.4byte sub_08018370
	.4byte ovx28_300071C
	.4byte sub_08018370
	.4byte sub_08018370
	.4byte ovx28_30006DC
	.4byte sub_08018370
	.4byte ovx28_3000694
	.4byte sub_08018370
	.4byte ovx28_3000660
	.4byte ovx28_3000614
	.4byte sub_08018370
	.4byte sub_08018370
	.4byte ovx28_30005E4
	.4byte sub_08018370
	.4byte ovx28_30005C0
	.4byte sub_08018370
	.4byte sub_08018370
	.4byte ovx28_3000578
	.4byte sub_08018370
	.4byte ovx28_3000528
	.4byte ovx28_30004FC
	.4byte ovx28_30004B0
	.4byte sub_08018370
	.4byte sub_08018370
	.4byte ovx28_300047C
	.4byte ovx28_3000434
	.4byte sub_08018370
	.4byte ovx28_30003F8
	.4byte ovx28_300037C
	.4byte ovx28_30003AC
	.4byte sub_08018370
	.4byte sub_08018370
	.4byte sub_08018370
	.4byte ovx28_300030C
	.4byte sub_08018370

	.global ovx28_3003E04
ovx28_3003E04:
	.space 0x1C

	.global ovx28_3003E20
ovx28_3003E20:
	.space 1

	.align 1, 0
	.global ovx28_3003E22
ovx28_3003E22:
	.space 2

	.global ovx28_3003E24
ovx28_3003E24:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global ovx28_3003E30
ovx28_3003E30:
	.byte 0x00, 0x00, 0x00, 0x00

	.global ovx28_3003E34
ovx28_3003E34:
	.byte 0x00, 0x00, 0x00, 0x00

	.global ovx28_3003E38
ovx28_3003E38:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global ovx28_3003E40
ovx28_3003E40:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global ovx28_3003E50
ovx28_3003E50:
	.byte 0x00, 0x00, 0x00, 0x00

	.global ovx28_3003E54
ovx28_3003E54:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global ovx28_3003E68
ovx28_3003E68:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.global ovx28_3003EE4
ovx28_3003EE4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.global ovx28_30041E4
ovx28_30041E4:
	.byte 0x00, 0x00, 0x00, 0x00

	arm_func_start ovx28_30041E8
ovx28_30041E8: @ 0x030041E8
	mov ip, sp
	push {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	ldr r3, _030042BC @ =0x02033600
	sub fp, ip, #4
	mov ip, r1
	mov lr, #0xff00
	add lr, lr, #0xff
	ldr r1, [ip]
	mov r8, r3
	ldr r2, [r3, #0x400]
	cmp r1, lr
	add r4, r3, r2, lsl #3
	mov r5, r2
	beq _030042CC
	mov r6, #0x1fc
	add r6, r6, #3
	mov r7, r8
_0300422C:
	ldrsh r2, [ip, #4]
	ldrsh r3, [r0, #4]
	add r1, r2, r3
	cmp r1, #0xef
	bgt _030042C0
	ldrsh r2, [ip, #6]
	ldrsh r3, [r0, #6]
	add r2, r2, r3
	cmp r2, #0x9f
	bgt _030042C0
	ldrb r3, [ip, #0xa]
	cmn r1, r3
	bmi _030042C0
	ldrb r3, [ip, #0xb]
	cmn r2, r3
	bmi _030042C0
	ldrh r3, [ip, #8]
	strh r3, [r4, #4]
	and r1, r1, r6
	mov r3, #1
	strh r3, [r0, #0xe]
	and r2, r2, #0xff
	ldr r3, [ip]
	add r5, r5, #1
	orr r3, r3, r1, lsl #16
	orr r3, r3, r2
	str r3, [r4]
	cmp r5, #0x80
	add r4, r4, #8
	bne _030042C0
	ldr r3, [r7, #0x50c]
	orr r3, r3, #1
	str r3, [r7, #0x50c]
	mov r3, #0
	strh r3, [r0, #0xe]
	b _030042D0
	.align 2, 0
_030042BC: .4byte 0x02033600
_030042C0:
	ldr r3, [ip, #0xc]!
	cmp r3, lr
	bne _0300422C
_030042CC:
	str r5, [r8, #0x400]
_030042D0:
	ldmdb fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx lr

	@ SoundMainRAM
_030042D8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	@ hblank interrupt
	arm_func_start ovx28_30048A8
ovx28_30048A8: @ 0x030048A8
	mov ip, sp
	push {r4, r5, r6, fp, ip, lr, pc}
	mov r4, #6
	add r4, r4, #0x4000000
	ldrh r3, [r4]
	sub fp, ip, #4
	ldr r5, _030049F8 @ =0x02025F6C
	lsl r3, r3, #0x10
	asr lr, r3, #0x10
	ldr r2, [r5]
	mov r6, lr
	cmp r2, #0
	beq _03004904
	ldr r0, _030049FC @ =0x020328C8
	mov r1, #0x10
	ldr ip, [r2, #8]
	lsl r3, lr, r1
	ldrh r2, [r0, #2]
	lsr r3, r3, #0xf
	ldrh r0, [r3, ip]
	add r1, r1, #0x4000000
	add r2, r2, r0
	strh r2, [r1]
_03004904:
	ldr r3, [r5, #4]
	cmp r3, #0
	beq _03004938
	ldr ip, [r3, #8]
	mov r1, #0x14
	ldr r0, _030049FC @ =0x020328C8
	lsl r3, lr, #0x10
	ldrh r2, [r0, #0x52]
	lsr r3, r3, #0xf
	ldrh r0, [r3, ip]
	add r1, r1, #0x4000000
	add r2, r2, r0
	strh r2, [r1]
_03004938:
	ldr r3, [r5, #8]
	cmp r3, #0
	beq _0300496C
	ldr ip, [r3, #8]
	mov r1, #0x18
	ldr r0, _030049FC @ =0x020328C8
	lsl r3, lr, #0x10
	ldrh r2, [r0, #0xa2]
	lsr r3, r3, #0xf
	ldrh r0, [r3, ip]
	add r1, r1, #0x4000000
	add r2, r2, r0
	strh r2, [r1]
_0300496C:
	ldr r3, [r5, #0xc]
	cmp r3, #0
	beq _030049A0
	ldr ip, [r3, #8]
	mov r1, #0x1c
	ldr r0, _030049FC @ =0x020328C8
	lsl r3, r6, #0x10
	ldrh r2, [r0, #0xf2]
	lsr r3, r3, #0xf
	ldrh r0, [r3, ip]
	add r1, r1, #0x4000000
	add r2, r2, r0
	strh r2, [r1]
_030049A0:
	ldr ip, _03004A00 @ =0x020264C4
	ldr r1, [ip]
	cmp r1, #0
	beq _030049CC
	ldrh r3, [r4]
	mov r2, #0x40
	ldr r1, [r1, #4]
	lsl r3, r3, #1
	ldrh r0, [r3, r1]
	add r2, r2, #0x4000000
	strh r0, [r2]
_030049CC:
	ldr r1, [ip, #4]
	cmp r1, #0
	beq _03004A04
	ldrh r3, [r4]
	mov r2, #0x42
	ldr r1, [r1, #4]
	lsl r3, r3, #1
	ldrh r0, [r3, r1]
	add r2, r2, #0x4000000
	strh r0, [r2]
	b _03004A04
	.align 2, 0
_030049F8: .4byte 0x02025F6C
_030049FC: .4byte 0x020328C8
_03004A00: .4byte 0x020264C4
_03004A04:
	ldmdb fp, {r4, r5, r6, fp, sp, lr}
	bx lr

	arm_func_start ovx28_3004A0C
ovx28_3004A0C: @ 0x03004A0C
	andeq r0, r0, r0

	arm_func_start ovx28_3004A10
ovx28_3004A10: @ 0x03004A10
	mov ip, sp
	push {r4, r5, r6, r7, fp, ip, lr, pc}
	ldr r3, _03004A70 @ =0x02027370
	mov r2, #0
	str r2, [r3]
	sub fp, ip, #4
	str r2, [r3, #0x400]
	mov r7, r0
	mov r6, r3
	b _03004AA8
_03004A38:
	cmp r5, #0
	beq _03004A74
	mov r0, #0xc
	bl ovx28_3005298
	ldr r3, [r6, #0x400]
	sub r2, r3, #1
	str r2, [r6, #0x400]
	ldr r1, [r6, r3, lsl #2]
	lsl r2, r2, #2
	ldr r3, [r6, r2]
	str r1, [r0, #4]
	str r3, [r0]
	str r0, [r6, r2]
	b _03004AA8
	.align 2, 0
_03004A70: .4byte 0x02027370
_03004A74:
	mov r0, #0xc
	bl ovx28_3005298
	mov r4, r0
	mov r0, #8
	mov r1, r7
	bl ovx28_3005400
	str r0, [r4, #8]
	str r5, [r4, #4]
	ldr r3, [r6, #0x400]
	str r5, [r4]
	add r3, r3, #1
	str r3, [r6, #0x400]
	str r4, [r6, r3, lsl #2]
_03004AA8:
	mov r0, #1
	mov r1, r7
	bl ovx28_3005400
	subs r5, r0, #0
	beq _03004A38
	ldr r3, [r6, #0x400]
	cmp r3, #1
	bgt _03004A38
	ldr r0, [r6, r3, lsl #2]
	ldmdb fp, {r4, r5, r6, r7, fp, sp, lr}
	bx lr

	arm_func_start ovx28_3004AD4
ovx28_3004AD4: @ 0x03004AD4
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub sp, sp, #4
	mov r7, r0
	ldm r7, {r6, sl}
	sub fp, ip, #4
	ldr r3, [r7, #0x20]
	mov r8, r1
	ldr sb, [r7, #8]
	cmp r3, #2
	bne _03004CFC
	ldr r4, [r7, #0x1c]
	b _03004CEC
_03004B08:
	mov r3, #2
	str r3, [r7, #0x20]
	str r4, [r7, #0x1c]
	b _03004D04
_03004B18:
	mov r0, #1
	mov r1, r6
	bl ovx28_3005400
	cmp r0, #0
	bne _03004B50
	mov r0, #8
	mov r1, r6
	bl ovx28_3005400
	mov r1, sl
	ldr ip, [sl, #0x18]
	mov lr, pc
	bx ip

	arm_func_start ovx28_3004AD4.ret
ovx28_3004AD4.ret: @ 0x03004B48
	sub r8, r8, #1
	b _03004CFC
_03004B50:
	ldr r3, [r7, #0x10]
	cmp r3, #0
	beq _03004C0C
	ldr r4, [r7, #0x14]
	ldr r3, [r4]
	mov r2, #0
	str r2, [fp, #-0x2c]
	cmp r3, r2
	beq _03004B98
	mov r0, #1
	mov r1, r6
	bl ovx28_3005400
	cmp r0, #0
	ldrne r0, [r4, #4]
	ldreq r0, [r4]
	mov r1, r6
	bl ovx28_3005158
	b _03004BA4
_03004B98:
	ldr r0, [r4, #8]
	mov r1, r6
	bl ovx28_3005400
_03004BA4:
	mov r5, r0
	cmp r5, #2
	bgt _03004BFC
	ldr r4, [r7, #0x14]
	ldr r3, [r4]
	add r5, r5, #1
	str r5, [fp, #-0x2c]
	cmp r3, #0
	beq _03004BEC
	mov r0, #1
	mov r1, r6
	bl ovx28_3005400
	cmp r0, #0
	ldrne r0, [r4, #4]
	ldreq r0, [r4]
	mov r1, r6
	bl ovx28_3005158
	b _03004BF8
_03004BEC:
	ldr r0, [r4, #8]
	mov r1, r6
	bl ovx28_3005400
_03004BF8:
	mov r5, r0
_03004BFC:
	ldr r2, [fp, #-0x2c]
	sub r3, r5, #2
	add r5, r2, r3, lsl #2
	b _03004C50
_03004C0C:
	ldr r4, [r7, #0x14]
	ldr r3, [r4]
	cmp r3, #0
	beq _03004C40
	mov r0, #1
	mov r1, r6
	bl ovx28_3005400
	cmp r0, #0
	ldrne r0, [r4, #4]
	ldreq r0, [r4]
	mov r1, r6
	bl ovx28_3005158
	b _03004C4C
_03004C40:
	ldr r0, [r4, #8]
	mov r1, r6
	bl ovx28_3005400
_03004C4C:
	mov r5, r0
_03004C50:
	ldr r4, [r7, #0x18]
	ldr r3, [r4]
	cmp r3, #0
	beq _03004C84
	mov r0, #1
	mov r1, r6
	bl ovx28_3005400
	cmp r0, #0
	ldrne r0, [r4, #4]
	ldreq r0, [r4]
	mov r1, r6
	bl ovx28_3005158
	b _03004C90
_03004C84:
	ldr r0, [r4, #8]
	mov r1, r6
	bl ovx28_3005400
_03004C90:
	mov r4, r0
	mov r0, sl
	ldr ip, [sl, #0x20]
	mov lr, pc
	bx ip

	arm_func_start ovx28_3004AD4.ret2
ovx28_3004AD4.ret2: @ 0x03004CA4
	rsb r1, r5, r0
	mov r0, sb
	mov r2, #2
	ldr ip, [sb, #0x1c]
	mov lr, pc
	bx ip

	arm_func_start ovx28_3004AD4.ret3
ovx28_3004AD4.ret3: @ 0x03004CBC
	b _03004CEC
_03004CC0:
	mov r0, sb
	ldr ip, [sb, #0x14]
	mov lr, pc
	bx ip

	arm_func_start ovx28_3004AD4.ret4
ovx28_3004AD4.ret4: @ 0x03004CD0
	mov r1, sl
	ldr ip, [sl, #0x18]
	mov lr, pc
	bx ip

	arm_func_start ovx28_3004AD4.ret5
ovx28_3004AD4.ret5: @ 0x03004CE0
	sub r4, r4, #1
	subs r8, r8, #1
	beq _03004B08
_03004CEC:
	cmp r4, #0
	bgt _03004CC0
	mov r3, #1
	str r3, [r7, #0x20]
_03004CFC:
	cmp r8, #0
	bne _03004B18
_03004D04:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovx28_3004D0C
ovx28_3004D0C: @ 0x03004D0C
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #4
	str r2, [fp, #-0x2c]
	ldr r2, _03004EC0 @ =0x03005294
	mov sb, #0
	bl ovx28_30054DC
	mov sl, r0
	mov r0, #8
	mov r1, sl
	bl ovx28_3005400
	mov r5, r0
	mov r0, #8
	mov r1, sl
	bl ovx28_3005400
	mov r4, r0
	mov r0, #8
	mov r1, sl
	bl ovx28_3005400
	mov r6, r0
	mov r0, #8
	mov r1, sl
	bl ovx28_3005400
	mov r3, sb
	cmp r5, #0x76
	cmpeq r4, #0x70
	bne _03004D8C
	cmp r6, #0x6b
	cmpeq r0, #0x30
	movne r3, #0
	moveq r3, #1
_03004D8C:
	cmp r3, #0
	beq _03004E28
	mov r0, #0x20
	mov r1, sl
	bl ovx28_3005400
	mov r5, r0
	mov r0, #8
	mov r1, sl
	bl ovx28_3005400
	mov r8, r0
	mov r0, sl
	bl ovx28_3004A10
	mov r7, r0
	mov r0, sl
	bl ovx28_3004A10
	mov r6, r0
	mov r0, #0x24
	bl ovx28_3005298
	mov sb, r0
	ldr r0, [fp, #-0x2c]
	ldr r2, _03004EC4 @ =0x03005290
	mov r1, r5
	bl ovx28_30052E8
	mov r4, r0
	ldr r0, [fp, #-0x2c]
	ldr r2, _03004EC0 @ =0x03005294
	mov r1, r5
	bl ovx28_30052E8
	str sl, [sb]
	str r4, [sb, #4]
	str r0, [sb, #8]
	str r5, [sb, #0xc]
	str r8, [sb, #0x10]
	str r7, [sb, #0x14]
	str r6, [sb, #0x18]
	mov r3, #0
	str r3, [sb, #0x1c]
	mov r2, #1
	str r2, [sb, #0x20]
_03004E28:
	ldr r1, [sb, #0xc]
	mov r0, sb
	bl ovx28_3004AD4
	cmp sb, #0
	beq _03004EC8
	ldr r4, [sb, #0x14]
	cmp r4, #0
	beq _03004E60
	ldr r0, [r4]
	bl ovx28_30051AC
	ldr r0, [r4, #4]
	bl ovx28_30051AC
	mov r0, r4
	bl ovx28_30052C0
_03004E60:
	ldr r4, [sb, #0x18]
	cmp r4, #0
	beq _03004E84
	ldr r0, [r4]
	bl ovx28_30051AC
	ldr r0, [r4, #4]
	bl ovx28_30051AC
	mov r0, r4
	bl ovx28_30052C0
_03004E84:
	ldr r0, [sb]
	cmp r0, #0
	beq _03004E94
	bl ovx28_30052C0
_03004E94:
	ldr r0, [sb, #4]
	cmp r0, #0
	beq _03004EA4
	bl ovx28_30052C0
_03004EA4:
	ldr r0, [sb, #8]
	cmp r0, #0
	beq _03004EB4
	bl ovx28_30052C0
_03004EB4:
	mov r0, sb
	bl ovx28_30052C0
	b _03004EC8
	.align 2, 0
_03004EC0: .4byte 0x03005294
_03004EC4: .4byte 0x03005290
_03004EC8:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovx28_3004ED0
ovx28_3004ED0: @ 0x03004ED0
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #8
	str r2, [fp, #-0x2c]
	ldr r2, [fp, #4]
	ldr ip, _03005090 @ =0x03005294
	ldr r3, [fp, #8]
	str ip, [sp]
	mov sb, #0
	bl ovx28_3005580
	mov sl, r0
	mov r0, #8
	mov r1, sl
	bl ovx28_3005400
	mov r5, r0
	mov r0, #8
	mov r1, sl
	bl ovx28_3005400
	mov r4, r0
	mov r0, #8
	mov r1, sl
	bl ovx28_3005400
	mov r6, r0
	mov r0, #8
	mov r1, sl
	bl ovx28_3005400
	mov r3, sb
	cmp r5, #0x76
	cmpeq r4, #0x70
	bne _03004F5C
	cmp r6, #0x6b
	cmpeq r0, #0x30
	movne r3, #0
	moveq r3, #1
_03004F5C:
	cmp r3, #0
	beq _03004FF8
	mov r0, #0x20
	mov r1, sl
	bl ovx28_3005400
	mov r5, r0
	mov r0, #8
	mov r1, sl
	bl ovx28_3005400
	mov r8, r0
	mov r0, sl
	bl ovx28_3004A10
	mov r7, r0
	mov r0, sl
	bl ovx28_3004A10
	mov r6, r0
	mov r0, #0x24
	bl ovx28_3005298
	mov sb, r0
	ldr r0, [fp, #-0x2c]
	ldr r2, _03005094 @ =0x03005290
	mov r1, r5
	bl ovx28_30052E8
	mov r4, r0
	ldr r0, [fp, #-0x2c]
	ldr r2, _03005090 @ =0x03005294
	mov r1, r5
	bl ovx28_30052E8
	str sl, [sb]
	str r4, [sb, #4]
	str r0, [sb, #8]
	str r5, [sb, #0xc]
	str r8, [sb, #0x10]
	str r7, [sb, #0x14]
	str r6, [sb, #0x18]
	mov r3, #0
	str r3, [sb, #0x1c]
	mov r2, #1
	str r2, [sb, #0x20]
_03004FF8:
	ldr r1, [sb, #0xc]
	mov r0, sb
	bl ovx28_3004AD4
	cmp sb, #0
	beq _03005098
	ldr r4, [sb, #0x14]
	cmp r4, #0
	beq _03005030
	ldr r0, [r4]
	bl ovx28_30051AC
	ldr r0, [r4, #4]
	bl ovx28_30051AC
	mov r0, r4
	bl ovx28_30052C0
_03005030:
	ldr r4, [sb, #0x18]
	cmp r4, #0
	beq _03005054
	ldr r0, [r4]
	bl ovx28_30051AC
	ldr r0, [r4, #4]
	bl ovx28_30051AC
	mov r0, r4
	bl ovx28_30052C0
_03005054:
	ldr r0, [sb]
	cmp r0, #0
	beq _03005064
	bl ovx28_30052C0
_03005064:
	ldr r0, [sb, #4]
	cmp r0, #0
	beq _03005074
	bl ovx28_30052C0
_03005074:
	ldr r0, [sb, #8]
	cmp r0, #0
	beq _03005084
	bl ovx28_30052C0
_03005084:
	mov r0, sb
	bl ovx28_30052C0
	b _03005098
	.align 2, 0
_03005090: .4byte 0x03005294
_03005094: .4byte 0x03005290
_03005098:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovx28_30050A0
ovx28_30050A0: @ 0x030050A0
	mov ip, sp
	push {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #4
	ldr ip, _0300514C @ =0x03005294
	str ip, [sp]
	bl ovx28_3005580
	mov r6, r0
	mov r0, #8
	mov r1, r6
	bl ovx28_3005400
	mov r5, r0
	mov r0, #8
	mov r1, r6
	bl ovx28_3005400
	mov r4, r0
	mov r0, #8
	mov r1, r6
	bl ovx28_3005400
	mov r7, r0
	mov r0, #8
	mov r1, r6
	bl ovx28_3005400
	mov r3, #0
	cmp r5, #0x76
	cmpeq r4, #0x70
	bne _0300511C
	cmp r7, #0x6b
	cmpeq r0, #0x30
	movne r3, #0
	moveq r3, #1
_0300511C:
	cmp r3, #0
	beq _03005134
	mov r0, #0x20
	mov r1, r6
	bl ovx28_3005400
	mov r8, r0
_03005134:
	cmp r6, #0
	beq _03005144
	mov r0, r6
	bl ovx28_30052C0
_03005144:
	mov r0, r8
	b _03005150
	.align 2, 0
_0300514C: .4byte 0x03005294
_03005150:
	ldmdb fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx lr

	arm_func_start ovx28_3005158
ovx28_3005158: @ 0x03005158
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	sub fp, ip, #4
	mov r4, r0
	ldr r3, [r4]
	mov r5, r1
	cmp r3, #0
	beq _03005198
	mov r0, #1
	bl ovx28_3005400
	cmp r0, #0
	ldrne r0, [r4, #4]
	ldreq r0, [r4]
	mov r1, r5
	bl ovx28_3005158
	b _030051A4
_03005198:
	ldr r0, [r4, #8]
	mov r1, r5
	bl ovx28_3005400
_030051A4:
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start ovx28_30051AC
ovx28_30051AC: @ 0x030051AC
	mov ip, sp
	push {r4, fp, ip, lr, pc}
	sub fp, ip, #4
	subs r4, r0, #0
	beq _030051D8
	ldr r0, [r4]
	bl ovx28_30051AC
	ldr r0, [r4, #4]
	bl ovx28_30051AC
	mov r0, r4
	bl ovx28_30052C0
_030051D8:
	ldmdb fp, {r4, fp, sp, lr}
	bx lr

	arm_func_start ovx28_30051E0
ovx28_30051E0: @ 0x030051E0
	mov ip, sp
	push {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	ldr r2, _03005284 @ =0x03005294
	sub fp, ip, #4
	bl ovx28_30054DC
	mov r6, r0
	mov r0, #8
	mov r1, r6
	bl ovx28_3005400
	mov r5, r0
	mov r0, #8
	mov r1, r6
	bl ovx28_3005400
	mov r4, r0
	mov r0, #8
	mov r1, r6
	bl ovx28_3005400
	mov r7, r0
	mov r0, #8
	mov r1, r6
	bl ovx28_3005400
	mov r3, #0
	cmp r5, #0x76
	cmpeq r4, #0x70
	bne _03005254
	cmp r7, #0x6b
	cmpeq r0, #0x30
	movne r3, #0
	moveq r3, #1
_03005254:
	cmp r3, #0
	beq _0300526C
	mov r0, #0x20
	mov r1, r6
	bl ovx28_3005400
	mov r8, r0
_0300526C:
	cmp r6, #0
	beq _0300527C
	mov r0, r6
	bl ovx28_30052C0
_0300527C:
	mov r0, r8
	b _03005288
	.align 2, 0
_03005284: .4byte 0x03005294
_03005288:
	ldmdb fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx lr
_03005290:
	.byte 0x77, 0x00, 0x00, 0x00, 0x72, 0x00, 0x00, 0x00

	arm_func_start ovx28_3005298
ovx28_3005298: @ 0x03005298
	mov ip, sp
	push {fp, ip, lr, pc}
	ldr r3, _030052BC @ =0x085F3BD4
	sub fp, ip, #4
	ldr ip, [r3]
	mov lr, pc
	bx ip

	arm_func_start ovx28_3005298.ret
ovx28_3005298.ret: @ 0x030052B4
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030052BC: .4byte 0x085F3BD4

	arm_func_start ovx28_30052C0
ovx28_30052C0: @ 0x030052C0
	mov ip, sp
	push {fp, ip, lr, pc}
	ldr r3, _030052E4 @ =0x085F3BD8
	sub fp, ip, #4
	ldr ip, [r3]
	mov lr, pc
	bx ip

	arm_func_start ovx28_30052C0.ret
ovx28_30052C0.ret: @ 0x030052DC
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_030052E4: .4byte 0x085F3BD8

	arm_func_start ovx28_30052E8
ovx28_30052E8: @ 0x030052E8
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	ldr r3, _0300537C @ =0x085F3BD4
	sub fp, ip, #4
	mov r5, r0
	mov r0, #0x24
	mov sb, r1
	mov r4, r2
	ldr ip, [r3]
	mov lr, pc
	bx ip

	arm_func_start ovx28_30082E8.ret
ovx28_30082E8.ret: @ 0x03005314
	ldr r1, _03005380 @ =0x0804CB98
	ldr r8, _03005384 @ =ovx28_3005680
	ldr sl, _03005388 @ =ovx28_30056A4
	ldr r7, _0300538C @ =ovx28_30056CC
	mov lr, r4
	ldrb r2, [r4]
	mov ip, r0
	ldr r6, _03005390 @ =ovx28_30056EC
	b _03005344
_03005338:
	ldrb r3, [lr, #1]!
	add r1, r1, #1
	and r2, r3, #0xff
_03005344:
	cmp r2, #0
	beq _03005358
	ldrb r3, [r1]
	cmp r2, r3
	beq _03005338
_03005358:
	ldrb r2, [lr]
	ldrb r3, [r1]
	cmp r2, r3
	moveq r3, #1
	beq _030053CC
	mov r2, r4
	ldrb r1, [r2]
	ldr r0, _03005394 @ =0x0804CB9C
	b _030053A4
	.align 2, 0
_0300537C: .4byte 0x085F3BD4
_03005380: .4byte 0x0804CB98
_03005384: .4byte ovx28_3005680
_03005388: .4byte ovx28_30056A4
_0300538C: .4byte ovx28_30056CC
_03005390: .4byte ovx28_30056EC
_03005394: .4byte 0x0804CB9C
_03005398:
	ldrb r3, [r2, #1]!
	add r0, r0, #1
	and r1, r3, #0xff
_030053A4:
	cmp r1, #0
	beq _030053B8
	ldrb r3, [r0]
	cmp r1, r3
	beq _03005398
_030053B8:
	ldrb r2, [r2]
	ldrb r3, [r0]
	cmp r2, r3
	bne _030053D0
	mov r3, #2
_030053CC:
	str r3, [ip, #4]
_030053D0:
	mov r3, #1
	str r3, [ip]
	str sb, [ip, #8]
	str r5, [ip, #0xc]
	str r5, [ip, #0x10]
	str r8, [ip, #0x14]
	str sl, [ip, #0x18]
	str r7, [ip, #0x20]
	mov r0, ip
	str r6, [ip, #0x1c]
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovx28_3005400
ovx28_3005400: @ 0x03005400
	mov ip, sp
	push {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	sub fp, ip, #4
	mov r5, r0
	mov r4, r1
	ldr ip, [r4, #0x18]
	mov r7, #0
	cmp r5, ip
	ble _030054B4
	cmp ip, r7
	ble _03005448
	rsb r5, ip, r5
	ldr r3, [r4, #0x14]
	rsb r2, ip, #0x20
	str r7, [r4, #0x18]
	lsl r3, r3, r2
	lsr r7, r3, r2
	lsl r7, r7, r5
_03005448:
	subs r6, r5, #0
	rsb r8, r5, #0x20
	ble _03005494
_03005454:
	ldr r3, [r4, #0x14]
	lsl r3, r3, #8
	str r3, [r4, #0x14]
	mov r0, r4
	ldr ip, [r4, #0x1c]
	mov lr, pc
	bx ip

	arm_func_start ovx28_3005400.ret
ovx28_3005400.ret: @ 0x03005470
	ldr r3, [r4, #0x14]
	sub r6, r6, #8
	ldr r2, [r4, #0x18]
	orr r3, r3, r0
	str r3, [r4, #0x14]
	add r2, r2, #8
	str r2, [r4, #0x18]
	cmp r6, #0
	bgt _03005454
_03005494:
	add r2, r4, #0x14
	ldm r2, {r2, r3}
	rsb r1, r5, r3
	rsb r3, r3, #0x20
	lsl r2, r2, r3
	str r1, [r4, #0x18]
	orr r7, r7, r2, lsr r8
	b _030054D0
_030054B4:
	rsb r3, r5, ip
	str r3, [r4, #0x18]
	rsb r1, r5, #0x20
	ldr r2, [r4, #0x14]
	rsb r3, ip, #0x20
	lsl r2, r2, r3
	lsr r7, r2, r1
_030054D0:
	mov r0, r7
	ldmdb fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx lr

	arm_func_start ovx28_30054DC
ovx28_30054DC: @ 0x030054DC
	mov ip, sp
	push {r4, r5, r6, fp, ip, lr, pc}
	ldr r3, _03005514 @ =0x085F3BD4
	sub fp, ip, #4
	mov r5, r0
	mov r0, #0x28
	mov r6, r1
	mov r4, r2
	ldr ip, [r3]
	mov lr, pc
	bx ip

	arm_func_start ovx28_30054DC.ret
ovx28_30054DC.ret: @ 0x03005508
	ldrb r2, [r4]
	ldr r1, _03005518 @ =0x0804CB98
	b _03005528
	.align 2, 0
_03005514: .4byte 0x085F3BD4
_03005518: .4byte 0x0804CB98
_0300551C:
	ldrb r3, [r4, #1]!
	add r1, r1, #1
	and r2, r3, #0xff
_03005528:
	cmp r2, #0
	beq _0300553C
	ldrb r3, [r1]
	cmp r2, r3
	beq _0300551C
_0300553C:
	ldrb r2, [r4]
	ldrb r3, [r1]
	subs r2, r2, r3
	bne _03005570
	mov r3, #1
	str r3, [r0]
	stmib r0, {r3, r6}
	str r5, [r0, #0xc]
	str r5, [r0, #0x10]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	ldr r3, _03005574 @ =ovx28_300572C
	str r3, [r0, #0x1c]
_03005570:
	b _03005578
	.align 2, 0
_03005574: .4byte ovx28_300572C
_03005578:
	ldmdb fp, {r4, r5, r6, fp, sp, lr}
	bx lr

	arm_func_start ovx28_3005580
ovx28_3005580: @ 0x03005580
	mov ip, sp
	push {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	sub fp, ip, #4
	mov r6, r0
	mov r0, #0x28
	mov r5, r1
	ldr r4, [fp, #4]
	mov r8, r2
	ldr r2, _030055C0 @ =0x085F3BD4
	mov r7, r3
	ldr ip, [r2]
	mov lr, pc
	bx ip

	arm_func_start ovx28_3005580.ret
ovx28_3005580.ret: @ 0x030055B4
	ldrb r2, [r4]
	ldr r1, _030055C4 @ =0x0804CB98
	b _030055D4
	.align 2, 0
_030055C0: .4byte 0x085F3BD4
_030055C4: .4byte 0x0804CB98
_030055C8:
	ldrb r3, [r4, #1]!
	add r1, r1, #1
	and r2, r3, #0xff
_030055D4:
	cmp r2, #0
	beq _030055E8
	ldrb r3, [r1]
	cmp r2, r3
	beq _030055C8
_030055E8:
	ldrb r2, [r4]
	ldrb r3, [r1]
	subs r1, r2, r3
	bne _03005628
	mov r3, #2
	str r3, [r0]
	mov r2, #1
	stmib r0, {r2, r5, r6}
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r7, [r0, #0x24]
	str r8, [r0, #0x20]
	add r3, r6, r5
	str r3, [r0, #0x10]
	ldr r3, _0300562C @ =ovx28_3005750
	str r3, [r0, #0x1c]
_03005628:
	b _03005630
	.align 2, 0
_0300562C: .4byte ovx28_3005750
_03005630:
	ldmdb fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx lr

	arm_func_start ovx28_3005638
ovx28_3005638: @ 0x03005638
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r2, [r0]
	sub fp, ip, #4
	b _03005658
_0300564C:
	ldrb r3, [r0, #1]!
	add r1, r1, #1
	and r2, r3, #0xff
_03005658:
	cmp r2, #0
	beq _0300566C
	ldrb r3, [r1]
	cmp r2, r3
	beq _0300564C
_0300566C:
	ldrb r3, [r0]
	ldrb r0, [r1]
	rsb r0, r0, r3
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3005680
ovx28_3005680: @ 0x03005680
	mov ip, sp
	push {fp, ip, lr, pc}
	ldr r3, [r0, #0x10]
	ldrb r2, [r3], #1
	str r3, [r0, #0x10]
	sub fp, ip, #4
	mov r0, r2
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30056A4
ovx28_30056A4: @ 0x030056A4
	mov ip, sp
	push {fp, ip, lr, pc}
	ldr r2, [r1, #0x10]
	strb r0, [r2]
	ldr r3, [r1, #0x10]
	sub fp, ip, #4
	add r3, r3, #1
	str r3, [r1, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30056CC
ovx28_30056CC: @ 0x030056CC
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	add r3, r0, #0x10
	ldmda r3, {r0, r3}
	sub r0, r3, r0
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_30056EC
ovx28_30056EC: @ 0x030056EC
	mov ip, sp
	push {fp, ip, lr, pc}
	cmp r2, #1
	sub fp, ip, #4
	beq _03005710
	cmp r2, #2
	beq _03005724
	ldmdb fp, {fp, sp, lr}
	bx lr
_03005710:
	ldr r3, [r0, #0x10]
_03005714:
	add r3, r3, r1
	str r3, [r0, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr
_03005724:
	ldr r3, [r0, #0xc]
	b _03005714

	arm_func_start ovx28_300572C
ovx28_300572C: @ 0x0300572C
	mov ip, sp
	push {fp, ip, lr, pc}
	ldr r3, [r0, #0x10]
	ldrb r2, [r3], #1
	str r3, [r0, #0x10]
	sub fp, ip, #4
	mov r0, r2
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx28_3005750
ovx28_3005750: @ 0x03005750
	mov ip, sp
	push {r4, fp, ip, lr, pc}
	mov r4, r0
	add r0, r4, #0xc
	ldm r0, {r0, r2}
	sub fp, ip, #4
	ldr r1, [r4, #8]
	add r2, r2, #1
	add r3, r0, r1
	cmp r2, r3
	strlo r2, [r4, #0x10]
	blo _03005794
	ldr ip, [r4, #0x20]
	mov lr, pc
	bx ip

	arm_func_start ovx28_3005750.ret
ovx28_3005750.ret: @ 0x0300578C
	ldr r3, [r4, #0xc]
	str r3, [r4, #0x10]
_03005794:
	ldr r3, [r4, #0x24]
	ldr r0, [r4, #0x10]
	cmp r3, #2
	ldrheq r0, [r0, #-1]
	lsreq r0, r0, #8
	ldrbne r0, [r0]
	ldmdb fp, {r4, fp, sp, lr}
	bx lr

	.align 2, 0
