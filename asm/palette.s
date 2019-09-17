	.include "asm/macros.inc"
	.include "constants/constants.inc"
	.text
	.syntax unified
	.align 2, 0

	thumb_func_start sub_08000660
sub_08000660: @ 0x08000660
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov r8, r1
	mov ip, r2
	adds r5, r3, #0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r5
	lsls r5, r0, #4
	movs r6, #0
	cmp r6, ip
	bge _080006D6
	movs r7, #0x1f
	movs r0, #0xf8
	lsls r0, r0, #7
	mov sl, r0
_0800068A:
	mov r1, sb
	lsls r3, r1, #4
	adds r3, r6, r3
	add r3, r8
	lsls r3, r3, #1
	ldr r2, _080006F4 @ =gPlttBufferUnfaded
	adds r3, r3, r2
	ldrh r2, [r3]
	movs r0, #0x1f
	ands r0, r2
	adds r4, r0, #0
	muls r4, r5, r4
	asrs r4, r4, #0x10
	adds r0, r2, #0
	movs r1, #0xf8
	lsls r1, r1, #2
	ands r0, r1
	lsrs r0, r0, #5
	adds r1, r0, #0
	muls r1, r5, r1
	asrs r1, r1, #0x10
	mov r0, sl
	ands r2, r0
	lsrs r2, r2, #0xa
	adds r0, r2, #0
	muls r0, r5, r0
	asrs r0, r0, #0x10
	ands r0, r7
	lsls r0, r0, #0xa
	ands r1, r7
	lsls r1, r1, #5
	orrs r0, r1
	ands r4, r7
	orrs r0, r4
	strh r0, [r3]
	adds r6, #1
	cmp r6, ip
	blt _0800068A
_080006D6:
	ldr r1, _080006F4 @ =gPlttBufferUnfaded
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, r2
	ldr r1, [r0]
	movs r2, #3
	orrs r1, r2
	str r1, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080006F4: .4byte gPlttBufferUnfaded
	thumb_func_end sub_08000660

	thumb_func_start sub_080006F8
sub_080006F8: @ 0x080006F8
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r3, _08000714 @ =gPlttBufferUnfaded
	lsrs r1, r1, #0x14
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r2, r0
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	bx lr
	.align 2, 0
_08000714: .4byte gPlttBufferUnfaded
	thumb_func_end sub_080006F8

	thumb_func_start sub_08000718
sub_08000718: @ 0x08000718
	push {r4, lr}
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r4, _08000738 @ =gPlttBufferUnfaded
	lsrs r1, r1, #0x14
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r2, r0
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r4
	strh r3, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000738: .4byte gPlttBufferUnfaded
	thumb_func_end sub_08000718

	thumb_func_start sub_0800073C
sub_0800073C: @ 0x0800073C
	push {lr}
	adds r0, r1, #0
	adds r1, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x13
	ldr r2, _08000754 @ =gPlttBufferFaded
	adds r0, r0, r2
	movs r2, #0x10
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08000754: .4byte gPlttBufferFaded
	thumb_func_end sub_0800073C

	thumb_func_start sub_08000758
sub_08000758: @ 0x08000758
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	ldr r0, _08000778 @ =gPlttBufferFaded
	adds r1, r1, r0
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0800077C
	adds r0, r1, #0
	adds r1, r2, #0
	movs r2, #0x20
	bl memcpy
	b _08000784
	.align 2, 0
_08000778: .4byte gPlttBufferFaded
_0800077C:
	adds r0, r2, #0
	movs r2, #0x10
	bl CpuSet
_08000784:
	ldr r0, _08000798 @ =gPlttBufferUnfaded
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08000798: .4byte gPlttBufferUnfaded
	thumb_func_end sub_08000758

	thumb_func_start sub_0800079C
sub_0800079C: @ 0x0800079C
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _080007B0 @ =gPlttBufferUnfaded
	lsrs r1, r1, #0x14
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	bx lr
	.align 2, 0
_080007B0: .4byte gPlttBufferUnfaded
	thumb_func_end sub_0800079C

	thumb_func_start sub_080007B4
sub_080007B4: @ 0x080007B4
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _080007C8 @ =gPlttBufferUnfaded
	lsrs r1, r1, #0x14
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	strh r3, [r1]
	bx lr
	.align 2, 0
_080007C8: .4byte gPlttBufferUnfaded
	thumb_func_end sub_080007B4

	thumb_func_start sub_080007CC
sub_080007CC: @ 0x080007CC
	push {lr}
	adds r0, r1, #0
	adds r1, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x13
	ldr r2, _080007E4 @ =gPlttBufferUnfaded
	adds r0, r0, r2
	movs r2, #0x10
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_080007E4: .4byte gPlttBufferUnfaded
	thumb_func_end sub_080007CC

	thumb_func_start sub_080007E8
sub_080007E8: @ 0x080007E8
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	ldr r0, _08000808 @ =gPlttBufferUnfaded
	adds r1, r1, r0
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0800080C
	adds r0, r1, #0
	adds r1, r2, #0
	movs r2, #0x20
	bl memcpy
	b _08000814
	.align 2, 0
_08000808: .4byte gPlttBufferUnfaded
_0800080C:
	adds r0, r2, #0
	movs r2, #0x10
	bl CpuSet
