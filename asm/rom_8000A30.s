	.include "asm/macros.inc"
	.include "constants/constants.inc"
	.text
	.syntax unified
	.align 2, 0

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
	ldr r1, _08000EB0 @ =REG_DMA3
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
_08000EB0: .4byte REG_DMA3
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

	.align 2, 0 @ Don't pad with nop
