	.include "asm/macros.inc"
	.include "constants/constants.inc"
	.text
	.syntax unified
	.align 2, 0

	thumb_func_start sub_08000308
sub_08000308: @ 0x08000308
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	mov ip, r1
	adds r4, r2, #0
	movs r6, #0x80
	lsls r6, r6, #0x18
	orrs r6, r3
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r6
	movs r1, #1
	mov sl, r1
	cmp r0, #0
	beq _08000332
	movs r2, #2
	mov sl, r2
_08000332:
	ldr r0, _0800036C @ =0x04000004
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0800038A
	adds r1, r6, #0
	ldr r0, _08000370 @ =0xFFFCFFFF
	ands r6, r0
	ldr r0, _08000374 @ =0x040000D4
	ldr r3, [sp, #8]
	str r3, [r0]
	mov r7, ip
	str r7, [r0, #4]
	mov r2, sl
	lsrs r4, r2
	orrs r6, r4
	str r6, [r0, #8]
	ldr r0, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08000378
	ldr r0, [sp, #8]
	bl sub_08005598
	b _08000456
	.align 2, 0
_0800036C: .4byte 0x04000004
_08000370: .4byte 0xFFFCFFFF
_08000374: .4byte 0x040000D4
_08000378:
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	beq _08000456
	ldr r0, [sp, #8]
	bl sub_08005618
	b _08000456
_0800038A:
	ldr r1, _08000468 @ =gUnknown_2031580
	ldr r3, _0800046C @ =0x00000804
	adds r0, r1, r3
	ldr r0, [r0]
	adds r3, r0, #1
	movs r0, #0x81
	negs r0, r0
	ands r3, r0
	movs r7, #0x80
	lsls r7, r7, #4
	adds r5, r1, r7
	ldr r0, [r5]
	mov sb, r1
	cmp r3, r0
	bne _080003B8
	ldr r0, [r5]
	cmp r3, r0
	bne _080003B8
	adds r2, r3, #0
	adds r1, r5, #0
_080003B2:
	ldr r0, [r1]
	cmp r2, r0
	beq _080003B2
_080003B8:
	ldr r0, _08000470 @ =0x000019FF
	mov r8, r0
	cmp r4, r8
	bls _08000414
	ldr r5, _08000468 @ =gUnknown_2031580
	ldr r1, _0800046C @ =0x00000804
	adds r2, r5, r1
	movs r3, #0xd0
	lsls r3, r3, #5
_080003CA:
	ldr r1, [r2]
	lsls r1, r1, #4
	adds r0, r1, r5
	ldr r7, [sp, #8]
	str r7, [r0]
	ldr r0, _08000474 @ =gUnknown_2031584
	adds r0, r1, r0
	str r0, [sp]
	mov r7, ip
	str r7, [r0]
	adds r0, r5, #0
	adds r0, #8
	adds r1, r1, r0
	str r1, [sp, #4]
	adds r0, r3, #0
	mov r1, sl
	asrs r0, r1
	ldr r7, [sp, #4]
	str r0, [r7]
	ldr r0, [r2]
	lsls r0, r0, #4
	ldr r1, _08000478 @ =gUnknown_203158C
	adds r0, r0, r1
	str r6, [r0]
	ldr r0, [r2]
	adds r0, #1
	movs r1, #0x81
	negs r1, r1
	ands r0, r1
	str r0, [r2]
	ldr r7, [sp, #8]
	adds r7, r7, r3
	str r7, [sp, #8]
	add ip, r3
	subs r4, r4, r3
	cmp r4, r8
	bhi _080003CA
_08000414:
	cmp r4, #0
	beq _08000456
	ldr r2, _0800046C @ =0x00000804
	add r2, sb
	ldr r1, [r2]
	lsls r1, r1, #4
	mov r3, sb
	adds r0, r1, r3
	ldr r7, [sp, #8]
	str r7, [r0]
	mov r0, sb
	adds r0, #4
	adds r0, r1, r0
	mov r3, ip
	str r3, [r0]
	mov r0, sb
	adds r0, #8
	adds r1, r1, r0
	mov r7, sl
	lsrs r4, r7
	str r4, [r1]
	ldr r0, [r2]
	lsls r0, r0, #4
	mov r1, sb
	adds r1, #0xc
	adds r0, r0, r1
	str r6, [r0]
	ldr r0, [r2]
	adds r0, #1
	movs r1, #0x81
	negs r1, r1
	ands r0, r1
	str r0, [r2]
_08000456:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000468: .4byte gUnknown_2031580
_0800046C: .4byte 0x00000804
_08000470: .4byte 0x000019FF
_08000474: .4byte gUnknown_2031584
_08000478: .4byte gUnknown_203158C
	thumb_func_end sub_08000308

	thumb_func_start sub_0800047C
sub_0800047C: @ 0x0800047C
	push {r4, r5, r6, lr}
	ldr r3, _080004CC @ =gUnknown_2031580
	ldr r1, _080004D0 @ =0x00000804
	adds r0, r3, r1
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r3, r2
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	beq _08000504
	ldr r0, [r1]
	cmp r2, r0
	beq _08000504
	adds r6, r3, #0
	adds r5, r1, #0
	ldr r4, _080004D4 @ =0x040000D4
_0800049E:
	ldr r1, [r5]
	lsls r1, r1, #4
	adds r1, r1, r6
	ldr r2, [r1, #0xc]
	ldr r3, [r1]
	str r3, [r4]
	ldr r0, [r1, #4]
	str r0, [r4, #4]
	ldr r0, _080004D8 @ =0xFFFCFFFF
	ands r0, r2
	ldr r1, [r1, #8]
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _080004DC
	adds r0, r3, #0
	bl sub_08005598
	b _080004EC
	.align 2, 0
_080004CC: .4byte gUnknown_2031580
_080004D0: .4byte 0x00000804
_080004D4: .4byte 0x040000D4
_080004D8: .4byte 0xFFFCFFFF
_080004DC:
	movs r0, #0x80
	lsls r0, r0, #9
	ands r2, r0
	cmp r2, #0
	beq _080004EC
	adds r0, r3, #0
	bl sub_08005618
_080004EC:
	ldr r0, [r5]
	adds r0, #1
	movs r1, #0x81
	negs r1, r1
	ands r0, r1
	str r0, [r5]
	ldr r1, _0800050C @ =0x00000804
	adds r0, r6, r1
	ldr r1, [r0]
	ldr r0, [r5]
	cmp r1, r0
	bne _0800049E
_08000504:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800050C: .4byte 0x00000804
	thumb_func_end sub_0800047C

	thumb_func_start sub_08000510
sub_08000510: @ 0x08000510
	push {lr}
	movs r1, #0
	movs r2, #0
	ldr r0, _0800056C @ =gUnknown_2031538
_08000518:
	strh r2, [r0]
	adds r0, #2
	adds r1, #1
	cmp r1, #0x23
	bls _08000518
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	bl sub_0800062C
	ldr r0, _08000570 @ =0x04000020
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0800062C
	ldr r0, _08000574 @ =0x04000030
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0800062C
	ldr r0, _08000578 @ =0x04000026
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0800062C
	ldr r0, _0800057C @ =0x04000036
	movs r1, #0x80
	lsls r1, r1, #1
	bl sub_0800062C
	ldr r0, _08000580 @ =gUnknown_2031580
	ldr r2, _08000584 @ =0x00000804
	adds r1, r0, r2
	movs r2, #0
	str r2, [r1]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r2, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_0800056C: .4byte gUnknown_2031538
_08000570: .4byte 0x04000020
_08000574: .4byte 0x04000030
_08000578: .4byte 0x04000026
_0800057C: .4byte 0x04000036
_08000580: .4byte gUnknown_2031580
_08000584: .4byte 0x00000804
	thumb_func_end sub_08000510

	thumb_func_start sub_08000588
sub_08000588: @ 0x08000588
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r1, _080005AC @ =0x0000FFFF
	ands r2, r1
	lsrs r2, r2, #0xe
	lsls r2, r2, #2
	orrs r4, r2
	ands r3, r1
	lsrs r3, r3, #0xb
	lsls r3, r3, #8
	lsls r0, r0, #1
	ldr r1, _080005B0 @ =0x04000008
	adds r0, r0, r1
	orrs r4, r3
	ldr r2, _080005B4 @ =gUnknown_85EA550
	ldr r3, _080005B8 @ =gUnknown_2031538
	b _080005C0
	.align 2, 0
_080005AC: .4byte 0x0000FFFF
_080005B0: .4byte 0x04000008
_080005B4: .4byte gUnknown_85EA550
_080005B8: .4byte gUnknown_2031538
_080005BC:
	adds r2, #4
	adds r3, #2
_080005C0:
	ldr r1, [r2]
	cmp r1, #0
	beq _080005D2
	cmp r1, r0
	bne _080005CE
	strh r4, [r3]
	b _080005D4
_080005CE:
	cmp r1, r0
	bls _080005BC
_080005D2:
	strh r4, [r0]
_080005D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08000588

	thumb_func_start sub_080005DC
sub_080005DC: @ 0x080005DC
	ldr r3, _080005F8 @ =gUnknown_85EA550
	ldr r0, [r3]
	cmp r0, #0
	beq _080005F4
	ldr r2, _080005FC @ =gUnknown_2031538
_080005E6:
	ldm r3!, {r0}
	ldrh r1, [r2]
	strh r1, [r0]
	adds r2, #2
	ldr r0, [r3]
	cmp r0, #0
	bne _080005E6
_080005F4:
	bx lr
	.align 2, 0
_080005F8: .4byte gUnknown_85EA550
_080005FC: .4byte gUnknown_2031538
	thumb_func_end sub_080005DC

	thumb_func_start sub_08000600
sub_08000600: @ 0x08000600
	ldr r2, _08000608 @ =gUnknown_85EA550
	ldr r3, _0800060C @ =gUnknown_2031538
	b _08000614
	.align 2, 0
_08000608: .4byte gUnknown_85EA550
_0800060C: .4byte gUnknown_2031538
_08000610:
	adds r2, #4
	adds r3, #2
_08000614:
	ldr r1, [r2]
	cmp r1, #0
	beq _08000626
	cmp r1, r0
	bne _08000622
	ldrh r0, [r3]
	b _08000628
_08000622:
	cmp r1, r0
	bls _08000610
_08000626:
	ldrh r0, [r0]
_08000628:
	bx lr
	.align 2, 0
	thumb_func_end sub_08000600

	thumb_func_start sub_0800062C
sub_0800062C: @ 0x0800062C
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r3, _08000638 @ =gUnknown_85EA550
	ldr r1, _0800063C @ =gUnknown_2031538
	b _08000644
	.align 2, 0
_08000638: .4byte gUnknown_85EA550
_0800063C: .4byte gUnknown_2031538
_08000640:
	adds r3, #4
	adds r1, #2
_08000644:
	ldr r2, [r3]
	cmp r2, #0
	beq _08000656
	cmp r2, r0
	bne _08000652
	strh r4, [r1]
	b _08000658
_08000652:
	cmp r2, r0
	bls _08000640
_08000656:
	strh r4, [r0]
_08000658:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800062C

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
	ldr r2, _08000754 @ =gUnknown_2031F88
	adds r0, r0, r2
	movs r2, #0x10
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08000754: .4byte gUnknown_2031F88
	thumb_func_end sub_0800073C

	thumb_func_start sub_08000758
sub_08000758: @ 0x08000758
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x13
	ldr r0, _08000778 @ =gUnknown_2031F88
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
_08000778: .4byte gUnknown_2031F88
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
	ldr r1, _080008D8 @ =0x040000D4
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
	ldr r1, _080008D8 @ =0x040000D4
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
_080008D8: .4byte 0x040000D4
_080008DC: .4byte 0x80000100
_080008E0: .4byte 0x05000200
	thumb_func_end sub_08000888

	thumb_func_start sub_080008E4
sub_080008E4: @ 0x080008E4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #5
	lsls r2, r2, #1
	ldr r0, _08000904 @ =gUnknown_2031F88
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
_08000904: .4byte gUnknown_2031F88
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
	ldr r0, _08000944 @ =gUnknown_2031F88
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
_08000944: .4byte gUnknown_2031F88
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

	thumb_func_start sub_08000A30
sub_08000A30: @ 0x08000A30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	mov r8, r1
	ldr r3, _08000AB4 @ =gUnknown_2033600
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r3, r1
	ldr r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r3
	str r0, [sp, #4]
	str r1, [sp, #0x14]
	mov r2, r8
	ldr r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08000AAA
	movs r0, #0xf8
	lsls r0, r0, #0x16
	ands r1, r0
	lsrs r1, r1, #0x19
	str r1, [sp, #8]
	movs r4, #0xa1
	lsls r4, r4, #3
	adds r2, r3, r4
	movs r1, #1
	ldr r0, [sp, #8]
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	ldr r1, [sp, #8]
	lsls r4, r1, #3
	adds r4, r4, r3
	ldr r2, _08000AB8 @ =0x00000404
	adds r0, r4, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r0, r5, #0
	bl Div
	lsls r0, r0, #8
	str r0, [sp, #0xc]
	ldr r0, _08000ABC @ =0x00000406
	adds r4, r4, r0
	movs r2, #0
	ldrsh r1, [r4, r2]
	adds r0, r5, #0
	bl Div
	lsls r0, r0, #8
	str r0, [sp, #0x10]
_08000AAA:
	ldr r3, [sp]
	ldr r3, [r3, #8]
	mov r8, r3
	ldr r1, [r3]
	b _08000D66
	.align 2, 0
_08000AB4: .4byte gUnknown_2033600
_08000AB8: .4byte 0x00000404
_08000ABC: .4byte 0x00000406
_08000AC0:
	mov r4, r8
	ldr r2, [r4]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r2
	lsrs r0, r0, #0xc
	lsrs r1, r2, #0x1e
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08000BD0 @ =gUnknown_85EA5E0
	adds r7, r0, r1
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	bne _08000AE2
	b _08000CC8
_08000AE2:
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r2, r0
	cmp r2, r0
	bne _08000BD8
	movs r0, #0
	ldrsh r1, [r7, r0]
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	ldrh r2, [r4, #4]
	adds r1, r2, r1
	movs r3, #2
	ldrsh r0, [r7, r3]
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	ldrh r4, [r4, #6]
	adds r0, r4, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0xc]
	adds r5, r1, #0
	muls r5, r2, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x10]
	adds r4, r0, #0
	muls r4, r3, r4
	asrs r5, r5, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	muls r0, r5, r0
	adds r1, r4, #0
	muls r1, r4, r1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	bl Sqrt
	lsls r0, r0, #0x10
	ldr r1, [sp]
	movs r2, #4
	ldrsh r4, [r1, r2]
	lsls r1, r6, #0x10
	asrs r6, r1, #0x10
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r1, _08000BD4 @ =gUnknown_2033600
	ldr r3, [sp, #8]
	lsls r0, r3, #3
	adds r0, r0, r1
	movs r1, #0x81
	lsls r1, r1, #3
	adds r5, r0, r1
	ldrh r2, [r5]
	subs r0, r6, r2
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08005EFC
	asrs r0, r0, #8
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	asrs r0, r0, #8
	adds r4, r4, r0
	ldrh r0, [r7]
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	mov sl, r1
	asrs r4, r4, #0x10
	cmp r4, #0xef
	ble _08000B86
	b _08000D5E
_08000B86:
	movs r2, #0
	ldrsh r0, [r7, r2]
	lsls r0, r0, #1
	adds r0, r4, r0
	cmp r0, #0
	bge _08000B94
	b _08000D5E
_08000B94:
	ldr r3, [sp]
	movs r0, #6
	ldrsh r4, [r3, r0]
	ldrh r5, [r5]
	subs r0, r6, r5
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08005F14
	asrs r0, r0, #8
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	adds r4, r4, r0
	ldrh r2, [r7, #2]
	subs r4, r4, r2
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x9f
	ble _08000BC4
	b _08000D5E
_08000BC4:
	movs r1, #2
	ldrsh r0, [r7, r1]
	lsls r0, r0, #1
	adds r0, r4, r0
	b _08000CBA
	.align 2, 0
_08000BD0: .4byte gUnknown_85EA5E0
_08000BD4: .4byte gUnknown_2033600
_08000BD8:
	movs r0, #0
	ldrsh r1, [r7, r0]
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	mov r2, r8
	ldrh r2, [r2, #4]
	adds r1, r2, r1
	movs r3, #2
	ldrsh r0, [r7, r3]
	lsrs r2, r0, #0x1f
	adds r0, r0, r2
	asrs r0, r0, #1
	mov r4, r8
	ldrh r4, [r4, #6]
	adds r0, r4, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0xc]
	adds r5, r1, #0
	muls r5, r2, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, [sp, #0x10]
	adds r4, r0, #0
	muls r4, r3, r4
	asrs r5, r5, #0x10
	asrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r5, #0
	muls r0, r5, r0
	adds r1, r4, #0
	muls r1, r4, r1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	bl Sqrt
	lsls r0, r0, #0x10
	ldr r1, [sp]
	movs r2, #4
	ldrsh r4, [r1, r2]
	lsls r1, r6, #0x10
	asrs r6, r1, #0x10
	lsrs r0, r0, #0x18
	mov sb, r0
	ldr r1, _08000CC4 @ =gUnknown_2033600
	ldr r3, [sp, #8]
	lsls r0, r3, #3
	adds r0, r0, r1
	movs r1, #0x81
	lsls r1, r1, #3
	adds r5, r0, r1
	ldrh r2, [r5]
	subs r0, r6, r2
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08005EFC
	asrs r0, r0, #8
	mov r3, sb
	muls r3, r0, r3
	adds r0, r3, #0
	asrs r0, r0, #8
	adds r4, r4, r0
	movs r0, #0
	ldrsh r1, [r7, r0]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	mov sl, r2
	asrs r0, r4, #0x10
	cmp r0, #0xef
	bgt _08000D5E
	adds r0, r0, r1
	cmp r0, #0
	blt _08000D5E
	ldr r3, [sp]
	movs r0, #6
	ldrsh r4, [r3, r0]
	ldrh r5, [r5]
	subs r0, r6, r5
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08005F14
	asrs r0, r0, #8
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	adds r4, r4, r0
	movs r2, #2
	ldrsh r1, [r7, r2]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r3, r4, #0x10
	asrs r0, r4, #0x10
	cmp r0, #0x9f
	bgt _08000D5E
	adds r0, r0, r1
_08000CBA:
	cmp r0, #0
	blt _08000D5E
	mov r4, r8
	ldr r2, [r4]
	b _08000D06
	.align 2, 0
_08000CC4: .4byte gUnknown_2033600
_08000CC8:
	mov r1, r8
	ldrh r3, [r1, #4]
	ldr r1, [sp]
	ldrh r1, [r1, #4]
	adds r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov sl, r3
	asrs r1, r0, #0x10
	cmp r1, #0xef
	bgt _08000D5E
	movs r4, #0
	ldrsh r0, [r7, r4]
	adds r0, r1, r0
	cmp r0, #0
	blt _08000D5E
	mov r1, r8
	ldrh r3, [r1, #6]
	ldr r1, [sp]
	ldrh r1, [r1, #6]
	adds r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x9f
	bgt _08000D5E
	movs r4, #2
	ldrsh r0, [r7, r4]
	adds r0, r1, r0
	cmp r0, #0
	blt _08000D5E
_08000D06:
	mov r1, sl
	lsls r0, r1, #0x17
	movs r1, #0xff
	lsrs r0, r0, #7
	orrs r0, r2
	ands r1, r3
	orrs r1, r0
	ldr r2, [sp, #4]
	str r1, [r2]
	mov r3, r8
	ldrh r0, [r3, #8]
	movs r3, #0
	strh r0, [r2, #4]
	ldr r2, _08000D48 @ =gUnknown_2033600
	movs r4, #0x80
	lsls r4, r4, #3
	adds r1, r2, r4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x80
	bne _08000D50
	ldr r0, [sp, #0x14]
	str r0, [r1]
	ldr r1, _08000D4C @ =0x0000050C
	adds r0, r2, r1
	ldr r1, [r0]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	ldr r2, [sp]
	strh r3, [r2, #0xe]
	b _08000D6E
	.align 2, 0
_08000D48: .4byte gUnknown_2033600
_08000D4C: .4byte 0x0000050C
_08000D50:
	ldr r3, [sp, #4]
	adds r3, #8
	str r3, [sp, #4]
	ldr r4, [sp]
	ldrh r0, [r4, #0xe]
	adds r0, #1
	strh r0, [r4, #0xe]
_08000D5E:
	movs r0, #0xc
	add r8, r0
	mov r2, r8
	ldr r1, [r2]
_08000D66:
	ldr r0, _08000D80 @ =0x0000FFFF
	cmp r1, r0
	beq _08000D6E
	b _08000AC0
_08000D6E:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000D80: .4byte 0x0000FFFF
	thumb_func_end sub_08000A30

	thumb_func_start sub_08000D84
sub_08000D84: @ 0x08000D84
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r0, _08000DB8 @ =gUnknown_2033600
	ldr r1, _08000DBC @ =0x00000504
	adds r6, r0, r1
	movs r7, #0x80
	lsls r7, r7, #1
	movs r1, #1
	mov ip, r1
	ldr r1, _08000DC0 @ =0x00000404
	adds r0, r0, r1
	adds r5, r0, #0
_08000D9C:
	mov r1, ip
	lsls r1, r4
	ldr r2, [r6]
	adds r3, r2, #0
	ands r3, r1
	cmp r3, #0
	bne _08000DC4
	orrs r2, r1
	str r2, [r6]
	strh r7, [r0]
	strh r7, [r0, #2]
	strh r3, [r0, #4]
	adds r0, r5, #0
	b _08000DD0
	.align 2, 0
_08000DB8: .4byte gUnknown_2033600
_08000DBC: .4byte 0x00000504
_08000DC0: .4byte 0x00000404
_08000DC4:
	adds r0, #8
	adds r5, #8
	adds r4, #1
	cmp r4, #0x1f
	ble _08000D9C
	movs r0, #0
_08000DD0:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08000D84

	thumb_func_start sub_08000DD8
sub_08000DD8: @ 0x08000DD8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _08000E44 @ =gUnknown_2033600
	movs r0, #0xa1
	lsls r0, r0, #3
	adds r2, r1, r0
	ldr r0, [r2]
	cmp r0, #0
	beq _08000E3A
	movs r5, #0
	adds r6, r1, #0
	mov r4, sp
	adds r7, r2, #0
_08000DF2:
	movs r1, #1
	lsls r1, r5
	ldr r0, [r7]
	ands r0, r1
	cmp r0, #0
	beq _08000E28
	lsls r0, r5, #3
	ldr r2, _08000E48 @ =0x00000404
	adds r1, r6, r2
	adds r0, r0, r1
	mov r1, sp
	movs r2, #1
	movs r3, #2
	bl ObjAffineSet
	lsls r0, r5, #5
	adds r0, r0, r6
	ldrh r1, [r4]
	strh r1, [r0, #6]
	adds r0, #8
	ldrh r1, [r4, #2]
	strh r1, [r0, #6]
	adds r0, #8
	ldrh r1, [r4, #4]
	strh r1, [r0, #6]
	ldrh r1, [r4, #6]
	strh r1, [r0, #0xe]
_08000E28:
	adds r5, #1
	cmp r5, #0x1f
	ble _08000DF2
	ldr r0, _08000E44 @ =gUnknown_2033600
	movs r1, #0xa1
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
_08000E3A:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000E44: .4byte gUnknown_2033600
_08000E48: .4byte 0x00000404
	thumb_func_end sub_08000DD8

	thumb_func_start sub_08000E4C
sub_08000E4C: @ 0x08000E4C
	ldr r0, _08000E58 @ =gUnknown_2033600
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08000E58: .4byte gUnknown_2033600
	thumb_func_end sub_08000E4C

	thumb_func_start sub_08000E5C
sub_08000E5C: @ 0x08000E5C
	ldr r2, _08000E8C @ =gUnknown_2033600
	movs r0, #0xa1
	lsls r0, r0, #3
	adds r1, r2, r0
	ldr r0, _08000E90 @ =0x0000FFFF
	str r0, [r1]
	ldr r0, _08000E94 @ =0x00000504
	adds r1, r2, r0
	movs r0, #0
	str r0, [r1]
	movs r3, #0
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, _08000E98 @ =0x00000404
	adds r2, r2, r0
	movs r0, #0x1f
_08000E7C:
	strh r1, [r2]
	strh r1, [r2, #2]
	strh r3, [r2, #4]
	adds r2, #8
	subs r0, #1
	cmp r0, #0
	bge _08000E7C
	bx lr
	.align 2, 0
_08000E8C: .4byte gUnknown_2033600
_08000E90: .4byte 0x0000FFFF
_08000E94: .4byte 0x00000504
_08000E98: .4byte 0x00000404
	thumb_func_end sub_08000E5C

	thumb_func_start sub_08000E9C
sub_08000E9C: @ 0x08000E9C
	ldr r1, _08000EB0 @ =0x040000D4
	ldr r0, _08000EB4 @ =gUnknown_2033600
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08000EB8 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bx lr
	.align 2, 0
_08000EB0: .4byte 0x040000D4
_08000EB4: .4byte gUnknown_2033600
_08000EB8: .4byte 0x80000200
	thumb_func_end sub_08000E9C

	thumb_func_start sub_08000EBC
sub_08000EBC: @ 0x08000EBC
	push {r4, lr}
	ldr r2, _08000F08 @ =gUnknown_2033600
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r2, r1
	ldr r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r2
	cmp r1, #0x7f
	bgt _08000EEC
	movs r2, #0x80
	lsls r2, r2, #2
	ldrh r3, [r0]
	cmp r3, r2
	beq _08000EEC
	adds r3, r2, #0
_08000EDC:
	strh r3, [r0]
	adds r1, #1
	adds r0, #8
	cmp r1, #0x7f
	bgt _08000EEC
	ldrh r4, [r0]
	cmp r4, r2
	bne _08000EDC
_08000EEC:
	bl sub_08000DD8
	ldr r0, _08000F08 @ =gUnknown_2033600
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r0, r2
	movs r2, #0
	str r2, [r1]
	ldr r3, _08000F0C @ =0x0000050C
	adds r0, r0, r3
	str r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000F08: .4byte gUnknown_2033600
_08000F0C: .4byte 0x0000050C
	thumb_func_end sub_08000EBC

	thumb_func_start sub_08000F10
sub_08000F10: @ 0x08000F10
	adds r2, r0, #0
	movs r0, #0
	ldr r1, _08000F28 @ =gUnknown_2033A04
_08000F16:
	cmp r1, r2
	beq _08000F24
	adds r1, #8
	adds r0, #1
	cmp r0, #0x1f
	ble _08000F16
	movs r0, #0
_08000F24:
	bx lr
	.align 2, 0
_08000F28: .4byte gUnknown_2033A04
	thumb_func_end sub_08000F10

	thumb_func_start sub_08000F2C
sub_08000F2C: @ 0x08000F2C
	push {r4, lr}
	adds r1, r0, #0
	movs r2, #0
	ldr r0, _08000F4C @ =gUnknown_2033A04
	movs r4, #0x80
	lsls r4, r4, #1
	adds r3, r0, r4
	movs r4, #1
_08000F3C:
	cmp r0, r1
	bne _08000F50
	adds r1, r4, #0
	lsls r1, r2
	ldr r0, [r3]
	bics r0, r1
	str r0, [r3]
	b _08000F58
	.align 2, 0
_08000F4C: .4byte gUnknown_2033A04
_08000F50:
	adds r0, #8
	adds r2, #1
	cmp r2, #0x1f
	ble _08000F3C
_08000F58:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08000F2C

	thumb_func_start sub_08000F60
sub_08000F60: @ 0x08000F60
	push {r4, lr}
	ldr r3, _08000F8C @ =gUnknown_2033600
	ldr r1, _08000F90 @ =0x00000504
	adds r4, r3, r1
	movs r2, #1
	lsls r2, r0
	ldr r1, [r4]
	orrs r1, r2
	str r1, [r4]
	lsls r0, r0, #3
	ldr r1, _08000F94 @ =0x00000404
	adds r3, r3, r1
	adds r0, r0, r3
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08000F8C: .4byte gUnknown_2033600
_08000F90: .4byte 0x00000504
_08000F94: .4byte 0x00000404
	thumb_func_end sub_08000F60

	thumb_func_start sub_08000F98
sub_08000F98: @ 0x08000F98
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	bx lr
	.align 2, 0
	thumb_func_end sub_08000F98

	thumb_func_start sub_08000FA8
sub_08000FA8: @ 0x08000FA8
	ldrh r0, [r0, #0xe]
	bx lr
	thumb_func_end sub_08000FA8

	thumb_func_start sub_08000FAC
sub_08000FAC: @ 0x08000FAC
	push {lr}
	adds r2, r0, #0
	movs r0, #0
	strh r0, [r2, #0xe]
	ldr r0, _08000FE0 @ =gUnknown_2033600
	ldr r1, _08000FE4 @ =0x0000050C
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08000FF6
	ldr r3, [r2, #8]
	cmp r3, #0
	beq _08000FF6
	ldr r0, [r3]
	adds r1, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08000FE8
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_08000A30
	b _08000FF6
	.align 2, 0
_08000FE0: .4byte gUnknown_2033600
_08000FE4: .4byte 0x0000050C
_08000FE8:
	movs r1, #0x10
	ldrsh r0, [r2, r1]
	adds r0, r2, r0
	ldr r2, [r2, #0x14]
	adds r1, r3, #0
	bl _call_via_r2
_08000FF6:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08000FAC

	thumb_func_start sub_08000FFC
sub_08000FFC: @ 0x08000FFC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldr r1, _08001040 @ =gUnknown_2033600
	lsls r3, r3, #3
	adds r3, r3, r1
	movs r1, #0x81
	lsls r1, r1, #3
	adds r3, r3, r1
	ldrh r3, [r3]
	subs r0, r0, r3
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08005F14
	asrs r0, r0, #8
	muls r0, r5, r0
	asrs r0, r0, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08001040: .4byte gUnknown_2033600
	thumb_func_end sub_08000FFC

	thumb_func_start sub_08001044
sub_08001044: @ 0x08001044
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldr r1, _08001088 @ =gUnknown_2033600
	lsls r3, r3, #3
	adds r3, r3, r1
	movs r1, #0x81
	lsls r1, r1, #3
	adds r3, r3, r1
	ldrh r3, [r3]
	subs r0, r0, r3
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08005EFC
	asrs r0, r0, #8
	muls r0, r5, r0
	asrs r0, r0, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r4, r4, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08001088: .4byte gUnknown_2033600
	thumb_func_end sub_08001044

	thumb_func_start sub_0800108C
sub_0800108C: @ 0x0800108C
	push {lr}
	adds r2, r0, #0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800109E
	adds r0, r2, #0
	bl sub_080046C0
_0800109E:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800108C

	thumb_func_start sub_080010A4
sub_080010A4: @ 0x080010A4
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _080010B0
	adds r0, #0x18
	str r0, [r4]
_080010B0:
	strh r2, [r4, #4]
	strh r3, [r4, #6]
	ldr r0, [sp, #8]
	str r0, [r4, #8]
	ldr r0, _080010CC @ =gUnknown_804ACC4
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r4, #0x10]
	str r1, [r4, #0x14]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080010CC: .4byte gUnknown_804ACC4
	thumb_func_end sub_080010A4

	thumb_func_start sub_080010D0
sub_080010D0: @ 0x080010D0
	adds r3, r0, #0
	cmp r1, #0
	beq _080010DA
	adds r0, #0x18
	str r0, [r3]
_080010DA:
	str r2, [r3, #8]
	ldr r0, _080010EC @ =gUnknown_804ACC4
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r3, #0x10]
	str r1, [r3, #0x14]
	adds r0, r3, #0
	bx lr
	.align 2, 0
_080010EC: .4byte gUnknown_804ACC4
	thumb_func_end sub_080010D0

	thumb_func_start sub_080010F0
sub_080010F0: @ 0x080010F0
	adds r2, r0, #0
	cmp r1, #0
	beq _080010FA
	adds r0, #0x18
	str r0, [r2]
_080010FA:
	ldr r0, _08001108 @ =gUnknown_804ACC4
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	adds r0, r2, #0
	bx lr
	.align 2, 0
_08001108: .4byte gUnknown_804ACC4
	thumb_func_end sub_080010F0

	thumb_func_start sub_0800110C
sub_0800110C: @ 0x0800110C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_08004228
	movs r1, #7
	ands r1, r0
	movs r3, #0x80
	lsls r3, r3, #2
	cmp r1, #2
	bhi _08001122
	movs r3, #0
_08001122:
	ldr r0, _08001164 @ =0x000003FF
	cmp r3, r0
	bgt _0800119A
	movs r6, #0x80
	lsls r6, r6, #3
	ldr r7, _08001168 @ =gUnknown_2032190
_0800112E:
	movs r2, #0
	adds r1, r3, r7
_08001132:
	adds r0, r3, r2
	cmp r0, r6
	beq _08001146
	ldrb r0, [r1]
	cmp r0, #0
	bne _08001146
	adds r1, #1
	adds r2, #1
	cmp r2, r5
	bne _08001132
_08001146:
	cmp r2, r5
	blt _0800116C
	cmp r5, #0
	ble _08001160
	ldr r0, _08001168 @ =gUnknown_2032190
	movs r2, #1
	adds r1, r3, r0
	adds r0, r5, #0
_08001156:
	strb r2, [r1]
	adds r1, #1
	subs r0, #1
	cmp r0, #0
	bne _08001156
_08001160:
	adds r0, r3, #0
	b _080011A0
	.align 2, 0
_08001164: .4byte 0x000003FF
_08001168: .4byte gUnknown_2032190
_0800116C:
	cmp r2, #0
	bne _08001192
	movs r2, #0
	adds r4, r6, #0
	cmp r3, r4
	beq _08001192
	adds r0, r3, r7
	ldrb r1, [r0]
	cmp r1, #1
	bne _08001192
	adds r1, r0, #0
_08001182:
	adds r1, #1
	adds r2, #1
	adds r0, r3, r2
	cmp r0, r4
	beq _08001192
	ldrb r0, [r1]
	cmp r0, #1
	beq _08001182
_08001192:
	adds r3, r3, r2
	ldr r0, _0800119C @ =0x000003FF
	cmp r3, r0
	ble _0800112E
_0800119A:
	b _0800119A
	.align 2, 0
_0800119C: .4byte 0x000003FF
_080011A0:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0800110C

	thumb_func_start sub_080011A8
sub_080011A8: @ 0x080011A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	adds r0, r1, #0
	muls r0, r2, r0
	bl sub_0800110C
	str r0, [sp, #0x18]
	ldr r1, _08001360 @ =0xFFFF0000
	ldr r2, _08001364 @ =0x0000FFFF
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #0x14
	orrs r0, r1
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [sp, #4]
	mov r4, sp
	movs r3, #0xfe
	lsls r3, r3, #8
	mov r0, sp
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r6, #4
	ldrsh r0, [r4, r6]
	cmp r1, r0
	bge _0800123E
	movs r0, #6
	ldrsh r7, [r4, r0]
	mov r8, r7
_080011F8:
	movs r6, #2
	ldrsh r2, [r4, r6]
	adds r5, r1, #1
	cmp r2, r8
	bge _08001234
	movs r7, #0xff
	lsls r7, r7, #8
	mov sb, r7
	movs r6, #0xfe
	lsls r6, r6, #8
	lsls r0, r2, #1
	lsls r1, r1, #6
	ldr r7, [sp, #8]
	adds r1, r1, r7
	adds r1, r0, r1
	movs r7, #6
	ldrsh r0, [r4, r7]
	subs r2, r0, r2
_0800121C:
	strh r3, [r1]
	cmp r3, sb
	beq _0800122C
	cmp r3, r6
	beq _0800122C
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_0800122C:
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bne _0800121C
_08001234:
	adds r1, r5, #0
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _080011F8
_0800123E:
	mov r0, sp
	ldrh r3, [r0, #0x10]
	strh r3, [r0, #4]
	ldrh r4, [r0, #0xc]
	strh r4, [r0, #6]
	mov r4, sp
	movs r3, #0xff
	lsls r3, r3, #8
	movs r6, #0
	ldrsh r1, [r0, r6]
	movs r7, #4
	ldrsh r0, [r4, r7]
	ldr r2, _08001368 @ =gUnknown_2032604
	mov sb, r2
	cmp r1, r0
	bge _080012AA
	movs r7, #6
	ldrsh r6, [r4, r7]
	mov r8, r6
_08001264:
	movs r0, #2
	ldrsh r2, [r4, r0]
	adds r5, r1, #1
	cmp r2, r8
	bge _080012A0
	movs r6, #0xff
	lsls r6, r6, #8
	mov sl, r6
	movs r6, #0xfe
	lsls r6, r6, #8
	lsls r0, r2, #1
	lsls r1, r1, #6
	ldr r7, [sp, #8]
	adds r1, r1, r7
	adds r1, r0, r1
	movs r7, #6
	ldrsh r0, [r4, r7]
	subs r2, r0, r2
_08001288:
	strh r3, [r1]
	cmp r3, sl
	beq _08001298
	cmp r3, r6
	beq _08001298
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08001298:
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bne _08001288
_080012A0:
	adds r1, r5, #0
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _08001264
_080012AA:
	movs r3, #0
	str r3, [sp, #0x14]
	mov r4, sb
	ldr r0, [r4]
	movs r6, #0x80
	lsls r6, r6, #4
	adds r6, r6, r0
	mov sb, r6
	ldr r7, _0800136C @ =gUnknown_2032600
	strh r3, [r7, #2]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	cmp r0, r1
	blt _080012C8
	b _08001458
_080012C8:
	movs r0, #0
	ldr r2, _0800136C @ =gUnknown_2032600
	strh r0, [r2]
	ldr r3, [sp, #0xc]
	cmp r0, r3
	blt _080012D6
	b _08001444
_080012D6:
	mov sl, sp
_080012D8:
	ldr r4, _0800136C @ =gUnknown_2032600
	movs r6, #2
	ldrsh r0, [r4, r6]
	movs r7, #0
	ldrsh r1, [r4, r7]
	lsls r1, r1, #1
	lsls r0, r0, #6
	ldr r2, [sp, #8]
	adds r0, r0, r2
	adds r1, r1, r0
	ldrh r1, [r1]
	movs r3, #0xff
	lsls r3, r3, #8
	cmp r1, r3
	beq _080012F8
	b _08001430
_080012F8:
	ldr r7, _08001370 @ =gUnknown_85EA610
	ldrh r0, [r7]
	ldr r4, [sp, #0x14]
	lsls r4, r4, #0x18
	str r4, [sp, #0x1c]
	mov r6, sb
	adds r6, #0xc
	str r6, [sp, #0x20]
	cmp r0, #0
	beq _0800137C
_0800130C:
	ldr r0, _0800136C @ =gUnknown_2032600
	movs r1, #2
	ldrsh r3, [r0, r1]
	ldrh r2, [r7, #2]
	lsrs r0, r2, #3
	adds r0, r3, r0
	cmp r3, r0
	bge _0800135C
	ldrh r4, [r7]
	lsrs r5, r4, #3
	mov r8, r5
	mov ip, r0
	lsls r0, r3, #6
	ldr r6, [sp, #8]
	adds r2, r0, r6
_0800132A:
	ldr r0, _0800136C @ =gUnknown_2032600
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r0, r1, r5
	cmp r1, r0
	bge _08001354
	mov r6, r8
	adds r6, r1, r6
	str r6, [sp, #0x24]
	lsls r0, r1, #1
	adds r0, r0, r2
_08001340:
	ldrh r4, [r0]
	movs r6, #0xff
	lsls r6, r6, #8
	cmp r4, r6
	bne _08001374
	adds r0, #2
	adds r1, #1
	ldr r4, [sp, #0x24]
	cmp r1, r4
	blt _08001340
_08001354:
	adds r2, #0x40
	adds r3, #1
	cmp r3, ip
	blt _0800132A
_0800135C:
	adds r4, r7, #0
	b _0800137E
	.align 2, 0
_08001360: .4byte 0xFFFF0000
_08001364: .4byte 0x0000FFFF
_08001368: .4byte gUnknown_2032604
_0800136C: .4byte gUnknown_2032600
_08001370: .4byte gUnknown_85EA610
_08001374:
	adds r7, #0xc
	ldrh r0, [r7]
	cmp r0, #0
	bne _0800130C
_0800137C:
	movs r4, #0
_0800137E:
	ldr r6, _08001498 @ =gUnknown_2032600
	ldrh r1, [r6, #2]
	mov r7, sl
	strh r1, [r7]
	ldrh r2, [r6]
	strh r2, [r7, #2]
	ldrh r3, [r4, #2]
	lsrs r0, r3, #3
	adds r1, r1, r0
	strh r1, [r7, #4]
	ldrh r6, [r4]
	lsrs r0, r6, #3
	adds r2, r2, r0
	strh r2, [r7, #6]
	mov r5, sp
	ldr r7, [sp, #0x1c]
	lsrs r3, r7, #0x10
	mov r0, sl
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r6, #4
	ldrsh r0, [r5, r6]
	cmp r1, r0
	bge _080013FA
	movs r0, #6
	ldrsh r7, [r5, r0]
	mov ip, r7
_080013B4:
	movs r6, #2
	ldrsh r2, [r5, r6]
	adds r6, r1, #1
	cmp r2, ip
	bge _080013F0
	movs r7, #0xff
	lsls r7, r7, #8
	mov r8, r7
	lsls r0, r2, #1
	lsls r1, r1, #6
	ldr r7, [sp, #8]
	adds r1, r1, r7
	adds r1, r0, r1
	movs r7, #6
	ldrsh r0, [r5, r7]
	subs r2, r0, r2
_080013D4:
	strh r3, [r1]
	cmp r3, r8
	beq _080013E8
	movs r0, #0xfe
	lsls r0, r0, #8
	cmp r3, r0
	beq _080013E8
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080013E8:
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bne _080013D4
_080013F0:
	adds r1, r6, #0
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r1, r0
	blt _080013B4
_080013FA:
	ldr r3, _08001498 @ =gUnknown_2032600
	ldrh r3, [r3]
	lsls r0, r3, #3
	mov r6, sb
	strh r0, [r6, #4]
	ldr r7, _08001498 @ =gUnknown_2032600
	ldrh r7, [r7, #2]
	lsls r0, r7, #3
	strh r0, [r6, #6]
	mov r0, sp
	ldrh r0, [r0, #0x18]
	strh r0, [r6, #8]
	ldr r0, [r4, #4]
	str r0, [r6]
	ldrh r0, [r4]
	strb r0, [r6, #0xa]
	ldrh r0, [r4, #2]
	strb r0, [r6, #0xb]
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x18]
	adds r1, r1, r0
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x20]
	mov sb, r2
	ldr r3, [sp, #0x14]
	adds r3, #1
	str r3, [sp, #0x14]
_08001430:
	ldr r4, _08001498 @ =gUnknown_2032600
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	movs r6, #0
	ldrsh r0, [r4, r6]
	ldr r7, [sp, #0xc]
	cmp r0, r7
	bge _08001444
	b _080012D8
_08001444:
	ldr r1, _08001498 @ =gUnknown_2032600
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
	movs r2, #2
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x10]
	cmp r0, r3
	bge _08001458
	b _080012C8
_08001458:
	ldr r0, _0800149C @ =0x0000FFFF
	mov r4, sb
	str r0, [r4]
	ldr r6, [sp, #0x14]
	adds r6, #1
	lsls r4, r6, #1
	adds r4, r4, r6
	lsls r0, r4, #2
	bl sub_08005630
	mov sb, r0
	ldr r0, _080014A0 @ =gUnknown_2032604
	ldr r0, [r0]
	movs r7, #0x80
	lsls r7, r7, #4
	adds r0, r0, r7
	lsls r4, r4, #1
	ldr r1, _080014A4 @ =0x001FFFFF
	ands r4, r1
	mov r1, sb
	adds r2, r4, #0
	bl CpuSet
	mov r0, sb
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001498: .4byte gUnknown_2032600
_0800149C: .4byte 0x0000FFFF
_080014A0: .4byte gUnknown_2032604
_080014A4: .4byte 0x001FFFFF
	thumb_func_end sub_080011A8

	thumb_func_start sub_080014A8
sub_080014A8: @ 0x080014A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r1, #0xff
	lsls r1, r1, #8
	str r1, [sp, #0x14]
	ldr r0, _080015A8 @ =gUnknown_2032604
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r2, r2, r0
	mov sb, r2
	movs r3, #0
	mov sl, r3
	ldr r1, [sp]
	movs r0, #0xfe
	lsls r0, r0, #8
	ldrh r4, [r1]
	cmp r4, r0
	bne _080014E4
	b _0800161C
_080014E4:
	movs r0, #0
	mov r8, r0
	ldrh r0, [r1]
	adds r4, r0, #0
	mov r2, sl
	adds r2, #1
	str r2, [sp, #0x20]
	movs r3, #0xfe
	lsls r3, r3, #8
	cmp r4, r3
	bne _080014FC
	b _08001602
_080014FC:
	mov r2, sl
	lsls r0, r2, #6
	ldr r3, [sp]
	adds r0, r3, r0
	str r0, [sp, #0x18]
_08001506:
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r4
	mov r2, r8
	adds r2, #1
	str r2, [sp, #0x1c]
	adds r1, #2
	str r1, [sp, #0x24]
	ldr r3, [sp, #0x14]
	cmp r0, r3
	beq _080015EC
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	adds r0, #1
	str r0, [sp, #0x10]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, [sp, #4]
	adds r1, r2, r1
	movs r0, #0xff
	ands r0, r4
	ldrh r1, [r1, #8]
	adds r0, r1, r0
	lsls r0, r0, #5
	ldr r3, _080015AC @ =0x06010000
	adds r0, r0, r3
	mov r4, sb
	str r0, [r4]
	ldr r1, [sp, #0xc]
	mov r0, sl
	muls r0, r1, r0
	lsls r0, r0, #5
	ldr r2, [sp, #8]
	adds r0, r2, r0
	mov r3, r8
	lsls r1, r3, #5
	adds r0, r0, r1
	str r0, [r4, #4]
	movs r4, #0
	mov ip, r4
	mov r6, sl
	mov r0, sb
	adds r0, #0xc
	str r0, [sp, #0x28]
	cmp r6, #0x13
	bgt _080015E0
	lsls r0, r3, #1
	ldr r1, [sp, #0x18]
	adds r2, r1, r0
	ldrh r1, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	ldr r3, [sp, #0x14]
	cmp r0, r3
	bne _080015E0
	lsls r0, r6, #6
	ldr r4, [sp]
	adds r3, r0, r4
_08001582:
	mov r4, r8
	cmp r4, #0x1f
	bgt _080015C2
	movs r0, #0xfe
	lsls r0, r0, #8
	cmp r1, r0
	beq _080015C2
	movs r7, #0xff
	lsls r7, r7, #8
	adds r5, r0, #0
_08001596:
	adds r0, r7, #0
	ands r0, r1
	ldr r1, [sp, #0x14]
	cmp r0, r1
	beq _080015B0
	mov r2, ip
	lsls r0, r2, #5
	b _080015E4
	.align 2, 0
_080015A8: .4byte gUnknown_2032604
_080015AC: .4byte 0x06010000
_080015B0:
	movs r0, #1
	add ip, r0
	adds r4, #1
	adds r2, #2
	cmp r4, #0x1f
	bgt _080015C2
	ldrh r1, [r2]
	cmp r1, r5
	bne _08001596
_080015C2:
	mov r1, r8
	cmp r1, #0
	bne _080015E0
	adds r3, #0x40
	adds r6, #1
	cmp r6, #0x13
	bgt _080015E0
	adds r2, r3, #0
	ldrh r1, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	ldr r4, [sp, #0x14]
	cmp r0, r4
	beq _08001582
_080015E0:
	mov r1, ip
	lsls r0, r1, #5
_080015E4:
	mov r2, sb
	str r0, [r2, #8]
	ldr r3, [sp, #0x28]
	mov sb, r3
_080015EC:
	ldr r4, [sp, #0x1c]
	mov r8, r4
	ldr r1, [sp, #0x24]
	cmp r4, #0x1f
	bgt _08001602
	ldrh r0, [r1]
	adds r4, r0, #0
	movs r0, #0xfe
	lsls r0, r0, #8
	cmp r4, r0
	bne _08001506
_08001602:
	ldr r1, [sp, #0x20]
	mov sl, r1
	cmp r1, #0x13
	bgt _0800161C
	lsls r0, r1, #6
	ldr r2, [sp]
	adds r1, r2, r0
	ldrh r3, [r1]
	movs r4, #0xfe
	lsls r4, r4, #8
	cmp r3, r4
	beq _0800161C
	b _080014E4
_0800161C:
	movs r0, #0
	mov r1, sb
	str r0, [r1, #8]
	ldr r2, [sp, #0x10]
	adds r2, #1
	lsls r4, r2, #1
	adds r4, r4, r2
	lsls r0, r4, #2
	bl sub_08005630
	mov sb, r0
	ldr r0, _0800165C @ =gUnknown_2032604
	ldr r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	lsls r4, r4, #1
	ldr r1, _08001660 @ =0x001FFFFF
	ands r4, r1
	mov r1, sb
	adds r2, r4, #0
	bl CpuSet
	mov r0, sb
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800165C: .4byte gUnknown_2032604
_08001660: .4byte 0x001FFFFF
	thumb_func_end sub_080014A8

	thumb_func_start sub_08001664
sub_08001664: @ 0x08001664
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r6, _080016D8 @ =0x00007FFF
	mov r8, r6
	movs r3, #0
	ldr r2, [r5, #8]
	ldr r0, [r2]
	ldr r1, _080016DC @ =0x0000FFFF
	cmp r0, r1
	beq _080016AE
	mov ip, r1
_08001688:
	mov r0, r8
	lsls r1, r0, #0x10
	ldrh r7, [r2, #4]
	lsls r0, r7, #0x10
	cmp r0, r1
	bge _08001698
	ldrh r0, [r2, #4]
	mov r8, r0
_08001698:
	lsls r1, r6, #0x10
	ldrh r7, [r2, #6]
	lsls r0, r7, #0x10
	cmp r0, r1
	bge _080016A4
	ldrh r6, [r2, #6]
_080016A4:
	adds r2, #0xc
	adds r3, #1
	ldr r0, [r2]
	cmp r0, ip
	bne _08001688
_080016AE:
	cmp r3, #1
	bne _080016E0
	ldr r2, [r5, #8]
	ands r3, r4
	cmp r3, #0
	beq _080016C4
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x15
	eors r0, r1
	str r0, [r2]
_080016C4:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0800177E
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x16
	eors r0, r1
	str r0, [r2]
	b _0800177E
	.align 2, 0
_080016D8: .4byte 0x00007FFF
_080016DC: .4byte 0x0000FFFF
_080016E0:
	ldr r2, [r5, #8]
	ldr r1, [r2]
	ldr r0, _08001790 @ =0x0000FFFF
	cmp r1, r0
	beq _0800177E
	movs r0, #1
	mov ip, r0
	mov r1, ip
	ands r1, r4
	mov ip, r1
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	negs r0, r0
	mov sl, r0
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	negs r0, r0
	mov sb, r0
	movs r0, #2
	ands r0, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08001714:
	ldr r3, [r2]
	lsrs r0, r3, #0x1e
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r1, r3
	lsrs r1, r1, #0xc
	orrs r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r6, _08001794 @ =gUnknown_85EA6AC
	adds r1, r1, r6
	adds r4, r1, #0
	mov r7, ip
	cmp r7, #0
	beq _08001750
	ldrh r6, [r2, #4]
	ldr r7, [sp]
	subs r0, r6, r7
	ldrh r6, [r5, #0x20]
	subs r0, r6, r0
	ldrh r1, [r1]
	subs r0, r0, r1
	mov r7, sl
	subs r0, r0, r7
	strh r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0x15
	eors r3, r0
	str r3, [r2]
_08001750:
	mov r0, r8
	cmp r0, #0
	beq _08001774
	ldrh r1, [r2, #6]
	ldr r3, [sp, #4]
	subs r0, r1, r3
	ldrh r6, [r5, #0x22]
	subs r0, r6, r0
	ldrh r4, [r4, #2]
	subs r0, r0, r4
	mov r7, sb
	subs r0, r0, r7
	strh r0, [r2, #6]
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x16
	eors r0, r1
	str r0, [r2]
_08001774:
	adds r2, #0xc
	ldr r1, [r2]
	ldr r0, _08001790 @ =0x0000FFFF
	cmp r1, r0
	bne _08001714
_0800177E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001790: .4byte 0x0000FFFF
_08001794: .4byte gUnknown_85EA6AC
	thumb_func_end sub_08001664

	thumb_func_start sub_08001798
sub_08001798: @ 0x08001798
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r1
	ldr r4, _08001818 @ =0x00007FFF
	adds r5, r4, #0
	ldr r2, [r3, #8]
	ldr r0, [r2]
	ldr r1, _0800181C @ =0x0000FFFF
	cmp r0, r1
	beq _080017D2
	adds r6, r1, #0
_080017B2:
	lsls r1, r5, #0x10
	ldrh r7, [r2, #4]
	lsls r0, r7, #0x10
	cmp r0, r1
	bge _080017BE
	ldrh r5, [r2, #4]
_080017BE:
	lsls r1, r4, #0x10
	ldrh r7, [r2, #6]
	lsls r0, r7, #0x10
	cmp r0, r1
	bge _080017CA
	ldrh r4, [r2, #6]
_080017CA:
	adds r2, #0xc
	ldr r0, [r2]
	cmp r0, r6
	bne _080017B2
_080017D2:
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _080017E2
	mov r1, ip
	subs r1, #1
	cmp r4, #0
	beq _08001808
_080017E2:
	ldr r2, [r3, #8]
	ldr r0, [r2]
	ldr r6, _0800181C @ =0x0000FFFF
	mov r1, ip
	subs r1, #1
	cmp r0, r6
	beq _08001808
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
_080017F4:
	ldrh r7, [r2, #4]
	subs r0, r7, r5
	strh r0, [r2, #4]
	ldrh r7, [r2, #6]
	subs r0, r7, r4
	strh r0, [r2, #6]
	adds r2, #0xc
	ldr r0, [r2]
	cmp r0, r6
	bne _080017F4
_08001808:
	cmp r1, #4
	bhi _080018CC
	lsls r0, r1, #2
	ldr r1, _08001820 @ =_08001824
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08001818: .4byte 0x00007FFF
_0800181C: .4byte 0x0000FFFF
_08001820: .4byte _08001824
_08001824: @ jump table
	.4byte _08001838 @ case 0
	.4byte _080018CC @ case 1
	.4byte _08001864 @ case 2
	.4byte _08001884 @ case 3
	.4byte _080018B0 @ case 4
_08001838:
	ldr r2, [r3, #8]
	ldr r0, [r2]
	ldr r1, _08001860 @ =0x0000FFFF
	cmp r0, r1
	beq _080018CC
_08001842:
	ldrh r4, [r3, #0x20]
	lsrs r0, r4, #1
	ldrh r5, [r2, #4]
	subs r0, r5, r0
	strh r0, [r2, #4]
	ldrh r7, [r3, #0x22]
	lsrs r0, r7, #1
	ldrh r4, [r2, #6]
	subs r0, r4, r0
	strh r0, [r2, #6]
	adds r2, #0xc
	ldr r0, [r2]
	cmp r0, r1
	bne _08001842
	b _080018CC
	.align 2, 0
_08001860: .4byte 0x0000FFFF
_08001864:
	ldr r2, [r3, #8]
	ldr r0, [r2]
	ldr r1, _08001880 @ =0x0000FFFF
	cmp r0, r1
	beq _080018CC
_0800186E:
	ldrh r5, [r2, #4]
	ldrh r7, [r3, #0x20]
	subs r0, r5, r7
	strh r0, [r2, #4]
	adds r2, #0xc
	ldr r0, [r2]
	cmp r0, r1
	bne _0800186E
	b _080018CC
	.align 2, 0
_08001880: .4byte 0x0000FFFF
_08001884:
	ldr r2, [r3, #8]
	ldr r0, [r2]
	ldr r1, _080018AC @ =0x0000FFFF
	cmp r0, r1
	beq _080018CC
_0800188E:
	ldrh r4, [r3, #0x20]
	lsrs r0, r4, #1
	ldrh r5, [r2, #4]
	subs r0, r5, r0
	strh r0, [r2, #4]
	ldrh r7, [r2, #6]
	ldrh r4, [r3, #0x22]
	subs r0, r7, r4
	strh r0, [r2, #6]
	adds r2, #0xc
	ldr r0, [r2]
	cmp r0, r1
	bne _0800188E
	b _080018CC
	.align 2, 0
_080018AC: .4byte 0x0000FFFF
_080018B0:
	ldr r2, [r3, #8]
	ldr r0, [r2]
	ldr r1, _080018D4 @ =0x0000FFFF
	cmp r0, r1
	beq _080018CC
_080018BA:
	ldrh r5, [r3, #0x20]
	lsrs r0, r5, #1
	ldrh r7, [r2, #4]
	subs r0, r7, r0
	strh r0, [r2, #4]
	adds r2, #0xc
	ldr r0, [r2]
	cmp r0, r1
	bne _080018BA
_080018CC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080018D4: .4byte 0x0000FFFF
	thumb_func_end sub_08001798

	thumb_func_start sub_080018D8
sub_080018D8: @ 0x080018D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	mov sl, r1
	ldr r0, _08001994 @ =gUnknown_8703E58
	str r0, [r7, #0x30]
	ldr r1, [r7, #0x24]
	ldr r0, [r7, #0x28]
	str r0, [r1, #0x28]
	ldr r1, [r7, #0x28]
	ldr r0, [r7, #0x24]
	str r0, [r1, #0x24]
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _08001958
	adds r4, r0, #0
	ldr r1, [r4]
	ldr r0, _08001998 @ =0x0000FFFF
	cmp r1, r0
	beq _08001958
	ldr r0, _0800199C @ =0x000003FF
	mov sb, r0
	ldr r1, _080019A0 @ =gUnknown_85EA6AC
	mov r8, r1
	ldr r2, _080019A4 @ =gUnknown_2032190
	mov ip, r2
_08001912:
	ldr r0, [r4]
	lsrs r2, r0, #0x1e
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r0, r1
	lsrs r0, r0, #0xc
	orrs r2, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	mov r2, r8
	adds r1, r0, r2
	mov r2, sb
	ldrh r0, [r4, #8]
	ands r2, r0
	movs r3, #0
	ldr r0, [r1, #8]
	adds r5, r4, #0
	adds r5, #0xc
	cmp r3, r0
	bge _0800194E
	mov r6, ip
	movs r4, #0
_08001940:
	adds r0, r2, r6
	strb r4, [r0]
	adds r2, #1
	adds r3, #1
	ldr r0, [r1, #8]
	cmp r3, r0
	blt _08001940
_0800194E:
	adds r4, r5, #0
	ldr r1, [r4]
	ldr r0, _08001998 @ =0x0000FFFF
	cmp r1, r0
	bne _08001912
_08001958:
	movs r0, #2
	ldrh r1, [r7, #0x2c]
	ands r0, r1
	cmp r0, #0
	beq _0800196E
	ldr r0, [r7, #0x18]
	bl sub_08005618
	ldr r0, [r7, #8]
	bl sub_08005618
_0800196E:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0800108C
	movs r0, #1
	mov r2, sl
	ands r0, r2
	cmp r0, #0
	beq _08001986
	adds r0, r7, #0
	bl sub_080046C0
_08001986:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001994: .4byte gUnknown_8703E58
_08001998: .4byte 0x0000FFFF
_0800199C: .4byte 0x000003FF
_080019A0: .4byte gUnknown_85EA6AC
_080019A4: .4byte gUnknown_2032190
	thumb_func_end sub_080018D8

	thumb_func_start sub_080019A8
sub_080019A8: @ 0x080019A8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r3, [r4, #0x2c]
	movs r1, #0x30
	ands r1, r3
	lsrs r1, r1, #4
	movs r0, #4
	ldrsh r5, [r4, r0]
	movs r2, #6
	ldrsh r6, [r4, r2]
	ldr r2, _080019F4 @ =gUnknown_20328C8
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r0, r2
	movs r2, #2
	ldrsh r1, [r0, r2]
	movs r2, #6
	ldrsh r0, [r0, r2]
	ldrh r2, [r4, #4]
	subs r1, r2, r1
	strh r1, [r4, #4]
	ldrh r1, [r4, #6]
	subs r0, r1, r0
	strh r0, [r4, #6]
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _080019E8
	adds r0, r4, #0
	bl sub_08000FAC
_080019E8:
	strh r5, [r4, #4]
	strh r6, [r4, #6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080019F4: .4byte gUnknown_20328C8
	thumb_func_end sub_080019A8

	thumb_func_start sub_080019F8
sub_080019F8: @ 0x080019F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	asrs r6, r0, #3
	asrs r5, r1, #3
	movs r2, #7
	adds r4, r2, #0
	ands r4, r0
	ands r2, r1
	adds r0, r6, #0
	muls r0, r5, r0
	lsls r3, r0, #6
	cmp r4, #0
	beq _08001A48
	movs r0, #0
	mov ip, r0
	ldr r1, _08001A9C @ =gUnknown_85EA748
	ldr r0, [r1, #4]
	cmp r0, r4
	blt _08001A2E
	adds r1, #4
_08001A22:
	adds r1, #4
	movs r0, #1
	add ip, r0
	ldr r0, [r1]
	cmp r0, r4
	bge _08001A22
_08001A2E:
	cmp r5, #0
	ble _08001A48
	ldr r1, _08001AA0 @ =gUnknown_85EA77C
	mov r8, r1
	mov r1, ip
	lsls r0, r1, #1
	add r0, r8
	ldrh r0, [r0]
	adds r1, r5, #0
_08001A40:
	adds r3, r3, r0
	subs r1, #1
	cmp r1, #0
	bne _08001A40
_08001A48:
	cmp r2, #0
	beq _08001A78
	movs r7, #0
	ldr r1, _08001A9C @ =gUnknown_85EA748
	ldr r0, [r1, #4]
	cmp r0, r2
	blt _08001A62
	adds r1, #4
_08001A58:
	adds r1, #4
	adds r7, #1
	ldr r0, [r1]
	cmp r0, r2
	bge _08001A58
_08001A62:
	cmp r6, #0
	ble _08001A78
	ldr r1, _08001AA0 @ =gUnknown_85EA77C
	lsls r0, r7, #3
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r6, #0
_08001A70:
	adds r3, r3, r1
	subs r0, #1
	cmp r0, #0
	bne _08001A70
_08001A78:
	cmp r4, #0
	beq _08001A8E
	cmp r2, #0
	beq _08001A8E
	ldr r1, _08001AA0 @ =gUnknown_85EA77C
	lsls r0, r7, #2
	add r0, ip
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r3, r0, r3
_08001A8E:
	adds r0, r3, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001A9C: .4byte gUnknown_85EA748
_08001AA0: .4byte gUnknown_85EA77C
	thumb_func_end sub_080019F8

	thumb_func_start sub_08001AA4
sub_08001AA4: @ 0x08001AA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	str r0, [sp, #8]
	adds r5, r1, #0
	adds r6, r2, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080019F8
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r4, #0
	bl sub_0800110C
	str r0, [sp, #0x10]
	ldr r0, _08001CBC @ =gUnknown_2032608
	mov r1, sp
	ldrh r1, [r1, #0xc]
	strh r1, [r0]
	ldr r2, [sp, #0x10]
	lsls r1, r2, #5
	ldr r7, _08001CC0 @ =0x06010000
	adds r1, r1, r7
	lsls r4, r4, #5
	movs r3, #0x80
	lsls r3, r3, #0x11
	adds r2, r4, #0
	bl sub_08000308
	asrs r0, r5, #3
	str r0, [sp, #0x14]
	movs r0, #7
	adds r1, r0, #0
	ands r1, r5
	cmp r1, #0
	beq _08001AFC
	ldr r2, [sp, #0x14]
	adds r2, #1
	str r2, [sp, #0x14]
_08001AFC:
	asrs r4, r6, #3
	str r4, [sp, #0x18]
	ands r0, r6
	cmp r0, #0
	beq _08001B0A
	adds r4, #1
	str r4, [sp, #0x18]
_08001B0A:
	str r1, [sp, #0x1c]
	str r0, [sp, #0x20]
	ldr r1, _08001CC4 @ =0xFFFF0000
	ldr r2, _08001CC8 @ =0x0000FFFF
	ldr r5, [sp, #0xc]
	str r5, [sp]
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #0x14
	orrs r0, r1
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [sp, #4]
	mov r4, sp
	movs r3, #0xfe
	lsls r3, r3, #8
	mov r0, sp
	movs r6, #0
	ldrsh r1, [r0, r6]
	movs r7, #4
	ldrsh r0, [r4, r7]
	ldr r2, _08001CCC @ =gUnknown_2032604
	mov sb, r2
	movs r5, #1
	mov sl, r5
	cmp r1, r0
	bge _08001B90
	movs r7, #6
	ldrsh r6, [r4, r7]
	mov r8, r6
_08001B4A:
	movs r0, #2
	ldrsh r2, [r4, r0]
	adds r5, r1, #1
	mov ip, r5
	cmp r2, r8
	bge _08001B86
	movs r5, #0xff
	lsls r5, r5, #8
	movs r7, #0xfe
	lsls r7, r7, #8
	lsls r0, r2, #1
	lsls r1, r1, #6
	ldr r6, [sp, #8]
	adds r1, r1, r6
	adds r1, r0, r1
	movs r6, #6
	ldrsh r0, [r4, r6]
	subs r2, r0, r2
_08001B6E:
	strh r3, [r1]
	cmp r3, r5
	beq _08001B7E
	cmp r3, r7
	beq _08001B7E
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08001B7E:
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bne _08001B6E
_08001B86:
	mov r1, ip
	movs r7, #4
	ldrsh r0, [r4, r7]
	cmp r1, r0
	blt _08001B4A
_08001B90:
	mov r1, sb
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r6, r0, r2
	movs r4, #0
	str r4, [sp, #0x24]
	ldr r5, [sp, #0x18]
	cmp r4, r5
	blt _08001BA6
	b _08001E54
_08001BA6:
	ldr r0, [sp, #0x18]
	subs r0, #1
	movs r7, #8
	str r7, [sp, #0x28]
	ldr r1, [sp, #0x24]
	cmp r1, r0
	bne _08001BBC
	ldr r2, [sp, #0x20]
	cmp r2, #0
	beq _08001BBC
	str r2, [sp, #0x28]
_08001BBC:
	movs r4, #0
	ldr r5, [sp, #0x24]
	adds r5, #1
	str r5, [sp, #0x40]
	ldr r7, [sp, #0x14]
	cmp r4, r7
	blt _08001BCC
	b _08001E48
_08001BCC:
	ldr r0, [sp, #0x24]
	lsls r0, r0, #3
	str r0, [sp, #0x2c]
	mov sb, sp
	adds r0, #8
	str r0, [sp, #0x30]
	ldr r1, _08001CD0 @ =gUnknown_85EA75C
	str r1, [sp, #0x64]
	ldr r2, _08001CD4 @ =gUnknown_85EA610
	str r2, [sp, #0x68]
_08001BE0:
	ldr r0, [sp, #0x14]
	subs r0, #1
	movs r2, #8
	cmp r4, r0
	bne _08001BF2
	ldr r5, [sp, #0x1c]
	cmp r5, #0
	beq _08001BF2
	adds r2, r5, #0
_08001BF2:
	cmp r2, #8
	bne _08001CD8
	ldr r7, [sp, #0x28]
	cmp r7, #8
	bne _08001CD8
	mov r0, sp
	ldrh r1, [r0, #0x2c]
	mov r0, sb
	strh r1, [r0]
	lsls r0, r4, #3
	mov r2, sb
	strh r0, [r2, #2]
	mov r5, sp
	ldrh r5, [r5, #0x30]
	strh r5, [r2, #4]
	adds r0, #8
	strh r0, [r2, #6]
	ldr r7, [sp, #0xc]
	lsls r0, r7, #0x18
	mov r7, sp
	lsrs r3, r0, #0x10
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r2, #4
	ldrsh r0, [r7, r2]
	lsls r5, r4, #6
	str r5, [sp, #0x4c]
	ldr r2, [sp, #0x24]
	lsls r2, r2, #6
	str r2, [sp, #0x48]
	ldr r5, [sp, #0x10]
	adds r5, #0x40
	mov ip, r5
	adds r2, r6, #0
	adds r2, #0xc
	str r2, [sp, #0x5c]
	adds r4, #1
	str r4, [sp, #0x44]
	cmp r1, r0
	bge _08001C8E
	movs r5, #6
	ldrsh r4, [r7, r5]
	mov sl, r4
_08001C48:
	movs r0, #2
	ldrsh r2, [r7, r0]
	adds r4, r1, #1
	cmp r2, sl
	bge _08001C84
	movs r5, #0xff
	lsls r5, r5, #8
	mov r8, r5
	lsls r0, r2, #1
	lsls r1, r1, #6
	ldr r5, [sp, #8]
	adds r1, r1, r5
	adds r1, r0, r1
	movs r5, #6
	ldrsh r0, [r7, r5]
	subs r2, r0, r2
_08001C68:
	strh r3, [r1]
	cmp r3, r8
	beq _08001C7C
	movs r0, #0xfe
	lsls r0, r0, #8
	cmp r3, r0
	beq _08001C7C
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08001C7C:
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bne _08001C68
_08001C84:
	adds r1, r4, #0
	movs r2, #4
	ldrsh r0, [r7, r2]
	cmp r1, r0
	blt _08001C48
_08001C8E:
	add r4, sp, #0x4c
	ldrh r4, [r4]
	strh r4, [r6, #4]
	add r5, sp, #0x48
	ldrh r5, [r5]
	strh r5, [r6, #6]
	mov r7, sp
	ldrh r7, [r7, #0x10]
	strh r7, [r6, #8]
	movs r0, #0xc0
	lsls r0, r0, #0x18
	str r0, [r6]
	movs r0, #0x40
	strb r0, [r6, #0xb]
	strb r0, [r6, #0xa]
	mov r0, ip
	str r0, [sp, #0x10]
	ldr r6, [sp, #0x5c]
	ldr r1, [sp, #0xc]
	adds r1, #1
	str r1, [sp, #0xc]
	b _08001E38
	.align 2, 0
_08001CBC: .4byte gUnknown_2032608
_08001CC0: .4byte 0x06010000
_08001CC4: .4byte 0xFFFF0000
_08001CC8: .4byte 0x0000FFFF
_08001CCC: .4byte gUnknown_2032604
_08001CD0: .4byte gUnknown_85EA75C
_08001CD4: .4byte gUnknown_85EA610
_08001CD8:
	movs r7, #0
	ldr r5, _08001E90 @ =gUnknown_85EA748
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x24]
	lsls r5, r1, #3
	lsls r3, r4, #3
	ldr r1, [sp, #0xc]
	lsls r1, r1, #0x18
	str r1, [sp, #0x60]
	lsls r1, r4, #6
	str r1, [sp, #0x4c]
	ldr r1, [sp, #0x24]
	lsls r1, r1, #6
	str r1, [sp, #0x48]
	adds r1, r6, #0
	adds r1, #0xc
	str r1, [sp, #0x5c]
	ldr r1, [sp, #0x64]
	mov r8, r1
	ldr r1, [sp, #0x68]
	mov sl, r1
	lsls r1, r2, #0x10
	str r1, [sp, #0x54]
	ldr r1, [sp, #0x28]
	lsls r1, r1, #0x10
	str r1, [sp, #0x50]
	adds r4, #1
	str r4, [sp, #0x44]
	cmp r0, r2
	blt _08001D22
	ldr r1, _08001E90 @ =gUnknown_85EA748
	adds r1, #4
_08001D18:
	adds r1, #4
	adds r7, #1
	ldr r0, [r1]
	cmp r0, r2
	bge _08001D18
_08001D22:
	movs r1, #0
	ldr r2, _08001E90 @ =gUnknown_85EA748
	ldr r0, [r2, #4]
	ldr r4, [sp, #0x28]
	cmp r0, r4
	blt _08001D3C
	adds r2, #4
_08001D30:
	adds r2, #4
	adds r1, #1
	ldr r0, [r2]
	ldr r4, [sp, #0x28]
	cmp r0, r4
	bge _08001D30
_08001D3C:
	lsls r1, r1, #2
	adds r1, r1, r7
	lsls r1, r1, #1
	add r1, r8
	ldrh r7, [r1]
	lsls r0, r7, #1
	adds r1, r7, #0
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	mov ip, r0
	mov r0, sb
	strh r5, [r0]
	strh r3, [r0, #2]
	mov r1, ip
	ldrh r1, [r1, #2]
	lsrs r0, r1, #3
	adds r0, r5, r0
	mov r2, sb
	strh r0, [r2, #4]
	mov r4, ip
	ldrh r4, [r4]
	lsrs r0, r4, #3
	adds r0, r3, r0
	strh r0, [r2, #6]
	mov sl, sp
	ldr r7, [sp, #0x60]
	lsrs r4, r7, #0x10
	ldr r1, [sp, #0x54]
	lsrs r0, r1, #0x10
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x34]
	ldr r2, [sp, #0x50]
	lsrs r0, r2, #0x10
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x38]
	mov r5, sb
	movs r7, #0
	ldrsh r3, [r5, r7]
	mov r1, sl
	movs r2, #4
	ldrsh r0, [r1, r2]
	cmp r3, r0
	bge _08001E08
	movs r7, #6
	ldrsh r5, [r1, r7]
	str r5, [sp, #0x3c]
_08001DA2:
	mov r0, sl
	movs r1, #2
	ldrsh r2, [r0, r1]
	adds r5, r3, #1
	str r5, [sp, #0x58]
	ldr r7, [sp, #0x3c]
	cmp r2, r7
	bge _08001DFC
	ldr r1, [sp, #0x34]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r5, [sp, #0x38]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	lsls r1, r2, #1
	lsls r0, r3, #6
	ldr r7, [sp, #8]
	adds r0, r0, r7
	adds r1, r1, r0
	mov r0, sl
	movs r7, #6
	ldrsh r5, [r0, r7]
_08001DD2:
	cmp r2, r8
	bge _08001DDE
	ldr r0, [sp, #0x6c]
	cmp r3, r0
	bge _08001DDE
	strh r4, [r1]
_08001DDE:
	movs r7, #0xff
	lsls r7, r7, #8
	cmp r4, r7
	beq _08001DF4
	movs r0, #0xfe
	lsls r0, r0, #8
	cmp r4, r0
	beq _08001DF4
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08001DF4:
	adds r1, #2
	adds r2, #1
	cmp r2, r5
	blt _08001DD2
_08001DFC:
	ldr r3, [sp, #0x58]
	mov r1, sl
	movs r2, #4
	ldrsh r0, [r1, r2]
	cmp r3, r0
	blt _08001DA2
_08001E08:
	add r4, sp, #0x4c
	ldrh r4, [r4]
	strh r4, [r6, #4]
	add r5, sp, #0x48
	ldrh r5, [r5]
	strh r5, [r6, #6]
	mov r7, ip
	ldr r0, [r7, #4]
	str r0, [r6]
	mov r0, sp
	ldrh r0, [r0, #0x10]
	strh r0, [r6, #8]
	ldrh r0, [r7]
	strb r0, [r6, #0xa]
	ldrh r0, [r7, #2]
	strb r0, [r6, #0xb]
	ldr r0, [r7, #8]
	ldr r1, [sp, #0x10]
	adds r1, r1, r0
	str r1, [sp, #0x10]
	ldr r6, [sp, #0x5c]
	ldr r2, [sp, #0xc]
	adds r2, #1
	str r2, [sp, #0xc]
_08001E38:
	ldr r4, [sp, #0x44]
	ldr r5, [sp, #0xc]
	adds r5, #1
	mov sl, r5
	ldr r7, [sp, #0x14]
	cmp r4, r7
	bge _08001E48
	b _08001BE0
_08001E48:
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x18]
	cmp r0, r1
	bge _08001E54
	b _08001BA6
_08001E54:
	ldr r0, _08001E94 @ =0x0000FFFF
	str r0, [r6]
	mov r2, sl
	lsls r4, r2, #1
	add r4, sl
	lsls r0, r4, #2
	bl sub_08005630
	adds r6, r0, #0
	ldr r0, _08001E98 @ =gUnknown_2032604
	ldr r0, [r0]
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r0, r5
	lsls r4, r4, #1
	ldr r1, _08001E9C @ =0x001FFFFF
	ands r4, r1
	adds r1, r6, #0
	adds r2, r4, #0
	bl CpuSet
	adds r0, r6, #0
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08001E90: .4byte gUnknown_85EA748
_08001E94: .4byte 0x0000FFFF
_08001E98: .4byte gUnknown_2032604
_08001E9C: .4byte 0x001FFFFF
	thumb_func_end sub_08001AA4

	thumb_func_start sub_08001EA0
sub_08001EA0: @ 0x08001EA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	movs r1, #0
	movs r0, #0
	str r0, [sp, #0x14]
	movs r2, #0xff
	lsls r2, r2, #8
	str r2, [sp, #0x18]
	ldr r0, _08002044 @ =gUnknown_2032604
	ldr r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r3, r3, r0
	mov sb, r3
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r2, [sp]
	movs r0, #0xfe
	lsls r0, r0, #8
	ldrh r3, [r2]
	cmp r3, r0
	bne _08001EDE
	b _08002004
_08001EDE:
	movs r0, #0
	mov r8, r0
	ldrh r0, [r2]
	adds r4, r0, #0
	ldr r3, [sp, #0x10]
	adds r3, #1
	str r3, [sp, #0x20]
	movs r0, #0xfe
	lsls r0, r0, #8
	cmp r4, r0
	beq _08001FE8
_08001EF4:
	movs r7, #0xff
	lsls r7, r7, #8
	adds r0, r7, #0
	ands r0, r4
	ldr r3, [sp, #0x18]
	cmp r0, r3
	bne _08001F10
	mov r3, r8
	adds r3, #1
	str r3, [sp, #0x1c]
	adds r3, r2, #2
	mov sl, r3
	cmp r1, #1
	bne _08001FD2
_08001F10:
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	adds r0, #1
	str r0, [sp, #0x14]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r3, [sp, #4]
	adds r1, r3, r1
	movs r0, #0xff
	ands r0, r4
	ldrh r1, [r1, #8]
	adds r0, r1, r0
	lsls r0, r0, #5
	ldr r1, _08002048 @ =0x06010000
	adds r0, r0, r1
	mov r3, sb
	str r0, [r3]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0xc]
	adds r0, r1, #0
	muls r0, r3, r0
	lsls r0, r0, #5
	ldr r1, [sp, #8]
	adds r0, r1, r0
	mov r3, r8
	lsls r1, r3, #5
	adds r0, r0, r1
	mov r1, sb
	str r0, [r1, #4]
	movs r5, #0
	ldr r6, [sp, #0x10]
	adds r1, #0xc
	str r1, [sp, #0x24]
	adds r3, #1
	str r3, [sp, #0x1c]
	adds r2, #2
	mov sl, r2
	cmp r6, #0x13
	bgt _08001FC6
	lsls r0, r6, #6
	ldr r2, [sp]
	adds r1, r2, r0
	mov r3, r8
	lsls r0, r3, #1
	adds r2, r1, r0
	adds r0, r7, #0
	ldrh r3, [r2]
	ands r0, r3
	ldr r3, [sp, #0x18]
	cmp r0, r3
	bne _08001FC6
	adds r3, r1, #0
_08001F7E:
	mov r4, r8
	cmp r4, #0x1f
	bgt _08001FA8
	movs r7, #0xfe
	lsls r7, r7, #8
	movs r0, #0xff
	lsls r0, r0, #8
	mov ip, r0
_08001F8E:
	ldrh r1, [r2]
	cmp r1, r7
	beq _08001FC6
	mov r0, ip
	ands r0, r1
	ldr r1, [sp, #0x18]
	cmp r0, r1
	bne _08001FC6
	adds r5, #1
	adds r4, #1
	adds r2, #2
	cmp r4, #0x1f
	ble _08001F8E
_08001FA8:
	mov r2, r8
	cmp r2, #0
	bne _08001FC6
	adds r3, #0x40
	adds r6, #1
	cmp r6, #0x13
	bgt _08001FC6
	adds r2, r3, #0
	movs r0, #0xff
	lsls r0, r0, #8
	ldrh r1, [r2]
	ands r0, r1
	ldr r1, [sp, #0x18]
	cmp r0, r1
	beq _08001F7E
_08001FC6:
	lsls r0, r5, #5
	mov r2, sb
	str r0, [r2, #8]
	movs r1, #0
	ldr r3, [sp, #0x24]
	mov sb, r3
_08001FD2:
	ldr r0, [sp, #0x1c]
	mov r8, r0
	mov r2, sl
	cmp r0, #0x1f
	bgt _08001FEA
	ldrh r0, [r2]
	adds r4, r0, #0
	movs r3, #0xfe
	lsls r3, r3, #8
	cmp r4, r3
	bne _08001EF4
_08001FE8:
	movs r1, #1
_08001FEA:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x10]
	cmp r0, #0x13
	bgt _08002004
	lsls r0, r0, #6
	ldr r3, [sp]
	adds r2, r3, r0
	ldrh r0, [r2]
	movs r3, #0xfe
	lsls r3, r3, #8
	cmp r0, r3
	beq _08002004
	b _08001EDE
_08002004:
	movs r0, #0
	mov r1, sb
	str r0, [r1, #8]
	ldr r2, [sp, #0x14]
	adds r2, #1
	lsls r4, r2, #1
	adds r4, r4, r2
	lsls r0, r4, #2
	bl sub_08005630
	mov sb, r0
	ldr r0, _08002044 @ =gUnknown_2032604
	ldr r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	lsls r4, r4, #1
	ldr r1, _0800204C @ =0x001FFFFF
	ands r4, r1
	mov r1, sb
	adds r2, r4, #0
	bl CpuSet
	mov r0, sb
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08002044: .4byte gUnknown_2032604
_08002048: .4byte 0x06010000
_0800204C: .4byte 0x001FFFFF
	thumb_func_end sub_08001EA0

	@ file boundary

	thumb_func_start sub_08002050
sub_08002050: @ 0x08002050
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x30
	mov r7, sp
	bl sub_0804441C
	adds r5, r0, #0
	mov sb, r5
	ldr r6, _0800208C @ =gUnknown_20325C8
	adds r4, r5, #0
	adds r0, r6, #0
	adds r0, #0x34
	str r0, [r6]
	adds r0, r6, #0
	movs r1, #0
	bl sub_080010F0
	adds r1, r5, #4
	ldr r0, [r5, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08002090 @ =_08002094
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08002096
	.align 2, 0
_0800208C: .4byte gUnknown_20325C8
_08002090: .4byte _08002094
_08002094: @ 0x08002094
	b _080020AC
_08002096:
	str r7, [r1]
	ldr r0, _080020A8 @ =gUnknown_8703E58
	str r0, [r6, #0x30]
	mov r1, sb
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	b _080020E6
	.align 2, 0
_080020A8: .4byte gUnknown_8703E58
_080020AC:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _080020C4 @ =_080020C8
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _080020CA
	.align 2, 0
_080020C4: .4byte _080020C8
_080020C8: @ 0x080020C8
	b _080020E2
_080020CA:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r6, #0
	movs r1, #0
	bl sub_0800108C
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_080020E2:
	bl sub_080443CC
_080020E6:
	ldr r6, _08002110 @ =gUnknown_2032590
	adds r4, r5, #0
	adds r0, r6, #0
	adds r0, #0x34
	str r0, [r6]
	adds r0, r6, #0
	movs r1, #0
	bl sub_080010F0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08002114 @ =_08002118
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _0800211A
	.align 2, 0
_08002110: .4byte gUnknown_2032590
_08002114: .4byte _08002118
_08002118: @ 0x08002118
	b _0800212C
_0800211A:
	str r7, [r1]
	ldr r0, _08002128 @ =gUnknown_8703E58
	str r0, [r6, #0x30]
	ldr r0, [r5, #4]
	ldr r0, [r0]
	str r0, [r5, #4]
	b _08002166
	.align 2, 0
_08002128: .4byte gUnknown_8703E58
_0800212C:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08002144 @ =_08002148
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _0800214A
	.align 2, 0
_08002144: .4byte _08002148
_08002148: @ 0x08002148
	b _08002162
_0800214A:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r6, #0
	movs r1, #0
	bl sub_0800108C
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08002162:
	bl sub_080443CC
_08002166:
	add sp, #0x30
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08002050

	thumb_func_start sub_08002174
sub_08002174: @ 0x08002174
	push {lr}
	ldr r0, _0800218C @ =gUnknown_2032590
	movs r1, #2
	bl sub_080018D8
	ldr r0, _08002190 @ =gUnknown_20325C8
	movs r1, #2
	bl sub_080018D8
	pop {r0}
	bx r0
	.align 2, 0
_0800218C: .4byte gUnknown_2032590
_08002190: .4byte gUnknown_20325C8
	thumb_func_end sub_08002174

	thumb_func_start sub_08002194
sub_08002194: @ 0x08002194
	ldrh r0, [r0, #0x20]
	bx lr
	thumb_func_end sub_08002194

	thumb_func_start sub_08002198
sub_08002198: @ 0x08002198
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	strh r7, [r4, #0x20]
	strh r6, [r4, #0x22]
	adds r0, r7, #7
	asrs r7, r0, #3
	adds r0, r6, #7
	asrs r6, r0, #3
	ldr r5, _080021DC @ =gUnknown_2032604
	ldr r0, [r5]
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_08001AA4
	adds r1, r0, #0
	str r1, [r4, #8]
	ldr r0, [r5]
	str r6, [sp]
	movs r2, #0
	adds r3, r7, #0
	bl sub_08001EA0
	str r0, [r4, #0x18]
	movs r0, #2
	ldrh r1, [r4, #0x2c]
	orrs r0, r1
	strh r0, [r4, #0x2c]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080021DC: .4byte gUnknown_2032604
	thumb_func_end sub_08002198

	thumb_func_start sub_080021E0
sub_080021E0: @ 0x080021E0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	strh r7, [r4, #0x20]
	strh r6, [r4, #0x22]
	adds r0, r7, #7
	asrs r7, r0, #3
	adds r0, r6, #7
	asrs r6, r0, #3
	ldr r5, _08002224 @ =gUnknown_2032604
	ldr r0, [r5]
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_080011A8
	adds r1, r0, #0
	str r1, [r4, #8]
	ldr r0, [r5]
	str r6, [sp]
	movs r2, #0
	adds r3, r7, #0
	bl sub_080014A8
	str r0, [r4, #0x18]
	movs r0, #2
	ldrh r1, [r4, #0x2c]
	orrs r0, r1
	strh r0, [r4, #0x2c]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002224: .4byte gUnknown_2032604
	thumb_func_end sub_080021E0

	thumb_func_start sub_08002228
sub_08002228: @ 0x08002228
	push {r4, r5, r6, r7, lr}
	movs r1, #0
	ldr r6, _08002264 @ =0x000003FF
	ldr r2, _08002268 @ =gUnknown_20325C8
	ldr r3, _0800226C @ =gUnknown_2032590
	ldr r7, _08002270 @ =gUnknown_2032604
	ldr r5, _08002274 @ =gUnknown_2032190
	movs r4, #0
_08002238:
	adds r0, r1, r5
	strb r4, [r0]
	adds r1, #1
	cmp r1, r6
	ble _08002238
	str r3, [r2, #0x24]
	movs r0, #0
	str r0, [r2, #0x28]
	strh r0, [r2, #0x2e]
	str r0, [r3, #0x24]
	str r2, [r3, #0x28]
	ldr r0, _08002278 @ =0x0000FFFF
	strh r0, [r3, #0x2e]
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08005630
	str r0, [r7]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002264: .4byte 0x000003FF
_08002268: .4byte gUnknown_20325C8
_0800226C: .4byte gUnknown_2032590
_08002270: .4byte gUnknown_2032604
_08002274: .4byte gUnknown_2032190
_08002278: .4byte 0x0000FFFF
	thumb_func_end sub_08002228

	thumb_func_start sub_0800227C
sub_0800227C: @ 0x0800227C
	push {r4, lr}
	ldr r4, _08002298 @ =gUnknown_20325C8
	cmp r4, #0
	beq _080022B0
_08002284:
	ldrh r1, [r4, #0x2c]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800229C
	adds r0, r4, #0
	bl sub_080019A8
	b _080022AA
	.align 2, 0
_08002298: .4byte gUnknown_20325C8
_0800229C:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080022AA
	adds r0, r4, #0
	bl sub_08000FAC
_080022AA:
	ldr r4, [r4, #0x24]
	cmp r4, #0
	bne _08002284
_080022B0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800227C

	thumb_func_start sub_080022B8
sub_080022B8: @ 0x080022B8
	ldr r1, _080022D0 @ =gUnknown_20325C8
	cmp r1, #0
	beq _080022CE
	ldr r2, _080022D4 @ =0x0000FFF7
_080022C0:
	adds r0, r2, #0
	ldrh r3, [r1, #0x2c]
	ands r0, r3
	strh r0, [r1, #0x2c]
	ldr r1, [r1, #0x24]
	cmp r1, #0
	bne _080022C0
_080022CE:
	bx lr
	.align 2, 0
_080022D0: .4byte gUnknown_20325C8
_080022D4: .4byte 0x0000FFF7
	thumb_func_end sub_080022B8

	thumb_func_start sub_080022D8
sub_080022D8: @ 0x080022D8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080022F8 @ =gUnknown_20325C8
	cmp r1, #0
	beq _080022F6
	lsls r2, r0, #4
	movs r0, #8
	orrs r2, r0
_080022E8:
	adds r0, r2, #0
	ldrh r3, [r1, #0x2c]
	orrs r0, r3
	strh r0, [r1, #0x2c]
	ldr r1, [r1, #0x24]
	cmp r1, #0
	bne _080022E8
_080022F6:
	bx lr
	.align 2, 0
_080022F8: .4byte gUnknown_20325C8
	thumb_func_end sub_080022D8

	thumb_func_start sub_080022FC
sub_080022FC: @ 0x080022FC
	ldrh r1, [r0, #0x2c]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0800230A
	movs r0, #0
	b _08002318
_0800230A:
	movs r0, #0x30
	ands r0, r1
	lsls r0, r0, #0x14
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r0, r0, #0x18
_08002318:
	bx lr
	.align 2, 0
	thumb_func_end sub_080022FC

	thumb_func_start sub_0800231C
sub_0800231C: @ 0x0800231C
	ldr r1, _08002328 @ =0x0000FFF7
	ldrh r2, [r0, #0x2c]
	ands r1, r2
	strh r1, [r0, #0x2c]
	bx lr
	.align 2, 0
_08002328: .4byte 0x0000FFF7
	thumb_func_end sub_0800231C

	thumb_func_start sub_0800232C
sub_0800232C: @ 0x0800232C
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x14
	movs r2, #8
	orrs r1, r2
	ldrh r2, [r0, #0x2c]
	orrs r1, r2
	strh r1, [r0, #0x2c]
	bx lr
	thumb_func_end sub_0800232C

	thumb_func_start sub_0800233C
sub_0800233C: @ 0x0800233C
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end sub_0800233C

	thumb_func_start sub_08002340
sub_08002340: @ 0x08002340
	ldrh r2, [r0, #0x22]
	ldrh r3, [r0, #0x20]
	adds r1, r2, #0
	muls r1, r3, r1
	adds r0, r1, #0
	asrs r0, r0, #1
	bx lr
	.align 2, 0
	thumb_func_end sub_08002340

	thumb_func_start sub_08002350
sub_08002350: @ 0x08002350
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_08002350

	thumb_func_start sub_08002354
sub_08002354: @ 0x08002354
	push {r4, lr}
	movs r3, #0
	cmp r1, #1
	bne _08002360
	movs r3, #0x80
	lsls r3, r3, #5
_08002360:
	ldr r1, [r0, #8]
	ldr r0, [r1]
	ldr r2, _08002384 @ =0x0000FFFF
	cmp r0, r2
	beq _0800237C
	ldr r4, _08002388 @ =0xFFFFEFFF
_0800236C:
	ldr r0, [r1]
	ands r0, r4
	orrs r0, r3
	str r0, [r1]
	adds r1, #0xc
	ldr r0, [r1]
	cmp r0, r2
	bne _0800236C
_0800237C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002384: .4byte 0x0000FFFF
_08002388: .4byte 0xFFFFEFFF
	thumb_func_end sub_08002354

	thumb_func_start sub_0800238C
sub_0800238C: @ 0x0800238C
	push {r4, lr}
	ldr r2, [r0, #8]
	ldr r0, [r2]
	ldr r3, _080023B0 @ =0x0000FFFF
	cmp r0, r3
	beq _080023AA
	ldr r4, _080023B4 @ =0xFFFFF3FF
_0800239A:
	ldr r0, [r2]
	ands r0, r4
	orrs r0, r1
	str r0, [r2]
	adds r2, #0xc
	ldr r0, [r2]
	cmp r0, r3
	bne _0800239A
_080023AA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080023B0: .4byte 0x0000FFFF
_080023B4: .4byte 0xFFFFF3FF
	thumb_func_end sub_0800238C

	thumb_func_start sub_080023B8
sub_080023B8: @ 0x080023B8
	adds r1, r0, #0
	movs r0, #1
	ldrh r1, [r1, #0x2c]
	ands r0, r1
	bx lr
	.align 2, 0
	thumb_func_end sub_080023B8

	thumb_func_start sub_080023C4
sub_080023C4: @ 0x080023C4
	ldr r1, _080023D4 @ =0x0000FFFE
	ldrh r2, [r0, #0x2c]
	ands r1, r2
	movs r2, #0
	strh r1, [r0, #0x2c]
	strh r2, [r0, #0xe]
	bx lr
	.align 2, 0
_080023D4: .4byte 0x0000FFFE
	thumb_func_end sub_080023C4

	thumb_func_start sub_080023D8
sub_080023D8: @ 0x080023D8
	movs r1, #1
	ldrh r2, [r0, #0x2c]
	orrs r1, r2
	strh r1, [r0, #0x2c]
	bx lr
	.align 2, 0
	thumb_func_end sub_080023D8

	thumb_func_start sub_080023E4
sub_080023E4: @ 0x080023E4
	push {r4, lr}
	movs r4, #4
	ldrsh r3, [r0, r4]
	str r3, [r1]
	movs r1, #6
	ldrsh r0, [r0, r1]
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_080023E4

	thumb_func_start sub_080023F8
sub_080023F8: @ 0x080023F8
	ldrh r3, [r0, #4]
	adds r1, r3, r1
	strh r1, [r0, #4]
	ldrh r1, [r0, #6]
	adds r2, r1, r2
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
	thumb_func_end sub_080023F8

	thumb_func_start sub_08002408
sub_08002408: @ 0x08002408
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
	thumb_func_end sub_08002408

	thumb_func_start sub_08002410
sub_08002410: @ 0x08002410
	push {lr}
	adds r1, r0, #0
	movs r0, #1
	ldrh r2, [r1, #0x2c]
	ands r0, r2
	cmp r0, #0
	beq _08002424
	adds r0, r1, #0
	bl sub_08000FAC
_08002424:
	pop {r0}
	bx r0
	thumb_func_end sub_08002410

	thumb_func_start sub_08002428
sub_08002428: @ 0x08002428
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x18]
	cmp r1, #0
	beq _0800244E
	adds r4, r1, #0
	b _08002448
_08002436:
	ldr r0, [r4, #4]
	ldr r1, [r5, #0x1c]
	adds r0, r0, r1
	ldr r1, [r4]
	ldr r2, [r4, #8]
	movs r3, #0
	bl sub_08000308
	adds r4, #0xc
_08002448:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08002436
_0800244E:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08002428

	thumb_func_start sub_08002454
sub_08002454: @ 0x08002454
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	movs r2, #0
	strh r2, [r4, #4]
	movs r0, #0xa0
	strh r0, [r4, #6]
	str r2, [r4, #8]
	str r2, [r4, #0x18]
	strh r2, [r4, #0x2c]
	strh r5, [r4, #0x20]
	strh r3, [r4, #0x22]
	str r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r4, #0x2e]
	cmp r5, #0
	beq _08002486
	cmp r3, #0
	beq _08002486
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r3, #0
	bl sub_08002198
_08002486:
	ldr r1, _0800248C @ =gUnknown_20325C8
	ldrh r0, [r4, #0x2e]
	b _08002492
	.align 2, 0
_0800248C: .4byte gUnknown_20325C8
_08002490:
	ldr r1, [r1, #0x24]
_08002492:
	ldrh r2, [r1, #0x2e]
	cmp r2, r0
	blo _08002490
	ldr r1, [r1, #0x28]
	ldr r0, [r1, #0x24]
	str r0, [r4, #0x24]
	ldr r0, [r1, #0x24]
	str r4, [r0, #0x28]
	str r1, [r4, #0x28]
	str r4, [r1, #0x24]
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08002454

	thumb_func_start sub_080024AC
sub_080024AC: @ 0x080024AC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	movs r2, #0
	strh r2, [r4, #4]
	movs r0, #0xa0
	strh r0, [r4, #6]
	str r2, [r4, #8]
	str r2, [r4, #0x18]
	strh r2, [r4, #0x2c]
	strh r5, [r4, #0x20]
	strh r3, [r4, #0x22]
	str r1, [r4, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r4, #0x2e]
	cmp r5, #0
	beq _080024DE
	cmp r3, #0
	beq _080024DE
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r3, #0
	bl sub_080021E0
_080024DE:
	ldr r1, _080024E4 @ =gUnknown_20325C8
	ldrh r0, [r4, #0x2e]
	b _080024EA
	.align 2, 0
_080024E4: .4byte gUnknown_20325C8
_080024E8:
	ldr r1, [r1, #0x24]
_080024EA:
	ldrh r2, [r1, #0x2e]
	cmp r2, r0
	blo _080024E8
	ldr r1, [r1, #0x28]
	ldr r0, [r1, #0x24]
	str r0, [r4, #0x24]
	ldr r0, [r1, #0x24]
	str r4, [r0, #0x28]
	str r1, [r4, #0x28]
	str r4, [r1, #0x24]
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_080024AC

	thumb_func_start sub_08002504
sub_08002504: @ 0x08002504
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	mov r7, sp
	str r0, [r7, #0x30]
	str r1, [r7, #0x34]
	str r2, [r7, #0x38]
	str r3, [r7, #0x3c]
	ldr r0, [sp, #0x6c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [r7, #0x40]
	bl sub_0804441C
	str r0, [r7, #0x44]
	ldr r0, [r7, #0x34]
	cmp r0, #0
	beq _08002536
	ldr r0, [r7, #0x30]
	adds r0, #0x34
	ldr r1, [r7, #0x30]
	str r0, [r1]
_08002536:
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_080010F0
	ldr r2, [r7, #0x44]
	adds r2, #4
	ldr r5, [r7, #0x44]
	ldr r0, [r5, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _0800255C @ =_08002560
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08002562
	.align 2, 0
_0800255C: .4byte _08002560
_08002560: @ 0x08002560
	b _080025B4
_08002562:
	str r7, [r2]
	ldr r0, _080025A8 @ =gUnknown_8703E58
	ldr r1, [r7, #0x30]
	str r0, [r1, #0x30]
	adds r0, r1, #0
	ldr r1, [r7, #0x38]
	ldr r2, [r7, #0x3c]
	ldr r3, [sp, #0x68]
	bl sub_080024AC
	ldr r5, [r7, #0x40]
	lsls r0, r5, #0x1c
	lsrs r3, r0, #0x10
	ldr r0, [r7, #0x30]
	ldr r1, [r0, #8]
	ldr r0, [r1]
	ldr r2, _080025AC @ =0x0000FFFF
	cmp r0, r2
	beq _0800259C
	ldr r4, _080025B0 @ =0x00000FFF
_0800258A:
	adds r0, r4, #0
	ldrh r5, [r1, #8]
	ands r0, r5
	orrs r0, r3
	strh r0, [r1, #8]
	adds r1, #0xc
	ldr r0, [r1]
	cmp r0, r2
	bne _0800258A
_0800259C:
	ldr r1, [r7, #0x44]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, [r7, #0x30]
	b _080025F8
	.align 2, 0
_080025A8: .4byte gUnknown_8703E58
_080025AC: .4byte 0x0000FFFF
_080025B0: .4byte 0x00000FFF
_080025B4:
	ldr r2, [r7, #0x44]
	adds r2, #4
	ldr r5, [r7, #0x44]
	ldr r0, [r5, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _080025D4 @ =_080025D8
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080025DA
	.align 2, 0
_080025D4: .4byte _080025D8
_080025D8: @ 0x080025D8
	b _080025F4
_080025DA:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_0800108C
	ldr r1, [r7, #0x44]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_080025F4:
	bl sub_080443CC
_080025F8:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08002504

	thumb_func_start sub_08002608
sub_08002608: @ 0x08002608
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	mov r7, sp
	str r0, [r7, #0x30]
	str r1, [r7, #0x34]
	str r2, [r7, #0x38]
	str r3, [r7, #0x3c]
	bl sub_0804441C
	str r0, [r7, #0x40]
	ldr r0, [r7, #0x34]
	cmp r0, #0
	beq _08002632
	ldr r0, [r7, #0x30]
	adds r0, #0x34
	ldr r1, [r7, #0x30]
	str r0, [r1]
_08002632:
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_080010F0
	ldr r2, [r7, #0x40]
	adds r2, #4
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08002658 @ =_0800265C
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0800265E
	.align 2, 0
_08002658: .4byte _0800265C
_0800265C: @ 0x0800265C
	b _08002684
_0800265E:
	str r7, [r2]
	ldr r0, _08002680 @ =gUnknown_8703E58
	ldr r1, [r7, #0x30]
	str r0, [r1, #0x30]
	adds r0, r1, #0
	ldr r1, [r7, #0x38]
	ldr r2, [r7, #0x3c]
	ldr r3, [sp, #0x64]
	bl sub_080024AC
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, [r7, #0x30]
	b _080026C8
	.align 2, 0
_08002680: .4byte gUnknown_8703E58
_08002684:
	ldr r2, [r7, #0x40]
	adds r2, #4
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _080026A4 @ =sub_080026A8
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080026AA
	.align 2, 0
_080026A4: .4byte _080026A8
_080026A8: @ 0x080026A8
	b _080026C4
_080026AA:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_0800108C
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_080026C4:
	bl sub_080443CC
_080026C8:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08002608

	thumb_func_start sub_080026D8
sub_080026D8: @ 0x080026D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	mov r7, sp
	str r0, [r7, #0x30]
	str r1, [r7, #0x34]
	bl sub_0804441C
	str r0, [r7, #0x38]
	ldr r0, [r7, #0x34]
	cmp r0, #0
	beq _080026FE
	ldr r0, [r7, #0x30]
	adds r0, #0x34
	ldr r1, [r7, #0x30]
	str r0, [r1]
_080026FE:
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_080010F0
	ldr r2, [r7, #0x38]
	adds r2, #4
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08002724 @ =sub_08002728
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0800272A
	.align 2, 0
_08002724: .4byte _08002728
_08002728: @ 0x08002728
	b _08002744
_0800272A:
	str r7, [r2]
	ldr r0, _08002740 @ =gUnknown_8703E58
	ldr r1, [r7, #0x30]
	str r0, [r1, #0x30]
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, [r7, #0x30]
	b _08002788
	.align 2, 0
_08002740: .4byte gUnknown_8703E58
_08002744:
	ldr r2, [r7, #0x38]
	adds r2, #4
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08002764 @ =sub_08002768
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0800276A
	.align 2, 0
_08002764: .4byte _08002768
_08002768: @ 0x08002768
	b _08002784
_0800276A:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_0800108C
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08002784:
	bl sub_080443CC
_08002788:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_080026D8

	thumb_func_start sub_08002798
sub_08002798: @ 0x08002798
	ldr r0, [r0, #8]
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x16
	ands r0, r1
	bx lr
	thumb_func_end sub_08002798

	thumb_func_start sub_080027A4
sub_080027A4: @ 0x080027A4
	ldrh r0, [r0, #0x2e]
	bx lr
	thumb_func_end sub_080027A4

	thumb_func_start sub_080027A8
sub_080027A8: @ 0x080027A8
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r3, #0x24]
	ldr r0, [r3, #0x28]
	str r0, [r2, #0x28]
	ldr r2, [r3, #0x28]
	ldr r0, [r3, #0x24]
	str r0, [r2, #0x24]
	strh r1, [r3, #0x2e]
	ldr r2, _080027C0 @ =gUnknown_20325C8
	b _080027C6
	.align 2, 0
_080027C0: .4byte gUnknown_20325C8
_080027C4:
	ldr r2, [r2, #0x24]
_080027C6:
	ldrh r0, [r2, #0x2e]
	cmp r0, r1
	blo _080027C4
	ldr r2, [r2, #0x28]
	ldr r0, [r2, #0x24]
	str r0, [r3, #0x24]
	ldr r0, [r2, #0x24]
	str r3, [r0, #0x28]
	str r2, [r3, #0x28]
	str r3, [r2, #0x24]
	bx lr
	thumb_func_end sub_080027A8

	thumb_func_start sub_080027DC
sub_080027DC: @ 0x080027DC
	push {r4, r5, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r0, #8]
	ldr r0, [r2]
	ldr r3, _08002808 @ =0x0000FFFF
	cmp r0, r3
	beq _08002800
	ldr r4, _0800280C @ =0x0000F3FF
_080027EE:
	adds r0, r4, #0
	ldrh r5, [r2, #8]
	ands r0, r5
	orrs r0, r1
	strh r0, [r2, #8]
	adds r2, #0xc
	ldr r0, [r2]
	cmp r0, r3
	bne _080027EE
_08002800:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08002808: .4byte 0x0000FFFF
_0800280C: .4byte 0x0000F3FF
	thumb_func_end sub_080027DC

	thumb_func_start sub_08002810
sub_08002810: @ 0x08002810
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	bl sub_08000F10
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, [r5, #8]
	ldr r0, [r1]
	ldr r2, _08002858 @ =0x0000FFFF
	cmp r0, r2
	beq _08002850
	ldr r6, _0800285C @ =0xC1FFFCFF
	movs r5, #0x80
	lsls r5, r5, #2
	lsls r3, r3, #0x19
_08002834:
	ldr r0, [r1]
	ands r0, r6
	orrs r0, r4
	str r0, [r1]
	cmp r4, #0
	beq _08002848
	cmp r4, r5
	beq _08002848
	orrs r0, r3
	str r0, [r1]
_08002848:
	adds r1, #0xc
	ldr r0, [r1]
	cmp r0, r2
	bne _08002834
_08002850:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08002858: .4byte 0x0000FFFF
_0800285C: .4byte 0xC1FFFCFF
	thumb_func_end sub_08002810

	thumb_func_start sub_08002860
sub_08002860: @ 0x08002860
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r3, [r0, #8]
	ldr r0, [r3]
	ldr r1, _080028A0 @ =0x0000FFFF
	cmp r0, r1
	beq _08002898
	ldr r6, _080028A4 @ =0xC1FFFCFF
	movs r5, #0x80
	lsls r5, r5, #2
	lsls r4, r4, #0x19
_0800287C:
	ldr r0, [r3]
	ands r0, r6
	orrs r0, r2
	str r0, [r3]
	cmp r2, #0
	beq _08002890
	cmp r2, r5
	beq _08002890
	orrs r0, r4
	str r0, [r3]
_08002890:
	adds r3, #0xc
	ldr r0, [r3]
	cmp r0, r1
	bne _0800287C
_08002898:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080028A0: .4byte 0x0000FFFF
_080028A4: .4byte 0xC1FFFCFF
	thumb_func_end sub_08002860

	thumb_func_start sub_080028A8
sub_080028A8: @ 0x080028A8
	ldr r0, [r0, #8]
	ldrh r0, [r0, #8]
	lsrs r0, r0, #0xc
	bx lr
	thumb_func_end sub_080028A8

	thumb_func_start sub_080028B0
sub_080028B0: @ 0x080028B0
	push {r4, r5, lr}
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x10
	ldr r2, [r0, #8]
	ldr r0, [r2]
	ldr r3, _080028DC @ =0x0000FFFF
	cmp r0, r3
	beq _080028D4
	ldr r4, _080028E0 @ =0x00000FFF
_080028C2:
	adds r0, r4, #0
	ldrh r5, [r2, #8]
	ands r0, r5
	orrs r0, r1
	strh r0, [r2, #8]
	adds r2, #0xc
	ldr r0, [r2]
	cmp r0, r3
	bne _080028C2
_080028D4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080028DC: .4byte 0x0000FFFF
_080028E0: .4byte 0x00000FFF
	thumb_func_end sub_080028B0

	thumb_func_start sub_080028E4
sub_080028E4: @ 0x080028E4
	adds r2, r0, #0
	ldr r1, [r2, #0x24]
	ldr r0, [r2, #0x28]
	str r0, [r1, #0x28]
	ldr r1, [r2, #0x28]
	ldr r0, [r2, #0x24]
	str r0, [r1, #0x24]
	ldr r0, _0800290C @ =gUnknown_20325C8
	ldr r1, [r0, #0x24]
	adds r3, r0, #0
	cmp r1, #0
	beq _08002918
	ldr r0, _08002910 @ =gUnknown_2032590
	ldr r0, [r0, #0x28]
	ldrh r1, [r0, #0x2e]
	ldr r0, _08002914 @ =0x0000FFFF
	cmp r1, r0
	beq _08002918
	adds r0, r1, #1
	b _0800291C
	.align 2, 0
_0800290C: .4byte gUnknown_20325C8
_08002910: .4byte gUnknown_2032590
_08002914: .4byte 0x0000FFFF
_08002918:
	movs r0, #0x80
	lsls r0, r0, #8
_0800291C:
	strh r0, [r2, #0x2e]
	adds r1, r3, #0
	ldrh r0, [r2, #0x2e]
	b _08002926
_08002924:
	ldr r1, [r1, #0x24]
_08002926:
	ldrh r3, [r1, #0x2e]
	cmp r3, r0
	blo _08002924
	ldr r1, [r1, #0x28]
	ldr r0, [r1, #0x24]
	str r0, [r2, #0x24]
	ldr r0, [r1, #0x24]
	str r2, [r0, #0x28]
	str r1, [r2, #0x28]
	str r2, [r1, #0x24]
	bx lr
	thumb_func_end sub_080028E4

	thumb_func_start sub_0800293C
sub_0800293C: @ 0x0800293C
	adds r2, r0, #0
	ldr r1, [r2, #0x24]
	ldr r0, [r2, #0x28]
	str r0, [r1, #0x28]
	ldr r1, [r2, #0x28]
	ldr r0, [r2, #0x24]
	str r0, [r1, #0x24]
	ldr r0, _08002960 @ =gUnknown_20325C8
	ldr r1, [r0, #0x24]
	adds r3, r0, #0
	cmp r1, #0
	beq _08002964
	ldrh r0, [r1, #0x2e]
	cmp r0, #0
	beq _08002964
	subs r0, #1
	b _08002966
	.align 2, 0
_08002960: .4byte gUnknown_20325C8
_08002964:
	movs r0, #0
_08002966:
	strh r0, [r2, #0x2e]
	adds r1, r3, #0
	ldrh r0, [r2, #0x2e]
	b _08002970
_0800296E:
	ldr r1, [r1, #0x24]
_08002970:
	ldrh r3, [r1, #0x2e]
	cmp r3, r0
	blo _0800296E
	ldr r1, [r1, #0x28]
	ldr r0, [r1, #0x24]
	str r0, [r2, #0x24]
	ldr r0, [r1, #0x24]
	str r2, [r0, #0x28]
	str r1, [r2, #0x28]
	str r2, [r1, #0x24]
	bx lr
	.align 2, 0
	thumb_func_end sub_0800293C

	thumb_func_start sub_08002988
sub_08002988: @ 0x08002988
	adds r2, r0, #0
	ldr r1, _08002990 @ =gUnknown_20325C8
	ldrh r0, [r2, #0x2e]
	b _08002996
	.align 2, 0
_08002990: .4byte gUnknown_20325C8
_08002994:
	ldr r1, [r1, #0x24]
_08002996:
	ldrh r3, [r1, #0x2e]
	cmp r3, r0
	blo _08002994
	ldr r1, [r1, #0x28]
	ldr r0, [r1, #0x24]
	str r0, [r2, #0x24]
	ldr r0, [r1, #0x24]
	str r2, [r0, #0x28]
	str r1, [r2, #0x28]
	str r2, [r1, #0x24]
	bx lr
	thumb_func_end sub_08002988

	thumb_func_start sub_080029AC
sub_080029AC: @ 0x080029AC
	ldr r2, [r0, #0x24]
	ldr r1, [r0, #0x28]
	str r1, [r2, #0x28]
	ldr r1, [r0, #0x28]
	ldr r0, [r0, #0x24]
	str r0, [r1, #0x24]
	bx lr
	.align 2, 0
	thumb_func_end sub_080029AC

	thumb_func_start sub_080029BC
sub_080029BC: @ 0x080029BC
	ldr r2, [r0, #0x24]
	str r2, [r1, #0x24]
	str r1, [r2, #0x28]
	str r0, [r1, #0x28]
	str r1, [r0, #0x24]
	bx lr
	thumb_func_end sub_080029BC

	thumb_func_start sub_080029C8
sub_080029C8: @ 0x080029C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r1, _08002A48 @ =gUnknown_2032610
	movs r2, #0x22
	bl CpuSet
	movs r0, #7
	ldrh r1, [r7]
	ands r1, r0
	mov sl, r1
	bl sub_08004634
	movs r5, #0
	ldr r2, _08002A4C @ =gUnknown_203265C
	adds r2, #0x18
	mov sb, r2
	movs r4, #0xc0
	lsls r4, r4, #8
	mov r8, r4
_080029F8:
	lsls r0, r5, #4
	adds r1, r7, r0
	ldrh r1, [r1, #0xe]
	adds r3, r0, #0
	adds r6, r5, #1
	cmp r1, #0
	beq _08002AAC
	ldr r0, _08002A50 @ =gUnknown_2032654
	lsls r2, r5, #1
	adds r0, r2, r0
	movs r1, #0
	strh r1, [r0]
	mov ip, r2
	cmp r5, #2
	bne _08002A54
	mov r0, sl
	cmp r0, #0
	beq _08002A54
	mov r0, r8
	ldrh r1, [r7, #0x2c]
	ands r0, r1
	lsrs r3, r0, #0xe
	movs r0, #4
	mov r2, sb
	strh r0, [r2, #6]
	adds r0, #0xfc
	strh r0, [r2, #4]
	ldr r1, _08002A4C @ =gUnknown_203265C
	cmp r3, #0
	beq _08002A7A
	adds r4, r1, #0
	adds r4, #0x18
_08002A38:
	ldrh r2, [r4, #4]
	lsls r0, r2, #2
	strh r0, [r4, #4]
	subs r3, #1
	cmp r3, #0
	bne _08002A38
	b _08002A7A
	.align 2, 0
_08002A48: .4byte gUnknown_2032610
_08002A4C: .4byte gUnknown_203265C
_08002A50: .4byte gUnknown_2032654
_08002A54:
	adds r0, r7, r3
	mov r4, r8
	ldrh r0, [r0, #0xc]
	ands r4, r0
	adds r0, r4, #0
	lsrs r3, r0, #0xe
	mov r0, ip
	adds r1, r0, r5
	lsls r1, r1, #2
	ldr r2, _08002B14 @ =gUnknown_203265C
	adds r1, r1, r2
	strh r3, [r1, #6]
	ldr r2, _08002B18 @ =gUnknown_85EA7A4
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #4]
	ldr r1, _08002B14 @ =gUnknown_203265C
	adds r6, r5, #1
_08002A7A:
	mov r4, ip
	adds r0, r4, r5
	lsls r0, r0, #2
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _08002A8C
	bl sub_08005618
_08002A8C:
	ldrh r0, [r4, #4]
	bl sub_08005630
	adds r1, r0, #0
	str r1, [r4]
	mov r2, sp
	movs r0, #0
	strh r0, [r2]
	ldrh r4, [r4, #4]
	lsrs r2, r4, #1
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuSet
_08002AAC:
	adds r5, r6, #0
	cmp r5, #3
	ble _080029F8
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r1, [r7]
	bl sub_0800062C
	movs r5, #0
	ldr r0, _08002B1C @ =0x0000FFFF
	mov ip, r0
	adds r3, r7, #0
	adds r3, #0xc
	ldr r6, _08002B20 @ =0x04000008
_08002AC8:
	lsls r4, r5, #4
	ldrh r0, [r3, #2]
	cmp r0, #0
	beq _08002AFA
	ldrh r2, [r3]
	ldrh r1, [r3, #4]
	orrs r2, r1
	adds r0, r7, #4
	adds r0, r0, r4
	ldr r1, [r0]
	mov r0, ip
	ands r1, r0
	lsrs r1, r1, #0xe
	lsls r1, r1, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r4
	ldr r0, [r0]
	mov r4, ip
	ands r0, r4
	lsrs r0, r0, #0xb
	lsls r0, r0, #8
	orrs r1, r0
	orrs r2, r1
	strh r2, [r6]
_08002AFA:
	adds r3, #0x10
	adds r6, #2
	adds r5, #1
	cmp r5, #3
	ble _08002AC8
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002B14: .4byte gUnknown_203265C
_08002B18: .4byte gUnknown_85EA7A4
_08002B1C: .4byte 0x0000FFFF
_08002B20: .4byte 0x04000008
	thumb_func_end sub_080029C8

	thumb_func_start sub_08002B24
sub_08002B24: @ 0x08002B24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r1, _08002BA8 @ =gUnknown_2032610
	movs r2, #0x22
	bl CpuSet
	movs r0, #7
	mov r1, r8
	ldrh r2, [r1]
	ands r2, r0
	str r2, [sp, #4]
	bl sub_08004634
	movs r4, #0
	ldr r7, _08002BAC @ =gUnknown_203265C
	adds r7, #0x18
	mov sl, r7
_08002B54:
	lsls r0, r4, #4
	mov r2, r8
	adds r1, r2, r0
	ldrh r1, [r1, #0xe]
	adds r3, r0, #0
	adds r7, r4, #1
	str r7, [sp, #8]
	cmp r1, #0
	beq _08002C1A
	ldr r0, _08002BB0 @ =gUnknown_2032654
	lsls r2, r4, #1
	adds r0, r2, r0
	movs r1, #0
	strh r1, [r0]
	adds r5, r2, #0
	cmp r4, #2
	bne _08002BB4
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08002BB4
	mov r1, r8
	ldrh r1, [r1, #0x2c]
	lsrs r3, r1, #0xe
	movs r0, #0x80
	lsls r0, r0, #1
	mov r2, sl
	strh r0, [r2, #4]
	strh r5, [r2, #6]
	ldr r2, _08002BAC @ =gUnknown_203265C
	lsrs r7, r6, #1
	mov sb, r7
	cmp r3, #0
	beq _08002BDA
	adds r1, r2, #0
	adds r1, #0x18
_08002B9A:
	ldrh r7, [r1, #4]
	lsls r0, r7, #2
	strh r0, [r1, #4]
	subs r3, #1
	cmp r3, #0
	bne _08002B9A
	b _08002BDA
	.align 2, 0
_08002BA8: .4byte gUnknown_2032610
_08002BAC: .4byte gUnknown_203265C
_08002BB0: .4byte gUnknown_2032654
_08002BB4:
	mov r1, r8
	adds r0, r1, r3
	ldrh r0, [r0, #0xc]
	lsrs r3, r0, #0xe
	adds r1, r5, r4
	lsls r1, r1, #2
	ldr r2, _08002C80 @ =gUnknown_203265C
	adds r1, r1, r2
	strh r3, [r1, #6]
	ldr r2, _08002C84 @ =gUnknown_85EA7A4
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1, #4]
	ldr r2, _08002C80 @ =gUnknown_203265C
	lsrs r7, r6, #1
	mov sb, r7
	adds r0, r4, #1
	str r0, [sp, #8]
_08002BDA:
	adds r0, r5, r4
	lsls r0, r0, #2
	adds r4, r0, r2
	ldr r0, [r4]
	cmp r0, #0
	beq _08002BEA
	bl sub_08005618
_08002BEA:
	ldrh r0, [r4, #4]
	bl sub_08005630
	adds r3, r0, #0
	str r3, [r4]
	movs r0, #1
	ands r6, r0
	cmp r6, #0
	beq _08002C14
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldrh r4, [r4, #4]
	lsrs r2, r4, #1
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	adds r1, r3, #0
	bl CpuSet
_08002C14:
	mov r1, sb
	lsls r0, r1, #0x10
	lsrs r6, r0, #0x10
_08002C1A:
	ldr r4, [sp, #8]
	cmp r4, #3
	ble _08002B54
	movs r0, #0x80
	lsls r0, r0, #0x13
	mov r2, r8
	ldrh r1, [r2]
	bl sub_0800062C
	movs r5, #0
	ldr r7, _08002C88 @ =0x0000FFFF
	mov r3, r8
	adds r3, #0xc
	ldr r6, _08002C8C @ =0x04000008
_08002C36:
	lsls r4, r5, #4
	ldrh r0, [r3, #2]
	cmp r0, #0
	beq _08002C66
	ldrh r2, [r3]
	ldrh r0, [r3, #4]
	orrs r2, r0
	mov r0, r8
	adds r0, #4
	adds r0, r0, r4
	ldr r1, [r0]
	ands r1, r7
	lsrs r1, r1, #0xe
	lsls r1, r1, #2
	mov r0, r8
	adds r0, #8
	adds r0, r0, r4
	ldr r0, [r0]
	ands r0, r7
	lsrs r0, r0, #0xb
	lsls r0, r0, #8
	orrs r1, r0
	orrs r2, r1
	strh r2, [r6]
_08002C66:
	adds r3, #0x10
	adds r6, #2
	adds r5, #1
	cmp r5, #3
	ble _08002C36
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002C80: .4byte gUnknown_203265C
_08002C84: .4byte gUnknown_85EA7A4
_08002C88: .4byte 0x0000FFFF
_08002C8C: .4byte 0x04000008
	thumb_func_end sub_08002B24

	thumb_func_start sub_08002C90
sub_08002C90: @ 0x08002C90
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsrs r1, r1, #0x1e
	mov r8, r1
	ldr r1, _08002D54 @ =gUnknown_203265C
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r5, r0, r1
	ldr r1, _08002D58 @ =gUnknown_85EA7A4
	mov r2, r8
	lsls r0, r2, #1
	adds r4, r0, r1
	ldrh r3, [r5, #4]
	ldrh r0, [r4]
	cmp r3, r0
	beq _08002D46
	ldr r0, [r5]
	cmp r0, #0
	beq _08002CCA
	bl sub_08005618
_08002CCA:
	ldrh r0, [r4]
	movs r4, #0
	strh r0, [r5, #4]
	mov r1, r8
	strh r1, [r5, #6]
	ldrh r0, [r5, #4]
	bl sub_08005630
	adds r1, r0, #0
	str r1, [r5]
	str r4, [sp]
	ldrh r5, [r5, #4]
	lsrs r2, r5, #2
	movs r0, #0xa0
	lsls r0, r0, #0x13
	orrs r2, r0
	mov r0, sp
	bl CpuSet
	ldr r2, _08002D5C @ =gUnknown_2032610
	lsls r1, r6, #4
	adds r1, r1, r2
	ldr r0, _08002D60 @ =0x00003FFF
	ldrh r3, [r1, #0xc]
	ands r0, r3
	orrs r7, r0
	strh r7, [r1, #0xc]
	mov ip, r2
	movs r5, #0
	ldr r7, _08002D64 @ =0x0000FFFF
	mov r4, ip
	adds r4, #0xc
	ldr r6, _08002D68 @ =0x04000008
_08002D0C:
	lsls r3, r5, #4
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _08002D3C
	ldrh r2, [r4]
	ldrh r0, [r4, #4]
	orrs r2, r0
	mov r0, ip
	adds r0, #4
	adds r0, r0, r3
	ldr r1, [r0]
	ands r1, r7
	lsrs r1, r1, #0xe
	lsls r1, r1, #2
	mov r0, ip
	adds r0, #8
	adds r0, r0, r3
	ldr r0, [r0]
	ands r0, r7
	lsrs r0, r0, #0xb
	lsls r0, r0, #8
	orrs r1, r0
	orrs r2, r1
	strh r2, [r6]
_08002D3C:
	adds r4, #0x10
	adds r6, #2
	adds r5, #1
	cmp r5, #3
	ble _08002D0C
_08002D46:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002D54: .4byte gUnknown_203265C
_08002D58: .4byte gUnknown_85EA7A4
_08002D5C: .4byte gUnknown_2032610
_08002D60: .4byte 0x00003FFF
_08002D64: .4byte 0x0000FFFF
_08002D68: .4byte 0x04000008
	thumb_func_end sub_08002C90

	thumb_func_start sub_08002D6C
sub_08002D6C: @ 0x08002D6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r4, [sp, #0x44]
	ldr r6, [sp, #0x48]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #8]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _08002E6C @ =gUnknown_2032610
	ldr r0, _08002E70 @ =0x0000FFFF
	ldrh r1, [r1]
	cmp r1, r0
	beq _08002E5A
	ldr r0, _08002E74 @ =gUnknown_203265C
	ldr r1, [sp]
	lsls r2, r1, #1
	adds r1, r2, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r5, [r1, #6]
	ldr r1, [r1]
	str r1, [sp, #0xc]
	adds r1, r7, #0
	adds r4, r1, r4
	str r2, [sp, #0x18]
	cmp r1, r4
	bge _08002E4A
	str r4, [sp, #0x14]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
_08002DC4:
	ldr r3, [sp, #4]
	ldr r2, [sp, #8]
	adds r0, r3, r2
	adds r4, r1, #1
	mov sl, r4
	cmp r3, r0
	bge _08002E42
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	movs r5, #0x20
	mov sb, r5
	ldr r7, [sp, #0x10]
	lsls r2, r7, #1
	ldr r1, _08002E78 @ =gUnknown_85EA7AC
	adds r1, r1, r2
	mov r8, r1
	adds r1, r0, #0
	ands r1, r5
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r1
	ldr r4, _08002E7C @ =gUnknown_85EA7B4
	adds r2, r2, r4
	str r2, [sp, #0x1c]
	movs r5, #0x1f
	ands r0, r5
	lsls r0, r0, #6
	str r0, [sp, #0x20]
_08002DFC:
	lsls r0, r3, #0x18
	lsrs r2, r0, #0x18
	ldrh r4, [r6]
	ldr r1, [sp, #0xc]
	adds r0, r2, #0
	mov r7, sb
	ands r0, r7
	cmp r0, #0
	beq _08002E16
	mov r5, r8
	ldrh r5, [r5]
	lsls r0, r5, #1
	adds r1, r1, r0
_08002E16:
	mov r7, ip
	cmp r7, #0
	beq _08002E24
	ldr r5, [sp, #0x1c]
	ldrh r5, [r5]
	lsls r0, r5, #1
	adds r1, r1, r0
_08002E24:
	adds r0, r2, #0
	movs r7, #0x1f
	ands r0, r7
	lsls r0, r0, #1
	ldr r2, [sp, #0x20]
	adds r1, r2, r1
	adds r0, r0, r1
	strh r4, [r0]
	adds r3, #1
	adds r6, #2
	ldr r4, [sp, #4]
	ldr r5, [sp, #8]
	adds r0, r4, r5
	cmp r3, r0
	blt _08002DFC
_08002E42:
	mov r1, sl
	ldr r7, [sp, #0x14]
	cmp r1, r7
	blt _08002DC4
_08002E4A:
	ldr r1, [sp, #0x18]
	ldr r2, [sp]
	adds r0, r1, r2
	lsls r0, r0, #2
	ldr r3, _08002E74 @ =gUnknown_203265C
	adds r0, r0, r3
	movs r1, #1
	strh r1, [r0, #8]
_08002E5A:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002E6C: .4byte gUnknown_2032610
_08002E70: .4byte 0x0000FFFF
_08002E74: .4byte gUnknown_203265C
_08002E78: .4byte gUnknown_85EA7AC
_08002E7C: .4byte gUnknown_85EA7B4
	thumb_func_end sub_08002D6C

	thumb_func_start sub_08002E80
sub_08002E80: @ 0x08002E80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r4, [sp, #0x38]
	ldr r5, [sp, #0x3c]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _08002F60 @ =gUnknown_2032610
	ldr r0, _08002F64 @ =0x0000FFFF
	ldrh r1, [r1]
	cmp r1, r0
	beq _08002F50
	ldr r1, _08002F68 @ =gUnknown_203265C
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0, #6]
	ldr r0, [r0]
	str r0, [sp, #4]
	adds r4, r2, r4
	cmp r2, r4
	bge _08002F50
	str r4, [sp, #0xc]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
_08002ED0:
	ldr r3, [sp]
	mov r1, sl
	adds r0, r3, r1
	adds r4, r2, #1
	mov sb, r4
	cmp r3, r0
	bge _08002F48
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	movs r6, #0x20
	mov r8, r6
	ldr r7, [sp, #8]
	lsls r2, r7, #1
	ldr r1, _08002F6C @ =gUnknown_85EA7AC
	adds r1, r1, r2
	mov ip, r1
	adds r1, r0, #0
	ands r1, r6
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x10]
	ldr r4, _08002F70 @ =gUnknown_85EA7B4
	adds r2, r2, r4
	str r2, [sp, #0x14]
	movs r6, #0x1f
	ands r0, r6
	lsls r4, r0, #6
_08002F06:
	lsls r0, r3, #0x18
	lsrs r2, r0, #0x18
	ldr r1, [sp, #4]
	adds r0, r2, #0
	mov r7, r8
	ands r0, r7
	cmp r0, #0
	beq _08002F1E
	mov r6, ip
	ldrh r6, [r6]
	lsls r0, r6, #1
	adds r1, r1, r0
_08002F1E:
	ldr r7, [sp, #0x10]
	cmp r7, #0
	beq _08002F2C
	ldr r6, [sp, #0x14]
	ldrh r6, [r6]
	lsls r0, r6, #1
	adds r1, r1, r0
_08002F2C:
	adds r0, r2, #0
	movs r7, #0x1f
	ands r0, r7
	lsls r0, r0, #1
	adds r1, r4, r1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5]
	adds r5, #2
	adds r3, #1
	ldr r0, [sp]
	add r0, sl
	cmp r3, r0
	blt _08002F06
_08002F48:
	mov r2, sb
	ldr r0, [sp, #0xc]
	cmp r2, r0
	blt _08002ED0
_08002F50:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002F60: .4byte gUnknown_2032610
_08002F64: .4byte 0x0000FFFF
_08002F68: .4byte gUnknown_203265C
_08002F6C: .4byte gUnknown_85EA7AC
_08002F70: .4byte gUnknown_85EA7B4
	thumb_func_end sub_08002E80

	thumb_func_start sub_08002F74
sub_08002F74: @ 0x08002F74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r4, [sp, #0x40]
	ldr r5, [sp, #0x44]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #4]
	ldr r1, _08003070 @ =gUnknown_2032610
	ldr r0, _08003074 @ =0x0000FFFF
	ldrh r1, [r1]
	cmp r1, r0
	beq _08003060
	ldr r0, _08003078 @ =gUnknown_203265C
	ldr r1, [sp]
	lsls r2, r1, #1
	adds r1, r2, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r3, [r1]
	str r3, [sp, #8]
	ldrh r6, [r1, #6]
	adds r1, r7, #0
	adds r4, r1, r4
	str r2, [sp, #0x14]
	cmp r1, r4
	bge _08003050
	str r4, [sp, #0x10]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
_08002FD2:
	mov r3, sl
	mov r4, sb
	adds r0, r3, r4
	adds r6, r1, #1
	mov r8, r6
	cmp r3, r0
	bge _08003048
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	movs r7, #0x20
	mov ip, r7
	ldr r1, [sp, #0xc]
	lsls r2, r1, #1
	ldr r4, _0800307C @ =gUnknown_85EA7AC
	adds r4, r2, r4
	str r4, [sp, #0x18]
	adds r1, r0, #0
	mov r6, ip
	ands r1, r6
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x1c]
	ldr r7, _08003080 @ =gUnknown_85EA7B4
	adds r5, r2, r7
	movs r1, #0x1f
	ands r0, r1
	lsls r4, r0, #6
_08003008:
	lsls r0, r3, #0x18
	lsrs r2, r0, #0x18
	ldr r1, [sp, #8]
	adds r0, r2, #0
	mov r6, ip
	ands r0, r6
	cmp r0, #0
	beq _08003020
	ldr r7, [sp, #0x18]
	ldrh r7, [r7]
	lsls r0, r7, #1
	adds r1, r1, r0
_08003020:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0800302C
	ldrh r6, [r5]
	lsls r0, r6, #1
	adds r1, r1, r0
_0800302C:
	adds r0, r2, #0
	movs r7, #0x1f
	ands r0, r7
	lsls r0, r0, #1
	adds r1, r4, r1
	adds r0, r0, r1
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r0]
	adds r3, #1
	mov r0, sl
	add r0, sb
	cmp r3, r0
	blt _08003008
_08003048:
	mov r1, r8
	ldr r2, [sp, #0x10]
	cmp r1, r2
	blt _08002FD2
_08003050:
	ldr r3, [sp, #0x14]
	ldr r4, [sp]
	adds r0, r3, r4
	lsls r0, r0, #2
	ldr r6, _08003078 @ =gUnknown_203265C
	adds r0, r0, r6
	movs r1, #1
	strh r1, [r0, #8]
_08003060:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003070: .4byte gUnknown_2032610
_08003074: .4byte 0x0000FFFF
_08003078: .4byte gUnknown_203265C
_0800307C: .4byte gUnknown_85EA7AC
_08003080: .4byte gUnknown_85EA7B4
	thumb_func_end sub_08002F74

	thumb_func_start sub_08003084
sub_08003084: @ 0x08003084
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r4, [sp, #0x48]
	ldr r5, [sp, #0x4c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #8]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r1, _080031BC @ =gUnknown_2032610
	ldr r0, _080031C0 @ =0x0000FFFF
	ldrh r1, [r1]
	cmp r1, r0
	beq _080031AA
	ldr r1, _080031C4 @ =gUnknown_203265C
	ldr r0, [sp]
	lsls r2, r0, #1
	adds r0, r2, r0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	mov sl, r3
	ldrh r6, [r0, #6]
	lsls r0, r5, #0x1c
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	adds r3, r7, #0
	adds r4, r3, r4
	str r2, [sp, #0x18]
	cmp r3, r4
	bge _0800319A
	str r4, [sp, #0x1c]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
_080030E6:
	ldr r5, [sp, #4]
	ldr r4, [sp, #8]
	adds r0, r5, r4
	adds r6, r3, #1
	str r6, [sp, #0x20]
	cmp r5, r0
	bge _08003192
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	ldr r7, [sp, #0x10]
	lsls r2, r7, #1
	ldr r1, _080031C8 @ =gUnknown_85EA7AC
	adds r1, r1, r2
	mov sb, r1
	adds r1, r0, #0
	movs r3, #0x20
	ands r1, r3
	lsls r1, r1, #0x18
	str r1, [sp, #0x14]
	ldr r4, _080031CC @ =gUnknown_85EA7B4
	adds r2, r2, r4
	mov r8, r2
	mov ip, r0
	mov r6, ip
	movs r7, #0x1f
	ands r6, r7
	mov ip, r6
_0800311C:
	lsls r0, r5, #0x18
	lsrs r2, r0, #0x18
	mov r1, sl
	adds r0, r2, #0
	movs r3, #0x20
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq _08003138
	mov r4, sb
	ldrh r4, [r4]
	lsls r0, r4, #1
	adds r1, r1, r0
_08003138:
	ldr r6, [sp, #0x14]
	lsrs r6, r6, #0x18
	str r6, [sp, #0x24]
	cmp r6, #0
	beq _0800314A
	mov r3, r8
	ldrh r3, [r3]
	lsls r0, r3, #1
	adds r1, r1, r0
_0800314A:
	adds r0, r2, #0
	movs r4, #0x1f
	ands r0, r4
	lsls r4, r0, #1
	mov r6, ip
	lsls r3, r6, #6
	adds r0, r3, r1
	adds r0, r4, r0
	ldr r2, _080031D0 @ =0x00000FFF
	ldrh r0, [r0]
	ands r2, r0
	ldr r0, [sp, #0xc]
	orrs r2, r0
	mov r1, sl
	cmp r7, #0
	beq _08003172
	mov r6, sb
	ldrh r6, [r6]
	lsls r0, r6, #1
	adds r1, r1, r0
_08003172:
	ldr r7, [sp, #0x24]
	cmp r7, #0
	beq _08003180
	mov r6, r8
	ldrh r6, [r6]
	lsls r0, r6, #1
	adds r1, r1, r0
_08003180:
	adds r0, r3, r1
	adds r0, r4, r0
	strh r2, [r0]
	adds r5, #1
	ldr r7, [sp, #4]
	ldr r1, [sp, #8]
	adds r0, r7, r1
	cmp r5, r0
	blt _0800311C
_08003192:
	ldr r3, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	cmp r3, r2
	blt _080030E6
_0800319A:
	ldr r3, [sp, #0x18]
	ldr r4, [sp]
	adds r0, r3, r4
	lsls r0, r0, #2
	ldr r6, _080031C4 @ =gUnknown_203265C
	adds r0, r0, r6
	movs r1, #1
	strh r1, [r0, #8]
_080031AA:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080031BC: .4byte gUnknown_2032610
_080031C0: .4byte 0x0000FFFF
_080031C4: .4byte gUnknown_203265C
_080031C8: .4byte gUnknown_85EA7AC
_080031CC: .4byte gUnknown_85EA7B4
_080031D0: .4byte 0x00000FFF
	thumb_func_end sub_08003084

	thumb_func_start sub_080031D4
sub_080031D4: @ 0x080031D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	ldr r1, _0800325C @ =gUnknown_2032610
	ldr r0, _08003260 @ =0x0000FFFF
	ldrh r1, [r1]
	cmp r1, r0
	beq _0800324E
	ldr r1, _08003264 @ =gUnknown_203265C
	lsls r2, r5, #1
	adds r0, r2, r5
	lsls r0, r0, #2
	adds r3, r0, r1
	ldr r6, [r3]
	lsls r0, r4, #0x1c
	lsrs r0, r0, #0x10
	mov ip, r0
	lsls r0, r7, #0x1c
	lsrs r7, r0, #0x10
	movs r4, #0
	mov r8, r2
	ldrh r0, [r3, #4]
	cmp r4, r0
	bge _08003240
	movs r1, #0xf0
	lsls r1, r1, #8
	mov sl, r1
	ldr r0, _08003268 @ =0x00000FFF
	mov sb, r0
	adds r2, r3, #0
	adds r1, r6, #0
_08003222:
	ldrh r3, [r1]
	mov r0, sl
	ands r0, r3
	cmp r7, r0
	bne _08003236
	mov r0, sb
	ands r0, r3
	mov r3, ip
	orrs r0, r3
	strh r0, [r1]
_08003236:
	adds r1, #2
	adds r4, #1
	ldrh r0, [r2, #4]
	cmp r4, r0
	blt _08003222
_08003240:
	mov r1, r8
	adds r0, r1, r5
	lsls r0, r0, #2
	ldr r3, _08003264 @ =gUnknown_203265C
	adds r0, r0, r3
	movs r1, #1
	strh r1, [r0, #8]
_0800324E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800325C: .4byte gUnknown_2032610
_08003260: .4byte 0x0000FFFF
_08003264: .4byte gUnknown_203265C
_08003268: .4byte 0x00000FFF
	thumb_func_end sub_080031D4

	thumb_func_start sub_0800326C
sub_0800326C: @ 0x0800326C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r2, _080032DC @ =gUnknown_2032610
	ldr r4, _080032E0 @ =0x0000FFFF
	ldrh r1, [r2]
	cmp r1, r4
	beq _080032D4
	lsls r1, r0, #4
	adds r1, r1, r2
	ldr r0, _080032E4 @ =0x0000FFFC
	ldrh r5, [r1, #0x10]
	ands r0, r5
	orrs r0, r3
	strh r0, [r1, #0x10]
	mov ip, r2
	movs r5, #0
	adds r7, r4, #0
	mov r4, ip
	adds r4, #0xc
	ldr r6, _080032E8 @ =0x04000008
_0800329A:
	lsls r3, r5, #4
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _080032CA
	ldrh r2, [r4]
	ldrh r0, [r4, #4]
	orrs r2, r0
	mov r0, ip
	adds r0, #4
	adds r0, r0, r3
	ldr r1, [r0]
	ands r1, r7
	lsrs r1, r1, #0xe
	lsls r1, r1, #2
	mov r0, ip
	adds r0, #8
	adds r0, r0, r3
	ldr r0, [r0]
	ands r0, r7
	lsrs r0, r0, #0xb
	lsls r0, r0, #8
	orrs r1, r0
	orrs r2, r1
	strh r2, [r6]
_080032CA:
	adds r4, #0x10
	adds r6, #2
	adds r5, #1
	cmp r5, #3
	ble _0800329A
_080032D4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080032DC: .4byte gUnknown_2032610
_080032E0: .4byte 0x0000FFFF
_080032E4: .4byte 0x0000FFFC
_080032E8: .4byte 0x04000008
	thumb_func_end sub_0800326C

	thumb_func_start sub_080032EC
sub_080032EC: @ 0x080032EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	ldr r4, [sp, #0x88]
	ldr r5, [sp, #0x8c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #8]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0xc]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x10]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #0x14]
	ldr r1, _08003604 @ =gUnknown_203265C
	lsls r0, r0, #1
	ldr r2, [sp]
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldrh r0, [r0, #6]
	str r0, [sp, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	bne _0800333E
	b _0800348E
_0800333E:
	ldr r2, [sp, #8]
	ldr r3, [sp, #0x10]
	adds r1, r3, r2
	cmp r2, r1
	blt _0800334A
	b _0800348E
_0800334A:
	ldr r0, [sp, #0xc]
	adds r0, #1
	asrs r0, r0, #1
	str r0, [sp, #0x48]
	str r1, [sp, #0x54]
	ldr r5, [sp, #0x1c]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
_0800335C:
	movs r6, #0
	str r6, [sp, #0x18]
	adds r7, r2, #1
	str r7, [sp, #0x5c]
	ldr r0, [sp, #0x48]
	cmp r6, r0
	blt _0800336C
	b _08003484
_0800336C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x28]
	ldr r2, [sp, #0x24]
	lsls r1, r2, #1
	ldr r3, _08003608 @ =gUnknown_85EA7AC
	adds r3, r1, r3
	str r3, [sp, #0x2c]
	movs r5, #0x20
	ands r0, r5
	lsls r0, r0, #0x18
	str r0, [sp, #0x30]
	ldr r6, _0800360C @ =gUnknown_85EA7B4
	adds r1, r1, r6
	str r1, [sp, #0x34]
_0800338A:
	ldr r7, [sp, #4]
	ldr r1, [sp, #0xc]
	adds r0, r7, r1
	subs r0, #1
	ldr r2, [sp, #0x18]
	subs r2, r0, r2
	mov sb, r2
	ldr r3, [sp, #0x18]
	adds r0, r7, r3
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r2, r4, #0
	adds r0, r3, #0
	movs r5, #0x20
	ands r0, r5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #0
	beq _080033BA
	ldr r6, [sp, #0x2c]
	ldrh r6, [r6]
	lsls r0, r6, #1
	adds r2, r4, r0
_080033BA:
	ldr r7, [sp, #0x30]
	lsrs r7, r7, #0x18
	mov ip, r7
	cmp r7, #0
	beq _080033CC
	ldr r1, [sp, #0x34]
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r2, r2, r0
_080033CC:
	movs r6, #0x1f
	ldr r1, [sp, #0x28]
	ands r1, r6
	adds r0, r3, #0
	ands r0, r6
	lsls r0, r0, #1
	mov r8, r0
	lsls r5, r1, #6
	adds r0, r5, r2
	add r0, r8
	ldrh r0, [r0]
	str r0, [sp, #0x20]
	mov r2, sb
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	adds r1, r4, #0
	adds r0, r2, #0
	movs r3, #0x20
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #0
	beq _08003404
	ldr r7, [sp, #0x2c]
	ldrh r7, [r7]
	lsls r0, r7, #1
	adds r1, r4, r0
_08003404:
	mov r0, ip
	cmp r0, #0
	beq _08003412
	ldr r3, [sp, #0x34]
	ldrh r3, [r3]
	lsls r0, r3, #1
	adds r1, r1, r0
_08003412:
	adds r0, r2, #0
	ands r0, r6
	lsls r0, r0, #1
	str r0, [sp, #0x60]
	adds r0, r5, r1
	ldr r6, [sp, #0x60]
	adds r0, r6, r0
	movs r7, #0x80
	lsls r7, r7, #3
	adds r3, r7, #0
	ldrh r2, [r0]
	eors r2, r3
	adds r1, r4, #0
	mov r0, sl
	cmp r0, #0
	beq _0800343A
	ldr r1, [sp, #0x2c]
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r1, r4, r0
_0800343A:
	mov r6, ip
	cmp r6, #0
	beq _08003448
	ldr r7, [sp, #0x34]
	ldrh r7, [r7]
	lsls r0, r7, #1
	adds r1, r1, r0
_08003448:
	adds r0, r5, r1
	add r0, r8
	strh r2, [r0]
	ldr r2, [sp, #0x20]
	eors r2, r3
	adds r1, r4, #0
	mov r0, sb
	cmp r0, #0
	beq _08003462
	ldr r1, [sp, #0x2c]
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r1, r4, r0
_08003462:
	mov r3, ip
	cmp r3, #0
	beq _08003470
	ldr r6, [sp, #0x34]
	ldrh r6, [r6]
	lsls r0, r6, #1
	adds r1, r1, r0
_08003470:
	adds r0, r5, r1
	ldr r7, [sp, #0x60]
	adds r0, r7, r0
	strh r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, #1
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x48]
	cmp r0, r1
	blt _0800338A
_08003484:
	ldr r2, [sp, #0x5c]
	ldr r3, [sp, #0x54]
	cmp r2, r3
	bge _0800348E
	b _0800335C
_0800348E:
	movs r0, #0x80
	lsls r0, r0, #4
	ldr r5, [sp, #0x14]
	ands r0, r5
	cmp r0, #0
	bne _0800349C
	b _080035EC
_0800349C:
	ldr r6, [sp, #4]
	str r6, [sp, #0x18]
	ldr r7, [sp, #0xc]
	adds r3, r7, r6
	cmp r6, r3
	blt _080034AA
	b _080035EC
_080034AA:
	ldr r0, [sp, #0x10]
	adds r0, #1
	asrs r0, r0, #1
	str r0, [sp, #0x4c]
	str r3, [sp, #0x50]
_080034B4:
	movs r2, #0
	ldr r0, [sp, #0x18]
	adds r0, #1
	str r0, [sp, #0x58]
	ldr r1, [sp, #0x4c]
	cmp r2, r1
	blt _080034C4
	b _080035E0
_080034C4:
	ldr r3, [sp, #0x1c]
	lsls r1, r3, #0x18
	ldr r5, [sp, #0x18]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x38]
	movs r6, #0x20
	ands r0, r6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x3c]
	lsrs r1, r1, #0x17
	ldr r7, _08003608 @ =gUnknown_85EA7AC
	adds r7, r1, r7
	str r7, [sp, #0x40]
	ldr r0, _0800360C @ =gUnknown_85EA7B4
	adds r1, r1, r0
	str r1, [sp, #0x44]
_080034E8:
	ldr r1, [sp, #8]
	ldr r3, [sp, #0x10]
	adds r0, r1, r3
	subs r0, #1
	subs r0, r0, r2
	mov sb, r0
	adds r0, r1, r2
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r5, r4, #0
	ldr r6, [sp, #0x3c]
	cmp r6, #0
	beq _0800350A
	ldr r7, [sp, #0x40]
	ldrh r7, [r7]
	lsls r0, r7, #1
	adds r5, r4, r0
_0800350A:
	adds r0, r1, #0
	movs r3, #0x20
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #0
	beq _08003522
	ldr r6, [sp, #0x44]
	ldrh r6, [r6]
	lsls r0, r6, #1
	adds r5, r5, r0
_08003522:
	movs r6, #0x1f
	ands r1, r6
	ldr r0, [sp, #0x38]
	ands r0, r6
	lsls r7, r0, #1
	lsls r1, r1, #6
	mov r8, r1
	adds r0, r1, r5
	adds r0, r7, r0
	ldrh r0, [r0]
	str r0, [sp, #0x20]
	mov r1, sb
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	adds r5, r4, #0
	ldr r3, [sp, #0x3c]
	cmp r3, #0
	beq _0800354E
	ldr r5, [sp, #0x40]
	ldrh r5, [r5]
	lsls r0, r5, #1
	adds r5, r4, r0
_0800354E:
	adds r0, r1, #0
	movs r3, #0x20
	ands r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #0
	beq _08003568
	ldr r0, [sp, #0x44]
	ldrh r3, [r0]
	lsls r3, r3, #1
	mov sb, r3
	add r5, sb
_08003568:
	adds r0, r1, #0
	ands r0, r6
	lsls r0, r0, #6
	mov sb, r0
	adds r0, r0, r5
	adds r0, r7, r0
	movs r5, #0x80
	lsls r5, r5, #4
	adds r3, r5, #0
	ldrh r0, [r0]
	eors r0, r3
	str r0, [sp, #0x64]
	adds r1, r4, #0
	ldr r6, [sp, #0x3c]
	cmp r6, #0
	beq _08003590
	ldr r1, [sp, #0x40]
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r1, r4, r0
_08003590:
	mov r5, sl
	cmp r5, #0
	beq _0800359E
	ldr r6, [sp, #0x44]
	ldrh r6, [r6]
	lsls r0, r6, #1
	adds r1, r1, r0
_0800359E:
	mov r5, r8
	adds r0, r5, r1
	adds r0, r7, r0
	add r6, sp, #0x64
	ldrh r6, [r6]
	strh r6, [r0]
	ldr r0, [sp, #0x20]
	eors r0, r3
	mov r8, r0
	adds r1, r4, #0
	ldr r3, [sp, #0x3c]
	cmp r3, #0
	beq _080035C0
	ldr r5, [sp, #0x40]
	ldrh r5, [r5]
	lsls r0, r5, #1
	adds r1, r1, r0
_080035C0:
	mov r6, ip
	cmp r6, #0
	beq _080035CE
	ldr r3, [sp, #0x44]
	ldrh r3, [r3]
	lsls r0, r3, #1
	adds r1, r1, r0
_080035CE:
	mov r5, sb
	adds r0, r5, r1
	adds r0, r7, r0
	mov r6, r8
	strh r6, [r0]
	adds r2, #1
	ldr r7, [sp, #0x4c]
	cmp r2, r7
	blt _080034E8
_080035E0:
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x50]
	cmp r0, r1
	bge _080035EC
	b _080034B4
_080035EC:
	ldr r0, [sp]
	bl sub_08004244
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003604: .4byte gUnknown_203265C
_08003608: .4byte gUnknown_85EA7AC
_0800360C: .4byte gUnknown_85EA7B4
	thumb_func_end sub_080032EC

	thumb_func_start sub_08003610
sub_08003610: @ 0x08003610
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _08003670 @ =gUnknown_203265C
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	adds r3, r3, r4
	ldrb r4, [r3, #6]
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	ldr r3, [r3]
	movs r2, #0x20
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	beq _08003642
	ldr r0, _08003674 @ =gUnknown_85EA7AC
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r3, r3, r0
_08003642:
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _08003656
	ldr r0, _08003678 @ =gUnknown_85EA7B4
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r3, r3, r0
_08003656:
	movs r2, #0x1f
	adds r1, r5, #0
	ands r1, r2
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	lsls r1, r1, #6
	adds r1, r1, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08003670: .4byte gUnknown_203265C
_08003674: .4byte gUnknown_85EA7AC
_08003678: .4byte gUnknown_85EA7B4
	thumb_func_end sub_08003610

	thumb_func_start sub_0800367C
sub_0800367C: @ 0x0800367C
	push {r4, r5, r6, r7, lr}
	ldr r7, _08003708 @ =gUnknown_203265C
	ldr r3, _0800370C @ =0x040000D4
	ldr r0, _08003710 @ =gUnknown_2032610
	adds r6, r0, #0
	adds r6, #8
	movs r5, #0
	movs r4, #3
_0800368C:
	adds r2, r5, r7
	ldr r0, [r2]
	cmp r0, #0
	beq _080036B2
	ldrh r1, [r2, #8]
	cmp r1, #1
	bne _080036B2
	str r0, [r3]
	ldr r0, [r6]
	str r0, [r3, #4]
	ldrh r1, [r2, #4]
	lsrs r0, r1, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r0, #0
	strh r0, [r2, #8]
_080036B2:
	adds r6, #0x10
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bge _0800368C
	ldr r0, _08003714 @ =0x04000010
	bl sub_08000600
	ldr r5, _08003718 @ =gUnknown_3004898
	strh r0, [r5]
	ldr r0, _0800371C @ =0x04000012
	bl sub_08000600
	ldr r4, _08003720 @ =gUnknown_30048A0
	strh r0, [r4]
	ldr r0, _08003724 @ =0x04000014
	bl sub_08000600
	strh r0, [r5, #2]
	ldr r0, _08003728 @ =0x04000016
	bl sub_08000600
	strh r0, [r4, #2]
	ldr r0, _0800372C @ =0x04000018
	bl sub_08000600
	strh r0, [r5, #4]
	ldr r0, _08003730 @ =0x0400001A
	bl sub_08000600
	strh r0, [r4, #4]
	ldr r0, _08003734 @ =0x0400001C
	bl sub_08000600
	strh r0, [r5, #6]
	ldr r0, _08003738 @ =0x0400001E
	bl sub_08000600
	strh r0, [r4, #6]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003708: .4byte gUnknown_203265C
_0800370C: .4byte 0x040000D4
_08003710: .4byte gUnknown_2032610
_08003714: .4byte 0x04000010
_08003718: .4byte gUnknown_3004898
_0800371C: .4byte 0x04000012
_08003720: .4byte gUnknown_30048A0
_08003724: .4byte 0x04000014
_08003728: .4byte 0x04000016
_0800372C: .4byte 0x04000018
_08003730: .4byte 0x0400001A
_08003734: .4byte 0x0400001C
_08003738: .4byte 0x0400001E
	thumb_func_end sub_0800367C

	thumb_func_start sub_0800373C
sub_0800373C: @ 0x0800373C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r0, #5
	ldr r0, _08003854 @ =gUnknown_20264DC
	adds r5, r1, r0
	ldr r6, _08003858 @ =gUnknown_85C8BF4
	movs r0, #0x2c
	mov r4, sb
	muls r4, r0, r4
	adds r4, r4, r6
	ldrh r0, [r4, #0x20]
	movs r1, #0
	strb r0, [r5, #4]
	ldrh r0, [r4, #0x22]
	strb r0, [r5, #5]
	ldrh r0, [r4, #0x24]
	strh r0, [r5]
	ldrb r3, [r5, #4]
	lsls r0, r3, #1
	strh r0, [r5, #0x10]
	ldrb r7, [r5, #5]
	lsls r0, r7, #1
	strh r0, [r5, #0x12]
	ldr r3, [sp]
	lsls r0, r3, #2
	strb r0, [r5, #0x18]
	strh r2, [r5, #0x1a]
	strh r1, [r5, #0x1c]
	ldr r0, [r4, #0x18]
	bl sub_080055B0
	str r0, [r5, #8]
	ldr r1, [r4, #0xc]
	adds r1, r1, r6
	str r1, [r5, #0xc]
	ldr r1, [r4]
	adds r1, r1, r6
	mov r8, r1
	ldr r1, [r4, #4]
	adds r1, r1, r6
	mov sl, r1
	ldr r1, [r4, #8]
	adds r1, r1, r6
	ldr r2, [r4, #0x18]
	bl memcpy
	movs r0, #0
	ldrh r7, [r5]
	cmp r0, r7
	bge _080037D4
	ldr r4, [r5, #8]
_080037B2:
	adds r3, r0, #1
	lsls r0, r0, #3
	adds r1, r0, r4
	movs r2, #3
_080037BA:
	ldrb r7, [r5, #0x18]
	lsls r0, r7, #0xc
	ldrh r7, [r1]
	adds r0, r7, r0
	strh r0, [r1]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _080037BA
	adds r0, r3, #0
	ldrh r1, [r5]
	cmp r0, r1
	blt _080037B2
_080037D4:
	ldrb r1, [r5, #0x18]
	movs r0, #0x2c
	mov r4, sb
	muls r4, r0, r4
	adds r4, r4, r6
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	lsls r3, r0, #5
	mov r0, r8
	movs r2, #0
	bl LoadPalette
	ldr r3, [sp]
	lsls r0, r3, #0x18
	lsrs r6, r0, #0x18
	ldrh r4, [r4, #0x26]
	ldr r3, _0800385C @ =gUnknown_2032610
	ldr r0, _08003860 @ =0x0000FFFF
	ldrh r7, [r3]
	cmp r7, r0
	beq _08003832
	lsls r2, r6, #4
	adds r1, r2, r3
	movs r0, #0x80
	ldrh r1, [r1, #0x10]
	ands r0, r1
	movs r5, #0x20
	cmp r0, #0
	beq _08003812
	movs r5, #0x40
_08003812:
	adds r0, r3, #4
	adds r0, r2, r0
	ldr r1, [r0]
	adds r2, r4, #0
	muls r2, r5, r2
	mov r0, sl
	movs r3, #0
	bl sub_08000308
	ldr r1, _08003864 @ =gUnknown_2032654
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r1, r4
	bge _08003832
	strh r4, [r0]
_08003832:
	ldr r0, _08003868 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08003844
	movs r0, #1
	bl sub_080053D8
_08003844:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003854: .4byte gUnknown_20264DC
_08003858: .4byte gUnknown_85C8BF4
_0800385C: .4byte gUnknown_2032610
_08003860: .4byte 0x0000FFFF
_08003864: .4byte gUnknown_2032654
_08003868: .4byte 0x04000004
	thumb_func_end sub_0800373C

	thumb_func_start sub_0800386C
sub_0800386C: @ 0x0800386C
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r7, #5
	ldr r0, _0800393C @ =gUnknown_20264DC
	adds r4, r1, r0
	ldrh r0, [r5, #0x10]
	movs r1, #0
	strb r0, [r4, #4]
	ldrh r0, [r5, #0x12]
	strb r0, [r4, #5]
	ldrh r0, [r5, #0x14]
	strh r0, [r4]
	ldrh r3, [r5, #0x10]
	lsls r0, r3, #1
	strh r0, [r4, #0x10]
	ldrh r6, [r5, #0x12]
	lsls r0, r6, #1
	strh r0, [r4, #0x12]
	lsls r0, r7, #2
	strb r0, [r4, #0x18]
	strh r2, [r4, #0x1a]
	strh r1, [r4, #0x1c]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0xc]
	ldrh r1, [r4]
	lsls r0, r1, #3
	bl sub_080055B0
	str r0, [r4, #8]
	ldr r1, [r5, #8]
	ldrh r3, [r4]
	lsls r2, r3, #3
	bl memcpy
	movs r0, #0
	ldrh r6, [r4]
	cmp r0, r6
	bge _080038E4
	ldr r1, [r4, #8]
	mov ip, r1
_080038C0:
	adds r3, r0, #1
	lsls r0, r0, #3
	mov r2, ip
	adds r1, r0, r2
	movs r2, #3
_080038CA:
	ldrb r6, [r4, #0x18]
	lsls r0, r6, #0xc
	ldrh r6, [r1]
	adds r0, r6, r0
	strh r0, [r1]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _080038CA
	adds r0, r3, #0
	ldrh r1, [r4]
	cmp r0, r1
	blt _080038C0
_080038E4:
	ldr r0, [r5]
	ldrb r1, [r4, #0x18]
	ldrb r2, [r5, #0x18]
	lsls r3, r2, #5
	movs r2, #0
	bl LoadPalette
	lsls r0, r7, #0x18
	lsrs r6, r0, #0x18
	ldrh r4, [r5, #0x16]
	ldr r7, [r5, #4]
	ldr r3, _08003940 @ =gUnknown_2032610
	ldr r0, _08003944 @ =0x0000FFFF
	ldrh r1, [r3]
	cmp r1, r0
	beq _08003936
	lsls r2, r6, #4
	adds r1, r2, r3
	movs r0, #0x80
	ldrh r1, [r1, #0x10]
	ands r0, r1
	movs r5, #0x20
	cmp r0, #0
	beq _08003916
	movs r5, #0x40
_08003916:
	adds r0, r3, #4
	adds r0, r2, r0
	ldr r1, [r0]
	adds r2, r4, #0
	muls r2, r5, r2
	adds r0, r7, #0
	movs r3, #0
	bl sub_08000308
	ldr r1, _08003948 @ =gUnknown_2032654
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r2, [r0]
	cmp r2, r4
	bge _08003936
	strh r4, [r0]
_08003936:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800393C: .4byte gUnknown_20264DC
_08003940: .4byte gUnknown_2032610
_08003944: .4byte 0x0000FFFF
_08003948: .4byte gUnknown_2032654
	thumb_func_end sub_0800386C

	thumb_func_start sub_0800394C
sub_0800394C: @ 0x0800394C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r1, r0, #5
	ldr r0, _080039AC @ =gUnknown_20264DC
	adds r5, r1, r0
	movs r0, #0x1f
	mov sb, r0
	mov r1, sb
	ands r1, r4
	mov sb, r1
	movs r7, #0xf
	ands r7, r6
	ldrh r2, [r5, #0x1a]
	cmp r2, #1
	bne _08003A72
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrb r2, [r5, #4]
	adds r1, r0, #0
	mov ip, r2
	lsls r3, r6, #0x10
	lsls r4, r7, #6
	str r4, [sp]
	mov r4, sl
	lsls r4, r4, #1
	str r4, [sp, #0xc]
	cmp r0, #0
	bge _080039B0
_0800399C:
	mov r2, ip
	adds r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	blt _0800399C
	adds r0, r1, #0
	b _080039C2
	.align 2, 0
_080039AC: .4byte gUnknown_20264DC
_080039B0:
	adds r1, r2, #0
	bl Mod
	lsls r3, r6, #0x10
	lsls r4, r7, #6
	str r4, [sp]
	mov r1, sl
	lsls r1, r1, #1
	str r1, [sp, #0xc]
_080039C2:
	adds r4, r0, #0
	asrs r0, r3, #0x10
	ldrb r1, [r5, #5]
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r0, #0
	bge _080039DE
_080039D0:
	adds r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	blt _080039D0
	adds r0, r2, #0
	b _080039E2
_080039DE:
	bl Mod
_080039E2:
	movs r6, #0
	lsls r2, r4, #0x10
	ldr r4, [r5, #0xc]
	str r4, [sp, #8]
	ldr r1, [r5, #8]
	str r1, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r7, [sp]
	asrs r4, r2, #0x10
_080039F8:
	ldrb r0, [r5, #4]
	cmp r4, r0
	blt _08003A08
	subs r1, r4, r0
	cmp r1, r0
	blt _08003A08
	subs r1, r1, r0
	b _08003A10
_08003A08:
	adds r1, r4, #0
	cmp r4, r0
	blt _08003A10
	subs r1, r4, r0
_08003A10:
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r2, ip
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [sp, #8]
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r2, [sp, #4]
	adds r3, r2, r0
	mov r0, sb
	adds r1, r0, r6
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0xf
	bhi _08003A3E
	lsls r0, r1, #1
	adds r0, r7, r0
	lsls r0, r0, #1
	b _08003A4E
_08003A3E:
	lsls r0, r1, #1
	movs r1, #0x1f
	ands r0, r1
	adds r0, r7, r0
	lsls r0, r0, #1
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
_08003A4E:
	mov r1, r8
	adds r2, r1, r0
	ldrh r0, [r3]
	strh r0, [r2]
	ldrh r0, [r3, #2]
	strh r0, [r2, #2]
	adds r1, r2, #0
	adds r1, #0x40
	ldrh r0, [r3, #4]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #6]
	strh r0, [r1]
	adds r4, #1
	adds r6, #1
	cmp r6, #0x1f
	ble _080039F8
	b _08003B66
_08003A72:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	adds r3, r0, #0
	cmp r1, #0
	blt _08003A82
	ldrb r2, [r5, #5]
	cmp r1, r2
	blt _08003AD6
_08003A82:
	movs r6, #0
	mov r4, sl
	lsls r4, r4, #1
	str r4, [sp, #0xc]
	lsls r3, r7, #6
_08003A8C:
	mov r0, sb
	adds r1, r0, r6
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0xf
	bhi _08003AA4
	lsls r0, r1, #1
	adds r0, r3, r0
	lsls r0, r0, #1
	mov r1, r8
	adds r2, r1, r0
	b _08003AB8
_08003AA4:
	lsls r0, r1, #1
	movs r1, #0x1f
	ands r0, r1
	adds r0, r3, r0
	lsls r0, r0, #1
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	mov r4, r8
	adds r2, r4, r0
_08003AB8:
	ldrh r0, [r5, #0x1c]
	strh r0, [r2]
	ldrh r0, [r5, #0x1c]
	strh r0, [r2, #2]
	adds r1, r2, #0
	adds r1, #0x40
	ldrh r0, [r5, #0x1c]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r5, #0x1c]
	strh r0, [r1]
	adds r6, #1
	cmp r6, #0x1f
	ble _08003A8C
	b _08003B66
_08003AD6:
	movs r6, #0
	lsls r2, r4, #0x10
	mov r0, sl
	lsls r0, r0, #1
	str r0, [sp, #0xc]
	lsls r4, r7, #6
	asrs r2, r2, #0x10
	mov ip, r2
	lsrs r7, r3, #0x10
_08003AE8:
	mov r2, sb
	adds r1, r2, r6
	movs r0, #0x1f
	ands r1, r0
	cmp r1, #0xf
	bhi _08003AFC
	lsls r0, r1, #1
	adds r0, r4, r0
	lsls r0, r0, #1
	b _08003B0C
_08003AFC:
	lsls r0, r1, #1
	movs r1, #0x1f
	ands r0, r1
	adds r0, r4, r0
	lsls r0, r0, #1
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
_08003B0C:
	mov r1, r8
	adds r2, r1, r0
	mov r0, ip
	adds r1, r0, r6
	cmp r1, #0
	blt _08003B4A
	ldrb r0, [r5, #4]
	cmp r1, r0
	bge _08003B4A
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	muls r0, r7, r0
	adds r0, r0, r1
	ldr r1, [r5, #0xc]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r1, r0, #3
	ldr r0, [r5, #8]
	adds r3, r0, r1
	ldrh r0, [r3]
	strh r0, [r2]
	ldrh r0, [r3, #2]
	strh r0, [r2, #2]
	adds r1, r2, #0
	adds r1, #0x40
	ldrh r0, [r3, #4]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r3, #6]
	b _08003B5E
_08003B4A:
	ldrh r0, [r5, #0x1c]
	strh r0, [r2]
	ldrh r0, [r5, #0x1c]
	strh r0, [r2, #2]
	adds r1, r2, #0
	adds r1, #0x40
	ldrh r0, [r5, #0x1c]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r5, #0x1c]
_08003B5E:
	strh r0, [r1]
	adds r6, #1
	cmp r6, #0x1f
	ble _08003AE8
_08003B66:
	ldr r0, [sp, #0xc]
	add r0, sl
	lsls r0, r0, #2
	ldr r1, _08003B84 @ =gUnknown_203265C
	adds r0, r0, r1
	movs r1, #1
	strh r1, [r0, #8]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003B84: .4byte gUnknown_203265C
	thumb_func_end sub_0800394C

	thumb_func_start sub_08003B88
sub_08003B88: @ 0x08003B88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r1, [sp, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r1, r0, #5
	ldr r0, _08003BF4 @ =gUnknown_20264DC
	adds r4, r1, r0
	movs r3, #0x1f
	mov sl, r7
	mov r0, sl
	ands r0, r3
	mov sl, r0
	movs r1, #0xf
	mov r2, r8
	ands r2, r1
	str r2, [sp, #8]
	ldrh r6, [r4, #0x1a]
	cmp r6, #1
	beq _08003BC6
	b _08003CCA
_08003BC6:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	ldrb r1, [r4, #4]
	adds r3, r0, #0
	adds r2, r1, #0
	mov r6, r8
	lsls r5, r6, #0x10
	mov r6, sl
	lsls r6, r6, #1
	mov sb, r6
	ldr r6, [sp]
	lsls r6, r6, #1
	str r6, [sp, #0x14]
	cmp r0, #0
	bge _08003BF8
_08003BE4:
	adds r0, r2, r3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r0, #0
	blt _08003BE4
	adds r0, r3, #0
	b _08003C0C
	.align 2, 0
_08003BF4: .4byte gUnknown_20264DC
_08003BF8:
	bl Mod
	mov r1, r8
	lsls r5, r1, #0x10
	mov r2, sl
	lsls r2, r2, #1
	mov sb, r2
	ldr r6, [sp]
	lsls r6, r6, #1
	str r6, [sp, #0x14]
_08003C0C:
	adds r7, r0, #0
	asrs r0, r5, #0x10
	ldrb r1, [r4, #5]
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r0, #0
	bge _08003C28
_08003C1A:
	adds r0, r3, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	blt _08003C1A
	adds r0, r2, #0
	b _08003C2C
_08003C28:
	bl Mod
_08003C2C:
	movs r6, #0
	lsls r2, r7, #0x10
	ldr r1, [r4, #0xc]
	str r1, [sp, #0x10]
	ldr r1, [r4, #8]
	str r1, [sp, #0xc]
	lsrs r2, r2, #0x10
	mov ip, r2
	lsls r5, r0, #0x10
	mov r7, sb
	asrs r5, r5, #0x10
	mov sb, r5
	movs r2, #0x1f
	mov r8, r2
	mov r0, r8
	ands r0, r7
	mov r8, r0
_08003C4E:
	mov r1, sb
	adds r0, r1, r6
	ldrb r1, [r4, #5]
	cmp r0, r1
	blt _08003C64
	subs r0, r0, r1
	cmp r0, r1
	blt _08003C64
	subs r0, r5, r1
	subs r0, r0, r1
	b _08003C6C
_08003C64:
	adds r0, r5, #0
	cmp r5, r1
	blt _08003C6C
	subs r0, r5, r1
_08003C6C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r2, [r4, #4]
	muls r0, r2, r0
	add r0, ip
	lsls r0, r0, #1
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, [sp, #0xc]
	adds r2, r1, r0
	ldr r0, [sp, #8]
	adds r1, r0, r6
	movs r0, #0xf
	ands r1, r0
	mov r0, sl
	cmp r0, #0xf
	bhi _08003C9A
	lsls r0, r1, #6
	adds r0, r0, r7
	lsls r0, r0, #1
	b _08003CA6
_08003C9A:
	lsls r0, r1, #6
	add r0, r8
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_08003CA6:
	ldr r1, [sp, #4]
	adds r3, r1, r0
	ldrh r0, [r2]
	strh r0, [r3]
	ldrh r0, [r2, #2]
	strh r0, [r3, #2]
	adds r1, r3, #0
	adds r1, #0x40
	ldrh r0, [r2, #4]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r2, #6]
	strh r0, [r1]
	adds r5, #1
	adds r6, #1
	cmp r6, #0xd
	ble _08003C4E
	b _08003DCA
_08003CCA:
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	adds r2, r0, #0
	cmp r1, #0
	blt _08003CDA
	ldrb r6, [r4, #4]
	cmp r1, r6
	blt _08003D32
_08003CDA:
	movs r6, #0
	mov r0, sl
	lsls r0, r0, #1
	mov sb, r0
	ldr r1, [sp]
	lsls r1, r1, #1
	str r1, [sp, #0x14]
	mov r5, sb
	adds r2, r5, #0
	ands r2, r3
_08003CEE:
	ldr r0, [sp, #8]
	adds r1, r0, r6
	movs r0, #0xf
	ands r1, r0
	mov r0, sl
	cmp r0, #0xf
	bhi _08003D04
	lsls r0, r1, #6
	adds r0, r0, r5
	lsls r0, r0, #1
	b _08003D10
_08003D04:
	lsls r0, r1, #6
	adds r0, r0, r2
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_08003D10:
	ldr r1, [sp, #4]
	adds r3, r1, r0
	ldrh r0, [r4, #0x1c]
	strh r0, [r3]
	ldrh r0, [r4, #0x1c]
	strh r0, [r3, #2]
	adds r1, r3, #0
	adds r1, #0x40
	ldrh r0, [r4, #0x1c]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x1c]
	strh r0, [r1]
	adds r6, #1
	cmp r6, #0xd
	ble _08003CEE
	b _08003DCA
_08003D32:
	movs r6, #0
	mov r0, r8
	lsls r5, r0, #0x10
	ldr r1, [sp]
	lsls r1, r1, #1
	str r1, [sp, #0x14]
	mov r0, sl
	lsls r0, r0, #1
	mov r8, r0
	mov r7, r8
	ands r7, r3
	lsrs r2, r2, #0x10
	mov sb, r2
	asrs r5, r5, #0x10
_08003D4E:
	ldr r2, [sp, #8]
	adds r1, r2, r6
	movs r0, #0xf
	ands r1, r0
	mov r0, sl
	cmp r0, #0xf
	bhi _08003D64
	lsls r0, r1, #6
	add r0, r8
	lsls r0, r0, #1
	b _08003D70
_08003D64:
	lsls r0, r1, #6
	adds r0, r0, r7
	lsls r0, r0, #1
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
_08003D70:
	ldr r1, [sp, #4]
	adds r3, r1, r0
	adds r0, r5, r6
	cmp r0, #0
	blt _08003DAE
	ldrb r2, [r4, #5]
	cmp r0, r2
	bge _08003DAE
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r4, #4]
	muls r0, r1, r0
	add r0, sb
	ldr r1, [r4, #0xc]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r1, r0, #3
	ldr r0, [r4, #8]
	adds r2, r0, r1
	ldrh r0, [r2]
	strh r0, [r3]
	ldrh r0, [r2, #2]
	strh r0, [r3, #2]
	adds r1, r3, #0
	adds r1, #0x40
	ldrh r0, [r2, #4]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r2, #6]
	b _08003DC2
_08003DAE:
	ldrh r0, [r4, #0x1c]
	strh r0, [r3]
	ldrh r0, [r4, #0x1c]
	strh r0, [r3, #2]
	adds r1, r3, #0
	adds r1, #0x40
	ldrh r0, [r4, #0x1c]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r4, #0x1c]
_08003DC2:
	strh r0, [r1]
	adds r6, #1
	cmp r6, #0xd
	ble _08003D4E
_08003DCA:
	ldr r2, [sp, #0x14]
	ldr r6, [sp]
	adds r0, r2, r6
	lsls r0, r0, #2
	ldr r1, _08003DEC @ =gUnknown_203265C
	adds r0, r0, r1
	movs r1, #1
	strh r1, [r0, #8]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003DEC: .4byte gUnknown_203265C
	thumb_func_end sub_08003B88

	thumb_func_start sub_08003DF0
sub_08003DF0: @ 0x08003DF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	lsls r1, r6, #5
	ldr r0, _08003EC8 @ =gUnknown_20264DC
	adds r1, r1, r0
	mov r8, r1
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _08003ECC @ =gUnknown_203265C
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp]
	mov r1, r8
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _08003EB6
	ldrh r0, [r1, #0x1a]
	cmp r0, #0
	bne _08003E68
	lsls r0, r3, #0x10
	cmp r0, #0
	bge _08003E38
	movs r3, #0
_08003E38:
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _08003E40
	movs r4, #0
_08003E40:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	ldrb r2, [r2, #4]
	lsls r1, r2, #4
	subs r1, #0xf0
	cmp r0, r1
	ble _08003E54
	lsls r0, r1, #0x10
	lsrs r3, r0, #0x10
_08003E54:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r5, r8
	ldrb r5, [r5, #5]
	lsls r1, r5, #4
	subs r1, #0xa0
	cmp r0, r1
	ble _08003E68
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
_08003E68:
	ldr r1, _08003ED0 @ =gUnknown_20328C8
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #4
	adds r0, r0, r1
	strh r3, [r0, #2]
	strh r4, [r0, #6]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x10
	lsls r0, r4, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov sb, r2
	lsrs r5, r1, #0x10
	mov sl, r5
	movs r5, #0
	lsls r7, r6, #0x18
	ldr r2, _08003ED4 @ =0xFFFE0000
	adds r4, r0, r2
	adds r6, r1, r2
_08003E94:
	asrs r3, r4, #0x10
	lsrs r0, r7, #0x18
	ldr r1, [sp]
	asrs r2, r6, #0x10
	bl sub_0800394C
	movs r0, #0x80
	lsls r0, r0, #9
	adds r4, r4, r0
	adds r5, #1
	cmp r5, #0xd
	ble _08003E94
	mov r2, sl
	mov r1, r8
	strh r2, [r1, #0x14]
	mov r5, sb
	strh r5, [r1, #0x16]
_08003EB6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003EC8: .4byte gUnknown_20264DC
_08003ECC: .4byte gUnknown_203265C
_08003ED0: .4byte gUnknown_20328C8
_08003ED4: .4byte 0xFFFE0000
	thumb_func_end sub_08003DF0

	thumb_func_start sub_08003ED8
sub_08003ED8: @ 0x08003ED8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	lsls r1, r0, #5
	ldr r0, _08003FB8 @ =gUnknown_20264DC
	adds r7, r1, r0
	ldr r0, [sp]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _08003FBC @ =gUnknown_203265C
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [sp, #0xc]
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _08003F14
	b _08004190
_08003F14:
	ldrh r0, [r7, #0x1a]
	cmp r0, #0
	bne _08003F4E
	lsls r0, r3, #0x10
	cmp r0, #0
	bge _08003F22
	movs r3, #0
_08003F22:
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _08003F2A
	movs r4, #0
_08003F2A:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrb r2, [r7, #4]
	lsls r1, r2, #4
	subs r1, #0xf0
	cmp r0, r1
	ble _08003F3C
	lsls r0, r1, #0x10
	lsrs r3, r0, #0x10
_08003F3C:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrb r5, [r7, #5]
	lsls r1, r5, #4
	subs r1, #0xa0
	cmp r0, r1
	ble _08003F4E
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
_08003F4E:
	ldr r1, _08003FC0 @ =gUnknown_20328C8
	ldr r2, [sp]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r1
	strh r3, [r0, #2]
	strh r4, [r0, #6]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x14
	lsls r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r0, r2, #0x14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	lsrs r5, r1, #0x10
	str r5, [sp, #4]
	asrs r1, r1, #0x10
	ldrh r4, [r7, #0x14]
	movs r5, #0x14
	ldrsh r0, [r7, r5]
	mov r8, r3
	str r2, [sp, #0x10]
	cmp r1, r0
	bne _08003F8C
	ldr r0, [sp, #8]
	ldrh r2, [r7, #0x16]
	cmp r0, r2
	bne _08003F8C
	b _08004190
_08003F8C:
	ldrh r3, [r7, #0x1a]
	cmp r3, #1
	bne _0800402E
	ldrb r4, [r7, #4]
	adds r3, r4, #0
	movs r5, #0x14
	ldrsh r0, [r7, r5]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, #0
	ldr r1, [sp, #8]
	lsls r5, r1, #0x10
	cmp r0, #0
	bge _08003FC4
_08003FAA:
	adds r0, r4, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	blt _08003FAA
	adds r0, r2, #0
	b _08003FCE
	.align 2, 0
_08003FB8: .4byte gUnknown_20264DC
_08003FBC: .4byte gUnknown_203265C
_08003FC0: .4byte gUnknown_20328C8
_08003FC4:
	adds r1, r3, #0
	bl Mod
	ldr r2, [sp, #8]
	lsls r5, r2, #0x10
_08003FCE:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r4, #1
	cmp r1, r0
	bge _08003FDE
	adds r0, r1, #0
	b _08003FE4
_08003FDE:
	subs r0, r2, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08003FE4:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrb r4, [r7, #5]
	adds r2, r4, #0
	asrs r0, r5, #0x10
	movs r3, #0x16
	ldrsh r1, [r7, r3]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #0
	bge _0800400C
_08003FFE:
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	blt _08003FFE
	adds r0, r1, #0
	b _08004012
_0800400C:
	adds r1, r2, #0
	bl Mod
_08004012:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r4, #1
	cmp r1, r0
	bge _08004022
	adds r0, r1, #0
	b _08004028
_08004022:
	subs r0, r2, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_08004028:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08004044
_0800402E:
	subs r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r5, [sp, #8]
	lsls r1, r5, #0x10
	asrs r0, r1, #0x10
	ldrh r2, [r7, #0x16]
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r5, r1, #0
_08004044:
	lsls r0, r6, #0x10
	asrs r4, r0, #0x10
	adds r1, r4, #0
	mov sb, r0
	cmp r4, #0
	bge _08004052
	rsbs r1, r4, #0
_08004052:
	cmp r1, #0x13
	bgt _08004066
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	mov sl, r0
	cmp r1, #0
	bge _08004062
	negs r1, r1
_08004062:
	cmp r1, #0xe
	ble _08004076
_08004066:
	mov r3, r8
	asrs r1, r3, #0x10
	ldr r5, [sp, #0x10]
	asrs r2, r5, #0x10
	ldr r0, [sp]
	bl sub_08003DF0
	b _08004190
_08004076:
	cmp r4, #0
	beq _080040F8
	ldr r1, _080040BC @ =0xFFFE0000
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	cmp r4, #0
	ble _080040C0
	ldrh r0, [r7, #0x14]
	adds r0, #0x11
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r5, #0
	cmp r5, r4
	bge _080040F8
	lsls r4, r2, #0x10
	ldr r2, [sp]
	lsls r2, r2, #0x18
	mov r8, r2
	lsls r6, r1, #0x10
_0800409C:
	asrs r2, r4, #0x10
	mov r3, r8
	lsrs r0, r3, #0x18
	ldr r1, [sp, #0xc]
	asrs r3, r6, #0x10
	bl sub_08003B88
	movs r0, #0x80
	lsls r0, r0, #9
	adds r4, r4, r0
	adds r5, #1
	mov r1, sb
	asrs r0, r1, #0x10
	cmp r5, r0
	blt _0800409C
	b _080040F8
	.align 2, 0
_080040BC: .4byte 0xFFFE0000
_080040C0:
	ldrh r0, [r7, #0x14]
	subs r0, #2
	movs r5, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r4, r0, #1
	ldr r2, [sp]
	lsls r2, r2, #0x18
	mov r8, r2
	lsls r6, r1, #0x10
	b _080040EA
_080040D6:
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	mov r3, r8
	lsrs r0, r3, #0x18
	ldr r1, [sp, #0xc]
	asrs r3, r6, #0x10
	bl sub_08003B88
	subs r4, #1
	adds r5, #1
_080040EA:
	mov r1, sb
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _080040F4
	negs r0, r0
_080040F4:
	cmp r5, r0
	blt _080040D6
_080040F8:
	mov r2, sl
	asrs r4, r2, #0x10
	cmp r4, #0
	beq _08004184
	ldr r3, [sp, #4]
	lsls r0, r3, #0x10
	ldr r5, _08004148 @ =0xFFFE0000
	adds r0, r0, r5
	lsrs r2, r0, #0x10
	cmp r4, #0
	ble _0800414C
	ldrh r0, [r7, #0x16]
	adds r0, #0xc
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r5, #0
	cmp r5, r4
	bge _08004184
	lsls r4, r1, #0x10
	ldr r0, [sp]
	lsls r0, r0, #0x18
	mov r8, r0
	lsls r6, r2, #0x10
_08004126:
	asrs r3, r4, #0x10
	mov r1, r8
	lsrs r0, r1, #0x18
	ldr r1, [sp, #0xc]
	asrs r2, r6, #0x10
	bl sub_0800394C
	movs r2, #0x80
	lsls r2, r2, #9
	adds r4, r4, r2
	adds r5, #1
	mov r3, sl
	asrs r0, r3, #0x10
	cmp r5, r0
	blt _08004126
	b _08004184
	.align 2, 0
_08004148: .4byte 0xFFFE0000
_0800414C:
	ldrh r0, [r7, #0x16]
	subs r0, #2
	movs r5, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r4, r0, #1
	ldr r0, [sp]
	lsls r0, r0, #0x18
	mov r8, r0
	lsls r6, r2, #0x10
	b _08004176
_08004162:
	lsls r3, r4, #0x10
	asrs r3, r3, #0x10
	mov r1, r8
	lsrs r0, r1, #0x18
	ldr r1, [sp, #0xc]
	asrs r2, r6, #0x10
	bl sub_0800394C
	subs r4, #1
	adds r5, #1
_08004176:
	mov r2, sl
	asrs r0, r2, #0x10
	cmp r0, #0
	bge _08004180
	negs r0, r0
_08004180:
	cmp r5, r0
	blt _08004162
_08004184:
	mov r3, sp
	ldrh r3, [r3, #4]
	strh r3, [r7, #0x14]
	mov r5, sp
	ldrh r5, [r5, #8]
	strh r5, [r7, #0x16]
_08004190:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08003ED8

	thumb_func_start sub_080041A0
sub_080041A0: @ 0x080041A0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xb
	ldr r3, _080041B0 @ =gUnknown_20264DC
	adds r0, r0, r3
	strh r1, [r0, #0x1a]
	strh r2, [r0, #0x1c]
	bx lr
	.align 2, 0
_080041B0: .4byte gUnknown_20264DC
	thumb_func_end sub_080041A0

	thumb_func_start sub_080041B4
sub_080041B4: @ 0x080041B4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0800386C
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080041B4

	thumb_func_start sub_080041C4
sub_080041C4: @ 0x080041C4
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080041E4 @ =gUnknown_20264DC
	ldr r2, _080041E8 @ =0x01000040
	mov r0, sp
	bl CpuSet
	ldr r1, _080041EC @ =gUnknown_202655C
	movs r0, #0
	str r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_080041E4: .4byte gUnknown_20264DC
_080041E8: .4byte 0x01000040
_080041EC: .4byte gUnknown_202655C
	thumb_func_end sub_080041C4

	thumb_func_start sub_080041F0
sub_080041F0: @ 0x080041F0
	ldr r1, _08004208 @ =gUnknown_2032610
	ldr r0, _0800420C @ =0x0000FFFF
	strh r0, [r1]
	ldr r1, _08004210 @ =gUnknown_203265C
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x24
_080041FE:
	str r2, [r0]
	subs r0, #0xc
	cmp r0, r1
	bge _080041FE
	bx lr
	.align 2, 0
_08004208: .4byte gUnknown_2032610
_0800420C: .4byte 0x0000FFFF
_08004210: .4byte gUnknown_203265C
	thumb_func_end sub_080041F0

	thumb_func_start sub_08004214
sub_08004214: @ 0x08004214
	ldr r2, _08004224 @ =gUnknown_203265C
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r1, #6]
	bx lr
	.align 2, 0
_08004224: .4byte gUnknown_203265C
	thumb_func_end sub_08004214

	thumb_func_start sub_08004228
sub_08004228: @ 0x08004228
	ldr r0, _08004230 @ =gUnknown_2032610
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08004230: .4byte gUnknown_2032610
	thumb_func_end sub_08004228

	thumb_func_start sub_08004234
sub_08004234: @ 0x08004234
	lsls r0, r0, #0x18
	ldr r1, _08004240 @ =gUnknown_2032654
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08004240: .4byte gUnknown_2032654
	thumb_func_end sub_08004234

	thumb_func_start sub_08004244
sub_08004244: @ 0x08004244
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08004258 @ =gUnknown_203265C
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	movs r0, #1
	strh r0, [r1, #8]
	bx lr
	.align 2, 0
_08004258: .4byte gUnknown_203265C
	thumb_func_end sub_08004244

	thumb_func_start sub_0800425C
sub_0800425C: @ 0x0800425C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08004270 @ =gUnknown_203265C
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r0, [r1]
	bx lr
	.align 2, 0
_08004270: .4byte gUnknown_203265C
	thumb_func_end sub_0800425C

	thumb_func_start sub_08004274
sub_08004274: @ 0x08004274
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r5, #0x80
	lsls r5, r5, #0x13
	adds r0, r5, #0
	bl sub_08000600
	adds r1, r0, #0
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r4
	bics r1, r0
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_0800062C
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08004274

	thumb_func_start sub_080042A0
sub_080042A0: @ 0x080042A0
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r5, #0x80
	lsls r5, r5, #0x13
	adds r0, r5, #0
	bl sub_08000600
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x11
	lsls r1, r4
	orrs r1, r0
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_0800062C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080042A0

	thumb_func_start sub_080042CC
sub_080042CC: @ 0x080042CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, [sp, #0x24]
	ldr r5, [sp, #0x28]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r7, r5, #0x18
	ldr r1, _08004378 @ =gUnknown_2032610
	ldr r0, _0800437C @ =0x0000FFFF
	ldrh r3, [r1]
	cmp r3, r0
	beq _08004366
	cmp r6, #1
	bls _08004366
	lsls r0, r6, #4
	adds r0, r0, r1
	ldrh r0, [r0, #0xc]
	lsrs r3, r0, #0xe
	adds r4, r2, r4
	lsls r0, r6, #1
	mov sb, r0
	cmp r2, r4
	bge _08004358
	adds r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _08004380 @ =gUnknown_203265C
	adds r0, r0, r1
	mov r8, r0
	ldr r1, _08004384 @ =gUnknown_85EA79C
	lsls r0, r3, #1
	adds r0, r0, r1
	mov ip, r0
	adds r5, r4, #0
_0800432C:
	mov r3, ip
	ldrh r3, [r3]
	adds r1, r3, #0
	muls r1, r2, r1
	mov r4, r8
	ldr r0, [r4]
	adds r3, r0, r1
	ldr r1, [sp]
	mov r4, sl
	adds r0, r1, r4
	adds r4, r2, #1
	cmp r1, r0
	bge _08004352
	adds r2, r0, #0
_08004348:
	adds r0, r3, r1
	strb r7, [r0]
	adds r1, #1
	cmp r1, r2
	blt _08004348
_08004352:
	adds r2, r4, #0
	cmp r2, r5
	blt _0800432C
_08004358:
	mov r1, sb
	adds r0, r1, r6
	lsls r0, r0, #2
	ldr r3, _08004380 @ =gUnknown_203265C
	adds r0, r0, r3
	movs r1, #1
	strh r1, [r0, #8]
_08004366:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004378: .4byte gUnknown_2032610
_0800437C: .4byte 0x0000FFFF
_08004380: .4byte gUnknown_203265C
_08004384: .4byte gUnknown_85EA79C
	thumb_func_end sub_080042CC

	thumb_func_start sub_08004388
sub_08004388: @ 0x08004388
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, [sp, #0x1c]
	ldr r5, [sp, #0x20]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _08004418 @ =gUnknown_2032610
	ldr r0, _0800441C @ =0x0000FFFF
	ldrh r3, [r1]
	cmp r3, r0
	beq _0800440A
	cmp r6, #1
	bls _0800440A
	lsls r0, r6, #4
	adds r0, r0, r1
	ldrh r0, [r0, #0xc]
	lsrs r3, r0, #0xe
	adds r4, r2, r4
	cmp r2, r4
	bge _0800440A
	ldr r1, _08004420 @ =gUnknown_203265C
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	mov ip, r0
	ldr r1, _08004424 @ =gUnknown_85EA79C
	lsls r0, r3, #1
	adds r7, r0, r1
	adds r6, r4, #0
_080043DC:
	ldrh r4, [r7]
	adds r1, r4, #0
	muls r1, r2, r1
	mov r3, ip
	ldr r0, [r3]
	adds r3, r0, r1
	mov r1, sb
	mov r4, r8
	adds r0, r1, r4
	adds r4, r2, #1
	cmp r1, r0
	bge _08004404
	adds r2, r0, #0
_080043F6:
	adds r0, r3, r1
	ldrb r0, [r0]
	strb r0, [r5]
	adds r5, #1
	adds r1, #1
	cmp r1, r2
	blt _080043F6
_08004404:
	adds r2, r4, #0
	cmp r2, r6
	blt _080043DC
_0800440A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004418: .4byte gUnknown_2032610
_0800441C: .4byte 0x0000FFFF
_08004420: .4byte gUnknown_203265C
_08004424: .4byte gUnknown_85EA79C
	thumb_func_end sub_08004388

	thumb_func_start sub_08004428
sub_08004428: @ 0x08004428
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r4, [sp, #0x28]
	ldr r6, [sp, #0x2c]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #4]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _080044D4 @ =gUnknown_2032610
	ldr r0, _080044D8 @ =0x0000FFFF
	ldrh r3, [r1]
	cmp r3, r0
	beq _080044C4
	cmp r7, #1
	bls _080044C4
	lsls r0, r7, #4
	adds r0, r0, r1
	ldrh r0, [r0, #0xc]
	lsrs r5, r0, #0xe
	adds r3, r2, #0
	adds r4, r3, r4
	lsls r0, r7, #1
	mov sl, r0
	cmp r3, r4
	bge _080044B6
	adds r0, r0, r7
	lsls r0, r0, #2
	ldr r1, _080044DC @ =gUnknown_203265C
	adds r0, r0, r1
	mov sb, r0
	ldr r1, _080044E0 @ =gUnknown_85EA79C
	lsls r0, r5, #1
	adds r0, r0, r1
	mov r8, r0
	mov ip, r4
_08004486:
	mov r2, r8
	ldrh r2, [r2]
	adds r1, r2, #0
	muls r1, r3, r1
	mov r2, sb
	ldr r0, [r2]
	adds r4, r0, r1
	ldr r2, [sp]
	ldr r1, [sp, #4]
	adds r0, r2, r1
	adds r5, r3, #1
	cmp r2, r0
	bge _080044B0
	adds r3, r0, #0
_080044A2:
	adds r1, r4, r2
	ldrb r0, [r6]
	strb r0, [r1]
	adds r6, #1
	adds r2, #1
	cmp r2, r3
	blt _080044A2
_080044B0:
	adds r3, r5, #0
	cmp r3, ip
	blt _08004486
_080044B6:
	mov r2, sl
	adds r0, r2, r7
	lsls r0, r0, #2
	ldr r3, _080044DC @ =gUnknown_203265C
	adds r0, r0, r3
	movs r1, #1
	strh r1, [r0, #8]
_080044C4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080044D4: .4byte gUnknown_2032610
_080044D8: .4byte 0x0000FFFF
_080044DC: .4byte gUnknown_203265C
_080044E0: .4byte gUnknown_85EA79C
	thumb_func_end sub_08004428

	thumb_func_start sub_080044E4
sub_080044E4: @ 0x080044E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, _08004560 @ =gUnknown_2032690
	ldr r1, _08004564 @ =gUnknown_2032610
	mov ip, r1
	adds r4, r0, #0
	adds r1, r0, #0
	adds r1, #0x1f
_08004506:
	strb r3, [r1]
	subs r1, #1
	cmp r1, r4
	bge _08004506
	mov r8, r0
	mov r1, ip
	ldr r0, _08004568 @ =0x0000FFFF
	ldrh r3, [r1]
	cmp r3, r0
	beq _08004554
	lsls r3, r5, #4
	adds r1, r3, r1
	movs r0, #0x80
	ldrh r1, [r1, #0x10]
	ands r0, r1
	movs r6, #0x20
	cmp r0, #0
	beq _0800452C
	movs r6, #0x40
_0800452C:
	mov r0, ip
	adds r0, #4
	adds r0, r3, r0
	adds r1, r7, #0
	muls r1, r6, r1
	ldr r0, [r0]
	adds r5, r0, r1
	cmp r2, #0
	beq _08004554
	adds r4, r2, #0
_08004540:
	mov r0, r8
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08000308
	adds r5, r5, r6
	subs r4, #1
	cmp r4, #0
	bne _08004540
_08004554:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004560: .4byte gUnknown_2032690
_08004564: .4byte gUnknown_2032610
_08004568: .4byte 0x0000FFFF
	thumb_func_end sub_080044E4

	thumb_func_start sub_0800456C
sub_0800456C: @ 0x0800456C
	push {r4, r5, r6, r7, lr}
	adds r7, r3, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, _080045C4 @ =gUnknown_2032610
	ldr r0, _080045C8 @ =0x0000FFFF
	ldrh r1, [r4]
	cmp r1, r0
	beq _080045BE
	lsls r3, r3, #4
	adds r1, r3, r4
	movs r0, #0x80
	ldrh r1, [r1, #0x10]
	ands r0, r1
	movs r6, #0x20
	cmp r0, #0
	beq _08004598
	movs r6, #0x40
_08004598:
	adds r0, r4, #4
	adds r0, r3, r0
	adds r1, r5, #0
	muls r1, r6, r1
	ldr r0, [r0]
	adds r5, r0, r1
	cmp r2, #0
	beq _080045BE
	adds r4, r2, #0
_080045AA:
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08000308
	adds r5, r5, r6
	subs r4, #1
	cmp r4, #0
	bne _080045AA
_080045BE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080045C4: .4byte gUnknown_2032610
_080045C8: .4byte 0x0000FFFF
	thumb_func_end sub_0800456C

	thumb_func_start sub_080045CC
sub_080045CC: @ 0x080045CC
	push {r4, r5, r6, r7, lr}
	mov ip, r3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r4, _08004628 @ =gUnknown_2032610
	ldr r0, _0800462C @ =0x0000FFFF
	ldrh r1, [r4]
	cmp r1, r0
	beq _08004620
	lsls r2, r6, #4
	adds r1, r2, r4
	movs r0, #0x80
	ldrh r1, [r1, #0x10]
	ands r0, r1
	movs r3, #0x20
	cmp r0, #0
	beq _080045F8
	movs r3, #0x40
_080045F8:
	adds r0, r4, #4
	adds r0, r2, r0
	adds r2, r7, #0
	muls r2, r3, r2
	ldr r1, [r0]
	adds r1, r1, r2
	adds r2, r5, #0
	muls r2, r3, r2
	mov r0, ip
	movs r3, #0
	bl sub_08000308
	ldr r1, _08004630 @ =gUnknown_2032654
	lsls r0, r6, #1
	adds r0, r0, r1
	adds r1, r7, r5
	ldrh r2, [r0]
	cmp r2, r1
	bge _08004620
	strh r1, [r0]
_08004620:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004628: .4byte gUnknown_2032610
_0800462C: .4byte 0x0000FFFF
_08004630: .4byte gUnknown_2032654
	thumb_func_end sub_080045CC

	thumb_func_start sub_08004634
sub_08004634: @ 0x08004634
	push {r4, r5, r6, lr}
	ldr r4, _08004658 @ =gUnknown_203265C
	movs r6, #0
	movs r5, #3
_0800463C:
	ldr r0, [r4]
	cmp r0, #0
	beq _08004648
	bl sub_08005618
	str r6, [r4]
_08004648:
	adds r4, #0xc
	subs r5, #1
	cmp r5, #0
	bge _0800463C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004658: .4byte gUnknown_203265C
	thumb_func_end sub_08004634

	thumb_func_start sub_0800465C
sub_0800465C: @ 0x0800465C
	push {lr}
	bl sub_080029C8
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800465C

	thumb_func_start sub_08004668
sub_08004668: @ 0x08004668
	ldr r1, _08004674 @ =gUnknown_2032654
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	bx lr
	.align 2, 0
_08004674: .4byte gUnknown_2032654
	thumb_func_end sub_08004668

	thumb_func_start sub_08004678
sub_08004678: @ 0x08004678
	push {r4, r5, r6, lr}
	sub sp, #0xc
	movs r0, #0
	str r0, [sp, #8]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _080046B8 @ =0x01006000
	add r0, sp, #8
	bl CpuFastSet
	movs r4, #0
	movs r6, #0
	ldr r5, _080046BC @ =gUnknown_2032654
_08004692:
	strh r6, [r5]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x20
	str r1, [sp]
	str r6, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08002F74
	adds r5, #2
	adds r4, #1
	cmp r4, #3
	ble _08004692
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080046B8: .4byte 0x01006000
_080046BC: .4byte gUnknown_2032654
	thumb_func_end sub_08004678

	thumb_func_start sub_080046C0
sub_080046C0: @ 0x080046C0
	push {lr}
	adds r1, r0, #0
	ldr r0, _080046D0 @ =gUnknown_20326F0
	ldr r0, [r0]
	bl sub_08004738
	pop {r0}
	bx r0
	.align 2, 0
_080046D0: .4byte gUnknown_20326F0
	thumb_func_end sub_080046C0

	thumb_func_start sub_080046D4
sub_080046D4: @ 0x080046D4
	push {lr}
	adds r1, r0, #0
	ldr r2, _080046EC @ =gUnknown_20326F4
	ldr r0, [r2]
	cmp r0, #0
	bne _080046F4
	ldr r0, _080046F0 @ =gUnknown_20326F0
	ldr r0, [r0]
	bl sub_080047A0
	b _080046FA
	.align 2, 0
_080046EC: .4byte gUnknown_20326F4
_080046F0: .4byte gUnknown_20326F0
_080046F4:
	movs r0, #0
	str r0, [r2]
	ldr r0, _08004700 @ =gUnknown_20326B0
_080046FA:
	pop {r1}
	bx r1
	.align 2, 0
_08004700: .4byte gUnknown_20326B0
	thumb_func_end sub_080046D4

	thumb_func_start sub_08004704
sub_08004704: @ 0x08004704
	movs r3, #0
	ldr r1, [r0, #0x1c]
	adds r0, #0x10
	cmp r1, r0
	beq _0800471A
	adds r2, r0, #0
_08004710:
	ldr r0, [r1, #4]
	adds r3, r3, r0
	ldr r1, [r1, #0xc]
	cmp r1, r2
	bne _08004710
_0800471A:
	adds r0, r3, #0
	bx lr
	.align 2, 0
	thumb_func_end sub_08004704

	thumb_func_start sub_08004720
sub_08004720: @ 0x08004720
	push {lr}
	adds r2, r0, #0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08004732
	adds r0, r2, #0
	bl sub_080046C0
_08004732:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08004720

	thumb_func_start sub_08004738
sub_08004738: @ 0x08004738
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	subs r2, #0xc
	ldr r1, [r2]
	ldr r5, [r2, #4]
	adds r3, r2, r5
	cmp r1, #0
	beq _08004762
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _08004762
	ldr r0, [r1, #4]
	adds r0, r0, r5
	str r0, [r1, #4]
	ldr r0, [r4, #0xc]
	cmp r3, r0
	bhs _0800475E
	str r1, [r3]
_0800475E:
	adds r2, r1, #0
	b _08004774
_08004762:
	ldr r1, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x10
	str r2, [r1, #0xc]
	str r0, [r2, #0xc]
	str r2, [r0, #0x10]
	str r1, [r2, #0x10]
	movs r0, #0
	str r0, [r2, #8]
_08004774:
	ldr r4, [r4, #0xc]
	cmp r3, r4
	bhs _08004798
	ldr r0, [r3, #8]
	cmp r0, #0
	bne _08004798
	ldr r1, [r3, #4]
	adds r0, r3, r1
	cmp r0, r4
	bhs _0800478A
	str r2, [r0]
_0800478A:
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r1, [r3, #0x10]
	ldr r0, [r3, #0xc]
	str r0, [r1, #0xc]
	str r1, [r0, #0x10]
_08004798:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08004738

	thumb_func_start sub_080047A0
sub_080047A0: @ 0x080047A0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	cmp r1, #7
	bgt _080047AA
	movs r1, #8
_080047AA:
	adds r4, r1, #0
	adds r4, #0xf
	movs r0, #4
	negs r0, r0
	ands r4, r0
	ldr r2, [r6, #0x1c]
	adds r5, r6, #0
	adds r5, #0x10
	cmp r2, r5
	beq _080047D0
	adds r1, r5, #0
_080047C0:
	ldr r0, [r2, #4]
	cmp r4, r0
	bgt _080047CA
	adds r3, r2, #0
	b _080047D2
_080047CA:
	ldr r2, [r2, #0xc]
	cmp r2, r1
	bne _080047C0
_080047D0:
	movs r3, #0
_080047D2:
	ldr r0, [r3, #4]
	subs r1, r0, r4
	cmp r1, #0x14
	bls _080047FA
	adds r2, r3, r4
	str r3, [r2]
	str r1, [r2, #4]
	movs r0, #0
	str r0, [r2, #8]
	adds r1, r2, r1
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bhs _080047EE
	str r2, [r1]
_080047EE:
	ldr r0, [r6, #0x20]
	str r2, [r0, #0xc]
	str r5, [r2, #0xc]
	str r2, [r5, #0x10]
	str r0, [r2, #0x10]
	str r4, [r3, #4]
_080047FA:
	ldr r1, [r3, #0x10]
	ldr r0, [r3, #0xc]
	str r0, [r1, #0xc]
	str r1, [r0, #0x10]
	movs r0, #1
	str r0, [r3, #8]
	adds r0, r3, #0
	adds r0, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_080047A0

	thumb_func_start sub_08004810
sub_08004810: @ 0x08004810
	adds r3, r0, #0
	cmp r1, #7
	bgt _08004818
	movs r1, #8
_08004818:
	adds r1, #0xf
	movs r0, #4
	negs r0, r0
	ands r1, r0
	ldr r2, [r3, #0x1c]
	adds r0, r3, #0
	adds r0, #0x10
	cmp r2, r0
	beq _0800483C
	adds r3, r0, #0
_0800482C:
	ldr r0, [r2, #4]
	cmp r1, r0
	bgt _08004836
	adds r0, r2, #0
	b _0800483E
_08004836:
	ldr r2, [r2, #0xc]
	cmp r2, r3
	bne _0800482C
_0800483C:
	movs r0, #0
_0800483E:
	cmp r0, #0
	beq _08004844
	movs r0, #1
_08004844:
	bx lr
	.align 2, 0
	thumb_func_end sub_08004810

	thumb_func_start sub_08004848
sub_08004848: @ 0x08004848
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _08004854
	adds r0, #0x24
	str r0, [r4]
_08004854:
	str r3, [r4, #8]
	str r2, [r4, #4]
	adds r0, r2, r3
	str r0, [r4, #0xc]
	movs r0, #0
	str r0, [r2]
	str r3, [r2, #4]
	str r0, [r2, #8]
	adds r0, r4, #0
	adds r0, #0x10
	str r2, [r0, #0xc]
	str r0, [r2, #0xc]
	str r2, [r0, #0x10]
	str r0, [r2, #0x10]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08004848

	thumb_func_start sub_08004878
sub_08004878: @ 0x08004878
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r1, [r2]
	ldr r5, [r2, #4]
	adds r3, r2, r5
	cmp r1, #0
	beq _080048A0
	ldr r0, [r1, #8]
	cmp r0, #0
	bne _080048A0
	ldr r0, [r1, #4]
	adds r0, r0, r5
	str r0, [r1, #4]
	ldr r0, [r4, #0xc]
	cmp r3, r0
	bhs _0800489C
	str r1, [r3]
_0800489C:
	adds r2, r1, #0
	b _080048B2
_080048A0:
	ldr r1, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x10
	str r2, [r1, #0xc]
	str r0, [r2, #0xc]
	str r2, [r0, #0x10]
	str r1, [r2, #0x10]
	movs r0, #0
	str r0, [r2, #8]
_080048B2:
	ldr r4, [r4, #0xc]
	cmp r3, r4
	bhs _080048D6
	ldr r0, [r3, #8]
	cmp r0, #0
	bne _080048D6
	ldr r1, [r3, #4]
	adds r0, r3, r1
	cmp r0, r4
	bhs _080048C8
	str r2, [r0]
_080048C8:
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r1, [r3, #0x10]
	ldr r0, [r3, #0xc]
	str r0, [r1, #0xc]
	str r1, [r0, #0x10]
_080048D6:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08004878

	thumb_func_start sub_080048DC
sub_080048DC: @ 0x080048DC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r4, r2
	str r4, [r3]
	ldr r0, [r4, #4]
	subs r0, r0, r2
	str r0, [r3, #4]
	movs r1, #0
	str r1, [r3, #8]
	adds r1, r3, r0
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bhs _080048FA
	str r3, [r1]
_080048FA:
	ldr r1, [r5, #0x20]
	adds r0, r5, #0
	adds r0, #0x10
	str r3, [r1, #0xc]
	str r0, [r3, #0xc]
	str r3, [r0, #0x10]
	str r1, [r3, #0x10]
	str r2, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_080048DC

	thumb_func_start sub_08004910
sub_08004910: @ 0x08004910
	ldr r2, [r0, #0x1c]
	adds r0, #0x10
	cmp r2, r0
	beq _0800492A
	adds r3, r0, #0
_0800491A:
	ldr r0, [r2, #4]
	cmp r1, r0
	bgt _08004924
	adds r0, r2, #0
	b _0800492C
_08004924:
	ldr r2, [r2, #0xc]
	cmp r2, r3
	bne _0800491A
_0800492A:
	movs r0, #0
_0800492C:
	bx lr
	.align 2, 0
	thumb_func_end sub_08004910

	thumb_func_start sub_08004930
sub_08004930: @ 0x08004930
	ldr r2, [r1, #0x10]
	ldr r0, [r1, #0xc]
	str r0, [r2, #0xc]
	str r2, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_08004930

	thumb_func_start sub_0800493C
sub_0800493C: @ 0x0800493C
	ldr r2, [r0, #0x20]
	adds r0, #0x10
	str r1, [r2, #0xc]
	str r0, [r1, #0xc]
	str r1, [r0, #0x10]
	str r2, [r1, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_0800493C

	thumb_func_start sub_0800494C
sub_0800494C: @ 0x0800494C
	str r2, [r1, #0xc]
	str r3, [r2, #0xc]
	str r2, [r3, #0x10]
	str r1, [r2, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_0800494C

	thumb_func_start sub_08004958
sub_08004958: @ 0x08004958
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	mov r7, sp
	bl sub_0804441C
	str r0, [r7, #0x38]
	ldr r1, _08004998 @ =gUnknown_20326F4
	movs r0, #1
	str r0, [r1]
	movs r0, #0x28
	bl sub_080046D4
	str r0, [r7, #0x34]
	ldr r2, [r7, #0x38]
	adds r2, #4
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _0800499C @ =sub_080049A0
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080049A2
	.align 2, 0
_08004998: .4byte gUnknown_20326F4
_0800499C: .4byte _080049A0
_080049A0: @ 0x080049A0
	b _08004A34
_080049A2:
	str r7, [r2]
	ldr r2, _08004A18 @ =gUnknown_203E000
	movs r3, #0x80
	lsls r3, r3, #6
	ldr r0, [r7, #0x34]
	movs r1, #1
	bl sub_08004848
	ldr r1, _08004A1C @ =gUnknown_20326F0
	str r0, [r1]
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, _08004A20 @ =gUnknown_2036000
	movs r1, #0x80
	lsls r1, r1, #8
	bl sub_08005650
	bl sub_08000510
	bl sub_0800082C
	bl sub_080041F0
	bl sub_08000E5C
	bl sub_08002228
	bl sub_080078BC
	bl sub_08005A64
	bl sub_08005884
	bl sub_08005E7C
	bl sub_08004C10
	ldr r1, _08004A24 @ =gUnknown_20326F8
	movs r0, #0x7b
	str r0, [r1]
	ldr r0, _08004A28 @ =gUnknown_2029430
	movs r1, #0
	str r1, [r0]
	adds r0, r7, #0
	adds r0, #0x18
	strh r1, [r0]
	ldr r1, _08004A2C @ =gUnknown_2029434
	ldr r2, _08004A30 @ =0x01000030
	bl CpuSet
	bl sub_08027CEC
	bl sub_08027A7C
	bl sub_0803743C
	b _08004A7C
	.align 2, 0
_08004A18: .4byte gUnknown_203E000
_08004A1C: .4byte gUnknown_20326F0
_08004A20: .4byte gUnknown_2036000
_08004A24: .4byte gUnknown_20326F8
_08004A28: .4byte gUnknown_2029430
_08004A2C: .4byte gUnknown_2029434
_08004A30: .4byte 0x01000030
_08004A34:
	ldr r2, [r7, #0x38]
	adds r2, #4
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	str r0, [r7, #0x1c]
	movs r0, #0
	str r0, [r7, #0x20]
	adds r1, r7, #0
	adds r1, #0x24
	str r7, [r7, #0x24]
	ldr r0, _08004A54 @ =sub_08004A58
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08004A5A
	.align 2, 0
_08004A54: .4byte _08004A58
_08004A58: @ 0x08004A58
	b _08004A78
_08004A5A:
	adds r0, r7, #0
	adds r0, #0x1c
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _08004A6C
	ldr r0, [r7, #0x34]
	bl sub_080046C0
_08004A6C:
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08004A78:
	bl sub_080443CC
_08004A7C:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08004958

	thumb_func_start sub_08004A8C
sub_08004A8C: @ 0x08004A8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	mov r7, sp
	str r0, [r7, #0x30]
	str r1, [r7, #0x34]
	bl sub_0804441C
	str r0, [r7, #0x3c]
	ldr r1, _08004AD8 @ =gUnknown_2032700
	ldr r0, [r1]
	cmp r0, #0
	beq _08004AB2
	movs r1, #3
	bl sub_08004720
_08004AB2:
	movs r0, #0x28
	bl sub_080046D4
	str r0, [r7, #0x38]
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08004ADC @ =sub_08004AE0
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08004AE2
	.align 2, 0
_08004AD8: .4byte gUnknown_2032700
_08004ADC: .4byte _08004AE0
_08004AE0: @ 0x08004AE0
	b _08004B04
_08004AE2:
	str r7, [r2]
	ldr r0, [r7, #0x38]
	movs r1, #1
	ldr r2, [r7, #0x30]
	ldr r3, [r7, #0x34]
	bl sub_08004848
	ldr r1, _08004B00 @ =gUnknown_2032700
	str r0, [r1]
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	b _08004B4C
	.align 2, 0
_08004B00: .4byte gUnknown_2032700
_08004B04:
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08004B24 @ =sub_08004B28
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08004B2A
	.align 2, 0
_08004B24: .4byte _08004B28
_08004B28: @ 0x08004B28
	b _08004B48
_08004B2A:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _08004B3C
	ldr r0, [r7, #0x38]
	bl sub_080046C0
_08004B3C:
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08004B48:
	bl sub_080443CC
_08004B4C:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08004A8C

	thumb_func_start sub_08004B5C
sub_08004B5C: @ 0x08004B5C
	push {lr}
	bl sub_0800769C
	movs r0, #1
	bl sub_08005728
	bl sub_080058A8
	bl sub_0800227C
	bl sub_08000EBC
	bl sub_08005390
	bl sub_08015FE0
	bl sub_08027C98
	bl sub_08037184
	movs r1, #1
	ldr r0, _08004BC0 @ =gUnknown_2032828
	str r1, [r0]
	bl VBlankIntrWait
	ldr r2, _08004BC4 @ =gUnknown_203282C
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08004BEE
	ldr r0, _08004BC8 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08004BCC @ =0x04000208
	movs r1, #0
	strh r1, [r2]
	cmp r0, #0
	beq _08004BD4
	subs r2, #8
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08004BD0 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	b _08004BE6
	.align 2, 0
_08004BC0: .4byte gUnknown_2032828
_08004BC4: .4byte gUnknown_203282C
_08004BC8: .4byte 0x00007FFF
_08004BCC: .4byte 0x04000208
_08004BD0: .4byte 0x04000004
_08004BD4:
	ldr r2, _08004BF8 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08004BFC @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08004C00 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08004C04 @ =0x0000FFEF
	ands r0, r1
_08004BE6:
	strh r0, [r2]
	ldr r1, _08004C08 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
_08004BEE:
	movs r1, #0
	ldr r0, _08004C0C @ =gUnknown_2032828
	str r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08004BF8: .4byte 0x04000200
_08004BFC: .4byte 0x0000FFFD
_08004C00: .4byte 0x04000004
_08004C04: .4byte 0x0000FFEF
_08004C08: .4byte 0x04000208
_08004C0C: .4byte gUnknown_2032828
	thumb_func_end sub_08004B5C

	thumb_func_start sub_08004C10
sub_08004C10: @ 0x08004C10
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r2, #0
	ldr r0, _08004CA4 @ =gUnknown_2032704
	mov ip, r0
	movs r1, #1
	mov r8, r1
	movs r6, #0x80
	movs r5, #2
	movs r4, #4
	movs r3, #8
_08004C28:
	adds r0, r2, #0
	mov r7, r8
	ands r0, r7
	rsbs r1, r0, #0
	orrs r1, r0
	asrs r1, r1, #0x1f
	ands r1, r6
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _08004C42
	movs r0, #0x40
	orrs r1, r0
_08004C42:
	adds r0, r2, #0
	ands r0, r4
	cmp r0, #0
	beq _08004C52
	movs r0, #0x20
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
_08004C52:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08004C62
	movs r0, #0x10
	orrs r1, r0
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
_08004C62:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08004C6C
	orrs r1, r3
_08004C6C:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08004C76
	orrs r1, r4
_08004C76:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08004C80
	orrs r1, r5
_08004C80:
	adds r0, r2, #0
	ands r0, r6
	cmp r0, #0
	beq _08004C8C
	mov r0, r8
	orrs r1, r0
_08004C8C:
	mov r7, ip
	adds r0, r2, r7
	strb r1, [r0]
	adds r2, #1
	cmp r2, #0xff
	ble _08004C28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004CA4: .4byte gUnknown_2032704
	thumb_func_end sub_08004C10

	thumb_func_start sub_08004CA8
sub_08004CA8: @ 0x08004CA8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r3, r1, #0
	ldr r4, [r3, #0x18]
	cmp r6, r4
	bhi _08004CE8
	ldr r5, [r3, #0x10]
	movs r0, #0x20
	subs r1, r0, r4
	lsls r5, r1
	subs r0, r0, r6
	lsrs r5, r0
	subs r0, r4, r6
	str r0, [r3, #0x18]
	cmp r0, #0
	bne _08004CE4
	movs r1, #0
	ldr r0, [r3, #8]
	movs r2, #3
_08004CCE:
	lsls r1, r1, #8
	ldrb r4, [r0]
	orrs r1, r4
	adds r0, #1
	subs r2, #1
	cmp r2, #0
	bge _08004CCE
	str r1, [r3, #0x10]
	str r0, [r3, #8]
	movs r0, #0x20
	str r0, [r3, #0x18]
_08004CE4:
	adds r4, r5, #0
	b _08004D40
_08004CE8:
	ldr r5, [r3, #0x10]
	movs r0, #0x20
	subs r0, r0, r4
	lsls r5, r0
	lsrs r5, r0
	movs r0, #0
	str r0, [r3, #0x18]
	movs r2, #0
	ldr r1, [r3, #8]
	subs r6, r6, r4
	movs r0, #3
_08004CFE:
	lsls r2, r2, #8
	ldrb r4, [r1]
	orrs r2, r4
	adds r1, #1
	subs r0, #1
	cmp r0, #0
	bge _08004CFE
	str r2, [r3, #0x10]
	str r1, [r3, #8]
	movs r0, #0x20
	adds r4, r5, #0
	lsls r4, r6
	subs r0, r0, r6
	adds r5, r2, #0
	lsrs r5, r0
	str r0, [r3, #0x18]
	cmp r0, #0
	bne _08004D3E
	movs r2, #0
	adds r0, r1, #0
	movs r1, #3
_08004D28:
	lsls r2, r2, #8
	ldrb r6, [r0]
	orrs r2, r6
	adds r0, #1
	subs r1, #1
	cmp r1, #0
	bge _08004D28
	str r2, [r3, #0x10]
	str r0, [r3, #8]
	movs r0, #0x20
	str r0, [r3, #0x18]
_08004D3E:
	orrs r4, r5
_08004D40:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08004CA8

	thumb_func_start sub_08004D48
sub_08004D48: @ 0x08004D48
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, [r4, #0x1c]
	movs r0, #0x20
	subs r2, r0, r6
	adds r3, r2, #0
	adds r1, r2, r6
	cmp r1, #0x20
	bls _08004D64
	ldr r0, [r4, #0x14]
	lsls r0, r2
	str r0, [r4, #0x14]
	str r1, [r4, #0x1c]
	movs r3, #0
_08004D64:
	ldr r1, [r4, #0x14]
	lsls r1, r3
	str r1, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	adds r0, r0, r3
	str r0, [r4, #0x1c]
	cmp r0, #0x20
	bne _08004D94
	adds r5, r1, #0
	ldr r2, [r4, #0xc]
	movs r3, #0
_08004D7A:
	lsls r1, r3, #3
	adds r0, r5, #0
	lsls r0, r1
	lsrs r0, r0, #0x18
	strb r0, [r2]
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	ble _08004D7A
	movs r0, #0
	str r0, [r4, #0x14]
	str r2, [r4, #0xc]
	str r0, [r4, #0x1c]
_08004D94:
	adds r2, r6, #0
	ldr r6, [r4, #0x14]
	ldr r1, [r4, #0xc]
	movs r3, #0
	cmp r3, r2
	bhs _08004DB2
	movs r5, #0x18
_08004DA2:
	adds r0, r6, #0
	lsrs r0, r5
	strb r0, [r1]
	adds r1, #1
	subs r5, #8
	adds r3, #1
	cmp r3, r2
	blo _08004DA2
_08004DB2:
	movs r0, #0
	str r0, [r4, #0x14]
	str r1, [r4, #0xc]
	str r0, [r4, #0x1c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_08004D48

	thumb_func_start sub_08004DC0
sub_08004DC0: @ 0x08004DC0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r7, #0
	bl sub_080051A0
	adds r5, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _08004DE0
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _08004DE0
	ldr r0, [r5]
	b _08004DFE
_08004DE0:
	movs r0, #1
	adds r1, r4, #0
	bl sub_08004CA8
	cmp r0, #0
	bne _08004DF6
	ldr r1, [r5, #4]
	adds r0, r4, #0
	bl sub_08005220
	b _08004DFE
_08004DF6:
	ldr r1, [r5, #8]
	adds r0, r4, #0
	bl sub_08005220
_08004DFE:
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _08004E12
	movs r0, #8
	adds r1, r4, #0
	bl sub_08004CA8
	adds r1, r0, #0
_08004E12:
	adds r6, r1, #0
	movs r0, #8
	mov ip, r0
	ldr r5, [r4, #0x1c]
	adds r0, r5, #0
	adds r0, #8
	adds r3, r5, #0
	adds r7, #1
	mov r8, r7
	cmp r0, #0x20
	bls _08004E72
	movs r1, #0x20
	subs r5, r1, r3
	mov r0, ip
	subs r2, r0, r5
	adds r0, r6, #0
	lsrs r0, r2
	ldr r2, [r4, #0x14]
	lsls r2, r5
	subs r1, r1, r5
	lsls r0, r1
	lsrs r0, r1
	orrs r2, r0
	str r2, [r4, #0x14]
	adds r0, r3, r5
	str r0, [r4, #0x1c]
	cmp r0, #0x20
	bne _08004E6A
	adds r7, r2, #0
	ldr r2, [r4, #0xc]
	movs r3, #0
_08004E50:
	lsls r1, r3, #3
	adds r0, r7, #0
	lsls r0, r1
	lsrs r0, r0, #0x18
	strb r0, [r2]
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	ble _08004E50
	movs r0, #0
	str r0, [r4, #0x14]
	str r2, [r4, #0xc]
	str r0, [r4, #0x1c]
_08004E6A:
	mov r1, ip
	subs r1, r1, r5
	mov ip, r1
	ldr r3, [r4, #0x1c]
_08004E72:
	ldr r2, [r4, #0x14]
	mov r0, ip
	lsls r2, r0
	movs r0, #0x20
	mov r1, ip
	subs r0, r0, r1
	adds r1, r6, #0
	lsls r1, r0
	lsrs r1, r0
	orrs r2, r1
	str r2, [r4, #0x14]
	mov r1, ip
	adds r0, r3, r1
	str r0, [r4, #0x1c]
	cmp r0, #0x20
	bne _08004EB2
	adds r5, r2, #0
	ldr r2, [r4, #0xc]
	movs r3, #0
_08004E98:
	lsls r1, r3, #3
	adds r0, r5, #0
	lsls r0, r1
	lsrs r0, r0, #0x18
	strb r0, [r2]
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	ble _08004E98
	movs r0, #0
	str r0, [r4, #0x14]
	str r2, [r4, #0xc]
	str r0, [r4, #0x1c]
_08004EB2:
	mov r7, r8
	cmp r6, #0x7f
	bls _08004F98
	bl sub_080051A0
	adds r5, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _08004ECE
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _08004ECE
	ldr r0, [r5]
	b _08004EEC
_08004ECE:
	movs r0, #1
	adds r1, r4, #0
	bl sub_08004CA8
	cmp r0, #0
	bne _08004EE4
	ldr r1, [r5, #4]
	adds r0, r4, #0
	bl sub_08005220
	b _08004EEC
_08004EE4:
	ldr r1, [r5, #8]
	adds r0, r4, #0
	bl sub_08005220
_08004EEC:
	adds r1, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _08004F00
	movs r0, #8
	adds r1, r4, #0
	bl sub_08004CA8
	adds r1, r0, #0
_08004F00:
	adds r6, r1, #0
	movs r2, #8
	mov ip, r2
	ldr r5, [r4, #0x1c]
	adds r0, r5, #0
	adds r0, #8
	adds r3, r5, #0
	adds r7, #1
	mov r8, r7
	cmp r0, #0x20
	bls _08004F5E
	movs r1, #0x20
	subs r5, r1, r3
	subs r2, r2, r5
	adds r0, r6, #0
	lsrs r0, r2
	ldr r2, [r4, #0x14]
	lsls r2, r5
	subs r1, r1, r5
	lsls r0, r1
	lsrs r0, r1
	orrs r2, r0
	str r2, [r4, #0x14]
	adds r0, r3, r5
	str r0, [r4, #0x1c]
	cmp r0, #0x20
	bne _08004F56
	adds r7, r2, #0
	ldr r2, [r4, #0xc]
	movs r3, #0
_08004F3C:
	lsls r1, r3, #3
	adds r0, r7, #0
	lsls r0, r1
	lsrs r0, r0, #0x18
	strb r0, [r2]
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	ble _08004F3C
	movs r0, #0
	str r0, [r4, #0x14]
	str r2, [r4, #0xc]
	str r0, [r4, #0x1c]
_08004F56:
	mov r0, ip
	subs r0, r0, r5
	mov ip, r0
	ldr r3, [r4, #0x1c]
_08004F5E:
	ldr r1, [r4, #0x14]
	mov r2, ip
	lsls r1, r2
	movs r0, #0x20
	subs r0, r0, r2
	lsls r6, r0
	lsrs r6, r0
	orrs r1, r6
	str r1, [r4, #0x14]
	adds r0, r3, r2
	str r0, [r4, #0x1c]
	cmp r0, #0x20
	bne _08004F98
	adds r5, r1, #0
	ldr r2, [r4, #0xc]
	movs r3, #0
_08004F7E:
	lsls r1, r3, #3
	adds r0, r5, #0
	lsls r0, r1
	lsrs r0, r0, #0x18
	strb r0, [r2]
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	ble _08004F7E
	movs r0, #0
	str r0, [r4, #0x14]
	str r2, [r4, #0xc]
	str r0, [r4, #0x1c]
_08004F98:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08004DC0

	thumb_func_start sub_08004FA4
sub_08004FA4: @ 0x08004FA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0xc
	adds r1, r5, #0
	bl sub_08004CA8
	adds r4, r0, #0
	movs r0, #4
	adds r1, r5, #0
	bl sub_08004CA8
	mov sb, r0
	movs r0, #1
	add sb, r0
	adds r0, r4, #0
	bl sub_08005194
	str r0, [sp]
	movs r1, #0
	cmp r1, sb
	bhs _0800507E
	mov r8, r1
_08004FDA:
	ldr r2, [sp]
	adds r0, r2, r1
	movs r3, #8
	mov ip, r3
	ldrb r6, [r0]
	ldr r3, [r5, #0x1c]
	adds r0, r3, #0
	adds r0, #8
	adds r4, r3, #0
	adds r1, #1
	mov sl, r1
	cmp r0, #0x20
	bls _0800503E
	movs r7, #0x20
	subs r3, r7, r4
	mov r0, ip
	subs r1, r0, r3
	adds r0, r6, #0
	lsrs r0, r1
	ldr r2, [r5, #0x14]
	lsls r2, r3
	subs r1, r7, r3
	lsls r0, r1
	lsrs r0, r1
	orrs r2, r0
	str r2, [r5, #0x14]
	adds r0, r4, r3
	str r0, [r5, #0x1c]
	cmp r0, #0x20
	bne _08005036
	adds r7, r2, #0
	ldr r2, [r5, #0xc]
	movs r4, #0
_0800501C:
	lsls r1, r4, #3
	adds r0, r7, #0
	lsls r0, r1
	lsrs r0, r0, #0x18
	strb r0, [r2]
	adds r2, #1
	adds r4, #1
	cmp r4, #3
	ble _0800501C
	mov r7, r8
	str r7, [r5, #0x14]
	str r2, [r5, #0xc]
	str r7, [r5, #0x1c]
_08005036:
	mov r0, ip
	subs r0, r0, r3
	mov ip, r0
	ldr r4, [r5, #0x1c]
_0800503E:
	ldr r1, [r5, #0x14]
	mov r2, ip
	lsls r1, r2
	movs r3, #0x20
	subs r0, r3, r2
	lsls r6, r0
	lsrs r6, r0
	orrs r1, r6
	str r1, [r5, #0x14]
	adds r0, r4, r2
	str r0, [r5, #0x1c]
	cmp r0, #0x20
	bne _08005078
	adds r4, r1, #0
	ldr r2, [r5, #0xc]
	movs r3, #0
_0800505E:
	lsls r1, r3, #3
	adds r0, r4, #0
	lsls r0, r1
	lsrs r0, r0, #0x18
	strb r0, [r2]
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	ble _0800505E
	mov r7, r8
	str r7, [r5, #0x14]
	str r2, [r5, #0xc]
	str r7, [r5, #0x1c]
_08005078:
	mov r1, sl
	cmp r1, sb
	blo _08004FDA
_0800507E:
	mov r0, sb
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08004FA4

	thumb_func_start sub_08005090
sub_08005090: @ 0x08005090
	ldr r0, _08005098 @ =gUnknown_20294AC
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08005098: .4byte gUnknown_20294AC
	thumb_func_end sub_08005090

	thumb_func_start sub_0800509C
sub_0800509C: @ 0x0800509C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	mov r8, r1
	ldrb r0, [r6, #2]
	cmp r0, #0x76
	bne _080050C4
	ldrb r0, [r6, #3]
	cmp r0, #0x70
	bne _080050C4
	ldrb r0, [r6, #4]
	cmp r0, #0x6b
	bne _080050C4
	ldrb r0, [r6, #5]
	cmp r0, #0x30
	bne _080050C4
	ldrh r7, [r6]
	adds r6, #2
	b _080050F0
_080050C4:
	ldrb r0, [r6, #4]
	cmp r0, #0x76
	bne _080050E0
	ldrb r0, [r6, #5]
	cmp r0, #0x70
	bne _080050E0
	ldrb r0, [r6, #6]
	cmp r0, #0x6b
	bne _080050E0
	ldrb r0, [r6, #7]
	cmp r0, #0x30
	bne _080050E0
	ldm r6!, {r7}
	b _080050F0
_080050E0:
	ldr r2, _080050EC @ =sub_0802BF18
	mov r0, r8
	adds r1, r6, #0
	bl _call_via_r2
	b _0800510C
	.align 2, 0
_080050EC: .4byte sub_0802BF18
_080050F0:
	ldr r2, _08005118 @ =gUnknown_30051E0
	adds r0, r6, #0
	adds r1, r7, #0
	bl _call_via_r2
	adds r4, r0, #0
	ldr r5, _0800511C @ =gUnknown_3004D0C
	adds r0, r6, #0
	adds r1, r7, #0
	mov r2, r8
	adds r3, r4, #0
	bl _call_via_r5
	adds r0, r4, #0
_0800510C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08005118: .4byte gUnknown_30051E0
_0800511C: .4byte gUnknown_3004D0C
	thumb_func_end sub_0800509C

	thumb_func_start sub_08005120
sub_08005120: @ 0x08005120
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	movs r6, #0
	mov r8, r6
	ldr r4, _08005174 @ =0x3B9ACA00
_08005130:
	adds r0, r5, #0
	adds r1, r4, #0
	bl __divsi3
	adds r2, r0, #0
	cmp r2, #0
	bne _08005144
	mov r0, r8
	cmp r0, #0
	beq _0800514E
_08005144:
	adds r1, r7, r6
	adds r0, r2, #0
	adds r0, #0x30
	strb r0, [r1]
	adds r6, #1
_0800514E:
	cmp r2, #0
	beq _0800515C
	movs r0, #1
	mov r8, r0
	adds r0, r4, #0
	muls r0, r2, r0
	subs r5, r5, r0
_0800515C:
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	adds r4, r0, #0
	cmp r4, #0
	bne _08005130
	cmp r6, #0
	beq _08005178
	adds r0, r7, r6
	strb r4, [r0]
	b _0800517E
	.align 2, 0
_08005174: .4byte 0x3B9ACA00
_08005178:
	movs r0, #0x30
	strb r0, [r7]
	strb r6, [r7, #1]
_0800517E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08005120

	thumb_func_start sub_08005188
sub_08005188: @ 0x08005188
	ldr r0, _08005190 @ =gUnknown_85EB074
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08005190: .4byte gUnknown_85EB074
	thumb_func_end sub_08005188

	thumb_func_start sub_08005194
sub_08005194: @ 0x08005194
	ldr r1, _0800519C @ =gUnknown_85EA818
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0800519C: .4byte gUnknown_85EA818
	thumb_func_end sub_08005194

	thumb_func_start sub_080051A0
sub_080051A0: @ 0x080051A0
	ldr r0, _080051A8 @ =gUnknown_85EB93C
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080051A8: .4byte gUnknown_85EB93C
	thumb_func_end sub_080051A0

	thumb_func_start sub_080051AC
sub_080051AC: @ 0x080051AC
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r2, _08005200 @ =gUnknown_2032808
	str r1, [r2, #4]
	str r1, [r2, #0xc]
	str r4, [r2, #0x14]
	str r4, [r2, #0x1c]
	str r0, [r2]
	str r0, [r2, #8]
	str r4, [r2, #0x10]
	str r4, [r2, #0x18]
	movs r3, #0
	adds r5, r2, #0
	movs r1, #3
_080051C8:
	lsls r3, r3, #8
	ldrb r6, [r0]
	orrs r3, r6
	adds r0, #1
	subs r1, #1
	cmp r1, #0
	bge _080051C8
	str r3, [r2, #0x10]
	str r0, [r2, #8]
	movs r0, #0x20
	str r0, [r2, #0x18]
	movs r0, #0x10
	adds r1, r5, #0
	bl sub_08004CA8
	adds r6, r0, #0
	cmp r4, r6
	bhs _08005210
_080051EC:
	movs r0, #1
	adds r1, r5, #0
	bl sub_08004CA8
	cmp r0, #0
	bne _08005204
	adds r0, r5, #0
	bl sub_08004DC0
	b _0800520A
	.align 2, 0
_08005200: .4byte gUnknown_2032808
_08005204:
	adds r0, r5, #0
	bl sub_08004FA4
_0800520A:
	adds r4, r4, r0
	cmp r4, r6
	blo _080051EC
_08005210:
	adds r0, r5, #0
	bl sub_08004D48
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080051AC

	thumb_func_start sub_08005220
sub_08005220: @ 0x08005220
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _08005236
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _08005236
	ldr r0, [r4]
	b _08005254
_08005236:
	movs r0, #1
	adds r1, r5, #0
	bl sub_08004CA8
	cmp r0, #0
	bne _0800524C
	ldr r1, [r4, #4]
	adds r0, r5, #0
	bl sub_08005220
	b _08005254
_0800524C:
	ldr r1, [r4, #8]
	adds r0, r5, #0
	bl sub_08005220
_08005254:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08005220

	thumb_func_start sub_0800525C
sub_0800525C: @ 0x0800525C
	push {r4, lr}
	ldr r2, _08005294 @ =gUnknown_2032808
	str r1, [r2, #4]
	str r1, [r2, #0xc]
	movs r1, #0
	str r1, [r2, #0x14]
	str r1, [r2, #0x1c]
	str r0, [r2]
	str r0, [r2, #8]
	str r1, [r2, #0x10]
	str r1, [r2, #0x18]
	movs r3, #3
_08005274:
	lsls r1, r1, #8
	ldrb r4, [r0]
	orrs r1, r4
	adds r0, #1
	subs r3, #1
	cmp r3, #0
	bge _08005274
	str r1, [r2, #0x10]
	str r0, [r2, #8]
	movs r0, #0x20
	str r0, [r2, #0x18]
	ldr r0, _08005294 @ =gUnknown_2032808
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08005294: .4byte gUnknown_2032808
	thumb_func_end sub_0800525C

	thumb_func_start sub_08005298
sub_08005298: @ 0x08005298
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r4, r2, #0
	ldr r5, [r4, #0x1c]
	adds r0, r6, r5
	cmp r0, #0x20
	bls _080052EC
	movs r1, #0x20
	subs r5, r1, r5
	subs r2, r6, r5
	adds r0, r7, #0
	lsrs r0, r2
	ldr r2, [r4, #0x14]
	lsls r2, r5
	subs r1, r1, r5
	lsls r0, r1
	lsrs r0, r1
	orrs r2, r0
	str r2, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	adds r0, r0, r5
	str r0, [r4, #0x1c]
	cmp r0, #0x20
	bne _080052EA
	mov ip, r2
	ldr r2, [r4, #0xc]
	movs r3, #0
_080052D0:
	lsls r1, r3, #3
	mov r0, ip
	lsls r0, r1
	lsrs r0, r0, #0x18
	strb r0, [r2]
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	ble _080052D0
	movs r0, #0
	str r0, [r4, #0x14]
	str r2, [r4, #0xc]
	str r0, [r4, #0x1c]
_080052EA:
	subs r6, r6, r5
_080052EC:
	ldr r1, [r4, #0x14]
	lsls r1, r6
	movs r0, #0x20
	subs r0, r0, r6
	lsls r7, r0
	lsrs r7, r0
	orrs r1, r7
	str r1, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	adds r0, r0, r6
	str r0, [r4, #0x1c]
	cmp r0, #0x20
	bne _08005326
	adds r5, r1, #0
	ldr r2, [r4, #0xc]
	movs r3, #0
_0800530C:
	lsls r1, r3, #3
	adds r0, r5, #0
	lsls r0, r1
	lsrs r0, r0, #0x18
	strb r0, [r2]
	adds r2, #1
	adds r3, #1
	cmp r3, #3
	ble _0800530C
	movs r0, #0
	str r0, [r4, #0x14]
	str r2, [r4, #0xc]
	str r0, [r4, #0x1c]
_08005326:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08005298

	thumb_func_start sub_0800532C
sub_0800532C: @ 0x0800532C
	push {r4, lr}
	ldr r4, _0800533C @ =gUnknown_3004D0C
	bl _call_via_r4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800533C: .4byte gUnknown_3004D0C
	thumb_func_end sub_0800532C

	thumb_func_start sub_08005340
sub_08005340: @ 0x08005340
	push {lr}
	ldr r2, _0800534C @ =gUnknown_30051E0
	bl _call_via_r2
	pop {r1}
	bx r1
	.align 2, 0
_0800534C: .4byte gUnknown_30051E0
	thumb_func_end sub_08005340

	thumb_func_start sub_08005350
sub_08005350: @ 0x08005350
	push {lr}
	ldr r2, _0800535C @ =sub_0802BF18
	bl _call_via_r2
	pop {r1}
	bx r1
	.align 2, 0
_0800535C: .4byte sub_0802BF18
	thumb_func_end sub_08005350

	thumb_func_start sub_08005360
sub_08005360: @ 0x08005360
	ldr r1, _08005368 @ =gUnknown_20326F8
	str r0, [r1]
	bx lr
	.align 2, 0
_08005368: .4byte gUnknown_20326F8
	thumb_func_end sub_08005360

	thumb_func_start sub_0800536C
sub_0800536C: @ 0x0800536C
	ldr r3, _08005384 @ =gUnknown_20326F8
	ldr r2, [r3]
	ldr r1, _08005388 @ =0x0000080D
	muls r1, r2, r1
	adds r1, #7
	ldr r2, _0800538C @ =0x0000FFFF
	ands r1, r2
	str r1, [r3]
	muls r0, r1, r0
	asrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08005384: .4byte gUnknown_20326F8
_08005388: .4byte 0x0000080D
_0800538C: .4byte 0x0000FFFF
	thumb_func_end sub_0800536C

	thumb_func_start sub_08005390
sub_08005390: @ 0x08005390
	ldr r2, _080053A4 @ =gUnknown_20326F8
	ldr r1, [r2]
	ldr r0, _080053A8 @ =0x0000080D
	muls r0, r1, r0
	adds r0, #7
	ldr r1, _080053AC @ =0x0000FFFF
	ands r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0
_080053A4: .4byte gUnknown_20326F8
_080053A8: .4byte 0x0000080D
_080053AC: .4byte 0x0000FFFF
	thumb_func_end sub_08005390

	thumb_func_start sub_080053B0
sub_080053B0: @ 0x080053B0
	push {r4, lr}
	bl sub_0800227C
	bl sub_08015FE0
	bl sub_08000EBC
	movs r0, #1
	ldr r4, _080053D4 @ =gUnknown_2032828
	str r0, [r4]
	bl VBlankIntrWait
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080053D4: .4byte gUnknown_2032828
	thumb_func_end sub_080053B0

	thumb_func_start sub_080053D8
sub_080053D8: @ 0x080053D8
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	beq _080053EA
_080053E0:
	bl sub_08004B5C
	subs r4, #1
	cmp r4, #0
	bne _080053E0
_080053EA:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_080053D8

	thumb_func_start sub_080053F0
sub_080053F0: @ 0x080053F0
	ldr r0, _080053F8 @ =0x04000208
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_080053F8: .4byte 0x04000208
	thumb_func_end sub_080053F0

	thumb_func_start sub_080053FC
sub_080053FC: @ 0x080053FC
	ldr r1, _08005404 @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08005404: .4byte 0x04000208
	thumb_func_end sub_080053FC

	thumb_func_start sub_08005408
sub_08005408: @ 0x08005408
	ldr r2, _0800543C @ =gUnknown_203282C
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08005466
	ldr r0, _08005440 @ =0x00007FFF
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08005444 @ =0x04000208
	movs r1, #0
	strh r1, [r2]
	cmp r0, #0
	beq _0800544C
	subs r2, #8
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08005448 @ =0x04000004
	ldrh r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	b _0800545E
	.align 2, 0
_0800543C: .4byte gUnknown_203282C
_08005440: .4byte 0x00007FFF
_08005444: .4byte 0x04000208
_08005448: .4byte 0x04000004
_0800544C:
	ldr r2, _08005468 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0800546C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r2, _08005470 @ =0x04000004
	ldrh r1, [r2]
	ldr r0, _08005474 @ =0x0000FFEF
	ands r0, r1
_0800545E:
	strh r0, [r2]
	ldr r1, _08005478 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
_08005466:
	bx lr
	.align 2, 0
_08005468: .4byte 0x04000200
_0800546C: .4byte 0x0000FFFD
_08005470: .4byte 0x04000004
_08005474: .4byte 0x0000FFEF
_08005478: .4byte 0x04000208
	thumb_func_end sub_08005408

	thumb_func_start sub_0800547C
sub_0800547C: @ 0x0800547C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #2
	beq _080054D4
	ldr r1, _080054A4 @ =gUnknown_85EA7DC
	ldrh r0, [r1]
	cmp r0, #0
	beq _080054DE
	adds r4, r1, #0
_08005490:
	adds r0, r4, #0
	ldrh r2, [r0]
	cmp r2, r3
	beq _080054A8
	adds r1, #4
	adds r4, r0, #4
	ldrh r0, [r1]
	cmp r0, #0
	bne _08005490
	b _080054DE
	.align 2, 0
_080054A4: .4byte gUnknown_85EA7DC
_080054A8:
	ldr r2, _080054C8 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, _080054CC @ =0x04000200
	ldrh r0, [r1]
	bics r0, r3
	strh r0, [r1]
	ldr r1, _080054D0 @ =0x04000004
	ldrh r0, [r1]
	ldrh r4, [r4, #2]
	bics r0, r4
	strh r0, [r1]
	movs r0, #1
	strh r0, [r2]
	b _080054DE
	.align 2, 0
_080054C8: .4byte 0x04000208
_080054CC: .4byte 0x04000200
_080054D0: .4byte 0x04000004
_080054D4:
	ldr r1, _080054E4 @ =gUnknown_203282C
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
_080054DE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080054E4: .4byte gUnknown_203282C
	thumb_func_end sub_0800547C

	thumb_func_start sub_080054E8
sub_080054E8: @ 0x080054E8
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #2
	beq _08005540
	ldr r1, _08005510 @ =gUnknown_85EA7DC
	ldrh r0, [r1]
	cmp r0, #0
	beq _08005548
	adds r5, r1, #0
_080054FC:
	adds r0, r5, #0
	ldrh r2, [r0]
	cmp r2, r4
	beq _08005514
	adds r1, #4
	adds r5, r0, #4
	ldrh r0, [r1]
	cmp r0, #0
	bne _080054FC
	b _08005548
	.align 2, 0
_08005510: .4byte gUnknown_85EA7DC
_08005514:
	ldr r3, _08005534 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08005538 @ =0x04000200
	ldrh r1, [r2]
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0800553C @ =0x04000004
	ldrh r0, [r1]
	ldrh r5, [r5, #2]
	orrs r0, r5
	strh r0, [r1]
	movs r0, #1
	strh r0, [r3]
	b _08005548
	.align 2, 0
_08005534: .4byte 0x04000208
_08005538: .4byte 0x04000200
_0800553C: .4byte 0x04000004
_08005540:
	ldr r1, _08005550 @ =gUnknown_203282C
	ldr r2, _08005554 @ =0x00008010
	adds r0, r2, #0
	strh r0, [r1]
_08005548:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005550: .4byte gUnknown_203282C
_08005554: .4byte 0x00008010
	thumb_func_end sub_080054E8

	thumb_func_start sub_08005558
sub_08005558: @ 0x08005558
	ldr r1, _08005560 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	bx lr
	.align 2, 0
_08005560: .4byte 0x04000208
	thumb_func_end sub_08005558

	thumb_func_start sub_08005564
sub_08005564: @ 0x08005564
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08005578 @ =0x04000200
	strh r0, [r2]
	ldr r0, _0800557C @ =0x04000004
	strh r1, [r0]
	bx lr
	.align 2, 0
_08005578: .4byte 0x04000200
_0800557C: .4byte 0x04000004
	thumb_func_end sub_08005564

	thumb_func_start sub_08005580
sub_08005580: @ 0x08005580
	bx lr
	.align 2, 0
	thumb_func_end sub_08005580

	thumb_func_start sub_08005584
sub_08005584: @ 0x08005584
	push {lr}
	ldr r0, _08005594 @ =gUnknown_2032700
	ldr r0, [r0]
	bl sub_08004704
	pop {r1}
	bx r1
	.align 2, 0
_08005594: .4byte gUnknown_2032700
	thumb_func_end sub_08005584

	thumb_func_start sub_08005598
sub_08005598: @ 0x08005598
	push {lr}
	adds r1, r0, #0
	ldr r0, _080055AC @ =gUnknown_2032700
	ldr r0, [r0]
	cmp r0, #0
	beq _080055A8
	bl sub_08004738
_080055A8:
	pop {r0}
	bx r0
	.align 2, 0
_080055AC: .4byte gUnknown_2032700
	thumb_func_end sub_08005598

	thumb_func_start sub_080055B0
sub_080055B0: @ 0x080055B0
	push {lr}
	adds r1, r0, #0
	ldr r0, _080055C4 @ =gUnknown_2032700
	ldr r0, [r0]
	cmp r0, #0
	beq _080055C8
	bl sub_080047A0
	b _080055CA
	.align 2, 0
_080055C4: .4byte gUnknown_2032700
_080055C8:
	movs r0, #0
_080055CA:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080055B0

	thumb_func_start sub_080055D0
sub_080055D0: @ 0x080055D0
	push {lr}
	bl sub_08004A8C
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080055D0

	thumb_func_start sub_080055DC
sub_080055DC: @ 0x080055DC
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0xe0
	lsls r1, r1, #9
	bl sub_08004A8C
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080055DC

	thumb_func_start sub_080055F0
sub_080055F0: @ 0x080055F0
	push {lr}
	ldr r0, _08005600 @ =gUnknown_20326FC
	ldr r0, [r0]
	bl sub_08004704
	pop {r1}
	bx r1
	.align 2, 0
_08005600: .4byte gUnknown_20326FC
	thumb_func_end sub_080055F0

	thumb_func_start sub_08005604
sub_08005604: @ 0x08005604
	push {lr}
	adds r1, r0, #0
	ldr r0, _08005614 @ =gUnknown_20326FC
	ldr r0, [r0]
	bl sub_08004810
	pop {r1}
	bx r1
	.align 2, 0
_08005614: .4byte gUnknown_20326FC
	thumb_func_end sub_08005604

	thumb_func_start sub_08005618
sub_08005618: @ 0x08005618
	push {lr}
	adds r1, r0, #0
	ldr r0, _0800562C @ =gUnknown_20326FC
	ldr r0, [r0]
	cmp r0, #0
	beq _08005628
	bl sub_08004738
_08005628:
	pop {r0}
	bx r0
	.align 2, 0
_0800562C: .4byte gUnknown_20326FC
	thumb_func_end sub_08005618

	thumb_func_start sub_08005630
sub_08005630: @ 0x08005630
	push {lr}
	adds r1, r0, #0
	ldr r0, _08005644 @ =gUnknown_20326FC
	ldr r0, [r0]
	cmp r0, #0
	beq _08005648
	bl sub_080047A0
	b _0800564A
	.align 2, 0
_08005644: .4byte gUnknown_20326FC
_08005648:
	movs r0, #0
_0800564A:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08005630

	thumb_func_start sub_08005650
sub_08005650: @ 0x08005650
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	mov r7, sp
	str r0, [r7, #0x30]
	str r1, [r7, #0x34]
	bl sub_0804441C
	str r0, [r7, #0x3c]
	movs r0, #0x28
	bl sub_080046D4
	str r0, [r7, #0x38]
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08005690 @ =sub_08005694
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08005696
	.align 2, 0
_08005690: .4byte _08005694
_08005694: @ 0x08005694
	b _080056B8
_08005696:
	str r7, [r2]
	ldr r0, [r7, #0x38]
	movs r1, #1
	ldr r2, [r7, #0x30]
	ldr r3, [r7, #0x34]
	bl sub_08004848
	ldr r1, _080056B4 @ =gUnknown_20326FC
	str r0, [r1]
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	b _08005700
	.align 2, 0
_080056B4: .4byte gUnknown_20326FC
_080056B8:
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _080056D8 @ =sub_080056DC
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080056DE
	.align 2, 0
_080056D8: .4byte _080056DC
_080056DC: @ 0x080056DC
	b _080056FC
_080056DE:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _080056F0
	ldr r0, [r7, #0x38]
	bl sub_080046C0
_080056F0:
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_080056FC:
	bl sub_080443CC
_08005700:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08005650

	thumb_func_start sub_08005710
sub_08005710: @ 0x08005710
	ldr r0, _08005718 @ =gUnknown_2032828
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08005718: .4byte gUnknown_2032828
	thumb_func_end sub_08005710

	thumb_func_start sub_0800571C
sub_0800571C: @ 0x0800571C
	ldr r1, _08005724 @ =gUnknown_2032828
	str r0, [r1]
	bx lr
	.align 2, 0
_08005724: .4byte gUnknown_2032828
	thumb_func_end sub_0800571C

	thumb_func_start sub_08005728
sub_08005728: @ 0x08005728
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r4, _08005774 @ =gUnknown_2032860
	ldr r0, _08005778 @ =0x0000FFFF
	ldrh r1, [r4, #0x24]
	cmp r1, r0
	beq _080057FC
	mov r8, r0
	adds r7, r0, #0
_0800573E:
	ldr r5, [r4, #0x18]
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08005780
	cmp r4, #0
	beq _080057F4
	ldr r0, _0800577C @ =gUnknown_8703E70
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0800575E
	bl sub_08005618
_0800575E:
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	str r0, [r1, #0x1c]
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x18]
	adds r0, r4, #0
	bl sub_080046C0
	b _080057F4
	.align 2, 0
_08005774: .4byte gUnknown_2032860
_08005778: .4byte 0x0000FFFF
_0800577C: .4byte gUnknown_8703E70
_08005780:
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _080057C2
	movs r0, #0xff
	ands r1, r0
	cmp r1, r6
	bne _080057C2
	ldrh r1, [r4, #0xc]
	cmp r1, #0
	beq _080057B4
	ldrh r0, [r4, #0xe]
	subs r0, #1
	strh r0, [r4, #0xe]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	bne _080057C2
	strh r1, [r4, #0xe]
	ldr r1, [r4, #0x28]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0xc]
	bl _call_via_r1
	b _080057C2
_080057B4:
	ldr r1, [r4, #0x28]
	movs r2, #8
	ldrsh r0, [r1, r2]
	adds r0, r4, r0
	ldr r1, [r1, #0xc]
	bl _call_via_r1
_080057C2:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _080057F4
	subs r0, #1
	str r0, [r4, #0x20]
	cmp r0, #0
	bne _080057F4
	cmp r4, #0
	beq _080057F4
	ldr r0, _08005808 @ =gUnknown_8703E70
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _080057E2
	bl sub_08005618
_080057E2:
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	str r0, [r1, #0x1c]
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x18]
	adds r0, r4, #0
	bl sub_080046C0
_080057F4:
	adds r4, r5, #0
	ldrh r0, [r4, #0x24]
	cmp r0, r7
	bne _0800573E
_080057FC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005808: .4byte gUnknown_8703E70
	thumb_func_end sub_08005728

	thumb_func_start sub_0800580C
sub_0800580C: @ 0x0800580C
	ldr r1, _0800582C @ =gUnknown_2032860
	adds r0, r1, #0
	adds r0, #0x2c
	str r0, [r1]
	ldr r3, _08005830 @ =gUnknown_8703E70
	str r3, [r1, #0x28]
	movs r2, #0
	str r2, [r1, #0x10]
	ldr r0, _08005834 @ =gUnknown_2032830
	adds r1, r0, #0
	adds r1, #0x2c
	str r1, [r0]
	str r3, [r0, #0x28]
	str r2, [r0, #0x10]
	bx lr
	.align 2, 0
_0800582C: .4byte gUnknown_2032860
_08005830: .4byte gUnknown_8703E70
_08005834: .4byte gUnknown_2032830
	thumb_func_end sub_0800580C

	thumb_func_start sub_08005838
sub_08005838: @ 0x08005838
	push {r4, r5, lr}
	ldr r4, _08005878 @ =gUnknown_2032830
	ldr r5, _0800587C @ =gUnknown_8703E70
	str r5, [r4, #0x28]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0800584A
	bl sub_08005618
_0800584A:
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	str r0, [r1, #0x1c]
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x18]
	ldr r4, _08005880 @ =gUnknown_2032860
	str r5, [r4, #0x28]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08005864
	bl sub_08005618
_08005864:
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	str r0, [r1, #0x1c]
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x18]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005878: .4byte gUnknown_2032830
_0800587C: .4byte gUnknown_8703E70
_08005880: .4byte gUnknown_2032860
	thumb_func_end sub_08005838

	thumb_func_start sub_08005884
sub_08005884: @ 0x08005884
	ldr r1, _0800589C @ =gUnknown_2032890
	ldr r0, _080058A0 @ =gUnknown_20328A8
	str r0, [r1]
	movs r2, #0
	str r2, [r1, #4]
	str r2, [r0]
	str r1, [r0, #4]
	movs r0, #1
	str r0, [r1, #8]
	ldr r0, _080058A4 @ =gUnknown_20328C0
	str r2, [r0]
	bx lr
	.align 2, 0
_0800589C: .4byte gUnknown_2032890
_080058A0: .4byte gUnknown_20328A8
_080058A4: .4byte gUnknown_20328C0
	thumb_func_end sub_08005884

	thumb_func_start sub_080058A8
sub_080058A8: @ 0x080058A8
	push {r4, r5, lr}
	ldr r0, _080058B0 @ =gUnknown_2032890
	ldr r4, [r0]
	b _080058F6
	.align 2, 0
_080058B0: .4byte gUnknown_2032890
_080058B4:
	ldr r0, _080058EC @ =gUnknown_20328C0
	str r4, [r0]
	ldr r5, [r4]
	ldrh r0, [r4, #0xe]
	subs r0, #1
	strh r0, [r4, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080058F4
	ldr r0, [r4, #0x10]
	bl _call_via_r0
	ldr r0, [r4, #0x14]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080058F0
	ldr r1, [r4]
	ldr r0, [r4, #4]
	str r0, [r1, #4]
	ldr r1, [r4, #4]
	ldr r0, [r4]
	str r0, [r1]
	adds r0, r4, #0
	bl sub_08005618
	b _080058F4
	.align 2, 0
_080058EC: .4byte gUnknown_20328C0
_080058F0:
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0xe]
_080058F4:
	adds r4, r5, #0
_080058F6:
	ldr r0, [r4]
	cmp r0, #0
	bne _080058B4
	ldr r1, _08005908 @ =gUnknown_20328C0
	movs r0, #0
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005908: .4byte gUnknown_20328C0
	thumb_func_end sub_080058A8

	thumb_func_start sub_0800590C
sub_0800590C: @ 0x0800590C
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	bne _08005916
	movs r1, #1
_08005916:
	ldr r0, _08005934 @ =gUnknown_2032890
	ldr r2, [r0]
	ldr r0, [r2]
	cmp r0, #0
	beq _08005944
	ldr r3, _08005938 @ =0x0000FFFF
	adds r0, r3, #0
	adds r3, r1, #0
	ands r3, r0
_08005928:
	ldr r0, [r2, #8]
	cmp r0, r4
	bne _0800593C
	strh r1, [r2, #0xe]
	strh r3, [r2, #0xc]
	b _08005944
	.align 2, 0
_08005934: .4byte gUnknown_2032890
_08005938: .4byte 0x0000FFFF
_0800593C:
	ldr r2, [r2]
	ldr r0, [r2]
	cmp r0, #0
	bne _08005928
_08005944:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800590C

	thumb_func_start sub_0800594C
sub_0800594C: @ 0x0800594C
	push {r4, r5, lr}
	ldr r0, _0800597C @ =gUnknown_2032890
	ldr r5, [r0]
	adds r4, r5, #0
	cmp r4, #0
	beq _08005974
_08005958:
	ldr r5, [r4]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _08005970
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	ldr r1, [r4, #4]
	ldr r0, [r4]
	str r0, [r1]
	adds r0, r4, #0
	bl sub_08005618
_08005970:
	cmp r5, #0
	bne _08005958
_08005974:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800597C: .4byte gUnknown_2032890
	thumb_func_end sub_0800594C

	thumb_func_start sub_08005980
sub_08005980: @ 0x08005980
	push {lr}
	adds r1, r0, #0
	ldr r0, _08005998 @ =gUnknown_20328C0
	ldr r2, [r0]
	ldr r0, [r2, #8]
	cmp r0, r1
	bne _080059B0
	ldr r0, [r2, #0x14]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x14]
	b _080059CA
	.align 2, 0
_08005998: .4byte gUnknown_20328C0
_0800599C:
	ldr r1, [r2]
	ldr r0, [r2, #4]
	str r0, [r1, #4]
	ldr r1, [r2, #4]
	ldr r0, [r2]
	str r0, [r1]
	adds r0, r2, #0
	bl sub_08005618
	b _080059CA
_080059B0:
	ldr r0, _080059B8 @ =gUnknown_2032890
	ldr r2, [r0]
	b _080059C4
	.align 2, 0
_080059B8: .4byte gUnknown_2032890
_080059BC:
	ldr r0, [r2, #8]
	cmp r0, r1
	beq _0800599C
	ldr r2, [r2]
_080059C4:
	ldr r0, [r2]
	cmp r0, #0
	bne _080059BC
_080059CA:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08005980

	thumb_func_start sub_080059D0
sub_080059D0: @ 0x080059D0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0x18
	bl sub_08005630
	adds r2, r0, #0
	ldr r1, _08005A0C @ =gUnknown_2032890
	ldr r0, [r1, #8]
	str r0, [r2, #8]
	adds r0, #1
	str r0, [r1, #8]
	str r4, [r2, #0x10]
	movs r0, #0
	str r0, [r2, #0x14]
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, [r1]
	str r2, [r0, #4]
	str r1, [r2, #4]
	str r2, [r1]
	cmp r5, #0
	bne _08005A00
	movs r5, #1
_08005A00:
	strh r5, [r2, #0xe]
	strh r5, [r2, #0xc]
	ldr r0, [r2, #8]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08005A0C: .4byte gUnknown_2032890
	thumb_func_end sub_080059D0

	thumb_func_start sub_08005A10
sub_08005A10: @ 0x08005A10
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x18
	bl sub_08005630
	ldr r2, _08005A44 @ =gUnknown_2032890
	ldr r1, [r2, #8]
	str r1, [r0, #8]
	adds r1, #1
	str r1, [r2, #8]
	str r4, [r0, #0x10]
	movs r1, #0
	str r1, [r0, #0x14]
	ldr r1, [r2]
	str r1, [r0]
	ldr r1, [r2]
	str r0, [r1, #4]
	str r2, [r0, #4]
	str r0, [r2]
	movs r1, #1
	strh r1, [r0, #0xe]
	strh r1, [r0, #0xc]
	ldr r0, [r0, #8]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08005A44: .4byte gUnknown_2032890
	thumb_func_end sub_08005A10

	thumb_func_start sub_08005A48
sub_08005A48: @ 0x08005A48
	ldr r2, [r0]
	ldr r1, [r0, #4]
	str r1, [r2, #4]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_08005A48

	thumb_func_start sub_08005A58
sub_08005A58: @ 0x08005A58
	ldr r2, [r0]
	str r2, [r1]
	str r1, [r2, #4]
	str r0, [r1, #4]
	str r1, [r0]
	bx lr
	thumb_func_end sub_08005A58

	thumb_func_start sub_08005A64
sub_08005A64: @ 0x08005A64
	ldr r1, _08005A7C @ =gUnknown_2032860
	ldr r2, _08005A80 @ =gUnknown_2032830
	str r2, [r1, #0x18]
	movs r0, #0
	str r0, [r1, #0x1c]
	strh r0, [r1, #0x24]
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	ldr r0, _08005A84 @ =0x0000FFFF
	strh r0, [r2, #0x24]
	bx lr
	.align 2, 0
_08005A7C: .4byte gUnknown_2032860
_08005A80: .4byte gUnknown_2032830
_08005A84: .4byte 0x0000FFFF
	thumb_func_end sub_08005A64

	thumb_func_start sub_08005A88
sub_08005A88: @ 0x08005A88
	ldr r1, [r0, #8]
	movs r0, #5
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
	thumb_func_end sub_08005A88

	thumb_func_start sub_08005A98
sub_08005A98: @ 0x08005A98
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_08005A98

	thumb_func_start sub_08005A9C
sub_08005A9C: @ 0x08005A9C
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #8
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_08005A9C

	thumb_func_start sub_08005AA8
sub_08005AA8: @ 0x08005AA8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #4]
	cmp r0, #1
	beq _08005AEA
	ldrb r0, [r2, #8]
	cmp r0, r1
	bne _08005AEA
	ldrh r1, [r2, #0xc]
	cmp r1, #0
	beq _08005ADC
	ldrh r0, [r2, #0xe]
	subs r0, #1
	strh r0, [r2, #0xe]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08005AEA
	strh r1, [r2, #0xe]
	ldr r1, [r2, #0x28]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0xc]
	bl _call_via_r1
	b _08005AEA
_08005ADC:
	ldr r1, [r2, #0x28]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r1, [r1, #0xc]
	bl _call_via_r1
_08005AEA:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08005AA8

	thumb_func_start sub_08005AF0
sub_08005AF0: @ 0x08005AF0
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_08005AF0

	thumb_func_start sub_08005AF4
sub_08005AF4: @ 0x08005AF4
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	bx lr
	.align 2, 0
	thumb_func_end sub_08005AF4

	thumb_func_start sub_08005B00
sub_08005B00: @ 0x08005B00
	str r1, [r0, #8]
	bx lr
	thumb_func_end sub_08005B00

	thumb_func_start sub_08005B04
sub_08005B04: @ 0x08005B04
	str r1, [r0, #0x20]
	bx lr
	thumb_func_end sub_08005B04

	thumb_func_start sub_08005B08
sub_08005B08: @ 0x08005B08
	adds r2, r0, #0
	cmp r1, #2
	bne _08005B20
	ldr r0, [r2, #4]
	cmp r0, #0
	bne _08005B1A
	movs r0, #1
	str r0, [r2, #4]
	b _08005B22
_08005B1A:
	movs r0, #0
	str r0, [r2, #4]
	b _08005B22
_08005B20:
	str r1, [r2, #4]
_08005B22:
	bx lr
	thumb_func_end sub_08005B08

	thumb_func_start sub_08005B24
sub_08005B24: @ 0x08005B24
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	bx lr
	.align 2, 0
	thumb_func_end sub_08005B24

	thumb_func_start sub_08005B30
sub_08005B30: @ 0x08005B30
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r2, #0x24]
	cmp r0, r1
	beq _08005B6A
	strh r1, [r2, #0x24]
	ldr r1, [r2, #0x18]
	ldr r0, [r2, #0x1c]
	str r0, [r1, #0x1c]
	ldr r1, [r2, #0x1c]
	ldr r0, [r2, #0x18]
	str r0, [r1, #0x18]
	ldr r1, _08005B50 @ =gUnknown_2032860
	ldrh r0, [r2, #0x24]
	b _08005B56
	.align 2, 0
_08005B50: .4byte gUnknown_2032860
_08005B54:
	ldr r1, [r1, #0x18]
_08005B56:
	ldrh r3, [r1, #0x24]
	cmp r3, r0
	blo _08005B54
	ldr r1, [r1, #0x1c]
	ldr r0, [r1, #0x18]
	str r0, [r2, #0x18]
	ldr r0, [r1, #0x18]
	str r2, [r0, #0x1c]
	str r1, [r2, #0x1c]
	str r2, [r1, #0x18]
_08005B6A:
	bx lr
	thumb_func_end sub_08005B30

	thumb_func_start sub_08005B6C
sub_08005B6C: @ 0x08005B6C
	push {lr}
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _08005B7A
	ldr r0, [r0, #0x14]
	bl _call_via_r1
_08005B7A:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08005B6C

	thumb_func_start sub_08005B80
sub_08005B80: @ 0x08005B80
	adds r1, r0, #0
	movs r0, #1
	str r0, [r1, #8]
	movs r0, #0
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	str r0, [r1, #4]
	movs r3, #0x80
	lsls r3, r3, #8
	strh r3, [r1, #0x24]
	str r0, [r1, #0x20]
	str r0, [r1, #0x14]
	ldr r2, _08005BBC @ =gUnknown_2032860
	ldrh r0, [r2, #0x24]
	cmp r0, r3
	bhs _08005BAA
	adds r0, r3, #0
_08005BA2:
	ldr r2, [r2, #0x18]
	ldrh r3, [r2, #0x24]
	cmp r3, r0
	blo _08005BA2
_08005BAA:
	ldr r2, [r2, #0x1c]
	ldr r0, [r2, #0x18]
	str r0, [r1, #0x18]
	ldr r0, [r2, #0x18]
	str r1, [r0, #0x1c]
	str r2, [r1, #0x1c]
	str r1, [r2, #0x18]
	bx lr
	.align 2, 0
_08005BBC: .4byte gUnknown_2032860
	thumb_func_end sub_08005B80

	thumb_func_start sub_08005BC0
sub_08005BC0: @ 0x08005BC0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08005BF4 @ =gUnknown_8703E70
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08005BD4
	bl sub_08005618
_08005BD4:
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	str r0, [r1, #0x1c]
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	str r0, [r1, #0x18]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08005BEE
	adds r0, r4, #0
	bl sub_080046C0
_08005BEE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08005BF4: .4byte gUnknown_8703E70
	thumb_func_end sub_08005BC0

	thumb_func_start sub_08005BF8
sub_08005BF8: @ 0x08005BF8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r2, #0
	adds r5, r3, #0
	cmp r1, #0
	beq _08005C08
	adds r0, #0x2c
	str r0, [r4]
_08005C08:
	ldr r0, _08005C2C @ =gUnknown_8703E70
	str r0, [r4, #0x28]
	adds r0, r4, #0
	bl sub_08005B80
	str r6, [r4, #0x10]
	cmp r5, #0
	beq _08005C20
	adds r0, r5, #0
	bl sub_08005630
	str r0, [r4, #0x14]
_08005C20:
	ldr r0, [sp, #0x10]
	str r0, [r4, #0x20]
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08005C2C: .4byte gUnknown_8703E70
	thumb_func_end sub_08005BF8

	thumb_func_start sub_08005C30
sub_08005C30: @ 0x08005C30
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r2, #0
	adds r5, r3, #0
	cmp r1, #0
	beq _08005C40
	adds r0, #0x2c
	str r0, [r4]
_08005C40:
	ldr r0, _08005C60 @ =gUnknown_8703E70
	str r0, [r4, #0x28]
	adds r0, r4, #0
	bl sub_08005B80
	str r6, [r4, #0x10]
	cmp r5, #0
	beq _08005C58
	adds r0, r5, #0
	bl sub_08005630
	str r0, [r4, #0x14]
_08005C58:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08005C60: .4byte gUnknown_8703E70
	thumb_func_end sub_08005C30

	thumb_func_start sub_08005C64
sub_08005C64: @ 0x08005C64
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	cmp r1, #0
	beq _08005C72
	adds r0, #0x2c
	str r0, [r4]
_08005C72:
	ldr r0, _08005C88 @ =gUnknown_8703E70
	str r0, [r4, #0x28]
	adds r0, r4, #0
	bl sub_08005B80
	str r5, [r4, #0x10]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08005C88: .4byte gUnknown_8703E70
	thumb_func_end sub_08005C64

	thumb_func_start sub_08005C8C
sub_08005C8C: @ 0x08005C8C
	adds r2, r0, #0
	cmp r1, #0
	beq _08005C96
	adds r0, #0x2c
	str r0, [r2]
_08005C96:
	ldr r0, _08005CA4 @ =gUnknown_8703E70
	str r0, [r2, #0x28]
	movs r0, #0
	str r0, [r2, #0x10]
	adds r0, r2, #0
	bx lr
	.align 2, 0
_08005CA4: .4byte gUnknown_8703E70
	thumb_func_end sub_08005C8C

	thumb_func_start sub_08005CA8
sub_08005CA8: @ 0x08005CA8
	adds r2, r0, #0
	ldr r1, _08005CB0 @ =gUnknown_2032860
	ldrh r0, [r2, #0x24]
	b _08005CB6
	.align 2, 0
_08005CB0: .4byte gUnknown_2032860
_08005CB4:
	ldr r1, [r1, #0x18]
_08005CB6:
	ldrh r3, [r1, #0x24]
	cmp r3, r0
	blo _08005CB4
	ldr r1, [r1, #0x1c]
	ldr r0, [r1, #0x18]
	str r0, [r2, #0x18]
	ldr r0, [r1, #0x18]
	str r2, [r0, #0x1c]
	str r1, [r2, #0x1c]
	str r2, [r1, #0x18]
	bx lr
	thumb_func_end sub_08005CA8

	thumb_func_start sub_08005CCC
sub_08005CCC: @ 0x08005CCC
	ldr r2, [r0, #0x18]
	ldr r1, [r0, #0x1c]
	str r1, [r2, #0x1c]
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x18]
	str r0, [r1, #0x18]
	bx lr
	.align 2, 0
	thumb_func_end sub_08005CCC

	thumb_func_start sub_08005CDC
sub_08005CDC: @ 0x08005CDC
	bx lr
	.align 2, 0
	thumb_func_end sub_08005CDC

	thumb_func_start sub_08005CE0
sub_08005CE0: @ 0x08005CE0
	push {r4, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	ands r0, r2
	cmp r0, #0
	bne _08005CF8
	strh r0, [r3]
	b _08005D2E
_08005CF8:
	ldrh r0, [r3]
	cmp r0, #0
	beq _08005D04
	cmp r0, #1
	beq _08005D10
	b _08005D2E
_08005D04:
	movs r0, #1
	strh r0, [r3]
	ldr r0, _08005D0C @ =gUnknown_20272CA
	b _08005D2A
	.align 2, 0
_08005D0C: .4byte gUnknown_20272CA
_08005D10:
	ldrh r0, [r3, #2]
	subs r0, #1
	strh r0, [r3, #2]
	lsls r0, r0, #0x10
	ldr r1, _08005D24 @ =0xFFFF0000
	cmp r0, r1
	beq _08005D28
	bics r4, r2
	b _08005D2E
	.align 2, 0
_08005D24: .4byte 0xFFFF0000
_08005D28:
	ldr r0, _08005D38 @ =gUnknown_20272CC
_08005D2A:
	ldrh r0, [r0]
	strh r0, [r3, #2]
_08005D2E:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08005D38: .4byte gUnknown_20272CC
	thumb_func_end sub_08005CE0

	thumb_func_start sub_08005D3C
sub_08005D3C: @ 0x08005D3C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08005D84 @ =gUnknown_20272C8
	ldr r0, _08005D88 @ =0x04000130
	ldrh r1, [r0]
	ldr r0, _08005D8C @ =0x000003FF
	bics r0, r1
	strh r0, [r2]
	movs r6, #0
	mov r8, r2
	ldr r7, _08005D90 @ =gUnknown_20272F8
_08005D54:
	movs r0, #0x80
	lsls r0, r0, #9
	lsls r0, r6
	lsrs r5, r0, #0x10
	ldr r1, _08005D94 @ =gUnknown_20272CE
	adds r0, r5, #0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08005D9C
	lsls r0, r6, #2
	ldr r1, _08005D98 @ =gUnknown_20272D0
	adds r0, r0, r1
	mov r2, r8
	ldrh r1, [r2]
	adds r2, r5, #0
	bl sub_08005CE0
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r7]
	bics r0, r5
	strh r0, [r7]
	b _08005DBC
	.align 2, 0
_08005D84: .4byte gUnknown_20272C8
_08005D88: .4byte 0x04000130
_08005D8C: .4byte 0x000003FF
_08005D90: .4byte gUnknown_20272F8
_08005D94: .4byte gUnknown_20272CE
_08005D98: .4byte gUnknown_20272D0
_08005D9C:
	mov r2, r8
	ldrh r3, [r2]
	ldrh r4, [r7]
	adds r1, r3, #0
	bics r1, r4
	mvns r2, r5
	adds r0, r3, #0
	ands r0, r2
	ands r1, r5
	orrs r0, r1
	mov r1, r8
	strh r0, [r1]
	ands r2, r4
	ands r3, r5
	orrs r2, r3
	strh r2, [r7]
_08005DBC:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #9
	bls _08005D54
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08005D3C

	thumb_func_start sub_08005DD0
sub_08005DD0: @ 0x08005DD0
	ldr r0, _08005DDC @ =0x04000130
	ldrh r0, [r0]
	mvns r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
_08005DDC: .4byte 0x04000130
	thumb_func_end sub_08005DD0

	thumb_func_start sub_08005DE0
sub_08005DE0: @ 0x08005DE0
	ldr r0, _08005DE8 @ =gUnknown_20272C8
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08005DE8: .4byte gUnknown_20272C8
	thumb_func_end sub_08005DE0

	thumb_func_start sub_08005DEC
sub_08005DEC: @ 0x08005DEC
	ldr r0, _08005DF8 @ =gUnknown_20272CE
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08005DFC @ =gUnknown_20272F8
	strh r1, [r0]
	bx lr
	.align 2, 0
_08005DF8: .4byte gUnknown_20272CE
_08005DFC: .4byte gUnknown_20272F8
	thumb_func_end sub_08005DEC

	thumb_func_start sub_08005E00
sub_08005E00: @ 0x08005E00
	ldr r1, _08005E0C @ =gUnknown_20272CE
	ldr r2, _08005E10 @ =0x000003FF
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08005E0C: .4byte gUnknown_20272CE
_08005E10: .4byte 0x000003FF
	thumb_func_end sub_08005E00

	thumb_func_start sub_08005E14
sub_08005E14: @ 0x08005E14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08005E30 @ =gUnknown_20272CE
	mvns r0, r0
	adds r1, r0, #0
	ldrh r3, [r2]
	ands r1, r3
	strh r1, [r2]
	ldr r1, _08005E34 @ =gUnknown_20272F8
	ldrh r2, [r1]
	ands r0, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_08005E30: .4byte gUnknown_20272CE
_08005E34: .4byte gUnknown_20272F8
	thumb_func_end sub_08005E14

	thumb_func_start sub_08005E38
sub_08005E38: @ 0x08005E38
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08005E48 @ =gUnknown_20272CE
	ldrh r2, [r1]
	orrs r0, r2
	strh r0, [r1]
	bx lr
	.align 2, 0
_08005E48: .4byte gUnknown_20272CE
	thumb_func_end sub_08005E38

	thumb_func_start sub_08005E4C
sub_08005E4C: @ 0x08005E4C
	push {r4, lr}
	movs r1, #0
	ldr r4, _08005E74 @ =gUnknown_20272C8
	ldr r3, _08005E78 @ =gUnknown_20272D0
	movs r2, #0
_08005E56:
	lsls r0, r1, #2
	adds r0, r0, r3
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #9
	bls _08005E56
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005E74: .4byte gUnknown_20272C8
_08005E78: .4byte gUnknown_20272D0
	thumb_func_end sub_08005E4C

	thumb_func_start sub_08005E7C
sub_08005E7C: @ 0x08005E7C
	push {lr}
	movs r1, #0x1e
	movs r2, #6
	ldr r0, _08005E9C @ =gUnknown_20272CA
	strh r1, [r0]
	ldr r0, _08005EA0 @ =gUnknown_20272CC
	strh r2, [r0]
	ldr r1, _08005EA4 @ =gUnknown_20272CE
	movs r0, #0
	strh r0, [r1]
	bl sub_08005DEC
	bl sub_08005E4C
	pop {r0}
	bx r0
	.align 2, 0
_08005E9C: .4byte gUnknown_20272CA
_08005EA0: .4byte gUnknown_20272CC
_08005EA4: .4byte gUnknown_20272CE
	thumb_func_end sub_08005E7C

	thumb_func_start sub_08005EA8
sub_08005EA8: @ 0x08005EA8
	ldr r0, _08005EB0 @ =gUnknown_20272CC
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08005EB0: .4byte gUnknown_20272CC
	thumb_func_end sub_08005EA8

	thumb_func_start sub_08005EB4
sub_08005EB4: @ 0x08005EB4
	ldr r0, _08005EBC @ =gUnknown_20272CA
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08005EBC: .4byte gUnknown_20272CA
	thumb_func_end sub_08005EB4

	thumb_func_start sub_08005EC0
sub_08005EC0: @ 0x08005EC0
	ldr r2, _08005ECC @ =gUnknown_20272CA
	strh r0, [r2]
	ldr r0, _08005ED0 @ =gUnknown_20272CC
	strh r1, [r0]
	bx lr
	.align 2, 0
_08005ECC: .4byte gUnknown_20272CA
_08005ED0: .4byte gUnknown_20272CC
	thumb_func_end sub_08005EC0

	thumb_func_start sub_08005ED4
sub_08005ED4: @ 0x08005ED4
	lsls r0, r0, #0x18
	ldr r1, _08005EE4 @ =gUnknown_85EB940
	lsrs r0, r0, #0x17
	adds r0, #0x80
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08005EE4: .4byte gUnknown_85EB940
	thumb_func_end sub_08005ED4

	thumb_func_start sub_08005EE8
sub_08005EE8: @ 0x08005EE8
	lsls r0, r0, #0x18
	ldr r1, _08005EF8 @ =gUnknown_85EB940
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08005EF8: .4byte gUnknown_85EB940
	thumb_func_end sub_08005EE8

	thumb_func_start sub_08005EFC
sub_08005EFC: @ 0x08005EFC
	lsls r0, r0, #0x18
	ldr r1, _08005F10 @ =gUnknown_85EB940
	lsrs r0, r0, #0x17
	adds r0, #0x80
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	bx lr
	.align 2, 0
_08005F10: .4byte gUnknown_85EB940
	thumb_func_end sub_08005EFC

	thumb_func_start sub_08005F14
sub_08005F14: @ 0x08005F14
	lsls r0, r0, #0x18
	ldr r1, _08005F24 @ =gUnknown_85EB940
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	bx lr
	.align 2, 0
_08005F24: .4byte gUnknown_85EB940
	thumb_func_end sub_08005F14

	thumb_func_start sub_08005F28
sub_08005F28: @ 0x08005F28
	push {r4, lr}
	bl sub_080055DC
	ldr r4, _08005FC0 @ =gUnknown_2020050
	movs r0, #0xa0
	lsls r0, r0, #1
	bl sub_080055B0
	str r0, [r4]
	ldr r4, _08005FC4 @ =gUnknown_2020054
	movs r0, #0xb0
	lsls r0, r0, #1
	bl sub_080055B0
	str r0, [r4]
	ldr r4, _08005FC8 @ =gUnknown_2020058
	movs r0, #0xf0
	lsls r0, r0, #2
	bl sub_080055B0
	str r0, [r4]
	ldr r4, _08005FCC @ =gUnknown_202005C
	movs r0, #0xe6
	lsls r0, r0, #4
	bl sub_080055B0
	str r0, [r4]
	ldr r1, _08005FD0 @ =gUnknown_2020060
	ldr r0, _08005FD4 @ =gUnknown_2020080
	str r0, [r1]
	ldr r4, _08005FD8 @ =gUnknown_2020064
	movs r0, #0xe0
	lsls r0, r0, #2
	bl sub_080055B0
	str r0, [r4]
	ldr r4, _08005FDC @ =gUnknown_2020068
	movs r0, #0xb0
	lsls r0, r0, #3
	bl sub_080055B0
	str r0, [r4]
	ldr r4, _08005FE0 @ =gUnknown_202006C
	movs r0, #0x90
	lsls r0, r0, #2
	bl sub_080055B0
	str r0, [r4]
	ldr r4, _08005FE4 @ =gUnknown_2020070
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_080055B0
	str r0, [r4]
	ldr r4, _08005FE8 @ =gUnknown_2020074
	movs r0, #0xa0
	lsls r0, r0, #3
	bl sub_080055B0
	str r0, [r4]
	ldr r4, _08005FEC @ =gUnknown_2020078
	movs r0, #0x9a
	lsls r0, r0, #4
	bl sub_080055B0
	str r0, [r4]
	ldr r4, _08005FF0 @ =gUnknown_202007C
	movs r0, #0x8a
	lsls r0, r0, #6
	bl sub_080055B0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005FC0: .4byte gUnknown_2020050
_08005FC4: .4byte gUnknown_2020054
_08005FC8: .4byte gUnknown_2020058
_08005FCC: .4byte gUnknown_202005C
_08005FD0: .4byte gUnknown_2020060
_08005FD4: .4byte gUnknown_2020080
_08005FD8: .4byte gUnknown_2020064
_08005FDC: .4byte gUnknown_2020068
_08005FE0: .4byte gUnknown_202006C
_08005FE4: .4byte gUnknown_2020070
_08005FE8: .4byte gUnknown_2020074
_08005FEC: .4byte gUnknown_2020078
_08005FF0: .4byte gUnknown_202007C
	thumb_func_end sub_08005F28

	thumb_func_start sub_08005FF4
sub_08005FF4: @ 0x08005FF4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	movs r6, #0
	ldr r5, _08006048 @ =gUnknown_201F800
	movs r7, #0x1f
_08005FFE:
	adds r0, r6, #0
	bl sub_080289D4
	adds r4, r0, #0
	movs r6, #1
	cmp r4, #0
	bne _08006050
	ldr r0, [r5]
	ldrh r0, [r0]
	lsrs r1, r0, #0xa
	ands r1, r7
	movs r0, #2
	bl sub_0801B58C
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, sp, #4
	bl sub_08017EB4
	ldr r2, [sp, #4]
	ldr r0, [r5]
	ldrh r0, [r0]
	lsrs r3, r0, #0xa
	ands r3, r7
	movs r0, #2
	movs r1, #0
	bl sub_0801B8A0
	str r4, [sp]
	mov r0, sp
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0800604C @ =0x01006000
	bl CpuFastSet
	b _08005FFE
	.align 2, 0
_08006048: .4byte gUnknown_201F800
_0800604C: .4byte 0x01006000
_08006050:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08005FF4

	thumb_func_start sub_08006058
sub_08006058: @ 0x08006058
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	movs r6, #0
	ldr r5, _080060B8 @ =gUnknown_2022810
	movs r7, #0x1f
_08006062:
	adds r0, r6, #0
	bl sub_0802D6D4
	adds r4, r0, #0
	movs r6, #1
	cmp r4, #0
	bne _080060C0
	ldr r0, [r5]
	ldrh r0, [r0]
	lsrs r1, r0, #0xa
	ands r1, r7
	movs r0, #3
	bl sub_0801B58C
	str r0, [sp, #4]
	movs r0, #0x80
	lsls r0, r0, #0x12
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #9
	bl memset
	ldr r0, [r5]
	add r1, sp, #4
	bl sub_080425A0
	ldr r2, [sp, #4]
	ldr r0, [r5]
	ldrh r0, [r0]
	lsrs r3, r0, #0xa
	ands r3, r7
	movs r0, #3
	movs r1, #0
	bl sub_0801B8A0
	str r4, [sp]
	mov r0, sp
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _080060BC @ =0x01006000
	bl CpuFastSet
	b _08006062
	.align 2, 0
_080060B8: .4byte gUnknown_2022810
_080060BC: .4byte 0x01006000
_080060C0:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08006058

	thumb_func_start sub_080060C8
sub_080060C8: @ 0x080060C8
	push {r4, r5, lr}
	ldr r0, _08006144 @ =gUnknown_2029418
	movs r5, #1
	negs r5, r5
	str r5, [r0]
	bl sub_080055DC
	movs r0, #0xc0
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #7
	movs r1, #0
	bl memset
	ldr r1, _08006148 @ =gUnknown_2027800
	movs r0, #0xff
	strb r0, [r1, #6]
	bl sub_08016720
	ldr r1, _0800614C @ =gUnknown_2020080
	movs r4, #0
	strb r4, [r1]
	ldr r0, _08006150 @ =gUnknown_2020060
	str r1, [r0]
	bl sub_08005558
	bl sub_080099F0
	bl sub_0802954C
	bl sub_080055DC
	bl sub_080393E4
	ldr r0, _08006154 @ =gUnknown_20294B8
	movs r1, #0
	strh r4, [r0, #0xe]
	strb r1, [r0, #0x18]
	bl sub_0801CAAC
	bl sub_0801CA44
	ldr r0, _08006158 @ =gUnknown_202941C
	str r4, [r0]
	ldr r0, _0800615C @ =gUnknown_2029420
	str r5, [r0]
	ldr r0, _08006160 @ =gUnknown_2029410
	str r5, [r0]
	ldr r0, _08006164 @ =gUnknown_202949A
	strh r4, [r0]
	ldr r0, _08006168 @ =gUnknown_2026578
	str r4, [r0]
_08006130:
	ldr r0, _08006158 @ =gUnknown_202941C
	ldr r0, [r0]
	cmp r0, #0xc
	bls _0800613A
	b _08006490
_0800613A:
	lsls r0, r0, #2
	ldr r1, _0800616C @ =_08006170
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006144: .4byte gUnknown_2029418
_08006148: .4byte gUnknown_2027800
_0800614C: .4byte gUnknown_2020080
_08006150: .4byte gUnknown_2020060
_08006154: .4byte gUnknown_20294B8
_08006158: .4byte gUnknown_202941C
_0800615C: .4byte gUnknown_2029420
_08006160: .4byte gUnknown_2029410
_08006164: .4byte gUnknown_202949A
_08006168: .4byte gUnknown_2026578
_0800616C: .4byte _08006170
_08006170: @ jump table
	.4byte _080061A4 @ case 0
	.4byte _08006370 @ case 1
	.4byte _08006380 @ case 2
	.4byte _080063AC @ case 3
	.4byte _080063DC @ case 4
	.4byte _080063EC @ case 5
	.4byte _08006408 @ case 6
	.4byte _08006424 @ case 7
	.4byte _0800644C @ case 8
	.4byte _08006354 @ case 9
	.4byte _08006314 @ case 10
	.4byte _080062D4 @ case 11
	.4byte _080061D0 @ case 12
_080061A4:
	bl sub_0801041C
	adds r4, r0, #0
	cmp r4, #0
	bne _080061C4
	ldr r0, _080061BC @ =gUnknown_202941C
	movs r1, #0xc
	str r1, [r0]
	ldr r0, _080061C0 @ =gUnknown_2026578
	str r4, [r0]
	b _08006490
	.align 2, 0
_080061BC: .4byte gUnknown_202941C
_080061C0: .4byte gUnknown_2026578
_080061C4:
	ldr r1, _080061CC @ =gUnknown_202941C
	movs r0, #1
	b _0800648E
	.align 2, 0
_080061CC: .4byte gUnknown_202941C
_080061D0:
	ldr r0, _080061EC @ =gUnknown_202657C
	movs r5, #0
	str r5, [r0]
	bl sub_0801072C
	adds r4, r0, #0
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _080061F4
	ldr r0, _080061F0 @ =gUnknown_202941C
	str r5, [r0]
	b _08006490
	.align 2, 0
_080061EC: .4byte gUnknown_202657C
_080061F0: .4byte gUnknown_202941C
_080061F4:
	cmp r4, #1
	bne _08006288
	ldr r0, _0800620C @ =gUnknown_2029414
	ldrh r0, [r0]
	cmp r0, #7
	bls _08006202
	b _08006490
_08006202:
	lsls r0, r0, #2
	ldr r1, _08006210 @ =_08006214
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800620C: .4byte gUnknown_2029414
_08006210: .4byte _08006214
_08006214: @ jump table
	.4byte _08006234 @ case 0
	.4byte _08006240 @ case 1
	.4byte _08006240 @ case 2
	.4byte _0800624C @ case 3
	.4byte _08006258 @ case 4
	.4byte _08006264 @ case 5
	.4byte _08006270 @ case 6
	.4byte _0800627C @ case 7
_08006234:
	ldr r1, _0800623C @ =gUnknown_202941C
	movs r0, #2
	b _0800648E
	.align 2, 0
_0800623C: .4byte gUnknown_202941C
_08006240:
	ldr r1, _08006248 @ =gUnknown_202941C
	movs r0, #3
	b _0800648E
	.align 2, 0
_08006248: .4byte gUnknown_202941C
_0800624C:
	ldr r1, _08006254 @ =gUnknown_202941C
	movs r0, #4
	b _0800648E
	.align 2, 0
_08006254: .4byte gUnknown_202941C
_08006258:
	ldr r1, _08006260 @ =gUnknown_202941C
	movs r0, #5
	b _0800648E
	.align 2, 0
_08006260: .4byte gUnknown_202941C
_08006264:
	ldr r1, _0800626C @ =gUnknown_202941C
	movs r0, #6
	b _0800648E
	.align 2, 0
_0800626C: .4byte gUnknown_202941C
_08006270:
	ldr r1, _08006278 @ =gUnknown_202941C
	movs r0, #7
	b _0800648E
	.align 2, 0
_08006278: .4byte gUnknown_202941C
_0800627C:
	ldr r1, _08006284 @ =gUnknown_202941C
	movs r0, #8
	b _0800648E
	.align 2, 0
_08006284: .4byte gUnknown_202941C
_08006288:
	cmp r4, #2
	bne _08006298
	ldr r1, _08006294 @ =gUnknown_202941C
	movs r0, #0xa
	b _0800648E
	.align 2, 0
_08006294: .4byte gUnknown_202941C
_08006298:
	cmp r4, #3
	bne _080062A8
	ldr r1, _080062A4 @ =gUnknown_202941C
	movs r0, #0xb
	b _0800648E
	.align 2, 0
_080062A4: .4byte gUnknown_202941C
_080062A8:
	cmp r4, #4
	bne _080062B8
	ldr r1, _080062B4 @ =gUnknown_202941C
	movs r0, #9
	b _0800648E
	.align 2, 0
_080062B4: .4byte gUnknown_202941C
_080062B8:
	movs r0, #2
	negs r0, r0
	cmp r4, r0
	beq _080062C2
	b _08006490
_080062C2:
	ldr r0, _080062CC @ =gUnknown_202941C
	ldr r1, _080062D0 @ =gUnknown_2029420
	ldr r1, [r1]
	str r1, [r0]
	b _08006490
	.align 2, 0
_080062CC: .4byte gUnknown_202941C
_080062D0: .4byte gUnknown_2029420
_080062D4:
	bl sub_0803A760
	adds r4, r0, #0
	cmp r4, #0
	bne _080062EA
	movs r0, #0x80
	lsls r0, r0, #0x12
	bl sub_08017BCC
	ldr r0, _08006304 @ =gUnknown_2026578
	str r4, [r0]
_080062EA:
	ldr r0, _08006308 @ =gUnknown_202657C
	ldr r0, [r0]
	cmp r0, #0
	bne _080062F4
	b _0800648A
_080062F4:
	ldr r0, _0800630C @ =gUnknown_2029420
	movs r1, #1
	negs r1, r1
	str r1, [r0]
	ldr r0, _08006310 @ =gUnknown_2029410
	str r1, [r0]
	b _0800648A
	.align 2, 0
_08006304: .4byte gUnknown_2026578
_08006308: .4byte gUnknown_202657C
_0800630C: .4byte gUnknown_2029420
_08006310: .4byte gUnknown_2029410
_08006314:
	bl sub_08039504
	adds r4, r0, #0
	cmp r4, #0
	bne _0800632A
	movs r0, #0x80
	lsls r0, r0, #0x12
	bl sub_08017BCC
	ldr r0, _08006344 @ =gUnknown_2026578
	str r4, [r0]
_0800632A:
	ldr r0, _08006348 @ =gUnknown_202657C
	ldr r0, [r0]
	cmp r0, #0
	bne _08006334
	b _0800648A
_08006334:
	ldr r0, _0800634C @ =gUnknown_2029420
	movs r1, #1
	negs r1, r1
	str r1, [r0]
	ldr r0, _08006350 @ =gUnknown_2029410
	str r1, [r0]
	b _0800648A
	.align 2, 0
_08006344: .4byte gUnknown_2026578
_08006348: .4byte gUnknown_202657C
_0800634C: .4byte gUnknown_2029420
_08006350: .4byte gUnknown_2029410
_08006354:
	bl sub_08017EC0
	ldr r0, _08006368 @ =gUnknown_2029420
	movs r1, #1
	negs r1, r1
	str r1, [r0]
	ldr r0, _0800636C @ =gUnknown_2029410
	str r1, [r0]
	b _0800648A
	.align 2, 0
_08006368: .4byte gUnknown_2029420
_0800636C: .4byte gUnknown_2029410
_08006370:
	bl sub_080391E4
	ldr r1, _0800637C @ =gUnknown_202941C
	movs r0, #0
	b _0800648E
	.align 2, 0
_0800637C: .4byte gUnknown_202941C
_08006380:
	ldr r1, _080063A0 @ =gUnknown_2029420
	movs r0, #2
	str r0, [r1]
	ldr r0, _080063A4 @ =gUnknown_2029418
	movs r4, #0
	str r4, [r0]
	bl sub_08005F28
	ldr r0, _080063A8 @ =gUnknown_202940C
	str r4, [r0]
	bl sub_08009AB0
	bl sub_080055DC
	b _08006490
	.align 2, 0
_080063A0: .4byte gUnknown_2029420
_080063A4: .4byte gUnknown_2029418
_080063A8: .4byte gUnknown_202940C
_080063AC:
	ldr r1, _080063D0 @ =gUnknown_2029420
	movs r0, #3
	str r0, [r1]
	ldr r1, _080063D4 @ =gUnknown_2029418
	movs r0, #1
	str r0, [r1]
	bl sub_08025FC4
	cmp r0, #0
	bne _08006490
	ldr r2, _080063D8 @ =gUnknown_20294B8
	ldr r0, [r2, #0x14]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0800646C
	b _08006484
	.align 2, 0
_080063D0: .4byte gUnknown_2029420
_080063D4: .4byte gUnknown_2029418
_080063D8: .4byte gUnknown_20294B8
_080063DC:
	ldr r1, _080063E8 @ =gUnknown_2029420
	movs r0, #4
	str r0, [r1]
	bl sub_08036528
	b _0800648A
	.align 2, 0
_080063E8: .4byte gUnknown_2029420
_080063EC:
	ldr r1, _08006400 @ =gUnknown_2029420
	movs r0, #5
	str r0, [r1]
	ldr r1, _08006404 @ =gUnknown_2029418
	movs r0, #2
	str r0, [r1]
	bl sub_08005FF4
	b _08006490
	.align 2, 0
_08006400: .4byte gUnknown_2029420
_08006404: .4byte gUnknown_2029418
_08006408:
	ldr r1, _0800641C @ =gUnknown_2029420
	movs r0, #6
	str r0, [r1]
	ldr r1, _08006420 @ =gUnknown_2029418
	movs r0, #3
	str r0, [r1]
	bl sub_08006058
	b _08006490
	.align 2, 0
_0800641C: .4byte gUnknown_2029420
_08006420: .4byte gUnknown_2029418
_08006424:
	ldr r1, _08006444 @ =gUnknown_2029420
	movs r0, #7
	str r0, [r1]
	ldr r1, _08006448 @ =gUnknown_2029418
	movs r0, #4
	str r0, [r1]
	movs r4, #0
_08006432:
	adds r0, r4, #0
	bl sub_08032330
	movs r4, #1
	cmp r0, #0
	bne _08006490
	bl sub_08032AF8
	b _08006432
	.align 2, 0
_08006444: .4byte gUnknown_2029420
_08006448: .4byte gUnknown_2029418
_0800644C:
	ldr r1, _08006478 @ =gUnknown_2029420
	movs r0, #8
	str r0, [r1]
	ldr r1, _0800647C @ =gUnknown_2029418
	movs r0, #6
	str r0, [r1]
	bl sub_08025FC4
	cmp r0, #0
	bne _08006490
	ldr r2, _08006480 @ =gUnknown_20294B8
	ldr r0, [r2, #0x14]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08006484
_0800646C:
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r2, r1
	bl sub_08026EE0
	b _08006490
	.align 2, 0
_08006478: .4byte gUnknown_2029420
_0800647C: .4byte gUnknown_2029418
_08006480: .4byte gUnknown_20294B8
_08006484:
	adds r0, r2, #0
	bl sub_08017F1C
_0800648A:
	ldr r1, _08006498 @ =gUnknown_202941C
	movs r0, #0xc
_0800648E:
	str r0, [r1]
_08006490:
	movs r0, #1
	bl sub_080053D8
	b _08006130
	.align 2, 0
_08006498: .4byte gUnknown_202941C
	thumb_func_end sub_080060C8

	thumb_func_start sub_0800649C
sub_0800649C: @ 0x0800649C
	push {r4, lr}
	ldr r1, _080064F8 @ =gUnknown_20294AC
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	bl sub_08017160
	bl sub_0803B9D4
	ldr r0, _080064FC @ =gUnknown_20294B0
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_08005710
	adds r4, r0, #0
	cmp r4, #0
	beq _080064D0
	bl sub_08000E9C
	bl sub_08000888
	bl sub_0800367C
	bl sub_080005DC
_080064D0:
	bl sub_0800047C
	bl sub_080274F8
	bl sub_08027684
	bl sub_080371DC
	cmp r4, #0
	beq _080064E8
	bl sub_08005D3C
_080064E8:
	bl sub_08017144
	ldr r1, _08006500 @ =gUnknown_3007FF8
	movs r0, #1
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080064F8: .4byte gUnknown_20294AC
_080064FC: .4byte gUnknown_20294B0
_08006500: .4byte gUnknown_3007FF8
	thumb_func_end sub_0800649C

	thumb_func_start sub_08006504
sub_08006504: @ 0x08006504
	adds r1, r0, #0
	cmp r1, #0
	beq _08006514
	ldr r0, _08006510 @ =gUnknown_20294B0
	str r1, [r0]
	b _0800651A
	.align 2, 0
_08006510: .4byte gUnknown_20294B0
_08006514:
	ldr r1, _0800651C @ =gUnknown_20294B0
	ldr r0, _08006520 @ =sub_08006560
	str r0, [r1]
_0800651A:
	bx lr
	.align 2, 0
_0800651C: .4byte gUnknown_20294B0
_08006520: .4byte sub_08006560
	thumb_func_end sub_08006504

	thumb_func_start sub_08006524
sub_08006524: @ 0x08006524
	ldr r1, _08006530 @ =gUnknown_30046E0
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08006530: .4byte gUnknown_30046E0
	thumb_func_end sub_08006524

	thumb_func_start sub_08006534
sub_08006534: @ 0x08006534
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_080053FC
	cmp r4, #0
	bne _08006544
	ldr r4, _08006558 @ =sub_08006560
_08006544:
	ldr r1, _0800655C @ =gUnknown_30046E0
	subs r0, r5, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	str r4, [r0]
	bl sub_08005558
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08006558: .4byte sub_08006560
_0800655C: .4byte gUnknown_30046E0
	thumb_func_end sub_08006534

	thumb_func_start sub_08006560
sub_08006560: @ 0x08006560
	bx lr
	.align 2, 0
	thumb_func_end sub_08006560

	thumb_func_start AgbMain
AgbMain: @ 0x08006564
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r0, _080065E4 @ =0x04000208
	mov r8, r0
	movs r0, #0
	mov r1, r8
	strh r0, [r1]
	ldr r0, _080065E8 @ =gUnknown_20294AC
	movs r4, #0
	str r4, [r0]
	movs r0, #0xff
	bl RegisterRamReset
	ldr r1, _080065EC @ =0x04000204
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1]
	mov r0, r8
	ldrh r6, [r0]
	strh r4, [r0]
	ldr r0, _080065F0 @ =gUnknown_85EBBC0
	ldr r4, _080065F4 @ =gUnknown_30046E0
	adds r1, r4, #0
	movs r2, #0x1c
	bl CpuSet
	ldr r0, _080065F8 @ =IntrMain
	ldr r5, _080065FC @ =gUnknown_3004718
	adds r1, r5, #0
	movs r2, #0xc0
	bl CpuSet
	ldr r0, _08006600 @ =gUnknown_3007FFC
	str r5, [r0]
	adds r4, #0x18
	movs r0, #3
	adds r1, r4, #0
	bl SetFlashTimerIntr
	mov r1, r8
	strh r6, [r1]
	movs r0, #0
	bl sub_08006504
	bl sub_08005580
	movs r0, #1
	movs r1, #8
	bl sub_08005564
	bl sub_08004958
	bl sub_080060C8
	movs r0, #0xff
	bl SoftReset
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080065E4: .4byte 0x04000208
_080065E8: .4byte gUnknown_20294AC
_080065EC: .4byte 0x04000204
_080065F0: .4byte gUnknown_85EBBC0
_080065F4: .4byte gUnknown_30046E0
_080065F8: .4byte IntrMain
_080065FC: .4byte gUnknown_3004718
_08006600: .4byte gUnknown_3007FFC
	thumb_func_end AgbMain

	thumb_func_start sub_08006604
sub_08006604: @ 0x08006604
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r0, _0800664C @ =0x04000208
	mov r8, r0
	ldrh r6, [r0]
	movs r0, #0
	mov r1, r8
	strh r0, [r1]
	ldr r0, _08006650 @ =gUnknown_85EBBC0
	ldr r4, _08006654 @ =gUnknown_30046E0
	adds r1, r4, #0
	movs r2, #0x1c
	bl CpuSet
	ldr r0, _08006658 @ =IntrMain
	ldr r5, _0800665C @ =gUnknown_3004718
	adds r1, r5, #0
	movs r2, #0xc0
	bl CpuSet
	ldr r0, _08006660 @ =gUnknown_3007FFC
	str r5, [r0]
	adds r4, #0x18
	movs r0, #3
	adds r1, r4, #0
	bl SetFlashTimerIntr
	mov r0, r8
	strh r6, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800664C: .4byte 0x04000208
_08006650: .4byte gUnknown_85EBBC0
_08006654: .4byte gUnknown_30046E0
_08006658: .4byte IntrMain
_0800665C: .4byte gUnknown_3004718
_08006660: .4byte gUnknown_3007FFC
	thumb_func_end sub_08006604

	thumb_func_start sub_08006664
sub_08006664: @ 0x08006664
	ldr r0, _08006678 @ =gUnknown_2029414
	ldrh r0, [r0]
	cmp r0, #7
	bhi _080066EE
	lsls r0, r0, #2
	ldr r1, _0800667C @ =_08006680
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006678: .4byte gUnknown_2029414
_0800667C: .4byte _08006680
_08006680: @ jump table
	.4byte _080066A0 @ case 0
	.4byte _080066AC @ case 1
	.4byte _080066AC @ case 2
	.4byte _080066B8 @ case 3
	.4byte _080066C4 @ case 4
	.4byte _080066D0 @ case 5
	.4byte _080066DC @ case 6
	.4byte _080066E8 @ case 7
_080066A0:
	ldr r1, _080066A8 @ =gUnknown_202941C
	movs r0, #2
	b _080066EC
	.align 2, 0
_080066A8: .4byte gUnknown_202941C
_080066AC:
	ldr r1, _080066B4 @ =gUnknown_202941C
	movs r0, #3
	b _080066EC
	.align 2, 0
_080066B4: .4byte gUnknown_202941C
_080066B8:
	ldr r1, _080066C0 @ =gUnknown_202941C
	movs r0, #4
	b _080066EC
	.align 2, 0
_080066C0: .4byte gUnknown_202941C
_080066C4:
	ldr r1, _080066CC @ =gUnknown_202941C
	movs r0, #5
	b _080066EC
	.align 2, 0
_080066CC: .4byte gUnknown_202941C
_080066D0:
	ldr r1, _080066D8 @ =gUnknown_202941C
	movs r0, #6
	b _080066EC
	.align 2, 0
_080066D8: .4byte gUnknown_202941C
_080066DC:
	ldr r1, _080066E4 @ =gUnknown_202941C
	movs r0, #7
	b _080066EC
	.align 2, 0
_080066E4: .4byte gUnknown_202941C
_080066E8:
	ldr r1, _080066F0 @ =gUnknown_202941C
	movs r0, #8
_080066EC:
	str r0, [r1]
_080066EE:
	bx lr
	.align 2, 0
_080066F0: .4byte gUnknown_202941C
	thumb_func_end sub_08006664

	thumb_func_start sub_080066F4
sub_080066F4: @ 0x080066F4
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x10]
	ldrb r6, [r0]
	adds r0, #1
	str r0, [r3, #0x10]
	cmp r1, #0
	ble _0800675C
	ldr r7, _0800672C @ =gUnknown_2032A34
	ldr r4, _08006730 @ =gUnknown_2032A10
	adds r5, r1, #0
_0800670A:
	movs r0, #0x80
	ands r0, r6
	cmp r0, #0
	beq _08006746
	ldr r0, [r3, #0x10]
	ldrb r1, [r0]
	adds r0, #1
	str r0, [r3, #0x10]
	lsls r0, r1, #0x18
	cmp r0, #0
	bge _08006734
	movs r0, #0x7f
	ands r1, r0
	lsls r0, r1, #2
	adds r0, r0, r7
	b _08006740
	.align 2, 0
_0800672C: .4byte gUnknown_2032A34
_08006730: .4byte gUnknown_2032A10
_08006734:
	ldr r2, [r3, #0x14]
	cmp r2, #0
	bne _0800673C
_0800673A:
	b _0800673A
_0800673C:
	lsls r0, r1, #2
	adds r0, r0, r2
_08006740:
	ldr r0, [r0]
	str r0, [r4]
	b _08006750
_08006746:
	ldr r1, [r3, #0x10]
	ldrb r0, [r1]
	str r0, [r4]
	adds r1, #1
	str r1, [r3, #0x10]
_08006750:
	lsls r0, r6, #0x19
	lsrs r6, r0, #0x18
	adds r4, #4
	subs r5, #1
	cmp r5, #0
	bne _0800670A
_0800675C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080066F4

	thumb_func_start sub_08006764
sub_08006764: @ 0x08006764
	push {r4, lr}
	adds r3, r1, #0
	cmp r3, #0
	beq _0800677A
	adds r1, r0, #0
	adds r1, #0x39
	movs r0, #0xfe
	ldrb r4, [r1]
	ands r0, r4
	strb r0, [r1]
	b _08006786
_0800677A:
	adds r0, #0x39
	movs r1, #1
	ldrb r4, [r0]
	orrs r1, r4
	strb r1, [r0]
	adds r1, r0, #0
_08006786:
	cmp r3, #0
	bge _08006792
	movs r0, #4
	ldrb r4, [r1]
	orrs r0, r4
	b _08006798
_08006792:
	movs r0, #0xfb
	ldrb r4, [r1]
	ands r0, r4
_08006798:
	strb r0, [r1]
	eors r3, r2
	cmp r3, #0
	bge _080067A8
	movs r0, #2
	ldrb r2, [r1]
	orrs r0, r2
	b _080067AE
_080067A8:
	movs r0, #0xfd
	ldrb r4, [r1]
	ands r0, r4
_080067AE:
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08006764

	thumb_func_start sub_080067B8
sub_080067B8: @ 0x080067B8
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x38
	ldrb r0, [r3]
	adds r1, r0, r2
	ldr r0, [r1, #0x18]
	subs r0, #1
	str r0, [r1, #0x18]
	ldrb r1, [r3]
	adds r0, r1, r2
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _080067DA
	adds r0, r1, r2
	ldr r0, [r0, #0x1c]
	str r0, [r2, #0x10]
	b _080067E0
_080067DA:
	adds r0, r1, #4
	adds r0, #4
	strb r0, [r3]
_080067E0:
	bx lr
	.align 2, 0
	thumb_func_end sub_080067B8

	thumb_func_start sub_080067E4
sub_080067E4: @ 0x080067E4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _080067F2
	bl sub_08005618
_080067F2:
	ldr r0, [r4, #0x10]
	ldrb r5, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	lsls r0, r5, #3
	bl sub_08005630
	str r0, [r4, #0x40]
	adds r0, r4, #0
	adds r0, #0x44
	strb r5, [r0]
	ldr r2, [r4, #0x40]
	adds r6, r4, #0
	adds r6, #0x68
	movs r0, #0x69
	adds r0, r0, r4
	mov ip, r0
	cmp r5, #0
	beq _08006842
	adds r3, r5, #0
_0800681A:
	ldr r1, [r4, #0x10]
	ldrb r0, [r1]
	str r0, [r2]
	adds r1, #1
	str r1, [r4, #0x10]
	ldrb r5, [r1, #1]
	lsls r0, r5, #8
	ldrb r5, [r1]
	orrs r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r2, #4]
	ldr r0, [r4, #0x10]
	adds r0, #2
	str r0, [r4, #0x10]
	subs r3, #1
	adds r2, #8
	cmp r3, #0
	bne _0800681A
_08006842:
	movs r0, #0
	strb r0, [r6]
	mov r1, ip
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_080067E4

	thumb_func_start sub_08006850
sub_08006850: @ 0x08006850
	push {r4, r5, r6, lr}
	ldr r2, [r0, #0x10]
	ldrb r1, [r2, #1]
	lsls r3, r1, #8
	ldrb r5, [r2]
	orrs r3, r5
	adds r1, r2, #2
	str r1, [r0, #0x10]
	ldrb r5, [r1, #1]
	lsls r4, r5, #8
	ldrb r2, [r2, #2]
	orrs r4, r2
	adds r1, #2
	str r1, [r0, #0x10]
	lsls r3, r3, #3
	ldr r0, _080068A4 @ =gUnknown_85EEA4C
	adds r5, r3, r0
	ldr r6, _080068A8 @ =gUnknown_2032C34
	ldr r0, [r6]
	lsls r4, r4, #5
	ldr r1, [r5, #4]
	adds r1, r1, r4
	str r1, [r0, #0x48]
	adds r2, r0, #0
	adds r2, #0x5a
	movs r1, #2
	ldrh r3, [r2]
	orrs r1, r3
	strh r1, [r2]
	bl sub_0800233C
	cmp r0, #0
	bne _0800689C
	ldr r0, [r6]
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	bl sub_080021E0
_0800689C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080068A4: .4byte gUnknown_85EEA4C
_080068A8: .4byte gUnknown_2032C34
	thumb_func_end sub_08006850

	thumb_func_start sub_080068AC
sub_080068AC: @ 0x080068AC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x10]
	ldrb r6, [r1]
	adds r1, #1
	str r1, [r4, #0x10]
	ldrb r5, [r1]
	adds r2, r1, #1
	str r2, [r4, #0x10]
	ldrb r3, [r2, #1]
	lsls r0, r3, #8
	ldrb r1, [r1, #1]
	orrs r0, r1
	lsls r0, r0, #0x10
	ldr r1, [r4, #8]
	asrs r0, r0, #0x10
	adds r2, r2, r0
	str r2, [r1, #0x48]
	ldr r0, [r4, #8]
	adds r0, #0x5a
	movs r1, #2
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	ldr r0, [r4, #0x10]
	adds r0, #2
	str r0, [r4, #0x10]
	cmp r6, #0
	beq _080068FE
	cmp r5, #0
	beq _080068FE
	ldr r0, [r4, #8]
	bl sub_0800233C
	cmp r0, #0
	bne _080068FE
	ldr r0, [r4, #8]
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_080021E0
_080068FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_080068AC

	thumb_func_start sub_08006904
sub_08006904: @ 0x08006904
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	mov r7, sp
	str r0, [r7, #0x30]
	bl sub_0804441C
	str r0, [r7, #0x3c]
	ldr r0, [r7, #0x30]
	ldr r1, [r0, #0x10]
	ldrb r2, [r1, #1]
	lsls r0, r2, #8
	ldrb r4, [r1]
	orrs r0, r4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r1, r0
	str r0, [r7, #0x34]
	adds r1, #2
	ldr r0, [r7, #0x30]
	str r1, [r0, #0x10]
	movs r0, #0x64
	bl sub_080046D4
	str r0, [r7, #0x38]
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _0800695C @ =sub_08006960
	str r0, [r1, #4]
	mov r4, sp
	str r4, [r1, #8]
	b _08006962
	.align 2, 0
_0800695C: .4byte _08006960
_08006960: @ 0x08006960
	b _08006992
_08006962:
	str r7, [r2]
	ldr r0, [r7, #0x38]
	movs r1, #1
	ldr r2, [r7, #0x34]
	bl sub_08008000
	ldr r2, [r7, #0x3c]
	ldr r1, [r2, #4]
	ldr r1, [r1]
	str r1, [r2, #4]
	ldr r3, [r0, #0x30]
	movs r4, #8
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	ldr r1, [r7, #0x30]
	ldr r2, [r1, #8]
	movs r4, #0x3a
	ldrsh r1, [r2, r4]
	movs r4, #0x3e
	ldrsh r2, [r2, r4]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	b _080069D8
_08006992:
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _080069B0 @ =sub_080069B4
	str r0, [r1, #4]
	mov r4, sp
	str r4, [r1, #8]
	b _080069B6
	.align 2, 0
_080069B0: .4byte _080069B4
_080069B4: @ 0x080069B4
	b _080069D4
_080069B6:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _080069C8
	ldr r0, [r7, #0x38]
	bl sub_080046C0
_080069C8:
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_080069D4:
	bl sub_080443CC
_080069D8:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08006904

	thumb_func_start sub_080069E8
sub_080069E8: @ 0x080069E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	mov r7, sp
	str r0, [r7, #0x30]
	bl sub_0804441C
	str r0, [r7, #0x3c]
	ldr r1, [r7, #0x30]
	ldr r0, [r1, #0x10]
	ldrb r2, [r0, #3]
	lsls r1, r2, #0x18
	ldrb r3, [r0, #2]
	lsls r2, r3, #0x10
	adds r1, r1, r2
	ldrb r4, [r0, #1]
	lsls r2, r4, #8
	adds r1, r1, r2
	ldrb r2, [r0]
	orrs r2, r1
	str r2, [r7, #0x34]
	adds r0, #4
	ldr r3, [r7, #0x30]
	str r0, [r3, #0x10]
	movs r0, #0x64
	bl sub_080046D4
	str r0, [r7, #0x38]
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r4, [r7, #0x3c]
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08006A44 @ =sub_08006A48
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08006A4A
	.align 2, 0
_08006A44: .4byte _08006A48
_08006A48: @ 0x08006A48
	b _08006A7A
_08006A4A:
	str r7, [r2]
	ldr r0, [r7, #0x38]
	movs r1, #1
	ldr r2, [r7, #0x34]
	bl sub_08008000
	ldr r2, [r7, #0x3c]
	ldr r1, [r2, #4]
	ldr r1, [r1]
	str r1, [r2, #4]
	ldr r3, [r0, #0x30]
	movs r4, #8
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	ldr r1, [r7, #0x30]
	ldr r2, [r1, #8]
	movs r4, #0x3a
	ldrsh r1, [r2, r4]
	movs r4, #0x3e
	ldrsh r2, [r2, r4]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	b _08006AC0
_08006A7A:
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08006A98 @ =sub_08006A9C
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _08006A9E
	.align 2, 0
_08006A98: .4byte _08006A9C
_08006A9C: @ 0x08006A9C
	b _08006ABC
_08006A9E:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _08006AB0
	ldr r0, [r7, #0x38]
	bl sub_080046C0
_08006AB0:
	ldr r4, [r7, #0x3c]
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08006ABC:
	bl sub_080443CC
_08006AC0:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080069E8

	thumb_func_start sub_08006AD0
sub_08006AD0: @ 0x08006AD0
	push {r4, r5, r6, r7, lr}
	ldr r3, [r0, #0x10]
	ldrb r6, [r3]
	adds r3, #1
	str r3, [r0, #0x10]
	ldrb r2, [r3, #1]
	lsls r1, r2, #8
	ldrb r4, [r3]
	orrs r1, r4
	adds r5, r3, #2
	str r5, [r0, #0x10]
	ldrb r7, [r5, #1]
	lsls r2, r7, #8
	ldrb r3, [r3, #2]
	orrs r2, r3
	adds r4, r5, #2
	str r4, [r0, #0x10]
	ldrb r7, [r4, #1]
	lsls r3, r7, #8
	ldrb r5, [r5, #2]
	orrs r3, r5
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r3, r4, r3
	adds r4, #2
	str r4, [r0, #0x10]
	adds r0, r6, #0
	bl sub_080045CC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08006AD0

	thumb_func_start sub_08006B10
sub_08006B10: @ 0x08006B10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, [r0, #0x10]
	ldrb r1, [r2]
	mov sb, r1
	adds r2, #1
	str r2, [r0, #0x10]
	ldrb r1, [r2]
	adds r3, r2, #1
	str r3, [r0, #0x10]
	ldrb r2, [r2, #1]
	adds r6, r3, #1
	str r6, [r0, #0x10]
	ldrb r3, [r3, #1]
	mov ip, r3
	adds r5, r6, #1
	str r5, [r0, #0x10]
	ldrb r3, [r6, #1]
	mov sl, r3
	adds r7, r5, #1
	mov r8, r7
	str r7, [r0, #0x10]
	ldrb r3, [r7, #1]
	lsls r4, r3, #8
	ldrb r5, [r5, #1]
	orrs r4, r5
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	add r8, r4
	adds r6, #4
	str r6, [r0, #0x10]
	mov r3, ip
	mov r7, sl
	str r7, [sp]
	mov r0, r8
	str r0, [sp, #4]
	mov r0, sb
	bl sub_08002D6C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08006B10

	thumb_func_start sub_08006B78
sub_08006B78: @ 0x08006B78
	adds r3, r0, #0
	ldr r2, [r3, #0x10]
	adds r2, #1
	adds r0, #0x38
	ldrb r1, [r0]
	subs r1, #4
	strb r1, [r0]
	adds r0, r1, r3
	str r2, [r0, #0x18]
	ldr r0, [r3, #0x10]
	ldrb r2, [r0]
	adds r0, #1
	str r0, [r3, #0x10]
	cmp r2, #0x7f
	ble _08006BA4
	ldr r1, _08006BA0 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r2, r0
	b _08006BAC
	.align 2, 0
_08006BA0: .4byte gUnknown_2032A34
_08006BA4:
	ldr r1, [r3, #0x14]
	cmp r1, #0
	bne _08006BAC
_08006BAA:
	b _08006BAA
_08006BAC:
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r1, [r0]
	subs r1, #4
	strb r1, [r0]
	adds r0, r1, r3
	str r2, [r0, #0x18]
	bx lr
	.align 2, 0
	thumb_func_end sub_08006B78

	thumb_func_start sub_08006BC4
sub_08006BC4: @ 0x08006BC4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	ldrb r2, [r0]
	adds r0, #1
	str r0, [r5, #0x10]
	ldrb r4, [r0]
	adds r0, #1
	str r0, [r5, #0x10]
	cmp r2, #0x7f
	ble _08006BE8
	ldr r1, _08006BE4 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r0, r2
	lsls r0, r0, #2
	b _08006BF2
	.align 2, 0
_08006BE4: .4byte gUnknown_2032A34
_08006BE8:
	ldr r1, [r5, #0x14]
	cmp r1, #0
	bne _08006BF0
_08006BEE:
	b _08006BEE
_08006BF0:
	lsls r0, r2, #2
_08006BF2:
	adds r0, r0, r1
	ldr r6, [r0]
	cmp r4, #0x7f
	ble _08006C08
	ldr r1, _08006C04 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r0, r4
	lsls r0, r0, #2
	b _08006C12
	.align 2, 0
_08006C04: .4byte gUnknown_2032A34
_08006C08:
	ldr r1, [r5, #0x14]
	cmp r1, #0
	bne _08006C10
_08006C0E:
	b _08006C0E
_08006C10:
	lsls r0, r4, #2
_08006C12:
	adds r0, r0, r1
	ldr r3, [r0]
	cmp r2, #0x7f
	ble _08006C28
	ldr r1, _08006C24 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r2, r0
	b _08006C30
	.align 2, 0
_08006C24: .4byte gUnknown_2032A34
_08006C28:
	ldr r1, [r5, #0x14]
	cmp r1, #0
	bne _08006C30
_08006C2E:
	b _08006C2E
_08006C30:
	lsls r0, r2, #2
	adds r0, r0, r1
	str r3, [r0]
	cmp r4, #0x7f
	ble _08006C48
	ldr r1, _08006C44 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r4, r0
	b _08006C50
	.align 2, 0
_08006C44: .4byte gUnknown_2032A34
_08006C48:
	ldr r1, [r5, #0x14]
	cmp r1, #0
	bne _08006C50
_08006C4E:
	b _08006C4E
_08006C50:
	lsls r0, r4, #2
	adds r0, r0, r1
	str r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_08006BC4

	thumb_func_start sub_08006C5C
sub_08006C5C: @ 0x08006C5C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r5, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	ldrb r3, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	cmp r3, #0x7f
	ble _08006C84
	ldr r1, _08006C80 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r3, r0
	lsls r0, r3, #2
	adds r0, r0, r1
	b _08006C90
	.align 2, 0
_08006C80: .4byte gUnknown_2032A34
_08006C84:
	ldr r2, [r4, #0x14]
	cmp r2, #0
	bne _08006C8C
_08006C8A:
	b _08006C8A
_08006C8C:
	lsls r0, r3, #2
	adds r0, r0, r2
_08006C90:
	ldr r0, [r0]
	adds r3, r0, #0
	cmp r5, #0x7f
	ble _08006CA4
	ldr r2, _08006CA0 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r5, r0
	b _08006CAC
	.align 2, 0
_08006CA0: .4byte gUnknown_2032A34
_08006CA4:
	ldr r2, [r4, #0x14]
	cmp r2, #0
	bne _08006CAC
_08006CAA:
	b _08006CAA
_08006CAC:
	lsls r1, r5, #2
	adds r1, r1, r2
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08006C5C

	thumb_func_start sub_08006CBC
sub_08006CBC: @ 0x08006CBC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r5, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	ldrb r3, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	cmp r3, #0x7f
	ble _08006CE4
	ldr r1, _08006CE0 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r3, r0
	lsls r0, r3, #2
	adds r0, r0, r1
	b _08006CF0
	.align 2, 0
_08006CE0: .4byte gUnknown_2032A34
_08006CE4:
	ldr r2, [r4, #0x14]
	cmp r2, #0
	bne _08006CEC
_08006CEA:
	b _08006CEA
_08006CEC:
	lsls r0, r3, #2
	adds r0, r0, r2
_08006CF0:
	ldr r0, [r0]
	rsbs r3, r0, #0
	cmp r5, #0x7f
	ble _08006D04
	ldr r2, _08006D00 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r5, r0
	b _08006D0C
	.align 2, 0
_08006D00: .4byte gUnknown_2032A34
_08006D04:
	ldr r2, [r4, #0x14]
	cmp r2, #0
	bne _08006D0C
_08006D0A:
	b _08006D0A
_08006D0C:
	lsls r1, r5, #2
	adds r1, r1, r2
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08006CBC

	thumb_func_start sub_08006D1C
sub_08006D1C: @ 0x08006D1C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r2, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	ldrb r3, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	cmp r2, #0x7f
	ble _08006D40
	ldr r1, _08006D3C @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r0, r2
	lsls r0, r0, #2
	b _08006D4A
	.align 2, 0
_08006D3C: .4byte gUnknown_2032A34
_08006D40:
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bne _08006D48
_08006D46:
	b _08006D46
_08006D48:
	lsls r0, r2, #2
_08006D4A:
	adds r0, r0, r1
	ldr r5, [r0]
	cmp r3, #0x7f
	ble _08006D60
	ldr r1, _08006D5C @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r3, r0
	b _08006D68
	.align 2, 0
_08006D5C: .4byte gUnknown_2032A34
_08006D60:
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bne _08006D68
_08006D66:
	b _08006D66
_08006D68:
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r3, r5, #0
	ands r3, r0
	cmp r2, #0x7f
	ble _08006D84
	ldr r1, _08006D80 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r2, r0
	b _08006D8C
	.align 2, 0
_08006D80: .4byte gUnknown_2032A34
_08006D84:
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bne _08006D8C
_08006D8A:
	b _08006D8A
_08006D8C:
	lsls r0, r2, #2
	adds r0, r0, r1
	str r3, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08006D1C

	thumb_func_start sub_08006D98
sub_08006D98: @ 0x08006D98
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r3, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	cmp r3, #0x7f
	ble _08006DB8
	ldr r1, _08006DB4 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r0, r3
	lsls r0, r0, #2
	b _08006DC2
	.align 2, 0
_08006DB4: .4byte gUnknown_2032A34
_08006DB8:
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bne _08006DC0
_08006DBE:
	b _08006DBE
_08006DC0:
	lsls r0, r3, #2
_08006DC2:
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r0, [r4, #0x10]
	ldrb r2, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	cmp r2, #0x7f
	ble _08006DE0
	ldr r1, _08006DDC @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r2, r0
	b _08006DE8
	.align 2, 0
_08006DDC: .4byte gUnknown_2032A34
_08006DE0:
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bne _08006DE8
_08006DE6:
	b _08006DE6
_08006DE8:
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r2, r5, #0
	muls r2, r0, r2
	cmp r3, #0x7f
	ble _08006E04
	ldr r1, _08006E00 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r3, r0
	b _08006E0C
	.align 2, 0
_08006E00: .4byte gUnknown_2032A34
_08006E04:
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bne _08006E0C
_08006E0A:
	b _08006E0A
_08006E0C:
	lsls r0, r3, #2
	adds r0, r0, r1
	str r2, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08006D98

	thumb_func_start sub_08006E18
sub_08006E18: @ 0x08006E18
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	ldrb r4, [r0]
	adds r0, #1
	str r0, [r5, #0x10]
	cmp r4, #0x7f
	ble _08006E38
	ldr r1, _08006E34 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r0, r4
	lsls r0, r0, #2
	b _08006E42
	.align 2, 0
_08006E34: .4byte gUnknown_2032A34
_08006E38:
	ldr r1, [r5, #0x14]
	cmp r1, #0
	bne _08006E40
_08006E3E:
	b _08006E3E
_08006E40:
	lsls r0, r4, #2
_08006E42:
	adds r0, r0, r1
	ldr r3, [r0]
	ldr r0, [r5, #0x10]
	ldrb r2, [r0]
	adds r0, #1
	str r0, [r5, #0x10]
	cmp r2, #0x7f
	ble _08006E60
	ldr r1, _08006E5C @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r2, r0
	b _08006E68
	.align 2, 0
_08006E5C: .4byte gUnknown_2032A34
_08006E60:
	ldr r1, [r5, #0x14]
	cmp r1, #0
	bne _08006E68
_08006E66:
	b _08006E66
_08006E68:
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r3, #0
	bl Div
	adds r2, r0, #0
	cmp r4, #0x7f
	ble _08006E88
	ldr r1, _08006E84 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r4, r0
	b _08006E90
	.align 2, 0
_08006E84: .4byte gUnknown_2032A34
_08006E88:
	ldr r1, [r5, #0x14]
	cmp r1, #0
	bne _08006E90
_08006E8E:
	b _08006E8E
_08006E90:
	lsls r0, r4, #2
	adds r0, r0, r1
	str r2, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08006E18

	thumb_func_start sub_08006E9C
sub_08006E9C: @ 0x08006E9C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, _08006EC0 @ =gUnknown_2032A0C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08006EB4
	bl sub_08005618
_08006EB4:
	ldr r1, [r4, #4]
	cmp r1, #0
	bne _08006EC4
	ldr r0, [r4]
	str r0, [r5, #0x34]
	b _08006EC8
	.align 2, 0
_08006EC0: .4byte gUnknown_2032A0C
_08006EC4:
	ldr r0, [r4]
	str r0, [r1]
_08006EC8:
	ldr r1, [r4]
	cmp r1, #0
	beq _08006ED4
	ldr r0, [r4, #4]
	str r0, [r1, #4]
	b _08006ED8
_08006ED4:
	ldr r0, [r4, #4]
	str r1, [r0]
_08006ED8:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	bne _08006EE6
	adds r0, r5, #0
	adds r0, #0x5a
	movs r1, #1
	b _08006F02
_08006EE6:
	ldr r0, _08006EF8 @ =gUnknown_2032C38
	ldr r0, [r0]
	cmp r0, r4
	beq _08006EFC
	adds r0, r4, #0
	bl sub_08005618
	movs r0, #0
	b _08006F0A
	.align 2, 0
_08006EF8: .4byte gUnknown_2032C38
_08006EFC:
	adds r0, r5, #0
	adds r0, #0x5a
	movs r1, #4
_08006F02:
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	movs r0, #1
_08006F0A:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_08006E9C

	thumb_func_start sub_08006F10
sub_08006F10: @ 0x08006F10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	mov sl, r1
	movs r0, #0x74
	bl sub_08005630
	adds r2, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _08006F5C
	str r2, [r4, #0x34]
	str r0, [r2]
	str r0, [r2, #4]
	ldr r0, _08006F58 @ =gUnknown_2032A0C
	mov sb, r0
	adds r3, r2, #0
	adds r3, #0x38
	adds r1, r2, #0
	adds r1, #0x39
	str r1, [sp]
	movs r5, #0x44
	adds r5, r5, r2
	mov r8, r5
	adds r6, r2, #0
	adds r6, #0x68
	adds r5, r2, #0
	adds r5, #0x69
	movs r7, #0x6a
	adds r7, r7, r2
	mov ip, r7
	b _08006F94
	.align 2, 0
_08006F58: .4byte gUnknown_2032A0C
_08006F5C:
	adds r1, r0, #0
	ldr r0, [r1]
	ldr r3, _08006FDC @ =gUnknown_2032A0C
	mov sb, r3
	adds r3, r2, #0
	adds r3, #0x38
	adds r5, r2, #0
	adds r5, #0x39
	str r5, [sp]
	movs r7, #0x44
	adds r7, r7, r2
	mov r8, r7
	adds r6, r2, #0
	adds r6, #0x68
	adds r5, #0x30
	movs r7, #0x6a
	adds r7, r7, r2
	mov ip, r7
	cmp r0, #0
	beq _08006F8C
_08006F84:
	ldr r1, [r1]
	ldr r0, [r1]
	cmp r0, #0
	bne _08006F84
_08006F8C:
	str r2, [r1]
	str r1, [r2, #4]
	movs r0, #0
	str r0, [r2]
_08006F94:
	mov r1, sb
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r1, #0
	str r1, [r2, #0x14]
	str r1, [r2, #0x40]
	mov r7, sl
	str r7, [r2, #0xc]
	str r7, [r2, #0x10]
	movs r0, #0x20
	strb r0, [r3]
	movs r0, #0
	strh r1, [r2, #0x3a]
	str r1, [r2, #0x3c]
	str r1, [r2, #0x14]
	ldr r3, [sp]
	strb r0, [r3]
	str r4, [r2, #8]
	str r1, [r2, #0x40]
	mov r7, r8
	strb r0, [r7]
	strb r0, [r6]
	strb r0, [r5]
	mov r1, ip
	strb r0, [r1]
	adds r0, r2, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08006FDC: .4byte gUnknown_2032A0C
	thumb_func_end sub_08006F10

	thumb_func_start sub_08006FE0
sub_08006FE0: @ 0x08006FE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	mov r7, sp
	str r0, [r7, #0x30]
	str r1, [r7, #0x34]
	str r2, [r7, #0x38]
	bl sub_0804441C
	str r0, [r7, #0x3c]
	ldr r0, [r7, #0x34]
	cmp r0, #0
	beq _08007008
	ldr r0, [r7, #0x30]
	adds r0, #0x60
	ldr r1, [r7, #0x30]
	str r0, [r1]
_08007008:
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_080026D8
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08007030 @ =sub_08007034
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08007036
	.align 2, 0
_08007030: .4byte _08007034
_08007034: @ 0x08007034
	b _0800708C
_08007036:
	str r7, [r2]
	ldr r0, _08007088 @ =gUnknown_8703E80
	ldr r1, [r7, #0x30]
	str r0, [r1, #0x30]
	ldr r2, [r7, #0x38]
	ldr r1, [r2, #4]
	ldrb r2, [r2]
	ldr r0, [r7, #0x38]
	ldrb r3, [r0, #1]
	ldr r0, [r7, #0x30]
	bl sub_080024AC
	ldr r2, [r7, #0x38]
	ldrb r1, [r2, #2]
	ldr r0, [r7, #0x30]
	bl sub_080028B0
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0800706A
	ldrb r1, [r1, #2]
	movs r2, #0
	movs r3, #0x20
	bl sub_08000920
_0800706A:
	ldr r2, [r7, #0x38]
	ldr r1, [r2, #0xc]
	ldr r0, [r7, #0x30]
	bl sub_080070E0
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	ldr r2, [r7, #0x30]
	str r0, [r2, #0x48]
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	adds r0, r2, #0
	b _080070D0
	.align 2, 0
_08007088: .4byte gUnknown_8703E80
_0800708C:
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _080070AC @ =sub_080070B0
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080070B2
	.align 2, 0
_080070AC: .4byte _080070B0
_080070B0: @ 0x080070B0
	b _080070CC
_080070B2:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_080018D8
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_080070CC:
	bl sub_080443CC
_080070D0:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08006FE0

	thumb_func_start sub_080070E0
sub_080070E0: @ 0x080070E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r4, #0
	adds r3, #0x58
	movs r2, #0
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r3]
	str r1, [r4, #0x38]
	movs r0, #0xa0
	strh r0, [r4, #0x3e]
	strh r1, [r4, #0x3c]
	str r1, [r4, #0x40]
	str r1, [r4, #0x44]
	str r1, [r4, #0x34]
	str r1, [r4, #0x48]
	adds r0, r4, #0
	adds r0, #0x4d
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	adds r0, #0xe
	strh r1, [r0]
	ldr r2, _08007138 @ =gUnknown_2032A30
	ldrh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x4e
	strh r0, [r1]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800712E
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	strh r0, [r2]
_0800712E:
	ldr r1, _0800713C @ =gUnknown_2032CA8
	adds r0, r1, #0
	adds r0, #0x58
	ldrh r2, [r3]
	b _08007146
	.align 2, 0
_08007138: .4byte gUnknown_2032A30
_0800713C: .4byte gUnknown_2032CA8
_08007140:
	ldr r1, [r1, #0x50]
	adds r0, r1, #0
	adds r0, #0x58
_08007146:
	ldrh r0, [r0]
	cmp r0, r2
	blo _08007140
	ldr r1, [r1, #0x54]
	ldr r0, [r1, #0x50]
	str r0, [r4, #0x50]
	ldr r0, [r1, #0x50]
	str r4, [r0, #0x54]
	str r1, [r4, #0x54]
	str r4, [r1, #0x50]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08006F10
	adds r0, r4, #0
	bl sub_08002428
	adds r0, r4, #0
	bl sub_080023D8
	ldr r1, _0800717C @ =gUnknown_2032A08
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800717C: .4byte gUnknown_2032A08
	thumb_func_end sub_080070E0

	thumb_func_start sub_08007180
sub_08007180: @ 0x08007180
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	mov r7, sp
	str r0, [r7, #0x30]
	str r1, [r7, #0x34]
	str r2, [r7, #0x38]
	str r3, [r7, #0x3c]
	bl sub_0804441C
	str r0, [r7, #0x40]
	ldr r0, [r7, #0x34]
	cmp r0, #0
	beq _080071AA
	ldr r0, [r7, #0x30]
	adds r0, #0x60
	ldr r1, [r7, #0x30]
	str r0, [r1]
_080071AA:
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_080026D8
	ldr r2, [r7, #0x40]
	adds r2, #4
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _080071D0 @ =sub_080071D4
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080071D6
	.align 2, 0
_080071D0: .4byte _080071D4
_080071D4: @ 0x080071D4
	b _08007242
_080071D6:
	str r7, [r2]
	ldr r0, _080071F4 @ =gUnknown_8703E80
	ldr r1, [r7, #0x30]
	str r0, [r1, #0x30]
	ldr r2, [r7, #0x3c]
	cmp r2, #1
	bne _080071F8
	ldr r0, [r7, #0x38]
	ldr r1, [r0, #4]
	ldrb r2, [r0]
	ldrb r3, [r0, #1]
	ldr r0, [r7, #0x30]
	bl sub_08002454
	b _08007208
	.align 2, 0
_080071F4: .4byte gUnknown_8703E80
_080071F8:
	ldr r2, [r7, #0x38]
	ldr r1, [r2, #4]
	ldrb r2, [r2]
	ldr r0, [r7, #0x38]
	ldrb r3, [r0, #1]
	ldr r0, [r7, #0x30]
	bl sub_080024AC
_08007208:
	ldr r2, [r7, #0x38]
	ldrb r1, [r2, #2]
	ldr r0, [r7, #0x30]
	bl sub_080028B0
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _08007224
	ldrb r1, [r1, #2]
	movs r2, #0
	movs r3, #0x20
	bl sub_08000920
_08007224:
	ldr r2, [r7, #0x38]
	ldr r1, [r2, #0xc]
	ldr r0, [r7, #0x30]
	bl sub_080070E0
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	ldr r2, [r7, #0x30]
	str r0, [r2, #0x48]
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	adds r0, r2, #0
	b _08007284
_08007242:
	ldr r2, [r7, #0x40]
	adds r2, #4
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08007260 @ =sub_08007264
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08007266
	.align 2, 0
_08007260: .4byte _08007264
_08007264: @ 0x08007264
	b _08007280
_08007266:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_080018D8
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08007280:
	bl sub_080443CC
_08007284:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08007180

	thumb_func_start sub_08007294
sub_08007294: @ 0x08007294
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0x68
	adds r1, #0x69
	ldrb r0, [r0]
	ldrb r2, [r1]
	cmp r0, r2
	beq _08007338
	adds r7, r1, #0
	movs r3, #0x44
	adds r3, r3, r4
	mov ip, r3
	movs r0, #0x38
	adds r0, r0, r4
	mov r8, r0
_080072B8:
	ldrb r1, [r7]
	lsls r0, r1, #3
	adds r0, r4, r0
	adds r0, #0x48
	ldrh r6, [r0]
	movs r3, #0
	mov r2, ip
	ldrb r0, [r2]
	cmp r3, r0
	bge _080072E0
	adds r5, r0, #0
	ldr r2, [r4, #0x40]
_080072D0:
	adds r1, r2, #0
	ldr r0, [r1]
	cmp r0, r6
	beq _08007326
	adds r2, #8
	adds r3, #1
	cmp r3, r5
	blt _080072D0
_080072E0:
	movs r5, #0
_080072E2:
	ldrb r1, [r7]
	adds r1, #1
	movs r0, #0
	cmp r1, #4
	beq _080072EE
	adds r0, r1, #0
_080072EE:
	movs r6, #0
	strb r0, [r7]
	cmp r5, #0
	beq _0800732A
	lsls r0, r0, #3
	adds r0, #0x48
	adds r0, r4, r0
	adds r1, r4, #0
	adds r1, #0x6c
	movs r2, #4
	bl CpuSet
	mov r3, r8
	ldrb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x6a
	strb r0, [r1]
	ldr r1, [r4, #0x10]
	ldrb r0, [r3]
	subs r0, #4
	strb r0, [r3]
	adds r2, r0, #0
	adds r0, r2, r4
	str r1, [r0, #0x18]
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	strh r6, [r4, #0x3a]
	b _08007338
_08007326:
	adds r5, r2, #0
	b _080072E2
_0800732A:
	adds r1, r4, #0
	adds r1, #0x68
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r1, r0
	bne _080072B8
_08007338:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08007294

	thumb_func_start sub_08007344
sub_08007344: @ 0x08007344
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, [r6, #0x34]
	cmp r4, #0
	beq _080073C4
_0800734E:
	ldr r0, _080073D0 @ =gUnknown_2032C38
	str r4, [r0]
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _0800737A
	adds r0, r4, #0
	adds r0, #0x6a
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800737A
	adds r0, r4, #0
	adds r0, #0x68
	adds r1, r4, #0
	adds r1, #0x69
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0800737A
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08007294
_0800737A:
	ldrh r0, [r4, #0x3a]
	cmp r0, #0
	bne _08007390
	ldr r1, [r6, #0x30]
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	ldr r2, [r1, #0x1c]
	adds r1, r4, #0
	bl _call_via_r2
_08007390:
	adds r5, r6, #0
	adds r5, #0x5a
	movs r0, #1
	ldrh r1, [r5]
	ands r0, r1
	cmp r0, #0
	bne _080073C4
	ldrh r0, [r4, #0x3a]
	subs r0, #1
	strh r0, [r4, #0x3a]
	movs r0, #4
	ldrh r2, [r5]
	ands r0, r2
	cmp r0, #0
	beq _080073BE
	adds r0, r4, #0
	bl sub_08005618
	ldr r1, _080073D4 @ =0x0000FFFB
	adds r0, r1, #0
	ldrh r2, [r5]
	ands r0, r2
	strh r0, [r5]
_080073BE:
	ldr r4, [r4]
	cmp r4, #0
	bne _0800734E
_080073C4:
	ldr r1, _080073D0 @ =gUnknown_2032C38
	movs r0, #0
	str r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080073D0: .4byte gUnknown_2032C38
_080073D4: .4byte 0x0000FFFB
	thumb_func_end sub_08007344

	thumb_func_start sub_080073D8
sub_080073D8: @ 0x080073D8
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	ldr r2, [r0, #0x34]
	cmp r2, #0
	beq _0800744C
_080073EE:
	adds r0, r2, #0
	adds r0, #0x69
	ldrb r3, [r0]
	subs r0, #1
	ldrb r1, [r0]
	adds r1, #1
	adds r4, r0, #0
	cmp r1, #4
	bne _08007406
	cmp r3, #0
	bne _0800740A
	b _0800744C
_08007406:
	cmp r1, r3
	beq _0800744C
_0800740A:
	ldrb r1, [r4]
	lsls r0, r1, #3
	adds r0, r2, r0
	adds r0, #0x48
	strh r7, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #3
	adds r0, r2, r0
	adds r0, #0x4c
	strh r6, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #3
	adds r0, r2, r0
	adds r0, #0x4e
	strh r5, [r0]
	ldrb r1, [r4]
	lsls r0, r1, #3
	adds r0, r2, r0
	mov r1, ip
	adds r1, #0x4e
	ldrh r1, [r1]
	adds r0, #0x4a
	strh r1, [r0]
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0
	cmp r0, #4
	beq _08007444
	adds r1, r0, #0
_08007444:
	strb r1, [r4]
	ldr r2, [r2]
	cmp r2, #0
	bne _080073EE
_0800744C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080073D8

	thumb_func_start sub_08007454
sub_08007454: @ 0x08007454
	ldr r1, _080074B8 @ =gUnknown_20328C8
	mov ip, r1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #4
	mov r0, ip
	adds r0, #0x10
	adds r0, r1, r0
	movs r3, #0
	str r3, [r0]
	mov r0, ip
	adds r0, #0x14
	adds r0, r1, r0
	str r3, [r0]
	mov r0, ip
	adds r0, #0x18
	adds r0, r1, r0
	str r3, [r0]
	mov r0, ip
	adds r0, #0x1c
	adds r0, r1, r0
	str r3, [r0]
	mov r0, ip
	adds r0, #0x20
	adds r0, r1, r0
	str r3, [r0]
	mov r0, ip
	adds r0, #0x24
	adds r0, r1, r0
	str r3, [r0]
	mov r2, ip
	adds r0, r1, r2
	movs r2, #1
	strh r2, [r0, #0x2a]
	strh r2, [r0, #0x32]
	strh r3, [r0, #0x28]
	strh r3, [r0, #0x30]
	mov r0, ip
	adds r0, #0x2c
	adds r0, r1, r0
	str r3, [r0]
	mov r0, ip
	adds r0, #0x34
	adds r0, r1, r0
	str r3, [r0]
	mov r0, ip
	adds r0, #0x38
	adds r1, r1, r0
	str r3, [r1]
	bx lr
	.align 2, 0
_080074B8: .4byte gUnknown_20328C8
	thumb_func_end sub_08007454

	thumb_func_start sub_080074BC
sub_080074BC: @ 0x080074BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	mov r8, r0
	cmp r0, #1
	bhi _080074CC
	b _08007686
_080074CC:
	bl sub_08004228
	movs r4, #7
	ands r4, r0
	adds r5, r4, #0
	mov r0, r8
	cmp r0, #3
	bne _080074F2
	bl sub_08004228
	movs r1, #0x80
	lsls r1, r1, #4
	ands r1, r0
	cmp r1, #0
	bne _080074EC
	b _08007686
_080074EC:
	cmp r4, #2
	beq _080074F2
	b _08007686
_080074F2:
	mov r1, r8
	cmp r1, #2
	bne _08007514
	bl sub_08004228
	movs r1, #0x80
	lsls r1, r1, #3
	ands r1, r0
	cmp r1, #0
	bne _08007508
	b _08007686
_08007508:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08007514
	b _08007686
_08007514:
	ldr r5, _08007694 @ =gUnknown_20328C8
	mov r2, r8
	lsls r0, r2, #2
	add r0, r8
	lsls r4, r0, #4
	adds r2, r5, #0
	adds r2, #0x20
	adds r2, r4, r2
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r4, r0
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	adds r2, r5, #0
	adds r2, #0x28
	adds r2, r4, r2
	adds r0, r5, #0
	adds r0, #0x2c
	adds r0, r4, r0
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	adds r2, r5, #0
	adds r2, #0x30
	adds r2, r4, r2
	adds r0, r5, #0
	adds r0, #0x34
	adds r0, r4, r0
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	adds r3, r4, r5
	movs r6, #0x22
	ldrsh r1, [r3, r6]
	movs r7, #0xff
	adds r0, r7, #0
	ldrh r2, [r3, #0x2a]
	ands r0, r2
	lsls r0, r0, #8
	adds r2, r1, r0
	ldrh r6, [r3, #0x28]
	lsrs r1, r6, #8
	adds r0, r7, #0
	ldrh r6, [r3, #0x32]
	ands r0, r6
	lsls r0, r0, #8
	adds r1, r1, r0
	orrs r2, r1
	ldrh r0, [r3, #0x30]
	lsrs r1, r0, #8
	adds r0, r7, #0
	ldrh r6, [r3, #0x12]
	ands r0, r6
	lsls r0, r0, #8
	adds r1, r1, r0
	orrs r2, r1
	ldrh r0, [r3, #0x10]
	lsrs r1, r0, #8
	adds r0, r7, #0
	ldrh r6, [r3, #0x16]
	ands r0, r6
	lsls r0, r0, #8
	adds r1, r1, r0
	orrs r2, r1
	ldrh r0, [r3, #0x14]
	lsrs r1, r0, #8
	adds r0, r7, #0
	ldrh r6, [r3, #0x1a]
	ands r0, r6
	lsls r0, r0, #8
	adds r1, r1, r0
	orrs r2, r1
	ldrh r0, [r3, #0x18]
	lsrs r1, r0, #8
	adds r0, r7, #0
	ldrh r6, [r3, #0x1e]
	ands r0, r6
	lsls r0, r0, #8
	adds r1, r1, r0
	orrs r2, r1
	movs r0, #0xff
	lsls r0, r0, #8
	mov ip, r0
	ldrh r1, [r3, #0x1c]
	lsrs r0, r1, #8
	orrs r2, r0
	adds r0, r5, #0
	adds r0, #0x38
	adds r6, r4, r0
	ldr r0, [r6]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080075E4
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r4, r0
	ldr r0, [r0]
	cmp r2, r0
	beq _08007686
_080075E4:
	adds r0, r5, #0
	adds r0, #0x3c
	adds r0, r4, r0
	str r2, [r0]
	movs r0, #0
	str r0, [r6]
	mov r1, sp
	ldrh r2, [r3, #0x22]
	lsls r0, r2, #8
	strh r0, [r1, #0x10]
	mov r2, sp
	adds r1, r7, #0
	ldrh r6, [r3, #0x2a]
	ands r1, r6
	lsls r1, r1, #8
	mov r0, ip
	ldrh r6, [r3, #0x28]
	ands r0, r6
	lsrs r0, r0, #8
	orrs r1, r0
	strh r1, [r2, #0xc]
	adds r1, r7, #0
	ldrh r0, [r3, #0x32]
	ands r1, r0
	lsls r1, r1, #8
	mov r0, ip
	ldrh r6, [r3, #0x30]
	ands r0, r6
	lsrs r0, r0, #8
	orrs r1, r0
	strh r1, [r2, #0xe]
	adds r1, r7, #0
	ldrh r0, [r3, #0x12]
	ands r1, r0
	lsls r1, r1, #8
	mov r0, ip
	ldrh r2, [r3, #0x10]
	ands r0, r2
	lsrs r0, r0, #8
	orrs r1, r0
	str r1, [sp]
	adds r0, r7, #0
	ldrh r6, [r3, #0x16]
	ands r0, r6
	lsls r0, r0, #8
	ldrh r1, [r3, #0x14]
	mov r2, ip
	ands r1, r2
	lsrs r1, r1, #8
	orrs r0, r1
	str r0, [sp, #4]
	mov r1, sp
	ldrh r0, [r3, #0x1a]
	strh r0, [r1, #8]
	ldrh r0, [r3, #0x1e]
	strh r0, [r1, #0xa]
	adds r0, r5, #0
	adds r0, #0x40
	adds r4, r4, r0
	mov r0, sp
	adds r1, r4, #0
	movs r2, #1
	bl BgAffineSet
	ldr r0, _08007698 @ =0x04000030
	mov r6, r8
	cmp r6, #2
	bne _0800766E
	subs r0, #0x10
_0800766E:
	adds r5, r4, #0
	adds r4, r0, #0
	movs r6, #7
_08007674:
	ldrh r1, [r5]
	adds r0, r4, #0
	bl sub_0800062C
	adds r5, #2
	adds r4, #2
	subs r6, #1
	cmp r6, #0
	bge _08007674
_08007686:
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007694: .4byte gUnknown_20328C8
_08007698: .4byte 0x04000030
	thumb_func_end sub_080074BC

	thumb_func_start sub_0800769C
sub_0800769C: @ 0x0800769C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080076AC @ =gUnknown_2032CA8
	ldr r5, [r0, #0x50]
	b _08007756
	.align 2, 0
_080076AC: .4byte gUnknown_2032CA8
_080076B0:
	ldr r7, [r5, #0x50]
	ldr r0, _08007718 @ =gUnknown_2032C34
	str r5, [r0]
	adds r0, r5, #0
	bl sub_08007344
	adds r4, r5, #0
	adds r4, #0x5a
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08007724
	cmp r5, #0
	beq _08007754
	ldr r0, _0800771C @ =gUnknown_8703E80
	str r0, [r5, #0x30]
	ldr r4, [r5, #0x34]
	cmp r4, #0
	beq _080076F2
_080076D8:
	ldr r6, [r4]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08006E9C
	cmp r0, #0
	beq _080076EC
	adds r0, r4, #0
	bl sub_08005618
_080076EC:
	adds r4, r6, #0
	cmp r4, #0
	bne _080076D8
_080076F2:
	ldr r1, [r5, #0x50]
	ldr r0, [r5, #0x54]
	str r0, [r1, #0x54]
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x50]
	str r0, [r1, #0x50]
	ldr r1, _08007720 @ =gUnknown_2032A08
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080018D8
	adds r0, r5, #0
	bl sub_080046C0
	b _08007754
	.align 2, 0
_08007718: .4byte gUnknown_2032C34
_0800771C: .4byte gUnknown_8703E80
_08007720: .4byte gUnknown_2032A08
_08007724:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08007754
	adds r0, r5, #0
	bl sub_08002340
	adds r1, r5, #0
	adds r1, #0x4c
	ldrb r1, [r1]
	muls r1, r0, r1
	ldr r0, [r5, #0x48]
	adds r1, r1, r0
	adds r0, r5, #0
	bl sub_08002350
	adds r0, r5, #0
	bl sub_08002428
	ldr r1, _08007764 @ =0x0000FFFD
	adds r0, r1, #0
	ldrh r2, [r4]
	ands r0, r2
	strh r0, [r4]
_08007754:
	adds r5, r7, #0
_08007756:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	bne _080076B0
	ldr r0, _08007768 @ =gUnknown_2032CA8
	ldr r5, [r0, #0x50]
	b _0800777C
	.align 2, 0
_08007764: .4byte 0x0000FFFD
_08007768: .4byte gUnknown_2032CA8
_0800776C:
	ldr r1, [r5, #0x30]
	movs r2, #0x20
	ldrsh r0, [r1, r2]
	adds r0, r5, r0
	ldr r1, [r1, #0x24]
	bl _call_via_r1
	ldr r5, [r5, #0x50]
_0800777C:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	bne _0800776C
	ldr r6, _080077E8 @ =gUnknown_20328C8
	ldr r0, _080077EC @ =0x000001FF
	mov sl, r0
	ldr r1, _080077F0 @ =0x04000012
	mov sb, r1
	ldr r2, _080077F4 @ =0x04000010
	mov r8, r2
	adds r4, r6, #0
	movs r5, #0
	movs r7, #3
_08007796:
	adds r0, r6, #0
	adds r0, #8
	adds r0, r5, r0
	ldr r1, [r4]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r4]
	adds r2, r6, #4
	adds r2, r5, r2
	ldr r0, [r2]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r2]
	mov r1, sl
	ldrh r0, [r4, #2]
	ands r1, r0
	mov r0, r8
	bl sub_0800062C
	mov r1, sl
	ldrh r2, [r4, #6]
	ands r1, r2
	mov r0, sb
	bl sub_0800062C
	movs r0, #4
	add sb, r0
	add r8, r0
	adds r4, #0x50
	adds r5, #0x50
	subs r7, #1
	cmp r7, #0
	bge _08007796
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080077E8: .4byte gUnknown_20328C8
_080077EC: .4byte 0x000001FF
_080077F0: .4byte 0x04000012
_080077F4: .4byte 0x04000010
	thumb_func_end sub_0800769C

	thumb_func_start sub_080077F8
sub_080077F8: @ 0x080077F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08007804 @ =gUnknown_2032CA8
	ldr r5, [r0, #0x50]
	b _08007856
	.align 2, 0
_08007804: .4byte gUnknown_2032CA8
_08007808:
	ldr r7, [r5, #0x50]
	cmp r5, #0
	beq _08007854
	ldr r0, _080078AC @ =gUnknown_8703E80
	str r0, [r5, #0x30]
	ldr r4, [r5, #0x34]
	cmp r4, #0
	beq _08007832
_08007818:
	ldr r6, [r4]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08006E9C
	cmp r0, #0
	beq _0800782C
	adds r0, r4, #0
	bl sub_08005618
_0800782C:
	adds r4, r6, #0
	cmp r4, #0
	bne _08007818
_08007832:
	ldr r1, [r5, #0x50]
	ldr r0, [r5, #0x54]
	str r0, [r1, #0x54]
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x50]
	str r0, [r1, #0x50]
	ldr r1, _080078B0 @ =gUnknown_2032A08
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080018D8
	adds r0, r5, #0
	bl sub_080046C0
_08007854:
	adds r5, r7, #0
_08007856:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	bne _08007808
	movs r5, #0
	ldr r0, _080078B4 @ =gUnknown_20328C8
	mov r8, r0
	movs r7, #0
	mov r4, r8
	movs r6, #0
_08007868:
	str r7, [r4]
	mov r0, r8
	adds r0, #4
	adds r0, r6, r0
	str r7, [r0]
	mov r0, r8
	adds r0, #8
	adds r0, r6, r0
	str r7, [r0]
	str r7, [r4, #0xc]
	subs r0, r5, #2
	cmp r0, #1
	bhi _08007888
	adds r0, r5, #0
	bl sub_08007454
_08007888:
	adds r4, #0x50
	adds r6, #0x50
	adds r5, #1
	cmp r5, #3
	ble _08007868
	ldr r1, _080078B8 @ =gUnknown_2032A30
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_08000E5C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080078AC: .4byte gUnknown_8703E80
_080078B0: .4byte gUnknown_2032A08
_080078B4: .4byte gUnknown_20328C8
_080078B8: .4byte gUnknown_2032A30
	thumb_func_end sub_080077F8

	thumb_func_start sub_080078BC
sub_080078BC: @ 0x080078BC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r3, _08007930 @ =gUnknown_2032CA8
	ldr r2, _08007934 @ =gUnknown_2032C40
	str r2, [r3, #0x50]
	movs r0, #0
	str r0, [r3, #0x54]
	adds r1, r3, #0
	adds r1, #0x58
	strh r0, [r1]
	str r0, [r2, #0x50]
	str r3, [r2, #0x54]
	adds r2, #0x58
	ldr r0, _08007938 @ =0x0000FFFF
	strh r0, [r2]
	movs r5, #0
	ldr r0, _0800793C @ =gUnknown_20328C8
	mov r8, r0
	movs r7, #0
	mov r4, r8
	movs r6, #0
_080078E8:
	str r7, [r4]
	mov r0, r8
	adds r0, #4
	adds r0, r6, r0
	str r7, [r0]
	mov r0, r8
	adds r0, #8
	adds r0, r6, r0
	str r7, [r0]
	str r7, [r4, #0xc]
	subs r0, r5, #2
	cmp r0, #1
	bhi _08007908
	adds r0, r5, #0
	bl sub_08007454
_08007908:
	adds r4, #0x50
	adds r6, #0x50
	adds r5, #1
	cmp r5, #3
	ble _080078E8
	movs r2, #0
	ldr r1, _08007940 @ =gUnknown_2032A30
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _08007944 @ =gUnknown_2032A08
	str r2, [r0]
	ldr r0, _08007948 @ =gUnknown_2032A0C
	str r2, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007930: .4byte gUnknown_2032CA8
_08007934: .4byte gUnknown_2032C40
_08007938: .4byte 0x0000FFFF
_0800793C: .4byte gUnknown_20328C8
_08007940: .4byte gUnknown_2032A30
_08007944: .4byte gUnknown_2032A08
_08007948: .4byte gUnknown_2032A0C
	thumb_func_end sub_080078BC

	thumb_func_start sub_0800794C
sub_0800794C: @ 0x0800794C
	push {r4, r5, r6, lr}
	ldr r6, _080079D8 @ =gUnknown_2032C40
	ldr r0, _080079DC @ =gUnknown_8703E80
	str r0, [r6, #0x30]
	ldr r4, [r6, #0x34]
	cmp r4, #0
	beq _08007974
_0800795A:
	ldr r5, [r4]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08006E9C
	cmp r0, #0
	beq _0800796E
	adds r0, r4, #0
	bl sub_08005618
_0800796E:
	adds r4, r5, #0
	cmp r4, #0
	bne _0800795A
_08007974:
	ldr r1, [r6, #0x50]
	ldr r0, [r6, #0x54]
	str r0, [r1, #0x54]
	ldr r1, [r6, #0x54]
	ldr r0, [r6, #0x50]
	str r0, [r1, #0x50]
	ldr r1, _080079E0 @ =gUnknown_2032A08
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r6, #0
	movs r1, #0
	bl sub_080018D8
	ldr r6, _080079E4 @ =gUnknown_2032CA8
	ldr r0, _080079DC @ =gUnknown_8703E80
	str r0, [r6, #0x30]
	ldr r4, [r6, #0x34]
	cmp r4, #0
	beq _080079B6
_0800799C:
	ldr r5, [r4]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08006E9C
	cmp r0, #0
	beq _080079B0
	adds r0, r4, #0
	bl sub_08005618
_080079B0:
	adds r4, r5, #0
	cmp r4, #0
	bne _0800799C
_080079B6:
	ldr r1, [r6, #0x50]
	ldr r0, [r6, #0x54]
	str r0, [r1, #0x54]
	ldr r1, [r6, #0x54]
	ldr r0, [r6, #0x50]
	str r0, [r1, #0x50]
	ldr r1, _080079E0 @ =gUnknown_2032A08
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r6, #0
	movs r1, #0
	bl sub_080018D8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080079D8: .4byte gUnknown_2032C40
_080079DC: .4byte gUnknown_8703E80
_080079E0: .4byte gUnknown_2032A08
_080079E4: .4byte gUnknown_2032CA8
	thumb_func_end sub_0800794C

	thumb_func_start sub_080079E8
sub_080079E8: @ 0x080079E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x30
	mov r7, sp
	bl sub_0804441C
	adds r5, r0, #0
	mov sb, r5
	ldr r6, _08007A24 @ =gUnknown_2032CA8
	adds r4, r5, #0
	adds r0, r6, #0
	adds r0, #0x60
	str r0, [r6]
	adds r0, r6, #0
	movs r1, #0
	bl sub_080026D8
	adds r1, r5, #4
	ldr r0, [r5, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08007A28 @ =sub_08007A2C
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08007A2E
	.align 2, 0
_08007A24: .4byte gUnknown_2032CA8
_08007A28: .4byte _08007A2C
_08007A2C: @ 0x08007A2C
	b _08007A44
_08007A2E:
	str r7, [r1]
	ldr r0, _08007A40 @ =gUnknown_8703E80
	str r0, [r6, #0x30]
	mov r1, sb
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	b _08007A7E
	.align 2, 0
_08007A40: .4byte gUnknown_8703E80
_08007A44:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08007A5C @ =sub_08007A60
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08007A62
	.align 2, 0
_08007A5C: .4byte _08007A60
_08007A60: @ 0x08007A60
	b _08007A7A
_08007A62:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r6, #0
	movs r1, #0
	bl sub_080018D8
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08007A7A:
	bl sub_080443CC
_08007A7E:
	ldr r6, _08007AA8 @ =gUnknown_2032C40
	adds r4, r5, #0
	adds r0, r6, #0
	adds r0, #0x60
	str r0, [r6]
	adds r0, r6, #0
	movs r1, #0
	bl sub_080026D8
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08007AAC @ =sub_08007AB0
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08007AB2
	.align 2, 0
_08007AA8: .4byte gUnknown_2032C40
_08007AAC: .4byte _08007AB0
_08007AB0: @ 0x08007AB0
	b _08007AC4
_08007AB2:
	str r7, [r1]
	ldr r0, _08007AC0 @ =gUnknown_8703E80
	str r0, [r6, #0x30]
	ldr r0, [r5, #4]
	ldr r0, [r0]
	str r0, [r5, #4]
	b _08007AFE
	.align 2, 0
_08007AC0: .4byte gUnknown_8703E80
_08007AC4:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08007ADC @ =sub_08007AE0
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08007AE2
	.align 2, 0
_08007ADC: .4byte _08007AE0
_08007AE0: @ 0x08007AE0
	b _08007AFA
_08007AE2:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r6, #0
	movs r1, #0
	bl sub_080018D8
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08007AFA:
	bl sub_080443CC
_08007AFE:
	add sp, #0x30
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080079E8

	thumb_func_start sub_08007B0C
sub_08007B0C: @ 0x08007B0C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldr r0, _08007B5C @ =gUnknown_20328C8
	mov r8, r0
	movs r7, #0
	mov r4, r8
	movs r6, #0
_08007B1E:
	str r7, [r4]
	mov r0, r8
	adds r0, #4
	adds r0, r6, r0
	str r7, [r0]
	mov r0, r8
	adds r0, #8
	adds r0, r6, r0
	str r7, [r0]
	str r7, [r4, #0xc]
	subs r0, r5, #2
	cmp r0, #1
	bhi _08007B3E
	adds r0, r5, #0
	bl sub_08007454
_08007B3E:
	adds r4, #0x50
	adds r6, #0x50
	adds r5, #1
	cmp r5, #3
	ble _08007B1E
	ldr r1, _08007B60 @ =gUnknown_2032A30
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007B5C: .4byte gUnknown_20328C8
_08007B60: .4byte gUnknown_2032A30
	thumb_func_end sub_08007B0C

	thumb_func_start sub_08007B64
sub_08007B64: @ 0x08007B64
	ldr r0, _08007B6C @ =gUnknown_2032A0C
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08007B6C: .4byte gUnknown_2032A0C
	thumb_func_end sub_08007B64

	thumb_func_start sub_08007B70
sub_08007B70: @ 0x08007B70
	ldr r0, _08007B78 @ =gUnknown_2032A08
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08007B78: .4byte gUnknown_2032A08
	thumb_func_end sub_08007B70

	thumb_func_start sub_08007B7C
sub_08007B7C: @ 0x08007B7C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _08007B88 @ =gUnknown_2032CA8
	ldr r1, [r0, #0x50]
	b _08007B9C
	.align 2, 0
_08007B88: .4byte gUnknown_2032CA8
_08007B8C:
	adds r0, r1, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, r2
	bne _08007B9A
	adds r0, r1, #0
	b _08007BA4
_08007B9A:
	ldr r1, [r1, #0x50]
_08007B9C:
	ldr r0, [r1, #0x50]
	cmp r0, #0
	bne _08007B8C
	movs r0, #0
_08007BA4:
	bx lr
	.align 2, 0
	thumb_func_end sub_08007B7C

	thumb_func_start sub_08007BA8
sub_08007BA8: @ 0x08007BA8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	ldr r0, _08007C00 @ =gUnknown_2032CA8
	ldr r4, [r0, #0x50]
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _08007BF2
	ldr r0, _08007C04 @ =0x0000FFFE
	mov sb, r0
_08007BD0:
	cmp r5, sb
	beq _08007BDE
	adds r0, r4, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	cmp r0, r5
	bne _08007BEA
_08007BDE:
	adds r0, r4, #0
	mov r1, r8
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_080073D8
_08007BEA:
	ldr r4, [r4, #0x50]
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _08007BD0
_08007BF2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007C00: .4byte gUnknown_2032CA8
_08007C04: .4byte 0x0000FFFE
	thumb_func_end sub_08007BA8

	thumb_func_start sub_08007C08
sub_08007C08: @ 0x08007C08
	push {r4, r5, r6, lr}
	ldr r2, _08007C30 @ =0x04000030
	cmp r0, #2
	bne _08007C12
	subs r2, #0x10
_08007C12:
	adds r5, r1, #0
	adds r4, r2, #0
	movs r6, #7
_08007C18:
	ldrh r1, [r5]
	adds r0, r4, #0
	bl sub_0800062C
	adds r5, #2
	adds r4, #2
	subs r6, #1
	cmp r6, #0
	bge _08007C18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08007C30: .4byte 0x04000030
	thumb_func_end sub_08007C08

	thumb_func_start sub_08007C34
sub_08007C34: @ 0x08007C34
	ldr r0, [r0, #0x34]
	bx lr
	thumb_func_end sub_08007C34

	thumb_func_start sub_08007C38
sub_08007C38: @ 0x08007C38
	ldr r1, [r0, #0x38]
	ldr r2, [r0, #0x40]
	adds r1, r1, r2
	str r1, [r0, #0x38]
	ldr r1, [r0, #0x3c]
	ldr r2, [r0, #0x44]
	adds r1, r1, r2
	str r1, [r0, #0x3c]
	ldrh r1, [r0, #0x3a]
	strh r1, [r0, #4]
	ldrh r1, [r0, #0x3e]
	strh r1, [r0, #6]
	bx lr
	.align 2, 0
	thumb_func_end sub_08007C38

	thumb_func_start sub_08007C54
sub_08007C54: @ 0x08007C54
	movs r2, #0
	strh r1, [r0, #0x3e]
	strh r2, [r0, #0x3c]
	bx lr
	thumb_func_end sub_08007C54

	thumb_func_start sub_08007C5C
sub_08007C5C: @ 0x08007C5C
	movs r2, #0
	strh r1, [r0, #0x3a]
	strh r2, [r0, #0x38]
	bx lr
	thumb_func_end sub_08007C5C

	thumb_func_start sub_08007C64
sub_08007C64: @ 0x08007C64
	movs r3, #0
	strh r1, [r0, #0x3a]
	strh r2, [r0, #0x3e]
	strh r3, [r0, #0x38]
	strh r3, [r0, #0x3c]
	bx lr
	thumb_func_end sub_08007C64

	thumb_func_start sub_08007C70
sub_08007C70: @ 0x08007C70
	push {r4, lr}
	adds r4, r1, #0
	b _08007CAE
_08007C76:
	ldr r0, [r4, #0x10]
	ldrb r3, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	cmp r3, #0xbf
	bls _08007CA0
	movs r0, #0x38
	ands r0, r3
	lsrs r0, r0, #1
	ldr r1, _08007C9C @ =gUnknown_85EBD98
	adds r0, r0, r1
	movs r1, #7
	ands r3, r1
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r3, #0
	bl _call_via_r2
	b _08007CAE
	.align 2, 0
_08007C9C: .4byte gUnknown_85EBD98
_08007CA0:
	lsls r0, r3, #2
	ldr r1, _08007CBC @ =gUnknown_85EBBF8
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_08007CAE:
	ldrh r0, [r4, #0x3a]
	cmp r0, #0
	beq _08007C76
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007CBC: .4byte gUnknown_85EBBF8
	thumb_func_end sub_08007C70

	thumb_func_start sub_08007CC0
sub_08007CC0: @ 0x08007CC0
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	movs r3, #0
	adds r0, #0x44
	ldrb r0, [r0]
	cmp r3, r0
	bge _08007CE8
	adds r1, r0, #0
	ldr r2, [r2, #0x40]
_08007CD6:
	ldr r0, [r2]
	cmp r0, r4
	bne _08007CE0
	adds r0, r2, #0
	b _08007CEA
_08007CE0:
	adds r2, #8
	adds r3, #1
	cmp r3, r1
	blt _08007CD6
_08007CE8:
	movs r0, #0
_08007CEA:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08007CC0

	thumb_func_start sub_08007CF0
sub_08007CF0: @ 0x08007CF0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, _08007D4C @ =gUnknown_8703E80
	str r0, [r5, #0x30]
	ldr r4, [r5, #0x34]
	cmp r4, #0
	beq _08007D1A
_08007D00:
	ldr r6, [r4]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08006E9C
	cmp r0, #0
	beq _08007D14
	adds r0, r4, #0
	bl sub_08005618
_08007D14:
	adds r4, r6, #0
	cmp r4, #0
	bne _08007D00
_08007D1A:
	ldr r1, [r5, #0x50]
	ldr r0, [r5, #0x54]
	str r0, [r1, #0x54]
	ldr r1, [r5, #0x54]
	ldr r0, [r5, #0x50]
	str r0, [r1, #0x50]
	ldr r1, _08007D50 @ =gUnknown_2032A08
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080018D8
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _08007D44
	adds r0, r5, #0
	bl sub_080046C0
_08007D44:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08007D4C: .4byte gUnknown_8703E80
_08007D50: .4byte gUnknown_2032A08
	thumb_func_end sub_08007CF0

	thumb_func_start sub_08007D54
sub_08007D54: @ 0x08007D54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	mov r7, sp
	str r0, [r7, #0x30]
	str r1, [r7, #0x34]
	str r2, [r7, #0x38]
	str r3, [r7, #0x3c]
	bl sub_0804441C
	str r0, [r7, #0x40]
	ldr r0, [r7, #0x34]
	cmp r0, #0
	beq _08007D7E
	ldr r0, [r7, #0x30]
	adds r0, #0x60
	ldr r1, [r7, #0x30]
	str r0, [r1]
_08007D7E:
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_080026D8
	ldr r2, [r7, #0x40]
	adds r2, #4
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08007DA4 @ =sub_08007DA8
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08007DAA
	.align 2, 0
_08007DA4: .4byte _08007DA8
_08007DA8: @ 0x08007DA8
	b _08007DEC
_08007DAA:
	str r7, [r2]
	ldr r0, _08007DC8 @ =gUnknown_8703E80
	ldr r1, [r7, #0x30]
	str r0, [r1, #0x30]
	ldr r0, [sp, #0x6c]
	cmp r0, #1
	bne _08007DCC
	adds r0, r1, #0
	ldr r1, [r7, #0x3c]
	ldr r2, [sp, #0x64]
	ldr r3, [sp, #0x68]
	bl sub_08002454
	b _08007DD8
	.align 2, 0
_08007DC8: .4byte gUnknown_8703E80
_08007DCC:
	ldr r0, [r7, #0x30]
	ldr r1, [r7, #0x3c]
	ldr r2, [sp, #0x64]
	ldr r3, [sp, #0x68]
	bl sub_080024AC
_08007DD8:
	ldr r0, [r7, #0x30]
	ldr r1, [r7, #0x38]
	bl sub_080070E0
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, [r7, #0x30]
	b _08007E30
_08007DEC:
	ldr r2, [r7, #0x40]
	adds r2, #4
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08007E0C @ =sub_08007E10
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08007E12
	.align 2, 0
_08007E0C: .4byte _08007E10
_08007E10: @ 0x08007E10
	b _08007E2C
_08007E12:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_080018D8
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08007E2C:
	bl sub_080443CC
_08007E30:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08007D54

	thumb_func_start sub_08007E40
sub_08007E40: @ 0x08007E40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	mov r7, sp
	str r0, [r7, #0x30]
	str r1, [r7, #0x34]
	str r2, [r7, #0x38]
	str r3, [r7, #0x3c]
	bl sub_0804441C
	str r0, [r7, #0x40]
	ldr r0, [r7, #0x34]
	cmp r0, #0
	beq _08007E6A
	ldr r0, [r7, #0x30]
	adds r0, #0x60
	ldr r1, [r7, #0x30]
	str r0, [r1]
_08007E6A:
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_080026D8
	ldr r2, [r7, #0x40]
	adds r2, #4
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08007E90 @ =sub_08007E94
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08007E96
	.align 2, 0
_08007E90: .4byte _08007E94
_08007E94: @ 0x08007E94
	b _08007ED8
_08007E96:
	str r7, [r2]
	ldr r0, _08007EB4 @ =gUnknown_8703E80
	ldr r1, [r7, #0x30]
	str r0, [r1, #0x30]
	ldr r0, [r7, #0x3c]
	cmp r0, #1
	bne _08007EB8
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08002454
	b _08007EC4
	.align 2, 0
_08007EB4: .4byte gUnknown_8703E80
_08007EB8:
	ldr r0, [r7, #0x30]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080024AC
_08007EC4:
	ldr r0, [r7, #0x30]
	ldr r1, [r7, #0x38]
	bl sub_080070E0
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, [r7, #0x30]
	b _08007F1C
_08007ED8:
	ldr r2, [r7, #0x40]
	adds r2, #4
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08007EF8 @ =sub_08007EFC
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08007EFE
	.align 2, 0
_08007EF8: .4byte _08007EFC
_08007EFC: @ 0x08007EFC
	b _08007F18
_08007EFE:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_080018D8
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08007F18:
	bl sub_080443CC
_08007F1C:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08007E40

	thumb_func_start sub_08007F2C
sub_08007F2C: @ 0x08007F2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	add r7, sp, #4
	str r0, [r7, #0x30]
	str r1, [r7, #0x34]
	str r2, [r7, #0x38]
	str r3, [r7, #0x3c]
	bl sub_0804441C
	str r0, [r7, #0x40]
	ldr r0, [r7, #0x34]
	cmp r0, #0
	beq _08007F56
	ldr r0, [r7, #0x30]
	adds r0, #0x60
	ldr r1, [r7, #0x30]
	str r0, [r1]
_08007F56:
	ldr r0, [sp, #0x6c]
	str r0, [sp]
	ldr r0, [r7, #0x30]
	movs r1, #0
	ldr r2, [r7, #0x3c]
	ldr r3, [sp, #0x68]
	bl sub_08002608
	ldr r2, [r7, #0x40]
	adds r2, #4
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08007F84 @ =sub_08007F88
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08007F8A
	.align 2, 0
_08007F84: .4byte _08007F88
_08007F88: @ 0x08007F88
	b _08007FAC
_08007F8A:
	str r7, [r2]
	ldr r0, _08007FA8 @ =gUnknown_8703E80
	ldr r1, [r7, #0x30]
	str r0, [r1, #0x30]
	adds r0, r1, #0
	ldr r1, [r7, #0x38]
	bl sub_080070E0
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, [r7, #0x30]
	b _08007FF0
	.align 2, 0
_08007FA8: .4byte gUnknown_8703E80
_08007FAC:
	ldr r2, [r7, #0x40]
	adds r2, #4
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08007FCC @ =sub_08007FD0
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08007FD2
	.align 2, 0
_08007FCC: .4byte _08007FD0
_08007FD0: @ 0x08007FD0
	b _08007FEC
_08007FD2:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_080018D8
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08007FEC:
	bl sub_080443CC
_08007FF0:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08007F2C

	thumb_func_start sub_08008000
sub_08008000: @ 0x08008000
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	add r7, sp, #4
	str r0, [r7, #0x30]
	str r1, [r7, #0x34]
	str r2, [r7, #0x38]
	bl sub_0804441C
	str r0, [r7, #0x3c]
	ldr r0, [r7, #0x34]
	cmp r0, #0
	beq _08008028
	ldr r0, [r7, #0x30]
	adds r0, #0x60
	ldr r1, [r7, #0x30]
	str r0, [r1]
_08008028:
	movs r0, #0
	str r0, [sp]
	ldr r0, [r7, #0x30]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08002608
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08008058 @ =sub_0800805C
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0800805E
	.align 2, 0
_08008058: .4byte _0800805C
_0800805C: @ 0x0800805C
	b _08008080
_0800805E:
	str r7, [r2]
	ldr r0, _0800807C @ =gUnknown_8703E80
	ldr r1, [r7, #0x30]
	str r0, [r1, #0x30]
	adds r0, r1, #0
	ldr r1, [r7, #0x38]
	bl sub_080070E0
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, [r7, #0x30]
	b _080080C4
	.align 2, 0
_0800807C: .4byte gUnknown_8703E80
_08008080:
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _080080A0 @ =sub_080080A4
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080080A6
	.align 2, 0
_080080A0: .4byte _080080A4
_080080A4: @ 0x080080A4
	b _080080C0
_080080A6:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_080018D8
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_080080C0:
	bl sub_080443CC
_080080C4:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08008000

	thumb_func_start sub_080080D4
sub_080080D4: @ 0x080080D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	mov r7, sp
	str r0, [r7, #0x30]
	str r1, [r7, #0x34]
	bl sub_0804441C
	str r0, [r7, #0x38]
	ldr r0, [r7, #0x34]
	cmp r0, #0
	beq _080080FA
	ldr r0, [r7, #0x30]
	adds r0, #0x60
	ldr r1, [r7, #0x30]
	str r0, [r1]
_080080FA:
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_080026D8
	ldr r2, [r7, #0x38]
	adds r2, #4
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08008120 @ =sub_08008124
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08008126
	.align 2, 0
_08008120: .4byte _08008124
_08008124: @ 0x08008124
	b _08008140
_08008126:
	str r7, [r2]
	ldr r0, _0800813C @ =gUnknown_8703E80
	ldr r1, [r7, #0x30]
	str r0, [r1, #0x30]
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, [r7, #0x30]
	b _08008184
	.align 2, 0
_0800813C: .4byte gUnknown_8703E80
_08008140:
	ldr r2, [r7, #0x38]
	adds r2, #4
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08008160 @ =sub_08008164
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08008166
	.align 2, 0
_08008160: .4byte _08008164
_08008164: @ 0x08008164
	b _08008180
_08008166:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_080018D8
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08008180:
	bl sub_080443CC
_08008184:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_080080D4

	thumb_func_start sub_08008194
sub_08008194: @ 0x08008194
	adds r3, r0, #0
	ldr r2, _080081C4 @ =gUnknown_2032CA8
	adds r1, r2, #0
	adds r1, #0x58
	adds r0, #0x58
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r1, r0
	bhs _080081B4
	adds r1, r0, #0
_080081A8:
	ldr r2, [r2, #0x50]
	adds r0, r2, #0
	adds r0, #0x58
	ldrh r0, [r0]
	cmp r0, r1
	blo _080081A8
_080081B4:
	ldr r2, [r2, #0x54]
	ldr r0, [r2, #0x50]
	str r0, [r3, #0x50]
	ldr r0, [r2, #0x50]
	str r3, [r0, #0x54]
	str r2, [r3, #0x54]
	str r3, [r2, #0x50]
	bx lr
	.align 2, 0
_080081C4: .4byte gUnknown_2032CA8
	thumb_func_end sub_08008194

	thumb_func_start sub_080081C8
sub_080081C8: @ 0x080081C8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _080081DA
	bl sub_08005618
_080081DA:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _080081E4
	bl sub_08005618
_080081E4:
	str r5, [r4, #0xc]
	str r5, [r4, #0x10]
	adds r2, r4, #0
	adds r2, #0x38
	movs r1, #0
	movs r0, #0x20
	strb r0, [r2]
	movs r2, #0
	strh r1, [r4, #0x3a]
	str r1, [r4, #0x3c]
	str r1, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x39
	strb r2, [r0]
	str r6, [r4, #8]
	str r1, [r4, #0x40]
	adds r0, #0xb
	strb r2, [r0]
	adds r0, #0x24
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080081C8

	thumb_func_start sub_0800821C
sub_0800821C: @ 0x0800821C
	adds r2, r0, #0
	ldr r0, [r2, #0x34]
	cmp r0, #0
	bne _08008234
	str r1, [r2, #0x34]
	str r0, [r1]
	str r0, [r1, #4]
	ldr r3, _08008230 @ =gUnknown_2032A0C
	b _0800824E
	.align 2, 0
_08008230: .4byte gUnknown_2032A0C
_08008234:
	adds r2, r0, #0
	ldr r0, [r2]
	ldr r3, _08008258 @ =gUnknown_2032A0C
	cmp r0, #0
	beq _08008246
_0800823E:
	ldr r2, [r2]
	ldr r0, [r2]
	cmp r0, #0
	bne _0800823E
_08008246:
	str r1, [r2]
	str r2, [r1, #4]
	movs r0, #0
	str r0, [r1]
_0800824E:
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
	bx lr
	.align 2, 0
_08008258: .4byte gUnknown_2032A0C
	thumb_func_end sub_0800821C

	thumb_func_start sub_0800825C
sub_0800825C: @ 0x0800825C
	ldr r2, [r0, #8]
	adds r2, #0x4c
	strb r1, [r2]
	ldr r0, [r0, #8]
	adds r0, #0x5a
	movs r1, #2
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	bx lr
	thumb_func_end sub_0800825C

	thumb_func_start sub_08008270
sub_08008270: @ 0x08008270
	lsls r1, r1, #1
	strh r1, [r0, #0x3a]
	bx lr
	.align 2, 0
	thumb_func_end sub_08008270

	thumb_func_start sub_08008278
sub_08008278: @ 0x08008278
	strh r1, [r0, #0x3a]
	bx lr
	thumb_func_end sub_08008278

	thumb_func_start sub_0800827C
sub_0800827C: @ 0x0800827C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08005DD0
	ldr r1, _0800829C @ =0x000003FF
	ands r1, r0
	ldr r0, [r4, #0x10]
	ldrb r2, [r0]
	ands r1, r2
	str r1, [r4, #0x3c]
	adds r0, #1
	str r0, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800829C: .4byte 0x000003FF
	thumb_func_end sub_0800827C

	thumb_func_start sub_080082A0
sub_080082A0: @ 0x080082A0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08005DE0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [r4, #0x10]
	ldrb r2, [r1]
	ands r0, r2
	str r0, [r4, #0x3c]
	adds r1, #1
	str r1, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080082A0

	thumb_func_start sub_080082C0
sub_080082C0: @ 0x080082C0
	adds r3, r0, #0
	ldr r0, [r3, #0x10]
	ldrb r2, [r0]
	adds r0, #1
	str r0, [r3, #0x10]
	cmp r2, #0x7f
	ble _080082DC
	ldr r1, _080082D8 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r2, r0
	b _080082E4
	.align 2, 0
_080082D8: .4byte gUnknown_2032A34
_080082DC:
	ldr r1, [r3, #0x14]
	cmp r1, #0
	bne _080082E4
_080082E2:
	b _080082E2
_080082E4:
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r3, #8]
	lsls r0, r0, #0x10
	str r0, [r1, #0x3c]
	bx lr
	.align 2, 0
	thumb_func_end sub_080082C0

	thumb_func_start sub_080082F4
sub_080082F4: @ 0x080082F4
	adds r3, r0, #0
	ldr r0, [r3, #0x10]
	ldrb r2, [r0]
	adds r0, #1
	str r0, [r3, #0x10]
	cmp r2, #0x7f
	ble _08008310
	ldr r1, _0800830C @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r2, r0
	b _08008318
	.align 2, 0
_0800830C: .4byte gUnknown_2032A34
_08008310:
	ldr r1, [r3, #0x14]
	cmp r1, #0
	bne _08008318
_08008316:
	b _08008316
_08008318:
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r3, #8]
	lsls r0, r0, #0x10
	str r0, [r1, #0x38]
	bx lr
	.align 2, 0
	thumb_func_end sub_080082F4

	thumb_func_start sub_08008328
sub_08008328: @ 0x08008328
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x39
	movs r0, #4
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800834C
	ldr r1, [r2, #0x10]
	ldrb r3, [r1, #1]
	lsls r0, r3, #8
	ldrb r3, [r1]
	orrs r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r2, #0x10]
	b _08008352
_0800834C:
	ldr r0, [r2, #0x10]
	adds r0, #2
	str r0, [r2, #0x10]
_08008352:
	bx lr
	thumb_func_end sub_08008328

	thumb_func_start sub_08008354
sub_08008354: @ 0x08008354
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x39
	movs r0, #4
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800836E
	ldr r0, [r2, #0x10]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r0, r1
	b _08008372
_0800836E:
	ldr r0, [r2, #0x10]
	adds r0, #1
_08008372:
	str r0, [r2, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_08008354

	thumb_func_start sub_08008378
sub_08008378: @ 0x08008378
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x39
	movs r0, #4
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08008390
	ldr r0, [r2, #0x10]
	adds r0, #2
	str r0, [r2, #0x10]
	b _080083A2
_08008390:
	ldr r1, [r2, #0x10]
	ldrb r3, [r1, #1]
	lsls r0, r3, #8
	ldrb r3, [r1]
	orrs r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r2, #0x10]
_080083A2:
	bx lr
	thumb_func_end sub_08008378

	thumb_func_start sub_080083A4
sub_080083A4: @ 0x080083A4
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x39
	movs r0, #4
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080083BA
	ldr r0, [r2, #0x10]
	adds r0, #1
	b _080083C2
_080083BA:
	ldr r0, [r2, #0x10]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r0, r1
_080083C2:
	str r0, [r2, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_080083A4

	thumb_func_start sub_080083C8
sub_080083C8: @ 0x080083C8
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x39
	movs r0, #2
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080083E0
	ldr r0, [r2, #0x10]
	adds r0, #2
	str r0, [r2, #0x10]
	b _080083F2
_080083E0:
	ldr r1, [r2, #0x10]
	ldrb r3, [r1, #1]
	lsls r0, r3, #8
	ldrb r3, [r1]
	orrs r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r2, #0x10]
_080083F2:
	bx lr
	thumb_func_end sub_080083C8

	thumb_func_start sub_080083F4
sub_080083F4: @ 0x080083F4
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x39
	movs r0, #2
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800840A
	ldr r0, [r2, #0x10]
	adds r0, #1
	b _08008412
_0800840A:
	ldr r0, [r2, #0x10]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r0, r1
_08008412:
	str r0, [r2, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_080083F4

	thumb_func_start sub_08008418
sub_08008418: @ 0x08008418
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x39
	movs r0, #2
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800843C
	ldr r1, [r2, #0x10]
	ldrb r3, [r1, #1]
	lsls r0, r3, #8
	ldrb r3, [r1]
	orrs r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r2, #0x10]
	b _08008442
_0800843C:
	ldr r0, [r2, #0x10]
	adds r0, #2
	str r0, [r2, #0x10]
_08008442:
	bx lr
	thumb_func_end sub_08008418

	thumb_func_start sub_08008444
sub_08008444: @ 0x08008444
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x39
	movs r0, #2
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _0800845E
	ldr r0, [r2, #0x10]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r0, r1
	b _08008462
_0800845E:
	ldr r0, [r2, #0x10]
	adds r0, #1
_08008462:
	str r0, [r2, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_08008444

	thumb_func_start sub_08008468
sub_08008468: @ 0x08008468
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x39
	movs r0, #1
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08008480
	ldr r0, [r2, #0x10]
	adds r0, #2
	str r0, [r2, #0x10]
	b _08008492
_08008480:
	ldr r1, [r2, #0x10]
	ldrb r3, [r1, #1]
	lsls r0, r3, #8
	ldrb r3, [r1]
	orrs r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r2, #0x10]
_08008492:
	bx lr
	thumb_func_end sub_08008468

	thumb_func_start sub_08008494
sub_08008494: @ 0x08008494
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x39
	movs r0, #1
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080084AA
	ldr r0, [r2, #0x10]
	adds r0, #1
	b _080084B2
_080084AA:
	ldr r0, [r2, #0x10]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r0, r1
_080084B2:
	str r0, [r2, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_08008494

	thumb_func_start sub_080084B8
sub_080084B8: @ 0x080084B8
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x39
	movs r0, #1
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080084DC
	ldr r1, [r2, #0x10]
	ldrb r3, [r1, #1]
	lsls r0, r3, #8
	ldrb r3, [r1]
	orrs r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	str r1, [r2, #0x10]
	b _080084E2
_080084DC:
	ldr r0, [r2, #0x10]
	adds r0, #2
	str r0, [r2, #0x10]
_080084E2:
	bx lr
	thumb_func_end sub_080084B8

	thumb_func_start sub_080084E4
sub_080084E4: @ 0x080084E4
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x39
	movs r0, #1
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _080084FE
	ldr r0, [r2, #0x10]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r0, r1
	b _08008502
_080084FE:
	ldr r0, [r2, #0x10]
	adds r0, #1
_08008502:
	str r0, [r2, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_080084E4

	thumb_func_start sub_08008508
sub_08008508: @ 0x08008508
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_080066F4
	ldr r0, _08008528 @ =gUnknown_2032A10
	ldr r2, [r0]
	ldr r1, [r0, #4]
	subs r1, r2, r1
	adds r0, r4, #0
	bl sub_08006764
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008528: .4byte gUnknown_2032A10
	thumb_func_end sub_08008508

	thumb_func_start sub_0800852C
sub_0800852C: @ 0x0800852C
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x10]
	ldrb r4, [r0]
	adds r0, #1
	str r0, [r3, #0x10]
	ldrb r2, [r0]
	adds r0, #1
	str r0, [r3, #0x10]
	cmp r2, #0x7f
	ble _08008550
	ldr r1, _0800854C @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r2, r0
	b _08008558
	.align 2, 0
_0800854C: .4byte gUnknown_2032A34
_08008550:
	ldr r1, [r3, #0x14]
	cmp r1, #0
	bne _08008558
_08008556:
	b _08008556
_08008558:
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r2, r0, #0
	cmp r4, #0x7f
	ble _08008570
	ldr r1, _0800856C @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r4, r0
	b _08008578
	.align 2, 0
_0800856C: .4byte gUnknown_2032A34
_08008570:
	ldr r1, [r3, #0x14]
	cmp r1, #0
	bne _08008578
_08008576:
	b _08008576
_08008578:
	lsls r0, r4, #2
	adds r0, r0, r1
	str r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0800852C

	thumb_func_start sub_08008584
sub_08008584: @ 0x08008584
	adds r2, r0, #0
	ldr r0, [r2, #0x10]
	ldrb r1, [r0]
	adds r0, #1
	str r0, [r2, #0x10]
	cmp r1, #0x7f
	ble _080085A4
	ldr r2, _080085A0 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	b _080085B0
	.align 2, 0
_080085A0: .4byte gUnknown_2032A34
_080085A4:
	ldr r0, [r2, #0x14]
	cmp r0, #0
	bne _080085AC
_080085AA:
	b _080085AA
_080085AC:
	lsls r1, r1, #2
	adds r1, r1, r0
_080085B0:
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	bx lr
	thumb_func_end sub_08008584

	thumb_func_start sub_080085B8
sub_080085B8: @ 0x080085B8
	adds r2, r0, #0
	ldr r0, [r2, #0x10]
	ldrb r1, [r0]
	adds r0, #1
	str r0, [r2, #0x10]
	cmp r1, #0x7f
	ble _080085D8
	ldr r2, _080085D4 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	b _080085E4
	.align 2, 0
_080085D4: .4byte gUnknown_2032A34
_080085D8:
	ldr r0, [r2, #0x14]
	cmp r0, #0
	bne _080085E0
_080085DE:
	b _080085DE
_080085E0:
	lsls r1, r1, #2
	adds r1, r1, r0
_080085E4:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	bx lr
	thumb_func_end sub_080085B8

	thumb_func_start sub_080085EC
sub_080085EC: @ 0x080085EC
	adds r1, r0, #0
	ldr r0, [r1, #0x10]
	ldrb r2, [r0]
	movs r3, #0
	adds r0, #1
	str r0, [r1, #0x10]
	cmp r2, #0x7f
	ble _08008608
	ldr r1, _08008604 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r2, r0
	b _08008610
	.align 2, 0
_08008604: .4byte gUnknown_2032A34
_08008608:
	ldr r1, [r1, #0x14]
	cmp r1, #0
	bne _08008610
_0800860E:
	b _0800860E
_08008610:
	lsls r0, r2, #2
	adds r0, r0, r1
	str r3, [r0]
	bx lr
	thumb_func_end sub_080085EC

	thumb_func_start sub_08008618
sub_08008618: @ 0x08008618
	adds r3, r0, #0
	ldr r0, [r3, #0x10]
	ldrb r2, [r0]
	adds r0, #1
	str r0, [r3, #0x10]
	cmp r2, #0x7f
	ble _08008634
	ldr r1, _08008630 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r2, r0
	b _0800863C
	.align 2, 0
_08008630: .4byte gUnknown_2032A34
_08008634:
	ldr r1, [r3, #0x14]
	cmp r1, #0
	bne _0800863C
_0800863A:
	b _0800863A
_0800863C:
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r3, #0x3c]
	bx lr
	.align 2, 0
	thumb_func_end sub_08008618

	thumb_func_start sub_08008648
sub_08008648: @ 0x08008648
	adds r1, r0, #0
	ldr r0, [r1, #0x10]
	ldrb r2, [r0]
	ldr r3, [r1, #0x3c]
	adds r0, #1
	str r0, [r1, #0x10]
	cmp r2, #0x7f
	ble _08008664
	ldr r1, _08008660 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r2, r0
	b _0800866C
	.align 2, 0
_08008660: .4byte gUnknown_2032A34
_08008664:
	ldr r1, [r1, #0x14]
	cmp r1, #0
	bne _0800866C
_0800866A:
	b _0800866A
_0800866C:
	lsls r0, r2, #2
	adds r0, r0, r1
	str r3, [r0]
	bx lr
	thumb_func_end sub_08008648

	thumb_func_start sub_08008674
sub_08008674: @ 0x08008674
	adds r3, r0, #0
	ldr r0, [r3, #0x10]
	ldrb r2, [r0]
	adds r0, #1
	str r0, [r3, #0x10]
	cmp r2, #0x7f
	ble _08008690
	ldr r1, _0800868C @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r2, r0
	b _08008698
	.align 2, 0
_0800868C: .4byte gUnknown_2032A34
_08008690:
	ldr r1, [r3, #0x14]
	cmp r1, #0
	bne _08008698
_08008696:
	b _08008696
_08008698:
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r3, #0x3a]
	bx lr
	.align 2, 0
	thumb_func_end sub_08008674

	thumb_func_start sub_080086A4
sub_080086A4: @ 0x080086A4
	adds r1, r0, #0
	ldr r0, [r1, #0x10]
	ldrb r2, [r0]
	adds r0, #1
	str r0, [r1, #0x10]
	ldrb r3, [r0]
	adds r0, #1
	str r0, [r1, #0x10]
	cmp r2, #0x7f
	ble _080086C4
	ldr r1, _080086C0 @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r2, r0
	b _080086CC
	.align 2, 0
_080086C0: .4byte gUnknown_2032A34
_080086C4:
	ldr r1, [r1, #0x14]
	cmp r1, #0
	bne _080086CC
_080086CA:
	b _080086CA
_080086CC:
	lsls r0, r2, #2
	adds r0, r0, r1
	str r3, [r0]
	bx lr
	thumb_func_end sub_080086A4

	thumb_func_start sub_080086D4
sub_080086D4: @ 0x080086D4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _080086E4
	bl sub_08005618
_080086E4:
	ldr r0, [r5, #0x10]
	ldrb r4, [r0]
	adds r0, #1
	str r0, [r5, #0x10]
	lsls r0, r4, #2
	bl sub_08005630
	adds r1, r0, #0
	str r1, [r5, #0x14]
	mov r2, sp
	movs r0, #0
	strh r0, [r2]
	lsls r4, r4, #1
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r4, r0
	mov r0, sp
	adds r2, r4, #0
	bl CpuSet
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_080086D4

	thumb_func_start sub_08008714
sub_08008714: @ 0x08008714
	ldr r1, [r0, #0x10]
	ldrb r3, [r1]
	adds r1, #1
	str r1, [r0, #0x10]
	ldr r2, _08008738 @ =gUnknown_20328C8
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r1, r2, #0
	adds r1, #8
	adds r1, r0, r1
	movs r3, #0
	str r3, [r1]
	adds r2, #0xc
	adds r0, r0, r2
	str r3, [r0]
	bx lr
	.align 2, 0
_08008738: .4byte gUnknown_20328C8
	thumb_func_end sub_08008714

	thumb_func_start sub_0800873C
sub_0800873C: @ 0x0800873C
	push {r4, lr}
	ldr r1, [r0, #0x10]
	ldrb r4, [r1]
	adds r1, #1
	str r1, [r0, #0x10]
	ldrb r2, [r1, #1]
	lsls r3, r2, #8
	ldrb r1, [r1]
	orrs r3, r1
	lsls r3, r3, #0x10
	ldr r1, _08008770 @ =gUnknown_20328C8
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r2, r2, #4
	adds r1, #0xc
	adds r2, r2, r1
	asrs r3, r3, #8
	ldr r1, [r2]
	adds r1, r1, r3
	str r1, [r2]
	ldr r1, [r0, #0x10]
	adds r1, #2
	str r1, [r0, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008770: .4byte gUnknown_20328C8
	thumb_func_end sub_0800873C

	thumb_func_start sub_08008774
sub_08008774: @ 0x08008774
	push {r4, lr}
	ldr r1, [r0, #0x10]
	ldrb r4, [r1]
	adds r1, #1
	str r1, [r0, #0x10]
	ldrb r2, [r1, #1]
	lsls r3, r2, #8
	ldrb r1, [r1]
	orrs r3, r1
	lsls r3, r3, #0x10
	ldr r1, _080087A8 @ =gUnknown_20328C8
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r2, r2, #4
	adds r1, #8
	adds r2, r2, r1
	asrs r3, r3, #8
	ldr r1, [r2]
	adds r1, r1, r3
	str r1, [r2]
	ldr r1, [r0, #0x10]
	adds r1, #2
	str r1, [r0, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080087A8: .4byte gUnknown_20328C8
	thumb_func_end sub_08008774

	thumb_func_start sub_080087AC
sub_080087AC: @ 0x080087AC
	push {r4, lr}
	ldr r1, [r0, #0x10]
	ldrb r4, [r1]
	adds r1, #1
	str r1, [r0, #0x10]
	ldrb r3, [r1, #1]
	lsls r2, r3, #8
	ldrb r1, [r1]
	orrs r2, r1
	lsls r2, r2, #0x10
	ldr r3, _080087DC @ =gUnknown_20328C8
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #4
	adds r3, #0xc
	adds r1, r1, r3
	asrs r2, r2, #8
	str r2, [r1]
	ldr r1, [r0, #0x10]
	adds r1, #2
	str r1, [r0, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080087DC: .4byte gUnknown_20328C8
	thumb_func_end sub_080087AC

	thumb_func_start sub_080087E0
sub_080087E0: @ 0x080087E0
	push {r4, lr}
	ldr r1, [r0, #0x10]
	ldrb r4, [r1]
	adds r1, #1
	str r1, [r0, #0x10]
	ldrb r3, [r1, #1]
	lsls r2, r3, #8
	ldrb r1, [r1]
	orrs r2, r1
	lsls r2, r2, #0x10
	ldr r3, _08008810 @ =gUnknown_20328C8
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #4
	adds r3, #8
	adds r1, r1, r3
	asrs r2, r2, #8
	str r2, [r1]
	ldr r1, [r0, #0x10]
	adds r1, #2
	str r1, [r0, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008810: .4byte gUnknown_20328C8
	thumb_func_end sub_080087E0

	thumb_func_start sub_08008814
sub_08008814: @ 0x08008814
	push {r4, lr}
	ldr r1, [r0, #0x10]
	ldrb r4, [r1]
	adds r1, #1
	str r1, [r0, #0x10]
	ldrb r2, [r1, #1]
	lsls r3, r2, #8
	ldrb r1, [r1]
	orrs r3, r1
	lsls r3, r3, #0x10
	ldr r1, _08008848 @ =gUnknown_20328C8
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r2, r2, #4
	adds r1, #4
	adds r2, r2, r1
	asrs r3, r3, #8
	ldr r1, [r2]
	adds r1, r1, r3
	str r1, [r2]
	ldr r1, [r0, #0x10]
	adds r1, #2
	str r1, [r0, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008848: .4byte gUnknown_20328C8
	thumb_func_end sub_08008814

	thumb_func_start sub_0800884C
sub_0800884C: @ 0x0800884C
	push {r4, lr}
	ldr r1, [r0, #0x10]
	ldrb r4, [r1]
	adds r1, #1
	str r1, [r0, #0x10]
	ldrb r2, [r1, #1]
	lsls r3, r2, #8
	ldrb r1, [r1]
	orrs r3, r1
	lsls r3, r3, #0x10
	ldr r1, _08008880 @ =gUnknown_20328C8
	lsls r2, r4, #2
	adds r2, r2, r4
	lsls r2, r2, #4
	adds r2, r2, r1
	asrs r3, r3, #8
	ldr r1, [r2]
	adds r1, r1, r3
	str r1, [r2]
	ldr r1, [r0, #0x10]
	adds r1, #2
	str r1, [r0, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008880: .4byte gUnknown_20328C8
	thumb_func_end sub_0800884C

	thumb_func_start sub_08008884
sub_08008884: @ 0x08008884
	push {r4, lr}
	ldr r2, [r0, #0x10]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r0, #0x10]
	ldr r4, _080088AC @ =gUnknown_20328C8
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #4
	adds r1, r1, r4
	ldrb r3, [r2]
	movs r4, #0
	strh r3, [r1, #6]
	adds r2, #1
	str r2, [r0, #0x10]
	strh r4, [r1, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080088AC: .4byte gUnknown_20328C8
	thumb_func_end sub_08008884

	thumb_func_start sub_080088B0
sub_080088B0: @ 0x080088B0
	push {r4, lr}
	ldr r2, [r0, #0x10]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r0, #0x10]
	ldr r4, _080088D8 @ =gUnknown_20328C8
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #4
	adds r1, r1, r4
	ldrb r3, [r2]
	movs r4, #0
	strh r3, [r1, #2]
	adds r2, #1
	str r2, [r0, #0x10]
	strh r4, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080088D8: .4byte gUnknown_20328C8
	thumb_func_end sub_080088B0

	thumb_func_start sub_080088DC
sub_080088DC: @ 0x080088DC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x10]
	ldrb r1, [r4]
	adds r4, #1
	str r4, [r5, #0x10]
	movs r2, #0xf
	ands r2, r1
	asrs r1, r1, #4
	ldrb r3, [r4, #1]
	lsls r0, r3, #8
	ldrb r3, [r4]
	orrs r0, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r4, r0
	adds r3, r4, #2
	str r3, [r5, #0x10]
	ldrb r3, [r4, #2]
	adds r4, #3
	str r4, [r5, #0x10]
	bl LoadPalette
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_080088DC

	thumb_func_start sub_08008910
sub_08008910: @ 0x08008910
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x10]
	ldrb r4, [r0]
	adds r0, #1
	str r0, [r2, #0x10]
	cmp r4, #0
	bne _0800892C
	ldr r0, [r2, #8]
	adds r0, #0x5a
	movs r1, #1
	strh r1, [r0]
	strh r1, [r2, #0x3a]
	b _08008950
_0800892C:
	movs r6, #1
	ldr r0, _08008934 @ =0x0000FFFF
	adds r5, r0, #0
	b _08008946
	.align 2, 0
_08008934: .4byte 0x0000FFFF
_08008938:
	adds r1, r0, #0
	adds r1, #0x5a
	strh r6, [r1]
	subs r1, #0xc
	ldrh r0, [r1]
	orrs r0, r5
	strh r0, [r1]
_08008946:
	adds r0, r4, #0
	bl sub_08007B7C
	cmp r0, #0
	bne _08008938
_08008950:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08008910

	thumb_func_start sub_08008958
sub_08008958: @ 0x08008958
	ldr r1, [r0, #8]
	ldr r2, [r0, #0x10]
	ldrb r3, [r2]
	adds r1, #0x4e
	strh r3, [r1]
	adds r2, #1
	str r2, [r0, #0x10]
	bx lr
	thumb_func_end sub_08008958

	thumb_func_start sub_08008968
sub_08008968: @ 0x08008968
	push {r4, lr}
	ldr r4, [r0]
	cmp r4, #0
	beq _08008984
	ldr r0, [r4]
	cmp r0, #0
	beq _0800897A
	bl sub_08008990
_0800897A:
	ldr r0, _0800898C @ =gUnknown_2032C34
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_08006E9C
_08008984:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800898C: .4byte gUnknown_2032C34
	thumb_func_end sub_08008968

	thumb_func_start sub_08008990
sub_08008990: @ 0x08008990
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0800899E
	bl sub_08008990
_0800899E:
	ldr r0, _080089B0 @ =gUnknown_2032C34
	ldr r0, [r0]
	adds r1, r4, #0
	bl sub_08006E9C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080089B0: .4byte gUnknown_2032C34
	thumb_func_end sub_08008990

	thumb_func_start sub_080089B4
sub_080089B4: @ 0x080089B4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	adds r1, r4, #0
	bl sub_08006E9C
	ldrh r0, [r4, #0x3a]
	adds r0, #1
	strh r0, [r4, #0x3a]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_080089B4

	thumb_func_start sub_080089CC
sub_080089CC: @ 0x080089CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	ldrb r3, [r1, #1]
	lsls r2, r3, #8
	ldrb r3, [r1]
	orrs r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	bl sub_08006F10
	ldr r0, [r4, #0x10]
	adds r0, #2
	str r0, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080089CC

	thumb_func_start sub_080089F4
sub_080089F4: @ 0x080089F4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r5, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	adds r1, r5, #0
	bl sub_080028B0
	ldr r0, [r4, #0x10]
	ldrb r2, [r0, #1]
	lsls r1, r2, #8
	ldrb r2, [r0]
	orrs r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08000920
	ldr r0, [r4, #0x10]
	adds r0, #2
	str r0, [r4, #0x10]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080089F4

	thumb_func_start sub_08008A30
sub_08008A30: @ 0x08008A30
	push {r4, r5, lr}
	ldr r1, [r0, #0x10]
	ldrb r5, [r1]
	adds r1, #1
	str r1, [r0, #0x10]
	ldrb r2, [r1, #1]
	lsls r4, r2, #8
	ldrb r2, [r1]
	orrs r4, r2
	adds r1, #2
	str r1, [r0, #0x10]
	ldr r0, _08008A68 @ =gUnknown_2032C34
	ldr r0, [r0]
	adds r1, r5, #0
	bl sub_080028B0
	ldr r0, _08008A6C @ =gUnknown_85EEA54
	lsls r4, r4, #2
	adds r4, r4, r0
	ldr r0, [r4]
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08000920
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008A68: .4byte gUnknown_2032C34
_08008A6C: .4byte gUnknown_85EEA54
	thumb_func_end sub_08008A30

	thumb_func_start sub_08008A70
sub_08008A70: @ 0x08008A70
	push {lr}
	ldr r3, [r0, #8]
	ldr r2, [r0, #0x10]
	ldrb r1, [r2]
	adds r2, #1
	str r2, [r0, #0x10]
	adds r0, r3, #0
	bl sub_080028B0
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08008A70

	thumb_func_start sub_08008A88
sub_08008A88: @ 0x08008A88
	push {lr}
	ldr r3, [r0, #8]
	ldr r2, [r0, #0x10]
	ldrb r1, [r2]
	adds r2, #1
	str r2, [r0, #0x10]
	adds r0, r3, #0
	bl sub_08001798
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08008A88

	thumb_func_start sub_08008AA0
sub_08008AA0: @ 0x08008AA0
	push {lr}
	ldr r0, [r0, #8]
	movs r1, #2
	bl sub_08001664
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08008AA0

	thumb_func_start sub_08008AB0
sub_08008AB0: @ 0x08008AB0
	push {lr}
	ldr r0, [r0, #8]
	movs r1, #1
	bl sub_08001664
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08008AB0

	thumb_func_start sub_08008AC0
sub_08008AC0: @ 0x08008AC0
	ldr r1, [r0, #8]
	adds r1, #0x4c
	ldrb r2, [r1]
	subs r2, #1
	strb r2, [r1]
	ldr r0, [r0, #8]
	adds r0, #0x5a
	movs r1, #2
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	bx lr
	thumb_func_end sub_08008AC0

	thumb_func_start sub_08008AD8
sub_08008AD8: @ 0x08008AD8
	ldr r1, [r0, #8]
	adds r1, #0x4c
	ldrb r2, [r1]
	adds r2, #1
	strb r2, [r1]
	ldr r0, [r0, #8]
	adds r0, #0x5a
	movs r1, #2
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	bx lr
	thumb_func_end sub_08008AD8

	thumb_func_start sub_08008AF0
sub_08008AF0: @ 0x08008AF0
	ldr r1, [r0, #8]
	ldr r2, [r0, #0x10]
	ldrb r3, [r2]
	adds r1, #0x4c
	strb r3, [r1]
	adds r2, #1
	str r2, [r0, #0x10]
	ldr r0, [r0, #8]
	adds r0, #0x5a
	movs r1, #2
	ldrh r2, [r0]
	orrs r1, r2
	strh r1, [r0]
	bx lr
	thumb_func_end sub_08008AF0

	thumb_func_start sub_08008B0C
sub_08008B0C: @ 0x08008B0C
	push {r4, lr}
	ldr r3, [r0, #0x10]
	ldrb r2, [r3, #3]
	lsls r1, r2, #0x18
	ldrb r4, [r3, #2]
	lsls r2, r4, #0x10
	adds r1, r1, r2
	ldrb r4, [r3, #1]
	lsls r2, r4, #8
	adds r1, r1, r2
	ldrb r3, [r3]
	orrs r1, r3
	ldr r2, [r0, #8]
	str r1, [r2, #0x48]
	ldr r1, [r0, #8]
	adds r1, #0x5a
	movs r2, #2
	ldrh r3, [r1]
	orrs r2, r3
	strh r2, [r1]
	ldr r1, [r0, #0x10]
	adds r1, #4
	str r1, [r0, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08008B0C

	thumb_func_start sub_08008B40
sub_08008B40: @ 0x08008B40
	ldr r1, [r0, #8]
	movs r2, #0
	str r2, [r1, #0x40]
	ldr r0, [r0, #8]
	str r2, [r0, #0x44]
	bx lr
	thumb_func_end sub_08008B40

	thumb_func_start sub_08008B4C
sub_08008B4C: @ 0x08008B4C
	ldr r2, [r0, #0x10]
	ldrb r3, [r2, #1]
	lsls r1, r3, #8
	ldrb r2, [r2]
	orrs r1, r2
	lsls r1, r1, #0x10
	ldr r3, [r0, #8]
	asrs r1, r1, #8
	ldr r2, [r3, #0x44]
	adds r2, r2, r1
	str r2, [r3, #0x44]
	ldr r1, [r0, #0x10]
	adds r1, #2
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_08008B4C

	thumb_func_start sub_08008B6C
sub_08008B6C: @ 0x08008B6C
	ldr r2, [r0, #0x10]
	ldrb r3, [r2, #1]
	lsls r1, r3, #8
	ldrb r2, [r2]
	orrs r1, r2
	lsls r1, r1, #0x10
	ldr r3, [r0, #8]
	asrs r1, r1, #8
	ldr r2, [r3, #0x40]
	adds r2, r2, r1
	str r2, [r3, #0x40]
	ldr r1, [r0, #0x10]
	adds r1, #2
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_08008B6C

	thumb_func_start sub_08008B8C
sub_08008B8C: @ 0x08008B8C
	ldr r2, [r0, #0x10]
	ldrb r3, [r2, #1]
	lsls r1, r3, #8
	ldrb r2, [r2]
	orrs r1, r2
	lsls r1, r1, #0x10
	ldr r2, [r0, #8]
	asrs r1, r1, #8
	str r1, [r2, #0x44]
	ldr r1, [r0, #0x10]
	adds r1, #2
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_08008B8C

	thumb_func_start sub_08008BA8
sub_08008BA8: @ 0x08008BA8
	ldr r2, [r0, #0x10]
	ldrb r3, [r2, #1]
	lsls r1, r3, #8
	ldrb r2, [r2]
	orrs r1, r2
	lsls r1, r1, #0x10
	ldr r2, [r0, #8]
	asrs r1, r1, #8
	str r1, [r2, #0x40]
	ldr r1, [r0, #0x10]
	adds r1, #2
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_08008BA8

	thumb_func_start sub_08008BC4
sub_08008BC4: @ 0x08008BC4
	ldr r1, [r0, #0x10]
	ldrb r3, [r1, #1]
	lsls r2, r3, #8
	ldrb r1, [r1]
	orrs r2, r1
	ldr r3, [r0, #8]
	lsls r2, r2, #0x10
	ldr r1, [r3, #0x3c]
	adds r1, r1, r2
	str r1, [r3, #0x3c]
	ldr r1, [r0, #0x10]
	adds r1, #2
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_08008BC4

	thumb_func_start sub_08008BE0
sub_08008BE0: @ 0x08008BE0
	ldr r1, [r0, #0x10]
	ldrb r3, [r1, #1]
	lsls r2, r3, #8
	ldrb r1, [r1]
	orrs r2, r1
	ldr r3, [r0, #8]
	lsls r2, r2, #0x10
	ldr r1, [r3, #0x38]
	adds r1, r1, r2
	str r1, [r3, #0x38]
	ldr r1, [r0, #0x10]
	adds r1, #2
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_08008BE0

	thumb_func_start sub_08008BFC
sub_08008BFC: @ 0x08008BFC
	ldr r2, [r0, #0x10]
	ldrb r3, [r2, #1]
	lsls r1, r3, #8
	ldrb r2, [r2]
	orrs r1, r2
	ldr r2, [r0, #8]
	lsls r1, r1, #0x10
	str r1, [r2, #0x3c]
	ldr r1, [r0, #0x10]
	adds r1, #2
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_08008BFC

	thumb_func_start sub_08008C14
sub_08008C14: @ 0x08008C14
	ldr r2, [r0, #0x10]
	ldrb r3, [r2, #1]
	lsls r1, r3, #8
	ldrb r2, [r2]
	orrs r1, r2
	ldr r2, [r0, #8]
	lsls r1, r1, #0x10
	str r1, [r2, #0x38]
	ldr r1, [r0, #0x10]
	adds r1, #2
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_08008C14

	thumb_func_start sub_08008C2C
sub_08008C2C: @ 0x08008C2C
	ldr r1, [r0, #0x3c]
	strh r1, [r0, #0x3a]
	bx lr
	.align 2, 0
	thumb_func_end sub_08008C2C

	thumb_func_start sub_08008C34
sub_08008C34: @ 0x08008C34
	ldr r2, [r0, #0x10]
	ldrb r3, [r2, #1]
	lsls r1, r3, #8
	ldrb r3, [r2]
	orrs r1, r3
	strh r1, [r0, #0x3a]
	adds r2, #2
	str r2, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_08008C34

	thumb_func_start sub_08008C48
sub_08008C48: @ 0x08008C48
	ldr r1, [r0, #0x10]
	ldrb r2, [r1]
	strh r2, [r0, #0x3a]
	adds r1, #1
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_08008C48

	thumb_func_start sub_08008C54
sub_08008C54: @ 0x08008C54
	adds r2, r0, #0
	adds r2, #0x38
	movs r3, #0
	movs r1, #0x20
	strb r1, [r2]
	adds r0, #0x6a
	strb r3, [r0]
	bx lr
	thumb_func_end sub_08008C54

	thumb_func_start sub_08008C64
sub_08008C64: @ 0x08008C64
	push {r4, lr}
	ldr r1, [r0, #0x10]
	ldrb r2, [r1]
	adds r1, #1
	str r1, [r0, #0x10]
	ldrb r4, [r1]
	adds r1, #1
	str r1, [r0, #0x10]
	adds r0, r2, #0
	bl sub_08007B7C
	adds r3, r0, #0
	cmp r3, #0
	beq _08008C92
	adds r1, r4, #0
	ldr r0, _08008C98 @ =gUnknown_2032C34
	ldr r0, [r0]
	adds r0, #0x4e
	ldrh r2, [r0]
	adds r0, r3, #0
	movs r3, #0
	bl sub_080073D8
_08008C92:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008C98: .4byte gUnknown_2032C34
	thumb_func_end sub_08008C64

	thumb_func_start sub_08008C9C
sub_08008C9C: @ 0x08008C9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _08008CAA
	bl sub_08005618
_08008CAA:
	movs r1, #0
	str r1, [r4, #0x40]
	adds r0, r4, #0
	adds r0, #0x6a
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08008C9C

	thumb_func_start sub_08008CBC
sub_08008CBC: @ 0x08008CBC
	ldr r1, [r0, #0x10]
	ldrb r2, [r1]
	str r2, [r0, #0x3c]
	adds r1, #1
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_08008CBC

	thumb_func_start sub_08008CC8
sub_08008CC8: @ 0x08008CC8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x10]
	ldrb r0, [r1, #3]
	lsls r3, r0, #0x18
	ldrb r2, [r1, #2]
	lsls r0, r2, #0x10
	adds r3, r3, r0
	ldrb r2, [r1, #1]
	lsls r0, r2, #8
	adds r3, r3, r0
	ldrb r1, [r1]
	orrs r3, r1
	ldr r0, [r4, #8]
	ldr r2, [r4, #0x3c]
	adds r1, r4, #0
	bl _call_via_r3
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x10]
	adds r0, #4
	str r0, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08008CC8

	thumb_func_start sub_08008CFC
sub_08008CFC: @ 0x08008CFC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r1, [r0]
	lsls r2, r1, #2
	ldr r1, _08008D24 @ =gUnknown_85EE9F4
	adds r2, r2, r1
	adds r0, #1
	str r0, [r4, #0x10]
	ldr r0, _08008D28 @ =gUnknown_2032C34
	ldr r0, [r0]
	ldr r2, [r2]
	adds r1, r4, #0
	bl _call_via_r2
	str r0, [r4, #0x3c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008D24: .4byte gUnknown_85EE9F4
_08008D28: .4byte gUnknown_2032C34
	thumb_func_end sub_08008CFC

	thumb_func_start sub_08008D2C
sub_08008D2C: @ 0x08008D2C
	adds r2, r0, #0
	adds r2, #0x38
	ldrb r1, [r2]
	adds r1, #4
	strb r1, [r2]
	adds r1, r1, r0
	ldr r1, [r1, #0x14]
	str r1, [r0, #0x10]
	adds r1, r0, #0
	adds r1, #0x6a
	ldrb r2, [r2]
	ldrb r0, [r1]
	cmp r2, r0
	bne _08008D4C
	movs r0, #0
	strb r0, [r1]
_08008D4C:
	bx lr
	.align 2, 0
	thumb_func_end sub_08008D2C

	thumb_func_start sub_08008D50
sub_08008D50: @ 0x08008D50
	push {r4, lr}
	ldr r3, [r0, #0x10]
	adds r3, #4
	adds r1, r0, #0
	adds r1, #0x38
	ldrb r2, [r1]
	subs r2, #4
	strb r2, [r1]
	adds r1, r2, r0
	str r3, [r1, #0x18]
	ldr r3, [r0, #0x10]
	ldrb r2, [r3, #3]
	lsls r1, r2, #0x18
	ldrb r4, [r3, #2]
	lsls r2, r4, #0x10
	adds r1, r1, r2
	ldrb r4, [r3, #1]
	lsls r2, r4, #8
	adds r1, r1, r2
	ldrb r3, [r3]
	orrs r1, r3
	str r1, [r0, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08008D50

	thumb_func_start sub_08008D84
sub_08008D84: @ 0x08008D84
	ldr r3, [r0, #0x10]
	adds r3, #2
	adds r1, r0, #0
	adds r1, #0x38
	ldrb r2, [r1]
	subs r2, #4
	strb r2, [r1]
	adds r1, r2, r0
	str r3, [r1, #0x18]
	ldr r2, [r0, #0x10]
	ldrb r3, [r2, #1]
	lsls r1, r3, #8
	ldrb r3, [r2]
	orrs r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r2, r1
	str r2, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_08008D84

	thumb_func_start sub_08008DAC
sub_08008DAC: @ 0x08008DAC
	ldr r2, [r0, #0x10]
	ldrb r3, [r2, #1]
	lsls r1, r3, #8
	ldrb r3, [r2]
	orrs r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r2, r1
	str r2, [r0, #0x10]
	bx lr
	thumb_func_end sub_08008DAC

	thumb_func_start sub_08008DC0
sub_08008DC0: @ 0x08008DC0
	ldr r1, [r0, #0x10]
	movs r2, #0
	ldrsb r2, [r1, r2]
	adds r1, r1, r2
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_08008DC0

	thumb_func_start sub_08008DCC
sub_08008DCC: @ 0x08008DCC
	adds r2, r0, #0
	ldr r0, [r2, #0x3c]
	cmp r0, #0
	beq _08008DDE
	ldr r0, [r2, #0x10]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r0, r1
	b _08008DE2
_08008DDE:
	ldr r0, [r2, #0x10]
	adds r0, #1
_08008DE2:
	str r0, [r2, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_08008DCC

	thumb_func_start sub_08008DE8
sub_08008DE8: @ 0x08008DE8
	adds r2, r0, #0
	ldr r0, [r2, #0x3c]
	cmp r0, #0
	bne _08008DFA
	ldr r0, [r2, #0x10]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r0, r1
	b _08008DFE
_08008DFA:
	ldr r0, [r2, #0x10]
	adds r0, #1
_08008DFE:
	str r0, [r2, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_08008DE8

	thumb_func_start sub_08008E04
sub_08008E04: @ 0x08008E04
	bx lr
	.align 2, 0
	thumb_func_end sub_08008E04

	thumb_func_start sub_08008E08
sub_08008E08: @ 0x08008E08
	bx lr
	.align 2, 0
	thumb_func_end sub_08008E08

	thumb_func_start sub_08008E0C
sub_08008E0C: @ 0x08008E0C
	ldr r1, _08008E34 @ =0x0000FFFF
	strh r1, [r0, #0x3a]
	ldr r1, _08008E38 @ =gUnknown_2032C34
	ldr r1, [r1]
	adds r1, #0x5a
	movs r2, #8
	ldrh r3, [r1]
	orrs r2, r3
	strh r2, [r1]
	adds r2, r0, #0
	adds r2, #0x39
	movs r1, #0x80
	ldrb r3, [r2]
	orrs r1, r3
	strb r1, [r2]
	ldr r1, [r0, #0x10]
	subs r1, #1
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0
_08008E34: .4byte 0x0000FFFF
_08008E38: .4byte gUnknown_2032C34
	thumb_func_end sub_08008E0C

	thumb_func_start sub_08008E3C
sub_08008E3C: @ 0x08008E3C
	adds r2, r0, #0
	ldr r0, [r2, #0x3c]
	cmp r0, #0
	beq _08008E5A
	adds r0, r2, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r1, #4
	adds r1, #4
	strb r1, [r0]
	ldr r0, [r2, #0x10]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r0, r1
	b _08008E5E
_08008E5A:
	ldr r0, [r2, #0x10]
	adds r0, #1
_08008E5E:
	str r0, [r2, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_08008E3C

	thumb_func_start sub_08008E64
sub_08008E64: @ 0x08008E64
	adds r2, r0, #0
	ldr r0, [r2, #0x3c]
	cmp r0, #0
	bne _08008E82
	adds r0, r2, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r1, #4
	adds r1, #4
	strb r1, [r0]
	ldr r0, [r2, #0x10]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r0, r0, r1
	b _08008E86
_08008E82:
	ldr r0, [r2, #0x10]
	adds r0, #1
_08008E86:
	str r0, [r2, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end sub_08008E64

	thumb_func_start sub_08008E8C
sub_08008E8C: @ 0x08008E8C
	push {r4, lr}
	ldr r3, [r0, #0x10]
	adds r2, r0, #0
	adds r2, #0x38
	ldrb r1, [r2]
	subs r1, #4
	strb r1, [r2]
	adds r1, r1, r0
	str r3, [r1, #0x18]
	ldr r3, [r0, #0x3c]
	ldrb r1, [r2]
	subs r1, #4
	strb r1, [r2]
	adds r0, r1, r0
	str r3, [r0, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08008E8C

	thumb_func_start sub_08008EB0
sub_08008EB0: @ 0x08008EB0
	push {r4, lr}
	ldr r2, [r0, #0x10]
	adds r2, #1
	adds r3, r0, #0
	adds r3, #0x38
	ldrb r1, [r3]
	subs r1, #4
	strb r1, [r3]
	adds r1, r1, r0
	str r2, [r1, #0x18]
	ldr r1, [r0, #0x10]
	ldrb r2, [r1]
	adds r1, #1
	str r1, [r0, #0x10]
	ldrb r1, [r3]
	subs r1, #4
	strb r1, [r3]
	adds r0, r1, r0
	str r2, [r0, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08008EB0

	thumb_func_start sub_08008EDC
sub_08008EDC: @ 0x08008EDC
	ldr r1, [r0, #8]
	adds r1, #0x5a
	movs r2, #1
	strh r2, [r1]
	strh r2, [r0, #0x3a]
	bx lr
	thumb_func_end sub_08008EDC

	thumb_func_start sub_08008EE8
sub_08008EE8: @ 0x08008EE8
	bx lr
	.align 2, 0
	thumb_func_end sub_08008EE8

	thumb_func_start sub_08008EEC
sub_08008EEC: @ 0x08008EEC
	adds r3, r1, #0
	cmp r3, #0x7f
	ble _08008F00
	ldr r0, _08008EFC @ =gUnknown_2032A34
	movs r1, #0x7f
	ands r1, r3
	lsls r1, r1, #2
	b _08008F0A
	.align 2, 0
_08008EFC: .4byte gUnknown_2032A34
_08008F00:
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _08008F08
_08008F06:
	b _08008F06
_08008F08:
	lsls r1, r3, #2
_08008F0A:
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	bx lr
	thumb_func_end sub_08008EEC

	thumb_func_start sub_08008F14
sub_08008F14: @ 0x08008F14
	adds r2, r1, #0
	cmp r2, #0x7f
	ble _08008F2C
	ldr r0, _08008F28 @ =gUnknown_2032A34
	movs r1, #0x7f
	ands r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	b _08008F3A
	.align 2, 0
_08008F28: .4byte gUnknown_2032A34
_08008F2C:
	ldr r1, [r0, #0x14]
	cmp r1, #0
	bne _08008F34
_08008F32:
	b _08008F32
_08008F34:
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
_08008F3A:
	bx lr
	thumb_func_end sub_08008F14

	thumb_func_start sub_08008F3C
sub_08008F3C: @ 0x08008F3C
	adds r3, r1, #0
	cmp r3, #0x7f
	ble _08008F50
	ldr r1, _08008F4C @ =gUnknown_2032A34
	movs r0, #0x7f
	ands r0, r3
	lsls r0, r0, #2
	b _08008F5A
	.align 2, 0
_08008F4C: .4byte gUnknown_2032A34
_08008F50:
	ldr r1, [r0, #0x14]
	cmp r1, #0
	bne _08008F58
_08008F56:
	b _08008F56
_08008F58:
	lsls r0, r3, #2
_08008F5A:
	adds r0, r0, r1
	str r2, [r0]
	bx lr
	thumb_func_end sub_08008F3C

	thumb_func_start sub_08008F60
sub_08008F60: @ 0x08008F60
	ldr r2, [r0, #0x10]
	ldrb r1, [r2, #3]
	lsls r0, r1, #0x18
	ldrb r3, [r2, #2]
	lsls r1, r3, #0x10
	adds r0, r0, r1
	ldrb r3, [r2, #1]
	lsls r1, r3, #8
	adds r0, r0, r1
	ldrb r2, [r2]
	orrs r0, r2
	bx lr
	thumb_func_end sub_08008F60

	thumb_func_start sub_08008F78
sub_08008F78: @ 0x08008F78
	ldr r1, [r0, #0x10]
	ldrb r2, [r1, #1]
	lsls r0, r2, #8
	ldrb r1, [r1]
	orrs r0, r1
	bx lr
	thumb_func_end sub_08008F78

	thumb_func_start sub_08008F84
sub_08008F84: @ 0x08008F84
	adds r2, r0, #0
	adds r2, #0x38
	ldrb r2, [r2]
	adds r1, r2, r1
	adds r1, r1, r0
	ldr r0, [r1, #0x18]
	bx lr
	.align 2, 0
	thumb_func_end sub_08008F84

	thumb_func_start sub_08008F94
sub_08008F94: @ 0x08008F94
	adds r3, r0, #0
	adds r3, #0x38
	ldrb r1, [r3]
	adds r2, r1, r0
	ldr r1, [r2, #0x18]
	subs r1, #1
	str r1, [r2, #0x18]
	ldrb r3, [r3]
	adds r0, r3, r0
	ldr r0, [r0, #0x18]
	bx lr
	.align 2, 0
	thumb_func_end sub_08008F94

	thumb_func_start sub_08008FAC
sub_08008FAC: @ 0x08008FAC
	adds r3, r0, #0
	adds r3, #0x38
	ldrb r1, [r3]
	adds r2, r1, r0
	ldr r1, [r2, #0x18]
	adds r1, #1
	str r1, [r2, #0x18]
	ldrb r3, [r3]
	adds r0, r3, r0
	ldr r0, [r0, #0x18]
	bx lr
	.align 2, 0
	thumb_func_end sub_08008FAC

	thumb_func_start sub_08008FC4
sub_08008FC4: @ 0x08008FC4
	adds r1, r0, #0
	adds r1, #0x38
	ldrb r2, [r1]
	adds r2, #4
	strb r2, [r1]
	adds r0, r2, r0
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end sub_08008FC4

	thumb_func_start sub_08008FD4
sub_08008FD4: @ 0x08008FD4
	adds r2, r0, #0
	adds r2, #0x38
	ldrb r3, [r2]
	subs r3, #4
	strb r3, [r2]
	adds r0, r3, r0
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end sub_08008FD4

	thumb_func_start sub_08008FE4
sub_08008FE4: @ 0x08008FE4
	ldr r2, _08008FF0 @ =gUnknown_2032A34
	lsls r0, r0, #2
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08008FF0: .4byte gUnknown_2032A34
	thumb_func_end sub_08008FE4

	thumb_func_start sub_08008FF4
sub_08008FF4: @ 0x08008FF4
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _08009010 @ =gUnknown_20328C8
	lsls r3, r0, #2
	adds r3, r3, r0
	lsls r3, r3, #4
	adds r3, r3, r4
	strh r1, [r3, #2]
	strh r2, [r3, #6]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009010: .4byte gUnknown_20328C8
	thumb_func_end sub_08008FF4

	thumb_func_start sub_08009014
sub_08009014: @ 0x08009014
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _08009034 @ =gUnknown_20328C8
	lsls r3, r0, #2
	adds r3, r3, r0
	lsls r3, r3, #4
	adds r3, r3, r4
	ldrh r0, [r3, #2]
	strh r0, [r1]
	ldrh r0, [r3, #6]
	strh r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009034: .4byte gUnknown_20328C8
	thumb_func_end sub_08009014

	thumb_func_start sub_08009038
sub_08009038: @ 0x08009038
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080090DC @ =0x04000200
	mov r8, r0
	ldrh r0, [r0]
	ldr r1, _080090E0 @ =gUnknown_2032D28
	strh r0, [r1]
	ldr r2, _080090E4 @ =0x04000208
	ldrh r0, [r2]
	ldr r1, _080090E8 @ =gUnknown_2032D2A
	strh r0, [r1]
	movs r0, #0
	mov r2, r8
	strh r0, [r2]
	ldr r1, _080090E4 @ =0x04000208
	strh r0, [r1]
	ldr r6, _080090EC @ =gUnknown_2032D18
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_080055B0
	str r0, [r6]
	ldr r0, _080090F0 @ =0x00004CE0
	bl sub_080055B0
	ldr r2, _080090F4 @ =gUnknown_2032D14
	mov sl, r2
	str r0, [r2]
	movs r0, #0xc3
	lsls r0, r0, #5
	bl sub_080055B0
	ldr r1, _080090F8 @ =gUnknown_2032D10
	mov sb, r1
	str r0, [r1]
	ldr r5, _080090FC @ =0x04000204
	ldrh r1, [r5]
	ldr r4, _08009100 @ =0x0000E7FF
	adds r0, r4, #0
	ands r0, r1
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5]
	bl sub_08009104
	adds r7, r0, #0
	ldrh r0, [r5]
	ands r4, r0
	strh r4, [r5]
	ldr r0, [r6]
	bl sub_08005598
	mov r1, sl
	ldr r0, [r1]
	bl sub_08005598
	mov r2, sb
	ldr r0, [r2]
	bl sub_08005598
	ldr r1, _080090E0 @ =gUnknown_2032D28
	ldrh r0, [r1]
	mov r2, r8
	strh r0, [r2]
	ldr r1, _080090E8 @ =gUnknown_2032D2A
	ldrh r0, [r1]
	ldr r2, _080090E4 @ =0x04000208
	strh r0, [r2]
	adds r0, r7, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080090DC: .4byte 0x04000200
_080090E0: .4byte gUnknown_2032D28
_080090E4: .4byte 0x04000208
_080090E8: .4byte gUnknown_2032D2A
_080090EC: .4byte gUnknown_2032D18
_080090F0: .4byte 0x00004CE0
_080090F4: .4byte gUnknown_2032D14
_080090F8: .4byte gUnknown_2032D10
_080090FC: .4byte 0x04000204
_08009100: .4byte 0x0000E7FF
	thumb_func_end sub_08009038

	thumb_func_start sub_08009104
sub_08009104: @ 0x08009104
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	movs r0, #1
	bl sub_0800547C
	bl sub_080099C8
	ldr r0, _08009144 @ =gUnknown_2032D20
	ldr r1, _08009148 @ =gUnknown_2032D18
	ldr r1, [r1]
	str r1, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #3
	str r1, [r0]
	ldr r1, _0800914C @ =gUnknown_3003140
	bl _call_via_r1
	adds r6, r0, #0
	cmp r6, #0
	beq _08009132
	b _08009286
_08009132:
	ldr r0, _08009150 @ =gUnknown_30002C4
	bl _call_via_r0
	adds r6, r0, #0
	cmp r6, #0
	beq _08009154
	bl sub_080099F0
	b _080091C8
	.align 2, 0
_08009144: .4byte gUnknown_2032D20
_08009148: .4byte gUnknown_2032D18
_0800914C: .4byte gUnknown_3003140
_08009150: .4byte gUnknown_30002C4
_08009154:
	movs r2, #1
	ldr r1, _0800918C @ =gUnknown_2028B64
	ldr r0, [r1, #4]
	subs r0, #1
	cmp r0, #0x11
	bhi _0800916A
	ldr r0, [r1, #8]
	subs r0, #1
	cmp r0, #0x11
	bhi _0800916A
	movs r2, #0
_0800916A:
	ldr r0, [r1, #4]
	subs r0, #0x19
	cmp r0, #0x1b
	bhi _0800917C
	ldr r0, [r1, #8]
	subs r0, #0x19
	cmp r0, #0x1b
	bhi _0800917C
	movs r2, #0
_0800917C:
	cmp r2, #0
	beq _08009198
	bl sub_080099F0
	ldr r1, _08009190 @ =gUnknown_2029394
	ldr r0, _08009194 @ =0x00000307
	b _08009252
	.align 2, 0
_0800918C: .4byte gUnknown_2028B64
_08009190: .4byte gUnknown_2029394
_08009194: .4byte 0x00000307
_08009198:
	ldr r0, _080091D4 @ =gUnknown_2028B78
	mov r8, r0
	movs r2, #0x81
	lsls r2, r2, #4
	movs r1, #0
	bl memset
	bl sub_080099A0
	ldr r6, _080091D8 @ =gUnknown_3000000
	add r4, sp, #8
	mov r5, sp
	adds r5, #0xa
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, sp
	mov r3, r8
	bl _call_via_r6
	adds r6, r0, #0
	bl sub_080099F0
	cmp r6, #0
	bge _080091E0
_080091C8:
	ldr r0, _080091DC @ =gUnknown_2029394
	str r6, [r0]
	movs r0, #1
	negs r0, r0
	b _08009286
	.align 2, 0
_080091D4: .4byte gUnknown_2028B78
_080091D8: .4byte gUnknown_3000000
_080091DC: .4byte gUnknown_2029394
_080091E0:
	ldrh r1, [r4]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	beq _080091F8
	ldr r1, _080091F0 @ =gUnknown_2029394
	ldr r0, _080091F4 @ =0x00000306
	b _08009252
	.align 2, 0
_080091F0: .4byte gUnknown_2029394
_080091F4: .4byte 0x00000306
_080091F8:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x1d
	cmp r0, #7
	bne _08009218
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08009218
	ldr r1, _08009214 @ =gUnknown_2029394
	movs r0, #0xc2
	lsls r0, r0, #2
	b _08009252
	.align 2, 0
_08009214: .4byte gUnknown_2029394
_08009218:
	ldr r1, _0800925C @ =gUnknown_20294A0
	ldrh r0, [r5]
	strh r0, [r1]
	ldr r1, _08009260 @ =gUnknown_20294A2
	ldrh r0, [r4]
	strh r0, [r1]
	ldr r1, _08009264 @ =gUnknown_20294A4
	ldr r0, [sp]
	str r0, [r1]
	ldr r0, [sp, #4]
	str r0, [r1, #4]
	ldr r0, _08009268 @ =gUnknown_2029420
	ldr r0, [r0]
	movs r4, #1
	negs r4, r4
	cmp r0, r4
	beq _08009280
	ldr r0, _0800926C @ =gUnknown_2029414
	ldrh r0, [r0]
	cmp r0, #7
	bne _08009280
	ldr r0, _08009270 @ =gUnknown_2028B78
	ldr r1, _08009274 @ =gUnknown_20294D0
	bl strcmp
	cmp r0, #0
	beq _08009280
	ldr r1, _08009278 @ =gUnknown_2029394
	ldr r0, _0800927C @ =0x00000309
_08009252:
	str r0, [r1]
	movs r0, #1
	negs r0, r0
	b _08009286
	.align 2, 0
_0800925C: .4byte gUnknown_20294A0
_08009260: .4byte gUnknown_20294A2
_08009264: .4byte gUnknown_20294A4
_08009268: .4byte gUnknown_2029420
_0800926C: .4byte gUnknown_2029414
_08009270: .4byte gUnknown_2028B78
_08009274: .4byte gUnknown_20294D0
_08009278: .4byte gUnknown_2029394
_0800927C: .4byte 0x00000309
_08009280:
	bl sub_08009294
	movs r0, #0
_08009286:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08009104

	thumb_func_start sub_08009294
sub_08009294: @ 0x08009294
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _080092F4 @ =gUnknown_2029390
	ldr r6, _080092F8 @ =gUnknown_20294A0
	ldrh r0, [r6]
	str r0, [r1]
	ldr r7, _080092FC @ =gUnknown_2029414
	ldr r0, _08009300 @ =gUnknown_20294A2
	mov sb, r0
	ldrh r1, [r0]
	lsls r0, r1, #0x10
	lsrs r3, r0, #0x1d
	strh r3, [r7]
	ldr r5, _08009304 @ =gUnknown_2027800
	lsrs r4, r0, #0x14
	ldr r2, _08009308 @ =0x000001FF
	mov sl, r2
	mov r0, sl
	ands r4, r0
	strh r4, [r5, #4]
	ldrh r1, [r6]
	movs r2, #7
	mov r8, r2
	mov r0, r8
	ands r0, r1
	strb r0, [r5, #2]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x13
	movs r2, #0x7f
	ands r0, r2
	strb r0, [r5, #3]
	lsrs r1, r1, #0x1a
	movs r0, #0x1f
	ands r1, r0
	strb r1, [r5, #1]
	cmp r3, #7
	bne _08009350
	ldr r0, _0800930C @ =gUnknown_2029420
	ldr r0, [r0]
	cmp r0, #8
	beq _08009310
	bl sub_08026F5C
	b _0800931C
	.align 2, 0
_080092F4: .4byte gUnknown_2029390
_080092F8: .4byte gUnknown_20294A0
_080092FC: .4byte gUnknown_2029414
_08009300: .4byte gUnknown_20294A2
_08009304: .4byte gUnknown_2027800
_08009308: .4byte 0x000001FF
_0800930C: .4byte gUnknown_2029420
_08009310:
	ldr r0, _08009338 @ =gUnknown_20294B8
	ldrh r0, [r0, #6]
	cmp r0, r4
	beq _0800931C
	bl sub_08026F5C
_0800931C:
	bl sub_08026F68
	ldr r1, _0800933C @ =gUnknown_2029388
	ldr r2, _08009340 @ =gUnknown_20294A4
	ldr r0, [r2]
	str r0, [r1]
	ldr r1, _08009344 @ =gUnknown_202938C
	ldr r0, [r2, #4]
	str r0, [r1]
	ldr r1, _08009348 @ =gUnknown_2029398
	ldr r0, _0800934C @ =gUnknown_2027800
	ldrh r0, [r0, #4]
	strb r0, [r1]
	b _0800957C
	.align 2, 0
_08009338: .4byte gUnknown_20294B8
_0800933C: .4byte gUnknown_2029388
_08009340: .4byte gUnknown_20294A4
_08009344: .4byte gUnknown_202938C
_08009348: .4byte gUnknown_2029398
_0800934C: .4byte gUnknown_2027800
_08009350:
	ldrh r0, [r6]
	bl sub_0801CB10
	ldr r0, _0800939C @ =gUnknown_2029416
	ldrh r3, [r0]
	cmp r3, #1
	beq _08009360
	b _08009474
_08009360:
	movs r0, #0
	strh r0, [r7]
	ldr r6, _080093A0 @ =gUnknown_20294A4
	ldr r2, [r6]
	mov r0, sb
	ldrh r1, [r0]
	movs r0, #0xf
	mov ip, r0
	movs r7, #0xf
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r5]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x1d
	mov r0, r8
	ands r1, r0
	strb r1, [r5, #7]
	movs r1, #1
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r5, #6]
	strb r3, [r5, #8]
	cmp r0, #0
	beq _080093A8
	ldr r1, _080093A4 @ =gUnknown_202780C
	lsrs r0, r2, #1
	strb r0, [r1]
	bl sub_080098C0
	b _0800957C
	.align 2, 0
_0800939C: .4byte gUnknown_2029416
_080093A0: .4byte gUnknown_20294A4
_080093A4: .4byte gUnknown_202780C
_080093A8:
	ldr r5, _0800945C @ =gUnknown_202780C
	lsrs r0, r2, #1
	strb r0, [r5]
	lsrs r1, r2, #9
	ands r1, r7
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	strb r0, [r5, #1]
	lsrs r0, r2, #0xd
	mov r1, ip
	ands r0, r1
	strb r0, [r5, #8]
	lsrs r0, r2, #0x11
	mov r2, sl
	ands r0, r2
	strh r0, [r5, #2]
	ldr r2, _08009460 @ =gUnknown_2026564
	ldr r0, [r6, #4]
	ldr r1, _08009464 @ =0x000FFFFF
	ands r0, r1
	str r0, [r2]
	ldr r2, _08009468 @ =gUnknown_2026568
	adds r0, r6, #6
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x14
	ldr r4, _0800946C @ =gUnknown_2028B78
	ldrb r3, [r4]
	lsls r1, r3, #0xc
	orrs r0, r1
	str r0, [r2]
	ldrb r6, [r6, #4]
	lsrs r0, r6, #4
	mov r1, ip
	ands r0, r1
	strb r0, [r5, #9]
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r5, #0xa]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	mov r2, ip
	ands r1, r2
	strb r1, [r5, #0xb]
	adds r0, r5, #0
	adds r0, #0xc
	adds r1, r4, #1
	movs r2, #0xc
	bl memcpy
	adds r0, r5, #0
	adds r0, #0x18
	adds r1, r4, #0
	adds r1, #0xd
	bl sub_0800998C
	adds r0, r5, #0
	adds r0, #0x2f
	adds r1, r4, #0
	adds r1, #0x19
	movs r2, #0x12
	bl memcpy
	adds r0, r5, #0
	adds r0, #0x41
	adds r1, r4, #0
	adds r1, #0x2b
	bl sub_0800998C
	movs r3, #0x8f
	lsls r3, r3, #1
	adds r0, r5, r3
	adds r1, r4, #0
	adds r1, #0x9a
	bl sub_08005350
	movs r1, #0x97
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08009648
	adds r1, r0, #0
	ldr r2, _08009470 @ =0x00000A84
	adds r0, r5, r2
	bl sub_08009764
	b _0800957C
	.align 2, 0
_0800945C: .4byte gUnknown_202780C
_08009460: .4byte gUnknown_2026564
_08009464: .4byte 0x000FFFFF
_08009468: .4byte gUnknown_2026568
_0800946C: .4byte gUnknown_2028B78
_08009470: .4byte 0x00000A84
_08009474:
	ldrh r0, [r7]
	subs r0, #1
	cmp r0, #6
	bls _0800947E
	b _0800957C
_0800947E:
	lsls r0, r0, #2
	ldr r1, _08009488 @ =_0800948C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009488: .4byte _0800948C
_0800948C: @ jump table
	.4byte _080094A8 @ case 0
	.4byte _080094A8 @ case 1
	.4byte _080094E4 @ case 2
	.4byte _080094F0 @ case 3
	.4byte _08009524 @ case 4
	.4byte _0800955C @ case 5
	.4byte _0800957C @ case 6
_080094A8:
	ldr r0, _080094D0 @ =gUnknown_2029420
	ldr r0, [r0]
	cmp r0, #3
	beq _080094B4
	bl sub_08026F5C
_080094B4:
	bl sub_08026F68
	ldr r1, _080094D4 @ =gUnknown_2029388
	ldr r2, _080094D8 @ =gUnknown_20294A4
	ldr r0, [r2]
	str r0, [r1]
	ldr r1, _080094DC @ =gUnknown_202938C
	ldr r0, [r2, #4]
	str r0, [r1]
	ldr r1, _080094E0 @ =gUnknown_2029398
	movs r0, #0x81
	strb r0, [r1]
	b _0800957C
	.align 2, 0
_080094D0: .4byte gUnknown_2029420
_080094D4: .4byte gUnknown_2029388
_080094D8: .4byte gUnknown_20294A4
_080094DC: .4byte gUnknown_202938C
_080094E0: .4byte gUnknown_2029398
_080094E4:
	ldr r0, _080094EC @ =gUnknown_2028B78
	bl sub_0803664C
	b _0800957C
	.align 2, 0
_080094EC: .4byte gUnknown_2028B78
_080094F0:
	ldr r0, _08009510 @ =gUnknown_2029420
	ldr r0, [r0]
	cmp r0, #5
	beq _080094FC
	bl sub_080294E4
_080094FC:
	ldr r2, _08009514 @ =gUnknown_2029388
	ldr r0, _08009518 @ =gUnknown_20294A4
	ldr r1, [r0]
	str r1, [r2]
	ldr r0, _0800951C @ =gUnknown_20294A0
	ldrh r0, [r0]
	ldr r2, _08009520 @ =gUnknown_2028B78
	bl sub_080294F0
	b _0800957C
	.align 2, 0
_08009510: .4byte gUnknown_2029420
_08009514: .4byte gUnknown_2029388
_08009518: .4byte gUnknown_20294A4
_0800951C: .4byte gUnknown_20294A0
_08009520: .4byte gUnknown_2028B78
_08009524:
	ldr r0, _08009548 @ =gUnknown_2029420
	ldr r0, [r0]
	cmp r0, #6
	beq _08009530
	bl sub_0802E444
_08009530:
	ldr r0, _0800954C @ =gUnknown_2029388
	ldr r2, _08009550 @ =gUnknown_20294A4
	ldr r1, [r2]
	str r1, [r0]
	ldr r0, _08009554 @ =gUnknown_20294A0
	ldrh r0, [r0]
	ldr r2, [r2, #4]
	ldr r3, _08009558 @ =gUnknown_2028B78
	bl sub_0802E450
	b _0800957C
	.align 2, 0
_08009548: .4byte gUnknown_2029420
_0800954C: .4byte gUnknown_2029388
_08009550: .4byte gUnknown_20294A4
_08009554: .4byte gUnknown_20294A0
_08009558: .4byte gUnknown_2028B78
_0800955C:
	ldr r0, _0800958C @ =gUnknown_2029420
	ldr r0, [r0]
	cmp r0, #7
	beq _08009568
	bl sub_080326E4
_08009568:
	ldr r0, _08009590 @ =gUnknown_2029388
	ldr r2, _08009594 @ =gUnknown_20294A4
	ldr r1, [r2]
	str r1, [r0]
	ldr r0, _08009598 @ =gUnknown_20294A0
	ldrh r0, [r0]
	ldr r2, [r2, #4]
	ldr r3, _0800959C @ =gUnknown_2028B78
	bl sub_08032670
_0800957C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800958C: .4byte gUnknown_2029420
_08009590: .4byte gUnknown_2029388
_08009594: .4byte gUnknown_20294A4
_08009598: .4byte gUnknown_20294A0
_0800959C: .4byte gUnknown_2028B78
	thumb_func_end sub_08009294

	thumb_func_start sub_080095A0
sub_080095A0: @ 0x080095A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	mov ip, r1
	mov sl, r3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r0, r2, #1
	adds r7, r0, r2
	movs r0, #0
	b _08009632
_080095BC:
	movs r1, #0
	mov r8, r1
	adds r0, #1
	mov sb, r0
	b _08009622
_080095C6:
	mov r0, ip
	ldrb r6, [r0]
	lsls r3, r6, #0x18
	movs r4, #3
	lsrs r1, r3, #0x1e
	adds r0, r1, #0
	cmp r1, #0
	beq _080095D8
	adds r0, r1, r7
_080095D8:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	lsrs r2, r3, #0x1c
	ands r2, r4
	adds r0, r2, #0
	cmp r2, #0
	beq _080095E8
	adds r0, r2, r7
_080095E8:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r0, r1, #4
	orrs r2, r0
	strb r2, [r5]
	adds r5, #1
	lsrs r1, r3, #0x1a
	ands r1, r4
	adds r0, r1, #0
	cmp r1, #0
	beq _08009600
	adds r0, r1, r7
_08009600:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r2, #3
	ands r2, r6
	adds r0, r2, #0
	cmp r2, #0
	beq _08009610
	adds r0, r2, r7
_08009610:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	lsls r0, r1, #4
	orrs r2, r0
	strb r2, [r5]
	adds r5, #1
	movs r1, #1
	add ip, r1
	add r8, r1
_08009622:
	mov r0, sl
	cmp r0, #0
	bge _0800962A
	adds r0, #3
_0800962A:
	asrs r0, r0, #2
	cmp r8, r0
	blt _080095C6
	mov r0, sb
_08009632:
	ldr r1, [sp, #0x20]
	cmp r0, r1
	blt _080095BC
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080095A0

	thumb_func_start sub_08009648
sub_08009648: @ 0x08009648
	push {r4, r5, r6, lr}
	sub sp, #0x84
	adds r4, r0, #0
	ldr r5, _080096D8 @ =gUnknown_202780C
	movs r0, #0xf
	ldrb r1, [r4]
	ands r0, r1
	ldr r1, _080096DC @ =0x0000045E
	adds r2, r5, r1
	strb r0, [r2]
	adds r4, #1
	ldr r1, _080096E0 @ =gUnknown_85EBDA4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	cmp r3, #0
	beq _080096CE
	adds r1, r4, #0
	movs r0, #0x8c
	lsls r0, r0, #3
	adds r2, r5, r0
	adds r4, #0x1e
	ldr r6, _080096E4 @ =gUnknown_20287D8
	movs r5, #0x1d
_08009678:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	subs r5, #1
	cmp r5, #0
	bge _08009678
	cmp r3, #0
	ble _080096C2
	adds r5, r3, #0
_0800968C:
	adds r1, r4, #1
	adds r0, r6, #0
	bl sub_0800998C
	adds r1, r4, #0
	adds r1, #0xd
	ldrb r2, [r4]
	movs r0, #0x10
	str r0, [sp]
	add r0, sp, #4
	movs r3, #0x10
	bl sub_080095A0
	adds r0, r6, #0
	adds r0, #0xc
	str r0, [sp]
	add r0, sp, #4
	movs r1, #0
	movs r2, #0
	movs r3, #2
	bl sub_0800D574
	adds r6, #0x8c
	adds r4, #0x4d
	subs r5, #1
	cmp r5, #0
	bne _0800968C
_080096C2:
	ldr r0, _080096D8 @ =gUnknown_202780C
	movs r1, #0x90
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, _080096E4 @ =gUnknown_20287D8
	str r1, [r0]
_080096CE:
	adds r0, r4, #0
	add sp, #0x84
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080096D8: .4byte gUnknown_202780C
_080096DC: .4byte 0x0000045E
_080096E0: .4byte gUnknown_85EBDA4
_080096E4: .4byte gUnknown_20287D8
	thumb_func_end sub_08009648

	thumb_func_start sub_080096E8
sub_080096E8: @ 0x080096E8
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r4, #0
	ldrb r3, [r1]
	cmp r3, #0
	beq _0800975A
	movs r5, #0xa
_080096F6:
	adds r0, r3, #0
	cmp r0, #0xa
	bne _08009706
	strb r3, [r2]
	adds r1, #1
	adds r2, #1
	movs r4, #0
	b _08009754
_08009706:
	cmp r0, #1
	bne _08009718
	strb r3, [r2]
	adds r1, #1
	adds r2, #1
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, #1
	b _08009752
_08009718:
	cmp r0, #2
	bne _08009722
	strb r3, [r2]
	adds r1, #1
	b _08009752
_08009722:
	strb r3, [r2]
	adds r1, #1
	adds r2, #1
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	adds r4, #1
	cmp r4, #0x12
	bne _08009754
	movs r4, #0
	ldrb r0, [r1]
	cmp r0, #0xa
	beq _08009754
	cmp r0, #0
	beq _0800975A
	cmp r0, #2
	bne _08009750
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _08009754
	cmp r0, #0xa
	beq _08009754
_08009750:
	strb r5, [r2]
_08009752:
	adds r2, #1
_08009754:
	ldrb r3, [r1]
	cmp r3, #0
	bne _080096F6
_0800975A:
	movs r0, #0
	strb r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_080096E8

	thumb_func_start sub_08009764
sub_08009764: @ 0x08009764
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r0, r1, #0
	movs r1, #0
	strh r1, [r5, #2]
	ldr r2, _080097CC @ =gUnknown_2025254
	mov r8, r2
	strh r1, [r2]
	ldr r4, _080097D0 @ =gUnknown_2025760
	adds r1, r4, #0
	bl sub_080051AC
	strh r0, [r5]
	ldr r1, _080097D4 @ =0x00000504
	adds r0, r5, r1
	str r4, [r0]
	movs r2, #0
	mov sl, r2
	movs r3, #0
	mov sb, r3
	movs r0, #0x84
	lsls r0, r0, #1
	adds r0, r0, r5
	mov ip, r0
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	ldrb r0, [r4]
	cmp r0, #0
	beq _08009896
	ldr r6, _080097D8 @ =gUnknown_2024FFC
	mov r2, r8
	ldr r1, _080097DC @ =gUnknown_85F2254
	mov r8, r1
_080097B2:
	cmp r0, #0xa
	bne _080097E0
	adds r0, r5, #6
	adds r0, r0, r3
	mov r1, sb
	strb r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r0, r3, #2
	add r0, ip
	adds r4, #1
	b _08009874
	.align 2, 0
_080097CC: .4byte gUnknown_2025254
_080097D0: .4byte gUnknown_2025760
_080097D4: .4byte 0x00000504
_080097D8: .4byte gUnknown_2024FFC
_080097DC: .4byte gUnknown_85F2254
_080097E0:
	cmp r0, #1
	bne _0800982E
	strh r0, [r5, #2]
	adds r4, #1
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	strh r1, [r0, #4]
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r4]
	strb r1, [r0, #0xa]
	adds r4, #1
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	strh r3, [r0, #6]
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	mov r1, sl
	strb r1, [r0, #8]
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	str r4, [r0]
	movs r7, #0
	b _08009890
_0800982E:
	cmp r0, #2
	bne _08009848
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	strb r7, [r0, #9]
	adds r4, #1
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	b _08009890
_08009848:
	ldrb r0, [r4]
	subs r0, #0x20
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	movs r1, #8
	subs r1, r1, r0
	adds r0, r7, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	add r1, sl
	cmp r1, #0xb8
	ble _0800987E
	adds r0, r5, #6
	adds r0, r0, r3
	mov r1, sb
	strb r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r0, r3, #2
	add r0, ip
_08009874:
	str r4, [r0]
	movs r0, #0
	mov sl, r0
	mov sb, r0
	b _08009890
_0800987E:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	adds r4, #1
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_08009890:
	ldrb r0, [r4]
	cmp r0, #0
	bne _080097B2
_08009896:
	adds r0, r5, #6
	adds r0, r0, r3
	movs r1, #0
	mov r2, sb
	strb r2, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r0, r3, #2
	add r0, ip
	str r1, [r0]
	strb r3, [r5, #4]
	strb r1, [r5, #5]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08009764

	thumb_func_start sub_080098C0
sub_080098C0: @ 0x080098C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	ldr r0, _08009960 @ =gUnknown_2027C90
	movs r2, #0xc0
	lsls r2, r2, #3
	movs r1, #0
	bl memset
	movs r6, #0
	add r0, sp, #0x2c
	mov sb, r0
	movs r1, #0xc
	mov sl, r1
_080098E2:
	add r3, sp, #8
	lsls r1, r6, #1
	adds r0, r1, r6
	ldr r2, _08009964 @ =gUnknown_2028B91
	adds r5, r0, r2
	movs r2, #0
	adds r7, r1, #0
	adds r0, r6, #1
	mov r8, r0
_080098F4:
	movs r1, #0x30
	adds r0, r2, #0
	muls r0, r1, r0
	adds r1, r5, r0
	adds r4, r2, #1
	movs r2, #2
_08009900:
	ldrb r0, [r1]
	strb r0, [r3]
	adds r1, #1
	adds r3, #1
	subs r2, #1
	cmp r2, #0
	bge _08009900
	adds r2, r4, #0
	cmp r2, #0xb
	ble _080098F4
	mov r2, sl
	str r2, [sp]
	mov r0, sb
	add r1, sp, #8
	movs r2, #0
	movs r3, #0xc
	bl sub_080095A0
	adds r1, r7, r6
	lsls r1, r1, #2
	mov r0, sl
	str r0, [sp]
	ldr r4, _08009960 @ =gUnknown_2027C90
	str r4, [sp, #4]
	mov r0, sb
	movs r2, #0
	movs r3, #0x18
	bl sub_0800D098
	mov r6, r8
	cmp r6, #0xf
	ble _080098E2
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, _08009968 @ =gUnknown_2028DD1
	bl sub_08009764
	movs r0, #0
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009960: .4byte gUnknown_2027C90
_08009964: .4byte gUnknown_2028B91
_08009968: .4byte gUnknown_2028DD1
	thumb_func_end sub_080098C0

	thumb_func_start sub_0800996C
sub_0800996C: @ 0x0800996C
	push {r4, lr}
	lsls r0, r0, #0x18
	ldr r4, _08009988 @ =gUnknown_85EBDD8
	lsrs r0, r0, #0x17
	adds r3, r0, r4
	ldrb r3, [r3]
	strb r3, [r1]
	adds r0, #1
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009988: .4byte gUnknown_85EBDD8
	thumb_func_end sub_0800996C

	thumb_func_start sub_0800998C
sub_0800998C: @ 0x0800998C
	adds r2, r0, #0
_0800998E:
	ldrb r0, [r1]
	strb r0, [r2]
	lsls r0, r0, #0x18
	adds r1, #1
	adds r2, #1
	cmp r0, #0
	bne _0800998E
	bx lr
	.align 2, 0
	thumb_func_end sub_0800998C

	thumb_func_start sub_080099A0
sub_080099A0: @ 0x080099A0
	push {lr}
	ldr r0, _080099BC @ =gUnknown_8710064
	ldr r1, _080099C0 @ =gUnknown_3000000
	ldr r2, _080099C4 @ =gUnknown_8714224
	subs r2, r2, r0
	lsrs r3, r2, #0x1f
	adds r2, r2, r3
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_080099BC: .4byte gUnknown_8710064
_080099C0: .4byte gUnknown_3000000
_080099C4: .4byte gUnknown_8714224
	thumb_func_end sub_080099A0

	thumb_func_start sub_080099C8
sub_080099C8: @ 0x080099C8
	push {lr}
	ldr r0, _080099E4 @ =gUnknown_87099DC
	ldr r1, _080099E8 @ =gUnknown_3000000
	ldr r2, _080099EC @ =gUnknown_8710064
	subs r2, r2, r0
	lsrs r3, r2, #0x1f
	adds r2, r2, r3
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_080099E4: .4byte gUnknown_87099DC
_080099E8: .4byte gUnknown_3000000
_080099EC: .4byte gUnknown_8710064
	thumb_func_end sub_080099C8

	thumb_func_start sub_080099F0
sub_080099F0: @ 0x080099F0
	push {lr}
	ldr r0, _08009A14 @ =gUnknown_8704228
	ldr r1, _08009A18 @ =gUnknown_3000000
	ldr r2, _08009A1C @ =gUnknown_87099DC
	subs r2, r2, r0
	lsrs r3, r2, #0x1f
	adds r2, r2, r3
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	bl CpuSet
	bl sub_08006604
	movs r0, #1
	bl sub_080054E8
	pop {r0}
	bx r0
	.align 2, 0
_08009A14: .4byte gUnknown_8704228
_08009A18: .4byte gUnknown_3000000
_08009A1C: .4byte gUnknown_87099DC
	thumb_func_end sub_080099F0

	thumb_func_start sub_08009A20
sub_08009A20: @ 0x08009A20
	push {r4, lr}
	sub sp, #0x10
	ldr r0, _08009A3C @ =gUnknown_202411C
	ldr r1, [r0]
	cmp r1, #0xb
	ble _08009A44
	ldr r4, _08009A40 @ =gUnknown_2024118
	ldr r0, [r4]
	bl sub_08005980
	movs r0, #1
	negs r0, r0
	str r0, [r4]
	b _08009A96
	.align 2, 0
_08009A3C: .4byte gUnknown_202411C
_08009A40: .4byte gUnknown_2024118
_08009A44:
	subs r0, r1, #4
	cmp r0, #3
	bls _08009A8E
	cmp r1, #3
	bgt _08009A60
	ldr r1, _08009A5C @ =gUnknown_2024120
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	adds r3, r0, #0
	b _08009A68
	.align 2, 0
_08009A5C: .4byte gUnknown_2024120
_08009A60:
	ldr r1, _08009AA0 @ =gUnknown_2024120
	ldr r3, [r1]
	subs r0, r3, #1
	str r0, [r1]
_08009A68:
	ldr r4, _08009AA4 @ =gUnknown_2024124
	ldr r0, [r4]
	lsls r0, r0, #1
	ldr r1, _08009AA8 @ =gUnknown_860583C
	adds r0, r0, r1
	ldrh r1, [r1, #0x1e]
	movs r2, #4
	str r2, [sp]
	str r3, [sp, #4]
	add r2, sp, #8
	movs r3, #4
	bl sub_08015B54
	ldr r2, [r4]
	add r0, sp, #8
	movs r1, #1
	movs r3, #8
	bl sub_08000920
_08009A8E:
	ldr r1, _08009AAC @ =gUnknown_202411C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08009A96:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009AA0: .4byte gUnknown_2024120
_08009AA4: .4byte gUnknown_2024124
_08009AA8: .4byte gUnknown_860583C
_08009AAC: .4byte gUnknown_202411C
	thumb_func_end sub_08009A20

	thumb_func_start sub_08009AB0
sub_08009AB0: @ 0x08009AB0
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r1, _08009AD8 @ =gUnknown_202949C
	movs r0, #0
	str r0, [r1]
	movs r6, #0
_08009ABC:
	bl sub_08005DE0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08009ADC @ =gUnknown_202940C
	ldr r0, [r0]
	cmp r0, #7
	bls _08009ACE
	b _0800A014
_08009ACE:
	lsls r0, r0, #2
	ldr r1, _08009AE0 @ =_08009AE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009AD8: .4byte gUnknown_202949C
_08009ADC: .4byte gUnknown_202940C
_08009AE0: .4byte _08009AE4
_08009AE4: @ jump table
	.4byte _08009B04 @ case 0
	.4byte _08009D64 @ case 1
	.4byte _08009E62 @ case 2
	.4byte _08009E7C @ case 3
	.4byte _08009CA0 @ case 4
	.4byte _08009B84 @ case 5
	.4byte _08009C18 @ case 6
	.4byte _08009FAC @ case 7
_08009B04:
	ldr r0, _08009B38 @ =gUnknown_85EC000
	ldr r2, _08009B3C @ =gUnknown_20293BC
	movs r3, #0
	adds r1, r2, #0
	adds r1, #0x4c
_08009B0E:
	str r3, [r1]
	subs r1, #4
	cmp r1, r2
	bge _08009B0E
	movs r1, #7
	bl sub_08002B24
	ldr r0, _08009B40 @ =gUnknown_2024FF8
	movs r1, #1
	negs r1, r1
	str r1, [r0]
	ldr r0, _08009B44 @ =gUnknown_2027800
	ldrb r0, [r0, #6]
	cmp r0, #1
	bne _08009B4C
	bl sub_0800A2D4
	ldr r1, _08009B48 @ =gUnknown_202940C
	movs r0, #5
	str r0, [r1]
	b _08009B56
	.align 2, 0
_08009B38: .4byte gUnknown_85EC000
_08009B3C: .4byte gUnknown_20293BC
_08009B40: .4byte gUnknown_2024FF8
_08009B44: .4byte gUnknown_2027800
_08009B48: .4byte gUnknown_202940C
_08009B4C:
	ldr r1, _08009B78 @ =gUnknown_202940C
	movs r0, #1
	str r0, [r1]
	bl sub_0800A3A8
_08009B56:
	ldr r1, _08009B7C @ =gUnknown_2027800
	movs r0, #0
	strb r0, [r1, #8]
	movs r0, #0xd
	bl sub_08017108
	movs r0, #0xc
	str r0, [sp]
	ldr r0, _08009B80 @ =gUnknown_2024DD0
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #3
	movs r2, #5
	movs r3, #0x17
	bl sub_08002E80
	b _0800A014
	.align 2, 0
_08009B78: .4byte gUnknown_202940C
_08009B7C: .4byte gUnknown_2027800
_08009B80: .4byte gUnknown_2024DD0
_08009B84:
	bl sub_080103A8
	lsls r2, r0, #0x10
	lsrs r4, r2, #0x10
	movs r0, #2
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08009B9A
	b _08009F94
_08009B9A:
	movs r1, #0x30
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08009BA6
	b _0800A014
_08009BA6:
	lsrs r0, r2, #0x15
	movs r1, #1
	ands r0, r1
	bl sub_08017108
	movs r0, #0x20
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08009BD8
	ldr r1, _08009BCC @ =gUnknown_2024124
	movs r0, #6
	str r0, [r1]
	ldr r0, _08009BD0 @ =gUnknown_202411C
	str r5, [r0]
	ldr r0, _08009BD4 @ =gUnknown_2024120
	str r5, [r0]
	b _08009BE6
	.align 2, 0
_08009BCC: .4byte gUnknown_2024124
_08009BD0: .4byte gUnknown_202411C
_08009BD4: .4byte gUnknown_2024120
_08009BD8:
	ldr r1, _08009C00 @ =gUnknown_2024124
	movs r0, #0xa
	str r0, [r1]
	ldr r0, _08009C04 @ =gUnknown_202411C
	str r2, [r0]
	ldr r0, _08009C08 @ =gUnknown_2024120
	str r2, [r0]
_08009BE6:
	ldr r0, _08009C0C @ =sub_08009A20
	movs r1, #1
	bl sub_080059D0
	ldr r1, _08009C10 @ =gUnknown_2024118
	str r0, [r1]
	adds r0, r4, #0
	bl sub_08015470
	ldr r1, _08009C14 @ =gUnknown_202940C
	movs r0, #6
	str r0, [r1]
	b _0800A014
	.align 2, 0
_08009C00: .4byte gUnknown_2024124
_08009C04: .4byte gUnknown_202411C
_08009C08: .4byte gUnknown_2024120
_08009C0C: .4byte sub_08009A20
_08009C10: .4byte gUnknown_2024118
_08009C14: .4byte gUnknown_202940C
_08009C18:
	bl sub_0801729C
	lsls r2, r0, #0x10
	lsrs r4, r2, #0x10
	movs r1, #0x30
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08009C2C
	b _08009F8C
_08009C2C:
	lsrs r0, r2, #0x15
	movs r1, #1
	ands r0, r1
	bl sub_08017108
	movs r0, #0x20
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08009C60
	ldr r1, _08009C54 @ =gUnknown_2024124
	movs r0, #6
	str r0, [r1]
	ldr r0, _08009C58 @ =gUnknown_202411C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08009C5C @ =gUnknown_2024120
	str r1, [r0]
	b _08009C6E
	.align 2, 0
_08009C54: .4byte gUnknown_2024124
_08009C58: .4byte gUnknown_202411C
_08009C5C: .4byte gUnknown_2024120
_08009C60:
	ldr r1, _08009C88 @ =gUnknown_2024124
	movs r0, #0xa
	str r0, [r1]
	ldr r0, _08009C8C @ =gUnknown_202411C
	str r2, [r0]
	ldr r0, _08009C90 @ =gUnknown_2024120
	str r2, [r0]
_08009C6E:
	ldr r0, _08009C94 @ =sub_08009A20
	movs r1, #1
	bl sub_080059D0
	ldr r1, _08009C98 @ =gUnknown_2024118
	str r0, [r1]
	adds r0, r4, #0
	bl sub_080156E0
	ldr r1, _08009C9C @ =gUnknown_202940C
	movs r0, #5
	str r0, [r1]
	b _0800A014
	.align 2, 0
_08009C88: .4byte gUnknown_2024124
_08009C8C: .4byte gUnknown_202411C
_08009C90: .4byte gUnknown_2024120
_08009C94: .4byte sub_08009A20
_08009C98: .4byte gUnknown_2024118
_08009C9C: .4byte gUnknown_202940C
_08009CA0:
	bl sub_0801729C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0x20
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08009CF4
	movs r0, #1
	bl sub_08017108
	ldr r1, _08009CE0 @ =gUnknown_2024124
	movs r0, #6
	str r0, [r1]
	ldr r0, _08009CE4 @ =gUnknown_202411C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08009CE8 @ =gUnknown_2024120
	str r1, [r0]
	ldr r0, _08009CEC @ =sub_08009A20
	movs r1, #1
	bl sub_080059D0
	ldr r1, _08009CF0 @ =gUnknown_2024118
	str r0, [r1]
	adds r0, r4, #0
	bl sub_080156E0
	b _08009E30
	.align 2, 0
_08009CE0: .4byte gUnknown_2024124
_08009CE4: .4byte gUnknown_202411C
_08009CE8: .4byte gUnknown_2024120
_08009CEC: .4byte sub_08009A20
_08009CF0: .4byte gUnknown_2024118
_08009CF4:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	bne _08009CFE
	b _08009F8C
_08009CFE:
	movs r0, #0
	bl sub_08017108
	ldr r1, _08009D48 @ =gUnknown_2024124
	movs r0, #0xa
	str r0, [r1]
	ldr r0, _08009D4C @ =gUnknown_202411C
	str r5, [r0]
	ldr r0, _08009D50 @ =gUnknown_2024120
	str r5, [r0]
	ldr r0, _08009D54 @ =sub_08009A20
	movs r1, #1
	bl sub_080059D0
	ldr r1, _08009D58 @ =gUnknown_2024118
	str r0, [r1]
	movs r2, #0x8a
	lsls r2, r2, #1
	ldr r3, _08009D5C @ =gUnknown_85EA7BC
	movs r0, #0
	movs r1, #0x90
	bl sub_0800456C
	movs r0, #0xc
	str r0, [sp]
	ldr r0, _08009D60 @ =gUnknown_2024DD0
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #3
	movs r2, #5
	movs r3, #0x17
	bl sub_08002D6C
	adds r0, r4, #0
	bl sub_08015074
	b _08009F5E
	.align 2, 0
_08009D48: .4byte gUnknown_2024124
_08009D4C: .4byte gUnknown_202411C
_08009D50: .4byte gUnknown_2024120
_08009D54: .4byte sub_08009A20
_08009D58: .4byte gUnknown_2024118
_08009D5C: .4byte gUnknown_85EA7BC
_08009D60: .4byte gUnknown_2024DD0
_08009D64:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08009DA0
	ldr r0, _08009D94 @ =gUnknown_202780C
	ldr r1, _08009D98 @ =0x0000045E
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08009DA0
	movs r0, #5
	bl sub_08017108
	bl sub_0800C4C0
	bl sub_08012334
	bl sub_0800E5A0
	ldr r1, _08009D9C @ =gUnknown_202940C
	movs r0, #2
	str r0, [r1]
	b _0800A014
	.align 2, 0
_08009D94: .4byte gUnknown_202780C
_08009D98: .4byte 0x0000045E
_08009D9C: .4byte gUnknown_202940C
_08009DA0:
	movs r0, #0x20
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08009DFC
	movs r0, #1
	bl sub_08017108
	ldr r1, _08009DE4 @ =gUnknown_2024124
	movs r0, #6
	str r0, [r1]
	ldr r0, _08009DE8 @ =gUnknown_202411C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08009DEC @ =gUnknown_2024120
	str r1, [r0]
	ldr r0, _08009DF0 @ =sub_08009A20
	movs r1, #1
	bl sub_080059D0
	ldr r1, _08009DF4 @ =gUnknown_2024118
	str r0, [r1]
	ldr r0, _08009DF8 @ =gUnknown_2027800
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _08009E24
	bl sub_0800C4C0
	adds r0, r4, #0
	movs r1, #1
	bl sub_08014704
	b _08009EBA
	.align 2, 0
_08009DE4: .4byte gUnknown_2024124
_08009DE8: .4byte gUnknown_202411C
_08009DEC: .4byte gUnknown_2024120
_08009DF0: .4byte sub_08009A20
_08009DF4: .4byte gUnknown_2024118
_08009DF8: .4byte gUnknown_2027800
_08009DFC:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _08009E50
	movs r0, #0
	bl sub_08017108
	ldr r1, _08009E38 @ =gUnknown_2024124
	movs r0, #0xa
	str r0, [r1]
	ldr r0, _08009E3C @ =gUnknown_202411C
	str r5, [r0]
	ldr r0, _08009E40 @ =gUnknown_2024120
	str r5, [r0]
	ldr r0, _08009E44 @ =sub_08009A20
	movs r1, #1
	bl sub_080059D0
	ldr r1, _08009E48 @ =gUnknown_2024118
	str r0, [r1]
_08009E24:
	bl sub_0800C4C0
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801327C
_08009E30:
	ldr r1, _08009E4C @ =gUnknown_202940C
	movs r0, #3
	str r0, [r1]
	b _0800A014
	.align 2, 0
_08009E38: .4byte gUnknown_2024124
_08009E3C: .4byte gUnknown_202411C
_08009E40: .4byte gUnknown_2024120
_08009E44: .4byte sub_08009A20
_08009E48: .4byte gUnknown_2024118
_08009E4C: .4byte gUnknown_202940C
_08009E50:
	movs r0, #2
	ands r4, r0
	cmp r4, #0
	bne _08009E5A
	b _0800A014
_08009E5A:
	movs r0, #6
	bl sub_08017108
	b _08009F94
_08009E62:
	movs r0, #2
	ands r4, r0
	cmp r4, #0
	bne _08009E6C
	b _0800A014
_08009E6C:
	movs r0, #6
	bl sub_08017108
	bl sub_0800EB90
	bl sub_08012700
	b _08009F5E
_08009E7C:
	bl sub_080103A8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0x10
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08009F14
	ldr r1, _08009EC4 @ =gUnknown_2024124
	movs r0, #0xa
	str r0, [r1]
	ldr r0, _08009EC8 @ =gUnknown_202411C
	movs r1, #0
	str r1, [r0]
	ldr r0, _08009ECC @ =gUnknown_2024120
	str r1, [r0]
	ldr r0, _08009ED0 @ =sub_08009A20
	movs r1, #1
	bl sub_080059D0
	ldr r1, _08009ED4 @ =gUnknown_2024118
	str r0, [r1]
	ldr r0, _08009ED8 @ =gUnknown_2027800
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _08009EE0
	adds r0, r4, #0
	bl sub_08015470
_08009EBA:
	ldr r1, _08009EDC @ =gUnknown_202940C
	movs r0, #4
	str r0, [r1]
	b _0800A014
	.align 2, 0
_08009EC4: .4byte gUnknown_2024124
_08009EC8: .4byte gUnknown_202411C
_08009ECC: .4byte gUnknown_2024120
_08009ED0: .4byte sub_08009A20
_08009ED4: .4byte gUnknown_2024118
_08009ED8: .4byte gUnknown_2027800
_08009EDC: .4byte gUnknown_202940C
_08009EE0:
	movs r0, #0
	bl sub_08017108
	movs r2, #0x8a
	lsls r2, r2, #1
	ldr r3, _08009F0C @ =gUnknown_85EA7BC
	movs r0, #0
	movs r1, #0x90
	bl sub_0800456C
	movs r0, #0xc
	str r0, [sp]
	ldr r0, _08009F10 @ =gUnknown_2024DD0
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #3
	movs r2, #5
	movs r3, #0x17
	bl sub_08002D6C
	b _08009F58
	.align 2, 0
_08009F0C: .4byte gUnknown_85EA7BC
_08009F10: .4byte gUnknown_2024DD0
_08009F14:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _08009F8C
	movs r2, #0x8a
	lsls r2, r2, #1
	ldr r3, _08009F6C @ =gUnknown_85EA7BC
	movs r0, #0
	movs r1, #0x90
	bl sub_0800456C
	movs r0, #0xc
	str r0, [sp]
	ldr r0, _08009F70 @ =gUnknown_2024DD0
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #3
	movs r2, #5
	movs r3, #0x17
	bl sub_08002D6C
	ldr r1, _08009F74 @ =gUnknown_2024124
	movs r0, #6
	str r0, [r1]
	ldr r0, _08009F78 @ =gUnknown_202411C
	str r5, [r0]
	ldr r0, _08009F7C @ =gUnknown_2024120
	str r5, [r0]
	ldr r0, _08009F80 @ =sub_08009A20
	movs r1, #1
	bl sub_080059D0
	ldr r1, _08009F84 @ =gUnknown_2024118
	str r0, [r1]
_08009F58:
	adds r0, r4, #0
	bl sub_08013BCC
_08009F5E:
	ldr r1, _08009F88 @ =gUnknown_202940C
	movs r0, #1
	str r0, [r1]
	bl sub_0800C49C
	b _0800A014
	.align 2, 0
_08009F6C: .4byte gUnknown_85EA7BC
_08009F70: .4byte gUnknown_2024DD0
_08009F74: .4byte gUnknown_2024124
_08009F78: .4byte gUnknown_202411C
_08009F7C: .4byte gUnknown_2024120
_08009F80: .4byte sub_08009A20
_08009F84: .4byte gUnknown_2024118
_08009F88: .4byte gUnknown_202940C
_08009F8C:
	movs r0, #2
	ands r4, r0
	cmp r4, #0
	beq _0800A014
_08009F94:
	ldr r2, _08009FA4 @ =gUnknown_2029410
	ldr r1, _08009FA8 @ =gUnknown_202940C
	ldr r0, [r1]
	str r0, [r2]
	movs r0, #7
	str r0, [r1]
	b _0800A014
	.align 2, 0
_08009FA4: .4byte gUnknown_2029410
_08009FA8: .4byte gUnknown_202940C
_08009FAC:
	movs r0, #0x3f
	movs r1, #4
	movs r2, #0
	movs r3, #0xf
	bl sub_08016344
	movs r0, #0xd
	movs r1, #1
	bl sub_08016FD8
	b _08009FC8
_08009FC2:
	movs r0, #1
	bl sub_080053D8
_08009FC8:
	bl sub_08016310
	cmp r0, #0
	beq _08009FC2
	movs r0, #0xd
	bl sub_08016E50
	cmp r0, #0
	beq _08009FC2
	movs r0, #0xd
	movs r1, #1
	bl sub_08016FD8
	ldr r0, _0800A028 @ =gUnknown_2024FF8
	ldr r1, [r0]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _08009FF4
	adds r0, r1, #0
	bl sub_08005980
_08009FF4:
	ldr r5, _0800A02C @ =gUnknown_20293BC
	movs r4, #0x13
_08009FF8:
	ldr r0, [r5]
	cmp r0, #0
	beq _0800A004
	movs r1, #3
	bl sub_080018D8
_0800A004:
	adds r5, #4
	subs r4, #1
	cmp r4, #0
	bge _08009FF8
	ldr r1, _0800A030 @ =gUnknown_202941C
	movs r0, #0xc
	str r0, [r1]
	movs r6, #1
_0800A014:
	movs r0, #1
	bl sub_080053D8
	cmp r6, #0
	bne _0800A020
	b _08009ABC
_0800A020:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A028: .4byte gUnknown_2024FF8
_0800A02C: .4byte gUnknown_20293BC
_0800A030: .4byte gUnknown_202941C
	thumb_func_end sub_08009AB0

	thumb_func_start sub_0800A034
sub_0800A034: @ 0x0800A034
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	add r7, sp, #8
	bl sub_0804441C
	str r0, [r7, #0x38]
	movs r0, #0
	str r0, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #8
	str r1, [r7, #0x3c]
	movs r2, #0
	str r2, [r7, #0x40]
_0800A056:
	ldr r3, [r7, #0x30]
	cmp r3, #0xf
	beq _0800A06C
	ldr r0, _0800A0F0 @ =gUnknown_8605A1C
	ldr r1, [r7, #0x40]
	adds r0, r1, r0
	adds r1, r3, #0
	movs r2, #0
	movs r3, #0x20
	bl LoadPalette
_0800A06C:
	ldr r0, _0800A0F4 @ =gUnknown_860581C
	ldr r2, [r7, #0x40]
	adds r0, r2, r0
	ldr r1, [r7, #0x30]
	movs r2, #0
	movs r3, #0x20
	bl sub_08000920
	ldr r3, [r7, #0x40]
	adds r3, #0x20
	str r3, [r7, #0x40]
	ldr r0, [r7, #0x30]
	adds r0, #1
	str r0, [r7, #0x30]
	cmp r0, #0xf
	ble _0800A056
	ldr r3, _0800A0F8 @ =gUnknown_8605C1C
	movs r0, #0
	movs r1, #0x59
	movs r2, #0x1b
	bl sub_080045CC
	ldr r3, _0800A0FC @ =gUnknown_86087FC
	movs r0, #0
	movs r1, #0x74
	movs r2, #0x1c
	bl sub_080045CC
	bl sub_0800C4E0
	movs r2, #0x93
	lsls r2, r2, #1
	ldr r3, _0800A100 @ =gUnknown_860CA7C
	movs r0, #2
	movs r1, #0
	bl sub_080045CC
	movs r0, #0x20
	str r0, [sp]
	ldr r0, _0800A104 @ =gUnknown_860EF3C
	str r0, [sp, #4]
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08002D6C
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x34]
	ldr r1, [r7, #0x38]
	adds r1, #4
	ldr r2, [r7, #0x38]
	ldr r0, [r2, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _0800A108 @ =sub_0800A10C
	ldr r3, [r7, #0x3c]
	str r0, [r3, #4]
	mov r0, sp
	str r0, [r3, #8]
	b _0800A10E
	.align 2, 0
_0800A0F0: .4byte gUnknown_8605A1C
_0800A0F4: .4byte gUnknown_860581C
_0800A0F8: .4byte gUnknown_8605C1C
_0800A0FC: .4byte gUnknown_86087FC
_0800A100: .4byte gUnknown_860CA7C
_0800A104: .4byte gUnknown_860EF3C
_0800A108: .4byte _0800A10C
_0800A10C: @ 0x0800A10C
	b _0800A16C
_0800A10E:
	str r7, [r1]
	ldr r2, _0800A164 @ =gUnknown_8611A7C
	movs r0, #0x18
	str r0, [sp]
	movs r0, #9
	str r0, [sp, #4]
	ldr r0, [r7, #0x34]
	movs r1, #1
	movs r3, #0x68
	bl sub_08002504
	ldr r1, _0800A168 @ =gUnknown_20293BC
	str r0, [r1, #0x48]
	ldr r2, [r7, #0x38]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r3, r1, #0
	ldr r0, [r3, #0x48]
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_080027DC
	ldr r1, _0800A168 @ =gUnknown_20293BC
	ldr r0, [r1, #0x48]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
	ldr r1, _0800A168 @ =gUnknown_20293BC
	ldr r0, [r1, #0x48]
	bl sub_080023D8
	ldr r2, _0800A168 @ =gUnknown_20293BC
	ldr r0, [r2, #0x48]
	bl sub_08002428
	b _0800A1B4
	.align 2, 0
_0800A164: .4byte gUnknown_8611A7C
_0800A168: .4byte gUnknown_20293BC
_0800A16C:
	ldr r2, [r7, #0x38]
	adds r2, #4
	ldr r3, [r7, #0x38]
	ldr r0, [r3, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _0800A18C @ =sub_0800A190
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0800A192
	.align 2, 0
_0800A18C: .4byte _0800A190
_0800A190: @ 0x0800A190
	b _0800A1B0
_0800A192:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _0800A1A4
	ldr r0, [r7, #0x34]
	bl sub_080046C0
_0800A1A4:
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_0800A1B0:
	bl sub_080443CC
_0800A1B4:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800A034

	thumb_func_start sub_0800A1C4
sub_0800A1C4: @ 0x0800A1C4
	push {r4, r5, lr}
	ldr r4, _0800A1F4 @ =gUnknown_20293BC
	ldr r0, [r4, #0x38]
	bl sub_080028E4
	ldr r0, [r4, #0x3c]
	bl sub_080028E4
	ldr r0, _0800A1F8 @ =gUnknown_2027800
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _0800A240
	ldr r0, _0800A1FC @ =gUnknown_2029410
	ldr r0, [r0]
	cmp r0, #3
	bne _0800A200
	bl sub_0800C4C0
	movs r0, #0x10
	movs r1, #0
	bl sub_0801327C
	b _0800A210
	.align 2, 0
_0800A1F4: .4byte gUnknown_20293BC
_0800A1F8: .4byte gUnknown_2027800
_0800A1FC: .4byte gUnknown_2029410
_0800A200:
	cmp r0, #4
	bne _0800A210
	bl sub_0800C4C0
	movs r0, #0x20
	movs r1, #0
	bl sub_08014704
_0800A210:
	ldr r0, _0800A228 @ =gUnknown_202940C
	ldr r1, _0800A22C @ =gUnknown_2029410
	ldr r1, [r1]
	str r1, [r0]
	movs r0, #0x3f
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xf
	bl sub_08016344
	b _0800A236
	.align 2, 0
_0800A228: .4byte gUnknown_202940C
_0800A22C: .4byte gUnknown_2029410
_0800A230:
	movs r0, #1
	bl sub_080053D8
_0800A236:
	bl sub_08016310
	cmp r0, #0
	beq _0800A230
	b _0800A2C8
_0800A240:
	movs r0, #0
	bl sub_080022D8
	ldr r4, _0800A2D0 @ =gUnknown_85EC044
	movs r0, #0
	ldrsh r2, [r4, r0]
	movs r0, #0
	movs r1, #0
	bl sub_08008FF4
	movs r1, #0
	ldrsh r2, [r4, r1]
	movs r0, #1
	movs r1, #0
	bl sub_08008FF4
	movs r0, #0
	ldrsh r2, [r4, r0]
	movs r0, #2
	movs r1, #0
	bl sub_08008FF4
	bl sub_080162F4
	movs r0, #1
	bl sub_080053D8
	movs r0, #0xa
	bl sub_08017108
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	beq _0800A2BE
	adds r5, r1, #0
_0800A28A:
	movs r0, #0
	ldrsh r2, [r4, r0]
	movs r0, #0
	movs r1, #0
	bl sub_08008FF4
	movs r1, #0
	ldrsh r2, [r4, r1]
	movs r0, #1
	movs r1, #0
	bl sub_08008FF4
	movs r0, #0
	ldrsh r2, [r4, r0]
	movs r0, #2
	movs r1, #0
	bl sub_08008FF4
	movs r0, #1
	bl sub_080053D8
	adds r4, #2
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r5
	bne _0800A28A
_0800A2BE:
	bl sub_080022B8
	movs r0, #0x14
	bl sub_080053D8
_0800A2C8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A2D0: .4byte gUnknown_85EC044
	thumb_func_end sub_0800A1C4

	thumb_func_start sub_0800A2D4
sub_0800A2D4: @ 0x0800A2D4
	push {r4, r5, lr}
	sub sp, #8
	bl sub_0800A034
	bl sub_0800C4C0
	bl sub_0800B6A8
	movs r0, #0
	bl sub_0800B050
	movs r0, #0x93
	bl sub_0800BBFC
	movs r0, #0
	bl sub_0800C2E8
	ldr r4, _0800A37C @ =gUnknown_2027C90
	adds r0, r4, #0
	bl sub_0800A84C
	bl sub_0800A950
	ldr r1, _0800A380 @ =0x040000D4
	ldr r0, _0800A384 @ =gUnknown_8611F5C
	str r0, [r1]
	ldr r5, _0800A388 @ =gUnknown_2020070
	ldr r0, [r5]
	str r0, [r1, #4]
	ldr r0, _0800A38C @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0xd2
	lsls r2, r2, #1
	ldr r3, _0800A390 @ =gUnknown_861275C
	movs r0, #0
	movs r1, #0
	bl sub_080045CC
	movs r0, #0x20
	str r0, [sp]
	ldr r0, [r5]
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08002D6C
	ldr r3, _0800A394 @ =gUnknown_860849C
	movs r0, #0
	movs r1, #0x59
	movs r2, #0x1b
	bl sub_080045CC
	ldr r0, _0800A398 @ =0x00000605
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, _0800A39C @ =0x00000606
	adds r4, r4, r1
	adds r1, r4, #0
	movs r2, #0
	bl sub_08010350
	movs r0, #1
	bl sub_0800BFE8
	ldr r0, _0800A3A0 @ =gUnknown_20293BC
	ldr r0, [r0, #0x40]
	bl sub_080023D8
	bl sub_0800A1C4
	ldr r1, _0800A3A4 @ =gUnknown_202949C
	movs r0, #1
	str r0, [r1]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A37C: .4byte gUnknown_2027C90
_0800A380: .4byte 0x040000D4
_0800A384: .4byte gUnknown_8611F5C
_0800A388: .4byte gUnknown_2020070
_0800A38C: .4byte 0x80000400
_0800A390: .4byte gUnknown_861275C
_0800A394: .4byte gUnknown_860849C
_0800A398: .4byte 0x00000605
_0800A39C: .4byte 0x00000606
_0800A3A0: .4byte gUnknown_20293BC
_0800A3A4: .4byte gUnknown_202949C
	thumb_func_end sub_0800A2D4

	thumb_func_start sub_0800A3A8
sub_0800A3A8: @ 0x0800A3A8
	push {r4, r5, r6, lr}
	sub sp, #0x28
	bl sub_0800A034
	ldr r4, _0800A3D8 @ =gUnknown_2025F68
	movs r5, #0xb0
	lsls r5, r5, #2
	adds r0, r5, #0
	bl sub_080055B0
	adds r2, r0, #0
	str r2, [r4]
	ldr r0, _0800A3DC @ =gUnknown_202780C
	ldr r1, _0800A3E0 @ =0x0000045E
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A3E8
	ldr r1, _0800A3E4 @ =gUnknown_861041C
	adds r0, r2, #0
	adds r2, r5, #0
	bl memcpy
	b _0800A3F2
	.align 2, 0
_0800A3D8: .4byte gUnknown_2025F68
_0800A3DC: .4byte gUnknown_202780C
_0800A3E0: .4byte 0x0000045E
_0800A3E4: .4byte gUnknown_861041C
_0800A3E8:
	adds r0, r2, #0
	movs r1, #0
	adds r2, r5, #0
	bl memset
_0800A3F2:
	ldr r1, _0800A460 @ =0x040000D4
	ldr r0, _0800A464 @ =gUnknown_8615BDC
	str r0, [r1]
	ldr r4, _0800A468 @ =gUnknown_2020070
	ldr r0, [r4]
	str r0, [r1, #4]
	ldr r0, _0800A46C @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0xd2
	lsls r2, r2, #1
	ldr r3, _0800A470 @ =gUnknown_861275C
	movs r0, #0
	movs r1, #0
	bl sub_080045CC
	movs r0, #0x20
	str r0, [sp]
	ldr r0, [r4]
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08002D6C
	ldr r0, _0800A474 @ =gUnknown_2027800
	ldrb r0, [r0, #6]
	cmp r0, #0xff
	bne _0800A478
	movs r4, #0xc8
	lsls r4, r4, #2
	adds r0, r4, #0
	bl sub_080055B0
	adds r6, r0, #0
	movs r0, #0x20
	bl sub_080055B0
	adds r5, r0, #0
	adds r0, r6, #0
	movs r1, #0xff
	adds r2, r4, #0
	bl memset
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x20
	bl memset
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0800AB10
	b _0800A526
	.align 2, 0
_0800A460: .4byte 0x040000D4
_0800A464: .4byte gUnknown_8615BDC
_0800A468: .4byte gUnknown_2020070
_0800A46C: .4byte 0x80000400
_0800A470: .4byte gUnknown_861275C
_0800A474: .4byte gUnknown_2027800
_0800A478:
	ldr r4, _0800A530 @ =gUnknown_202780C
	ldrh r0, [r4, #2]
	bl sub_0800BD9C
	adds r0, r4, #0
	adds r0, #0x18
	bl sub_0800C57C
	bl sub_0800BE4C
	adds r0, r4, #0
	adds r0, #0x41
	bl sub_0800C5B4
	ldr r0, _0800A534 @ =gUnknown_2020050
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0x90
	movs r2, #0xa
	bl sub_080045CC
	ldr r0, _0800A538 @ =gUnknown_2020054
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0x9a
	movs r2, #0xb
	bl sub_080045CC
	ldr r0, _0800A53C @ =gUnknown_2020058
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0xa5
	movs r2, #0x1e
	bl sub_080045CC
	ldr r0, _0800A540 @ =gUnknown_202005C
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0xc3
	movs r2, #0x73
	bl sub_080045CC
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0800A554
	movs r2, #0x8f
	lsls r2, r2, #1
	adds r0, r4, r2
	adds r2, #0x20
	adds r1, r4, r2
	bl sub_0800AB10
	movs r0, #1
	bl sub_0800B050
	bl sub_0800B154
	movs r0, #0x67
	bl sub_0800BBFC
	movs r0, #1
	bl sub_0800C2E8
	adds r0, r4, #0
	adds r0, #0x2f
	bl sub_0800A6E0
	bl sub_0800A950
	movs r0, #0
	bl sub_0800BFE8
	ldr r0, _0800A544 @ =sub_0800C41C
	movs r1, #0xa
	bl sub_080059D0
	ldr r1, _0800A548 @ =gUnknown_2024FF8
	str r0, [r1]
	ldr r1, _0800A54C @ =gUnknown_2024112
	movs r0, #1
	strh r0, [r1]
	ldr r1, _0800A550 @ =gUnknown_2024114
	movs r0, #0
	strh r0, [r1]
	bl sub_0800A1C4
_0800A526:
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A530: .4byte gUnknown_202780C
_0800A534: .4byte gUnknown_2020050
_0800A538: .4byte gUnknown_2020054
_0800A53C: .4byte gUnknown_2020058
_0800A540: .4byte gUnknown_202005C
_0800A544: .4byte sub_0800C41C
_0800A548: .4byte gUnknown_2024FF8
_0800A54C: .4byte gUnknown_2024112
_0800A550: .4byte gUnknown_2024114
	thumb_func_end sub_0800A3A8

	thumb_func_start sub_0800A554
sub_0800A554: @ 0x0800A554
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	add r7, sp, #8
	str r0, [r7, #0x30]
	bl sub_0804441C
	str r0, [r7, #0x44]
	ldr r0, _0800A60C @ =gUnknown_2020064
	ldr r0, [r0]
	movs r2, #0xe0
	lsls r2, r2, #2
	movs r1, #0
	bl memset
	ldr r1, _0800A610 @ =gUnknown_202780C
	ldrb r2, [r1, #8]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0800A614 @ =gUnknown_85F38EE
	adds r0, r0, r1
	movs r1, #2
	movs r2, #1
	movs r3, #6
	bl sub_08000920
	ldr r3, [r7, #0x30]
	str r3, [r7, #0x34]
	movs r0, #0
	str r0, [r7, #0x38]
	ldrb r0, [r3]
	adds r1, r7, #0
	adds r1, #8
	str r1, [r7, #0x48]
	cmp r0, #0
	beq _0800A5E6
_0800A5A4:
	ldr r2, [r7, #0x34]
	ldrb r3, [r2]
	subs r3, #0x20
	str r3, [r7, #0x3c]
	movs r0, #0x32
	muls r0, r3, r0
	ldr r1, _0800A618 @ =gUnknown_86163DC
	adds r0, r0, r1
	movs r1, #0xa
	str r1, [sp]
	ldr r1, _0800A60C @ =gUnknown_2020064
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, [r7, #0x38]
	movs r2, #0
	movs r3, #0xe
	bl sub_0800C7F4
	ldr r2, [r7, #0x38]
	adds r2, #0xa
	ldr r1, _0800A61C @ =gUnknown_85F275C
	ldr r3, [r7, #0x3c]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	subs r2, r2, r0
	str r2, [r7, #0x38]
	ldr r0, [r7, #0x34]
	adds r0, #1
	str r0, [r7, #0x34]
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800A5A4
_0800A5E6:
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	adds r1, #4
	ldr r2, [r7, #0x44]
	ldr r0, [r2, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _0800A620 @ =sub_0800A624
	ldr r3, [r7, #0x48]
	str r0, [r3, #4]
	mov r0, sp
	str r0, [r3, #8]
	b _0800A626
	.align 2, 0
_0800A60C: .4byte gUnknown_2020064
_0800A610: .4byte gUnknown_202780C
_0800A614: .4byte gUnknown_85F38EE
_0800A618: .4byte gUnknown_86163DC
_0800A61C: .4byte gUnknown_85F275C
_0800A620: .4byte _0800A624
_0800A624: @ 0x0800A624
	b _0800A688
_0800A626:
	str r7, [r1]
	ldr r0, _0800A680 @ =gUnknown_2020064
	ldr r2, [r0]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [r7, #0x40]
	movs r1, #1
	movs r3, #0x70
	bl sub_08002504
	ldr r1, _0800A684 @ =gUnknown_20293BC
	str r0, [r1]
	ldr r2, [r7, #0x44]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r3, r1, #0
	ldr r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_080027DC
	ldr r1, _0800A684 @ =gUnknown_20293BC
	ldr r0, [r1]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0x1c
	movs r2, #0x17
	bl _call_via_r3
	ldr r1, _0800A684 @ =gUnknown_20293BC
	ldr r0, [r1]
	bl sub_080023D8
	ldr r2, _0800A684 @ =gUnknown_20293BC
	ldr r0, [r2]
	bl sub_08002428
	b _0800A6D0
	.align 2, 0
_0800A680: .4byte gUnknown_2020064
_0800A684: .4byte gUnknown_20293BC
_0800A688:
	ldr r2, [r7, #0x44]
	adds r2, #4
	ldr r3, [r7, #0x44]
	ldr r0, [r3, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _0800A6A8 @ =sub_0800A6AC
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0800A6AE
	.align 2, 0
_0800A6A8: .4byte _0800A6AC
_0800A6AC: @ 0x0800A6AC
	b _0800A6CC
_0800A6AE:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _0800A6C0
	ldr r0, [r7, #0x40]
	bl sub_080046C0
_0800A6C0:
	ldr r1, [r7, #0x44]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_0800A6CC:
	bl sub_080443CC
_0800A6D0:
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800A554

	thumb_func_start sub_0800A6E0
sub_0800A6E0: @ 0x0800A6E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	add r7, sp, #8
	str r0, [r7, #0x30]
	bl sub_0804441C
	str r0, [r7, #0x44]
	ldr r0, _0800A780 @ =gUnknown_2020068
	ldr r0, [r0]
	movs r2, #0xb0
	lsls r2, r2, #3
	movs r1, #0
	bl memset
	ldr r0, [r7, #0x30]
	str r0, [r7, #0x34]
	movs r1, #0
	str r1, [r7, #0x38]
	ldrb r0, [r0]
	adds r2, r7, #0
	adds r2, #8
	str r2, [r7, #0x48]
	cmp r0, #0
	beq _0800A75C
_0800A718:
	ldr r3, [r7, #0x34]
	ldrb r0, [r3]
	subs r0, #0x20
	str r0, [r7, #0x3c]
	movs r0, #0x32
	ldr r1, [r7, #0x3c]
	muls r0, r1, r0
	ldr r1, _0800A784 @ =gUnknown_86163DC
	adds r0, r0, r1
	movs r1, #0xa
	str r1, [sp]
	ldr r1, _0800A780 @ =gUnknown_2020068
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, [r7, #0x38]
	movs r2, #0
	movs r3, #0x16
	bl sub_0800C7F4
	ldr r2, [r7, #0x38]
	adds r2, #0xa
	ldr r1, _0800A788 @ =gUnknown_85F275C
	ldr r3, [r7, #0x3c]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	subs r2, r2, r0
	str r2, [r7, #0x38]
	ldr r0, [r7, #0x34]
	adds r0, #1
	str r0, [r7, #0x34]
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800A718
_0800A75C:
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	adds r1, #4
	ldr r2, [r7, #0x44]
	ldr r0, [r2, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _0800A78C @ =sub_0800A790
	ldr r3, [r7, #0x48]
	str r0, [r3, #4]
	mov r0, sp
	str r0, [r3, #8]
	b _0800A792
	.align 2, 0
_0800A780: .4byte gUnknown_2020068
_0800A784: .4byte gUnknown_86163DC
_0800A788: .4byte gUnknown_85F275C
_0800A78C: .4byte _0800A790
_0800A790: @ 0x0800A790
	b _0800A7F4
_0800A792:
	str r7, [r1]
	ldr r0, _0800A7EC @ =gUnknown_2020068
	ldr r2, [r0]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [r7, #0x40]
	movs r1, #1
	movs r3, #0xb0
	bl sub_08002504
	ldr r1, _0800A7F0 @ =gUnknown_20293BC
	str r0, [r1, #0x34]
	ldr r2, [r7, #0x44]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r3, r1, #0
	ldr r0, [r3, #0x34]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0xf1
	movs r2, #0x17
	bl _call_via_r3
	ldr r1, _0800A7F0 @ =gUnknown_20293BC
	ldr r0, [r1, #0x34]
	bl sub_080023D8
	ldr r2, _0800A7F0 @ =gUnknown_20293BC
	ldr r0, [r2, #0x34]
	bl sub_08002428
	ldr r3, _0800A7F0 @ =gUnknown_20293BC
	ldr r0, [r3, #0x34]
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_080027DC
	b _0800A83C
	.align 2, 0
_0800A7EC: .4byte gUnknown_2020068
_0800A7F0: .4byte gUnknown_20293BC
_0800A7F4:
	ldr r2, [r7, #0x44]
	adds r2, #4
	ldr r1, [r7, #0x44]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _0800A814 @ =sub_0800A818
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800A81A
	.align 2, 0
_0800A814: .4byte _0800A818
_0800A818: @ 0x0800A818
	b _0800A838
_0800A81A:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _0800A82C
	ldr r0, [r7, #0x40]
	bl sub_080046C0
_0800A82C:
	ldr r1, [r7, #0x44]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_0800A838:
	bl sub_080443CC
_0800A83C:
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800A6E0

	thumb_func_start sub_0800A84C
sub_0800A84C: @ 0x0800A84C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	add r7, sp, #8
	str r0, [r7, #0x30]
	bl sub_0804441C
	str r0, [r7, #0x38]
	ldr r0, _0800A894 @ =gUnknown_85F391E
	movs r1, #2
	movs r2, #1
	movs r3, #6
	bl sub_08000920
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x34]
	ldr r2, [r7, #0x38]
	adds r2, #4
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _0800A898 @ =sub_0800A89C
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800A89E
	.align 2, 0
_0800A894: .4byte gUnknown_85F391E
_0800A898: .4byte _0800A89C
_0800A89C: @ 0x0800A89C
	b _0800A8F8
_0800A89E:
	str r7, [r2]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [r7, #0x34]
	movs r1, #1
	ldr r2, [r7, #0x30]
	movs r3, #0xc0
	bl sub_08002504
	ldr r1, _0800A8F4 @ =gUnknown_20293BC
	str r0, [r1, #0x34]
	ldr r3, [r7, #0x38]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	ldr r0, [r1, #0x34]
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_080027DC
	ldr r3, _0800A8F4 @ =gUnknown_20293BC
	ldr r0, [r3, #0x34]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0x1c
	movs r2, #0x17
	bl _call_via_r3
	ldr r1, _0800A8F4 @ =gUnknown_20293BC
	ldr r0, [r1, #0x34]
	bl sub_080023D8
	ldr r3, _0800A8F4 @ =gUnknown_20293BC
	ldr r0, [r3, #0x34]
	bl sub_08002428
	b _0800A940
	.align 2, 0
_0800A8F4: .4byte gUnknown_20293BC
_0800A8F8:
	ldr r2, [r7, #0x38]
	adds r2, #4
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _0800A918 @ =sub_0800A91C
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800A91E
	.align 2, 0
_0800A918: .4byte _0800A91C
_0800A91C: @ 0x0800A91C
	b _0800A93C
_0800A91E:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _0800A930
	ldr r0, [r7, #0x34]
	bl sub_080046C0
_0800A930:
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_0800A93C:
	bl sub_080443CC
_0800A940:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800A84C

	thumb_func_start sub_0800A950
sub_0800A950: @ 0x0800A950
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	add r7, sp, #8
	bl sub_0804441C
	str r0, [r7, #0x64]
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x60]
	ldr r2, [r7, #0x64]
	adds r2, #4
	ldr r1, [r7, #0x64]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _0800A98C @ =sub_0800A990
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800A992
	.align 2, 0
_0800A98C: .4byte _0800A990
_0800A990: @ 0x0800A990
	b _0800AA70
_0800A992:
	str r7, [r2]
	ldr r2, _0800AA08 @ =gUnknown_861035C
	movs r0, #8
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	ldr r0, [r7, #0x60]
	movs r1, #1
	movs r3, #8
	bl sub_08002504
	ldr r1, _0800AA0C @ =gUnknown_20293BC
	str r0, [r1, #0x38]
	ldr r3, [r7, #0x64]
	adds r3, #4
	str r3, [r7, #0x68]
	ldr r1, [r7, #0x64]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r3, _0800AA0C @ =gUnknown_20293BC
	ldr r0, [r3, #0x38]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0xd7
	movs r2, #0x32
	bl _call_via_r3
	ldr r1, _0800AA0C @ =gUnknown_20293BC
	ldr r0, [r1, #0x38]
	bl sub_08002428
	ldr r3, _0800AA0C @ =gUnknown_20293BC
	ldr r0, [r3, #0x38]
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_080027DC
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x6c]
	ldr r1, [r7, #0x64]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r3, #0
	str r3, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _0800AA10 @ =sub_0800AA14
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0800AA16
	.align 2, 0
_0800AA08: .4byte gUnknown_861035C
_0800AA0C: .4byte gUnknown_20293BC
_0800AA10: .4byte _0800AA14
_0800AA14: @ 0x0800AA14
	b _0800AAB4
_0800AA16:
	adds r0, r7, #0
	adds r0, #0x18
	ldr r1, [r7, #0x68]
	str r0, [r1]
	ldr r2, _0800AA68 @ =gUnknown_861037C
	movs r0, #8
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	ldr r0, [r7, #0x6c]
	movs r1, #1
	movs r3, #8
	bl sub_08002504
	ldr r3, _0800AA6C @ =gUnknown_20293BC
	str r0, [r3, #0x3c]
	ldr r1, [r7, #0x64]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, [r3, #0x3c]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0xd7
	movs r2, #0x7b
	bl _call_via_r3
	ldr r1, _0800AA6C @ =gUnknown_20293BC
	ldr r0, [r1, #0x3c]
	bl sub_08002428
	ldr r3, _0800AA6C @ =gUnknown_20293BC
	ldr r0, [r3, #0x3c]
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_080027DC
	b _0800AB00
	.align 2, 0
_0800AA68: .4byte gUnknown_861037C
_0800AA6C: .4byte gUnknown_20293BC
_0800AA70:
	ldr r2, [r7, #0x64]
	adds r2, #4
	ldr r1, [r7, #0x64]
	ldr r0, [r1, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	adds r1, r7, #0
	adds r1, #0x38
	str r7, [r7, #0x38]
	ldr r0, _0800AA90 @ =sub_0800AA94
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800AA96
	.align 2, 0
_0800AA90: .4byte _0800AA94
_0800AA94: @ 0x0800AA94
	b _0800AAF8
_0800AA96:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _0800AAA8
	ldr r0, [r7, #0x60]
	bl sub_080046C0
_0800AAA8:
	ldr r1, [r7, #0x64]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_0800AAB4:
	ldr r2, [r7, #0x64]
	adds r2, #4
	ldr r3, [r7, #0x64]
	ldr r0, [r3, #4]
	str r0, [r7, #0x48]
	movs r0, #0
	str r0, [r7, #0x4c]
	adds r1, r7, #0
	adds r1, #0x50
	str r7, [r7, #0x50]
	ldr r0, _0800AAD4 @ =sub_0800AAD8
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0800AADA
	.align 2, 0
_0800AAD4: .4byte _0800AAD8
_0800AAD8: @ 0x0800AAD8
	b _0800AAFC
_0800AADA:
	adds r0, r7, #0
	adds r0, #0x48
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _0800AAEC
	ldr r0, [r7, #0x6c]
	bl sub_080046C0
_0800AAEC:
	ldr r1, [r7, #0x64]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_0800AAF8:
	bl sub_080443CC
_0800AAFC:
	bl sub_080443CC
_0800AB00:
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800A950

	thumb_func_start sub_0800AB10
sub_0800AB10: @ 0x0800AB10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x120
	add r7, sp, #8
	movs r2, #0xf0
	adds r2, r2, r7
	str r0, [r2]
	movs r3, #0xf4
	adds r3, r3, r7
	str r1, [r3]
	bl sub_0804441C
	movs r1, #0xfc
	adds r1, r1, r7
	str r0, [r1]
	movs r2, #0xf0
	adds r2, r2, r7
	ldr r0, [r2]
	movs r1, #4
	movs r2, #0
	movs r3, #0x20
	bl sub_08000920
	movs r0, #0x38
	bl sub_080046D4
	movs r3, #0xf8
	adds r3, r3, r7
	str r0, [r3]
	movs r0, #0xfc
	adds r0, r0, r7
	ldr r2, [r0]
	adds r2, #4
	ldr r1, [r0]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _0800AB74 @ =sub_0800AB78
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800AB7A
	.align 2, 0
_0800AB74: .4byte _0800AB78
_0800AB78: @ 0x0800AB78
	b _0800AE98
_0800AB7A:
	str r7, [r2]
	movs r0, #0x28
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r1, #0xf8
	adds r1, r1, r7
	ldr r0, [r1]
	movs r1, #1
	movs r3, #0xf4
	adds r3, r3, r7
	ldr r2, [r3]
	movs r3, #0x28
	bl sub_08002504
	ldr r1, _0800AC28 @ =gUnknown_20293BC
	str r0, [r1, #4]
	movs r3, #0xfc
	adds r3, r3, r7
	ldr r2, [r3]
	adds r2, #4
	movs r3, #0x80
	lsls r3, r3, #1
	adds r3, r3, r7
	str r2, [r3]
	movs r1, #0xfc
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r3, _0800AC28 @ =gUnknown_20293BC
	ldr r0, [r3, #4]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0xb8
	movs r2, #0x1b
	bl _call_via_r3
	ldr r1, _0800AC28 @ =gUnknown_20293BC
	ldr r0, [r1, #4]
	bl sub_080023D8
	ldr r2, _0800AC28 @ =gUnknown_20293BC
	ldr r0, [r2, #4]
	bl sub_08002428
	ldr r3, _0800AC28 @ =gUnknown_20293BC
	ldr r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_080027DC
	movs r0, #0x38
	bl sub_080046D4
	movs r1, #0x82
	lsls r1, r1, #1
	adds r1, r1, r7
	str r0, [r1]
	movs r2, #0xfc
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	str r0, [r7, #0x18]
	movs r3, #0
	str r3, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _0800AC2C @ =sub_0800AC30
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r7
	ldr r1, [r1]
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r2, r2, r7
	str r1, [r2]
	b _0800AC32
	.align 2, 0
_0800AC28: .4byte gUnknown_20293BC
_0800AC2C: .4byte _0800AC30
_0800AC30: @ 0x0800AC30
	b _0800AEE8
_0800AC32:
	adds r0, r7, #0
	adds r0, #0x18
	movs r2, #0x80
	lsls r2, r2, #1
	adds r2, r2, r7
	ldr r2, [r2]
	str r0, [r2]
	ldr r2, _0800AC98 @ =gUnknown_860F73C
	movs r0, #0x38
	str r0, [sp]
	movs r3, #0
	str r3, [sp, #4]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r1, r1, r7
	ldr r0, [r1]
	movs r1, #1
	movs r3, #0x18
	bl sub_08002504
	ldr r2, _0800AC9C @ =gUnknown_20293BC
	str r0, [r2, #8]
	movs r3, #0xfc
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	movs r0, #0x38
	bl sub_080046D4
	movs r2, #0x84
	lsls r2, r2, #1
	adds r2, r2, r7
	str r0, [r2]
	movs r3, #0xfc
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	adds r1, r7, #0
	adds r1, #0x38
	str r7, [r7, #0x38]
	ldr r0, _0800ACA0 @ =sub_0800ACA4
	str r0, [r1, #4]
	mov r2, sp
	str r2, [r1, #8]
	b _0800ACA6
	.align 2, 0
_0800AC98: .4byte gUnknown_860F73C
_0800AC9C: .4byte gUnknown_20293BC
_0800ACA0: .4byte _0800ACA4
_0800ACA4: @ 0x0800ACA4
	b _0800AF3A
_0800ACA6:
	adds r0, r7, #0
	adds r0, #0x30
	movs r3, #0x8a
	lsls r3, r3, #1
	adds r3, r3, r7
	ldr r3, [r3]
	str r0, [r3]
	ldr r2, _0800AD0C @ =gUnknown_860F9DC
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r1, r1, r7
	ldr r0, [r1]
	movs r1, #1
	movs r3, #0x38
	bl sub_08002504
	ldr r2, _0800AD10 @ =gUnknown_20293BC
	str r0, [r2, #0xc]
	movs r3, #0xfc
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	movs r0, #0x38
	bl sub_080046D4
	movs r2, #0x86
	lsls r2, r2, #1
	adds r2, r2, r7
	str r0, [r2]
	movs r3, #0xfc
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	str r0, [r7, #0x48]
	movs r0, #0
	str r0, [r7, #0x4c]
	adds r1, r7, #0
	adds r1, #0x50
	str r7, [r7, #0x50]
	ldr r0, _0800AD14 @ =sub_0800AD18
	str r0, [r1, #4]
	mov r2, sp
	str r2, [r1, #8]
	b _0800AD1A
	.align 2, 0
_0800AD0C: .4byte gUnknown_860F9DC
_0800AD10: .4byte gUnknown_20293BC
_0800AD14: .4byte _0800AD18
_0800AD18: @ 0x0800AD18
	b _0800AF8A
_0800AD1A:
	adds r0, r7, #0
	adds r0, #0x48
	movs r3, #0x8a
	lsls r3, r3, #1
	adds r3, r3, r7
	ldr r3, [r3]
	str r0, [r3]
	ldr r2, _0800AD80 @ =gUnknown_860FABC
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0x86
	lsls r1, r1, #1
	adds r1, r1, r7
	ldr r0, [r1]
	movs r1, #1
	movs r3, #0x38
	bl sub_08002504
	ldr r2, _0800AD84 @ =gUnknown_20293BC
	str r0, [r2, #0x10]
	movs r3, #0xfc
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	movs r0, #0x38
	bl sub_080046D4
	movs r2, #0x88
	lsls r2, r2, #1
	adds r2, r2, r7
	str r0, [r2]
	movs r3, #0xfc
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	str r0, [r7, #0x60]
	movs r0, #0
	str r0, [r7, #0x64]
	adds r1, r7, #0
	adds r1, #0x68
	str r7, [r7, #0x68]
	ldr r0, _0800AD88 @ =sub_0800AD8C
	str r0, [r1, #4]
	mov r2, sp
	str r2, [r1, #8]
	b _0800AD8E
	.align 2, 0
_0800AD80: .4byte gUnknown_860FABC
_0800AD84: .4byte gUnknown_20293BC
_0800AD88: .4byte _0800AD8C
_0800AD8C: @ 0x0800AD8C
	b _0800AFDA
_0800AD8E:
	adds r0, r7, #0
	adds r0, #0x60
	movs r3, #0x8a
	lsls r3, r3, #1
	adds r3, r3, r7
	ldr r3, [r3]
	str r0, [r3]
	ldr r2, _0800AE90 @ =gUnknown_860FB9C
	movs r0, #0x28
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r1, r1, r7
	ldr r0, [r1]
	movs r1, #1
	movs r3, #0x10
	bl sub_08002504
	ldr r2, _0800AE94 @ =gUnknown_20293BC
	str r0, [r2, #0x14]
	movs r3, #0xfc
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_080027DC
	ldr r3, _0800AE94 @ =gUnknown_20293BC
	ldr r0, [r3, #8]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0xa0
	movs r2, #0x13
	bl _call_via_r3
	ldr r1, _0800AE94 @ =gUnknown_20293BC
	ldr r0, [r1, #8]
	bl sub_080023D8
	ldr r2, _0800AE94 @ =gUnknown_20293BC
	ldr r0, [r2, #8]
	bl sub_08002428
	ldr r3, _0800AE94 @ =gUnknown_20293BC
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_080027DC
	ldr r1, _0800AE94 @ =gUnknown_20293BC
	ldr r0, [r1, #0xc]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0xb8
	movs r2, #0x13
	bl _call_via_r3
	ldr r1, _0800AE94 @ =gUnknown_20293BC
	ldr r0, [r1, #0xc]
	bl sub_080023D8
	ldr r2, _0800AE94 @ =gUnknown_20293BC
	ldr r0, [r2, #0xc]
	bl sub_08002428
	ldr r3, _0800AE94 @ =gUnknown_20293BC
	ldr r0, [r3, #0x10]
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_080027DC
	ldr r1, _0800AE94 @ =gUnknown_20293BC
	ldr r0, [r1, #0x10]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0xb8
	movs r2, #0x43
	bl _call_via_r3
	ldr r1, _0800AE94 @ =gUnknown_20293BC
	ldr r0, [r1, #0x10]
	bl sub_080023D8
	ldr r2, _0800AE94 @ =gUnknown_20293BC
	ldr r0, [r2, #0x10]
	bl sub_08002428
	ldr r3, _0800AE94 @ =gUnknown_20293BC
	ldr r0, [r3, #0x14]
	movs r1, #0x80
	lsls r1, r1, #4
	bl sub_080027DC
	ldr r1, _0800AE94 @ =gUnknown_20293BC
	ldr r0, [r1, #0x14]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0xe0
	movs r2, #0x1b
	bl _call_via_r3
	ldr r1, _0800AE94 @ =gUnknown_20293BC
	ldr r0, [r1, #0x14]
	bl sub_080023D8
	ldr r2, _0800AE94 @ =gUnknown_20293BC
	ldr r0, [r2, #0x14]
	bl sub_08002428
	b _0800B03E
	.align 2, 0
_0800AE90: .4byte gUnknown_860FB9C
_0800AE94: .4byte gUnknown_20293BC
_0800AE98:
	movs r3, #0xfc
	adds r3, r3, r7
	ldr r2, [r3]
	adds r2, #4
	ldr r1, [r3]
	ldr r0, [r1, #4]
	str r0, [r7, #0x78]
	movs r0, #0
	str r0, [r7, #0x7c]
	adds r0, r7, #0
	adds r0, #0x80
	str r7, [r0]
	ldr r1, _0800AEBC @ =sub_0800AEC0
	str r1, [r0, #4]
	mov r3, sp
	str r3, [r0, #8]
	b _0800AEC2
	.align 2, 0
_0800AEBC: .4byte _0800AEC0
_0800AEC0: @ 0x0800AEC0
	b _0800B02A
_0800AEC2:
	adds r0, r7, #0
	adds r0, #0x78
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _0800AED8
	movs r1, #0xf8
	adds r1, r1, r7
	ldr r0, [r1]
	bl sub_080046C0
_0800AED8:
	movs r2, #0xfc
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	bl sub_0804449C
_0800AEE8:
	adds r2, r7, #0
	adds r2, #0x90
	movs r0, #0xfc
	adds r0, r0, r7
	ldr r3, [r0]
	adds r3, #4
	ldr r1, [r0]
	ldr r0, [r1, #4]
	str r0, [r2]
	movs r0, #0
	str r0, [r2, #4]
	adds r0, r7, #0
	adds r0, #0x98
	str r7, [r0]
	ldr r1, _0800AF10 @ =sub_0800AF14
	str r1, [r0, #4]
	mov r1, sp
	str r1, [r0, #8]
	b _0800AF16
	.align 2, 0
_0800AF10: .4byte _0800AF14
_0800AF14: @ 0x0800AF14
	b _0800B02E
_0800AF16:
	str r2, [r3]
	movs r0, #1
	cmp r0, #0
	beq _0800AF2A
	movs r2, #0x82
	lsls r2, r2, #1
	adds r2, r2, r7
	ldr r0, [r2]
	bl sub_080046C0
_0800AF2A:
	movs r3, #0xfc
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	bl sub_0804449C
_0800AF3A:
	adds r2, r7, #0
	adds r2, #0xa8
	movs r0, #0xfc
	adds r0, r0, r7
	ldr r3, [r0]
	adds r3, #4
	ldr r1, [r0]
	ldr r0, [r1, #4]
	str r0, [r2]
	movs r0, #0
	str r0, [r2, #4]
	adds r0, r7, #0
	adds r0, #0xb0
	str r7, [r0]
	ldr r1, _0800AF60 @ =sub_0800AF64
	str r1, [r0, #4]
	mov r1, sp
	str r1, [r0, #8]
	b _0800AF66
	.align 2, 0
_0800AF60: .4byte _0800AF64
_0800AF64: @ 0x0800AF64
	b _0800B032
_0800AF66:
	str r2, [r3]
	movs r0, #1
	cmp r0, #0
	beq _0800AF7A
	movs r2, #0x84
	lsls r2, r2, #1
	adds r2, r2, r7
	ldr r0, [r2]
	bl sub_080046C0
_0800AF7A:
	movs r3, #0xfc
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	bl sub_0804449C
_0800AF8A:
	adds r2, r7, #0
	adds r2, #0xc0
	movs r0, #0xfc
	adds r0, r0, r7
	ldr r3, [r0]
	adds r3, #4
	ldr r1, [r0]
	ldr r0, [r1, #4]
	str r0, [r2]
	movs r0, #0
	str r0, [r2, #4]
	adds r0, r7, #0
	adds r0, #0xc8
	str r7, [r0]
	ldr r1, _0800AFB0 @ =sub_0800AFB4
	str r1, [r0, #4]
	mov r1, sp
	str r1, [r0, #8]
	b _0800AFB6
	.align 2, 0
_0800AFB0: .4byte _0800AFB4
_0800AFB4: @ 0x0800AFB4
	b _0800B036
_0800AFB6:
	str r2, [r3]
	movs r0, #1
	cmp r0, #0
	beq _0800AFCA
	movs r2, #0x86
	lsls r2, r2, #1
	adds r2, r2, r7
	ldr r0, [r2]
	bl sub_080046C0
_0800AFCA:
	movs r3, #0xfc
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	bl sub_0804449C
_0800AFDA:
	adds r2, r7, #0
	adds r2, #0xd8
	movs r0, #0xfc
	adds r0, r0, r7
	ldr r3, [r0]
	adds r3, #4
	ldr r1, [r0]
	ldr r0, [r1, #4]
	str r0, [r2]
	movs r0, #0
	str r0, [r2, #4]
	adds r0, r7, #0
	adds r0, #0xe0
	str r7, [r0]
	ldr r1, _0800B000 @ =sub_0800B004
	str r1, [r0, #4]
	mov r1, sp
	str r1, [r0, #8]
	b _0800B006
	.align 2, 0
_0800B000: .4byte _0800B004
_0800B004: @ 0x0800B004
	b _0800B03A
_0800B006:
	str r2, [r3]
	movs r0, #1
	cmp r0, #0
	beq _0800B01A
	movs r2, #0x88
	lsls r2, r2, #1
	adds r2, r2, r7
	ldr r0, [r2]
	bl sub_080046C0
_0800B01A:
	movs r3, #0xfc
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	bl sub_0804449C
_0800B02A:
	bl sub_080443CC
_0800B02E:
	bl sub_080443CC
_0800B032:
	bl sub_080443CC
_0800B036:
	bl sub_080443CC
_0800B03A:
	bl sub_080443CC
_0800B03E:
	add sp, #0x120
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800AB10

	thumb_func_start sub_0800B050
sub_0800B050: @ 0x0800B050
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	add r7, sp, #8
	str r0, [r7, #0x30]
	bl sub_0804441C
	str r0, [r7, #0x38]
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x34]
	ldr r2, [r7, #0x38]
	adds r2, #4
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _0800B08C @ =sub_0800B090
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800B092
	.align 2, 0
_0800B08C: .4byte _0800B090
_0800B090: @ 0x0800B090
	b _0800B0FC
_0800B092:
	str r7, [r2]
	ldr r2, _0800B0F4 @ =gUnknown_860FCDC
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [r7, #0x34]
	movs r1, #1
	movs r3, #0xd8
	bl sub_08002504
	ldr r1, _0800B0F8 @ =gUnknown_20293BC
	str r0, [r1, #0x18]
	ldr r3, [r7, #0x38]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	ldr r0, [r1, #0x18]
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_080027DC
	ldr r3, _0800B0F8 @ =gUnknown_20293BC
	ldr r1, [r3, #0x18]
	ldr r0, [r1, #0x30]
	adds r2, r0, #0
	adds r2, #8
	movs r3, #8
	ldrsh r0, [r0, r3]
	adds r0, r1, r0
	movs r1, #0x87
	lsls r1, r1, #1
	ldr r3, [r7, #0x30]
	cmp r3, #0
	beq _0800B0DA
	movs r1, #0x18
_0800B0DA:
	ldr r3, [r2, #4]
	movs r2, #0x54
	bl _call_via_r3
	ldr r1, _0800B0F8 @ =gUnknown_20293BC
	ldr r0, [r1, #0x18]
	bl sub_080023D8
	ldr r3, _0800B0F8 @ =gUnknown_20293BC
	ldr r0, [r3, #0x18]
	bl sub_08002428
	b _0800B144
	.align 2, 0
_0800B0F4: .4byte gUnknown_860FCDC
_0800B0F8: .4byte gUnknown_20293BC
_0800B0FC:
	ldr r2, [r7, #0x38]
	adds r2, #4
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _0800B11C @ =sub_0800B120
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800B122
	.align 2, 0
_0800B11C: .4byte _0800B120
_0800B120: @ 0x0800B120
	b _0800B140
_0800B122:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _0800B134
	ldr r0, [r7, #0x34]
	bl sub_080046C0
_0800B134:
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_0800B140:
	bl sub_080443CC
_0800B144:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800B050

	thumb_func_start sub_0800B154
sub_0800B154: @ 0x0800B154
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x11c
	add r7, sp, #8
	bl sub_0804441C
	movs r1, #0xf4
	adds r1, r1, r7
	str r0, [r1]
	movs r0, #0x38
	bl sub_080046D4
	movs r2, #0xf0
	adds r2, r2, r7
	str r0, [r2]
	movs r3, #0xf4
	adds r3, r3, r7
	ldr r2, [r3]
	adds r2, #4
	ldr r1, [r3]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _0800B19C @ =sub_0800B1A0
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800B1A2
	.align 2, 0
_0800B19C: .4byte _0800B1A0
_0800B1A0: @ 0x0800B1A0
	b _0800B4F0
_0800B1A2:
	str r7, [r2]
	ldr r2, _0800B258 @ =gUnknown_8610F1C
	movs r0, #0x10
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #0xf0
	adds r1, r1, r7
	ldr r0, [r1]
	movs r1, #1
	movs r3, #0x18
	bl sub_08002504
	ldr r2, _0800B25C @ =gUnknown_20293BC
	str r0, [r2, #0x20]
	movs r0, #0xf4
	adds r0, r0, r7
	ldr r3, [r0]
	adds r3, #4
	movs r0, #0xf8
	adds r0, r0, r7
	str r3, [r0]
	movs r1, #0xf4
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	adds r3, r2, #0
	ldr r0, [r3, #0x20]
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_080027DC
	ldr r1, _0800B25C @ =gUnknown_20293BC
	ldr r0, [r1, #0x20]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #6
	movs r2, #0x90
	bl _call_via_r3
	ldr r1, _0800B25C @ =gUnknown_20293BC
	ldr r0, [r1, #0x20]
	bl sub_080023D8
	ldr r2, _0800B25C @ =gUnknown_20293BC
	ldr r0, [r2, #0x20]
	bl sub_08002428
	ldr r0, _0800B260 @ =gUnknown_2027800
	ldrb r0, [r0, #7]
	movs r3, #0xe7
	movs r1, #0xfc
	adds r1, r1, r7
	str r3, [r1]
	movs r2, #0xf8
	adds r2, r2, r7
	ldr r2, [r2]
	adds r3, #0x29
	adds r3, r3, r7
	str r2, [r3]
	cmp r0, #0
	beq _0800B22C
	movs r3, #0xcb
	str r3, [r1]
_0800B22C:
	movs r0, #0x38
	bl sub_080046D4
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r7
	str r0, [r1]
	movs r2, #0xf4
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _0800B264 @ =sub_0800B268
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800B26A
	.align 2, 0
_0800B258: .4byte gUnknown_8610F1C
_0800B25C: .4byte gUnknown_20293BC
_0800B260: .4byte gUnknown_2027800
_0800B264: .4byte _0800B268
_0800B268: @ 0x0800B268
	b _0800B540
_0800B26A:
	adds r0, r7, #0
	adds r0, #0x18
	movs r1, #0xf8
	adds r1, r1, r7
	ldr r1, [r1]
	str r0, [r1]
	movs r3, #0xfc
	adds r3, r3, r7
	ldr r3, [r3]
	lsls r2, r3, #5
	ldr r0, _0800B308 @ =gUnknown_860F73C
	adds r2, r2, r0
	movs r0, #0x10
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r7
	ldr r0, [r1]
	movs r1, #1
	movs r3, #0x38
	bl sub_08002504
	ldr r2, _0800B30C @ =gUnknown_20293BC
	str r0, [r2, #0x24]
	movs r3, #0xf4
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	ldr r0, [r2, #0x24]
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_080027DC
	ldr r3, _0800B30C @ =gUnknown_20293BC
	ldr r0, [r3, #0x24]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0x14
	movs r2, #0x90
	bl _call_via_r3
	ldr r1, _0800B30C @ =gUnknown_20293BC
	ldr r0, [r1, #0x24]
	bl sub_080023D8
	ldr r2, _0800B30C @ =gUnknown_20293BC
	ldr r0, [r2, #0x24]
	bl sub_08002428
	movs r0, #0x38
	bl sub_080046D4
	movs r3, #0x82
	lsls r3, r3, #1
	adds r3, r3, r7
	str r0, [r3]
	movs r1, #0xf4
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #4]
	str r0, [r7, #0x30]
	movs r2, #0
	str r2, [r7, #0x34]
	adds r1, r7, #0
	adds r1, #0x38
	str r7, [r7, #0x38]
	ldr r0, _0800B310 @ =sub_0800B314
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800B316
	.align 2, 0
_0800B308: .4byte gUnknown_860F73C
_0800B30C: .4byte gUnknown_20293BC
_0800B310: .4byte _0800B314
_0800B314: @ 0x0800B314
	b _0800B592
_0800B316:
	adds r0, r7, #0
	adds r0, #0x30
	movs r1, #0x88
	lsls r1, r1, #1
	adds r1, r1, r7
	ldr r1, [r1]
	str r0, [r1]
	ldr r2, _0800B3AC @ =gUnknown_861125C
	movs r0, #0x10
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r3, #0x82
	lsls r3, r3, #1
	adds r3, r3, r7
	ldr r0, [r3]
	movs r1, #1
	movs r3, #0x38
	bl sub_08002504
	ldr r1, _0800B3B0 @ =gUnknown_20293BC
	str r0, [r1, #0x28]
	movs r2, #0xf4
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, [r1, #0x28]
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_080027DC
	ldr r2, _0800B3B0 @ =gUnknown_20293BC
	ldr r0, [r2, #0x28]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0x60
	movs r2, #0x90
	bl _call_via_r3
	ldr r1, _0800B3B0 @ =gUnknown_20293BC
	ldr r0, [r1, #0x28]
	bl sub_080023D8
	ldr r2, _0800B3B0 @ =gUnknown_20293BC
	ldr r0, [r2, #0x28]
	bl sub_08002428
	movs r0, #0x38
	bl sub_080046D4
	movs r3, #0x84
	lsls r3, r3, #1
	adds r3, r3, r7
	str r0, [r3]
	movs r1, #0xf4
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #4]
	str r0, [r7, #0x48]
	movs r2, #0
	str r2, [r7, #0x4c]
	adds r1, r7, #0
	adds r1, #0x50
	str r7, [r7, #0x50]
	ldr r0, _0800B3B4 @ =sub_0800B3B8
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800B3BA
	.align 2, 0
_0800B3AC: .4byte gUnknown_861125C
_0800B3B0: .4byte gUnknown_20293BC
_0800B3B4: .4byte _0800B3B8
_0800B3B8: @ 0x0800B3B8
	b _0800B5E2
_0800B3BA:
	adds r0, r7, #0
	adds r0, #0x48
	movs r1, #0x88
	lsls r1, r1, #1
	adds r1, r1, r7
	ldr r1, [r1]
	str r0, [r1]
	ldr r2, _0800B450 @ =gUnknown_861141C
	movs r0, #0x10
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r3, #0x84
	lsls r3, r3, #1
	adds r3, r3, r7
	ldr r0, [r3]
	movs r1, #1
	movs r3, #0x38
	bl sub_08002504
	ldr r1, _0800B454 @ =gUnknown_20293BC
	str r0, [r1, #0x30]
	movs r2, #0xf4
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, [r1, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_080027DC
	ldr r2, _0800B454 @ =gUnknown_20293BC
	ldr r0, [r2, #0x30]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0xad
	movs r2, #0x90
	bl _call_via_r3
	ldr r1, _0800B454 @ =gUnknown_20293BC
	ldr r0, [r1, #0x30]
	bl sub_080023D8
	ldr r2, _0800B454 @ =gUnknown_20293BC
	ldr r0, [r2, #0x30]
	bl sub_08002428
	movs r0, #0x38
	bl sub_080046D4
	movs r3, #0x86
	lsls r3, r3, #1
	adds r3, r3, r7
	str r0, [r3]
	movs r1, #0xf4
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #4]
	str r0, [r7, #0x60]
	movs r2, #0
	str r2, [r7, #0x64]
	adds r1, r7, #0
	adds r1, #0x68
	str r7, [r7, #0x68]
	ldr r0, _0800B458 @ =sub_0800B45C
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800B45E
	.align 2, 0
_0800B450: .4byte gUnknown_861141C
_0800B454: .4byte gUnknown_20293BC
_0800B458: .4byte _0800B45C
_0800B45C: @ 0x0800B45C
	b _0800B632
_0800B45E:
	adds r0, r7, #0
	adds r0, #0x60
	movs r1, #0x88
	lsls r1, r1, #1
	adds r1, r1, r7
	ldr r1, [r1]
	str r0, [r1]
	ldr r2, _0800B4DC @ =gUnknown_8610FDC
	movs r0, #0x10
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r3, #0x86
	lsls r3, r3, #1
	adds r3, r3, r7
	ldr r0, [r3]
	movs r1, #1
	movs r3, #0x18
	bl sub_08002504
	ldr r1, _0800B4E0 @ =gUnknown_20293BC
	str r0, [r1, #0x2c]
	movs r2, #0xf4
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, [r1, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_080027DC
	ldr r2, _0800B4E0 @ =gUnknown_20293BC
	ldr r0, [r2, #0x2c]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0xd2
	movs r2, #0x90
	bl _call_via_r3
	ldr r1, _0800B4E0 @ =gUnknown_20293BC
	ldr r0, [r1, #0x2c]
	bl sub_080023D8
	ldr r2, _0800B4E0 @ =gUnknown_20293BC
	ldr r0, [r2, #0x2c]
	bl sub_08002428
	ldr r1, _0800B4E4 @ =gUnknown_2029424
	ldr r3, _0800B4E0 @ =gUnknown_20293BC
	ldr r0, [r3, #0x24]
	str r0, [r1]
	ldr r1, _0800B4E8 @ =gUnknown_2029428
	ldr r0, [r3, #0x28]
	str r0, [r1]
	ldr r1, _0800B4EC @ =gUnknown_202942C
	ldr r0, [r3, #0x30]
	str r0, [r1]
	b _0800B696
	.align 2, 0
_0800B4DC: .4byte gUnknown_8610FDC
_0800B4E0: .4byte gUnknown_20293BC
_0800B4E4: .4byte gUnknown_2029424
_0800B4E8: .4byte gUnknown_2029428
_0800B4EC: .4byte gUnknown_202942C
_0800B4F0:
	movs r0, #0xf4
	adds r0, r0, r7
	ldr r2, [r0]
	adds r2, #4
	ldr r1, [r0]
	ldr r0, [r1, #4]
	str r0, [r7, #0x78]
	movs r0, #0
	str r0, [r7, #0x7c]
	adds r0, r7, #0
	adds r0, #0x80
	str r7, [r0]
	ldr r1, _0800B514 @ =sub_0800B518
	str r1, [r0, #4]
	mov r3, sp
	str r3, [r0, #8]
	b _0800B51A
	.align 2, 0
_0800B514: .4byte _0800B518
_0800B518: @ 0x0800B518
	b _0800B682
_0800B51A:
	adds r0, r7, #0
	adds r0, #0x78
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _0800B530
	movs r1, #0xf0
	adds r1, r1, r7
	ldr r0, [r1]
	bl sub_080046C0
_0800B530:
	movs r2, #0xf4
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	bl sub_0804449C
_0800B540:
	adds r2, r7, #0
	adds r2, #0x90
	movs r0, #0xf4
	adds r0, r0, r7
	ldr r3, [r0]
	adds r3, #4
	ldr r1, [r0]
	ldr r0, [r1, #4]
	str r0, [r2]
	movs r0, #0
	str r0, [r2, #4]
	adds r0, r7, #0
	adds r0, #0x98
	str r7, [r0]
	ldr r1, _0800B568 @ =sub_0800B56C
	str r1, [r0, #4]
	mov r1, sp
	str r1, [r0, #8]
	b _0800B56E
	.align 2, 0
_0800B568: .4byte _0800B56C
_0800B56C: @ 0x0800B56C
	b _0800B686
_0800B56E:
	str r2, [r3]
	movs r0, #1
	cmp r0, #0
	beq _0800B582
	movs r2, #0x80
	lsls r2, r2, #1
	adds r2, r2, r7
	ldr r0, [r2]
	bl sub_080046C0
_0800B582:
	movs r3, #0xf4
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	bl sub_0804449C
_0800B592:
	adds r2, r7, #0
	adds r2, #0xa8
	movs r0, #0xf4
	adds r0, r0, r7
	ldr r3, [r0]
	adds r3, #4
	ldr r1, [r0]
	ldr r0, [r1, #4]
	str r0, [r2]
	movs r0, #0
	str r0, [r2, #4]
	adds r0, r7, #0
	adds r0, #0xb0
	str r7, [r0]
	ldr r1, _0800B5B8 @ =sub_0800B5BC
	str r1, [r0, #4]
	mov r1, sp
	str r1, [r0, #8]
	b _0800B5BE
	.align 2, 0
_0800B5B8: .4byte _0800B5BC
_0800B5BC: @ 0x0800B5BC
	b _0800B68A
_0800B5BE:
	str r2, [r3]
	movs r0, #1
	cmp r0, #0
	beq _0800B5D2
	movs r2, #0x82
	lsls r2, r2, #1
	adds r2, r2, r7
	ldr r0, [r2]
	bl sub_080046C0
_0800B5D2:
	movs r3, #0xf4
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	bl sub_0804449C
_0800B5E2:
	adds r2, r7, #0
	adds r2, #0xc0
	movs r0, #0xf4
	adds r0, r0, r7
	ldr r3, [r0]
	adds r3, #4
	ldr r1, [r0]
	ldr r0, [r1, #4]
	str r0, [r2]
	movs r0, #0
	str r0, [r2, #4]
	adds r0, r7, #0
	adds r0, #0xc8
	str r7, [r0]
	ldr r1, _0800B608 @ =sub_0800B60C
	str r1, [r0, #4]
	mov r1, sp
	str r1, [r0, #8]
	b _0800B60E
	.align 2, 0
_0800B608: .4byte _0800B60C
_0800B60C: @ 0x0800B60C
	b _0800B68E
_0800B60E:
	str r2, [r3]
	movs r0, #1
	cmp r0, #0
	beq _0800B622
	movs r2, #0x84
	lsls r2, r2, #1
	adds r2, r2, r7
	ldr r0, [r2]
	bl sub_080046C0
_0800B622:
	movs r3, #0xf4
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	bl sub_0804449C
_0800B632:
	adds r2, r7, #0
	adds r2, #0xd8
	movs r0, #0xf4
	adds r0, r0, r7
	ldr r3, [r0]
	adds r3, #4
	ldr r1, [r0]
	ldr r0, [r1, #4]
	str r0, [r2]
	movs r0, #0
	str r0, [r2, #4]
	adds r0, r7, #0
	adds r0, #0xe0
	str r7, [r0]
	ldr r1, _0800B658 @ =sub_0800B65C
	str r1, [r0, #4]
	mov r1, sp
	str r1, [r0, #8]
	b _0800B65E
	.align 2, 0
_0800B658: .4byte _0800B65C
_0800B65C: @ 0x0800B65C
	b _0800B692
_0800B65E:
	str r2, [r3]
	movs r0, #1
	cmp r0, #0
	beq _0800B672
	movs r2, #0x86
	lsls r2, r2, #1
	adds r2, r2, r7
	ldr r0, [r2]
	bl sub_080046C0
_0800B672:
	movs r3, #0xf4
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	bl sub_0804449C
_0800B682:
	bl sub_080443CC
_0800B686:
	bl sub_080443CC
_0800B68A:
	bl sub_080443CC
_0800B68E:
	bl sub_080443CC
_0800B692:
	bl sub_080443CC
_0800B696:
	add sp, #0x11c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800B154

	thumb_func_start sub_0800B6A8
sub_0800B6A8: @ 0x0800B6A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x118
	add r7, sp, #8
	bl sub_0804441C
	movs r1, #0xf4
	adds r1, r1, r7
	str r0, [r1]
	movs r0, #0x38
	bl sub_080046D4
	movs r2, #0xf0
	adds r2, r2, r7
	str r0, [r2]
	movs r3, #0xf4
	adds r3, r3, r7
	ldr r2, [r3]
	adds r2, #4
	ldr r1, [r3]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _0800B6F0 @ =sub_0800B6F4
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800B6F6
	.align 2, 0
_0800B6F0: .4byte _0800B6F4
_0800B6F4: @ 0x0800B6F4
	b _0800BA44
_0800B6F6:
	str r7, [r2]
	ldr r2, _0800B7AC @ =gUnknown_861141C
	movs r0, #0x10
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #0xf0
	adds r1, r1, r7
	ldr r0, [r1]
	movs r1, #1
	movs r3, #0x38
	bl sub_08002504
	ldr r2, _0800B7B0 @ =gUnknown_20293BC
	str r0, [r2, #0x28]
	movs r0, #0xf4
	adds r0, r0, r7
	ldr r3, [r0]
	adds r3, #4
	movs r0, #0xf8
	adds r0, r0, r7
	str r3, [r0]
	movs r1, #0xf4
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	adds r3, r2, #0
	ldr r0, [r3, #0x28]
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_080027DC
	ldr r1, _0800B7B0 @ =gUnknown_20293BC
	ldr r0, [r1, #0x28]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0x60
	movs r2, #0x90
	bl _call_via_r3
	ldr r1, _0800B7B0 @ =gUnknown_20293BC
	ldr r0, [r1, #0x28]
	bl sub_080023D8
	ldr r2, _0800B7B0 @ =gUnknown_20293BC
	ldr r0, [r2, #0x28]
	bl sub_08002428
	ldr r1, _0800B7B4 @ =gUnknown_2029428
	ldr r3, _0800B7B0 @ =gUnknown_20293BC
	ldr r0, [r3, #0x28]
	str r0, [r1]
	ldr r0, _0800B7B8 @ =gUnknown_2027800
	ldrb r0, [r0, #7]
	movs r1, #0xf8
	adds r1, r1, r7
	ldr r1, [r1]
	movs r2, #0x86
	lsls r2, r2, #1
	adds r2, r2, r7
	str r1, [r2]
	cmp r0, #0
	bne _0800B780
	b _0800BA34
_0800B780:
	movs r0, #0x38
	bl sub_080046D4
	movs r2, #0xfc
	adds r2, r2, r7
	str r0, [r2]
	movs r3, #0xf4
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _0800B7BC @ =sub_0800B7C0
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0800B7C2
	.align 2, 0
_0800B7AC: .4byte gUnknown_861141C
_0800B7B0: .4byte gUnknown_20293BC
_0800B7B4: .4byte gUnknown_2029428
_0800B7B8: .4byte gUnknown_2027800
_0800B7BC: .4byte _0800B7C0
_0800B7C0: @ 0x0800B7C0
	b _0800BA94
_0800B7C2:
	adds r0, r7, #0
	adds r0, #0x18
	movs r1, #0xf8
	adds r1, r1, r7
	ldr r1, [r1]
	str r0, [r1]
	ldr r2, _0800B854 @ =gUnknown_8610F1C
	movs r0, #0x10
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r3, #0xfc
	adds r3, r3, r7
	ldr r0, [r3]
	movs r1, #1
	movs r3, #0x18
	bl sub_08002504
	ldr r1, _0800B858 @ =gUnknown_20293BC
	str r0, [r1, #0x20]
	movs r2, #0xf4
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, [r1, #0x20]
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_080027DC
	ldr r2, _0800B858 @ =gUnknown_20293BC
	ldr r0, [r2, #0x20]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #6
	movs r2, #0x90
	bl _call_via_r3
	ldr r1, _0800B858 @ =gUnknown_20293BC
	ldr r0, [r1, #0x20]
	bl sub_080023D8
	ldr r2, _0800B858 @ =gUnknown_20293BC
	ldr r0, [r2, #0x20]
	bl sub_08002428
	movs r0, #0x38
	bl sub_080046D4
	movs r3, #0x80
	lsls r3, r3, #1
	adds r3, r3, r7
	str r0, [r3]
	movs r1, #0xf4
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #4]
	str r0, [r7, #0x30]
	movs r2, #0
	str r2, [r7, #0x34]
	adds r1, r7, #0
	adds r1, #0x38
	str r7, [r7, #0x38]
	ldr r0, _0800B85C @ =sub_0800B860
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800B862
	.align 2, 0
_0800B854: .4byte gUnknown_8610F1C
_0800B858: .4byte gUnknown_20293BC
_0800B85C: .4byte _0800B860
_0800B860: @ 0x0800B860
	b _0800BAE4
_0800B862:
	adds r0, r7, #0
	adds r0, #0x30
	movs r1, #0x86
	lsls r1, r1, #1
	adds r1, r1, r7
	ldr r1, [r1]
	str r0, [r1]
	ldr r2, _0800B8F8 @ =gUnknown_861109C
	movs r0, #0x10
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r3, r3, r7
	ldr r0, [r3]
	movs r1, #1
	movs r3, #0x38
	bl sub_08002504
	ldr r1, _0800B8FC @ =gUnknown_20293BC
	str r0, [r1, #0x24]
	movs r2, #0xf4
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, [r1, #0x24]
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_080027DC
	ldr r2, _0800B8FC @ =gUnknown_20293BC
	ldr r0, [r2, #0x24]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0x14
	movs r2, #0x90
	bl _call_via_r3
	ldr r1, _0800B8FC @ =gUnknown_20293BC
	ldr r0, [r1, #0x24]
	bl sub_080023D8
	ldr r2, _0800B8FC @ =gUnknown_20293BC
	ldr r0, [r2, #0x24]
	bl sub_08002428
	movs r0, #0x38
	bl sub_080046D4
	movs r3, #0x82
	lsls r3, r3, #1
	adds r3, r3, r7
	str r0, [r3]
	movs r1, #0xf4
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #4]
	str r0, [r7, #0x48]
	movs r2, #0
	str r2, [r7, #0x4c]
	adds r1, r7, #0
	adds r1, #0x50
	str r7, [r7, #0x50]
	ldr r0, _0800B900 @ =sub_0800B904
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800B906
	.align 2, 0
_0800B8F8: .4byte gUnknown_861109C
_0800B8FC: .4byte gUnknown_20293BC
_0800B900: .4byte _0800B904
_0800B904: @ 0x0800B904
	b _0800BB36
_0800B906:
	adds r0, r7, #0
	adds r0, #0x48
	movs r1, #0x86
	lsls r1, r1, #1
	adds r1, r1, r7
	ldr r1, [r1]
	str r0, [r1]
	ldr r2, _0800B99C @ =gUnknown_861109C
	movs r0, #0x10
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r3, #0x82
	lsls r3, r3, #1
	adds r3, r3, r7
	ldr r0, [r3]
	movs r1, #1
	movs r3, #0x38
	bl sub_08002504
	ldr r1, _0800B9A0 @ =gUnknown_20293BC
	str r0, [r1, #0x30]
	movs r2, #0xf4
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, [r1, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_080027DC
	ldr r2, _0800B9A0 @ =gUnknown_20293BC
	ldr r0, [r2, #0x30]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0xad
	movs r2, #0x90
	bl _call_via_r3
	ldr r1, _0800B9A0 @ =gUnknown_20293BC
	ldr r0, [r1, #0x30]
	bl sub_080023D8
	ldr r2, _0800B9A0 @ =gUnknown_20293BC
	ldr r0, [r2, #0x30]
	bl sub_08002428
	movs r0, #0x38
	bl sub_080046D4
	movs r3, #0x84
	lsls r3, r3, #1
	adds r3, r3, r7
	str r0, [r3]
	movs r1, #0xf4
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #4]
	str r0, [r7, #0x60]
	movs r2, #0
	str r2, [r7, #0x64]
	adds r1, r7, #0
	adds r1, #0x68
	str r7, [r7, #0x68]
	ldr r0, _0800B9A4 @ =sub_0800B9A8
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800B9AA
	.align 2, 0
_0800B99C: .4byte gUnknown_861109C
_0800B9A0: .4byte gUnknown_20293BC
_0800B9A4: .4byte _0800B9A8
_0800B9A8: @ 0x0800B9A8
	b _0800BB86
_0800B9AA:
	adds r0, r7, #0
	adds r0, #0x60
	movs r1, #0x86
	lsls r1, r1, #1
	adds r1, r1, r7
	ldr r1, [r1]
	str r0, [r1]
	ldr r2, _0800BA24 @ =gUnknown_8610FDC
	movs r0, #0x10
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r3, #0x84
	lsls r3, r3, #1
	adds r3, r3, r7
	ldr r0, [r3]
	movs r1, #1
	movs r3, #0x18
	bl sub_08002504
	ldr r1, _0800BA28 @ =gUnknown_20293BC
	str r0, [r1, #0x2c]
	movs r2, #0xf4
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, [r1, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_080027DC
	ldr r2, _0800BA28 @ =gUnknown_20293BC
	ldr r0, [r2, #0x2c]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0xd2
	movs r2, #0x90
	bl _call_via_r3
	ldr r1, _0800BA28 @ =gUnknown_20293BC
	ldr r0, [r1, #0x2c]
	bl sub_080023D8
	ldr r2, _0800BA28 @ =gUnknown_20293BC
	ldr r0, [r2, #0x2c]
	bl sub_08002428
	ldr r1, _0800BA2C @ =gUnknown_2029424
	ldr r3, _0800BA28 @ =gUnknown_20293BC
	ldr r0, [r3, #0x24]
	str r0, [r1]
	ldr r1, _0800BA30 @ =gUnknown_202942C
	ldr r0, [r3, #0x30]
	str r0, [r1]
	b _0800BBEA
	.align 2, 0
_0800BA24: .4byte gUnknown_8610FDC
_0800BA28: .4byte gUnknown_20293BC
_0800BA2C: .4byte gUnknown_2029424
_0800BA30: .4byte gUnknown_202942C
_0800BA34:
	ldr r1, _0800BA40 @ =gUnknown_20293BC
	str r0, [r1, #0x30]
	str r0, [r1, #0x24]
	str r0, [r1, #0x2c]
	str r0, [r1, #0x20]
	b _0800BBEA
	.align 2, 0
_0800BA40: .4byte gUnknown_20293BC
_0800BA44:
	movs r3, #0xf4
	adds r3, r3, r7
	ldr r2, [r3]
	adds r2, #4
	ldr r1, [r3]
	ldr r0, [r1, #4]
	str r0, [r7, #0x78]
	movs r0, #0
	str r0, [r7, #0x7c]
	adds r0, r7, #0
	adds r0, #0x80
	str r7, [r0]
	ldr r1, _0800BA68 @ =sub_0800BA6C
	str r1, [r0, #4]
	mov r3, sp
	str r3, [r0, #8]
	b _0800BA6E
	.align 2, 0
_0800BA68: .4byte _0800BA6C
_0800BA6C: @ 0x0800BA6C
	b _0800BBD6
_0800BA6E:
	adds r0, r7, #0
	adds r0, #0x78
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _0800BA84
	movs r1, #0xf0
	adds r1, r1, r7
	ldr r0, [r1]
	bl sub_080046C0
_0800BA84:
	movs r2, #0xf4
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	bl sub_0804449C
_0800BA94:
	adds r2, r7, #0
	adds r2, #0x90
	movs r0, #0xf4
	adds r0, r0, r7
	ldr r3, [r0]
	adds r3, #4
	ldr r1, [r0]
	ldr r0, [r1, #4]
	str r0, [r2]
	movs r0, #0
	str r0, [r2, #4]
	adds r0, r7, #0
	adds r0, #0x98
	str r7, [r0]
	ldr r1, _0800BABC @ =sub_0800BAC0
	str r1, [r0, #4]
	mov r1, sp
	str r1, [r0, #8]
	b _0800BAC2
	.align 2, 0
_0800BABC: .4byte _0800BAC0
_0800BAC0: @ 0x0800BAC0
	b _0800BBDA
_0800BAC2:
	str r2, [r3]
	movs r0, #1
	cmp r0, #0
	beq _0800BAD4
	movs r2, #0xfc
	adds r2, r2, r7
	ldr r0, [r2]
	bl sub_080046C0
_0800BAD4:
	movs r3, #0xf4
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	bl sub_0804449C
_0800BAE4:
	adds r2, r7, #0
	adds r2, #0xa8
	movs r0, #0xf4
	adds r0, r0, r7
	ldr r3, [r0]
	adds r3, #4
	ldr r1, [r0]
	ldr r0, [r1, #4]
	str r0, [r2]
	movs r0, #0
	str r0, [r2, #4]
	adds r0, r7, #0
	adds r0, #0xb0
	str r7, [r0]
	ldr r1, _0800BB0C @ =sub_0800BB10
	str r1, [r0, #4]
	mov r1, sp
	str r1, [r0, #8]
	b _0800BB12
	.align 2, 0
_0800BB0C: .4byte _0800BB10
_0800BB10: @ 0x0800BB10
	b _0800BBDE
_0800BB12:
	str r2, [r3]
	movs r0, #1
	cmp r0, #0
	beq _0800BB26
	movs r2, #0x80
	lsls r2, r2, #1
	adds r2, r2, r7
	ldr r0, [r2]
	bl sub_080046C0
_0800BB26:
	movs r3, #0xf4
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	bl sub_0804449C
_0800BB36:
	adds r2, r7, #0
	adds r2, #0xc0
	movs r0, #0xf4
	adds r0, r0, r7
	ldr r3, [r0]
	adds r3, #4
	ldr r1, [r0]
	ldr r0, [r1, #4]
	str r0, [r2]
	movs r0, #0
	str r0, [r2, #4]
	adds r0, r7, #0
	adds r0, #0xc8
	str r7, [r0]
	ldr r1, _0800BB5C @ =sub_0800BB60
	str r1, [r0, #4]
	mov r1, sp
	str r1, [r0, #8]
	b _0800BB62
	.align 2, 0
_0800BB5C: .4byte _0800BB60
_0800BB60: @ 0x0800BB60
	b _0800BBE2
_0800BB62:
	str r2, [r3]
	movs r0, #1
	cmp r0, #0
	beq _0800BB76
	movs r2, #0x82
	lsls r2, r2, #1
	adds r2, r2, r7
	ldr r0, [r2]
	bl sub_080046C0
_0800BB76:
	movs r3, #0xf4
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	bl sub_0804449C
_0800BB86:
	adds r2, r7, #0
	adds r2, #0xd8
	movs r0, #0xf4
	adds r0, r0, r7
	ldr r3, [r0]
	adds r3, #4
	ldr r1, [r0]
	ldr r0, [r1, #4]
	str r0, [r2]
	movs r0, #0
	str r0, [r2, #4]
	adds r0, r7, #0
	adds r0, #0xe0
	str r7, [r0]
	ldr r1, _0800BBAC @ =sub_0800BBB0
	str r1, [r0, #4]
	mov r1, sp
	str r1, [r0, #8]
	b _0800BBB2
	.align 2, 0
_0800BBAC: .4byte _0800BBB0
_0800BBB0: @ 0x0800BBB0
	b _0800BBE6
_0800BBB2:
	str r2, [r3]
	movs r0, #1
	cmp r0, #0
	beq _0800BBC6
	movs r2, #0x84
	lsls r2, r2, #1
	adds r2, r2, r7
	ldr r0, [r2]
	bl sub_080046C0
_0800BBC6:
	movs r3, #0xf4
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	bl sub_0804449C
_0800BBD6:
	bl sub_080443CC
_0800BBDA:
	bl sub_080443CC
_0800BBDE:
	bl sub_080443CC
_0800BBE2:
	bl sub_080443CC
_0800BBE6:
	bl sub_080443CC
_0800BBEA:
	add sp, #0x118
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800B6A8

	thumb_func_start sub_0800BBFC
sub_0800BBFC: @ 0x0800BBFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	add r7, sp, #8
	str r0, [r7, #0x60]
	bl sub_0804441C
	str r0, [r7, #0x68]
	ldr r0, [r7, #0x60]
	cmp r0, #0x67
	bne _0800BC64
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x64]
	ldr r2, [r7, #0x68]
	adds r2, #4
	ldr r1, [r7, #0x68]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _0800BC40 @ =sub_0800BC44
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800BC46
	.align 2, 0
_0800BC40: .4byte _0800BC44
_0800BC44: @ 0x0800BC44
	b _0800BCFC
_0800BC46:
	str r7, [r2]
	ldr r0, _0800BC60 @ =gUnknown_2025F68
	ldr r2, [r0]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	ldr r0, [r7, #0x64]
	movs r1, #1
	movs r3, #0x58
	bl sub_08002504
	b _0800BCB2
	.align 2, 0
_0800BC60: .4byte gUnknown_2025F68
_0800BC64:
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x6c]
	ldr r2, [r7, #0x68]
	adds r2, #4
	ldr r1, [r7, #0x68]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _0800BC8C @ =sub_0800BC90
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800BC92
	.align 2, 0
_0800BC8C: .4byte _0800BC90
_0800BC90: @ 0x0800BC90
	b _0800BD40
_0800BC92:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	ldr r0, [r7, #0x60]
	lsls r2, r0, #5
	ldr r0, _0800BCF4 @ =gUnknown_860F73C
	adds r2, r2, r0
	movs r0, #0x10
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	ldr r0, [r7, #0x6c]
	movs r1, #1
	movs r3, #0x58
	bl sub_08002504
_0800BCB2:
	ldr r1, _0800BCF8 @ =gUnknown_20293BC
	str r0, [r1, #0x1c]
	ldr r3, [r7, #0x68]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	ldr r1, _0800BCF8 @ =gUnknown_20293BC
	ldr r0, [r1, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_080027DC
	ldr r3, _0800BCF8 @ =gUnknown_20293BC
	ldr r0, [r3, #0x1c]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0x90
	movs r2, #2
	bl _call_via_r3
	ldr r1, _0800BCF8 @ =gUnknown_20293BC
	ldr r0, [r1, #0x1c]
	bl sub_08002428
	ldr r3, _0800BCF8 @ =gUnknown_20293BC
	ldr r0, [r3, #0x1c]
	bl sub_080023D8
	b _0800BD8C
	.align 2, 0
_0800BCF4: .4byte gUnknown_860F73C
_0800BCF8: .4byte gUnknown_20293BC
_0800BCFC:
	ldr r2, [r7, #0x68]
	adds r2, #4
	ldr r1, [r7, #0x68]
	ldr r0, [r1, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	adds r1, r7, #0
	adds r1, #0x38
	str r7, [r7, #0x38]
	ldr r0, _0800BD1C @ =sub_0800BD20
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800BD22
	.align 2, 0
_0800BD1C: .4byte _0800BD20
_0800BD20: @ 0x0800BD20
	b _0800BD84
_0800BD22:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _0800BD34
	ldr r0, [r7, #0x64]
	bl sub_080046C0
_0800BD34:
	ldr r1, [r7, #0x68]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_0800BD40:
	ldr r2, [r7, #0x68]
	adds r2, #4
	ldr r3, [r7, #0x68]
	ldr r0, [r3, #4]
	str r0, [r7, #0x48]
	movs r0, #0
	str r0, [r7, #0x4c]
	adds r1, r7, #0
	adds r1, #0x50
	str r7, [r7, #0x50]
	ldr r0, _0800BD60 @ =sub_0800BD64
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0800BD66
	.align 2, 0
_0800BD60: .4byte _0800BD64
_0800BD64: @ 0x0800BD64
	b _0800BD88
_0800BD66:
	adds r0, r7, #0
	adds r0, #0x48
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _0800BD78
	ldr r0, [r7, #0x6c]
	bl sub_080046C0
_0800BD78:
	ldr r1, [r7, #0x68]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_0800BD84:
	bl sub_080443CC
_0800BD88:
	bl sub_080443CC
_0800BD8C:
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800BBFC

	thumb_func_start sub_0800BD9C
sub_0800BD9C: @ 0x0800BD9C
	push {r4, r5, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0800BDE0 @ =gUnknown_2020050
	ldr r0, [r0]
	movs r2, #0xa0
	lsls r2, r2, #1
	movs r1, #0
	bl memset
	mov r1, sp
	movs r0, #0x4e
	strb r0, [r1]
	mov r5, sp
	adds r5, #1
	movs r0, #0x4f
	strb r0, [r5]
	adds r5, #1
	movs r0, #0x2e
	strb r0, [r5]
	adds r5, #1
	movs r0, #0x20
	strb r0, [r5]
	adds r5, #1
	ldr r0, _0800BDE4 @ =0x000001FF
	cmp r4, r0
	bne _0800BDE8
	movs r0, #0x3f
	strb r0, [r5]
	adds r5, #1
	strb r0, [r5]
	adds r5, #1
	b _0800BE1C
	.align 2, 0
_0800BDE0: .4byte gUnknown_2020050
_0800BDE4: .4byte 0x000001FF
_0800BDE8:
	adds r0, r4, #0
	movs r1, #0x64
	bl __udivsi3
	adds r0, #0x30
	strb r0, [r5]
	adds r5, #1
	adds r0, r4, #0
	movs r1, #0x64
	bl __umodsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	adds r0, #0x30
	strb r0, [r5]
	adds r5, #1
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0x30
_0800BE1C:
	strb r0, [r5]
	adds r5, #1
	movs r0, #0
	strb r0, [r5]
	movs r0, #8
	movs r1, #0
	bl sub_08038490
	movs r0, #0
	movs r1, #4
	bl sub_0803847C
	ldr r0, _0800BE48 @ =gUnknown_2020050
	ldr r1, [r0]
	mov r0, sp
	movs r2, #5
	bl sub_080383A4
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800BE48: .4byte gUnknown_2020050
	thumb_func_end sub_0800BD9C

	thumb_func_start sub_0800BE4C
sub_0800BE4C: @ 0x0800BE4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r0, _0800BE98 @ =gUnknown_2020058
	ldr r0, [r0]
	movs r2, #0xf0
	lsls r2, r2, #2
	movs r1, #0
	bl memset
	mov r1, sp
	movs r0, #0x80
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x81
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x20
	strb r0, [r1]
	adds r1, #1
	movs r3, #0x14
	ldr r7, _0800BE9C @ =gUnknown_2026564
	movs r6, #0xf
	movs r5, #0x27
	subs r4, r1, #1
_0800BE7C:
	subs r3, #4
	ldr r0, [r7]
	lsrs r0, r3
	ands r0, r6
	cmp r0, #0xf
	beq _0800BEA2
	adds r2, r1, #0
	adds r4, #1
	adds r1, #1
	cmp r0, #0xa
	beq _0800BEA0
	adds r0, #0x30
	strb r0, [r4]
	b _0800BEA2
	.align 2, 0
_0800BE98: .4byte gUnknown_2020058
_0800BE9C: .4byte gUnknown_2026564
_0800BEA0:
	strb r5, [r2]
_0800BEA2:
	cmp r3, #0
	bne _0800BE7C
	movs r0, #0x22
	strb r0, [r1]
	strb r3, [r1, #1]
	movs r0, #8
	movs r1, #0
	bl sub_08038490
	movs r0, #0
	movs r1, #4
	bl sub_0803847C
	ldr r0, _0800BF2C @ =gUnknown_2020058
	ldr r1, [r0]
	mov r0, sp
	movs r2, #0xf
	bl sub_080383A4
	mov r1, sp
	movs r0, #0x82
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x83
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x20
	strb r0, [r1]
	adds r1, #1
	movs r3, #0x14
	movs r5, #0x2e
	ldr r4, _0800BF30 @ =gUnknown_2026568
	movs r2, #0xf
_0800BEE4:
	subs r3, #4
	cmp r3, #0
	bne _0800BEEE
	strb r5, [r1]
	adds r1, #1
_0800BEEE:
	ldr r0, [r4]
	lsrs r0, r3
	ands r0, r2
	cmp r0, #0xf
	beq _0800BEFE
	adds r0, #0x30
	strb r0, [r1]
	adds r1, #1
_0800BEFE:
	cmp r3, #0
	bne _0800BEE4
	movs r0, #0x20
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x84
	strb r0, [r1]
	strb r3, [r1, #1]
	movs r0, #0x38
	movs r1, #4
	bl sub_0803847C
	ldr r0, _0800BF2C @ =gUnknown_2020058
	ldr r1, [r0]
	mov r0, sp
	movs r2, #0xf
	bl sub_080383A4
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BF2C: .4byte gUnknown_2020058
_0800BF30: .4byte gUnknown_2026568
	thumb_func_end sub_0800BE4C

	thumb_func_start sub_0800BF34
sub_0800BF34: @ 0x0800BF34
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	adds r3, r1, #0
	movs r0, #0x49
	strb r0, [r7]
	adds r7, #1
	stm r3!, {r2}
	adds r2, #4
	movs r0, #0x44
	strb r0, [r7]
	adds r7, #1
	stm r3!, {r2}
	adds r2, #6
	movs r0, #0x3a
	strb r0, [r7]
	adds r7, #1
	stm r3!, {r2}
	adds r2, #8
	movs r0, #0x20
	strb r0, [r7]
	adds r7, #1
	stm r3!, {r2}
	adds r2, #4
	ldr r5, _0800BFD0 @ =gUnknown_2027800
	ldrb r0, [r5, #1]
	adds r0, #0x41
	strb r0, [r7]
	adds r7, #1
	stm r3!, {r2}
	adds r2, #6
	movs r6, #0x2d
	strb r6, [r7]
	adds r7, #1
	stm r3!, {r2}
	adds r2, #4
	ldrb r4, [r5, #3]
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	movs r1, #0xa
	str r2, [sp]
	str r3, [sp, #4]
	bl __udivsi3
	adds r0, #0x30
	strb r0, [r7]
	adds r7, #1
	ldr r2, [sp]
	ldr r3, [sp, #4]
	stm r3!, {r2}
	adds r2, #5
	adds r0, r4, #0
	movs r1, #0xa
	str r2, [sp]
	str r3, [sp, #4]
	bl __umodsi3
	adds r0, #0x30
	strb r0, [r7]
	adds r7, #1
	ldr r2, [sp]
	ldr r3, [sp, #4]
	stm r3!, {r2}
	adds r2, #5
	strb r6, [r7]
	adds r7, #1
	stm r3!, {r2}
	adds r2, #4
	adds r1, r7, #0
	adds r7, #1
	ldrb r0, [r5, #2]
	cmp r0, #7
	beq _0800BFD4
	adds r0, #0x61
	b _0800BFD6
	.align 2, 0
_0800BFD0: .4byte gUnknown_2027800
_0800BFD4:
	movs r0, #0x23
_0800BFD6:
	strb r0, [r1]
	str r2, [r3]
	movs r0, #0
	strb r0, [r7]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800BF34

	thumb_func_start sub_0800BFE8
sub_0800BFE8: @ 0x0800BFE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xd4
	add r7, sp, #8
	movs r1, #0xa8
	adds r1, r1, r7
	str r0, [r1]
	bl sub_0804441C
	movs r2, #0xc8
	adds r2, r2, r7
	str r0, [r2]
	ldr r0, _0800C200 @ =gUnknown_202006C
	ldr r0, [r0]
	movs r2, #0x90
	lsls r2, r2, #2
	movs r1, #0
	bl memset
	adds r3, r7, #0
	adds r3, #0x60
	movs r4, #0xbc
	adds r4, r4, r7
	str r3, [r4]
	movs r0, #0xb8
	adds r0, r0, r7
	str r7, [r0]
	movs r1, #0
	movs r2, #0xac
	adds r2, r2, r7
	str r1, [r2]
	movs r3, #0xa8
	adds r3, r3, r7
	ldr r3, [r3]
	cmp r3, #0
	beq _0800C038
	b _0800C190
_0800C038:
	movs r0, #0x48
	movs r4, #0x60
	adds r4, r4, r7
	strb r0, [r4]
	adds r0, r7, #0
	adds r0, #0x61
	movs r1, #0xbc
	adds r1, r1, r7
	str r0, [r1]
	str r3, [r7]
	movs r3, #5
	movs r0, #0x50
	ldr r4, [r1]
	strb r0, [r4]
	adds r4, #1
	str r3, [r7, #4]
	adds r0, r7, #0
	adds r0, #8
	movs r1, #0xb8
	adds r1, r1, r7
	str r0, [r1]
	movs r3, #0xb
	movs r0, #0x3a
	strb r0, [r4]
	adds r4, #1
	movs r0, #0xbc
	adds r0, r0, r7
	str r4, [r0]
	ldr r2, [r1]
	adds r2, #4
	str r2, [r1]
	subs r2, #4
	stm r2!, {r3}
	movs r3, #0x13
	movs r0, #0x20
	movs r1, #0xbc
	adds r1, r1, r7
	ldr r1, [r1]
	strb r0, [r1]
	adds r1, #1
	movs r2, #0xbc
	adds r2, r2, r7
	str r1, [r2]
	movs r4, #0xb8
	adds r4, r4, r7
	ldr r0, [r4]
	adds r0, #4
	str r0, [r4]
	subs r0, #4
	stm r0!, {r3}
	movs r1, #0x17
	movs r2, #0xac
	adds r2, r2, r7
	str r1, [r2]
	ldr r3, _0800C204 @ =gUnknown_202780C
	ldrb r0, [r3, #1]
	movs r1, #0x64
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r4, #0xb0
	adds r4, r4, r7
	str r0, [r4]
	cmp r0, #0
	beq _0800C0EC
	adds r0, #0x30
	movs r1, #0xbc
	adds r1, r1, r7
	ldr r1, [r1]
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x65
	movs r3, #0xbc
	adds r3, r3, r7
	str r2, [r3]
	movs r4, #0xac
	adds r4, r4, r7
	ldr r4, [r4]
	movs r0, #0xb8
	adds r0, r0, r7
	ldr r1, [r0]
	adds r1, #4
	str r1, [r0]
	subs r1, #4
	stm r1!, {r4}
	movs r0, #0x1c
	movs r1, #0xac
	adds r1, r1, r7
	str r0, [r1]
_0800C0EC:
	movs r0, #0x64
	movs r2, #0xb0
	adds r2, r2, r7
	ldr r2, [r2]
	muls r0, r2, r0
	ldr r3, _0800C204 @ =gUnknown_202780C
	ldrb r3, [r3, #1]
	subs r0, r3, r0
	movs r3, #0xc0
	adds r3, r3, r7
	str r0, [r3]
	movs r1, #0xa
	bl __divsi3
	movs r4, #0xb4
	adds r4, r4, r7
	str r0, [r4]
	movs r1, #0xc0
	adds r1, r1, r7
	ldr r0, [r1]
	movs r1, #0xa
	bl __modsi3
	adds r1, r0, #0
	movs r2, #0xb0
	adds r2, r2, r7
	ldr r2, [r2]
	cmp r2, #0
	bne _0800C12C
	ldr r3, [r4]
	cmp r3, #0
	beq _0800C160
_0800C12C:
	movs r4, #0xb4
	adds r4, r4, r7
	ldr r0, [r4]
	adds r0, #0x30
	movs r2, #0xbc
	adds r2, r2, r7
	ldr r2, [r2]
	strb r0, [r2]
	adds r2, #1
	movs r3, #0xbc
	adds r3, r3, r7
	str r2, [r3]
	movs r4, #0xac
	adds r4, r4, r7
	ldr r4, [r4]
	movs r0, #0xb8
	adds r0, r0, r7
	ldr r2, [r0]
	adds r2, #4
	str r2, [r0]
	subs r2, #4
	stm r2!, {r4}
	adds r4, #5
	movs r0, #0xac
	adds r0, r0, r7
	str r4, [r0]
_0800C160:
	adds r0, r1, #0
	adds r0, #0x30
	movs r1, #0xbc
	adds r1, r1, r7
	ldr r1, [r1]
	strb r0, [r1]
	adds r1, #1
	movs r2, #0xbc
	adds r2, r2, r7
	str r1, [r2]
	movs r3, #0xac
	adds r3, r3, r7
	ldr r3, [r3]
	movs r4, #0xb8
	adds r4, r4, r7
	ldr r0, [r4]
	adds r0, #4
	str r0, [r4]
	subs r0, #4
	stm r0!, {r3}
	adds r3, #9
	movs r4, #0xac
	adds r4, r4, r7
	str r3, [r4]
_0800C190:
	movs r0, #0x20
	movs r1, #0xbc
	adds r1, r1, r7
	ldr r1, [r1]
	strb r0, [r1]
	adds r1, #1
	movs r2, #0xbc
	adds r2, r2, r7
	str r1, [r2]
	adds r0, r1, #0
	movs r3, #0xb8
	adds r3, r3, r7
	ldr r1, [r3]
	movs r4, #0xac
	adds r4, r4, r7
	ldr r2, [r4]
	bl sub_0800BF34
	movs r0, #8
	movs r1, #0
	bl sub_08038490
	movs r0, #0
	movs r1, #0
	bl sub_0803847C
	ldr r0, _0800C200 @ =gUnknown_202006C
	ldr r1, [r0]
	adds r0, r7, #0
	adds r0, #0x60
	movs r2, #0x12
	bl sub_080383A4
	movs r0, #0x38
	bl sub_080046D4
	movs r1, #0xc4
	adds r1, r1, r7
	str r0, [r1]
	movs r3, #0xc8
	adds r3, r3, r7
	ldr r2, [r3]
	adds r2, #4
	ldr r4, [r3]
	ldr r0, [r4, #4]
	str r0, [r7, #0x78]
	movs r0, #0
	str r0, [r7, #0x7c]
	adds r0, r7, #0
	adds r0, #0x80
	str r7, [r0]
	ldr r1, _0800C208 @ =sub_0800C20C
	str r1, [r0, #4]
	mov r1, sp
	str r1, [r0, #8]
	b _0800C20E
	.align 2, 0
_0800C200: .4byte gUnknown_202006C
_0800C204: .4byte gUnknown_202780C
_0800C208: .4byte _0800C20C
_0800C20C: @ 0x0800C20C
	b _0800C284
_0800C20E:
	adds r0, r7, #0
	adds r0, #0x78
	str r0, [r2]
	ldr r0, _0800C27C @ =gUnknown_202006C
	ldr r2, [r0]
	movs r0, #8
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r3, #0xc4
	adds r3, r3, r7
	ldr r0, [r3]
	movs r1, #1
	movs r3, #0x90
	bl sub_08002504
	ldr r4, _0800C280 @ =gUnknown_20293BC
	str r0, [r4, #0x40]
	movs r1, #0xc8
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	adds r3, r4, #0
	ldr r0, [r3, #0x40]
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_080027DC
	ldr r4, _0800C280 @ =gUnknown_20293BC
	ldr r1, [r4, #0x40]
	ldr r0, [r1, #0x30]
	adds r2, r0, #0
	adds r2, #8
	movs r3, #8
	ldrsh r0, [r0, r3]
	adds r0, r1, r0
	movs r1, #0xb1
	movs r4, #0xa8
	adds r4, r4, r7
	ldr r4, [r4]
	cmp r4, #0
	bne _0800C268
	movs r1, #0x7d
_0800C268:
	ldr r3, [r2, #4]
	movs r2, #0x26
	bl _call_via_r3
	ldr r1, _0800C280 @ =gUnknown_20293BC
	ldr r0, [r1, #0x40]
	bl sub_08002428
	b _0800C2D8
	.align 2, 0
_0800C27C: .4byte gUnknown_202006C
_0800C280: .4byte gUnknown_20293BC
_0800C284:
	adds r2, r7, #0
	adds r2, #0x90
	movs r4, #0xc8
	adds r4, r4, r7
	ldr r3, [r4]
	adds r3, #4
	ldr r1, [r4]
	ldr r0, [r1, #4]
	str r0, [r2]
	movs r0, #0
	str r0, [r2, #4]
	adds r0, r7, #0
	adds r0, #0x98
	str r7, [r0]
	ldr r1, _0800C2AC @ =sub_0800C2B0
	str r1, [r0, #4]
	mov r4, sp
	str r4, [r0, #8]
	b _0800C2B2
	.align 2, 0
_0800C2AC: .4byte _0800C2B0
_0800C2B0: @ 0x0800C2B0
	b _0800C2D4
_0800C2B2:
	str r2, [r3]
	movs r0, #1
	cmp r0, #0
	beq _0800C2C4
	movs r1, #0xc4
	adds r1, r1, r7
	ldr r0, [r1]
	bl sub_080046C0
_0800C2C4:
	movs r2, #0xc8
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	bl sub_0804449C
_0800C2D4:
	bl sub_080443CC
_0800C2D8:
	add sp, #0xd4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800BFE8

	thumb_func_start sub_0800C2E8
sub_0800C2E8: @ 0x0800C2E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	add r7, sp, #8
	str r0, [r7, #0x30]
	bl sub_0804441C
	str r0, [r7, #0x3c]
	ldr r0, [r7, #0x30]
	cmp r0, #0
	beq _0800C310
	ldr r0, _0800C30C @ =gUnknown_202780C
	ldrb r0, [r0, #8]
	str r0, [r7, #0x34]
	b _0800C314
	.align 2, 0
_0800C30C: .4byte gUnknown_202780C
_0800C310:
	movs r1, #0
	str r1, [r7, #0x34]
_0800C314:
	ldr r2, [r7, #0x34]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0800C350 @ =gUnknown_85F3AC4
	adds r0, r0, r1
	movs r1, #8
	movs r2, #1
	movs r3, #0x1e
	bl sub_08000920
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x38]
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _0800C354 @ =sub_0800C358
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0800C35A
	.align 2, 0
_0800C350: .4byte gUnknown_85F3AC4
_0800C354: .4byte _0800C358
_0800C358: @ 0x0800C358
	b _0800C3C4
_0800C35A:
	str r7, [r2]
	ldr r1, [r7, #0x34]
	lsls r2, r1, #3
	adds r2, r2, r1
	lsls r2, r2, #5
	ldr r0, _0800C3BC @ =gUnknown_8617CDC
	adds r2, r2, r0
	movs r0, #0x18
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	ldr r0, [r7, #0x38]
	movs r1, #1
	movs r3, #0x18
	bl sub_08002504
	ldr r2, _0800C3C0 @ =gUnknown_20293BC
	str r0, [r2, #0x44]
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r1, [r2, #0x44]
	ldr r0, [r1, #0x30]
	adds r3, r0, #0
	adds r3, #8
	movs r2, #8
	ldrsh r0, [r0, r2]
	adds r0, r1, r0
	movs r2, #0xa0
	ldr r1, [r7, #0x30]
	cmp r1, #0
	beq _0800C39E
	movs r2, #0x13
_0800C39E:
	ldr r3, [r3, #4]
	movs r1, #0xd2
	bl _call_via_r3
	ldr r2, _0800C3C0 @ =gUnknown_20293BC
	ldr r0, [r2, #0x44]
	bl sub_08002428
	ldr r1, _0800C3C0 @ =gUnknown_20293BC
	ldr r0, [r1, #0x44]
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_080027DC
	b _0800C40C
	.align 2, 0
_0800C3BC: .4byte gUnknown_8617CDC
_0800C3C0: .4byte gUnknown_20293BC
_0800C3C4:
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _0800C3E4 @ =sub_0800C3E8
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0800C3EA
	.align 2, 0
_0800C3E4: .4byte _0800C3E8
_0800C3E8: @ 0x0800C3E8
	b _0800C408
_0800C3EA:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _0800C3FC
	ldr r0, [r7, #0x38]
	bl sub_080046C0
_0800C3FC:
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_0800C408:
	bl sub_080443CC
_0800C40C:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800C2E8

	thumb_func_start sub_0800C41C
sub_0800C41C: @ 0x0800C41C
	push {r4, lr}
	sub sp, #0x28
	ldr r1, _0800C470 @ =gUnknown_2024110
	ldrb r2, [r1]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0800C474 @ =gUnknown_85F37BC
	adds r0, r0, r1
	movs r1, #0x20
	str r1, [sp]
	ldr r4, _0800C478 @ =gUnknown_2024112
	movs r2, #0
	ldrsh r1, [r4, r2]
	str r1, [sp, #4]
	movs r1, #0
	add r2, sp, #8
	movs r3, #0xf
	bl sub_08015B54
	add r0, sp, #8
	movs r1, #5
	movs r2, #1
	movs r3, #0x1e
	bl LoadPalette
	ldr r1, _0800C47C @ =gUnknown_2024114
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _0800C480
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	bne _0800C494
	movs r0, #1
	strh r0, [r1]
	b _0800C494
	.align 2, 0
_0800C470: .4byte gUnknown_2024110
_0800C474: .4byte gUnknown_85F37BC
_0800C478: .4byte gUnknown_2024112
_0800C47C: .4byte gUnknown_2024114
_0800C480:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0800C494
	strh r0, [r1]
	movs r0, #1
	strh r0, [r4]
_0800C494:
	add sp, #0x28
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0800C41C

	thumb_func_start sub_0800C49C
sub_0800C49C: @ 0x0800C49C
	push {lr}
	sub sp, #8
	movs r0, #0xc
	str r0, [sp]
	ldr r0, _0800C4BC @ =gUnknown_2024128
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #9
	movs r2, #5
	movs r3, #0xc
	bl sub_08002D6C
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0800C4BC: .4byte gUnknown_2024128
	thumb_func_end sub_0800C49C

	thumb_func_start sub_0800C4C0
sub_0800C4C0: @ 0x0800C4C0
	push {lr}
	sub sp, #8
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #9
	movs r2, #5
	movs r3, #0xc
	bl sub_08002F74
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800C4C0

	thumb_func_start sub_0800C4E0
sub_0800C4E0: @ 0x0800C4E0
	push {lr}
	sub sp, #8
	ldr r3, _0800C55C @ =gUnknown_86186FC
	movs r0, #1
	movs r1, #0
	movs r2, #0x93
	bl sub_080045CC
	movs r0, #0x20
	str r0, [sp]
	ldr r0, _0800C560 @ =gUnknown_861995C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08002D6C
	ldr r0, _0800C564 @ =gUnknown_2027800
	ldrb r0, [r0, #6]
	cmp r0, #0xff
	beq _0800C522
	ldr r1, _0800C568 @ =gUnknown_85EBFDC
	ldr r0, _0800C56C @ =gUnknown_202780C
	ldrb r0, [r0, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	movs r0, #1
	movs r1, #3
	movs r2, #0x90
	bl sub_080045CC
_0800C522:
	ldr r2, _0800C570 @ =gUnknown_2024110
	ldr r1, _0800C56C @ =gUnknown_202780C
	ldrb r0, [r1, #8]
	strb r0, [r2]
	ldrb r2, [r1, #8]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #1
	ldr r1, _0800C574 @ =gUnknown_85F37BC
	adds r0, r0, r1
	movs r1, #5
	movs r2, #1
	movs r3, #0x1e
	bl LoadPalette
	movs r0, #0xc
	str r0, [sp]
	ldr r0, _0800C578 @ =gUnknown_2024128
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #9
	movs r2, #5
	movs r3, #0xc
	bl sub_08002E80
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0800C55C: .4byte gUnknown_86186FC
_0800C560: .4byte gUnknown_861995C
_0800C564: .4byte gUnknown_2027800
_0800C568: .4byte gUnknown_85EBFDC
_0800C56C: .4byte gUnknown_202780C
_0800C570: .4byte gUnknown_2024110
_0800C574: .4byte gUnknown_85F37BC
_0800C578: .4byte gUnknown_2024128
	thumb_func_end sub_0800C4E0

	thumb_func_start sub_0800C57C
sub_0800C57C: @ 0x0800C57C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0800C5B0 @ =gUnknown_2020054
	ldr r0, [r4]
	movs r2, #0xb0
	lsls r2, r2, #1
	movs r1, #0
	bl memset
	movs r0, #8
	movs r1, #0
	bl sub_08038490
	movs r0, #0
	movs r1, #0
	bl sub_0803847C
	ldr r1, [r4]
	adds r0, r5, #0
	movs r2, #0xb
	bl sub_080383A4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C5B0: .4byte gUnknown_2020054
	thumb_func_end sub_0800C57C

	thumb_func_start sub_0800C5B4
sub_0800C5B4: @ 0x0800C5B4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0800C5F0 @ =gUnknown_202005C
	ldr r0, [r4]
	movs r2, #0xe6
	lsls r2, r2, #4
	movs r1, #0
	bl memset
	movs r0, #0
	movs r1, #2
	bl sub_08038468
	movs r0, #8
	movs r1, #0
	bl sub_08038490
	movs r0, #2
	movs r1, #0
	bl sub_0803847C
	ldr r1, [r4]
	adds r0, r5, #0
	movs r2, #0x17
	bl sub_080383A4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C5F0: .4byte gUnknown_202005C
	thumb_func_end sub_0800C5B4

	thumb_func_start sub_0800C5F4
sub_0800C5F4: @ 0x0800C5F4
	push {r4, r5, lr}
	ldr r0, _0800C628 @ =gUnknown_2024FF8
	ldr r1, [r0]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _0800C608
	adds r0, r1, #0
	bl sub_08005980
_0800C608:
	ldr r5, _0800C62C @ =gUnknown_20293BC
	movs r4, #0x13
_0800C60C:
	ldr r0, [r5]
	cmp r0, #0
	beq _0800C618
	movs r1, #3
	bl sub_080018D8
_0800C618:
	adds r5, #4
	subs r4, #1
	cmp r4, #0
	bge _0800C60C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C628: .4byte gUnknown_2024FF8
_0800C62C: .4byte gUnknown_20293BC
	thumb_func_end sub_0800C5F4

	thumb_func_start sub_0800C630
sub_0800C630: @ 0x0800C630
	push {lr}
	ldr r0, _0800C658 @ =gUnknown_85EC000
	ldr r2, _0800C65C @ =gUnknown_20293BC
	movs r3, #0
	adds r1, r2, #0
	adds r1, #0x4c
_0800C63C:
	str r3, [r1]
	subs r1, #4
	cmp r1, r2
	bge _0800C63C
	movs r1, #7
	bl sub_08002B24
	ldr r1, _0800C660 @ =gUnknown_2024FF8
	movs r0, #1
	negs r0, r0
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0800C658: .4byte gUnknown_85EC000
_0800C65C: .4byte gUnknown_20293BC
_0800C660: .4byte gUnknown_2024FF8
	thumb_func_end sub_0800C630

	thumb_func_start sub_0800C664
sub_0800C664: @ 0x0800C664
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r1, sp
	lsls r4, r3, #4
	adds r0, r3, #0
	orrs r0, r4
	strb r0, [r1]
	lsls r0, r2, #4
	orrs r3, r0
	strb r3, [r1, #1]
	orrs r4, r2
	strb r4, [r1, #2]
	orrs r0, r2
	strb r0, [r1, #3]
	movs r4, #0
	movs r3, #3
_0800C690:
	ldrb r2, [r6]
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x1e
	ands r0, r3
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5]
	adds r5, #1
	lsrs r0, r1, #0x1c
	ands r0, r3
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5]
	adds r5, #1
	lsrs r1, r1, #0x1a
	ands r1, r3
	mov r7, sp
	adds r0, r7, r1
	ldrb r0, [r0]
	strb r0, [r5]
	adds r5, #1
	movs r0, #3
	ands r0, r2
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5]
	adds r5, #1
	ldrb r0, [r6, #1]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x1e
	ands r0, r3
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5]
	adds r5, #1
	lsrs r1, r1, #0x1c
	ands r1, r3
	adds r0, r7, r1
	ldrb r0, [r0]
	strb r0, [r5]
	adds r5, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #2
	cmp r4, #0xb
	bls _0800C690
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800C664

	thumb_func_start sub_0800C6F8
sub_0800C6F8: @ 0x0800C6F8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r1, sp
	lsls r4, r3, #4
	adds r0, r3, #0
	orrs r0, r4
	strb r0, [r1]
	lsls r0, r2, #4
	orrs r3, r0
	strb r3, [r1, #1]
	orrs r4, r2
	strb r4, [r1, #2]
	orrs r0, r2
	strb r0, [r1, #3]
	movs r4, #0
	movs r3, #3
_0800C724:
	ldrb r2, [r6]
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x1e
	ands r0, r3
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5]
	adds r5, #1
	lsrs r0, r1, #0x1c
	ands r0, r3
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5]
	adds r5, #1
	lsrs r1, r1, #0x1a
	ands r1, r3
	mov r7, sp
	adds r0, r7, r1
	ldrb r0, [r0]
	strb r0, [r5]
	adds r5, #1
	movs r0, #3
	ands r0, r2
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5]
	adds r5, #1
	ldrb r1, [r6, #1]
	lsrs r0, r1, #6
	ands r0, r3
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5]
	adds r5, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #2
	cmp r4, #9
	bls _0800C724
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800C6F8

	thumb_func_start sub_0800C77C
sub_0800C77C: @ 0x0800C77C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r1, sp
	lsls r4, r3, #4
	adds r0, r3, #0
	orrs r0, r4
	strb r0, [r1]
	lsls r0, r2, #4
	orrs r3, r0
	strb r3, [r1, #1]
	orrs r4, r2
	strb r4, [r1, #2]
	orrs r0, r2
	strb r0, [r1, #3]
	movs r3, #0
	movs r4, #3
_0800C7A8:
	ldrb r2, [r6]
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x1e
	ands r0, r4
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5]
	adds r5, #1
	lsrs r0, r1, #0x1c
	ands r0, r4
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5]
	adds r5, #1
	lsrs r1, r1, #0x1a
	ands r1, r4
	mov r7, sp
	adds r0, r7, r1
	ldrb r0, [r0]
	strb r0, [r5]
	adds r5, #1
	movs r0, #3
	ands r0, r2
	add r0, sp
	ldrb r0, [r0]
	strb r0, [r5]
	adds r5, #1
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r6, #1
	cmp r3, #7
	bls _0800C7A8
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800C77C

	thumb_func_start sub_0800C7F4
sub_0800C7F4: @ 0x0800C7F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	adds r7, r3, #0
	ldr r2, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	mov ip, r0
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _0800C812
	b _0800CAAC
_0800C812:
	asrs r1, r6, #1
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0800C8D2
	cmp r1, #1
	bgt _0800C826
	cmp r1, #0
	beq _0800C834
	b _0800CC66
_0800C826:
	cmp r1, #2
	bne _0800C82C
	b _0800C970
_0800C82C:
	cmp r1, #3
	bne _0800C832
	b _0800CA0E
_0800C832:
	b _0800CC66
_0800C834:
	cmp r2, #0
	bgt _0800C83A
	b _0800CC66
_0800C83A:
	adds r3, r2, #0
_0800C83C:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800C844
	adds r0, r5, #7
_0800C844:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800C85E
	adds r1, r6, #7
_0800C85E:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #2]
	lsrs r0, r1, #4
	ldrb r1, [r4, #3]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #3]
	lsrs r0, r1, #4
	ldrb r1, [r4, #4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #4]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #5
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800C83C
	b _0800CC66
_0800C8D2:
	cmp r2, #0
	bgt _0800C8D8
	b _0800CC66
_0800C8D8:
	adds r3, r2, #0
_0800C8DA:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800C8E2
	adds r0, r5, #7
_0800C8E2:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800C8FC
	adds r1, r6, #7
_0800C8FC:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #2]
	lsrs r0, r1, #4
	ldrb r1, [r4, #3]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #3]
	lsrs r0, r1, #4
	ldrb r1, [r4, #4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #4]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #5
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800C8DA
	b _0800CC66
_0800C970:
	cmp r2, #0
	bgt _0800C976
	b _0800CC66
_0800C976:
	adds r3, r2, #0
_0800C978:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800C980
	adds r0, r5, #7
_0800C980:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800C99A
	adds r1, r6, #7
_0800C99A:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #2]
	lsrs r0, r1, #4
	ldrb r1, [r4, #3]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #3]
	lsrs r0, r1, #4
	ldrb r1, [r4, #4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #4]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #5
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800C978
	b _0800CC66
_0800CA0E:
	cmp r2, #0
	bgt _0800CA14
	b _0800CC66
_0800CA14:
	adds r3, r2, #0
_0800CA16:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800CA1E
	adds r0, r5, #7
_0800CA1E:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800CA38
	adds r1, r6, #7
_0800CA38:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #2]
	lsrs r0, r1, #4
	ldrb r1, [r4, #3]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #3]
	lsrs r0, r1, #4
	ldrb r1, [r4, #4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #4]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #5
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800CA16
	b _0800CC66
_0800CAAC:
	asrs r1, r6, #1
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0800CB36
	cmp r1, #1
	bgt _0800CAC0
	cmp r1, #0
	beq _0800CACC
	b _0800CC66
_0800CAC0:
	cmp r1, #2
	beq _0800CB9E
	cmp r1, #3
	bne _0800CACA
	b _0800CC02
_0800CACA:
	b _0800CC66
_0800CACC:
	cmp r2, #0
	bgt _0800CAD2
	b _0800CC66
_0800CAD2:
	adds r3, r2, #0
_0800CAD4:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800CADC
	adds r0, r5, #7
_0800CADC:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800CAF6
	adds r1, r6, #7
_0800CAF6:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1d]
	adds r4, #1
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800CAD4
	b _0800CC66
_0800CB36:
	cmp r2, #0
	bgt _0800CB3C
	b _0800CC66
_0800CB3C:
	adds r3, r2, #0
_0800CB3E:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800CB46
	adds r0, r5, #7
_0800CB46:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800CB60
	adds r1, r6, #7
_0800CB60:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1d]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1e]
	adds r4, #1
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800CB3E
	b _0800CC66
_0800CB9E:
	cmp r2, #0
	ble _0800CC66
	adds r3, r2, #0
_0800CBA4:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800CBAC
	adds r0, r5, #7
_0800CBAC:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800CBC6
	adds r1, r6, #7
_0800CBC6:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1d]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1e]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1f]
	adds r4, #1
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800CBA4
	b _0800CC66
_0800CC02:
	cmp r2, #0
	ble _0800CC66
	adds r3, r2, #0
_0800CC08:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800CC10
	adds r0, r5, #7
_0800CC10:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800CC2A
	adds r1, r6, #7
_0800CC2A:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1d]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1e]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1f]
	adds r4, #1
	adds r1, r2, #0
	adds r1, #0x20
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800CC08
_0800CC66:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800C7F4

	thumb_func_start sub_0800CC70
sub_0800CC70: @ 0x0800CC70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	adds r7, r3, #0
	ldr r2, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	mov ip, r0
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _0800CC8E
	b _0800CEF0
_0800CC8E:
	asrs r1, r6, #1
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0800CD40
	cmp r1, #1
	bgt _0800CCA2
	cmp r1, #0
	beq _0800CCB0
	b _0800D08C
_0800CCA2:
	cmp r1, #2
	bne _0800CCA8
	b _0800CDD0
_0800CCA8:
	cmp r1, #3
	bne _0800CCAE
	b _0800CE60
_0800CCAE:
	b _0800D08C
_0800CCB0:
	cmp r2, #0
	bgt _0800CCB6
	b _0800D08C
_0800CCB6:
	adds r3, r2, #0
_0800CCB8:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800CCC0
	adds r0, r5, #7
_0800CCC0:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800CCDA
	adds r1, r6, #7
_0800CCDA:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #2]
	lsrs r0, r1, #4
	ldrb r1, [r4, #3]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #3]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #4
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800CCB8
	b _0800D08C
_0800CD40:
	cmp r2, #0
	bgt _0800CD46
	b _0800D08C
_0800CD46:
	adds r3, r2, #0
_0800CD48:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800CD50
	adds r0, r5, #7
_0800CD50:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800CD6A
	adds r1, r6, #7
_0800CD6A:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #2]
	lsrs r0, r1, #4
	ldrb r1, [r4, #3]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #3]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #4
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800CD48
	b _0800D08C
_0800CDD0:
	cmp r2, #0
	bgt _0800CDD6
	b _0800D08C
_0800CDD6:
	adds r3, r2, #0
_0800CDD8:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800CDE0
	adds r0, r5, #7
_0800CDE0:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800CDFA
	adds r1, r6, #7
_0800CDFA:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #2]
	lsrs r0, r1, #4
	ldrb r1, [r4, #3]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #3]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #4
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800CDD8
	b _0800D08C
_0800CE60:
	cmp r2, #0
	bgt _0800CE66
	b _0800D08C
_0800CE66:
	adds r3, r2, #0
_0800CE68:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800CE70
	adds r0, r5, #7
_0800CE70:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800CE8A
	adds r1, r6, #7
_0800CE8A:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #2]
	lsrs r0, r1, #4
	ldrb r1, [r4, #3]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #3]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #4
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800CE68
	b _0800D08C
_0800CEF0:
	asrs r1, r6, #1
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0800CF72
	cmp r1, #1
	bgt _0800CF04
	cmp r1, #0
	beq _0800CF10
	b _0800D08C
_0800CF04:
	cmp r1, #2
	beq _0800CFD4
	cmp r1, #3
	bne _0800CF0E
	b _0800D032
_0800CF0E:
	b _0800D08C
_0800CF10:
	cmp r2, #0
	bgt _0800CF16
	b _0800D08C
_0800CF16:
	adds r3, r2, #0
_0800CF18:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800CF20
	adds r0, r5, #7
_0800CF20:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800CF3A
	adds r1, r6, #7
_0800CF3A:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #1]
	adds r4, #1
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800CF18
	b _0800D08C
_0800CF72:
	cmp r2, #0
	bgt _0800CF78
	b _0800D08C
_0800CF78:
	adds r3, r2, #0
_0800CF7A:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800CF82
	adds r0, r5, #7
_0800CF82:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800CF9C
	adds r1, r6, #7
_0800CF9C:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1d]
	adds r4, #1
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800CF7A
	b _0800D08C
_0800CFD4:
	cmp r2, #0
	ble _0800D08C
	adds r3, r2, #0
_0800CFDA:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800CFE2
	adds r0, r5, #7
_0800CFE2:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800CFFC
	adds r1, r6, #7
_0800CFFC:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1d]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1e]
	adds r4, #1
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800CFDA
	b _0800D08C
_0800D032:
	cmp r2, #0
	ble _0800D08C
	adds r3, r2, #0
_0800D038:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800D040
	adds r0, r5, #7
_0800D040:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800D05A
	adds r1, r6, #7
_0800D05A:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1d]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1e]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1f]
	adds r4, #1
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800D038
_0800D08C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800CC70

	thumb_func_start sub_0800D098
sub_0800D098: @ 0x0800D098
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	adds r7, r3, #0
	ldr r2, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	mov ip, r0
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _0800D0B6
	b _0800D388
_0800D0B6:
	asrs r1, r6, #1
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0800D184
	cmp r1, #1
	bgt _0800D0CA
	cmp r1, #0
	beq _0800D0D8
	b _0800D56A
_0800D0CA:
	cmp r1, #2
	bne _0800D0D0
	b _0800D230
_0800D0D0:
	cmp r1, #3
	bne _0800D0D6
	b _0800D2DC
_0800D0D6:
	b _0800D56A
_0800D0D8:
	cmp r2, #0
	bgt _0800D0DE
	b _0800D56A
_0800D0DE:
	adds r3, r2, #0
_0800D0E0:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800D0E8
	adds r0, r5, #7
_0800D0E8:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800D102
	adds r1, r6, #7
_0800D102:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #2]
	lsrs r0, r1, #4
	ldrb r1, [r4, #3]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #3]
	lsrs r0, r1, #4
	ldrb r1, [r4, #4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #5]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #5]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #6
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800D0E0
	b _0800D56A
_0800D184:
	cmp r2, #0
	bgt _0800D18A
	b _0800D56A
_0800D18A:
	adds r3, r2, #0
_0800D18C:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800D194
	adds r0, r5, #7
_0800D194:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800D1AE
	adds r1, r6, #7
_0800D1AE:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #2]
	lsrs r0, r1, #4
	ldrb r1, [r4, #3]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #3]
	lsrs r0, r1, #4
	ldrb r1, [r4, #4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #5]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #5]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #6
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800D18C
	b _0800D56A
_0800D230:
	cmp r2, #0
	bgt _0800D236
	b _0800D56A
_0800D236:
	adds r3, r2, #0
_0800D238:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800D240
	adds r0, r5, #7
_0800D240:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800D25A
	adds r1, r6, #7
_0800D25A:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #2]
	lsrs r0, r1, #4
	ldrb r1, [r4, #3]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #3]
	lsrs r0, r1, #4
	ldrb r1, [r4, #4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #5]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #5]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #6
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800D238
	b _0800D56A
_0800D2DC:
	cmp r2, #0
	bgt _0800D2E2
	b _0800D56A
_0800D2E2:
	adds r3, r2, #0
_0800D2E4:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800D2EC
	adds r0, r5, #7
_0800D2EC:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800D306
	adds r1, r6, #7
_0800D306:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #2]
	lsrs r0, r1, #4
	ldrb r1, [r4, #3]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #3]
	lsrs r0, r1, #4
	ldrb r1, [r4, #4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #5]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #5]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #6
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800D2E4
	b _0800D56A
_0800D388:
	asrs r1, r6, #1
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0800D41A
	cmp r1, #1
	bgt _0800D39C
	cmp r1, #0
	beq _0800D3A8
	b _0800D56A
_0800D39C:
	cmp r1, #2
	beq _0800D48C
	cmp r1, #3
	bne _0800D3A6
	b _0800D4FC
_0800D3A6:
	b _0800D56A
_0800D3A8:
	cmp r2, #0
	bgt _0800D3AE
	b _0800D56A
_0800D3AE:
	adds r3, r2, #0
_0800D3B0:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800D3B8
	adds r0, r5, #7
_0800D3B8:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800D3D2
	adds r1, r6, #7
_0800D3D2:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #0x1d
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #1]
	adds r4, #1
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800D3B0
	b _0800D56A
_0800D41A:
	cmp r2, #0
	bgt _0800D420
	b _0800D56A
_0800D420:
	adds r3, r2, #0
_0800D422:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800D42A
	adds r0, r5, #7
_0800D42A:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800D444
	adds r1, r6, #7
_0800D444:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #0x1d
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #1]
	adds r4, #1
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800D422
	b _0800D56A
_0800D48C:
	cmp r2, #0
	ble _0800D56A
	adds r3, r2, #0
_0800D492:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800D49A
	adds r0, r5, #7
_0800D49A:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800D4B4
	adds r1, r6, #7
_0800D4B4:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #0x1d
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #1]
	adds r4, #1
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800D492
	b _0800D56A
_0800D4FC:
	cmp r2, #0
	ble _0800D56A
	adds r3, r2, #0
_0800D502:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800D50A
	adds r0, r5, #7
_0800D50A:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800D524
	adds r1, r6, #7
_0800D524:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #0x1d
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1d]
	adds r4, #1
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800D502
_0800D56A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800D098

	thumb_func_start sub_0800D574
sub_0800D574: @ 0x0800D574
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	adds r7, r3, #0
	ldr r0, [sp, #0x18]
	mov ip, r0
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _0800D590
	b _0800D882
_0800D590:
	asrs r1, r6, #1
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0800D666
	cmp r1, #1
	bgt _0800D5A4
	cmp r1, #0
	beq _0800D5B2
	b _0800DA92
_0800D5A4:
	cmp r1, #2
	bne _0800D5AA
	b _0800D71A
_0800D5AA:
	cmp r1, #3
	bne _0800D5B0
	b _0800D7CE
_0800D5B0:
	b _0800DA92
_0800D5B2:
	movs r3, #0xf
_0800D5B4:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800D5BC
	adds r0, r5, #7
_0800D5BC:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800D5D6
	adds r1, r6, #7
_0800D5D6:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #2]
	lsrs r0, r1, #4
	ldrb r1, [r4, #3]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #3]
	lsrs r0, r1, #4
	ldrb r1, [r4, #4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #5]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #5]
	lsrs r0, r1, #4
	ldrb r1, [r4, #6]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #6]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #8
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bge _0800D5B4
	b _0800DA92
_0800D666:
	movs r3, #0xf
_0800D668:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800D670
	adds r0, r5, #7
_0800D670:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800D68A
	adds r1, r6, #7
_0800D68A:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #2]
	lsrs r0, r1, #4
	ldrb r1, [r4, #3]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #3]
	lsrs r0, r1, #4
	ldrb r1, [r4, #4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #5]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #5]
	lsrs r0, r1, #4
	ldrb r1, [r4, #6]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #6]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #8
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bge _0800D668
	b _0800DA92
_0800D71A:
	movs r3, #0xf
_0800D71C:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800D724
	adds r0, r5, #7
_0800D724:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800D73E
	adds r1, r6, #7
_0800D73E:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #2]
	lsrs r0, r1, #4
	ldrb r1, [r4, #3]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #3]
	lsrs r0, r1, #4
	ldrb r1, [r4, #4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #5]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #5]
	lsrs r0, r1, #4
	ldrb r1, [r4, #6]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #6]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #8
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bge _0800D71C
	b _0800DA92
_0800D7CE:
	movs r3, #0xf
_0800D7D0:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800D7D8
	adds r0, r5, #7
_0800D7D8:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800D7F2
	adds r1, r6, #7
_0800D7F2:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #2]
	lsrs r0, r1, #4
	ldrb r1, [r4, #3]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #3]
	lsrs r0, r1, #4
	ldrb r1, [r4, #4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #5]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #5]
	lsrs r0, r1, #4
	ldrb r1, [r4, #6]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #6]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #8
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bge _0800D7D0
	b _0800DA92
_0800D882:
	asrs r1, r6, #1
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0800D920
	cmp r1, #1
	bgt _0800D896
	cmp r1, #0
	beq _0800D8A4
	b _0800DA92
_0800D896:
	cmp r1, #2
	bne _0800D89C
	b _0800D99C
_0800D89C:
	cmp r1, #3
	bne _0800D8A2
	b _0800DA18
_0800D8A2:
	b _0800DA92
_0800D8A4:
	movs r3, #0xf
_0800D8A6:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800D8AE
	adds r0, r5, #7
_0800D8AE:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800D8C8
	adds r1, r6, #7
_0800D8C8:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #0x1d
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #1]
	adds r4, #1
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bge _0800D8A6
	b _0800DA92
_0800D920:
	movs r3, #0xf
_0800D922:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800D92A
	adds r0, r5, #7
_0800D92A:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800D944
	adds r1, r6, #7
_0800D944:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #0x1d
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1d]
	adds r4, #1
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bge _0800D922
	b _0800DA92
_0800D99C:
	movs r3, #0xf
_0800D99E:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800D9A6
	adds r0, r5, #7
_0800D9A6:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800D9C0
	adds r1, r6, #7
_0800D9C0:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #0x1d
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #0x1d
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #1]
	adds r4, #1
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bge _0800D99E
	b _0800DA92
_0800DA18:
	movs r3, #0xf
_0800DA1A:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800DA22
	adds r0, r5, #7
_0800DA22:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800DA3C
	adds r1, r6, #7
_0800DA3C:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #0x1d
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #0x1d
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #1]
	adds r4, #1
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bge _0800DA1A
_0800DA92:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800D574

	thumb_func_start sub_0800DA9C
sub_0800DA9C: @ 0x0800DA9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	adds r7, r3, #0
	ldr r0, [sp, #0x18]
	mov ip, r0
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _0800DAB8
	b _0800DDE2
_0800DAB8:
	asrs r1, r6, #1
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0800DB9C
	cmp r1, #1
	bgt _0800DACC
	cmp r1, #0
	beq _0800DADA
	b _0800E012
_0800DACC:
	cmp r1, #2
	bne _0800DAD2
	b _0800DC5E
_0800DAD2:
	cmp r1, #3
	bne _0800DAD8
	b _0800DD20
_0800DAD8:
	b _0800E012
_0800DADA:
	movs r3, #0x11
_0800DADC:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800DAE4
	adds r0, r5, #7
_0800DAE4:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800DAFE
	adds r1, r6, #7
_0800DAFE:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #2]
	lsrs r0, r1, #4
	ldrb r1, [r4, #3]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #3]
	lsrs r0, r1, #4
	ldrb r1, [r4, #4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #5]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #5]
	lsrs r0, r1, #4
	ldrb r1, [r4, #6]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #6]
	lsrs r0, r1, #4
	ldrb r1, [r4, #7]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #7]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #9
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bge _0800DADC
	b _0800E012
_0800DB9C:
	movs r3, #0x11
_0800DB9E:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800DBA6
	adds r0, r5, #7
_0800DBA6:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800DBC0
	adds r1, r6, #7
_0800DBC0:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #2]
	lsrs r0, r1, #4
	ldrb r1, [r4, #3]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #3]
	lsrs r0, r1, #4
	ldrb r1, [r4, #4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #5]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #5]
	lsrs r0, r1, #4
	ldrb r1, [r4, #6]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #6]
	lsrs r0, r1, #4
	ldrb r1, [r4, #7]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #7]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #9
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bge _0800DB9E
	b _0800E012
_0800DC5E:
	movs r3, #0x11
_0800DC60:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800DC68
	adds r0, r5, #7
_0800DC68:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800DC82
	adds r1, r6, #7
_0800DC82:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #2]
	lsrs r0, r1, #4
	ldrb r1, [r4, #3]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #3]
	lsrs r0, r1, #4
	ldrb r1, [r4, #4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #5]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #5]
	lsrs r0, r1, #4
	ldrb r1, [r4, #6]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #6]
	lsrs r0, r1, #4
	ldrb r1, [r4, #7]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #7]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #9
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bge _0800DC60
	b _0800E012
_0800DD20:
	movs r3, #0x11
_0800DD22:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800DD2A
	adds r0, r5, #7
_0800DD2A:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800DD44
	adds r1, r6, #7
_0800DD44:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #2]
	lsrs r0, r1, #4
	ldrb r1, [r4, #3]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #3]
	lsrs r0, r1, #4
	ldrb r1, [r4, #4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #5]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #5]
	lsrs r0, r1, #4
	ldrb r1, [r4, #6]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #6]
	lsrs r0, r1, #4
	ldrb r1, [r4, #7]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #7]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #9
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bge _0800DD22
	b _0800E012
_0800DDE2:
	asrs r1, r6, #1
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0800DE88
	cmp r1, #1
	bgt _0800DDF6
	cmp r1, #0
	beq _0800DE04
	b _0800E012
_0800DDF6:
	cmp r1, #2
	bne _0800DDFC
	b _0800DF0C
_0800DDFC:
	cmp r1, #3
	bne _0800DE02
	b _0800DF90
_0800DE02:
	b _0800E012
_0800DE04:
	movs r3, #0x11
_0800DE06:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800DE0E
	adds r0, r5, #7
_0800DE0E:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800DE28
	adds r1, r6, #7
_0800DE28:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #0x1d
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1d]
	adds r4, #1
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bge _0800DE06
	b _0800E012
_0800DE88:
	movs r3, #0x11
_0800DE8A:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800DE92
	adds r0, r5, #7
_0800DE92:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800DEAC
	adds r1, r6, #7
_0800DEAC:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #0x1d
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #0x1d
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #1]
	adds r4, #1
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bge _0800DE8A
	b _0800E012
_0800DF0C:
	movs r3, #0x11
_0800DF0E:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800DF16
	adds r0, r5, #7
_0800DF16:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800DF30
	adds r1, r6, #7
_0800DF30:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #0x1d
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #0x1d
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #1]
	adds r4, #1
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bge _0800DF0E
	b _0800E012
_0800DF90:
	movs r3, #0x11
_0800DF92:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800DF9A
	adds r0, r5, #7
_0800DF9A:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800DFB4
	adds r1, r6, #7
_0800DFB4:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #0x1d
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #0x1d
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #1]
	adds r4, #1
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bge _0800DF92
_0800E012:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800DA9C

	thumb_func_start sub_0800E01C
sub_0800E01C: @ 0x0800E01C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	adds r7, r3, #0
	ldr r2, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	mov ip, r0
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _0800E03A
	b _0800E264
_0800E03A:
	asrs r1, r6, #1
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0800E0DE
	cmp r1, #1
	bgt _0800E04E
	cmp r1, #0
	beq _0800E05C
	b _0800E3E4
_0800E04E:
	cmp r1, #2
	bne _0800E054
	b _0800E160
_0800E054:
	cmp r1, #3
	bne _0800E05A
	b _0800E1E2
_0800E05A:
	b _0800E3E4
_0800E05C:
	cmp r2, #0
	bgt _0800E062
	b _0800E3E4
_0800E062:
	adds r3, r2, #0
_0800E064:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800E06C
	adds r0, r5, #7
_0800E06C:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800E086
	adds r1, r6, #7
_0800E086:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #2]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #4
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800E064
	b _0800E3E4
_0800E0DE:
	cmp r2, #0
	bgt _0800E0E4
	b _0800E3E4
_0800E0E4:
	adds r3, r2, #0
_0800E0E6:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800E0EE
	adds r0, r5, #7
_0800E0EE:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800E108
	adds r1, r6, #7
_0800E108:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #2]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #4
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800E0E6
	b _0800E3E4
_0800E160:
	cmp r2, #0
	bgt _0800E166
	b _0800E3E4
_0800E166:
	adds r3, r2, #0
_0800E168:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800E170
	adds r0, r5, #7
_0800E170:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800E18A
	adds r1, r6, #7
_0800E18A:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #2]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #4
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800E168
	b _0800E3E4
_0800E1E2:
	cmp r2, #0
	bgt _0800E1E8
	b _0800E3E4
_0800E1E8:
	adds r3, r2, #0
_0800E1EA:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800E1F2
	adds r0, r5, #7
_0800E1F2:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800E20C
	adds r1, r6, #7
_0800E20C:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	movs r0, #0xf
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #0x1d
	ldrb r1, [r4]
	lsrs r0, r1, #4
	ldrb r1, [r4, #1]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	ldrb r1, [r4, #1]
	lsrs r0, r1, #4
	ldrb r1, [r4, #2]
	lsls r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r2, #1
	movs r0, #0xf0
	ldrb r1, [r2]
	ands r0, r1
	ldrb r1, [r4, #2]
	lsrs r1, r1, #4
	orrs r0, r1
	strb r0, [r2]
	adds r4, #4
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800E1EA
	b _0800E3E4
_0800E264:
	asrs r1, r6, #1
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0800E2DE
	cmp r1, #1
	bgt _0800E278
	cmp r1, #0
	beq _0800E284
	b _0800E3E4
_0800E278:
	cmp r1, #2
	beq _0800E338
	cmp r1, #3
	bne _0800E282
	b _0800E390
_0800E282:
	b _0800E3E4
_0800E284:
	cmp r2, #0
	bgt _0800E28A
	b _0800E3E4
_0800E28A:
	adds r3, r2, #0
_0800E28C:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800E294
	adds r0, r5, #7
_0800E294:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800E2AE
	adds r1, r6, #7
_0800E2AE:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #1]
	adds r4, #2
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800E28C
	b _0800E3E4
_0800E2DE:
	cmp r2, #0
	bgt _0800E2E4
	b _0800E3E4
_0800E2E4:
	adds r3, r2, #0
_0800E2E6:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800E2EE
	adds r0, r5, #7
_0800E2EE:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800E308
	adds r1, r6, #7
_0800E308:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #1]
	adds r4, #2
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800E2E6
	b _0800E3E4
_0800E338:
	cmp r2, #0
	ble _0800E3E4
	adds r3, r2, #0
_0800E33E:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800E346
	adds r0, r5, #7
_0800E346:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800E360
	adds r1, r6, #7
_0800E360:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	adds r2, #1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1d]
	adds r4, #2
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800E33E
	b _0800E3E4
_0800E390:
	cmp r2, #0
	ble _0800E3E4
	adds r3, r2, #0
_0800E396:
	adds r0, r5, #0
	cmp r5, #0
	bge _0800E39E
	adds r0, r5, #7
_0800E39E:
	asrs r0, r0, #3
	lsls r0, r0, #5
	adds r1, r0, #0
	muls r1, r7, r1
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r1, r0
	adds r1, r6, #0
	cmp r6, #0
	bge _0800E3B8
	adds r1, r6, #7
_0800E3B8:
	asrs r1, r1, #3
	lsls r1, r1, #5
	adds r1, r0, r1
	adds r0, r6, #0
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r0, ip
	adds r2, r0, r1
	ldrb r0, [r4]
	strb r0, [r2]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1d]
	adds r4, #1
	ldrb r0, [r4]
	strb r0, [r2, #0x1e]
	adds r4, #2
	subs r3, #1
	adds r5, #1
	cmp r3, #0
	bne _0800E396
_0800E3E4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800E01C

	thumb_func_start sub_0800E3F0
sub_0800E3F0: @ 0x0800E3F0
	push {r4, r5, lr}
	sub sp, #8
	ldr r5, [sp, #0x14]
	movs r4, #1
	str r4, [sp]
	str r5, [sp, #4]
	bl sub_0800CC70
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0800E3F0

	thumb_func_start sub_0800E408
sub_0800E408: @ 0x0800E408
	push {r4, r5, lr}
	sub sp, #8
	ldr r5, [sp, #0x14]
	movs r4, #8
	str r4, [sp]
	str r5, [sp, #4]
	bl sub_0800CC70
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0800E408

	thumb_func_start sub_0800E420
sub_0800E420: @ 0x0800E420
	push {r4, lr}
	adds r4, r2, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r2, r1, #0x18
	movs r1, #0
	cmp r2, #0x7e
	bls _0800E438
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0800E438:
	cmp r3, #0x9f
	bls _0800E43E
	movs r1, #0x40
_0800E43E:
	cmp r3, #0x87
	bls _0800E444
	adds r1, #1
_0800E444:
	cmp r3, #0x86
	bls _0800E44A
	adds r1, #2
_0800E44A:
	subs r0, r3, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r1, r3, #0
	subs r1, #0x81
	movs r0, #0xbc
	muls r1, r0, r1
	adds r0, r2, #0
	subs r0, #0x40
	adds r0, r0, r1
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0800E420

	thumb_func_start sub_0800E46C
sub_0800E46C: @ 0x0800E46C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	mov sl, r1
	adds r0, r2, #0
	cmp r2, #0
	bge _0800E484
	adds r0, r2, #7
_0800E484:
	asrs r7, r0, #3
	cmp r3, #0
	bge _0800E48C
	adds r3, #7
_0800E48C:
	asrs r3, r3, #3
	mov sb, r3
	movs r1, #0
	cmp r1, sb
	bge _0800E4EE
	lsrs r0, r2, #0x1f
	adds r0, r2, r0
	asrs r0, r0, #1
	str r0, [sp, #4]
_0800E49E:
	movs r4, #0
	adds r0, r1, #1
	mov r8, r0
	cmp r4, r7
	bge _0800E4E8
	lsls r0, r1, #5
	adds r5, r7, #0
	muls r5, r0, r5
	ldr r2, [sp, #4]
	subs r2, #4
	mov ip, r2
_0800E4B4:
	lsls r0, r4, #2
	adds r0, r5, r0
	mov r3, sl
	adds r1, r3, r0
	lsls r0, r4, #5
	adds r0, r5, r0
	ldr r3, [sp]
	adds r2, r3, r0
	movs r0, #0
	adds r6, r4, #1
_0800E4C8:
	adds r4, r0, #1
	movs r3, #3
_0800E4CC:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	subs r3, #1
	cmp r3, #0
	bge _0800E4CC
	add r1, ip
	adds r0, r4, #0
	cmp r0, #7
	ble _0800E4C8
	adds r4, r6, #0
	cmp r4, r7
	blt _0800E4B4
_0800E4E8:
	mov r1, r8
	cmp r1, sb
	blt _0800E49E
_0800E4EE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800E46C

	thumb_func_start sub_0800E500
sub_0800E500: @ 0x0800E500
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	adds r4, r1, #0
	ldr r0, [sp, #0x2c]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [sp, #4]
	movs r1, #0
	ldr r0, [sp, #0x28]
	cmp r1, r0
	bge _0800E590
	lsrs r0, r3, #0x1f
	adds r0, r3, r0
	asrs r0, r0, #1
	mov ip, r0
	movs r0, #1
	ands r0, r2
	lsls r0, r0, #0x18
	mov sl, r0
	mov sb, ip
_0800E534:
	ldr r2, [sp, #4]
	adds r0, r2, #0
	muls r0, r1, r0
	ldr r2, [sp]
	adds r3, r2, r0
	adds r7, r1, #1
	mov r0, ip
	cmp r0, #0
	ble _0800E588
	mov r1, sl
	lsrs r6, r1, #0x18
	movs r2, #0xf
	mov r8, r2
	mov r5, sb
_0800E550:
	cmp r6, #0
	beq _0800E57A
	movs r0, #0xf
	ldrb r1, [r3]
	ands r0, r1
	ldrb r2, [r4]
	lsls r1, r2, #4
	orrs r0, r1
	strb r0, [r3]
	adds r3, #1
	movs r0, #0xf0
	ldrb r1, [r3]
	ands r0, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x1c
	mov r1, r8
	ands r2, r1
	orrs r0, r2
	strb r0, [r3]
	adds r4, #1
	b _0800E582
_0800E57A:
	ldrb r0, [r4]
	strb r0, [r3]
	adds r4, #1
	adds r3, #1
_0800E582:
	subs r5, #1
	cmp r5, #0
	bne _0800E550
_0800E588:
	adds r1, r7, #0
	ldr r2, [sp, #0x28]
	cmp r1, r2
	blt _0800E534
_0800E590:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800E500

	thumb_func_start sub_0800E5A0
sub_0800E5A0: @ 0x0800E5A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x104
	add r7, sp, #8
	bl sub_0804441C
	movs r1, #0xc0
	adds r1, r1, r7
	str r0, [r1]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0x18
	bl memset
	ldr r1, _0800E6DC @ =gUnknown_2027818
	adds r0, r7, #0
	bl sub_0800998C
	adds r2, r7, #0
	adds r2, #0x20
	movs r3, #0xf0
	adds r3, r3, r7
	str r2, [r3]
	adds r4, r7, #0
	adds r4, #0x18
	movs r5, #0xe8
	adds r5, r5, r7
	str r4, [r5]
	ldr r1, _0800E6E0 @ =gUnknown_2024250
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x18
_0800E5E6:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge _0800E5E6
	ldr r4, _0800E6E4 @ =gUnknown_85EC1E8
	movs r1, #0xc0
	adds r1, r1, r7
	ldr r0, [r1]
	adds r0, #4
	movs r1, #0xf4
	adds r1, r1, r7
	str r0, [r1]
	ldr r1, _0800E6E8 @ =gUnknown_2024268
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x14
_0800E606:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge _0800E606
	ldr r2, _0800E6EC @ =gUnknown_202007C
	ldr r0, [r2]
	ldr r3, _0800E6F0 @ =gUnknown_2027C6A
	ldrb r3, [r3]
	lsls r1, r3, #2
	adds r1, r1, r4
	ldr r1, [r1]
	bl sub_08005350
	movs r0, #1
	bl sub_080053D8
	ldr r0, _0800E6F4 @ =gUnknown_85F3924
	movs r1, #4
	movs r2, #0
	movs r3, #0x20
	bl LoadPalette
	movs r4, #0xc
	str r4, [sp]
	ldr r0, _0800E6F8 @ =gUnknown_2024DD0
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #3
	movs r2, #5
	movs r3, #0x17
	bl sub_08002E80
	movs r2, #0x8a
	lsls r2, r2, #1
	ldr r5, _0800E6EC @ =gUnknown_202007C
	ldr r3, [r5]
	movs r0, #0
	movs r1, #0xa3
	bl sub_080045CC
	str r4, [sp]
	ldr r0, _0800E6FC @ =gUnknown_861BBFA
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #3
	movs r2, #5
	movs r3, #0x17
	bl sub_08002D6C
	ldr r1, _0800E700 @ =gUnknown_85EC1B4
	ldr r2, _0800E6F0 @ =gUnknown_2027C6A
	ldrb r2, [r2]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r3, #0xb4
	adds r3, r3, r7
	str r0, [r3]
	ldr r4, _0800E704 @ =gUnknown_20293BC
	ldr r0, [r4, #4]
	ldr r1, _0800E708 @ =gUnknown_2024280
	ldr r2, _0800E70C @ =gUnknown_2024284
	bl sub_080023E4
	ldr r0, [r4, #4]
	ldr r3, [r0, #0x30]
	movs r5, #8
	ldrsh r1, [r3, r5]
	adds r0, r0, r1
	movs r2, #0xb4
	adds r2, r2, r7
	ldr r2, [r2]
	ldrb r1, [r2]
	ldrb r2, [r2, #1]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	ldr r0, _0800E710 @ =gUnknown_2020078
	ldr r1, [r0]
	adds r0, r7, #0
	bl sub_0800EC60
	movs r5, #0xac
	adds r5, r5, r7
	str r0, [r5]
	movs r0, #0x38
	bl sub_080046D4
	movs r1, #0xbc
	adds r1, r1, r7
	str r0, [r1]
	movs r2, #0xc0
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _0800E714 @ =sub_0800E718
	movs r3, #0xf0
	adds r3, r3, r7
	ldr r3, [r3]
	str r0, [r3, #4]
	mov r4, sp
	str r4, [r3, #8]
	b _0800E71A
	.align 2, 0
_0800E6DC: .4byte gUnknown_2027818
_0800E6E0: .4byte gUnknown_2024250
_0800E6E4: .4byte gUnknown_85EC1E8
_0800E6E8: .4byte gUnknown_2024268
_0800E6EC: .4byte gUnknown_202007C
_0800E6F0: .4byte gUnknown_2027C6A
_0800E6F4: .4byte gUnknown_85F3924
_0800E6F8: .4byte gUnknown_2024DD0
_0800E6FC: .4byte gUnknown_861BBFA
_0800E700: .4byte gUnknown_85EC1B4
_0800E704: .4byte gUnknown_20293BC
_0800E708: .4byte gUnknown_2024280
_0800E70C: .4byte gUnknown_2024284
_0800E710: .4byte gUnknown_2020078
_0800E714: .4byte _0800E718
_0800E718: @ 0x0800E718
	b _0800EA84
_0800E71A:
	movs r0, #0xe8
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0xf4
	adds r1, r1, r7
	ldr r1, [r1]
	str r0, [r1]
	ldr r0, _0800E8BC @ =gUnknown_2020078
	ldr r2, [r0]
	movs r0, #8
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r1, #0xbc
	adds r1, r1, r7
	ldr r0, [r1]
	movs r1, #1
	movs r4, #0xac
	adds r4, r4, r7
	ldr r3, [r4]
	bl sub_08002504
	ldr r5, _0800E8C0 @ =gUnknown_2024248
	str r0, [r5]
	movs r1, #0xc0
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	adds r3, r5, #0
	ldr r0, [r3]
	ldr r3, [r0, #0x30]
	movs r4, #8
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	movs r5, #0xac
	adds r5, r5, r7
	ldr r5, [r5]
	lsrs r1, r5, #0x1f
	adds r1, r5, r1
	asrs r1, r1, #1
	movs r4, #0xb4
	adds r4, r4, r7
	ldr r4, [r4]
	ldrb r4, [r4, #2]
	subs r1, r4, r1
	movs r5, #0xb4
	adds r5, r5, r7
	ldr r5, [r5]
	ldrb r2, [r5, #3]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	ldr r1, _0800E8C0 @ =gUnknown_2024248
	ldr r0, [r1]
	bl sub_080023D8
	ldr r2, _0800E8C0 @ =gUnknown_2024248
	ldr r0, [r2]
	bl sub_08002428
	ldr r3, _0800E8C4 @ =gUnknown_85F3924
	movs r4, #0xf8
	adds r4, r4, r7
	str r3, [r4]
	movs r5, #0xc
	movs r0, #0xa8
	adds r0, r0, r7
	str r5, [r0]
_0800E7A6:
	movs r1, #0xf8
	adds r1, r1, r7
	ldr r0, [r1]
	movs r1, #4
	movs r2, #0
	movs r3, #0x20
	bl LoadPalette
	movs r0, #1
	bl sub_080053D8
	movs r3, #0xf8
	adds r3, r3, r7
	ldr r2, [r3]
	adds r2, #0x20
	str r2, [r3]
	movs r5, #0xa8
	adds r5, r5, r7
	ldr r4, [r5]
	subs r4, #1
	str r4, [r5]
	cmp r4, #0
	bge _0800E7A6
	ldr r0, _0800E8C8 @ =gUnknown_202780C
	ldr r1, _0800E8CC @ =0x0000045E
	adds r2, r0, r1
	ldrb r0, [r2]
	cmp r0, #0
	bne _0800E7E2
	b _0800EB80
_0800E7E2:
	ldr r1, _0800E8D0 @ =gUnknown_85EBDA4
	ldrb r2, [r2]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xb0
	adds r2, r2, r7
	str r0, [r2]
	ldr r3, _0800E8C8 @ =gUnknown_202780C
	movs r4, #0x8c
	lsls r4, r4, #3
	adds r0, r3, r4
	movs r1, #5
	movs r2, #1
	movs r3, #0x1e
	bl sub_08000920
	ldr r5, _0800E8C8 @ =gUnknown_202780C
	movs r1, #0x90
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	movs r2, #0xb8
	adds r2, r2, r7
	str r0, [r2]
	movs r3, #0
	movs r4, #0xa8
	adds r4, r4, r7
	str r3, [r4]
	movs r5, #0xb0
	adds r5, r5, r7
	ldr r5, [r5]
	cmp r3, r5
	blt _0800E828
	b _0800EA76
_0800E828:
	movs r0, #0x8c
	movs r1, #0xa8
	adds r1, r1, r7
	ldr r1, [r1]
	muls r0, r1, r0
	movs r2, #0xb8
	adds r2, r2, r7
	ldr r2, [r2]
	adds r0, r2, r0
	ldr r1, _0800E8BC @ =gUnknown_2020078
	movs r4, #0xa8
	adds r4, r4, r7
	ldr r3, [r4]
	adds r3, #1
	movs r4, #0xc4
	adds r4, r4, r7
	str r3, [r4]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	subs r2, r2, r3
	lsls r2, r2, #5
	ldr r1, [r1]
	adds r1, r1, r2
	bl sub_0800EC60
	movs r5, #0xac
	adds r5, r5, r7
	str r0, [r5]
	ldr r0, _0800E8D4 @ =gUnknown_2024250
	movs r1, #0xa8
	adds r1, r1, r7
	ldr r1, [r1]
	lsls r1, r1, #2
	movs r2, #0xc8
	adds r2, r2, r7
	str r1, [r2]
	adds r0, r1, r0
	movs r2, #0xcc
	adds r2, r2, r7
	str r0, [r2]
	movs r0, #0x38
	bl sub_080046D4
	movs r3, #0xd0
	adds r3, r3, r7
	str r0, [r3]
	movs r4, #0xc0
	adds r4, r4, r7
	ldr r4, [r4]
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	adds r1, r7, #0
	adds r1, #0x38
	str r7, [r7, #0x38]
	ldr r0, _0800E8D8 @ =sub_0800E8DC
	str r0, [r1, #4]
	mov r5, sp
	str r5, [r1, #8]
	movs r0, #0xc8
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0xec
	adds r1, r1, r7
	str r0, [r1]
	movs r1, #0xc4
	adds r1, r1, r7
	ldr r1, [r1]
	movs r2, #0xe4
	adds r2, r2, r7
	str r1, [r2]
	b _0800E8DE
	.align 2, 0
_0800E8BC: .4byte gUnknown_2020078
_0800E8C0: .4byte gUnknown_2024248
_0800E8C4: .4byte gUnknown_85F3924
_0800E8C8: .4byte gUnknown_202780C
_0800E8CC: .4byte 0x0000045E
_0800E8D0: .4byte gUnknown_85EBDA4
_0800E8D4: .4byte gUnknown_2024250
_0800E8D8: .4byte _0800E8DC
_0800E8DC: @ 0x0800E8DC
	b _0800EAD4
_0800E8DE:
	adds r0, r7, #0
	adds r0, #0x30
	movs r2, #0xf4
	adds r2, r2, r7
	ldr r2, [r2]
	str r0, [r2]
	ldr r1, _0800E9BC @ =gUnknown_2020078
	movs r3, #0xe4
	adds r3, r3, r7
	ldr r3, [r3]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	subs r0, r0, r3
	lsls r0, r0, #5
	ldr r2, [r1]
	adds r2, r2, r0
	movs r0, #8
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r1, #0xd0
	adds r1, r1, r7
	ldr r0, [r1]
	movs r1, #1
	movs r4, #0xac
	adds r4, r4, r7
	ldr r3, [r4]
	bl sub_08002504
	movs r5, #0xcc
	adds r5, r5, r7
	ldr r5, [r5]
	str r0, [r5]
	movs r1, #0xc0
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, _0800E9C0 @ =gUnknown_2024250
	movs r3, #0xec
	adds r3, r3, r7
	ldr r3, [r3]
	adds r0, r3, r0
	movs r3, #0xd4
	adds r3, r3, r7
	str r0, [r3]
	ldr r0, [r0]
	ldr r3, [r0, #0x30]
	movs r4, #8
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	movs r5, #0xec
	adds r5, r5, r7
	ldr r5, [r5]
	movs r1, #0xb4
	adds r1, r1, r7
	ldr r1, [r1]
	adds r2, r5, r1
	adds r2, #4
	movs r4, #0xac
	adds r4, r4, r7
	ldr r4, [r4]
	lsrs r1, r4, #0x1f
	adds r1, r4, r1
	asrs r1, r1, #1
	ldrb r4, [r2, #2]
	subs r1, r4, r1
	ldrb r2, [r2, #3]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	movs r5, #0xd4
	adds r5, r5, r7
	ldr r5, [r5]
	ldr r0, [r5]
	bl sub_080023D8
	ldr r0, [r5]
	bl sub_08002428
	ldr r0, _0800E9C4 @ =gUnknown_2024268
	movs r2, #0xec
	adds r2, r2, r7
	ldr r2, [r2]
	adds r0, r2, r0
	movs r2, #0xd8
	adds r2, r2, r7
	str r0, [r2]
	movs r0, #0x38
	bl sub_080046D4
	movs r3, #0xdc
	adds r3, r3, r7
	str r0, [r3]
	movs r4, #0xc0
	adds r4, r4, r7
	ldr r4, [r4]
	ldr r0, [r4, #4]
	str r0, [r7, #0x48]
	movs r5, #0
	str r5, [r7, #0x4c]
	adds r1, r7, #0
	adds r1, #0x50
	str r7, [r7, #0x50]
	ldr r0, _0800E9C8 @ =sub_0800E9CC
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0800E9CE
	.align 2, 0
_0800E9BC: .4byte gUnknown_2020078
_0800E9C0: .4byte gUnknown_2024250
_0800E9C4: .4byte gUnknown_2024268
_0800E9C8: .4byte _0800E9CC
_0800E9CC: @ 0x0800E9CC
	b _0800EB24
_0800E9CE:
	adds r0, r7, #0
	adds r0, #0x48
	movs r1, #0xf4
	adds r1, r1, r7
	ldr r1, [r1]
	str r0, [r1]
	movs r0, #0x8c
	movs r3, #0xa8
	adds r3, r3, r7
	ldr r3, [r3]
	adds r2, r3, #0
	muls r2, r0, r2
	movs r4, #0xb8
	adds r4, r4, r7
	ldr r4, [r4]
	adds r2, r4, r2
	adds r2, #0xc
	movs r0, #0x10
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	movs r5, #0xdc
	adds r5, r5, r7
	ldr r0, [r5]
	movs r1, #1
	movs r3, #0x10
	bl sub_08002504
	movs r1, #0xd8
	adds r1, r1, r7
	ldr r1, [r1]
	str r0, [r1]
	movs r2, #0xc0
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, _0800EA80 @ =gUnknown_2024268
	movs r4, #0xec
	adds r4, r4, r7
	ldr r4, [r4]
	adds r0, r4, r0
	movs r4, #0xe0
	adds r4, r4, r7
	str r0, [r4]
	ldr r0, [r0]
	ldr r3, [r0, #0x30]
	movs r5, #8
	ldrsh r1, [r3, r5]
	adds r0, r0, r1
	movs r1, #0xec
	adds r1, r1, r7
	ldr r1, [r1]
	movs r4, #0xb4
	adds r4, r4, r7
	ldr r4, [r4]
	adds r2, r1, r4
	ldrb r1, [r2, #4]
	ldrb r2, [r2, #5]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	movs r5, #0xe0
	adds r5, r5, r7
	ldr r5, [r5]
	ldr r0, [r5]
	bl sub_080023D8
	ldr r0, [r5]
	bl sub_08002428
	movs r2, #0xe4
	adds r2, r2, r7
	ldr r2, [r2]
	movs r3, #0xa8
	adds r3, r3, r7
	str r2, [r3]
	movs r4, #0xb0
	adds r4, r4, r7
	ldr r3, [r4]
	cmp r2, r3
	bge _0800EA76
	b _0800E828
_0800EA76:
	movs r0, #1
	bl sub_080053D8
	b _0800EB80
	.align 2, 0
_0800EA80: .4byte gUnknown_2024268
_0800EA84:
	movs r5, #0xc0
	adds r5, r5, r7
	ldr r2, [r5]
	adds r2, #4
	ldr r1, [r5]
	ldr r0, [r1, #4]
	str r0, [r7, #0x60]
	movs r0, #0
	str r0, [r7, #0x64]
	adds r1, r7, #0
	adds r1, #0x68
	str r7, [r7, #0x68]
	ldr r0, _0800EAA8 @ =sub_0800EAAC
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0800EAAE
	.align 2, 0
_0800EAA8: .4byte _0800EAAC
_0800EAAC: @ 0x0800EAAC
	b _0800EB74
_0800EAAE:
	adds r0, r7, #0
	adds r0, #0x60
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _0800EAC4
	movs r4, #0xbc
	adds r4, r4, r7
	ldr r0, [r4]
	bl sub_080046C0
_0800EAC4:
	movs r5, #0xc0
	adds r5, r5, r7
	ldr r5, [r5]
	ldr r0, [r5, #4]
	ldr r0, [r0]
	str r0, [r5, #4]
	bl sub_0804449C
_0800EAD4:
	movs r3, #0xc0
	adds r3, r3, r7
	ldr r2, [r3]
	adds r2, #4
	ldr r4, [r3]
	ldr r0, [r4, #4]
	str r0, [r7, #0x78]
	movs r0, #0
	str r0, [r7, #0x7c]
	adds r0, r7, #0
	adds r0, #0x80
	str r7, [r0]
	ldr r1, _0800EAF8 @ =sub_0800EAFC
	str r1, [r0, #4]
	mov r5, sp
	str r5, [r0, #8]
	b _0800EAFE
	.align 2, 0
_0800EAF8: .4byte _0800EAFC
_0800EAFC: @ 0x0800EAFC
	b _0800EB78
_0800EAFE:
	adds r0, r7, #0
	adds r0, #0x78
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _0800EB14
	movs r1, #0xd0
	adds r1, r1, r7
	ldr r0, [r1]
	bl sub_080046C0
_0800EB14:
	movs r2, #0xc0
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	bl sub_0804449C
_0800EB24:
	adds r2, r7, #0
	adds r2, #0x90
	movs r4, #0xc0
	adds r4, r4, r7
	ldr r3, [r4]
	adds r3, #4
	ldr r5, [r4]
	ldr r0, [r5, #4]
	str r0, [r2]
	movs r0, #0
	str r0, [r2, #4]
	adds r0, r7, #0
	adds r0, #0x98
	str r7, [r0]
	ldr r1, _0800EB4C @ =sub_0800EB50
	str r1, [r0, #4]
	mov r1, sp
	str r1, [r0, #8]
	b _0800EB52
	.align 2, 0
_0800EB4C: .4byte _0800EB50
_0800EB50: @ 0x0800EB50
	b _0800EB7C
_0800EB52:
	str r2, [r3]
	movs r2, #1
	cmp r2, #0
	beq _0800EB64
	movs r3, #0xdc
	adds r3, r3, r7
	ldr r0, [r3]
	bl sub_080046C0
_0800EB64:
	movs r4, #0xc0
	adds r4, r4, r7
	ldr r4, [r4]
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_0800EB74:
	bl sub_080443CC
_0800EB78:
	bl sub_080443CC
_0800EB7C:
	bl sub_080443CC
_0800EB80:
	add sp, #0x104
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800E5A0

	thumb_func_start sub_0800EB90
sub_0800EB90: @ 0x0800EB90
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r0, sp, #8
	movs r4, #0x1f
	ldr r5, _0800EC40 @ =gUnknown_20293BC
	ldr r6, _0800EC44 @ =gUnknown_2024280
	ldr r2, _0800EC48 @ =gUnknown_2024284
	movs r3, #0
	movs r1, #1
	negs r1, r1
_0800EBA4:
	strb r3, [r0]
	adds r0, #1
	subs r4, #1
	cmp r4, r1
	bne _0800EBA4
	ldr r0, [r5, #4]
	ldr r3, [r0, #0x30]
	movs r4, #8
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	ldr r1, [r6]
	ldr r2, [r2]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	ldr r0, _0800EC4C @ =gUnknown_85F3924
	movs r1, #4
	movs r2, #0
	movs r3, #0x20
	bl LoadPalette
	movs r2, #0x8a
	lsls r2, r2, #1
	movs r0, #0
	movs r1, #0xa3
	add r3, sp, #8
	bl sub_0800456C
	movs r0, #0xc
	str r0, [sp]
	ldr r0, _0800EC50 @ =gUnknown_2024DD0
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #3
	movs r2, #5
	movs r3, #0x17
	bl sub_08002D6C
	ldr r0, _0800EC54 @ =gUnknown_2024248
	ldr r0, [r0]
	cmp r0, #0
	beq _0800EBFE
	movs r1, #3
	bl sub_080018D8
_0800EBFE:
	ldr r5, _0800EC58 @ =gUnknown_2024250
	movs r6, #0
	movs r4, #6
_0800EC04:
	ldr r0, [r5]
	cmp r0, #0
	beq _0800EC12
	movs r1, #3
	bl sub_080018D8
	str r6, [r5]
_0800EC12:
	adds r5, #4
	subs r4, #1
	cmp r4, #0
	bge _0800EC04
	ldr r5, _0800EC5C @ =gUnknown_2024268
	movs r6, #0
	movs r4, #5
_0800EC20:
	ldr r0, [r5]
	cmp r0, #0
	beq _0800EC2E
	movs r1, #3
	bl sub_080018D8
	str r6, [r5]
_0800EC2E:
	adds r5, #4
	subs r4, #1
	cmp r4, #0
	bge _0800EC20
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EC40: .4byte gUnknown_20293BC
_0800EC44: .4byte gUnknown_2024280
_0800EC48: .4byte gUnknown_2024284
_0800EC4C: .4byte gUnknown_85F3924
_0800EC50: .4byte gUnknown_2024DD0
_0800EC54: .4byte gUnknown_2024248
_0800EC58: .4byte gUnknown_2024250
_0800EC5C: .4byte gUnknown_2024268
	thumb_func_end sub_0800EB90

	thumb_func_start sub_0800EC60
sub_0800EC60: @ 0x0800EC60
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08038134
	adds r6, r0, #0
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r0, r5, #0
	movs r1, #0
	bl memset
	movs r0, #0
	movs r1, #0
	bl sub_08038468
	movs r0, #0xf
	movs r1, #0
	bl sub_08038490
	movs r0, #0
	movs r1, #0
	bl sub_0803847C
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0xb
	bl sub_080383A4
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0800EC60

	thumb_func_start sub_0800ECA4
sub_0800ECA4: @ 0x0800ECA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	add r7, sp, #8
	lsls r0, r0, #0x18
	str r0, [r7, #0x34]
	lsrs r0, r0, #0x18
	str r0, [r7, #0x30]
	bl sub_0804441C
	str r0, [r7, #0x48]
	movs r2, #0x90
	lsls r2, r2, #3
	ldr r0, _0800ED7C @ =gUnknown_2022378
	movs r1, #0
	bl memset
	ldr r1, [r7, #0x34]
	lsrs r1, r1, #0x1b
	str r1, [r7, #0x3c]
	movs r2, #7
	ldr r0, [r7, #0x30]
	ands r0, r2
	str r0, [r7, #0x40]
	movs r1, #0
	str r1, [r7, #0x38]
	ldr r2, [r7, #0x3c]
	subs r2, #1
	str r2, [r7, #0x3c]
	movs r0, #1
	negs r0, r0
	adds r1, r7, #0
	adds r1, #8
	str r1, [r7, #0x4c]
	cmp r2, r0
	beq _0800ED16
_0800ECF2:
	ldr r2, _0800ED7C @ =gUnknown_2022378
	str r2, [sp]
	ldr r0, _0800ED80 @ =gUnknown_861BE22
	ldr r1, [r7, #0x38]
	movs r2, #2
	movs r3, #0x12
	bl sub_0800E408
	ldr r0, [r7, #0x38]
	adds r0, #8
	str r0, [r7, #0x38]
	ldr r1, [r7, #0x3c]
	subs r1, #1
	str r1, [r7, #0x3c]
	movs r2, #1
	negs r2, r2
	cmp r1, r2
	bne _0800ECF2
_0800ED16:
	ldr r0, [r7, #0x40]
	cmp r0, #0
	beq _0800ED50
	movs r1, #0
	str r1, [r7, #0x3c]
	cmp r0, #7
	beq _0800ED3A
	movs r2, #1
	str r2, [r7, #0x3c]
	cmp r0, #4
	bgt _0800ED3A
	movs r0, #3
	str r0, [r7, #0x3c]
	ldr r1, [r7, #0x40]
	cmp r1, #2
	ble _0800ED3A
	movs r2, #2
	str r2, [r7, #0x3c]
_0800ED3A:
	ldr r1, [r7, #0x3c]
	lsls r0, r1, #5
	ldr r1, _0800ED80 @ =gUnknown_861BE22
	adds r0, r0, r1
	ldr r1, _0800ED7C @ =gUnknown_2022378
	str r1, [sp]
	ldr r1, [r7, #0x38]
	movs r2, #2
	movs r3, #0x12
	bl sub_0800E408
_0800ED50:
	movs r0, #1
	bl sub_080053D8
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x44]
	ldr r1, [r7, #0x48]
	adds r1, #4
	ldr r2, [r7, #0x48]
	ldr r0, [r2, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _0800ED84 @ =sub_0800ED88
	ldr r2, [r7, #0x4c]
	str r0, [r2, #4]
	mov r0, sp
	str r0, [r2, #8]
	b _0800ED8A
	.align 2, 0
_0800ED7C: .4byte gUnknown_2022378
_0800ED80: .4byte gUnknown_861BE22
_0800ED84: .4byte _0800ED88
_0800ED88: @ 0x0800ED88
	b _0800EDC4
_0800ED8A:
	str r7, [r1]
	ldr r2, _0800EDBC @ =gUnknown_2022378
	movs r0, #0x10
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	ldr r0, [r7, #0x44]
	movs r1, #1
	movs r3, #0x90
	bl sub_08002504
	ldr r1, _0800EDC0 @ =gUnknown_20227F8
	str r0, [r1]
	ldr r2, [r7, #0x48]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r0, r1, #0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #3
	bl sub_080027DC
	b _0800EE0C
	.align 2, 0
_0800EDBC: .4byte gUnknown_2022378
_0800EDC0: .4byte gUnknown_20227F8
_0800EDC4:
	ldr r2, [r7, #0x48]
	adds r2, #4
	ldr r1, [r7, #0x48]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _0800EDE4 @ =sub_0800EDE8
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0800EDEA
	.align 2, 0
_0800EDE4: .4byte _0800EDE8
_0800EDE8: @ 0x0800EDE8
	b _0800EE08
_0800EDEA:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _0800EDFC
	ldr r0, [r7, #0x44]
	bl sub_080046C0
_0800EDFC:
	ldr r1, [r7, #0x48]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_0800EE08:
	bl sub_080443CC
_0800EE0C:
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800ECA4

	thumb_func_start sub_0800EE1C
sub_0800EE1C: @ 0x0800EE1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r5, r0, #0
	adds r7, r1, #0
	mov r8, r2
	ldr r0, [sp, #0x5c]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	mov r0, r8
	cmp r0, #0
	bge _0800EE3C
	adds r0, #7
_0800EE3C:
	asrs r0, r0, #3
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	subs r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x90
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x38]
	ldr r0, _0800EE74 @ =gUnknown_2020060
	lsls r1, r1, #5
	ldr r0, [r0]
	adds r0, r0, r1
	mov sl, r0
	movs r0, #8
	mov sb, r0
	adds r6, r2, #0
_0800EE60:
	cmp r6, #0
	beq _0800EED0
	ldrb r0, [r5]
	cmp r0, #1
	bne _0800EE78
	adds r5, #2
	movs r1, #0xf
	mov sb, r1
	b _0800EE60
	.align 2, 0
_0800EE74: .4byte gUnknown_2020060
_0800EE78:
	cmp r0, #2
	bne _0800EE84
	adds r5, #1
	movs r0, #8
	mov sb, r0
	b _0800EE60
_0800EE84:
	ldrb r1, [r5]
	subs r1, #0x20
	ldr r2, _0800EEC4 @ =gUnknown_85F2254
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r0, [r0]
	movs r4, #8
	subs r4, r4, r0
	lsls r1, r1, #3
	ldr r0, _0800EEC8 @ =gUnknown_861BEA2
	adds r1, r1, r0
	add r0, sp, #4
	mov r2, sb
	movs r3, #0
	bl sub_0800C77C
	ldr r0, _0800EECC @ =gUnknown_2020060
	ldr r0, [r0]
	str r0, [sp]
	add r0, sp, #4
	adds r1, r7, #0
	mov r2, r8
	movs r3, #0x17
	bl sub_0800E408
	adds r7, r7, r4
	adds r5, #1
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	b _0800EE60
	.align 2, 0
_0800EEC4: .4byte gUnknown_85F2254
_0800EEC8: .4byte gUnknown_861BEA2
_0800EECC: .4byte gUnknown_2020060
_0800EED0:
	movs r0, #0
	ldr r1, [sp, #0x38]
	movs r2, #0x2e
	mov r3, sl
	bl sub_080045CC
	movs r1, #0
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800EEE6
	movs r1, #1
_0800EEE6:
	adds r0, r1, #0
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0800EE1C

	thumb_func_start sub_0800EEF8
sub_0800EEF8: @ 0x0800EEF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov sl, r3
	movs r0, #0xc
	mov r8, r0
	movs r1, #0x59
	mov ip, r1
	movs r4, #0x11
	mov r0, r8
	muls r0, r7, r0
	adds r2, r0, #0
	adds r2, #0x11
	cmp r2, #0x59
	beq _0800EF82
	ldr r0, _0800F038 @ =gUnknown_2020060
	mov sb, r0
_0800EF26:
	adds r0, r4, #0
	cmp r4, #0
	bge _0800EF2E
	adds r0, r4, #7
_0800EF2E:
	asrs r0, r0, #3
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r6, #7
	adds r0, r4, #0
	ands r0, r6
	lsls r0, r0, #2
	adds r1, r1, r0
	mov r0, sb
	ldr r5, [r0]
	adds r3, r5, r1
	adds r0, r2, #0
	cmp r2, #0
	bge _0800EF52
	adds r0, r2, #7
_0800EF52:
	asrs r0, r0, #3
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	subs r1, r1, r0
	lsls r1, r1, #5
	adds r0, r2, #0
	ands r0, r6
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r5, r1
	adds r5, r2, #1
	adds r4, #1
	movs r2, #0x16
_0800EF6E:
	ldr r0, [r1]
	str r0, [r3]
	adds r3, #0x20
	adds r1, #0x20
	subs r2, #1
	cmp r2, #0
	bge _0800EF6E
	adds r2, r5, #0
	cmp r2, ip
	bne _0800EF26
_0800EF82:
	cmp r4, ip
	beq _0800EFBC
	ldr r5, _0800F038 @ =gUnknown_2020060
_0800EF88:
	adds r0, r4, #0
	cmp r4, #0
	bge _0800EF90
	adds r0, r4, #7
_0800EF90:
	asrs r0, r0, #3
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #7
	ands r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r5]
	adds r3, r0, r1
	adds r4, #1
	movs r0, #0
	movs r2, #0x16
_0800EFAE:
	str r0, [r3]
	adds r3, #0x20
	subs r2, #1
	cmp r2, #0
	bge _0800EFAE
	cmp r4, ip
	bne _0800EF88
_0800EFBC:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _0800EFE0
	ldr r4, _0800F03C @ =gUnknown_20227F8
	ldr r0, [r4]
	ldr r3, [r0, #0x30]
	movs r2, #0x10
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	movs r2, #0xc
	negs r2, r2
	ldr r3, [r3, #0x14]
	movs r1, #0
	bl _call_via_r3
	ldr r0, [r4]
	bl sub_080023D8
_0800EFE0:
	movs r5, #0
	cmp r5, r7
	bge _0800F012
	ldr r6, [sp, #8]
	rsbs r0, r7, #0
	adds r0, #6
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r4, r0, #0
	adds r4, #0x11
_0800EFF6:
	ldm r6!, {r0}
	mov r2, sl
	adds r1, r2, r5
	ldrb r1, [r1]
	str r1, [sp]
	movs r1, #1
	adds r2, r4, #0
	movs r3, #1
	bl sub_0800EE1C
	add r4, r8
	adds r5, #1
	cmp r5, r7
	blt _0800EFF6
_0800F012:
	movs r2, #0x8a
	lsls r2, r2, #1
	ldr r0, _0800F038 @ =gUnknown_2020060
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0x90
	bl sub_080045CC
	movs r0, #1
	bl sub_080053D8
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F038: .4byte gUnknown_2020060
_0800F03C: .4byte gUnknown_20227F8
	thumb_func_end sub_0800EEF8

	thumb_func_start sub_0800F040
sub_0800F040: @ 0x0800F040
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	mov sl, r1
	str r2, [sp, #4]
	mov sb, r3
	movs r0, #0xc
	mov r8, r0
	movs r4, #0x58
	movs r0, #6
	subs r0, r0, r7
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r2, r0, #0
	adds r2, #0x10
	cmp r2, #0
	blt _0800F0CC
	ldr r3, _0800F174 @ =gUnknown_2020060
	mov ip, r3
_0800F070:
	adds r0, r4, #0
	cmp r4, #0
	bge _0800F078
	adds r0, r4, #7
_0800F078:
	asrs r0, r0, #3
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r6, #7
	adds r0, r4, #0
	ands r0, r6
	lsls r0, r0, #2
	adds r1, r1, r0
	mov r0, ip
	ldr r5, [r0]
	adds r3, r5, r1
	adds r0, r2, #0
	cmp r2, #0
	bge _0800F09C
	adds r0, r2, #7
_0800F09C:
	asrs r0, r0, #3
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	subs r1, r1, r0
	lsls r1, r1, #5
	adds r0, r2, #0
	ands r0, r6
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r5, r1
	subs r5, r2, #1
	subs r4, #1
	movs r2, #0x16
_0800F0B8:
	ldr r0, [r1]
	str r0, [r3]
	adds r3, #0x20
	adds r1, #0x20
	subs r2, #1
	cmp r2, #0
	bge _0800F0B8
	adds r2, r5, #0
	cmp r2, #0
	bge _0800F070
_0800F0CC:
	cmp r4, #0
	blt _0800F106
	ldr r5, _0800F174 @ =gUnknown_2020060
_0800F0D2:
	adds r0, r4, #0
	cmp r4, #0
	bge _0800F0DA
	adds r0, r4, #7
_0800F0DA:
	asrs r0, r0, #3
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	subs r1, r1, r0
	lsls r1, r1, #5
	movs r0, #7
	ands r0, r4
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r5]
	adds r3, r0, r1
	subs r4, #1
	movs r0, #0
	movs r2, #0x16
_0800F0F8:
	str r0, [r3]
	adds r3, #0x20
	subs r2, #1
	cmp r2, #0
	bge _0800F0F8
	cmp r4, #0
	bge _0800F0D2
_0800F106:
	mov r1, sl
	cmp r1, #0
	beq _0800F128
	ldr r4, _0800F178 @ =gUnknown_20227F8
	ldr r0, [r4]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	movs r1, #0
	movs r2, #0xc
	bl _call_via_r3
	ldr r0, [r4]
	bl sub_080023D8
_0800F128:
	movs r4, #0
	cmp r4, r7
	bge _0800F14E
	ldr r6, [sp, #4]
	movs r5, #0x11
_0800F132:
	ldm r6!, {r0}
	mov r2, sb
	adds r1, r2, r4
	ldrb r1, [r1]
	str r1, [sp]
	movs r1, #1
	adds r2, r5, #0
	movs r3, #1
	bl sub_0800EE1C
	add r5, r8
	adds r4, #1
	cmp r4, r7
	blt _0800F132
_0800F14E:
	movs r2, #0x8a
	lsls r2, r2, #1
	ldr r0, _0800F174 @ =gUnknown_2020060
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0x90
	bl sub_080045CC
	movs r0, #1
	bl sub_080053D8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F174: .4byte gUnknown_2020060
_0800F178: .4byte gUnknown_20227F8
	thumb_func_end sub_0800F040

	thumb_func_start sub_0800F17C
sub_0800F17C: @ 0x0800F17C
	push {r4, r5, lr}
	sub sp, #0x20
	mov r4, sp
	adds r4, #2
	adds r0, r4, #0
	movs r1, #6
	movs r2, #1
	movs r3, #0x1e
	bl sub_080008E4
	ldr r0, _0800F1B8 @ =gUnknown_2022800
	ldr r0, [r0]
	adds r5, r4, #0
	cmp r0, #0
	bne _0800F1C0
	mov r0, sp
	ldrh r3, [r0, #0x1e]
	movs r2, #0xf
	ldr r4, _0800F1BC @ =gUnknown_2022804
	add r1, sp, #0x1c
_0800F1A4:
	ldrh r0, [r1]
	strh r0, [r1, #2]
	subs r1, #2
	subs r2, #1
	cmp r2, #1
	bgt _0800F1A4
	mov r0, sp
	strh r3, [r0, #2]
	b _0800F1DA
	.align 2, 0
_0800F1B8: .4byte gUnknown_2022800
_0800F1BC: .4byte gUnknown_2022804
_0800F1C0:
	mov r0, sp
	ldrh r3, [r0, #2]
	movs r2, #1
	ldr r4, _0800F208 @ =gUnknown_2022804
	adds r1, r5, #0
_0800F1CA:
	ldrh r0, [r1, #2]
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	cmp r2, #0xe
	ble _0800F1CA
	mov r0, sp
	strh r3, [r0, #0x1e]
_0800F1DA:
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	cmp r0, #0xe
	bne _0800F1F2
	ldr r2, _0800F20C @ =gUnknown_2022800
	ldr r0, [r2]
	movs r1, #1
	eors r0, r1
	str r0, [r2]
	movs r0, #0
	str r0, [r4]
_0800F1F2:
	adds r0, r5, #0
	movs r1, #6
	movs r2, #1
	movs r3, #0x1e
	bl sub_08000920
	add sp, #0x20
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F208: .4byte gUnknown_2022804
_0800F20C: .4byte gUnknown_2022800
	thumb_func_end sub_0800F17C

	thumb_func_start sub_0800F210
sub_0800F210: @ 0x0800F210
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0800F250 @ =gUnknown_86058DC
	movs r1, #6
	movs r2, #0
	movs r3, #0x20
	bl sub_08000920
	ldr r0, _0800F254 @ =gUnknown_202949C
	ldr r0, [r0]
	cmp r0, #0
	bne _0800F29A
	movs r0, #1
	bl sub_080053D8
	ldr r4, _0800F258 @ =gUnknown_2028398
	ldr r0, _0800F25C @ =0xFFFFFEFE
	adds r7, r4, r0
	ldr r0, _0800F260 @ =gUnknown_2020060
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0x8a
	lsls r2, r2, #6
	bl memset
	movs r6, #0x11
	movs r5, #0
	b _0800F26A
	.align 2, 0
_0800F250: .4byte gUnknown_86058DC
_0800F254: .4byte gUnknown_202949C
_0800F258: .4byte gUnknown_2028398
_0800F25C: .4byte 0xFFFFFEFE
_0800F260: .4byte gUnknown_2020060
_0800F264:
	adds r6, #0xc
	adds r4, #4
	adds r5, #1
_0800F26A:
	cmp r5, #5
	bgt _0800F284
	ldr r0, [r4]
	adds r1, r7, r5
	ldrb r1, [r1]
	str r1, [sp]
	movs r1, #1
	adds r2, r6, #0
	movs r3, #1
	bl sub_0800EE1C
	cmp r0, #0
	beq _0800F264
_0800F284:
	movs r2, #0x8a
	lsls r2, r2, #1
	ldr r0, _0800F2D8 @ =gUnknown_2020060
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0x90
	bl sub_080045CC
	ldr r1, _0800F2DC @ =gUnknown_20227F8
	movs r0, #0
	str r0, [r1]
_0800F29A:
	ldr r0, _0800F2E0 @ =gUnknown_202949C
	movs r1, #0
	str r1, [r0]
	movs r7, #0
	ldr r0, _0800F2E4 @ =gUnknown_2025254
	ldrh r0, [r0]
	mov r8, r0
	movs r6, #0
_0800F2AA:
	lsrs r1, r6, #0x18
	mov sb, r1
	movs r3, #0
	cmp r3, r8
	bge _0800F2CC
	ldr r0, _0800F2E4 @ =gUnknown_2025254
	ldrh r4, [r0]
	ldr r2, _0800F2E8 @ =gUnknown_2024FFC
_0800F2BA:
	adds r1, r2, #0
	movs r5, #6
	ldrsh r0, [r1, r5]
	cmp r0, sb
	beq _0800F2EC
	adds r2, #0xc
	adds r3, #1
	cmp r3, r4
	blt _0800F2BA
_0800F2CC:
	movs r0, #0
_0800F2CE:
	cmp r0, #0
	beq _0800F2F0
	adds r1, r0, #0
	b _0800F2FE
	.align 2, 0
_0800F2D8: .4byte gUnknown_2020060
_0800F2DC: .4byte gUnknown_20227F8
_0800F2E0: .4byte gUnknown_202949C
_0800F2E4: .4byte gUnknown_2025254
_0800F2E8: .4byte gUnknown_2024FFC
_0800F2EC:
	adds r0, r2, #0
	b _0800F2CE
_0800F2F0:
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r6, r6, r0
	adds r7, #1
	cmp r7, #5
	ble _0800F2AA
	movs r1, #0
_0800F2FE:
	ldr r2, _0800F3A0 @ =gUnknown_2022808
	str r1, [r2]
	cmp r1, #0
	beq _0800F366
	movs r3, #6
	ldrsh r2, [r1, r3]
	ldr r0, _0800F3A4 @ =gUnknown_202780C
	ldr r5, _0800F3A8 @ =0x00000A89
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r2, r0
	blt _0800F366
	adds r0, #6
	cmp r2, r0
	bge _0800F366
	ldrb r4, [r1, #9]
	ldr r5, _0800F3AC @ =gUnknown_20227F8
	ldr r0, [r5]
	cmp r0, #0
	beq _0800F330
	movs r1, #3
	bl sub_080018D8
	movs r0, #0
	str r0, [r5]
_0800F330:
	adds r0, r4, #0
	bl sub_0800ECA4
	ldr r6, _0800F3A0 @ =gUnknown_2022808
	ldr r0, [r6]
	ldrb r1, [r0, #8]
	adds r1, #0x19
	movs r7, #6
	ldrsh r0, [r0, r7]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r2, #0x39
	ldr r0, [r5]
	ldr r4, [r0, #0x30]
	movs r6, #8
	ldrsh r3, [r4, r6]
	adds r0, r0, r3
	ldr r3, [r4, #0xc]
	bl _call_via_r3
	ldr r0, [r5]
	bl sub_080023D8
	ldr r0, [r5]
	bl sub_08002428
_0800F366:
	movs r0, #0xc0
	bl sub_08005E38
	movs r0, #0xa
	movs r1, #4
	bl sub_08005EC0
	ldr r0, _0800F3B0 @ =gUnknown_2022800
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800F3B4 @ =gUnknown_2022804
	str r1, [r0]
	ldr r4, _0800F3B8 @ =gUnknown_2022370
	ldr r0, _0800F3BC @ =sub_0800F17C
	movs r1, #2
	bl sub_080059D0
	strh r0, [r4]
	ldr r0, _0800F3A4 @ =gUnknown_202780C
	ldr r7, _0800F3A8 @ =0x00000A89
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F3C4
	ldr r0, _0800F3C0 @ =gUnknown_20293BC
	ldr r0, [r0, #0x38]
	bl sub_080023D8
	b _0800F3CC
	.align 2, 0
_0800F3A0: .4byte gUnknown_2022808
_0800F3A4: .4byte gUnknown_202780C
_0800F3A8: .4byte 0x00000A89
_0800F3AC: .4byte gUnknown_20227F8
_0800F3B0: .4byte gUnknown_2022800
_0800F3B4: .4byte gUnknown_2022804
_0800F3B8: .4byte gUnknown_2022370
_0800F3BC: .4byte sub_0800F17C
_0800F3C0: .4byte gUnknown_20293BC
_0800F3C4:
	ldr r0, _0800F3EC @ =gUnknown_20293BC
	ldr r0, [r0, #0x38]
	bl sub_080023C4
_0800F3CC:
	ldr r0, _0800F3F0 @ =gUnknown_202780C
	ldr r2, _0800F3F4 @ =0x00000A89
	adds r1, r0, r2
	ldrb r1, [r1]
	adds r1, #6
	ldr r3, _0800F3F8 @ =0x00000A88
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r1, r0
	bge _0800F40C
	ldr r0, _0800F3EC @ =gUnknown_20293BC
	ldr r0, [r0, #0x3c]
	bl sub_080023D8
	b _0800F414
	.align 2, 0
_0800F3EC: .4byte gUnknown_20293BC
_0800F3F0: .4byte gUnknown_202780C
_0800F3F4: .4byte 0x00000A89
_0800F3F8: .4byte 0x00000A88
_0800F3FC:
	movs r0, #6
	bl sub_08017108
	ldr r0, _0800F408 @ =gUnknown_2026560
	str r4, [r0]
	b _0800FBAC
	.align 2, 0
_0800F408: .4byte gUnknown_2026560
_0800F40C:
	ldr r0, _0800F450 @ =gUnknown_20293BC
	ldr r0, [r0, #0x3c]
	bl sub_080023C4
_0800F414:
	ldr r5, _0800F454 @ =gUnknown_202780C
	mov sb, r5
	movs r6, #0
	mov sl, r6
_0800F41C:
	bl sub_08005DE0
	lsls r2, r0, #0x10
	lsrs r5, r2, #0x10
	movs r1, #0x30
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0800F460
	ldr r0, _0800F458 @ =gUnknown_202940C
	ldr r0, [r0]
	cmp r0, #3
	beq _0800F442
	cmp r0, #5
	bne _0800F460
	ldr r0, _0800F45C @ =gUnknown_2027800
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _0800F460
_0800F442:
	lsrs r0, r2, #0x15
	movs r1, #1
	ands r0, r1
	bl sub_08017108
	b _0800FBAC
	.align 2, 0
_0800F450: .4byte gUnknown_20293BC
_0800F454: .4byte gUnknown_202780C
_0800F458: .4byte gUnknown_202940C
_0800F45C: .4byte gUnknown_2027800
_0800F460:
	movs r4, #2
	adds r0, r5, #0
	ands r0, r4
	cmp r0, #0
	bne _0800F3FC
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0800F4CC
	ldr r0, _0800F498 @ =gUnknown_20227F8
	ldr r0, [r0]
	cmp r0, #0
	beq _0800F4CC
	movs r0, #5
	bl sub_08017108
	bl sub_0800FD84
	ldr r7, _0800F49C @ =gUnknown_2028295
	ldrb r0, [r7]
	cmp r0, #0
	beq _0800F4A4
	ldr r1, _0800F4A0 @ =gUnknown_20293BC
	ldr r0, [r1, #0x38]
	bl sub_080023D8
	b _0800F4AC
	.align 2, 0
_0800F498: .4byte gUnknown_20227F8
_0800F49C: .4byte gUnknown_2028295
_0800F4A0: .4byte gUnknown_20293BC
_0800F4A4:
	ldr r2, _0800F4C0 @ =gUnknown_20293BC
	ldr r0, [r2, #0x38]
	bl sub_080023C4
_0800F4AC:
	ldr r3, _0800F4C4 @ =gUnknown_2028295
	ldrb r0, [r3]
	adds r0, #6
	ldr r5, _0800F4C8 @ =gUnknown_2028294
	ldrb r5, [r5]
	cmp r0, r5
	bge _0800F4BC
	b _0800FB86
_0800F4BC:
	b _0800FB9C
	.align 2, 0
_0800F4C0: .4byte gUnknown_20293BC
_0800F4C4: .4byte gUnknown_2028295
_0800F4C8: .4byte gUnknown_2028294
_0800F4CC:
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	bne _0800F4D6
	b _0800F700
_0800F4D6:
	ldr r7, _0800F55C @ =0x00000A89
	add r7, sb
	ldrb r0, [r7]
	cmp r0, #0
	bne _0800F4E2
	b _0800FB3C
_0800F4E2:
	movs r0, #0xf
	bl sub_08017108
	ldr r0, _0800F560 @ =gUnknown_20293BC
	ldr r4, [r0, #0x38]
	ldr r6, _0800F564 @ =gUnknown_85EC21C
	ldrh r2, [r6, #2]
	lsls r1, r2, #5
	ldr r5, _0800F568 @ =gUnknown_860F73C
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_08002350
	adds r0, r4, #0
	bl sub_08002428
	movs r0, #2
	bl sub_080053D8
	ldrh r3, [r6, #4]
	lsls r1, r3, #5
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_08002350
	adds r0, r4, #0
	bl sub_08002428
	movs r0, #5
	bl sub_080053D8
	ldrh r6, [r6]
	lsls r1, r6, #5
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_08002350
	adds r0, r4, #0
	bl sub_08002428
	ldrb r0, [r7]
	subs r0, #1
	strb r0, [r7]
	movs r5, #0
	ldr r0, _0800F56C @ =gUnknown_20227F8
	ldr r0, [r0]
	cmp r0, #0
	beq _0800F57C
	ldr r0, _0800F570 @ =gUnknown_2022808
	ldr r0, [r0]
	movs r6, #6
	ldrsh r1, [r0, r6]
	ldrb r0, [r7]
	cmp r1, r0
	blt _0800F574
	adds r0, #6
	cmp r1, r0
	bge _0800F574
	movs r5, #1
	b _0800F57C
	.align 2, 0
_0800F55C: .4byte 0x00000A89
_0800F560: .4byte gUnknown_20293BC
_0800F564: .4byte gUnknown_85EC21C
_0800F568: .4byte gUnknown_860F73C
_0800F56C: .4byte gUnknown_20227F8
_0800F570: .4byte gUnknown_2022808
_0800F574:
	ldr r0, _0800F5F4 @ =gUnknown_20227F8
	ldr r0, [r0]
	bl sub_080023C4
_0800F57C:
	ldr r4, _0800F5F8 @ =0x00000A89
	add r4, sb
	ldrb r3, [r4]
	lsls r2, r3, #2
	ldr r0, _0800F5FC @ =0x00000B8C
	add r0, sb
	adds r2, r2, r0
	ldr r7, _0800F600 @ =gUnknown_2028296
	adds r3, r3, r7
	movs r0, #1
	adds r1, r5, #0
	bl sub_0800F040
	ldr r5, _0800F5F4 @ =gUnknown_20227F8
	ldr r0, [r5]
	cmp r0, #0
	beq _0800F650
	ldr r1, _0800F604 @ =gUnknown_2022808
	ldr r0, [r1]
	movs r2, #6
	ldrsh r3, [r0, r2]
	ldrb r2, [r4]
	cmp r3, r2
	blt _0800F5B4
	adds r0, r2, #6
	cmp r3, r0
	bge _0800F5B4
	b _0800FB3C
_0800F5B4:
	movs r6, #0
	mov r8, r5
	adds r0, r2, #5
	ldr r3, _0800F608 @ =gUnknown_2025254
	ldrh r3, [r3]
	mov ip, r3
	lsls r4, r0, #0x10
_0800F5C2:
	asrs r0, r4, #0x10
	mov r2, ip
	subs r2, #1
	cmp r2, #0
	blt _0800F5EA
	ldr r1, _0800F60C @ =gUnknown_2024FFC
	adds r5, r0, #0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r3, r0, r1
_0800F5D8:
	adds r1, r3, #0
	movs r7, #6
	ldrsh r0, [r1, r7]
	cmp r0, r5
	beq _0800F610
	subs r3, #0xc
	subs r2, #1
	cmp r2, #0
	bge _0800F5D8
_0800F5EA:
	movs r0, #0
_0800F5EC:
	cmp r0, #0
	beq _0800F614
	adds r1, r0, #0
	b _0800F620
	.align 2, 0
_0800F5F4: .4byte gUnknown_20227F8
_0800F5F8: .4byte 0x00000A89
_0800F5FC: .4byte 0x00000B8C
_0800F600: .4byte gUnknown_2028296
_0800F604: .4byte gUnknown_2022808
_0800F608: .4byte gUnknown_2025254
_0800F60C: .4byte gUnknown_2024FFC
_0800F610:
	adds r0, r3, #0
	b _0800F5EC
_0800F614:
	ldr r0, _0800F644 @ =0xFFFF0000
	adds r4, r4, r0
	adds r6, #1
	cmp r6, #5
	ble _0800F5C2
	movs r1, #0
_0800F620:
	ldr r2, _0800F648 @ =gUnknown_2022808
	str r1, [r2]
	cmp r1, #0
	bne _0800F62A
	b _0800F8D8
_0800F62A:
	movs r3, #6
	ldrsh r2, [r1, r3]
	ldr r5, _0800F64C @ =0x00000A89
	add r5, sb
	ldrb r0, [r5]
	cmp r2, r0
	bge _0800F63A
	b _0800F8D8
_0800F63A:
	adds r0, #6
	cmp r2, r0
	bge _0800F642
	b _0800F87A
_0800F642:
	b _0800F8D8
	.align 2, 0
_0800F644: .4byte 0xFFFF0000
_0800F648: .4byte gUnknown_2022808
_0800F64C: .4byte 0x00000A89
_0800F650:
	movs r6, #0
	ldrb r0, [r4]
	adds r0, #5
	ldr r2, _0800F690 @ =gUnknown_2025254
	ldrh r2, [r2]
	mov r8, r2
	lsls r4, r0, #0x10
_0800F65E:
	asrs r0, r4, #0x10
	mov r2, r8
	subs r2, #1
	cmp r2, #0
	blt _0800F686
	ldr r1, _0800F694 @ =gUnknown_2024FFC
	adds r5, r0, #0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r3, r0, r1
_0800F674:
	adds r1, r3, #0
	movs r7, #6
	ldrsh r0, [r1, r7]
	cmp r0, r5
	beq _0800F698
	subs r3, #0xc
	subs r2, #1
	cmp r2, #0
	bge _0800F674
_0800F686:
	movs r0, #0
_0800F688:
	cmp r0, #0
	beq _0800F69C
	adds r1, r0, #0
	b _0800F6A8
	.align 2, 0
_0800F690: .4byte gUnknown_2025254
_0800F694: .4byte gUnknown_2024FFC
_0800F698:
	adds r0, r3, #0
	b _0800F688
_0800F69C:
	ldr r0, _0800F6F0 @ =0xFFFF0000
	adds r4, r4, r0
	adds r6, #1
	cmp r6, #5
	ble _0800F65E
	movs r1, #0
_0800F6A8:
	ldr r2, _0800F6F4 @ =gUnknown_2022808
	str r1, [r2]
	cmp r1, #0
	bne _0800F6B2
	b _0800F998
_0800F6B2:
	movs r3, #6
	ldrsh r2, [r1, r3]
	ldr r6, _0800F6F8 @ =0x00000A89
	add r6, sb
	ldrb r0, [r6]
	cmp r2, r0
	bge _0800F6C2
	b _0800F998
_0800F6C2:
	adds r0, #6
	cmp r2, r0
	blt _0800F6CA
	b _0800F998
_0800F6CA:
	ldrb r4, [r1, #9]
	ldr r5, _0800F6FC @ =gUnknown_20227F8
	ldr r0, [r5]
	cmp r0, #0
	beq _0800F6DE
	movs r1, #3
	bl sub_080018D8
	mov r7, sl
	str r7, [r5]
_0800F6DE:
	adds r0, r4, #0
	bl sub_0800ECA4
	ldr r0, _0800F6F4 @ =gUnknown_2022808
	ldr r1, [r0]
	ldrh r2, [r1, #6]
	ldrb r6, [r6]
	subs r0, r2, r6
	b _0800FA42
	.align 2, 0
_0800F6F0: .4byte 0xFFFF0000
_0800F6F4: .4byte gUnknown_2022808
_0800F6F8: .4byte 0x00000A89
_0800F6FC: .4byte gUnknown_20227F8
_0800F700:
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	bne _0800F70A
	b _0800F9A8
_0800F70A:
	ldr r7, _0800F794 @ =0x00000A89
	add r7, sb
	ldrb r0, [r7]
	adds r0, #6
	ldr r1, _0800F798 @ =gUnknown_2028294
	ldrb r1, [r1]
	cmp r0, r1
	blt _0800F71C
	b _0800FB3C
_0800F71C:
	movs r0, #0x10
	bl sub_08017108
	ldr r2, _0800F79C @ =gUnknown_20293BC
	ldr r4, [r2, #0x3c]
	ldr r6, _0800F7A0 @ =gUnknown_85EC21C
	ldrh r3, [r6, #8]
	lsls r1, r3, #5
	ldr r5, _0800F7A4 @ =gUnknown_860F73C
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_08002350
	adds r0, r4, #0
	bl sub_08002428
	movs r0, #2
	bl sub_080053D8
	ldrh r0, [r6, #0xa]
	lsls r1, r0, #5
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_08002350
	adds r0, r4, #0
	bl sub_08002428
	movs r0, #5
	bl sub_080053D8
	ldrh r6, [r6, #6]
	lsls r1, r6, #5
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_08002350
	adds r0, r4, #0
	bl sub_08002428
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	movs r5, #0
	ldr r0, _0800F7A8 @ =gUnknown_20227F8
	ldr r0, [r0]
	cmp r0, #0
	beq _0800F7B8
	ldr r0, _0800F7AC @ =gUnknown_2022808
	ldr r0, [r0]
	movs r2, #6
	ldrsh r1, [r0, r2]
	ldrb r0, [r7]
	cmp r1, r0
	blt _0800F7B0
	adds r0, #6
	cmp r1, r0
	bge _0800F7B0
	movs r5, #1
	b _0800F7B8
	.align 2, 0
_0800F794: .4byte 0x00000A89
_0800F798: .4byte gUnknown_2028294
_0800F79C: .4byte gUnknown_20293BC
_0800F7A0: .4byte gUnknown_85EC21C
_0800F7A4: .4byte gUnknown_860F73C
_0800F7A8: .4byte gUnknown_20227F8
_0800F7AC: .4byte gUnknown_2022808
_0800F7B0:
	ldr r0, _0800F830 @ =gUnknown_20227F8
	ldr r0, [r0]
	bl sub_080023C4
_0800F7B8:
	ldr r4, _0800F834 @ =0x00000A89
	add r4, sb
	ldrb r3, [r4]
	adds r3, #5
	lsls r2, r3, #2
	ldr r0, _0800F838 @ =0x00000B8C
	add r0, sb
	adds r2, r2, r0
	ldr r6, _0800F83C @ =gUnknown_2028296
	adds r3, r3, r6
	movs r0, #1
	adds r1, r5, #0
	bl sub_0800EEF8
	ldr r5, _0800F830 @ =gUnknown_20227F8
	ldr r0, [r5]
	cmp r0, #0
	bne _0800F7DE
	b _0800F8F8
_0800F7DE:
	ldr r1, _0800F840 @ =gUnknown_2022808
	ldr r0, [r1]
	movs r7, #6
	ldrsh r3, [r0, r7]
	ldrb r2, [r4]
	cmp r3, r2
	blt _0800F7F4
	adds r0, r2, #6
	cmp r3, r0
	bge _0800F7F4
	b _0800FB3C
_0800F7F4:
	movs r7, #0
	mov r8, r5
	ldr r0, _0800F844 @ =gUnknown_2025254
	ldrh r0, [r0]
	mov ip, r0
	lsls r5, r2, #0x18
_0800F800:
	lsrs r1, r5, #0x18
	str r1, [sp, #4]
	movs r2, #0
	cmp r2, ip
	bge _0800F824
	ldr r3, _0800F844 @ =gUnknown_2025254
	ldrh r4, [r3]
	ldr r3, _0800F848 @ =gUnknown_2024FFC
_0800F810:
	adds r1, r3, #0
	movs r6, #6
	ldrsh r0, [r1, r6]
	ldr r6, [sp, #4]
	cmp r0, r6
	beq _0800F84C
	adds r3, #0xc
	adds r2, #1
	cmp r2, r4
	blt _0800F810
_0800F824:
	movs r0, #0
_0800F826:
	cmp r0, #0
	beq _0800F850
	adds r1, r0, #0
	b _0800F85E
	.align 2, 0
_0800F830: .4byte gUnknown_20227F8
_0800F834: .4byte 0x00000A89
_0800F838: .4byte 0x00000B8C
_0800F83C: .4byte gUnknown_2028296
_0800F840: .4byte gUnknown_2022808
_0800F844: .4byte gUnknown_2025254
_0800F848: .4byte gUnknown_2024FFC
_0800F84C:
	adds r0, r3, #0
	b _0800F826
_0800F850:
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r5, r5, r0
	adds r7, #1
	cmp r7, #5
	ble _0800F800
	movs r1, #0
_0800F85E:
	ldr r2, _0800F8D0 @ =gUnknown_2022808
	str r1, [r2]
	cmp r1, #0
	beq _0800F8D8
	movs r3, #6
	ldrsh r2, [r1, r3]
	ldr r5, _0800F8D4 @ =0x00000A89
	add r5, sb
	ldrb r0, [r5]
	cmp r2, r0
	blt _0800F8D8
	adds r0, #6
	cmp r2, r0
	bge _0800F8D8
_0800F87A:
	ldrb r4, [r1, #9]
	mov r6, r8
	ldr r0, [r6]
	cmp r0, #0
	beq _0800F88E
	movs r1, #3
	bl sub_080018D8
	mov r7, sl
	str r7, [r6]
_0800F88E:
	adds r0, r4, #0
	bl sub_0800ECA4
	ldr r0, _0800F8D0 @ =gUnknown_2022808
	ldr r1, [r0]
	ldrh r2, [r1, #6]
	ldrb r5, [r5]
	subs r0, r2, r5
	ldrb r1, [r1, #8]
	adds r1, #0x19
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r2, #0x39
	mov r3, r8
	ldr r0, [r3]
	ldr r4, [r0, #0x30]
	movs r5, #8
	ldrsh r3, [r4, r5]
	adds r0, r0, r3
	ldr r3, [r4, #0xc]
	bl _call_via_r3
	mov r6, r8
	ldr r0, [r6]
	bl sub_080023D8
	ldr r0, [r6]
	bl sub_08002428
	b _0800FB3C
	.align 2, 0
_0800F8D0: .4byte gUnknown_2022808
_0800F8D4: .4byte 0x00000A89
_0800F8D8:
	mov r7, r8
	ldr r0, [r7]
	cmp r0, #0
	beq _0800F8EA
	movs r1, #3
	bl sub_080018D8
	mov r0, sl
	str r0, [r7]
_0800F8EA:
	ldr r0, _0800F8F4 @ =gUnknown_2022808
	mov r1, sl
	str r1, [r0]
	b _0800FB3C
	.align 2, 0
_0800F8F4: .4byte gUnknown_2022808
_0800F8F8:
	movs r7, #0
	ldr r2, _0800F930 @ =gUnknown_2025254
	ldrh r2, [r2]
	mov ip, r2
	ldrb r4, [r4]
	lsls r5, r4, #0x18
_0800F904:
	lsrs r3, r5, #0x18
	mov r8, r3
	movs r2, #0
	cmp r2, ip
	bge _0800F926
	ldr r6, _0800F930 @ =gUnknown_2025254
	ldrh r4, [r6]
	ldr r3, _0800F934 @ =gUnknown_2024FFC
_0800F914:
	adds r1, r3, #0
	movs r6, #6
	ldrsh r0, [r1, r6]
	cmp r0, r8
	beq _0800F938
	adds r3, #0xc
	adds r2, #1
	cmp r2, r4
	blt _0800F914
_0800F926:
	movs r0, #0
_0800F928:
	cmp r0, #0
	beq _0800F93C
	adds r1, r0, #0
	b _0800F94A
	.align 2, 0
_0800F930: .4byte gUnknown_2025254
_0800F934: .4byte gUnknown_2024FFC
_0800F938:
	adds r0, r3, #0
	b _0800F928
_0800F93C:
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r5, r5, r0
	adds r7, #1
	cmp r7, #5
	ble _0800F904
	movs r1, #0
_0800F94A:
	ldr r2, _0800F98C @ =gUnknown_2022808
	str r1, [r2]
	cmp r1, #0
	beq _0800F998
	movs r3, #6
	ldrsh r2, [r1, r3]
	ldr r6, _0800F990 @ =0x00000A89
	add r6, sb
	ldrb r0, [r6]
	cmp r2, r0
	blt _0800F998
	adds r0, #6
	cmp r2, r0
	bge _0800F998
	ldrb r4, [r1, #9]
	ldr r5, _0800F994 @ =gUnknown_20227F8
	ldr r0, [r5]
	cmp r0, #0
	beq _0800F97A
	movs r1, #3
	bl sub_080018D8
	mov r7, sl
	str r7, [r5]
_0800F97A:
	adds r0, r4, #0
	bl sub_0800ECA4
	ldr r0, _0800F98C @ =gUnknown_2022808
	ldr r1, [r0]
	ldrh r2, [r1, #6]
	ldrb r6, [r6]
	subs r0, r2, r6
	b _0800FA42
	.align 2, 0
_0800F98C: .4byte gUnknown_2022808
_0800F990: .4byte 0x00000A89
_0800F994: .4byte gUnknown_20227F8
_0800F998:
	mov r7, sl
	ldr r0, _0800F9A0 @ =gUnknown_2022808
	str r7, [r0]
	b _0800FB3C
	.align 2, 0
_0800F9A0: .4byte gUnknown_2022808
_0800F9A4:
	adds r4, r1, #0
	b _0800F9F8
_0800F9A8:
	ldr r0, _0800FA70 @ =gUnknown_20227F8
	ldr r0, [r0]
	cmp r0, #0
	bne _0800F9B2
	b _0800FB3C
_0800F9B2:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0800FA88
	ldr r0, _0800FA74 @ =gUnknown_2022808
	ldr r1, [r0]
	movs r3, #4
	ldrsh r0, [r1, r3]
	adds r0, #1
	ldr r5, _0800FA78 @ =gUnknown_2025254
	ldrh r2, [r5]
	cmp r0, r2
	blt _0800F9D4
	b _0800FB3C
_0800F9D4:
	ldrh r0, [r1, #4]
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0
	cmp r3, r2
	bge _0800F9F6
	adds r4, r0, #0
	ldr r1, _0800FA7C @ =gUnknown_2024FFC
_0800F9E6:
	movs r6, #4
	ldrsh r0, [r1, r6]
	cmp r0, r4
	beq _0800F9A4
	adds r1, #0xc
	adds r3, #1
	cmp r3, r2
	blt _0800F9E6
_0800F9F6:
	movs r4, #0
_0800F9F8:
	cmp r4, #0
	bne _0800F9FE
	b _0800FB3C
_0800F9FE:
	movs r7, #6
	ldrsh r1, [r4, r7]
	ldr r7, _0800FA80 @ =0x00000A89
	add r7, sb
	ldrb r0, [r7]
	cmp r1, r0
	bge _0800FA0E
	b _0800FB3C
_0800FA0E:
	adds r0, #6
	cmp r1, r0
	blt _0800FA16
	b _0800FB3C
_0800FA16:
	movs r0, #0xe
	bl sub_08017108
	ldr r6, _0800FA74 @ =gUnknown_2022808
	str r4, [r6]
	ldrb r4, [r4, #9]
	ldr r5, _0800FA70 @ =gUnknown_20227F8
	ldr r0, [r5]
	cmp r0, #0
	beq _0800FA34
	movs r1, #3
	bl sub_080018D8
	mov r0, sl
	str r0, [r5]
_0800FA34:
	adds r0, r4, #0
	bl sub_0800ECA4
	ldr r1, [r6]
	ldrh r2, [r1, #6]
	ldrb r7, [r7]
	subs r0, r2, r7
_0800FA42:
	ldrb r1, [r1, #8]
	adds r1, #0x19
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r2, #0x39
	ldr r0, [r5]
	ldr r4, [r0, #0x30]
	movs r6, #8
	ldrsh r3, [r4, r6]
	adds r0, r0, r3
	ldr r3, [r4, #0xc]
	bl _call_via_r3
	ldr r0, [r5]
	bl sub_080023D8
	ldr r0, [r5]
	bl sub_08002428
	b _0800FB3C
	.align 2, 0
_0800FA70: .4byte gUnknown_20227F8
_0800FA74: .4byte gUnknown_2022808
_0800FA78: .4byte gUnknown_2025254
_0800FA7C: .4byte gUnknown_2024FFC
_0800FA80: .4byte 0x00000A89
_0800FA84:
	adds r4, r1, #0
	b _0800FACC
_0800FA88:
	movs r7, #0x80
	lsls r7, r7, #2
	adds r1, r7, #0
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0800FB3C
	ldr r0, _0800FB54 @ =gUnknown_2022808
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _0800FB3C
	subs r0, r1, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldr r3, _0800FB58 @ =gUnknown_2025254
	ldrh r1, [r3]
	cmp r2, r1
	bge _0800FACA
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r1, _0800FB5C @ =gUnknown_2024FFC
_0800FABA:
	movs r5, #4
	ldrsh r0, [r1, r5]
	cmp r0, r4
	beq _0800FA84
	adds r1, #0xc
	adds r2, #1
	cmp r2, r3
	blt _0800FABA
_0800FACA:
	movs r4, #0
_0800FACC:
	cmp r4, #0
	beq _0800FB3C
	movs r6, #6
	ldrsh r1, [r4, r6]
	ldr r7, _0800FB60 @ =0x00000A89
	add r7, sb
	ldrb r0, [r7]
	cmp r1, r0
	blt _0800FB3C
	adds r0, #6
	cmp r1, r0
	bge _0800FB3C
	movs r0, #0xe
	bl sub_08017108
	ldr r6, _0800FB54 @ =gUnknown_2022808
	str r4, [r6]
	ldrb r4, [r4, #9]
	ldr r5, _0800FB64 @ =gUnknown_20227F8
	ldr r0, [r5]
	cmp r0, #0
	beq _0800FB02
	movs r1, #3
	bl sub_080018D8
	mov r0, sl
	str r0, [r5]
_0800FB02:
	adds r0, r4, #0
	bl sub_0800ECA4
	ldr r1, [r6]
	ldrh r2, [r1, #6]
	ldrb r7, [r7]
	subs r0, r2, r7
	ldrb r1, [r1, #8]
	adds r1, #0x19
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r2, #0x39
	ldr r0, [r5]
	ldr r4, [r0, #0x30]
	movs r6, #8
	ldrsh r3, [r4, r6]
	adds r0, r0, r3
	ldr r3, [r4, #0xc]
	bl _call_via_r3
	ldr r0, [r5]
	bl sub_080023D8
	ldr r0, [r5]
	bl sub_08002428
_0800FB3C:
	movs r0, #1
	bl sub_080053D8
	ldr r7, _0800FB68 @ =gUnknown_2028295
	ldrb r0, [r7]
	cmp r0, #0
	beq _0800FB70
	ldr r1, _0800FB6C @ =gUnknown_20293BC
	ldr r0, [r1, #0x38]
	bl sub_080023D8
	b _0800FB78
	.align 2, 0
_0800FB54: .4byte gUnknown_2022808
_0800FB58: .4byte gUnknown_2025254
_0800FB5C: .4byte gUnknown_2024FFC
_0800FB60: .4byte 0x00000A89
_0800FB64: .4byte gUnknown_20227F8
_0800FB68: .4byte gUnknown_2028295
_0800FB6C: .4byte gUnknown_20293BC
_0800FB70:
	ldr r2, _0800FB90 @ =gUnknown_20293BC
	ldr r0, [r2, #0x38]
	bl sub_080023C4
_0800FB78:
	ldr r3, _0800FB94 @ =gUnknown_2028295
	ldrb r0, [r3]
	adds r0, #6
	ldr r5, _0800FB98 @ =gUnknown_2028294
	ldrb r5, [r5]
	cmp r0, r5
	bge _0800FB9C
_0800FB86:
	ldr r6, _0800FB90 @ =gUnknown_20293BC
	ldr r0, [r6, #0x3c]
	bl sub_080023D8
	b _0800F41C
	.align 2, 0
_0800FB90: .4byte gUnknown_20293BC
_0800FB94: .4byte gUnknown_2028295
_0800FB98: .4byte gUnknown_2028294
_0800FB9C:
	ldr r7, _0800FBA8 @ =gUnknown_20293BC
	ldr r0, [r7, #0x3c]
	bl sub_080023C4
	b _0800F41C
	.align 2, 0
_0800FBA8: .4byte gUnknown_20293BC
_0800FBAC:
	movs r0, #0xc0
	bl sub_08005E14
	ldr r4, _0800FBEC @ =gUnknown_20227F8
	ldr r0, [r4]
	cmp r0, #0
	beq _0800FBC4
	movs r1, #3
	bl sub_080018D8
	movs r0, #0
	str r0, [r4]
_0800FBC4:
	ldr r0, _0800FBF0 @ =gUnknown_2022370
	ldrh r0, [r0]
	bl sub_08005980
	ldr r4, _0800FBF4 @ =gUnknown_20293BC
	ldr r0, [r4, #0x38]
	bl sub_080023C4
	ldr r0, [r4, #0x3c]
	bl sub_080023C4
	adds r0, r5, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800FBEC: .4byte gUnknown_20227F8
_0800FBF0: .4byte gUnknown_2022370
_0800FBF4: .4byte gUnknown_20293BC
	thumb_func_end sub_0800F210

	thumb_func_start sub_0800FBF8
sub_0800FBF8: @ 0x0800FBF8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r2, r0, #0
	ldr r1, _0800FC50 @ =gUnknown_2025258
	ldr r3, _0800FC54 @ =0x00000504
	adds r0, r1, r3
	str r2, [r0]
	movs r0, #0
	strb r0, [r1, #4]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r7, r1, r0
	adds r0, r7, #0
	str r2, [r0]
	movs r6, #0
	movs r5, #0
	ldrb r0, [r2]
	adds r4, r1, #0
	cmp r0, #0
	beq _0800FC9E
	adds r3, r4, #0
	adds r1, r4, #6
	mov r8, r1
	movs r1, #0xff
	mov ip, r1
	ldr r1, _0800FC58 @ =gUnknown_85F2254
	mov sb, r1
_0800FC32:
	cmp r0, #0xa
	bne _0800FC5C
	ldrb r0, [r3, #4]
	add r0, r8
	strb r6, [r0]
	ldrb r0, [r3, #4]
	adds r0, #1
	strb r0, [r3, #4]
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	adds r2, #1
	b _0800FC84
	.align 2, 0
_0800FC50: .4byte gUnknown_2025258
_0800FC54: .4byte 0x00000504
_0800FC58: .4byte gUnknown_85F2254
_0800FC5C:
	ldrb r0, [r2]
	subs r0, #0x20
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r0]
	movs r0, #8
	subs r0, r0, r1
	adds r1, r5, r0
	cmp r1, #0xb8
	ble _0800FC8C
	ldrb r0, [r3, #4]
	add r0, r8
	strb r6, [r0]
	ldrb r0, [r3, #4]
	adds r0, #1
	strb r0, [r3, #4]
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
_0800FC84:
	str r2, [r0]
	movs r6, #0
	movs r5, #0
	b _0800FC98
_0800FC8C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r2, #1
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
_0800FC98:
	ldrb r0, [r2]
	cmp r0, #0
	bne _0800FC32
_0800FC9E:
	adds r0, r4, #6
	ldrb r3, [r4, #4]
	adds r0, r3, r0
	movs r2, #0
	strb r6, [r0]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	movs r3, #0x84
	lsls r3, r3, #1
	adds r1, r4, r3
	adds r0, r0, r1
	str r2, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800FBF8

	thumb_func_start sub_0800FCC8
sub_0800FCC8: @ 0x0800FCC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0800FD30 @ =gUnknown_2022808
	ldr r0, [r0]
	ldr r4, [r0]
	ldr r0, _0800FD34 @ =gUnknown_2020074
	ldr r0, [r0]
	movs r2, #0xa0
	lsls r2, r2, #3
	movs r1, #0
	bl memset
	movs r0, #0
	mov r8, r0
	movs r6, #0
	ldrb r0, [r4]
	cmp r0, #2
	beq _0800FD6C
	lsls r0, r5, #0x10
	asrs r7, r0, #0x10
	lsls r0, r7, #5
	mov sb, r0
	ldr r0, _0800FD38 @ =gUnknown_861C5A2
	mov sl, r0
_0800FD04:
	ldrb r2, [r4]
	subs r2, #0x20
	ldr r1, _0800FD3C @ =gUnknown_85F2254
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #8
	subs r5, r0, r1
	subs r0, #9
	cmp r7, r0
	beq _0800FD40
	ldr r0, _0800FD34 @ =gUnknown_2020074
	ldr r0, [r0]
	str r0, [sp]
	mov r0, sb
	add r0, sl
	adds r1, r6, #0
	mov r2, r8
	movs r3, #0x14
	bl sub_0800E408
	b _0800FD62
	.align 2, 0
_0800FD30: .4byte gUnknown_2022808
_0800FD34: .4byte gUnknown_2020074
_0800FD38: .4byte gUnknown_861C5A2
_0800FD3C: .4byte gUnknown_85F2254
_0800FD40:
	lsls r1, r2, #3
	ldr r0, _0800FD7C @ =gUnknown_861BEA2
	adds r1, r1, r0
	add r0, sp, #4
	movs r2, #0xf
	movs r3, #0
	bl sub_0800C77C
	ldr r0, _0800FD80 @ =gUnknown_2020074
	ldr r0, [r0]
	str r0, [sp]
	add r0, sp, #4
	adds r1, r6, #0
	mov r2, r8
	movs r3, #0x14
	bl sub_0800E408
_0800FD62:
	adds r4, #1
	adds r6, r6, r5
	ldrb r0, [r4]
	cmp r0, #2
	bne _0800FD04
_0800FD6C:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800FD7C: .4byte gUnknown_861BEA2
_0800FD80: .4byte gUnknown_2020074
	thumb_func_end sub_0800FCC8

	thumb_func_start sub_0800FD84
sub_0800FD84: @ 0x0800FD84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb0
	add r7, sp, #8
	bl sub_0804441C
	movs r1, #0x88
	adds r1, r1, r7
	str r0, [r1]
	ldr r1, _0800FEBC @ =gUnknown_2025258
	movs r0, #0
	strb r0, [r1, #5]
	ldr r2, _0800FEC0 @ =gUnknown_20227F8
	ldr r0, [r2]
	adds r1, r7, #0
	adds r1, #0x60
	adds r2, r7, #0
	adds r2, #0x64
	bl sub_080023E4
	ldr r3, _0800FEC0 @ =gUnknown_20227F8
	ldr r0, [r3]
	bl sub_080023C4
	ldr r0, _0800FEC4 @ =gUnknown_2022808
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r7, #0x70]
	adds r1, r7, #0
	adds r1, #0x68
	adds r2, r7, #0
	adds r2, #0x6c
	adds r4, r7, #0
	adds r4, #8
	movs r0, #0x98
	adds r0, r0, r7
	str r4, [r0]
	adds r3, r7, #0
	adds r3, #0x20
	movs r4, #0xa0
	adds r4, r4, r7
	str r3, [r4]
	adds r0, r7, #0
	adds r0, #0x18
	movs r3, #0x9c
	adds r3, r3, r7
	str r0, [r3]
	ldr r4, [r7, #0x70]
	ldrb r4, [r4]
	cmp r4, #2
	beq _0800FDFC
_0800FDF0:
	ldr r0, [r7, #0x70]
	adds r0, #2
	str r0, [r7, #0x70]
	ldrb r3, [r0]
	cmp r3, #2
	bne _0800FDF0
_0800FDFC:
	ldr r4, [r7, #0x60]
	str r4, [r7, #0x74]
	ldr r0, [r7, #0x64]
	str r0, [r7, #0x78]
	ldr r0, _0800FEC8 @ =gUnknown_20293BC
	ldr r0, [r0, #0x34]
	bl sub_080023E4
	ldr r0, [r7, #0x6c]
	adds r0, #2
	str r0, [r7, #0x6c]
	ldr r0, [r7, #0x68]
	adds r0, #2
	str r0, [r7, #0x68]
	ldr r1, _0800FECC @ =gUnknown_2022318
	str r1, [r7, #0x7c]
	movs r2, #0
	movs r3, #0x80
	adds r3, r3, r7
	str r2, [r3]
	movs r0, #0x88
	adds r0, r0, r7
	ldr r4, [r0]
	adds r4, #4
	movs r0, #0xa4
	adds r0, r0, r7
	str r4, [r0]
_0800FE32:
	ldr r0, [r7, #0x68]
	ldr r1, [r7, #0x74]
	subs r0, r1, r0
	movs r2, #0x80
	adds r2, r2, r7
	ldr r2, [r2]
	muls r0, r2, r0
	movs r1, #0xa
	bl __divsi3
	ldr r3, [r7, #0x74]
	subs r0, r3, r0
	ldr r4, [r7, #0x7c]
	str r0, [r4]
	ldr r0, [r7, #0x6c]
	ldr r1, [r7, #0x78]
	subs r0, r1, r0
	movs r2, #0x80
	adds r2, r2, r7
	ldr r2, [r2]
	muls r0, r2, r0
	movs r1, #0xa
	bl __divsi3
	ldr r3, [r7, #0x78]
	subs r0, r3, r0
	str r0, [r4, #4]
	movs r0, #0x80
	adds r0, r0, r7
	ldr r4, [r0]
	adds r4, #1
	str r4, [r0]
	ldr r1, [r7, #0x7c]
	adds r1, #8
	str r1, [r7, #0x7c]
	cmp r4, #0xa
	ble _0800FE32
	ldr r1, _0800FECC @ =gUnknown_2022318
	ldr r0, [r7, #0x68]
	str r0, [r1, #0x50]
	ldr r0, [r7, #0x6c]
	str r0, [r1, #0x54]
	movs r0, #1
	negs r0, r0
	bl sub_0800FCC8
	movs r0, #0x38
	bl sub_080046D4
	movs r2, #0x84
	adds r2, r2, r7
	str r0, [r2]
	movs r3, #0x88
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _0800FED0 @ =sub_0800FED4
	movs r4, #0x98
	adds r4, r4, r7
	ldr r4, [r4]
	str r0, [r4, #4]
	mov r0, sp
	str r0, [r4, #8]
	b _0800FED6
	.align 2, 0
_0800FEBC: .4byte gUnknown_2025258
_0800FEC0: .4byte gUnknown_20227F8
_0800FEC4: .4byte gUnknown_2022808
_0800FEC8: .4byte gUnknown_20293BC
_0800FECC: .4byte gUnknown_2022318
_0800FED0: .4byte _0800FED4
_0800FED4: @ 0x0800FED4
	b _08010298
_0800FED6:
	movs r2, #0xa4
	adds r2, r2, r7
	ldr r2, [r2]
	str r7, [r2]
	ldr r0, _0800FFC4 @ =gUnknown_2020074
	ldr r2, [r0]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #7
	str r0, [sp, #4]
	movs r3, #0x84
	adds r3, r3, r7
	ldr r0, [r3]
	movs r1, #1
	movs r3, #0xa0
	bl sub_08002504
	ldr r4, _0800FFC8 @ =gUnknown_2022310
	str r0, [r4]
	movs r1, #0x88
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	adds r3, r4, #0
	ldr r0, [r3]
	ldr r3, [r0, #0x30]
	movs r4, #8
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	ldr r1, [r7, #0x60]
	ldr r2, [r7, #0x64]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	ldr r1, _0800FFC8 @ =gUnknown_2022310
	ldr r0, [r1]
	bl sub_08002428
	ldr r2, _0800FFC8 @ =gUnknown_2022310
	ldr r0, [r2]
	bl sub_080023D8
	ldr r0, _0800FFCC @ =gUnknown_2022808
	ldr r1, [r0]
	ldrb r3, [r1, #0xa]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #1
	ldr r4, _0800FFD0 @ =gUnknown_85DCE78
	adds r0, r0, r4
	str r0, [r7, #0x70]
	ldrb r1, [r0, #1]
	lsls r0, r1, #8
	ldr r2, [r7, #0x70]
	ldrb r2, [r2]
	orrs r0, r2
	ldr r3, [r7, #0x70]
	ldrb r3, [r3, #2]
	lsls r1, r3, #0x10
	orrs r0, r1
	ldr r4, [r7, #0x70]
	ldrb r4, [r4, #3]
	lsls r1, r4, #0x18
	orrs r0, r1
	ldr r1, _0800FFD0 @ =gUnknown_85DCE78
	adds r0, r0, r1
	bl sub_0800FBF8
	ldr r2, [r7, #0x70]
	adds r2, #4
	str r2, [r7, #0x70]
	ldrb r3, [r2, #1]
	lsls r0, r3, #8
	ldrb r4, [r2]
	orrs r0, r4
	ldrb r2, [r2, #2]
	lsls r1, r2, #0x10
	orrs r0, r1
	ldr r3, [r7, #0x70]
	ldrb r3, [r3, #3]
	lsls r1, r3, #0x18
	orrs r0, r1
	ldr r1, _0800FFD4 @ =gUnknown_2025F64
	ldr r4, _0800FFD0 @ =gUnknown_85DCE78
	adds r0, r0, r4
	str r0, [r1]
	ldr r1, _0800FFD8 @ =gUnknown_2025F60
	ldr r2, [r7, #0x70]
	ldrb r2, [r2, #5]
	lsls r0, r2, #8
	ldr r3, [r7, #0x70]
	ldrb r3, [r3, #4]
	orrs r0, r3
	str r0, [r1]
	movs r0, #0x38
	bl sub_080046D4
	movs r4, #0x8c
	adds r4, r4, r7
	str r0, [r4]
	movs r1, #0x88
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r2, #0
	str r2, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _0800FFDC @ =sub_0800FFE0
	movs r3, #0xa0
	adds r3, r3, r7
	ldr r3, [r3]
	str r0, [r3, #4]
	mov r4, sp
	str r4, [r3, #8]
	b _0800FFE2
	.align 2, 0
_0800FFC4: .4byte gUnknown_2020074
_0800FFC8: .4byte gUnknown_2022310
_0800FFCC: .4byte gUnknown_2022808
_0800FFD0: .4byte gUnknown_85DCE78
_0800FFD4: .4byte gUnknown_2025F64
_0800FFD8: .4byte gUnknown_2025F60
_0800FFDC: .4byte _0800FFE0
_0800FFE0: @ 0x0800FFE0
	b _080102E8
_0800FFE2:
	movs r1, #0x9c
	adds r1, r1, r7
	ldr r1, [r1]
	movs r2, #0xa4
	adds r2, r2, r7
	ldr r2, [r2]
	str r1, [r2]
	ldr r0, _08010050 @ =gUnknown_2025F64
	ldr r2, [r0]
	ldr r0, _08010054 @ =gUnknown_2025F60
	ldr r3, [r0]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r4, #0x8c
	adds r4, r4, r7
	ldr r0, [r4]
	movs r1, #1
	bl sub_08002504
	ldr r1, _08010058 @ =gUnknown_2022314
	str r0, [r1]
	movs r2, #0x88
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r4, r1, #0
	ldr r0, [r4]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0x1c
	movs r2, #0x17
	bl _call_via_r3
	ldr r0, [r4]
	bl sub_08002428
	bl sub_08013FB4
	ldr r0, _0801005C @ =gUnknown_2025258
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _08010064
	ldr r0, _08010060 @ =gUnknown_20293BC
	ldr r0, [r0, #0x38]
	bl sub_080023D8
	b _0801006C
	.align 2, 0
_08010050: .4byte gUnknown_2025F64
_08010054: .4byte gUnknown_2025F60
_08010058: .4byte gUnknown_2022314
_0801005C: .4byte gUnknown_2025258
_08010060: .4byte gUnknown_20293BC
_08010064:
	ldr r0, _08010084 @ =gUnknown_20293BC
	ldr r0, [r0, #0x38]
	bl sub_080023C4
_0801006C:
	ldr r1, _08010088 @ =gUnknown_2025258
	ldrb r0, [r1, #5]
	adds r0, #6
	ldrb r1, [r1, #4]
	cmp r0, r1
	bge _0801008C
	ldr r0, _08010084 @ =gUnknown_20293BC
	ldr r0, [r0, #0x3c]
	bl sub_080023D8
	b _08010244
	.align 2, 0
_08010084: .4byte gUnknown_20293BC
_08010088: .4byte gUnknown_2025258
_0801008C:
	ldr r0, _08010094 @ =gUnknown_20293BC
	ldr r0, [r0, #0x3c]
	b _08010240
	.align 2, 0
_08010094: .4byte gUnknown_20293BC
_08010098:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08010148
	ldr r4, _08010138 @ =gUnknown_2025258
	ldrb r0, [r4, #5]
	cmp r0, #0
	bne _080100AA
	b _080101EC
_080100AA:
	movs r0, #0xf
	bl sub_08017108
	ldr r0, _0801013C @ =gUnknown_20293BC
	ldr r0, [r0, #0x38]
	movs r1, #0x90
	adds r1, r1, r7
	str r0, [r1]
	ldr r2, _08010140 @ =gUnknown_85EC21C
	ldrh r2, [r2, #2]
	lsls r1, r2, #5
	ldr r3, _08010144 @ =gUnknown_860F73C
	adds r1, r1, r3
	movs r4, #0x90
	adds r4, r4, r7
	ldr r0, [r4]
	bl sub_08002350
	ldr r0, [r4]
	bl sub_08002428
	movs r0, #2
	bl sub_080053D8
	ldr r0, _08010140 @ =gUnknown_85EC21C
	ldrh r0, [r0, #4]
	lsls r1, r0, #5
	ldr r2, _08010144 @ =gUnknown_860F73C
	adds r1, r1, r2
	ldr r0, [r4]
	bl sub_08002350
	ldr r0, [r4]
	bl sub_08002428
	movs r0, #5
	bl sub_080053D8
	ldr r3, _08010140 @ =gUnknown_85EC21C
	ldrh r3, [r3]
	lsls r1, r3, #5
	ldr r4, _08010144 @ =gUnknown_860F73C
	adds r1, r1, r4
	movs r2, #0x90
	adds r2, r2, r7
	ldr r0, [r2]
	bl sub_08002350
	movs r3, #0x90
	adds r3, r3, r7
	ldr r0, [r3]
	bl sub_08002428
	ldr r4, _08010138 @ =gUnknown_2025258
	ldrb r0, [r4, #5]
	subs r0, #1
	strb r0, [r4, #5]
	ldrb r3, [r4, #5]
	lsls r2, r3, #2
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r4, r1
	adds r2, r2, r0
	adds r0, r4, #0
	adds r0, #6
	adds r3, r3, r0
	movs r0, #1
	movs r1, #0
	bl sub_0800F040
	b _080101EC
	.align 2, 0
_08010138: .4byte gUnknown_2025258
_0801013C: .4byte gUnknown_20293BC
_08010140: .4byte gUnknown_85EC21C
_08010144: .4byte gUnknown_860F73C
_08010148:
	movs r0, #0x80
	ands r1, r0
	cmp r1, #0
	beq _080101EC
	ldr r2, _08010204 @ =gUnknown_2025258
	ldrb r0, [r2, #5]
	adds r0, #6
	ldrb r3, [r2, #4]
	cmp r0, r3
	bge _080101EC
	movs r0, #0x10
	bl sub_08017108
	ldr r4, _08010208 @ =gUnknown_20293BC
	ldr r4, [r4, #0x3c]
	movs r0, #0x94
	adds r0, r0, r7
	str r4, [r0]
	ldr r0, _0801020C @ =gUnknown_85EC21C
	ldrh r0, [r0, #8]
	lsls r1, r0, #5
	ldr r2, _08010210 @ =gUnknown_860F73C
	adds r1, r1, r2
	movs r3, #0x94
	adds r3, r3, r7
	ldr r0, [r3]
	bl sub_08002350
	movs r4, #0x94
	adds r4, r4, r7
	ldr r0, [r4]
	bl sub_08002428
	movs r0, #2
	bl sub_080053D8
	ldr r0, _0801020C @ =gUnknown_85EC21C
	ldrh r0, [r0, #0xa]
	lsls r1, r0, #5
	ldr r2, _08010210 @ =gUnknown_860F73C
	adds r1, r1, r2
	ldr r0, [r4]
	bl sub_08002350
	ldr r0, [r4]
	bl sub_08002428
	movs r0, #5
	bl sub_080053D8
	ldr r3, _0801020C @ =gUnknown_85EC21C
	ldrh r3, [r3, #6]
	lsls r1, r3, #5
	ldr r4, _08010210 @ =gUnknown_860F73C
	adds r1, r1, r4
	movs r2, #0x94
	adds r2, r2, r7
	ldr r0, [r2]
	bl sub_08002350
	movs r3, #0x94
	adds r3, r3, r7
	ldr r0, [r3]
	bl sub_08002428
	ldr r4, _08010204 @ =gUnknown_2025258
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	ldrb r3, [r4, #5]
	lsls r2, r3, #2
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r4, r1
	adds r2, r2, r0
	adds r0, r4, #0
	adds r0, #0xb
	adds r3, r3, r0
	movs r0, #1
	movs r1, #0
	bl sub_0800EEF8
_080101EC:
	movs r0, #1
	bl sub_080053D8
	ldr r0, _08010204 @ =gUnknown_2025258
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _08010214
	ldr r2, _08010208 @ =gUnknown_20293BC
	ldr r0, [r2, #0x38]
	bl sub_080023D8
	b _0801021C
	.align 2, 0
_08010204: .4byte gUnknown_2025258
_08010208: .4byte gUnknown_20293BC
_0801020C: .4byte gUnknown_85EC21C
_08010210: .4byte gUnknown_860F73C
_08010214:
	ldr r3, _08010234 @ =gUnknown_20293BC
	ldr r0, [r3, #0x38]
	bl sub_080023C4
_0801021C:
	ldr r1, _08010238 @ =gUnknown_2025258
	ldrb r0, [r1, #5]
	adds r0, #6
	ldrb r1, [r1, #4]
	cmp r0, r1
	bge _0801023C
	ldr r4, _08010234 @ =gUnknown_20293BC
	ldr r0, [r4, #0x3c]
	bl sub_080023D8
	b _08010244
	.align 2, 0
_08010234: .4byte gUnknown_20293BC
_08010238: .4byte gUnknown_2025258
_0801023C:
	ldr r1, _08010288 @ =gUnknown_20293BC
	ldr r0, [r1, #0x3c]
_08010240:
	bl sub_080023C4
_08010244:
	bl sub_08005DE0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08010256
	b _08010098
_08010256:
	movs r0, #6
	bl sub_08017108
	bl sub_0801432C
	ldr r0, _0801028C @ =gUnknown_2022310
	ldr r0, [r0]
	cmp r0, #0
	beq _0801026E
	movs r1, #3
	bl sub_080018D8
_0801026E:
	ldr r0, _08010290 @ =gUnknown_2022314
	ldr r0, [r0]
	cmp r0, #0
	beq _0801027C
	movs r1, #3
	bl sub_080018D8
_0801027C:
	ldr r0, _08010294 @ =gUnknown_20227F8
	ldr r0, [r0]
	bl sub_080023D8
	b _08010340
	.align 2, 0
_08010288: .4byte gUnknown_20293BC
_0801028C: .4byte gUnknown_2022310
_08010290: .4byte gUnknown_2022314
_08010294: .4byte gUnknown_20227F8
_08010298:
	movs r3, #0x88
	adds r3, r3, r7
	ldr r2, [r3]
	adds r2, #4
	ldr r4, [r3]
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	adds r1, r7, #0
	adds r1, #0x38
	str r7, [r7, #0x38]
	ldr r0, _080102BC @ =sub_080102C0
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080102C2
	.align 2, 0
_080102BC: .4byte _080102C0
_080102C0: @ 0x080102C0
	b _08010338
_080102C2:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _080102D8
	movs r1, #0x84
	adds r1, r1, r7
	ldr r0, [r1]
	bl sub_080046C0
_080102D8:
	movs r2, #0x88
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	bl sub_0804449C
_080102E8:
	movs r4, #0x88
	adds r4, r4, r7
	ldr r2, [r4]
	adds r2, #4
	ldr r1, [r4]
	ldr r0, [r1, #4]
	str r0, [r7, #0x48]
	movs r0, #0
	str r0, [r7, #0x4c]
	adds r1, r7, #0
	adds r1, #0x50
	str r7, [r7, #0x50]
	ldr r0, _0801030C @ =sub_08010310
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _08010312
	.align 2, 0
_0801030C: .4byte _08010310
_08010310: @ 0x08010310
	b _0801033C
_08010312:
	adds r0, r7, #0
	adds r0, #0x48
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _08010328
	movs r4, #0x8c
	adds r4, r4, r7
	ldr r0, [r4]
	bl sub_080046C0
_08010328:
	movs r1, #0x88
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08010338:
	bl sub_080443CC
_0801033C:
	bl sub_080443CC
_08010340:
	add sp, #0xb0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800FD84

	thumb_func_start sub_08010350
sub_08010350: @ 0x08010350
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	mov r8, r1
	adds r7, r2, #0
	ldr r0, _08010374 @ =gUnknown_2020060
	ldr r0, [r0]
	movs r2, #0x8a
	lsls r2, r2, #6
	movs r1, #0
	bl memset
	movs r6, #0x11
	movs r5, #0
	b _0801037E
	.align 2, 0
_08010374: .4byte gUnknown_2020060
_08010378:
	adds r6, #0xc
	adds r4, #4
	adds r5, #1
_0801037E:
	cmp r5, #5
	bgt _0801039A
	ldr r0, [r4]
	mov r2, r8
	adds r1, r2, r5
	ldrb r1, [r1]
	str r1, [sp]
	movs r1, #1
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0800EE1C
	cmp r0, #0
	beq _08010378
_0801039A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08010350

	thumb_func_start sub_080103A8
sub_080103A8: @ 0x080103A8
	push {lr}
	sub sp, #8
	ldr r0, _080103D8 @ =gUnknown_202780C
	ldr r1, _080103DC @ =0x00000A89
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	movs r0, #0xc
	str r0, [sp]
	ldr r0, _080103E0 @ =gUnknown_861C662
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #3
	movs r2, #5
	movs r3, #0x17
	bl sub_08002D6C
	bl sub_0800F210
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add sp, #8
	pop {r1}
	bx r1
	.align 2, 0
_080103D8: .4byte gUnknown_202780C
_080103DC: .4byte 0x00000A89
_080103E0: .4byte gUnknown_861C662
	thumb_func_end sub_080103A8

	thumb_func_start sub_080103E4
sub_080103E4: @ 0x080103E4
	push {lr}
	sub sp, #8
	movs r0, #0xc
	str r0, [sp]
	ldr r0, _08010414 @ =gUnknown_861C662
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #3
	movs r2, #5
	movs r3, #0x17
	bl sub_08002D6C
	movs r2, #0x8a
	lsls r2, r2, #1
	ldr r0, _08010418 @ =gUnknown_2020060
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0x90
	bl sub_080045CC
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08010414: .4byte gUnknown_861C662
_08010418: .4byte gUnknown_2020060
	thumb_func_end sub_080103E4

	thumb_func_start sub_0801041C
sub_0801041C: @ 0x0801041C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	add r7, sp, #8
	bl sub_0804441C
	str r0, [r7, #0x48]
	movs r0, #0x3f
	movs r1, #0
	bl sub_080166D0
	ldr r0, _080104D8 @ =gUnknown_85EC228
	movs r1, #0xf
	bl sub_08002B24
	ldr r3, _080104DC @ =gUnknown_85EA7BC
	movs r0, #3
	movs r1, #0
	movs r2, #1
	bl sub_0800456C
	movs r0, #1
	bl sub_080054E8
	movs r2, #0xb8
	lsls r2, r2, #2
	ldr r3, _080104E0 @ =gUnknown_861C88A
	movs r0, #0
	movs r1, #0
	bl sub_080045CC
	movs r0, #0x20
	str r0, [sp]
	ldr r0, _080104E4 @ =gUnknown_86233CA
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08002D6C
	movs r0, #0
	str r0, [r7, #0x30]
	adds r1, r7, #0
	adds r1, #8
	str r1, [r7, #0x4c]
_0801047E:
	ldr r2, [r7, #0x30]
	lsls r2, r2, #5
	str r2, [r7, #0x3c]
	ldr r0, _080104E8 @ =gUnknown_8623BCA
	adds r0, r2, r0
	ldr r1, [r7, #0x30]
	movs r2, #0
	movs r3, #0x20
	bl LoadPalette
	ldr r0, _080104EC @ =gUnknown_8623DCA
	ldr r1, [r7, #0x3c]
	adds r0, r1, r0
	ldr r1, [r7, #0x30]
	movs r2, #0
	movs r3, #0x20
	bl sub_08000920
	ldr r2, [r7, #0x30]
	adds r2, #1
	str r2, [r7, #0x30]
	cmp r2, #0xf
	ble _0801047E
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x40]
	movs r1, #1
	movs r0, #0x44
	adds r0, r0, r7
	strb r1, [r0]
	ldr r1, [r7, #0x48]
	adds r1, #4
	ldr r2, [r7, #0x48]
	ldr r0, [r2, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _080104F0 @ =sub_080104F4
	ldr r2, [r7, #0x4c]
	str r0, [r2, #4]
	mov r0, sp
	str r0, [r2, #8]
	b _08010508
	.align 2, 0
_080104D8: .4byte gUnknown_85EC228
_080104DC: .4byte gUnknown_85EA7BC
_080104E0: .4byte gUnknown_861C88A
_080104E4: .4byte gUnknown_86233CA
_080104E8: .4byte gUnknown_8623BCA
_080104EC: .4byte gUnknown_8623DCA
_080104F0: .4byte _080104F4
_080104F4: @ 0x080104F4
	b _080105E8
_080104F6:
	ldr r0, _08010504 @ =0x0000018F
	bl sub_08017108
	movs r1, #1
	str r1, [r7, #0x34]
	b _0801059C
	.align 2, 0
_08010504: .4byte 0x0000018F
_08010508:
	str r7, [r1]
	ldr r2, _0801056C @ =gUnknown_8623FCA
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [r7, #0x40]
	movs r1, #1
	movs r3, #0x78
	bl sub_08002504
	movs r1, #0
	movs r2, #0x44
	adds r2, r2, r7
	strb r1, [r2]
	str r0, [r7, #0x38]
	ldr r2, [r7, #0x48]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, [r7, #0x38]
	ldr r1, [r0, #0x30]
	movs r2, #8
	ldrsh r0, [r1, r2]
	ldr r2, [r7, #0x38]
	adds r0, r2, r0
	ldr r3, [r1, #0xc]
	movs r1, #0x40
	movs r2, #0x6e
	bl _call_via_r3
	ldr r0, [r7, #0x38]
	bl sub_08002428
	movs r0, #0x3f
	movs r1, #0
	movs r2, #0x10
	movs r3, #0x1e
	bl sub_08016344
	movs r0, #0xc
	bl sub_08017108
	ldr r0, [r7, #0x38]
	bl sub_080023D8
	movs r0, #0
	str r0, [r7, #0x34]
	b _0801057E
	.align 2, 0
_0801056C: .4byte gUnknown_8623FCA
_08010570:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080104F6
	movs r0, #1
	bl sub_080053D8
_0801057E:
	bl sub_08005DE0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08010596
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08010570
_08010596:
	movs r0, #5
	bl sub_08017108
_0801059C:
	ldr r0, [r7, #0x38]
	bl sub_080023C4
	movs r0, #0xc
	movs r1, #1
	bl sub_08016FD8
	movs r0, #0x3f
	movs r1, #0x10
	movs r2, #0
	movs r3, #0xf
	bl sub_08016344
	b _080105BE
_080105B8:
	movs r0, #1
	bl sub_080053D8
_080105BE:
	bl sub_08016310
	cmp r0, #0
	beq _080105B8
	b _080105CE
_080105C8:
	movs r0, #1
	bl sub_080053D8
_080105CE:
	bl sub_08016F20
	cmp r0, #0
	beq _080105C8
	ldr r1, [r7, #0x38]
	cmp r1, #0
	beq _080105E4
	adds r0, r1, #0
	movs r1, #3
	bl sub_080018D8
_080105E4:
	ldr r0, [r7, #0x34]
	b _08010634
_080105E8:
	ldr r2, [r7, #0x48]
	adds r2, #4
	ldr r1, [r7, #0x48]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08010608 @ =sub_0801060C
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0801060E
	.align 2, 0
_08010608: .4byte _0801060C
_0801060C: @ 0x0801060C
	b _08010630
_0801060E:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r1, #0x44
	adds r1, r1, r7
	ldrb r1, [r1]
	cmp r1, #0
	beq _08010624
	ldr r0, [r7, #0x40]
	bl sub_080046C0
_08010624:
	ldr r2, [r7, #0x48]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	bl sub_0804449C
_08010630:
	bl sub_080443CC
_08010634:
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0801041C

	thumb_func_start sub_08010644
sub_08010644: @ 0x08010644
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _08010664 @ =gUnknown_2026578
	ldr r5, [r0]
	cmp r5, #0
	bne _08010708
	ldr r4, _08010668 @ =gUnknown_2024288
	adds r0, r4, #0
	bl sub_0802A398
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _0801066C
	strb r5, [r4]
	b _0801067E
	.align 2, 0
_08010664: .4byte gUnknown_2026578
_08010668: .4byte gUnknown_2024288
_0801066C:
	adds r0, r4, #0
	bl strlen
	cmp r0, #0
	beq _0801067C
	adds r0, r0, r4
	strb r5, [r0]
	b _0801067E
_0801067C:
	strb r0, [r4]
_0801067E:
	ldr r6, _080106DC @ =gUnknown_2024288
	ldrb r4, [r6]
	cmp r4, #0
	beq _080106E8
	movs r0, #0x20
	str r0, [sp]
	ldr r0, _080106E0 @ =gUnknown_862438A
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08002D6C
	movs r5, #3
	ldr r4, _080106E4 @ =gUnknown_20242B0
	movs r2, #0xd0
	lsls r2, r2, #3
	adds r0, r4, #0
	movs r1, #0xff
	bl memset
	movs r0, #0
	movs r1, #2
	bl sub_08038468
	movs r0, #0xe
	movs r1, #0xf
	bl sub_08038490
	movs r0, #0
	movs r1, #4
	bl sub_0803847C
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x1a
	bl sub_080382EC
	movs r0, #0
	movs r1, #0xe0
	movs r2, #0x34
	adds r3, r4, #0
	bl sub_080045CC
	b _0801071E
	.align 2, 0
_080106DC: .4byte gUnknown_2024288
_080106E0: .4byte gUnknown_862438A
_080106E4: .4byte gUnknown_20242B0
_080106E8:
	movs r0, #0x20
	str r0, [sp]
	ldr r0, _08010704 @ =gUnknown_8624B8A
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08002D6C
	movs r5, #2
	strb r4, [r6]
	b _0801071E
	.align 2, 0
_08010704: .4byte gUnknown_8624B8A
_08010708:
	movs r0, #0x20
	str r0, [sp]
	ldr r0, _08010728 @ =gUnknown_862538A
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08002D6C
	movs r5, #2
_0801071E:
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08010728: .4byte gUnknown_862538A
	thumb_func_end sub_08010644

	thumb_func_start sub_0801072C
sub_0801072C: @ 0x0801072C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	bl sub_080055DC
	movs r0, #0xf0
	lsls r0, r0, #4
	bl sub_080055B0
	str r0, [sp, #0x10]
	movs r0, #0x3f
	movs r1, #0
	bl sub_080166D0
	ldr r0, _080107C4 @ =gUnknown_85EC26C
	movs r1, #0xf
	bl sub_08002B24
	ldr r3, _080107C8 @ =gUnknown_85EA7BC
	movs r0, #3
	movs r1, #0
	movs r2, #1
	bl sub_0800456C
	movs r0, #1
	bl sub_080054E8
	movs r2, #0xb8
	lsls r2, r2, #2
	ldr r3, _080107CC @ =gUnknown_8625B8A
	movs r0, #0
	movs r1, #0
	bl sub_080045CC
	movs r4, #0
	ldr r5, _080107D0 @ =gUnknown_8628F8A
_0801077A:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0x20
	bl LoadPalette
	adds r5, #0x20
	adds r4, #1
	cmp r4, #0xe
	ble _0801077A
	movs r0, #0xc0
	bl sub_08005E38
	movs r0, #8
	movs r1, #7
	bl sub_08005EC0
	bl sub_08010644
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _080107D4 @ =gUnknown_2026578
	ldr r0, [r0]
	cmp r0, #0
	bne _08010814
	ldr r0, _080107D8 @ =gUnknown_85EC32C
	str r0, [sp, #0x14]
	ldr r1, [sp, #8]
	cmp r1, #2
	bne _080107E0
	movs r0, #0
	mov sb, r0
	ldr r0, _080107DC @ =gUnknown_202949A
	mov r1, sb
	strh r1, [r0]
	b _080107E6
	.align 2, 0
_080107C4: .4byte gUnknown_85EC26C
_080107C8: .4byte gUnknown_85EA7BC
_080107CC: .4byte gUnknown_8625B8A
_080107D0: .4byte gUnknown_8628F8A
_080107D4: .4byte gUnknown_2026578
_080107D8: .4byte gUnknown_85EC32C
_080107DC: .4byte gUnknown_202949A
_080107E0:
	ldr r0, _0801080C @ =gUnknown_202949A
	ldrh r0, [r0]
	mov sb, r0
_080107E6:
	ldr r4, _08010810 @ =gUnknown_8628FAC
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	movs r3, #4
	bl LoadPalette
	adds r4, #0xc
	mov r0, sb
	lsls r2, r0, #1
	adds r2, #1
	adds r0, r4, #0
	movs r1, #1
	movs r3, #4
	bl LoadPalette
	mov sl, sb
	b _0801084A
	.align 2, 0
_0801080C: .4byte gUnknown_202949A
_08010810: .4byte gUnknown_8628FAC
_08010814:
	ldr r1, _080108E8 @ =gUnknown_85EC38C
	str r1, [sp, #0x14]
	ldr r0, _080108EC @ =gUnknown_2024930
	ldrh r0, [r0]
	mov sb, r0
	movs r2, #0
	cmp r0, #0
	bne _08010826
	movs r2, #1
_08010826:
	mov sl, r2
	ldr r4, _080108F0 @ =gUnknown_8628FAC
	lsls r2, r2, #1
	adds r2, #1
	adds r0, r4, #0
	movs r1, #1
	movs r3, #4
	bl LoadPalette
	adds r4, #0xc
	mov r0, sb
	lsls r2, r0, #1
	adds r2, #1
	adds r0, r4, #0
	movs r1, #1
	movs r3, #4
	bl LoadPalette
_0801084A:
	movs r5, #0
	mov r1, sl
	lsls r1, r1, #2
	str r1, [sp, #0x18]
	mov r0, sb
	lsls r7, r0, #2
	ldr r1, _080108F4 @ =gUnknown_85EC3AC
	mov r8, r1
	ldr r6, _080108F8 @ =gUnknown_8625D6A
_0801085C:
	lsls r4, r5, #2
	mov r1, r8
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #0
	movs r2, #1
	adds r3, r6, #0
	bl sub_080045CC
	ldr r0, _080108FC @ =gUnknown_85EC3AE
	adds r4, r4, r0
	ldrh r1, [r4]
	movs r0, #0
	movs r2, #1
	adds r3, r6, #0
	bl sub_080045CC
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #2
	bls _0801085C
	ldr r4, _080108F4 @ =gUnknown_85EC3AC
	ldr r1, [sp, #0x18]
	adds r0, r1, r4
	ldrh r1, [r0]
	ldr r6, _080108F8 @ =gUnknown_8625D6A
	movs r0, #0
	movs r2, #1
	adds r3, r6, #0
	bl sub_080045CC
	adds r5, r4, #2
	ldr r1, [sp, #0x18]
	adds r0, r1, r5
	ldrh r1, [r0]
	movs r0, #0
	movs r2, #1
	adds r3, r6, #0
	bl sub_080045CC
	adds r4, r7, r4
	ldrh r1, [r4]
	lsls r3, r1, #5
	ldr r0, _08010900 @ =0xFFFFFE20
	adds r6, r6, r0
	adds r3, r3, r6
	movs r0, #0
	movs r2, #1
	bl sub_080045CC
	adds r5, r7, r5
	ldrh r1, [r5]
	lsls r3, r1, #5
	adds r3, r3, r6
	movs r0, #0
	movs r2, #1
	bl sub_080045CC
	movs r0, #0x3f
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xf
	bl sub_08016344
	movs r0, #0xc
	bl sub_08017108
	b _0801090A
	.align 2, 0
_080108E8: .4byte gUnknown_85EC38C
_080108EC: .4byte gUnknown_2024930
_080108F0: .4byte gUnknown_8628FAC
_080108F4: .4byte gUnknown_85EC3AC
_080108F8: .4byte gUnknown_8625D6A
_080108FC: .4byte gUnknown_85EC3AE
_08010900: .4byte 0xFFFFFE20
_08010904:
	movs r0, #1
	bl sub_080053D8
_0801090A:
	bl sub_08016310
	cmp r0, #0
	beq _08010904
	movs r1, #0
	str r1, [sp, #0xc]
	ldr r2, _080109AC @ =gUnknown_85EC394
	ldr r0, _080109B0 @ =gUnknown_2026578
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r0, r0, r2
	ldr r0, [r0]
	bl sub_08017108
	ldr r1, [sp, #0x14]
	adds r0, r7, r1
	ldr r4, [r0]
	adds r1, r4, #0
	movs r2, #0
_08010936:
	ldrb r0, [r1]
	cmp r0, #0
	beq _08010944
	adds r1, #1
	cmp r0, #0xa
	bne _08010936
	movs r2, #1
_08010944:
	movs r5, #0xa
	cmp r2, #0
	beq _0801094C
	movs r5, #6
_0801094C:
	ldr r0, [sp, #0x10]
	movs r1, #0xff
	movs r2, #0xf0
	lsls r2, r2, #4
	bl memset
	movs r0, #0
	movs r1, #2
	bl sub_08038468
	movs r0, #0xe
	movs r1, #0xf
	bl sub_08038490
	movs r0, #0
	adds r1, r5, #0
	bl sub_0803847C
	adds r0, r4, #0
	ldr r1, [sp, #0x10]
	movs r2, #0x1e
	bl sub_080382EC
	movs r0, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	movs r2, #0x78
	ldr r3, [sp, #0x10]
	bl sub_080045CC
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _08010990
	b _08010D06
_08010990:
	bl sub_08005DE0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r0, #2
	bne _080109A0
	b _08010B34
_080109A0:
	cmp r0, #2
	bgt _080109B4
	cmp r0, #1
	beq _080109C2
	b _08010C22
	.align 2, 0
_080109AC: .4byte gUnknown_85EC394
_080109B0: .4byte gUnknown_2026578
_080109B4:
	cmp r1, #0x40
	bne _080109BA
	b _08010BB8
_080109BA:
	cmp r1, #0x80
	bne _080109C0
	b _08010BF8
_080109C0:
	b _08010C22
_080109C2:
	ldr r1, _08010A10 @ =gUnknown_2026578
	ldr r0, [r1]
	cmp r0, #0
	beq _080109CC
	b _08010B14
_080109CC:
	mov r0, sb
	cmp r0, #0
	bne _08010AAC
	ldr r0, _08010A14 @ =gUnknown_202949A
	mov r1, sb
	strh r1, [r0]
	movs r0, #0x84
	bl sub_08017108
	ldr r5, _08010A18 @ =gUnknown_2029420
	ldr r0, [r5]
	movs r6, #1
	negs r6, r6
	mvns r0, r0
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	movs r0, #0xc
	bl sub_080114DC
	adds r4, r0, #0
	cmp r4, #0
	bne _080109FE
	movs r0, #1
	str r0, [sp, #0xc]
_080109FE:
	cmp r4, #2
	bne _08010A54
	ldr r0, [r5]
	cmp r0, r6
	beq _08010A1C
	movs r1, #2
	negs r1, r1
	str r1, [sp, #0xc]
	b _08010C22
	.align 2, 0
_08010A10: .4byte gUnknown_2026578
_08010A14: .4byte gUnknown_202949A
_08010A18: .4byte gUnknown_2029420
_08010A1C:
	bl sub_08016714
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x37
	movs r2, #0x10
	movs r3, #2
	bl sub_08016344
	movs r7, #0
	b _08010A3A
_08010A34:
	movs r0, #1
	bl sub_080053D8
_08010A3A:
	bl sub_08016310
	cmp r0, #0
	beq _08010A34
	ldr r1, _08010A50 @ =gUnknown_2026578
	ldr r0, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r7, r1
	b _08010BDE
	.align 2, 0
_08010A50: .4byte gUnknown_2026578
_08010A54:
	cmp r4, #1
	beq _08010A5A
	b _08010C22
_08010A5A:
	movs r0, #0xc
	bl sub_08017108
	movs r0, #0x20
	str r0, [sp]
	mov r1, sb
	str r1, [sp, #4]
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08002F74
	bl sub_08016714
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x37
	movs r2, #0x10
	movs r3, #2
	bl sub_08016344
	movs r7, #0
	b _08010A92
_08010A8C:
	movs r0, #1
	bl sub_080053D8
_08010A92:
	bl sub_08016310
	cmp r0, #0
	beq _08010A8C
	ldr r1, _08010AA8 @ =gUnknown_2026578
	ldr r0, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r7, r1
	b _08010BDE
	.align 2, 0
_08010AA8: .4byte gUnknown_2026578
_08010AAC:
	mov r1, sb
	cmp r1, #1
	bne _08010AFC
	movs r0, #5
	bl sub_08017108
	b _08010AC0
_08010ABA:
	movs r0, #1
	bl sub_080053D8
_08010AC0:
	movs r0, #5
	bl sub_08016E50
	cmp r0, #0
	beq _08010ABA
	movs r0, #1
	ldr r1, _08010AF4 @ =gUnknown_2026578
	str r0, [r1]
	ldr r0, _08010AF8 @ =gUnknown_85EC38C
	str r0, [sp, #0x14]
	bl sub_08010644
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r1, #0
	mov sb, r1
	movs r0, #1
	mov sl, r0
	ldr r0, _08010AF4 @ =gUnknown_2026578
	ldr r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	b _08010B88
	.align 2, 0
_08010AF4: .4byte gUnknown_2026578
_08010AF8: .4byte gUnknown_85EC38C
_08010AFC:
	movs r0, #5
	bl sub_08017108
	ldr r1, _08010B10 @ =gUnknown_202949A
	movs r0, #2
	strh r0, [r1]
	movs r0, #4
	str r0, [sp, #0xc]
	b _08010C22
	.align 2, 0
_08010B10: .4byte gUnknown_202949A
_08010B14:
	movs r0, #5
	bl sub_08017108
	movs r1, #3
	str r1, [sp, #0xc]
	mov r0, sb
	cmp r0, #0
	bne _08010B28
	movs r1, #2
	str r1, [sp, #0xc]
_08010B28:
	ldr r0, _08010B30 @ =gUnknown_2024930
	mov r1, sb
	strh r1, [r0]
	b _08010C22
	.align 2, 0
_08010B30: .4byte gUnknown_2024930
_08010B34:
	movs r0, #6
	bl sub_08017108
	ldr r1, _08010B44 @ =gUnknown_2026578
	ldr r0, [r1]
	cmp r0, #1
	bne _08010BA4
	b _08010B4E
	.align 2, 0
_08010B44: .4byte gUnknown_2026578
_08010B48:
	movs r0, #1
	bl sub_080053D8
_08010B4E:
	movs r0, #6
	bl sub_08016E50
	cmp r0, #0
	beq _08010B48
	movs r0, #0
	ldr r1, _08010B94 @ =gUnknown_2026578
	str r0, [r1]
	bl sub_08010644
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, _08010B94 @ =gUnknown_2026578
	ldr r1, [r0]
	ldr r0, _08010B98 @ =gUnknown_85EC38C
	str r0, [sp, #0x14]
	cmp r1, #0
	bne _08010B78
	ldr r0, _08010B9C @ =gUnknown_85EC32C
	str r0, [sp, #0x14]
_08010B78:
	movs r0, #1
	mov sb, r0
	movs r0, #0
	mov sl, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
_08010B88:
	ldr r1, _08010BA0 @ =gUnknown_85EC394
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08017108
	b _08010C22
	.align 2, 0
_08010B94: .4byte gUnknown_2026578
_08010B98: .4byte gUnknown_85EC38C
_08010B9C: .4byte gUnknown_85EC32C
_08010BA0: .4byte gUnknown_85EC394
_08010BA4:
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0xc]
	ldr r1, _08010BB4 @ =gUnknown_202949A
	movs r0, #0
	strh r0, [r1]
	b _08010C22
	.align 2, 0
_08010BB4: .4byte gUnknown_202949A
_08010BB8:
	mov r0, sb
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, _08010BEC @ =0x0000FFFF
	cmp sb, r0
	bne _08010BD2
	ldr r0, [sp, #8]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_08010BD2:
	ldr r1, _08010BF0 @ =gUnknown_2026578
	ldr r0, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	add r1, sb
	lsls r1, r1, #2
_08010BDE:
	ldr r0, _08010BF4 @ =gUnknown_85EC394
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_08017108
	b _08010C22
	.align 2, 0
_08010BEC: .4byte 0x0000FFFF
_08010BF0: .4byte gUnknown_2026578
_08010BF4: .4byte gUnknown_85EC394
_08010BF8:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r1, [sp, #8]
	cmp sb, r1
	bne _08010C0C
	movs r0, #0
	mov sb, r0
_08010C0C:
	ldr r1, _08010D28 @ =gUnknown_2026578
	ldr r0, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	add r1, sb
	lsls r1, r1, #2
	ldr r0, _08010D2C @ =gUnknown_85EC394
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_08017108
_08010C22:
	cmp sl, sb
	beq _08010CF8
	ldr r5, _08010D30 @ =gUnknown_85EC3AC
	mov r1, sl
	lsls r4, r1, #2
	adds r0, r4, r5
	ldrh r1, [r0]
	movs r0, #0
	movs r2, #1
	ldr r3, _08010D34 @ =gUnknown_8625D6A
	bl sub_080045CC
	adds r6, r5, #2
	adds r4, r4, r6
	ldrh r1, [r4]
	movs r0, #0
	movs r2, #1
	ldr r3, _08010D34 @ =gUnknown_8625D6A
	bl sub_080045CC
	mov r0, sb
	lsls r0, r0, #2
	mov r8, r0
	add r5, r8
	ldrh r1, [r5]
	lsls r3, r1, #5
	ldr r0, _08010D38 @ =gUnknown_8625B8A
	adds r3, r3, r0
	movs r0, #0
	movs r2, #1
	bl sub_080045CC
	add r6, r8
	ldrh r1, [r6]
	lsls r3, r1, #5
	ldr r0, _08010D38 @ =gUnknown_8625B8A
	adds r3, r3, r0
	movs r0, #0
	movs r2, #1
	bl sub_080045CC
	ldr r4, _08010D3C @ =gUnknown_8628FAC
	mov r1, sl
	lsls r2, r1, #1
	adds r2, #1
	adds r0, r4, #0
	movs r1, #1
	movs r3, #4
	bl LoadPalette
	mov r0, sb
	lsls r2, r0, #1
	adds r2, #1
	adds r0, r4, #0
	adds r0, #0xc
	movs r1, #1
	movs r3, #4
	bl LoadPalette
	mov sl, sb
	ldr r1, [sp, #0x14]
	add r8, r1
	mov r0, r8
	ldr r4, [r0]
	adds r1, r4, #0
	movs r2, #0
_08010CA6:
	ldrb r0, [r1]
	cmp r0, #0
	beq _08010CB4
	adds r1, #1
	cmp r0, #0xa
	bne _08010CA6
	movs r2, #1
_08010CB4:
	movs r5, #0xa
	cmp r2, #0
	beq _08010CBC
	movs r5, #6
_08010CBC:
	ldr r0, [sp, #0x10]
	movs r1, #0xff
	movs r2, #0xf0
	lsls r2, r2, #4
	bl memset
	movs r0, #0
	movs r1, #2
	bl sub_08038468
	movs r0, #0xe
	movs r1, #0xf
	bl sub_08038490
	movs r0, #0
	adds r1, r5, #0
	bl sub_0803847C
	adds r0, r4, #0
	ldr r1, [sp, #0x10]
	movs r2, #0x1e
	bl sub_080382EC
	movs r0, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	movs r2, #0x78
	ldr r3, [sp, #0x10]
	bl sub_080045CC
_08010CF8:
	movs r0, #1
	bl sub_080053D8
	ldr r1, [sp, #0xc]
	cmp r1, #0
	bne _08010D06
	b _08010990
_08010D06:
	movs r0, #0xc
	movs r1, #1
	bl sub_08016FD8
	bl sub_08016714
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bne _08010D40
	movs r0, #0x3f
	movs r1, #4
	movs r2, #0
	movs r3, #0xf
	bl sub_08016344
	b _08010D54
	.align 2, 0
_08010D28: .4byte gUnknown_2026578
_08010D2C: .4byte gUnknown_85EC394
_08010D30: .4byte gUnknown_85EC3AC
_08010D34: .4byte gUnknown_8625D6A
_08010D38: .4byte gUnknown_8625B8A
_08010D3C: .4byte gUnknown_8628FAC
_08010D40:
	movs r0, #0x3f
	movs r1, #0x10
	movs r2, #0
	movs r3, #0xf
	bl sub_08016344
	b _08010D54
_08010D4E:
	movs r0, #1
	bl sub_080053D8
_08010D54:
	bl sub_08016310
	cmp r0, #0
	beq _08010D4E
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08002F74
	b _08010D78
_08010D72:
	movs r0, #1
	bl sub_080053D8
_08010D78:
	movs r0, #0xc
	bl sub_08016E50
	cmp r0, #0
	beq _08010D72
	movs r0, #0xc0
	bl sub_08005E14
	ldr r0, [sp, #0x10]
	bl sub_08005598
	bl sub_08005E4C
	ldr r0, [sp, #0xc]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0801072C

	thumb_func_start sub_08010DA4
sub_08010DA4: @ 0x08010DA4
	push {r4, r5, lr}
	ldr r3, _08010E14 @ =gUnknown_85EA7BC
	movs r0, #3
	movs r1, #0x3d
	movs r2, #0x42
	bl sub_0800456C
	ldr r0, _08010E18 @ =gUnknown_85EC8BC
	ldr r3, [r0]
	lsls r3, r3, #5
	ldr r0, _08010E1C @ =gUnknown_862918A
	adds r3, r3, r0
	movs r0, #3
	movs r1, #0x7f
	movs r2, #0x24
	bl sub_080045CC
	ldr r5, _08010E20 @ =gUnknown_85EC3B8
	ldr r4, _08010E24 @ =gUnknown_2024934
	ldr r0, [r4]
	movs r1, #0
	movs r2, #0xf0
	lsls r2, r2, #3
	bl memset
	movs r0, #0xf
	movs r1, #0
	bl sub_08038490
	adds r0, r5, #0
	bl sub_08038134
	adds r1, r0, #0
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r1, #0
	movs r1, #4
	bl sub_0803847C
	ldr r1, [r4]
	adds r0, r5, #0
	movs r2, #0x1e
	bl sub_080383A4
	ldr r3, [r4]
	movs r0, #3
	movs r1, #1
	movs r2, #0x3c
	bl sub_080045CC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010E14: .4byte gUnknown_85EA7BC
_08010E18: .4byte gUnknown_85EC8BC
_08010E1C: .4byte gUnknown_862918A
_08010E20: .4byte gUnknown_85EC3B8
_08010E24: .4byte gUnknown_2024934
	thumb_func_end sub_08010DA4

	thumb_func_start sub_08010E28
sub_08010E28: @ 0x08010E28
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08010E4C @ =gUnknown_862AC8A
	movs r0, #3
	movs r1, #0x3d
	movs r2, #0x42
	adds r3, r5, #0
	bl sub_080045CC
	cmp r4, #4
	bne _08010E54
	ldr r3, _08010E50 @ =gUnknown_862EA8A
	movs r0, #3
	movs r1, #0xfa
	movs r2, #0x14
	bl sub_080045CC
	b _08010E6E
	.align 2, 0
_08010E4C: .4byte gUnknown_862AC8A
_08010E50: .4byte gUnknown_862EA8A
_08010E54:
	ldr r1, _08010EC4 @ =gUnknown_85EC8BC
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r3, [r0]
	lsls r3, r3, #5
	ldr r1, _08010EC8 @ =0xFFFFE500
	adds r0, r5, r1
	adds r3, r3, r0
	movs r0, #3
	movs r1, #0x7f
	movs r2, #0x24
	bl sub_080045CC
_08010E6E:
	ldr r1, _08010ECC @ =gUnknown_85EC430
	subs r0, r4, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [r0]
	ldr r4, _08010ED0 @ =gUnknown_2024934
	ldr r0, [r4]
	movs r1, #0
	movs r2, #0xf0
	lsls r2, r2, #3
	bl memset
	movs r0, #0xf
	movs r1, #0
	bl sub_08038490
	adds r0, r5, #0
	bl sub_08038134
	adds r1, r0, #0
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	movs r1, #0x78
	subs r1, r1, r0
	adds r0, r1, #0
	movs r1, #4
	bl sub_0803847C
	ldr r1, [r4]
	adds r0, r5, #0
	movs r2, #0x1e
	bl sub_080383A4
	ldr r3, [r4]
	movs r0, #3
	movs r1, #1
	movs r2, #0x3c
	bl sub_080045CC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010EC4: .4byte gUnknown_85EC8BC
_08010EC8: .4byte 0xFFFFE500
_08010ECC: .4byte gUnknown_85EC430
_08010ED0: .4byte gUnknown_2024934
	thumb_func_end sub_08010E28

	thumb_func_start sub_08010ED4
sub_08010ED4: @ 0x08010ED4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xbc
	ldr r5, _08010F88 @ =gUnknown_2024934
	ldr r0, [r5]
	movs r2, #0xb4
	lsls r2, r2, #5
	movs r1, #0
	bl memset
	ldr r1, _08010F8C @ =gUnknown_804AD5C
	ldr r2, _08010F90 @ =gUnknown_85EC8D0
	ldr r3, _08010F94 @ =gUnknown_20294D0
	ldr r0, _08010F98 @ =gUnknown_85EC8E8
	str r0, [sp]
	add r0, sp, #8
	bl sub_0803B000
	movs r0, #0xf
	movs r1, #0
	bl sub_08038490
	movs r0, #0
	movs r1, #0
	bl sub_0803847C
	ldr r1, [r5]
	add r0, sp, #8
	movs r2, #0x1e
	bl sub_080382EC
	movs r0, #1
	bl sub_080053D8
	movs r0, #1
	bl sub_080053D8
	ldr r4, _08010F9C @ =gUnknown_862CB4A
	movs r0, #3
	movs r1, #0
	movs r2, #0xac
	lsls r2, r2, #1
	adds r3, r4, #0
	bl sub_080045CC
	movs r0, #0x20
	str r0, [sp]
	ldr r0, _08010FA0 @ =gUnknown_862F64A
	str r0, [sp, #4]
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08002D6C
	ldr r3, [r5]
	movs r0, #3
	movs r1, #1
	movs r2, #0xb4
	bl sub_080045CC
	movs r1, #0x94
	lsls r1, r1, #1
	movs r0, #0x95
	lsls r0, r0, #6
	adds r5, r4, r0
	movs r0, #3
	movs r2, #2
	adds r3, r5, #0
	bl sub_080045CC
	movs r1, #0x95
	lsls r1, r1, #1
	movs r0, #0x94
	lsls r0, r0, #6
	adds r4, r4, r0
	movs r0, #3
	movs r2, #2
	adds r3, r4, #0
	bl sub_080045CC
	movs r1, #0
	mov r8, r1
	movs r7, #0x1e
	movs r0, #1
	mov sb, r0
	movs r6, #1
	b _08011042
	.align 2, 0
_08010F88: .4byte gUnknown_2024934
_08010F8C: .4byte gUnknown_804AD5C
_08010F90: .4byte gUnknown_85EC8D0
_08010F94: .4byte gUnknown_20294D0
_08010F98: .4byte gUnknown_85EC8E8
_08010F9C: .4byte gUnknown_862CB4A
_08010FA0: .4byte gUnknown_862F64A
_08010FA4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08010FBA
	cmp r6, #0
	beq _08010FB6
	movs r0, #1
	bl sub_08017108
_08010FB6:
	movs r6, #0
	b _08010FCE
_08010FBA:
	movs r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _08010FCE
	cmp r6, #0
	bne _08010FCC
	movs r0, #0
	bl sub_08017108
_08010FCC:
	movs r6, #1
_08010FCE:
	cmp r6, sb
	beq _08011016
	cmp r6, #0
	bne _08010FF6
	movs r0, #3
	movs r1, #0x94
	lsls r1, r1, #1
	movs r2, #2
	adds r3, r4, #0
	bl sub_080045CC
	movs r0, #3
	movs r1, #0x95
	lsls r1, r1, #1
	movs r2, #2
	adds r3, r4, #0
	adds r3, #0x40
	bl sub_080045CC
	b _08011014
_08010FF6:
	movs r0, #3
	movs r1, #0x94
	lsls r1, r1, #1
	movs r2, #2
	adds r3, r5, #0
	bl sub_080045CC
	movs r0, #3
	movs r1, #0x95
	lsls r1, r1, #1
	movs r2, #2
	adds r3, r5, #0
	subs r3, #0x40
	bl sub_080045CC
_08011014:
	mov sb, r6
_08011016:
	movs r0, #1
	bl sub_080053D8
	subs r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	bne _08011042
	movs r0, #1
	mov r1, r8
	eors r1, r0
	mov r8, r1
	movs r7, #0x1e
	ldr r3, _0801106C @ =gUnknown_862EA8A
	cmp r1, #0
	beq _08011038
	ldr r3, _08011070 @ =gUnknown_85EC43C
_08011038:
	movs r0, #3
	movs r1, #0xfa
	movs r2, #0x14
	bl sub_080045CC
_08011042:
	bl sub_08005DE0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801105C
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08010FA4
	movs r6, #1
_0801105C:
	movs r0, #6
	cmp r6, #0
	bne _08011064
	movs r0, #5
_08011064:
	adds r4, r0, #0
	bl sub_08017108
	b _0801107A
	.align 2, 0
_0801106C: .4byte gUnknown_862EA8A
_08011070: .4byte gUnknown_85EC43C
_08011074:
	movs r0, #1
	bl sub_080053D8
_0801107A:
	adds r0, r4, #0
	bl sub_08016E50
	cmp r0, #0
	beq _08011074
	adds r0, r6, #0
	add sp, #0xbc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08010ED4

	thumb_func_start sub_08011094
sub_08011094: @ 0x08011094
	push {r4, r5, lr}
	sub sp, #0x80
	adds r5, r0, #0
	ldr r4, _08011110 @ =gUnknown_2024934
	ldr r0, [r4]
	movs r2, #0xf0
	lsls r2, r2, #4
	movs r1, #0
	bl memset
	ldr r1, _08011114 @ =gUnknown_804AD64
	ldr r2, _08011118 @ =gUnknown_85EC934
	ldr r0, _0801111C @ =gUnknown_85EC95C
	str r0, [sp]
	add r0, sp, #8
	adds r3, r5, #0
	bl sub_0803B000
	movs r0, #0xf
	movs r1, #0
	bl sub_08038490
	movs r0, #0
	movs r1, #2
	bl sub_0803847C
	ldr r1, [r4]
	add r0, sp, #8
	movs r2, #0x1e
	bl sub_080382EC
	movs r0, #1
	bl sub_080053D8
	ldr r3, _08011120 @ =gUnknown_862CB4A
	movs r0, #3
	movs r1, #0
	movs r2, #0xac
	lsls r2, r2, #1
	bl sub_080045CC
	movs r0, #0x20
	str r0, [sp]
	ldr r0, _08011124 @ =gUnknown_862FE4A
	str r0, [sp, #4]
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08002D6C
	ldr r3, [r4]
	movs r0, #3
	movs r1, #1
	movs r2, #0x78
	bl sub_080045CC
	add sp, #0x80
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011110: .4byte gUnknown_2024934
_08011114: .4byte gUnknown_804AD64
_08011118: .4byte gUnknown_85EC934
_0801111C: .4byte gUnknown_85EC95C
_08011120: .4byte gUnknown_862CB4A
_08011124: .4byte gUnknown_862FE4A
	thumb_func_end sub_08011094

	thumb_func_start sub_08011128
sub_08011128: @ 0x08011128
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #8]
	movs r0, #1
	bl sub_080053D8
	bl sub_08016714
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	beq _08011176
	cmp r0, #0
	bne _0801115A
	movs r0, #0x37
	movs r1, #0
	movs r2, #4
	movs r3, #2
	bl sub_08016344
	b _0801116E
_0801115A:
	movs r0, #0x37
	movs r1, #0x10
	movs r2, #4
	movs r3, #2
	bl sub_08016344
	b _0801116E
_08011168:
	movs r0, #1
	bl sub_080053D8
_0801116E:
	bl sub_08016310
	cmp r0, #0
	beq _08011168
_08011176:
	ldr r4, _080111B8 @ =gUnknown_2024934
	movs r0, #0xb4
	lsls r0, r0, #5
	bl sub_080055B0
	str r0, [r4]
	movs r0, #1
	bl sub_080053D8
	ldr r3, _080111BC @ =gUnknown_862918A
	movs r0, #3
	movs r1, #0
	movs r2, #0xd8
	bl sub_080045CC
	movs r0, #0x20
	str r0, [sp]
	ldr r0, _080111C0 @ =gUnknown_863064A
	str r0, [sp, #4]
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08002D6C
	ldr r0, _080111C4 @ =gUnknown_863102A
	movs r1, #0xf
	movs r2, #0
	movs r3, #0x20
	bl LoadPalette
	b _080111CE
	.align 2, 0
_080111B8: .4byte gUnknown_2024934
_080111BC: .4byte gUnknown_862918A
_080111C0: .4byte gUnknown_863064A
_080111C4: .4byte gUnknown_863102A
_080111C8:
	movs r0, #1
	bl sub_080053D8
_080111CE:
	bl sub_08016F20
	cmp r0, #0
	beq _080111C8
	movs r0, #0
	mov sl, r0
_080111DA:
	bl sub_08010DA4
	movs r0, #1
	bl sub_080053D8
	b _080111EC
_080111E6:
	movs r0, #1
	bl sub_080053D8
_080111EC:
	bl sub_08016F20
	cmp r0, #0
	beq _080111E6
	bl sub_080171A4
	bl sub_08009038
	mov r8, r0
	bl sub_080171C4
	mov r0, r8
	bl sub_0801CAE0
	mov r0, r8
	cmp r0, #0
	bne _08011228
	movs r0, #3
	bl sub_08017108
	b _0801121C
_08011216:
	movs r0, #1
	bl sub_080053D8
_0801121C:
	movs r0, #3
	bl sub_08016E50
	cmp r0, #0
	beq _08011216
	b _08011294
_08011228:
	ldr r0, _0801123C @ =gUnknown_2029394
	ldr r1, [r0]
	ldr r0, _08011240 @ =0x00000309
	cmp r1, r0
	bne _0801129A
	movs r0, #3
	bl sub_08017108
	b _0801124A
	.align 2, 0
_0801123C: .4byte gUnknown_2029394
_08011240: .4byte 0x00000309
_08011244:
	movs r0, #1
	bl sub_080053D8
_0801124A:
	movs r0, #3
	bl sub_08016E50
	cmp r0, #0
	beq _08011244
	bl sub_08010ED4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _08011290
	movs r0, #1
	bl sub_080053D8
	movs r0, #3
	movs r1, #0
	movs r2, #0xd8
	ldr r3, _08011288 @ =gUnknown_862918A
	bl sub_080045CC
	movs r0, #0x20
	str r0, [sp]
	ldr r0, _0801128C @ =gUnknown_863064A
	str r0, [sp, #4]
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08002D6C
	b _08011410
	.align 2, 0
_08011288: .4byte gUnknown_862918A
_0801128C: .4byte gUnknown_863064A
_08011290:
	bl sub_08009294
_08011294:
	movs r0, #0
	mov sb, r0
	b _08011418
_0801129A:
	ldr r0, _080112AC @ =0x00000301
	cmp r1, r0
	beq _080112B0
	adds r0, #1
	cmp r1, r0
	bne _080112BC
	movs r0, #2
	mov sb, r0
	b _08011418
	.align 2, 0
_080112AC: .4byte 0x00000301
_080112B0:
	movs r0, #6
	bl sub_08017108
	movs r0, #1
	mov sb, r0
	b _08011418
_080112BC:
	movs r0, #4
	bl sub_08017108
	b _080112CA
_080112C4:
	movs r0, #1
	bl sub_080053D8
_080112CA:
	bl sub_08016F20
	cmp r0, #0
	beq _080112C4
	ldr r0, _080112F0 @ =gUnknown_2029394
	ldr r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	bne _080112F8
	movs r6, #2
	movs r0, #2
	bl sub_08010E28
	ldr r0, _080112F4 @ =0x00000312
	bl sub_08017108
	b _08011342
	.align 2, 0
_080112F0: .4byte gUnknown_2029394
_080112F4: .4byte 0x00000312
_080112F8:
	ldr r0, _08011310 @ =0x00000306
	cmp r1, r0
	bne _08011314
	movs r6, #3
	movs r0, #3
	bl sub_08010E28
	movs r0, #0xc4
	lsls r0, r0, #2
	bl sub_08017108
	b _08011342
	.align 2, 0
_08011310: .4byte 0x00000306
_08011314:
	movs r0, #0xc2
	lsls r0, r0, #2
	cmp r1, r0
	bne _08011334
	ldr r0, _0801132C @ =gUnknown_2028B78
	bl sub_08011094
	movs r6, #4
	ldr r0, _08011330 @ =0x00000302
	bl sub_08017108
	b _08011342
	.align 2, 0
_0801132C: .4byte gUnknown_2028B78
_08011330: .4byte 0x00000302
_08011334:
	movs r6, #1
	movs r0, #1
	bl sub_08010E28
	ldr r0, _08011350 @ =0x00000311
	bl sub_08017108
_08011342:
	movs r5, #0
	movs r4, #0x1e
	ldr r1, _08011354 @ =gUnknown_85EC8BC
	lsls r0, r6, #2
	adds r7, r0, r1
	b _080113B0
	.align 2, 0
_08011350: .4byte 0x00000311
_08011354: .4byte gUnknown_85EC8BC
_08011358:
	movs r0, #1
	bl sub_080053D8
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080113B0
	movs r0, #1
	eors r5, r0
	movs r4, #0x1e
	cmp r6, #4
	bne _08011390
	ldr r3, _08011388 @ =gUnknown_862EA8A
	cmp r5, #0
	beq _0801137A
	ldr r3, _0801138C @ =gUnknown_85EC43C
_0801137A:
	movs r0, #3
	movs r1, #0xfa
	movs r2, #0x14
	bl sub_080045CC
	b _080113B0
	.align 2, 0
_08011388: .4byte gUnknown_862EA8A
_0801138C: .4byte gUnknown_85EC43C
_08011390:
	cmp r5, #0
	bne _080113A4
	ldr r0, [r7]
	lsls r0, r0, #5
	ldr r1, _080113A0 @ =gUnknown_862918A
	adds r3, r0, r1
	b _080113A6
	.align 2, 0
_080113A0: .4byte gUnknown_862918A
_080113A4:
	ldr r3, _080113C4 @ =gUnknown_85EC43C
_080113A6:
	movs r0, #3
	movs r1, #0x7f
	movs r2, #0x24
	bl sub_080045CC
_080113B0:
	bl sub_08005DE0
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08011358
	movs r0, #5
	bl sub_08017108
	b _080113CE
	.align 2, 0
_080113C4: .4byte gUnknown_85EC43C
_080113C8:
	movs r0, #1
	bl sub_080053D8
_080113CE:
	movs r0, #5
	bl sub_08016E50
	cmp r0, #0
	beq _080113C8
	mov r0, r8
	cmp r0, #0
	beq _08011410
	ldr r0, _08011430 @ =gUnknown_2029394
	ldr r1, [r0]
	movs r0, #0xc2
	lsls r0, r0, #2
	cmp r1, r0
	bne _08011410
	movs r0, #1
	bl sub_080053D8
	movs r0, #3
	movs r1, #0
	movs r2, #0xd8
	ldr r3, _08011434 @ =gUnknown_862918A
	bl sub_080045CC
	movs r0, #0x20
	str r0, [sp]
	ldr r0, _08011438 @ =gUnknown_863064A
	str r0, [sp, #4]
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08002D6C
_08011410:
	mov r0, sl
	cmp r0, #0
	bne _08011418
	b _080111DA
_08011418:
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #3
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08002F74
	b _08011442
	.align 2, 0
_08011430: .4byte gUnknown_2029394
_08011434: .4byte gUnknown_862918A
_08011438: .4byte gUnknown_863064A
_0801143C:
	movs r0, #1
	bl sub_080053D8
_08011442:
	bl sub_08016F20
	cmp r0, #0
	beq _0801143C
	movs r0, #1
	bl sub_080053D8
	bl sub_08005DE0
	mov r0, sb
	cmp r0, #2
	bne _08011496
	ldr r0, _08011484 @ =gUnknown_2029420
	ldr r1, [r0]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _08011496
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _08011496
	bl sub_08016714
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x37
	movs r2, #0x10
	movs r3, #2
	bl sub_08016344
	b _0801148E
	.align 2, 0
_08011484: .4byte gUnknown_2029420
_08011488:
	movs r0, #1
	bl sub_080053D8
_0801148E:
	bl sub_08016310
	cmp r0, #0
	beq _08011488
_08011496:
	ldr r0, _080114B0 @ =gUnknown_2024934
	ldr r0, [r0]
	bl sub_08005598
	mov r0, sb
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080114B0: .4byte gUnknown_2024934
	thumb_func_end sub_08011128

	thumb_func_start sub_080114B4
sub_080114B4: @ 0x080114B4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #1
	bl sub_08016FD8
	movs r0, #0
	bl sub_08011128
	adds r4, r0, #0
	bl sub_08005E4C
	cmp r4, #2
	bne _080114D4
	adds r0, r5, #0
	bl sub_08017108
_080114D4:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_080114B4

	thumb_func_start sub_080114DC
sub_080114DC: @ 0x080114DC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r1, #1
	bl sub_08016FD8
	adds r0, r5, #0
	bl sub_08011128
	adds r4, r0, #0
	bl sub_08005E4C
	cmp r4, #2
	bne _08011502
	cmp r5, #0
	bne _08011502
	adds r0, r6, #0
	bl sub_08017108
_08011502:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080114DC

	thumb_func_start sub_0801150C
sub_0801150C: @ 0x0801150C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802A398
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0801152C
	adds r0, r4, #0
	bl strlen
	cmp r0, #0
	beq _0801152E
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	b _08011530
_0801152C:
	movs r0, #0
_0801152E:
	strb r0, [r4]
_08011530:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0801150C

	thumb_func_start sub_08011538
sub_08011538: @ 0x08011538
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08017108
	b _08011548
_08011542:
	movs r0, #1
	bl sub_080053D8
_08011548:
	bl sub_08005DE0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	cmp r4, #0
	bne _08011560
	adds r0, r5, #0
	bl sub_08016E50
	cmp r0, #0
	beq _08011542
_08011560:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_08011538

	thumb_func_start sub_08011568
sub_08011568: @ 0x08011568
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08017108
	b _08011578
_08011572:
	movs r0, #1
	bl sub_080053D8
_08011578:
	adds r0, r4, #0
	bl sub_08016E50
	cmp r0, #0
	beq _08011572
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08011568

	thumb_func_start sub_08011588
sub_08011588: @ 0x08011588
	push {r4, lr}
	adds r4, r0, #0
	b _08011594
_0801158E:
	movs r0, #1
	bl sub_080053D8
_08011594:
	adds r0, r4, #0
	bl sub_08016E50
	cmp r0, #0
	beq _0801158E
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08011588

	thumb_func_start sub_080115A4
sub_080115A4: @ 0x080115A4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08016714
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x3f
	movs r2, #0x10
	adds r3, r4, #0
	bl sub_08016344
	b _080115C4
_080115BE:
	movs r0, #1
	bl sub_080053D8
_080115C4:
	bl sub_08016310
	cmp r0, #0
	beq _080115BE
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080115A4

	thumb_func_start sub_080115D4
sub_080115D4: @ 0x080115D4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08016714
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x3f
	movs r2, #0
	adds r3, r4, #0
	bl sub_08016344
	b _080115F4
_080115EE:
	movs r0, #1
	bl sub_080053D8
_080115F4:
	bl sub_08016310
	cmp r0, #0
	beq _080115EE
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080115D4

	thumb_func_start sub_08011604
sub_08011604: @ 0x08011604
	push {lr}
	bl sub_08016714
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x37
	movs r2, #0x10
	movs r3, #2
	bl sub_08016344
	b _08011622
_0801161C:
	movs r0, #1
	bl sub_080053D8
_08011622:
	bl sub_08016310
	cmp r0, #0
	beq _0801161C
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08011604

	thumb_func_start sub_08011630
sub_08011630: @ 0x08011630
	push {lr}
	bl sub_08016714
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	beq _0801166C
	cmp r0, #0
	bne _08011650
	movs r0, #0x37
	movs r1, #0
	movs r2, #4
	movs r3, #2
	bl sub_08016344
	b _08011664
_08011650:
	movs r0, #0x37
	movs r1, #0x10
	movs r2, #4
	movs r3, #2
	bl sub_08016344
	b _08011664
_0801165E:
	movs r0, #1
	bl sub_080053D8
_08011664:
	bl sub_08016310
	cmp r0, #0
	beq _0801165E
_0801166C:
	pop {r0}
	bx r0
	thumb_func_end sub_08011630

	thumb_func_start sub_08011670
sub_08011670: @ 0x08011670
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r5, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08008F78
	ldr r1, [r4, #0x10]
	adds r1, #2
	str r1, [r4, #0x10]
	ldr r4, _080116C0 @ =gUnknown_20328C8
	lsls r3, r5, #2
	adds r3, r3, r5
	lsls r3, r3, #4
	adds r2, r4, #0
	adds r2, #0x2c
	adds r2, r3, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
	adds r2, r4, #0
	adds r2, #0x34
	adds r2, r3, r2
	ldr r1, [r2]
	adds r1, r1, r0
	str r1, [r2]
	adds r0, r4, #0
	adds r0, #0x38
	adds r3, r3, r0
	ldr r0, [r3]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r3]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080116C0: .4byte gUnknown_20328C8
	thumb_func_end sub_08011670

	thumb_func_start sub_080116C4
sub_080116C4: @ 0x080116C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	mov r7, sp
	str r0, [r7, #0x30]
	str r1, [r7, #0x34]
	bl sub_0804441C
	str r0, [r7, #0x38]
	ldr r0, [r7, #0x34]
	cmp r0, #0
	beq _080116EA
	ldr r0, [r7, #0x30]
	adds r0, #0x7c
	ldr r1, [r7, #0x30]
	str r0, [r1]
_080116EA:
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_080080D4
	ldr r2, [r7, #0x38]
	adds r2, #4
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08011710 @ =sub_08011714
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08011716
	.align 2, 0
_08011710: .4byte _08011714
_08011714: @ 0x08011714
	b _08011758
_08011716:
	str r7, [r2]
	ldr r0, _08011754 @ =gUnknown_8703EA8
	ldr r1, [r7, #0x30]
	str r0, [r1, #0x30]
	movs r1, #0
	ldr r0, [r7, #0x30]
	str r1, [r0, #0x60]
	str r1, [r0, #0x64]
	adds r2, r0, #0
	adds r2, #0x6a
	movs r0, #1
	strh r0, [r2]
	ldr r2, [r7, #0x30]
	adds r2, #0x72
	strh r0, [r2]
	ldr r0, [r7, #0x30]
	adds r0, #0x68
	strh r1, [r0]
	ldr r0, [r7, #0x30]
	adds r0, #0x70
	strh r1, [r0]
	ldr r0, [r7, #0x30]
	str r1, [r0, #0x6c]
	str r1, [r0, #0x74]
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, [r7, #0x30]
	b _0801179C
	.align 2, 0
_08011754: .4byte gUnknown_8703EA8
_08011758:
	ldr r2, [r7, #0x38]
	adds r2, #4
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08011778 @ =sub_0801177C
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0801177E
	.align 2, 0
_08011778: .4byte _0801177C
_0801177C: @ 0x0801177C
	b _08011798
_0801177E:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_08007CF0
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08011798:
	bl sub_080443CC
_0801179C:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_080116C4

	thumb_func_start sub_080117AC
sub_080117AC: @ 0x080117AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	mov r7, sp
	str r0, [r7, #0x30]
	str r1, [r7, #0x34]
	str r2, [r7, #0x38]
	bl sub_0804441C
	str r0, [r7, #0x3c]
	ldr r0, [r7, #0x34]
	cmp r0, #0
	beq _080117D4
	ldr r0, [r7, #0x30]
	adds r0, #0x7c
	ldr r1, [r7, #0x30]
	str r0, [r1]
_080117D4:
	ldr r0, [r7, #0x30]
	movs r1, #0
	ldr r2, [r7, #0x38]
	movs r3, #1
	bl sub_08007180
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08011800 @ =sub_08011804
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08011806
	.align 2, 0
_08011800: .4byte _08011804
_08011804: @ 0x08011804
	b _08011860
_08011806:
	str r7, [r2]
	ldr r0, _0801185C @ =gUnknown_8703EA8
	ldr r1, [r7, #0x30]
	str r0, [r1, #0x30]
	movs r1, #0
	ldr r0, [r7, #0x30]
	str r1, [r0, #0x60]
	str r1, [r0, #0x64]
	adds r2, r0, #0
	adds r2, #0x6a
	movs r0, #1
	strh r0, [r2]
	ldr r2, [r7, #0x30]
	adds r2, #0x72
	strh r0, [r2]
	ldr r0, [r7, #0x30]
	adds r0, #0x68
	strh r1, [r0]
	ldr r0, [r7, #0x30]
	adds r0, #0x70
	strh r1, [r0]
	ldr r0, [r7, #0x30]
	str r1, [r0, #0x6c]
	str r1, [r0, #0x74]
	movs r1, #1
	bl sub_08001798
	bl sub_08000D84
	adds r1, r0, #0
	ldr r0, [r7, #0x30]
	str r1, [r0, #0x78]
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08002810
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, [r7, #0x30]
	b _080118A4
	.align 2, 0
_0801185C: .4byte gUnknown_8703EA8
_08011860:
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08011880 @ =sub_08011884
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08011886
	.align 2, 0
_08011880: .4byte _08011884
_08011884: @ 0x08011884
	b _080118A0
_08011886:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_08007CF0
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_080118A0:
	bl sub_080443CC
_080118A4:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_080117AC

	thumb_func_start sub_080118B4
sub_080118B4: @ 0x080118B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	mov r7, sp
	str r0, [r7, #0x30]
	str r1, [r7, #0x34]
	str r2, [r7, #0x38]
	bl sub_0804441C
	str r0, [r7, #0x3c]
	ldr r0, [r7, #0x34]
	cmp r0, #0
	beq _080118DC
	ldr r0, [r7, #0x30]
	adds r0, #0x7c
	ldr r1, [r7, #0x30]
	str r0, [r1]
_080118DC:
	ldr r0, [r7, #0x30]
	movs r1, #0
	ldr r2, [r7, #0x38]
	movs r3, #1
	bl sub_08007E40
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08011908 @ =sub_0801190C
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0801190E
	.align 2, 0
_08011908: .4byte _0801190C
_0801190C: @ 0x0801190C
	b _08011958
_0801190E:
	str r7, [r2]
	ldr r0, _08011954 @ =gUnknown_8703EA8
	ldr r1, [r7, #0x30]
	str r0, [r1, #0x30]
	movs r1, #0
	ldr r0, [r7, #0x30]
	str r1, [r0, #0x60]
	str r1, [r0, #0x64]
	adds r2, r0, #0
	adds r2, #0x6a
	movs r0, #1
	strh r0, [r2]
	ldr r2, [r7, #0x30]
	adds r2, #0x72
	strh r0, [r2]
	ldr r0, [r7, #0x30]
	adds r0, #0x68
	strh r1, [r0]
	ldr r0, [r7, #0x30]
	adds r0, #0x70
	strh r1, [r0]
	ldr r0, [r7, #0x30]
	str r1, [r0, #0x6c]
	str r1, [r0, #0x74]
	bl sub_08000D84
	ldr r1, [r7, #0x30]
	str r0, [r1, #0x78]
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, [r7, #0x30]
	b _0801199C
	.align 2, 0
_08011954: .4byte gUnknown_8703EA8
_08011958:
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08011978 @ =sub_0801197C
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0801197E
	.align 2, 0
_08011978: .4byte _0801197C
_0801197C: @ 0x0801197C
	b _08011998
_0801197E:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_08007CF0
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08011998:
	bl sub_080443CC
_0801199C:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_080118B4

	thumb_func_start sub_080119AC
sub_080119AC: @ 0x080119AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	add r7, sp, #0xc
	str r0, [r7, #0x30]
	str r1, [r7, #0x34]
	str r2, [r7, #0x38]
	str r3, [r7, #0x3c]
	bl sub_0804441C
	str r0, [r7, #0x40]
	ldr r0, [r7, #0x34]
	cmp r0, #0
	beq _080119D6
	ldr r0, [r7, #0x30]
	adds r0, #0x7c
	ldr r1, [r7, #0x30]
	str r0, [r1]
_080119D6:
	ldr r0, [sp, #0x70]
	str r0, [sp]
	ldr r0, [sp, #0x74]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	ldr r0, [r7, #0x30]
	movs r1, #0
	ldr r2, [r7, #0x38]
	ldr r3, [r7, #0x3c]
	bl sub_08007D54
	ldr r2, [r7, #0x40]
	adds r2, #4
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08011A0C @ =sub_08011A10
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08011A12
	.align 2, 0
_08011A0C: .4byte _08011A10
_08011A10: @ 0x08011A10
	b _08011A6C
_08011A12:
	str r7, [r2]
	ldr r0, _08011A68 @ =gUnknown_8703EA8
	ldr r1, [r7, #0x30]
	str r0, [r1, #0x30]
	movs r1, #0
	ldr r0, [r7, #0x30]
	str r1, [r0, #0x60]
	str r1, [r0, #0x64]
	adds r2, r0, #0
	adds r2, #0x6a
	movs r0, #1
	strh r0, [r2]
	ldr r2, [r7, #0x30]
	adds r2, #0x72
	strh r0, [r2]
	ldr r0, [r7, #0x30]
	adds r0, #0x68
	strh r1, [r0]
	ldr r0, [r7, #0x30]
	adds r0, #0x70
	strh r1, [r0]
	ldr r0, [r7, #0x30]
	str r1, [r0, #0x6c]
	str r1, [r0, #0x74]
	movs r1, #1
	bl sub_08001798
	bl sub_08000D84
	adds r1, r0, #0
	ldr r0, [r7, #0x30]
	str r1, [r0, #0x78]
	movs r2, #0xc0
	lsls r2, r2, #2
	bl sub_08002810
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, [r7, #0x30]
	b _08011AB0
	.align 2, 0
_08011A68: .4byte gUnknown_8703EA8
_08011A6C:
	ldr r2, [r7, #0x40]
	adds r2, #4
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08011A8C @ =sub_08011A90
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08011A92
	.align 2, 0
_08011A8C: .4byte _08011A90
_08011A90: @ 0x08011A90
	b _08011AAC
_08011A92:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_08007CF0
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08011AAC:
	bl sub_080443CC
_08011AB0:
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_080119AC

	thumb_func_start sub_08011AC0
sub_08011AC0: @ 0x08011AC0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08007C38
	ldr r0, [r4, #0x60]
	ldr r1, [r4, #0x64]
	adds r0, r0, r1
	str r0, [r4, #0x60]
	ldr r1, [r4, #0x78]
	asrs r0, r0, #8
	strh r0, [r1, #4]
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x6c]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r1, [r4, #0x78]
	asrs r0, r0, #8
	strh r0, [r1]
	ldr r0, [r4, #0x70]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x70]
	ldr r1, [r4, #0x78]
	asrs r0, r0, #8
	strh r0, [r1, #2]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08011AC0

	thumb_func_start sub_08011AF8
sub_08011AF8: @ 0x08011AF8
	push {r4, lr}
	adds r4, r1, #0
	b _08011B52
_08011AFE:
	ldr r0, [r4, #0x10]
	ldrb r3, [r0]
	adds r1, r3, #0
	adds r0, #1
	str r0, [r4, #0x10]
	cmp r3, #0xbf
	bls _08011B2C
	movs r0, #0x38
	ands r0, r3
	lsrs r0, r0, #1
	ldr r1, _08011B28 @ =gUnknown_85EBD98
	adds r0, r0, r1
	movs r1, #7
	ands r3, r1
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r3, #0
	bl _call_via_r2
	b _08011B52
	.align 2, 0
_08011B28: .4byte gUnknown_85EBD98
_08011B2C:
	cmp r3, #0x67
	bls _08011B44
	lsls r0, r3, #2
	ldr r1, _08011B40 @ =gUnknown_85EC7D4
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	b _08011B52
	.align 2, 0
_08011B40: .4byte gUnknown_85EC7D4
_08011B44:
	lsls r0, r1, #2
	ldr r1, _08011B60 @ =gUnknown_85EBBF8
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
_08011B52:
	ldrh r0, [r4, #0x3a]
	cmp r0, #0
	beq _08011AFE
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011B60: .4byte gUnknown_85EBBF8
	thumb_func_end sub_08011AF8

	thumb_func_start sub_08011B64
sub_08011B64: @ 0x08011B64
	push {lr}
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	ldr r1, [r0, #0x78]
	bl sub_08002810
	pop {r0}
	bx r0
	thumb_func_end sub_08011B64

	thumb_func_start sub_08011B74
sub_08011B74: @ 0x08011B74
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _08011BA0 @ =gUnknown_8703EA8
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x78]
	bl sub_08000F2C
	adds r0, r5, #0
	movs r1, #0
	bl sub_08007CF0
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08011B9A
	adds r0, r5, #0
	bl sub_080046C0
_08011B9A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011BA0: .4byte gUnknown_8703EA8
	thumb_func_end sub_08011B74

	thumb_func_start sub_08011BA4
sub_08011BA4: @ 0x08011BA4
	adds r2, r0, #0
	movs r1, #0
	str r1, [r2, #0x60]
	str r1, [r2, #0x64]
	adds r3, r2, #0
	adds r3, #0x6a
	movs r0, #1
	strh r0, [r3]
	adds r3, #8
	strh r0, [r3]
	adds r0, r2, #0
	adds r0, #0x68
	strh r1, [r0]
	adds r0, #8
	strh r1, [r0]
	str r1, [r2, #0x6c]
	str r1, [r2, #0x74]
	bx lr
	thumb_func_end sub_08011BA4

	thumb_func_start sub_08011BC8
sub_08011BC8: @ 0x08011BC8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r5, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08008F78
	ldr r1, [r4, #0x10]
	adds r1, #2
	str r1, [r4, #0x10]
	ldr r3, _08011C08 @ =gUnknown_20328C8
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #4
	adds r2, r3, #0
	adds r2, #0x1c
	adds r2, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r2]
	adds r3, #0x38
	adds r1, r1, r3
	ldr r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011C08: .4byte gUnknown_20328C8
	thumb_func_end sub_08011BC8

	thumb_func_start sub_08011C0C
sub_08011C0C: @ 0x08011C0C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r5, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08008F78
	ldr r1, [r4, #0x10]
	adds r1, #2
	str r1, [r4, #0x10]
	ldr r3, _08011C4C @ =gUnknown_20328C8
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #4
	adds r2, r3, #0
	adds r2, #0x18
	adds r2, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r2]
	adds r3, #0x38
	adds r1, r1, r3
	ldr r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011C4C: .4byte gUnknown_20328C8
	thumb_func_end sub_08011C0C

	thumb_func_start sub_08011C50
sub_08011C50: @ 0x08011C50
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r5, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08008F78
	ldr r1, [r4, #0x10]
	adds r1, #2
	str r1, [r4, #0x10]
	ldr r3, _08011C90 @ =gUnknown_20328C8
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #4
	adds r2, r3, #0
	adds r2, #0x14
	adds r2, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r2]
	adds r3, #0x38
	adds r1, r1, r3
	ldr r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011C90: .4byte gUnknown_20328C8
	thumb_func_end sub_08011C50

	thumb_func_start sub_08011C94
sub_08011C94: @ 0x08011C94
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r5, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08008F78
	ldr r1, [r4, #0x10]
	adds r1, #2
	str r1, [r4, #0x10]
	ldr r3, _08011CD4 @ =gUnknown_20328C8
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #4
	adds r2, r3, #0
	adds r2, #0x10
	adds r2, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r2]
	adds r3, #0x38
	adds r1, r1, r3
	ldr r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011CD4: .4byte gUnknown_20328C8
	thumb_func_end sub_08011C94

	thumb_func_start sub_08011CD8
sub_08011CD8: @ 0x08011CD8
	ldr r1, [r0, #0x10]
	ldrb r2, [r1]
	adds r1, #1
	str r1, [r0, #0x10]
	ldr r3, _08011D0C @ =gUnknown_20328C8
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r0, r3, #0
	adds r0, #0x2c
	adds r0, r1, r0
	movs r2, #0
	str r2, [r0]
	adds r0, r3, #0
	adds r0, #0x34
	adds r0, r1, r0
	str r2, [r0]
	adds r0, r3, #0
	adds r0, #0x38
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_08011D0C: .4byte gUnknown_20328C8
	thumb_func_end sub_08011CD8

	thumb_func_start sub_08011D10
sub_08011D10: @ 0x08011D10
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r5, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08008F78
	ldr r1, [r4, #0x10]
	adds r1, #2
	str r1, [r4, #0x10]
	ldr r3, _08011D58 @ =gUnknown_20328C8
	lsls r2, r5, #2
	adds r2, r2, r5
	lsls r2, r2, #4
	adds r1, r3, #0
	adds r1, #0x2c
	adds r1, r2, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r1]
	adds r1, r3, #0
	adds r1, #0x34
	adds r1, r2, r1
	str r0, [r1]
	adds r0, r3, #0
	adds r0, #0x38
	adds r2, r2, r0
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011D58: .4byte gUnknown_20328C8
	thumb_func_end sub_08011D10

	thumb_func_start sub_08011D5C
sub_08011D5C: @ 0x08011D5C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r5, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08008F78
	ldr r1, [r4, #0x10]
	adds r1, #2
	str r1, [r4, #0x10]
	ldr r3, _08011D94 @ =gUnknown_20328C8
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #4
	adds r2, r3, #0
	adds r2, #0x28
	adds r2, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r2]
	adds r3, #0x30
	adds r1, r1, r3
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011D94: .4byte gUnknown_20328C8
	thumb_func_end sub_08011D5C

	thumb_func_start sub_08011D98
sub_08011D98: @ 0x08011D98
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r5, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08008F78
	ldr r1, [r4, #0x10]
	adds r1, #2
	str r1, [r4, #0x10]
	ldr r4, _08011DDC @ =gUnknown_20328C8
	lsls r2, r5, #2
	adds r2, r2, r5
	lsls r2, r2, #4
	adds r3, r4, #0
	adds r3, #0x34
	adds r3, r2, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r3]
	adds r1, r1, r0
	str r1, [r3]
	adds r4, #0x38
	adds r2, r2, r4
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011DDC: .4byte gUnknown_20328C8
	thumb_func_end sub_08011D98

	thumb_func_start sub_08011DE0
sub_08011DE0: @ 0x08011DE0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r5, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08008F78
	ldr r1, [r4, #0x10]
	adds r1, #2
	str r1, [r4, #0x10]
	ldr r3, _08011E20 @ =gUnknown_20328C8
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #4
	adds r2, r3, #0
	adds r2, #0x34
	adds r2, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r2]
	adds r3, #0x38
	adds r1, r1, r3
	ldr r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011E20: .4byte gUnknown_20328C8
	thumb_func_end sub_08011DE0

	thumb_func_start sub_08011E24
sub_08011E24: @ 0x08011E24
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r5, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08008F78
	ldr r1, [r4, #0x10]
	adds r1, #2
	str r1, [r4, #0x10]
	ldr r3, _08011E64 @ =gUnknown_20328C8
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #4
	adds r2, r3, #0
	adds r2, #0x30
	adds r2, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r2]
	adds r3, #0x38
	adds r1, r1, r3
	ldr r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011E64: .4byte gUnknown_20328C8
	thumb_func_end sub_08011E24

	thumb_func_start sub_08011E68
sub_08011E68: @ 0x08011E68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r5, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08008F78
	ldr r1, [r4, #0x10]
	adds r1, #2
	str r1, [r4, #0x10]
	ldr r4, _08011EAC @ =gUnknown_20328C8
	lsls r2, r5, #2
	adds r2, r2, r5
	lsls r2, r2, #4
	adds r3, r4, #0
	adds r3, #0x2c
	adds r3, r2, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r3]
	adds r1, r1, r0
	str r1, [r3]
	adds r4, #0x38
	adds r2, r2, r4
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011EAC: .4byte gUnknown_20328C8
	thumb_func_end sub_08011E68

	thumb_func_start sub_08011EB0
sub_08011EB0: @ 0x08011EB0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r5, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08008F78
	ldr r1, [r4, #0x10]
	adds r1, #2
	str r1, [r4, #0x10]
	ldr r3, _08011EF0 @ =gUnknown_20328C8
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #4
	adds r2, r3, #0
	adds r2, #0x2c
	adds r2, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r2]
	adds r3, #0x38
	adds r1, r1, r3
	ldr r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011EF0: .4byte gUnknown_20328C8
	thumb_func_end sub_08011EB0

	thumb_func_start sub_08011EF4
sub_08011EF4: @ 0x08011EF4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r5, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08008F78
	ldr r1, [r4, #0x10]
	adds r1, #2
	str r1, [r4, #0x10]
	ldr r3, _08011F34 @ =gUnknown_20328C8
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #4
	adds r2, r3, #0
	adds r2, #0x28
	adds r2, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r2]
	adds r3, #0x38
	adds r1, r1, r3
	ldr r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011F34: .4byte gUnknown_20328C8
	thumb_func_end sub_08011EF4

	thumb_func_start sub_08011F38
sub_08011F38: @ 0x08011F38
	ldr r1, [r0, #0x10]
	ldrb r2, [r1]
	adds r1, #1
	str r1, [r0, #0x10]
	ldr r3, _08011F60 @ =gUnknown_20328C8
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r1, r0
	movs r2, #0
	str r2, [r0]
	adds r3, #0x38
	adds r1, r1, r3
	ldr r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_08011F60: .4byte gUnknown_20328C8
	thumb_func_end sub_08011F38

	thumb_func_start sub_08011F64
sub_08011F64: @ 0x08011F64
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r5, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08008F78
	ldr r1, [r4, #0x10]
	adds r1, #2
	str r1, [r4, #0x10]
	ldr r4, _08011FA8 @ =gUnknown_20328C8
	lsls r2, r5, #2
	adds r2, r2, r5
	lsls r2, r2, #4
	adds r3, r4, #0
	adds r3, #0x24
	adds r3, r2, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r3]
	adds r1, r1, r0
	str r1, [r3]
	adds r4, #0x38
	adds r2, r2, r4
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011FA8: .4byte gUnknown_20328C8
	thumb_func_end sub_08011F64

	thumb_func_start sub_08011FAC
sub_08011FAC: @ 0x08011FAC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldrb r5, [r0]
	adds r0, #1
	str r0, [r4, #0x10]
	adds r0, r4, #0
	bl sub_08008F78
	ldr r1, [r4, #0x10]
	adds r1, #2
	str r1, [r4, #0x10]
	ldr r3, _08011FEC @ =gUnknown_20328C8
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #4
	adds r2, r3, #0
	adds r2, #0x24
	adds r2, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r2]
	adds r3, #0x38
	adds r1, r1, r3
	ldr r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011FEC: .4byte gUnknown_20328C8
	thumb_func_end sub_08011FAC

	thumb_func_start sub_08011FF0
sub_08011FF0: @ 0x08011FF0
	push {r4, lr}
	ldr r1, [r0, #0x10]
	ldrb r2, [r1]
	adds r1, #1
	str r1, [r0, #0x10]
	ldrb r4, [r1]
	adds r1, #1
	str r1, [r0, #0x10]
	ldr r0, _08012024 @ =gUnknown_20328C8
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r2, r1, r0
	movs r3, #0
	strh r4, [r2, #0x22]
	strh r3, [r2, #0x20]
	adds r0, #0x38
	adds r1, r1, r0
	ldr r0, [r1]
	movs r2, #0x10
	orrs r0, r2
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08012024: .4byte gUnknown_20328C8
	thumb_func_end sub_08011FF0

	thumb_func_start sub_08012028
sub_08012028: @ 0x08012028
	ldr r1, [r0, #8]
	movs r2, #0
	str r2, [r1, #0x6c]
	ldr r0, [r0, #8]
	str r2, [r0, #0x74]
	bx lr
	thumb_func_end sub_08012028

	thumb_func_start sub_08012034
sub_08012034: @ 0x08012034
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08008F78
	ldr r1, [r4, #0x10]
	adds r1, #2
	str r1, [r4, #0x10]
	ldr r2, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r2, #0x6c]
	adds r1, r1, r0
	str r1, [r2, #0x6c]
	ldr r2, [r4, #8]
	ldr r1, [r2, #0x74]
	adds r1, r1, r0
	str r1, [r2, #0x74]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08012034

	thumb_func_start sub_0801205C
sub_0801205C: @ 0x0801205C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08008F78
	ldr r1, [r4, #0x10]
	adds r1, #2
	str r1, [r4, #0x10]
	ldr r1, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r1, #0x6c]
	ldr r1, [r4, #8]
	str r0, [r1, #0x74]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0801205C

	thumb_func_start sub_0801207C
sub_0801207C: @ 0x0801207C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08008F78
	ldr r1, [r4, #0x10]
	adds r1, #2
	str r1, [r4, #0x10]
	ldr r1, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r1, #0x68]
	ldr r1, [r4, #8]
	str r0, [r1, #0x70]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0801207C

	thumb_func_start sub_0801209C
sub_0801209C: @ 0x0801209C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08008F78
	ldr r2, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r2, #0x74]
	adds r1, r1, r0
	str r1, [r2, #0x74]
	ldr r0, [r4, #0x10]
	adds r0, #2
	str r0, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0801209C

	thumb_func_start sub_080120BC
sub_080120BC: @ 0x080120BC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08008F78
	ldr r1, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r1, #0x74]
	ldr r0, [r4, #0x10]
	adds r0, #2
	str r0, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_080120BC

	thumb_func_start sub_080120D8
sub_080120D8: @ 0x080120D8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08008F78
	ldr r1, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r1, #0x70]
	ldr r0, [r4, #0x10]
	adds r0, #2
	str r0, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_080120D8

	thumb_func_start sub_080120F4
sub_080120F4: @ 0x080120F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08008F78
	ldr r2, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r2, #0x6c]
	adds r1, r1, r0
	str r1, [r2, #0x6c]
	ldr r0, [r4, #0x10]
	adds r0, #2
	str r0, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_080120F4

	thumb_func_start sub_08012114
sub_08012114: @ 0x08012114
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08008F78
	ldr r1, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r1, #0x6c]
	ldr r0, [r4, #0x10]
	adds r0, #2
	str r0, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08012114

	thumb_func_start sub_08012130
sub_08012130: @ 0x08012130
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08008F78
	ldr r1, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r1, #0x68]
	ldr r0, [r4, #0x10]
	adds r0, #2
	str r0, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08012130

	thumb_func_start sub_0801214C
sub_0801214C: @ 0x0801214C
	ldr r1, [r0, #8]
	movs r0, #0
	str r0, [r1, #0x64]
	bx lr
	thumb_func_end sub_0801214C

	thumb_func_start sub_08012154
sub_08012154: @ 0x08012154
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08008F78
	ldr r2, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r2, #0x64]
	adds r1, r1, r0
	str r1, [r2, #0x64]
	ldr r0, [r4, #0x10]
	adds r0, #2
	str r0, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08012154

	thumb_func_start sub_08012174
sub_08012174: @ 0x08012174
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08008F78
	ldr r1, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	str r0, [r1, #0x64]
	ldr r0, [r4, #0x10]
	adds r0, #2
	str r0, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08012174

	thumb_func_start sub_08012190
sub_08012190: @ 0x08012190
	push {r4, lr}
	ldr r2, [r0, #8]
	ldr r1, [r0, #0x10]
	ldrb r3, [r1]
	adds r2, #0x62
	movs r4, #0
	strh r3, [r2]
	adds r1, #1
	str r1, [r0, #0x10]
	ldr r0, [r0, #8]
	adds r0, #0x60
	strh r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08012190

	thumb_func_start sub_080121B0
sub_080121B0: @ 0x080121B0
	push {lr}
	ldr r2, [r0, #0x10]
	ldrb r3, [r2]
	lsls r1, r3, #8
	adds r2, #1
	str r2, [r0, #0x10]
	ldr r0, [r0, #8]
	bl sub_08011B64
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080121B0

	thumb_func_start sub_080121C8
sub_080121C8: @ 0x080121C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x48
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x67
	bne _080121F8
	ldr r0, _080121F0 @ =gUnknown_20293BC
	ldr r0, [r0, #0x1c]
	ldr r1, _080121F4 @ =gUnknown_2025F68
	ldr r1, [r1]
	bl sub_08002350
	b _08012206
	.align 2, 0
_080121F0: .4byte gUnknown_20293BC
_080121F4: .4byte gUnknown_2025F68
_080121F8:
	ldr r0, _08012270 @ =gUnknown_20293BC
	ldr r0, [r0, #0x1c]
	lsls r1, r1, #5
	ldr r2, _08012274 @ =gUnknown_860F73C
	adds r1, r1, r2
	bl sub_08002350
_08012206:
	ldr r0, _08012270 @ =gUnknown_20293BC
	ldr r0, [r0, #0x1c]
	bl sub_08002428
	ldr r1, _08012278 @ =gUnknown_860587C
	lsls r4, r4, #0x10
	mov ip, r4
	mov r6, sp
	adds r6, #0x2a
	ldr r7, _0801227C @ =0x0000FFFF
	add r3, sp, #0x28
	add r2, sp, #8
	movs r4, #0xf
_08012220:
	ldrh r0, [r1]
	strh r0, [r3]
	adds r0, r7, #0
	ldrh r5, [r1]
	ands r0, r5
	strh r0, [r2]
	adds r1, #2
	adds r3, #2
	adds r2, #2
	subs r4, #1
	cmp r4, #0
	bge _08012220
	mov r0, ip
	asrs r1, r0, #0x10
	cmp r1, #0
	beq _08012258
	mov r0, sp
	adds r0, #0xa
	str r1, [sp]
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	movs r1, #0
	adds r2, r6, #0
	movs r3, #6
	bl sub_08015B54
_08012258:
	adds r0, r6, #0
	movs r1, #3
	movs r2, #1
	movs r3, #0xc
	bl sub_08000920
	add sp, #0x48
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012270: .4byte gUnknown_20293BC
_08012274: .4byte gUnknown_860F73C
_08012278: .4byte gUnknown_860587C
_0801227C: .4byte 0x0000FFFF
	thumb_func_end sub_080121C8

	thumb_func_start sub_08012280
sub_08012280: @ 0x08012280
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x48
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0801231E
	movs r4, #0
	adds r7, r0, #0
	add r6, sp, #0x28
	lsls r1, r1, #0x10
	mov r8, r1
	mov sb, r6
_080122A0:
	lsls r1, r4, #5
	ldr r0, _0801232C @ =gUnknown_8605A1C
	adds r1, r1, r0
	adds r5, r4, #1
	add r2, sp, #8
	movs r3, #0xf
_080122AC:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _080122AC
	asrs r0, r7, #0x10
	str r0, [sp]
	mov r1, r8
	asrs r0, r1, #0x10
	str r0, [sp, #4]
	add r0, sp, #8
	movs r1, #0
	mov r2, sb
	movs r3, #0x10
	bl sub_08015B54
	mov r0, sb
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0x20
	bl LoadPalette
	adds r4, r5, #0
	cmp r4, #1
	ble _080122A0
	ldr r1, _08012330 @ =gUnknown_860593C
	add r2, sp, #8
	movs r3, #0xf
_080122E8:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _080122E8
	asrs r0, r7, #0x10
	str r0, [sp]
	mov r1, r8
	asrs r0, r1, #0x10
	str r0, [sp, #4]
	add r0, sp, #8
	movs r1, #0
	adds r2, r6, #0
	movs r3, #0x10
	bl sub_08015B54
	add r0, sp, #8
	ldrh r0, [r0, #0x1e]
	strh r0, [r6, #0x1e]
	adds r0, r6, #0
	movs r1, #9
	movs r2, #0
	movs r3, #0x20
	bl sub_08000920
_0801231E:
	add sp, #0x48
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801232C: .4byte gUnknown_8605A1C
_08012330: .4byte gUnknown_860593C
	thumb_func_end sub_08012280

	thumb_func_start sub_08012334
sub_08012334: @ 0x08012334
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	add r7, sp, #8
	bl sub_0804441C
	str r0, [r7, #0x48]
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x44]
	ldr r2, [r7, #0x48]
	adds r2, #4
	ldr r1, [r7, #0x48]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08012370 @ =sub_08012374
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _08012376
	.align 2, 0
_08012370: .4byte _08012374
_08012374: @ 0x08012374
	b _080126A8
_08012376:
	str r7, [r2]
	ldr r2, _08012600 @ =gUnknown_863104A
	movs r0, #0x10
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [r7, #0x44]
	movs r1, #1
	movs r3, #0x10
	bl sub_08002504
	ldr r4, _08012604 @ =gUnknown_2024938
	str r0, [r4]
	ldr r5, [r7, #0x48]
	ldr r0, [r5, #4]
	ldr r0, [r0]
	str r0, [r5, #4]
	adds r1, r4, #0
	ldr r0, [r1]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0
	movs r2, #0xa0
	bl _call_via_r3
	ldr r4, _08012604 @ =gUnknown_2024938
	ldr r0, [r4]
	bl sub_080023D8
	movs r5, #0
	str r5, [r7, #0x40]
	ldr r0, _08012608 @ =gUnknown_85EC9F8
	str r0, [r7, #0x4c]
_080123BE:
	movs r0, #0x1a
	ldr r2, [r7, #0x40]
	adds r1, r2, #0
	muls r1, r0, r1
	str r1, [r7, #0x50]
	ldr r3, [r7, #0x4c]
	adds r1, r1, r3
	movs r4, #0
	ldrsh r0, [r1, r4]
	ldr r5, _0801260C @ =0x000003E7
	cmp r0, r5
	beq _080123F0
	adds r1, r3, #0
	adds r1, #2
	ldr r3, [r7, #0x50]
	adds r1, r3, r1
	movs r4, #0
	ldrsh r1, [r1, r4]
	ldr r2, [r7, #0x4c]
	adds r2, #4
	adds r2, r3, r2
	movs r5, #0
	ldrsh r2, [r2, r5]
	bl sub_080121C8
_080123F0:
	ldr r0, [r7, #0x4c]
	adds r0, #6
	ldr r2, [r7, #0x50]
	adds r1, r2, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r4, _0801260C @ =0x000003E7
	cmp r0, r4
	beq _08012470
	adds r5, r0, #0
	str r5, [r7, #0x54]
	ldr r1, _08012610 @ =gUnknown_20293BC
	ldr r0, [r1, #8]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r5, #0
	movs r2, #0
	bl _call_via_r3
	ldr r4, _08012610 @ =gUnknown_20293BC
	ldr r0, [r4, #0xc]
	ldr r2, [r0, #0x30]
	movs r5, #0x10
	ldrsh r1, [r2, r5]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	ldr r1, [r7, #0x54]
	movs r2, #0
	bl _call_via_r3
	ldr r0, [r4, #0x10]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	ldr r1, [r7, #0x54]
	movs r2, #0
	bl _call_via_r3
	ldr r0, [r4, #0x14]
	ldr r2, [r0, #0x30]
	movs r4, #0x10
	ldrsh r1, [r2, r4]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	ldr r1, [r7, #0x54]
	movs r2, #0
	bl _call_via_r3
	ldr r5, _08012610 @ =gUnknown_20293BC
	ldr r0, [r5, #4]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	ldr r1, [r7, #0x54]
	movs r2, #0
	bl _call_via_r3
_08012470:
	ldr r0, [r7, #0x4c]
	adds r0, #8
	ldr r4, [r7, #0x50]
	adds r1, r4, r0
	movs r5, #0
	ldrsh r0, [r1, r5]
	ldr r2, _0801260C @ =0x000003E7
	cmp r0, r2
	beq _080124B0
	adds r1, r0, #0
	lsls r0, r1, #3
	subs r0, r0, r1
	str r0, [r7, #0x58]
	lsls r3, r0, #2
	subs r3, r3, r1
	lsls r3, r3, #5
	ldr r0, _08012614 @ =gUnknown_8605C1C
	adds r3, r3, r0
	movs r0, #0
	movs r1, #0x59
	movs r2, #0x1b
	bl sub_080045CC
	ldr r4, [r7, #0x58]
	lsls r3, r4, #7
	ldr r0, _08012618 @ =gUnknown_86087FC
	adds r3, r3, r0
	movs r0, #0
	movs r1, #0x74
	movs r2, #0x1c
	bl sub_080045CC
_080124B0:
	ldr r0, [r7, #0x4c]
	adds r0, #0xa
	ldr r5, [r7, #0x50]
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, _0801260C @ =0x000003E7
	cmp r0, r3
	beq _080124EC
	adds r4, r0, #0
	str r4, [r7, #0x5c]
	ldr r1, _08012610 @ =gUnknown_20293BC
	ldr r0, [r1, #0x18]
	adds r1, r7, #0
	adds r1, #0x30
	adds r2, r7, #0
	adds r2, #0x34
	bl sub_080023E4
	ldr r2, _08012610 @ =gUnknown_20293BC
	ldr r0, [r2, #0x18]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [r7, #0x30]
	ldr r3, [r2, #0xc]
	ldr r2, [r7, #0x5c]
	bl _call_via_r3
_080124EC:
	ldr r0, [r7, #0x4c]
	adds r0, #0xc
	ldr r4, [r7, #0x50]
	adds r1, r4, r0
	movs r5, #0
	ldrsh r0, [r1, r5]
	ldr r2, _0801260C @ =0x000003E7
	cmp r0, r2
	beq _08012502
	bl sub_080129A0
_08012502:
	ldr r0, [r7, #0x4c]
	adds r0, #0xe
	ldr r4, [r7, #0x50]
	adds r1, r4, r0
	movs r5, #0
	ldrsh r0, [r1, r5]
	ldr r2, _0801260C @ =0x000003E7
	cmp r0, r2
	beq _0801251C
	adds r1, r0, #0
	ldr r0, _0801261C @ =gUnknown_2027824
	bl sub_080159A0
_0801251C:
	ldr r0, [r7, #0x4c]
	adds r0, #0x10
	ldr r4, [r7, #0x50]
	adds r1, r4, r0
	movs r5, #0
	ldrsh r0, [r1, r5]
	ldr r2, _0801260C @ =0x000003E7
	cmp r0, r2
	beq _08012532
	bl sub_08015950
_08012532:
	ldr r0, [r7, #0x4c]
	adds r0, #0x12
	ldr r4, [r7, #0x50]
	adds r1, r4, r0
	movs r5, #0
	ldrsh r0, [r1, r5]
	ldr r2, _0801260C @ =0x000003E7
	cmp r0, r2
	beq _0801254C
	ldrh r1, [r1]
	ldr r0, _08012620 @ =gUnknown_202784D
	bl sub_08015A08
_0801254C:
	ldr r3, [r7, #0x50]
	ldr r4, _08012624 @ =gUnknown_85ECA0C
	adds r1, r3, r4
	movs r5, #0
	ldrsh r0, [r1, r5]
	ldr r2, _0801260C @ =0x000003E7
	cmp r0, r2
	beq _08012590
	adds r3, r0, #0
	ldr r5, _08012610 @ =gUnknown_20293BC
	ldr r2, [r5, #0x20]
	cmp r2, #0
	beq _08012590
	ldr r1, [r2, #0x30]
	movs r4, #0x10
	ldrsh r0, [r1, r4]
	adds r0, r2, r0
	str r3, [r7, #0x60]
	ldr r3, [r1, #0x14]
	ldr r1, [r7, #0x60]
	movs r2, #0
	bl _call_via_r3
	ldr r0, _08012628 @ =gUnknown_2029424
	ldr r0, [r0]
	ldr r2, [r0, #0x30]
	movs r5, #0x10
	ldrsh r1, [r2, r5]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	ldr r1, [r7, #0x60]
	movs r2, #0
	bl _call_via_r3
_08012590:
	movs r0, #0x1a
	ldr r1, [r7, #0x40]
	muls r0, r1, r0
	ldr r2, _0801262C @ =gUnknown_85ECA0E
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r4, _0801260C @ =0x000003E7
	cmp r0, r4
	beq _080125D8
	adds r3, r0, #0
	ldr r0, _08012610 @ =gUnknown_20293BC
	ldr r2, [r0, #0x2c]
	cmp r2, #0
	beq _080125D8
	ldr r1, [r2, #0x30]
	movs r4, #0x10
	ldrsh r0, [r1, r4]
	adds r0, r2, r0
	str r3, [r7, #0x64]
	ldr r3, [r1, #0x14]
	ldr r1, [r7, #0x64]
	movs r2, #0
	bl _call_via_r3
	ldr r0, _08012630 @ =gUnknown_202942C
	ldr r0, [r0]
	ldr r2, [r0, #0x30]
	movs r5, #0x10
	ldrsh r1, [r2, r5]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	ldr r1, [r7, #0x64]
	movs r2, #0
	bl _call_via_r3
_080125D8:
	movs r0, #0x1a
	ldr r1, [r7, #0x40]
	muls r0, r1, r0
	ldr r2, _08012634 @ =gUnknown_85ECA10
	adds r0, r0, r2
	str r0, [r7, #0x68]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0x6f
	bne _08012640
	ldr r4, _08012638 @ =gUnknown_2029428
	ldr r0, [r4]
	ldr r1, _0801263C @ =gUnknown_86115DC
	bl sub_08002350
	ldr r0, [r4]
	bl sub_08002428
	b _08012670
	.align 2, 0
_08012600: .4byte gUnknown_863104A
_08012604: .4byte gUnknown_2024938
_08012608: .4byte gUnknown_85EC9F8
_0801260C: .4byte 0x000003E7
_08012610: .4byte gUnknown_20293BC
_08012614: .4byte gUnknown_8605C1C
_08012618: .4byte gUnknown_86087FC
_0801261C: .4byte gUnknown_2027824
_08012620: .4byte gUnknown_202784D
_08012624: .4byte gUnknown_85ECA0C
_08012628: .4byte gUnknown_2029424
_0801262C: .4byte gUnknown_85ECA0E
_08012630: .4byte gUnknown_202942C
_08012634: .4byte gUnknown_85ECA10
_08012638: .4byte gUnknown_2029428
_0801263C: .4byte gUnknown_86115DC
_08012640:
	ldr r5, _0801269C @ =0x000003E7
	cmp r0, r5
	beq _08012670
	ldr r1, _080126A0 @ =gUnknown_2029428
	ldr r0, [r1]
	adds r1, r7, #0
	adds r1, #0x38
	adds r2, r7, #0
	adds r2, #0x3c
	bl sub_080023E4
	ldr r2, _080126A0 @ =gUnknown_2029428
	ldr r0, [r2]
	ldr r3, [r0, #0x30]
	movs r4, #8
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	ldr r1, [r7, #0x38]
	ldr r5, [r7, #0x68]
	movs r4, #0
	ldrsh r2, [r5, r4]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_08012670:
	ldr r5, [r7, #0x40]
	adds r5, #1
	str r5, [r7, #0x40]
	movs r0, #1
	bl sub_080053D8
	cmp r5, #0x21
	bgt _08012682
	b _080123BE
_08012682:
	ldr r1, _080126A4 @ =gUnknown_2024938
	ldr r0, [r1]
	bl sub_080023C4
	ldr r2, _080126A4 @ =gUnknown_2024938
	ldr r0, [r2]
	cmp r0, #0
	beq _080126F0
	movs r1, #3
	bl sub_080018D8
	b _080126F0
	.align 2, 0
_0801269C: .4byte 0x000003E7
_080126A0: .4byte gUnknown_2029428
_080126A4: .4byte gUnknown_2024938
_080126A8:
	ldr r2, [r7, #0x48]
	adds r2, #4
	ldr r3, [r7, #0x48]
	ldr r0, [r3, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _080126C8 @ =sub_080126CC
	str r0, [r1, #4]
	mov r4, sp
	str r4, [r1, #8]
	b _080126CE
	.align 2, 0
_080126C8: .4byte _080126CC
_080126CC: @ 0x080126CC
	b _080126EC
_080126CE:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _080126E0
	ldr r0, [r7, #0x44]
	bl sub_080046C0
_080126E0:
	ldr r5, [r7, #0x48]
	ldr r0, [r5, #4]
	ldr r0, [r0]
	str r0, [r5, #4]
	bl sub_0804449C
_080126EC:
	bl sub_080443CC
_080126F0:
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08012334

	thumb_func_start sub_08012700
sub_08012700: @ 0x08012700
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r0, #0
	mov sb, r0
	ldr r6, _08012920 @ =gUnknown_85ECD6C
	ldr r7, _08012924 @ =0x000003E7
	ldr r1, _08012928 @ =gUnknown_20293BC
	mov r8, r1
	ldr r2, _0801292C @ =gUnknown_2029428
	mov sl, r2
_0801271C:
	movs r0, #0x1a
	mov r5, sb
	muls r5, r0, r5
	adds r1, r5, r6
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, r7
	beq _08012740
	adds r1, r6, #2
	adds r1, r5, r1
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r2, r6, #4
	adds r2, r5, r2
	movs r3, #0
	ldrsh r2, [r2, r3]
	bl sub_080121C8
_08012740:
	adds r0, r6, #6
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, r7
	beq _080127BC
	adds r4, r0, #0
	mov r1, r8
	ldr r0, [r1, #8]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	mov r1, r8
	ldr r0, [r1, #0xc]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	mov r1, r8
	ldr r0, [r1, #0x10]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	mov r1, r8
	ldr r0, [r1, #0x14]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	mov r1, r8
	ldr r0, [r1, #4]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
_080127BC:
	adds r0, r6, #0
	adds r0, #8
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, r7
	beq _080127F4
	lsls r4, r0, #3
	subs r4, r4, r0
	lsls r3, r4, #2
	subs r3, r3, r0
	lsls r3, r3, #5
	ldr r0, _08012930 @ =gUnknown_8605C1C
	adds r3, r3, r0
	movs r0, #0
	movs r1, #0x59
	movs r2, #0x1b
	bl sub_080045CC
	lsls r4, r4, #7
	ldr r0, _08012934 @ =gUnknown_86087FC
	adds r4, r4, r0
	movs r0, #0
	movs r1, #0x74
	movs r2, #0x1c
	adds r3, r4, #0
	bl sub_080045CC
_080127F4:
	adds r0, r6, #0
	adds r0, #0xa
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, r7
	beq _08012826
	adds r4, r0, #0
	mov r1, r8
	ldr r0, [r1, #0x18]
	mov r1, sp
	add r2, sp, #4
	bl sub_080023E4
	mov r2, r8
	ldr r0, [r2, #0x18]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [sp]
	ldr r3, [r2, #0xc]
	adds r2, r4, #0
	bl _call_via_r3
_08012826:
	adds r0, r6, #0
	adds r0, #0xc
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, r7
	beq _08012838
	bl sub_080129A0
_08012838:
	adds r0, r6, #0
	adds r0, #0xe
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, r7
	beq _0801284E
	adds r1, r0, #0
	ldr r0, _08012938 @ =gUnknown_2027824
	bl sub_080159A0
_0801284E:
	adds r0, r6, #0
	adds r0, #0x10
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, r7
	beq _08012860
	bl sub_08015950
_08012860:
	adds r0, r6, #0
	adds r0, #0x12
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, r7
	beq _08012876
	ldrh r1, [r1]
	ldr r0, _0801293C @ =gUnknown_202784D
	bl sub_08015A08
_08012876:
	ldr r3, _08012940 @ =gUnknown_85ECD80
	adds r1, r5, r3
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, r7
	beq _080128B4
	adds r4, r0, #0
	mov r1, r8
	ldr r3, [r1, #0x20]
	cmp r3, #0
	beq _080128B4
	ldr r1, [r3, #0x30]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r3, r0
	ldr r3, [r1, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	ldr r0, _08012944 @ =gUnknown_2029424
	ldr r0, [r0]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
_080128B4:
	movs r0, #0x1a
	mov r5, sb
	muls r5, r0, r5
	adds r0, r5, #0
	ldr r1, _08012948 @ =gUnknown_85ECD82
	adds r4, r0, r1
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, r7
	beq _080128FA
	adds r4, r0, #0
	mov r5, r8
	ldr r2, [r5, #0x2c]
	cmp r2, #0
	beq _080128FA
	ldr r1, [r2, #0x30]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r3, [r1, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	ldr r0, _0801294C @ =gUnknown_202942C
	ldr r0, [r0]
	ldr r2, [r0, #0x30]
	movs r5, #0x10
	ldrsh r1, [r2, r5]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
_080128FA:
	movs r0, #0x1a
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r2, _08012950 @ =gUnknown_85ECD84
	adds r4, r0, r2
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0x6f
	bne _08012958
	mov r5, sl
	ldr r0, [r5]
	ldr r1, _08012954 @ =gUnknown_861125C
	bl sub_08002350
	ldr r0, [r5]
	bl sub_08002428
	b _08012980
	.align 2, 0
_08012920: .4byte gUnknown_85ECD6C
_08012924: .4byte 0x000003E7
_08012928: .4byte gUnknown_20293BC
_0801292C: .4byte gUnknown_2029428
_08012930: .4byte gUnknown_8605C1C
_08012934: .4byte gUnknown_86087FC
_08012938: .4byte gUnknown_2027824
_0801293C: .4byte gUnknown_202784D
_08012940: .4byte gUnknown_85ECD80
_08012944: .4byte gUnknown_2029424
_08012948: .4byte gUnknown_85ECD82
_0801294C: .4byte gUnknown_202942C
_08012950: .4byte gUnknown_85ECD84
_08012954: .4byte gUnknown_861125C
_08012958:
	cmp r0, r7
	beq _08012980
	mov r1, sl
	ldr r0, [r1]
	add r1, sp, #8
	add r2, sp, #0xc
	bl sub_080023E4
	mov r2, sl
	ldr r0, [r2]
	ldr r3, [r0, #0x30]
	movs r5, #8
	ldrsh r1, [r3, r5]
	adds r0, r0, r1
	ldr r1, [sp, #8]
	movs r5, #0
	ldrsh r2, [r4, r5]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_08012980:
	movs r0, #1
	add sb, r0
	bl sub_080053D8
	mov r1, sb
	cmp r1, #0x1c
	bgt _08012990
	b _0801271C
_08012990:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08012700

	thumb_func_start sub_080129A0
sub_080129A0: @ 0x080129A0
	push {r4, r5, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x6f
	bne _080129BC
	ldr r0, _080129B8 @ =gUnknown_202780C
	ldrh r0, [r0, #2]
	bl sub_0800BD9C
	b _08012A20
	.align 2, 0
_080129B8: .4byte gUnknown_202780C
_080129BC:
	ldr r5, _08012A38 @ =gUnknown_2020050
	ldr r0, [r5]
	movs r2, #0xa0
	lsls r2, r2, #1
	movs r1, #0
	bl memset
	lsls r4, r4, #5
	ldr r0, _08012A3C @ =gUnknown_861C5A2
	adds r4, r4, r0
	ldr r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	movs r3, #5
	bl sub_0800E408
	ldr r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #8
	movs r2, #4
	movs r3, #5
	bl sub_0800E408
	ldr r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x10
	movs r2, #4
	movs r3, #5
	bl sub_0800E408
	ldr r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x15
	movs r2, #4
	movs r3, #5
	bl sub_0800E408
	ldr r0, [r5]
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x1a
	movs r2, #4
	movs r3, #5
	bl sub_0800E408
_08012A20:
	ldr r0, _08012A38 @ =gUnknown_2020050
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0x90
	movs r2, #0xa
	bl sub_080045CC
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08012A38: .4byte gUnknown_2020050
_08012A3C: .4byte gUnknown_861C5A2
	thumb_func_end sub_080129A0

	thumb_func_start sub_08012A40
sub_08012A40: @ 0x08012A40
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r8, r4
	adds r5, r2, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0xb
	ldr r0, _08012B1C @ =gUnknown_861C5A2
	adds r6, r3, r0
	ldr r7, _08012B20 @ =gUnknown_2020058
	ldr r0, [r7]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #4
	movs r3, #0xf
	bl sub_0800E408
	adds r5, #8
	ldr r0, [r7]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #4
	movs r3, #0xf
	bl sub_0800E408
	adds r5, #8
	ldr r0, [r7]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #4
	movs r3, #0xf
	bl sub_0800E408
	adds r5, #8
	movs r0, #0xf0
	ands r0, r4
	cmp r0, #0
	beq _08012AAC
	ldr r0, [r7]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #4
	movs r3, #0xf
	bl sub_0800E408
	adds r5, #5
_08012AAC:
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	cmp r1, #0
	beq _08012AC8
	ldr r0, [r7]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #4
	movs r3, #0xf
	bl sub_0800E408
	adds r5, #5
_08012AC8:
	ldr r0, [r7]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #4
	movs r3, #0xf
	bl sub_0800E408
	adds r5, #5
	ldr r0, [r7]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #4
	movs r3, #0xf
	bl sub_0800E408
	adds r5, #4
	ldr r0, [r7]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #4
	movs r3, #0xf
	bl sub_0800E408
	adds r5, #5
	ldr r0, [r7]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #4
	movs r3, #0xf
	bl sub_0800E408
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08012B1C: .4byte gUnknown_861C5A2
_08012B20: .4byte gUnknown_2020058
	thumb_func_end sub_08012A40

	thumb_func_start sub_08012B24
sub_08012B24: @ 0x08012B24
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08012B38
	b _08012DD4
_08012B38:
	ldr r1, _08012BB8 @ =gUnknown_20249BC
	movs r0, #0
	str r0, [r1]
	ldr r1, _08012BBC @ =gUnknown_20249B8
	movs r0, #5
	str r0, [r1]
	ldr r1, _08012BC0 @ =gUnknown_20249B4
	movs r0, #0xa
	str r0, [r1]
	ldr r0, _08012BC4 @ =gUnknown_2027800
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _08012B54
	b _08012CF8
_08012B54:
	ldr r0, _08012BC8 @ =gUnknown_20249C0
	movs r1, #1
	negs r1, r1
	str r1, [r0]
	ldr r1, _08012BCC @ =gUnknown_202940C
	ldr r2, [r1]
	adds r7, r0, #0
	adds r6, r1, #0
	cmp r2, #1
	bne _08012BDC
	ldr r4, _08012BD0 @ =gUnknown_2024940
	ldr r0, _08012BD4 @ =gUnknown_2024968
	mov ip, r0
	ldr r5, _08012BD8 @ =gUnknown_2024990
	movs r0, #8
	movs r2, #0x54
	adds r1, r4, #0
	adds r1, #0x20
	rsbs r3, r0, #0
_08012B7A:
	str r2, [r1]
	adds r2, r2, r3
	subs r1, #4
	subs r0, #1
	cmp r0, #0
	bge _08012B7A
	movs r0, #0x60
	str r0, [r4, #0x20]
	mov r4, ip
	movs r2, #8
	movs r1, #0x98
	adds r0, r4, #0
	adds r0, #0x20
	movs r3, #7
	negs r3, r3
_08012B98:
	str r1, [r0]
	adds r1, r1, r3
	subs r0, #4
	subs r2, #1
	cmp r2, #0
	bge _08012B98
	movs r0, #0xa5
	str r0, [r4, #0x20]
	movs r0, #0xad
	str r0, [r5, #0x10]
	str r0, [r5, #0xc]
	str r0, [r5, #8]
	str r0, [r5, #4]
	str r0, [r5]
	movs r0, #0x14
	b _08012F86
	.align 2, 0
_08012BB8: .4byte gUnknown_20249BC
_08012BBC: .4byte gUnknown_20249B8
_08012BC0: .4byte gUnknown_20249B4
_08012BC4: .4byte gUnknown_2027800
_08012BC8: .4byte gUnknown_20249C0
_08012BCC: .4byte gUnknown_202940C
_08012BD0: .4byte gUnknown_2024940
_08012BD4: .4byte gUnknown_2024968
_08012BD8: .4byte gUnknown_2024990
_08012BDC:
	cmp r2, #3
	bne _08012C3C
	ldr r4, _08012C30 @ =gUnknown_2024940
	ldr r0, _08012C34 @ =gUnknown_2024968
	mov ip, r0
	ldr r5, _08012C38 @ =gUnknown_2024990
	movs r2, #8
	movs r1, #0x51
	adds r0, r4, #0
	adds r0, #0x20
	movs r3, #7
	negs r3, r3
_08012BF4:
	str r1, [r0]
	adds r1, r1, r3
	subs r0, #4
	subs r2, #1
	cmp r2, #0
	bge _08012BF4
	movs r0, #0x60
	str r0, [r4, #0x20]
	mov r4, ip
	movs r0, #8
	movs r2, #0xa0
	adds r1, r4, #0
	adds r1, #0x20
	rsbs r3, r0, #0
_08012C10:
	str r2, [r1]
	adds r2, r2, r3
	subs r1, #4
	subs r0, #1
	cmp r0, #0
	bge _08012C10
	movs r0, #0xad
	str r0, [r4, #0x20]
	str r0, [r5, #0x10]
	str r0, [r5, #0xc]
	str r0, [r5, #8]
	str r0, [r5, #4]
	str r0, [r5]
	movs r0, #0x14
	b _08012F86
	.align 2, 0
_08012C30: .4byte gUnknown_2024940
_08012C34: .4byte gUnknown_2024968
_08012C38: .4byte gUnknown_2024990
_08012C3C:
	subs r0, r2, #5
	cmp r0, #1
	bhi _08012C9C
	ldr r4, _08012C90 @ =gUnknown_2024940
	ldr r0, _08012C94 @ =gUnknown_2024968
	mov ip, r0
	ldr r5, _08012C98 @ =gUnknown_2024990
	movs r0, #8
	movs r3, #0x54
	adds r2, r4, #0
	adds r2, #0x20
	rsbs r1, r0, #0
_08012C54:
	str r3, [r2]
	adds r3, r3, r1
	subs r2, #4
	subs r0, #1
	cmp r0, #0
	bge _08012C54
	movs r0, #0x60
	str r0, [r4, #0x20]
	mov r4, ip
	movs r0, #8
	movs r3, #0xa0
	adds r2, r4, #0
	adds r2, #0x20
	rsbs r1, r0, #0
_08012C70:
	str r3, [r2]
	adds r3, r3, r1
	subs r2, #4
	subs r0, #1
	cmp r0, #0
	bge _08012C70
	movs r0, #0xad
	str r0, [r4, #0x20]
	str r0, [r5, #0x10]
	str r0, [r5, #0xc]
	str r0, [r5, #8]
	str r0, [r5, #4]
	str r0, [r5]
	movs r0, #0x14
	b _08012F18
	.align 2, 0
_08012C90: .4byte gUnknown_2024940
_08012C94: .4byte gUnknown_2024968
_08012C98: .4byte gUnknown_2024990
_08012C9C:
	ldr r4, _08012CEC @ =gUnknown_2024940
	ldr r0, _08012CF0 @ =gUnknown_2024968
	mov ip, r0
	ldr r5, _08012CF4 @ =gUnknown_2024990
	movs r0, #8
	movs r2, #0x54
	adds r1, r4, #0
	adds r1, #0x20
	rsbs r3, r0, #0
_08012CAE:
	str r2, [r1]
	adds r2, r2, r3
	subs r1, #4
	subs r0, #1
	cmp r0, #0
	bge _08012CAE
	movs r0, #0x60
	str r0, [r4, #0x20]
	mov r4, ip
	movs r0, #8
	movs r2, #0xa0
	adds r1, r4, #0
	adds r1, #0x20
	rsbs r3, r0, #0
_08012CCA:
	str r2, [r1]
	adds r2, r2, r3
	subs r1, #4
	subs r0, #1
	cmp r0, #0
	bge _08012CCA
	movs r0, #0xad
	str r0, [r4, #0x20]
	movs r0, #0xa5
	str r0, [r5, #0x10]
	str r0, [r5, #0xc]
	str r0, [r5, #8]
	str r0, [r5, #4]
	str r0, [r5]
	movs r0, #0x19
	b _08012F86
	.align 2, 0
_08012CEC: .4byte gUnknown_2024940
_08012CF0: .4byte gUnknown_2024968
_08012CF4: .4byte gUnknown_2024990
_08012CF8:
	ldr r0, _08012D5C @ =gUnknown_202940C
	ldr r0, [r0]
	cmp r0, #1
	bne _08012D70
	ldr r4, _08012D60 @ =gUnknown_2024940
	ldr r7, _08012D64 @ =gUnknown_20249C0
	ldr r0, _08012D68 @ =gUnknown_2024968
	mov ip, r0
	ldr r5, _08012D6C @ =gUnknown_2024990
	movs r0, #8
	movs r2, #0x54
	adds r1, r4, #0
	adds r1, #0x20
	rsbs r3, r0, #0
_08012D14:
	str r2, [r1]
	adds r2, r2, r3
	subs r1, #4
	subs r0, #1
	cmp r0, #0
	bge _08012D14
	movs r0, #0x60
	str r0, [r4, #0x20]
	mov r4, ip
	movs r2, #8
	movs r1, #0x98
	adds r0, r4, #0
	adds r0, #0x20
	movs r3, #7
	negs r3, r3
_08012D32:
	str r1, [r0]
	adds r1, r1, r3
	subs r0, #4
	subs r2, #1
	cmp r2, #0
	bge _08012D32
	movs r0, #0xa5
	str r0, [r4, #0x20]
	movs r0, #0xad
	str r0, [r5, #0x10]
	str r0, [r5, #0xc]
	str r0, [r5, #8]
	str r0, [r5, #4]
	str r0, [r5]
	movs r0, #0x19
	str r0, [r5, #0x20]
	str r0, [r5, #0x1c]
	str r0, [r5, #0x18]
	str r0, [r5, #0x14]
	movs r0, #0xd9
	b _0801306A
	.align 2, 0
_08012D5C: .4byte gUnknown_202940C
_08012D60: .4byte gUnknown_2024940
_08012D64: .4byte gUnknown_20249C0
_08012D68: .4byte gUnknown_2024968
_08012D6C: .4byte gUnknown_2024990
_08012D70:
	ldr r4, _08012DC4 @ =gUnknown_2024940
	ldr r7, _08012DC8 @ =gUnknown_20249C0
	ldr r0, _08012DCC @ =gUnknown_2024968
	mov ip, r0
	ldr r5, _08012DD0 @ =gUnknown_2024990
	movs r2, #8
	movs r1, #0x51
	adds r0, r4, #0
	adds r0, #0x20
	movs r3, #7
	negs r3, r3
_08012D86:
	str r1, [r0]
	adds r1, r1, r3
	subs r0, #4
	subs r2, #1
	cmp r2, #0
	bge _08012D86
	movs r0, #0x60
	str r0, [r4, #0x20]
	mov r4, ip
	movs r0, #8
	movs r2, #0xa0
	adds r1, r4, #0
	adds r1, #0x20
	rsbs r3, r0, #0
_08012DA2:
	str r2, [r1]
	adds r2, r2, r3
	subs r1, #4
	subs r0, #1
	cmp r0, #0
	bge _08012DA2
	movs r0, #0xad
	str r0, [r4, #0x20]
	movs r0, #0xa5
	str r0, [r5, #0x10]
	str r0, [r5, #0xc]
	str r0, [r5, #8]
	str r0, [r5, #4]
	str r0, [r5]
	movs r0, #0x14
	b _08013060
	.align 2, 0
_08012DC4: .4byte gUnknown_2024940
_08012DC8: .4byte gUnknown_20249C0
_08012DCC: .4byte gUnknown_2024968
_08012DD0: .4byte gUnknown_2024990
_08012DD4:
	ldr r0, _08012E44 @ =gUnknown_20249B4
	str r1, [r0]
	ldr r1, _08012E48 @ =gUnknown_20249B8
	movs r0, #5
	str r0, [r1]
	ldr r1, _08012E4C @ =gUnknown_20249BC
	movs r0, #0xa
	str r0, [r1]
	ldr r0, _08012E50 @ =gUnknown_2027800
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _08012DEE
	b _08012F9C
_08012DEE:
	ldr r0, _08012E54 @ =gUnknown_20249C0
	movs r1, #1
	negs r1, r1
	str r1, [r0]
	ldr r1, _08012E58 @ =gUnknown_202940C
	ldr r2, [r1]
	adds r7, r0, #0
	adds r6, r1, #0
	cmp r2, #1
	bne _08012E68
	ldr r4, _08012E5C @ =gUnknown_2024990
	ldr r5, _08012E60 @ =gUnknown_2024940
	ldr r0, _08012E64 @ =gUnknown_2024968
	mov ip, r0
	movs r2, #8
	movs r1, #0x6d
	adds r0, r4, #0
	adds r0, #0x20
	movs r3, #8
_08012E14:
	str r1, [r0]
	adds r1, r1, r3
	subs r0, #4
	subs r2, #1
	cmp r2, #0
	bge _08012E14
	movs r0, #0x60
	str r0, [r4, #0x20]
	mov r4, ip
	movs r2, #8
	movs r1, #0x28
	adds r0, r4, #0
	adds r0, #0x20
	movs r3, #7
_08012E30:
	str r1, [r0]
	adds r1, r1, r3
	subs r0, #4
	subs r2, #1
	cmp r2, #0
	bge _08012E30
	movs r0, #0x19
	str r0, [r4, #0x20]
	movs r0, #0x14
	b _08012F7A
	.align 2, 0
_08012E44: .4byte gUnknown_20249B4
_08012E48: .4byte gUnknown_20249B8
_08012E4C: .4byte gUnknown_20249BC
_08012E50: .4byte gUnknown_2027800
_08012E54: .4byte gUnknown_20249C0
_08012E58: .4byte gUnknown_202940C
_08012E5C: .4byte gUnknown_2024990
_08012E60: .4byte gUnknown_2024940
_08012E64: .4byte gUnknown_2024968
_08012E68:
	cmp r2, #3
	bne _08012EC8
	ldr r4, _08012EBC @ =gUnknown_2024990
	ldr r5, _08012EC0 @ =gUnknown_2024940
	ldr r0, _08012EC4 @ =gUnknown_2024968
	mov ip, r0
	movs r2, #8
	movs r1, #0x6d
	adds r0, r4, #0
	adds r0, #0x20
	movs r3, #8
_08012E7E:
	str r1, [r0]
	adds r1, r1, r3
	subs r0, #4
	subs r2, #1
	cmp r2, #0
	bge _08012E7E
	movs r0, #0x60
	str r0, [r4, #0x20]
	mov r4, ip
	movs r2, #8
	movs r1, #0x20
	adds r0, r4, #0
	adds r0, #0x20
	movs r3, #8
_08012E9A:
	str r1, [r0]
	adds r1, r1, r3
	subs r0, #4
	subs r2, #1
	cmp r2, #0
	bge _08012E9A
	movs r0, #0x14
	str r0, [r4, #0x20]
	movs r0, #0x19
	str r0, [r5, #0x10]
	str r0, [r5, #0xc]
	str r0, [r5, #8]
	str r0, [r5, #4]
	str r0, [r5]
	movs r0, #0xa5
	b _08012F86
	.align 2, 0
_08012EBC: .4byte gUnknown_2024990
_08012EC0: .4byte gUnknown_2024940
_08012EC4: .4byte gUnknown_2024968
_08012EC8:
	subs r0, r2, #5
	cmp r0, #1
	bhi _08012F3C
	ldr r4, _08012F30 @ =gUnknown_2024990
	ldr r5, _08012F34 @ =gUnknown_2024940
	ldr r0, _08012F38 @ =gUnknown_2024968
	mov ip, r0
	movs r3, #8
	movs r2, #0x6d
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #8
_08012EE0:
	str r2, [r0]
	adds r2, r2, r1
	subs r0, #4
	subs r3, #1
	cmp r3, #0
	bge _08012EE0
	movs r0, #0x60
	str r0, [r4, #0x20]
	mov r4, ip
	movs r3, #8
	movs r2, #0x20
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #8
_08012EFC:
	str r2, [r0]
	adds r2, r2, r1
	subs r0, #4
	subs r3, #1
	cmp r3, #0
	bge _08012EFC
	movs r0, #0x14
	str r0, [r4, #0x20]
	str r0, [r5, #0x10]
	str r0, [r5, #0xc]
	str r0, [r5, #8]
	str r0, [r5, #4]
	str r0, [r5]
	movs r0, #0xad
_08012F18:
	str r0, [r5, #0x20]
	str r0, [r5, #0x1c]
	str r0, [r5, #0x18]
	str r0, [r5, #0x14]
	ldr r0, [r6]
	movs r1, #0xcb
	cmp r0, #5
	bne _08012F2A
	movs r1, #0xe7
_08012F2A:
	str r1, [r7]
	b _0801306C
	.align 2, 0
_08012F30: .4byte gUnknown_2024990
_08012F34: .4byte gUnknown_2024940
_08012F38: .4byte gUnknown_2024968
_08012F3C:
	ldr r4, _08012F90 @ =gUnknown_2024990
	ldr r5, _08012F94 @ =gUnknown_2024940
	ldr r0, _08012F98 @ =gUnknown_2024968
	mov ip, r0
	movs r2, #8
	movs r1, #0x6d
	adds r0, r4, #0
	adds r0, #0x20
	movs r3, #7
_08012F4E:
	str r1, [r0]
	adds r1, r1, r3
	subs r0, #4
	subs r2, #1
	cmp r2, #0
	bge _08012F4E
	movs r0, #0x60
	str r0, [r4, #0x20]
	mov r4, ip
	movs r2, #8
	movs r1, #0x20
	adds r0, r4, #0
	adds r0, #0x20
	movs r3, #8
_08012F6A:
	str r1, [r0]
	adds r1, r1, r3
	subs r0, #4
	subs r2, #1
	cmp r2, #0
	bge _08012F6A
	movs r0, #0x14
	str r0, [r4, #0x20]
_08012F7A:
	str r0, [r5, #0x10]
	str r0, [r5, #0xc]
	str r0, [r5, #8]
	str r0, [r5, #4]
	str r0, [r5]
	movs r0, #0xad
_08012F86:
	str r0, [r5, #0x20]
	str r0, [r5, #0x1c]
	str r0, [r5, #0x18]
	str r0, [r5, #0x14]
	b _0801306C
	.align 2, 0
_08012F90: .4byte gUnknown_2024990
_08012F94: .4byte gUnknown_2024940
_08012F98: .4byte gUnknown_2024968
_08012F9C:
	ldr r0, _08013000 @ =gUnknown_202940C
	ldr r0, [r0]
	cmp r0, #1
	bne _08013014
	ldr r4, _08013004 @ =gUnknown_2024990
	ldr r7, _08013008 @ =gUnknown_20249C0
	ldr r5, _0801300C @ =gUnknown_2024940
	ldr r0, _08013010 @ =gUnknown_2024968
	mov ip, r0
	movs r2, #8
	movs r1, #0x6d
	adds r0, r4, #0
	adds r0, #0x20
	movs r3, #8
_08012FB8:
	str r1, [r0]
	adds r1, r1, r3
	subs r0, #4
	subs r2, #1
	cmp r2, #0
	bge _08012FB8
	movs r0, #0x60
	str r0, [r4, #0x20]
	mov r4, ip
	movs r2, #8
	movs r1, #0x28
	adds r0, r4, #0
	adds r0, #0x20
	movs r3, #7
_08012FD4:
	str r1, [r0]
	adds r1, r1, r3
	subs r0, #4
	subs r2, #1
	cmp r2, #0
	bge _08012FD4
	movs r0, #0x19
	str r0, [r4, #0x20]
	movs r0, #0x14
	str r0, [r5, #0x10]
	str r0, [r5, #0xc]
	str r0, [r5, #8]
	str r0, [r5, #4]
	str r0, [r5]
	movs r0, #0xa5
	str r0, [r5, #0x20]
	str r0, [r5, #0x1c]
	str r0, [r5, #0x18]
	str r0, [r5, #0x14]
	movs r0, #0xd9
	b _0801306A
	.align 2, 0
_08013000: .4byte gUnknown_202940C
_08013004: .4byte gUnknown_2024990
_08013008: .4byte gUnknown_20249C0
_0801300C: .4byte gUnknown_2024940
_08013010: .4byte gUnknown_2024968
_08013014:
	ldr r4, _08013074 @ =gUnknown_2024990
	ldr r7, _08013078 @ =gUnknown_20249C0
	ldr r5, _0801307C @ =gUnknown_2024940
	ldr r0, _08013080 @ =gUnknown_2024968
	mov ip, r0
	movs r2, #8
	movs r1, #0x6d
	adds r0, r4, #0
	adds r0, #0x20
	movs r3, #7
_08013028:
	str r1, [r0]
	adds r1, r1, r3
	subs r0, #4
	subs r2, #1
	cmp r2, #0
	bge _08013028
	movs r0, #0x60
	str r0, [r4, #0x20]
	mov r4, ip
	movs r2, #8
	movs r1, #0x20
	adds r0, r4, #0
	adds r0, #0x20
	movs r3, #8
_08013044:
	str r1, [r0]
	adds r1, r1, r3
	subs r0, #4
	subs r2, #1
	cmp r2, #0
	bge _08013044
	movs r0, #0x14
	str r0, [r4, #0x20]
	str r0, [r5, #0x10]
	str r0, [r5, #0xc]
	str r0, [r5, #8]
	str r0, [r5, #4]
	str r0, [r5]
	movs r0, #0xad
_08013060:
	str r0, [r5, #0x20]
	str r0, [r5, #0x1c]
	str r0, [r5, #0x18]
	str r0, [r5, #0x14]
	movs r0, #0xe7
_0801306A:
	str r0, [r7]
_0801306C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013074: .4byte gUnknown_2024990
_08013078: .4byte gUnknown_20249C0
_0801307C: .4byte gUnknown_2024940
_08013080: .4byte gUnknown_2024968
	thumb_func_end sub_08012B24

	thumb_func_start sub_08013084
sub_08013084: @ 0x08013084
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0801315C
	ldr r5, _080130D4 @ =gUnknown_20249BC
	ldr r0, [r5]
	cmp r0, r6
	bne _080130E4
	ldr r4, _080130D8 @ =gUnknown_2029424
	ldr r0, [r4]
	add r2, sp, #4
	mov r1, sp
	bl sub_080023E4
	ldr r0, [r4]
	ldr r3, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	ldr r2, _080130DC @ =gUnknown_2024940
	ldr r1, [r5]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r2, [sp, #4]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	ldr r0, [r5]
	cmp r0, #8
	bne _080130E0
	movs r0, #1
	negs r0, r0
	b _080130E2
	.align 2, 0
_080130D4: .4byte gUnknown_20249BC
_080130D8: .4byte gUnknown_2029424
_080130DC: .4byte gUnknown_2024940
_080130E0:
	adds r0, #1
_080130E2:
	str r0, [r5]
_080130E4:
	ldr r7, _08013144 @ =gUnknown_20249B4
	ldr r0, [r7]
	cmp r0, r6
	beq _080130EE
	b _08013224
_080130EE:
	ldr r5, _08013148 @ =gUnknown_202942C
	ldr r0, [r5]
	ldr r4, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r4, r2]
	adds r0, r0, r1
	ldr r1, _0801314C @ =gUnknown_2024990
	adds r2, r6, #0
	subs r2, #0xa
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	ldr r3, _08013150 @ =gUnknown_85EE770
	adds r2, r2, r3
	ldr r2, [r2]
	ldr r3, [r4, #0xc]
	bl _call_via_r3
	ldr r0, [r7]
	cmp r0, #0xf
	bne _08013136
	ldr r0, _08013154 @ =gUnknown_20249C0
	ldr r1, [r0]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _08013136
	ldr r0, [r5]
	lsls r1, r1, #5
	ldr r2, _08013158 @ =gUnknown_860F73C
	adds r1, r1, r2
	bl sub_08002350
	ldr r0, [r5]
	bl sub_08002428
_08013136:
	ldr r1, _08013144 @ =gUnknown_20249B4
	ldr r0, [r1]
	cmp r0, #0x12
	bne _08013220
	movs r0, #1
	negs r0, r0
	b _08013222
	.align 2, 0
_08013144: .4byte gUnknown_20249B4
_08013148: .4byte gUnknown_202942C
_0801314C: .4byte gUnknown_2024990
_08013150: .4byte gUnknown_85EE770
_08013154: .4byte gUnknown_20249C0
_08013158: .4byte gUnknown_860F73C
_0801315C:
	ldr r5, _08013198 @ =gUnknown_20249B4
	ldr r0, [r5]
	cmp r0, r6
	bne _080131A8
	ldr r4, _0801319C @ =gUnknown_202942C
	ldr r0, [r4]
	add r2, sp, #4
	mov r1, sp
	bl sub_080023E4
	ldr r0, [r4]
	ldr r3, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	ldr r2, _080131A0 @ =gUnknown_2024990
	ldr r1, [r5]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r2, [sp, #4]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	ldr r0, [r5]
	cmp r0, #8
	bne _080131A4
	movs r0, #1
	negs r0, r0
	b _080131A6
	.align 2, 0
_08013198: .4byte gUnknown_20249B4
_0801319C: .4byte gUnknown_202942C
_080131A0: .4byte gUnknown_2024990
_080131A4:
	adds r0, #1
_080131A6:
	str r0, [r5]
_080131A8:
	ldr r7, _08013208 @ =gUnknown_20249BC
	ldr r0, [r7]
	cmp r0, r6
	bne _08013224
	ldr r5, _0801320C @ =gUnknown_2029424
	ldr r0, [r5]
	ldr r4, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r4, r2]
	adds r0, r0, r1
	ldr r1, _08013210 @ =gUnknown_2024940
	adds r2, r6, #0
	subs r2, #0xa
	lsls r2, r2, #2
	adds r1, r2, r1
	ldr r1, [r1]
	ldr r3, _08013214 @ =gUnknown_85EE770
	adds r2, r2, r3
	ldr r2, [r2]
	ldr r3, [r4, #0xc]
	bl _call_via_r3
	ldr r0, [r7]
	cmp r0, #0xf
	bne _080131F8
	ldr r0, _08013218 @ =gUnknown_20249C0
	ldr r1, [r0]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _080131F8
	ldr r0, [r5]
	lsls r1, r1, #5
	ldr r2, _0801321C @ =gUnknown_860F73C
	adds r1, r1, r2
	bl sub_08002350
	ldr r0, [r5]
	bl sub_08002428
_080131F8:
	ldr r1, _08013208 @ =gUnknown_20249BC
	ldr r0, [r1]
	cmp r0, #0x12
	bne _08013220
	movs r0, #1
	negs r0, r0
	b _08013222
	.align 2, 0
_08013208: .4byte gUnknown_20249BC
_0801320C: .4byte gUnknown_2029424
_08013210: .4byte gUnknown_2024940
_08013214: .4byte gUnknown_85EE770
_08013218: .4byte gUnknown_20249C0
_0801321C: .4byte gUnknown_860F73C
_08013220:
	adds r0, #1
_08013222:
	str r0, [r1]
_08013224:
	ldr r5, _08013264 @ =gUnknown_20249B8
	ldr r0, [r5]
	cmp r0, r6
	bne _08013274
	ldr r4, _08013268 @ =gUnknown_2029428
	ldr r0, [r4]
	add r2, sp, #4
	mov r1, sp
	bl sub_080023E4
	ldr r0, [r4]
	ldr r3, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	ldr r2, _0801326C @ =gUnknown_2024968
	ldr r1, [r5]
	subs r1, #5
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r2, [sp, #4]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	ldr r0, [r5]
	cmp r0, #0xd
	bne _08013270
	movs r0, #1
	negs r0, r0
	b _08013272
	.align 2, 0
_08013264: .4byte gUnknown_20249B8
_08013268: .4byte gUnknown_2029428
_0801326C: .4byte gUnknown_2024968
_08013270:
	adds r0, #1
_08013272:
	str r0, [r5]
_08013274:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08013084

	thumb_func_start sub_0801327C
sub_0801327C: @ 0x0801327C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xdc
	add r7, sp, #8
	str r1, [r7, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r7, #0x38]
	bl sub_0804441C
	str r0, [r7, #0x48]
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x44]
	ldr r2, [r7, #0x48]
	adds r2, #4
	ldr r1, [r7, #0x48]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _080132C0 @ =sub_080132C4
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _080132C8
	.align 2, 0
_080132C0: .4byte _080132C4
_080132C4: @ 0x080132C4
	bl sub_08013B74
_080132C8:
	str r7, [r2]
	ldr r2, _08013424 @ =gUnknown_863104A
	movs r0, #0x10
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [r7, #0x44]
	movs r1, #1
	movs r3, #0x10
	bl sub_08002504
	ldr r4, _08013428 @ =gUnknown_2024938
	str r0, [r4]
	ldr r1, [r7, #0x48]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	adds r2, r4, #0
	ldr r0, [r2]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0
	movs r2, #0xa0
	bl _call_via_r3
	ldr r4, _08013428 @ =gUnknown_2024938
	ldr r0, [r4]
	bl sub_080023D8
	ldr r0, [r7, #0x38]
	bl sub_08012B24
	movs r0, #0
	str r0, [r7, #0x40]
	ldr r1, [r7, #0x3c]
	cmp r1, #0
	beq _0801331A
	b _0801361C
_0801331A:
	ldr r1, [r7, #0x40]
	adds r2, r1, #0
	adds r2, #1
	str r2, [r7, #0x40]
	ldr r0, [r7, #0x38]
	bl sub_08013084
	ldr r3, [r7, #0x40]
	cmp r3, #0x1d
	ble _0801331A
	ldr r4, _0801342C @ =gUnknown_85EE73E
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #2
	ldrsh r1, [r4, r2]
	movs r3, #4
	ldrsh r2, [r4, r3]
	bl sub_080121C8
	movs r0, #6
	ldrsh r4, [r4, r0]
	str r4, [r7, #0x4c]
	ldr r1, _08013430 @ =gUnknown_20293BC
	ldr r0, [r1, #8]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	ldr r4, _08013430 @ =gUnknown_20293BC
	ldr r0, [r4, #0xc]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	ldr r1, [r7, #0x4c]
	movs r2, #0
	bl _call_via_r3
	ldr r0, [r4, #0x10]
	ldr r2, [r0, #0x30]
	movs r4, #0x10
	ldrsh r1, [r2, r4]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	ldr r1, [r7, #0x4c]
	movs r2, #0
	bl _call_via_r3
	ldr r1, _08013430 @ =gUnknown_20293BC
	ldr r0, [r1, #0x14]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	ldr r1, [r7, #0x4c]
	movs r2, #0
	bl _call_via_r3
	ldr r4, _08013430 @ =gUnknown_20293BC
	ldr r0, [r4, #4]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	ldr r1, [r7, #0x4c]
	movs r2, #0
	bl _call_via_r3
	ldr r4, _0801342C @ =gUnknown_85EE73E
	movs r1, #8
	ldrsh r0, [r4, r1]
	lsls r3, r0, #3
	subs r3, r3, r0
	lsls r3, r3, #2
	subs r3, r3, r0
	lsls r3, r3, #5
	ldr r0, _08013434 @ =gUnknown_8605C1C
	adds r3, r3, r0
	movs r0, #0
	movs r1, #0x59
	movs r2, #0x1b
	bl sub_080045CC
	ldr r2, _08013430 @ =gUnknown_20293BC
	ldr r0, [r2, #0x18]
	adds r3, r7, #0
	adds r3, #0x30
	str r3, [r7, #0x50]
	adds r4, r7, #0
	adds r4, #0x34
	str r4, [r7, #0x54]
	adds r1, r3, #0
	adds r2, r4, #0
	bl sub_080023E4
	ldr r1, _08013430 @ =gUnknown_20293BC
	ldr r0, [r1, #0x18]
	ldr r3, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	ldr r4, _0801342C @ =gUnknown_85EE73E
	movs r2, #0xa
	ldrsh r1, [r4, r2]
	ldr r2, [r7, #0x34]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	bl sub_080129A0
	ldr r4, _08013438 @ =gUnknown_2027824
	str r4, [r7, #0x58]
	ldr r0, _0801342C @ =gUnknown_85EE73E
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	str r0, [r7, #0x5c]
	cmp r0, #0x6f
	bne _0801343C
	adds r0, r4, #0
	bl sub_0800C57C
	b _08013484
	.align 2, 0
_08013424: .4byte gUnknown_863104A
_08013428: .4byte gUnknown_2024938
_0801342C: .4byte gUnknown_85EE73E
_08013430: .4byte gUnknown_20293BC
_08013434: .4byte gUnknown_8605C1C
_08013438: .4byte gUnknown_2027824
_0801343C:
	ldr r0, _080134A4 @ =gUnknown_2020054
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xb0
	lsls r2, r2, #1
	bl memset
	movs r2, #0
	str r2, [r7, #0x60]
	ldr r3, [r7, #0x58]
	ldrb r0, [r3]
	cmp r0, #0
	beq _08013484
	ldr r4, [r7, #0x5c]
	lsls r4, r4, #5
	str r4, [r7, #0x64]
_0801345C:
	ldr r0, _080134A4 @ =gUnknown_2020054
	ldr r1, [r0]
	ldr r2, [r7, #0x60]
	lsls r0, r2, #5
	adds r0, r0, r1
	ldr r3, [r7, #0x64]
	ldr r4, _080134A8 @ =gUnknown_861C5A2
	adds r1, r3, r4
	movs r2, #0x20
	bl memcpy
	ldr r0, [r7, #0x58]
	adds r0, #2
	str r0, [r7, #0x58]
	ldr r1, [r7, #0x60]
	adds r1, #1
	str r1, [r7, #0x60]
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801345C
_08013484:
	ldr r0, _080134A4 @ =gUnknown_2020054
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0x9a
	movs r2, #0xb
	bl sub_080045CC
	ldr r0, _080134AC @ =gUnknown_85EE73E
	movs r3, #0x10
	ldrsh r2, [r0, r3]
	str r2, [r7, #0x68]
	cmp r2, #0x6f
	bne _080134B0
	bl sub_0800BE4C
	b _080134D6
	.align 2, 0
_080134A4: .4byte gUnknown_2020054
_080134A8: .4byte gUnknown_861C5A2
_080134AC: .4byte gUnknown_85EE73E
_080134B0:
	ldr r0, _080134FC @ =gUnknown_2020058
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xf0
	lsls r2, r2, #2
	bl memset
	movs r0, #1
	movs r1, #0x23
	movs r2, #0
	ldr r3, [r7, #0x68]
	bl sub_08012A40
	movs r0, #0x43
	movs r1, #0x21
	movs r2, #0x3c
	ldr r3, [r7, #0x68]
	bl sub_08012A40
_080134D6:
	ldr r0, _080134FC @ =gUnknown_2020058
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0xa5
	movs r2, #0x1e
	bl sub_080045CC
	ldr r0, _08013500 @ =gUnknown_85EE73E
	ldrh r0, [r0, #0x12]
	str r0, [r7, #0x6c]
	ldr r4, _08013504 @ =gUnknown_202784D
	str r4, [r7, #0x70]
	cmp r0, #0x6f
	bne _08013508
	adds r0, r4, #0
	bl sub_0800C5B4
	b _080135A2
	.align 2, 0
_080134FC: .4byte gUnknown_2020058
_08013500: .4byte gUnknown_85EE73E
_08013504: .4byte gUnknown_202784D
_08013508:
	ldr r0, _08013548 @ =gUnknown_202005C
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xe6
	lsls r2, r2, #4
	bl memset
	movs r0, #0
	str r0, [r7, #0x74]
	movs r1, #2
	str r1, [r7, #0x78]
	ldr r2, [r7, #0x70]
	ldrb r0, [r2]
	cmp r0, #0
	beq _080135A2
	ldr r3, [r7, #0x6c]
	lsls r3, r3, #5
	movs r4, #0x80
	adds r4, r4, r7
	str r3, [r4]
_08013530:
	cmp r0, #0xa
	bne _0801354C
	ldr r0, [r7, #0x74]
	adds r0, #0xa
	str r0, [r7, #0x74]
	movs r1, #2
	str r1, [r7, #0x78]
	ldr r2, [r7, #0x70]
	adds r2, #1
	str r2, [r7, #0x70]
	b _0801359A
	.align 2, 0
_08013548: .4byte gUnknown_202005C
_0801354C:
	ldr r3, [r7, #0x70]
	ldrb r0, [r3]
	subs r0, #0x20
	ldr r1, _08013608 @ =gUnknown_85F2254
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #8
	subs r0, r0, r1
	str r0, [r7, #0x7c]
	ldr r4, [r7, #0x78]
	adds r0, r4, r0
	cmp r0, #0xb8
	ble _08013572
	movs r0, #2
	str r0, [r7, #0x78]
	ldr r1, [r7, #0x74]
	adds r1, #0xa
	str r1, [r7, #0x74]
_08013572:
	ldr r0, _0801360C @ =gUnknown_202005C
	ldr r0, [r0]
	str r0, [sp]
	movs r2, #0x80
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r3, _08013610 @ =gUnknown_861C5A2
	adds r0, r2, r3
	ldr r1, [r7, #0x78]
	ldr r2, [r7, #0x74]
	movs r3, #0x17
	bl sub_0800E408
	ldr r3, [r7, #0x70]
	adds r3, #1
	str r3, [r7, #0x70]
	ldr r4, [r7, #0x78]
	ldr r0, [r7, #0x7c]
	adds r4, r4, r0
	str r4, [r7, #0x78]
_0801359A:
	ldr r1, [r7, #0x70]
	ldrb r0, [r1]
	cmp r0, #0
	bne _08013530
_080135A2:
	ldr r0, _0801360C @ =gUnknown_202005C
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0xc3
	movs r2, #0x73
	bl sub_080045CC
	ldr r2, _08013614 @ =gUnknown_20293BC
	ldr r0, [r2]
	adds r1, r7, #0
	adds r1, #0x30
	adds r2, r7, #0
	adds r2, #0x34
	bl sub_080023E4
	ldr r3, _08013614 @ =gUnknown_20293BC
	ldr r0, [r3]
	ldr r3, [r0, #0x30]
	movs r4, #8
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	ldr r2, _08013618 @ =gUnknown_85EE73E
	movs r4, #0x14
	ldrsh r1, [r2, r4]
	ldr r2, [r7, #0x34]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	ldr r1, _08013614 @ =gUnknown_20293BC
	ldr r0, [r1, #0x34]
	adds r1, r7, #0
	adds r1, #0x30
	adds r2, r7, #0
	adds r2, #0x34
	bl sub_080023E4
	ldr r2, _08013614 @ =gUnknown_20293BC
	ldr r0, [r2, #0x34]
	ldr r3, [r0, #0x30]
	movs r4, #8
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	ldr r2, _08013618 @ =gUnknown_85EE73E
	movs r4, #0x16
	ldrsh r1, [r2, r4]
	ldr r2, [r7, #0x34]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	b _08013AEC
	.align 2, 0
_08013608: .4byte gUnknown_85F2254
_0801360C: .4byte gUnknown_202005C
_08013610: .4byte gUnknown_861C5A2
_08013614: .4byte gUnknown_20293BC
_08013618: .4byte gUnknown_85EE73E
_0801361C:
	ldr r0, _080137F4 @ =gUnknown_85ED05E
	movs r1, #0x84
	adds r1, r1, r7
	str r0, [r1]
_08013624:
	ldr r0, [r7, #0x38]
	ldr r1, [r7, #0x40]
	bl sub_08013084
	ldr r2, [r7, #0x40]
	lsls r0, r2, #1
	adds r1, r0, r2
	lsls r1, r1, #3
	movs r3, #0x88
	adds r3, r3, r7
	str r1, [r3]
	movs r4, #0x84
	adds r4, r4, r7
	ldr r4, [r4]
	adds r2, r1, r4
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r4, #0xd0
	adds r4, r4, r7
	str r0, [r4]
	ldr r0, _080137F8 @ =0x000003E7
	cmp r1, r0
	beq _08013678
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r2, #0x84
	adds r2, r2, r7
	ldr r1, [r2]
	adds r1, #2
	movs r3, #0x88
	adds r3, r3, r7
	ldr r3, [r3]
	adds r1, r3, r1
	movs r4, #0
	ldrsh r1, [r1, r4]
	ldr r2, [r2]
	adds r2, #4
	adds r2, r3, r2
	movs r4, #0
	ldrsh r2, [r2, r4]
	bl sub_080121C8
_08013678:
	movs r1, #0x84
	adds r1, r1, r7
	ldr r0, [r1]
	adds r0, #6
	movs r2, #0x88
	adds r2, r2, r7
	ldr r2, [r2]
	adds r1, r2, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r4, _080137F8 @ =0x000003E7
	cmp r0, r4
	beq _0801371A
	movs r2, #0x8c
	adds r2, r2, r7
	str r0, [r2]
	ldr r3, _080137FC @ =gUnknown_20293BC
	ldr r0, [r3, #8]
	ldr r2, [r0, #0x30]
	movs r4, #0x10
	ldrsh r1, [r2, r4]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	movs r2, #0x8c
	adds r2, r2, r7
	ldr r1, [r2]
	movs r2, #0
	bl _call_via_r3
	ldr r3, _080137FC @ =gUnknown_20293BC
	ldr r0, [r3, #0xc]
	ldr r2, [r0, #0x30]
	movs r4, #0x10
	ldrsh r1, [r2, r4]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	movs r2, #0x8c
	adds r2, r2, r7
	ldr r1, [r2]
	movs r2, #0
	bl _call_via_r3
	ldr r3, _080137FC @ =gUnknown_20293BC
	ldr r0, [r3, #0x10]
	ldr r2, [r0, #0x30]
	movs r4, #0x10
	ldrsh r1, [r2, r4]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	movs r2, #0x8c
	adds r2, r2, r7
	ldr r1, [r2]
	movs r2, #0
	bl _call_via_r3
	ldr r3, _080137FC @ =gUnknown_20293BC
	ldr r0, [r3, #0x14]
	ldr r2, [r0, #0x30]
	movs r4, #0x10
	ldrsh r1, [r2, r4]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	movs r2, #0x8c
	adds r2, r2, r7
	ldr r1, [r2]
	movs r2, #0
	bl _call_via_r3
	ldr r3, _080137FC @ =gUnknown_20293BC
	ldr r0, [r3, #4]
	ldr r2, [r0, #0x30]
	movs r4, #0x10
	ldrsh r1, [r2, r4]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	movs r2, #0x8c
	adds r2, r2, r7
	ldr r1, [r2]
	movs r2, #0
	bl _call_via_r3
_0801371A:
	movs r3, #0x84
	adds r3, r3, r7
	ldr r0, [r3]
	adds r0, #8
	movs r4, #0x88
	adds r4, r4, r7
	ldr r4, [r4]
	adds r1, r4, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, _080137F8 @ =0x000003E7
	cmp r0, r3
	beq _0801374C
	lsls r3, r0, #3
	subs r3, r3, r0
	lsls r3, r3, #2
	subs r3, r3, r0
	lsls r3, r3, #5
	ldr r0, _08013800 @ =gUnknown_8605C1C
	adds r3, r3, r0
	movs r0, #0
	movs r1, #0x59
	movs r2, #0x1b
	bl sub_080045CC
_0801374C:
	movs r1, #0x84
	adds r1, r1, r7
	ldr r0, [r1]
	adds r0, #0xa
	movs r2, #0x88
	adds r2, r2, r7
	ldr r2, [r2]
	adds r0, r2, r0
	movs r2, #0x90
	adds r2, r2, r7
	str r0, [r2]
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r4, _080137F8 @ =0x000003E7
	cmp r0, r4
	beq _0801379A
	ldr r1, _080137FC @ =gUnknown_20293BC
	ldr r0, [r1, #0x18]
	adds r1, r7, #0
	adds r1, #0x30
	adds r2, r7, #0
	adds r2, #0x34
	bl sub_080023E4
	ldr r2, _080137FC @ =gUnknown_20293BC
	ldr r0, [r2, #0x18]
	ldr r3, [r0, #0x30]
	movs r4, #8
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	movs r2, #0x90
	adds r2, r2, r7
	ldr r2, [r2]
	movs r4, #0
	ldrsh r1, [r2, r4]
	ldr r2, [r7, #0x34]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_0801379A:
	movs r3, #0x84
	adds r3, r3, r7
	ldr r0, [r3]
	adds r0, #0xc
	movs r4, #0x88
	adds r4, r4, r7
	ldr r4, [r4]
	adds r1, r4, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, _080137F8 @ =0x000003E7
	cmp r0, r3
	beq _080137B8
	bl sub_080129A0
_080137B8:
	movs r0, #0x88
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r2, _08013804 @ =gUnknown_85ED06C
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [r7, #0x40]
	adds r3, #1
	movs r4, #0xcc
	adds r4, r4, r7
	str r3, [r4]
	ldr r2, _080137F8 @ =0x000003E7
	cmp r0, r2
	beq _08013882
	ldr r3, _08013808 @ =gUnknown_2027824
	movs r4, #0x94
	adds r4, r4, r7
	str r3, [r4]
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r2, #0x98
	adds r2, r2, r7
	str r0, [r2]
	cmp r0, #0x6f
	bne _0801380C
	ldr r0, [r4]
	bl sub_0800C57C
	b _08013874
	.align 2, 0
_080137F4: .4byte gUnknown_85ED05E
_080137F8: .4byte 0x000003E7
_080137FC: .4byte gUnknown_20293BC
_08013800: .4byte gUnknown_8605C1C
_08013804: .4byte gUnknown_85ED06C
_08013808: .4byte gUnknown_2027824
_0801380C:
	ldr r0, _080138AC @ =gUnknown_2020054
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xb0
	lsls r2, r2, #1
	bl memset
	movs r3, #0
	movs r4, #0x9c
	adds r4, r4, r7
	str r3, [r4]
	movs r1, #0x94
	adds r1, r1, r7
	ldr r1, [r1]
	ldrb r0, [r1]
	cmp r0, #0
	beq _08013874
	movs r2, #0x98
	adds r2, r2, r7
	ldr r2, [r2]
	lsls r2, r2, #5
	movs r3, #0xa0
	adds r3, r3, r7
	str r2, [r3]
_0801383C:
	ldr r0, _080138AC @ =gUnknown_2020054
	ldr r1, [r0]
	movs r3, #0x9c
	adds r3, r3, r7
	ldr r3, [r3]
	lsls r0, r3, #5
	adds r0, r0, r1
	movs r4, #0xa0
	adds r4, r4, r7
	ldr r4, [r4]
	ldr r2, _080138B0 @ =gUnknown_861C5A2
	adds r1, r4, r2
	movs r2, #0x20
	bl memcpy
	movs r1, #0x94
	adds r1, r1, r7
	ldr r0, [r1]
	adds r0, #2
	str r0, [r1]
	movs r3, #0x9c
	adds r3, r3, r7
	ldr r2, [r3]
	adds r2, #1
	str r2, [r3]
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801383C
_08013874:
	ldr r0, _080138AC @ =gUnknown_2020054
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0x9a
	movs r2, #0xb
	bl sub_080045CC
_08013882:
	movs r4, #0xd0
	adds r4, r4, r7
	ldr r4, [r4]
	ldr r1, [r7, #0x40]
	adds r0, r4, r1
	lsls r0, r0, #3
	ldr r2, _080138B4 @ =gUnknown_85ED06E
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r4, _080138B8 @ =0x000003E7
	cmp r0, r4
	beq _080138F4
	movs r2, #0xa4
	adds r2, r2, r7
	str r0, [r2]
	cmp r0, #0x6f
	bne _080138BC
	bl sub_0800BE4C
	b _080138E6
	.align 2, 0
_080138AC: .4byte gUnknown_2020054
_080138B0: .4byte gUnknown_861C5A2
_080138B4: .4byte gUnknown_85ED06E
_080138B8: .4byte 0x000003E7
_080138BC:
	ldr r0, _08013930 @ =gUnknown_2020058
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xf0
	lsls r2, r2, #2
	bl memset
	movs r0, #1
	movs r1, #0x23
	movs r2, #0
	movs r4, #0xa4
	adds r4, r4, r7
	ldr r3, [r4]
	bl sub_08012A40
	movs r0, #0x43
	movs r1, #0x21
	movs r2, #0x3c
	ldr r3, [r4]
	bl sub_08012A40
_080138E6:
	ldr r0, _08013930 @ =gUnknown_2020058
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0xa5
	movs r2, #0x1e
	bl sub_080045CC
_080138F4:
	movs r1, #0xd0
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r2, [r7, #0x40]
	adds r0, r1, r2
	lsls r0, r0, #3
	ldr r2, _08013934 @ =gUnknown_85ED070
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r4, _08013938 @ =0x000003E7
	cmp r0, r4
	bne _08013910
	b _08013A34
_08013910:
	ldrh r1, [r1]
	movs r0, #0xa8
	adds r0, r0, r7
	str r1, [r0]
	ldr r1, _0801393C @ =gUnknown_202784D
	movs r2, #0xac
	adds r2, r2, r7
	str r1, [r2]
	ldr r3, [r0]
	cmp r3, #0x6f
	bne _08013940
	adds r0, r1, #0
	bl sub_0800C5B4
	b _08013A26
	.align 2, 0
_08013930: .4byte gUnknown_2020058
_08013934: .4byte gUnknown_85ED070
_08013938: .4byte 0x000003E7
_0801393C: .4byte gUnknown_202784D
_08013940:
	ldr r0, _0801399C @ =gUnknown_202005C
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xe6
	lsls r2, r2, #4
	bl memset
	movs r4, #0
	movs r0, #0xb0
	adds r0, r0, r7
	str r4, [r0]
	movs r1, #2
	movs r2, #0xb4
	adds r2, r2, r7
	str r1, [r2]
	movs r3, #0xac
	adds r3, r3, r7
	ldr r3, [r3]
	ldrb r0, [r3]
	cmp r0, #0
	beq _08013A26
	movs r4, #0xa8
	adds r4, r4, r7
	ldr r4, [r4]
	lsls r4, r4, #5
	movs r1, #0xbc
	adds r1, r1, r7
	str r4, [r1]
_08013978:
	cmp r0, #0xa
	bne _080139A0
	movs r1, #0xb0
	adds r1, r1, r7
	ldr r0, [r1]
	adds r0, #0xa
	str r0, [r1]
	movs r2, #2
	movs r3, #0xb4
	adds r3, r3, r7
	str r2, [r3]
	movs r0, #0xac
	adds r0, r0, r7
	ldr r4, [r0]
	adds r4, #1
	str r4, [r0]
	b _08013A1A
	.align 2, 0
_0801399C: .4byte gUnknown_202005C
_080139A0:
	movs r2, #0xac
	adds r2, r2, r7
	ldr r1, [r2]
	ldrb r0, [r1]
	subs r0, #0x20
	ldr r1, _08013B2C @ =gUnknown_85F2254
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #8
	subs r0, r0, r1
	movs r3, #0xb8
	adds r3, r3, r7
	str r0, [r3]
	movs r4, #0xb4
	adds r4, r4, r7
	ldr r4, [r4]
	adds r0, r4, r0
	cmp r0, #0xb8
	ble _080139DA
	movs r0, #2
	movs r1, #0xb4
	adds r1, r1, r7
	str r0, [r1]
	movs r3, #0xb0
	adds r3, r3, r7
	ldr r2, [r3]
	adds r2, #0xa
	str r2, [r3]
_080139DA:
	ldr r0, _08013B30 @ =gUnknown_202005C
	ldr r0, [r0]
	str r0, [sp]
	movs r4, #0xbc
	adds r4, r4, r7
	ldr r4, [r4]
	ldr r1, _08013B34 @ =gUnknown_861C5A2
	adds r0, r4, r1
	movs r2, #0xb4
	adds r2, r2, r7
	ldr r1, [r2]
	movs r3, #0xb0
	adds r3, r3, r7
	ldr r2, [r3]
	movs r3, #0x17
	bl sub_0800E408
	movs r0, #0xac
	adds r0, r0, r7
	ldr r4, [r0]
	adds r4, #1
	str r4, [r0]
	movs r1, #0xb4
	adds r1, r1, r7
	ldr r1, [r1]
	movs r2, #0xb8
	adds r2, r2, r7
	ldr r2, [r2]
	adds r1, r1, r2
	movs r2, #0xb4
	adds r2, r2, r7
	str r1, [r2]
_08013A1A:
	movs r3, #0xac
	adds r3, r3, r7
	ldr r3, [r3]
	ldrb r0, [r3]
	cmp r0, #0
	bne _08013978
_08013A26:
	ldr r0, _08013B30 @ =gUnknown_202005C
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0xc3
	movs r2, #0x73
	bl sub_080045CC
_08013A34:
	movs r4, #0xd0
	adds r4, r4, r7
	ldr r4, [r4]
	ldr r1, [r7, #0x40]
	adds r0, r4, r1
	lsls r0, r0, #3
	movs r1, #0xc0
	adds r1, r1, r7
	str r0, [r1]
	ldr r0, _08013B38 @ =gUnknown_85ED05E
	adds r0, #0x14
	ldr r2, [r1]
	adds r0, r2, r0
	movs r2, #0xc4
	adds r2, r2, r7
	str r0, [r2]
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r4, _08013B3C @ =0x000003E7
	cmp r0, r4
	beq _08013A8C
	ldr r1, _08013B40 @ =gUnknown_20293BC
	ldr r0, [r1]
	adds r1, r7, #0
	adds r1, #0x30
	adds r2, r7, #0
	adds r2, #0x34
	bl sub_080023E4
	ldr r2, _08013B40 @ =gUnknown_20293BC
	ldr r0, [r2]
	ldr r3, [r0, #0x30]
	movs r4, #8
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	movs r2, #0xc4
	adds r2, r2, r7
	ldr r2, [r2]
	movs r4, #0
	ldrsh r1, [r2, r4]
	ldr r2, [r7, #0x34]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_08013A8C:
	ldr r0, _08013B38 @ =gUnknown_85ED05E
	adds r0, #0x16
	movs r3, #0xc0
	adds r3, r3, r7
	ldr r3, [r3]
	adds r0, r3, r0
	movs r3, #0xc8
	adds r3, r3, r7
	str r0, [r3]
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldr r1, _08013B3C @ =0x000003E7
	cmp r0, r1
	beq _08013AD6
	ldr r2, _08013B40 @ =gUnknown_20293BC
	ldr r0, [r2, #0x34]
	adds r1, r7, #0
	adds r1, #0x30
	adds r2, r7, #0
	adds r2, #0x34
	bl sub_080023E4
	ldr r3, _08013B40 @ =gUnknown_20293BC
	ldr r0, [r3, #0x34]
	ldr r3, [r0, #0x30]
	movs r4, #8
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	movs r2, #0xc8
	adds r2, r2, r7
	ldr r2, [r2]
	movs r4, #0
	ldrsh r1, [r2, r4]
	ldr r2, [r7, #0x34]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_08013AD6:
	movs r3, #0xcc
	adds r3, r3, r7
	ldr r3, [r3]
	str r3, [r7, #0x40]
	movs r0, #1
	bl sub_080053D8
	ldr r4, [r7, #0x40]
	cmp r4, #0x1d
	bgt _08013AEC
	b _08013624
_08013AEC:
	ldr r1, _08013B40 @ =gUnknown_20293BC
	ldr r0, [r1, #0x44]
	bl sub_080023D8
	ldr r2, _08013B40 @ =gUnknown_20293BC
	ldr r0, [r2, #0x40]
	bl sub_080023D8
	ldr r3, _08013B44 @ =gUnknown_2024938
	ldr r0, [r3]
	bl sub_080023C4
	ldr r4, _08013B44 @ =gUnknown_2024938
	ldr r0, [r4]
	cmp r0, #0
	beq _08013B12
	movs r1, #3
	bl sub_080018D8
_08013B12:
	movs r0, #0x20
	ldr r1, [r7, #0x38]
	ands r0, r1
	cmp r0, #0
	beq _08013B54
	ldr r1, _08013B48 @ =gUnknown_202942C
	ldr r3, [r1]
	ldr r2, _08013B4C @ =gUnknown_2029428
	ldr r0, [r2]
	str r0, [r1]
	ldr r1, _08013B50 @ =gUnknown_2029424
	b _08013B60
	.align 2, 0
_08013B2C: .4byte gUnknown_85F2254
_08013B30: .4byte gUnknown_202005C
_08013B34: .4byte gUnknown_861C5A2
_08013B38: .4byte gUnknown_85ED05E
_08013B3C: .4byte 0x000003E7
_08013B40: .4byte gUnknown_20293BC
_08013B44: .4byte gUnknown_2024938
_08013B48: .4byte gUnknown_202942C
_08013B4C: .4byte gUnknown_2029428
_08013B50: .4byte gUnknown_2029424
_08013B54:
	ldr r1, _08013B68 @ =gUnknown_2029424
	ldr r3, [r1]
	ldr r2, _08013B6C @ =gUnknown_2029428
	ldr r0, [r2]
	str r0, [r1]
	ldr r1, _08013B70 @ =gUnknown_202942C
_08013B60:
	ldr r0, [r1]
	str r0, [r2]
	str r3, [r1]
	b _08013BBC
	.align 2, 0
_08013B68: .4byte gUnknown_2029424
_08013B6C: .4byte gUnknown_2029428
_08013B70: .4byte gUnknown_202942C
	thumb_func_end sub_0801327C

	thumb_func_start sub_08013B74
sub_08013B74: @ 0x08013B74
	ldr r2, [r7, #0x48]
	adds r2, #4
	ldr r3, [r7, #0x48]
	ldr r0, [r3, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08013B94 @ =sub_08013B98
	str r0, [r1, #4]
	mov r4, sp
	str r4, [r1, #8]
	b _08013B9A
	.align 2, 0
_08013B94: .4byte _08013B98
_08013B98: @ 0x08013B98
	b _08013BB8
_08013B9A:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _08013BAC
	ldr r0, [r7, #0x44]
	bl sub_080046C0
_08013BAC:
	ldr r1, [r7, #0x48]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08013BB8:
	bl sub_080443CC
_08013BBC:
	add sp, #0xdc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08013B74

	thumb_func_start sub_08013BCC
sub_08013BCC: @ 0x08013BCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	bl sub_08012B24
	ldr r4, _08013D4C @ =gUnknown_20293BC
	ldr r0, [r4, #0x44]
	bl sub_080023C4
	ldr r0, [r4, #0x40]
	bl sub_080023C4
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r1, _08013D50 @ =gUnknown_85ED32E
	mov sb, r1
_08013BF8:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl sub_08013084
	ldr r2, [sp, #0x10]
	lsls r0, r2, #1
	adds r1, r0, r2
	lsls r5, r1, #3
	mov r3, sb
	adds r2, r5, r3
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r0, [sp, #0x18]
	ldr r0, _08013D54 @ =0x000003E7
	cmp r1, r0
	beq _08013C34
	movs r1, #0
	ldrsh r0, [r2, r1]
	mov r1, sb
	adds r1, #2
	adds r1, r5, r1
	movs r2, #0
	ldrsh r1, [r1, r2]
	mov r2, sb
	adds r2, #4
	adds r2, r5, r2
	movs r3, #0
	ldrsh r2, [r2, r3]
	bl sub_080121C8
_08013C34:
	mov r0, sb
	adds r0, #6
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, _08013D54 @ =0x000003E7
	cmp r0, r3
	beq _08013CB4
	adds r4, r0, #0
	ldr r1, _08013D4C @ =gUnknown_20293BC
	ldr r0, [r1, #8]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	ldr r1, _08013D4C @ =gUnknown_20293BC
	ldr r0, [r1, #0xc]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	ldr r1, _08013D4C @ =gUnknown_20293BC
	ldr r0, [r1, #0x10]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	ldr r1, _08013D4C @ =gUnknown_20293BC
	ldr r0, [r1, #0x14]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	ldr r1, _08013D4C @ =gUnknown_20293BC
	ldr r0, [r1, #4]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
_08013CB4:
	mov r0, sb
	adds r0, #8
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, _08013D54 @ =0x000003E7
	cmp r0, r3
	beq _08013CDC
	lsls r3, r0, #3
	subs r3, r3, r0
	lsls r3, r3, #2
	subs r3, r3, r0
	lsls r3, r3, #5
	ldr r0, _08013D58 @ =gUnknown_8605C1C
	adds r3, r3, r0
	movs r0, #0
	movs r1, #0x59
	movs r2, #0x1b
	bl sub_080045CC
_08013CDC:
	mov r0, sb
	adds r0, #0xa
	adds r4, r5, r0
	movs r3, #0
	ldrsh r0, [r4, r3]
	ldr r1, _08013D54 @ =0x000003E7
	cmp r0, r1
	beq _08013D10
	ldr r2, _08013D4C @ =gUnknown_20293BC
	ldr r0, [r2, #0x18]
	add r1, sp, #4
	add r2, sp, #8
	bl sub_080023E4
	ldr r3, _08013D4C @ =gUnknown_20293BC
	ldr r0, [r3, #0x18]
	ldr r3, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r2, [sp, #8]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_08013D10:
	mov r0, sb
	adds r0, #0xc
	adds r1, r5, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r2, _08013D54 @ =0x000003E7
	cmp r0, r2
	beq _08013D24
	bl sub_080129A0
_08013D24:
	ldr r0, _08013D5C @ =gUnknown_85ED33C
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x10]
	adds r3, #1
	str r3, [sp, #0x14]
	ldr r2, _08013D54 @ =0x000003E7
	cmp r0, r2
	beq _08013DA6
	ldr r6, _08013D60 @ =gUnknown_2027824
	movs r3, #0
	ldrsh r4, [r1, r3]
	cmp r4, #0x6f
	bne _08013D64
	adds r0, r6, #0
	bl sub_0800C57C
	b _08013D98
	.align 2, 0
_08013D4C: .4byte gUnknown_20293BC
_08013D50: .4byte gUnknown_85ED32E
_08013D54: .4byte 0x000003E7
_08013D58: .4byte gUnknown_8605C1C
_08013D5C: .4byte gUnknown_85ED33C
_08013D60: .4byte gUnknown_2027824
_08013D64:
	ldr r0, _08013DC8 @ =gUnknown_2020054
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xb0
	lsls r2, r2, #1
	bl memset
	movs r5, #0
	ldrb r0, [r6]
	cmp r0, #0
	beq _08013D98
	lsls r4, r4, #5
	ldr r7, _08013DCC @ =gUnknown_861C5A2
_08013D7E:
	ldr r0, _08013DC8 @ =gUnknown_2020054
	ldr r1, [r0]
	lsls r0, r5, #5
	adds r0, r0, r1
	adds r1, r4, r7
	movs r2, #0x20
	bl memcpy
	adds r6, #2
	adds r5, #1
	ldrb r0, [r6]
	cmp r0, #0
	bne _08013D7E
_08013D98:
	ldr r0, _08013DC8 @ =gUnknown_2020054
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0x9a
	movs r2, #0xb
	bl sub_080045CC
_08013DA6:
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	adds r0, r1, r2
	lsls r0, r0, #3
	ldr r1, _08013DD0 @ =gUnknown_85ED33E
	adds r3, r0, r1
	movs r2, #0
	ldrsh r0, [r3, r2]
	ldr r1, _08013DD4 @ =0x000003E7
	cmp r0, r1
	beq _08013E0C
	adds r4, r0, #0
	cmp r4, #0x6f
	bne _08013DD8
	bl sub_0800BE4C
	b _08013DFE
	.align 2, 0
_08013DC8: .4byte gUnknown_2020054
_08013DCC: .4byte gUnknown_861C5A2
_08013DD0: .4byte gUnknown_85ED33E
_08013DD4: .4byte 0x000003E7
_08013DD8:
	ldr r0, _08013E34 @ =gUnknown_2020058
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xf0
	lsls r2, r2, #2
	bl memset
	movs r0, #1
	movs r1, #0x23
	movs r2, #0
	adds r3, r4, #0
	bl sub_08012A40
	movs r0, #0x43
	movs r1, #0x21
	movs r2, #0x3c
	adds r3, r4, #0
	bl sub_08012A40
_08013DFE:
	ldr r0, _08013E34 @ =gUnknown_2020058
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0xa5
	movs r2, #0x1e
	bl sub_080045CC
_08013E0C:
	ldr r3, [sp, #0x18]
	ldr r1, [sp, #0x10]
	adds r0, r3, r1
	lsls r0, r0, #3
	ldr r2, _08013E38 @ =gUnknown_85ED340
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r2, _08013E3C @ =0x000003E7
	cmp r0, r2
	beq _08013EC6
	ldrh r4, [r1]
	ldr r5, _08013E40 @ =gUnknown_202784D
	cmp r4, #0x6f
	bne _08013E44
	adds r0, r5, #0
	bl sub_0800C5B4
	b _08013EB8
	.align 2, 0
_08013E34: .4byte gUnknown_2020058
_08013E38: .4byte gUnknown_85ED340
_08013E3C: .4byte 0x000003E7
_08013E40: .4byte gUnknown_202784D
_08013E44:
	ldr r0, _08013E74 @ =gUnknown_202005C
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xe6
	lsls r2, r2, #4
	bl memset
	movs r6, #0
	movs r3, #2
	mov r8, r3
	ldrb r0, [r5]
	cmp r0, #0
	beq _08013EB8
	lsls r7, r4, #5
	ldr r1, _08013E78 @ =gUnknown_861C5A2
	mov sl, r1
_08013E64:
	cmp r0, #0xa
	bne _08013E7C
	adds r6, #0xa
	movs r2, #2
	mov r8, r2
	adds r5, #1
	b _08013EB2
	.align 2, 0
_08013E74: .4byte gUnknown_202005C
_08013E78: .4byte gUnknown_861C5A2
_08013E7C:
	ldrb r0, [r5]
	subs r0, #0x20
	ldr r1, _08013F64 @ =gUnknown_85F2254
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #8
	subs r4, r0, r1
	mov r3, r8
	adds r0, r3, r4
	cmp r0, #0xb8
	ble _08013E9A
	movs r0, #2
	mov r8, r0
	adds r6, #0xa
_08013E9A:
	ldr r0, _08013F68 @ =gUnknown_202005C
	ldr r0, [r0]
	str r0, [sp]
	mov r1, sl
	adds r0, r7, r1
	mov r1, r8
	adds r2, r6, #0
	movs r3, #0x17
	bl sub_0800E408
	adds r5, #1
	add r8, r4
_08013EB2:
	ldrb r0, [r5]
	cmp r0, #0
	bne _08013E64
_08013EB8:
	ldr r0, _08013F68 @ =gUnknown_202005C
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0xc3
	movs r2, #0x73
	bl sub_080045CC
_08013EC6:
	ldr r7, _08013F6C @ =gUnknown_85ED32E
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x10]
	adds r0, r2, r3
	lsls r5, r0, #3
	adds r0, r7, #0
	adds r0, #0x14
	adds r4, r5, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, _08013F70 @ =0x03E70000
	asrs r6, r2, #0x10
	cmp r0, r6
	beq _08013F06
	ldr r3, _08013F74 @ =gUnknown_20293BC
	ldr r0, [r3]
	add r1, sp, #4
	add r2, sp, #8
	bl sub_080023E4
	ldr r1, _08013F74 @ =gUnknown_20293BC
	ldr r0, [r1]
	ldr r3, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r2, [sp, #8]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_08013F06:
	adds r0, r7, #0
	adds r0, #0x16
	adds r4, r5, r0
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, r6
	beq _08013F38
	ldr r1, _08013F74 @ =gUnknown_20293BC
	ldr r0, [r1, #0x34]
	add r1, sp, #4
	add r2, sp, #8
	bl sub_080023E4
	ldr r2, _08013F74 @ =gUnknown_20293BC
	ldr r0, [r2, #0x34]
	ldr r3, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r2, [sp, #8]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_08013F38:
	ldr r3, [sp, #0x14]
	str r3, [sp, #0x10]
	movs r0, #1
	bl sub_080053D8
	ldr r0, [sp, #0x10]
	cmp r0, #0x1d
	bgt _08013F4A
	b _08013BF8
_08013F4A:
	movs r0, #0x20
	ldr r1, [sp, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _08013F84
	ldr r1, _08013F78 @ =gUnknown_202942C
	ldr r3, [r1]
	ldr r2, _08013F7C @ =gUnknown_2029428
	ldr r0, [r2]
	str r0, [r1]
	ldr r1, _08013F80 @ =gUnknown_2029424
	b _08013F90
	.align 2, 0
_08013F64: .4byte gUnknown_85F2254
_08013F68: .4byte gUnknown_202005C
_08013F6C: .4byte gUnknown_85ED32E
_08013F70: .4byte 0x03E70000
_08013F74: .4byte gUnknown_20293BC
_08013F78: .4byte gUnknown_202942C
_08013F7C: .4byte gUnknown_2029428
_08013F80: .4byte gUnknown_2029424
_08013F84:
	ldr r1, _08013FA8 @ =gUnknown_2029424
	ldr r3, [r1]
	ldr r2, _08013FAC @ =gUnknown_2029428
	ldr r0, [r2]
	str r0, [r1]
	ldr r1, _08013FB0 @ =gUnknown_202942C
_08013F90:
	ldr r0, [r1]
	str r0, [r2]
	str r3, [r1]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013FA8: .4byte gUnknown_2029424
_08013FAC: .4byte gUnknown_2029428
_08013FB0: .4byte gUnknown_202942C
	thumb_func_end sub_08013BCC

	thumb_func_start sub_08013FB4
sub_08013FB4: @ 0x08013FB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r4, _08014064 @ =gUnknown_20293BC
	ldr r0, [r4, #0x44]
	bl sub_080023C4
	ldr r0, [r4, #0x40]
	bl sub_080023C4
	movs r0, #0
	str r0, [sp, #0xc]
_08013FD2:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #4
	subs r1, r0, r1
	lsls r2, r1, #1
	ldr r4, _08014068 @ =gUnknown_85ED5FE
	adds r3, r2, r4
	movs r4, #0
	ldrsh r1, [r3, r4]
	mov sl, r0
	ldr r0, _0801406C @ =0x000003E7
	cmp r1, r0
	beq _08014002
	adds r0, r1, #0
	ldr r1, _08014068 @ =gUnknown_85ED5FE
	adds r1, #2
	adds r1, r2, r1
	movs r3, #0
	ldrsh r1, [r1, r3]
	ldr r4, _08014070 @ =gUnknown_85ED602
	adds r2, r2, r4
	movs r3, #0
	ldrsh r2, [r2, r3]
	bl sub_080121C8
_08014002:
	movs r0, #0
	str r0, [sp, #8]
	movs r2, #0
	ldr r4, [sp, #0xc]
	adds r4, #1
	str r4, [sp, #0x10]
_0801400E:
	adds r0, r2, #3
	mov r3, sl
	ldr r4, [sp, #0xc]
	subs r1, r3, r4
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, _08014068 @ =gUnknown_85ED5FE
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r4, _0801406C @ =0x000003E7
	cmp r0, r4
	beq _080140D0
	ldr r3, _08014074 @ =gUnknown_202780C
	ldr r4, _08014078 @ =0x00000A89
	adds r0, r3, r4
	ldrb r0, [r0]
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r3, _0801407C @ =gUnknown_2028398
	adds r0, r0, r3
	ldrh r1, [r1]
	ldr r5, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, #0x11
	mov r8, r0
	movs r6, #1
	ldrb r2, [r5]
	adds r0, r2, #0
	cmp r0, #0xa
	beq _080140C0
	cmp r0, #0
	beq _080140C0
	lsls r7, r1, #5
	ldr r4, _08014080 @ =gUnknown_861C5A2
	mov sb, r4
_0801405A:
	adds r0, r2, #0
	cmp r0, #1
	bne _08014084
	adds r5, #2
	b _080140B4
	.align 2, 0
_08014064: .4byte gUnknown_20293BC
_08014068: .4byte gUnknown_85ED5FE
_0801406C: .4byte 0x000003E7
_08014070: .4byte gUnknown_85ED602
_08014074: .4byte gUnknown_202780C
_08014078: .4byte 0x00000A89
_0801407C: .4byte gUnknown_2028398
_08014080: .4byte gUnknown_861C5A2
_08014084:
	cmp r0, #2
	bne _0801408C
	adds r5, #1
	b _080140B4
_0801408C:
	ldrb r0, [r5]
	subs r0, #0x20
	ldr r1, _08014194 @ =gUnknown_85F2254
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r4, #8
	subs r4, r4, r0
	ldr r0, _08014198 @ =gUnknown_2020060
	ldr r0, [r0]
	str r0, [sp]
	mov r1, sb
	adds r0, r7, r1
	adds r1, r6, #0
	mov r2, r8
	movs r3, #0x17
	bl sub_0800E408
	adds r5, #1
	adds r6, r6, r4
_080140B4:
	ldrb r2, [r5]
	adds r0, r2, #0
	cmp r0, #0xa
	beq _080140C0
	cmp r0, #0
	bne _0801405A
_080140C0:
	ldr r0, _08014198 @ =gUnknown_2020060
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0x90
	movs r2, #0x8a
	lsls r2, r2, #1
	bl sub_080045CC
_080140D0:
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #8]
	adds r2, r0, #0
	cmp r2, #5
	ble _0801400E
	mov r2, sl
	ldr r3, [sp, #0xc]
	subs r0, r2, r3
	lsls r0, r0, #1
	ldr r1, _0801419C @ =gUnknown_85ED610
	adds r4, r0, r1
	movs r2, #0
	ldrsh r0, [r4, r2]
	ldr r3, _080141A0 @ =0x000003E7
	cmp r0, r3
	beq _08014124
	adds r4, r0, #0
	ldr r1, _080141A4 @ =gUnknown_20293BC
	ldr r2, [r1, #0x20]
	cmp r2, #0
	beq _08014124
	ldr r1, [r2, #0x30]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r3, [r1, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	ldr r0, _080141A8 @ =gUnknown_2029424
	ldr r0, [r0]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
_08014124:
	mov r4, sl
	ldr r1, [sp, #0xc]
	subs r0, r4, r1
	lsls r0, r0, #1
	ldr r2, _080141AC @ =gUnknown_85ED612
	adds r4, r0, r2
	movs r3, #0
	ldrsh r0, [r4, r3]
	ldr r1, _080141A0 @ =0x000003E7
	cmp r0, r1
	beq _0801416C
	adds r4, r0, #0
	ldr r3, _080141A4 @ =gUnknown_20293BC
	ldr r2, [r3, #0x2c]
	cmp r2, #0
	beq _0801416C
	ldr r1, [r2, #0x30]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r3, [r1, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	ldr r0, _080141B0 @ =gUnknown_202942C
	ldr r0, [r0]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
_0801416C:
	mov r4, sl
	ldr r1, [sp, #0xc]
	subs r0, r4, r1
	lsls r0, r0, #1
	ldr r2, _080141B4 @ =gUnknown_85ED614
	adds r5, r0, r2
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #0x6f
	bne _080141C0
	ldr r4, _080141B8 @ =gUnknown_2029428
	ldr r0, [r4]
	ldr r1, _080141BC @ =gUnknown_861179C
	bl sub_08002350
	ldr r0, [r4]
	bl sub_08002428
	b _080141E8
	.align 2, 0
_08014194: .4byte gUnknown_85F2254
_08014198: .4byte gUnknown_2020060
_0801419C: .4byte gUnknown_85ED610
_080141A0: .4byte 0x000003E7
_080141A4: .4byte gUnknown_20293BC
_080141A8: .4byte gUnknown_2029424
_080141AC: .4byte gUnknown_85ED612
_080141B0: .4byte gUnknown_202942C
_080141B4: .4byte gUnknown_85ED614
_080141B8: .4byte gUnknown_2029428
_080141BC: .4byte gUnknown_861179C
_080141C0:
	ldr r4, _08014260 @ =0x000003E7
	cmp r0, r4
	beq _080141E8
	ldr r4, _08014264 @ =gUnknown_2029428
	ldr r0, [r4]
	add r1, sp, #4
	add r2, sp, #8
	bl sub_080023E4
	ldr r0, [r4]
	ldr r3, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	ldr r1, [sp, #4]
	movs r4, #0
	ldrsh r2, [r5, r4]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_080141E8:
	ldr r7, _08014268 @ =gUnknown_85ED5FE
	mov r1, sl
	ldr r2, [sp, #0xc]
	subs r0, r1, r2
	lsls r5, r0, #1
	adds r0, r7, #0
	adds r0, #0x18
	adds r4, r5, r0
	movs r3, #0
	ldrsh r0, [r4, r3]
	ldr r1, _0801426C @ =0x03E70000
	asrs r6, r1, #0x10
	cmp r0, r6
	beq _08014228
	ldr r2, _08014270 @ =gUnknown_20293BC
	ldr r0, [r2, #0x34]
	add r1, sp, #4
	add r2, sp, #8
	bl sub_080023E4
	ldr r3, _08014270 @ =gUnknown_20293BC
	ldr r0, [r3, #0x34]
	ldr r3, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r2, [sp, #8]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_08014228:
	adds r0, r7, #0
	adds r0, #0x1a
	adds r2, r5, r0
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, r6
	beq _080142A4
	ldr r4, _08014274 @ =0xFFFFFCE0
	adds r0, r1, r4
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xa
	bhi _08014280
	asrs r0, r1, #0x10
	bl sub_0800FCC8
	ldr r1, _08014278 @ =gUnknown_2022310
	ldr r0, [r1]
	ldr r1, _0801427C @ =gUnknown_2020074
	ldr r1, [r1]
	bl sub_08002350
	ldr r2, _08014278 @ =gUnknown_2022310
	ldr r0, [r2]
	bl sub_08002428
	b _080142A4
	.align 2, 0
_08014260: .4byte 0x000003E7
_08014264: .4byte gUnknown_2029428
_08014268: .4byte gUnknown_85ED5FE
_0801426C: .4byte 0x03E70000
_08014270: .4byte gUnknown_20293BC
_08014274: .4byte 0xFFFFFCE0
_08014278: .4byte gUnknown_2022310
_0801427C: .4byte gUnknown_2020074
_08014280:
	ldr r3, _080142CC @ =gUnknown_2022310
	ldr r0, [r3]
	ldr r4, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r4, r3]
	adds r0, r0, r1
	ldr r3, _080142D0 @ =gUnknown_2022318
	movs r1, #0
	ldrsh r2, [r2, r1]
	lsls r2, r2, #3
	adds r1, r2, r3
	ldr r1, [r1]
	adds r3, #4
	adds r2, r2, r3
	ldr r2, [r2]
	ldr r3, [r4, #0xc]
	bl _call_via_r3
_080142A4:
	mov r2, sl
	ldr r3, [sp, #0xc]
	subs r0, r2, r3
	lsls r0, r0, #1
	ldr r4, _080142D4 @ =gUnknown_85ED61A
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080142DC
	ldr r2, _080142CC @ =gUnknown_2022310
	ldr r0, [r2]
	bl sub_080023D8
	ldr r0, _080142D8 @ =gUnknown_2022314
	ldr r0, [r0]
	bl sub_080023C4
	b _080142F0
	.align 2, 0
_080142CC: .4byte gUnknown_2022310
_080142D0: .4byte gUnknown_2022318
_080142D4: .4byte gUnknown_85ED61A
_080142D8: .4byte gUnknown_2022314
_080142DC:
	cmp r0, #1
	bne _080142F0
	ldr r3, _0801431C @ =gUnknown_2022310
	ldr r0, [r3]
	bl sub_080023C4
	ldr r0, _08014320 @ =gUnknown_2022314
	ldr r0, [r0]
	bl sub_080023D8
_080142F0:
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	movs r0, #1
	bl sub_080053D8
	cmp r4, #0x1d
	bgt _08014300
	b _08013FD2
_08014300:
	ldr r0, _08014324 @ =gUnknown_2025360
	ldr r2, _08014328 @ =0xFFFFFEFE
	adds r1, r0, r2
	movs r2, #1
	bl sub_08010350
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801431C: .4byte gUnknown_2022310
_08014320: .4byte gUnknown_2022314
_08014324: .4byte gUnknown_2025360
_08014328: .4byte 0xFFFFFEFE
	thumb_func_end sub_08013FB4

	thumb_func_start sub_0801432C
sub_0801432C: @ 0x0801432C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _080143E4 @ =gUnknown_2025258
	ldrb r1, [r0, #4]
	ldrb r2, [r0, #5]
	subs r0, r1, r2
	str r0, [sp, #0x10]
	cmp r0, #6
	ble _0801434A
	movs r3, #6
	str r3, [sp, #0x10]
_0801434A:
	movs r4, #0
	str r4, [sp, #0xc]
_0801434E:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #4
	subs r1, r0, r1
	lsls r2, r1, #1
	ldr r4, _080143E8 @ =gUnknown_85ED982
	adds r3, r2, r4
	movs r4, #0
	ldrsh r1, [r3, r4]
	mov sl, r0
	ldr r0, _080143EC @ =0x000003E7
	cmp r1, r0
	beq _0801437E
	adds r0, r1, #0
	ldr r1, _080143E8 @ =gUnknown_85ED982
	adds r1, #2
	adds r1, r2, r1
	movs r3, #0
	ldrsh r1, [r1, r3]
	ldr r4, _080143F0 @ =gUnknown_85ED986
	adds r2, r2, r4
	movs r3, #0
	ldrsh r2, [r2, r3]
	bl sub_080121C8
_0801437E:
	movs r0, #0
	str r0, [sp, #8]
	movs r2, #0
	ldr r4, [sp, #0xc]
	adds r4, #1
	str r4, [sp, #0x14]
	ldr r0, [sp, #0x10]
	cmp r2, r0
	bge _08014456
_08014390:
	adds r0, r2, #3
	mov r3, sl
	ldr r4, [sp, #0xc]
	subs r1, r3, r4
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, _080143E8 @ =gUnknown_85ED982
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r4, _080143EC @ =0x000003E7
	cmp r0, r4
	beq _08014448
	ldr r3, _080143E4 @ =gUnknown_2025258
	ldrb r3, [r3, #5]
	adds r0, r3, r2
	lsls r0, r0, #2
	ldr r4, _080143F4 @ =gUnknown_2025360
	adds r0, r0, r4
	ldrh r1, [r1]
	ldr r5, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, #0x11
	mov r8, r0
	movs r6, #1
	ldrb r2, [r5]
	adds r0, r2, #0
	cmp r0, #0xa
	beq _08014438
	cmp r0, #0
	beq _08014438
	lsls r7, r1, #5
	ldr r0, _080143F8 @ =gUnknown_861C5A2
	mov sb, r0
_080143D8:
	adds r0, r2, #0
	cmp r0, #1
	bne _080143FC
	adds r5, #2
	b _0801442C
	.align 2, 0
_080143E4: .4byte gUnknown_2025258
_080143E8: .4byte gUnknown_85ED982
_080143EC: .4byte 0x000003E7
_080143F0: .4byte gUnknown_85ED986
_080143F4: .4byte gUnknown_2025360
_080143F8: .4byte gUnknown_861C5A2
_080143FC:
	cmp r0, #2
	bne _08014404
	adds r5, #1
	b _0801442C
_08014404:
	ldrb r0, [r5]
	subs r0, #0x20
	ldr r1, _0801450C @ =gUnknown_85F2254
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	movs r4, #8
	subs r4, r4, r0
	ldr r0, _08014510 @ =gUnknown_2020060
	ldr r0, [r0]
	str r0, [sp]
	mov r1, sb
	adds r0, r7, r1
	adds r1, r6, #0
	mov r2, r8
	movs r3, #0x17
	bl sub_0800E408
	adds r5, #1
	adds r6, r6, r4
_0801442C:
	ldrb r2, [r5]
	adds r0, r2, #0
	cmp r0, #0xa
	beq _08014438
	cmp r0, #0
	bne _080143D8
_08014438:
	ldr r0, _08014510 @ =gUnknown_2020060
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0x90
	movs r2, #0x8a
	lsls r2, r2, #1
	bl sub_080045CC
_08014448:
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #8]
	adds r2, r0, #0
	ldr r3, [sp, #0x10]
	cmp r2, r3
	blt _08014390
_08014456:
	mov r4, sl
	ldr r1, [sp, #0xc]
	subs r0, r4, r1
	lsls r0, r0, #1
	ldr r2, _08014514 @ =gUnknown_85ED994
	adds r4, r0, r2
	movs r3, #0
	ldrsh r0, [r4, r3]
	ldr r1, _08014518 @ =0x000003E7
	cmp r0, r1
	beq _0801449E
	adds r4, r0, #0
	ldr r3, _0801451C @ =gUnknown_20293BC
	ldr r2, [r3, #0x20]
	cmp r2, #0
	beq _0801449E
	ldr r1, [r2, #0x30]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r3, [r1, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	ldr r0, _08014520 @ =gUnknown_2029424
	ldr r0, [r0]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
_0801449E:
	mov r4, sl
	ldr r1, [sp, #0xc]
	subs r0, r4, r1
	lsls r0, r0, #1
	ldr r2, _08014524 @ =gUnknown_85ED996
	adds r4, r0, r2
	movs r3, #0
	ldrsh r0, [r4, r3]
	ldr r1, _08014518 @ =0x000003E7
	cmp r0, r1
	beq _080144E6
	adds r4, r0, #0
	ldr r3, _0801451C @ =gUnknown_20293BC
	ldr r2, [r3, #0x2c]
	cmp r2, #0
	beq _080144E6
	ldr r1, [r2, #0x30]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r3, [r1, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	ldr r0, _08014528 @ =gUnknown_202942C
	ldr r0, [r0]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
_080144E6:
	mov r4, sl
	ldr r1, [sp, #0xc]
	subs r0, r4, r1
	lsls r0, r0, #1
	ldr r2, _0801452C @ =gUnknown_85ED998
	adds r5, r0, r2
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #0x6f
	bne _08014538
	ldr r4, _08014530 @ =gUnknown_2029428
	ldr r0, [r4]
	ldr r1, _08014534 @ =gUnknown_861141C
	bl sub_08002350
	ldr r0, [r4]
	bl sub_08002428
	b _08014560
	.align 2, 0
_0801450C: .4byte gUnknown_85F2254
_08014510: .4byte gUnknown_2020060
_08014514: .4byte gUnknown_85ED994
_08014518: .4byte 0x000003E7
_0801451C: .4byte gUnknown_20293BC
_08014520: .4byte gUnknown_2029424
_08014524: .4byte gUnknown_85ED996
_08014528: .4byte gUnknown_202942C
_0801452C: .4byte gUnknown_85ED998
_08014530: .4byte gUnknown_2029428
_08014534: .4byte gUnknown_861141C
_08014538:
	ldr r4, _080145CC @ =0x000003E7
	cmp r0, r4
	beq _08014560
	ldr r4, _080145D0 @ =gUnknown_2029428
	ldr r0, [r4]
	add r1, sp, #4
	add r2, sp, #8
	bl sub_080023E4
	ldr r0, [r4]
	ldr r3, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	ldr r1, [sp, #4]
	movs r4, #0
	ldrsh r2, [r5, r4]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_08014560:
	ldr r7, _080145D4 @ =gUnknown_85ED982
	mov r1, sl
	ldr r2, [sp, #0xc]
	subs r0, r1, r2
	lsls r5, r0, #1
	adds r0, r7, #0
	adds r0, #0x18
	adds r4, r5, r0
	movs r3, #0
	ldrsh r0, [r4, r3]
	ldr r1, _080145D8 @ =0x03E70000
	asrs r6, r1, #0x10
	cmp r0, r6
	beq _080145A0
	ldr r2, _080145DC @ =gUnknown_20293BC
	ldr r0, [r2, #0x34]
	add r1, sp, #4
	add r2, sp, #8
	bl sub_080023E4
	ldr r3, _080145DC @ =gUnknown_20293BC
	ldr r0, [r3, #0x34]
	ldr r3, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r2, [sp, #8]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_080145A0:
	adds r0, r7, #0
	adds r0, #0x1a
	adds r5, r5, r0
	ldrh r0, [r5]
	movs r3, #0
	ldrsh r1, [r5, r3]
	cmp r1, r6
	beq _08014650
	cmp r1, #0x6f
	bne _080145E8
	movs r0, #1
	negs r0, r0
	bl sub_0800FCC8
	ldr r4, _080145E0 @ =gUnknown_2022310
	ldr r0, [r4]
	ldr r1, _080145E4 @ =gUnknown_2020074
	ldr r1, [r1]
	bl sub_08002350
	b _08014618
	.align 2, 0
_080145CC: .4byte 0x000003E7
_080145D0: .4byte gUnknown_2029428
_080145D4: .4byte gUnknown_85ED982
_080145D8: .4byte 0x03E70000
_080145DC: .4byte gUnknown_20293BC
_080145E0: .4byte gUnknown_2022310
_080145E4: .4byte gUnknown_2020074
_080145E8:
	ldr r1, _08014620 @ =0xFFFFFCE0
	adds r4, r1, #0
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xa
	bhi _0801462C
	ldr r2, _08014624 @ =gUnknown_2022310
	ldr r0, [r2]
	bl sub_080023D8
	ldrh r5, [r5]
	adds r0, r4, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_0800FCC8
	ldr r3, _08014624 @ =gUnknown_2022310
	ldr r0, [r3]
	ldr r1, _08014628 @ =gUnknown_2020074
	ldr r1, [r1]
	bl sub_08002350
	ldr r4, _08014624 @ =gUnknown_2022310
_08014618:
	ldr r0, [r4]
	bl sub_08002428
	b _08014650
	.align 2, 0
_08014620: .4byte 0xFFFFFCE0
_08014624: .4byte gUnknown_2022310
_08014628: .4byte gUnknown_2020074
_0801462C:
	ldr r1, _08014678 @ =gUnknown_2022310
	ldr r0, [r1]
	ldr r4, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r4, r2]
	adds r0, r0, r1
	ldr r3, _0801467C @ =gUnknown_2022318
	movs r1, #0
	ldrsh r2, [r5, r1]
	lsls r2, r2, #3
	adds r1, r2, r3
	ldr r1, [r1]
	adds r3, #4
	adds r2, r2, r3
	ldr r2, [r2]
	ldr r3, [r4, #0xc]
	bl _call_via_r3
_08014650:
	mov r2, sl
	ldr r3, [sp, #0xc]
	subs r0, r2, r3
	lsls r0, r0, #1
	ldr r4, _08014680 @ =gUnknown_85ED99E
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08014688
	ldr r2, _08014678 @ =gUnknown_2022310
	ldr r0, [r2]
	bl sub_080023D8
	ldr r0, _08014684 @ =gUnknown_2022314
	ldr r0, [r0]
	bl sub_080023C4
	b _0801469C
	.align 2, 0
_08014678: .4byte gUnknown_2022310
_0801467C: .4byte gUnknown_2022318
_08014680: .4byte gUnknown_85ED99E
_08014684: .4byte gUnknown_2022314
_08014688:
	cmp r0, #1
	bne _0801469C
	ldr r3, _080146E8 @ =gUnknown_2022310
	ldr r0, [r3]
	bl sub_080023C4
	ldr r0, _080146EC @ =gUnknown_2022314
	ldr r0, [r0]
	bl sub_080023D8
_0801469C:
	ldr r4, [sp, #0x14]
	str r4, [sp, #0xc]
	movs r0, #1
	bl sub_080053D8
	cmp r4, #0x1d
	bgt _080146AC
	b _0801434E
_080146AC:
	ldr r4, _080146F0 @ =gUnknown_20293BC
	ldr r0, [r4, #0x44]
	bl sub_080023D8
	ldr r0, [r4, #0x40]
	bl sub_080023D8
	ldr r3, _080146F4 @ =gUnknown_202780C
	ldr r1, _080146F8 @ =0x00000A89
	adds r0, r3, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	ldr r4, _080146FC @ =0x00000B8C
	adds r2, r3, r4
	adds r0, r0, r2
	ldr r2, _08014700 @ =0x00000A8A
	adds r3, r3, r2
	adds r1, r1, r3
	movs r2, #1
	bl sub_08010350
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080146E8: .4byte gUnknown_2022310
_080146EC: .4byte gUnknown_2022314
_080146F0: .4byte gUnknown_20293BC
_080146F4: .4byte gUnknown_202780C
_080146F8: .4byte 0x00000A89
_080146FC: .4byte 0x00000B8C
_08014700: .4byte 0x00000A8A
	thumb_func_end sub_0801432C

	thumb_func_start sub_08014704
sub_08014704: @ 0x08014704
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xd8
	add r7, sp, #8
	str r1, [r7, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r7, #0x38]
	bl sub_0804441C
	str r0, [r7, #0x48]
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x44]
	ldr r2, [r7, #0x48]
	adds r2, #4
	ldr r1, [r7, #0x48]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08014748 @ =sub_0801474C
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _08014750
	.align 2, 0
_08014748: .4byte _0801474C
_0801474C: @ 0x0801474C
	bl sub_0801501C
_08014750:
	str r7, [r2]
	ldr r2, _080148C0 @ =gUnknown_863104A
	movs r0, #0x10
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [r7, #0x44]
	movs r1, #1
	movs r3, #0x10
	bl sub_08002504
	ldr r4, _080148C4 @ =gUnknown_2024938
	str r0, [r4]
	ldr r5, [r7, #0x48]
	ldr r0, [r5, #4]
	ldr r0, [r0]
	str r0, [r5, #4]
	adds r1, r4, #0
	ldr r0, [r1]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0
	movs r2, #0xa0
	bl _call_via_r3
	ldr r4, _080148C4 @ =gUnknown_2024938
	ldr r0, [r4]
	bl sub_080023D8
	ldr r0, [r7, #0x38]
	bl sub_08012B24
	movs r5, #0
	str r5, [r7, #0x40]
	ldr r0, [r7, #0x3c]
	cmp r0, #0
	beq _080147A2
	b _08014AB8
_080147A2:
	ldr r1, [r7, #0x40]
	adds r2, r1, #0
	adds r2, #1
	str r2, [r7, #0x40]
	ldr r0, [r7, #0x38]
	bl sub_08013084
	ldr r3, [r7, #0x40]
	cmp r3, #0x22
	ble _080147A2
	ldr r4, _080148C8 @ =gUnknown_85EE756
	movs r5, #0
	ldrsh r0, [r4, r5]
	movs r2, #2
	ldrsh r1, [r4, r2]
	movs r3, #4
	ldrsh r2, [r4, r3]
	bl sub_080121C8
	movs r5, #6
	ldrsh r4, [r4, r5]
	str r4, [r7, #0x4c]
	ldr r1, _080148CC @ =gUnknown_20293BC
	ldr r0, [r1, #8]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	ldr r4, _080148CC @ =gUnknown_20293BC
	ldr r0, [r4, #0xc]
	ldr r2, [r0, #0x30]
	movs r5, #0x10
	ldrsh r1, [r2, r5]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	ldr r1, [r7, #0x4c]
	movs r2, #0
	bl _call_via_r3
	ldr r0, [r4, #0x10]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	ldr r1, [r7, #0x4c]
	movs r2, #0
	bl _call_via_r3
	ldr r0, [r4, #0x14]
	ldr r2, [r0, #0x30]
	movs r4, #0x10
	ldrsh r1, [r2, r4]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	ldr r1, [r7, #0x4c]
	movs r2, #0
	bl _call_via_r3
	ldr r5, _080148CC @ =gUnknown_20293BC
	ldr r0, [r5, #4]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	ldr r1, [r7, #0x4c]
	movs r2, #0
	bl _call_via_r3
	ldr r4, _080148C8 @ =gUnknown_85EE756
	movs r5, #8
	ldrsh r0, [r4, r5]
	lsls r3, r0, #3
	subs r3, r3, r0
	lsls r3, r3, #2
	subs r3, r3, r0
	lsls r3, r3, #5
	ldr r0, _080148D0 @ =gUnknown_8605C1C
	adds r3, r3, r0
	movs r0, #0
	movs r1, #0x59
	movs r2, #0x1b
	bl sub_080045CC
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	lsls r3, r0, #3
	subs r3, r3, r0
	lsls r3, r3, #7
	ldr r0, _080148D4 @ =gUnknown_86087FC
	adds r3, r3, r0
	movs r0, #0
	movs r1, #0x74
	movs r2, #0x1c
	bl sub_080045CC
	ldr r2, _080148CC @ =gUnknown_20293BC
	ldr r0, [r2, #0x18]
	adds r3, r7, #0
	adds r3, #0x30
	str r3, [r7, #0x50]
	adds r4, r7, #0
	adds r4, #0x34
	str r4, [r7, #0x54]
	adds r1, r3, #0
	adds r2, r4, #0
	bl sub_080023E4
	ldr r5, _080148CC @ =gUnknown_20293BC
	ldr r0, [r5, #0x18]
	ldr r3, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	ldr r1, [r7, #0x30]
	ldr r4, _080148C8 @ =gUnknown_85EE756
	movs r5, #0xc
	ldrsh r2, [r4, r5]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	bl sub_080129A0
	ldr r2, _080148D8 @ =gUnknown_2027824
	str r2, [r7, #0x58]
	movs r5, #0x10
	ldrsh r3, [r4, r5]
	str r3, [r7, #0x5c]
	cmp r3, #0x6f
	bne _080148DC
	adds r0, r2, #0
	bl sub_0800C57C
	b _08014924
	.align 2, 0
_080148C0: .4byte gUnknown_863104A
_080148C4: .4byte gUnknown_2024938
_080148C8: .4byte gUnknown_85EE756
_080148CC: .4byte gUnknown_20293BC
_080148D0: .4byte gUnknown_8605C1C
_080148D4: .4byte gUnknown_86087FC
_080148D8: .4byte gUnknown_2027824
_080148DC:
	ldr r0, _08014944 @ =gUnknown_2020054
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xb0
	lsls r2, r2, #1
	bl memset
	movs r0, #0
	str r0, [r7, #0x60]
	ldr r1, [r7, #0x58]
	ldrb r0, [r1]
	cmp r0, #0
	beq _08014924
	ldr r2, [r7, #0x5c]
	lsls r2, r2, #5
	str r2, [r7, #0x64]
_080148FC:
	ldr r0, _08014944 @ =gUnknown_2020054
	ldr r1, [r0]
	ldr r3, [r7, #0x60]
	lsls r0, r3, #5
	adds r0, r0, r1
	ldr r4, [r7, #0x64]
	ldr r5, _08014948 @ =gUnknown_861C5A2
	adds r1, r4, r5
	movs r2, #0x20
	bl memcpy
	ldr r0, [r7, #0x58]
	adds r0, #2
	str r0, [r7, #0x58]
	ldr r1, [r7, #0x60]
	adds r1, #1
	str r1, [r7, #0x60]
	ldrb r0, [r0]
	cmp r0, #0
	bne _080148FC
_08014924:
	ldr r0, _08014944 @ =gUnknown_2020054
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0x9a
	movs r2, #0xb
	bl sub_080045CC
	ldr r0, _0801494C @ =gUnknown_85EE756
	movs r3, #0x12
	ldrsh r2, [r0, r3]
	str r2, [r7, #0x68]
	cmp r2, #0x6f
	bne _08014950
	bl sub_0800BE4C
	b _08014976
	.align 2, 0
_08014944: .4byte gUnknown_2020054
_08014948: .4byte gUnknown_861C5A2
_0801494C: .4byte gUnknown_85EE756
_08014950:
	ldr r0, _0801499C @ =gUnknown_2020058
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xf0
	lsls r2, r2, #2
	bl memset
	movs r0, #1
	movs r1, #0x23
	movs r2, #0
	ldr r3, [r7, #0x68]
	bl sub_08012A40
	movs r0, #0x43
	movs r1, #0x21
	movs r2, #0x3c
	ldr r3, [r7, #0x68]
	bl sub_08012A40
_08014976:
	ldr r0, _0801499C @ =gUnknown_2020058
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0xa5
	movs r2, #0x1e
	bl sub_080045CC
	ldr r0, _080149A0 @ =gUnknown_85EE756
	ldrh r0, [r0, #0x14]
	str r0, [r7, #0x6c]
	ldr r4, _080149A4 @ =gUnknown_202784D
	str r4, [r7, #0x70]
	cmp r0, #0x6f
	bne _080149A8
	adds r0, r4, #0
	bl sub_0800C5B4
	b _08014A42
	.align 2, 0
_0801499C: .4byte gUnknown_2020058
_080149A0: .4byte gUnknown_85EE756
_080149A4: .4byte gUnknown_202784D
_080149A8:
	ldr r0, _080149E8 @ =gUnknown_202005C
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xe6
	lsls r2, r2, #4
	bl memset
	movs r5, #0
	str r5, [r7, #0x74]
	movs r0, #2
	str r0, [r7, #0x78]
	ldr r1, [r7, #0x70]
	ldrb r0, [r1]
	cmp r0, #0
	beq _08014A42
	ldr r2, [r7, #0x6c]
	lsls r2, r2, #5
	movs r3, #0x80
	adds r3, r3, r7
	str r2, [r3]
_080149D0:
	cmp r0, #0xa
	bne _080149EC
	ldr r4, [r7, #0x74]
	adds r4, #0xa
	str r4, [r7, #0x74]
	movs r5, #2
	str r5, [r7, #0x78]
	ldr r0, [r7, #0x70]
	adds r0, #1
	str r0, [r7, #0x70]
	b _08014A3A
	.align 2, 0
_080149E8: .4byte gUnknown_202005C
_080149EC:
	ldr r1, [r7, #0x70]
	ldrb r0, [r1]
	subs r0, #0x20
	ldr r1, _08014AA4 @ =gUnknown_85F2254
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #8
	subs r0, r0, r1
	str r0, [r7, #0x7c]
	ldr r2, [r7, #0x78]
	adds r0, r2, r0
	cmp r0, #0xb8
	ble _08014A12
	movs r3, #2
	str r3, [r7, #0x78]
	ldr r4, [r7, #0x74]
	adds r4, #0xa
	str r4, [r7, #0x74]
_08014A12:
	ldr r0, _08014AA8 @ =gUnknown_202005C
	ldr r0, [r0]
	str r0, [sp]
	movs r5, #0x80
	adds r5, r5, r7
	ldr r5, [r5]
	ldr r1, _08014AAC @ =gUnknown_861C5A2
	adds r0, r5, r1
	ldr r1, [r7, #0x78]
	ldr r2, [r7, #0x74]
	movs r3, #0x17
	bl sub_0800E408
	ldr r0, [r7, #0x70]
	adds r0, #1
	str r0, [r7, #0x70]
	ldr r1, [r7, #0x78]
	ldr r2, [r7, #0x7c]
	adds r1, r1, r2
	str r1, [r7, #0x78]
_08014A3A:
	ldr r3, [r7, #0x70]
	ldrb r0, [r3]
	cmp r0, #0
	bne _080149D0
_08014A42:
	ldr r0, _08014AA8 @ =gUnknown_202005C
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0xc3
	movs r2, #0x73
	bl sub_080045CC
	ldr r4, _08014AB0 @ =gUnknown_20293BC
	ldr r0, [r4]
	adds r1, r7, #0
	adds r1, #0x30
	adds r2, r7, #0
	adds r2, #0x34
	bl sub_080023E4
	ldr r0, [r4]
	ldr r3, [r0, #0x30]
	movs r5, #8
	ldrsh r1, [r3, r5]
	adds r0, r0, r1
	ldr r2, _08014AB4 @ =gUnknown_85EE756
	movs r4, #0x16
	ldrsh r1, [r2, r4]
	ldr r2, [r7, #0x34]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	ldr r5, _08014AB0 @ =gUnknown_20293BC
	ldr r0, [r5, #0x34]
	adds r1, r7, #0
	adds r1, #0x30
	adds r2, r7, #0
	adds r2, #0x34
	bl sub_080023E4
	ldr r0, [r5, #0x34]
	ldr r3, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	ldr r4, _08014AB4 @ =gUnknown_85EE756
	movs r5, #0x18
	ldrsh r1, [r4, r5]
	ldr r2, [r7, #0x34]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	b _08014F96
	.align 2, 0
_08014AA4: .4byte gUnknown_85F2254
_08014AA8: .4byte gUnknown_202005C
_08014AAC: .4byte gUnknown_861C5A2
_08014AB0: .4byte gUnknown_20293BC
_08014AB4: .4byte gUnknown_85EE756
_08014AB8:
	ldr r0, _08014CAC @ =gUnknown_85EDD06
	movs r1, #0x84
	adds r1, r1, r7
	str r0, [r1]
_08014AC0:
	ldr r0, [r7, #0x38]
	ldr r1, [r7, #0x40]
	bl sub_08013084
	movs r0, #0x1a
	ldr r3, [r7, #0x40]
	adds r2, r3, #0
	muls r2, r0, r2
	movs r3, #0x88
	adds r3, r3, r7
	str r2, [r3]
	movs r4, #0x84
	adds r4, r4, r7
	ldr r4, [r4]
	adds r1, r2, r4
	movs r5, #0
	ldrsh r0, [r1, r5]
	ldr r2, _08014CB0 @ =0x000003E7
	cmp r0, r2
	beq _08014B0A
	movs r4, #0x84
	adds r4, r4, r7
	ldr r1, [r4]
	adds r1, #2
	movs r5, #0x88
	adds r5, r5, r7
	ldr r5, [r5]
	adds r1, r5, r1
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r2, [r4]
	adds r2, #4
	adds r2, r5, r2
	movs r4, #0
	ldrsh r2, [r2, r4]
	bl sub_080121C8
_08014B0A:
	movs r5, #0x84
	adds r5, r5, r7
	ldr r0, [r5]
	adds r0, #6
	movs r2, #0x88
	adds r2, r2, r7
	ldr r2, [r2]
	adds r1, r2, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r4, _08014CB0 @ =0x000003E7
	cmp r0, r4
	beq _08014BA4
	adds r5, r0, #0
	movs r0, #0x8c
	adds r0, r0, r7
	str r5, [r0]
	ldr r1, _08014CB4 @ =gUnknown_20293BC
	ldr r0, [r1, #8]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	movs r4, #0x8c
	adds r4, r4, r7
	ldr r1, [r4]
	movs r2, #0
	bl _call_via_r3
	ldr r5, _08014CB4 @ =gUnknown_20293BC
	ldr r0, [r5, #0xc]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	ldr r1, [r4]
	movs r2, #0
	bl _call_via_r3
	ldr r0, [r5, #0x10]
	ldr r2, [r0, #0x30]
	movs r4, #0x10
	ldrsh r1, [r2, r4]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	movs r5, #0x8c
	adds r5, r5, r7
	ldr r1, [r5]
	movs r2, #0
	bl _call_via_r3
	ldr r1, _08014CB4 @ =gUnknown_20293BC
	ldr r0, [r1, #0x14]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	ldr r1, [r5]
	movs r2, #0
	bl _call_via_r3
	ldr r4, _08014CB4 @ =gUnknown_20293BC
	ldr r0, [r4, #4]
	ldr r2, [r0, #0x30]
	movs r5, #0x10
	ldrsh r1, [r2, r5]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	movs r2, #0x8c
	adds r2, r2, r7
	ldr r1, [r2]
	movs r2, #0
	bl _call_via_r3
_08014BA4:
	movs r3, #0x84
	adds r3, r3, r7
	ldr r0, [r3]
	adds r0, #8
	movs r4, #0x88
	adds r4, r4, r7
	ldr r4, [r4]
	adds r1, r4, r0
	movs r5, #0
	ldrsh r0, [r1, r5]
	ldr r2, _08014CB0 @ =0x000003E7
	cmp r0, r2
	beq _08014BD6
	lsls r3, r0, #3
	subs r3, r3, r0
	lsls r3, r3, #2
	subs r3, r3, r0
	lsls r3, r3, #5
	ldr r0, _08014CB8 @ =gUnknown_8605C1C
	adds r3, r3, r0
	movs r0, #0
	movs r1, #0x59
	movs r2, #0x1b
	bl sub_080045CC
_08014BD6:
	movs r4, #0x84
	adds r4, r4, r7
	ldr r0, [r4]
	adds r0, #0xa
	movs r5, #0x88
	adds r5, r5, r7
	ldr r5, [r5]
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, _08014CB0 @ =0x000003E7
	cmp r0, r3
	beq _08014C04
	lsls r3, r0, #3
	subs r3, r3, r0
	lsls r3, r3, #7
	ldr r0, _08014CBC @ =gUnknown_86087FC
	adds r3, r3, r0
	movs r0, #0
	movs r1, #0x74
	movs r2, #0x1c
	bl sub_080045CC
_08014C04:
	movs r5, #0x84
	adds r5, r5, r7
	ldr r0, [r5]
	adds r0, #0xc
	movs r1, #0x88
	adds r1, r1, r7
	ldr r1, [r1]
	adds r0, r1, r0
	movs r1, #0x90
	adds r1, r1, r7
	str r0, [r1]
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r3, _08014CB0 @ =0x000003E7
	cmp r0, r3
	beq _08014C50
	ldr r4, _08014CB4 @ =gUnknown_20293BC
	ldr r0, [r4, #0x18]
	adds r1, r7, #0
	adds r1, #0x30
	adds r2, r7, #0
	adds r2, #0x34
	bl sub_080023E4
	ldr r0, [r4, #0x18]
	ldr r3, [r0, #0x30]
	movs r5, #8
	ldrsh r1, [r3, r5]
	adds r0, r0, r1
	ldr r1, [r7, #0x30]
	movs r4, #0x90
	adds r4, r4, r7
	ldr r4, [r4]
	movs r5, #0
	ldrsh r2, [r4, r5]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_08014C50:
	movs r5, #0x84
	adds r5, r5, r7
	ldr r0, [r5]
	adds r0, #0xe
	movs r2, #0x88
	adds r2, r2, r7
	ldr r2, [r2]
	adds r1, r2, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r4, _08014CB0 @ =0x000003E7
	cmp r0, r4
	beq _08014C6E
	bl sub_080129A0
_08014C6E:
	movs r0, #0x88
	adds r0, r0, r7
	ldr r0, [r0]
	ldr r2, _08014CC0 @ =gUnknown_85EDD16
	adds r1, r0, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [r7, #0x40]
	adds r3, #1
	movs r4, #0xcc
	adds r4, r4, r7
	str r3, [r4]
	ldr r5, _08014CB0 @ =0x000003E7
	cmp r0, r5
	beq _08014D3E
	ldr r0, _08014CC4 @ =gUnknown_2027824
	movs r2, #0x94
	adds r2, r2, r7
	str r0, [r2]
	movs r4, #0
	ldrsh r3, [r1, r4]
	movs r4, #0x98
	adds r4, r4, r7
	str r3, [r4]
	cmp r3, #0x6f
	bne _08014CC8
	ldr r0, [r2]
	bl sub_0800C57C
	b _08014D30
	.align 2, 0
_08014CAC: .4byte gUnknown_85EDD06
_08014CB0: .4byte 0x000003E7
_08014CB4: .4byte gUnknown_20293BC
_08014CB8: .4byte gUnknown_8605C1C
_08014CBC: .4byte gUnknown_86087FC
_08014CC0: .4byte gUnknown_85EDD16
_08014CC4: .4byte gUnknown_2027824
_08014CC8:
	ldr r0, _08014D64 @ =gUnknown_2020054
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xb0
	lsls r2, r2, #1
	bl memset
	movs r5, #0
	movs r0, #0x9c
	adds r0, r0, r7
	str r5, [r0]
	movs r1, #0x94
	adds r1, r1, r7
	ldr r1, [r1]
	ldrb r0, [r1]
	cmp r0, #0
	beq _08014D30
	movs r2, #0x98
	adds r2, r2, r7
	ldr r2, [r2]
	lsls r2, r2, #5
	movs r3, #0xa0
	adds r3, r3, r7
	str r2, [r3]
_08014CF8:
	ldr r0, _08014D64 @ =gUnknown_2020054
	ldr r1, [r0]
	movs r3, #0x9c
	adds r3, r3, r7
	ldr r3, [r3]
	lsls r0, r3, #5
	adds r0, r0, r1
	movs r4, #0xa0
	adds r4, r4, r7
	ldr r4, [r4]
	ldr r5, _08014D68 @ =gUnknown_861C5A2
	adds r1, r4, r5
	movs r2, #0x20
	bl memcpy
	movs r0, #0x94
	adds r0, r0, r7
	ldr r5, [r0]
	adds r5, #2
	str r5, [r0]
	movs r2, #0x9c
	adds r2, r2, r7
	ldr r1, [r2]
	adds r1, #1
	str r1, [r2]
	ldrb r0, [r5]
	cmp r0, #0
	bne _08014CF8
_08014D30:
	ldr r0, _08014D64 @ =gUnknown_2020054
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0x9a
	movs r2, #0xb
	bl sub_080045CC
_08014D3E:
	movs r0, #0x1a
	ldr r3, [r7, #0x40]
	muls r0, r3, r0
	ldr r4, _08014D6C @ =gUnknown_85EDD18
	adds r1, r0, r4
	movs r5, #0
	ldrsh r0, [r1, r5]
	ldr r2, _08014D70 @ =0x000003E7
	cmp r0, r2
	beq _08014DAC
	adds r3, r0, #0
	movs r4, #0xa4
	adds r4, r4, r7
	str r3, [r4]
	cmp r3, #0x6f
	bne _08014D74
	bl sub_0800BE4C
	b _08014D9E
	.align 2, 0
_08014D64: .4byte gUnknown_2020054
_08014D68: .4byte gUnknown_861C5A2
_08014D6C: .4byte gUnknown_85EDD18
_08014D70: .4byte 0x000003E7
_08014D74:
	ldr r0, _08014DE0 @ =gUnknown_2020058
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xf0
	lsls r2, r2, #2
	bl memset
	movs r0, #1
	movs r1, #0x23
	movs r2, #0
	movs r5, #0xa4
	adds r5, r5, r7
	ldr r3, [r5]
	bl sub_08012A40
	movs r0, #0x43
	movs r1, #0x21
	movs r2, #0x3c
	ldr r3, [r5]
	bl sub_08012A40
_08014D9E:
	ldr r0, _08014DE0 @ =gUnknown_2020058
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0xa5
	movs r2, #0x1e
	bl sub_080045CC
_08014DAC:
	movs r0, #0x1a
	ldr r1, [r7, #0x40]
	muls r0, r1, r0
	ldr r2, _08014DE4 @ =gUnknown_85EDD1A
	adds r1, r0, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	ldr r4, _08014DE8 @ =0x000003E7
	cmp r0, r4
	bne _08014DC2
	b _08014EE4
_08014DC2:
	ldrh r1, [r1]
	movs r5, #0xa8
	adds r5, r5, r7
	str r1, [r5]
	ldr r0, _08014DEC @ =gUnknown_202784D
	movs r1, #0xac
	adds r1, r1, r7
	str r0, [r1]
	ldr r2, [r5]
	cmp r2, #0x6f
	bne _08014DF0
	bl sub_0800C5B4
	b _08014ED6
	.align 2, 0
_08014DE0: .4byte gUnknown_2020058
_08014DE4: .4byte gUnknown_85EDD1A
_08014DE8: .4byte 0x000003E7
_08014DEC: .4byte gUnknown_202784D
_08014DF0:
	ldr r0, _08014E4C @ =gUnknown_202005C
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xe6
	lsls r2, r2, #4
	bl memset
	movs r3, #0
	movs r4, #0xb0
	adds r4, r4, r7
	str r3, [r4]
	movs r5, #2
	movs r0, #0xb4
	adds r0, r0, r7
	str r5, [r0]
	movs r1, #0xac
	adds r1, r1, r7
	ldr r1, [r1]
	ldrb r0, [r1]
	cmp r0, #0
	beq _08014ED6
	movs r2, #0xa8
	adds r2, r2, r7
	ldr r2, [r2]
	lsls r2, r2, #5
	movs r3, #0xbc
	adds r3, r3, r7
	str r2, [r3]
_08014E28:
	cmp r0, #0xa
	bne _08014E50
	movs r4, #0xb0
	adds r4, r4, r7
	ldr r3, [r4]
	adds r3, #0xa
	str r3, [r4]
	movs r5, #2
	movs r0, #0xb4
	adds r0, r0, r7
	str r5, [r0]
	movs r2, #0xac
	adds r2, r2, r7
	ldr r1, [r2]
	adds r1, #1
	str r1, [r2]
	b _08014ECA
	.align 2, 0
_08014E4C: .4byte gUnknown_202005C
_08014E50:
	movs r4, #0xac
	adds r4, r4, r7
	ldr r3, [r4]
	ldrb r0, [r3]
	subs r0, #0x20
	ldr r1, _08014FD4 @ =gUnknown_85F2254
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #8
	subs r0, r0, r1
	movs r5, #0xb8
	adds r5, r5, r7
	str r0, [r5]
	movs r1, #0xb4
	adds r1, r1, r7
	ldr r1, [r1]
	adds r0, r1, r0
	cmp r0, #0xb8
	ble _08014E8A
	movs r2, #2
	movs r3, #0xb4
	adds r3, r3, r7
	str r2, [r3]
	movs r5, #0xb0
	adds r5, r5, r7
	ldr r4, [r5]
	adds r4, #0xa
	str r4, [r5]
_08014E8A:
	ldr r0, _08014FD8 @ =gUnknown_202005C
	ldr r0, [r0]
	str r0, [sp]
	movs r1, #0xbc
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r2, _08014FDC @ =gUnknown_861C5A2
	adds r0, r1, r2
	movs r2, #0xb4
	adds r2, r2, r7
	ldr r1, [r2]
	movs r3, #0xb0
	adds r3, r3, r7
	ldr r2, [r3]
	movs r3, #0x17
	bl sub_0800E408
	movs r5, #0xac
	adds r5, r5, r7
	ldr r4, [r5]
	adds r4, #1
	str r4, [r5]
	movs r0, #0xb4
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0xb8
	adds r1, r1, r7
	ldr r1, [r1]
	adds r0, r0, r1
	movs r1, #0xb4
	adds r1, r1, r7
	str r0, [r1]
_08014ECA:
	movs r2, #0xac
	adds r2, r2, r7
	ldr r2, [r2]
	ldrb r0, [r2]
	cmp r0, #0
	bne _08014E28
_08014ED6:
	ldr r0, _08014FD8 @ =gUnknown_202005C
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0xc3
	movs r2, #0x73
	bl sub_080045CC
_08014EE4:
	movs r0, #0x1a
	ldr r4, [r7, #0x40]
	adds r3, r4, #0
	muls r3, r0, r3
	movs r4, #0xc0
	adds r4, r4, r7
	str r3, [r4]
	ldr r0, _08014FE0 @ =gUnknown_85EDD06
	adds r0, #0x16
	adds r0, r3, r0
	movs r5, #0xc4
	adds r5, r5, r7
	str r0, [r5]
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, _08014FE4 @ =0x000003E7
	cmp r0, r2
	beq _08014F36
	ldr r3, _08014FE8 @ =gUnknown_20293BC
	ldr r0, [r3]
	adds r1, r7, #0
	adds r1, #0x30
	adds r2, r7, #0
	adds r2, #0x34
	bl sub_080023E4
	ldr r4, _08014FE8 @ =gUnknown_20293BC
	ldr r0, [r4]
	ldr r3, [r0, #0x30]
	movs r5, #8
	ldrsh r1, [r3, r5]
	adds r0, r0, r1
	movs r2, #0xc4
	adds r2, r2, r7
	ldr r2, [r2]
	movs r4, #0
	ldrsh r1, [r2, r4]
	ldr r2, [r7, #0x34]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_08014F36:
	ldr r0, _08014FE0 @ =gUnknown_85EDD06
	adds r0, #0x18
	movs r3, #0xc0
	adds r3, r3, r7
	ldr r3, [r3]
	adds r0, r3, r0
	movs r3, #0xc8
	adds r3, r3, r7
	str r0, [r3]
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldr r5, _08014FE4 @ =0x000003E7
	cmp r0, r5
	beq _08014F80
	ldr r1, _08014FE8 @ =gUnknown_20293BC
	ldr r0, [r1, #0x34]
	adds r1, r7, #0
	adds r1, #0x30
	adds r2, r7, #0
	adds r2, #0x34
	bl sub_080023E4
	ldr r2, _08014FE8 @ =gUnknown_20293BC
	ldr r0, [r2, #0x34]
	ldr r3, [r0, #0x30]
	movs r4, #8
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	movs r5, #0xc8
	adds r5, r5, r7
	ldr r5, [r5]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r2, [r7, #0x34]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_08014F80:
	movs r0, #0xcc
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [r7, #0x40]
	movs r0, #1
	bl sub_080053D8
	ldr r1, [r7, #0x40]
	cmp r1, #0x22
	bgt _08014F96
	b _08014AC0
_08014F96:
	ldr r2, _08014FE8 @ =gUnknown_20293BC
	ldr r0, [r2, #0x1c]
	bl sub_080023C4
	ldr r3, _08014FE8 @ =gUnknown_20293BC
	ldr r0, [r3, #0x40]
	bl sub_080023D8
	ldr r4, _08014FEC @ =gUnknown_2024938
	ldr r0, [r4]
	bl sub_080023C4
	ldr r0, [r4]
	cmp r0, #0
	beq _08014FBA
	movs r1, #3
	bl sub_080018D8
_08014FBA:
	movs r0, #0x20
	ldr r5, [r7, #0x38]
	ands r0, r5
	cmp r0, #0
	beq _08014FFC
	ldr r1, _08014FF0 @ =gUnknown_202942C
	ldr r3, [r1]
	ldr r2, _08014FF4 @ =gUnknown_2029428
	ldr r0, [r2]
	str r0, [r1]
	ldr r1, _08014FF8 @ =gUnknown_2029424
	b _08015008
	.align 2, 0
_08014FD4: .4byte gUnknown_85F2254
_08014FD8: .4byte gUnknown_202005C
_08014FDC: .4byte gUnknown_861C5A2
_08014FE0: .4byte gUnknown_85EDD06
_08014FE4: .4byte 0x000003E7
_08014FE8: .4byte gUnknown_20293BC
_08014FEC: .4byte gUnknown_2024938
_08014FF0: .4byte gUnknown_202942C
_08014FF4: .4byte gUnknown_2029428
_08014FF8: .4byte gUnknown_2029424
_08014FFC:
	ldr r1, _08015010 @ =gUnknown_2029424
	ldr r3, [r1]
	ldr r2, _08015014 @ =gUnknown_2029428
	ldr r0, [r2]
	str r0, [r1]
	ldr r1, _08015018 @ =gUnknown_202942C
_08015008:
	ldr r0, [r1]
	str r0, [r2]
	str r3, [r1]
	b _08015064
	.align 2, 0
_08015010: .4byte gUnknown_2029424
_08015014: .4byte gUnknown_2029428
_08015018: .4byte gUnknown_202942C
	thumb_func_end sub_08014704

	thumb_func_start sub_0801501C
sub_0801501C: @ 0x0801501C
	ldr r2, [r7, #0x48]
	adds r2, #4
	ldr r1, [r7, #0x48]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _0801503C @ =sub_08015040
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _08015042
	.align 2, 0
_0801503C: .4byte _08015040
_08015040: @ 0x08015040
	b _08015060
_08015042:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _08015054
	ldr r0, [r7, #0x44]
	bl sub_080046C0
_08015054:
	ldr r4, [r7, #0x48]
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08015060:
	bl sub_080443CC
_08015064:
	add sp, #0xd8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0801501C

	thumb_func_start sub_08015074
sub_08015074: @ 0x08015074
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	bl sub_08012B24
	ldr r4, _0801520C @ =gUnknown_20293BC
	ldr r0, [r4, #0x40]
	bl sub_080023C4
	ldr r0, [r4, #0x1c]
	bl sub_080023D8
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r1, _08015210 @ =gUnknown_85EE094
	mov sb, r1
_080150A0:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl sub_08013084
	movs r0, #0x1a
	ldr r2, [sp, #0x10]
	adds r5, r2, #0
	muls r5, r0, r5
	mov r3, sb
	adds r1, r5, r3
	movs r6, #0
	ldrsh r0, [r1, r6]
	ldr r2, _08015214 @ =0x000003E7
	cmp r0, r2
	beq _080150D6
	mov r1, sb
	adds r1, #2
	adds r1, r5, r1
	movs r6, #0
	ldrsh r1, [r1, r6]
	mov r2, sb
	adds r2, #4
	adds r2, r5, r2
	movs r3, #0
	ldrsh r2, [r2, r3]
	bl sub_080121C8
_080150D6:
	mov r0, sb
	adds r0, #6
	adds r1, r5, r0
	movs r6, #0
	ldrsh r0, [r1, r6]
	ldr r2, _08015214 @ =0x000003E7
	cmp r0, r2
	beq _08015152
	adds r4, r0, #0
	ldr r6, _0801520C @ =gUnknown_20293BC
	ldr r0, [r6, #8]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	ldr r0, [r6, #0xc]
	ldr r2, [r0, #0x30]
	movs r6, #0x10
	ldrsh r1, [r2, r6]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	ldr r1, _0801520C @ =gUnknown_20293BC
	ldr r0, [r1, #0x10]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	ldr r6, _0801520C @ =gUnknown_20293BC
	ldr r0, [r6, #0x14]
	ldr r2, [r0, #0x30]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	ldr r0, [r6, #4]
	ldr r2, [r0, #0x30]
	movs r6, #0x10
	ldrsh r1, [r2, r6]
	adds r0, r0, r1
	ldr r3, [r2, #0x14]
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
_08015152:
	mov r0, sb
	adds r0, #8
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, _08015214 @ =0x000003E7
	cmp r0, r3
	beq _0801517A
	lsls r3, r0, #3
	subs r3, r3, r0
	lsls r3, r3, #2
	subs r3, r3, r0
	lsls r3, r3, #5
	ldr r0, _08015218 @ =gUnknown_8605C1C
	adds r3, r3, r0
	movs r0, #0
	movs r1, #0x59
	movs r2, #0x1b
	bl sub_080045CC
_0801517A:
	mov r0, sb
	adds r0, #0xa
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, _08015214 @ =0x000003E7
	cmp r0, r3
	beq _0801519E
	lsls r3, r0, #3
	subs r3, r3, r0
	lsls r3, r3, #7
	ldr r0, _0801521C @ =gUnknown_86087FC
	adds r3, r3, r0
	movs r0, #0
	movs r1, #0x74
	movs r2, #0x1c
	bl sub_080045CC
_0801519E:
	mov r0, sb
	adds r0, #0xc
	adds r4, r5, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, _08015214 @ =0x000003E7
	cmp r0, r2
	beq _080151D2
	ldr r3, _0801520C @ =gUnknown_20293BC
	ldr r0, [r3, #0x18]
	add r1, sp, #4
	add r2, sp, #8
	bl sub_080023E4
	ldr r6, _0801520C @ =gUnknown_20293BC
	ldr r0, [r6, #0x18]
	ldr r3, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	ldr r1, [sp, #4]
	movs r6, #0
	ldrsh r2, [r4, r6]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_080151D2:
	mov r0, sb
	adds r0, #0xe
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, _08015214 @ =0x000003E7
	cmp r0, r3
	beq _080151E6
	bl sub_080129A0
_080151E6:
	ldr r0, _08015220 @ =gUnknown_85EE0A4
	adds r1, r5, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x10]
	adds r3, #1
	str r3, [sp, #0x14]
	ldr r6, _08015214 @ =0x000003E7
	cmp r0, r6
	beq _0801526A
	ldr r6, _08015224 @ =gUnknown_2027824
	movs r0, #0
	ldrsh r4, [r1, r0]
	cmp r4, #0x6f
	bne _08015228
	adds r0, r6, #0
	bl sub_0800C57C
	b _0801525C
	.align 2, 0
_0801520C: .4byte gUnknown_20293BC
_08015210: .4byte gUnknown_85EE094
_08015214: .4byte 0x000003E7
_08015218: .4byte gUnknown_8605C1C
_0801521C: .4byte gUnknown_86087FC
_08015220: .4byte gUnknown_85EE0A4
_08015224: .4byte gUnknown_2027824
_08015228:
	ldr r0, _0801528C @ =gUnknown_2020054
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xb0
	lsls r2, r2, #1
	bl memset
	movs r5, #0
	ldrb r0, [r6]
	cmp r0, #0
	beq _0801525C
	lsls r4, r4, #5
	ldr r7, _08015290 @ =gUnknown_861C5A2
_08015242:
	ldr r0, _0801528C @ =gUnknown_2020054
	ldr r1, [r0]
	lsls r0, r5, #5
	adds r0, r0, r1
	adds r1, r4, r7
	movs r2, #0x20
	bl memcpy
	adds r6, #2
	adds r5, #1
	ldrb r0, [r6]
	cmp r0, #0
	bne _08015242
_0801525C:
	ldr r0, _0801528C @ =gUnknown_2020054
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0x9a
	movs r2, #0xb
	bl sub_080045CC
_0801526A:
	movs r0, #0x1a
	ldr r1, [sp, #0x10]
	muls r0, r1, r0
	ldr r2, _08015294 @ =gUnknown_85EE0A6
	adds r3, r0, r2
	movs r6, #0
	ldrsh r0, [r3, r6]
	ldr r1, _08015298 @ =0x000003E7
	cmp r0, r1
	beq _080152D0
	adds r4, r0, #0
	cmp r4, #0x6f
	bne _0801529C
	bl sub_0800BE4C
	b _080152C2
	.align 2, 0
_0801528C: .4byte gUnknown_2020054
_08015290: .4byte gUnknown_861C5A2
_08015294: .4byte gUnknown_85EE0A6
_08015298: .4byte 0x000003E7
_0801529C:
	ldr r0, _080152F4 @ =gUnknown_2020058
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xf0
	lsls r2, r2, #2
	bl memset
	movs r0, #1
	movs r1, #0x23
	movs r2, #0
	adds r3, r4, #0
	bl sub_08012A40
	movs r0, #0x43
	movs r1, #0x21
	movs r2, #0x3c
	adds r3, r4, #0
	bl sub_08012A40
_080152C2:
	ldr r0, _080152F4 @ =gUnknown_2020058
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0xa5
	movs r2, #0x1e
	bl sub_080045CC
_080152D0:
	movs r0, #0x1a
	ldr r3, [sp, #0x10]
	muls r0, r3, r0
	ldr r6, _080152F8 @ =gUnknown_85EE0A8
	adds r1, r0, r6
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, _080152FC @ =0x000003E7
	cmp r0, r3
	beq _08015386
	ldrh r4, [r1]
	ldr r5, _08015300 @ =gUnknown_202784D
	cmp r4, #0x6f
	bne _08015304
	adds r0, r5, #0
	bl sub_0800C5B4
	b _08015378
	.align 2, 0
_080152F4: .4byte gUnknown_2020058
_080152F8: .4byte gUnknown_85EE0A8
_080152FC: .4byte 0x000003E7
_08015300: .4byte gUnknown_202784D
_08015304:
	ldr r0, _08015334 @ =gUnknown_202005C
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0xe6
	lsls r2, r2, #4
	bl memset
	movs r6, #0
	movs r0, #2
	mov r8, r0
	ldrb r0, [r5]
	cmp r0, #0
	beq _08015378
	lsls r7, r4, #5
	ldr r1, _08015338 @ =gUnknown_861C5A2
	mov sl, r1
_08015324:
	cmp r0, #0xa
	bne _0801533C
	adds r6, #0xa
	movs r2, #2
	mov r8, r2
	adds r5, #1
	b _08015372
	.align 2, 0
_08015334: .4byte gUnknown_202005C
_08015338: .4byte gUnknown_861C5A2
_0801533C:
	ldrb r0, [r5]
	subs r0, #0x20
	ldr r1, _08015420 @ =gUnknown_85F2254
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #8
	subs r4, r0, r1
	mov r3, r8
	adds r0, r3, r4
	cmp r0, #0xb8
	ble _0801535A
	movs r0, #2
	mov r8, r0
	adds r6, #0xa
_0801535A:
	ldr r0, _08015424 @ =gUnknown_202005C
	ldr r0, [r0]
	str r0, [sp]
	mov r1, sl
	adds r0, r7, r1
	mov r1, r8
	adds r2, r6, #0
	movs r3, #0x17
	bl sub_0800E408
	adds r5, #1
	add r8, r4
_08015372:
	ldrb r0, [r5]
	cmp r0, #0
	bne _08015324
_08015378:
	ldr r0, _08015424 @ =gUnknown_202005C
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0xc3
	movs r2, #0x73
	bl sub_080045CC
_08015386:
	ldr r7, _08015428 @ =gUnknown_85EE094
	movs r0, #0x1a
	ldr r2, [sp, #0x10]
	adds r5, r2, #0
	muls r5, r0, r5
	adds r0, r7, #0
	adds r0, #0x16
	adds r4, r5, r0
	movs r3, #0
	ldrsh r0, [r4, r3]
	ldr r1, _0801542C @ =0x03E70000
	asrs r6, r1, #0x10
	cmp r0, r6
	beq _080153C6
	ldr r2, _08015430 @ =gUnknown_20293BC
	ldr r0, [r2]
	add r1, sp, #4
	add r2, sp, #8
	bl sub_080023E4
	ldr r3, _08015430 @ =gUnknown_20293BC
	ldr r0, [r3]
	ldr r3, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r2, [sp, #8]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_080153C6:
	adds r0, r7, #0
	adds r0, #0x18
	adds r4, r5, r0
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, r6
	beq _080153F6
	ldr r6, _08015430 @ =gUnknown_20293BC
	ldr r0, [r6, #0x34]
	add r1, sp, #4
	add r2, sp, #8
	bl sub_080023E4
	ldr r0, [r6, #0x34]
	ldr r3, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	movs r6, #0
	ldrsh r1, [r4, r6]
	ldr r2, [sp, #8]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_080153F6:
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x10]
	movs r0, #1
	bl sub_080053D8
	ldr r1, [sp, #0x10]
	cmp r1, #0x1c
	bgt _08015408
	b _080150A0
_08015408:
	movs r0, #0x20
	ldr r2, [sp, #0xc]
	ands r0, r2
	cmp r0, #0
	beq _08015440
	ldr r1, _08015434 @ =gUnknown_202942C
	ldr r3, [r1]
	ldr r2, _08015438 @ =gUnknown_2029428
	ldr r0, [r2]
	str r0, [r1]
	ldr r1, _0801543C @ =gUnknown_2029424
	b _0801544C
	.align 2, 0
_08015420: .4byte gUnknown_85F2254
_08015424: .4byte gUnknown_202005C
_08015428: .4byte gUnknown_85EE094
_0801542C: .4byte 0x03E70000
_08015430: .4byte gUnknown_20293BC
_08015434: .4byte gUnknown_202942C
_08015438: .4byte gUnknown_2029428
_0801543C: .4byte gUnknown_2029424
_08015440:
	ldr r1, _08015464 @ =gUnknown_2029424
	ldr r3, [r1]
	ldr r2, _08015468 @ =gUnknown_2029428
	ldr r0, [r2]
	str r0, [r1]
	ldr r1, _0801546C @ =gUnknown_202942C
_0801544C:
	ldr r0, [r1]
	str r0, [r2]
	str r3, [r1]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015464: .4byte gUnknown_2029424
_08015468: .4byte gUnknown_2029428
_0801546C: .4byte gUnknown_202942C
	thumb_func_end sub_08015074

	thumb_func_start sub_08015470
sub_08015470: @ 0x08015470
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	add r7, sp, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r7, #0x30]
	bl sub_0804441C
	str r0, [r7, #0x3c]
	ldr r1, _080154D0 @ =gUnknown_2020060
	ldr r0, [r1]
	movs r2, #0x8a
	lsls r2, r2, #6
	movs r1, #0
	bl memset
	movs r2, #0x8a
	lsls r2, r2, #1
	ldr r4, _080154D0 @ =gUnknown_2020060
	ldr r3, [r4]
	movs r0, #0
	movs r1, #0x90
	bl sub_080045CC
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x38]
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r5, [r7, #0x3c]
	ldr r0, [r5, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _080154D4 @ =sub_080154D8
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080154DA
	.align 2, 0
_080154D0: .4byte gUnknown_2020060
_080154D4: .4byte _080154D8
_080154D8: @ 0x080154D8
	b _08015688
_080154DA:
	str r7, [r2]
	ldr r2, _08015640 @ =gUnknown_863104A
	movs r0, #0x10
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [r7, #0x38]
	movs r1, #1
	movs r3, #0x10
	bl sub_08002504
	ldr r1, _08015644 @ =gUnknown_2024938
	str r0, [r1]
	ldr r2, [r7, #0x3c]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r3, r1, #0
	ldr r0, [r3]
	ldr r2, [r0, #0x30]
	movs r4, #8
	ldrsh r1, [r2, r4]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0
	movs r2, #0xa0
	bl _call_via_r3
	ldr r5, _08015644 @ =gUnknown_2024938
	ldr r0, [r5]
	bl sub_080023D8
	ldr r0, [r7, #0x30]
	bl sub_08012B24
	ldr r1, _08015648 @ =gUnknown_20293BC
	ldr r0, [r1, #0x44]
	bl sub_080023C4
	ldr r2, _08015648 @ =gUnknown_20293BC
	ldr r0, [r2, #0x40]
	bl sub_080023C4
	movs r3, #0
	str r3, [r7, #0x34]
	ldr r4, _0801564C @ =gUnknown_85EE386
	str r4, [r7, #0x40]
	movs r5, #0
	str r5, [r7, #0x44]
_0801553C:
	ldr r0, [r7, #0x30]
	ldr r1, [r7, #0x34]
	bl sub_08013084
	ldr r1, [r7, #0x40]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, _08015650 @ =0x000003E7
	cmp r0, r3
	beq _0801556A
	ldr r1, _0801564C @ =gUnknown_85EE386
	adds r1, #2
	ldr r5, [r7, #0x44]
	adds r1, r5, r1
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r2, _0801564C @ =gUnknown_85EE386
	adds r2, #4
	adds r2, r5, r2
	movs r3, #0
	ldrsh r2, [r2, r3]
	bl sub_080121C8
_0801556A:
	ldr r0, _0801564C @ =gUnknown_85EE386
	adds r0, #6
	ldr r4, [r7, #0x44]
	adds r1, r4, r0
	movs r5, #0
	ldrsh r0, [r1, r5]
	ldr r2, _08015650 @ =0x000003E7
	cmp r0, r2
	beq _08015594
	lsls r3, r0, #3
	subs r3, r3, r0
	lsls r3, r3, #2
	subs r3, r3, r0
	lsls r3, r3, #5
	ldr r0, _08015654 @ =gUnknown_8605C1C
	adds r3, r3, r0
	movs r0, #0
	movs r1, #0x59
	movs r2, #0x1b
	bl sub_080045CC
_08015594:
	ldr r0, _0801564C @ =gUnknown_85EE386
	adds r0, #8
	ldr r4, [r7, #0x44]
	adds r1, r4, r0
	movs r5, #0
	ldrsh r0, [r1, r5]
	ldr r2, _08015650 @ =0x000003E7
	cmp r0, r2
	beq _080155BA
	lsls r3, r0, #3
	subs r3, r3, r0
	lsls r3, r3, #7
	ldr r0, _08015658 @ =gUnknown_86087FC
	adds r3, r3, r0
	movs r0, #0
	movs r1, #0x74
	movs r2, #0x1c
	bl sub_080045CC
_080155BA:
	ldr r0, _0801564C @ =gUnknown_85EE386
	adds r0, #0xa
	ldr r4, [r7, #0x44]
	adds r2, r4, r0
	movs r5, #0
	ldrsh r0, [r2, r5]
	ldr r1, _08015650 @ =0x000003E7
	cmp r0, r1
	beq _080155E8
	ldr r0, _08015648 @ =gUnknown_20293BC
	ldr r0, [r0, #0x18]
	ldr r3, [r0, #0x30]
	movs r4, #8
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	movs r5, #0
	ldrsh r1, [r2, r5]
	ldr r4, [r7, #0x40]
	movs r5, #0xc
	ldrsh r2, [r4, r5]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_080155E8:
	ldr r0, [r7, #0x40]
	adds r0, #0xe
	str r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	adds r1, #0xe
	str r1, [r7, #0x44]
	ldr r2, [r7, #0x34]
	adds r2, #1
	str r2, [r7, #0x34]
	movs r0, #1
	bl sub_080053D8
	ldr r3, [r7, #0x34]
	cmp r3, #0x21
	ble _0801553C
	ldr r4, _08015648 @ =gUnknown_20293BC
	ldr r0, [r4, #0x1c]
	bl sub_080023C4
	ldr r0, [r4, #0x40]
	bl sub_080023D8
	ldr r5, _08015644 @ =gUnknown_2024938
	ldr r0, [r5]
	bl sub_080023C4
	ldr r0, [r5]
	cmp r0, #0
	beq _08015628
	movs r1, #3
	bl sub_080018D8
_08015628:
	movs r0, #0x20
	ldr r1, [r7, #0x30]
	ands r0, r1
	cmp r0, #0
	beq _08015668
	ldr r1, _0801565C @ =gUnknown_202942C
	ldr r3, [r1]
	ldr r2, _08015660 @ =gUnknown_2029428
	ldr r0, [r2]
	str r0, [r1]
	ldr r1, _08015664 @ =gUnknown_2029424
	b _08015674
	.align 2, 0
_08015640: .4byte gUnknown_863104A
_08015644: .4byte gUnknown_2024938
_08015648: .4byte gUnknown_20293BC
_0801564C: .4byte gUnknown_85EE386
_08015650: .4byte 0x000003E7
_08015654: .4byte gUnknown_8605C1C
_08015658: .4byte gUnknown_86087FC
_0801565C: .4byte gUnknown_202942C
_08015660: .4byte gUnknown_2029428
_08015664: .4byte gUnknown_2029424
_08015668:
	ldr r1, _0801567C @ =gUnknown_2029424
	ldr r3, [r1]
	ldr r2, _08015680 @ =gUnknown_2029428
	ldr r0, [r2]
	str r0, [r1]
	ldr r1, _08015684 @ =gUnknown_202942C
_08015674:
	ldr r0, [r1]
	str r0, [r2]
	str r3, [r1]
	b _080156D0
	.align 2, 0
_0801567C: .4byte gUnknown_2029424
_08015680: .4byte gUnknown_2029428
_08015684: .4byte gUnknown_202942C
_08015688:
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r3, [r7, #0x3c]
	ldr r0, [r3, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _080156A8 @ =sub_080156AC
	str r0, [r1, #4]
	mov r4, sp
	str r4, [r1, #8]
	b _080156AE
	.align 2, 0
_080156A8: .4byte _080156AC
_080156AC: @ 0x080156AC
	b _080156CC
_080156AE:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _080156C0
	ldr r0, [r7, #0x38]
	bl sub_080046C0
_080156C0:
	ldr r5, [r7, #0x3c]
	ldr r0, [r5, #4]
	ldr r0, [r0]
	str r0, [r5, #4]
	bl sub_0804449C
_080156CC:
	bl sub_080443CC
_080156D0:
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08015470

	thumb_func_start sub_080156E0
sub_080156E0: @ 0x080156E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	add r7, sp, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r7, #0x30]
	bl sub_0804441C
	str r0, [r7, #0x3c]
	ldr r1, _08015740 @ =gUnknown_2020060
	ldr r0, [r1]
	movs r2, #0x8a
	lsls r2, r2, #6
	movs r1, #0
	bl memset
	movs r2, #0x8a
	lsls r2, r2, #1
	ldr r4, _08015740 @ =gUnknown_2020060
	ldr r3, [r4]
	movs r0, #0
	movs r1, #0x90
	bl sub_080045CC
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x38]
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r5, [r7, #0x3c]
	ldr r0, [r5, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08015744 @ =sub_08015748
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0801574A
	.align 2, 0
_08015740: .4byte gUnknown_2020060
_08015744: .4byte _08015748
_08015748: @ 0x08015748
	b _080158F8
_0801574A:
	str r7, [r2]
	ldr r2, _080158B0 @ =gUnknown_863104A
	movs r0, #0x10
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [r7, #0x38]
	movs r1, #1
	movs r3, #0x10
	bl sub_08002504
	ldr r1, _080158B4 @ =gUnknown_2024938
	str r0, [r1]
	ldr r2, [r7, #0x3c]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r3, r1, #0
	ldr r0, [r3]
	ldr r2, [r0, #0x30]
	movs r4, #8
	ldrsh r1, [r2, r4]
	adds r0, r0, r1
	ldr r3, [r2, #0xc]
	movs r1, #0
	movs r2, #0xa0
	bl _call_via_r3
	ldr r5, _080158B4 @ =gUnknown_2024938
	ldr r0, [r5]
	bl sub_080023D8
	ldr r0, [r7, #0x30]
	bl sub_08012B24
	ldr r1, _080158B8 @ =gUnknown_20293BC
	ldr r0, [r1, #0x1c]
	bl sub_080023D8
	ldr r2, _080158B8 @ =gUnknown_20293BC
	ldr r0, [r2, #0x40]
	bl sub_080023C4
	movs r3, #0
	str r3, [r7, #0x34]
	ldr r4, _080158BC @ =gUnknown_85EE562
	str r4, [r7, #0x40]
	movs r5, #0
	str r5, [r7, #0x44]
_080157AC:
	ldr r0, [r7, #0x30]
	ldr r1, [r7, #0x34]
	bl sub_08013084
	ldr r1, [r7, #0x40]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, _080158C0 @ =0x000003E7
	cmp r0, r3
	beq _080157DA
	ldr r1, _080158BC @ =gUnknown_85EE562
	adds r1, #2
	ldr r5, [r7, #0x44]
	adds r1, r5, r1
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r2, _080158BC @ =gUnknown_85EE562
	adds r2, #4
	adds r2, r5, r2
	movs r3, #0
	ldrsh r2, [r2, r3]
	bl sub_080121C8
_080157DA:
	ldr r0, _080158BC @ =gUnknown_85EE562
	adds r0, #6
	ldr r4, [r7, #0x44]
	adds r1, r4, r0
	movs r5, #0
	ldrsh r0, [r1, r5]
	ldr r2, _080158C0 @ =0x000003E7
	cmp r0, r2
	beq _08015804
	lsls r3, r0, #3
	subs r3, r3, r0
	lsls r3, r3, #2
	subs r3, r3, r0
	lsls r3, r3, #5
	ldr r0, _080158C4 @ =gUnknown_8605C1C
	adds r3, r3, r0
	movs r0, #0
	movs r1, #0x59
	movs r2, #0x1b
	bl sub_080045CC
_08015804:
	ldr r0, _080158BC @ =gUnknown_85EE562
	adds r0, #8
	ldr r4, [r7, #0x44]
	adds r1, r4, r0
	movs r5, #0
	ldrsh r0, [r1, r5]
	ldr r2, _080158C0 @ =0x000003E7
	cmp r0, r2
	beq _0801582A
	lsls r3, r0, #3
	subs r3, r3, r0
	lsls r3, r3, #7
	ldr r0, _080158C8 @ =gUnknown_86087FC
	adds r3, r3, r0
	movs r0, #0
	movs r1, #0x74
	movs r2, #0x1c
	bl sub_080045CC
_0801582A:
	ldr r0, _080158BC @ =gUnknown_85EE562
	adds r0, #0xa
	ldr r4, [r7, #0x44]
	adds r2, r4, r0
	movs r5, #0
	ldrsh r0, [r2, r5]
	ldr r1, _080158C0 @ =0x000003E7
	cmp r0, r1
	beq _08015858
	ldr r0, _080158B8 @ =gUnknown_20293BC
	ldr r0, [r0, #0x18]
	ldr r3, [r0, #0x30]
	movs r4, #8
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	movs r5, #0
	ldrsh r1, [r2, r5]
	ldr r4, [r7, #0x40]
	movs r5, #0xc
	ldrsh r2, [r4, r5]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_08015858:
	ldr r0, [r7, #0x40]
	adds r0, #0xe
	str r0, [r7, #0x40]
	ldr r1, [r7, #0x44]
	adds r1, #0xe
	str r1, [r7, #0x44]
	ldr r2, [r7, #0x34]
	adds r2, #1
	str r2, [r7, #0x34]
	movs r0, #1
	bl sub_080053D8
	ldr r3, [r7, #0x34]
	cmp r3, #0x21
	ble _080157AC
	ldr r4, _080158B8 @ =gUnknown_20293BC
	ldr r0, [r4, #0x44]
	bl sub_080023D8
	ldr r0, [r4, #0x40]
	bl sub_080023D8
	ldr r5, _080158B4 @ =gUnknown_2024938
	ldr r0, [r5]
	bl sub_080023C4
	ldr r0, [r5]
	cmp r0, #0
	beq _08015898
	movs r1, #3
	bl sub_080018D8
_08015898:
	movs r0, #0x20
	ldr r1, [r7, #0x30]
	ands r0, r1
	cmp r0, #0
	beq _080158D8
	ldr r1, _080158CC @ =gUnknown_202942C
	ldr r3, [r1]
	ldr r2, _080158D0 @ =gUnknown_2029428
	ldr r0, [r2]
	str r0, [r1]
	ldr r1, _080158D4 @ =gUnknown_2029424
	b _080158E4
	.align 2, 0
_080158B0: .4byte gUnknown_863104A
_080158B4: .4byte gUnknown_2024938
_080158B8: .4byte gUnknown_20293BC
_080158BC: .4byte gUnknown_85EE562
_080158C0: .4byte 0x000003E7
_080158C4: .4byte gUnknown_8605C1C
_080158C8: .4byte gUnknown_86087FC
_080158CC: .4byte gUnknown_202942C
_080158D0: .4byte gUnknown_2029428
_080158D4: .4byte gUnknown_2029424
_080158D8:
	ldr r1, _080158EC @ =gUnknown_2029424
	ldr r3, [r1]
	ldr r2, _080158F0 @ =gUnknown_2029428
	ldr r0, [r2]
	str r0, [r1]
	ldr r1, _080158F4 @ =gUnknown_202942C
_080158E4:
	ldr r0, [r1]
	str r0, [r2]
	str r3, [r1]
	b _08015940
	.align 2, 0
_080158EC: .4byte gUnknown_2029424
_080158F0: .4byte gUnknown_2029428
_080158F4: .4byte gUnknown_202942C
_080158F8:
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r3, [r7, #0x3c]
	ldr r0, [r3, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08015918 @ =sub_0801591C
	str r0, [r1, #4]
	mov r4, sp
	str r4, [r1, #8]
	b _0801591E
	.align 2, 0
_08015918: .4byte _0801591C
_0801591C: @ 0x0801591C
	b _0801593C
_0801591E:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _08015930
	ldr r0, [r7, #0x38]
	bl sub_080046C0
_08015930:
	ldr r5, [r7, #0x3c]
	ldr r0, [r5, #4]
	ldr r0, [r0]
	str r0, [r5, #4]
	bl sub_0804449C
_0801593C:
	bl sub_080443CC
_08015940:
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080156E0

	thumb_func_start sub_08015950
sub_08015950: @ 0x08015950
	push {r4, lr}
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x6f
	bne _08015960
	bl sub_0800BE4C
	b _08015986
_08015960:
	ldr r0, _0801599C @ =gUnknown_2020058
	ldr r0, [r0]
	movs r2, #0xf0
	lsls r2, r2, #2
	movs r1, #0
	bl memset
	movs r0, #1
	movs r1, #0x23
	movs r2, #0
	adds r3, r4, #0
	bl sub_08012A40
	movs r0, #0x43
	movs r1, #0x21
	movs r2, #0x3c
	adds r3, r4, #0
	bl sub_08012A40
_08015986:
	ldr r0, _0801599C @ =gUnknown_2020058
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0xa5
	movs r2, #0x1e
	bl sub_080045CC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801599C: .4byte gUnknown_2020058
	thumb_func_end sub_08015950

	thumb_func_start sub_080159A0
sub_080159A0: @ 0x080159A0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	cmp r6, #0x6f
	bne _080159B8
	ldr r0, _080159B4 @ =gUnknown_2027824
	bl sub_0800C57C
	b _080159EC
	.align 2, 0
_080159B4: .4byte gUnknown_2027824
_080159B8:
	ldr r0, _08015A00 @ =gUnknown_2020054
	ldr r0, [r0]
	movs r2, #0xb0
	lsls r2, r2, #1
	movs r1, #0
	bl memset
	movs r5, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080159EC
	lsls r6, r6, #5
	ldr r7, _08015A04 @ =gUnknown_861C5A2
_080159D2:
	ldr r0, _08015A00 @ =gUnknown_2020054
	ldr r1, [r0]
	lsls r0, r5, #5
	adds r0, r0, r1
	adds r1, r6, r7
	movs r2, #0x20
	bl memcpy
	adds r4, #2
	adds r5, #1
	ldrb r0, [r4]
	cmp r0, #0
	bne _080159D2
_080159EC:
	ldr r0, _08015A00 @ =gUnknown_2020054
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0x9a
	movs r2, #0xb
	bl sub_080045CC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015A00: .4byte gUnknown_2020054
_08015A04: .4byte gUnknown_861C5A2
	thumb_func_end sub_080159A0

	thumb_func_start sub_08015A08
sub_08015A08: @ 0x08015A08
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	cmp r4, #0x6f
	bne _08015A28
	ldr r0, _08015A24 @ =gUnknown_202784D
	bl sub_0800C5B4
	b _08015A94
	.align 2, 0
_08015A24: .4byte gUnknown_202784D
_08015A28:
	ldr r0, _08015A54 @ =gUnknown_202005C
	ldr r0, [r0]
	movs r2, #0xe6
	lsls r2, r2, #4
	movs r1, #0
	bl memset
	movs r6, #0
	movs r7, #2
	ldrb r0, [r5]
	cmp r0, #0
	beq _08015A94
	lsls r4, r4, #5
	mov r8, r4
	ldr r1, _08015A58 @ =gUnknown_861C5A2
	mov sb, r1
_08015A48:
	cmp r0, #0xa
	bne _08015A5C
	adds r6, #0xa
	movs r7, #2
	adds r5, #1
	b _08015A8E
	.align 2, 0
_08015A54: .4byte gUnknown_202005C
_08015A58: .4byte gUnknown_861C5A2
_08015A5C:
	ldrb r0, [r5]
	subs r0, #0x20
	ldr r1, _08015AB0 @ =gUnknown_85F2254
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #8
	subs r4, r0, r1
	adds r0, r7, r4
	cmp r0, #0xb8
	ble _08015A76
	movs r7, #2
	adds r6, #0xa
_08015A76:
	ldr r0, _08015AB4 @ =gUnknown_202005C
	ldr r0, [r0]
	str r0, [sp]
	mov r0, r8
	add r0, sb
	adds r1, r7, #0
	adds r2, r6, #0
	movs r3, #0x17
	bl sub_0800E408
	adds r5, #1
	adds r7, r7, r4
_08015A8E:
	ldrb r0, [r5]
	cmp r0, #0
	bne _08015A48
_08015A94:
	ldr r0, _08015AB4 @ =gUnknown_202005C
	ldr r3, [r0]
	movs r0, #0
	movs r1, #0xc3
	movs r2, #0x73
	bl sub_080045CC
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015AB0: .4byte gUnknown_85F2254
_08015AB4: .4byte gUnknown_202005C
	thumb_func_end sub_08015A08

	thumb_func_start sub_08015AB8
sub_08015AB8: @ 0x08015AB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r4, r0, #0x10
	lsrs r7, r4, #0x10
	lsls r5, r1, #0x10
	lsrs r0, r5, #0x10
	mov ip, r0
	subs r0, r2, #2
	subs r3, #1
	cmp r0, #0x40
	ble _08015AD2
	movs r0, #0x40
_08015AD2:
	adds r1, r0, #1
	cmp r3, r1
	ble _08015ADA
	adds r3, r1, #0
_08015ADA:
	cmp r0, #0
	blt _08015AE2
	cmp r3, #0
	bge _08015AE6
_08015AE2:
	adds r0, r7, #0
	b _08015B40
_08015AE6:
	ldr r2, _08015B4C @ =gUnknown_804AEB0
	ldr r1, _08015B50 @ =gUnknown_804ADB0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r3
	adds r0, r0, r2
	ldrb r0, [r0]
	mov r8, r0
	movs r6, #0x1f
	movs r2, #0x1f
	adds r0, r7, #0
	ands r0, r2
	lsrs r3, r4, #0x15
	ands r3, r6
	lsrs r4, r4, #0x1a
	ands r4, r6
	mov r1, ip
	ands r1, r2
	lsrs r2, r5, #0x15
	ands r2, r6
	lsrs r5, r5, #0x1a
	ands r5, r6
	subs r1, r1, r0
	mov r6, r8
	muls r6, r1, r6
	adds r1, r6, #0
	asrs r1, r1, #6
	adds r0, r0, r1
	subs r2, r2, r3
	mov r1, r8
	muls r1, r2, r1
	asrs r1, r1, #6
	adds r3, r3, r1
	subs r5, r5, r4
	mov r1, r8
	muls r1, r5, r1
	asrs r1, r1, #6
	adds r4, r4, r1
	lsls r3, r3, #5
	adds r0, r0, r3
	lsls r4, r4, #0xa
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08015B40:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08015B4C: .4byte gUnknown_804AEB0
_08015B50: .4byte gUnknown_804ADB0
	thumb_func_end sub_08015AB8

	thumb_func_start sub_08015B54
sub_08015B54: @ 0x08015B54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r6, r2, #0
	str r3, [sp]
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	lsls r4, r1, #0x10
	lsrs r5, r4, #0x10
	subs r0, #2
	subs r3, r2, #1
	cmp r0, #0x40
	ble _08015B78
	movs r0, #0x40
_08015B78:
	cmp r0, #0
	bge _08015B7E
	movs r0, #0
_08015B7E:
	adds r1, r0, #1
	cmp r3, r1
	ble _08015B86
	adds r3, r1, #0
_08015B86:
	ldr r2, _08015C20 @ =gUnknown_804AEB0
	ldr r1, _08015C24 @ =gUnknown_804ADB0
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r3
	adds r0, r0, r2
	ldrb r0, [r0]
	mov ip, r0
	ldr r0, [sp]
	cmp r0, #0
	ble _08015C10
	movs r1, #0x1f
	mov sl, r1
	mov sb, r5
	mov r0, sb
	movs r1, #0x1f
	ands r0, r1
	mov sb, r0
	adds r5, r7, #0
	lsrs r7, r4, #0x15
	mov r0, sl
	ands r0, r7
	mov r8, r0
	lsrs r4, r4, #0x1a
	mov r1, sl
	ands r4, r1
	str r4, [sp, #4]
	ldr r4, [sp]
_08015BC0:
	ldrh r1, [r5]
	adds r3, r1, #0
	movs r7, #0x1f
	ands r3, r7
	lsrs r2, r1, #5
	mov r0, sl
	ands r2, r0
	lsrs r1, r1, #0xa
	ands r1, r0
	mov r7, sb
	subs r0, r7, r3
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #6
	adds r3, r3, r0
	mov r7, r8
	subs r0, r7, r2
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #6
	adds r2, r2, r0
	ldr r7, [sp, #4]
	subs r0, r7, r1
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #6
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r3, r3, r2
	lsls r1, r1, #0xa
	adds r3, r3, r1
	strh r3, [r6]
	adds r6, #2
	adds r5, #2
	subs r4, #1
	cmp r4, #0
	bne _08015BC0
_08015C10:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015C20: .4byte gUnknown_804AEB0
_08015C24: .4byte gUnknown_804ADB0
	thumb_func_end sub_08015B54

	thumb_func_start sub_08015C28
sub_08015C28: @ 0x08015C28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	mov r8, r2
	adds r5, r3, #0
	cmp r5, #0xf
	bls _08015C42
	b _08015D6A
_08015C42:
	ldr r0, [sp, #0x2c]
	cmp r0, #0xf
	ble _08015C4A
	b _08015D6A
_08015C4A:
	cmp r0, #0
	bge _08015C50
	b _08015D6A
_08015C50:
	cmp r0, r5
	bge _08015C56
	b _08015D6A
_08015C56:
	ldr r0, [sp, #0x30]
	subs r4, r0, #2
	ldr r0, [sp, #0x34]
	subs r6, r0, #1
	cmp r4, #0x40
	ble _08015C64
	movs r4, #0x40
_08015C64:
	cmp r4, #0
	bge _08015C6A
	movs r4, #0
_08015C6A:
	adds r0, r4, #1
	cmp r6, r0
	ble _08015C72
	adds r6, r0, #0
_08015C72:
	ldr r0, [sp]
	mov r1, r8
	movs r2, #0x10
	bl CpuSet
	ldr r2, _08015CB8 @ =gUnknown_804AEB0
	ldr r1, _08015CBC @ =gUnknown_804ADB0
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r6
	adds r0, r0, r2
	ldrb r0, [r0]
	str r0, [sp, #8]
	cmp r0, #0
	bne _08015CC0
	adds r4, r5, #0
	ldr r1, [sp, #0x2c]
	cmp r5, r1
	bgt _08015D6A
	lsls r0, r5, #1
	ldr r3, [sp]
	adds r2, r0, r3
	mov r7, r8
	adds r1, r0, r7
_08015CA4:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	adds r4, #1
	ldr r0, [sp, #0x2c]
	cmp r4, r0
	ble _08015CA4
	b _08015D6A
	.align 2, 0
_08015CB8: .4byte gUnknown_804AEB0
_08015CBC: .4byte gUnknown_804ADB0
_08015CC0:
	ldr r1, [sp, #8]
	cmp r1, #0x40
	bne _08015CEA
	adds r4, r5, #0
	ldr r3, [sp, #0x2c]
	cmp r5, r3
	bgt _08015D6A
	lsls r0, r5, #1
	ldr r7, [sp, #4]
	adds r2, r0, r7
	mov r3, r8
	adds r1, r0, r3
_08015CD8:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #2
	adds r4, #1
	ldr r7, [sp, #0x2c]
	cmp r4, r7
	ble _08015CD8
	b _08015D6A
_08015CEA:
	adds r6, r5, #0
	ldr r0, [sp, #0x2c]
	cmp r6, r0
	bgt _08015D6A
	movs r1, #0x1f
	mov sl, r1
	lsls r0, r6, #1
	adds r3, r0, #0
	add r3, r8
	mov sb, r3
	ldr r7, [sp, #4]
	adds r7, r7, r0
	mov r8, r7
	ldr r1, [sp]
	adds r0, r0, r1
	mov ip, r0
_08015D0A:
	mov r7, ip
	ldrh r3, [r7]
	mov r0, r8
	ldrh r2, [r0]
	adds r4, r3, #0
	movs r1, #0x1f
	ands r4, r1
	lsrs r5, r3, #5
	mov r7, sl
	ands r5, r7
	lsrs r3, r3, #0xa
	mov r0, sl
	ands r3, r0
	adds r0, r2, #0
	ands r0, r1
	lsrs r1, r2, #5
	ands r1, r7
	lsrs r2, r2, #0xa
	ands r2, r7
	subs r0, r0, r4
	ldr r7, [sp, #8]
	muls r0, r7, r0
	asrs r0, r0, #6
	adds r4, r4, r0
	subs r1, r1, r5
	adds r0, r1, #0
	muls r0, r7, r0
	asrs r0, r0, #6
	adds r5, r5, r0
	subs r2, r2, r3
	adds r0, r2, #0
	muls r0, r7, r0
	asrs r0, r0, #6
	adds r3, r3, r0
	lsls r5, r5, #5
	adds r4, r4, r5
	lsls r3, r3, #0xa
	adds r4, r4, r3
	mov r0, sb
	strh r4, [r0]
	movs r1, #2
	add sb, r1
	add r8, r1
	add ip, r1
	adds r6, #1
	ldr r3, [sp, #0x2c]
	cmp r6, r3
	ble _08015D0A
_08015D6A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08015C28

	thumb_func_start sub_08015D7C
sub_08015D7C: @ 0x08015D7C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r2, [r5, #0x40]
	ldr r3, [r5, #0x3c]
	cmp r2, r3
	beq _08015DEE
	ldr r0, [r5, #0x48]
	adds r0, #1
	str r0, [r5, #0x48]
	ldr r1, [r5, #0x44]
	cmp r0, r1
	bne _08015DEE
	movs r0, #0
	str r0, [r5, #0x48]
	adds r1, r2, #1
	str r1, [r5, #0x40]
	ldr r0, [r5, #0x2c]
	cmp r0, #1
	bne _08015DA8
	adds r6, r1, #0
	b _08015DAC
_08015DA8:
	subs r0, r3, r1
	adds r6, r0, #1
_08015DAC:
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x4c]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r5, #0x34]
	ldr r3, [r5, #0x38]
	ldr r4, [r5, #0x3c]
	str r4, [sp]
	str r6, [sp, #4]
	bl sub_08015B54
	ldr r4, [r5, #0x50]
	cmp r4, #0
	beq _08015DDE
	ldr r1, [r5, #0x4c]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r5, #0x54]
	ldr r3, [r5, #0x38]
	ldr r0, [r5, #0x3c]
	str r0, [sp]
	str r6, [sp, #4]
	adds r0, r4, #0
	bl sub_08015B54
_08015DDE:
	ldr r0, _08015DF8 @ =gPlttBufferUnfaded
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #3
	orrs r1, r2
	str r1, [r0]
_08015DEE:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08015DF8: .4byte gPlttBufferUnfaded
	thumb_func_end sub_08015D7C

	thumb_func_start sub_08015DFC
sub_08015DFC: @ 0x08015DFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0
	mov sb, r0
	ldr r7, [sp, #0x28]
	cmp sb, r7
	bge _08015E98
	ldr r0, [sp, #0x2c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	movs r0, #0x1f
	mov r8, r0
	movs r7, #0x1f
	mov sl, r7
	str r1, [sp, #4]
	adds r6, r4, #0
	lsls r0, r2, #4
	adds r0, r0, r3
	str r0, [sp]
_08015E2E:
	ldrh r3, [r6]
	ldr r0, [sp, #4]
	ldrh r2, [r0]
	adds r5, r3, #0
	mov r1, sl
	ands r5, r1
	lsrs r4, r3, #5
	mov r7, r8
	ands r4, r7
	lsrs r3, r3, #0xa
	mov r0, r8
	ands r3, r0
	adds r0, r2, #0
	ands r0, r1
	lsrs r1, r2, #5
	ands r1, r7
	lsrs r2, r2, #0xa
	ands r2, r7
	subs r0, r0, r5
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #7
	adds r5, r5, r0
	subs r1, r1, r4
	mov r0, ip
	muls r0, r1, r0
	asrs r0, r0, #7
	adds r4, r4, r0
	subs r2, r2, r3
	mov r0, ip
	muls r0, r2, r0
	asrs r0, r0, #7
	adds r3, r3, r0
	lsls r4, r4, #5
	adds r5, r5, r4
	lsls r3, r3, #0xa
	adds r5, r5, r3
	ldr r0, [sp]
	add r0, sb
	lsls r0, r0, #1
	ldr r1, _08015EB8 @ =gPlttBufferUnfaded
	adds r0, r0, r1
	strh r5, [r0]
	ldr r2, [sp, #4]
	adds r2, #2
	str r2, [sp, #4]
	adds r6, #2
	movs r7, #1
	add sb, r7
	ldr r0, [sp, #0x28]
	cmp sb, r0
	blt _08015E2E
_08015E98:
	ldr r1, _08015EB8 @ =gPlttBufferUnfaded
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, r2
	ldr r1, [r0]
	movs r2, #3
	orrs r1, r2
	str r1, [r0]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08015EB8: .4byte gPlttBufferUnfaded
	thumb_func_end sub_08015DFC

	thumb_func_start sub_08015EBC
sub_08015EBC: @ 0x08015EBC
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r0, _08015F2C @ =gUnknown_20272FC
	ldr r6, [r0]
_08015EC4:
	cmp r6, #0
	beq _08015F34
	ldr r0, [r6, #0x1c]
	subs r0, #1
	str r0, [r6, #0x1c]
	ldr r1, [r6, #0x18]
	subs r0, r1, r0
	lsls r0, r0, #7
	bl Div
	ldr r5, [r6, #4]
	ldr r1, [r6, #8]
	ldr r2, [r6, #0xc]
	ldr r3, [r6, #0x10]
	ldr r4, [r6, #0x14]
	str r4, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_08015DFC
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	bne _08015F30
	adds r4, r6, #0
	ldr r6, [r6, #0x24]
	ldr r1, [r4, #0x24]
	cmp r1, #0
	beq _08015F00
	ldr r0, [r4, #0x20]
	str r0, [r1, #0x20]
_08015F00:
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _08015F10
	ldr r0, [r4, #0x24]
	str r0, [r1, #0x24]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _08015F16
_08015F10:
	ldr r1, _08015F2C @ =gUnknown_20272FC
	ldr r0, [r4, #0x24]
	str r0, [r1]
_08015F16:
	ldr r0, [r4, #4]
	bl sub_08005618
	ldr r0, [r4, #8]
	bl sub_08005618
	adds r0, r4, #0
	bl sub_08005618
	b _08015EC4
	.align 2, 0
_08015F2C: .4byte gUnknown_20272FC
_08015F30:
	ldr r6, [r6, #0x24]
	b _08015EC4
_08015F34:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_08015EBC

	thumb_func_start sub_08015F3C
sub_08015F3C: @ 0x08015F3C
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08015F90
	ldr r0, _08015F8C @ =gUnknown_20272FC
	ldr r5, [r0]
	cmp r5, #0
	beq _08015FD6
_08015F4E:
	adds r4, r5, #0
	ldr r5, [r5, #0x24]
	ldr r1, [r4, #0x24]
	cmp r1, #0
	beq _08015F5C
	ldr r0, [r4, #0x20]
	str r0, [r1, #0x20]
_08015F5C:
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _08015F6C
	ldr r0, [r4, #0x24]
	str r0, [r1, #0x24]
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _08015F72
_08015F6C:
	ldr r1, _08015F8C @ =gUnknown_20272FC
	ldr r0, [r4, #0x24]
	str r0, [r1]
_08015F72:
	ldr r0, [r4, #4]
	bl sub_08005618
	ldr r0, [r4, #8]
	bl sub_08005618
	adds r0, r4, #0
	bl sub_08005618
	cmp r5, #0
	bne _08015F4E
	b _08015FD6
	.align 2, 0
_08015F8C: .4byte gUnknown_20272FC
_08015F90:
	ldr r0, _08015FDC @ =gUnknown_20272FC
	ldr r5, [r0]
	cmp r5, #0
	beq _08015FD6
_08015F98:
	ldrh r0, [r5]
	cmp r0, r4
	bne _08015FD0
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq _08015FA8
	ldr r0, [r5, #0x20]
	str r0, [r1, #0x20]
_08015FA8:
	ldr r1, [r5, #0x20]
	cmp r1, #0
	beq _08015FB8
	ldr r0, [r5, #0x24]
	str r0, [r1, #0x24]
	ldr r0, [r5, #0x20]
	cmp r0, #0
	bne _08015FBE
_08015FB8:
	ldr r1, _08015FDC @ =gUnknown_20272FC
	ldr r0, [r5, #0x24]
	str r0, [r1]
_08015FBE:
	ldr r0, [r5, #4]
	bl sub_08005618
	ldr r0, [r5, #8]
	bl sub_08005618
	adds r0, r5, #0
	bl sub_08005618
_08015FD0:
	ldr r5, [r5, #0x24]
	cmp r5, #0
	bne _08015F98
_08015FD6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015FDC: .4byte gUnknown_20272FC
	thumb_func_end sub_08015F3C

	thumb_func_start sub_08015FE0
sub_08015FE0: @ 0x08015FE0
	push {r4, r5, lr}
	ldr r5, _0801600C @ =gUnknown_20293A0
	ldr r3, [r5, #0xc]
	ldr r4, [r5, #8]
	cmp r3, r4
	bne _08015FEE
	b _08016184
_08015FEE:
	ldr r0, [r5, #0x10]
	cmp r0, #2
	bne _080160D8
	ldr r2, [r5]
	cmp r2, #0x40
	beq _08016010
	cmp r2, #0x40
	bgt _08016000
	b _08016184
_08016000:
	cmp r2, #0x80
	beq _0801603A
	cmp r2, #0xc0
	beq _0801603A
	b _08016184
	.align 2, 0
_0801600C: .4byte gUnknown_20293A0
_08016010:
	ldr r0, [r5, #0x18]
	adds r0, #1
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x14]
	cmp r0, r1
	beq _0801601E
	b _08016184
_0801601E:
	cmp r3, r4
	bge _08016026
	adds r0, r3, #1
	b _08016028
_08016026:
	subs r0, r3, #1
_08016028:
	str r0, [r5, #0xc]
	ldrh r0, [r5, #4]
	ldrh r1, [r5, #6]
	ldr r3, [r5, #0xc]
	movs r2, #0x10
	subs r2, r2, r3
	bl sub_080162A0
	b _080160C4
_0801603A:
	ldr r0, [r5, #0x18]
	adds r0, #1
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x14]
	cmp r0, r1
	beq _08016048
	b _08016184
_08016048:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #8]
	cmp r1, r0
	bge _08016054
	adds r0, r1, #1
	b _08016056
_08016054:
	subs r0, r1, #1
_08016056:
	str r0, [r5, #0xc]
	cmp r2, #0x80
	bne _08016098
	ldrh r1, [r5, #4]
	ldr r4, [r5, #0xc]
	cmp r4, #0x10
	ble _08016066
	movs r4, #0x10
_08016066:
	cmp r4, #0
	bge _0801606C
	movs r4, #0
_0801606C:
	movs r0, #0x80
	orrs r1, r0
	ldr r0, _0801608C @ =0x04000050
	bl sub_0800062C
	ldr r0, _08016090 @ =gUnknown_2027300
	strh r4, [r0]
	movs r1, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08016094 @ =0x04000054
	bl sub_0800062C
	b _080160C4
	.align 2, 0
_0801608C: .4byte 0x04000050
_08016090: .4byte gUnknown_2027300
_08016094: .4byte 0x04000054
_08016098:
	ldrh r1, [r5, #4]
	ldr r4, [r5, #0xc]
	cmp r4, #0x10
	ble _080160A2
	movs r4, #0x10
_080160A2:
	cmp r4, #0
	bge _080160A8
	movs r4, #0
_080160A8:
	movs r0, #0xc0
	orrs r1, r0
	ldr r0, _080160CC @ =0x04000050
	bl sub_0800062C
	ldr r0, _080160D0 @ =gUnknown_2027300
	strh r4, [r0]
	movs r1, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _080160D4 @ =0x04000054
	bl sub_0800062C
_080160C4:
	movs r0, #0
	str r0, [r5, #0x18]
	b _08016184
	.align 2, 0
_080160CC: .4byte 0x04000050
_080160D0: .4byte gUnknown_2027300
_080160D4: .4byte 0x04000054
_080160D8:
	cmp r0, #1
	bne _08016184
	ldr r0, [r5, #0x18]
	adds r1, r0, #1
	str r1, [r5, #0x18]
	ldr r2, [r5, #0x14]
	cmp r1, r2
	bne _080160EE
	adds r3, r4, #0
	str r3, [r5, #0xc]
	b _080160FC
_080160EE:
	subs r0, r4, r3
	muls r0, r1, r0
	adds r1, r2, #0
	bl Div
	ldr r1, [r5, #0xc]
	adds r3, r1, r0
_080160FC:
	ldr r0, [r5]
	cmp r0, #0x40
	beq _08016110
	cmp r0, #0x40
	ble _08016184
	cmp r0, #0x80
	beq _0801611E
	cmp r0, #0xc0
	beq _08016158
	b _08016184
_08016110:
	ldrh r0, [r5, #4]
	ldrh r1, [r5, #6]
	movs r2, #0x10
	subs r2, r2, r3
	bl sub_080162A0
	b _08016184
_0801611E:
	ldrh r1, [r5, #4]
	adds r4, r3, #0
	cmp r4, #0x10
	ble _08016128
	movs r4, #0x10
_08016128:
	cmp r4, #0
	bge _0801612E
	movs r4, #0
_0801612E:
	movs r0, #0x80
	orrs r1, r0
	ldr r0, _0801614C @ =0x04000050
	bl sub_0800062C
	ldr r0, _08016150 @ =gUnknown_2027300
	strh r4, [r0]
	movs r1, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08016154 @ =0x04000054
	bl sub_0800062C
	b _08016184
	.align 2, 0
_0801614C: .4byte 0x04000050
_08016150: .4byte gUnknown_2027300
_08016154: .4byte 0x04000054
_08016158:
	ldrh r1, [r5, #4]
	adds r4, r3, #0
	cmp r4, #0x10
	ble _08016162
	movs r4, #0x10
_08016162:
	cmp r4, #0
	bge _08016168
	movs r4, #0
_08016168:
	movs r0, #0xc0
	orrs r1, r0
	ldr r0, _0801618C @ =0x04000050
	bl sub_0800062C
	ldr r0, _08016190 @ =gUnknown_2027300
	strh r4, [r0]
	movs r1, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08016194 @ =0x04000054
	bl sub_0800062C
_08016184:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801618C: .4byte 0x04000050
_08016190: .4byte gUnknown_2027300
_08016194: .4byte 0x04000054
	thumb_func_end sub_08015FE0

	thumb_func_start sub_08016198
sub_08016198: @ 0x08016198
	push {r4, r5, r6, r7, lr}
	adds r4, r2, #0
	ldr r5, [sp, #0x14]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	mov ip, r6
	ldr r1, _080161F0 @ =gUnknown_20293A0
	cmp r5, #0
	bne _080161FC
	movs r0, #0x10
	subs r4, r0, r3
	adds r5, r3, #0
	cmp r4, #0x10
	ble _080161BC
	movs r4, #0x10
_080161BC:
	cmp r4, #0
	bge _080161C2
	movs r4, #0
_080161C2:
	cmp r3, #0x10
	ble _080161C8
	movs r5, #0x10
_080161C8:
	cmp r5, #0
	bge _080161CE
	movs r5, #0
_080161CE:
	lsls r1, r6, #8
	orrs r1, r7
	movs r0, #0x40
	orrs r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _080161F4 @ =0x04000050
	bl sub_0800062C
	lsls r1, r5, #8
	orrs r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _080161F8 @ =0x04000052
	bl sub_0800062C
	b _08016250
	.align 2, 0
_080161F0: .4byte gUnknown_20293A0
_080161F4: .4byte 0x04000050
_080161F8: .4byte 0x04000052
_080161FC:
	movs r0, #0x40
	str r0, [r1]
	movs r0, #0
	strh r7, [r1, #4]
	strh r6, [r1, #6]
	str r4, [r1, #0xc]
	str r3, [r1, #8]
	str r5, [r1, #0x14]
	str r0, [r1, #0x18]
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x10]
	movs r0, #0x10
	subs r5, r0, r4
	cmp r5, #0x10
	ble _0801621C
	movs r5, #0x10
_0801621C:
	cmp r5, #0
	bge _08016222
	movs r5, #0
_08016222:
	cmp r4, #0x10
	ble _08016228
	movs r4, #0x10
_08016228:
	cmp r4, #0
	bge _0801622E
	movs r4, #0
_0801622E:
	mov r1, ip
	lsls r0, r1, #8
	orrs r2, r0
	movs r0, #0x40
	orrs r2, r0
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08016258 @ =0x04000050
	bl sub_0800062C
	lsls r1, r4, #8
	orrs r1, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0801625C @ =0x04000052
	bl sub_0800062C
_08016250:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016258: .4byte 0x04000050
_0801625C: .4byte 0x04000052
	thumb_func_end sub_08016198

	thumb_func_start sub_08016260
sub_08016260: @ 0x08016260
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r4, [sp]
	movs r4, #1
	str r4, [sp, #4]
	bl sub_08016198
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08016260

	thumb_func_start sub_08016280
sub_08016280: @ 0x08016280
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r4, [sp]
	movs r4, #2
	str r4, [sp, #4]
	bl sub_08016198
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08016280

	thumb_func_start sub_080162A0
sub_080162A0: @ 0x080162A0
	push {r4, r5, lr}
	adds r5, r2, #0
	adds r4, r3, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r5, #0x10
	ble _080162B4
	movs r5, #0x10
_080162B4:
	cmp r5, #0
	bge _080162BA
	movs r5, #0
_080162BA:
	cmp r4, #0x10
	ble _080162C0
	movs r4, #0x10
_080162C0:
	cmp r4, #0
	bge _080162C6
	movs r4, #0
_080162C6:
	ldr r0, _080162EC @ =0x04000050
	lsls r1, r1, #8
	orrs r2, r1
	movs r1, #0x40
	orrs r2, r1
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	bl sub_0800062C
	ldr r0, _080162F0 @ =0x04000052
	lsls r1, r4, #8
	orrs r1, r5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0800062C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080162EC: .4byte 0x04000050
_080162F0: .4byte 0x04000052
	thumb_func_end sub_080162A0

	thumb_func_start sub_080162F4
sub_080162F4: @ 0x080162F4
	push {lr}
	ldr r0, _08016308 @ =0x04000050
	movs r1, #0
	bl sub_0800062C
	ldr r1, _0801630C @ =gUnknown_20293A0
	movs r0, #0
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08016308: .4byte 0x04000050
_0801630C: .4byte gUnknown_20293A0
	thumb_func_end sub_080162F4

	thumb_func_start sub_08016310
sub_08016310: @ 0x08016310
	movs r2, #0
	ldr r0, _08016324 @ =gUnknown_20293A0
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #8]
	cmp r1, r0
	bne _0801631E
	movs r2, #1
_0801631E:
	adds r0, r2, #0
	bx lr
	.align 2, 0
_08016324: .4byte gUnknown_20293A0
	thumb_func_end sub_08016310

	thumb_func_start sub_08016328
sub_08016328: @ 0x08016328
	ldr r0, _08016330 @ =gUnknown_20293A0
	ldr r0, [r0, #0xc]
	bx lr
	.align 2, 0
_08016330: .4byte gUnknown_20293A0
	thumb_func_end sub_08016328

	thumb_func_start sub_08016334
sub_08016334: @ 0x08016334
	ldr r0, _08016340 @ =0x04000050
	ldrh r1, [r0]
	movs r0, #0xc0
	ands r0, r1
	bx lr
	.align 2, 0
_08016340: .4byte 0x04000050
	thumb_func_end sub_08016334

	thumb_func_start sub_08016344
sub_08016344: @ 0x08016344
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r2, #0
	adds r4, r3, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, r2, #0
	ldr r1, _08016388 @ =gUnknown_20293A0
	cmp r4, #0
	bne _08016398
	adds r4, r5, #0
	cmp r4, #0x10
	ble _08016360
	movs r4, #0x10
_08016360:
	cmp r4, #0
	bge _08016366
	movs r4, #0
_08016366:
	movs r0, #0xc0
	adds r1, r2, #0
	orrs r1, r0
	ldr r0, _0801638C @ =0x04000050
	bl sub_0800062C
	ldr r0, _08016390 @ =gUnknown_2027300
	strh r4, [r0]
	movs r1, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08016394 @ =0x04000054
	bl sub_0800062C
	b _080163D8
	.align 2, 0
_08016388: .4byte gUnknown_20293A0
_0801638C: .4byte 0x04000050
_08016390: .4byte gUnknown_2027300
_08016394: .4byte 0x04000054
_08016398:
	movs r0, #0xc0
	str r0, [r1]
	movs r0, #0
	strh r2, [r1, #4]
	str r6, [r1, #0xc]
	str r5, [r1, #8]
	str r4, [r1, #0x14]
	str r0, [r1, #0x18]
	movs r0, #1
	str r0, [r1, #0x10]
	adds r4, r6, #0
	cmp r4, #0x10
	ble _080163B4
	movs r4, #0x10
_080163B4:
	cmp r4, #0
	bge _080163BA
	movs r4, #0
_080163BA:
	movs r0, #0xc0
	orrs r3, r0
	ldr r0, _080163E0 @ =0x04000050
	adds r1, r3, #0
	bl sub_0800062C
	ldr r0, _080163E4 @ =gUnknown_2027300
	strh r4, [r0]
	movs r1, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _080163E8 @ =0x04000054
	bl sub_0800062C
_080163D8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080163E0: .4byte 0x04000050
_080163E4: .4byte gUnknown_2027300
_080163E8: .4byte 0x04000054
	thumb_func_end sub_08016344

	thumb_func_start sub_080163EC
sub_080163EC: @ 0x080163EC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r2, #0
	adds r4, r3, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, r2, #0
	ldr r1, _08016430 @ =gUnknown_20293A0
	cmp r4, #0
	bne _08016440
	adds r4, r5, #0
	cmp r4, #0x10
	ble _08016408
	movs r4, #0x10
_08016408:
	cmp r4, #0
	bge _0801640E
	movs r4, #0
_0801640E:
	movs r0, #0xc0
	adds r1, r2, #0
	orrs r1, r0
	ldr r0, _08016434 @ =0x04000050
	bl sub_0800062C
	ldr r0, _08016438 @ =gUnknown_2027300
	strh r4, [r0]
	movs r1, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0801643C @ =0x04000054
	bl sub_0800062C
	b _08016480
	.align 2, 0
_08016430: .4byte gUnknown_20293A0
_08016434: .4byte 0x04000050
_08016438: .4byte gUnknown_2027300
_0801643C: .4byte 0x04000054
_08016440:
	movs r0, #0xc0
	str r0, [r1]
	movs r0, #0
	strh r2, [r1, #4]
	str r6, [r1, #0xc]
	str r5, [r1, #8]
	str r4, [r1, #0x14]
	str r0, [r1, #0x18]
	movs r0, #2
	str r0, [r1, #0x10]
	adds r4, r6, #0
	cmp r4, #0x10
	ble _0801645C
	movs r4, #0x10
_0801645C:
	cmp r4, #0
	bge _08016462
	movs r4, #0
_08016462:
	movs r0, #0xc0
	orrs r3, r0
	ldr r0, _08016488 @ =0x04000050
	adds r1, r3, #0
	bl sub_0800062C
	ldr r0, _0801648C @ =gUnknown_2027300
	strh r4, [r0]
	movs r1, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08016490 @ =0x04000054
	bl sub_0800062C
_08016480:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016488: .4byte 0x04000050
_0801648C: .4byte gUnknown_2027300
_08016490: .4byte 0x04000054
	thumb_func_end sub_080163EC

	thumb_func_start sub_08016494
sub_08016494: @ 0x08016494
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r2, #0
	adds r4, r3, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, r2, #0
	ldr r1, _080164D8 @ =gUnknown_20293A0
	cmp r4, #0
	bne _080164E8
	adds r4, r5, #0
	cmp r4, #0x10
	ble _080164B0
	movs r4, #0x10
_080164B0:
	cmp r4, #0
	bge _080164B6
	movs r4, #0
_080164B6:
	movs r0, #0x80
	adds r1, r2, #0
	orrs r1, r0
	ldr r0, _080164DC @ =0x04000050
	bl sub_0800062C
	ldr r0, _080164E0 @ =gUnknown_2027300
	strh r4, [r0]
	movs r1, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _080164E4 @ =0x04000054
	bl sub_0800062C
	b _08016528
	.align 2, 0
_080164D8: .4byte gUnknown_20293A0
_080164DC: .4byte 0x04000050
_080164E0: .4byte gUnknown_2027300
_080164E4: .4byte 0x04000054
_080164E8:
	movs r0, #0x80
	str r0, [r1]
	movs r0, #0
	strh r2, [r1, #4]
	str r6, [r1, #0xc]
	str r5, [r1, #8]
	str r4, [r1, #0x14]
	str r0, [r1, #0x18]
	movs r0, #1
	str r0, [r1, #0x10]
	adds r4, r6, #0
	cmp r4, #0x10
	ble _08016504
	movs r4, #0x10
_08016504:
	cmp r4, #0
	bge _0801650A
	movs r4, #0
_0801650A:
	movs r0, #0x80
	orrs r3, r0
	ldr r0, _08016530 @ =0x04000050
	adds r1, r3, #0
	bl sub_0800062C
	ldr r0, _08016534 @ =gUnknown_2027300
	strh r4, [r0]
	movs r1, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08016538 @ =0x04000054
	bl sub_0800062C
_08016528:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016530: .4byte 0x04000050
_08016534: .4byte gUnknown_2027300
_08016538: .4byte 0x04000054
	thumb_func_end sub_08016494

	thumb_func_start sub_0801653C
sub_0801653C: @ 0x0801653C
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r2, #0
	adds r4, r3, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, r2, #0
	ldr r1, _08016580 @ =gUnknown_20293A0
	cmp r4, #0
	bne _08016590
	adds r4, r5, #0
	cmp r4, #0x10
	ble _08016558
	movs r4, #0x10
_08016558:
	cmp r4, #0
	bge _0801655E
	movs r4, #0
_0801655E:
	movs r0, #0x80
	adds r1, r2, #0
	orrs r1, r0
	ldr r0, _08016584 @ =0x04000050
	bl sub_0800062C
	ldr r0, _08016588 @ =gUnknown_2027300
	strh r4, [r0]
	movs r1, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0801658C @ =0x04000054
	bl sub_0800062C
	b _080165D0
	.align 2, 0
_08016580: .4byte gUnknown_20293A0
_08016584: .4byte 0x04000050
_08016588: .4byte gUnknown_2027300
_0801658C: .4byte 0x04000054
_08016590:
	movs r0, #0x80
	str r0, [r1]
	movs r0, #0
	strh r2, [r1, #4]
	str r6, [r1, #0xc]
	str r5, [r1, #8]
	str r4, [r1, #0x14]
	str r0, [r1, #0x18]
	movs r0, #2
	str r0, [r1, #0x10]
	adds r4, r6, #0
	cmp r4, #0x10
	ble _080165AC
	movs r4, #0x10
_080165AC:
	cmp r4, #0
	bge _080165B2
	movs r4, #0
_080165B2:
	movs r0, #0x80
	orrs r3, r0
	ldr r0, _080165D8 @ =0x04000050
	adds r1, r3, #0
	bl sub_0800062C
	ldr r0, _080165DC @ =gUnknown_2027300
	strh r4, [r0]
	movs r1, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _080165E0 @ =0x04000054
	bl sub_0800062C
_080165D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080165D8: .4byte 0x04000050
_080165DC: .4byte gUnknown_2027300
_080165E0: .4byte 0x04000054
	thumb_func_end sub_0801653C

	thumb_func_start sub_080165E4
sub_080165E4: @ 0x080165E4
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r2, #0
	adds r4, r3, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, r2, #0
	ldr r1, _08016628 @ =gUnknown_20293A0
	cmp r4, #0
	bne _08016638
	adds r4, r5, #0
	cmp r4, #0x10
	ble _08016600
	movs r4, #0x10
_08016600:
	cmp r4, #0
	bge _08016606
	movs r4, #0
_08016606:
	movs r0, #0x80
	adds r1, r2, #0
	orrs r1, r0
	ldr r0, _0801662C @ =0x04000050
	bl sub_0800062C
	ldr r0, _08016630 @ =gUnknown_2027300
	strh r4, [r0]
	movs r1, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08016634 @ =0x04000054
	bl sub_0800062C
	b _08016678
	.align 2, 0
_08016628: .4byte gUnknown_20293A0
_0801662C: .4byte 0x04000050
_08016630: .4byte gUnknown_2027300
_08016634: .4byte 0x04000054
_08016638:
	movs r0, #0x80
	str r0, [r1]
	movs r0, #0
	strh r2, [r1, #4]
	str r6, [r1, #0xc]
	str r5, [r1, #8]
	str r4, [r1, #0x14]
	str r0, [r1, #0x18]
	ldr r0, [sp, #0x10]
	str r0, [r1, #0x10]
	adds r4, r6, #0
	cmp r4, #0x10
	ble _08016654
	movs r4, #0x10
_08016654:
	cmp r4, #0
	bge _0801665A
	movs r4, #0
_0801665A:
	movs r0, #0x80
	orrs r3, r0
	ldr r0, _08016680 @ =0x04000050
	adds r1, r3, #0
	bl sub_0800062C
	ldr r0, _08016684 @ =gUnknown_2027300
	strh r4, [r0]
	movs r1, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08016688 @ =0x04000054
	bl sub_0800062C
_08016678:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016680: .4byte 0x04000050
_08016684: .4byte gUnknown_2027300
_08016688: .4byte 0x04000054
	thumb_func_end sub_080165E4

	thumb_func_start sub_0801668C
sub_0801668C: @ 0x0801668C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r4, r1, #0
	cmp r4, #0x10
	ble _0801669A
	movs r4, #0x10
_0801669A:
	cmp r4, #0
	bge _080166A0
	movs r4, #0
_080166A0:
	movs r0, #0x80
	orrs r2, r0
	ldr r0, _080166C4 @ =0x04000050
	adds r1, r2, #0
	bl sub_0800062C
	ldr r0, _080166C8 @ =gUnknown_2027300
	strh r4, [r0]
	movs r1, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _080166CC @ =0x04000054
	bl sub_0800062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080166C4: .4byte 0x04000050
_080166C8: .4byte gUnknown_2027300
_080166CC: .4byte 0x04000054
	thumb_func_end sub_0801668C

	thumb_func_start sub_080166D0
sub_080166D0: @ 0x080166D0
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r4, r1, #0
	cmp r4, #0x10
	ble _080166DE
	movs r4, #0x10
_080166DE:
	cmp r4, #0
	bge _080166E4
	movs r4, #0
_080166E4:
	movs r0, #0xc0
	orrs r2, r0
	ldr r0, _08016708 @ =0x04000050
	adds r1, r2, #0
	bl sub_0800062C
	ldr r0, _0801670C @ =gUnknown_2027300
	strh r4, [r0]
	movs r1, #0x10
	subs r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08016710 @ =0x04000054
	bl sub_0800062C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016708: .4byte 0x04000050
_0801670C: .4byte gUnknown_2027300
_08016710: .4byte 0x04000054
	thumb_func_end sub_080166D0

	thumb_func_start sub_08016714
sub_08016714: @ 0x08016714
	ldr r0, _0801671C @ =gUnknown_2027300
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_0801671C: .4byte gUnknown_2027300
	thumb_func_end sub_08016714

	thumb_func_start sub_08016720
sub_08016720: @ 0x08016720
	ldr r1, _08016728 @ =gUnknown_2027300
	movs r0, #0x10
	strh r0, [r1]
	bx lr
	.align 2, 0
_08016728: .4byte gUnknown_2027300
	thumb_func_end sub_08016720

	thumb_func_start sub_0801672C
sub_0801672C: @ 0x0801672C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08016748
	ldr r0, _08016740 @ =gUnknown_20272FC
	ldr r0, [r0]
	cmp r0, #0
	beq _0801675E
	movs r0, #1
	b _0801675E
	.align 2, 0
_08016740: .4byte gUnknown_20272FC
_08016744:
	movs r0, #1
	b _0801675E
_08016748:
	ldr r0, _08016760 @ =gUnknown_20272FC
	ldr r0, [r0]
	cmp r0, #0
	beq _0801675C
_08016750:
	ldrh r2, [r0]
	cmp r2, r1
	beq _08016744
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _08016750
_0801675C:
	movs r0, #0
_0801675E:
	bx lr
	.align 2, 0
_08016760: .4byte gUnknown_20272FC
	thumb_func_end sub_0801672C

	thumb_func_start sub_08016764
sub_08016764: @ 0x08016764
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r1
	mov sl, r3
	ldr r6, [sp, #0x24]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r5, _08016798 @ =gUnknown_20272FC
	ldr r4, [r5]
	cmp r4, #0
	bne _0801679C
	movs r0, #0x28
	bl sub_08005630
	str r0, [r5]
	str r4, [r0, #0x20]
	str r4, [r0, #0x24]
	adds r4, r0, #0
	lsls r5, r6, #1
	b _080167BE
	.align 2, 0
_08016798: .4byte gUnknown_20272FC
_0801679C:
	ldr r0, [r4, #0x24]
	lsls r5, r6, #1
	cmp r0, #0
	beq _080167AC
_080167A4:
	ldr r4, [r4, #0x24]
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _080167A4
_080167AC:
	movs r0, #0x28
	bl sub_08005630
	str r0, [r4, #0x24]
	str r4, [r0, #0x20]
	ldr r1, [r4, #0x24]
	movs r0, #0
	str r0, [r1, #0x24]
	ldr r4, [r4, #0x24]
_080167BE:
	strh r7, [r4]
	adds r0, r5, #0
	bl sub_08005630
	str r0, [r4, #4]
	adds r0, r5, #0
	bl sub_08005630
	str r0, [r4, #8]
	ldr r1, [r4, #4]
	ldr r2, _08016810 @ =0x001FFFFF
	ands r2, r6
	mov r0, sb
	bl CpuSet
	cmp r6, #0
	ble _080167F0
	ldr r0, [r4, #8]
	adds r1, r6, #0
_080167E4:
	mov r2, r8
	strh r2, [r0]
	adds r0, #2
	subs r1, #1
	cmp r1, #0
	bne _080167E4
_080167F0:
	mov r0, sl
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x10]
	str r6, [r4, #0x14]
	ldr r1, [sp, #0x28]
	str r1, [r4, #0x18]
	str r1, [r4, #0x1c]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016810: .4byte 0x001FFFFF
	thumb_func_end sub_08016764

	thumb_func_start sub_08016814
sub_08016814: @ 0x08016814
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r1
	mov sl, r2
	str r3, [sp]
	ldr r7, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r5, _08016848 @ =gUnknown_20272FC
	ldr r4, [r5]
	cmp r4, #0
	bne _0801684C
	movs r0, #0x28
	bl sub_08005630
	str r0, [r5]
	str r4, [r0, #0x20]
	str r4, [r0, #0x24]
	adds r5, r0, #0
	lsls r6, r7, #1
	b _0801686E
	.align 2, 0
_08016848: .4byte gUnknown_20272FC
_0801684C:
	ldr r0, [r4, #0x24]
	lsls r6, r7, #1
	cmp r0, #0
	beq _0801685C
_08016854:
	ldr r4, [r4, #0x24]
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _08016854
_0801685C:
	movs r0, #0x28
	bl sub_08005630
	str r0, [r4, #0x24]
	str r4, [r0, #0x20]
	ldr r1, [r4, #0x24]
	movs r0, #0
	str r0, [r1, #0x24]
	ldr r5, [r4, #0x24]
_0801686E:
	mov r0, r8
	strh r0, [r5]
	adds r0, r6, #0
	bl sub_08005630
	str r0, [r5, #4]
	adds r0, r6, #0
	bl sub_08005630
	str r0, [r5, #8]
	ldr r1, [r5, #4]
	ldr r4, _080168BC @ =0x001FFFFF
	ands r4, r7
	mov r0, sb
	adds r2, r4, #0
	bl CpuSet
	ldr r1, [r5, #4]
	mov r0, sl
	adds r2, r4, #0
	bl CpuSet
	ldr r1, [sp]
	str r1, [r5, #0xc]
	ldr r0, [sp, #0x24]
	str r0, [r5, #0x10]
	str r7, [r5, #0x14]
	ldr r0, [sp, #0x2c]
	str r0, [r5, #0x18]
	str r0, [r5, #0x1c]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080168BC: .4byte 0x001FFFFF
	thumb_func_end sub_08016814

	thumb_func_start sub_080168C0
sub_080168C0: @ 0x080168C0
	push {r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x14]
	ldr r7, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	str r5, [r0, #0x44]
	movs r6, #1
	str r6, [r0, #0x2c]
	str r1, [r0, #0x30]
	lsls r1, r3, #5
	ldr r5, _080168FC @ =gPlttBufferUnfaded
	adds r1, r1, r5
	str r1, [r0, #0x34]
	str r2, [r0, #0x50]
	adds r1, r3, #0
	adds r1, #0x10
	lsls r1, r1, #5
	adds r1, r1, r5
	str r1, [r0, #0x54]
	subs r4, r4, r3
	adds r4, #1
	lsls r4, r4, #4
	str r4, [r0, #0x38]
	str r7, [r0, #0x3c]
	movs r1, #0
	str r1, [r0, #0x48]
	str r6, [r0, #0x40]
	str r1, [r0, #0x4c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080168FC: .4byte gPlttBufferUnfaded
	thumb_func_end sub_080168C0

	thumb_func_start sub_08016900
sub_08016900: @ 0x08016900
	push {r4, r5, r6, r7, lr}
	ldr r5, [sp, #0x14]
	ldr r6, [sp, #0x18]
	ldr r7, [sp, #0x1c]
	movs r4, #2
	str r4, [r0, #0x2c]
	str r1, [r0, #0x30]
	lsls r1, r3, #5
	ldr r4, _08016940 @ =gPlttBufferUnfaded
	adds r1, r1, r4
	str r1, [r0, #0x34]
	str r2, [r0, #0x50]
	adds r1, r3, #0
	adds r1, #0x10
	lsls r1, r1, #5
	adds r1, r1, r4
	str r1, [r0, #0x54]
	subs r5, r5, r3
	adds r5, #1
	lsls r5, r5, #4
	str r5, [r0, #0x38]
	str r6, [r0, #0x3c]
	str r7, [r0, #0x44]
	movs r2, #0
	str r2, [r0, #0x48]
	movs r1, #1
	str r1, [r0, #0x40]
	str r2, [r0, #0x4c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016940: .4byte gPlttBufferUnfaded
	thumb_func_end sub_08016900

	thumb_func_start sub_08016944
sub_08016944: @ 0x08016944
	ldr r0, [r0, #0x40]
	bx lr
	thumb_func_end sub_08016944

	thumb_func_start sub_08016948
sub_08016948: @ 0x08016948
	push {lr}
	bl sub_08005A88
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08016948

	thumb_func_start sub_08016954
sub_08016954: @ 0x08016954
	push {r4, r5, r6, r7, lr}
	ldr r5, [sp, #0x14]
	ldr r4, [sp, #0x18]
	ldr r6, [sp, #0x1c]
	ldr r7, [sp, #0x20]
	str r1, [r0, #0x2c]
	str r2, [r0, #0x30]
	lsls r1, r5, #5
	ldr r2, _08016994 @ =gPlttBufferUnfaded
	adds r1, r1, r2
	str r1, [r0, #0x34]
	str r3, [r0, #0x50]
	adds r1, r5, #0
	adds r1, #0x10
	lsls r1, r1, #5
	adds r1, r1, r2
	str r1, [r0, #0x54]
	subs r4, r4, r5
	adds r4, #1
	lsls r4, r4, #4
	str r4, [r0, #0x38]
	str r6, [r0, #0x3c]
	str r7, [r0, #0x44]
	movs r2, #0
	str r2, [r0, #0x48]
	movs r1, #1
	str r1, [r0, #0x40]
	str r2, [r0, #0x4c]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016994: .4byte gPlttBufferUnfaded
	thumb_func_end sub_08016954

	thumb_func_start sub_08016998
sub_08016998: @ 0x08016998
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _080169C0 @ =gUnknown_8703ED0
	str r0, [r5, #0x28]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08005BC0
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080169B8
	adds r0, r5, #0
	bl sub_080046C0
_080169B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080169C0: .4byte gUnknown_8703ED0
	thumb_func_end sub_08016998

	thumb_func_start sub_080169C4
sub_080169C4: @ 0x080169C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	mov r7, sp
	str r0, [r7, #0x30]
	str r1, [r7, #0x34]
	bl sub_0804441C
	str r0, [r7, #0x38]
	ldr r0, [r7, #0x34]
	cmp r0, #0
	beq _080169EA
	ldr r0, [r7, #0x30]
	adds r0, #0x58
	ldr r1, [r7, #0x30]
	str r0, [r1]
_080169EA:
	ldr r2, _08016A14 @ =sub_08016A8C
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_08005C64
	ldr r2, [r7, #0x38]
	adds r2, #4
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08016A18 @ =sub_08016A1C
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08016A1E
	.align 2, 0
_08016A14: .4byte sub_08016A8C
_08016A18: .4byte _08016A1C
_08016A1C: @ 0x08016A1C
	b _08016A38
_08016A1E:
	str r7, [r2]
	ldr r0, _08016A34 @ =gUnknown_8703ED0
	ldr r1, [r7, #0x30]
	str r0, [r1, #0x28]
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, [r7, #0x30]
	b _08016A7C
	.align 2, 0
_08016A34: .4byte gUnknown_8703ED0
_08016A38:
	ldr r2, [r7, #0x38]
	adds r2, #4
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08016A58 @ =sub_08016A5C
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08016A5E
	.align 2, 0
_08016A58: .4byte _08016A5C
_08016A5C: @ 0x08016A5C
	b _08016A78
_08016A5E:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_08005BC0
	ldr r1, [r7, #0x38]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08016A78:
	bl sub_080443CC
_08016A7C:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_080169C4

	thumb_func_start sub_08016A8C
sub_08016A8C: @ 0x08016A8C
	bx lr
	.align 2, 0
	thumb_func_end sub_08016A8C

	thumb_func_start sub_08016A90
sub_08016A90: @ 0x08016A90
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08016ADC @ =gUnknown_3006600
	ldr r6, [r0]
	ldrb r0, [r5]
	cmp r0, #0x10
	bne _08016AEC
	ldr r0, _08016AE0 @ =gUnknown_2032D2C
	ldr r0, [r0]
	cmp r0, #0
	beq _08016AB4
	ldr r4, [r0]
	ldr r0, [r4]
	cmp r0, r6
	bne _08016AB4
	adds r0, r4, #0
	bl m4aMPlayStop
_08016AB4:
	ldr r2, _08016AE0 @ =gUnknown_2032D2C
	ldrh r1, [r5, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08016AE4 @ =gMPlayTable
	adds r0, r0, r1
	str r0, [r2]
	ldr r4, [r0]
	ldr r0, _08016AE8 @ =gUnknown_804CE78
	str r0, [r6, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	bl MPlayStart
	adds r0, r4, #0
	bl m4aMPlayImmInit
	b _08016BC0
	.align 2, 0
_08016ADC: .4byte gUnknown_3006600
_08016AE0: .4byte gUnknown_2032D2C
_08016AE4: .4byte gMPlayTable
_08016AE8: .4byte gUnknown_804CE78
_08016AEC:
	ldr r0, _08016B14 @ =gUnknown_2032D2C
	ldr r1, [r0]
	cmp r1, #0
	bne _08016AF6
	strb r1, [r5]
_08016AF6:
	ldr r0, [r0]
	ldr r4, [r0]
	ldr r0, [r4]
	cmp r0, r6
	bne _08016BC0
	ldrb r0, [r5]
	subs r0, #2
	cmp r0, #0xa
	bhi _08016BC0
	lsls r0, r0, #2
	ldr r1, _08016B18 @ =_08016B1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08016B14: .4byte gUnknown_2032D2C
_08016B18: .4byte _08016B1C
_08016B1C: @ jump table
	.4byte _08016B48 @ case 0
	.4byte _08016BC0 @ case 1
	.4byte _08016B50 @ case 2
	.4byte _08016B58 @ case 3
	.4byte _08016B68 @ case 4
	.4byte _08016B72 @ case 5
	.4byte _08016B84 @ case 6
	.4byte _08016B98 @ case 7
	.4byte _08016BA8 @ case 8
	.4byte _08016B58 @ case 9
	.4byte _08016BB8 @ case 10
_08016B48:
	adds r0, r4, #0
	bl m4aMPlayContinue
	b _08016BC0
_08016B50:
	adds r0, r4, #0
	bl m4aMPlayStop
	b _08016BC0
_08016B58:
	ldr r1, _08016B64 @ =0x0000FFFF
	ldrh r2, [r5, #4]
	adds r0, r4, #0
	bl m4aMPlayVolumeControl
	b _08016BC0
	.align 2, 0
_08016B64: .4byte 0x0000FFFF
_08016B68:
	ldrh r1, [r5, #4]
	adds r0, r4, #0
	bl m4aMPlayTempoControl
	b _08016BC0
_08016B72:
	ldr r1, _08016B80 @ =0x0000FFFF
	movs r0, #4
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	bl m4aMPlayPitchControl
	b _08016BC0
	.align 2, 0
_08016B80: .4byte 0x0000FFFF
_08016B84:
	ldr r1, _08016B94 @ =0x0000FFFF
	movs r2, #4
	ldrsb r2, [r5, r2]
	adds r0, r4, #0
	bl m4aMPlayPanpotControl
	b _08016BC0
	.align 2, 0
_08016B94: .4byte 0x0000FFFF
_08016B98:
	ldr r1, _08016BA4 @ =0x0000FFFF
	ldrb r2, [r5, #4]
	adds r0, r4, #0
	bl m4aMPlayModDepthSet
	b _08016BC0
	.align 2, 0
_08016BA4: .4byte 0x0000FFFF
_08016BA8:
	ldr r1, _08016BB4 @ =0x0000FFFF
	ldrb r2, [r5, #4]
	adds r0, r4, #0
	bl m4aMPlayLFOSpeedSet
	b _08016BC0
	.align 2, 0
_08016BB4: .4byte 0x0000FFFF
_08016BB8:
	ldrh r1, [r5, #4]
	adds r0, r4, #0
	bl m4aMPlayFadeOut
_08016BC0:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08016A90

	thumb_func_start sub_08016BCC
sub_08016BCC: @ 0x08016BCC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	movs r5, #0
_08016BD8:
	ldr r0, _08016C00 @ =gUnknown_2029434
	lsls r1, r5, #3
	adds r2, r1, r0
	ldrb r0, [r2]
	mov r8, r1
	cmp r0, #0
	bne _08016BE8
	b _08016DC4
_08016BE8:
	ldrh r7, [r2, #2]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r7, r0
	bne _08016C04
	adds r0, r2, #0
	bl sub_08016A90
	adds r5, #1
	mov sb, r5
	b _08016DBC
	.align 2, 0
_08016C00: .4byte gUnknown_2029434
_08016C04:
	ldr r0, _08016C20 @ =0x0000FFFF
	lsls r4, r7, #3
	adds r5, #1
	mov sb, r5
	cmp r7, r0
	bne _08016C5A
	ldrb r0, [r2]
	cmp r0, #0xe
	beq _08016C2A
	cmp r0, #0xe
	bgt _08016C24
	cmp r0, #0xd
	beq _08016C30
	b _08016C5A
	.align 2, 0
_08016C20: .4byte 0x0000FFFF
_08016C24:
	cmp r0, #0xf
	beq _08016C36
	b _08016C5A
_08016C2A:
	bl m4aMPlayAllStop
	b _08016C5A
_08016C30:
	bl m4aMPlayAllContinue
	b _08016C5A
_08016C36:
	movs r6, #0
	movs r5, #4
_08016C3A:
	ldr r0, _08016C70 @ =gMPlayTable
	adds r0, r6, r0
	ldr r3, [r0]
	ldrh r0, [r3, #4]
	cmp r0, #0
	beq _08016C52
	ldrh r1, [r2, #4]
	adds r0, r3, #0
	str r2, [sp]
	bl m4aMPlayFadeOut
	ldr r2, [sp]
_08016C52:
	adds r6, #0xc
	subs r5, #1
	cmp r5, #0
	bge _08016C3A
_08016C5A:
	ldr r0, _08016C74 @ =gUnknown_2029434
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #2
	beq _08016CA4
	cmp r0, #2
	bgt _08016C78
	cmp r0, #1
	beq _08016C7E
	b _08016CB2
	.align 2, 0
_08016C70: .4byte gMPlayTable
_08016C74: .4byte gUnknown_2029434
_08016C78:
	cmp r0, #4
	beq _08016CAC
	b _08016CB2
_08016C7E:
	adds r0, r7, #0
	bl m4aSongNumStart
	ldr r2, _08016C9C @ =gMPlayTable
	ldr r1, _08016CA0 @ =gSongTable
	adds r1, r4, r1
	ldrh r3, [r1, #4]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl m4aMPlayImmInit
	b _08016CB2
	.align 2, 0
_08016C9C: .4byte gMPlayTable
_08016CA0: .4byte gSongTable
_08016CA4:
	adds r0, r7, #0
	bl m4aSongNumStartOrContinue
	b _08016CB2
_08016CAC:
	adds r0, r7, #0
	bl m4aSongNumStop
_08016CB2:
	ldr r2, _08016CE4 @ =gSongTable
	adds r2, r4, r2
	ldrh r4, [r2, #4]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08016CE8 @ =gMPlayTable
	adds r0, r0, r1
	ldr r3, [r0]
	ldr r1, [r3]
	ldr r0, [r2]
	cmp r1, r0
	beq _08016CCE
	b _08016DB4
_08016CCE:
	ldr r0, _08016CEC @ =gUnknown_2029434
	add r0, r8
	ldrb r0, [r0]
	subs r0, #5
	cmp r0, #7
	bhi _08016DB4
	lsls r0, r0, #2
	ldr r1, _08016CF0 @ =_08016CF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08016CE4: .4byte gSongTable
_08016CE8: .4byte gMPlayTable
_08016CEC: .4byte gUnknown_2029434
_08016CF0: .4byte _08016CF4
_08016CF4: @ jump table
	.4byte _08016D14 @ case 0
	.4byte _08016D2C @ case 1
	.4byte _08016D40 @ case 2
	.4byte _08016D5C @ case 3
	.4byte _08016D78 @ case 4
	.4byte _08016D90 @ case 5
	.4byte _08016D14 @ case 6
	.4byte _08016DA8 @ case 7
_08016D14:
	ldr r1, _08016D24 @ =0x0000FFFF
	ldr r0, _08016D28 @ =gUnknown_2029434
	add r0, r8
	ldrh r2, [r0, #4]
	adds r0, r3, #0
	bl m4aMPlayVolumeControl
	b _08016DB4
	.align 2, 0
_08016D24: .4byte 0x0000FFFF
_08016D28: .4byte gUnknown_2029434
_08016D2C:
	ldr r0, _08016D3C @ =gUnknown_2029434
	add r0, r8
	ldrh r1, [r0, #4]
	adds r0, r3, #0
	bl m4aMPlayTempoControl
	b _08016DB4
	.align 2, 0
_08016D3C: .4byte gUnknown_2029434
_08016D40:
	ldr r1, _08016D54 @ =0x0000FFFF
	ldr r0, _08016D58 @ =gUnknown_2029434
	add r0, r8
	movs r4, #4
	ldrsh r2, [r0, r4]
	adds r0, r3, #0
	bl m4aMPlayPitchControl
	b _08016DB4
	.align 2, 0
_08016D54: .4byte 0x0000FFFF
_08016D58: .4byte gUnknown_2029434
_08016D5C:
	ldr r1, _08016D70 @ =0x0000FFFF
	ldr r0, _08016D74 @ =gUnknown_2029434
	add r0, r8
	movs r2, #4
	ldrsb r2, [r0, r2]
	adds r0, r3, #0
	bl m4aMPlayPanpotControl
	b _08016DB4
	.align 2, 0
_08016D70: .4byte 0x0000FFFF
_08016D74: .4byte gUnknown_2029434
_08016D78:
	ldr r1, _08016D88 @ =0x0000FFFF
	ldr r0, _08016D8C @ =gUnknown_2029434
	add r0, r8
	ldrb r2, [r0, #4]
	adds r0, r3, #0
	bl m4aMPlayModDepthSet
	b _08016DB4
	.align 2, 0
_08016D88: .4byte 0x0000FFFF
_08016D8C: .4byte gUnknown_2029434
_08016D90:
	ldr r1, _08016DA0 @ =0x0000FFFF
	ldr r0, _08016DA4 @ =gUnknown_2029434
	add r0, r8
	ldrb r2, [r0, #4]
	adds r0, r3, #0
	bl m4aMPlayLFOSpeedSet
	b _08016DB4
	.align 2, 0
_08016DA0: .4byte 0x0000FFFF
_08016DA4: .4byte gUnknown_2029434
_08016DA8:
	ldr r0, _08016DD4 @ =gUnknown_2029434
	add r0, r8
	ldrh r1, [r0, #4]
	adds r0, r3, #0
	bl m4aMPlayFadeOut
_08016DB4:
	ldr r0, _08016DD4 @ =gUnknown_2029434
	add r0, r8
	movs r1, #0
	strb r1, [r0]
_08016DBC:
	mov r5, sb
	cmp r5, #0xb
	bgt _08016DC4
	b _08016BD8
_08016DC4:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016DD4: .4byte gUnknown_2029434
	thumb_func_end sub_08016BCC

	thumb_func_start sub_08016DD8
sub_08016DD8: @ 0x08016DD8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r2
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	movs r4, #0
	ldr r1, _08016E04 @ =gUnknown_2029434
_08016DF0:
	ldrb r0, [r1]
	cmp r0, #0
	bne _08016E08
	strb r7, [r1]
	mov r0, r8
	strh r0, [r1, #2]
	mov r0, sb
	strh r0, [r1, #4]
	b _08016E3C
	.align 2, 0
_08016E04: .4byte gUnknown_2029434
_08016E08:
	adds r1, #8
	adds r4, #1
	cmp r4, #0xb
	ble _08016DF0
	ldr r0, _08016E48 @ =gUnknown_202943C
	adds r6, r0, #0
	subs r6, #8
	adds r5, r0, #0
	movs r4, #0xa
_08016E1A:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #4
	bl CpuSet
	adds r6, #8
	adds r5, #8
	subs r4, #1
	cmp r4, #0
	bge _08016E1A
	ldr r0, _08016E4C @ =gUnknown_2029434
	adds r0, #0x58
	strb r7, [r0]
	mov r1, r8
	strh r1, [r0, #2]
	mov r1, sb
	strh r1, [r0, #4]
_08016E3C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016E48: .4byte gUnknown_202943C
_08016E4C: .4byte gUnknown_2029434
	thumb_func_end sub_08016DD8

	thumb_func_start sub_08016E50
sub_08016E50: @ 0x08016E50
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	bne _08016E68
	ldr r0, _08016E64 @ =gUnknown_2032D2C
	ldr r0, [r0]
	b _08016E7A
	.align 2, 0
_08016E64: .4byte gUnknown_2032D2C
_08016E68:
	ldr r1, _08016EB8 @ =gSongTable
	lsls r0, r2, #3
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r0, _08016EBC @ =gMPlayTable
	adds r0, r1, r0
_08016E7A:
	ldr r3, [r0]
	ldr r1, _08016EC0 @ =gUnknown_2029434
	ldrb r0, [r1]
	cmp r0, #0
	beq _08016E9A
	adds r4, r1, #0
	adds r4, #0x58
_08016E88:
	ldrh r0, [r1, #2]
	cmp r2, r0
	beq _08016ED4
	adds r1, #8
	cmp r1, r4
	bgt _08016E9A
	ldrb r0, [r1]
	cmp r0, #0
	bne _08016E88
_08016E9A:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	beq _08016EC4
	ldr r1, _08016EB8 @ =gSongTable
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r1, [r3]
	ldr r0, [r0]
	cmp r1, r0
	beq _08016EC4
	movs r0, #1
	negs r0, r0
	b _08016EDA
	.align 2, 0
_08016EB8: .4byte gSongTable
_08016EBC: .4byte gMPlayTable
_08016EC0: .4byte gUnknown_2029434
_08016EC4:
	ldr r1, [r3, #4]
	ldrh r0, [r3, #4]
	cmp r0, #0
	bne _08016ED0
	movs r0, #1
	b _08016EDA
_08016ED0:
	cmp r1, #0
	blt _08016ED8
_08016ED4:
	movs r0, #0
	b _08016EDA
_08016ED8:
	movs r0, #2
_08016EDA:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08016E50

	thumb_func_start sub_08016EE0
sub_08016EE0: @ 0x08016EE0
	push {lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r0, _08016EFC @ =0x00000FFC
	cmp r2, r0
	bls _08016EF0
	adds r2, r0, #0
_08016EF0:
	ldr r0, _08016F00 @ =gUnknown_3006600
	adds r1, r3, #0
	bl memcpy
	pop {r0}
	bx r0
	.align 2, 0
_08016EFC: .4byte 0x00000FFC
_08016F00: .4byte gUnknown_3006600
	thumb_func_end sub_08016EE0

	thumb_func_start sub_08016F04
sub_08016F04: @ 0x08016F04
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _08016F1C @ =gUnknown_85EE794
	lsrs r0, r0, #0x16
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r2, r1, #1
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r0, r0, r2
	bx lr
	.align 2, 0
_08016F1C: .4byte gUnknown_85EE794
	thumb_func_end sub_08016F04

	thumb_func_start sub_08016F20
sub_08016F20: @ 0x08016F20
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r0, _08016F30 @ =gUnknown_2029434
	ldrb r0, [r0]
	cmp r0, #0
	beq _08016F34
_08016F2C:
	movs r0, #0
	b _08016F6E
	.align 2, 0
_08016F30: .4byte gUnknown_2029434
_08016F34:
	movs r3, #0
	ldr r6, _08016F64 @ =0x0000FFFF
	movs r5, #0x80
	lsls r5, r5, #0x18
	ldr r2, _08016F68 @ =gMPlayTable
_08016F3E:
	ldr r0, [r2]
	ldr r1, [r0, #4]
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	beq _08016F52
	movs r4, #1
	ands r1, r5
	cmp r1, #0
	beq _08016F2C
_08016F52:
	adds r2, #0xc
	adds r3, #1
	cmp r3, #4
	ble _08016F3E
	cmp r4, #0
	bne _08016F6C
	movs r0, #1
	b _08016F6E
	.align 2, 0
_08016F64: .4byte 0x0000FFFF
_08016F68: .4byte gMPlayTable
_08016F6C:
	movs r0, #2
_08016F6E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08016F20

	thumb_func_start sub_08016F74
sub_08016F74: @ 0x08016F74
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08016FA8 @ =gUnknown_2029430
	ldr r1, [r4]
	cmp r1, #0
	bne _08016F96
	ldr r0, _08016FAC @ =gUnknown_2032D2C
	str r1, [r0]
	bl m4aSoundInit
	movs r0, #1
	str r0, [r4]
	movs r0, #0
	bl m4aSoundMode
	bl m4aSoundMain
_08016F96:
	movs r1, #0x80
	lsls r1, r1, #2
	movs r0, #0x10
	adds r2, r5, #0
	bl sub_08016DD8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016FA8: .4byte gUnknown_2029430
_08016FAC: .4byte gUnknown_2032D2C
	thumb_func_end sub_08016F74

	thumb_func_start sub_08016FB0
sub_08016FB0: @ 0x08016FB0
	push {lr}
	ldr r1, _08016FC0 @ =0x0000FFFF
	movs r0, #0xf
	movs r2, #1
	bl sub_08016DD8
	pop {r0}
	bx r0
	.align 2, 0
_08016FC0: .4byte 0x0000FFFF
	thumb_func_end sub_08016FB0

	thumb_func_start sub_08016FC4
sub_08016FC4: @ 0x08016FC4
	push {lr}
	adds r2, r0, #0
	ldr r1, _08016FD4 @ =0x0000FFFF
	movs r0, #0xf
	bl sub_08016DD8
	pop {r0}
	bx r0
	.align 2, 0
_08016FD4: .4byte 0x0000FFFF
	thumb_func_end sub_08016FC4

	thumb_func_start sub_08016FD8
sub_08016FD8: @ 0x08016FD8
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0xc
	adds r1, r3, #0
	bl sub_08016DD8
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08016FD8

	thumb_func_start sub_08016FF0
sub_08016FF0: @ 0x08016FF0
	push {lr}
	adds r3, r0, #0
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0xa
	adds r1, r3, #0
	bl sub_08016DD8
	pop {r0}
	bx r0
	thumb_func_end sub_08016FF0

	thumb_func_start sub_08017008
sub_08017008: @ 0x08017008
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #9
	adds r1, r3, #0
	bl sub_08016DD8
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08017008

	thumb_func_start sub_08017020
sub_08017020: @ 0x08017020
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #8
	adds r1, r3, #0
	bl sub_08016DD8
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08017020

	thumb_func_start sub_08017038
sub_08017038: @ 0x08017038
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #7
	adds r1, r3, #0
	bl sub_08016DD8
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08017038

	thumb_func_start sub_08017050
sub_08017050: @ 0x08017050
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #6
	adds r1, r3, #0
	bl sub_08016DD8
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08017050

	thumb_func_start sub_08017068
sub_08017068: @ 0x08017068
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #5
	adds r1, r3, #0
	bl sub_08016DD8
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08017068

	thumb_func_start sub_08017080
sub_08017080: @ 0x08017080
	push {lr}
	movs r0, #0xe
	ldr r1, _08017090 @ =0x0000FFFF
	movs r2, #0
	bl sub_08016DD8
	pop {r0}
	bx r0
	.align 2, 0
_08017090: .4byte 0x0000FFFF
	thumb_func_end sub_08017080

	thumb_func_start sub_08017094
sub_08017094: @ 0x08017094
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #4
	movs r2, #0
	bl sub_08016DD8
	pop {r0}
	bx r0
	thumb_func_end sub_08017094

	thumb_func_start sub_080170A8
sub_080170A8: @ 0x080170A8
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #4
	movs r2, #0
	bl sub_08016DD8
	pop {r0}
	bx r0
	thumb_func_end sub_080170A8

	thumb_func_start sub_080170BC
sub_080170BC: @ 0x080170BC
	push {lr}
	movs r0, #0xd
	ldr r1, _080170CC @ =0x0000FFFF
	movs r2, #0
	bl sub_08016DD8
	pop {r0}
	bx r0
	.align 2, 0
_080170CC: .4byte 0x0000FFFF
	thumb_func_end sub_080170BC

	thumb_func_start sub_080170D0
sub_080170D0: @ 0x080170D0
	push {lr}
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #2
	movs r2, #0
	bl sub_08016DD8
	pop {r0}
	bx r0
	thumb_func_end sub_080170D0

	thumb_func_start sub_080170E4
sub_080170E4: @ 0x080170E4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0
	bl sub_08016DD8
	movs r0, #0xb
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08016DD8
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_080170E4

	thumb_func_start sub_08017108
sub_08017108: @ 0x08017108
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0801713C @ =gUnknown_2029430
	ldr r1, [r4]
	cmp r1, #0
	bne _0801712A
	ldr r0, _08017140 @ =gUnknown_2032D2C
	str r1, [r0]
	bl m4aSoundInit
	movs r0, #1
	str r0, [r4]
	movs r0, #0
	bl m4aSoundMode
	bl m4aSoundMain
_0801712A:
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	movs r0, #1
	movs r2, #0
	bl sub_08016DD8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801713C: .4byte gUnknown_2029430
_08017140: .4byte gUnknown_2032D2C
	thumb_func_end sub_08017108

	thumb_func_start sub_08017144
sub_08017144: @ 0x08017144
	push {lr}
	bl sub_08016BCC
	ldr r0, _0801715C @ =gUnknown_2029430
	ldr r0, [r0]
	cmp r0, #0
	beq _08017156
	bl m4aSoundMain
_08017156:
	pop {r0}
	bx r0
	.align 2, 0
_0801715C: .4byte gUnknown_2029430
	thumb_func_end sub_08017144

	thumb_func_start sub_08017160
sub_08017160: @ 0x08017160
	push {lr}
	ldr r0, _08017174 @ =gUnknown_2029430
	ldr r0, [r0]
	cmp r0, #0
	beq _0801716E
	bl m4aSoundVSync
_0801716E:
	pop {r0}
	bx r0
	.align 2, 0
_08017174: .4byte gUnknown_2029430
	thumb_func_end sub_08017160

	thumb_func_start sub_08017178
sub_08017178: @ 0x08017178
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSoundMode
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08017178

	thumb_func_start sub_08017188
sub_08017188: @ 0x08017188
	push {r4, lr}
	ldr r4, _080171A0 @ =gUnknown_2029430
	ldr r0, [r4]
	cmp r0, #0
	bne _0801719A
	bl m4aSoundVSyncOn
	movs r0, #1
	str r0, [r4]
_0801719A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080171A0: .4byte gUnknown_2029430
	thumb_func_end sub_08017188

	thumb_func_start sub_080171A4
sub_080171A4: @ 0x080171A4
	push {lr}
	bl m4aSoundVSyncOff
	ldr r1, _080171B4 @ =gUnknown_2029430
	movs r0, #0
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080171B4: .4byte gUnknown_2029430
	thumb_func_end sub_080171A4

	thumb_func_start sub_080171B8
sub_080171B8: @ 0x080171B8
	ldr r1, _080171C0 @ =gUnknown_2029430
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_080171C0: .4byte gUnknown_2029430
	thumb_func_end sub_080171B8

	thumb_func_start sub_080171C4
sub_080171C4: @ 0x080171C4
	push {r4, lr}
	ldr r4, _080171EC @ =gUnknown_2029430
	ldr r1, [r4]
	cmp r1, #0
	bne _080171E4
	ldr r0, _080171F0 @ =gUnknown_2032D2C
	str r1, [r0]
	bl m4aSoundInit
	movs r0, #1
	str r0, [r4]
	movs r0, #0
	bl m4aSoundMode
	bl m4aSoundMain
_080171E4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080171EC: .4byte gUnknown_2029430
_080171F0: .4byte gUnknown_2032D2C
	thumb_func_end sub_080171C4

	thumb_func_start sub_080171F4
sub_080171F4: @ 0x080171F4
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _08017230 @ =gUnknown_20249C8
	movs r5, #0
	strb r5, [r4]
	ldr r3, _08017234 @ =gUnknown_2027800
	ldrb r0, [r3, #7]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08017280
	ldr r0, _08017238 @ =gUnknown_202780C
	ldrb r0, [r0]
	lsrs r0, r0, #4
	cmp r0, #1
	beq _08017280
	mov r1, sp
	adds r0, #0x30
	strb r0, [r1]
	movs r0, #0x20
	strb r0, [r1, #1]
	mov r0, sp
	strb r5, [r0, #2]
	ldrb r0, [r3, #7]
	cmp r0, #1
	beq _0801723C
	cmp r0, #2
	beq _0801725C
	b _0801728C
	.align 2, 0
_08017230: .4byte gUnknown_20249C8
_08017234: .4byte gUnknown_2027800
_08017238: .4byte gUnknown_202780C
_0801723C:
	ldr r1, _08017254 @ =gUnknown_85EE890
	adds r0, r4, #0
	bl strcat
	adds r2, r0, #0
	mov r1, sp
	bl strcat
	adds r2, r0, #0
	ldr r1, _08017258 @ =gUnknown_85EE8B8
	b _08017270
	.align 2, 0
_08017254: .4byte gUnknown_85EE890
_08017258: .4byte gUnknown_85EE8B8
_0801725C:
	ldr r1, _08017278 @ =gUnknown_85EE890
	adds r0, r4, #0
	bl strcat
	adds r2, r0, #0
	mov r1, sp
	bl strcat
	adds r2, r0, #0
	ldr r1, _0801727C @ =gUnknown_85EE8C8
_08017270:
	bl strcat
	adds r2, r0, #0
	b _0801728C
	.align 2, 0
_08017278: .4byte gUnknown_85EE890
_0801727C: .4byte gUnknown_85EE8C8
_08017280:
	ldr r1, _08017298 @ =gUnknown_85EE878
	ldrb r0, [r3, #7]
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
_0801728C:
	adds r0, r2, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08017298: .4byte gUnknown_85EE878
	thumb_func_end sub_080171F4

	thumb_func_start sub_0801729C
sub_0801729C: @ 0x0801729C
	push {r4, r5, lr}
	sub sp, #8
	movs r0, #0xc
	str r0, [sp]
	ldr r0, _08017304 @ =gUnknown_861C662
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #3
	movs r2, #5
	movs r3, #0x17
	bl sub_08002D6C
	ldr r4, _08017308 @ =gUnknown_2020060
	ldr r0, [r4]
	movs r2, #0x8a
	lsls r2, r2, #6
	movs r1, #0
	bl memset
	bl sub_080171F4
	adds r5, r0, #0
	movs r0, #1
	bl sub_080053D8
	movs r0, #0
	movs r1, #2
	bl sub_08038468
	movs r0, #8
	movs r1, #0
	bl sub_08038490
	movs r0, #0
	movs r1, #0x1e
	bl sub_0803847C
	ldr r1, [r4]
	adds r0, r5, #0
	movs r2, #0x17
	bl sub_080382EC
	movs r2, #0x8a
	lsls r2, r2, #1
	ldr r3, [r4]
	movs r0, #0
	movs r1, #0x90
	bl sub_080045CC
	ldr r5, _0801730C @ =gUnknown_2026560
	b _08017320
	.align 2, 0
_08017304: .4byte gUnknown_861C662
_08017308: .4byte gUnknown_2020060
_0801730C: .4byte gUnknown_2026560
_08017310:
	movs r1, #0x30
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0801733C
	movs r0, #1
	bl sub_080053D8
_08017320:
	bl sub_08005DE0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r1, #2
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08017310
	movs r0, #6
	bl sub_08017108
	movs r0, #2
	str r0, [r5]
_0801733C:
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0801729C

	thumb_func_start sub_08017348
sub_08017348: @ 0x08017348
	push {r4, r5, lr}
	ldr r0, _0801739C @ =gUnknown_2032D30
	ldr r2, [r0]
	ldr r1, _080173A0 @ =0x00007FFF
	adds r4, r1, #0
	ldrh r0, [r2, #2]
	ands r4, r0
	ldr r3, _080173A4 @ =0x0000021D
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r3, r0, #8
	movs r5, #0x87
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrb r0, [r0]
	orrs r3, r0
	ands r3, r1
	adds r3, #2
	ldr r0, _080173A8 @ =0x0000021E
	adds r1, r2, r0
	adds r5, #3
	adds r0, r2, r5
	ldrb r1, [r1]
	ldrb r0, [r0]
	orrs r1, r0
	adds r0, r1, #0
	adds r5, #1
	adds r1, r2, r5
	ldrb r1, [r1]
	orrs r0, r1
	ldr r1, _080173AC @ =0x00000221
	adds r2, r2, r1
	ldrb r2, [r2]
	orrs r0, r2
	cmp r0, #0
	bne _08017392
	adds r3, #4
_08017392:
	cmp r4, r3
	beq _080173B0
	movs r0, #0
	b _080173B2
	.align 2, 0
_0801739C: .4byte gUnknown_2032D30
_080173A0: .4byte 0x00007FFF
_080173A4: .4byte 0x0000021D
_080173A8: .4byte 0x0000021E
_080173AC: .4byte 0x00000221
_080173B0:
	movs r0, #1
_080173B2:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_08017348

	thumb_func_start sub_080173B8
sub_080173B8: @ 0x080173B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa0
	mov r7, sp
	bl sub_0804441C
	movs r1, #0x90
	adds r1, r1, r7
	str r0, [r1]
	bl sub_0802BC58
	ldr r1, _08017470 @ =0xFF00FFFF
	adds r2, r7, #0
	adds r2, #0x80
	ldr r0, [r2]
	ands r0, r1
	ldr r1, _08017474 @ =0x00FFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	ldr r1, _08017478 @ =gUnknown_85EE91C
	str r1, [r2, #4]
	ldr r1, _0801747C @ =0xFFFFFF00
	ands r0, r1
	str r0, [r2]
	movs r3, #0
	movs r0, #0x88
	adds r0, r0, r7
	str r3, [r0]
_080173FA:
	adds r0, r7, #0
	movs r2, #0x88
	adds r2, r2, r7
	ldr r1, [r2]
	movs r2, #0
	movs r3, #0x20
	bl sub_08000970
	movs r0, #0
	adds r1, r7, #0
	movs r2, #0xf
_08017410:
	ldrh r3, [r1]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _08017410
	cmp r0, #0
	beq _080174AA
	movs r0, #0x88
	adds r0, r0, r7
	ldr r0, [r0]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x10
	ldr r2, _08017480 @ =0xFFFF00FF
	movs r3, #0x80
	adds r3, r3, r7
	ldr r0, [r3]
	ands r0, r2
	orrs r0, r1
	adds r1, r7, #0
	adds r1, #0x80
	str r0, [r1]
	movs r0, #0x24
	bl sub_080046D4
	movs r1, #0x8c
	adds r1, r1, r7
	str r0, [r1]
	movs r3, #0x90
	adds r3, r3, r7
	ldr r2, [r3]
	adds r2, #4
	ldr r1, [r3]
	ldr r0, [r1, #4]
	str r0, [r7, #0x20]
	movs r0, #0
	str r0, [r7, #0x24]
	adds r1, r7, #0
	adds r1, #0x28
	str r7, [r7, #0x28]
	ldr r0, _08017484 @ =sub_08017488
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0801748A
	.align 2, 0
_08017470: .4byte 0xFF00FFFF
_08017474: .4byte 0x00FFFFFF
_08017478: .4byte gUnknown_85EE91C
_0801747C: .4byte 0xFFFFFF00
_08017480: .4byte 0xFFFF00FF
_08017484: .4byte _08017488
_08017488: @ 0x08017488
	b _0801758E
_0801748A:
	adds r0, r7, #0
	adds r0, #0x20
	str r0, [r2]
	movs r1, #0x8c
	adds r1, r1, r7
	ldr r0, [r1]
	adds r1, r7, #0
	adds r1, #0x80
	bl sub_0802B2CC
	movs r2, #0x90
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
_080174AA:
	movs r1, #0x88
	adds r1, r1, r7
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0xf
	ble _080173FA
	movs r0, #1
	movs r2, #0x80
	adds r2, r2, r7
	strb r0, [r2]
	movs r3, #0
	str r3, [r1]
_080174C4:
	adds r0, r7, #0
	movs r2, #0x88
	adds r2, r2, r7
	ldr r1, [r2]
	movs r2, #0
	movs r3, #0x20
	bl sub_080008E4
	movs r0, #0
	movs r1, #0x88
	adds r1, r1, r7
	ldr r3, [r1]
	adds r3, #1
	movs r1, #0x9c
	adds r1, r1, r7
	str r3, [r1]
	adds r1, r7, #0
	movs r2, #0xf
_080174E8:
	ldrh r3, [r1]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _080174E8
	cmp r0, #0
	beq _0801755E
	movs r0, #0x88
	adds r0, r0, r7
	ldrb r1, [r0]
	movs r0, #0x81
	adds r0, r0, r7
	strb r1, [r0]
	movs r0, #0x24
	bl sub_080046D4
	movs r2, #0x94
	adds r2, r2, r7
	str r0, [r2]
	movs r3, #0x90
	adds r3, r3, r7
	ldr r2, [r3]
	adds r2, #4
	ldr r1, [r3]
	ldr r0, [r1, #4]
	str r0, [r7, #0x38]
	movs r3, #0
	str r3, [r7, #0x3c]
	adds r1, r7, #0
	adds r1, #0x40
	str r7, [r7, #0x40]
	ldr r0, _08017538 @ =sub_0801753C
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0801753E
	.align 2, 0
_08017538: .4byte _0801753C
_0801753C: @ 0x0801753C
	b _080175DC
_0801753E:
	adds r0, r7, #0
	adds r0, #0x38
	str r0, [r2]
	movs r1, #0x94
	adds r1, r1, r7
	ldr r0, [r1]
	adds r1, r7, #0
	adds r1, #0x80
	bl sub_0802B2CC
	movs r2, #0x90
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
_0801755E:
	movs r0, #0x9c
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0x88
	adds r1, r1, r7
	str r0, [r1]
	cmp r0, #0xf
	ble _080174C4
	movs r1, #0xf
	movs r2, #0x98
	adds r2, r2, r7
	str r1, [r2]
_08017576:
	bl sub_080053B0
	bl sub_0802BB00
	movs r0, #0x98
	adds r0, r0, r7
	ldr r3, [r0]
	subs r3, #1
	str r3, [r0]
	cmp r3, #0
	bge _08017576
	b _08017634
_0801758E:
	movs r1, #0x90
	adds r1, r1, r7
	ldr r2, [r1]
	adds r2, #4
	ldr r3, [r1]
	ldr r0, [r3, #4]
	str r0, [r7, #0x50]
	movs r0, #0
	str r0, [r7, #0x54]
	adds r1, r7, #0
	adds r1, #0x58
	str r7, [r7, #0x58]
	ldr r0, _080175B0 @ =sub_080175B4
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080175B6
	.align 2, 0
_080175B0: .4byte _080175B4
_080175B4: @ 0x080175B4
	b _0801762C
_080175B6:
	adds r0, r7, #0
	adds r0, #0x50
	str r0, [r2]
	movs r1, #1
	cmp r1, #0
	beq _080175CC
	movs r2, #0x8c
	adds r2, r2, r7
	ldr r0, [r2]
	bl sub_080046C0
_080175CC:
	movs r3, #0x90
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	bl sub_0804449C
_080175DC:
	movs r3, #0x90
	adds r3, r3, r7
	ldr r2, [r3]
	adds r2, #4
	ldr r1, [r3]
	ldr r0, [r1, #4]
	str r0, [r7, #0x68]
	movs r0, #0
	str r0, [r7, #0x6c]
	adds r1, r7, #0
	adds r1, #0x70
	str r7, [r7, #0x70]
	ldr r0, _08017600 @ =sub_08017604
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _08017606
	.align 2, 0
_08017600: .4byte _08017604
_08017604: @ 0x08017604
	b _08017630
_08017606:
	adds r0, r7, #0
	adds r0, #0x68
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _0801761C
	movs r1, #0x94
	adds r1, r1, r7
	ldr r0, [r1]
	bl sub_080046C0
_0801761C:
	movs r2, #0x90
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	bl sub_0804449C
_0801762C:
	bl sub_080443CC
_08017630:
	bl sub_080443CC
_08017634:
	add sp, #0xa0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080173B8

	thumb_func_start sub_08017644
sub_08017644: @ 0x08017644
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldr r2, _080176E0 @ =0x00027800
	movs r1, #0
	bl memset
	ldr r0, _080176E4 @ =gUnknown_2032D30
	str r7, [r0]
	ldr r0, _080176E8 @ =gUnknown_2032D34
	movs r1, #0
	str r1, [r0]
	ldr r0, _080176EC @ =gUnknown_2032D38
	str r1, [r0]
	bl sub_08027CEC
	bl sub_08004634
	bl sub_08005558
	bl sub_080171C4
	bl sub_08017188
_08017676:
	ldr r1, _080176F0 @ =0x0000FFFF
	adds r0, r1, #0
	bl sub_08005EC0
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldr r1, _080176E0 @ =0x00027800
	bl sub_080055D0
	movs r0, #0
	bl sub_08017FE8
	ldrh r0, [r7, #4]
	cmp r0, #7
	bne _0801769A
	ldrh r0, [r7, #6]
	bl sub_080252DC
_0801769A:
	ldr r4, _080176EC @ =gUnknown_2032D38
	ldr r0, [r4]
	cmp r0, #0
	bne _08017710
	ldr r1, _080176F4 @ =0x0000021D
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r6, r0, #8
	movs r2, #0x87
	lsls r2, r2, #2
	adds r0, r7, r2
	ldrb r0, [r0]
	orrs r6, r0
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r4, #0
	bl sub_080055B0
	adds r5, r0, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	bl sub_08017348
	cmp r0, #1
	bne _080176F8
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r5, r1
	adds r1, r6, #0
	bl sub_080184A4
	b _08017702
	.align 2, 0
_080176E0: .4byte 0x00027800
_080176E4: .4byte gUnknown_2032D30
_080176E8: .4byte gUnknown_2032D34
_080176EC: .4byte gUnknown_2032D38
_080176F0: .4byte 0x0000FFFF
_080176F4: .4byte 0x0000021D
_080176F8:
	ldr r2, _0801770C @ =0x0000021E
	adds r0, r5, r2
	adds r1, r6, #0
	bl sub_080184A4
_08017702:
	adds r0, r5, #0
	bl sub_08005598
	b _08017728
	.align 2, 0
_0801770C: .4byte 0x0000021E
_08017710:
	ldr r1, _08017754 @ =gUnknown_86F968C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r2, [r0, #1]
	lsls r1, r2, #8
	ldrb r2, [r0]
	orrs r1, r2
	bl sub_080184A4
	movs r0, #0
	str r0, [r4]
_08017728:
	bl sub_080009FC
	bl sub_08004678
	bl sub_08007B0C
	ldr r0, _08017758 @ =gUnknown_85EE8D8
	bl sub_080029C8
	ldr r0, _0801775C @ =0x04000134
	ldrh r0, [r0]
	adds r5, r0, #0
	bl sub_0803BE20
	movs r0, #0x3f
	movs r1, #0x10
	movs r2, #0
	movs r3, #1
	bl sub_08016344
	b _08017766
	.align 2, 0
_08017754: .4byte gUnknown_86F968C
_08017758: .4byte gUnknown_85EE8D8
_0801775C: .4byte 0x04000134
_08017760:
	movs r0, #1
	bl sub_080053D8
_08017766:
	ldr r0, _080177DC @ =gUnknown_2029498
	ldrh r0, [r0]
	cmp r0, #0
	beq _0801777C
	ldr r0, _080177E0 @ =gUnknown_3004658
	ldr r1, _080177E4 @ =gUnknown_300465A
	ldr r2, _080177E8 @ =gUnknown_3004672
	bl sub_0803B634
	ldr r1, _080177EC @ =gUnknown_30046D4
	str r0, [r1]
_0801777C:
	bl sub_08018294
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08017760
	bl sub_08006604
	movs r0, #1
	bl sub_080054E8
	bl sub_0803BDB4
	ldr r0, _080177F0 @ =0x04000134
	strh r5, [r0]
	bl sub_08022820
	bl sub_080173B8
	bl sub_08027CE0
	bl sub_080077F8
	bl sub_08018590
	bl sub_08004634
	bl sub_0802AF5C
	bl sub_08037CC0
	bl sub_0802BC58
	movs r0, #0
	bl sub_080279EC
	movs r0, #1
	bl sub_080279EC
	bl sub_080373E8
	bl sub_08005E7C
	cmp r4, #3
	bne _080177F8
	ldr r0, _080177F4 @ =gUnknown_2032D38
	str r4, [r0]
	b _08017800
	.align 2, 0
_080177DC: .4byte gUnknown_2029498
_080177E0: .4byte gUnknown_3004658
_080177E4: .4byte gUnknown_300465A
_080177E8: .4byte gUnknown_3004672
_080177EC: .4byte gUnknown_30046D4
_080177F0: .4byte 0x04000134
_080177F4: .4byte gUnknown_2032D38
_080177F8:
	ldr r1, _08017814 @ =gUnknown_2032D34
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08017800:
	cmp r4, #2
	beq _08017806
	b _08017676
_08017806:
	bl sub_08004678
	bl sub_08004634
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017814: .4byte gUnknown_2032D34
	thumb_func_end sub_08017644

	thumb_func_start sub_08017818
sub_08017818: @ 0x08017818
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldr r2, _080178B0 @ =0x00027800
	movs r1, #0
	bl memset
	ldr r0, _080178B4 @ =gUnknown_2032D30
	str r6, [r0]
	ldr r0, _080178B8 @ =gUnknown_2032D34
	movs r1, #0
	str r1, [r0]
	ldr r0, _080178BC @ =gUnknown_2032D38
	str r1, [r0]
	bl sub_08027CEC
	bl sub_08004634
	bl sub_08005558
	bl sub_080171C4
	bl sub_08017188
_0801784A:
	bl sub_080009FC
	bl sub_08004678
	ldr r1, _080178C0 @ =0x0000FFFF
	adds r0, r1, #0
	bl sub_08005EC0
	ldr r0, _080178C4 @ =gUnknown_201F800
	movs r1, #0x80
	lsls r1, r1, #8
	bl sub_080055D0
	bl sub_08007B0C
	movs r0, #1
	bl sub_08017FE8
	ldrh r0, [r6, #4]
	cmp r0, #7
	bne _0801787A
	ldrh r0, [r6, #6]
	bl sub_080252DC
_0801787A:
	ldr r4, _080178BC @ =gUnknown_2032D38
	ldr r0, [r4]
	cmp r0, #0
	bne _08017914
	ldr r1, _080178C8 @ =0x0000021D
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r4, r0, #8
	movs r2, #0x87
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrb r0, [r0]
	orrs r4, r0
	bl sub_08017348
	cmp r0, #1
	bne _080178CC
	movs r1, #0x88
	lsls r1, r1, #2
	adds r0, r6, r1
	adds r1, r4, #0
	movs r2, #0x80
	lsls r2, r2, #0x12
	bl sub_080183CC
	b _080178DA
	.align 2, 0
_080178B0: .4byte 0x00027800
_080178B4: .4byte gUnknown_2032D30
_080178B8: .4byte gUnknown_2032D34
_080178BC: .4byte gUnknown_2032D38
_080178C0: .4byte 0x0000FFFF
_080178C4: .4byte gUnknown_201F800
_080178C8: .4byte 0x0000021D
_080178CC:
	ldr r2, _08017908 @ =0x00000222
	adds r0, r6, r2
	adds r1, r4, #0
	movs r2, #0x80
	lsls r2, r2, #0x12
	bl sub_080183CC
_080178DA:
	adds r0, r4, #0
	bl sub_080388B4
	ldr r0, _0801790C @ =gUnknown_85EE8D8
	bl sub_080029C8
	ldr r0, _08017910 @ =0x04000134
	ldrh r0, [r0]
	adds r5, r0, #0
	bl sub_0803BE20
	movs r0, #0x3f
	movs r1, #0x10
	movs r2, #0
	movs r3, #1
	bl sub_08016344
	bl sub_080388F4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08017966
	.align 2, 0
_08017908: .4byte 0x00000222
_0801790C: .4byte gUnknown_85EE8D8
_08017910: .4byte 0x04000134
_08017914:
	ldr r1, _08017948 @ =gUnknown_86F968C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r2, [r0, #1]
	lsls r1, r2, #8
	ldrb r2, [r0]
	orrs r1, r2
	bl sub_080184A4
	movs r0, #0
	str r0, [r4]
	ldr r0, _0801794C @ =gUnknown_85EE8D8
	bl sub_080029C8
	ldr r0, _08017950 @ =0x04000134
	ldrh r0, [r0]
	adds r5, r0, #0
	movs r0, #0x3f
	movs r1, #0x10
	movs r2, #0
	movs r3, #1
	bl sub_08016344
	b _0801795A
	.align 2, 0
_08017948: .4byte gUnknown_86F968C
_0801794C: .4byte gUnknown_85EE8D8
_08017950: .4byte 0x04000134
_08017954:
	movs r0, #1
	bl sub_080053D8
_0801795A:
	bl sub_08018294
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08017954
_08017966:
	bl sub_08006604
	movs r0, #1
	bl sub_080054E8
	bl sub_0803BDB4
	ldr r0, _080179BC @ =0x04000134
	strh r5, [r0]
	bl sub_08022820
	bl sub_080173B8
	bl sub_08027CE0
	bl sub_080077F8
	bl sub_08018590
	bl sub_08004634
	bl sub_0802AF5C
	bl sub_08037CC0
	bl sub_0802BC58
	movs r0, #0
	bl sub_080279EC
	movs r0, #1
	bl sub_080279EC
	bl sub_080373E8
	bl sub_08005E7C
	cmp r4, #3
	bne _080179C4
	ldr r0, _080179C0 @ =gUnknown_2032D38
	str r4, [r0]
	b _080179CC
	.align 2, 0
_080179BC: .4byte 0x04000134
_080179C0: .4byte gUnknown_2032D38
_080179C4:
	ldr r1, _080179E0 @ =gUnknown_2032D34
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080179CC:
	cmp r4, #2
	beq _080179D2
	b _0801784A
_080179D2:
	bl sub_08004678
	bl sub_08004634
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080179E0: .4byte gUnknown_2032D34
	thumb_func_end sub_08017818

	thumb_func_start sub_080179E4
sub_080179E4: @ 0x080179E4
	push {r4, r5, r6, lr}
	ldr r0, _08017A9C @ =gUnknown_2032D34
	movs r1, #0
	str r1, [r0]
	ldr r0, _08017AA0 @ =gUnknown_2032D38
	str r1, [r0]
	bl sub_08027CEC
	bl sub_08004634
	bl sub_08005558
	bl sub_080171C4
	bl sub_08017188
	ldr r6, _08017AA4 @ =0x04000134
_08017A06:
	bl sub_080009FC
	bl sub_08004678
	ldr r1, _08017AA8 @ =0x0000FFFF
	adds r0, r1, #0
	bl sub_08005EC0
	ldr r0, _08017AAC @ =gUnknown_201F800
	movs r1, #0x80
	lsls r1, r1, #8
	bl sub_080055D0
	bl sub_08007B0C
	movs r0, #1
	bl sub_08017FE8
	ldr r0, _08017AB0 @ =gUnknown_85EE8D8
	bl sub_080029C8
	ldrh r4, [r6]
	bl sub_0803BE20
	movs r0, #0x3f
	movs r1, #0x10
	movs r2, #0
	movs r3, #1
	bl sub_08016344
	bl sub_080388D8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_08006604
	movs r0, #1
	bl sub_080054E8
	bl sub_0803BDB4
	strh r4, [r6]
	bl sub_08022820
	bl sub_080173B8
	bl sub_08027CE0
	bl sub_080077F8
	bl sub_08018590
	bl sub_08004634
	bl sub_0802AF5C
	bl sub_08037CC0
	bl sub_0802BC58
	movs r0, #0
	bl sub_080279EC
	movs r0, #1
	bl sub_080279EC
	bl sub_080373E8
	bl sub_08005E7C
	cmp r5, #3
	bne _08017AB4
	movs r5, #2
	b _08017ABC
	.align 2, 0
_08017A9C: .4byte gUnknown_2032D34
_08017AA0: .4byte gUnknown_2032D38
_08017AA4: .4byte 0x04000134
_08017AA8: .4byte 0x0000FFFF
_08017AAC: .4byte gUnknown_201F800
_08017AB0: .4byte gUnknown_85EE8D8
_08017AB4:
	ldr r1, _08017AD0 @ =gUnknown_2032D34
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08017ABC:
	cmp r5, #2
	bne _08017A06
	bl sub_08004678
	bl sub_08004634
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017AD0: .4byte gUnknown_2032D34
	thumb_func_end sub_080179E4

	thumb_func_start sub_08017AD4
sub_08017AD4: @ 0x08017AD4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_080055DC
	ldr r7, _08017BBC @ =0x00007FFF
	adds r0, r7, #0
	ldrh r1, [r6, #2]
	ands r0, r1
	adds r4, r0, #0
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_080055B0
	adds r5, r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl memset
	adds r1, r5, #4
	adds r0, r6, #0
	adds r0, #0x18
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	adds r0, r7, #0
	ldrh r1, [r6, #2]
	ands r0, r1
	str r0, [r5, #0x2c]
	movs r0, #0
	str r0, [r5, #0x30]
	ldr r2, _08017BC0 @ =0x0000021E
	adds r1, r6, r2
	ldr r3, _08017BC4 @ =0x0000021F
	adds r0, r6, r3
	ldrb r1, [r1]
	ldrb r0, [r0]
	orrs r1, r0
	adds r0, r1, #0
	movs r4, #0x88
	lsls r4, r4, #2
	adds r1, r6, r4
	ldrb r1, [r1]
	orrs r0, r1
	adds r2, #3
	adds r1, r6, r2
	ldrb r1, [r1]
	orrs r0, r1
	cmp r0, #0
	bne _08017B44
	adds r1, r5, #0
	adds r1, #0x28
	movs r0, #2
	strb r0, [r1]
_08017B44:
	ldr r0, _08017BC8 @ =gUnknown_2029398
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x29
	movs r4, #0
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #8
	ldrh r3, [r6, #2]
	ands r0, r3
	adds r3, r5, #0
	adds r3, #0x28
	cmp r0, #0
	beq _08017B68
	movs r0, #1
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r3]
_08017B68:
	movs r0, #4
	ldrb r2, [r3]
	orrs r2, r0
	orrs r2, r4
	strb r2, [r3]
	ldr r0, [r6, #0x14]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08017B82
	movs r0, #8
	orrs r2, r0
	strb r2, [r3]
_08017B82:
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r2, [r5, #0x2c]
	ands r2, r7
	adds r0, r5, #0
	adds r0, #0x34
	bl memcpy
	bl sub_0801C530
	adds r0, r7, #0
	ldrh r6, [r6, #2]
	ands r0, r6
	adds r4, r0, #0
	adds r4, #0x30
	adds r0, r5, #4
	adds r1, r4, #0
	bl sub_0801C570
	str r0, [r5]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080298D4
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08017BBC: .4byte 0x00007FFF
_08017BC0: .4byte 0x0000021E
_08017BC4: .4byte 0x0000021F
_08017BC8: .4byte gUnknown_2029398
	thumb_func_end sub_08017AD4

	thumb_func_start sub_08017BCC
sub_08017BCC: @ 0x08017BCC
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #6
	ands r0, r1
	cmp r0, #2
	beq _08017C5A
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08017C50
	ldr r4, _08017C3C @ =gUnknown_20294B8
	movs r0, #1
	strb r0, [r4, #8]
	ldr r2, [r3, #0x2c]
	strh r2, [r4, #2]
	ands r0, r1
	adds r1, r2, #0
	cmp r0, #0
	beq _08017C00
	movs r5, #0x80
	lsls r5, r5, #8
	adds r0, r5, #0
	orrs r1, r0
	strh r1, [r4, #2]
_08017C00:
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r2, #2
	adds r1, r3, #0
	adds r1, #0x34
	bl memcpy
	ldr r2, _08017C40 @ =0x0000021E
	adds r1, r4, r2
	ldr r5, _08017C44 @ =0x0000021F
	adds r0, r4, r5
	ldrb r1, [r1]
	ldrb r0, [r0]
	orrs r1, r0
	adds r0, r1, #0
	adds r2, #2
	adds r1, r4, r2
	ldrb r1, [r1]
	orrs r0, r1
	adds r5, #2
	adds r1, r4, r5
	ldrb r1, [r1]
	orrs r0, r1
	cmp r0, #0
	beq _08017C48
	adds r0, r4, #0
	bl sub_08017644
	b _08017CA8
	.align 2, 0
_08017C3C: .4byte gUnknown_20294B8
_08017C40: .4byte 0x0000021E
_08017C44: .4byte 0x0000021F
_08017C48:
	adds r0, r4, #0
	bl sub_08017818
	b _08017CA8
_08017C50:
	adds r0, r3, #0
	adds r0, #0x34
	bl sub_08026EE0
	b _08017CA8
_08017C5A:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08017C72
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r3, #0
	adds r1, #0x34
	ldr r2, [r3, #0x2c]
	bl memcpy
	b _08017CA4
_08017C72:
	adds r0, r3, #0
	adds r0, #0x34
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r2, #0xb8
	lsls r2, r2, #7
	adds r1, r5, #0
	bl CpuFastSet
	movs r4, #0x80
	lsls r4, r4, #0x12
	ldr r2, _08017CB0 @ =0x00027800
	adds r0, r4, #0
	movs r1, #0
	bl memset
	ldr r0, _08017CB4 @ =0x06017000
	movs r1, #0x80
	lsls r1, r1, #5
	bl sub_080055D0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800509C
_08017CA4:
	bl sub_080179E4
_08017CA8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017CB0: .4byte 0x00027800
_08017CB4: .4byte 0x06017000
	thumb_func_end sub_08017BCC

	thumb_func_start sub_08017CB8
sub_08017CB8: @ 0x08017CB8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl sub_080055DC
	ldr r7, _08017D98 @ =0x00007FFF
	adds r0, r7, #0
	ldrh r1, [r6, #2]
	ands r0, r1
	adds r4, r0, #0
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_080055B0
	adds r5, r0, #0
	movs r1, #0
	adds r2, r4, #0
	bl memset
	adds r1, r5, #4
	adds r0, r6, #0
	adds r0, #0x18
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	adds r0, r7, #0
	ldrh r1, [r6, #2]
	ands r0, r1
	str r0, [r5, #0x2c]
	movs r0, #0
	str r0, [r5, #0x30]
	ldr r2, _08017D9C @ =0x0000021E
	adds r1, r6, r2
	ldr r3, _08017DA0 @ =0x0000021F
	adds r0, r6, r3
	ldrb r1, [r1]
	ldrb r0, [r0]
	orrs r1, r0
	adds r0, r1, #0
	movs r4, #0x88
	lsls r4, r4, #2
	adds r1, r6, r4
	ldrb r1, [r1]
	orrs r0, r1
	adds r2, #3
	adds r1, r6, r2
	ldrb r1, [r1]
	orrs r0, r1
	cmp r0, #0
	bne _08017D28
	adds r1, r5, #0
	adds r1, #0x28
	movs r0, #2
	strb r0, [r1]
_08017D28:
	ldr r0, _08017DA4 @ =gUnknown_2029398
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x29
	movs r4, #0
	strb r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #8
	ldrh r3, [r6, #2]
	ands r0, r3
	adds r3, r5, #0
	adds r3, #0x28
	cmp r0, #0
	beq _08017D4C
	movs r0, #1
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r3]
_08017D4C:
	movs r0, #4
	ldrb r2, [r3]
	orrs r2, r0
	orrs r2, r4
	strb r2, [r3]
	ldr r0, [r6, #0x14]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08017D66
	movs r0, #8
	orrs r2, r0
	strb r2, [r3]
_08017D66:
	movs r2, #0x87
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r2, [r5, #0x2c]
	ands r2, r7
	adds r0, r5, #0
	adds r0, #0x34
	bl memcpy
	bl sub_0801C530
	adds r0, r7, #0
	ldrh r6, [r6, #2]
	ands r0, r6
	adds r4, r0, #0
	adds r4, #0x30
	adds r0, r5, #4
	adds r1, r4, #0
	bl sub_0801C570
	str r0, [r5]
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08017D98: .4byte 0x00007FFF
_08017D9C: .4byte 0x0000021E
_08017DA0: .4byte 0x0000021F
_08017DA4: .4byte gUnknown_2029398
	thumb_func_end sub_08017CB8

	thumb_func_start sub_08017DA8
sub_08017DA8: @ 0x08017DA8
	push {r4, r5, lr}
	ldr r3, _08017E18 @ =gUnknown_87F8000
	ldr r1, [r3]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _08017E10
	ldr r4, _08017E1C @ =gUnknown_20294B8
	adds r1, r4, #0
	adds r1, #0x18
	ldr r0, _08017E20 @ =gUnknown_804B710
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #1
	strb r0, [r4, #8]
	ldrb r0, [r3, #1]
	lsls r2, r0, #8
	ldrb r0, [r3]
	orrs r2, r0
	adds r0, r2, #2
	strh r0, [r4, #2]
	ldrh r1, [r3, #2]
	ldrh r0, [r3, #4]
	orrs r0, r1
	cmp r0, #0
	bne _08017DE4
	adds r0, r2, #6
	strh r0, [r4, #2]
_08017DE4:
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r2, _08017E24 @ =0x00007FFF
	ldrh r5, [r4, #2]
	ands r2, r5
	adds r2, #2
	adds r1, r3, #0
	bl memcpy
	adds r0, r4, #0
	bl sub_08017CB8
	adds r4, r0, #0
	ldr r0, _08017E28 @ =0x06017000
	movs r1, #0x80
	lsls r1, r1, #5
	bl sub_080055D0
	adds r0, r4, #0
	bl sub_08017BCC
_08017E10:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017E18: .4byte gUnknown_87F8000
_08017E1C: .4byte gUnknown_20294B8
_08017E20: .4byte gUnknown_804B710
_08017E24: .4byte 0x00007FFF
_08017E28: .4byte 0x06017000
	thumb_func_end sub_08017DA8

	thumb_func_start sub_08017E2C
sub_08017E2C: @ 0x08017E2C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, _08017E58 @ =0x00014034
	movs r5, #0x80
	lsls r5, r5, #0x12
	adds r0, r5, #0
	movs r1, #0
	adds r2, r6, #0
	bl memset
	movs r0, #0
	str r0, [r5, #0x30]
	cmp r4, #0
	beq _08017E60
	movs r0, #0xa0
	lsls r0, r0, #9
	str r0, [r5, #0x2c]
	ldr r1, _08017E5C @ =gUnknown_2000028
	movs r0, #2
	strb r0, [r1]
	b _08017E68
	.align 2, 0
_08017E58: .4byte 0x00014034
_08017E5C: .4byte gUnknown_2000028
_08017E60:
	ldr r0, _08017EA8 @ =gUnknown_87F8000
	ldrh r0, [r0]
	adds r0, #2
	str r0, [r5, #0x2c]
_08017E68:
	adds r0, r5, #0
	adds r0, #0x34
	ldr r1, _08017EA8 @ =gUnknown_87F8000
	movs r2, #0xa2
	lsls r2, r2, #9
	bl memcpy
	adds r1, r5, #4
	ldr r0, _08017EAC @ =gUnknown_804B718
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_0801C530
	adds r0, r5, #4
	adds r1, r6, #0
	bl sub_0801C570
	str r0, [r5]
	ldr r0, _08017EB0 @ =0x06017000
	movs r1, #0x80
	lsls r1, r1, #5
	bl sub_080055D0
	adds r0, r5, #0
	bl sub_08017BCC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017EA8: .4byte gUnknown_87F8000
_08017EAC: .4byte gUnknown_804B718
_08017EB0: .4byte 0x06017000
	thumb_func_end sub_08017E2C

	thumb_func_start sub_08017EB4
sub_08017EB4: @ 0x08017EB4
	push {lr}
	bl sub_0801AB54
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08017EB4

	thumb_func_start sub_08017EC0
sub_08017EC0: @ 0x08017EC0
	push {r4, lr}
	bl sub_0802A354
	adds r1, r0, #0
	ldr r2, _08017EF4 @ =0x00000FFF
	adds r0, r1, r2
	ldr r2, _08017EF8 @ =0xFFFFF000
	ands r0, r2
	ldr r2, _08017EFC @ =gUnknown_201E800
	subs r4, r2, r0
	adds r0, r4, #0
	bl sub_0802A2D4
	adds r1, r4, #0
	adds r1, #0x28
	movs r0, #8
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08017F00
	adds r0, r4, #0
	adds r0, #0x34
	bl sub_08026EE0
	b _08017F10
	.align 2, 0
_08017EF4: .4byte 0x00000FFF
_08017EF8: .4byte 0xFFFFF000
_08017EFC: .4byte gUnknown_201E800
_08017F00:
	ldr r0, _08017F18 @ =0x06017000
	movs r1, #0x80
	lsls r1, r1, #5
	bl sub_080055D0
	adds r0, r4, #0
	bl sub_08017BCC
_08017F10:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017F18: .4byte 0x06017000
	thumb_func_end sub_08017EC0

	thumb_func_start sub_08017F1C
sub_08017F1C: @ 0x08017F1C
	push {lr}
	adds r2, r0, #0
	ldr r0, _08017F4C @ =0x0000021E
	adds r1, r2, r0
	ldr r3, _08017F50 @ =0x0000021F
	adds r0, r2, r3
	ldrb r1, [r1]
	ldrb r0, [r0]
	orrs r1, r0
	adds r0, r1, #0
	adds r3, #1
	adds r1, r2, r3
	ldrb r1, [r1]
	orrs r0, r1
	adds r3, #1
	adds r1, r2, r3
	ldrb r1, [r1]
	orrs r0, r1
	cmp r0, #0
	beq _08017F54
	adds r0, r2, #0
	bl sub_08017644
	b _08017F5A
	.align 2, 0
_08017F4C: .4byte 0x0000021E
_08017F50: .4byte 0x0000021F
_08017F54:
	adds r0, r2, #0
	bl sub_08017818
_08017F5A:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08017F1C

	thumb_func_start sub_08017F60
sub_08017F60: @ 0x08017F60
	ldr r2, _08017F80 @ =gUnknown_2032D30
	ldr r2, [r2]
	ldrh r3, [r2, #2]
	str r3, [r0]
	ldr r3, _08017F84 @ =0x0000021D
	adds r0, r2, r3
	ldrb r0, [r0]
	lsls r0, r0, #8
	subs r3, #1
	adds r2, r2, r3
	ldrb r2, [r2]
	orrs r0, r2
	adds r0, #2
	str r0, [r1]
	bx lr
	.align 2, 0
_08017F80: .4byte gUnknown_2032D30
_08017F84: .4byte 0x0000021D
	thumb_func_end sub_08017F60

	thumb_func_start sub_08017F88
sub_08017F88: @ 0x08017F88
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, _08017FC0 @ =gUnknown_3003E04
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08017FC4 @ =0x0100000E
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	ldr r0, _08017FC8 @ =gUnknown_2024C54
	ldr r0, [r0]
	str r0, [r5, #0x14]
	strh r4, [r5, #0x10]
	movs r2, #0
	movs r3, #1
	ldr r1, _08017FCC @ =gUnknown_2024CC4
_08017FB2:
	ldrh r0, [r1, #2]
	cmp r0, #0
	bne _08017FD0
	strh r3, [r1, #2]
	ldrh r0, [r1]
	b _08017FDA
	.align 2, 0
_08017FC0: .4byte gUnknown_3003E04
_08017FC4: .4byte 0x0100000E
_08017FC8: .4byte gUnknown_2024C54
_08017FCC: .4byte gUnknown_2024CC4
_08017FD0:
	adds r1, #4
	adds r2, #1
	cmp r2, #4
	ble _08017FB2
	movs r0, #0
_08017FDA:
	strh r0, [r5, #0x1a]
	strh r0, [r5, #0xe]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_08017F88

	thumb_func_start sub_08017FE8
sub_08017FE8: @ 0x08017FE8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	cmp r5, #0
	bne _08018024
	ldr r4, _08018014 @ =gUnknown_2024C54
	movs r0, #0x80
	lsls r0, r0, #9
	bl sub_080055B0
	adds r1, r0, #0
	str r1, [r4]
	mov r0, sp
	strh r5, [r0]
	ldr r2, _08018018 @ =0x01008000
	bl CpuSet
	ldr r1, _0801801C @ =gUnknown_2024CD8
	ldr r2, _08018020 @ =0x0000FFFE
	adds r0, r2, #0
	b _08018034
	.align 2, 0
_08018014: .4byte gUnknown_2024C54
_08018018: .4byte 0x01008000
_0801801C: .4byte gUnknown_2024CD8
_08018020: .4byte 0x0000FFFE
_08018024:
	ldr r4, _08018090 @ =gUnknown_2024C54
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_080055B0
	str r0, [r4]
	ldr r1, _08018094 @ =gUnknown_2024CD8
	movs r0, #0x80
_08018034:
	strh r0, [r1]
	ldr r1, _08018098 @ =gUnknown_2024C5C
	ldr r0, _0801809C @ =gUnknown_2024C84
	str r0, [r1]
	movs r2, #0
	str r2, [r1, #4]
	str r2, [r0]
	str r1, [r0, #4]
	ldr r1, _080180A0 @ =gUnknown_2024CC0
	movs r0, #1
	strh r0, [r1]
	ldr r0, _080180A4 @ =gUnknown_2024CC2
	strh r2, [r0]
	ldr r0, _080180A8 @ =gUnknown_2024CAC
	str r2, [r0]
	movs r4, #0
	ldr r0, _080180AC @ =gUnknown_2024CC4
	subs r2, #2
	ldr r3, _080180B0 @ =0xFFFFFC00
	movs r1, #4
_0801805C:
	strh r2, [r0]
	strh r4, [r0, #2]
	adds r0, #4
	adds r2, r2, r3
	subs r1, #1
	cmp r1, #0
	bge _0801805C
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_08017F88
	ldr r1, _080180B4 @ =gUnknown_2024CBC
	str r0, [r1]
	ldr r1, _080180B8 @ =gUnknown_2024CB0
	movs r2, #0
	movs r0, #8
	strh r0, [r1]
	str r2, [r1, #8]
	movs r0, #0
	bl sub_0801D744
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018090: .4byte gUnknown_2024C54
_08018094: .4byte gUnknown_2024CD8
_08018098: .4byte gUnknown_2024C5C
_0801809C: .4byte gUnknown_2024C84
_080180A0: .4byte gUnknown_2024CC0
_080180A4: .4byte gUnknown_2024CC2
_080180A8: .4byte gUnknown_2024CAC
_080180AC: .4byte gUnknown_2024CC4
_080180B0: .4byte 0xFFFFFC00
_080180B4: .4byte gUnknown_2024CBC
_080180B8: .4byte gUnknown_2024CB0
	thumb_func_end sub_08017FE8

	thumb_func_start sub_080180BC
sub_080180BC: @ 0x080180BC
	push {r4, r5, r6, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _080180D4 @ =gUnknown_2024CC2
	ldrh r0, [r0]
	cmp r0, #4
	bne _080180D8
_080180D0:
	b _080180D0
	.align 2, 0
_080180D4: .4byte gUnknown_2024CC2
_080180D8:
	movs r0, #0x28
	bl sub_080055B0
	adds r4, r0, #0
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08018134 @ =0x01000014
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r1, _08018138 @ =gUnknown_2024CC0
	ldrh r2, [r1]
	adds r0, r2, #1
	strh r0, [r1]
	strh r2, [r4, #0x24]
	adds r3, r4, #0
	adds r3, #8
	ldr r1, _0801813C @ =gUnknown_2024CC2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r1, _08018140 @ =gUnknown_2024C5C
	ldr r0, [r1]
	str r0, [r4]
	ldr r0, [r1]
	ldr r0, [r0, #4]
	str r0, [r4, #4]
	ldr r0, [r1]
	str r4, [r0, #4]
	str r4, [r1]
	ldr r0, _08018144 @ =gUnknown_2024C54
	ldr r0, [r0]
	str r0, [r3, #0x14]
	strh r5, [r3, #0x10]
	movs r2, #0
	movs r5, #1
	ldr r1, _08018148 @ =gUnknown_2024CC4
_08018126:
	ldrh r0, [r1, #2]
	cmp r0, #0
	bne _0801814C
	strh r5, [r1, #2]
	ldrh r0, [r1]
	b _08018156
	.align 2, 0
_08018134: .4byte 0x01000014
_08018138: .4byte gUnknown_2024CC0
_0801813C: .4byte gUnknown_2024CC2
_08018140: .4byte gUnknown_2024C5C
_08018144: .4byte gUnknown_2024C54
_08018148: .4byte gUnknown_2024CC4
_0801814C:
	adds r1, #4
	adds r2, #1
	cmp r2, #4
	ble _08018126
	movs r0, #0
_08018156:
	strh r0, [r3, #0x1a]
	strh r0, [r3, #0xe]
	strb r6, [r3, #1]
	ldrh r0, [r4, #0x24]
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080180BC

	thumb_func_start sub_08018168
sub_08018168: @ 0x08018168
	push {r4, r5, r6, lr}
	bl sub_08005DE0
	ldr r1, _080181D8 @ =gUnknown_2024CB0
	ldrh r2, [r1]
	ands r0, r2
	cmp r0, #0
	bne _0801817A
	b _0801828A
_0801817A:
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0801825C
	ldr r6, [r0, #8]
	adds r0, r6, #0
	bl sub_080023D8
	bl sub_08017080
	movs r4, #0x80
	lsls r4, r4, #3
	adds r0, r4, #0
	bl sub_080055B0
	adds r5, r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r4, #0
	bl sub_08000970
	movs r0, #0
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #2
	movs r3, #0x32
	bl sub_08000660
	adds r0, r6, #0
	bl sub_080028A8
	adds r1, r0, #0
	lsls r0, r1, #5
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r5, r0
	movs r2, #0
	movs r3, #0x20
	bl sub_08000920
	bl sub_080053B0
	ldr r0, _080181DC @ =0x00000193
	bl sub_08017108
	b _0801821E
	.align 2, 0
_080181D8: .4byte gUnknown_2024CB0
_080181DC: .4byte 0x00000193
_080181E0:
	bl sub_08005DE0
	movs r1, #6
	ands r1, r0
	cmp r1, #0
	beq _0801821A
	ldr r0, _08018204 @ =gUnknown_2024C54
	ldr r0, [r0]
	adds r0, #0xc0
	movs r1, #2
	strh r1, [r0]
	bl sub_08016FB0
	movs r0, #6
	bl sub_08017108
	b _0801820C
	.align 2, 0
_08018204: .4byte gUnknown_2024C54
_08018208:
	bl sub_080053B0
_0801820C:
	movs r0, #6
	bl sub_08016E50
	cmp r0, #0
	beq _08018208
	movs r0, #1
	b _0801828C
_0801821A:
	bl sub_080053B0
_0801821E:
	bl sub_08005DE0
	movs r1, #9
	ands r1, r0
	cmp r1, #0
	beq _080181E0
	adds r0, r6, #0
	bl sub_080023C4
	bl sub_080170BC
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	adds r3, r4, #0
	bl LoadPalette
	adds r0, r5, r4
	movs r1, #0
	movs r2, #0
	adds r3, r4, #0
	bl sub_08000920
	adds r0, r5, #0
	bl sub_08005598
	bl sub_080053B0
	b _0801828A
_0801825C:
	ldr r0, _08018274 @ =gUnknown_2024C54
	ldr r0, [r0]
	adds r0, #0xc0
	movs r1, #3
	strh r1, [r0]
	bl sub_08016FB0
	movs r0, #5
	bl sub_08017108
	b _0801827C
	.align 2, 0
_08018274: .4byte gUnknown_2024C54
_08018278:
	bl sub_080053B0
_0801827C:
	movs r0, #5
	bl sub_08016E50
	cmp r0, #0
	beq _08018278
	movs r0, #1
	b _0801828C
_0801828A:
	movs r0, #0
_0801828C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08018168

	thumb_func_start sub_08018294
sub_08018294: @ 0x08018294
	push {r4, r5, r6, r7, lr}
	ldr r6, _080182CC @ =gUnknown_30001A0
	ldr r5, _080182D0 @ =gUnknown_2024C54
	ldr r0, [r5]
	adds r0, #0xc0
	movs r1, #0
	strh r1, [r0]
	ldr r1, _080182D4 @ =gUnknown_2024C58
	movs r0, #0
	str r0, [r1]
	ldr r4, _080182D8 @ =gUnknown_2024CAC
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	ldr r0, _080182DC @ =gUnknown_2024CBC
	ldr r0, [r0]
	bl _call_via_r6
	ldr r0, [r4]
	cmp r0, #5
	bls _080182E0
	bl sub_08018168
	cmp r0, #0
	beq _080182E0
	ldr r0, [r5]
	b _0801835A
	.align 2, 0
_080182CC: .4byte gUnknown_30001A0
_080182D0: .4byte gUnknown_2024C54
_080182D4: .4byte gUnknown_2024C58
_080182D8: .4byte gUnknown_2024CAC
_080182DC: .4byte gUnknown_2024CBC
_080182E0:
	ldr r0, _080182E8 @ =gUnknown_2024C5C
	ldr r2, [r0]
	b _0801834C
	.align 2, 0
_080182E8: .4byte gUnknown_2024C5C
_080182EC:
	ldr r5, [r2]
	ldrh r1, [r2, #0x26]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0801834A
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801833E
	ldr r0, [r2, #4]
	str r0, [r5, #4]
	ldr r1, [r2, #4]
	ldr r0, [r2]
	str r0, [r1]
	ldrh r4, [r2, #0x22]
	movs r1, #0
	ldr r3, _08018330 @ =gUnknown_2024CC4
_08018310:
	adds r0, r3, #0
	ldrh r7, [r0]
	cmp r7, r4
	beq _08018338
	adds r3, r0, #4
	adds r1, #1
	cmp r1, #4
	ble _08018310
_08018320:
	adds r0, r2, #0
	bl sub_08005598
	ldr r1, _08018334 @ =gUnknown_2024CC2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	b _0801834A
	.align 2, 0
_08018330: .4byte gUnknown_2024CC4
_08018334: .4byte gUnknown_2024CC2
_08018338:
	movs r0, #0
	strh r0, [r3, #2]
	b _08018320
_0801833E:
	ldr r0, _08018364 @ =gUnknown_2024C58
	str r2, [r0]
	adds r0, r2, #0
	adds r0, #8
	bl _call_via_r6
_0801834A:
	adds r2, r5, #0
_0801834C:
	ldr r0, _08018368 @ =gUnknown_2024C84
	cmp r2, r0
	bne _080182EC
	bl sub_0801ED94
	ldr r0, _0801836C @ =gUnknown_2024C54
	ldr r0, [r0]
_0801835A:
	adds r0, #0xc0
	ldrh r0, [r0]
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08018364: .4byte gUnknown_2024C58
_08018368: .4byte gUnknown_2024C84
_0801836C: .4byte gUnknown_2024C54
_08018370:
	b _08018370
	.align 2, 0
	thumb_func_end sub_08018294

	thumb_func_start sub_08018374
sub_08018374: @ 0x08018374
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, [r0, #0x14]
	ldrh r0, [r0, #0xe]
	adds r1, r0, r1
	adds r2, r2, r1
	ldrb r1, [r2, #1]
	lsls r0, r1, #8
	ldrb r2, [r2]
	orrs r0, r2
	bx lr
	.align 2, 0
	thumb_func_end sub_08018374

	thumb_func_start sub_0801838C
sub_0801838C: @ 0x0801838C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	movs r3, #0x80
	lsls r3, r3, #3
	movs r1, #0
	movs r2, #0
	bl sub_08000970
	movs r5, #0x80
	lsls r5, r5, #2
	movs r0, #0
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0x32
	bl sub_08000660
	adds r0, r6, #0
	bl sub_080028A8
	adds r1, r0, #0
	lsls r0, r1, #5
	adds r0, r0, r5
	adds r4, r4, r0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08000920
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_0801838C

	thumb_func_start sub_080183CC
sub_080183CC: @ 0x080183CC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r5
	cmp r0, #0
	beq _080183F0
	adds r1, r4, #2
	ldr r2, _080183EC @ =0x00007FFF
	ands r2, r5
	adds r0, r6, #0
	bl memcpy
	b _08018422
	.align 2, 0
_080183EC: .4byte 0x00007FFF
_080183F0:
	adds r4, #2
	ldrb r0, [r4]
	cmp r0, #0x76
	bne _0801841A
	ldrb r0, [r4, #1]
	cmp r0, #0x70
	bne _0801841A
	ldrb r0, [r4, #2]
	cmp r0, #0x6b
	bne _0801841A
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08005340
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0800532C
	b _08018422
_0801841A:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08005350
_08018422:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_080183CC

	thumb_func_start sub_08018428
sub_08018428: @ 0x08018428
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r5
	cmp r0, #0
	beq _08018458
	ldr r0, _08018450 @ =gUnknown_2024CBC
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	adds r0, r0, r6
	adds r1, r4, #2
	ldr r2, _08018454 @ =0x00007FFF
	ands r2, r5
	bl memcpy
	b _0801849A
	.align 2, 0
_08018450: .4byte gUnknown_2024CBC
_08018454: .4byte 0x00007FFF
_08018458:
	adds r4, #2
	ldrb r0, [r4]
	cmp r0, #0x76
	bne _0801848C
	ldrb r0, [r4, #1]
	cmp r0, #0x70
	bne _0801848C
	ldrb r0, [r4, #2]
	cmp r0, #0x6b
	bne _0801848C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08005340
	adds r3, r0, #0
	ldr r0, _08018488 @ =gUnknown_2024CBC
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	adds r2, r2, r6
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800532C
	b _0801849A
	.align 2, 0
_08018488: .4byte gUnknown_2024CBC
_0801848C:
	ldr r0, _080184A0 @ =gUnknown_2024CBC
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	adds r0, r0, r6
	adds r1, r4, #0
	bl sub_08005350
_0801849A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080184A0: .4byte gUnknown_2024CBC
	thumb_func_end sub_08018428

	thumb_func_start sub_080184A4
sub_080184A4: @ 0x080184A4
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r5
	cmp r0, #0
	beq _080184D4
	ldr r0, _080184CC @ =gUnknown_2024CBC
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r4, #2
	ldr r2, _080184D0 @ =0x00007FFF
	ands r2, r5
	bl memcpy
	b _0801851E
	.align 2, 0
_080184CC: .4byte gUnknown_2024CBC
_080184D0: .4byte 0x00007FFF
_080184D4:
	adds r4, #2
	ldrb r0, [r4]
	cmp r0, #0x76
	bne _0801850C
	ldrb r1, [r4, #1]
	cmp r1, #0x70
	bne _0801850C
	ldrb r0, [r4, #2]
	cmp r0, #0x6b
	bne _0801850C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08005340
	adds r3, r0, #0
	ldr r0, _08018508 @ =gUnknown_2024CBC
	ldr r0, [r0]
	ldr r2, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r2, r1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800532C
	b _0801851E
	.align 2, 0
_08018508: .4byte gUnknown_2024CBC
_0801850C:
	ldr r0, _08018524 @ =gUnknown_2024CBC
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r4, #0
	bl sub_08005350
_0801851E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018524: .4byte gUnknown_2024CBC
	thumb_func_end sub_080184A4

	thumb_func_start sub_08018528
sub_08018528: @ 0x08018528
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r1, [r2]
	ldr r0, [r2, #4]
	str r0, [r1, #4]
	ldr r1, [r2, #4]
	ldr r0, [r2]
	str r0, [r1]
	ldrh r3, [r2, #0x22]
	movs r1, #0
	movs r4, #0
	ldr r0, _0801854C @ =gUnknown_2024CC4
_08018540:
	ldrh r5, [r0]
	cmp r5, r3
	bne _08018550
	strh r4, [r0, #2]
	b _08018558
	.align 2, 0
_0801854C: .4byte gUnknown_2024CC4
_08018550:
	adds r0, #4
	adds r1, #1
	cmp r1, #4
	ble _08018540
_08018558:
	adds r0, r2, #0
	bl sub_08005598
	ldr r1, _0801856C @ =gUnknown_2024CC2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801856C: .4byte gUnknown_2024CC2
	thumb_func_end sub_08018528

	thumb_func_start sub_08018570
sub_08018570: @ 0x08018570
	ldr r2, [r0]
	ldr r1, [r0, #4]
	str r1, [r2, #4]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_08018570

	thumb_func_start sub_08018580
sub_08018580: @ 0x08018580
	ldr r2, [r0]
	str r2, [r1]
	ldr r3, [r2, #4]
	str r3, [r1, #4]
	str r1, [r2, #4]
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_08018580

	thumb_func_start sub_08018590
sub_08018590: @ 0x08018590
	push {r4, r5, lr}
	ldr r0, _080185B0 @ =gUnknown_2024C5C
	ldr r0, [r0]
	ldr r1, _080185B4 @ =gUnknown_2024C84
	cmp r0, r1
	beq _080185AA
	adds r5, r1, #0
_0801859E:
	ldr r4, [r0]
	bl sub_08018528
	adds r0, r4, #0
	cmp r0, r5
	bne _0801859E
_080185AA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080185B0: .4byte gUnknown_2024C5C
_080185B4: .4byte gUnknown_2024C84
	thumb_func_end sub_08018590

	thumb_func_start sub_080185B8
sub_080185B8: @ 0x080185B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r4, #1
	ands r4, r1
	ldr r6, _08018678 @ =gUnknown_2024A48
	ldr r3, [r6]
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	ldr r2, _0801867C @ =0x00000B44
	adds r0, r3, r2
	adds r0, r0, r1
	ldrb r2, [r7, #4]
	str r2, [r0]
	ldr r2, _08018680 @ =0x00000B48
	adds r0, r3, r2
	adds r0, r0, r1
	ldrh r2, [r7, #6]
	str r2, [r0]
	ldr r0, _08018684 @ =0x00000B4C
	adds r3, r3, r0
	adds r3, r3, r1
	ldrh r0, [r7, #8]
	str r0, [r3]
	adds r0, r7, #0
	adds r0, #0x10
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0x20
	bl LoadPalette
	lsls r5, r4, #4
	adds r1, r5, #0
	movs r2, #0x98
	lsls r2, r2, #3
	adds r3, r7, r2
	movs r0, #0
	movs r2, #0x10
	bl sub_080045CC
	movs r0, #0
	bl sub_0800425C
	mov sb, r0
	adds r1, r7, #0
	adds r1, #0x30
	lsls r4, r4, #0xc
	orrs r4, r5
	movs r0, #0
	mov sl, r6
	ldr r2, _08018688 @ =0x000003FF
	mov r8, r2
	ldr r2, _0801868C @ =0x00000FFF
	mov ip, r2
_0801862C:
	movs r5, #0
	adds r6, r0, #1
	lsls r0, r0, #6
	mov r2, sb
	adds r3, r0, r2
_08018636:
	ldrh r2, [r1]
	mov r0, r8
	ands r0, r2
	cmp r0, #0
	beq _08018648
	mov r0, ip
	ands r0, r2
	orrs r0, r4
	strh r0, [r3]
_08018648:
	adds r3, #2
	adds r5, #1
	adds r1, #2
	cmp r5, #0x1d
	ble _08018636
	adds r0, r6, #0
	cmp r0, #0x13
	ble _0801862C
	mov r0, sl
	ldr r1, [r0]
	ldr r2, _08018690 @ =0x00000FAC
	adds r1, r1, r2
	ldr r0, [r1]
	ldrb r7, [r7, #5]
	adds r0, r7, r0
	str r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018678: .4byte gUnknown_2024A48
_0801867C: .4byte 0x00000B44
_08018680: .4byte 0x00000B48
_08018684: .4byte 0x00000B4C
_08018688: .4byte 0x000003FF
_0801868C: .4byte 0x00000FFF
_08018690: .4byte 0x00000FAC
	thumb_func_end sub_080185B8

	thumb_func_start sub_08018694
sub_08018694: @ 0x08018694
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	add r7, sp, #8
	str r0, [r7, #0x30]
	bl sub_0804441C
	str r0, [r7, #0x4c]
	ldr r0, _08018744 @ =gUnknown_2024A48
	ldr r0, [r0]
	ldr r1, _08018748 @ =0x00000FA8
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	movs r0, #0
	bl sub_0800425C
	str r0, [r7, #0x40]
	movs r2, #0
	str r2, [r7, #0x38]
_080186C2:
	movs r3, #0
	str r3, [r7, #0x34]
	ldr r0, [r7, #0x38]
	adds r0, #1
	str r0, [r7, #0x5c]
_080186CC:
	ldr r1, [r7, #0x30]
	ldr r2, [r1, #0xc]
	cmp r2, #0
	bne _080186D6
	b _080187FC
_080186D6:
	ldr r0, [r7, #0x38]
	adds r0, #0xc
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #5
	adds r0, #5
	ldr r3, [r7, #0x34]
	lsls r1, r3, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r3, [r7, #0x40]
	adds r1, r0, r3
	ldrh r0, [r1, #2]
	ldrh r3, [r1]
	orrs r0, r3
	str r0, [r7, #0x44]
	cmp r0, #0
	beq _080186FE
	b _080187FC
_080186FE:
	movs r0, #1
	ldr r3, [r7, #0x38]
	ands r0, r3
	cmp r0, #0
	beq _0801871A
	adds r0, r1, #0
	adds r0, #0x40
	adds r1, #0x42
	ldrh r1, [r1]
	ldrh r0, [r0]
	orrs r1, r0
	adds r0, r1, #0
	cmp r0, #0
	bne _080187FC
_0801871A:
	ldrb r2, [r2]
	str r2, [r7, #0x3c]
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x48]
	ldr r2, [r7, #0x4c]
	adds r2, #4
	ldr r1, [r7, #0x4c]
	ldr r0, [r1, #4]
	str r0, [r7]
	ldr r3, [r7, #0x44]
	str r3, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _0801874C @ =sub_08018750
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08018752
	.align 2, 0
_08018744: .4byte gUnknown_2024A48
_08018748: .4byte 0x00000FA8
_0801874C: .4byte _08018750
_08018750: @ 0x08018750
	b _08018824
_08018752:
	str r7, [r2]
	ldr r1, [r7, #0x3c]
	lsls r0, r1, #6
	ldr r3, [r7, #0x30]
	ldr r2, [r3, #4]
	adds r2, r2, r0
	movs r0, #8
	str r0, [sp]
	ldr r0, [r3, #0xc]
	ldrb r0, [r0, #1]
	str r0, [sp, #4]
	ldr r0, [r7, #0x48]
	movs r1, #1
	movs r3, #0x10
	bl sub_08002504
	str r0, [r7, #0x50]
	ldr r1, [r7, #0x4c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r3, [r7, #0x50]
	ldr r2, [r3, #0x30]
	movs r1, #8
	ldrsh r0, [r2, r1]
	adds r0, r3, r0
	ldr r3, [r7, #0x34]
	lsls r1, r3, #4
	adds r1, #0x28
	str r1, [r7, #0x54]
	ldr r3, [r7, #0x38]
	lsls r1, r3, #2
	adds r1, #0x30
	str r1, [r7, #0x58]
	ldr r3, [r2, #0xc]
	ldr r1, [r7, #0x54]
	ldr r2, [r7, #0x58]
	bl _call_via_r3
	ldr r0, [r7, #0x50]
	bl sub_080023D8
	ldr r0, [r7, #0x50]
	bl sub_08002428
	movs r1, #0x80
	lsls r1, r1, #4
	ldr r0, [r7, #0x50]
	bl sub_080027DC
	ldr r0, [r7, #0x50]
	ldr r1, [r7, #0x30]
	str r0, [r1]
	movs r2, #0
	strb r2, [r1, #0x10]
	movs r0, #1
	strb r0, [r1, #0x12]
	ldr r1, [r1, #0xc]
	ldrh r0, [r1, #0xc]
	ldr r3, [r7, #0x30]
	strh r0, [r3, #0x14]
	ldrh r0, [r1, #0xe]
	strh r0, [r3, #0x16]
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _080187E4
	ldr r0, _0801881C @ =gUnknown_2024A48
	ldr r1, [r0]
	ldr r0, _08018820 @ =0x00000FA8
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_080187E4:
	movs r1, #0x54
	adds r1, r1, r7
	ldrh r2, [r1]
	ldr r1, [r7, #0x30]
	strh r2, [r1, #0x1a]
	movs r3, #0x58
	adds r3, r3, r7
	ldrh r3, [r3]
	strh r3, [r1, #0x1e]
	movs r0, #0
	strh r0, [r1, #0x1c]
	strh r0, [r1, #0x18]
_080187FC:
	ldr r1, [r7, #0x34]
	adds r1, #1
	str r1, [r7, #0x34]
	ldr r2, [r7, #0x30]
	adds r2, #0x20
	str r2, [r7, #0x30]
	cmp r1, #9
	bgt _0801880E
	b _080186CC
_0801880E:
	ldr r3, [r7, #0x5c]
	str r3, [r7, #0x38]
	cmp r3, #8
	bgt _08018818
	b _080186C2
_08018818:
	b _0801886C
	.align 2, 0
_0801881C: .4byte gUnknown_2024A48
_08018820: .4byte 0x00000FA8
_08018824:
	ldr r2, [r7, #0x4c]
	adds r2, #4
	ldr r1, [r7, #0x4c]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08018844 @ =sub_08018848
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0801884A
	.align 2, 0
_08018844: .4byte _08018848
_08018848: @ 0x08018848
	b _08018868
_0801884A:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _0801885C
	ldr r0, [r7, #0x48]
	bl sub_080046C0
_0801885C:
	ldr r1, [r7, #0x4c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08018868:
	bl sub_080443CC
_0801886C:
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08018694

	thumb_func_start sub_0801887C
sub_0801887C: @ 0x0801887C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	add r7, sp, #8
	str r0, [r7, #0x30]
	bl sub_0804441C
	str r0, [r7, #0x3c]
	ldr r0, _080188C0 @ =gUnknown_2024A48
	ldr r0, [r0]
	str r0, [r7, #0x34]
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x38]
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _080188C4 @ =sub_080188C8
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _080188CA
	.align 2, 0
_080188C0: .4byte gUnknown_2024A48
_080188C4: .4byte _080188C8
_080188C8: @ 0x080188C8
	b _08018A68
_080188CA:
	str r7, [r2]
	ldr r4, [r7, #0x30]
	ldrb r4, [r4, #4]
	lsls r3, r4, #3
	movs r0, #8
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	ldr r0, [r7, #0x30]
	adds r0, #0x30
	str r0, [r7, #0x44]
	ldr r0, [r7, #0x38]
	movs r1, #1
	ldr r2, [r7, #0x44]
	bl sub_08002504
	str r0, [r7, #0x40]
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r2, [r7, #0x40]
	ldr r3, [r2, #0x30]
	movs r4, #8
	ldrsh r0, [r3, r4]
	adds r0, r2, r0
	ldr r1, [r7, #0x30]
	ldrb r1, [r1, #4]
	lsls r2, r1, #3
	movs r1, #0xf0
	subs r1, r1, r2
	asrs r1, r1, #1
	ldr r3, [r3, #0xc]
	movs r2, #0x84
	bl _call_via_r3
	ldr r0, [r7, #0x40]
	bl sub_080023D8
	ldr r0, [r7, #0x40]
	bl sub_08002428
	movs r1, #0x80
	lsls r1, r1, #4
	ldr r0, [r7, #0x40]
	bl sub_080027DC
	ldr r2, [r7, #0x34]
	ldr r3, _08018994 @ =0x00000B5C
	adds r0, r2, r3
	ldr r4, [r7, #0x40]
	str r4, [r0]
	ldr r0, _08018998 @ =0x00000E78
	adds r1, r2, r0
	ldr r2, [r7, #0x30]
	ldrb r2, [r2, #4]
	lsls r0, r2, #3
	subs r0, #1
	str r0, [r1]
	ldr r3, [r7, #0x34]
	ldr r4, _0801899C @ =0x00000E98
	adds r1, r3, r4
	ldr r2, [r7, #0x30]
	movs r3, #0xe
	ldrsh r0, [r2, r3]
	lsls r0, r0, #8
	str r0, [r1]
	ldr r4, [r7, #0x34]
	ldr r0, _080189A0 @ =0x00000E9C
	adds r1, r4, r0
	movs r3, #0xe
	ldrsh r0, [r2, r3]
	lsls r0, r0, #7
	str r0, [r1]
	ldr r0, _080189A4 @ =0x00000E84
	adds r1, r4, r0
	ldrb r0, [r2, #9]
	str r0, [r1]
	ldr r2, _080189A8 @ =0x00000E88
	adds r1, r4, r2
	ldr r3, [r7, #0x30]
	ldrb r0, [r3, #9]
	str r0, [r1]
	ldr r0, _080189AC @ =0x00000E8C
	adds r2, r4, r0
	ldrh r0, [r3, #0xc]
	movs r1, #0x18
	cmp r0, #0
	beq _0801897E
	adds r1, r0, #0
_0801897E:
	str r1, [r2]
	ldr r1, [r7, #0x30]
	ldrb r1, [r1, #6]
	cmp r1, #4
	bhi _080189B4
	ldr r2, [r7, #0x34]
	ldr r3, _080189B0 @ =0x00000B78
	adds r1, r2, r3
	ldr r4, [r7, #0x30]
	ldrb r0, [r4, #6]
	b _080189BE
	.align 2, 0
_08018994: .4byte 0x00000B5C
_08018998: .4byte 0x00000E78
_0801899C: .4byte 0x00000E98
_080189A0: .4byte 0x00000E9C
_080189A4: .4byte 0x00000E84
_080189A8: .4byte 0x00000E88
_080189AC: .4byte 0x00000E8C
_080189B0: .4byte 0x00000B78
_080189B4:
	ldr r0, [r7, #0x34]
	ldr r2, _080189E4 @ =0x00000B78
	adds r1, r0, r2
	movs r0, #0x80
	lsls r0, r0, #9
_080189BE:
	str r0, [r1]
	ldr r3, [r7, #0x34]
	ldr r4, _080189E8 @ =0x00000B7C
	adds r1, r3, r4
	ldr r2, [r7, #0x30]
	ldrb r0, [r2, #8]
	str r0, [r1]
	subs r4, #0x18
	adds r0, r3, r4
	ldr r1, [r7, #0x44]
	str r1, [r0]
	ldrb r0, [r2, #7]
	cmp r0, #0
	beq _080189F0
	movs r2, #0xe7
	lsls r2, r2, #4
	adds r1, r3, r2
	ldr r0, _080189EC @ =sub_08019338
	b _080189FA
	.align 2, 0
_080189E4: .4byte 0x00000B78
_080189E8: .4byte 0x00000B7C
_080189EC: .4byte sub_08019338
_080189F0:
	ldr r3, [r7, #0x34]
	movs r4, #0xe7
	lsls r4, r4, #4
	adds r1, r3, r4
	ldr r0, _08018A50 @ =sub_08019254
_080189FA:
	str r0, [r1]
	ldr r1, [r7, #0x30]
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _08018A10
	ldr r2, [r7, #0x34]
	movs r3, #0xe7
	lsls r3, r3, #4
	adds r1, r2, r3
	ldr r0, _08018A54 @ =sub_0801944C
	str r0, [r1]
_08018A10:
	ldr r0, [r7, #0x30]
	adds r0, #0x10
	movs r1, #4
	movs r2, #0
	movs r3, #0x20
	bl sub_08000920
	ldr r4, [r7, #0x30]
	ldrb r4, [r4, #4]
	lsls r1, r4, #3
	movs r0, #0xf0
	subs r0, r0, r1
	asrs r0, r0, #1
	ldr r2, [r7, #0x34]
	ldr r3, _08018A58 @ =0x00000E6A
	adds r1, r2, r3
	strh r0, [r1]
	ldr r4, _08018A5C @ =0x00000E6E
	adds r1, r2, r4
	movs r0, #0x84
	strh r0, [r1]
	ldr r0, _08018A60 @ =gUnknown_2024A48
	ldr r1, [r0]
	ldr r0, _08018A64 @ =0x00000FAC
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, [r7, #0x30]
	ldrb r2, [r2, #5]
	adds r0, r2, r0
	str r0, [r1]
	b _08018AB0
	.align 2, 0
_08018A50: .4byte sub_08019254
_08018A54: .4byte sub_0801944C
_08018A58: .4byte 0x00000E6A
_08018A5C: .4byte 0x00000E6E
_08018A60: .4byte gUnknown_2024A48
_08018A64: .4byte 0x00000FAC
_08018A68:
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r3, [r7, #0x3c]
	ldr r0, [r3, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08018A88 @ =sub_08018A8C
	str r0, [r1, #4]
	mov r4, sp
	str r4, [r1, #8]
	b _08018A8E
	.align 2, 0
_08018A88: .4byte _08018A8C
_08018A8C: @ 0x08018A8C
	b _08018AAC
_08018A8E:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _08018AA0
	ldr r0, [r7, #0x38]
	bl sub_080046C0
_08018AA0:
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08018AAC:
	bl sub_080443CC
_08018AB0:
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0801887C

	thumb_func_start sub_08018AC0
sub_08018AC0: @ 0x08018AC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	add r7, sp, #8
	bl sub_0804441C
	str r0, [r7, #0x40]
	ldr r0, _08018B00 @ =gUnknown_2024A48
	ldr r0, [r0]
	str r0, [r7, #0x38]
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x3c]
	ldr r2, [r7, #0x40]
	adds r2, #4
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08018B04 @ =sub_08018B08
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _08018B0A
	.align 2, 0
_08018B00: .4byte gUnknown_2024A48
_08018B04: .4byte _08018B08
_08018B08: @ 0x08018B08
	b _08018C38
_08018B0A:
	str r7, [r2]
	ldr r2, _08018BB0 @ =gUnknown_86FED10
	movs r0, #8
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	ldr r0, [r7, #0x3c]
	movs r1, #1
	movs r3, #8
	bl sub_08002504
	str r0, [r7, #0x44]
	ldr r4, [r7, #0x40]
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	ldr r0, [r7, #0x44]
	ldr r1, [r0, #0x30]
	movs r2, #8
	ldrsh r0, [r1, r2]
	ldr r3, [r7, #0x44]
	adds r0, r3, r0
	ldr r3, [r1, #0xc]
	movs r1, #0
	movs r2, #0x20
	bl _call_via_r3
	ldr r0, [r7, #0x44]
	movs r1, #1
	bl sub_08001798
	ldr r0, [r7, #0x44]
	bl sub_0800293C
	movs r1, #0x80
	lsls r1, r1, #4
	ldr r0, [r7, #0x44]
	bl sub_080027DC
	ldr r0, [r7, #0x44]
	bl sub_080023D8
	ldr r0, [r7, #0x44]
	bl sub_08002428
	ldr r4, [r7, #0x38]
	ldr r1, _08018BB4 @ =0x00000BA8
	adds r0, r4, r1
	ldr r2, [r7, #0x44]
	str r2, [r0]
	ldr r0, _08018BB8 @ =gUnknown_86FECF0
	movs r1, #5
	movs r2, #0
	movs r3, #0x20
	bl sub_08000920
	ldr r3, _08018BBC @ =0x00000B5C
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, #0
	beq _08018BE4
	adds r1, r7, #0
	adds r1, #0x30
	adds r2, r7, #0
	adds r2, #0x34
	bl sub_080023E4
	ldr r1, _08018BC0 @ =0x00000E78
	adds r0, r4, r1
	ldr r0, [r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldr r1, [r7, #0x30]
	adds r1, r1, r0
	str r1, [r7, #0x30]
	movs r0, #0xf0
	subs r0, r0, r1
	cmp r0, #0x63
	bgt _08018BC4
	movs r0, #0xef
	subs r2, r0, r1
	b _08018BC6
	.align 2, 0
_08018BB0: .4byte gUnknown_86FED10
_08018BB4: .4byte 0x00000BA8
_08018BB8: .4byte gUnknown_86FECF0
_08018BBC: .4byte 0x00000B5C
_08018BC0: .4byte 0x00000E78
_08018BC4:
	movs r2, #0x64
_08018BC6:
	ldr r0, [r7, #0x30]
	adds r0, r0, r2
	ldr r3, [r7, #0x38]
	ldr r4, _08018BDC @ =0x00000BC6
	adds r1, r3, r4
	strh r0, [r1]
	ldr r0, [r7, #0x34]
	subs r0, r0, r2
	ldr r2, _08018BE0 @ =0x00000BCA
	adds r1, r3, r2
	b _08018BF4
	.align 2, 0
_08018BDC: .4byte 0x00000BC6
_08018BE0: .4byte 0x00000BCA
_08018BE4:
	ldr r3, [r7, #0x38]
	ldr r4, _08018C28 @ =0x00000BC6
	adds r1, r3, r4
	movs r0, #0xdc
	strh r0, [r1]
	ldr r0, _08018C2C @ =0x00000BCA
	adds r1, r3, r0
	movs r0, #0x20
_08018BF4:
	strh r0, [r1]
	ldr r2, [r7, #0x38]
	ldr r3, _08018C30 @ =0x00000BB8
	adds r1, r2, r3
	movs r0, #0x60
	str r0, [r1]
	movs r4, #0xbc
	lsls r4, r4, #4
	adds r1, r2, r4
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r1]
	movs r0, #0xbb
	lsls r0, r0, #4
	adds r1, r2, r0
	movs r0, #2
	str r0, [r1]
	ldr r1, _08018C34 @ =0x00000BAC
	adds r0, r2, r1
	movs r1, #0
	str r1, [r0]
	subs r3, #4
	adds r0, r2, r3
	str r1, [r0]
	b _08018C80
	.align 2, 0
_08018C28: .4byte 0x00000BC6
_08018C2C: .4byte 0x00000BCA
_08018C30: .4byte 0x00000BB8
_08018C34: .4byte 0x00000BAC
_08018C38:
	ldr r2, [r7, #0x40]
	adds r2, #4
	ldr r4, [r7, #0x40]
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08018C58 @ =sub_08018C5C
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08018C5E
	.align 2, 0
_08018C58: .4byte _08018C5C
_08018C5C: @ 0x08018C5C
	b _08018C7C
_08018C5E:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _08018C70
	ldr r0, [r7, #0x3c]
	bl sub_080046C0
_08018C70:
	ldr r1, [r7, #0x40]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08018C7C:
	bl sub_080443CC
_08018C80:
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08018AC0

	thumb_func_start sub_08018C90
sub_08018C90: @ 0x08018C90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	movs r0, #0
	mov sb, r0
	ldr r0, _08018D0C @ =gUnknown_2024A48
	ldr r1, [r0]
	ldr r2, _08018D10 @ =0x00000FAC
	adds r1, r1, r2
	movs r2, #0xa
	str r2, [r1]
	movs r1, #0
	movs r7, #0xd2
	lsls r7, r7, #1
	add r7, sl
	mov r8, r7
_08018CB8:
	mov r2, r8
	ldrh r0, [r2]
	adds r1, #1
	str r1, [sp]
	cmp r0, #0
	bne _08018CC6
	b _08018DE8
_08018CC6:
	movs r4, #0xd6
	lsls r4, r4, #1
	add r4, sl
	ldrb r7, [r4]
	cmp r7, #0x76
	beq _08018CDA
_08018CD2:
	adds r4, #1
	ldrb r0, [r4]
	cmp r0, #0x76
	bne _08018CD2
_08018CDA:
	mov r2, r8
	ldrh r1, [r2]
	adds r0, r4, #0
	bl sub_08005340
	adds r5, r0, #0
	adds r0, #0x10
	bl sub_080055B0
	adds r6, r0, #0
	mov r7, r8
	ldrh r1, [r7]
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_0800532C
	ldrb r0, [r6]
	cmp r0, #2
	beq _08018D50
	cmp r0, #2
	bgt _08018D14
	cmp r0, #1
	beq _08018D30
	b _08018DE8
	.align 2, 0
_08018D0C: .4byte gUnknown_2024A48
_08018D10: .4byte 0x00000FAC
_08018D14:
	cmp r0, #3
	bne _08018DE8
	adds r0, r6, #0
	bl sub_0801887C
	ldr r0, _08018D28 @ =gUnknown_2024A48
	ldr r1, [r0]
	ldr r2, _08018D2C @ =0x00000B74
	adds r1, r1, r2
	b _08018DE2
	.align 2, 0
_08018D28: .4byte gUnknown_2024A48
_08018D2C: .4byte 0x00000B74
_08018D30:
	ldr r7, _08018D48 @ =gUnknown_2024A48
	ldr r0, [r7]
	ldr r4, _08018D4C @ =0x00000B6C
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_080185B8
	ldr r1, [r7]
	adds r1, r1, r4
	b _08018DE2
	.align 2, 0
_08018D48: .4byte gUnknown_2024A48
_08018D4C: .4byte 0x00000B6C
_08018D50:
	ldr r1, _08018E68 @ =gUnknown_2024A48
	ldr r0, [r1]
	movs r2, #0xb7
	lsls r2, r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #1
	mov ip, r0
	movs r7, #0
	str r7, [sp, #4]
	mov r0, sb
	cmp r0, #0
	beq _08018D6E
	movs r1, #0x32
	str r1, [sp, #4]
_08018D6E:
	movs r2, #1
	add sb, r2
	adds r4, r6, #4
	movs r5, #0x27
_08018D76:
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _08018DB2
	ldrb r0, [r4, #1]
	add r0, ip
	strb r0, [r4, #1]
	ldr r7, _08018E68 @ =gUnknown_2024A48
	ldr r3, [r7]
	ldr r0, [sp, #4]
	lsls r2, r0, #5
	adds r0, r3, #0
	adds r0, #0x10
	adds r0, r0, r2
	str r4, [r0]
	adds r0, r3, #0
	adds r0, #0xc
	adds r0, r0, r2
	movs r7, #0xb5
	lsls r7, r7, #3
	adds r1, r6, r7
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #8
	adds r0, r0, r2
	adds r7, #0x40
	adds r1, r6, r7
	str r1, [r0]
	adds r2, r3, r2
	ldrb r0, [r4]
	strb r0, [r2, #0x15]
_08018DB2:
	adds r4, #0x10
	subs r5, #1
	ldr r0, [sp, #4]
	adds r0, #1
	str r0, [sp, #4]
	cmp r5, #0
	bge _08018D76
	movs r1, #0xb5
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r2, _08018E68 @ =gUnknown_2024A48
	ldr r1, [r2]
	movs r7, #0xb7
	lsls r7, r7, #4
	adds r1, r1, r7
	ldr r1, [r1]
	lsls r1, r1, #1
	movs r2, #0
	movs r3, #0x40
	bl sub_08000920
	ldr r0, _08018E68 @ =gUnknown_2024A48
	ldr r1, [r0]
	adds r1, r1, r7
_08018DE2:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08018DE8:
	ldr r1, [sp]
	ldr r2, _08018E6C @ =0x0000081C
	add r8, r2
	add sl, r2
	cmp r1, #4
	bgt _08018DF6
	b _08018CB8
_08018DF6:
	ldr r7, _08018E68 @ =gUnknown_2024A48
	ldr r0, [r7]
	ldr r1, _08018E70 @ =0x00000B74
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08018E36
	ldr r4, _08018E74 @ =gUnknown_85F699C
	adds r0, r4, #0
	movs r1, #0x24
	bl sub_08005340
	adds r5, r0, #0
	adds r0, #0x10
	bl sub_080055B0
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #0x24
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_0800532C
	adds r0, r6, #0
	bl sub_0801887C
	ldr r1, [r7]
	ldr r2, _08018E70 @ =0x00000B74
	adds r1, r1, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
_08018E36:
	ldr r0, [r7]
	adds r0, #4
	bl sub_08018694
	bl sub_08018AC0
	movs r0, #0
	bl sub_08004244
	ldr r0, [r7]
	ldr r7, _08018E78 @ =0x00000FAC
	adds r1, r0, r7
	ldr r0, [r1]
	cmp r0, #0
	bne _08018E58
	movs r0, #1
	str r0, [r1]
_08018E58:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018E68: .4byte gUnknown_2024A48
_08018E6C: .4byte 0x0000081C
_08018E70: .4byte 0x00000B74
_08018E74: .4byte gUnknown_85F699C
_08018E78: .4byte 0x00000FAC
	thumb_func_end sub_08018C90

	thumb_func_start sub_08018E7C
sub_08018E7C: @ 0x08018E7C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r6, _08018F54 @ =gUnknown_2024A48
	ldr r0, _08018F58 @ =0x00001FA8
	bl sub_080055B0
	adds r1, r0, #0
	str r1, [r6]
	add r2, sp, #8
	movs r0, #0
	strh r0, [r2]
	ldr r2, _08018F5C @ =0x010007EA
	add r0, sp, #8
	bl CpuSet
	movs r5, #0
	str r5, [sp, #0xc]
	add r0, sp, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _08018F60 @ =0x01006000
	bl CpuFastSet
	bl sub_080009FC
	ldr r0, _08018F64 @ =gUnknown_85EE920
	bl sub_080029C8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08008FF4
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl sub_08008FF4
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_08008FF4
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl sub_08008FF4
	movs r0, #1
	bl sub_080054E8
	adds r0, r4, #0
	bl sub_08018C90
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08018F68 @ =gUnknown_86FAF6E
	movs r0, #1
	movs r1, #0
	bl sub_080045CC
	movs r0, #0x14
	str r0, [sp]
	ldr r0, _08018F6C @ =gUnknown_86FAABE
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0x1e
	bl sub_08002D6C
	ldr r0, _08018F70 @ =gUnknown_86FAA1C
	movs r1, #8
	movs r2, #0
	movs r3, #0xa0
	bl LoadPalette
	ldr r3, _08018F74 @ =gUnknown_86FCF90
	movs r0, #2
	movs r1, #0
	movs r2, #0x50
	bl sub_080045CC
	ldr r0, _08018F78 @ =gUnknown_86FCF70
	movs r1, #0xf
	movs r2, #0
	movs r3, #0x20
	bl LoadPalette
	ldr r1, [r6]
	movs r0, #0xfb
	lsls r0, r0, #4
	adds r2, r1, r0
	movs r0, #1
	str r0, [r2]
	movs r0, #0xfc
	lsls r0, r0, #4
	adds r2, r1, r0
	ldr r0, _08018F7C @ =0x0001869F
	str r0, [r2]
	ldr r0, _08018F80 @ =0x00000FC8
	adds r1, r1, r0
	str r5, [r1]
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018F54: .4byte gUnknown_2024A48
_08018F58: .4byte 0x00001FA8
_08018F5C: .4byte 0x010007EA
_08018F60: .4byte 0x01006000
_08018F64: .4byte gUnknown_85EE920
_08018F68: .4byte gUnknown_86FAF6E
_08018F6C: .4byte gUnknown_86FAABE
_08018F70: .4byte gUnknown_86FAA1C
_08018F74: .4byte gUnknown_86FCF90
_08018F78: .4byte gUnknown_86FCF70
_08018F7C: .4byte 0x0001869F
_08018F80: .4byte 0x00000FC8
	thumb_func_end sub_08018E7C

	thumb_func_start sub_08018F84
sub_08018F84: @ 0x08018F84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	add r7, sp, #8
	bl sub_0804441C
	str r0, [r7, #0x3c]
	ldr r0, _0801901C @ =gUnknown_2024A48
	ldr r0, [r0]
	str r0, [r7, #0x30]
	ldr r1, _08019020 @ =0x00000E7C
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08018FAA
	b _08019158
_08018FAA:
	bl sub_08005DE0
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _08018FB8
	b _08019158
_08018FB8:
	movs r2, #0
	ldr r3, [r7, #0x30]
	ldr r1, _08019024 @ =0x00000BA8
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08018FD6
	adds r1, r3, r1
_08018FC8:
	adds r1, #0x2c
	adds r2, #1
	cmp r2, #0xf
	bgt _08018FD6
	ldr r0, [r1]
	cmp r0, #0
	bne _08018FC8
_08018FD6:
	cmp r2, #0x10
	bne _08018FDC
	b _08019158
_08018FDC:
	ldr r3, [r7, #0x30]
	ldr r0, _08019028 @ =0x00000B78
	adds r1, r3, r0
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	movs r0, #0x2c
	muls r0, r2, r0
	ldr r1, _08019024 @ =0x00000BA8
	adds r0, r0, r1
	adds r0, r3, r0
	str r0, [r7, #0x34]
	movs r0, #0x38
	bl sub_080046D4
	str r0, [r7, #0x38]
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r3, [r7, #0x3c]
	ldr r0, [r3, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _0801902C @ =sub_08019030
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08019032
	.align 2, 0
_0801901C: .4byte gUnknown_2024A48
_08019020: .4byte 0x00000E7C
_08019024: .4byte 0x00000BA8
_08019028: .4byte 0x00000B78
_0801902C: .4byte _08019030
_08019030: @ 0x08019030
	b _08019112
_08019032:
	str r7, [r2]
	ldr r2, _080190D0 @ =gUnknown_86FED10
	movs r0, #8
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	ldr r0, [r7, #0x38]
	movs r1, #1
	movs r3, #8
	bl sub_08002504
	str r0, [r7, #0x40]
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r2, [r7, #0x40]
	ldr r1, [r2, #0x30]
	movs r3, #8
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r3, [r1, #0xc]
	movs r1, #0
	movs r2, #0x20
	bl _call_via_r3
	ldr r0, [r7, #0x40]
	movs r1, #1
	bl sub_08001798
	ldr r0, [r7, #0x40]
	bl sub_0800293C
	movs r1, #0x80
	lsls r1, r1, #4
	ldr r0, [r7, #0x40]
	bl sub_080027DC
	ldr r0, [r7, #0x40]
	bl sub_080023D8
	ldr r0, [r7, #0x40]
	bl sub_08002428
	ldr r0, [r7, #0x40]
	ldr r1, [r7, #0x34]
	str r0, [r1]
	ldr r3, [r7, #0x30]
	ldr r0, _080190D4 @ =0x00000E6A
	adds r2, r3, r0
	ldr r1, _080190D8 @ =0x00000E78
	adds r0, r3, r1
	ldr r0, [r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldrh r2, [r2]
	adds r0, r2, r0
	ldr r2, [r7, #0x34]
	strh r0, [r2, #0x1e]
	ldr r1, _080190DC @ =0x00000E6E
	adds r0, r3, r1
	ldrh r0, [r0]
	subs r0, #2
	strh r0, [r2, #0x22]
	ldr r2, _080190E0 @ =0x00000E74
	adds r0, r3, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _080190EC
	bl sub_08005390
	movs r1, #0x80
	ands r1, r0
	cmp r1, #0
	beq _080190E4
	movs r0, #0xe0
	b _080190FA
	.align 2, 0
_080190D0: .4byte gUnknown_86FED10
_080190D4: .4byte 0x00000E6A
_080190D8: .4byte 0x00000E78
_080190DC: .4byte 0x00000E6E
_080190E0: .4byte 0x00000E74
_080190E4:
	movs r0, #0xa0
	ldr r1, [r7, #0x34]
	str r0, [r1, #0x10]
	b _080190FE
_080190EC:
	cmp r0, #1
	bne _080190F8
	movs r0, #0xe0
	ldr r2, [r7, #0x34]
	str r0, [r2, #0x10]
	b _080190FE
_080190F8:
	movs r0, #0xa0
_080190FA:
	ldr r3, [r7, #0x34]
	str r0, [r3, #0x10]
_080190FE:
	movs r0, #0xc0
	lsls r0, r0, #9
	ldr r1, [r7, #0x34]
	str r0, [r1, #0x18]
	movs r0, #2
	str r0, [r1, #8]
	movs r0, #0
	str r0, [r1, #4]
	str r0, [r1, #0xc]
	b _08019158
_08019112:
	ldr r2, [r7, #0x3c]
	adds r2, #4
	ldr r3, [r7, #0x3c]
	ldr r0, [r3, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08019130 @ =sub_08019134
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08019136
	.align 2, 0
_08019130: .4byte _08019134
_08019134: @ 0x08019134
	b _08019154
_08019136:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	movs r0, #1
	cmp r0, #0
	beq _08019148
	ldr r0, [r7, #0x38]
	bl sub_080046C0
_08019148:
	ldr r1, [r7, #0x3c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08019154:
	bl sub_080443CC
_08019158:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08018F84

	thumb_func_start sub_08019168
sub_08019168: @ 0x08019168
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	movs r0, #0
	bl sub_0800425C
	mov ip, r0
	movs r2, #0
	movs r3, #0
	cmp r3, r5
	bge _080191B8
	ldr r6, _08019250 @ =0x000003FF
_08019188:
	adds r0, r4, #0
	cmp r4, #0
	bge _08019190
	adds r0, r4, #7
_08019190:
	asrs r0, r0, #3
	adds r1, r7, r2
	cmp r1, #0
	bge _0801919A
	adds r1, #7
_0801919A:
	asrs r1, r1, #3
	lsls r0, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, ip
	adds r1, r6, #0
	ldrh r0, [r0]
	ands r1, r0
	orrs r3, r1
	adds r0, r2, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	blt _08019188
_080191B8:
	movs r2, #0
	adds r6, r4, #3
	adds r0, r7, r5
	mov sb, r0
	cmp r2, r5
	bge _080191FA
	ldr r1, _08019250 @ =0x000003FF
	mov r8, r1
_080191C8:
	adds r0, r6, #0
	cmp r6, #0
	bge _080191D2
	adds r0, r4, #0
	adds r0, #0xa
_080191D2:
	asrs r0, r0, #3
	adds r1, r7, r2
	cmp r1, #0
	bge _080191DC
	adds r1, #7
_080191DC:
	asrs r1, r1, #3
	lsls r0, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, ip
	mov r1, r8
	ldrh r0, [r0]
	ands r1, r0
	orrs r3, r1
	adds r0, r2, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	blt _080191C8
_080191FA:
	adds r0, r4, #0
	cmp r4, #0
	bge _08019202
	adds r0, r4, #7
_08019202:
	asrs r0, r0, #3
	mov r1, sb
	adds r2, r1, #0
	cmp r1, #0
	bge _0801920E
	adds r2, r1, #7
_0801920E:
	asrs r2, r2, #3
	lsls r0, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	ldr r5, _08019250 @ =0x000003FF
	adds r1, r5, #0
	ldrh r0, [r0]
	ands r1, r0
	orrs r3, r1
	adds r0, r6, #0
	cmp r0, #0
	bge _0801922C
	adds r0, r4, #0
	adds r0, #0xa
_0801922C:
	asrs r0, r0, #3
	mov r1, sb
	lsls r0, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	adds r1, r5, #0
	ldrh r0, [r0]
	ands r1, r0
	orrs r3, r1
	adds r0, r3, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08019250: .4byte 0x000003FF
	thumb_func_end sub_08019168

	thumb_func_start sub_08019254
sub_08019254: @ 0x08019254
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	bl sub_08005DD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r3, r0, #0
	movs r1, #0
	ldr r0, _080192E8 @ =0x00000E68
	adds r7, r5, r0
	ldr r6, [r7]
	ldr r4, _080192EC @ =0x00000E74
	adds r2, r5, r4
	str r1, [r2]
	movs r0, #0x10
	mov r8, r0
	adds r0, r3, #0
	mov r4, r8
	ands r0, r4
	cmp r0, #0
	beq _08019296
	ldr r1, _080192F0 @ =0x00000E98
	adds r0, r5, r1
	ldr r0, [r0]
	adds r6, r6, r0
	ldr r4, _080192F4 @ =0x00000E78
	adds r0, r5, r4
	ldrh r0, [r0]
	lsls r1, r0, #0x10
	movs r0, #1
	str r0, [r2]
_08019296:
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _080192AA
	ldr r3, _080192F0 @ =0x00000E98
	adds r0, r5, r3
	ldr r0, [r0]
	subs r6, r6, r0
	movs r0, #2
	str r0, [r2]
_080192AA:
	asrs r0, r6, #0x10
	asrs r1, r1, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	movs r0, #0
	bl sub_0800425C
	adds r2, r0, #0
	adds r0, r4, #0
	cmp r4, #0
	bge _080192C4
	adds r0, r4, #7
_080192C4:
	asrs r0, r0, #3
	mov r3, r8
	lsls r1, r3, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldr r1, _080192F8 @ =0x000003FF
	ldrh r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _080192FC
	cmp r4, #0x18
	ble _080192FC
	cmp r4, #0xd7
	bgt _080192FC
	str r6, [r7]
	b _08019304
	.align 2, 0
_080192E8: .4byte 0x00000E68
_080192EC: .4byte 0x00000E74
_080192F0: .4byte 0x00000E98
_080192F4: .4byte 0x00000E78
_080192F8: .4byte 0x000003FF
_080192FC:
	ldr r4, _0801932C @ =0x00000E74
	adds r1, r5, r4
	movs r0, #0
	str r0, [r1]
_08019304:
	ldr r1, _08019330 @ =0x00000B5C
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r4, _08019334 @ =0x00000E6A
	adds r1, r5, r4
	movs r3, #0
	ldrsh r1, [r1, r3]
	ldr r3, [r2, #0xc]
	movs r2, #0x84
	bl _call_via_r3
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801932C: .4byte 0x00000E74
_08019330: .4byte 0x00000B5C
_08019334: .4byte 0x00000E6A
	thumb_func_end sub_08019254

	thumb_func_start sub_08019338
sub_08019338: @ 0x08019338
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	bl sub_08005DD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, r0, #0
	movs r7, #0
	ldr r0, _080193F0 @ =0x00000E74
	adds r3, r5, r0
	str r7, [r3]
	movs r1, #0x10
	mov sb, r1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08019376
	movs r0, #0xe9
	lsls r0, r0, #4
	adds r2, r5, r0
	adds r0, #8
	adds r1, r5, r0
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	movs r0, #1
	str r0, [r3]
_08019376:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _08019394
	movs r1, #0xe9
	lsls r1, r1, #4
	adds r2, r5, r1
	ldr r0, _080193F4 @ =0x00000E98
	adds r1, r5, r0
	ldr r0, [r2]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r2]
	movs r0, #2
	str r0, [r3]
_08019394:
	movs r1, #0xe9
	lsls r1, r1, #4
	adds r1, r1, r5
	mov r8, r1
	ldr r1, [r1]
	cmp r1, #0
	ble _080193AA
	ldr r2, _080193F8 @ =0x00000E78
	adds r0, r5, r2
	ldrh r0, [r0]
	lsls r7, r0, #0x10
_080193AA:
	ldr r3, _080193FC @ =0x00000E68
	adds r6, r5, r3
	ldr r0, [r6]
	adds r0, r0, r1
	adds r0, r0, r7
	asrs r4, r0, #0x10
	movs r0, #0
	bl sub_0800425C
	adds r2, r0, #0
	adds r0, r4, #0
	cmp r4, #0
	bge _080193C6
	adds r0, r4, #7
_080193C6:
	asrs r0, r0, #3
	mov r3, sb
	lsls r1, r3, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldr r1, _08019400 @ =0x000003FF
	ldrh r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08019404
	cmp r4, #0x18
	ble _08019404
	cmp r4, #0xd7
	bgt _08019404
	ldr r0, [r6]
	mov r2, r8
	ldr r1, [r2]
	adds r0, r0, r1
	str r0, [r6]
	b _08019414
	.align 2, 0
_080193F0: .4byte 0x00000E74
_080193F4: .4byte 0x00000E98
_080193F8: .4byte 0x00000E78
_080193FC: .4byte 0x00000E68
_08019400: .4byte 0x000003FF
_08019404:
	ldr r3, _08019440 @ =0x00000E74
	adds r0, r5, r3
	movs r1, #0
	str r1, [r0]
	movs r2, #0xe9
	lsls r2, r2, #4
	adds r0, r5, r2
	str r1, [r0]
_08019414:
	ldr r3, _08019444 @ =0x00000B5C
	adds r0, r5, r3
	ldr r0, [r0]
	ldr r2, [r0, #0x30]
	movs r3, #8
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r3, _08019448 @ =0x00000E6A
	adds r1, r5, r3
	movs r3, #0
	ldrsh r1, [r1, r3]
	ldr r3, [r2, #0xc]
	movs r2, #0x84
	bl _call_via_r3
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019440: .4byte 0x00000E74
_08019444: .4byte 0x00000B5C
_08019448: .4byte 0x00000E6A
	thumb_func_end sub_08019338

	thumb_func_start sub_0801944C
sub_0801944C: @ 0x0801944C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	bl sub_08005DD0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, r2, #0
	movs r0, #0
	mov ip, r0
	ldr r1, _08019510 @ =0x00000E68
	adds r1, r1, r4
	mov sb, r1
	ldr r6, [r1]
	ldr r5, _08019514 @ =0x00000E6C
	adds r5, r5, r4
	mov r8, r5
	ldr r5, [r5]
	ldr r7, _08019518 @ =0x00000E74
	adds r1, r4, r7
	str r0, [r1]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08019498
	adds r7, #0x24
	adds r0, r4, r7
	ldr r0, [r0]
	adds r6, r6, r0
	subs r7, #0x20
	adds r0, r4, r7
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	mov ip, r0
	movs r0, #1
	str r0, [r1]
_08019498:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080194AC
	ldr r7, _0801951C @ =0x00000E98
	adds r0, r4, r7
	ldr r0, [r0]
	subs r6, r6, r0
	movs r0, #2
	str r0, [r1]
_080194AC:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _080194BC
	ldr r1, _08019520 @ =0x00000E9C
	adds r0, r4, r1
	ldr r0, [r0]
	subs r5, r5, r0
_080194BC:
	movs r0, #0x80
	ands r3, r0
	cmp r3, #0
	beq _080194CC
	ldr r2, _08019520 @ =0x00000E9C
	adds r0, r4, r2
	ldr r0, [r0]
	adds r5, r5, r0
_080194CC:
	asrs r3, r6, #0x10
	mov r7, ip
	asrs r0, r7, #0x10
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r1, r5, #0x10
	adds r0, r1, #0
	subs r0, #0x65
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _08019528
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _08019528
	cmp r0, #0xd7
	bgt _08019528
	adds r0, r3, #0
	ldr r3, _08019524 @ =0x00000E78
	adds r2, r4, r3
	ldr r2, [r2]
	subs r2, #1
	bl sub_08019168
	cmp r0, #0
	bne _08019528
	mov r7, sb
	str r6, [r7]
	mov r0, r8
	str r5, [r0]
	b _08019530
	.align 2, 0
_08019510: .4byte 0x00000E68
_08019514: .4byte 0x00000E6C
_08019518: .4byte 0x00000E74
_0801951C: .4byte 0x00000E98
_08019520: .4byte 0x00000E9C
_08019524: .4byte 0x00000E78
_08019528:
	ldr r2, _08019560 @ =0x00000E74
	adds r1, r4, r2
	movs r0, #0
	str r0, [r1]
_08019530:
	ldr r3, _08019564 @ =0x00000B5C
	adds r0, r4, r3
	ldr r0, [r0]
	ldr r3, [r0, #0x30]
	movs r5, #8
	ldrsh r1, [r3, r5]
	adds r0, r0, r1
	ldr r7, _08019568 @ =0x00000E6A
	adds r1, r4, r7
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r5, _0801956C @ =0x00000E6E
	adds r2, r4, r5
	movs r7, #0
	ldrsh r2, [r2, r7]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019560: .4byte 0x00000E74
_08019564: .4byte 0x00000B5C
_08019568: .4byte 0x00000E6A
_0801956C: .4byte 0x00000E6E
	thumb_func_end sub_0801944C

	thumb_func_start sub_08019570
sub_08019570: @ 0x08019570
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	mov sl, r1
	mov r8, r2
	ldr r0, _080195F4 @ =gUnknown_2024A48
	mov sb, r0
	lsls r0, r7, #5
	adds r0, #4
	mov r2, sb
	ldr r1, [r2]
	adds r1, r1, r0
	ldrh r5, [r1, #0x1a]
	ldrh r4, [r1, #0x1e]
	adds r6, r4, #0
	movs r2, #0x14
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _080195FC
	subs r6, r5, #4
	movs r0, #0
	bl sub_0800425C
	adds r2, r0, #0
	adds r1, r4, #0
	asrs r1, r1, #3
	adds r0, r6, #0
	cmp r0, #0
	bge _080195B2
	adds r0, r5, #3
_080195B2:
	asrs r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldr r0, _080195F8 @ =0x000003FF
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0801962A
	cmp r5, #0x17
	bls _0801962A
	mov r2, sl
	cmp r2, r7
	bge _0801965A
	mov r0, sb
	ldr r1, [r0]
	lsls r0, r2, #5
	adds r0, #4
	adds r1, r0, r1
_080195DA:
	ldr r0, [r1]
	cmp r0, #0
	beq _080195E8
	ldrh r0, [r1, #0x1a]
	adds r0, #0x14
	cmp r5, r0
	blt _0801962A
_080195E8:
	adds r1, #0x20
	adds r2, #1
	cmp r2, r7
	blt _080195DA
	b _0801965A
	.align 2, 0
_080195F4: .4byte gUnknown_2024A48
_080195F8: .4byte 0x000003FF
_080195FC:
	adds r4, r5, #0
	adds r4, #0x14
	movs r0, #0
	bl sub_0800425C
	adds r2, r0, #0
	adds r1, r6, #0
	asrs r1, r1, #3
	adds r0, r4, #0
	asrs r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldr r0, _08019630 @ =0x000003FF
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0801962A
	adds r0, r5, #0
	adds r0, #0x10
	cmp r0, #0xd8
	ble _08019634
_0801962A:
	movs r0, #0
	b _0801965C
	.align 2, 0
_08019630: .4byte 0x000003FF
_08019634:
	adds r2, r7, #1
	cmp r2, r8
	bge _0801965A
	mov r0, sb
	ldr r1, [r0]
	lsls r0, r2, #5
	adds r0, #4
	adds r1, r0, r1
_08019644:
	ldr r0, [r1]
	cmp r0, #0
	beq _08019652
	ldrh r0, [r1, #0x1a]
	subs r0, #0x14
	cmp r5, r0
	bgt _0801962A
_08019652:
	adds r1, #0x20
	adds r2, #1
	cmp r2, r8
	blt _08019644
_0801965A:
	movs r0, #1
_0801965C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08019570

	thumb_func_start sub_0801966C
sub_0801966C: @ 0x0801966C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	str r1, [sp]
	adds r7, r2, #0
	lsls r1, r0, #5
	adds r1, #4
	ldr r2, _080196E0 @ =gUnknown_2024A48
	ldr r0, [r2]
	adds r0, r0, r1
	ldrh r5, [r0, #0x1a]
	ldrh r4, [r0, #0x1e]
	mov sl, r4
	movs r0, #0
	bl sub_0800425C
	adds r2, r0, #0
	adds r1, r4, #0
	asrs r0, r1, #3
	adds r1, r5, #0
	asrs r1, r1, #3
	lsls r6, r0, #5
	adds r1, r6, r1
	lsls r1, r1, #1
	adds r1, r1, r2
	ldr r0, _080196E4 @ =0x000003FF
	mov sb, r0
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _080196DA
	adds r4, r5, #0
	adds r4, #0x10
	movs r0, #0
	bl sub_0800425C
	adds r1, r0, #0
	adds r0, r4, #0
	asrs r0, r0, #3
	adds r0, r6, r0
	lsls r0, r0, #1
	adds r0, r0, r1
	mov r1, sb
	ldrh r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _080196DA
	cmp r5, #0x17
	bls _080196DA
	cmp r4, #0xd8
	ble _080196E8
_080196DA:
	movs r0, #1
	b _0801971C
	.align 2, 0
_080196E0: .4byte gUnknown_2024A48
_080196E4: .4byte 0x000003FF
_080196E8:
	ldr r1, [sp]
	cmp r1, r7
	bge _0801971A
	ldr r4, _0801972C @ =gUnknown_2024A48
	lsls r0, r1, #5
	adds r3, r0, #4
_080196F4:
	cmp r1, r8
	beq _08019712
	ldr r0, [r4]
	adds r2, r0, r3
	ldr r0, [r2]
	cmp r0, #0
	beq _08019712
	ldrh r2, [r2, #0x1a]
	adds r0, r2, #0
	subs r0, #0x10
	cmp r5, r0
	ble _08019712
	adds r0, #0x20
	cmp r5, r0
	blt _080196DA
_08019712:
	adds r3, #0x20
	adds r1, #1
	cmp r1, r7
	blt _080196F4
_0801971A:
	movs r0, #0
_0801971C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801972C: .4byte gUnknown_2024A48
	thumb_func_end sub_0801966C

	thumb_func_start sub_08019730
sub_08019730: @ 0x08019730
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _0801976C @ =gUnknown_2024A48
	ldr r6, [r0]
	ldr r0, _08019770 @ =0x00000FCC
	adds r1, r6, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _080197A4
	subs r0, #1
	str r0, [r1]
	movs r1, #0xf
	bl Mod
	cmp r0, #0
	bne _08019788
	movs r1, #0xfd
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08019774
	movs r0, #2
	bl sub_08004274
	b _0801977A
	.align 2, 0
_0801976C: .4byte gUnknown_2024A48
_08019770: .4byte 0x00000FCC
_08019774:
	movs r0, #2
	bl sub_080042A0
_0801977A:
	movs r2, #0xfd
	lsls r2, r2, #4
	adds r0, r6, r2
	ldr r1, [r0]
	movs r2, #1
	eors r1, r2
	str r1, [r0]
_08019788:
	ldr r3, _08019840 @ =0x00000FCC
	adds r0, r6, r3
	ldr r1, [r0]
	cmp r1, #0
	bne _080197A4
	movs r0, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0x1e
	bl sub_08002F74
_080197A4:
	ldr r5, _08019844 @ =0x00000FA6
	adds r1, r6, r5
	ldrh r0, [r1]
	cmp r0, #0
	beq _080197C6
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080197C6
	ldr r1, _08019848 @ =0x00000FA4
	adds r0, r6, r1
	movs r1, #0
	movs r2, #0
	movs r3, #2
	bl LoadPalette
_080197C6:
	ldr r2, _0801984C @ =0x00000EA8
	adds r5, r6, r2
	movs r7, #0
	movs r3, #0x1f
	mov r8, r3
_080197D0:
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _0801986A
	subs r0, #1
	strh r0, [r5, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801986A
	movs r0, #0
	bl sub_0800425C
	ldr r2, _08019850 @ =0x00000EA4
	adds r1, r6, r2
	adds r1, r1, r7
	ldr r2, [r1]
	subs r2, r2, r0
	lsrs r0, r2, #1
	movs r1, #0x1f
	ands r0, r1
	lsls r4, r0, #3
	lsrs r2, r2, #6
	lsls r2, r2, #3
	movs r3, #8
	adds r3, r3, r4
	mov sb, r3
	ldr r1, _08019854 @ =0x00000E6A
	adds r0, r6, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	cmp sb, r3
	blt _08019830
	ldr r1, _08019858 @ =0x00000E78
	adds r0, r6, r1
	ldr r0, [r0]
	adds r0, r3, r0
	cmp r4, r0
	bgt _08019830
	adds r1, r2, #0
	adds r1, #8
	ldr r3, _0801985C @ =0x00000E6E
	adds r0, r6, r3
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	blt _08019830
	adds r0, #4
	cmp r2, r0
	ble _08019860
_08019830:
	ldr r1, _08019850 @ =0x00000EA4
	adds r0, r6, r1
	adds r0, r0, r7
	ldr r1, [r0]
	ldrh r0, [r5]
	strh r0, [r1]
	b _08019864
	.align 2, 0
_08019840: .4byte 0x00000FCC
_08019844: .4byte 0x00000FA6
_08019848: .4byte 0x00000FA4
_0801984C: .4byte 0x00000EA8
_08019850: .4byte 0x00000EA4
_08019854: .4byte 0x00000E6A
_08019858: .4byte 0x00000E78
_0801985C: .4byte 0x00000E6E
_08019860:
	movs r0, #2
	strh r0, [r5, #2]
_08019864:
	movs r0, #0
	bl sub_08004244
_0801986A:
	adds r5, #8
	adds r7, #8
	movs r2, #1
	negs r2, r2
	add r8, r2
	mov r3, r8
	cmp r3, #0
	bge _080197D0
	ldr r5, _080198AC @ =0x00000E84
	adds r0, r6, r5
	ldr r0, [r0]
	cmp r0, #0
	beq _080198CA
	ldr r0, _080198B0 @ =0x00000E88
	adds r1, r6, r0
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bne _080198CA
	ldr r1, _080198B4 @ =0x00000B5C
	adds r4, r6, r1
	ldr r0, [r4]
	bl sub_080023B8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080198B8
	ldr r0, [r4]
	bl sub_080023C4
	b _080198BE
	.align 2, 0
_080198AC: .4byte 0x00000E84
_080198B0: .4byte 0x00000E88
_080198B4: .4byte 0x00000B5C
_080198B8:
	ldr r0, [r4]
	bl sub_080023D8
_080198BE:
	ldr r2, _08019914 @ =0x00000E88
	adds r0, r6, r2
	ldr r3, _08019918 @ =0x00000E84
	adds r1, r6, r3
	ldr r1, [r1]
	str r1, [r0]
_080198CA:
	ldr r0, _0801991C @ =gUnknown_2024A48
	ldr r0, [r0]
	adds r4, r0, #4
	movs r5, #0
	mov sb, r5
_080198D4:
	movs r0, #0
	mov sl, r0
	movs r1, #0xa
	add r1, sb
	mov r8, r1
	mov r7, sb
_080198E0:
	ldr r2, [r4]
	cmp r2, #0
	beq _080199C8
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _0801996E
	ldrb r0, [r4, #0x12]
	subs r0, #1
	strb r0, [r4, #0x12]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801996E
	ldrb r0, [r1, #4]
	strb r0, [r4, #0x12]
	adds r0, r2, #0
	bl sub_080023B8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08019920
	ldr r0, [r4]
	bl sub_080023C4
	b _0801996E
	.align 2, 0
_08019914: .4byte 0x00000E88
_08019918: .4byte 0x00000E84
_0801991C: .4byte gUnknown_2024A48
_08019920:
	ldr r0, _0801995C @ =gUnknown_2024A48
	ldr r1, [r0]
	ldr r2, _08019960 @ =0x00000B9A
	adds r0, r1, r2
	movs r3, #0
	ldrsh r6, [r0, r3]
	ldr r5, _08019964 @ =0x00000B9E
	adds r1, r1, r5
	movs r0, #0
	ldrsh r5, [r1, r0]
	ldr r0, [r4]
	add r1, sp, #8
	add r2, sp, #0xc
	bl sub_080023E4
	ldr r0, [sp, #0xc]
	cmp r0, r5
	bge _08019968
	adds r0, #4
	cmp r0, r5
	ble _08019968
	ldr r0, [sp, #8]
	cmp r0, r6
	bge _08019968
	adds r0, #0x10
	cmp r0, r6
	ble _08019968
	movs r0, #1
	strb r0, [r4, #0x12]
	b _0801996E
	.align 2, 0
_0801995C: .4byte gUnknown_2024A48
_08019960: .4byte 0x00000B9A
_08019964: .4byte 0x00000B9E
_08019968:
	ldr r0, [r4]
	bl sub_080023D8
_0801996E:
	movs r1, #0x14
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080199C8
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _08019990
	adds r0, r7, #0
	mov r1, sb
	mov r2, r8
	bl sub_08019570
	strb r0, [r4, #0x10]
	ldrh r2, [r4, #0x14]
	rsbs r0, r2, #0
	strh r0, [r4, #0x14]
	b _080199C8
_08019990:
	adds r0, r7, #0
	mov r1, sb
	mov r2, r8
	bl sub_0801966C
	cmp r0, #0
	beq _080199A4
	ldrh r3, [r4, #0x14]
	rsbs r0, r3, #0
	strh r0, [r4, #0x14]
_080199A4:
	movs r5, #0x14
	ldrsh r1, [r4, r5]
	lsls r1, r1, #8
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, [r4]
	ldr r3, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	movs r5, #0x1a
	ldrsh r1, [r4, r5]
	movs r5, #0x1e
	ldrsh r2, [r4, r5]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
_080199C8:
	adds r7, #1
	movs r0, #1
	add sl, r0
	adds r4, #0x20
	mov r1, sl
	cmp r1, #9
	ble _080198E0
	mov sb, r8
	mov r2, sb
	cmp r2, #0x59
	bgt _080199E0
	b _080198D4
_080199E0:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08019730

	thumb_func_start sub_080199F0
sub_080199F0: @ 0x080199F0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	adds r4, r3, #0
	movs r1, #0xfc
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r1, [r6]
	ldr r0, [r0]
	subs r1, r1, r0
	cmp r1, #1
	bne _08019ABE
	ldr r1, _08019A70 @ =0x00000FC4
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, r8
	bne _08019ABE
	add r2, sp, #4
	mov r0, r8
	mov r1, sp
	bl sub_080023E4
	asrs r0, r4, #0x10
	ldr r1, [sp, #4]
	subs r0, r0, r1
	subs r0, #2
	cmp r0, #0
	blt _08019A7C
	ldr r0, _08019A74 @ =0x00000B8C
	adds r7, r6, r0
	ldr r5, [r7]
	cmp r5, #0x7f
	bgt _08019A66
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r0, r5, #0
	bl sub_08005ED4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_08005EE8
	adds r1, r0, #0
	lsls r4, r4, #0x10
	negs r4, r4
	asrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	str r0, [r7]
_08019A66:
	ldr r0, _08019A78 @ =0x00000B9C
	adds r1, r6, r0
	ldr r0, [sp, #4]
	adds r0, #4
	b _08019ABA
	.align 2, 0
_08019A70: .4byte 0x00000FC4
_08019A74: .4byte 0x00000B8C
_08019A78: .4byte 0x00000B9C
_08019A7C:
	ldr r1, _08019ADC @ =0x00000B8C
	adds r7, r6, r1
	ldr r5, [r7]
	cmp r5, #0x80
	ble _08019AB4
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r0, r5, #0
	bl sub_08005ED4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_08005EE8
	adds r1, r0, #0
	lsls r4, r4, #0x10
	negs r4, r4
	asrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	str r0, [r7]
_08019AB4:
	ldr r0, _08019AE0 @ =0x00000B9C
	adds r1, r6, r0
	ldr r0, [sp, #4]
_08019ABA:
	lsls r0, r0, #0x10
	str r0, [r1]
_08019ABE:
	movs r1, #0xfc
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r1, [r6]
	str r1, [r0]
	ldr r1, _08019AE4 @ =0x00000FC4
	adds r0, r6, r1
	mov r1, r8
	str r1, [r0]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019ADC: .4byte 0x00000B8C
_08019AE0: .4byte 0x00000B9C
_08019AE4: .4byte 0x00000FC4
	thumb_func_end sub_080199F0

	thumb_func_start sub_08019AE8
sub_08019AE8: @ 0x08019AE8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08019B2C @ =0x00000B8C
	adds r4, r5, r0
	ldrb r0, [r4]
	bl sub_08005ED4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrb r0, [r4]
	bl sub_08005EE8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r1, _08019B30 @ =0x00000E74
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #1
	bne _08019B4E
	lsls r0, r6, #0x10
	cmp r0, #0
	ble _08019B34
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _08019B20
	rsbs r0, r1, #0
_08019B20:
	cmp r0, #0x5a
	ble _08019B4E
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0xe
	b _08019B4C
	.align 2, 0
_08019B2C: .4byte 0x00000B8C
_08019B30: .4byte 0x00000E74
_08019B34:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r2, r1, #0
	cmp r1, #0
	bge _08019B40
	rsbs r2, r1, #0
_08019B40:
	ldr r0, _08019B78 @ =0x00000167
	cmp r2, r0
	bgt _08019B4E
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0xf
_08019B4C:
	lsrs r4, r0, #0x10
_08019B4E:
	ldr r1, _08019B7C @ =0x00000E74
	adds r0, r5, r1
	ldr r0, [r0]
	lsls r3, r6, #0x10
	cmp r0, #2
	bne _08019B9A
	cmp r3, #0
	bge _08019B80
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _08019B6A
	rsbs r0, r1, #0
_08019B6A:
	cmp r0, #0x5a
	ble _08019B9A
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0xe
	b _08019B98
	.align 2, 0
_08019B78: .4byte 0x00000167
_08019B7C: .4byte 0x00000E74
_08019B80:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r2, r1, #0
	cmp r1, #0
	bge _08019B8C
	rsbs r2, r1, #0
_08019B8C:
	ldr r0, _08019BE0 @ =0x00000167
	cmp r2, r0
	bgt _08019B9A
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0xf
_08019B98:
	lsrs r4, r0, #0x10
_08019B9A:
	ldr r1, _08019BE4 @ =0x00000E74
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _08019C0C
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	adds r3, r2, #0
	cmp r2, #0
	bge _08019BB0
	rsbs r3, r2, #0
_08019BB0:
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _08019BBC
	rsbs r0, r1, #0
_08019BBC:
	cmp r3, r0
	beq _08019BF0
	adds r3, r2, #0
	cmp r2, #0
	bge _08019BC8
	rsbs r3, r2, #0
_08019BC8:
	adds r0, r1, #0
	cmp r1, #0
	bge _08019BD0
	rsbs r0, r1, #0
_08019BD0:
	cmp r3, r0
	ble _08019BE8
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0xf
	lsrs r4, r0, #0x10
	b _08019BF0
	.align 2, 0
_08019BE0: .4byte 0x00000167
_08019BE4: .4byte 0x00000E74
_08019BE8:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #0xf
	lsrs r6, r0, #0x10
_08019BF0:
	bl sub_08005390
	ldr r1, _08019C4C @ =0x000007CF
	lsls r3, r6, #0x10
	cmp r0, r1
	bgt _08019C0C
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	lsls r0, r0, #0xb
	lsrs r4, r0, #0x10
_08019C0C:
	asrs r0, r3, #0x10
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x18
	adds r0, r5, #0
	bl sub_08005ED4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_08005EE8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	negs r1, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08019C4C: .4byte 0x000007CF
	thumb_func_end sub_08019AE8

	thumb_func_start sub_08019C50
sub_08019C50: @ 0x08019C50
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov ip, r1
	lsrs r7, r1, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _08019CF8 @ =0x00000E6A
	adds r0, r4, r1
	ldrh r3, [r0]
	ldr r6, _08019CFC @ =0x00000E6E
	adds r0, r4, r6
	ldrh r5, [r0]
	subs r0, r3, #2
	lsls r1, r7, #0x10
	mov r8, r1
	asrs r1, r1, #0x10
	cmp r0, r1
	bge _08019D5C
	adds r6, #0xa
	adds r0, r4, r6
	ldr r0, [r0]
	adds r0, r3, r0
	adds r0, #2
	cmp r0, r1
	ble _08019D5C
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r5, r2
	bge _08019D5C
	adds r0, r5, #5
	cmp r0, r2
	ble _08019D5C
	mov r0, r8
	lsrs r2, r0, #0x10
	ldr r1, _08019CF8 @ =0x00000E6A
	adds r0, r4, r1
	ldrh r0, [r0]
	adds r1, r0, #0
	cmp r2, r1
	blo _08019CD0
	ldr r3, _08019D00 @ =0x00000E78
	adds r0, r4, r3
	ldr r0, [r0]
	adds r0, r1, r0
	cmp r2, r0
	bgt _08019CD0
	subs r0, r2, r1
	asrs r1, r0, #3
	lsls r1, r1, #5
	movs r2, #7
	ands r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r6, _08019D04 @ =0x00000B64
	adds r0, r4, r6
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	negs r0, r0
	cmp r0, #0
	bge _08019D5C
_08019CD0:
	ldr r1, _08019D08 @ =0x00000B98
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #1
	cmp ip, r0
	bge _08019CDE
	ldr r1, _08019D0C @ =0x0000FFFF
_08019CDE:
	cmp r1, #1
	bne _08019D10
	ldr r2, _08019CF8 @ =0x00000E6A
	adds r0, r4, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r1, #2
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	ble _08019D48
	b _08019D2A
	.align 2, 0
_08019CF8: .4byte 0x00000E6A
_08019CFC: .4byte 0x00000E6E
_08019D00: .4byte 0x00000E78
_08019D04: .4byte 0x00000B64
_08019D08: .4byte 0x00000B98
_08019D0C: .4byte 0x0000FFFF
_08019D10:
	ldr r1, _08019D3C @ =0x00000E6A
	adds r0, r4, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, _08019D40 @ =0x00000E78
	adds r0, r4, r3
	ldr r0, [r0]
	adds r1, r1, r0
	subs r1, #2
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08019D48
_08019D2A:
	ldr r6, _08019D44 @ =0x00000B8C
	adds r0, r4, r6
	ldr r1, [r0]
	adds r1, #0x80
	movs r2, #0xff
	ands r1, r2
	str r1, [r0]
	movs r0, #1
	b _08019D5E
	.align 2, 0
_08019D3C: .4byte 0x00000E6A
_08019D40: .4byte 0x00000E78
_08019D44: .4byte 0x00000B8C
_08019D48:
	adds r0, r4, #0
	bl sub_08019AE8
	ldr r2, _08019D58 @ =0x00000B8C
	adds r1, r4, r2
	str r0, [r1]
	movs r0, #1
	b _08019D5E
	.align 2, 0
_08019D58: .4byte 0x00000B8C
_08019D5C:
	movs r0, #0
_08019D5E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08019C50

	thumb_func_start sub_08019D68
sub_08019D68: @ 0x08019D68
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, [r7, #0xc]
	ldrb r0, [r0, #5]
	cmp r0, #2
	bne _08019D98
	ldr r0, _08019D94 @ =0x00000B94
	adds r1, r5, r0
	ldr r0, [r1]
	movs r2, #0xe0
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r1]
	movs r2, #0xb0
	lsls r2, r2, #0xa
	cmp r0, r2
	ble _08019DB4
	str r2, [r1]
	b _08019DB4
	.align 2, 0
_08019D94: .4byte 0x00000B94
_08019D98:
	cmp r0, #1
	bne _08019DB4
	ldr r0, _08019DEC @ =0x00000B94
	adds r2, r5, r0
	ldr r0, [r2]
	ldr r1, _08019DF0 @ =0xFFFF9000
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _08019DF4 @ =0x0000FFFF
	cmp r0, r1
	bgt _08019DB4
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r2]
_08019DB4:
	ldr r0, [r7, #0xc]
	ldrb r6, [r0, #6]
	cmp r6, #1
	bne _08019E04
	movs r2, #0xb6
	lsls r2, r2, #4
	adds r4, r5, r2
	ldr r0, [r4]
	ldr r1, _08019DF8 @ =gUnknown_86FED30
	bl sub_08002350
	ldr r0, [r4]
	bl sub_08002428
	ldr r1, _08019DFC @ =0x00000B84
	adds r0, r5, r1
	str r6, [r0]
	movs r2, #0xb8
	lsls r2, r2, #4
	adds r1, r5, r2
	movs r0, #0xb4
	str r0, [r1]
	ldr r0, _08019E00 @ =0x00000B88
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	b _08019E32
	.align 2, 0
_08019DEC: .4byte 0x00000B94
_08019DF0: .4byte 0xFFFF9000
_08019DF4: .4byte 0x0000FFFF
_08019DF8: .4byte gUnknown_86FED30
_08019DFC: .4byte 0x00000B84
_08019E00: .4byte 0x00000B88
_08019E04:
	cmp r6, #2
	bne _08019E32
	movs r1, #0xb6
	lsls r1, r1, #4
	adds r4, r5, r1
	ldr r0, [r4]
	ldr r1, _08019EC4 @ =gUnknown_86FED10
	bl sub_08002350
	ldr r0, [r4]
	bl sub_08002428
	ldr r2, _08019EC8 @ =0x00000B84
	adds r0, r5, r2
	str r6, [r0]
	movs r1, #0xb8
	lsls r1, r1, #4
	adds r0, r5, r1
	movs r1, #0
	str r1, [r0]
	adds r2, #4
	adds r0, r5, r2
	str r1, [r0]
_08019E32:
	ldr r2, [r7, #0xc]
	ldrb r0, [r2, #7]
	cmp r0, #0
	beq _08019E4C
	movs r0, #0xb8
	lsls r0, r0, #4
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, _08019ECC @ =0x00000B88
	adds r1, r5, r0
	movs r0, #1
	str r0, [r1]
_08019E4C:
	ldrb r0, [r2, #8]
	cmp r0, #0
	beq _08019E9C
	movs r0, #0xfb
	lsls r0, r0, #4
	adds r1, r5, r0
	ldr r0, [r1]
	ldrb r2, [r2, #8]
	adds r0, r2, r0
	str r0, [r1]
	adds r0, r5, #0
	bl sub_0801A7E0
	movs r0, #0x14
	str r0, [sp]
	ldr r0, _08019ED0 @ =gUnknown_86FD970
	str r0, [sp, #4]
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0x1e
	bl sub_08002D6C
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_08008FF4
	ldr r2, _08019ED4 @ =0x00000FCC
	adds r1, r5, r2
	movs r0, #0x87
	str r0, [r1]
	movs r0, #0xfd
	lsls r0, r0, #4
	adds r1, r5, r0
	movs r0, #1
	str r0, [r1]
	movs r0, #2
	bl sub_080042A0
_08019E9C:
	ldr r1, _08019ECC @ =0x00000B88
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08019EBA
	movs r2, #0xb6
	lsls r2, r2, #4
	adds r4, r5, r2
	ldr r0, [r4]
	ldr r1, _08019ED8 @ =gUnknown_86FED50
	bl sub_08002350
	ldr r0, [r4]
	bl sub_08002428
_08019EBA:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019EC4: .4byte gUnknown_86FED10
_08019EC8: .4byte 0x00000B84
_08019ECC: .4byte 0x00000B88
_08019ED0: .4byte gUnknown_86FD970
_08019ED4: .4byte 0x00000FCC
_08019ED8: .4byte gUnknown_86FED50
	thumb_func_end sub_08019D68

	thumb_func_start sub_08019EDC
sub_08019EDC: @ 0x08019EDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	ldr r0, _0801A0A8 @ =0x00000B8C
	adds r6, r7, r0
	ldrb r0, [r6]
	bl sub_08005ED4
	ldr r1, _0801A0AC @ =0x00000B98
	adds r5, r7, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _0801A0B0 @ =0x00000B94
	adds r4, r7, r2
	ldr r1, [r4]
	asrs r1, r1, #8
	muls r1, r0, r1
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldrb r0, [r6]
	bl sub_08005EE8
	ldr r3, _0801A0B4 @ =0x00000B9C
	adds r3, r3, r7
	mov r8, r3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4]
	asrs r1, r1, #8
	muls r1, r0, r1
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [sp, #0x18]
	movs r4, #0
	str r4, [sp, #0x10]
	adds r0, r7, #0
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	bl sub_08019C50
	cmp r0, #0
	beq _08019FDA
	ldr r0, [r6]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08019F50
	ldr r1, _0801A0B8 @ =0x00000E6E
	adds r0, r7, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	mov r2, r8
	str r0, [r2]
_08019F50:
	ldr r3, _0801A0BC @ =0x00000E7C
	adds r1, r7, r3
	movs r0, #1
	str r0, [r1]
	movs r4, #1
	str r4, [sp, #0x10]
	ldr r1, _0801A0C0 @ =0x00000FC8
	adds r0, r7, r1
	movs r4, #0
	str r4, [r0]
	ldr r2, _0801A0C4 @ =0x00000E8C
	adds r0, r7, r2
	ldr r0, [r0]
	bl sub_08017108
	ldr r3, _0801A0C8 @ =0x00000B7C
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #0
	beq _08019FDA
	movs r1, #0xb9
	lsls r1, r1, #4
	adds r0, r7, r1
	ldr r2, [sp, #0x10]
	str r2, [r0]
	ldr r3, _0801A0CC @ =0x00000E68
	adds r2, r7, r3
	ldr r1, [r2]
	ldr r0, [r5]
	cmp r1, r0
	ble _08019F90
	str r1, [r5]
_08019F90:
	ldr r1, _0801A0D0 @ =0x00000E78
	adds r0, r7, r1
	ldr r0, [r0]
	lsls r0, r0, #0x10
	ldr r1, [r2]
	adds r1, r1, r0
	ldr r0, [r5]
	cmp r1, r0
	bge _08019FA4
	str r1, [r5]
_08019FA4:
	movs r0, #0xba
	lsls r0, r0, #4
	adds r3, r7, r0
	ldr r0, [r5]
	ldr r1, [r2]
	subs r0, r0, r1
	str r0, [r3]
	ldr r1, _0801A0D4 @ =0x00000BA4
	adds r2, r7, r1
	ldr r5, _0801A0D8 @ =0x00000E6C
	adds r1, r7, r5
	mov r5, r8
	ldr r0, [r5]
	ldr r1, [r1]
	subs r0, r0, r1
	ldr r1, _0801A0DC @ =0xFFFF0000
	adds r0, r0, r1
	str r0, [r2]
	strh r4, [r3]
	strh r4, [r2]
	ldr r1, [r6]
	cmp r1, #0x80
	bgt _08019FDA
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	str r0, [r6]
_08019FDA:
	ldr r2, _0801A0BC @ =0x00000E7C
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08019FE6
	b _0801A552
_08019FE6:
	ldr r3, [sp, #0x14]
	asrs r5, r3, #0x10
	adds r6, r5, #0
	ldr r0, [sp, #0x18]
	asrs r4, r0, #0x10
	mov r8, r4
	movs r0, #0
	bl sub_0800425C
	adds r2, r0, #0
	mov r0, r8
	str r5, [sp, #0x1c]
	str r4, [sp, #0x20]
	cmp r0, #0
	bge _0801A006
	adds r0, #7
_0801A006:
	asrs r0, r0, #3
	adds r1, r6, #0
	cmp r6, #0
	bge _0801A010
	adds r1, r6, #7
_0801A010:
	asrs r1, r1, #3
	lsls r0, r0, #5
	adds r0, r0, r1
	lsls r4, r0, #1
	adds r1, r4, r2
	ldr r0, _0801A0E0 @ =0x000003FF
	ldrh r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _0801A026
	b _0801A290
_0801A026:
	movs r0, #0
	bl sub_0800425C
	mov r1, r8
	adds r0, r0, r4
	mov sb, r0
	ldrh r2, [r0]
	lsrs r2, r2, #0xc
	mov sl, r2
	ldr r3, _0801A0E4 @ =0x00000B9A
	adds r0, r7, r3
	movs r4, #0
	ldrsh r5, [r0, r4]
	mov r4, r8
	movs r0, #0
	bl sub_0800425C
	adds r2, r0, #0
	cmp r4, #0
	bge _0801A050
	adds r4, #7
_0801A050:
	asrs r1, r4, #3
	adds r0, r5, #0
	cmp r0, #0
	bge _0801A05A
	adds r0, #7
_0801A05A:
	asrs r0, r0, #3
	lsls r1, r1, #5
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldr r0, _0801A0E0 @ =0x000003FF
	ldrh r1, [r1]
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _0801A072
	movs r1, #0
_0801A072:
	cmp r1, #0
	beq _0801A114
	ldr r5, _0801A0A8 @ =0x00000B8C
	adds r6, r7, r5
	ldrb r5, [r6]
	adds r0, r5, #0
	bl sub_08005ED4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_08005EE8
	adds r1, r0, #0
	lsls r4, r4, #0x10
	negs r4, r4
	asrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	str r0, [r6]
	b _0801A160
	.align 2, 0
_0801A0A8: .4byte 0x00000B8C
_0801A0AC: .4byte 0x00000B98
_0801A0B0: .4byte 0x00000B94
_0801A0B4: .4byte 0x00000B9C
_0801A0B8: .4byte 0x00000E6E
_0801A0BC: .4byte 0x00000E7C
_0801A0C0: .4byte 0x00000FC8
_0801A0C4: .4byte 0x00000E8C
_0801A0C8: .4byte 0x00000B7C
_0801A0CC: .4byte 0x00000E68
_0801A0D0: .4byte 0x00000E78
_0801A0D4: .4byte 0x00000BA4
_0801A0D8: .4byte 0x00000E6C
_0801A0DC: .4byte 0xFFFF0000
_0801A0E0: .4byte 0x000003FF
_0801A0E4: .4byte 0x00000B9A
_0801A0E8:
	ldr r3, _0801A10C @ =0x00000EA4
	adds r0, r1, r3
	adds r0, r0, r6
	mov r3, sb
	str r3, [r0]
	ldr r3, _0801A110 @ =0x00000EA8
	adds r0, r4, r3
	strh r5, [r0]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r2]
	movs r4, #0xea
	lsls r4, r4, #4
	adds r1, r1, r4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	b _0801A1AC
	.align 2, 0
_0801A10C: .4byte 0x00000EA4
_0801A110: .4byte 0x00000EA8
_0801A114:
	ldr r5, _0801A22C @ =0x00000B8C
	adds r6, r7, r5
	ldrb r5, [r6]
	adds r0, r5, #0
	bl sub_08005ED4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_08005EE8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	negs r1, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	str r0, [r6]
	ldr r1, _0801A230 @ =0x00000B9E
	adds r0, r7, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x4f
	bgt _0801A160
	ldr r3, _0801A234 @ =0x00000B94
	adds r1, r7, r3
	ldr r0, [r1]
	movs r2, #0xf8
	lsls r2, r2, #9
	cmp r0, r2
	beq _0801A160
	str r2, [r1]
_0801A160:
	movs r0, #2
	ldr r4, [sp, #0x10]
	orrs r4, r0
	str r4, [sp, #0x10]
	mov r0, sl
	lsls r5, r0, #1
	adds r4, r5, r0
	lsls r4, r4, #2
	ldr r1, _0801A238 @ =0x00000B4C
	adds r0, r7, r1
	adds r0, r0, r4
	ldr r0, [r0]
	bl sub_08017108
	ldr r2, _0801A23C @ =0x00000B44
	adds r0, r7, r2
	adds r0, r0, r4
	ldr r0, [r0]
	mov r8, r5
	cmp r0, #0
	beq _0801A1B8
	mov r3, sb
	ldrh r5, [r3]
	ldr r0, _0801A240 @ =gUnknown_2024A48
	ldr r1, [r0]
	movs r3, #0
	ldr r4, _0801A244 @ =0x00000EAA
	adds r2, r1, r4
	adds r4, r1, #0
_0801A19A:
	lsls r6, r3, #3
	ldrh r0, [r2]
	cmp r0, #0
	beq _0801A0E8
	adds r2, #8
	adds r4, #8
	adds r3, #1
	cmp r3, #0x1f
	ble _0801A19A
_0801A1AC:
	movs r0, #0
	mov r5, sb
	strh r0, [r5]
	movs r0, #0
	bl sub_08004244
_0801A1B8:
	mov r0, r8
	add r0, sl
	lsls r5, r0, #2
	ldr r1, _0801A248 @ =0x00000B48
	adds r0, r7, r1
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	beq _0801A1F6
	ldr r2, _0801A24C @ =0x00000FA6
	adds r4, r7, r2
	ldrh r0, [r4]
	cmp r0, #0
	bne _0801A1E2
	ldr r3, _0801A250 @ =0x00000FA4
	adds r0, r7, r3
	movs r1, #0
	movs r2, #0
	movs r3, #2
	bl sub_08000970
_0801A1E2:
	adds r0, r5, r7
	ldr r5, _0801A248 @ =0x00000B48
	adds r0, r0, r5
	movs r1, #0
	movs r2, #0
	movs r3, #2
	bl LoadPalette
	movs r0, #5
	strh r0, [r4]
_0801A1F6:
	ldr r0, _0801A254 @ =0x00000FC8
	adds r2, r7, r0
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	cmp r0, #0x20
	bne _0801A212
	ldr r1, _0801A22C @ =0x00000B8C
	adds r0, r7, r1
	ldr r1, [r0]
	adds r1, #4
	str r1, [r0]
	movs r0, #0
	str r0, [r2]
_0801A212:
	ldr r2, _0801A22C @ =0x00000B8C
	adds r0, r7, r2
	ldr r1, [r0]
	cmp r1, #0x10
	ble _0801A260
	cmp r1, #0xef
	bgt _0801A228
	adds r0, r1, #0
	subs r0, #0x70
	cmp r0, #0x10
	bhi _0801A258
_0801A228:
	subs r1, #0x10
	b _0801A28A
	.align 2, 0
_0801A22C: .4byte 0x00000B8C
_0801A230: .4byte 0x00000B9E
_0801A234: .4byte 0x00000B94
_0801A238: .4byte 0x00000B4C
_0801A23C: .4byte 0x00000B44
_0801A240: .4byte gUnknown_2024A48
_0801A244: .4byte 0x00000EAA
_0801A248: .4byte 0x00000B48
_0801A24C: .4byte 0x00000FA6
_0801A250: .4byte 0x00000FA4
_0801A254: .4byte 0x00000FC8
_0801A258:
	adds r0, r1, #0
	subs r0, #0x80
	cmp r0, #0x10
	bhi _0801A264
_0801A260:
	adds r1, #0x10
	b _0801A28A
_0801A264:
	adds r0, r1, #0
	subs r0, #0x38
	cmp r0, #8
	bls _0801A27C
	adds r0, r1, #0
	subs r0, #0x40
	cmp r0, #8
	bls _0801A288
	adds r0, r1, #0
	subs r0, #0xb8
	cmp r0, #8
	bhi _0801A280
_0801A27C:
	subs r1, #8
	b _0801A28A
_0801A280:
	adds r0, r1, #0
	subs r0, #0xc0
	cmp r0, #8
	bhi _0801A28A
_0801A288:
	adds r1, #8
_0801A28A:
	ldr r3, _0801A2B0 @ =0x00000B8C
	adds r0, r7, r3
	str r1, [r0]
_0801A290:
	ldr r4, _0801A2B4 @ =0x00000E7C
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _0801A29C
	b _0801A552
_0801A29C:
	ldr r5, [sp, #0x1c]
	mov sb, r5
	ldr r0, [sp, #0x20]
	mov r8, r0
	cmp r0, #0x57
	bgt _0801A302
	cmp r0, #0x2f
	bgt _0801A2BC
	b _0801A302
	.align 2, 0
_0801A2B0: .4byte 0x00000B8C
_0801A2B4: .4byte 0x00000E7C
_0801A2B8:
	adds r1, r5, #0
	b _0801A306
_0801A2BC:
	movs r5, #0x59
	ldr r1, _0801A39C @ =0x00000B24
	adds r4, r7, r1
_0801A2C2:
	ldr r6, [r4]
	cmp r6, #0
	beq _0801A2FA
	adds r0, r6, #0
	mov r1, sp
	add r2, sp, #4
	bl sub_080023E4
	mov r1, r8
	ldr r0, [sp, #4]
	cmp r0, r1
	bgt _0801A2FA
	adds r0, #4
	cmp r0, r1
	blt _0801A2FA
	mov r1, sb
	ldr r0, [sp]
	cmp r0, r1
	bgt _0801A2FA
	adds r0, #0x10
	cmp r0, r1
	blt _0801A2FA
	adds r0, r6, #0
	bl sub_080023B8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801A2B8
_0801A2FA:
	subs r4, #0x20
	subs r5, #1
	cmp r5, #0
	bge _0801A2C2
_0801A302:
	movs r1, #1
	negs r1, r1
_0801A306:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _0801A310
	b _0801A552
_0801A310:
	lsls r1, r1, #5
	adds r0, r1, #4
	adds r0, r0, r7
	mov r8, r0
	movs r0, #4
	ldr r2, [sp, #0x10]
	orrs r2, r0
	str r2, [sp, #0x10]
	ldr r3, _0801A3A0 @ =0x00000B88
	adds r0, r7, r3
	ldr r0, [r0]
	mov sl, r1
	cmp r0, #0
	beq _0801A33C
	mov r4, r8
	ldr r0, [r4, #0xc]
	ldrb r0, [r0, #3]
	adds r5, r7, #4
	mov sb, r5
	cmp r0, #0
	beq _0801A33C
	b _0801A484
_0801A33C:
	adds r4, r7, #4
	mov r1, sl
	adds r0, r4, r1
	ldr r0, [r0]
	add r1, sp, #8
	add r2, sp, #0xc
	bl sub_080023E4
	ldr r2, _0801A3A4 @ =0x00000B9A
	adds r0, r7, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [sp, #8]
	mov sb, r4
	cmp r0, r1
	bgt _0801A362
	adds r0, #0x10
	cmp r0, r1
	bge _0801A3E4
_0801A362:
	ldr r4, _0801A3A8 @ =0x00000B9E
	adds r0, r7, r4
	movs r5, #0
	ldrsh r1, [r0, r5]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bgt _0801A376
	adds r0, #4
	cmp r0, r1
	bge _0801A3BC
_0801A376:
	ldr r1, _0801A3AC @ =0x00000B98
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r2, [sp, #0x14]
	subs r1, r0, r2
	cmp r1, #0
	bge _0801A386
	subs r1, r2, r0
_0801A386:
	ldr r3, _0801A3B0 @ =0x00000B9C
	adds r0, r7, r3
	ldr r0, [r0]
	ldr r4, [sp, #0x18]
	subs r2, r0, r4
	cmp r2, #0
	blt _0801A3B4
	cmp r1, r2
	bge _0801A3BC
	b _0801A3E4
	.align 2, 0
_0801A39C: .4byte 0x00000B24
_0801A3A0: .4byte 0x00000B88
_0801A3A4: .4byte 0x00000B9A
_0801A3A8: .4byte 0x00000B9E
_0801A3AC: .4byte 0x00000B98
_0801A3B0: .4byte 0x00000B9C
_0801A3B4:
	ldr r5, [sp, #0x18]
	subs r0, r5, r0
	cmp r1, r0
	blt _0801A3E4
_0801A3BC:
	ldr r0, _0801A3E0 @ =0x00000B8C
	adds r6, r7, r0
	ldrb r5, [r6]
	adds r0, r5, #0
	bl sub_08005ED4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_08005EE8
	adds r1, r0, #0
	lsls r4, r4, #0x10
	negs r4, r4
	asrs r4, r4, #0x10
	lsls r1, r1, #0x10
	b _0801A406
	.align 2, 0
_0801A3E0: .4byte 0x00000B8C
_0801A3E4:
	ldr r1, _0801A430 @ =0x00000B8C
	adds r6, r7, r1
	ldrb r5, [r6]
	adds r0, r5, #0
	bl sub_08005ED4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	bl sub_08005EE8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	negs r1, r1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
_0801A406:
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	str r0, [r6]
	ldr r2, _0801A430 @ =0x00000B8C
	adds r0, r7, r2
	ldr r1, [r0]
	cmp r1, #0x10
	ble _0801A43C
	cmp r1, #0xef
	bgt _0801A42A
	adds r0, r1, #0
	subs r0, #0x70
	cmp r0, #0x10
	bhi _0801A434
_0801A42A:
	subs r1, #0x10
	b _0801A466
	.align 2, 0
_0801A430: .4byte 0x00000B8C
_0801A434:
	adds r0, r1, #0
	subs r0, #0x80
	cmp r0, #0x10
	bhi _0801A440
_0801A43C:
	adds r1, #0x10
	b _0801A466
_0801A440:
	adds r0, r1, #0
	subs r0, #0x38
	cmp r0, #8
	bls _0801A458
	adds r0, r1, #0
	subs r0, #0x40
	cmp r0, #8
	bls _0801A464
	adds r0, r1, #0
	subs r0, #0xb8
	cmp r0, #8
	bhi _0801A45C
_0801A458:
	subs r1, #8
	b _0801A466
_0801A45C:
	adds r0, r1, #0
	subs r0, #0xc0
	cmp r0, #8
	bhi _0801A466
_0801A464:
	adds r1, #8
_0801A466:
	ldr r3, _0801A4E8 @ =0x00000B8C
	adds r2, r7, r3
	str r1, [r2]
	ldr r4, _0801A4EC @ =0x00000FC8
	adds r1, r7, r4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x20
	bne _0801A484
	ldr r0, [r2]
	adds r0, #8
	str r0, [r2]
	movs r0, #0
	str r0, [r1]
_0801A484:
	mov r0, sb
	add r0, sl
	ldr r1, [r0]
	adds r0, r7, #0
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	bl sub_080199F0
	ldr r5, _0801A4F0 @ =0x00000B88
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, #0
	beq _0801A4AC
	mov r0, r8
	ldr r1, [r0, #0xc]
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _0801A54C
	movs r0, #1
	strb r0, [r1, #3]
_0801A4AC:
	mov r2, r8
	ldr r1, [r2, #0xc]
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _0801A54C
	subs r0, #1
	strb r0, [r1, #3]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq _0801A4F4
	ldrb r0, [r2, #0x11]
	adds r0, #1
	strb r0, [r2, #0x11]
	ldr r0, [r2]
	ldrb r3, [r2, #0x11]
	lsls r2, r3, #6
	mov r4, r8
	ldr r1, [r4, #4]
	adds r1, r1, r2
	bl sub_08002350
	ldr r0, [r4]
	bl sub_08002428
	movs r0, #0x1a
	bl sub_08017108
	b _0801A552
	.align 2, 0
_0801A4E8: .4byte 0x00000B8C
_0801A4EC: .4byte 0x00000FC8
_0801A4F0: .4byte 0x00000B88
_0801A4F4:
	adds r0, r7, #0
	mov r1, r8
	bl sub_08019D68
	mov r5, r8
	ldr r0, [r5]
	cmp r0, #0
	beq _0801A50A
	movs r1, #3
	bl sub_080018D8
_0801A50A:
	mov r0, r8
	str r4, [r0]
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, #0xa]
	bl sub_08017108
	ldr r1, _0801A540 @ =0x00000FB4
	adds r2, r7, r1
	mov r3, r8
	ldr r1, [r3, #0xc]
	ldr r5, _0801A544 @ =0x00000FAC
	adds r0, r7, r5
	ldr r0, [r0]
	ldrb r1, [r1, #2]
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	cmp r0, #0
	bge _0801A534
	str r4, [r2]
_0801A534:
	ldr r0, _0801A548 @ =0x00000FA8
	adds r1, r7, r0
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	b _0801A552
	.align 2, 0
_0801A540: .4byte 0x00000FB4
_0801A544: .4byte 0x00000FAC
_0801A548: .4byte 0x00000FA8
_0801A54C:
	movs r0, #0x1a
	bl sub_08017108
_0801A552:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bne _0801A568
	ldr r2, _0801A5A0 @ =0x00000B98
	adds r0, r7, r2
	ldr r3, [sp, #0x14]
	str r3, [r0]
	ldr r4, _0801A5A4 @ =0x00000B9C
	adds r0, r7, r4
	ldr r5, [sp, #0x18]
	str r5, [r0]
_0801A568:
	movs r1, #0xb6
	lsls r1, r1, #4
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r3, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	ldr r4, _0801A5A8 @ =0x00000B9A
	adds r1, r7, r4
	movs r5, #0
	ldrsh r1, [r1, r5]
	adds r4, #4
	adds r2, r7, r4
	movs r5, #0
	ldrsh r2, [r2, r5]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A5A0: .4byte 0x00000B98
_0801A5A4: .4byte 0x00000B9C
_0801A5A8: .4byte 0x00000B9A
	thumb_func_end sub_08019EDC

	thumb_func_start sub_0801A5AC
sub_0801A5AC: @ 0x0801A5AC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, _0801A644 @ =0x00000E68
	adds r0, r4, r1
	movs r2, #0xba
	lsls r2, r2, #4
	adds r1, r4, r2
	ldr r2, [r0]
	ldr r0, [r1]
	adds r6, r2, r0
	ldr r1, _0801A648 @ =0x00000E6C
	adds r0, r4, r1
	ldr r2, _0801A64C @ =0x00000BA4
	adds r1, r4, r2
	ldr r2, [r0]
	ldr r0, [r1]
	adds r5, r2, r0
	movs r1, #0xb6
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r3, [r0, #0x30]
	movs r2, #8
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	asrs r1, r6, #0x10
	asrs r2, r5, #0x10
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	bl sub_08005DE0
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0801A63E
	ldr r1, _0801A650 @ =0x00000B98
	adds r0, r4, r1
	str r6, [r0]
	ldr r2, _0801A654 @ =0x00000B9C
	adds r0, r4, r2
	str r5, [r0]
	movs r0, #0xb9
	lsls r0, r0, #4
	adds r1, r4, r0
	movs r0, #0
	str r0, [r1]
	ldr r1, _0801A658 @ =0x00000B9A
	adds r0, r4, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r2, _0801A65C @ =0x00000E6A
	adds r0, r4, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r2, r1, r0
	ldr r1, _0801A660 @ =0x00000E78
	adds r0, r4, r1
	ldr r0, [r0]
	adds r1, r0, #1
	cmp r1, #0
	bge _0801A62A
	adds r1, r0, #4
_0801A62A:
	asrs r1, r1, #2
	adds r0, r2, #0
	bl __divsi3
	ldr r1, _0801A664 @ =0x00000B8C
	adds r2, r4, r1
	ldr r1, _0801A668 @ =gUnknown_85EE964
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [r2]
_0801A63E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A644: .4byte 0x00000E68
_0801A648: .4byte 0x00000E6C
_0801A64C: .4byte 0x00000BA4
_0801A650: .4byte 0x00000B98
_0801A654: .4byte 0x00000B9C
_0801A658: .4byte 0x00000B9A
_0801A65C: .4byte 0x00000E6A
_0801A660: .4byte 0x00000E78
_0801A664: .4byte 0x00000B8C
_0801A668: .4byte gUnknown_85EE964
	thumb_func_end sub_0801A5AC

	thumb_func_start sub_0801A66C
sub_0801A66C: @ 0x0801A66C
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r1, _0801A6A4 @ =0x00000BC6
	adds r5, r0, r1
	movs r6, #0xf
	subs r1, #0x1e
	adds r4, r0, r1
_0801A67A:
	ldr r0, [r4]
	cmp r0, #0
	beq _0801A6AA
	ldrh r0, [r5]
	cmp r0, #0xf0
	bhi _0801A692
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	blt _0801A692
	cmp r0, #0xa0
	ble _0801A6A8
_0801A692:
	ldr r0, [r4]
	cmp r0, #0
	beq _0801A69E
	movs r1, #3
	bl sub_080018D8
_0801A69E:
	movs r0, #0
	str r0, [r4]
	b _0801A6AA
	.align 2, 0
_0801A6A4: .4byte 0x00000BC6
_0801A6A8:
	adds r7, #1
_0801A6AA:
	adds r4, #0x2c
	adds r5, #0x2c
	subs r6, #1
	cmp r6, #0
	bge _0801A67A
	movs r0, #0
	cmp r7, #0
	bne _0801A6BC
	movs r0, #1
_0801A6BC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0801A66C

	thumb_func_start sub_0801A6C4
sub_0801A6C4: @ 0x0801A6C4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _0801A738 @ =0x00000FB4
	adds r0, r0, r1
	ldr r6, [r0]
	ldr r5, _0801A73C @ =0x00002710
	movs r7, #0
_0801A6D2:
	adds r0, r6, #0
	adds r1, r5, #0
	bl Div
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl Mod
	adds r6, r0, #0
	mov r1, sp
	adds r0, r1, r7
	strb r4, [r0]
	adds r0, r5, #0
	movs r1, #0xa
	bl Div
	adds r5, r0, #0
	adds r7, #1
	cmp r7, #4
	ble _0801A6D2
	mov r5, sp
	ldr r4, _0801A740 @ =gUnknown_85EE968
	movs r0, #1
	bl sub_0800425C
	adds r2, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0801A72A
	ldr r6, _0801A744 @ =0xFFFFB000
	adds r3, r6, #0
_0801A712:
	ldrb r0, [r5]
	adds r0, #0xd6
	orrs r0, r3
	ldrh r6, [r4]
	lsls r1, r6, #1
	adds r1, r1, r2
	strh r0, [r1]
	adds r4, #2
	adds r5, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _0801A712
_0801A72A:
	movs r0, #1
	bl sub_08004244
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A738: .4byte 0x00000FB4
_0801A73C: .4byte 0x00002710
_0801A740: .4byte gUnknown_85EE968
_0801A744: .4byte 0xFFFFB000
	thumb_func_end sub_0801A6C4

	thumb_func_start sub_0801A748
sub_0801A748: @ 0x0801A748
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _0801A7CC @ =0x00000FB8
	adds r2, r0, r1
	ldr r6, _0801A7D0 @ =0x00000FB4
	adds r0, r0, r6
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bge _0801A75E
	str r0, [r2]
_0801A75E:
	ldr r6, [r2]
	ldr r5, _0801A7D4 @ =0x00002710
	movs r7, #0
_0801A764:
	adds r0, r6, #0
	adds r1, r5, #0
	bl Div
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl Mod
	adds r6, r0, #0
	mov r1, sp
	adds r0, r1, r7
	strb r4, [r0]
	adds r0, r5, #0
	movs r1, #0xa
	bl Div
	adds r5, r0, #0
	adds r7, #1
	cmp r7, #4
	ble _0801A764
	mov r5, sp
	ldr r4, _0801A7D8 @ =gUnknown_85EE974
	movs r0, #1
	bl sub_0800425C
	adds r2, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0801A7BC
	ldr r6, _0801A7DC @ =0xFFFFB000
	adds r3, r6, #0
_0801A7A4:
	ldrb r0, [r5]
	adds r0, #0xd6
	orrs r0, r3
	ldrh r6, [r4]
	lsls r1, r6, #1
	adds r1, r1, r2
	strh r0, [r1]
	adds r4, #2
	adds r5, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _0801A7A4
_0801A7BC:
	movs r0, #1
	bl sub_08004244
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A7CC: .4byte 0x00000FB8
_0801A7D0: .4byte 0x00000FB4
_0801A7D4: .4byte 0x00002710
_0801A7D8: .4byte gUnknown_85EE974
_0801A7DC: .4byte 0xFFFFB000
	thumb_func_end sub_0801A748

	thumb_func_start sub_0801A7E0
sub_0801A7E0: @ 0x0801A7E0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0xfb
	lsls r0, r0, #4
	adds r4, r4, r0
	ldr r0, [r4]
	movs r1, #0xa
	bl Div
	mov r1, sp
	movs r5, #0
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0xa
	bl Mod
	mov r1, sp
	strb r0, [r1, #1]
	mov r0, sp
	strb r5, [r0, #2]
	mov r5, sp
	ldr r4, _0801A858 @ =gUnknown_85EE980
	movs r0, #1
	bl sub_0800425C
	adds r2, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0801A84A
	ldr r6, _0801A85C @ =0xFFFFB000
	adds r3, r6, #0
_0801A820:
	ldrb r0, [r5]
	lsls r1, r0, #1
	adds r1, #0xe1
	orrs r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r6, [r4]
	lsls r0, r6, #1
	adds r0, r0, r2
	strh r1, [r0]
	ldrh r6, [r4]
	lsls r0, r6, #1
	adds r0, r0, r2
	adds r0, #0x40
	adds r1, #1
	strh r1, [r0]
	adds r4, #2
	adds r5, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _0801A820
_0801A84A:
	movs r0, #1
	bl sub_08004244
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801A858: .4byte gUnknown_85EE980
_0801A85C: .4byte 0xFFFFB000
	thumb_func_end sub_0801A7E0

	thumb_func_start sub_0801A860
sub_0801A860: @ 0x0801A860
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _0801A92C @ =gUnknown_2024A48
	ldr r1, [r4]
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	bl sub_08019730
	ldr r2, [r4]
	ldr r1, _0801A930 @ =0x00000B5C
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801A89E
	movs r1, #0xe7
	lsls r1, r1, #4
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	ldr r0, [r4]
	ldr r2, _0801A934 @ =0x00000B78
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0801A89E
	bl sub_08018F84
_0801A89E:
	movs r4, #0
	mov r8, r4
	ldr r5, _0801A92C @ =gUnknown_2024A48
_0801A8A4:
	ldr r4, [r5]
	movs r0, #0x2c
	mov r2, r8
	muls r2, r0, r2
	ldr r1, _0801A938 @ =0x00000BA8
	adds r0, r4, r1
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0801A8BA
	b _0801AA00
_0801A8BA:
	adds r2, r2, r1
	adds r2, r4, r2
	movs r0, #0xb6
	lsls r0, r0, #4
	adds r1, r4, r0
	ldr r0, [r2]
	str r0, [r1]
	movs r0, #0xb8
	lsls r0, r0, #4
	adds r1, r4, r0
	ldr r0, [r2, #4]
	str r0, [r1]
	ldr r0, _0801A93C @ =0x00000B84
	adds r1, r4, r0
	ldr r0, [r2, #8]
	str r0, [r1]
	ldr r0, _0801A940 @ =0x00000B88
	adds r1, r4, r0
	ldr r0, [r2, #0xc]
	str r0, [r1]
	ldr r0, _0801A944 @ =0x00000B8C
	adds r1, r4, r0
	ldr r0, [r2, #0x10]
	str r0, [r1]
	movs r1, #0xb9
	lsls r1, r1, #4
	adds r3, r4, r1
	ldr r0, [r2, #0x14]
	str r0, [r3]
	ldr r0, _0801A948 @ =0x00000B94
	adds r1, r4, r0
	ldr r0, [r2, #0x18]
	str r0, [r1]
	ldr r0, _0801A94C @ =0x00000B98
	adds r1, r4, r0
	ldr r0, [r2, #0x1c]
	str r0, [r1]
	ldr r0, _0801A950 @ =0x00000B9C
	adds r1, r4, r0
	ldr r0, [r2, #0x20]
	str r0, [r1]
	movs r0, #0xba
	lsls r0, r0, #4
	adds r1, r4, r0
	ldr r0, [r2, #0x24]
	str r0, [r1]
	ldr r0, _0801A954 @ =0x00000BA4
	adds r1, r4, r0
	ldr r0, [r2, #0x28]
	str r0, [r1]
	ldr r0, [r3]
	cmp r0, #0
	bne _0801A958
	adds r0, r4, #0
	bl sub_08019EDC
	b _0801A95E
	.align 2, 0
_0801A92C: .4byte gUnknown_2024A48
_0801A930: .4byte 0x00000B5C
_0801A934: .4byte 0x00000B78
_0801A938: .4byte 0x00000BA8
_0801A93C: .4byte 0x00000B84
_0801A940: .4byte 0x00000B88
_0801A944: .4byte 0x00000B8C
_0801A948: .4byte 0x00000B94
_0801A94C: .4byte 0x00000B98
_0801A950: .4byte 0x00000B9C
_0801A954: .4byte 0x00000BA4
_0801A958:
	adds r0, r4, #0
	bl sub_0801A5AC
_0801A95E:
	ldr r0, _0801AA40 @ =gUnknown_2024A48
	ldr r6, [r0]
	movs r1, #0xb8
	lsls r1, r1, #4
	adds r7, r6, r1
	ldr r0, [r7]
	cmp r0, #0
	beq _0801A994
	subs r5, r0, #1
	str r5, [r7]
	cmp r5, #0
	bne _0801A994
	movs r2, #0xb6
	lsls r2, r2, #4
	adds r4, r6, r2
	ldr r0, [r4]
	ldr r1, _0801AA44 @ =gUnknown_86FED10
	bl sub_08002350
	ldr r0, [r4]
	bl sub_08002428
	ldr r4, _0801AA48 @ =0x00000B84
	adds r1, r6, r4
	movs r0, #2
	str r0, [r1]
	str r5, [r7]
_0801A994:
	ldr r3, _0801AA40 @ =gUnknown_2024A48
	ldr r2, [r3]
	movs r0, #0x2c
	mov r1, r8
	muls r1, r0, r1
	ldr r0, _0801AA4C @ =0x00000BA8
	adds r1, r1, r0
	adds r1, r2, r1
	movs r4, #0xb6
	lsls r4, r4, #4
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r1]
	adds r4, #0x20
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r1, #4]
	adds r4, #4
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r1, #8]
	adds r4, #4
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r1, #0xc]
	adds r4, #4
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r1, #0x10]
	adds r4, #4
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r1, #0x14]
	adds r4, #4
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r1, #0x18]
	adds r4, #4
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r1, #0x1c]
	adds r4, #4
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r1, #0x20]
	adds r4, #4
	adds r0, r2, r4
	ldr r0, [r0]
	str r0, [r1, #0x24]
	ldr r0, _0801AA50 @ =0x00000BA4
	adds r2, r2, r0
	ldr r0, [r2]
	str r0, [r1, #0x28]
	adds r5, r3, #0
_0801AA00:
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #0xf
	bgt _0801AA0C
	b _0801A8A4
_0801AA0C:
	ldr r0, [r5]
	bl sub_0801A6C4
	ldr r0, [r5]
	bl sub_0801A748
	ldr r3, [r5]
	movs r4, #0xb7
	lsls r4, r4, #4
	adds r0, r3, r4
	ldr r0, [r0]
	cmp r0, #0
	beq _0801AA5C
	ldr r1, _0801AA54 @ =0x00000E7C
	adds r0, r3, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801AA5C
	ldr r2, _0801AA58 @ =0x00000FA8
	adds r0, r3, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _0801AA5C
	movs r0, #3
	b _0801AAE0
	.align 2, 0
_0801AA40: .4byte gUnknown_2024A48
_0801AA44: .4byte gUnknown_86FED10
_0801AA48: .4byte 0x00000B84
_0801AA4C: .4byte 0x00000BA8
_0801AA50: .4byte 0x00000BA4
_0801AA54: .4byte 0x00000E7C
_0801AA58: .4byte 0x00000FA8
_0801AA5C:
	ldr r0, _0801AAA4 @ =gUnknown_2024A48
	ldr r0, [r0]
	ldr r4, _0801AAA8 @ =0x00000B74
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _0801AA76
	bl sub_08005DE0
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	bne _0801AA9E
_0801AA76:
	ldr r5, _0801AAA4 @ =gUnknown_2024A48
	ldr r0, [r5]
	ldr r6, _0801AAAC @ =0x00000FBC
	adds r1, r0, r6
	ldr r4, [r1]
	cmp r4, #0
	bne _0801AACC
	bl sub_0801A66C
	cmp r0, #1
	bne _0801AADE
	ldr r2, [r5]
	movs r0, #0xfb
	lsls r0, r0, #4
	adds r1, r2, r0
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bne _0801AAB0
_0801AA9E:
	movs r0, #1
	b _0801AAE0
	.align 2, 0
_0801AAA4: .4byte gUnknown_2024A48
_0801AAA8: .4byte 0x00000B74
_0801AAAC: .4byte 0x00000FBC
_0801AAB0:
	adds r0, r2, #0
	bl sub_0801A7E0
	ldr r0, [r5]
	ldr r2, _0801AAC8 @ =0x00000E7C
	adds r1, r0, r2
	str r4, [r1]
	adds r0, r0, r6
	movs r1, #0x3c
	str r1, [r0]
	b _0801AADE
	.align 2, 0
_0801AAC8: .4byte 0x00000E7C
_0801AACC:
	subs r0, r4, #1
	str r0, [r1]
	cmp r0, #0
	bne _0801AADE
	bl sub_08018AC0
	movs r0, #0xd8
	bl sub_08017108
_0801AADE:
	movs r0, #0
_0801AAE0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0801A860

	thumb_func_start sub_0801AAEC
sub_0801AAEC: @ 0x0801AAEC
	push {r4, r5, lr}
	movs r4, #0
_0801AAF0:
	ldr r5, _0801AB48 @ =gUnknown_2024A48
	ldr r0, [r5]
	lsls r1, r4, #5
	adds r0, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801AB06
	movs r1, #3
	bl sub_080018D8
_0801AB06:
	adds r4, #1
	cmp r4, #0x59
	ble _0801AAF0
	ldr r0, [r5]
	ldr r1, _0801AB4C @ =0x00000B5C
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801AB1E
	movs r1, #3
	bl sub_080018D8
_0801AB1E:
	movs r4, #0
_0801AB20:
	ldr r0, _0801AB48 @ =gUnknown_2024A48
	ldr r1, [r0]
	movs r0, #0x2c
	muls r0, r4, r0
	ldr r2, _0801AB50 @ =0x00000BA8
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0801AB3A
	movs r1, #3
	bl sub_080018D8
_0801AB3A:
	adds r4, #1
	cmp r4, #0xf
	ble _0801AB20
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801AB48: .4byte gUnknown_2024A48
_0801AB4C: .4byte 0x00000B5C
_0801AB50: .4byte 0x00000BA8
	thumb_func_end sub_0801AAEC

	thumb_func_start sub_0801AB54
sub_0801AB54: @ 0x0801AB54
	push {r4, r5, r6, lr}
	sub sp, #0x48
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08005558
	bl sub_080055DC
	adds r0, r4, #0
	bl sub_08018E7C
	ldr r4, _0801AC28 @ =gUnknown_2024A48
	ldr r0, [r4]
	ldr r1, _0801AC2C @ =0x00000FB8
	adds r2, r0, r1
	ldr r1, [r5]
	str r1, [r2]
	bl sub_0801A7E0
	ldr r0, [r4]
	bl sub_0801A6C4
	ldr r0, [r4]
	bl sub_0801A748
	movs r0, #6
	movs r1, #0
	movs r2, #0x10
	movs r3, #0xf
	bl sub_08016344
	movs r0, #0x10
	bl sub_080053D8
	movs r0, #0x11
	movs r1, #0
	movs r2, #8
	movs r3, #0xf
	bl sub_08016344
	movs r4, #0x80
	lsls r4, r4, #0x13
	adds r0, r4, #0
	bl sub_08000600
	adds r1, r0, #0
	movs r2, #0x88
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_0800062C
	movs r0, #0x10
	bl sub_080053D8
	movs r4, #1
	movs r0, #0x14
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0x1e
	bl sub_08002F74
	movs r0, #2
	bl sub_080042A0
	ldr r0, _0801AC30 @ =0xFFFFF000
	adds r3, r0, #0
	add r1, sp, #8
	movs r2, #0xb
_0801ABEC:
	adds r0, r4, #0
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	subs r2, #1
	adds r4, #1
	cmp r2, #0
	bge _0801ABEC
	movs r3, #6
	movs r0, #2
	str r0, [sp]
	add r1, sp, #8
	str r1, [sp, #4]
	movs r1, #0
	movs r2, #0
	bl sub_08002D6C
	movs r1, #0x60
	negs r1, r1
	movs r2, #0x48
	negs r2, r2
	movs r0, #2
	bl sub_08008FF4
	movs r0, #0xd8
	bl sub_08017108
	movs r4, #1
	b _0801AC3A
	.align 2, 0
_0801AC28: .4byte gUnknown_2024A48
_0801AC2C: .4byte 0x00000FB8
_0801AC30: .4byte 0xFFFFF000
_0801AC34:
	movs r0, #1
	bl sub_080053D8
_0801AC3A:
	bl sub_08005DE0
	adds r1, r4, #0
	eors r1, r0
	ands r1, r4
	cmp r1, #0
	bne _0801AC34
	movs r0, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0x1e
	bl sub_08002F74
	movs r0, #0x11
	movs r1, #8
	movs r2, #0x10
	movs r3, #0xf
	bl sub_08016344
	b _0801AC6E
_0801AC68:
	movs r0, #1
	bl sub_080053D8
_0801AC6E:
	bl sub_0801A860
	adds r4, r0, #0
	cmp r4, #0
	beq _0801AC68
	ldr r0, _0801ACAC @ =gUnknown_2024A48
	ldr r0, [r0]
	ldr r2, _0801ACB0 @ =0x00000FA4
	adds r0, r0, r2
	movs r1, #0
	movs r2, #0
	movs r3, #2
	bl LoadPalette
	movs r0, #0x11
	movs r1, #0x10
	movs r2, #8
	movs r3, #0xf
	bl sub_08016344
	movs r0, #0x10
	bl sub_080053D8
	cmp r4, #2
	beq _0801AD42
	cmp r4, #2
	bgt _0801ACB4
	cmp r4, #1
	beq _0801ACBA
	b _0801AE10
	.align 2, 0
_0801ACAC: .4byte gUnknown_2024A48
_0801ACB0: .4byte 0x00000FA4
_0801ACB4:
	cmp r4, #3
	beq _0801ADA0
	b _0801AE10
_0801ACBA:
	movs r4, #0x1d
	movs r0, #0x14
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0x1e
	bl sub_08002F74
	movs r0, #2
	bl sub_080042A0
	ldr r0, _0801AD28 @ =0xFFFFF000
	adds r3, r0, #0
	add r1, sp, #8
	movs r2, #0x13
_0801ACDE:
	adds r0, r4, #0
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	subs r2, #1
	adds r4, #1
	cmp r2, #0
	bge _0801ACDE
	movs r3, #0xa
	movs r0, #2
	str r0, [sp]
	add r1, sp, #8
	str r1, [sp, #4]
	movs r1, #0
	movs r2, #0
	bl sub_08002D6C
	movs r1, #0x50
	negs r1, r1
	movs r2, #0x48
	negs r2, r2
	movs r0, #2
	bl sub_08008FF4
	ldr r0, _0801AD2C @ =gUnknown_2024A48
	ldr r0, [r0]
	movs r1, #0xfb
	lsls r1, r1, #4
	adds r2, r0, r1
	movs r1, #0
	str r1, [r2]
	bl sub_0801A7E0
	movs r0, #0xd9
	bl sub_08017108
	b _0801AD36
	.align 2, 0
_0801AD28: .4byte 0xFFFFF000
_0801AD2C: .4byte gUnknown_2024A48
_0801AD30:
	movs r0, #1
	bl sub_080053D8
_0801AD36:
	movs r0, #0xd9
	bl sub_08016E50
	cmp r0, #0
	beq _0801AD30
	b _0801AE10
_0801AD42:
	movs r4, #0xd
	movs r0, #0x14
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0x1e
	bl sub_08002F74
	movs r0, #2
	bl sub_080042A0
	ldr r2, _0801AD9C @ =0xFFFFF000
	adds r3, r2, #0
	add r1, sp, #8
	movs r2, #0xf
_0801AD66:
	adds r0, r4, #0
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	subs r2, #1
	adds r4, #1
	cmp r2, #0
	bge _0801AD66
	movs r3, #8
	movs r0, #2
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_08002D6C
	movs r1, #0x58
	negs r1, r1
	movs r2, #0x48
	negs r2, r2
	movs r0, #2
	bl sub_08008FF4
	b _0801AE10
	.align 2, 0
_0801AD9C: .4byte 0xFFFFF000
_0801ADA0:
	movs r4, #0x31
	movs r0, #0x14
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0x1e
	bl sub_08002F74
	movs r0, #2
	bl sub_080042A0
	ldr r1, _0801ADFC @ =0xFFFFF000
	adds r3, r1, #0
	add r1, sp, #8
	movs r2, #0xb
_0801ADC4:
	adds r0, r4, #0
	orrs r0, r3
	strh r0, [r1]
	adds r1, #2
	subs r2, #1
	adds r4, #1
	cmp r2, #0
	bge _0801ADC4
	movs r3, #6
	movs r0, #2
	str r0, [sp]
	add r2, sp, #8
	str r2, [sp, #4]
	movs r1, #0
	movs r2, #0
	bl sub_08002D6C
	movs r1, #0x60
	negs r1, r1
	movs r2, #0x48
	negs r2, r2
	movs r0, #2
	bl sub_08008FF4
	movs r0, #0xda
	bl sub_08017108
	b _0801AE06
	.align 2, 0
_0801ADFC: .4byte 0xFFFFF000
_0801AE00:
	movs r0, #1
	bl sub_080053D8
_0801AE06:
	movs r0, #0xda
	bl sub_08016E50
	cmp r0, #0
	beq _0801AE00
_0801AE10:
	movs r4, #3
	b _0801AE1A
_0801AE14:
	movs r0, #1
	bl sub_080053D8
_0801AE1A:
	bl sub_08005DE0
	adds r1, r4, #0
	ands r1, r0
	cmp r1, #0
	beq _0801AE14
	movs r0, #6
	bl sub_08017108
	b _0801AE34
_0801AE2E:
	movs r0, #1
	bl sub_080053D8
_0801AE34:
	movs r0, #6
	bl sub_08016E50
	cmp r0, #0
	beq _0801AE2E
	movs r0, #0x11
	movs r1, #8
	movs r2, #0
	movs r3, #0xf
	bl sub_08016344
	movs r0, #0xf
	bl sub_080053D8
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0xc8
	lsls r1, r1, #3
	bl sub_0800062C
	movs r0, #6
	movs r1, #0x10
	movs r2, #0
	movs r3, #0xf
	bl sub_08016344
	movs r0, #0x10
	bl sub_080053D8
	bl sub_0801AAEC
	ldr r0, _0801AEBC @ =gUnknown_2024A48
	ldr r0, [r0]
	ldr r1, _0801AEC0 @ =0x00000FB4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5]
	bl sub_08004678
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08008FF4
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl sub_08008FF4
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_08008FF4
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl sub_08008FF4
	bl sub_08004634
	bl sub_080055DC
	add sp, #0x48
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801AEBC: .4byte gUnknown_2024A48
_0801AEC0: .4byte 0x00000FB4
	thumb_func_end sub_0801AB54

	thumb_func_start sub_0801AEC4
sub_0801AEC4: @ 0x0801AEC4
	ldr r1, _0801AF30 @ =gUnknown_2024A48
	ldr r2, [r1]
	movs r1, #0x2c
	muls r1, r0, r1
	ldr r0, _0801AF34 @ =0x00000BA8
	adds r1, r1, r0
	adds r1, r2, r1
	movs r3, #0xb6
	lsls r3, r3, #4
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [r1]
	adds r3, #0x20
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [r1, #4]
	adds r3, #4
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [r1, #8]
	adds r3, #4
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [r1, #0xc]
	adds r3, #4
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [r1, #0x10]
	adds r3, #4
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [r1, #0x14]
	adds r3, #4
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [r1, #0x18]
	adds r3, #4
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [r1, #0x1c]
	adds r3, #4
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [r1, #0x20]
	adds r3, #4
	adds r0, r2, r3
	ldr r0, [r0]
	str r0, [r1, #0x24]
	ldr r0, _0801AF38 @ =0x00000BA4
	adds r2, r2, r0
	ldr r0, [r2]
	str r0, [r1, #0x28]
	bx lr
	.align 2, 0
_0801AF30: .4byte gUnknown_2024A48
_0801AF34: .4byte 0x00000BA8
_0801AF38: .4byte 0x00000BA4
	thumb_func_end sub_0801AEC4

	thumb_func_start sub_0801AF3C
sub_0801AF3C: @ 0x0801AF3C
	ldr r1, _0801AFAC @ =gUnknown_2024A48
	ldr r2, [r1]
	movs r1, #0x2c
	muls r1, r0, r1
	ldr r0, _0801AFB0 @ =0x00000BA8
	adds r1, r1, r0
	adds r1, r2, r1
	subs r0, #0x48
	adds r3, r2, r0
	ldr r0, [r1]
	str r0, [r3]
	movs r0, #0xb8
	lsls r0, r0, #4
	adds r3, r2, r0
	ldr r0, [r1, #4]
	str r0, [r3]
	ldr r0, _0801AFB4 @ =0x00000B84
	adds r3, r2, r0
	ldr r0, [r1, #8]
	str r0, [r3]
	ldr r0, _0801AFB8 @ =0x00000B88
	adds r3, r2, r0
	ldr r0, [r1, #0xc]
	str r0, [r3]
	ldr r0, _0801AFBC @ =0x00000B8C
	adds r3, r2, r0
	ldr r0, [r1, #0x10]
	str r0, [r3]
	movs r0, #0xb9
	lsls r0, r0, #4
	adds r3, r2, r0
	ldr r0, [r1, #0x14]
	str r0, [r3]
	ldr r0, _0801AFC0 @ =0x00000B94
	adds r3, r2, r0
	ldr r0, [r1, #0x18]
	str r0, [r3]
	ldr r0, _0801AFC4 @ =0x00000B98
	adds r3, r2, r0
	ldr r0, [r1, #0x1c]
	str r0, [r3]
	ldr r0, _0801AFC8 @ =0x00000B9C
	adds r3, r2, r0
	ldr r0, [r1, #0x20]
	str r0, [r3]
	movs r0, #0xba
	lsls r0, r0, #4
	adds r3, r2, r0
	ldr r0, [r1, #0x24]
	str r0, [r3]
	ldr r0, _0801AFCC @ =0x00000BA4
	adds r2, r2, r0
	ldr r0, [r1, #0x28]
	str r0, [r2]
	bx lr
	.align 2, 0
_0801AFAC: .4byte gUnknown_2024A48
_0801AFB0: .4byte 0x00000BA8
_0801AFB4: .4byte 0x00000B84
_0801AFB8: .4byte 0x00000B88
_0801AFBC: .4byte 0x00000B8C
_0801AFC0: .4byte 0x00000B94
_0801AFC4: .4byte 0x00000B98
_0801AFC8: .4byte 0x00000B9C
_0801AFCC: .4byte 0x00000BA4
	thumb_func_end sub_0801AF3C

	thumb_func_start sub_0801AFD0
sub_0801AFD0: @ 0x0801AFD0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r0, #1
	bl sub_0800425C
	adds r2, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0801B004
	ldr r0, _0801B010 @ =0xFFFFB000
	adds r3, r0, #0
_0801AFEC:
	ldrb r1, [r5]
	adds r0, r1, r6
	orrs r0, r3
	ldrh r7, [r4]
	lsls r1, r7, #1
	adds r1, r1, r2
	strh r0, [r1]
	adds r4, #2
	adds r5, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _0801AFEC
_0801B004:
	movs r0, #1
	bl sub_08004244
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B010: .4byte 0xFFFFB000
	thumb_func_end sub_0801AFD0

	thumb_func_start sub_0801B014
sub_0801B014: @ 0x0801B014
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	movs r0, #1
	bl sub_0800425C
	adds r2, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _0801B05A
	ldr r0, _0801B068 @ =0xFFFFB000
	adds r3, r0, #0
_0801B030:
	ldrb r7, [r5]
	lsls r1, r7, #1
	adds r1, r6, r1
	orrs r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r7, [r4]
	lsls r0, r7, #1
	adds r0, r0, r2
	strh r1, [r0]
	ldrh r7, [r4]
	lsls r0, r7, #1
	adds r0, r0, r2
	adds r0, #0x40
	adds r1, #1
	strh r1, [r0]
	adds r4, #2
	adds r5, #1
	ldrh r0, [r4]
	cmp r0, #0
	bne _0801B030
_0801B05A:
	movs r0, #1
	bl sub_08004244
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801B068: .4byte 0xFFFFB000
	thumb_func_end sub_0801B014

	thumb_func_start sub_0801B06C
sub_0801B06C: @ 0x0801B06C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r7, _0801B0F4 @ =0x00008CA0
	adds r0, r4, #0
	adds r1, r7, #0
	bl Div
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl Mod
	adds r4, r0, #0
	strb r6, [r5]
	movs r7, #0xe1
	lsls r7, r7, #4
	adds r1, r7, #0
	bl Div
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl Mod
	adds r4, r0, #0
	strb r6, [r5, #1]
	movs r7, #0x96
	lsls r7, r7, #2
	adds r1, r7, #0
	bl Div
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl Mod
	adds r4, r0, #0
	strb r6, [r5, #2]
	movs r1, #0x3c
	bl Div
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #0x3c
	bl Mod
	strb r6, [r5, #3]
	movs r1, #0x64
	muls r0, r1, r0
	movs r1, #0x3c
	bl Div
	adds r4, r0, #0
	movs r1, #0xa
	bl Div
	adds r6, r0, #0
	strb r6, [r5, #4]
	adds r0, r4, #0
	movs r1, #0xa
	bl Mod
	strb r0, [r5, #5]
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801B0F4: .4byte 0x00008CA0
	thumb_func_end sub_0801B06C

	thumb_func_start sub_0801B0F8
sub_0801B0F8: @ 0x0801B0F8
	adds r1, r0, #0
	cmp r1, #0x10
	bgt _0801B102
	adds r0, #0x10
	b _0801B158
_0801B102:
	cmp r1, #0xef
	ble _0801B10C
	adds r0, r1, #0
	subs r0, #0x10
	b _0801B158
_0801B10C:
	adds r0, r1, #0
	subs r0, #0x70
	cmp r0, #0x10
	bhi _0801B118
	adds r0, #0x60
	b _0801B158
_0801B118:
	adds r0, r1, #0
	subs r0, #0x80
	cmp r0, #0x10
	bhi _0801B124
	adds r0, #0x90
	b _0801B158
_0801B124:
	adds r0, r1, #0
	subs r0, #0x38
	cmp r0, #8
	bhi _0801B130
	adds r0, #0x30
	b _0801B158
_0801B130:
	adds r0, r1, #0
	subs r0, #0x40
	cmp r0, #8
	bhi _0801B13C
	adds r0, #0x48
	b _0801B158
_0801B13C:
	adds r0, r1, #0
	subs r0, #0xb8
	cmp r0, #8
	bhi _0801B148
	adds r0, #0xb0
	b _0801B158
_0801B148:
	adds r0, r1, #0
	subs r0, #0xc0
	cmp r0, #8
	bls _0801B154
	adds r0, r1, #0
	b _0801B158
_0801B154:
	adds r0, r1, #0
	adds r0, #8
_0801B158:
	bx lr
	.align 2, 0
	thumb_func_end sub_0801B0F8

	thumb_func_start sub_0801B15C
sub_0801B15C: @ 0x0801B15C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, _0801B190 @ =gUnknown_2024A48
	ldr r0, [r0]
	movs r4, #0
	movs r2, #0xea
	lsls r2, r2, #4
	adds r1, r0, r2
	ldr r7, _0801B194 @ =0x00000EA4
	adds r3, r0, r7
	adds r7, #4
	adds r2, r0, r7
_0801B178:
	ldrh r0, [r2, #2]
	cmp r0, #0
	bne _0801B198
	str r6, [r3]
	strh r5, [r2]
	movs r0, #0x96
	lsls r0, r0, #1
	strh r0, [r2, #2]
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	b _0801B1A2
	.align 2, 0
_0801B190: .4byte gUnknown_2024A48
_0801B194: .4byte 0x00000EA4
_0801B198:
	adds r3, #8
	adds r2, #8
	adds r4, #1
	cmp r4, #0x1f
	ble _0801B178
_0801B1A2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0801B15C

	thumb_func_start sub_0801B1A8
sub_0801B1A8: @ 0x0801B1A8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0xb8
	lsls r0, r0, #4
	adds r7, r6, r0
	ldr r0, [r7]
	cmp r0, #0
	beq _0801B1DE
	subs r5, r0, #1
	str r5, [r7]
	cmp r5, #0
	bne _0801B1DE
	movs r0, #0xb6
	lsls r0, r0, #4
	adds r4, r6, r0
	ldr r0, [r4]
	ldr r1, _0801B1E4 @ =gUnknown_86FED10
	bl sub_08002350
	ldr r0, [r4]
	bl sub_08002428
	ldr r0, _0801B1E8 @ =0x00000B84
	adds r1, r6, r0
	movs r0, #2
	str r0, [r1]
	str r5, [r7]
_0801B1DE:
	pop {r0}