_08000814:
	ldr r0, _08000828 @ =gPlttBufferUnfaded
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08000828: .4byte gPlttBufferUnfaded
	thumb_func_end sub_080007E8

	thumb_func_start sub_0800082C
sub_0800082C: @ 0x0800082C
	push {r4, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08000854 @ =gPlttBufferUnfaded
	ldr r2, _08000858 @ =0x01000200
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r4, r0
	movs r0, #0
	str r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000854: .4byte gPlttBufferUnfaded
_08000858: .4byte 0x01000200
	thumb_func_end sub_0800082C

	thumb_func_start sub_0800085C
sub_0800085C: @ 0x0800085C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r1, r1, #1
	ldr r0, _08000884 @ =gPlttBufferUnfaded
	adds r0, r1, r0
	adds r4, r4, r1
	lsrs r1, r3, #0x1f
	adds r3, r3, r1
	lsls r3, r3, #0xa
	lsrs r3, r3, #0xb
	adds r1, r4, #0
	adds r2, r3, #0
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000884: .4byte gPlttBufferUnfaded
	thumb_func_end sub_0800085C

	thumb_func_start sub_08000888
sub_08000888: @ 0x08000888
	push {r4, lr}
	ldr r2, _080008D4 @ =gPlttBufferUnfaded
	movs r0, #0x80
	lsls r0, r0, #3
	adds r3, r2, r0
	ldr r0, [r3]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080008AC
	ldr r1, _080008D8 @ =REG_DMA3
	str r2, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _080008DC @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080008AC:
	ldr r0, [r3]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080008CA
	ldr r1, _080008D8 @ =REG_DMA3
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r2, r4
	str r0, [r1]
	ldr r0, _080008E0 @ =0x05000200
	str r0, [r1, #4]
	ldr r0, _080008DC @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_080008CA:
	movs r0, #0
	str r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080008D4: .4byte gPlttBufferUnfaded
_080008D8: .4byte REG_DMA3
_080008DC: .4byte 0x80000100
_080008E0: .4byte 0x05000200
	thumb_func_end sub_08000888

	thumb_func_start sub_080008E4
sub_080008E4: @ 0x080008E4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #5
	lsls r2, r2, #1
	ldr r0, _08000904 @ =gPlttBufferFaded
	adds r2, r2, r0
	adds r1, r1, r2
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08000908
	adds r0, r4, #0
	adds r2, r3, #0
	bl memcpy
	b _08000918
	.align 2, 0
_08000904: .4byte gPlttBufferFaded
_08000908:
	lsrs r2, r3, #0x1f
	adds r2, r3, r2
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
_08000918:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080008E4

	thumb_func_start sub_08000920
sub_08000920: @ 0x08000920
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #5
	lsls r2, r2, #1
	ldr r0, _08000944 @ =gPlttBufferFaded
	adds r2, r2, r0
	adds r1, r1, r2
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08000948
	adds r0, r1, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl memcpy
	b _08000956
	.align 2, 0
_08000944: .4byte gPlttBufferFaded
_08000948:
	lsrs r2, r3, #0x1f
	adds r2, r3, r2
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	adds r0, r4, #0
	bl CpuSet
_08000956:
	ldr r0, _0800096C @ =gPlttBufferUnfaded
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #2
	orrs r1, r2
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800096C: .4byte gPlttBufferUnfaded
	thumb_func_end sub_08000920

	thumb_func_start sub_08000970
sub_08000970: @ 0x08000970
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #5
	lsls r2, r2, #1
	ldr r0, _08000990 @ =gPlttBufferUnfaded
	adds r2, r2, r0
	adds r1, r1, r2
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08000994
	adds r0, r4, #0
	adds r2, r3, #0
	bl memcpy
	b _080009A4
	.align 2, 0
_08000990: .4byte gPlttBufferUnfaded
_08000994:
	lsrs r2, r3, #0x1f
	adds r2, r3, r2
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
_080009A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08000970

	thumb_func_start LoadPalette
LoadPalette: @ 0x080009AC
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #5
	lsls r2, r2, #1
	ldr r0, _080009D0 @ =gPlttBufferUnfaded
	adds r2, r2, r0
	adds r1, r1, r2
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080009D4
	adds r0, r1, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl memcpy
	b _080009E2
	.align 2, 0
_080009D0: .4byte gPlttBufferUnfaded
_080009D4:
	lsrs r2, r3, #0x1f
	adds r2, r3, r2
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	adds r0, r4, #0
	bl CpuSet
_080009E2:
	ldr r0, _080009F8 @ =gPlttBufferUnfaded
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080009F8: .4byte gPlttBufferUnfaded
	thumb_func_end LoadPalette

	thumb_func_start sub_080009FC
sub_080009FC: @ 0x080009FC
	push {r4, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08000A28 @ =gPlttBufferUnfaded
	ldr r2, _08000A2C @ =0x01000200
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r4, r0
	ldr r0, [r4]
	movs r1, #3
	orrs r0, r1
	str r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000A28: .4byte gPlttBufferUnfaded
_08000A2C: .4byte 0x01000200
	thumb_func_end sub_080009FC

	.align 2, 0 @ Don't pad with nop
