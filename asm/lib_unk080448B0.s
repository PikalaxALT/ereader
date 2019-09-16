	.include "asm/macros.inc"
	.include "constants/constants.inc"
	.text
	.syntax unified
	.align 2, 0

	thumb_func_start sub_080448B0
sub_080448B0: @ 0x080448B0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r1, r0, #0
	ldr r4, [r1, #0xc]
	ldr r5, [r1, #0x10]
	ldr r7, [r1, #4]
	movs r6, #0
	movs r2, #0
	ldr r0, [r1]
	cmp r0, #1
	bhi _080448C8
	movs r2, #1
_080448C8:
	cmp r2, #0
	beq _080448E8
	ldr r6, _080448DC @ =0x000007FF
	ldr r2, _080448E0 @ =0x00000000
	ldr r3, _080448E4 @ =0x00080000
	adds r0, r4, #0
	adds r1, r5, #0
	orrs r1, r3
	b _080449A0
	.align 2, 0
_080448DC: .4byte 0x000007FF
_080448E0: .4byte 0x00000000
_080448E4: .4byte 0x00080000
_080448E8:
	movs r2, #0
	cmp r0, #4
	bne _080448F0
	movs r2, #1
_080448F0:
	cmp r2, #0
	bne _0804493C
	movs r2, #0
	cmp r0, #2
	bne _080448FC
	movs r2, #1
_080448FC:
	cmp r2, #0
	beq _08044906
	movs r4, #0
	movs r5, #0
	b _080449A4
_08044906:
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _080449A4
	ldr r2, [r1, #8]
	ldr r0, _08044924 @ =0xFFFFFC02
	cmp r2, r0
	bge _08044936
	subs r2, r0, r2
	cmp r2, #0x38
	ble _08044928
	movs r4, #0
	movs r5, #0
	b _08044996
	.align 2, 0
_08044924: .4byte 0xFFFFFC02
_08044928:
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08046AB0
	adds r5, r1, #0
	adds r4, r0, #0
	b _08044996
_08044936:
	ldr r0, _08044944 @ =0x000003FF
	cmp r2, r0
	ble _0804494C
_0804493C:
	ldr r6, _08044948 @ =0x000007FF
	movs r4, #0
	movs r5, #0
	b _080449A4
	.align 2, 0
_08044944: .4byte 0x000003FF
_08044948: .4byte 0x000007FF
_0804494C:
	ldr r0, _08044974 @ =0x000003FF
	adds r6, r2, r0
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _08044978
	cmp r2, #0
	bne _08044978
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	beq _08044980
	movs r0, #0x80
	movs r1, #0
	b _0804497C
	.align 2, 0
_08044974: .4byte 0x000003FF
_08044978:
	movs r0, #0x7f
	movs r1, #0
_0804497C:
	adds r4, r4, r0
	adcs r5, r1
_08044980:
	ldr r0, _080449E4 @ =0x1FFFFFFF
	cmp r5, r0
	bls _08044996
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, #1
_08044996:
	lsls r3, r5, #0x18
	lsrs r2, r4, #8
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #8
_080449A0:
	adds r5, r1, #0
	adds r4, r0, #0
_080449A4:
	str r4, [sp]
	ldr r2, _080449E8 @ =0x000FFFFF
	ands r2, r5
	ldr r0, [sp, #4]
	ldr r1, _080449EC @ =0xFFF00000
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r2, sp
	ldr r1, _080449F0 @ =0x000007FF
	adds r0, r1, #0
	ands r6, r0
	lsls r1, r6, #4
	ldr r0, _080449F4 @ =0xFFFF800F
	ldrh r3, [r2, #6]
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r1, r7, #7
	movs r0, #0x7f
	ldrb r3, [r2, #7]
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #7]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080449E4: .4byte 0x1FFFFFFF
_080449E8: .4byte 0x000FFFFF
_080449EC: .4byte 0xFFF00000
_080449F0: .4byte 0x000007FF
_080449F4: .4byte 0xFFFF800F
	thumb_func_end sub_080448B0

	thumb_func_start sub_080449F8
sub_080449F8: @ 0x080449F8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r6, r1, #0
	ldr r1, [r2, #4]
	str r1, [sp]
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r2, sp
	adds r4, r1, #0
	lsls r0, r0, #0xc
	lsrs r5, r0, #0xc
	ldrh r3, [r2, #6]
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x15
	ldrb r2, [r2, #7]
	lsrs r0, r2, #7
	str r0, [r6, #4]
	cmp r3, #0
	bne _08044A6C
	orrs r1, r5
	cmp r1, #0
	bne _08044A2C
	movs r0, #2
	str r0, [r6]
	b _08044AC0
_08044A2C:
	ldr r0, _08044A64 @ =0xFFFFFC02
	str r0, [r6, #8]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #3
	str r0, [r6]
	ldr r0, _08044A68 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _08044A9C
	adds r7, r0, #0
_08044A4A:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r6, #8]
	subs r0, #1
	str r0, [r6, #8]
	cmp r5, r7
	bls _08044A4A
	b _08044A9C
	.align 2, 0
_08044A64: .4byte 0xFFFFFC02
_08044A68: .4byte 0x0FFFFFFF
_08044A6C:
	ldr r0, _08044A80 @ =0x000007FF
	cmp r3, r0
	bne _08044AA2
	orrs r1, r5
	cmp r1, #0
	bne _08044A84
	movs r0, #4
	str r0, [r6]
	b _08044AC0
	.align 2, 0
_08044A80: .4byte 0x000007FF
_08044A84:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r0, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	cmp r1, #0
	beq _08044A9A
	movs r0, #1
	str r0, [r6]
	b _08044A9C
_08044A9A:
	str r1, [r6]
_08044A9C:
	str r4, [r6, #0xc]
	str r5, [r6, #0x10]
	b _08044AC0
_08044AA2:
	ldr r1, _08044AC4 @ =0xFFFFFC01
	adds r0, r3, r1
	str r0, [r6, #8]
	movs r0, #3
	str r0, [r6]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	ldr r2, _08044AC8 @ =0x00000000
	ldr r3, _08044ACC @ =0x10000000
	orrs r1, r3
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
_08044AC0:
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08044AC4: .4byte 0xFFFFFC01
_08044AC8: .4byte 0x00000000
_08044ACC: .4byte 0x10000000
	thumb_func_end sub_080449F8

	thumb_func_start sub_08044AD0
sub_08044AD0: @ 0x08044AD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	mov sl, r2
	movs r0, #0
	ldr r2, [r3]
	cmp r2, #1
	bhi _08044AEC
	movs r0, #1
_08044AEC:
	cmp r0, #0
	beq _08044AF4
_08044AF0:
	adds r0, r3, #0
	b _08044D2C
_08044AF4:
	movs r1, #0
	ldr r0, [r4]
	cmp r0, #1
	bhi _08044AFE
	movs r1, #1
_08044AFE:
	cmp r1, #0
	bne _08044B76
	movs r1, #0
	cmp r2, #4
	bne _08044B0A
	movs r1, #1
_08044B0A:
	cmp r1, #0
	beq _08044B2C
	movs r1, #0
	cmp r0, #4
	bne _08044B16
	movs r1, #1
_08044B16:
	cmp r1, #0
	beq _08044AF0
	ldr r1, [r3, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _08044AF0
	ldr r0, _08044B28 @ =gUnknown_2033BD8
	b _08044D2C
	.align 2, 0
_08044B28: .4byte gUnknown_2033BD8
_08044B2C:
	movs r1, #0
	cmp r0, #4
	bne _08044B34
	movs r1, #1
_08044B34:
	cmp r1, #0
	bne _08044B76
	movs r1, #0
	cmp r0, #2
	bne _08044B40
	movs r1, #1
_08044B40:
	cmp r1, #0
	beq _08044B68
	movs r0, #0
	cmp r2, #2
	bne _08044B4C
	movs r0, #1
_08044B4C:
	cmp r0, #0
	beq _08044AF0
	mov r1, sl
	adds r0, r3, #0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	ldr r0, [r3, #4]
	ldr r1, [r4, #4]
	ands r0, r1
	mov r6, sl
	str r0, [r6, #4]
	b _08044D2A
_08044B68:
	movs r1, #0
	ldr r0, [r3]
	cmp r0, #2
	bne _08044B72
	movs r1, #1
_08044B72:
	cmp r1, #0
	beq _08044B7A
_08044B76:
	adds r0, r4, #0
	b _08044D2C
_08044B7A:
	ldr r0, [r3, #8]
	mov sb, r0
	ldr r1, [r4, #8]
	mov r8, r1
	ldr r6, [r3, #0xc]
	ldr r7, [r3, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, sb
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0
	bge _08044B9A
	negs r0, r0
_08044B9A:
	cmp r0, #0x3f
	bgt _08044C18
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
	cmp sb, r8
	ble _08044BE4
	mov r3, sb
	mov r4, r8
	subs r3, r3, r4
	mov r8, r3
_08044BB2:
	movs r5, #1
	negs r5, r5
	add r8, r5
	ldr r2, [sp]
	movs r0, #1
	ands r2, r0
	movs r3, #0
	ldr r1, [sp, #4]
	lsls r5, r1, #0x1f
	ldr r0, [sp]
	lsrs r4, r0, #1
	adds r0, r5, #0
	orrs r0, r4
	adds r4, r1, #0
	lsrs r1, r4, #1
	adds r5, r2, #0
	orrs r5, r0
	str r5, [sp]
	adds r4, r3, #0
	orrs r4, r1
	str r4, [sp, #4]
	mov r5, r8
	cmp r5, #0
	bne _08044BB2
	mov r8, sb
_08044BE4:
	cmp r8, sb
	ble _08044C34
	mov r0, r8
	mov r1, sb
	subs r0, r0, r1
	mov sb, r0
_08044BF0:
	movs r2, #1
	negs r2, r2
	add sb, r2
	movs r2, #1
	ands r2, r6
	movs r3, #0
	lsls r5, r7, #0x1f
	lsrs r4, r6, #1
	adds r0, r5, #0
	orrs r0, r4
	lsrs r1, r7, #1
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r3, #0
	orrs r7, r1
	mov r3, sb
	cmp r3, #0
	bne _08044BF0
	mov sb, r8
	b _08044C34
_08044C18:
	cmp sb, r8
	ble _08044C26
	movs r0, #0
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	b _08044C2C
_08044C26:
	mov sb, r8
	movs r6, #0
	movs r7, #0
_08044C2C:
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
_08044C34:
	ldr r1, [sp, #8]
	cmp ip, r1
	beq _08044CDC
	mov r2, ip
	cmp r2, #0
	beq _08044C56
	adds r1, r7, #0
	adds r0, r6, #0
	bl sub_08046B54
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r4, [sp]
	ldr r5, [sp, #4]
	adds r2, r2, r4
	adcs r3, r5
	b _08044C62
_08044C56:
	adds r3, r7, #0
	adds r2, r6, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	subs r2, r2, r0
	sbcs r3, r1
_08044C62:
	cmp r3, #0
	blt _08044C78
	movs r0, #0
	mov r1, sl
	str r0, [r1, #4]
	mov r4, sb
	str r4, [r1, #8]
	mov r5, sl
	str r2, [r5, #0xc]
	str r3, [r5, #0x10]
	b _08044C90
_08044C78:
	movs r0, #1
	mov r6, sl
	str r0, [r6, #4]
	mov r0, sb
	str r0, [r6, #8]
	adds r1, r3, #0
	adds r0, r2, #0
	bl sub_08046B54
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_08044C90:
	mov r4, sl
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	movs r0, #1
	negs r0, r0
	asrs r1, r0, #0x1f
_08044C9C:
	adds r2, r2, r0
	adcs r3, r1
	ldr r0, _08044CD8 @ =0x0FFFFFFF
	cmp r3, r0
	bhi _08044CF4
	cmp r3, r0
	bne _08044CB2
	movs r0, #2
	negs r0, r0
	cmp r2, r0
	bhi _08044CF4
_08044CB2:
	mov r5, sl
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	mov r6, sl
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
	ldr r2, [r6, #8]
	subs r2, #1
	str r2, [r6, #8]
	movs r2, #1
	negs r2, r2
	asrs r3, r2, #0x1f
	b _08044C9C
	.align 2, 0
_08044CD8: .4byte 0x0FFFFFFF
_08044CDC:
	mov r0, ip
	mov r1, sl
	str r0, [r1, #4]
	mov r2, sb
	str r2, [r1, #8]
	ldr r3, [sp]
	ldr r4, [sp, #4]
	adds r6, r6, r3
	adcs r7, r4
	mov r4, sl
	str r6, [r4, #0xc]
	str r7, [r4, #0x10]
_08044CF4:
	movs r0, #3
	mov r5, sl
	str r0, [r5]
	ldr r1, [r5, #0x10]
	ldr r0, _08044D38 @ =0x1FFFFFFF
	cmp r1, r0
	bls _08044D2A
	ldr r4, [r5, #0xc]
	ldr r5, [r5, #0x10]
	movs r2, #1
	adds r0, r4, #0
	ands r0, r2
	movs r1, #0
	lsls r6, r5, #0x1f
	mov r8, r6
	lsrs r6, r4, #1
	mov r2, r8
	orrs r2, r6
	lsrs r3, r5, #1
	orrs r0, r2
	orrs r1, r3
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
_08044D2A:
	mov r0, sl
_08044D2C:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08044D38: .4byte 0x1FFFFFFF
	thumb_func_end sub_08044AD0

	thumb_func_start sub_08044D3C
sub_08044D3C: @ 0x08044D3C
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl sub_080449F8
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_080449F8
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl sub_08044AD0
	bl sub_080448B0
	add sp, #0x4c
	pop {r4, pc}
	thumb_func_end sub_08044D3C

	thumb_func_start sub_08044D6C
sub_08044D6C: @ 0x08044D6C
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl sub_080449F8
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_080449F8
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl sub_08044AD0
	bl sub_080448B0
	add sp, #0x4c
	pop {r4, pc}
	thumb_func_end sub_08044D6C

	thumb_func_start sub_08044DA4
sub_08044DA4: @ 0x08044DA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl sub_080449F8
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_080449F8
	mov r8, sp
	add r0, sp, #0x28
	mov sl, r0
	movs r0, #0
	ldr r1, [sp]
	cmp r1, #1
	bhi _08044DDA
	movs r0, #1
_08044DDA:
	cmp r0, #0
	bne _08044E3E
	movs r2, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08044DE8
	movs r2, #1
_08044DE8:
	cmp r2, #0
	beq _08044DF0
	ldr r0, [sp, #4]
	b _08044E60
_08044DF0:
	movs r2, #0
	cmp r1, #4
	bne _08044DF8
	movs r2, #1
_08044DF8:
	cmp r2, #0
	beq _08044E0A
	movs r1, #0
	cmp r0, #2
	bne _08044E04
	movs r1, #1
_08044E04:
	cmp r1, #0
	bne _08044E22
	b _08044E3E
_08044E0A:
	movs r2, #0
	cmp r0, #4
	bne _08044E12
	movs r2, #1
_08044E12:
	cmp r2, #0
	beq _08044E32
	movs r0, #0
	cmp r1, #2
	bne _08044E1E
	movs r0, #1
_08044E1E:
	cmp r0, #0
	beq _08044E2C
_08044E22:
	ldr r0, _08044E28 @ =gUnknown_2033BD8
	b _0804502A
	.align 2, 0
_08044E28: .4byte gUnknown_2033BD8
_08044E2C:
	mov r1, r8
	ldr r0, [r1, #4]
	b _08044E60
_08044E32:
	movs r2, #0
	cmp r1, #2
	bne _08044E3A
	movs r2, #1
_08044E3A:
	cmp r2, #0
	beq _08044E50
_08044E3E:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _0804502A
_08044E50:
	movs r1, #0
	cmp r0, #2
	bne _08044E58
	movs r1, #1
_08044E58:
	cmp r1, #0
	beq _08044E70
	mov r2, r8
	ldr r0, [r2, #4]
_08044E60:
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x18]
	adds r0, r4, #0
	b _0804502A
_08044E70:
	mov r4, r8
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	adds r6, r0, #0
	movs r7, #0
	str r1, [sp, #0x4c]
	movs r5, #0
	str r5, [sp, #0x50]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r4, r0, #0
	str r1, [sp, #0x54]
	movs r0, #0
	str r0, [sp, #0x58]
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_08046AE4
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_08046AE4
	adds r7, r1, #0
	adds r6, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl sub_08046AE4
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl sub_08046AE4
	str r0, [sp, #0x64]
	str r1, [sp, #0x68]
	movs r1, #0
	movs r2, #0
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	adds r3, r7, #0
	adds r2, r6, #0
	adds r2, r2, r4
	adcs r3, r5
	cmp r7, r3
	bhi _08044EE8
	cmp r7, r3
	bne _08044EF0
	cmp r6, r2
	bls _08044EF0
_08044EE8:
	ldr r5, _08045040 @ =0x00000001
	ldr r4, _0804503C @ =0x00000000
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_08044EF0:
	adds r1, r2, #0
	movs r6, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	adds r6, r6, r0
	adcs r7, r1
	cmp r1, r7
	bhi _08044F0C
	ldr r1, [sp, #0x60]
	cmp r1, r7
	bne _08044F1C
	cmp r0, r6
	bls _08044F1C
_08044F0C:
	movs r0, #1
	movs r1, #0
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	adds r4, r4, r0
	adcs r5, r1
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_08044F1C:
	adds r0, r3, #0
	adds r2, r0, #0
	movs r3, #0
	adds r5, r3, #0
	adds r4, r2, #0
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	adds r4, r4, r0
	adcs r5, r1
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	adds r4, r4, r1
	adcs r5, r2
	mov r0, r8
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x30]
	mov r0, r8
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x18]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x2c]
	adds r2, #4
	str r2, [sp, #0x30]
	ldr r0, _08045044 @ =0x1FFFFFFF
	cmp r5, r0
	bls _08044F9E
	movs r1, #1
	mov sb, r1
	mov r8, r0
	mov ip, r2
_08044F62:
	movs r2, #1
	add ip, r2
	mov r0, sb
	ands r0, r4
	cmp r0, #0
	beq _08044F88
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	adds r0, r6, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r7
	adds r7, r1, #0
	adds r6, r0, #0
_08044F88:
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, r8
	bhi _08044F62
	mov r0, ip
	str r0, [sp, #0x30]
_08044F9E:
	ldr r0, _08045048 @ =0x0FFFFFFF
	cmp r5, r0
	bhi _08044FF0
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov sb, r1
	mov r8, r0
	ldr r2, [sp, #0x30]
	mov ip, r2
_08044FB0:
	movs r0, #1
	negs r0, r0
	add ip, r0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0
	mov r1, sb
	ands r1, r7
	orrs r0, r1
	cmp r0, #0
	beq _08044FDA
	movs r0, #1
	orrs r0, r4
	adds r1, r5, #0
	adds r5, r1, #0
	adds r4, r0, #0
_08044FDA:
	lsrs r3, r6, #0x1f
	lsls r2, r7, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r6, #1
	adds r7, r1, #0
	adds r6, r0, #0
	cmp r5, r8
	bls _08044FB0
	mov r1, ip
	str r1, [sp, #0x30]
_08044FF0:
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _0804501E
	cmp r2, #0
	bne _0804501E
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _08045016
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	beq _0804501E
_08045016:
	movs r0, #0x80
	movs r1, #0
	adds r4, r4, r0
	adcs r5, r1
_0804501E:
	str r4, [sp, #0x34]
	str r5, [sp, #0x38]
	movs r0, #3
	mov r2, sl
	str r0, [r2]
	add r0, sp, #0x28
_0804502A:
	bl sub_080448B0
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0804503C: .4byte 0x00000000
_08045040: .4byte 0x00000001
_08045044: .4byte 0x1FFFFFFF
_08045048: .4byte 0x0FFFFFFF
	thumb_func_end sub_08044DA4

	thumb_func_start sub_0804504C
sub_0804504C: @ 0x0804504C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_080449F8
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_080449F8
	mov ip, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _08045076
	movs r0, #1
_08045076:
	cmp r0, #0
	beq _0804507E
	mov r1, sp
	b _080451C0
_0804507E:
	movs r0, #0
	ldr r2, [sp, #0x14]
	adds r5, r2, #0
	cmp r2, #1
	bhi _0804508A
	movs r0, #1
_0804508A:
	cmp r0, #0
	beq _08045092
	adds r1, r4, #0
	b _080451C0
_08045092:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _080450A2
	movs r0, #1
_080450A2:
	cmp r0, #0
	bne _080450B2
	movs r4, #0
	cmp r3, #2
	bne _080450AE
	movs r4, #1
_080450AE:
	cmp r4, #0
	beq _080450C4
_080450B2:
	mov r1, ip
	ldr r0, [r1]
	cmp r0, r5
	beq _080450BC
	b _080451C0
_080450BC:
	ldr r1, _080450C0 @ =gUnknown_2033BD8
	b _080451C0
	.align 2, 0
_080450C0: .4byte gUnknown_2033BD8
_080450C4:
	movs r0, #0
	cmp r2, #4
	bne _080450CC
	movs r0, #1
_080450CC:
	cmp r0, #0
	beq _080450DE
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #8]
	mov r1, sp
	b _080451C0
_080450DE:
	movs r0, #0
	cmp r2, #2
	bne _080450E6
	movs r0, #1
_080450E6:
	cmp r0, #0
	beq _080450F2
	movs r0, #4
	mov r2, ip
	str r0, [r2]
	b _080451BE
_080450F2:
	mov r3, ip
	ldr r1, [r3, #8]
	ldr r0, [sp, #0x1c]
	subs r6, r1, r0
	str r6, [r3, #8]
	ldr r4, [r3, #0xc]
	ldr r5, [r3, #0x10]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x38]
	str r1, [sp, #0x3c]
	cmp r1, r5
	bhi _08045116
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bne _0804512A
	cmp r0, r4
	bls _0804512A
_08045116:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	subs r0, r6, #1
	mov r2, ip
	str r0, [r2, #8]
_0804512A:
	ldr r7, _080451D0 @ =0x10000000
	ldr r6, _080451CC @ =0x00000000
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_08045136:
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bhi _0804515A
	cmp r1, r5
	bne _08045146
	ldr r2, [sp, #0x38]
	cmp r2, r4
	bhi _0804515A
_08045146:
	ldr r0, [sp, #0x40]
	orrs r0, r6
	ldr r1, [sp, #0x44]
	orrs r1, r7
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	subs r4, r4, r0
	sbcs r5, r1
_0804515A:
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	bne _08045136
	movs r0, #0xff
	ldr r1, [sp, #0x40]
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _080451B4
	cmp r2, #0
	bne _080451B4
	adds r0, #1
	ldr r1, [sp, #0x40]
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _080451A4
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _080451B4
_080451A4:
	movs r0, #0x80
	movs r1, #0
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
_080451B4:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	mov r2, ip
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_080451BE:
	mov r1, ip
_080451C0:
	adds r0, r1, #0
	bl sub_080448B0
	add sp, #0x48
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080451CC: .4byte 0x00000000
_080451D0: .4byte 0x10000000
	thumb_func_end sub_0804504C

	thumb_func_start sub_080451D4
sub_080451D4: @ 0x080451D4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0
	ldr r1, [r5]
	cmp r1, #1
	bhi _080451E4
	movs r0, #1
_080451E4:
	cmp r0, #0
	bne _080451F6
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _080451F2
	movs r0, #1
_080451F2:
	cmp r0, #0
	beq _080451FA
_080451F6:
	movs r0, #1
	b _080452D0
_080451FA:
	movs r0, #0
	cmp r1, #4
	bne _08045202
	movs r0, #1
_08045202:
	cmp r0, #0
	beq _0804521A
	movs r0, #0
	cmp r2, #4
	bne _0804520E
	movs r0, #1
_0804520E:
	cmp r0, #0
	beq _0804521A
	ldr r0, [r6, #4]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	b _080452D0
_0804521A:
	movs r1, #0
	ldr r0, [r5]
	cmp r0, #4
	bne _08045224
	movs r1, #1
_08045224:
	cmp r1, #0
	bne _08045272
	movs r1, #0
	cmp r2, #4
	bne _08045230
	movs r1, #1
_08045230:
	cmp r1, #0
	beq _08045242
_08045234:
	ldr r0, [r6, #4]
	movs r1, #1
	negs r1, r1
	cmp r0, #0
	beq _0804527C
	movs r1, #1
	b _0804527C
_08045242:
	movs r1, #0
	cmp r0, #2
	bne _0804524A
	movs r1, #1
_0804524A:
	cmp r1, #0
	beq _0804525A
	movs r1, #0
	cmp r2, #2
	bne _08045256
	movs r1, #1
_08045256:
	cmp r1, #0
	bne _080452CE
_0804525A:
	movs r1, #0
	cmp r0, #2
	bne _08045262
	movs r1, #1
_08045262:
	cmp r1, #0
	bne _08045234
	movs r0, #0
	cmp r2, #2
	bne _0804526E
	movs r0, #1
_0804526E:
	cmp r0, #0
	beq _08045280
_08045272:
	ldr r0, [r5, #4]
	movs r1, #1
	cmp r0, #0
	beq _0804527C
	subs r1, #2
_0804527C:
	adds r0, r1, #0
	b _080452D0
_08045280:
	ldr r0, [r6, #4]
	ldr r4, [r5, #4]
	cmp r4, r0
	beq _08045292
_08045288:
	movs r0, #1
	cmp r4, #0
	beq _080452D0
	subs r0, #2
	b _080452D0
_08045292:
	ldr r1, [r5, #8]
	ldr r0, [r6, #8]
	cmp r1, r0
	bgt _08045288
	cmp r1, r0
	bge _080452AA
_0804529E:
	movs r0, #1
	negs r0, r0
	cmp r4, #0
	beq _080452D0
	movs r0, #1
	b _080452D0
_080452AA:
	ldr r3, [r5, #0x10]
	ldr r2, [r6, #0x10]
	cmp r3, r2
	bhi _08045288
	cmp r3, r2
	bne _080452BE
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bhi _08045288
_080452BE:
	cmp r2, r3
	bhi _0804529E
	cmp r2, r3
	bne _080452CE
	ldr r1, [r6, #0xc]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bhi _0804529E
_080452CE:
	movs r0, #0
_080452D0:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_080451D4

	thumb_func_start sub_080452D4
sub_080452D4: @ 0x080452D4
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_080449F8
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_080449F8
	mov r0, sp
	adds r1, r4, #0
	bl sub_080451D4
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_080452D4

	thumb_func_start sub_08045300
sub_08045300: @ 0x08045300
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_080449F8
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_080449F8
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08045328
	movs r1, #1
_08045328:
	cmp r1, #0
	bne _0804533A
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08045336
	movs r1, #1
_08045336:
	cmp r1, #0
	beq _0804533E
_0804533A:
	movs r0, #1
	b _08045346
_0804533E:
	mov r0, sp
	adds r1, r4, #0
	bl sub_080451D4
_08045346:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_08045300

	thumb_func_start sub_0804534C
sub_0804534C: @ 0x0804534C
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_080449F8
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_080449F8
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08045374
	movs r1, #1
_08045374:
	cmp r1, #0
	bne _08045386
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08045382
	movs r1, #1
_08045382:
	cmp r1, #0
	beq _0804538A
_08045386:
	movs r0, #1
	b _08045392
_0804538A:
	mov r0, sp
	adds r1, r4, #0
	bl sub_080451D4
_08045392:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0804534C

	thumb_func_start sub_08045398
sub_08045398: @ 0x08045398
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_080449F8
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_080449F8
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080453C0
	movs r1, #1
_080453C0:
	cmp r1, #0
	bne _080453D2
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080453CE
	movs r1, #1
_080453CE:
	cmp r1, #0
	beq _080453D8
_080453D2:
	movs r0, #1
	negs r0, r0
	b _080453E0
_080453D8:
	mov r0, sp
	adds r1, r4, #0
	bl sub_080451D4
_080453E0:
	add sp, #0x38
	pop {r4, pc}
	thumb_func_end sub_08045398

	thumb_func_start sub_080453E4
sub_080453E4: @ 0x080453E4
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_080449F8
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_080449F8
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _0804540C
	movs r1, #1
_0804540C:
	cmp r1, #0
	bne _0804541E
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _0804541A
	movs r1, #1
_0804541A:
	cmp r1, #0
	beq _08045424
_0804541E:
	movs r0, #1
	negs r0, r0
	b _0804542C
_08045424:
	mov r0, sp
	adds r1, r4, #0
	bl sub_080451D4
_0804542C:
	add sp, #0x38
	pop {r4, pc}
	thumb_func_end sub_080453E4

	thumb_func_start sub_08045430
sub_08045430: @ 0x08045430
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_080449F8
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_080449F8
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08045458
	movs r1, #1
_08045458:
	cmp r1, #0
	bne _0804546A
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08045466
	movs r1, #1
_08045466:
	cmp r1, #0
	beq _0804546E
_0804546A:
	movs r0, #1
	b _08045476
_0804546E:
	mov r0, sp
	adds r1, r4, #0
	bl sub_080451D4
_08045476:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_08045430

	thumb_func_start sub_0804547C
sub_0804547C: @ 0x0804547C
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl sub_080449F8
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl sub_080449F8
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080454A4
	movs r1, #1
_080454A4:
	cmp r1, #0
	bne _080454B6
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080454B2
	movs r1, #1
_080454B2:
	cmp r1, #0
	beq _080454BA
_080454B6:
	movs r0, #1
	b _080454C2
_080454BA:
	mov r0, sp
	adds r1, r4, #0
	bl sub_080451D4
_080454C2:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0804547C

	thumb_func_start sub_080454C8
sub_080454C8: @ 0x080454C8
	push {r4, r5, lr}
	sub sp, #0x14
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r1, r2, #0x1f
	str r1, [sp, #4]
	cmp r2, #0
	bne _080454E0
	movs r0, #2
	str r0, [sp]
	b _08045536
_080454E0:
	movs r0, #0x3c
	str r0, [sp, #8]
	cmp r1, #0
	beq _08045506
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r2, r0
	bne _08045500
	ldr r1, _080454FC @ =0x00000000
	ldr r0, _080454F8 @ =0xC1E00000
	b _0804553C
	.align 2, 0
_080454F8: .4byte 0xC1E00000
_080454FC: .4byte 0x00000000
_08045500:
	rsbs r0, r2, #0
	asrs r1, r0, #0x1f
	b _0804550A
_08045506:
	adds r0, r2, #0
	asrs r1, r2, #0x1f
_0804550A:
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, _08045540 @ =0x0FFFFFFF
	cmp r0, r1
	bhi _08045536
	adds r5, r1, #0
	ldr r4, [sp, #8]
_0804551A:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	subs r4, #1
	ldr r0, [sp, #0x10]
	cmp r0, r5
	bls _0804551A
	str r4, [sp, #8]
_08045536:
	mov r0, sp
	bl sub_080448B0
_0804553C:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_08045540: .4byte 0x0FFFFFFF
	thumb_func_end sub_080454C8

	thumb_func_start sub_08045544
sub_08045544: @ 0x08045544
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl sub_080449F8
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _0804555E
	movs r1, #1
_0804555E:
	cmp r1, #0
	bne _08045592
	movs r1, #0
	cmp r0, #1
	bhi _0804556A
	movs r1, #1
_0804556A:
	cmp r1, #0
	bne _08045592
	movs r1, #0
	cmp r0, #4
	bne _08045576
	movs r1, #1
_08045576:
	cmp r1, #0
	beq _0804558C
_0804557A:
	ldr r0, [sp, #4]
	ldr r1, _08045588 @ =0x7FFFFFFF
	cmp r0, #0
	beq _080455B0
	adds r1, #1
	b _080455B0
	.align 2, 0
_08045588: .4byte 0x7FFFFFFF
_0804558C:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _08045596
_08045592:
	movs r0, #0
	b _080455B2
_08045596:
	cmp r0, #0x1e
	bgt _0804557A
	movs r2, #0x3c
	subs r2, r2, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl sub_08046AB0
	adds r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _080455B0
	negs r1, r1
_080455B0:
	adds r0, r1, #0
_080455B2:
	add sp, #0x1c
	pop {pc}
	.align 2, 0
	thumb_func_end sub_08045544

	thumb_func_start sub_080455B8
sub_080455B8: @ 0x080455B8
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl sub_080449F8
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _080455D2
	movs r1, #1
_080455D2:
	str r1, [sp, #4]
	mov r0, sp
	bl sub_080448B0
	add sp, #0x1c
	pop {pc}
	.align 2, 0
	thumb_func_end sub_080455B8

	thumb_func_start sub_080455E0
sub_080455E0: @ 0x080455E0
	sub sp, #4
	push {r4, lr}
	sub sp, #0x14
	str r3, [sp, #0x1c]
	ldr r3, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, sp
	bl sub_080448B0
	add sp, #0x14
	pop {r4}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0
	thumb_func_end sub_080455E0

	thumb_func_start sub_08045608
sub_08045608: @ 0x08045608
	push {r4, r5, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl sub_080449F8
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsls r5, r3, #2
	lsrs r4, r2, #0x1e
	adds r0, r5, #0
	orrs r0, r4
	adds r5, r0, #0
	ldr r4, _08045648 @ =0x3FFFFFFF
	adds r0, r2, #0
	ands r0, r4
	movs r1, #0
	orrs r0, r1
	cmp r0, #0
	beq _08045638
	movs r0, #1
	orrs r5, r0
_08045638:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r3, r5, #0
	bl sub_08045F54
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
_08045648: .4byte 0x3FFFFFFF
	thumb_func_end sub_08045608

	thumb_func_start sub_0804564C
sub_0804564C: @ 0x0804564C
	push {r4, r5, r6, lr}
	ldr r2, [r0, #0xc]
	ldr r6, [r0, #4]
	movs r5, #0
	movs r1, #0
	ldr r3, [r0]
	cmp r3, #1
	bhi _0804565E
	movs r1, #1
_0804565E:
	cmp r1, #0
	beq _0804566C
	movs r5, #0xff
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r2, r0
	b _080456D2
_0804566C:
	movs r1, #0
	cmp r3, #4
	bne _08045674
	movs r1, #1
_08045674:
	cmp r1, #0
	bne _080456A8
	movs r1, #0
	cmp r3, #2
	bne _08045680
	movs r1, #1
_08045680:
	cmp r1, #0
	beq _08045688
	movs r2, #0
	b _080456D2
_08045688:
	cmp r2, #0
	beq _080456D2
	ldr r0, [r0, #8]
	movs r3, #0x7e
	negs r3, r3
	cmp r0, r3
	bge _080456A4
	subs r0, r3, r0
	cmp r0, #0x19
	ble _080456A0
	movs r2, #0
	b _080456D0
_080456A0:
	lsrs r2, r0
	b _080456D0
_080456A4:
	cmp r0, #0x7f
	ble _080456AE
_080456A8:
	movs r5, #0xff
	movs r2, #0
	b _080456D2
_080456AE:
	adds r5, r0, #0
	adds r5, #0x7f
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0x40
	bne _080456C6
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080456C8
	adds r2, #0x40
	b _080456C8
_080456C6:
	adds r2, #0x3f
_080456C8:
	cmp r2, #0
	bge _080456D0
	lsrs r2, r2, #1
	adds r5, #1
_080456D0:
	lsrs r2, r2, #7
_080456D2:
	ldr r0, _080456F4 @ =0x007FFFFF
	ands r2, r0
	ldr r0, _080456F8 @ =0xFF800000
	ands r4, r0
	orrs r4, r2
	movs r0, #0xff
	ands r5, r0
	lsls r1, r5, #0x17
	ldr r0, _080456FC @ =0x807FFFFF
	ands r4, r0
	orrs r4, r1
	lsls r1, r6, #0x1f
	ldr r0, _08045700 @ =0x7FFFFFFF
	ands r4, r0
	orrs r4, r1
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_080456F4: .4byte 0x007FFFFF
_080456F8: .4byte 0xFF800000
_080456FC: .4byte 0x807FFFFF
_08045700: .4byte 0x7FFFFFFF
	thumb_func_end sub_0804564C

	thumb_func_start sub_08045704
sub_08045704: @ 0x08045704
	push {r4, lr}
	adds r3, r1, #0
	ldr r0, [r0]
	lsls r1, r0, #9
	lsrs r2, r1, #9
	lsls r1, r0, #1
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x1f
	str r0, [r3, #4]
	cmp r1, #0
	bne _08045748
	cmp r2, #0
	bne _08045724
	movs r0, #2
	str r0, [r3]
	b _0804577C
_08045724:
	adds r4, r1, #0
	subs r4, #0x7e
	str r4, [r3, #8]
	lsls r2, r2, #7
	movs r0, #3
	str r0, [r3]
	ldr r1, _08045744 @ =0x3FFFFFFF
	cmp r2, r1
	bhi _08045764
	adds r0, r4, #0
_08045738:
	lsls r2, r2, #1
	subs r0, #1
	cmp r2, r1
	bls _08045738
	str r0, [r3, #8]
	b _08045764
	.align 2, 0
_08045744: .4byte 0x3FFFFFFF
_08045748:
	cmp r1, #0xff
	bne _08045768
	cmp r2, #0
	bne _08045756
	movs r0, #4
	str r0, [r3]
	b _0804577C
_08045756:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _08045762
	movs r0, #1
_08045762:
	str r0, [r3]
_08045764:
	str r2, [r3, #0xc]
	b _0804577C
_08045768:
	adds r0, r1, #0
	subs r0, #0x7f
	str r0, [r3, #8]
	movs r0, #3
	str r0, [r3]
	lsls r0, r2, #7
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r3, #0xc]
_0804577C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_08045704

	thumb_func_start sub_08045780
sub_08045780: @ 0x08045780
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _08045796
	movs r0, #1
_08045796:
	cmp r0, #0
	beq _0804579E
_0804579A:
	adds r0, r6, #0
	b _080458F4
_0804579E:
	movs r1, #0
	ldr r0, [r7]
	cmp r0, #1
	bhi _080457A8
	movs r1, #1
_080457A8:
	cmp r1, #0
	bne _0804581C
	movs r1, #0
	cmp r2, #4
	bne _080457B4
	movs r1, #1
_080457B4:
	cmp r1, #0
	beq _080457D4
	movs r1, #0
	cmp r0, #4
	bne _080457C0
	movs r1, #1
_080457C0:
	cmp r1, #0
	beq _0804579A
	ldr r1, [r6, #4]
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _0804579A
	ldr r0, _080457D0 @ =gUnknown_2033BF0
	b _080458F4
	.align 2, 0
_080457D0: .4byte gUnknown_2033BF0
_080457D4:
	movs r1, #0
	cmp r0, #4
	bne _080457DC
	movs r1, #1
_080457DC:
	cmp r1, #0
	bne _0804581C
	movs r1, #0
	cmp r0, #2
	bne _080457E8
	movs r1, #1
_080457E8:
	cmp r1, #0
	beq _0804580E
	movs r0, #0
	cmp r2, #2
	bne _080457F4
	movs r0, #1
_080457F4:
	cmp r0, #0
	beq _0804579A
	adds r1, r5, #0
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r6, #4]
	ldr r1, [r7, #4]
	ands r0, r1
	str r0, [r5, #4]
	b _080458F2
_0804580E:
	movs r1, #0
	ldr r0, [r6]
	cmp r0, #2
	bne _08045818
	movs r1, #1
_08045818:
	cmp r1, #0
	beq _08045820
_0804581C:
	adds r0, r7, #0
	b _080458F4
_08045820:
	ldr r1, [r6, #8]
	ldr r3, [r7, #8]
	ldr r2, [r6, #0xc]
	ldr r4, [r7, #0xc]
	subs r0, r1, r3
	cmp r0, #0
	bge _08045830
	negs r0, r0
_08045830:
	cmp r0, #0x1f
	bgt _08045874
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
	cmp r1, r3
	ble _08045856
	movs r7, #1
	mov ip, r7
	subs r3, r1, r3
_08045844:
	subs r3, #1
	adds r0, r4, #0
	mov r7, ip
	ands r0, r7
	lsrs r4, r4, #1
	orrs r4, r0
	cmp r3, #0
	bne _08045844
	adds r3, r1, #0
_08045856:
	cmp r3, r1
	ble _08045886
	movs r0, #1
	mov ip, r0
	subs r1, r3, r1
_08045860:
	subs r1, #1
	adds r0, r2, #0
	mov r7, ip
	ands r0, r7
	lsrs r2, r2, #1
	orrs r2, r0
	cmp r1, #0
	bne _08045860
	adds r1, r3, #0
	b _08045886
_08045874:
	cmp r1, r3
	ble _0804587C
	movs r4, #0
	b _08045880
_0804587C:
	adds r1, r3, #0
	movs r2, #0
_08045880:
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
_08045886:
	cmp r6, r8
	beq _080458D0
	cmp r6, #0
	beq _08045892
	subs r3, r4, r2
	b _08045894
_08045892:
	subs r3, r2, r4
_08045894:
	cmp r3, #0
	blt _080458A2
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r5, #8]
	str r3, [r5, #0xc]
	b _080458AC
_080458A2:
	movs r0, #1
	str r0, [r5, #4]
	str r1, [r5, #8]
	rsbs r0, r3, #0
	str r0, [r5, #0xc]
_080458AC:
	ldr r1, [r5, #0xc]
	subs r0, r1, #1
	ldr r2, _080458CC @ =0x3FFFFFFE
	cmp r0, r2
	bhi _080458D8
_080458B6:
	lsls r0, r1, #1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	subs r1, #1
	str r1, [r5, #8]
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, r2
	bls _080458B6
	b _080458D8
	.align 2, 0
_080458CC: .4byte 0x3FFFFFFE
_080458D0:
	str r6, [r5, #4]
	str r1, [r5, #8]
	adds r0, r2, r4
	str r0, [r5, #0xc]
_080458D8:
	movs r0, #3
	str r0, [r5]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bge _080458F2
	movs r0, #1
	ands r0, r1
	lsrs r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
_080458F2:
	adds r0, r5, #0
_080458F4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_08045780

	thumb_func_start sub_080458FC
sub_080458FC: @ 0x080458FC
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl sub_08045704
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08045704
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl sub_08045780
	bl sub_0804564C
	add sp, #0x38
	pop {r4, pc}
	thumb_func_end sub_080458FC

	thumb_func_start sub_08045928
sub_08045928: @ 0x08045928
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl sub_08045704
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08045704
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl sub_08045780
	bl sub_0804564C
	add sp, #0x38
	pop {r4, pc}
	thumb_func_end sub_08045928

	thumb_func_start sub_0804595C
sub_0804595C: @ 0x0804595C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl sub_08045704
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08045704
	mov r7, sp
	add r0, sp, #0x20
	mov r8, r0
	movs r0, #0
	ldr r1, [sp]
	mov sb, r8
	cmp r1, #1
	bhi _0804598E
	movs r0, #1
_0804598E:
	cmp r0, #0
	bne _080459EC
	movs r2, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0804599C
	movs r2, #1
_0804599C:
	cmp r2, #0
	beq _080459A4
	ldr r0, [sp, #4]
	b _08045A0C
_080459A4:
	movs r2, #0
	cmp r1, #4
	bne _080459AC
	movs r2, #1
_080459AC:
	cmp r2, #0
	beq _080459BE
	movs r1, #0
	cmp r0, #2
	bne _080459B8
	movs r1, #1
_080459B8:
	cmp r1, #0
	bne _080459D6
	b _080459EC
_080459BE:
	movs r2, #0
	cmp r0, #4
	bne _080459C6
	movs r2, #1
_080459C6:
	cmp r2, #0
	beq _080459E0
	movs r0, #0
	cmp r1, #2
	bne _080459D2
	movs r0, #1
_080459D2:
	cmp r0, #0
	beq _08045A0A
_080459D6:
	ldr r0, _080459DC @ =gUnknown_2033BF0
	b _08045AAE
	.align 2, 0
_080459DC: .4byte gUnknown_2033BF0
_080459E0:
	movs r2, #0
	cmp r1, #2
	bne _080459E8
	movs r2, #1
_080459E8:
	cmp r2, #0
	beq _080459FE
_080459EC:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _08045AAE
_080459FE:
	movs r1, #0
	cmp r0, #2
	bne _08045A06
	movs r1, #1
_08045A06:
	cmp r1, #0
	beq _08045A1C
_08045A0A:
	ldr r0, [r7, #4]
_08045A0C:
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x14]
	adds r0, r4, #0
	b _08045AAE
_08045A1C:
	ldr r0, [r7, #0xc]
	movs r1, #0
	ldr r2, [sp, #0x1c]
	movs r3, #0
	bl sub_08046AE4
	adds r2, r1, #0
	adds r5, r2, #0
	adds r6, r0, #0
	ldr r4, [r7, #8]
	ldr r0, [sp, #0x18]
	adds r4, r4, r0
	str r4, [sp, #0x28]
	ldr r1, [r7, #4]
	ldr r0, [sp, #0x14]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x24]
	adds r4, #2
	str r4, [sp, #0x28]
	cmp r2, #0
	bge _08045A68
	movs r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
_08045A52:
	adds r4, #1
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _08045A60
	lsrs r6, r6, #1
	orrs r6, r1
_08045A60:
	lsrs r5, r5, #1
	cmp r5, #0
	blt _08045A52
	str r4, [sp, #0x28]
_08045A68:
	ldr r0, _08045ABC @ =0x3FFFFFFF
	cmp r5, r0
	bhi _08045A8E
	movs r4, #0x80
	lsls r4, r4, #0x18
	movs r3, #1
	adds r2, r0, #0
	ldr r1, [sp, #0x28]
_08045A78:
	subs r1, #1
	lsls r5, r5, #1
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq _08045A86
	orrs r5, r3
_08045A86:
	lsls r6, r6, #1
	cmp r5, r2
	bls _08045A78
	str r1, [sp, #0x28]
_08045A8E:
	movs r0, #0x7f
	ands r0, r5
	cmp r0, #0x40
	bne _08045AA4
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	bne _08045AA2
	cmp r6, #0
	beq _08045AA4
_08045AA2:
	adds r5, #0x40
_08045AA4:
	str r5, [sp, #0x2c]
	movs r0, #3
	mov r1, r8
	str r0, [r1]
	mov r0, sb
_08045AAE:
	bl sub_0804564C
	add sp, #0x38
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08045ABC: .4byte 0x3FFFFFFF
	thumb_func_end sub_0804595C

	thumb_func_start sub_08045AC0
sub_08045AC0: @ 0x08045AC0
	push {r4, r5, r6, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08045704
	add r0, sp, #0x24
	add r5, sp, #0x10
	adds r1, r5, #0
	bl sub_08045704
	mov r4, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _08045AE6
	movs r0, #1
_08045AE6:
	cmp r0, #0
	beq _08045AEE
	mov r1, sp
	b _08045BA0
_08045AEE:
	movs r0, #0
	ldr r2, [sp, #0x10]
	adds r6, r2, #0
	cmp r2, #1
	bhi _08045AFA
	movs r0, #1
_08045AFA:
	cmp r0, #0
	beq _08045B02
	adds r1, r5, #0
	b _08045BA0
_08045B02:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _08045B12
	movs r0, #1
_08045B12:
	cmp r0, #0
	bne _08045B22
	movs r0, #0
	cmp r3, #2
	bne _08045B1E
	movs r0, #1
_08045B1E:
	cmp r0, #0
	beq _08045B34
_08045B22:
	ldr r0, [r4]
	adds r1, r4, #0
	cmp r0, r6
	bne _08045BA0
	ldr r1, _08045B30 @ =gUnknown_2033BF0
	b _08045BA0
	.align 2, 0
_08045B30: .4byte gUnknown_2033BF0
_08045B34:
	movs r1, #0
	cmp r2, #4
	bne _08045B3C
	movs r1, #1
_08045B3C:
	cmp r1, #0
	beq _08045B48
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	mov r1, sp
	b _08045BA0
_08045B48:
	movs r0, #0
	cmp r2, #2
	bne _08045B50
	movs r0, #1
_08045B50:
	cmp r0, #0
	beq _08045B5A
	movs r0, #4
	str r0, [r4]
	b _08045B9E
_08045B5A:
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x18]
	subs r0, r1, r0
	str r0, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [sp, #0x1c]
	cmp r2, r3
	bhs _08045B70
	lsls r2, r2, #1
	subs r0, #1
	str r0, [r4, #8]
_08045B70:
	movs r0, #0x80
	lsls r0, r0, #0x17
	movs r1, #0
_08045B76:
	cmp r2, r3
	blo _08045B7E
	orrs r1, r0
	subs r2, r2, r3
_08045B7E:
	lsrs r0, r0, #1
	lsls r2, r2, #1
	cmp r0, #0
	bne _08045B76
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x40
	bne _08045B9C
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08045B9A
	cmp r2, #0
	beq _08045B9C
_08045B9A:
	adds r1, #0x40
_08045B9C:
	str r1, [r4, #0xc]
_08045B9E:
	adds r1, r4, #0
_08045BA0:
	adds r0, r1, #0
	bl sub_0804564C
	add sp, #0x28
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_08045AC0

	thumb_func_start sub_08045BAC
sub_08045BAC: @ 0x08045BAC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	ldr r2, [r4]
	cmp r2, #1
	bhi _08045BBA
	movs r0, #1
_08045BBA:
	cmp r0, #0
	bne _08045BCC
	movs r0, #0
	ldr r3, [r1]
	cmp r3, #1
	bhi _08045BC8
	movs r0, #1
_08045BC8:
	cmp r0, #0
	beq _08045BD0
_08045BCC:
	movs r0, #1
	b _08045C8E
_08045BD0:
	movs r0, #0
	cmp r2, #4
	bne _08045BD8
	movs r0, #1
_08045BD8:
	cmp r0, #0
	beq _08045BF0
	movs r0, #0
	cmp r3, #4
	bne _08045BE4
	movs r0, #1
_08045BE4:
	cmp r0, #0
	beq _08045BF0
	ldr r0, [r1, #4]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	b _08045C8E
_08045BF0:
	movs r2, #0
	ldr r0, [r4]
	cmp r0, #4
	bne _08045BFA
	movs r2, #1
_08045BFA:
	cmp r2, #0
	bne _08045C48
	movs r2, #0
	cmp r3, #4
	bne _08045C06
	movs r2, #1
_08045C06:
	cmp r2, #0
	beq _08045C18
_08045C0A:
	ldr r0, [r1, #4]
	movs r1, #1
	negs r1, r1
	cmp r0, #0
	beq _08045C52
	movs r1, #1
	b _08045C52
_08045C18:
	movs r2, #0
	cmp r0, #2
	bne _08045C20
	movs r2, #1
_08045C20:
	cmp r2, #0
	beq _08045C30
	movs r2, #0
	cmp r3, #2
	bne _08045C2C
	movs r2, #1
_08045C2C:
	cmp r2, #0
	bne _08045C8C
_08045C30:
	movs r2, #0
	cmp r0, #2
	bne _08045C38
	movs r2, #1
_08045C38:
	cmp r2, #0
	bne _08045C0A
	movs r0, #0
	cmp r3, #2
	bne _08045C44
	movs r0, #1
_08045C44:
	cmp r0, #0
	beq _08045C56
_08045C48:
	ldr r0, [r4, #4]
	movs r1, #1
	cmp r0, #0
	beq _08045C52
	subs r1, #2
_08045C52:
	adds r0, r1, #0
	b _08045C8E
_08045C56:
	ldr r3, [r4, #4]
	ldr r0, [r1, #4]
	cmp r3, r0
	beq _08045C68
_08045C5E:
	movs r0, #1
	cmp r3, #0
	beq _08045C8E
	subs r0, #2
	b _08045C8E
_08045C68:
	ldr r2, [r4, #8]
	ldr r0, [r1, #8]
	cmp r2, r0
	bgt _08045C5E
	cmp r2, r0
	bge _08045C80
_08045C74:
	movs r0, #1
	negs r0, r0
	cmp r3, #0
	beq _08045C8E
	movs r0, #1
	b _08045C8E
_08045C80:
	ldr r0, [r4, #0xc]
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhi _08045C5E
	cmp r0, r1
	blo _08045C74
_08045C8C:
	movs r0, #0
_08045C8E:
	pop {r4, pc}
	thumb_func_end sub_08045BAC

	thumb_func_start sub_08045C90
sub_08045C90: @ 0x08045C90
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08045704
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08045704
	mov r0, sp
	adds r1, r4, #0
	bl sub_08045BAC
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_08045C90

	thumb_func_start sub_08045CB8
sub_08045CB8: @ 0x08045CB8
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08045704
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08045704
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08045CDC
	movs r1, #1
_08045CDC:
	cmp r1, #0
	bne _08045CEE
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08045CEA
	movs r1, #1
_08045CEA:
	cmp r1, #0
	beq _08045CF2
_08045CEE:
	movs r0, #1
	b _08045CFA
_08045CF2:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08045BAC
_08045CFA:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_08045CB8

	thumb_func_start sub_08045D00
sub_08045D00: @ 0x08045D00
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08045704
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08045704
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08045D24
	movs r1, #1
_08045D24:
	cmp r1, #0
	bne _08045D36
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08045D32
	movs r1, #1
_08045D32:
	cmp r1, #0
	beq _08045D3A
_08045D36:
	movs r0, #1
	b _08045D42
_08045D3A:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08045BAC
_08045D42:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_08045D00

	thumb_func_start sub_08045D48
sub_08045D48: @ 0x08045D48
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08045704
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08045704
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08045D6C
	movs r1, #1
_08045D6C:
	cmp r1, #0
	bne _08045D7E
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08045D7A
	movs r1, #1
_08045D7A:
	cmp r1, #0
	beq _08045D84
_08045D7E:
	movs r0, #1
	negs r0, r0
	b _08045D8C
_08045D84:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08045BAC
_08045D8C:
	add sp, #0x28
	pop {r4, pc}
	thumb_func_end sub_08045D48

	thumb_func_start sub_08045D90
sub_08045D90: @ 0x08045D90
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08045704
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08045704
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08045DB4
	movs r1, #1
_08045DB4:
	cmp r1, #0
	bne _08045DC6
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08045DC2
	movs r1, #1
_08045DC2:
	cmp r1, #0
	beq _08045DCC
_08045DC6:
	movs r0, #1
	negs r0, r0
	b _08045DD4
_08045DCC:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08045BAC
_08045DD4:
	add sp, #0x28
	pop {r4, pc}
	thumb_func_end sub_08045D90

	thumb_func_start sub_08045DD8
sub_08045DD8: @ 0x08045DD8
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08045704
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08045704
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08045DFC
	movs r1, #1
_08045DFC:
	cmp r1, #0
	bne _08045E0E
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08045E0A
	movs r1, #1
_08045E0A:
	cmp r1, #0
	beq _08045E12
_08045E0E:
	movs r0, #1
	b _08045E1A
_08045E12:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08045BAC
_08045E1A:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_08045DD8

	thumb_func_start sub_08045E20
sub_08045E20: @ 0x08045E20
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl sub_08045704
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl sub_08045704
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08045E44
	movs r1, #1
_08045E44:
	cmp r1, #0
	bne _08045E56
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08045E52
	movs r1, #1
_08045E52:
	cmp r1, #0
	beq _08045E5A
_08045E56:
	movs r0, #1
	b _08045E62
_08045E5A:
	mov r0, sp
	adds r1, r4, #0
	bl sub_08045BAC
_08045E62:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_08045E20

	thumb_func_start sub_08045E68
sub_08045E68: @ 0x08045E68
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r2, r1, #0x1f
	str r2, [sp, #4]
	cmp r1, #0
	bne _08045E80
	movs r0, #2
	str r0, [sp]
	b _08045EB8
_08045E80:
	movs r0, #0x1e
	str r0, [sp, #8]
	cmp r2, #0
	beq _08045E9E
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _08045E98
	ldr r0, _08045E94 @ =0xCF000000
	b _08045EBE
	.align 2, 0
_08045E94: .4byte 0xCF000000
_08045E98:
	rsbs r0, r1, #0
	str r0, [sp, #0xc]
	b _08045EA0
_08045E9E:
	str r1, [sp, #0xc]
_08045EA0:
	ldr r2, [sp, #0xc]
	ldr r3, _08045EC4 @ =0x3FFFFFFF
	cmp r2, r3
	bhi _08045EB8
	ldr r1, [sp, #8]
_08045EAA:
	lsls r0, r2, #1
	subs r1, #1
	adds r2, r0, #0
	cmp r0, r3
	bls _08045EAA
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_08045EB8:
	mov r0, sp
	bl sub_0804564C
_08045EBE:
	add sp, #0x10
	pop {pc}
	.align 2, 0
_08045EC4: .4byte 0x3FFFFFFF
	thumb_func_end sub_08045E68

	thumb_func_start sub_08045EC8
sub_08045EC8: @ 0x08045EC8
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl sub_08045704
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _08045EE0
	movs r1, #1
_08045EE0:
	cmp r1, #0
	bne _08045F12
	movs r1, #0
	cmp r0, #1
	bhi _08045EEC
	movs r1, #1
_08045EEC:
	cmp r1, #0
	bne _08045F12
	movs r1, #0
	cmp r0, #4
	bne _08045EF8
	movs r1, #1
_08045EF8:
	cmp r1, #0
	beq _08045F0C
_08045EFC:
	ldr r0, [sp, #4]
	ldr r1, _08045F08 @ =0x7FFFFFFF
	cmp r0, #0
	beq _08045F2A
	adds r1, #1
	b _08045F2A
	.align 2, 0
_08045F08: .4byte 0x7FFFFFFF
_08045F0C:
	ldr r1, [sp, #8]
	cmp r1, #0
	bge _08045F16
_08045F12:
	movs r0, #0
	b _08045F2C
_08045F16:
	cmp r1, #0x1e
	bgt _08045EFC
	movs r0, #0x1e
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	lsrs r1, r0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08045F2A
	negs r1, r1
_08045F2A:
	adds r0, r1, #0
_08045F2C:
	add sp, #0x14
	pop {pc}
	thumb_func_end sub_08045EC8

	thumb_func_start sub_08045F30
sub_08045F30: @ 0x08045F30
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl sub_08045704
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _08045F48
	movs r1, #1
_08045F48:
	str r1, [sp, #4]
	mov r0, sp
	bl sub_0804564C
	add sp, #0x14
	pop {pc}
	thumb_func_end sub_08045F30

	thumb_func_start sub_08045F54
sub_08045F54: @ 0x08045F54
	push {lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, sp
	bl sub_0804564C
	add sp, #0x10
	pop {pc}
	.align 2, 0
	thumb_func_end sub_08045F54

	thumb_func_start sub_08045F6C
sub_08045F6C: @ 0x08045F6C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	add r1, sp, #4
	bl sub_08045704
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	movs r4, #0
	lsrs r6, r3, #2
	lsls r5, r4, #0x1e
	adds r4, r6, #0
	orrs r4, r5
	lsls r3, r3, #0x1e
	str r4, [sp]
	bl sub_080455E0
	add sp, #0x18
	pop {r4, r5, r6, pc}
	thumb_func_end sub_08045F6C

	thumb_func_start sub_08045F98
sub_08045F98: @ 0x08045F98
	push {lr}
	adds r2, r0, #0
	ldr r0, _08045FB0 @ =gUnknown_8704160
	str r0, [r2, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08045FAE
	adds r0, r2, #0
	bl sub_0804753C
_08045FAE:
	pop {pc}
	.align 2, 0
_08045FB0: .4byte gUnknown_8704160
	thumb_func_end sub_08045F98

	thumb_func_start sub_08045FB4
sub_08045FB4: @ 0x08045FB4
	push {r4, lr}
	movs r4, #0
	cmp r1, r0
	beq _08045FC8
	ldr r0, [r0]
	ldr r1, [r1]
	bl strcmp
	cmp r0, #0
	bne _08045FCA
_08045FC8:
	movs r4, #1
_08045FCA:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_08045FB4

	thumb_func_start sub_08045FD0
sub_08045FD0: @ 0x08045FD0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xa8
	mov r7, sp
	adds r5, r0, #0
	adds r6, r1, #0
	mov sb, r2
	mov r8, r3
	bl sub_0804441C
	adds r1, r0, #0
	adds r3, r1, #0
	adds r4, r1, #0
	adds r2, r1, #4
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08046004 @ =sub_08046008
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _0804600A
	.align 2, 0
_08046004: .4byte _08046008
_08046008: @ 0x08046008
	b _08046016
_0804600A:
	str r7, [r2]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	adds r0, r5, #0
	b _08046080
_08046016:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08046034 @ =sub_08046038
	str r0, [r7, #0x24]
	mov r2, sp
	str r2, [r7, #0x28]
	b _0804603A
	.align 2, 0
_08046034: .4byte _08046038
_08046038: @ 0x08046038
	b _0804604A
_0804603A:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_0804604A:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _08046060 @ =sub_08046064
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _08046066
	.align 2, 0
_08046060: .4byte _08046064
_08046064: @ 0x08046064
	b _0804607C
_08046066:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_0804607C:
	bl sub_080443CC
_08046080:
	mov ip, r5
	cmp r5, #0
	bne _08046088
	b _08046190
_08046088:
	adds r2, r7, #0
	adds r2, #0x48
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r4, #0
	ldr r0, _080460B0 @ =gUnknown_8704160
	str r0, [r3, #4]
	str r6, [r3]
	adds r6, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x48]
	movs r0, #0
	str r0, [r2, #4]
	str r2, [r2, #8]
	ldr r0, _080460B4 @ =sub_080460B8
	str r0, [r7, #0x54]
	mov r0, sp
	str r0, [r7, #0x58]
	b _080460BC
	.align 2, 0
_080460B0: .4byte gUnknown_8704160
_080460B4: .4byte _080460B8
_080460B8: @ 0x080460B8
	subs r7, #0x48
	b _080460D0
_080460BC:
	str r2, [r6]
	ldr r0, _080460CC @ =gUnknown_8704118
	mov r5, ip
	str r0, [r5, #4]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	b _0804610C
	.align 2, 0
_080460CC: .4byte gUnknown_8704118
_080460D0:
	adds r1, r5, #4
	ldr r0, [r5, #4]
	str r0, [r7, #0x60]
	movs r0, #0
	str r0, [r2, #0x1c]
	str r2, [r2, #0x20]
	ldr r0, _080460E8 @ =sub_080460EC
	str r0, [r7, #0x6c]
	mov r0, sp
	str r0, [r7, #0x70]
	b _080460F0
	.align 2, 0
_080460E8: .4byte _080460EC
_080460EC: @ 0x080460EC
	subs r7, #0x48
	b _08046108
_080460F0:
	adds r0, r7, #0
	adds r0, #0x60
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r5, #4]
	ldr r0, [r0]
	str r0, [r5, #4]
	bl sub_0804449C
_08046108:
	bl sub_080443CC
_0804610C:
	adds r5, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x78]
	movs r0, #0
	str r0, [r2, #0x34]
	adds r0, r7, #0
	adds r0, #0x80
	str r2, [r0]
	ldr r1, _08046128 @ =sub_0804612C
	str r1, [r0, #4]
	mov r1, sp
	str r1, [r0, #8]
	b _08046130
	.align 2, 0
_08046128: .4byte _0804612C
_0804612C: @ 0x0804612C
	subs r7, #0x48
	b _08046150
_08046130:
	adds r0, r7, #0
	adds r0, #0x78
	str r0, [r5]
	ldr r0, _0804614C @ =gUnknown_87040E8
	str r0, [r3, #4]
	mov r2, sb
	str r2, [r3, #8]
	mov r5, r8
	str r5, [r3, #0xc]
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	b _08046190
	.align 2, 0
_0804614C: .4byte gUnknown_87040E8
_08046150:
	adds r5, r4, #4
	ldr r0, [r4, #4]
	str r0, [r2, #0x48]
	movs r0, #0
	str r0, [r2, #0x4c]
	adds r0, r7, #0
	adds r0, #0x98
	str r2, [r0]
	ldr r1, _0804616C @ =sub_08046170
	str r1, [r0, #4]
	mov r1, sp
	str r1, [r0, #8]
	b _08046174
	.align 2, 0
_0804616C: .4byte _08046170
_08046170: @ 0x08046170
	subs r7, #0x48
	b _0804618C
_08046174:
	adds r0, r7, #0
	adds r0, #0x90
	str r0, [r5]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_0804618C:
	bl sub_080443CC
_08046190:
	add sp, #0xa8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_08045FD0

	thumb_func_start sub_0804619C
sub_0804619C: @ 0x0804619C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0xa8
	mov r7, sp
	adds r5, r0, #0
	adds r6, r1, #0
	mov sb, r2
	bl sub_0804441C
	adds r1, r0, #0
	adds r3, r1, #0
	adds r4, r1, #0
	adds r2, r1, #4
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _080461CC @ =sub_080461D0
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _080461D2
	.align 2, 0
_080461CC: .4byte _080461D0
_080461D0: @ 0x080461D0
	b _080461DE
_080461D2:
	str r7, [r2]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	adds r0, r5, #0
	b _08046248
_080461DE:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _080461FC @ =sub_08046200
	str r0, [r7, #0x24]
	mov r2, sp
	str r2, [r7, #0x28]
	b _08046202
	.align 2, 0
_080461FC: .4byte _08046200
_08046200: @ 0x08046200
	b _08046212
_08046202:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_08046212:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _08046228 @ =sub_0804622C
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _0804622E
	.align 2, 0
_08046228: .4byte _0804622C
_0804622C: @ 0x0804622C
	b _08046244
_0804622E:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08046244:
	bl sub_080443CC
_08046248:
	mov ip, r5
	cmp r5, #0
	bne _08046250
	b _08046354
_08046250:
	adds r2, r7, #0
	adds r2, #0x48
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r4, #0
	ldr r0, _08046278 @ =gUnknown_8704160
	str r0, [r3, #4]
	str r6, [r3]
	adds r6, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x48]
	movs r0, #0
	str r0, [r2, #4]
	str r2, [r2, #8]
	ldr r0, _0804627C @ =sub_08046280
	str r0, [r7, #0x54]
	mov r0, sp
	str r0, [r7, #0x58]
	b _08046284
	.align 2, 0
_08046278: .4byte gUnknown_8704160
_0804627C: .4byte _08046280
_08046280: @ 0x08046280
	subs r7, #0x48
	b _08046298
_08046284:
	str r2, [r6]
	ldr r0, _08046294 @ =gUnknown_8704118
	mov r5, ip
	str r0, [r5, #4]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	b _080462D4
	.align 2, 0
_08046294: .4byte gUnknown_8704118
_08046298:
	adds r1, r5, #4
	ldr r0, [r5, #4]
	str r0, [r7, #0x60]
	movs r0, #0
	str r0, [r2, #0x1c]
	str r2, [r2, #0x20]
	ldr r0, _080462B0 @ =sub_080462B4
	str r0, [r7, #0x6c]
	mov r0, sp
	str r0, [r7, #0x70]
	b _080462B8
	.align 2, 0
_080462B0: .4byte _080462B4
_080462B4: @ 0x080462B4
	subs r7, #0x48
	b _080462D0
_080462B8:
	adds r0, r7, #0
	adds r0, #0x60
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r5, #4]
	ldr r0, [r0]
	str r0, [r5, #4]
	bl sub_0804449C
_080462D0:
	bl sub_080443CC
_080462D4:
	adds r5, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x78]
	movs r0, #0
	str r0, [r2, #0x34]
	adds r0, r7, #0
	adds r0, #0x80
	str r2, [r0]
	ldr r1, _080462F0 @ =sub_080462F4
	str r1, [r0, #4]
	mov r1, sp
	str r1, [r0, #8]
	b _080462F8
	.align 2, 0
_080462F0: .4byte _080462F4
_080462F4: @ 0x080462F4
	subs r7, #0x48
	b _08046314
_080462F8:
	adds r0, r7, #0
	adds r0, #0x78
	str r0, [r5]
	ldr r0, _08046310 @ =gUnknown_8704100
	str r0, [r3, #4]
	mov r2, sb
	str r2, [r3, #8]
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	b _08046354
	.align 2, 0
_08046310: .4byte gUnknown_8704100
_08046314:
	adds r5, r4, #4
	ldr r0, [r4, #4]
	str r0, [r2, #0x48]
	movs r0, #0
	str r0, [r2, #0x4c]
	adds r0, r7, #0
	adds r0, #0x98
	str r2, [r0]
	ldr r1, _08046330 @ =sub_08046334
	str r1, [r0, #4]
	mov r1, sp
	str r1, [r0, #8]
	b _08046338
	.align 2, 0
_08046330: .4byte _08046334
_08046334: @ 0x08046334
	subs r7, #0x48
	b _08046350
_08046338:
	adds r0, r7, #0
	adds r0, #0x90
	str r0, [r5]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08046350:
	bl sub_080443CC
_08046354:
	add sp, #0xa8
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0804619C

	thumb_func_start sub_0804635C
sub_0804635C: @ 0x0804635C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	adds r5, r0, #0
	adds r6, r1, #0
	bl sub_0804441C
	adds r1, r0, #0
	adds r3, r1, #0
	adds r4, r1, #0
	adds r2, r1, #4
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _0804638C @ =sub_08046390
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08046392
	.align 2, 0
_0804638C: .4byte _08046390
_08046390: @ 0x08046390
	b _0804639E
_08046392:
	str r7, [r2]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	adds r0, r5, #0
	b _08046408
_0804639E:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _080463BC @ =sub_080463C0
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _080463C2
	.align 2, 0
_080463BC: .4byte _080463C0
_080463C0: @ 0x080463C0
	b _080463D2
_080463C2:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_080463D2:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _080463E8 @ =sub_080463EC
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _080463EE
	.align 2, 0
_080463E8: .4byte _080463EC
_080463EC: @ 0x080463EC
	b _08046404
_080463EE:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08046404:
	bl sub_080443CC
_08046408:
	cmp r5, #0
	beq _08046482
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r0, _0804642C @ =gUnknown_8704160
	str r0, [r2, #4]
	str r6, [r2]
	adds r3, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08046430 @ =sub_08046434
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08046436
	.align 2, 0
_0804642C: .4byte gUnknown_8704160
_08046430: .4byte _08046434
_08046434: @ 0x08046434
	b _08046448
_08046436:
	str r7, [r3]
	ldr r0, _08046444 @ =gUnknown_8704118
	str r0, [r5, #4]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	b _08046482
	.align 2, 0
_08046444: .4byte gUnknown_8704118
_08046448:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08046460 @ =sub_08046464
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08046466
	.align 2, 0
_08046460: .4byte _08046464
_08046464: @ 0x08046464
	b _0804647E
_08046466:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r2, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_0804647E:
	bl sub_080443CC
_08046482:
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0804635C

	thumb_func_start sub_0804648C
sub_0804648C: @ 0x0804648C
	push {r4, lr}
	adds r4, r3, #0
	bl sub_08045FB4
	lsls r0, r0, #0x18
	movs r1, #0
	cmp r0, #0
	beq _0804649E
	adds r1, r4, #0
_0804649E:
	adds r0, r1, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_0804648C

	thumb_func_start sub_080464A4
sub_080464A4: @ 0x080464A4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	adds r6, r3, #0
	bl sub_08045FB4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080464DA
	ldr r0, [r4, #8]
	ldr r2, [r0, #4]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [sp, #0x1c]
	str r1, [sp]
	ldr r1, [sp, #0x20]
	str r1, [sp, #4]
	ldr r4, [r2, #0x14]
	adds r1, r5, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl _call_via_r4
	b _080464DC
_080464DA:
	adds r0, r6, #0
_080464DC:
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_080464A4

	thumb_func_start sub_080464E0
sub_080464E0: @ 0x080464E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #8]
	adds r7, r1, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl sub_08045FB4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08046502
	ldr r0, [sp, #0x10]
	b _080465D6
_08046502:
	movs r0, #0
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0x14]
	ldr r2, [sp, #8]
	ldr r0, [r2, #0xc]
	cmp r8, r0
	bhs _080465D4
	mov sb, r1
	mov sl, r1
_08046516:
	ldr r3, [sp, #8]
	ldr r1, [r3, #8]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0804652C
	mov r2, sl
	adds r0, r2, r1
	ldrb r0, [r0, #7]
	lsrs r0, r0, #6
	cmp r0, #1
	bne _080465C2
_0804652C:
	add r1, sl
	ldr r0, [r1, #4]
	lsls r0, r0, #3
	lsrs r0, r0, #3
	ldr r3, [sp, #0x10]
	adds r5, r3, r0
	ldrb r2, [r1, #7]
	lsls r0, r2, #0x1a
	cmp r0, #0
	bge _08046542
	ldr r5, [r5]
_08046542:
	ldr r0, [r1]
	ldr r2, [r0, #4]
	movs r3, #0x10
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r1, [sp, #0x38]
	str r1, [sp]
	ldr r3, [sp, #0x3c]
	str r3, [sp, #4]
	ldr r4, [r2, #0x14]
	adds r1, r7, #0
	ldr r2, [sp, #0xc]
	adds r3, r5, #0
	bl _call_via_r4
	adds r5, r0, #0
	cmp r5, #0
	beq _080465C2
	mov r0, r8
	cmp r0, #0
	beq _080465BA
	cmp r8, r5
	beq _080465C2
	ldr r1, [sp, #0x38]
	cmp r1, #0
	beq _080465BE
	ldr r1, [r7, #4]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	mov r3, sb
	str r3, [sp]
	str r3, [sp, #4]
	ldr r4, [r1, #0x14]
	ldr r1, [sp, #0x38]
	movs r2, #1
	mov r3, r8
	bl _call_via_r4
	adds r6, r0, #0
	ldr r1, [r7, #4]
	movs r2, #0x10
	ldrsh r0, [r1, r2]
	adds r0, r7, r0
	mov r3, sb
	str r3, [sp]
	str r3, [sp, #4]
	ldr r4, [r1, #0x14]
	ldr r1, [sp, #0x38]
	movs r2, #1
	adds r3, r5, #0
	bl _call_via_r4
	cmp r6, r0
	beq _080465BE
	ldr r1, [sp, #0x3c]
	cmp r6, r1
	beq _080465C2
	cmp r0, r1
	bne _080465BE
_080465BA:
	mov r8, r5
	b _080465C2
_080465BE:
	movs r0, #0
	b _080465D6
_080465C2:
	movs r2, #8
	add sl, r2
	ldr r3, [sp, #0x14]
	adds r3, #1
	str r3, [sp, #0x14]
	ldr r1, [sp, #8]
	ldr r0, [r1, #0xc]
	cmp r3, r0
	blo _08046516
_080465D4:
	mov r0, r8
_080465D6:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_080464E0

	thumb_func_start sub_080465E4
sub_080465E4: @ 0x080465E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	mov r7, sp
	str r0, [r7, #0x60]
	str r1, [r7, #0x74]
	str r2, [r7, #0x64]
	str r3, [r7, #0x68]
	bl sub_0804441C
	str r0, [r7, #0x6c]
	adds r2, r0, #0
	str r2, [r7, #0x70]
	ldr r0, _08046628 @ =gUnknown_8704160
	ldr r1, [r7, #0x60]
	str r0, [r1, #4]
	ldr r3, [r7, #0x74]
	str r3, [r1]
	ldr r1, [r7, #0x6c]
	adds r1, #4
	ldr r3, [r7, #0x6c]
	ldr r0, [r3, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _0804662C @ =sub_08046630
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08046632
	.align 2, 0
_08046628: .4byte gUnknown_8704160
_0804662C: .4byte _08046630
_08046630: @ 0x08046630
	b _08046648
_08046632:
	str r7, [r1]
	ldr r0, _08046644 @ =gUnknown_8704118
	ldr r1, [r7, #0x60]
	str r0, [r1, #4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	b _08046688
	.align 2, 0
_08046644: .4byte gUnknown_8704118
_08046648:
	ldr r1, [r7, #0x70]
	adds r1, #4
	ldr r2, [r7, #0x70]
	ldr r0, [r2, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08046664 @ =sub_08046668
	str r0, [r7, #0x24]
	mov r3, sp
	str r3, [r7, #0x28]
	b _0804666A
	.align 2, 0
_08046664: .4byte _08046668
_08046668: @ 0x08046668
	b _08046684
_0804666A:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	ldr r0, [r7, #0x60]
	movs r1, #0
	bl sub_08045F98
	ldr r1, [r7, #0x70]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08046684:
	bl sub_080443CC
_08046688:
	ldr r2, [r7, #0x6c]
	adds r2, #4
	ldr r3, [r7, #0x6c]
	ldr r0, [r3, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	adds r1, r7, #0
	adds r1, #0x38
	str r7, [r7, #0x38]
	ldr r0, _080466A8 @ =sub_080466AC
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080466AE
	.align 2, 0
_080466A8: .4byte _080466AC
_080466AC: @ 0x080466AC
	b _080466D4
_080466AE:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r2]
	ldr r0, _080466D0 @ =gUnknown_87040E8
	ldr r1, [r7, #0x60]
	str r0, [r1, #4]
	ldr r2, [r7, #0x64]
	str r2, [r1, #8]
	ldr r3, [r7, #0x68]
	str r3, [r1, #0xc]
	ldr r1, [r7, #0x6c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r0, [r7, #0x60]
	b _08046718
	.align 2, 0
_080466D0: .4byte gUnknown_87040E8
_080466D4:
	ldr r2, [r7, #0x6c]
	adds r2, #4
	ldr r3, [r7, #0x6c]
	ldr r0, [r3, #4]
	str r0, [r7, #0x48]
	movs r0, #0
	str r0, [r7, #0x4c]
	adds r1, r7, #0
	adds r1, #0x50
	str r7, [r7, #0x50]
	ldr r0, _080466F4 @ =sub_080466F8
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080466FA
	.align 2, 0
_080466F4: .4byte _080466F8
_080466F8: @ 0x080466F8
	b _08046714
_080466FA:
	adds r0, r7, #0
	adds r0, #0x48
	str r0, [r2]
	ldr r0, [r7, #0x60]
	movs r1, #0
	bl sub_08045F98
	ldr r1, [r7, #0x6c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08046714:
	bl sub_080443CC
_08046718:
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_080465E4

	thumb_func_start sub_08046724
sub_08046724: @ 0x08046724
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	mov r7, sp
	str r0, [r7, #0x60]
	str r1, [r7, #0x70]
	str r2, [r7, #0x64]
	bl sub_0804441C
	str r0, [r7, #0x68]
	adds r2, r0, #0
	str r2, [r7, #0x6c]
	ldr r0, _08046768 @ =gUnknown_8704160
	ldr r1, [r7, #0x60]
	str r0, [r1, #4]
	ldr r3, [r7, #0x70]
	str r3, [r1]
	ldr r1, [r7, #0x68]
	adds r1, #4
	ldr r3, [r7, #0x68]
	ldr r0, [r3, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _0804676C @ =sub_08046770
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08046772
	.align 2, 0
_08046768: .4byte gUnknown_8704160
_0804676C: .4byte _08046770
_08046770: @ 0x08046770
	b _08046788
_08046772:
	str r7, [r1]
	ldr r0, _08046784 @ =gUnknown_8704118
	ldr r1, [r7, #0x60]
	str r0, [r1, #4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	b _080467C8
	.align 2, 0
_08046784: .4byte gUnknown_8704118
_08046788:
	ldr r1, [r7, #0x6c]
	adds r1, #4
	ldr r2, [r7, #0x6c]
	ldr r0, [r2, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _080467A4 @ =sub_080467A8
	str r0, [r7, #0x24]
	mov r3, sp
	str r3, [r7, #0x28]
	b _080467AA
	.align 2, 0
_080467A4: .4byte _080467A8
_080467A8: @ 0x080467A8
	b _080467C4
_080467AA:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	ldr r0, [r7, #0x60]
	movs r1, #0
	bl sub_08045F98
	ldr r1, [r7, #0x6c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_080467C4:
	bl sub_080443CC
_080467C8:
	ldr r2, [r7, #0x68]
	adds r2, #4
	ldr r3, [r7, #0x68]
	ldr r0, [r3, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	adds r1, r7, #0
	adds r1, #0x38
	str r7, [r7, #0x38]
	ldr r0, _080467E8 @ =sub_080467EC
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080467EE
	.align 2, 0
_080467E8: .4byte _080467EC
_080467EC: @ 0x080467EC
	b _08046810
_080467EE:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r2]
	ldr r0, _0804680C @ =gUnknown_8704100
	ldr r1, [r7, #0x60]
	str r0, [r1, #4]
	ldr r2, [r7, #0x64]
	str r2, [r1, #8]
	ldr r3, [r7, #0x68]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	adds r0, r1, #0
	b _08046854
	.align 2, 0
_0804680C: .4byte gUnknown_8704100
_08046810:
	ldr r2, [r7, #0x68]
	adds r2, #4
	ldr r1, [r7, #0x68]
	ldr r0, [r1, #4]
	str r0, [r7, #0x48]
	movs r0, #0
	str r0, [r7, #0x4c]
	adds r1, r7, #0
	adds r1, #0x50
	str r7, [r7, #0x50]
	ldr r0, _08046830 @ =sub_08046834
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _08046836
	.align 2, 0
_08046830: .4byte _08046834
_08046834: @ 0x08046834
	b _08046850
_08046836:
	adds r0, r7, #0
	adds r0, #0x48
	str r0, [r2]
	ldr r0, [r7, #0x60]
	movs r1, #0
	bl sub_08045F98
	ldr r1, [r7, #0x68]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08046850:
	bl sub_080443CC
_08046854:
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_08046724

	thumb_func_start sub_08046860
sub_08046860: @ 0x08046860
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	mov r7, sp
	str r0, [r7, #0x30]
	str r1, [r7, #0x38]
	bl sub_0804441C
	str r0, [r7, #0x34]
	adds r3, r0, #0
	ldr r0, _080468A4 @ =gUnknown_8704160
	ldr r1, [r7, #0x30]
	str r0, [r1, #4]
	ldr r0, [r7, #0x38]
	str r0, [r1]
	ldr r2, [r7, #0x34]
	adds r2, #4
	ldr r1, [r7, #0x34]
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _080468A8 @ =sub_080468AC
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080468AE
	.align 2, 0
_080468A4: .4byte gUnknown_8704160
_080468A8: .4byte _080468AC
_080468AC: @ 0x080468AC
	b _080468C4
_080468AE:
	str r7, [r2]
	ldr r0, _080468C0 @ =gUnknown_8704118
	ldr r1, [r7, #0x30]
	str r0, [r1, #4]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	adds r0, r1, #0
	b _08046908
	.align 2, 0
_080468C0: .4byte gUnknown_8704118
_080468C4:
	ldr r2, [r7, #0x34]
	adds r2, #4
	ldr r1, [r7, #0x34]
	ldr r0, [r1, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _080468E4 @ =sub_080468E8
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080468EA
	.align 2, 0
_080468E4: .4byte _080468E8
_080468E8: @ 0x080468E8
	b _08046904
_080468EA:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	ldr r0, [r7, #0x30]
	movs r1, #0
	bl sub_08045F98
	ldr r1, [r7, #0x34]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08046904:
	bl sub_080443CC
_08046908:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_08046860

	thumb_func_start sub_08046914
sub_08046914: @ 0x08046914
	push {lr}
	adds r2, r0, #0
	ldr r0, _0804692C @ =gUnknown_8704188
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804692A
	adds r0, r2, #0
	bl sub_0804753C
_0804692A:
	pop {pc}
	.align 2, 0
_0804692C: .4byte gUnknown_8704188
	thumb_func_end sub_08046914

	thumb_func_start sub_08046930
sub_08046930: @ 0x08046930
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	mov r7, sp
	str r0, [r7, #0x30]
	bl sub_0804441C
	adds r2, r0, #0
	adds r4, r2, #0
	ldr r0, _08046968 @ =gUnknown_8704188
	ldr r1, [r7, #0x30]
	str r0, [r1]
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _0804696C @ =sub_08046970
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08046972
	.align 2, 0
_08046968: .4byte gUnknown_8704188
_0804696C: .4byte _08046970
_08046970: @ 0x08046970
	b _08046988
_08046972:
	str r7, [r3]
	ldr r0, _08046984 @ =gUnknown_8704130
	ldr r1, [r7, #0x30]
	str r0, [r1]
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	adds r0, r1, #0
	b _080469C8
	.align 2, 0
_08046984: .4byte gUnknown_8704130
_08046988:
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _080469A4 @ =sub_080469A8
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080469AA
	.align 2, 0
_080469A4: .4byte _080469A8
_080469A8: @ 0x080469A8
	b _080469C4
_080469AA:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r3]
	ldr r0, _080469C0 @ =gUnknown_8704188
	ldr r1, [r7, #0x30]
	str r0, [r1]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	bl sub_0804449C
	.align 2, 0
_080469C0: .4byte gUnknown_8704188
_080469C4:
	bl sub_080443CC
_080469C8:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_08046930

	thumb_func_start sub_080469D4
sub_080469D4: @ 0x080469D4
	push {lr}
	adds r2, r0, #0
	ldr r0, _080469EC @ =gUnknown_8704188
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080469EA
	adds r0, r2, #0
	bl sub_0804753C
_080469EA:
	pop {pc}
	.align 2, 0
_080469EC: .4byte gUnknown_8704188
	thumb_func_end sub_080469D4

	thumb_func_start sub_080469F0
sub_080469F0: @ 0x080469F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	mov r7, sp
	str r0, [r7, #0x30]
	bl sub_0804441C
	adds r2, r0, #0
	adds r4, r2, #0
	ldr r0, _08046A28 @ =gUnknown_8704188
	ldr r1, [r7, #0x30]
	str r0, [r1]
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08046A2C @ =sub_08046A30
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08046A32
	.align 2, 0
_08046A28: .4byte gUnknown_8704188
_08046A2C: .4byte _08046A30
_08046A30: @ 0x08046A30
	b _08046A48
_08046A32:
	str r7, [r3]
	ldr r0, _08046A44 @ =gUnknown_8704148
	ldr r1, [r7, #0x30]
	str r0, [r1]
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	adds r0, r1, #0
	b _08046A88
	.align 2, 0
_08046A44: .4byte gUnknown_8704148
_08046A48:
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _08046A64 @ =sub_08046A68
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08046A6A
	.align 2, 0
_08046A64: .4byte _08046A68
_08046A68: @ 0x08046A68
	b _08046A84
_08046A6A:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r3]
	ldr r0, _08046A80 @ =gUnknown_8704188
	ldr r1, [r7, #0x30]
	str r0, [r1]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	bl sub_0804449C
	.align 2, 0
_08046A80: .4byte gUnknown_8704188
_08046A84:
	bl sub_080443CC
_08046A88:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_080469F0

	thumb_func_start sub_08046A94
sub_08046A94: @ 0x08046A94
	push {lr}
	bl sub_08045FB4
	movs r1, #1
	eors r0, r1
	pop {pc}
	thumb_func_end sub_08046A94

	thumb_func_start sub_08046AA0
sub_08046AA0: @ 0x08046AA0
	ldr r0, [r0]
	bx lr
	thumb_func_end sub_08046AA0

	thumb_func_start sub_08046AA4
sub_08046AA4: @ 0x08046AA4
	ldr r2, _08046AAC @ =gUnknown_8704160
	str r2, [r0, #4]
	str r1, [r0]
	bx lr
	.align 2, 0
_08046AAC: .4byte gUnknown_8704160
	thumb_func_end sub_08046AA4

	thumb_func_start sub_08046AB0
sub_08046AB0: @ 0x08046AB0
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r2, #0
	beq _08046AE0
	movs r0, #0x20
	subs r0, r0, r2
	cmp r0, #0
	bgt _08046ACC
	movs r4, #0
	negs r0, r0
	adds r3, r6, #0
	lsrs r3, r0
	b _08046ADC
_08046ACC:
	adds r1, r6, #0
	lsls r1, r0
	adds r4, r6, #0
	lsrs r4, r2
	adds r0, r5, #0
	lsrs r0, r2
	adds r3, r0, #0
	orrs r3, r1
_08046ADC:
	adds r1, r4, #0
	adds r0, r3, #0
_08046AE0:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end sub_08046AB0

	thumb_func_start sub_08046AE4
sub_08046AE4: @ 0x08046AE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r3, [sp]
	ldr r0, _08046B50 @ =0x0000FFFF
	mov ip, r0
	adds r2, r3, #0
	ands r2, r0
	lsrs r3, r3, #0x10
	ldr r1, [sp, #8]
	adds r0, r1, #0
	mov r4, ip
	ands r0, r4
	lsrs r1, r1, #0x10
	adds r5, r2, #0
	muls r5, r0, r5
	adds r4, r2, #0
	muls r4, r1, r4
	adds r2, r3, #0
	muls r2, r0, r2
	muls r3, r1, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r2
	cmp r4, r2
	bhs _08046B24
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_08046B24:
	lsrs r0, r4, #0x10
	adds r7, r3, r0
	mov r1, ip
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r6, r0, #0
	orrs r6, r5
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r3, [sp]
	ldr r4, [sp, #0xc]
	adds r2, r3, #0
	muls r2, r4, r2
	ldr r5, [sp, #4]
	ldr r4, [sp, #8]
	adds r3, r5, #0
	muls r3, r4, r3
	adds r2, r2, r3
	adds r1, r7, r2
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08046B50: .4byte 0x0000FFFF
	thumb_func_end sub_08046AE4

	thumb_func_start sub_08046B54
sub_08046B54: @ 0x08046B54
	push {r4, lr}
	rsbs r2, r0, #0
	adds r3, r2, #0
	negs r1, r1
	cmp r2, #0
	beq _08046B62
	subs r1, #1
_08046B62:
	adds r4, r1, #0
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_08046B54

	thumb_func_start sub_08046B6C
sub_08046B6C:
	push {lr}
	ldr r0, _08046B78 @ =gUnknown_8703718
	ldr r0, [r0]
	bl _call_via_r0
	.align 2, 0
_08046B78: .4byte gUnknown_8703718
	thumb_func_end sub_08046B6C

	thumb_func_start sub_08046B7C
sub_08046B7C: @ 0x08046B7C
	push {lr}
	bl sub_08046B6C
	.align 2, 0
	thumb_func_end sub_08046B7C

	thumb_func_start sub_08046B84
sub_08046B84: @ 0x08046B84
	ldr r1, _08046B90 @ =gUnknown_8703718
	ldr r2, [r1]
	str r0, [r1]
	adds r0, r2, #0
	bx lr
	.align 2, 0
_08046B90: .4byte gUnknown_8703718
	thumb_func_end sub_08046B84

	thumb_func_start sub_08046B94
sub_08046B94: @ 0x08046B94
	ldr r1, _08046BA0 @ =gUnknown_8703720
	ldr r2, [r1]
	str r0, [r1]
	adds r0, r2, #0
	bx lr
	.align 2, 0
_08046BA0: .4byte gUnknown_8703720
	thumb_func_end sub_08046B94

	thumb_func_start sub_08046BA4
sub_08046BA4: @ 0x08046BA4
	push {lr}
	ldr r0, _08046BB0 @ =gUnknown_8703720
	ldr r0, [r0]
	bl _call_via_r0
	.align 2, 0
_08046BB0: .4byte gUnknown_8703720
	thumb_func_end sub_08046BA4

	thumb_func_start sub_08046BB4
sub_08046BB4: @ 0x08046BB4
	push {lr}
	bl sub_0804442C
	ldr r0, [r0]
	adds r0, #8
	pop {pc}
	thumb_func_end sub_08046BB4

	thumb_func_start sub_08046BC0
sub_08046BC0: @ 0x08046BC0
	push {lr}
	bl sub_0804442C
	ldr r0, [r0]
	pop {pc}
	.align 2, 0
	thumb_func_end sub_08046BC0

	thumb_func_start sub_08046BCC
sub_08046BCC: @ 0x08046BCC
	push {lr}
	bl sub_0804442C
	ldr r0, [r0]
	movs r1, #1
	strb r1, [r0, #0x14]
	ldr r1, [r0, #0x1c]
	adds r1, #1
	str r1, [r0, #0x1c]
	pop {pc}
	thumb_func_end sub_08046BCC

	thumb_func_start sub_08046BE0
sub_08046BE0: @ 0x08046BE0
	push {lr}
	bl malloc
	cmp r0, #0
	bne _08046BEE
	bl sub_08046B6C
_08046BEE:
	pop {pc}
	thumb_func_end sub_08046BE0

	thumb_func_start sub_08046BF0
sub_08046BF0: @ 0x08046BF0
	push {lr}
	bl free
	pop {pc}
	thumb_func_end sub_08046BF0

	thumb_func_start sub_08046BF8
sub_08046BF8: @ 0x08046BF8
	push {r4, lr}
	adds r4, r0, #0
	cmp r2, #0
	beq _08046C0A
	ldrh r2, [r2, #4]
	cmp r2, #4
	beq _08046C0A
	movs r0, #0
	b _08046C28
_08046C0A:
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _08046C16
	ldr r0, [r4, #8]
	b _08046C28
_08046C16:
	bl _call_via_r1
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x20]
	bl sub_08047628
	cmp r0, #0
	beq _08046C28
	str r0, [r4, #8]
_08046C28:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_08046BF8

	thumb_func_start sub_08046C2C
sub_08046C2C: @ 0x08046C2C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r0, #0x24
	bl sub_08046BE0
	adds r4, r0, #0
	mov r0, r8
	str r0, [r4, #8]
	str r5, [r4, #0xc]
	str r6, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x1c]
	strb r0, [r4, #0x14]
	mov r0, r8
	str r0, [r4, #0x20]
	ldr r0, _08046C70 @ =sub_08046BF8
	str r0, [r4]
	movs r0, #4
	strh r0, [r4, #4]
	movs r0, #1
	strh r0, [r4, #6]
	bl sub_0804442C
	ldr r1, [r0]
	str r1, [r4, #0x18]
	str r4, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, pc}
	.align 2, 0
_08046C70: .4byte sub_08046BF8
	thumb_func_end sub_08046C2C

	thumb_func_start sub_08046C74
sub_08046C74: @ 0x08046C74
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0804442C
	adds r2, r0, #0
	ldr r0, [r4, #0x1c]
	subs r0, #1
	str r0, [r4, #0x1c]
	cmp r0, #0
	bne _08046CE0
	ldr r1, [r2]
	cmp r4, r1
	bne _08046C94
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	beq _08046CE0
_08046C94:
	cmp r1, #0
	beq _08046CB6
	ldr r5, [r4, #0x18]
	ldr r3, [r4, #0x10]
	cmp r1, r4
	beq _08046CB2
_08046CA0:
	ldr r0, [r2]
	adds r2, r0, #0
	adds r2, #0x18
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _08046CB6
	adds r1, r0, #0
	cmp r1, r4
	bne _08046CA0
_08046CB2:
	cmp r1, #0
	bne _08046CBA
_08046CB6:
	bl sub_08046B6C
_08046CBA:
	str r5, [r2]
	cmp r3, #0
	beq _08046CC8
	ldr r0, [r4, #8]
	movs r1, #2
	bl _call_via_r3
_08046CC8:
	ldr r0, [r4, #0xc]
	bl sub_08047974
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08046CDA
	ldr r0, [r4, #0x20]
	bl sub_08046BF0
_08046CDA:
	adds r0, r4, #0
	bl sub_08046BF0
_08046CE0:
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end sub_08046C74

	thumb_func_start sub_08046CE4
sub_08046CE4: @ 0x08046CE4
	push {lr}
	bl sub_0804442C
	ldr r1, [r0]
	cmp r1, #0
	bne _08046CF4
	bl sub_08046B6C
_08046CF4:
	movs r0, #0
	strb r0, [r1, #0x14]
	pop {pc}
	.align 2, 0
	thumb_func_end sub_08046CE4

	thumb_func_start sub_08046CFC
sub_08046CFC: @ 0x08046CFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe0
	mov r7, sp
	movs r2, #0xa0
	adds r2, r2, r7
	str r0, [r2]
	movs r3, #0xa4
	adds r3, r3, r7
	str r1, [r3]
	bl sub_0804441C
	movs r6, #0xb0
	adds r6, r6, r7
	str r0, [r6]
	movs r1, #0xc8
	adds r1, r1, r7
	str r0, [r1]
	bl sub_0804442C
	ldr r0, [r0]
	movs r2, #0xa8
	adds r2, r2, r7
	str r0, [r2]
	adds r3, r7, #0
	adds r3, #8
	movs r6, #0xcc
	adds r6, r6, r7
	str r3, [r6]
	adds r0, r7, #0
	adds r0, #0x20
	movs r1, #0xd4
	adds r1, r1, r7
	str r0, [r1]
	movs r2, #0xa0
	adds r2, r2, r7
	ldr r2, [r2]
	cmp r2, #0
	ble _08046D9C
	movs r3, #0xa4
	adds r3, r3, r7
	ldr r3, [r3]
	movs r6, #0xdc
	adds r6, r6, r7
	str r3, [r6]
	movs r6, #0xac
	adds r6, r6, r7
	str r2, [r6]
_08046D62:
	movs r1, #0xdc
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1]
	movs r2, #0xa8
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #8]
	bl sub_08047628
	cmp r0, #0
	beq _08046D84
	bl sub_08046CE4
	bl sub_0804449C
_08046D84:
	movs r0, #0xdc
	adds r0, r0, r7
	ldr r6, [r0]
	adds r6, #4
	str r6, [r0]
	movs r2, #0xac
	adds r2, r2, r7
	ldr r1, [r2]
	subs r1, #1
	str r1, [r2]
	cmp r1, #0
	bne _08046D62
_08046D9C:
	movs r3, #0xb0
	adds r3, r3, r7
	ldr r1, [r3]
	adds r1, #4
	ldr r6, [r3]
	ldr r0, [r6, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08046DC8 @ =sub_08046DCC
	movs r2, #0xcc
	adds r2, r2, r7
	ldr r2, [r2]
	str r0, [r2, #4]
	mov r3, sp
	str r3, [r2, #8]
	movs r0, #0xd0
	adds r0, r0, r7
	str r1, [r0]
	b _08046DCE
	.align 2, 0
_08046DC8: .4byte _08046DCC
_08046DCC: @ 0x08046DCC
	b _08046DD4
_08046DCE:
	str r7, [r1]
	bl sub_08046BA4
_08046DD4:
	bl sub_08046BCC
	movs r1, #0xb4
	adds r1, r1, r7
	str r0, [r1]
	movs r2, #0xb0
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08046E00 @ =sub_08046E04
	movs r3, #0xd4
	adds r3, r3, r7
	ldr r3, [r3]
	str r0, [r3, #4]
	mov r6, sp
	str r6, [r3, #8]
	b _08046E06
	.align 2, 0
_08046E00: .4byte _08046E04
_08046E04: @ 0x08046E04
	b _080470A2
_08046E06:
	adds r0, r7, #0
	adds r0, #0x18
	movs r1, #0xd0
	adds r1, r1, r7
	ldr r1, [r1]
	str r0, [r1]
	movs r2, #0xa8
	adds r2, r2, r7
	ldr r2, [r2]
	movs r3, #0xb4
	adds r3, r3, r7
	ldr r3, [r3]
	cmp r2, r3
	beq _08046E7E
	movs r6, #0xa8
	adds r6, r6, r7
	str r3, [r6]
	movs r0, #0xa0
	adds r0, r0, r7
	ldr r0, [r0]
	cmp r0, #0
	ble _08046E7E
	movs r1, #0xa4
	adds r1, r1, r7
	ldr r1, [r1]
	movs r2, #0xd8
	adds r2, r2, r7
	str r1, [r2]
	movs r2, #0xb8
	adds r2, r2, r7
	str r0, [r2]
_08046E44:
	movs r3, #0xd8
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3]
	movs r6, #0xa8
	adds r6, r6, r7
	ldr r6, [r6]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #8]
	bl sub_08047628
	cmp r0, #0
	beq _08046E66
	bl sub_08046CE4
	bl sub_0804449C
_08046E66:
	movs r0, #0xd8
	adds r0, r0, r7
	ldr r6, [r0]
	adds r6, #4
	str r6, [r0]
	movs r2, #0xb8
	adds r2, r2, r7
	ldr r1, [r2]
	subs r1, #1
	str r1, [r2]
	cmp r1, #0
	bne _08046E44
_08046E7E:
	bl sub_0804AB2C
	movs r3, #0xbc
	adds r3, r3, r7
	str r0, [r3]
	movs r6, #0
	movs r0, #0xc0
	adds r0, r0, r7
	str r6, [r0]
	movs r1, #0xa0
	adds r1, r1, r7
	ldr r1, [r1]
	cmp r6, r1
	blt _08046E9C
	b _0804709A
_08046E9C:
	movs r2, #0xc0
	adds r2, r2, r7
	ldr r2, [r2]
	lsls r0, r2, #2
	movs r3, #0xa4
	adds r3, r3, r7
	ldr r3, [r3]
	adds r0, r0, r3
	ldr r0, [r0]
	movs r6, #0xa8
	adds r6, r6, r7
	ldr r6, [r6]
	ldr r2, [r6, #8]
	movs r3, #0xbc
	adds r3, r3, r7
	ldr r1, [r3]
	bl sub_08047628
	cmp r0, #0
	bne _08046EC6
	b _08047084
_08046EC6:
	movs r6, #0xb0
	adds r6, r6, r7
	ldr r6, [r6]
	ldr r1, [r6, #4]
	ldr r0, [r1, #4]
	str r0, [r7, #0x34]
	ldr r0, _08046F10 @ =sub_08047454
	str r0, [r7, #0x38]
	adds r4, r7, #0
	adds r4, #0x30
	str r4, [r7, #0x3c]
	adds r0, r7, #0
	adds r0, #0x34
	str r0, [r1, #4]
	adds r2, r7, #0
	adds r2, #0x40
	mov ip, r4
	movs r0, #0xc8
	adds r0, r0, r7
	ldr r3, [r0]
	ldr r1, _08046F14 @ =gUnknown_8704188
	str r1, [r7, #0x30]
	ldr r5, [r0]
	adds r5, #4
	ldr r6, [r0]
	ldr r0, [r6, #4]
	str r0, [r7, #0x40]
	movs r0, #0
	str r0, [r2, #4]
	str r2, [r7, #0x48]
	ldr r0, _08046F18 @ =sub_08046F1C
	str r0, [r7, #0x4c]
	mov r0, sp
	str r0, [r7, #0x50]
	adds r6, r1, #0
	b _08046F20
	.align 2, 0
_08046F10: .4byte sub_08047454
_08046F14: .4byte gUnknown_8704188
_08046F18: .4byte _08046F1C
_08046F1C: @ 0x08046F1C
	subs r7, #0x40
	b _08046F38
_08046F20:
	str r2, [r5]
	ldr r0, _08046F34 @ =gUnknown_8704170
	str r0, [r4]
	movs r1, #0xc8
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	b _08046F70
	.align 2, 0
_08046F34: .4byte gUnknown_8704170
_08046F38:
	adds r1, r3, #4
	ldr r0, [r3, #4]
	str r0, [r7, #0x58]
	movs r0, #0
	str r0, [r2, #0x1c]
	str r2, [r7, #0x60]
	ldr r0, _08046F50 @ =sub_08046F54
	str r0, [r7, #0x64]
	mov r0, sp
	str r0, [r7, #0x68]
	b _08046F58
	.align 2, 0
_08046F50: .4byte _08046F54
_08046F54: @ 0x08046F54
	subs r7, #0x40
	b _08046F6C
_08046F58:
	adds r0, r7, #0
	adds r0, #0x58
	str r0, [r1]
	mov r1, ip
	str r6, [r1]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	bl sub_0804449C
_08046F6C:
	bl sub_080443CC
_08046F70:
	movs r0, #4
	bl sub_08046BE0
	movs r2, #0xc4
	adds r2, r2, r7
	str r0, [r2]
	movs r3, #0xb0
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	str r0, [r7, #0x70]
	movs r0, #0
	str r0, [r7, #0x74]
	adds r1, r7, #0
	adds r1, #0x78
	str r7, [r7, #0x78]
	ldr r0, _08046F9C @ =sub_08046FA0
	str r0, [r1, #4]
	mov r6, sp
	str r6, [r1, #8]
	b _08046FA2
	.align 2, 0
_08046F9C: .4byte _08046FA0
_08046FA0: @ 0x08046FA0
	b _0804709E
_08046FA2:
	adds r0, r7, #0
	adds r0, #0x70
	movs r1, #0xd0
	adds r1, r1, r7
	ldr r1, [r1]
	str r0, [r1]
	adds r3, r7, #0
	adds r3, #0x40
	movs r2, #0xc4
	adds r2, r2, r7
	ldr r5, [r2]
	movs r6, #0xc8
	adds r6, r6, r7
	ldr r2, [r6]
	ldr r1, _08046FE0 @ =gUnknown_8704188
	movs r0, #0xc4
	adds r0, r0, r7
	ldr r0, [r0]
	str r1, [r0]
	adds r4, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7, #0x40]
	movs r0, #0
	str r0, [r3, #4]
	str r3, [r7, #0x48]
	ldr r0, _08046FE4 @ =sub_08046FE8
	str r0, [r7, #0x4c]
	mov r6, sp
	str r6, [r7, #0x50]
	adds r6, r1, #0
	b _08046FEC
	.align 2, 0
_08046FE0: .4byte gUnknown_8704188
_08046FE4: .4byte _08046FE8
_08046FE8: @ 0x08046FE8
	subs r7, #0x40
	b _08047010
_08046FEC:
	movs r0, #0x40
	adds r0, r0, r7
	str r0, [r4]
	ldr r0, _0804700C @ =gUnknown_8704170
	movs r1, #0xc4
	adds r1, r1, r7
	ldr r1, [r1]
	str r0, [r1]
	movs r2, #0xc8
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	b _08047046
	.align 2, 0
_0804700C: .4byte gUnknown_8704170
_08047010:
	adds r1, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7, #0x58]
	movs r0, #0
	str r0, [r3, #0x1c]
	str r3, [r7, #0x60]
	ldr r0, _08047028 @ =sub_0804702C
	str r0, [r7, #0x64]
	mov r0, sp
	str r0, [r7, #0x68]
	b _08047030
	.align 2, 0
_08047028: .4byte _0804702C
_0804702C: @ 0x0804702C
	subs r7, #0x40
	b _08047042
_08047030:
	adds r0, r7, #0
	adds r0, #0x58
	str r0, [r1]
	str r6, [r5]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	bl sub_0804449C
_08047042:
	bl sub_080443CC
_08047046:
	movs r1, #0xb0
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #4]
	ldr r1, [r0]
	movs r2, #0xb0
	adds r2, r2, r7
	ldr r2, [r2]
	str r1, [r2, #4]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	str r6, [r7, #0x30]
	movs r3, #0xc4
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3]
	ldr r0, [r0, #4]
	bl _call_via_r0
	adds r1, r0, #0
	ldr r2, _08047080 @ =sub_08047454
	movs r6, #0xc4
	adds r6, r6, r7
	ldr r0, [r6]
	bl sub_08046C2C
	bl sub_0804449C
	.align 2, 0
_08047080: .4byte sub_08047454
_08047084:
	movs r1, #0xc0
	adds r1, r1, r7
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	movs r2, #0xa0
	adds r2, r2, r7
	ldr r2, [r2]
	cmp r0, r2
	bge _0804709A
	b _08046E9C
_0804709A:
	bl sub_08046B6C
_0804709E:
	bl sub_08046B6C
_080470A2:
	adds r2, r7, #0
	adds r2, #0x88
	movs r3, #0xb0
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r0, [r3, #4]
	str r0, [r2]
	movs r0, #0
	str r0, [r2, #4]
	adds r0, r7, #0
	adds r0, #0x90
	str r7, [r0]
	ldr r1, _080470C4 @ =sub_080470C8
	str r1, [r0, #4]
	mov r6, sp
	str r6, [r0, #8]
	b _080470CA
	.align 2, 0
_080470C4: .4byte _080470C8
_080470C8: @ 0x080470C8
	b _080470EC
_080470CA:
	movs r0, #0xd0
	adds r0, r0, r7
	ldr r0, [r0]
	str r2, [r0]
	movs r1, #0xb4
	adds r1, r1, r7
	ldr r0, [r1]
	bl sub_08046C74
	movs r2, #0xb0
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	bl sub_0804449C
_080470EC:
	bl sub_080443CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	mov r7, sp
	bl sub_0804441C
	str r0, [r7, #0x58]
	adds r3, r0, #0
	str r3, [r7, #0x60]
	adds r5, r3, #0
	adds r5, #4
	ldr r1, [r3, #4]
	ldr r0, [r1, #4]
	str r0, [r7, #4]
	ldr r0, _08047140 @ =sub_080469D4
	str r0, [r7, #8]
	str r7, [r7, #0xc]
	adds r0, r7, #4
	str r0, [r1, #4]
	adds r1, r7, #0
	adds r1, #0x10
	adds r4, r7, #0
	ldr r2, [r7, #0x58]
	ldr r0, _08047144 @ =gUnknown_8704188
	str r0, [r7]
	adds r6, r2, #0
	ldr r0, [r6, #4]
	str r0, [r7, #0x10]
	movs r0, #0
	str r0, [r1, #4]
	str r1, [r7, #0x18]
	ldr r0, _08047148 @ =sub_0804714C
	str r0, [r7, #0x1c]
	mov r0, sp
	str r0, [r7, #0x20]
	b _08047150
	.align 2, 0
_08047140: .4byte sub_080469D4
_08047144: .4byte gUnknown_8704188
_08047148: .4byte _0804714C
_0804714C: @ 0x0804714C
	subs r7, #0x10
	b _08047164
_08047150:
	str r1, [r5]
	ldr r0, _08047160 @ =gUnknown_8704148
	str r0, [r4]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	b _080471A0
	.align 2, 0
_08047160: .4byte gUnknown_8704148
_08047164:
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7, #0x28]
	movs r0, #0
	str r0, [r1, #0x1c]
	str r1, [r7, #0x30]
	ldr r0, _0804717C @ =sub_08047180
	str r0, [r7, #0x34]
	mov r1, sp
	str r1, [r7, #0x38]
	b _08047184
	.align 2, 0
_0804717C: .4byte _08047180
_08047180: @ 0x08047180
	subs r7, #0x10
	b _0804719C
_08047184:
	adds r0, r7, #0
	adds r0, #0x28
	str r0, [r3]
	ldr r0, _08047198 @ =gUnknown_8704188
	str r0, [r4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	bl sub_0804449C
	.align 2, 0
_08047198: .4byte gUnknown_8704188
_0804719C:
	bl sub_080443CC
_080471A0:
	movs r0, #4
	bl sub_08046BE0
	str r0, [r7, #0x5c]
	ldr r2, [r7, #0x58]
	adds r2, #4
	ldr r6, [r7, #0x58]
	ldr r0, [r6, #4]
	str r0, [r7, #0x40]
	movs r0, #0
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r1, #0x48
	str r7, [r7, #0x48]
	ldr r0, _080471C8 @ =sub_080471CC
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080471CE
	.align 2, 0
_080471C8: .4byte _080471CC
_080471CC: @ 0x080471CC
	b _08047288
_080471CE:
	adds r0, r7, #0
	adds r0, #0x40
	str r0, [r2]
	adds r3, r7, #0
	adds r3, #0x10
	ldr r5, [r7, #0x5c]
	ldr r2, [r7, #0x60]
	ldr r1, _080471F8 @ =gUnknown_8704188
	str r1, [r5]
	adds r4, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7, #0x10]
	movs r0, #0
	str r0, [r3, #4]
	str r3, [r7, #0x18]
	ldr r0, _080471FC @ =sub_08047200
	str r0, [r7, #0x1c]
	mov r6, sp
	str r6, [r7, #0x20]
	b _08047204
	.align 2, 0
_080471F8: .4byte gUnknown_8704188
_080471FC: .4byte _08047200
_08047200: @ 0x08047200
	subs r7, #0x10
	b _08047220
_08047204:
	movs r0, #0x10
	adds r0, r0, r7
	str r0, [r4]
	ldr r0, _0804721C @ =gUnknown_8704148
	ldr r1, [r7, #0x5c]
	str r0, [r1]
	ldr r6, [r7, #0x60]
	ldr r0, [r6, #4]
	ldr r0, [r0]
	str r0, [r6, #4]
	b _08047256
	.align 2, 0
_0804721C: .4byte gUnknown_8704148
_08047220:
	adds r4, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7, #0x28]
	movs r0, #0
	str r0, [r3, #0x1c]
	str r3, [r7, #0x30]
	ldr r0, _08047238 @ =sub_0804723C
	str r0, [r7, #0x34]
	mov r0, sp
	str r0, [r7, #0x38]
	b _08047240
	.align 2, 0
_08047238: .4byte _0804723C
_0804723C: @ 0x0804723C
	subs r7, #0x10
	b _08047252
_08047240:
	adds r0, r7, #0
	adds r0, #0x28
	str r0, [r4]
	str r1, [r5]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	bl sub_0804449C
_08047252:
	bl sub_080443CC
_08047256:
	ldr r1, [r7, #0x58]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r1, [r0, #4]
	ldr r1, [r1]
	str r1, [r0, #4]
	ldr r0, _08047280 @ =gUnknown_8704188
	str r0, [r7]
	ldr r6, [r7, #0x5c]
	ldr r0, [r6]
	ldr r0, [r0, #4]
	bl _call_via_r0
	adds r1, r0, #0
	ldr r2, _08047284 @ =sub_080469D4
	ldr r0, [r7, #0x5c]
	bl sub_08046C2C
	bl sub_0804449C
	.align 2, 0
_08047280: .4byte gUnknown_8704188
_08047284: .4byte sub_080469D4
_08047288:
	bl sub_08046B6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	mov r7, sp
	bl sub_0804441C
	str r0, [r7, #0x58]
	adds r3, r0, #0
	str r3, [r7, #0x60]
	adds r5, r3, #0
	adds r5, #4
	ldr r1, [r3, #4]
	ldr r0, [r1, #4]
	str r0, [r7, #4]
	ldr r0, _080472DC @ =sub_08046914
	str r0, [r7, #8]
	str r7, [r7, #0xc]
	adds r0, r7, #4
	str r0, [r1, #4]
	adds r1, r7, #0
	adds r1, #0x10
	adds r4, r7, #0
	ldr r2, [r7, #0x58]
	ldr r0, _080472E0 @ =gUnknown_8704188
	str r0, [r7]
	adds r6, r2, #0
	ldr r0, [r6, #4]
	str r0, [r7, #0x10]
	movs r0, #0
	str r0, [r1, #4]
	str r1, [r7, #0x18]
	ldr r0, _080472E4 @ =sub_080472E8
	str r0, [r7, #0x1c]
	mov r0, sp
	str r0, [r7, #0x20]
	b _080472EC
	.align 2, 0
_080472DC: .4byte sub_08046914
_080472E0: .4byte gUnknown_8704188
_080472E4: .4byte _080472E8
_080472E8: @ 0x080472E8
	subs r7, #0x10
	b _08047300
_080472EC:
	str r1, [r5]
	ldr r0, _080472FC @ =gUnknown_8704130
	str r0, [r4]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	b _0804733C
	.align 2, 0
_080472FC: .4byte gUnknown_8704130
_08047300:
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7, #0x28]
	movs r0, #0
	str r0, [r1, #0x1c]
	str r1, [r7, #0x30]
	ldr r0, _08047318 @ =sub_0804731C
	str r0, [r7, #0x34]
	mov r1, sp
	str r1, [r7, #0x38]
	b _08047320
	.align 2, 0
_08047318: .4byte _0804731C
_0804731C: @ 0x0804731C
	subs r7, #0x10
	b _08047338
_08047320:
	adds r0, r7, #0
	adds r0, #0x28
	str r0, [r3]
	ldr r0, _08047334 @ =gUnknown_8704188
	str r0, [r4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	bl sub_0804449C
	.align 2, 0
_08047334: .4byte gUnknown_8704188
_08047338:
	bl sub_080443CC
_0804733C:
	movs r0, #4
	bl sub_08046BE0
	str r0, [r7, #0x5c]
	ldr r2, [r7, #0x58]
	adds r2, #4
	ldr r6, [r7, #0x58]
	ldr r0, [r6, #4]
	str r0, [r7, #0x40]
	movs r0, #0
	str r0, [r7, #0x44]
	adds r1, r7, #0
	adds r1, #0x48
	str r7, [r7, #0x48]
	ldr r0, _08047364 @ =sub_08047368
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0804736A
	.align 2, 0
_08047364: .4byte _08047368
_08047368: @ 0x08047368
	b _08047424
_0804736A:
	adds r0, r7, #0
	adds r0, #0x40
	str r0, [r2]
	adds r3, r7, #0
	adds r3, #0x10
	ldr r5, [r7, #0x5c]
	ldr r2, [r7, #0x60]
	ldr r1, _08047394 @ =gUnknown_8704188
	str r1, [r5]
	adds r4, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7, #0x10]
	movs r0, #0
	str r0, [r3, #4]
	str r3, [r7, #0x18]
	ldr r0, _08047398 @ =sub_0804739C
	str r0, [r7, #0x1c]
	mov r6, sp
	str r6, [r7, #0x20]
	b _080473A0
	.align 2, 0
_08047394: .4byte gUnknown_8704188
_08047398: .4byte _0804739C
_0804739C: @ 0x0804739C
	subs r7, #0x10
	b _080473BC
_080473A0:
	movs r0, #0x10
	adds r0, r0, r7
	str r0, [r4]
	ldr r0, _080473B8 @ =gUnknown_8704130
	ldr r1, [r7, #0x5c]
	str r0, [r1]
	ldr r6, [r7, #0x60]
	ldr r0, [r6, #4]
	ldr r0, [r0]
	str r0, [r6, #4]
	b _080473F2
	.align 2, 0
_080473B8: .4byte gUnknown_8704130
_080473BC:
	adds r4, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7, #0x28]
	movs r0, #0
	str r0, [r3, #0x1c]
	str r3, [r7, #0x30]
	ldr r0, _080473D4 @ =sub_080473D8
	str r0, [r7, #0x34]
	mov r0, sp
	str r0, [r7, #0x38]
	b _080473DC
	.align 2, 0
_080473D4: .4byte _080473D8
_080473D8: @ 0x080473D8
	subs r7, #0x10
	b _080473EE
_080473DC:
	adds r0, r7, #0
	adds r0, #0x28
	str r0, [r4]
	str r1, [r5]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	bl sub_0804449C
_080473EE:
	bl sub_080443CC
_080473F2:
	ldr r1, [r7, #0x58]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	ldr r1, [r0, #4]
	ldr r1, [r1]
	str r1, [r0, #4]
	ldr r0, _0804741C @ =gUnknown_8704188
	str r0, [r7]
	ldr r6, [r7, #0x5c]
	ldr r0, [r6]
	ldr r0, [r0, #4]
	bl _call_via_r0
	adds r1, r0, #0
	ldr r2, _08047420 @ =sub_08046914
	ldr r0, [r7, #0x5c]
	bl sub_08046C2C
	bl sub_0804449C
	.align 2, 0
_0804741C: .4byte gUnknown_8704188
_08047420: .4byte sub_08046914
_08047424:
	bl sub_08046B6C
	push {lr}
	bl sub_0804442C
	ldr r0, [r0]
	movs r1, #0
	cmp r0, #0
	beq _0804743E
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _0804743E
	movs r1, #1
_0804743E:
	adds r0, r1, #0
	pop {pc}
	.align 2, 0
	thumb_func_end sub_08046CFC

	thumb_func_start sub_08047444
sub_08047444: @ 0x08047444
	push {lr}
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl _call_via_r0
	ldr r0, [r0]
	pop {pc}
	.align 2, 0
	thumb_func_end sub_08047444

	thumb_func_start sub_08047454
sub_08047454: @ 0x08047454
	push {lr}
	adds r2, r0, #0
	ldr r0, _0804746C @ =gUnknown_8704188
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804746A
	adds r0, r2, #0
	bl sub_0804753C
_0804746A:
	pop {pc}
	.align 2, 0
_0804746C: .4byte gUnknown_8704188
	thumb_func_end sub_08047454

	thumb_func_start sub_08047470
sub_08047470: @ 0x08047470
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	mov r7, sp
	str r0, [r7, #0x30]
	bl sub_0804441C
	adds r2, r0, #0
	adds r4, r2, #0
	ldr r0, _080474A8 @ =gUnknown_8704188
	ldr r1, [r7, #0x30]
	str r0, [r1]
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _080474AC @ =sub_080474B0
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080474B2
	.align 2, 0
_080474A8: .4byte gUnknown_8704188
_080474AC: .4byte _080474B0
_080474B0: @ 0x080474B0
	b _080474C8
_080474B2:
	str r7, [r3]
	ldr r0, _080474C4 @ =gUnknown_8704170
	ldr r1, [r7, #0x30]
	str r0, [r1]
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	adds r0, r1, #0
	b _08047508
	.align 2, 0
_080474C4: .4byte gUnknown_8704170
_080474C8:
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	adds r1, r7, #0
	adds r1, #0x20
	str r7, [r7, #0x20]
	ldr r0, _080474E4 @ =sub_080474E8
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080474EA
	.align 2, 0
_080474E4: .4byte _080474E8
_080474E8: @ 0x080474E8
	b _08047504
_080474EA:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r3]
	ldr r0, _08047500 @ =gUnknown_8704188
	ldr r1, [r7, #0x30]
	str r0, [r1]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	bl sub_0804449C
	.align 2, 0
_08047500: .4byte gUnknown_8704188
_08047504:
	bl sub_080443CC
_08047508:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_08047470

	thumb_func_start sub_08047514
sub_08047514: @ 0x08047514
	push {lr}
	adds r2, r0, #0
	ldr r0, _0804752C @ =gUnknown_8704188
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804752A
	adds r0, r2, #0
	bl sub_0804753C
_0804752A:
	pop {pc}
	.align 2, 0
_0804752C: .4byte gUnknown_8704188
	thumb_func_end sub_08047514

	thumb_func_start sub_08047530
sub_08047530: @ 0x08047530
	ldr r1, _08047538 @ =gUnknown_8704188
	str r1, [r0]
	bx lr
	.align 2, 0
_08047538: .4byte gUnknown_8704188
	thumb_func_end sub_08047530

	thumb_func_start sub_0804753C
sub_0804753C: @ 0x0804753C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	mov r7, sp
	str r0, [r7, #0x48]
	bl sub_0804441C
	str r0, [r7, #0x4c]
	adds r2, r0, #0
	adds r2, #4
	ldr r0, [r0, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08047570 @ =sub_08047574
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _08047576
	.align 2, 0
_08047570: .4byte _08047574
_08047574: @ 0x08047574
	b _0804758E
_08047576:
	str r7, [r2]
	ldr r1, [r7, #0x48]
	cmp r1, #0
	beq _08047584
	adds r0, r1, #0
	bl free
_08047584:
	ldr r1, [r7, #0x4c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	b _0804760A
_0804758E:
	bl sub_08046BCC
	str r0, [r7, #0x50]
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
	ldr r0, _080475B4 @ =sub_080475B8
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080475BA
	.align 2, 0
_080475B4: .4byte _080475B8
_080475B8: @ 0x080475B8
	b _080475CA
_080475BA:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r2]
	adds r1, r7, #0
	adds r1, #0x30
	movs r0, #0
	bl sub_08046CFC
_080475CA:
	ldr r2, [r7, #0x4c]
	adds r2, #4
	ldr r1, [r7, #0x4c]
	ldr r0, [r1, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	adds r1, r7, #0
	adds r1, #0x38
	str r7, [r7, #0x38]
	ldr r0, _080475E8 @ =sub_080475EC
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _080475EE
	.align 2, 0
_080475E8: .4byte _080475EC
_080475EC: @ 0x080475EC
	b _08047606
_080475EE:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r2]
	ldr r0, [r7, #0x50]
	bl sub_08046C74
	ldr r1, [r7, #0x4c]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	bl sub_0804449C
_08047606:
	bl sub_080443CC
_0804760A:
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_0804753C

	thumb_func_start sub_08047618
sub_08047618: @ 0x08047618
	push {lr}
	ldr r0, [r0]
	ldr r1, [r1]
	bl strcmp
	lsrs r0, r0, #0x1f
	pop {pc}
	.align 2, 0
	thumb_func_end sub_08047618

	thumb_func_start sub_08047628
sub_08047628: @ 0x08047628
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r2
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08045FB4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08047648
	mov r0, sl
	b _08047968
_08047648:
	movs r0, #0
	str r0, [sp, #8]
	cmp r4, #0
	beq _0804768C
	ldr r2, [r4, #4]
	ldr r0, [r2, #4]
	ldr r1, _08047684 @ =sub_0804AA8C
	movs r6, #0
	ldrsh r3, [r2, r6]
	adds r3, r4, r3
	ldr r2, _08047688 @ =sub_0804AB0C
	str r2, [sp]
	str r4, [sp, #4]
	movs r2, #1
	bl sub_080480E8
	adds r2, r0, #0
	cmp r2, #0
	beq _0804768C
	ldr r1, [r2, #4]
	movs r3, #0x10
	ldrsh r0, [r1, r3]
	adds r0, r2, r0
	ldr r4, [sp, #8]
	str r4, [sp]
	str r4, [sp, #4]
	ldr r4, [r1, #0x14]
	adds r1, r5, #0
	b _080477E8
	.align 2, 0
_08047684: .4byte sub_0804AA8C
_08047688: .4byte sub_0804AB0C
_0804768C:
	cmp r4, #0
	bne _08047692
	b _08047966
_08047692:
	ldr r1, [r4, #4]
	ldr r0, [r1, #4]
	ldr r6, _08047700 @ =gUnknown_804AC95
	movs r2, #0
	ldrsh r3, [r1, r2]
	adds r3, r4, r3
	ldr r7, _08047704 @ =sub_0804AB0C
	str r7, [sp]
	str r4, [sp, #4]
	adds r1, r6, #0
	movs r2, #1
	bl sub_080480E8
	adds r4, r0, #0
	cmp r4, #0
	bne _080476B4
	b _08047966
_080476B4:
	cmp r5, #0
	bne _080476BA
	b _08047966
_080476BA:
	ldr r1, [r5, #4]
	ldr r0, [r1, #4]
	movs r2, #0
	ldrsh r3, [r1, r2]
	adds r3, r5, r3
	str r7, [sp]
	str r5, [sp, #4]
	adds r1, r6, #0
	movs r2, #1
	bl sub_080480E8
	cmp r0, #0
	bne _080476D6
	b _08047966
_080476D6:
	ldr r5, [r4, #8]
	ldr r6, [r0, #8]
	cmp r5, #0
	beq _0804770C
	ldr r2, [r5, #4]
	ldr r0, [r2, #4]
	ldr r1, _08047708 @ =gUnknown_804AC65
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r3, r5, r3
	str r7, [sp]
	str r5, [sp, #4]
	movs r2, #1
	bl sub_080480E8
	cmp r0, #0
	beq _0804770C
	ldr r7, [r0, #0xc]
	ldr r5, [r0, #8]
	b _0804770E
	.align 2, 0
_08047700: .4byte gUnknown_804AC95
_08047704: .4byte sub_0804AB0C
_08047708: .4byte gUnknown_804AC65
_0804770C:
	movs r7, #0
_0804770E:
	cmp r6, #0
	beq _08047740
	ldr r2, [r6, #4]
	ldr r0, [r2, #4]
	ldr r1, _08047738 @ =gUnknown_804AC65
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r3, r6, r3
	ldr r2, _0804773C @ =sub_0804AB0C
	str r2, [sp]
	str r6, [sp, #4]
	movs r2, #1
	bl sub_080480E8
	cmp r0, #0
	beq _08047740
	ldr r6, [r0, #0xc]
	mov r8, r6
	ldr r6, [r0, #8]
	b _08047744
	.align 2, 0
_08047738: .4byte gUnknown_804AC65
_0804773C: .4byte sub_0804AB0C
_08047740:
	movs r0, #0
	mov r8, r0
_08047744:
	movs r2, #1
	adds r1, r7, #0
	ands r1, r2
	mov r0, r8
	ands r0, r2
	cmp r1, r0
	ble _08047754
	b _08047966
_08047754:
	movs r1, #2
	ands r7, r1
	mov r0, r8
	ands r0, r1
	cmp r7, r0
	ble _08047762
	b _08047966
_08047762:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08045FB4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08047772
	b _08047962
_08047772:
	bl sub_08048134
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_08045FB4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080477B4
	cmp r5, #0
	beq _080477A4
	ldr r2, [r5, #4]
	ldr r0, [r2, #4]
	ldr r1, _080477AC @ =gUnknown_804AC05
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r3, r5, r3
	ldr r2, _080477B0 @ =sub_0804AB0C
	str r2, [sp]
	str r5, [sp, #4]
	movs r2, #1
	bl sub_080480E8
	cmp r0, #0
	bne _080477B4
_080477A4:
	mov r6, sl
	str r6, [sp, #8]
	b _08047966
	.align 2, 0
_080477AC: .4byte gUnknown_804AC05
_080477B0: .4byte sub_0804AB0C
_080477B4:
	cmp r5, #0
	beq _080477FC
	ldr r2, [r5, #4]
	ldr r0, [r2, #4]
	ldr r1, _080477F4 @ =sub_0804AA8C
	movs r4, #0
	ldrsh r3, [r2, r4]
	adds r3, r5, r3
	ldr r2, _080477F8 @ =sub_0804AB0C
	str r2, [sp]
	str r5, [sp, #4]
	movs r2, #1
	bl sub_080480E8
	adds r1, r0, #0
	cmp r1, #0
	beq _080477FC
	ldr r2, [r1, #4]
	movs r3, #0x10
	ldrsh r0, [r2, r3]
	adds r0, r1, r0
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r4, [r2, #0x14]
	adds r1, r6, #0
_080477E8:
	movs r2, #1
	mov r3, sl
	bl _call_via_r4
	str r0, [sp, #8]
	b _08047966
	.align 2, 0
_080477F4: .4byte sub_0804AA8C
_080477F8: .4byte sub_0804AB0C
_080477FC:
	cmp r5, #0
	bne _08047802
	b _08047966
_08047802:
	ldr r1, [r5, #4]
	ldr r0, [r1, #4]
	ldr r4, _08047858 @ =gUnknown_804AC95
	movs r2, #0
	ldrsh r3, [r1, r2]
	adds r3, r5, r3
	ldr r7, _0804785C @ =sub_0804AB0C
	str r7, [sp]
	str r5, [sp, #4]
	adds r1, r4, #0
	movs r2, #1
	bl sub_080480E8
	adds r5, r0, #0
	cmp r5, #0
	bne _08047824
	b _08047966
_08047824:
	cmp r6, #0
	bne _0804782A
	b _08047966
_0804782A:
	ldr r1, [r6, #4]
	ldr r0, [r1, #4]
	movs r2, #0
	ldrsh r3, [r1, r2]
	adds r3, r6, r3
	str r7, [sp]
	str r6, [sp, #4]
	adds r1, r4, #0
	movs r2, #1
	bl sub_080480E8
	adds r4, r0, #0
	cmp r4, #0
	bne _08047848
	b _08047966
_08047848:
	movs r3, #1
	mov r6, r8
	ands r6, r3
	str r6, [sp, #0xc]
	ldr r6, [r4, #8]
	ldr r5, [r5, #8]
	mov sb, r7
	b _080478C6
	.align 2, 0
_08047858: .4byte gUnknown_804AC95
_0804785C: .4byte sub_0804AB0C
_08047860:
	cmp r6, #0
	bne _08047868
	movs r4, #0
	b _08047882
_08047868:
	ldr r1, [r6, #4]
	ldr r0, [r1, #4]
	movs r2, #0
	ldrsh r3, [r1, r2]
	adds r3, r6, r3
	mov r4, sb
	str r4, [sp]
	str r6, [sp, #4]
	ldr r1, _0804788C @ =gUnknown_804AC95
	movs r2, #1
	bl sub_080480E8
	adds r4, r0, #0
_08047882:
	cmp r5, #0
	bne _08047890
	movs r5, #0
	b _080478AA
	.align 2, 0
_0804788C: .4byte gUnknown_804AC95
_08047890:
	ldr r1, [r5, #4]
	ldr r0, [r1, #4]
	movs r6, #0
	ldrsh r3, [r1, r6]
	adds r3, r5, r3
	mov r1, sb
	str r1, [sp]
	str r5, [sp, #4]
	ldr r1, _080478EC @ =gUnknown_804AC95
	movs r2, #1
	bl sub_080480E8
	adds r5, r0, #0
_080478AA:
	cmp r4, #0
	beq _08047966
	cmp r5, #0
	beq _08047966
	movs r0, #1
	mov r2, r8
	eors r2, r0
	ands r2, r0
	cmp r2, #0
	beq _080478C2
	movs r3, #0
	str r3, [sp, #0xc]
_080478C2:
	ldr r6, [r4, #8]
	ldr r5, [r5, #8]
_080478C6:
	cmp r5, #0
	beq _080478F4
	ldr r1, [r5, #4]
	ldr r0, [r1, #4]
	movs r4, #0
	ldrsh r3, [r1, r4]
	adds r3, r5, r3
	mov r1, sb
	str r1, [sp]
	str r5, [sp, #4]
	ldr r1, _080478F0 @ =gUnknown_804AC65
	movs r2, #1
	bl sub_080480E8
	cmp r0, #0
	beq _080478F4
	ldr r7, [r0, #0xc]
	ldr r5, [r0, #8]
	b _080478F6
	.align 2, 0
_080478EC: .4byte gUnknown_804AC95
_080478F0: .4byte gUnknown_804AC65
_080478F4:
	movs r7, #0
_080478F6:
	cmp r6, #0
	beq _08047924
	ldr r1, [r6, #4]
	ldr r0, [r1, #4]
	movs r2, #0
	ldrsh r3, [r1, r2]
	adds r3, r6, r3
	mov r4, sb
	str r4, [sp]
	str r6, [sp, #4]
	ldr r1, _08047920 @ =gUnknown_804AC65
	movs r2, #1
	bl sub_080480E8
	cmp r0, #0
	beq _08047924
	ldr r6, [r0, #0xc]
	mov r8, r6
	ldr r6, [r0, #8]
	b _08047928
	.align 2, 0
_08047920: .4byte gUnknown_804AC65
_08047924:
	movs r0, #0
	mov r8, r0
_08047928:
	movs r0, #1
	adds r4, r7, #0
	ands r4, r0
	mov r3, r8
	ands r3, r0
	cmp r4, r3
	bgt _08047966
	movs r0, #2
	adds r2, r0, #0
	ands r2, r7
	mov r1, r8
	ands r1, r0
	cmp r2, r1
	bgt _08047966
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _08047952
	cmp r4, r3
	blt _08047966
	cmp r2, r1
	blt _08047966
_08047952:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08045FB4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08047962
	b _08047860
_08047962:
	mov r1, sl
	str r1, [sp, #8]
_08047966:
	ldr r0, [sp, #8]
_08047968:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_08047628

	thumb_func_start sub_08047974
sub_08047974: @ 0x08047974
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	cmp r4, #0
	bne _08047982
	movs r1, #0
	b _0804799C
_08047982:
	ldr r2, [r4, #4]
	ldr r0, [r2, #4]
	ldr r1, _080479A8 @ =gUnknown_804AC95
	movs r5, #0
	ldrsh r3, [r2, r5]
	adds r3, r4, r3
	ldr r2, _080479AC @ =sub_0804AB0C
	str r2, [sp]
	str r4, [sp, #4]
	movs r2, #1
	bl sub_080480E8
	adds r1, r0, #0
_0804799C:
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	add sp, #8
	pop {r4, r5, pc}
	.align 2, 0
_080479A8: .4byte gUnknown_804AC95
_080479AC: .4byte sub_0804AB0C
	thumb_func_end sub_08047974

	thumb_func_start sub_080479B0
sub_080479B0: @ 0x080479B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	adds r5, r0, #0
	adds r6, r1, #0
	mov sb, r2
	bl sub_0804441C
	adds r1, r0, #0
	adds r3, r1, #0
	adds r4, r1, #0
	adds r2, r1, #4
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _080479E0 @ =sub_080479E4
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _080479E6
	.align 2, 0
_080479E0: .4byte _080479E4
_080479E4: @ 0x080479E4
	b _080479F2
_080479E6:
	str r7, [r2]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	adds r0, r5, #0
	b _08047A5C
_080479F2:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08047A10 @ =sub_08047A14
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08047A16
	.align 2, 0
_08047A10: .4byte _08047A14
_08047A14: @ 0x08047A14
	b _08047A26
_08047A16:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_08047A26:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _08047A3C @ =sub_08047A40
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _08047A42
	.align 2, 0
_08047A3C: .4byte _08047A40
_08047A40: @ 0x08047A40
	b _08047A58
_08047A42:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08047A58:
	bl sub_080443CC
_08047A5C:
	adds r2, r5, #0
	cmp r2, #0
	beq _08047ADE
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r0, _08047A84 @ =gUnknown_8704160
	str r0, [r3, #4]
	str r6, [r3]
	adds r5, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08047A88 @ =sub_08047A8C
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08047A8E
	.align 2, 0
_08047A84: .4byte gUnknown_8704160
_08047A88: .4byte _08047A8C
_08047A8C: @ 0x08047A8C
	b _08047AA4
_08047A8E:
	str r7, [r5]
	ldr r0, _08047AA0 @ =gUnknown_8704200
	str r0, [r2, #4]
	mov r0, sb
	str r0, [r2, #8]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	b _08047ADE
	.align 2, 0
_08047AA0: .4byte gUnknown_8704200
_08047AA4:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08047ABC @ =sub_08047AC0
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08047AC2
	.align 2, 0
_08047ABC: .4byte _08047AC0
_08047AC0: @ 0x08047AC0
	b _08047ADA
_08047AC2:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08047ADA:
	bl sub_080443CC
_08047ADE:
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_080479B0

	thumb_func_start sub_08047AE8
sub_08047AE8: @ 0x08047AE8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x48
	mov r7, sp
	adds r5, r0, #0
	adds r6, r1, #0
	mov sb, r2
	mov r8, r3
	bl sub_0804441C
	adds r1, r0, #0
	adds r3, r1, #0
	adds r4, r1, #0
	adds r2, r1, #4
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08047B1C @ =sub_08047B20
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08047B22
	.align 2, 0
_08047B1C: .4byte _08047B20
_08047B20: @ 0x08047B20
	b _08047B2E
_08047B22:
	str r7, [r2]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	adds r0, r5, #0
	b _08047B98
_08047B2E:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08047B4C @ =sub_08047B50
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08047B52
	.align 2, 0
_08047B4C: .4byte _08047B50
_08047B50: @ 0x08047B50
	b _08047B62
_08047B52:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_08047B62:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _08047B78 @ =sub_08047B7C
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _08047B7E
	.align 2, 0
_08047B78: .4byte _08047B7C
_08047B7C: @ 0x08047B7C
	b _08047B94
_08047B7E:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08047B94:
	bl sub_080443CC
_08047B98:
	adds r2, r5, #0
	cmp r2, #0
	beq _08047C1E
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r0, _08047BC0 @ =gUnknown_8704160
	str r0, [r3, #4]
	str r6, [r3]
	adds r5, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08047BC4 @ =sub_08047BC8
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08047BCA
	.align 2, 0
_08047BC0: .4byte gUnknown_8704160
_08047BC4: .4byte _08047BC8
_08047BC8: @ 0x08047BC8
	b _08047BE4
_08047BCA:
	str r7, [r5]
	ldr r0, _08047BE0 @ =gUnknown_87041F0
	str r0, [r2, #4]
	mov r0, r8
	str r0, [r2, #8]
	mov r0, sb
	str r0, [r2, #0xc]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	b _08047C1E
	.align 2, 0
_08047BE0: .4byte gUnknown_87041F0
_08047BE4:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08047BFC @ =sub_08047C00
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08047C02
	.align 2, 0
_08047BFC: .4byte _08047C00
_08047C00: @ 0x08047C00
	b _08047C1A
_08047C02:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08047C1A:
	bl sub_080443CC
_08047C1E:
	add sp, #0x48
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_08047AE8

	thumb_func_start sub_08047C28
sub_08047C28: @ 0x08047C28
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	adds r5, r0, #0
	adds r6, r1, #0
	bl sub_0804441C
	adds r1, r0, #0
	adds r3, r1, #0
	adds r4, r1, #0
	adds r2, r1, #4
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08047C58 @ =sub_08047C5C
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08047C5E
	.align 2, 0
_08047C58: .4byte _08047C5C
_08047C5C: @ 0x08047C5C
	b _08047C6A
_08047C5E:
	str r7, [r2]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	adds r0, r5, #0
	b _08047CD4
_08047C6A:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08047C88 @ =sub_08047C8C
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08047C8E
	.align 2, 0
_08047C88: .4byte _08047C8C
_08047C8C: @ 0x08047C8C
	b _08047C9E
_08047C8E:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_08047C9E:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _08047CB4 @ =sub_08047CB8
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _08047CBA
	.align 2, 0
_08047CB4: .4byte _08047CB8
_08047CB8: @ 0x08047CB8
	b _08047CD0
_08047CBA:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08047CD0:
	bl sub_080443CC
_08047CD4:
	cmp r5, #0
	beq _08047D4E
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r0, _08047CF8 @ =gUnknown_8704160
	str r0, [r2, #4]
	str r6, [r2]
	adds r3, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08047CFC @ =sub_08047D00
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08047D02
	.align 2, 0
_08047CF8: .4byte gUnknown_8704160
_08047CFC: .4byte _08047D00
_08047D00: @ 0x08047D00
	b _08047D14
_08047D02:
	str r7, [r3]
	ldr r0, _08047D10 @ =gUnknown_87041D0
	str r0, [r5, #4]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	b _08047D4E
	.align 2, 0
_08047D10: .4byte gUnknown_87041D0
_08047D14:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08047D2C @ =sub_08047D30
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08047D32
	.align 2, 0
_08047D2C: .4byte _08047D30
_08047D30: @ 0x08047D30
	b _08047D4A
_08047D32:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r2, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08047D4A:
	bl sub_080443CC
_08047D4E:
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_08047C28

	thumb_func_start sub_08047D58
sub_08047D58: @ 0x08047D58
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	adds r5, r0, #0
	adds r6, r1, #0
	bl sub_0804441C
	adds r1, r0, #0
	adds r3, r1, #0
	adds r4, r1, #0
	adds r2, r1, #4
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08047D88 @ =sub_08047D8C
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08047D8E
	.align 2, 0
_08047D88: .4byte _08047D8C
_08047D8C: @ 0x08047D8C
	b _08047D9A
_08047D8E:
	str r7, [r2]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	adds r0, r5, #0
	b _08047E04
_08047D9A:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08047DB8 @ =sub_08047DBC
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08047DBE
	.align 2, 0
_08047DB8: .4byte _08047DBC
_08047DBC: @ 0x08047DBC
	b _08047DCE
_08047DBE:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_08047DCE:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _08047DE4 @ =sub_08047DE8
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _08047DEA
	.align 2, 0
_08047DE4: .4byte _08047DE8
_08047DE8: @ 0x08047DE8
	b _08047E00
_08047DEA:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08047E00:
	bl sub_080443CC
_08047E04:
	cmp r5, #0
	beq _08047E7E
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r0, _08047E28 @ =gUnknown_8704160
	str r0, [r2, #4]
	str r6, [r2]
	adds r3, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08047E2C @ =sub_08047E30
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08047E32
	.align 2, 0
_08047E28: .4byte gUnknown_8704160
_08047E2C: .4byte _08047E30
_08047E30: @ 0x08047E30
	b _08047E44
_08047E32:
	str r7, [r3]
	ldr r0, _08047E40 @ =gUnknown_87041C0
	str r0, [r5, #4]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	b _08047E7E
	.align 2, 0
_08047E40: .4byte gUnknown_87041C0
_08047E44:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08047E5C @ =sub_08047E60
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08047E62
	.align 2, 0
_08047E5C: .4byte _08047E60
_08047E60: @ 0x08047E60
	b _08047E7A
_08047E62:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r2, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08047E7A:
	bl sub_080443CC
_08047E7E:
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_08047D58

	thumb_func_start sub_08047E88
sub_08047E88: @ 0x08047E88
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	adds r5, r0, #0
	adds r6, r1, #0
	bl sub_0804441C
	adds r1, r0, #0
	adds r3, r1, #0
	adds r4, r1, #0
	adds r2, r1, #4
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08047EB8 @ =sub_08047EBC
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08047EBE
	.align 2, 0
_08047EB8: .4byte _08047EBC
_08047EBC: @ 0x08047EBC
	b _08047ECA
_08047EBE:
	str r7, [r2]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	adds r0, r5, #0
	b _08047F34
_08047ECA:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08047EE8 @ =sub_08047EEC
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08047EEE
	.align 2, 0
_08047EE8: .4byte _08047EEC
_08047EEC: @ 0x08047EEC
	b _08047EFE
_08047EEE:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_08047EFE:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _08047F14 @ =sub_08047F18
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _08047F1A
	.align 2, 0
_08047F14: .4byte _08047F18
_08047F18: @ 0x08047F18
	b _08047F30
_08047F1A:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08047F30:
	bl sub_080443CC
_08047F34:
	cmp r5, #0
	beq _08047FAE
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r0, _08047F58 @ =gUnknown_8704160
	str r0, [r2, #4]
	str r6, [r2]
	adds r3, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08047F5C @ =sub_08047F60
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08047F62
	.align 2, 0
_08047F58: .4byte gUnknown_8704160
_08047F5C: .4byte _08047F60
_08047F60: @ 0x08047F60
	b _08047F74
_08047F62:
	str r7, [r3]
	ldr r0, _08047F70 @ =gUnknown_87041B0
	str r0, [r5, #4]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	b _08047FAE
	.align 2, 0
_08047F70: .4byte gUnknown_87041B0
_08047F74:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08047F8C @ =sub_08047F90
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08047F92
	.align 2, 0
_08047F8C: .4byte _08047F90
_08047F90: @ 0x08047F90
	b _08047FAA
_08047F92:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r2, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08047FAA:
	bl sub_080443CC
_08047FAE:
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_08047E88

	thumb_func_start sub_08047FB8
sub_08047FB8: @ 0x08047FB8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	adds r5, r0, #0
	adds r6, r1, #0
	bl sub_0804441C
	adds r1, r0, #0
	adds r3, r1, #0
	adds r4, r1, #0
	adds r2, r1, #4
	ldr r0, [r1, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08047FE8 @ =sub_08047FEC
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08047FEE
	.align 2, 0
_08047FE8: .4byte _08047FEC
_08047FEC: @ 0x08047FEC
	b _08047FFA
_08047FEE:
	str r7, [r2]
	ldr r0, [r3, #4]
	ldr r0, [r0]
	str r0, [r3, #4]
	adds r0, r5, #0
	b _08048064
_08047FFA:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08048018 @ =sub_0804801C
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _0804801E
	.align 2, 0
_08048018: .4byte _0804801C
_0804801C: @ 0x0804801C
	b _0804802E
_0804801E:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_0804802E:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _08048044 @ =sub_08048048
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _0804804A
	.align 2, 0
_08048044: .4byte _08048048
_08048048: @ 0x08048048
	b _08048060
_0804804A:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08048060:
	bl sub_080443CC
_08048064:
	cmp r5, #0
	beq _080480DE
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r0, _08048088 @ =gUnknown_8704160
	str r0, [r2, #4]
	str r6, [r2]
	adds r3, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _0804808C @ =sub_08048090
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08048092
	.align 2, 0
_08048088: .4byte gUnknown_8704160
_0804808C: .4byte _08048090
_08048090: @ 0x08048090
	b _080480A4
_08048092:
	str r7, [r3]
	ldr r0, _080480A0 @ =gUnknown_87041A0
	str r0, [r5, #4]
	ldr r0, [r1, #4]
	ldr r0, [r0]
	str r0, [r1, #4]
	b _080480DE
	.align 2, 0
_080480A0: .4byte gUnknown_87041A0
_080480A4:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _080480BC @ =sub_080480C0
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _080480C2
	.align 2, 0
_080480BC: .4byte _080480C0
_080480C0: @ 0x080480C0
	b _080480DA
_080480C2:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r2, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_080480DA:
	bl sub_080443CC
_080480DE:
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end sub_08047FB8

	thumb_func_start sub_080480E8
sub_080480E8: @ 0x080480E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r7, [sp, #0x24]
	bl _call_via_r0
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r5, r0, #0
	adds r5, #0x10
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	adds r4, r4, r0
	bl _call_via_r6
	adds r6, r0, #0
	bl _call_via_r7
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	ldr r5, [r5, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	mov r2, r8
	mov r3, sb
	bl _call_via_r5
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_080480E8

	thumb_func_start sub_08048134
sub_08048134: @ 0x08048134
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	bl sub_0804441C
	adds r2, r0, #0
	ldr r5, _08048168 @ =gUnknown_2033C00
	ldr r1, [r5]
	cmp r1, #0
	beq _0804814E
	b _0804826A
_0804814E:
	adds r6, r5, #0
	adds r4, r2, #0
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7]
	str r1, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _0804816C @ =sub_08048170
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08048172
	.align 2, 0
_08048168: .4byte gUnknown_2033C00
_0804816C: .4byte _08048170
_08048170: @ 0x08048170
	b _0804817E
_08048172:
	str r7, [r3]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r0, r5, #0
	b _080481E8
_0804817E:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _0804819C @ =sub_080481A0
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _080481A2
	.align 2, 0
_0804819C: .4byte _080481A0
_080481A0: @ 0x080481A0
	b _080481B2
_080481A2:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_080481B2:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _080481C8 @ =sub_080481CC
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _080481CE
	.align 2, 0
_080481C8: .4byte _080481CC
_080481CC: @ 0x080481CC
	b _080481E4
_080481CE:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_080481E4:
	bl sub_080443CC
_080481E8:
	adds r5, r6, #0
	cmp r5, #0
	beq _0804826A
	adds r3, r0, #0
	ldr r1, _08048210 @ =gUnknown_83B656C
	adds r4, r2, #0
	ldr r0, _08048214 @ =gUnknown_8704160
	str r0, [r3, #4]
	str r1, [r3]
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08048218 @ =sub_0804821C
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _0804821E
	.align 2, 0
_08048210: .4byte gUnknown_83B656C
_08048214: .4byte gUnknown_8704160
_08048218: .4byte _0804821C
_0804821C: @ 0x0804821C
	b _08048230
_0804821E:
	str r7, [r1]
	ldr r0, _0804822C @ =gUnknown_87041E0
	str r0, [r5, #4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	b _0804826A
	.align 2, 0
_0804822C: .4byte gUnknown_87041E0
_08048230:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08048248 @ =sub_0804824C
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _0804824E
	.align 2, 0
_08048248: .4byte _0804824C
_0804824C: @ 0x0804824C
	b _08048266
_0804824E:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08048266:
	bl sub_080443CC
_0804826A:
	ldr r0, _08048274 @ =gUnknown_2033C00
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08048274: .4byte gUnknown_2033C00
	thumb_func_end sub_08048134

	thumb_func_start sub_08048278
sub_08048278: @ 0x08048278
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	bl sub_0804441C
	adds r2, r0, #0
	ldr r5, _080482AC @ =gUnknown_2033C08
	ldr r1, [r5]
	cmp r1, #0
	beq _08048292
	b _080483AE
_08048292:
	adds r6, r5, #0
	adds r4, r2, #0
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7]
	str r1, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _080482B0 @ =sub_080482B4
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _080482B6
	.align 2, 0
_080482AC: .4byte gUnknown_2033C08
_080482B0: .4byte _080482B4
_080482B4: @ 0x080482B4
	b _080482C2
_080482B6:
	str r7, [r3]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r0, r5, #0
	b _0804832C
_080482C2:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _080482E0 @ =sub_080482E4
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _080482E6
	.align 2, 0
_080482E0: .4byte _080482E4
_080482E4: @ 0x080482E4
	b _080482F6
_080482E6:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_080482F6:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _0804830C @ =sub_08048310
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _08048312
	.align 2, 0
_0804830C: .4byte _08048310
_08048310: @ 0x08048310
	b _08048328
_08048312:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08048328:
	bl sub_080443CC
_0804832C:
	adds r5, r6, #0
	cmp r5, #0
	beq _080483AE
	adds r3, r0, #0
	ldr r1, _08048354 @ =gUnknown_83B6570
	adds r4, r2, #0
	ldr r0, _08048358 @ =gUnknown_8704160
	str r0, [r3, #4]
	str r1, [r3]
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _0804835C @ =sub_08048360
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08048362
	.align 2, 0
_08048354: .4byte gUnknown_83B6570
_08048358: .4byte gUnknown_8704160
_0804835C: .4byte _08048360
_08048360: @ 0x08048360
	b _08048374
_08048362:
	str r7, [r1]
	ldr r0, _08048370 @ =gUnknown_87041E0
	str r0, [r5, #4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	b _080483AE
	.align 2, 0
_08048370: .4byte gUnknown_87041E0
_08048374:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _0804838C @ =sub_08048390
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08048392
	.align 2, 0
_0804838C: .4byte _08048390
_08048390: @ 0x08048390
	b _080483AA
_08048392:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_080483AA:
	bl sub_080443CC
_080483AE:
	ldr r0, _080483B8 @ =gUnknown_2033C08
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080483B8: .4byte gUnknown_2033C08
	thumb_func_end sub_08048278

	thumb_func_start sub_080483BC
sub_080483BC: @ 0x080483BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	bl sub_0804441C
	adds r2, r0, #0
	ldr r5, _080483F0 @ =gUnknown_2033C10
	ldr r1, [r5]
	cmp r1, #0
	beq _080483D6
	b _080484F2
_080483D6:
	adds r6, r5, #0
	adds r4, r2, #0
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7]
	str r1, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _080483F4 @ =sub_080483F8
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _080483FA
	.align 2, 0
_080483F0: .4byte gUnknown_2033C10
_080483F4: .4byte _080483F8
_080483F8: @ 0x080483F8
	b _08048406
_080483FA:
	str r7, [r3]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r0, r5, #0
	b _08048470
_08048406:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08048424 @ =sub_08048428
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _0804842A
	.align 2, 0
_08048424: .4byte _08048428
_08048428: @ 0x08048428
	b _0804843A
_0804842A:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_0804843A:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _08048450 @ =sub_08048454
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _08048456
	.align 2, 0
_08048450: .4byte _08048454
_08048454: @ 0x08048454
	b _0804846C
_08048456:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_0804846C:
	bl sub_080443CC
_08048470:
	adds r5, r6, #0
	cmp r5, #0
	beq _080484F2
	adds r3, r0, #0
	ldr r1, _08048498 @ =gUnknown_83B6574
	adds r4, r2, #0
	ldr r0, _0804849C @ =gUnknown_8704160
	str r0, [r3, #4]
	str r1, [r3]
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _080484A0 @ =sub_080484A4
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _080484A6
	.align 2, 0
_08048498: .4byte gUnknown_83B6574
_0804849C: .4byte gUnknown_8704160
_080484A0: .4byte _080484A4
_080484A4: @ 0x080484A4
	b _080484B8
_080484A6:
	str r7, [r1]
	ldr r0, _080484B4 @ =gUnknown_87041E0
	str r0, [r5, #4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	b _080484F2
	.align 2, 0
_080484B4: .4byte gUnknown_87041E0
_080484B8:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _080484D0 @ =sub_080484D4
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _080484D6
	.align 2, 0
_080484D0: .4byte _080484D4
_080484D4: @ 0x080484D4
	b _080484EE
_080484D6:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_080484EE:
	bl sub_080443CC
_080484F2:
	ldr r0, _080484FC @ =gUnknown_2033C10
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080484FC: .4byte gUnknown_2033C10
	thumb_func_end sub_080483BC

	thumb_func_start sub_08048500
sub_08048500: @ 0x08048500
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	bl sub_0804441C
	adds r2, r0, #0
	ldr r5, _08048534 @ =gUnknown_2033C18
	ldr r1, [r5]
	cmp r1, #0
	beq _0804851A
	b _08048636
_0804851A:
	adds r6, r5, #0
	adds r4, r2, #0
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7]
	str r1, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08048538 @ =sub_0804853C
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _0804853E
	.align 2, 0
_08048534: .4byte gUnknown_2033C18
_08048538: .4byte _0804853C
_0804853C: @ 0x0804853C
	b _0804854A
_0804853E:
	str r7, [r3]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r0, r5, #0
	b _080485B4
_0804854A:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08048568 @ =sub_0804856C
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _0804856E
	.align 2, 0
_08048568: .4byte _0804856C
_0804856C: @ 0x0804856C
	b _0804857E
_0804856E:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_0804857E:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _08048594 @ =sub_08048598
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _0804859A
	.align 2, 0
_08048594: .4byte _08048598
_08048598: @ 0x08048598
	b _080485B0
_0804859A:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_080485B0:
	bl sub_080443CC
_080485B4:
	adds r5, r6, #0
	cmp r5, #0
	beq _08048636
	adds r3, r0, #0
	ldr r1, _080485DC @ =gUnknown_83B6578
	adds r4, r2, #0
	ldr r0, _080485E0 @ =gUnknown_8704160
	str r0, [r3, #4]
	str r1, [r3]
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _080485E4 @ =sub_080485E8
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _080485EA
	.align 2, 0
_080485DC: .4byte gUnknown_83B6578
_080485E0: .4byte gUnknown_8704160
_080485E4: .4byte _080485E8
_080485E8: @ 0x080485E8
	b _080485FC
_080485EA:
	str r7, [r1]
	ldr r0, _080485F8 @ =gUnknown_87041E0
	str r0, [r5, #4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	b _08048636
	.align 2, 0
_080485F8: .4byte gUnknown_87041E0
_080485FC:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08048614 @ =sub_08048618
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _0804861A
	.align 2, 0
_08048614: .4byte _08048618
_08048618: @ 0x08048618
	b _08048632
_0804861A:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08048632:
	bl sub_080443CC
_08048636:
	ldr r0, _08048640 @ =gUnknown_2033C18
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08048640: .4byte gUnknown_2033C18
	thumb_func_end sub_08048500

	thumb_func_start sub_08048644
sub_08048644: @ 0x08048644
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	bl sub_0804441C
	adds r2, r0, #0
	ldr r5, _08048678 @ =gUnknown_2033C20
	ldr r1, [r5]
	cmp r1, #0
	beq _0804865E
	b _0804877A
_0804865E:
	adds r6, r5, #0
	adds r4, r2, #0
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7]
	str r1, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _0804867C @ =sub_08048680
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08048682
	.align 2, 0
_08048678: .4byte gUnknown_2033C20
_0804867C: .4byte _08048680
_08048680: @ 0x08048680
	b _0804868E
_08048682:
	str r7, [r3]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r0, r5, #0
	b _080486F8
_0804868E:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _080486AC @ =sub_080486B0
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _080486B2
	.align 2, 0
_080486AC: .4byte _080486B0
_080486B0: @ 0x080486B0
	b _080486C2
_080486B2:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_080486C2:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _080486D8 @ =sub_080486DC
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _080486DE
	.align 2, 0
_080486D8: .4byte _080486DC
_080486DC: @ 0x080486DC
	b _080486F4
_080486DE:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_080486F4:
	bl sub_080443CC
_080486F8:
	adds r5, r6, #0
	cmp r5, #0
	beq _0804877A
	adds r3, r0, #0
	ldr r1, _08048720 @ =gUnknown_83B657C
	adds r4, r2, #0
	ldr r0, _08048724 @ =gUnknown_8704160
	str r0, [r3, #4]
	str r1, [r3]
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08048728 @ =sub_0804872C
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _0804872E
	.align 2, 0
_08048720: .4byte gUnknown_83B657C
_08048724: .4byte gUnknown_8704160
_08048728: .4byte _0804872C
_0804872C: @ 0x0804872C
	b _08048740
_0804872E:
	str r7, [r1]
	ldr r0, _0804873C @ =gUnknown_87041E0
	str r0, [r5, #4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	b _0804877A
	.align 2, 0
_0804873C: .4byte gUnknown_87041E0
_08048740:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08048758 @ =sub_0804875C
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _0804875E
	.align 2, 0
_08048758: .4byte _0804875C
_0804875C: @ 0x0804875C
	b _08048776
_0804875E:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08048776:
	bl sub_080443CC
_0804877A:
	ldr r0, _08048784 @ =gUnknown_2033C20
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08048784: .4byte gUnknown_2033C20
	thumb_func_end sub_08048644

	thumb_func_start sub_08048788
sub_08048788: @ 0x08048788
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	bl sub_0804441C
	adds r2, r0, #0
	ldr r5, _080487BC @ =gUnknown_2033C28
	ldr r1, [r5]
	cmp r1, #0
	beq _080487A2
	b _080488BE
_080487A2:
	adds r6, r5, #0
	adds r4, r2, #0
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7]
	str r1, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _080487C0 @ =sub_080487C4
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _080487C6
	.align 2, 0
_080487BC: .4byte gUnknown_2033C28
_080487C0: .4byte _080487C4
_080487C4: @ 0x080487C4
	b _080487D2
_080487C6:
	str r7, [r3]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r0, r5, #0
	b _0804883C
_080487D2:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _080487F0 @ =sub_080487F4
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _080487F6
	.align 2, 0
_080487F0: .4byte _080487F4
_080487F4: @ 0x080487F4
	b _08048806
_080487F6:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_08048806:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _0804881C @ =sub_08048820
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _08048822
	.align 2, 0
_0804881C: .4byte _08048820
_08048820: @ 0x08048820
	b _08048838
_08048822:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08048838:
	bl sub_080443CC
_0804883C:
	adds r5, r6, #0
	cmp r5, #0
	beq _080488BE
	adds r3, r0, #0
	ldr r1, _08048864 @ =gUnknown_83B6580
	adds r4, r2, #0
	ldr r0, _08048868 @ =gUnknown_8704160
	str r0, [r3, #4]
	str r1, [r3]
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _0804886C @ =sub_08048870
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08048872
	.align 2, 0
_08048864: .4byte gUnknown_83B6580
_08048868: .4byte gUnknown_8704160
_0804886C: .4byte _08048870
_08048870: @ 0x08048870
	b _08048884
_08048872:
	str r7, [r1]
	ldr r0, _08048880 @ =gUnknown_87041E0
	str r0, [r5, #4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	b _080488BE
	.align 2, 0
_08048880: .4byte gUnknown_87041E0
_08048884:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _0804889C @ =sub_080488A0
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _080488A2
	.align 2, 0
_0804889C: .4byte _080488A0
_080488A0: @ 0x080488A0
	b _080488BA
_080488A2:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_080488BA:
	bl sub_080443CC
_080488BE:
	ldr r0, _080488C8 @ =gUnknown_2033C28
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080488C8: .4byte gUnknown_2033C28
	thumb_func_end sub_08048788

	thumb_func_start sub_080488CC
sub_080488CC: @ 0x080488CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	bl sub_0804441C
	adds r2, r0, #0
	ldr r5, _08048900 @ =gUnknown_2033C30
	ldr r1, [r5]
	cmp r1, #0
	beq _080488E6
	b _08048A02
_080488E6:
	adds r6, r5, #0
	adds r4, r2, #0
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7]
	str r1, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08048904 @ =sub_08048908
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _0804890A
	.align 2, 0
_08048900: .4byte gUnknown_2033C30
_08048904: .4byte _08048908
_08048908: @ 0x08048908
	b _08048916
_0804890A:
	str r7, [r3]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r0, r5, #0
	b _08048980
_08048916:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08048934 @ =sub_08048938
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _0804893A
	.align 2, 0
_08048934: .4byte _08048938
_08048938: @ 0x08048938
	b _0804894A
_0804893A:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_0804894A:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _08048960 @ =sub_08048964
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _08048966
	.align 2, 0
_08048960: .4byte _08048964
_08048964: @ 0x08048964
	b _0804897C
_08048966:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_0804897C:
	bl sub_080443CC
_08048980:
	adds r5, r6, #0
	cmp r5, #0
	beq _08048A02
	adds r3, r0, #0
	ldr r1, _080489A8 @ =gUnknown_83B6584
	adds r4, r2, #0
	ldr r0, _080489AC @ =gUnknown_8704160
	str r0, [r3, #4]
	str r1, [r3]
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _080489B0 @ =sub_080489B4
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _080489B6
	.align 2, 0
_080489A8: .4byte gUnknown_83B6584
_080489AC: .4byte gUnknown_8704160
_080489B0: .4byte _080489B4
_080489B4: @ 0x080489B4
	b _080489C8
_080489B6:
	str r7, [r1]
	ldr r0, _080489C4 @ =gUnknown_87041E0
	str r0, [r5, #4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	b _08048A02
	.align 2, 0
_080489C4: .4byte gUnknown_87041E0
_080489C8:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _080489E0 @ =sub_080489E4
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _080489E6
	.align 2, 0
_080489E0: .4byte _080489E4
_080489E4: @ 0x080489E4
	b _080489FE
_080489E6:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_080489FE:
	bl sub_080443CC
_08048A02:
	ldr r0, _08048A0C @ =gUnknown_2033C30
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08048A0C: .4byte gUnknown_2033C30
	thumb_func_end sub_080488CC

	thumb_func_start sub_08048A10
sub_08048A10: @ 0x08048A10
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	bl sub_0804441C
	adds r2, r0, #0
	ldr r5, _08048A44 @ =gUnknown_2033C38
	ldr r1, [r5]
	cmp r1, #0
	beq _08048A2A
	b _08048B46
_08048A2A:
	adds r6, r5, #0
	adds r4, r2, #0
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7]
	str r1, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08048A48 @ =sub_08048A4C
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08048A4E
	.align 2, 0
_08048A44: .4byte gUnknown_2033C38
_08048A48: .4byte _08048A4C
_08048A4C: @ 0x08048A4C
	b _08048A5A
_08048A4E:
	str r7, [r3]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r0, r5, #0
	b _08048AC4
_08048A5A:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08048A78 @ =sub_08048A7C
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08048A7E
	.align 2, 0
_08048A78: .4byte _08048A7C
_08048A7C: @ 0x08048A7C
	b _08048A8E
_08048A7E:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_08048A8E:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _08048AA4 @ =sub_08048AA8
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _08048AAA
	.align 2, 0
_08048AA4: .4byte _08048AA8
_08048AA8: @ 0x08048AA8
	b _08048AC0
_08048AAA:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08048AC0:
	bl sub_080443CC
_08048AC4:
	adds r5, r6, #0
	cmp r5, #0
	beq _08048B46
	adds r3, r0, #0
	ldr r1, _08048AEC @ =gUnknown_83B6588
	adds r4, r2, #0
	ldr r0, _08048AF0 @ =gUnknown_8704160
	str r0, [r3, #4]
	str r1, [r3]
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08048AF4 @ =sub_08048AF8
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08048AFA
	.align 2, 0
_08048AEC: .4byte gUnknown_83B6588
_08048AF0: .4byte gUnknown_8704160
_08048AF4: .4byte _08048AF8
_08048AF8: @ 0x08048AF8
	b _08048B0C
_08048AFA:
	str r7, [r1]
	ldr r0, _08048B08 @ =gUnknown_87041E0
	str r0, [r5, #4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	b _08048B46
	.align 2, 0
_08048B08: .4byte gUnknown_87041E0
_08048B0C:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08048B24 @ =sub_08048B28
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08048B2A
	.align 2, 0
_08048B24: .4byte _08048B28
_08048B28: @ 0x08048B28
	b _08048B42
_08048B2A:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08048B42:
	bl sub_080443CC
_08048B46:
	ldr r0, _08048B50 @ =gUnknown_2033C38
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08048B50: .4byte gUnknown_2033C38
	thumb_func_end sub_08048A10

	thumb_func_start sub_08048B54
sub_08048B54: @ 0x08048B54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	bl sub_0804441C
	adds r2, r0, #0
	ldr r5, _08048B88 @ =gUnknown_2033C40
	ldr r1, [r5]
	cmp r1, #0
	beq _08048B6E
	b _08048C8A
_08048B6E:
	adds r6, r5, #0
	adds r4, r2, #0
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7]
	str r1, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08048B8C @ =sub_08048B90
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08048B92
	.align 2, 0
_08048B88: .4byte gUnknown_2033C40
_08048B8C: .4byte _08048B90
_08048B90: @ 0x08048B90
	b _08048B9E
_08048B92:
	str r7, [r3]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r0, r5, #0
	b _08048C08
_08048B9E:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08048BBC @ =sub_08048BC0
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08048BC2
	.align 2, 0
_08048BBC: .4byte _08048BC0
_08048BC0: @ 0x08048BC0
	b _08048BD2
_08048BC2:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_08048BD2:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _08048BE8 @ =sub_08048BEC
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _08048BEE
	.align 2, 0
_08048BE8: .4byte _08048BEC
_08048BEC: @ 0x08048BEC
	b _08048C04
_08048BEE:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08048C04:
	bl sub_080443CC
_08048C08:
	adds r5, r6, #0
	cmp r5, #0
	beq _08048C8A
	adds r3, r0, #0
	ldr r1, _08048C30 @ =gUnknown_83B658C
	adds r4, r2, #0
	ldr r0, _08048C34 @ =gUnknown_8704160
	str r0, [r3, #4]
	str r1, [r3]
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08048C38 @ =sub_08048C3C
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08048C3E
	.align 2, 0
_08048C30: .4byte gUnknown_83B658C
_08048C34: .4byte gUnknown_8704160
_08048C38: .4byte _08048C3C
_08048C3C: @ 0x08048C3C
	b _08048C50
_08048C3E:
	str r7, [r1]
	ldr r0, _08048C4C @ =gUnknown_87041E0
	str r0, [r5, #4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	b _08048C8A
	.align 2, 0
_08048C4C: .4byte gUnknown_87041E0
_08048C50:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08048C68 @ =sub_08048C6C
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08048C6E
	.align 2, 0
_08048C68: .4byte _08048C6C
_08048C6C: @ 0x08048C6C
	b _08048C86
_08048C6E:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08048C86:
	bl sub_080443CC
_08048C8A:
	ldr r0, _08048C94 @ =gUnknown_2033C40
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08048C94: .4byte gUnknown_2033C40
	thumb_func_end sub_08048B54

	thumb_func_start sub_08048C98
sub_08048C98: @ 0x08048C98
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	bl sub_0804441C
	adds r2, r0, #0
	ldr r5, _08048CCC @ =gUnknown_2033C48
	ldr r1, [r5]
	cmp r1, #0
	beq _08048CB2
	b _08048DCE
_08048CB2:
	adds r6, r5, #0
	adds r4, r2, #0
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7]
	str r1, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08048CD0 @ =sub_08048CD4
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08048CD6
	.align 2, 0
_08048CCC: .4byte gUnknown_2033C48
_08048CD0: .4byte _08048CD4
_08048CD4: @ 0x08048CD4
	b _08048CE2
_08048CD6:
	str r7, [r3]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r0, r5, #0
	b _08048D4C
_08048CE2:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08048D00 @ =sub_08048D04
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08048D06
	.align 2, 0
_08048D00: .4byte _08048D04
_08048D04: @ 0x08048D04
	b _08048D16
_08048D06:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_08048D16:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _08048D2C @ =sub_08048D30
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _08048D32
	.align 2, 0
_08048D2C: .4byte _08048D30
_08048D30: @ 0x08048D30
	b _08048D48
_08048D32:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08048D48:
	bl sub_080443CC
_08048D4C:
	adds r5, r6, #0
	cmp r5, #0
	beq _08048DCE
	adds r3, r0, #0
	ldr r1, _08048D74 @ =gUnknown_83B6590
	adds r4, r2, #0
	ldr r0, _08048D78 @ =gUnknown_8704160
	str r0, [r3, #4]
	str r1, [r3]
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08048D7C @ =sub_08048D80
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08048D82
	.align 2, 0
_08048D74: .4byte gUnknown_83B6590
_08048D78: .4byte gUnknown_8704160
_08048D7C: .4byte _08048D80
_08048D80: @ 0x08048D80
	b _08048D94
_08048D82:
	str r7, [r1]
	ldr r0, _08048D90 @ =gUnknown_87041E0
	str r0, [r5, #4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	b _08048DCE
	.align 2, 0
_08048D90: .4byte gUnknown_87041E0
_08048D94:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08048DAC @ =sub_08048DB0
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08048DB2
	.align 2, 0
_08048DAC: .4byte _08048DB0
_08048DB0: @ 0x08048DB0
	b _08048DCA
_08048DB2:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08048DCA:
	bl sub_080443CC
_08048DCE:
	ldr r0, _08048DD8 @ =gUnknown_2033C48
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08048DD8: .4byte gUnknown_2033C48
	thumb_func_end sub_08048C98

	thumb_func_start sub_08048DDC
sub_08048DDC: @ 0x08048DDC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	bl sub_0804441C
	adds r2, r0, #0
	ldr r5, _08048E10 @ =gUnknown_2033C50
	ldr r1, [r5]
	cmp r1, #0
	beq _08048DF6
	b _08048F12
_08048DF6:
	adds r6, r5, #0
	adds r4, r2, #0
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7]
	str r1, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08048E14 @ =sub_08048E18
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08048E1A
	.align 2, 0
_08048E10: .4byte gUnknown_2033C50
_08048E14: .4byte _08048E18
_08048E18: @ 0x08048E18
	b _08048E26
_08048E1A:
	str r7, [r3]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r0, r5, #0
	b _08048E90
_08048E26:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08048E44 @ =sub_08048E48
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08048E4A
	.align 2, 0
_08048E44: .4byte _08048E48
_08048E48: @ 0x08048E48
	b _08048E5A
_08048E4A:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_08048E5A:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _08048E70 @ =sub_08048E74
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _08048E76
	.align 2, 0
_08048E70: .4byte _08048E74
_08048E74: @ 0x08048E74
	b _08048E8C
_08048E76:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08048E8C:
	bl sub_080443CC
_08048E90:
	adds r5, r6, #0
	cmp r5, #0
	beq _08048F12
	adds r3, r0, #0
	ldr r1, _08048EB8 @ =gUnknown_83B6594
	adds r4, r2, #0
	ldr r0, _08048EBC @ =gUnknown_8704160
	str r0, [r3, #4]
	str r1, [r3]
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08048EC0 @ =sub_08048EC4
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08048EC6
	.align 2, 0
_08048EB8: .4byte gUnknown_83B6594
_08048EBC: .4byte gUnknown_8704160
_08048EC0: .4byte _08048EC4
_08048EC4: @ 0x08048EC4
	b _08048ED8
_08048EC6:
	str r7, [r1]
	ldr r0, _08048ED4 @ =gUnknown_87041E0
	str r0, [r5, #4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	b _08048F12
	.align 2, 0
_08048ED4: .4byte gUnknown_87041E0
_08048ED8:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08048EF0 @ =sub_08048EF4
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08048EF6
	.align 2, 0
_08048EF0: .4byte _08048EF4
_08048EF4: @ 0x08048EF4
	b _08048F0E
_08048EF6:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08048F0E:
	bl sub_080443CC
_08048F12:
	ldr r0, _08048F1C @ =gUnknown_2033C50
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08048F1C: .4byte gUnknown_2033C50
	thumb_func_end sub_08048DDC

	thumb_func_start sub_08048F20
sub_08048F20: @ 0x08048F20
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	bl sub_0804441C
	adds r2, r0, #0
	ldr r5, _08048F54 @ =gUnknown_2033C58
	ldr r1, [r5]
	cmp r1, #0
	beq _08048F3A
	b _08049056
_08048F3A:
	adds r6, r5, #0
	adds r4, r2, #0
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7]
	str r1, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08048F58 @ =sub_08048F5C
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08048F5E
	.align 2, 0
_08048F54: .4byte gUnknown_2033C58
_08048F58: .4byte _08048F5C
_08048F5C: @ 0x08048F5C
	b _08048F6A
_08048F5E:
	str r7, [r3]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r0, r5, #0
	b _08048FD4
_08048F6A:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08048F88 @ =sub_08048F8C
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08048F8E
	.align 2, 0
_08048F88: .4byte _08048F8C
_08048F8C: @ 0x08048F8C
	b _08048F9E
_08048F8E:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_08048F9E:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _08048FB4 @ =sub_08048FB8
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _08048FBA
	.align 2, 0
_08048FB4: .4byte _08048FB8
_08048FB8: @ 0x08048FB8
	b _08048FD0
_08048FBA:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08048FD0:
	bl sub_080443CC
_08048FD4:
	adds r5, r6, #0
	cmp r5, #0
	beq _08049056
	adds r3, r0, #0
	ldr r1, _08048FFC @ =gUnknown_83B6598
	adds r4, r2, #0
	ldr r0, _08049000 @ =gUnknown_8704160
	str r0, [r3, #4]
	str r1, [r3]
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08049004 @ =sub_08049008
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _0804900A
	.align 2, 0
_08048FFC: .4byte gUnknown_83B6598
_08049000: .4byte gUnknown_8704160
_08049004: .4byte _08049008
_08049008: @ 0x08049008
	b _0804901C
_0804900A:
	str r7, [r1]
	ldr r0, _08049018 @ =gUnknown_87041E0
	str r0, [r5, #4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	b _08049056
	.align 2, 0
_08049018: .4byte gUnknown_87041E0
_0804901C:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08049034 @ =sub_08049038
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _0804903A
	.align 2, 0
_08049034: .4byte _08049038
_08049038: @ 0x08049038
	b _08049052
_0804903A:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08049052:
	bl sub_080443CC
_08049056:
	ldr r0, _08049060 @ =gUnknown_2033C58
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08049060: .4byte gUnknown_2033C58
	thumb_func_end sub_08048F20

	thumb_func_start sub_08049064
sub_08049064: @ 0x08049064
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	bl sub_0804441C
	adds r2, r0, #0
	ldr r5, _08049098 @ =gUnknown_2033C60
	ldr r1, [r5]
	cmp r1, #0
	beq _0804907E
	b _0804919A
_0804907E:
	adds r6, r5, #0
	adds r4, r2, #0
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7]
	str r1, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _0804909C @ =sub_080490A0
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _080490A2
	.align 2, 0
_08049098: .4byte gUnknown_2033C60
_0804909C: .4byte _080490A0
_080490A0: @ 0x080490A0
	b _080490AE
_080490A2:
	str r7, [r3]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r0, r5, #0
	b _08049118
_080490AE:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _080490CC @ =sub_080490D0
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _080490D2
	.align 2, 0
_080490CC: .4byte _080490D0
_080490D0: @ 0x080490D0
	b _080490E2
_080490D2:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_080490E2:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _080490F8 @ =sub_080490FC
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _080490FE
	.align 2, 0
_080490F8: .4byte _080490FC
_080490FC: @ 0x080490FC
	b _08049114
_080490FE:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08049114:
	bl sub_080443CC
_08049118:
	adds r5, r6, #0
	cmp r5, #0
	beq _0804919A
	adds r3, r0, #0
	ldr r1, _08049140 @ =gUnknown_83B659C
	adds r4, r2, #0
	ldr r0, _08049144 @ =gUnknown_8704160
	str r0, [r3, #4]
	str r1, [r3]
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08049148 @ =sub_0804914C
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _0804914E
	.align 2, 0
_08049140: .4byte gUnknown_83B659C
_08049144: .4byte gUnknown_8704160
_08049148: .4byte _0804914C
_0804914C: @ 0x0804914C
	b _08049160
_0804914E:
	str r7, [r1]
	ldr r0, _0804915C @ =gUnknown_87041E0
	str r0, [r5, #4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	b _0804919A
	.align 2, 0
_0804915C: .4byte gUnknown_87041E0
_08049160:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08049178 @ =sub_0804917C
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _0804917E
	.align 2, 0
_08049178: .4byte _0804917C
_0804917C: @ 0x0804917C
	b _08049196
_0804917E:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08049196:
	bl sub_080443CC
_0804919A:
	ldr r0, _080491A4 @ =gUnknown_2033C60
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080491A4: .4byte gUnknown_2033C60
	thumb_func_end sub_08049064

	thumb_func_start sub_080491A8
sub_080491A8: @ 0x080491A8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	bl sub_0804441C
	adds r2, r0, #0
	ldr r5, _080491DC @ =gUnknown_2033C68
	ldr r1, [r5]
	cmp r1, #0
	beq _080491C2
	b _080492DE
_080491C2:
	adds r6, r5, #0
	adds r4, r2, #0
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7]
	str r1, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _080491E0 @ =sub_080491E4
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _080491E6
	.align 2, 0
_080491DC: .4byte gUnknown_2033C68
_080491E0: .4byte _080491E4
_080491E4: @ 0x080491E4
	b _080491F2
_080491E6:
	str r7, [r3]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r0, r5, #0
	b _0804925C
_080491F2:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08049210 @ =sub_08049214
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08049216
	.align 2, 0
_08049210: .4byte _08049214
_08049214: @ 0x08049214
	b _08049226
_08049216:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_08049226:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _0804923C @ =sub_08049240
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _08049242
	.align 2, 0
_0804923C: .4byte _08049240
_08049240: @ 0x08049240
	b _08049258
_08049242:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08049258:
	bl sub_080443CC
_0804925C:
	adds r5, r6, #0
	cmp r5, #0
	beq _080492DE
	adds r3, r0, #0
	ldr r1, _08049284 @ =gUnknown_83B65A0
	adds r4, r2, #0
	ldr r0, _08049288 @ =gUnknown_8704160
	str r0, [r3, #4]
	str r1, [r3]
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _0804928C @ =sub_08049290
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _08049292
	.align 2, 0
_08049284: .4byte gUnknown_83B65A0
_08049288: .4byte gUnknown_8704160
_0804928C: .4byte _08049290
_08049290: @ 0x08049290
	b _080492A4
_08049292:
	str r7, [r1]
	ldr r0, _080492A0 @ =gUnknown_87041E0
	str r0, [r5, #4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	b _080492DE
	.align 2, 0
_080492A0: .4byte gUnknown_87041E0
_080492A4:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _080492BC @ =sub_080492C0
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _080492C2
	.align 2, 0
_080492BC: .4byte _080492C0
_080492C0: @ 0x080492C0
	b _080492DA
_080492C2:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_080492DA:
	bl sub_080443CC
_080492DE:
	ldr r0, _080492E8 @ =gUnknown_2033C68
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080492E8: .4byte gUnknown_2033C68
	thumb_func_end sub_080491A8

	thumb_func_start sub_080492EC
sub_080492EC: @ 0x080492EC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	bl sub_0804441C
	adds r2, r0, #0
	ldr r5, _08049320 @ =gUnknown_2033C70
	ldr r1, [r5]
	cmp r1, #0
	beq _08049306
	b _08049422
_08049306:
	adds r6, r5, #0
	adds r4, r2, #0
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7]
	str r1, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08049324 @ =sub_08049328
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _0804932A
	.align 2, 0
_08049320: .4byte gUnknown_2033C70
_08049324: .4byte _08049328
_08049328: @ 0x08049328
	b _08049336
_0804932A:
	str r7, [r3]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r0, r5, #0
	b _080493A0
_08049336:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08049354 @ =sub_08049358
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _0804935A
	.align 2, 0
_08049354: .4byte _08049358
_08049358: @ 0x08049358
	b _0804936A
_0804935A:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_0804936A:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _08049380 @ =sub_08049384
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _08049386
	.align 2, 0
_08049380: .4byte _08049384
_08049384: @ 0x08049384
	b _0804939C
_08049386:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_0804939C:
	bl sub_080443CC
_080493A0:
	adds r5, r6, #0
	cmp r5, #0
	beq _08049422
	adds r3, r0, #0
	ldr r1, _080493C8 @ =gUnknown_83B65A4
	adds r4, r2, #0
	ldr r0, _080493CC @ =gUnknown_8704160
	str r0, [r3, #4]
	str r1, [r3]
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _080493D0 @ =sub_080493D4
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _080493D6
	.align 2, 0
_080493C8: .4byte gUnknown_83B65A4
_080493CC: .4byte gUnknown_8704160
_080493D0: .4byte _080493D4
_080493D4: @ 0x080493D4
	b _080493E8
_080493D6:
	str r7, [r1]
	ldr r0, _080493E4 @ =gUnknown_87041E0
	str r0, [r5, #4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	b _08049422
	.align 2, 0
_080493E4: .4byte gUnknown_87041E0
_080493E8:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08049400 @ =sub_08049404
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _08049406
	.align 2, 0
_08049400: .4byte _08049404
_08049404: @ 0x08049404
	b _0804941E
_08049406:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_0804941E:
	bl sub_080443CC
_08049422:
	ldr r0, _0804942C @ =gUnknown_2033C70
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0804942C: .4byte gUnknown_2033C70
	thumb_func_end sub_080492EC

	thumb_func_start sub_08049430
sub_08049430: @ 0x08049430
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	bl sub_0804441C
	adds r2, r0, #0
	ldr r5, _08049464 @ =gUnknown_2033C78
	ldr r1, [r5]
	cmp r1, #0
	beq _0804944A
	b _08049566
_0804944A:
	adds r6, r5, #0
	adds r4, r2, #0
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7]
	str r1, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08049468 @ =sub_0804946C
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _0804946E
	.align 2, 0
_08049464: .4byte gUnknown_2033C78
_08049468: .4byte _0804946C
_0804946C: @ 0x0804946C
	b _0804947A
_0804946E:
	str r7, [r3]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r0, r5, #0
	b _080494E4
_0804947A:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08049498 @ =sub_0804949C
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _0804949E
	.align 2, 0
_08049498: .4byte _0804949C
_0804949C: @ 0x0804949C
	b _080494AE
_0804949E:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_080494AE:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _080494C4 @ =sub_080494C8
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _080494CA
	.align 2, 0
_080494C4: .4byte _080494C8
_080494C8: @ 0x080494C8
	b _080494E0
_080494CA:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_080494E0:
	bl sub_080443CC
_080494E4:
	adds r5, r6, #0
	cmp r5, #0
	beq _08049566
	adds r3, r0, #0
	ldr r1, _0804950C @ =gUnknown_83B65A8
	adds r4, r2, #0
	ldr r0, _08049510 @ =gUnknown_8704160
	str r0, [r3, #4]
	str r1, [r3]
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08049514 @ =sub_08049518
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _0804951A
	.align 2, 0
_0804950C: .4byte gUnknown_83B65A8
_08049510: .4byte gUnknown_8704160
_08049514: .4byte _08049518
_08049518: @ 0x08049518
	b _0804952C
_0804951A:
	str r7, [r1]
	ldr r0, _08049528 @ =gUnknown_87041E0
	str r0, [r5, #4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	b _08049566
	.align 2, 0
_08049528: .4byte gUnknown_87041E0
_0804952C:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08049544 @ =sub_08049548
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _0804954A
	.align 2, 0
_08049544: .4byte _08049548
_08049548: @ 0x08049548
	b _08049562
_0804954A:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08049562:
	bl sub_080443CC
_08049566:
	ldr r0, _08049570 @ =gUnknown_2033C78
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08049570: .4byte gUnknown_2033C78
	thumb_func_end sub_08049430

	thumb_func_start sub_08049574
sub_08049574: @ 0x08049574
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	push {r7}
	sub sp, #0x48
	mov r7, sp
	bl sub_0804441C
	adds r2, r0, #0
	ldr r5, _080495A8 @ =gUnknown_2033C80
	ldr r1, [r5]
	cmp r1, #0
	beq _0804958E
	b _080496AA
_0804958E:
	adds r6, r5, #0
	adds r4, r2, #0
	adds r3, r2, #4
	ldr r0, [r2, #4]
	str r0, [r7]
	str r1, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _080495AC @ =sub_080495B0
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _080495B2
	.align 2, 0
_080495A8: .4byte gUnknown_2033C80
_080495AC: .4byte _080495B0
_080495B0: @ 0x080495B0
	b _080495BE
_080495B2:
	str r7, [r3]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	adds r0, r5, #0
	b _08049628
_080495BE:
	bl sub_08046BCC
	adds r5, r0, #0
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _080495DC @ =sub_080495E0
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _080495E2
	.align 2, 0
_080495DC: .4byte _080495E0
_080495E0: @ 0x080495E0
	b _080495F2
_080495E2:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	movs r0, #0
	adds r1, r7, #0
	adds r1, #0x30
	bl sub_08046CFC
_080495F2:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x30]
	movs r0, #0
	str r0, [r7, #0x34]
	str r7, [r7, #0x38]
	ldr r0, _08049608 @ =sub_0804960C
	str r0, [r7, #0x3c]
	mov r0, sp
	str r0, [r7, #0x40]
	b _0804960E
	.align 2, 0
_08049608: .4byte _0804960C
_0804960C: @ 0x0804960C
	b _08049624
_0804960E:
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08046C74
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_08049624:
	bl sub_080443CC
_08049628:
	adds r5, r6, #0
	cmp r5, #0
	beq _080496AA
	adds r3, r0, #0
	ldr r1, _08049650 @ =gUnknown_83B65AC
	adds r4, r2, #0
	ldr r0, _08049654 @ =gUnknown_8704160
	str r0, [r3, #4]
	str r1, [r3]
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	str r7, [r7, #8]
	ldr r0, _08049658 @ =sub_0804965C
	str r0, [r7, #0xc]
	mov r0, sp
	str r0, [r7, #0x10]
	b _0804965E
	.align 2, 0
_08049650: .4byte gUnknown_83B65AC
_08049654: .4byte gUnknown_8704160
_08049658: .4byte _0804965C
_0804965C: @ 0x0804965C
	b _08049670
_0804965E:
	str r7, [r1]
	ldr r0, _0804966C @ =gUnknown_87041E0
	str r0, [r5, #4]
	ldr r0, [r2, #4]
	ldr r0, [r0]
	str r0, [r2, #4]
	b _080496AA
	.align 2, 0
_0804966C: .4byte gUnknown_87041E0
_08049670:
	adds r1, r4, #4
	ldr r0, [r4, #4]
	str r0, [r7, #0x18]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r7, [r7, #0x20]
	ldr r0, _08049688 @ =sub_0804968C
	str r0, [r7, #0x24]
	mov r0, sp
	str r0, [r7, #0x28]
	b _0804968E
	.align 2, 0
_08049688: .4byte _0804968C
_0804968C: @ 0x0804968C
	b _080496A6
_0804968E:
	adds r0, r7, #0
	adds r0, #0x18
	str r0, [r1]
	adds r0, r3, #0
	movs r1, #0
	bl sub_08045F98
	ldr r0, [r4, #4]
	ldr r0, [r0]
	str r0, [r4, #4]
	bl sub_0804449C
_080496A6:
	bl sub_080443CC
_080496AA:
	ldr r0, _080496B4 @ =gUnknown_2033C80
	add sp, #0x48
	pop {r3}
	mov sb, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080496B4: .4byte gUnknown_2033C80
	thumb_func_end sub_08049574

	.align 2, 0 @ Don't pad with nop
