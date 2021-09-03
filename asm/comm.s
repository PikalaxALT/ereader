	.include "asm/macros.inc"
	.include "constants/constants.inc"
	.text
	.syntax unified

	thumb_func_start sub_0803B634
sub_0803B634: @ 0x0803B634
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, _0803B650 @ =ovx28_3003E50
	ldrb r0, [r0, #1]
	cmp r0, #4
	bhi _0803B732
	lsls r0, r0, #2
	ldr r1, _0803B654 @ =_0803B658
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803B650: .4byte ovx28_3003E50
_0803B654: .4byte _0803B658
_0803B658: @ jump table
	.4byte _0803B66C @ case 0
	.4byte _0803B6D0 @ case 1
	.4byte _0803B6E8 @ case 2
	.4byte _0803B71C @ case 3
	.4byte _0803B726 @ case 4
_0803B66C:
	ldr r0, _0803B6AC @ =ovx28_3003E38
	ldr r2, _0803B6B0 @ =REG_IME
	ldrh r5, [r2]
	strh r5, [r0]
	movs r4, #0
	strh r4, [r2]
	ldr r3, _0803B6B4 @ =REG_IE
	ldrh r1, [r3]
	ldr r0, _0803B6B8 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r3]
	strh r5, [r2]
	ldr r0, _0803B6BC @ =REG_SIOCNT
	strh r4, [r0]
	subs r0, #0x1a
	strh r4, [r0]
	ldr r1, _0803B6C0 @ =REG_IF
	movs r0, #0xc0
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldr r1, _0803B6C4 @ =REG_DMA3
	mov r0, sp
	str r0, [r1]
	ldr r2, _0803B6C8 @ =ovx28_3003E50
	str r2, [r1, #4]
	ldr r0, _0803B6CC @ =0x850000E6
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	strb r0, [r2, #1]
	b _0803B732
	.align 2, 0
_0803B6AC: .4byte ovx28_3003E38
_0803B6B0: .4byte REG_IME
_0803B6B4: .4byte REG_IE
_0803B6B8: .4byte 0x0000FF3F
_0803B6BC: .4byte REG_SIOCNT
_0803B6C0: .4byte REG_IF
_0803B6C4: .4byte REG_DMA3
_0803B6C8: .4byte ovx28_3003E50
_0803B6CC: .4byte 0x850000E6
_0803B6D0:
	ldrb r1, [r6]
	cmp r1, #1
	bne _0803B732
	bl sub_0803B58C
	ldr r1, _0803B6E4 @ =ovx28_3003E50
	movs r0, #2
	strb r0, [r1, #1]
	b _0803B732
	.align 2, 0
_0803B6E4: .4byte ovx28_3003E50
_0803B6E8:
	ldrb r0, [r6]
	cmp r0, #1
	beq _0803B6F8
	cmp r0, #2
	beq _0803B710
	bl sub_0803BEB0
	b _0803B732
_0803B6F8:
	ldr r1, _0803B70C @ =ovx28_3003E50
	ldrb r2, [r1]
	cmp r2, #8
	bne _0803B732
	ldrb r2, [r1, #3]
	cmp r2, #1
	bls _0803B732
	strb r0, [r1, #0xe]
	b _0803B732
	.align 2, 0
_0803B70C: .4byte ovx28_3003E50
_0803B710:
	ldr r1, _0803B718 @ =ovx28_3003E50
	movs r0, #0
	strb r0, [r1, #1]
	b _0803B732
	.align 2, 0
_0803B718: .4byte ovx28_3003E50
_0803B71C:
	bl sub_0803BED8
	ldr r1, _0803B774 @ =ovx28_3003E50
	movs r0, #4
	strb r0, [r1, #1]
_0803B726:
	adds r0, r4, #0
	bl sub_0803B7AC
	adds r0, r5, #0
	bl sub_0803B8A0
_0803B732:
	movs r0, #0
	strb r0, [r6]
	ldr r0, _0803B774 @ =ovx28_3003E50
	ldrb r2, [r0, #3]
	lsls r1, r2, #2
	ldrb r2, [r0, #2]
	orrs r1, r2
	adds r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #8
	bne _0803B74C
	movs r0, #0x20
	orrs r1, r0
_0803B74C:
	ldrb r0, [r2, #0xc]
	lsls r3, r0, #8
	ldrb r0, [r2, #0xf]
	lsls r4, r0, #9
	ldrb r0, [r2, #0x10]
	lsls r5, r0, #0xc
	ldrb r0, [r2, #0x11]
	lsls r6, r0, #0xd
	ldrb r0, [r2, #0x12]
	lsls r7, r0, #0xe
	ldrb r0, [r2, #0x13]
	lsls r0, r0, #0x10
	mov ip, r0
	ldrb r0, [r2, #1]
	cmp r0, #4
	bne _0803B778
	movs r0, #0x40
	orrs r0, r3
	orrs r0, r1
	b _0803B77C
	.align 2, 0
_0803B774: .4byte ovx28_3003E50
_0803B778:
	adds r0, r1, #0
	orrs r0, r3
_0803B77C:
	orrs r0, r4
	orrs r0, r5
	orrs r0, r6
	orrs r0, r7
	mov r1, ip
	orrs r0, r1
	adds r1, r0, #0
	ldr r0, _0803B7A8 @ =ovx28_3003E40
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrb r2, [r2, #2]
	cmp r2, r0
	blt _0803B79E
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r1, r0
_0803B79E:
	adds r0, r1, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803B7A8: .4byte ovx28_3003E40
	thumb_func_end sub_0803B634

	thumb_func_start sub_0803B7AC
sub_0803B7AC: @ 0x0803B7AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r2, _0803B82C @ =ovx28_3003E38
	ldr r1, _0803B830 @ =REG_IME
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0803B834 @ =ovx28_3003E50
	adds r1, r0, #0
	adds r1, #0x91
	mov ip, r0
	ldrb r0, [r1]
	cmp r0, #4
	bhi _0803B848
	mov r0, ip
	adds r0, #0x90
	ldrb r1, [r1]
	ldrb r0, [r0]
	adds r0, r1, r0
	cmp r0, #4
	ble _0803B7E2
	subs r0, #5
_0803B7E2:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r3, #0
	ldr r5, _0803B838 @ =ovx28_3003E40
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldr r2, _0803B83C @ =ovx28_3003E22
	mov sb, r2
	ldr r2, _0803B840 @ =ovx28_3003E30
	mov sl, r2
	cmp r3, r0
	bge _0803B856
	mov r2, sb
	lsls r6, r1, #1
	ldr r0, _0803B844 @ =ovx28_3003E68
	mov r8, r0
	movs r7, #0
_0803B804:
	ldrh r1, [r4]
	ldrh r0, [r2]
	orrs r0, r1
	strh r0, [r2]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #1
	adds r0, r6, r0
	add r0, r8
	strh r1, [r0]
	strh r7, [r4]
	adds r4, #2
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r3, r0
	blt _0803B804
	b _0803B856
	.align 2, 0
_0803B82C: .4byte ovx28_3003E38
_0803B830: .4byte REG_IME
_0803B834: .4byte ovx28_3003E50
_0803B838: .4byte ovx28_3003E40
_0803B83C: .4byte ovx28_3003E22
_0803B840: .4byte ovx28_3003E30
_0803B844: .4byte ovx28_3003E68
_0803B848:
	movs r0, #1
	mov r1, ip
	strb r0, [r1, #0x12]
	ldr r2, _0803B890 @ =ovx28_3003E22
	mov sb, r2
	ldr r0, _0803B894 @ =ovx28_3003E30
	mov sl, r0
_0803B856:
	mov r1, sb
	ldrh r0, [r1]
	cmp r0, #0
	beq _0803B86E
	mov r3, ip
	adds r3, #0x91
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0
	strb r0, [r3]
	mov r2, sb
	strh r1, [r2]
_0803B86E:
	ldr r1, _0803B898 @ =REG_IME
	ldr r2, _0803B89C @ =ovx28_3003E38
	ldrh r0, [r2]
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x91
	ldrb r0, [r0]
	mov r1, sl
	strb r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B890: .4byte ovx28_3003E22
_0803B894: .4byte ovx28_3003E30
_0803B898: .4byte REG_IME
_0803B89C: .4byte ovx28_3003E38
	thumb_func_end sub_0803B7AC

	thumb_func_start sub_0803B8A0
sub_0803B8A0: @ 0x0803B8A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldr r2, _0803B910 @ =ovx28_3003E38
	ldr r1, _0803B914 @ =REG_IME
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0803B918 @ =ovx28_3003E50
	ldr r3, _0803B91C @ =0x00000395
	adds r0, r1, r3
	ldrb r0, [r0]
	mov ip, r1
	cmp r0, #0
	bne _0803B924
	movs r3, #0
	ldr r0, _0803B920 @ =ovx28_3003E40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r3, r0
	bge _0803B906
	mov sb, ip
	ldrb r7, [r1, #3]
	adds r6, r0, #0
_0803B8DA:
	movs r2, #0
	adds r5, r3, #1
	cmp r2, r7
	bhs _0803B8FE
	lsls r0, r3, #3
	mov r4, r8
	adds r3, r0, r4
	movs r4, #0
	mov r0, sb
	ldrb r1, [r0, #3]
_0803B8EE:
	lsls r0, r2, #1
	adds r0, r0, r3
	strh r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r1
	blo _0803B8EE
_0803B8FE:
	lsls r0, r5, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r6
	blt _0803B8DA
_0803B906:
	movs r0, #1
	mov r1, ip
	strb r0, [r1, #0xc]
	b _0803B9A2
	.align 2, 0
_0803B910: .4byte ovx28_3003E38
_0803B914: .4byte REG_IME
_0803B918: .4byte ovx28_3003E50
_0803B91C: .4byte 0x00000395
_0803B920: .4byte ovx28_3003E40
_0803B924:
	movs r3, #0
	ldr r0, _0803B9B8 @ =ovx28_3003E40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r3, r0
	bge _0803B97A
	mov r2, ip
	ldrb r2, [r2, #3]
	mov sl, r2
	mov sb, r0
_0803B93A:
	movs r2, #0
	adds r5, r3, #1
	cmp r2, sl
	bhs _0803B972
	lsls r0, r3, #3
	mov r4, r8
	adds r6, r0, r4
	ldr r0, _0803B9BC @ =ovx28_30041E4
	ldrb r0, [r0]
	lsls r1, r0, #1
	lsls r0, r3, #4
	adds r4, r1, r0
	ldr r1, _0803B9C0 @ =ovx28_3003E50
	ldrb r3, [r1, #3]
	ldr r7, _0803B9C4 @ =ovx28_3003EE4
_0803B958:
	lsls r0, r2, #1
	adds r1, r0, r6
	adds r0, r0, r2
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r3
	blo _0803B958
_0803B972:
	lsls r0, r5, #0x18
	lsrs r3, r0, #0x18
	cmp r3, sb
	blt _0803B93A
_0803B97A:
	mov r2, ip
	ldr r3, _0803B9C8 @ =0x00000395
	adds r0, r2, r3
	ldrb r1, [r0]
	subs r1, #1
	movs r3, #0
	strb r1, [r0]
	movs r4, #0xe5
	lsls r4, r4, #2
	adds r2, r2, r4
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0803B99E
	strb r3, [r2]
_0803B99E:
	mov r0, ip
	strb r3, [r0, #0xc]
_0803B9A2:
	ldr r1, _0803B9CC @ =REG_IME
	ldr r2, _0803B9D0 @ =ovx28_3003E38
	ldrh r0, [r2]
	strh r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803B9B8: .4byte ovx28_3003E40
_0803B9BC: .4byte ovx28_30041E4
_0803B9C0: .4byte ovx28_3003E50
_0803B9C4: .4byte ovx28_3003EE4
_0803B9C8: .4byte 0x00000395
_0803B9CC: .4byte REG_IME
_0803B9D0: .4byte ovx28_3003E38
	thumb_func_end sub_0803B8A0

	thumb_func_start sub_0803B9D4
sub_0803B9D4: @ 0x0803B9D4
	push {lr}
	ldr r2, _0803BA08 @ =ovx28_3003E50
	ldrb r0, [r2]
	cmp r0, #0
	beq _0803BA24
	ldrb r0, [r2, #1]
	cmp r0, #2
	blt _0803BA24
	cmp r0, #3
	ble _0803BA1A
	cmp r0, #4
	bne _0803BA24
	ldr r0, _0803BA0C @ =ovx28_3003E40
	movs r1, #0xd
	ldrsb r1, [r2, r1]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bgt _0803BA10
	ldrb r0, [r2, #0x10]
	cmp r0, #1
	beq _0803BA24
	movs r0, #1
	strb r0, [r2, #0x13]
	b _0803BA24
	.align 2, 0
_0803BA08: .4byte ovx28_3003E50
_0803BA0C: .4byte ovx28_3003E40
_0803BA10:
	movs r0, #0
	strb r0, [r2, #0xd]
	bl sub_0803BF40
	b _0803BA24
_0803BA1A:
	ldr r0, _0803BA28 @ =ovx28_3003E40
	ldrb r0, [r0]
	strb r0, [r2, #0xd]
	bl sub_0803BF40
_0803BA24:
	pop {r0}
	bx r0
	.align 2, 0
_0803BA28: .4byte ovx28_3003E40
	thumb_func_end sub_0803B9D4

	thumb_func_start sub_0803BA2C
sub_0803BA2C: @ 0x0803BA2C
	push {r4, lr}
	ldr r4, _0803BA58 @ =ovx28_3003E50
	ldr r0, _0803BA5C @ =REG_SIOCNT
	ldr r1, [r0]
	lsls r0, r1, #0x1a
	lsrs r0, r0, #0x1e
	strb r0, [r4, #2]
	ldrb r0, [r4, #1]
	cmp r0, #2
	beq _0803BA60
	cmp r0, #4
	bne _0803BA78
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1f
	strb r0, [r4, #0x10]
	bl sub_0803BB80
	bl sub_0803BCA8
	bl sub_0803BF88
	b _0803BA78
	.align 2, 0
_0803BA58: .4byte ovx28_3003E50
_0803BA5C: .4byte REG_SIOCNT
_0803BA60:
	bl sub_0803BAA4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803BA78
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803BA74
	movs r0, #3
	b _0803BA76
_0803BA74:
	movs r0, #4
_0803BA76:
	strb r0, [r4, #1]
_0803BA78:
	ldr r1, _0803BA98 @ =ovx28_3003E50
	ldrb r0, [r1, #0xd]
	adds r0, #1
	strb r0, [r1, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	bne _0803BA92
	ldr r0, _0803BA9C @ =ovx28_3003E34
	ldr r2, _0803BAA0 @ =0x00000395
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r0]
_0803BA92:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BA98: .4byte ovx28_3003E50
_0803BA9C: .4byte ovx28_3003E34
_0803BAA0: .4byte 0x00000395
	thumb_func_end sub_0803BA2C

	thumb_func_start sub_0803BAA4
sub_0803BAA4: @ 0x0803BAA4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r4, #0
	ldr r5, _0803BAC4 @ =0x0000FFFF
	ldr r0, _0803BAC8 @ =ovx28_3003E50
	adds r7, r0, #0
	ldrb r0, [r7, #0xe]
	cmp r0, #1
	bne _0803BAD4
	ldr r1, _0803BACC @ =REG_SIOMLT_SEND
	ldr r2, _0803BAD0 @ =0x00008FFF
	adds r0, r2, #0
	strh r0, [r1]
	b _0803BADC
	.align 2, 0
_0803BAC4: .4byte 0x0000FFFF
_0803BAC8: .4byte ovx28_3003E50
_0803BACC: .4byte REG_SIOMLT_SEND
_0803BAD0: .4byte 0x00008FFF
_0803BAD4:
	ldr r0, _0803BAFC @ =REG_SIOMLT_SEND
	ldr r1, _0803BB00 @ =ovx28_3003E40
	ldrh r1, [r1, #6]
	strh r1, [r0]
_0803BADC:
	ldr r2, _0803BB04 @ =ovx28_3003E54
	ldr r0, _0803BB08 @ =REG_SIOMLT_RECV
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	subs r1, r2, #4
	movs r0, #0
	strb r0, [r1, #0xe]
	ldr r0, _0803BB0C @ =0x00008FFF
	ldrh r1, [r1, #4]
	cmp r1, r0
	bne _0803BB10
	movs r0, #1
	b _0803BB74
	.align 2, 0
_0803BAFC: .4byte REG_SIOMLT_SEND
_0803BB00: .4byte ovx28_3003E40
_0803BB04: .4byte ovx28_3003E54
_0803BB08: .4byte REG_SIOMLT_RECV
_0803BB0C: .4byte 0x00008FFF
_0803BB10:
	movs r3, #0
	ldr r0, _0803BB3C @ =ovx28_3003E40
	movs r6, #4
	negs r6, r6
	adds r1, r6, #0
	ldrh r0, [r0, #6]
	ands r1, r0
	mov ip, r2
	ldr r0, _0803BB40 @ =0x0000FFFF
	mov r8, r0
_0803BB24:
	lsls r0, r3, #1
	add r0, ip
	ldrh r2, [r0]
	adds r0, r2, #0
	ands r0, r6
	cmp r1, r0
	beq _0803BB44
	cmp r2, r8
	beq _0803BB60
	movs r4, #0
	b _0803BB60
	.align 2, 0
_0803BB3C: .4byte ovx28_3003E40
_0803BB40: .4byte 0x0000FFFF
_0803BB44:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r2, #0
	cmp r5, r0
	bls _0803BB56
	cmp r0, #0
	beq _0803BB56
	adds r5, r2, #0
_0803BB56:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0803BB24
_0803BB60:
	strb r4, [r7, #3]
	cmp r4, #1
	bls _0803BB6E
	movs r0, #3
	ands r5, r0
	adds r0, r5, #1
	b _0803BB70
_0803BB6E:
	movs r0, #0
_0803BB70:
	strb r0, [r7, #0xf]
	movs r0, #0
_0803BB74:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0803BAA4

	thumb_func_start sub_0803BB80
sub_0803BB80: @ 0x0803BB80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803BBC8 @ =ovx28_3003E50
	ldrb r1, [r0, #0x16]
	adds r4, r0, #0
	cmp r1, #0
	bne _0803BBD0
	movs r3, #0
	ldrb r0, [r4, #3]
	cmp r3, r0
	bhs _0803BBC2
	adds r7, r4, #0
	ldrh r1, [r4, #0x14]
	ldr r6, _0803BBCC @ =REG_SIOMLT_RECV
	movs r5, #1
	adds r2, r4, #0
_0803BBA6:
	lsls r0, r3, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	cmp r1, r0
	beq _0803BBB6
	cmp r1, #0
	beq _0803BBB6
	strb r5, [r7, #0x11]
_0803BBB6:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r0, [r2, #3]
	cmp r3, r0
	blo _0803BBA6
_0803BBC2:
	movs r0, #0
	strh r0, [r4, #0x14]
	b _0803BC8C
	.align 2, 0
_0803BBC8: .4byte ovx28_3003E50
_0803BBCC: .4byte REG_SIOMLT_RECV
_0803BBD0:
	movs r2, #0xe5
	lsls r2, r2, #2
	adds r1, r4, r2
	ldr r5, _0803BC50 @ =0x00000395
	adds r0, r4, r5
	ldrb r0, [r0]
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #7
	ble _0803BBE6
	subs r0, #8
_0803BBE6:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r6, _0803BC50 @ =0x00000395
	adds r0, r4, r6
	ldrb r0, [r0]
	cmp r0, #7
	bhi _0803BC60
	movs r3, #0
	ldr r7, _0803BC54 @ =ovx28_3003E40
	mov sl, r7
	ldrb r0, [r4, #3]
	cmp r3, r0
	bhs _0803BC68
	mov ip, r4
	ldr r2, _0803BC58 @ =ovx28_3003E24
	mov r8, r2
	lsls r1, r1, #1
	mov sb, r1
_0803BC0A:
	lsls r1, r3, #1
	ldr r5, _0803BC5C @ =REG_SIOMLT_RECV
	adds r2, r1, r5
	mov r6, ip
	ldrh r6, [r6, #0x14]
	ldrh r7, [r2]
	adds r0, r6, r7
	mov r5, ip
	strh r0, [r5, #0x14]
	mov r6, r8
	ldrh r0, [r6]
	ldrh r6, [r2]
	orrs r0, r6
	mov r7, r8
	strh r0, [r7]
	ldrb r5, [r5, #0x17]
	lsls r0, r5, #4
	add r0, sb
	adds r1, r1, r3
	lsls r1, r1, #6
	adds r0, r0, r1
	mov r1, ip
	adds r1, #0x94
	adds r0, r0, r1
	ldrh r1, [r2]
	strh r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r6, ip
	ldrb r6, [r6, #3]
	cmp r3, r6
	blo _0803BC0A
	b _0803BC68
	.align 2, 0
_0803BC50: .4byte 0x00000395
_0803BC54: .4byte ovx28_3003E40
_0803BC58: .4byte ovx28_3003E24
_0803BC5C: .4byte REG_SIOMLT_RECV
_0803BC60:
	movs r0, #2
	strb r0, [r4, #0x12]
	ldr r7, _0803BC9C @ =ovx28_3003E40
	mov sl, r7
_0803BC68:
	ldrb r0, [r4, #0x17]
	adds r0, #1
	strb r0, [r4, #0x17]
	mov r1, sl
	ldrb r1, [r1]
	cmp r0, r1
	bne _0803BC8C
	ldr r2, _0803BCA0 @ =ovx28_3003E24
	ldrh r0, [r2]
	cmp r0, #0
	beq _0803BC8C
	ldr r5, _0803BCA4 @ =0x00000395
	adds r0, r4, r5
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	movs r0, #0
	strh r0, [r2]
_0803BC8C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BC9C: .4byte ovx28_3003E40
_0803BCA0: .4byte ovx28_3003E24
_0803BCA4: .4byte 0x00000395
	thumb_func_end sub_0803BB80

	thumb_func_start sub_0803BCA8
sub_0803BCA8: @ 0x0803BCA8
	push {r4, lr}
	ldr r1, _0803BCE4 @ =ovx28_3003E50
	ldr r0, _0803BCE8 @ =ovx28_3003E40
	adds r3, r1, #0
	ldrb r1, [r3, #0x16]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0803BCFA
	ldr r1, _0803BCEC @ =REG_SIOMLT_SEND
	ldrh r0, [r3, #0x14]
	strh r0, [r1]
	ldr r1, _0803BCF0 @ =ovx28_3003E20
	ldrb r2, [r1]
	cmp r2, #0
	bne _0803BCF4
	adds r1, r3, #0
	adds r1, #0x91
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	subs r1, #1
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _0803BD4A
	strb r2, [r1]
	b _0803BD4A
	.align 2, 0
_0803BCE4: .4byte ovx28_3003E50
_0803BCE8: .4byte ovx28_3003E40
_0803BCEC: .4byte REG_SIOMLT_SEND
_0803BCF0: .4byte ovx28_3003E20
_0803BCF4:
	movs r0, #0
	strb r0, [r1]
	b _0803BD4A
_0803BCFA:
	ldr r1, _0803BD20 @ =ovx28_3003E20
	ldrb r0, [r1]
	cmp r0, #0
	bne _0803BD16
	adds r0, r3, #0
	adds r0, #0x91
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803BD10
	movs r0, #1
	strb r0, [r1]
_0803BD10:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803BD28
_0803BD16:
	ldr r1, _0803BD24 @ =REG_SIOMLT_SEND
	movs r0, #0
	strh r0, [r1]
	b _0803BD44
	.align 2, 0
_0803BD20: .4byte ovx28_3003E20
_0803BD24: .4byte REG_SIOMLT_SEND
_0803BD28:
	ldr r2, _0803BD50 @ =REG_SIOMLT_SEND
	adds r1, r3, #0
	adds r1, #0x90
	ldrb r4, [r3, #0x16]
	lsls r0, r4, #2
	adds r0, r0, r4
	ldrb r1, [r1]
	adds r0, r1, r0
	lsls r0, r0, #1
	adds r1, r3, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_0803BD44:
	ldrb r0, [r3, #0x16]
	adds r0, #1
	strb r0, [r3, #0x16]
_0803BD4A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BD50: .4byte REG_SIOMLT_SEND
	thumb_func_end sub_0803BCA8

	thumb_func_start sub_0803BD54
sub_0803BD54: @ 0x0803BD54
	push {r4, r5, r6, r7, lr}
	ldr r1, _0803BDA8 @ =ovx28_3003E50
	ldr r2, _0803BDAC @ =0x00000395
	adds r0, r1, r2
	movs r2, #0
	strb r2, [r0]
	movs r3, #0xe5
	lsls r3, r3, #2
	adds r0, r1, r3
	strb r2, [r0]
	adds r7, r1, #0
	adds r7, #0x94
	ldr r6, _0803BDB0 @ =0x0000EFFF
_0803BD6E:
	movs r3, #0
	lsls r0, r2, #1
	adds r5, r2, #1
	adds r0, r0, r2
	lsls r4, r0, #6
_0803BD78:
	movs r2, #0
	adds r1, r3, #1
	lsls r3, r3, #4
_0803BD7E:
	lsls r0, r2, #1
	adds r0, r0, r3
	adds r0, r0, r4
	adds r0, r0, r7
	strh r6, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _0803BD7E
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xb
	bls _0803BD78
	lsls r0, r5, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0803BD6E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803BDA8: .4byte ovx28_3003E50
_0803BDAC: .4byte 0x00000395
_0803BDB0: .4byte 0x0000EFFF
	thumb_func_end sub_0803BD54

	thumb_func_start sub_0803BDB4
sub_0803BDB4: @ 0x0803BDB4
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0803BDFC @ =ovx28_3003E38
	ldr r2, _0803BE00 @ =REG_IME
	ldrh r5, [r2]
	strh r5, [r0]
	movs r4, #0
	strh r4, [r2]
	ldr r3, _0803BE04 @ =REG_IE
	ldrh r1, [r3]
	ldr r0, _0803BE08 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r3]
	strh r5, [r2]
	ldr r0, _0803BE0C @ =REG_SIOCNT
	strh r4, [r0]
	subs r0, #0x1a
	strh r4, [r0]
	ldr r1, _0803BE10 @ =REG_IF
	movs r0, #0xc0
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldr r1, _0803BE14 @ =REG_DMA3
	mov r0, sp
	str r0, [r1]
	ldr r0, _0803BE18 @ =ovx28_3003E50
	str r0, [r1, #4]
	ldr r0, _0803BE1C @ =0x850000E6
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803BDFC: .4byte ovx28_3003E38
_0803BE00: .4byte REG_IME
_0803BE04: .4byte REG_IE
_0803BE08: .4byte 0x0000FF3F
_0803BE0C: .4byte REG_SIOCNT
_0803BE10: .4byte REG_IF
_0803BE14: .4byte REG_DMA3
_0803BE18: .4byte ovx28_3003E50
_0803BE1C: .4byte 0x850000E6
	thumb_func_end sub_0803BDB4

	thumb_func_start sub_0803BE20
sub_0803BE20: @ 0x0803BE20
	ldr r1, _0803BE3C @ =ovx28_3003E40
	movs r0, #0xc
	strb r0, [r1]
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #1
	strh r0, [r1, #2]
	movs r0, #0x4f
	strh r0, [r1, #4]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1, #6]
	bx lr
	.align 2, 0
_0803BE3C: .4byte ovx28_3003E40
	thumb_func_end sub_0803BE20

	thumb_func_start sub_0803BE40
sub_0803BE40: @ 0x0803BE40
	push {r4, r5, lr}
	sub sp, #4
	bl sub_0803B58C
	ldr r0, _0803BE8C @ =ovx28_3003E38
	ldr r2, _0803BE90 @ =REG_IME
	ldrh r5, [r2]
	strh r5, [r0]
	movs r4, #0
	strh r4, [r2]
	ldr r3, _0803BE94 @ =REG_IE
	ldrh r1, [r3]
	ldr r0, _0803BE98 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r3]
	strh r5, [r2]
	ldr r0, _0803BE9C @ =REG_SIOCNT
	strh r4, [r0]
	subs r0, #0x1a
	strh r4, [r0]
	ldr r1, _0803BEA0 @ =REG_IF
	movs r0, #0xc0
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldr r1, _0803BEA4 @ =REG_DMA3
	mov r0, sp
	str r0, [r1]
	ldr r0, _0803BEA8 @ =ovx28_3003E50
	str r0, [r1, #4]
	ldr r0, _0803BEAC @ =0x850000E6
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803BE8C: .4byte ovx28_3003E38
_0803BE90: .4byte REG_IME
_0803BE94: .4byte REG_IE
_0803BE98: .4byte 0x0000FF3F
_0803BE9C: .4byte REG_SIOCNT
_0803BEA0: .4byte REG_IF
_0803BEA4: .4byte REG_DMA3
_0803BEA8: .4byte ovx28_3003E50
_0803BEAC: .4byte 0x850000E6
	thumb_func_end sub_0803BE40

	thumb_func_start sub_0803BEB0
sub_0803BEB0: @ 0x0803BEB0
	ldr r0, _0803BEC8 @ =REG_SIOCNT
	ldr r1, [r0]
	movs r0, #0xc
	ands r1, r0
	ldr r2, _0803BECC @ =ovx28_3003E50
	cmp r1, #8
	bne _0803BED0
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _0803BED0
	strb r1, [r2]
	b _0803BED4
	.align 2, 0
_0803BEC8: .4byte REG_SIOCNT
_0803BECC: .4byte ovx28_3003E50
_0803BED0:
	movs r0, #0
	strb r0, [r2]
_0803BED4:
	bx lr
	.align 2, 0
	thumb_func_end sub_0803BEB0

	thumb_func_start sub_0803BED8
sub_0803BED8: @ 0x0803BED8
	push {r4, lr}
	ldr r0, _0803BF18 @ =ovx28_3003E50
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803BF10
	ldr r1, _0803BF1C @ =REG_TM3CNT_L
	ldr r2, _0803BF20 @ =ovx28_3003E40
	ldr r3, _0803BF24 @ =0x0000FFFF
	adds r0, r3, #0
	ldrh r3, [r2, #4]
	subs r0, r0, r3
	strh r0, [r1]
	adds r1, #2
	movs r4, #0x40
	ldrh r0, [r2, #2]
	orrs r0, r4
	strh r0, [r1]
	ldr r0, _0803BF28 @ =ovx28_3003E38
	ldr r2, _0803BF2C @ =REG_IME
	ldrh r3, [r2]
	strh r3, [r0]
	movs r0, #0
	strh r0, [r2]
	adds r1, #0xf2
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
	strh r3, [r2]
_0803BF10:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803BF18: .4byte ovx28_3003E50
_0803BF1C: .4byte REG_TM3CNT_L
_0803BF20: .4byte ovx28_3003E40
_0803BF24: .4byte 0x0000FFFF
_0803BF28: .4byte ovx28_3003E38
_0803BF2C: .4byte REG_IME
	thumb_func_end sub_0803BED8

	thumb_func_start sub_0803BF30
sub_0803BF30: @ 0x0803BF30
	push {lr}
	bl sub_0803BF50
	bl sub_0803BF40
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0803BF30

	thumb_func_start sub_0803BF40
sub_0803BF40: @ 0x0803BF40
	ldr r0, _0803BF4C @ =REG_SIOCNT
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	bx lr
	.align 2, 0
_0803BF4C: .4byte REG_SIOCNT
	thumb_func_end sub_0803BF40

	thumb_func_start sub_0803BF50
sub_0803BF50: @ 0x0803BF50
	ldr r0, _0803BF74 @ =ovx28_3003E50
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803BF70
	ldr r2, _0803BF78 @ =REG_TM3CNT_H
	ldrh r1, [r2]
	ldr r0, _0803BF7C @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	subs r2, #2
	ldr r1, _0803BF80 @ =ovx28_3003E40
	ldr r3, _0803BF84 @ =0x0000FFFF
	adds r0, r3, #0
	ldrh r1, [r1, #4]
	subs r0, r0, r1
	strh r0, [r2]
_0803BF70:
	bx lr
	.align 2, 0
_0803BF74: .4byte ovx28_3003E50
_0803BF78: .4byte REG_TM3CNT_H
_0803BF7C: .4byte 0x0000FF7F
_0803BF80: .4byte ovx28_3003E40
_0803BF84: .4byte 0x0000FFFF
	thumb_func_end sub_0803BF50

	thumb_func_start sub_0803BF88
sub_0803BF88: @ 0x0803BF88
	ldr r1, _0803BF9C @ =ovx28_3003E50
	ldr r0, _0803BFA0 @ =ovx28_3003E40
	ldrb r2, [r1, #0x17]
	ldrb r0, [r0]
	cmp r2, r0
	bne _0803BFA4
	movs r0, #0
	strb r0, [r1, #0x16]
	strb r0, [r1, #0x17]
	b _0803BFB4
	.align 2, 0
_0803BF9C: .4byte ovx28_3003E50
_0803BFA0: .4byte ovx28_3003E40
_0803BFA4:
	ldrb r0, [r1]
	cmp r0, #0
	beq _0803BFB4
	ldr r0, _0803BFB8 @ =REG_TM3CNT_H
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
_0803BFB4:
	bx lr
	.align 2, 0
_0803BFB8: .4byte REG_TM3CNT_H
	thumb_func_end sub_0803BF88

	thumb_func_start sub_0803BFBC
sub_0803BFBC: @ 0x0803BFBC
	push {r4, r5, lr}
	ldr r2, _0803BFFC @ =ovx28_3003E50
	adds r0, r2, #0
	adds r0, #0x91
	movs r1, #0
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	adds r5, r2, #0
	adds r5, #0x18
	ldr r4, _0803C000 @ =0x0000EFFF
_0803BFD2:
	movs r2, #0
	lsls r0, r1, #2
	adds r3, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #1
_0803BFDC:
	lsls r0, r2, #1
	adds r0, r0, r1
	adds r0, r0, r5
	strh r4, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _0803BFDC
	lsls r0, r3, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0xb
	bls _0803BFD2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803BFFC: .4byte ovx28_3003E50
_0803C000: .4byte 0x0000EFFF
	thumb_func_end sub_0803BFBC
