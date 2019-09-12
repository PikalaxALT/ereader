	.include "asm/macros/function.inc"
	.include "constants/gba_constants.inc"
	.text
	.syntax unified

	thumb_func_start sub_08043EFC
sub_08043EFC: @ 0x08043EFC
	push {r4, lr}
	ldr r2, _08043F1C
	ldrh r0, [r2]
	ldr r1, _08043F20
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	bl sub_08043A20
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, _08043F24
	movs r4, #1
	b _08043F2A
	.align 2, 0
_08043F1C: .4byte 0x04000204
_08043F20: .4byte 0x0000FFFC
_08043F24: .4byte 0x083B63B0
_08043F28:
	adds r2, #4
_08043F2A:
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	beq _08043F3E
	ldrh r0, [r1, #0x2c]
	cmp r3, r0
	bne _08043F28
	movs r4, #0
_08043F3E:
	ldr r1, _08043F80
	ldr r0, [r2]
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _08043F84
	ldr r0, [r2]
	ldr r0, [r0, #4]
	str r0, [r1]
	ldr r1, _08043F88
	ldr r0, [r2]
	ldr r0, [r0, #8]
	str r0, [r1]
	ldr r1, _08043F8C
	ldr r0, [r2]
	ldr r0, [r0, #0xc]
	str r0, [r1]
	ldr r1, _08043F90
	ldr r0, [r2]
	ldr r0, [r0, #0x10]
	str r0, [r1]
	ldr r1, _08043F94
	ldr r0, [r2]
	ldr r0, [r0, #0x14]
	str r0, [r1]
	ldr r1, _08043F98
	ldr r0, [r2]
	adds r0, #0x18
	str r0, [r1]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08043F80: .4byte 0x02034A64
_08043F84: .4byte 0x02034A5C
_08043F88: .4byte 0x02034A6C
_08043F8C: .4byte 0x02034A70
_08043F90: .4byte 0x02034A58
_08043F94: .4byte 0x02034A74
_08043F98: .4byte 0x02034A60

	thumb_func_start sub_08043F9C
sub_08043F9C: @ 0x08043F9C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	movs r0, #0
	mov r8, r0
	adds r0, r7, #0
	bl sub_08043B20
	ldr r6, _08043FC0
	ldr r1, _08043FC4
	mov sb, r1
	b _08044000
	.align 2, 0
_08043FC0: .4byte 0x02034A54
_08043FC4: .4byte 0x0E005555
_08043FC8:
	movs r0, #0xf0
	mov r1, sb
	strb r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #8
	b _08043FF6
_08043FD4:
	ldr r0, _08043FFC
	ldrb r0, [r0]
	cmp r0, #0
	beq _08044000
	ldr r1, [r6]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r5
	beq _08044028
	movs r0, #0xf0
	mov r1, sb
	strb r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #8
_08043FF6:
	orrs r7, r0
	mov r8, r7
	b _08044028
	.align 2, 0
_08043FFC: .4byte 0x02034A50
_08044000:
	ldr r1, [r6]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r5
	beq _08044028
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08043FD4
	ldr r1, [r6]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r5
	bne _08043FC8
_08044028:
	bl sub_08043BC8
	mov r0, r8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0804403C
sub_0804403C: @ 0x0804403C
	push {r4, r5, r6, lr}
	sub sp, #0x40
	ldr r5, _08044098
	ldrh r1, [r5]
	ldr r6, _0804409C
	ands r1, r6
	ldr r0, _080440A0
	ldr r0, [r0]
	ldrh r0, [r0, #0x10]
	orrs r1, r0
	strh r1, [r5]
	ldr r1, _080440A4
	movs r4, #0xaa
	strb r4, [r1]
	ldr r3, _080440A8
	movs r2, #0x55
	strb r2, [r3]
	movs r0, #0x80
	strb r0, [r1]
	strb r4, [r1]
	strb r2, [r3]
	movs r0, #0x10
	strb r0, [r1]
	mov r0, sp
	bl sub_08043C10
	ldr r0, _080440AC
	movs r1, #0xe0
	lsls r1, r1, #0x14
	ldr r3, [r0]
	movs r0, #3
	movs r2, #0xff
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r5]
	ands r1, r6
	movs r2, #3
	orrs r1, r2
	strh r1, [r5]
	add sp, #0x40
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08044098: .4byte 0x04000204
_0804409C: .4byte 0x0000FFFC
_080440A0: .4byte 0x02034A60
_080440A4: .4byte 0x0E005555
_080440A8: .4byte 0x0E002AAA
_080440AC: .4byte 0x02034A58

	thumb_func_start sub_080440B0
sub_080440B0: @ 0x080440B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x40
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _080440C8
	ldr r0, [r0]
	ldrh r0, [r0, #0xa]
	cmp r6, r0
	blo _080440D0
	ldr r0, _080440CC
	b _08044170
	.align 2, 0
_080440C8: .4byte 0x02034A60
_080440CC: .4byte 0x000080FF
_080440D0:
	lsrs r0, r6, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_080439FC
	movs r0, #0xf
	ands r6, r0
	movs r7, #0
_080440E0:
	ldr r3, _08044148
	ldrh r1, [r3]
	ldr r0, _0804414C
	ands r1, r0
	ldr r0, _08044150
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r3]
	ldrb r4, [r2, #8]
	adds r0, r6, #0
	lsls r0, r4
	adds r4, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r4, r4, r0
	ldr r1, _08044154
	movs r5, #0xaa
	strb r5, [r1]
	ldr r3, _08044158
	movs r2, #0x55
	strb r2, [r3]
	movs r0, #0x80
	strb r0, [r1]
	strb r5, [r1]
	strb r2, [r3]
	movs r0, #0x30
	strb r0, [r4]
	mov r0, sp
	bl sub_08043C10
	ldr r0, _0804415C
	ldr r3, [r0]
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0xff
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0xa0
	lsls r0, r0, #8
	ands r0, r3
	cmp r0, #0
	beq _08044160
	cmp r7, #3
	bhi _08044160
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _080440E0
	.align 2, 0
_08044148: .4byte 0x04000204
_0804414C: .4byte 0x0000FFFC
_08044150: .4byte 0x02034A60
_08044154: .4byte 0x0E005555
_08044158: .4byte 0x0E002AAA
_0804415C: .4byte 0x02034A58
_08044160:
	ldr r2, _08044178
	ldrh r0, [r2]
	ldr r1, _0804417C
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	adds r0, r3, #0
_08044170:
	add sp, #0x40
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08044178: .4byte 0x04000204
_0804417C: .4byte 0x0000FFFC

	thumb_func_start sub_08044180
sub_08044180: @ 0x08044180
	push {r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r6, r1, #0
	lsls r1, r0, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r5, _080441F0
	ldr r0, [r5]
	ldr r0, [r0, #4]
	cmp r6, r0
	bhs _08044208
	lsrs r0, r1, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_080439FC
	movs r0, #0xf
	ldr r1, [r5]
	ands r4, r0
	ldrb r1, [r1, #8]
	lsls r4, r1
	movs r1, #0xe0
	lsls r1, r1, #0x14
	adds r0, r6, r1
	adds r4, r4, r0
	mov r0, sp
	bl sub_08043C10
	ldr r2, _080441F4
	ldrh r0, [r2]
	ldr r1, _080441F8
	ands r0, r1
	ldr r1, [r5]
	ldrh r1, [r1, #0x10]
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _080441FC
	movs r0, #0xaa
	strb r0, [r2]
	ldr r1, _08044200
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0xa0
	strb r0, [r2]
	strb r7, [r4]
	ldr r0, _08044204
	ldr r3, [r0]
	movs r0, #1
	adds r1, r4, #0
	adds r2, r7, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0804420C
	.align 2, 0
_080441F0: .4byte 0x02034A60
_080441F4: .4byte 0x04000204
_080441F8: .4byte 0x0000FFFC
_080441FC: .4byte 0x0E005555
_08044200: .4byte 0x0E002AAA
_08044204: .4byte 0x02034A58
_08044208:
	movs r0, #0x80
	lsls r0, r0, #8
_0804420C:
	add sp, #0x40
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08044214
sub_08044214: @ 0x08044214
	push {r4, lr}
	ldr r4, _08044240
	movs r2, #0xaa
	strb r2, [r4]
	ldr r3, _08044244
	movs r2, #0x55
	strb r2, [r3]
	movs r2, #0xa0
	strb r2, [r4]
	ldrb r2, [r0]
	strb r2, [r1]
	ldr r3, _08044248
	ldrb r2, [r0]
	ldr r3, [r3]
	movs r0, #1
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08044240: .4byte 0x0E005555
_08044244: .4byte 0x0E002AAA
_08044248: .4byte 0x02034A58

	thumb_func_start sub_0804424C
sub_0804424C: @ 0x0804424C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r7, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08044264
	ldr r0, [r0]
	ldrh r0, [r0, #0xa]
	cmp r4, r0
	blo _0804426C
	ldr r0, _08044268
	b _080442E6
	.align 2, 0
_08044264: .4byte 0x02034A60
_08044268: .4byte 0x000080FF
_0804426C:
	adds r0, r4, #0
	bl sub_080440B0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _080442E4
	lsrs r0, r4, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_080439FC
	movs r0, #0xf
	ands r4, r0
	mov r0, sp
	bl sub_08043C10
	ldr r3, _080442B4
	ldrh r1, [r3]
	ldr r0, _080442B8
	ands r1, r0
	ldr r0, _080442BC
	ldr r2, [r0]
	ldrh r0, [r2, #0x10]
	orrs r1, r0
	strh r1, [r3]
	ldr r1, _080442C0
	ldr r0, [r2, #4]
	strh r0, [r1]
	ldrb r0, [r2, #8]
	lsls r4, r0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r4, r4, r0
	adds r6, r1, #0
	b _080442CE
	.align 2, 0
_080442B4: .4byte 0x04000204
_080442B8: .4byte 0x0000FFFC
_080442BC: .4byte 0x02034A60
_080442C0: .4byte 0x02034A68
_080442C4:
	ldrh r0, [r6]
	subs r0, #1
	strh r0, [r6]
	adds r7, #1
	adds r4, #1
_080442CE:
	ldrh r0, [r6]
	cmp r0, #0
	beq _080442E4
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08044214
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080442C4
_080442E4:
	adds r0, r5, #0
_080442E6:
	add sp, #0x40
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
