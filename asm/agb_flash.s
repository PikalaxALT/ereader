	.include "asm/macros/function.inc"
	.include "constants/gba_constants.inc"
	.text
	.syntax unified

	thumb_func_start sub_080439FC
sub_080439FC: @ 0x080439FC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, _08043A18
	movs r1, #0xaa
	strb r1, [r3]
	ldr r2, _08043A1C
	movs r1, #0x55
	strb r1, [r2]
	movs r1, #0xb0
	strb r1, [r3]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	strb r0, [r1]
	bx lr
	.align 2, 0
_08043A18: .4byte 0x0E005555
_08043A1C: .4byte 0x0E002AAA

	thumb_func_start sub_08043A20
sub_08043A20: @ 0x08043A20
	push {r4, r5, lr}
	sub sp, #0x44
	mov r0, sp
	bl sub_08043C10
	mov r5, sp
	adds r5, #1
	ldr r2, _08043A48
	movs r0, #0xaa
	strb r0, [r2]
	ldr r1, _08043A4C
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0x90
	strb r0, [r2]
	add r1, sp, #0x40
	ldr r2, _08043A50
	adds r0, r2, #0
	b _08043A58
	.align 2, 0
_08043A48: .4byte 0x0E005555
_08043A4C: .4byte 0x0E002AAA
_08043A50: .4byte 0x00004E20
_08043A54:
	ldrh r0, [r1]
	subs r0, #1
_08043A58:
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	bne _08043A54
	ldr r0, _08043A94
	bl _call_via_r5
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x10
	movs r0, #0xe0
	lsls r0, r0, #0x14
	bl _call_via_r5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	orrs r4, r0
	ldr r1, _08043A98
	movs r0, #0xaa
	strb r0, [r1]
	ldr r2, _08043A9C
	movs r0, #0x55
	strb r0, [r2]
	movs r0, #0xf0
	strb r0, [r1]
	strb r0, [r1]
	add r1, sp, #0x40
	ldr r2, _08043AA0
	adds r0, r2, #0
	b _08043AA8
	.align 2, 0
_08043A94: .4byte 0x0E000001
_08043A98: .4byte 0x0E005555
_08043A9C: .4byte 0x0E002AAA
_08043AA0: .4byte 0x00004E20
_08043AA4:
	ldrh r0, [r1]
	subs r0, #1
_08043AA8:
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	bne _08043AA4
	adds r0, r4, #0
	add sp, #0x44
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08043ABC
sub_08043ABC: @ 0x08043ABC
	push {lr}
	ldr r1, _08043ADC
	ldrh r0, [r1]
	cmp r0, #0
	beq _08043AD8
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08043AD8
	ldr r1, _08043AE0
	movs r0, #1
	strb r0, [r1]
_08043AD8:
	pop {r0}
	bx r0
	.align 2, 0
_08043ADC: .4byte 0x02033BAE
_08043AE0: .4byte 0x02034A50

	thumb_func_start sub_08043AE4
sub_08043AE4: @ 0x08043AE4
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _08043B18
	ldr r0, _08043B08
	strb r1, [r0]
	ldr r1, _08043B0C
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _08043B10
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _08043B14
	str r0, [r2]
	movs r0, #0
	b _08043B1A
	.align 2, 0
_08043B08: .4byte 0x02033BAC
_08043B0C: .4byte 0x02033BB0
_08043B10: .4byte REG_TMCNT
_08043B14: .4byte 0x08043ABD
_08043B18:
	movs r0, #1
_08043B1A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08043B20
sub_08043B20: @ 0x08043B20
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08043BA4
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	ldr r0, [r1]
	adds r2, r2, r0
	ldr r1, _08043BA8
	ldr r0, _08043BAC
	mov sb, r0
	ldrh r0, [r0]
	strh r0, [r1]
	movs r3, #0
	mov r1, sb
	strh r3, [r1]
	ldr r0, _08043BB0
	mov r8, r0
	ldr r4, [r0]
	strh r3, [r4, #2]
	ldr r6, _08043BB4
	ldr r1, _08043BB8
	mov sl, r1
	ldrb r1, [r1]
	movs r5, #8
	adds r0, r5, #0
	lsls r0, r1
	adds r1, r0, #0
	ldrh r0, [r6]
	orrs r0, r1
	strh r0, [r6]
	ldr r0, _08043BBC
	strb r3, [r0]
	ldr r1, _08043BC0
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	ldrh r0, [r2]
	strh r0, [r4]
	adds r0, r4, #2
	mov r1, r8
	str r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r4, #2]
	str r4, [r1]
	ldr r1, _08043BC4
	mov r2, sl
	ldrb r0, [r2]
	lsls r5, r0
	strh r5, [r1]
	movs r0, #1
	mov r3, sb
	strh r0, [r3]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08043BA4: .4byte 0x02034A74
_08043BA8: .4byte 0x02033BB4
_08043BAC: .4byte REG_IME
_08043BB0: .4byte 0x02033BB0
_08043BB4: .4byte REG_IE
_08043BB8: .4byte 0x02033BAC
_08043BBC: .4byte 0x02034A50
_08043BC0: .4byte 0x02033BAE
_08043BC4: .4byte REG_IF

	thumb_func_start sub_08043BC8
sub_08043BC8: @ 0x08043BC8
	ldr r3, _08043BF8
	movs r1, #0
	strh r1, [r3]
	ldr r2, _08043BFC
	ldr r0, [r2]
	strh r1, [r0]
	adds r0, #2
	str r0, [r2]
	strh r1, [r0]
	subs r0, #2
	str r0, [r2]
	ldr r2, _08043C00
	ldr r0, _08043C04
	ldrb r0, [r0]
	movs r1, #8
	lsls r1, r0
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	ldr r0, _08043C08
	ldrh r0, [r0]
	strh r0, [r3]
	bx lr
	.align 2, 0
_08043BF8: .4byte REG_IME
_08043BFC: .4byte 0x02033BB0
_08043C00: .4byte REG_IE
_08043C04: .4byte 0x02033BAC
_08043C08: .4byte 0x02033BB4

	thumb_func_start sub_08043C0C
sub_08043C0C: @ 0x08043C0C
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_08043C10
sub_08043C10: @ 0x08043C10
	push {lr}
	adds r2, r0, #0
	ldr r1, _08043C2C
	adds r0, r2, #1
	str r0, [r1]
	ldr r3, _08043C30
	movs r0, #1
	eors r3, r0
	ldr r0, _08043C34
	ldr r1, _08043C30
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08043C44
	.align 2, 0
_08043C2C: .4byte 0x02034A54
_08043C30: .4byte 0x08043C0D
_08043C34: .4byte 0x08043C11
_08043C38:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08043C44:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08043C38
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08043C50
sub_08043C50: @ 0x08043C50
	push {r4, lr}
	adds r4, r0, #0
	subs r3, r2, #1
	cmp r2, #0
	beq _08043C6C
	movs r2, #1
	rsbs r2, r2, #0
_08043C5E:
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r1, #1
	subs r3, #1
	cmp r3, r2
	bne _08043C5E
_08043C6C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08043C74
sub_08043C74: @ 0x08043C74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x80
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	lsls r3, r0, #0x10
	lsrs r4, r3, #0x10
	ldr r2, _08043CC0
	ldrh r0, [r2]
	ldr r1, _08043CC4
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08043CC8
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _08043CAC
	lsrs r0, r3, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_080439FC
	movs r0, #0xf
	ands r4, r0
_08043CAC:
	ldr r3, _08043CCC
	movs r0, #1
	eors r3, r0
	mov r2, sp
	ldr r0, _08043CD0
	ldr r1, _08043CCC
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08043CE0
	.align 2, 0
_08043CC0: .4byte REG_WAITCNT
_08043CC4: .4byte 0x0000FFFC
_08043CC8: .4byte 0x02034A60
_08043CCC: .4byte 0x08043C51
_08043CD0: .4byte 0x08043C75
_08043CD4:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08043CE0:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08043CD4
	mov r3, sp
	adds r3, #1
	ldr r0, _08043D0C
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r4, r0
	adds r0, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r5, r2
	adds r0, r0, r1
	adds r1, r6, #0
	adds r2, r7, #0
	bl _call_via_r3
	add sp, #0x80
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043D0C: .4byte 0x02034A60

	thumb_func_start sub_08043D10
sub_08043D10: @ 0x08043D10
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	subs r4, r2, #1
	cmp r2, #0
	beq _08043D36
	movs r2, #1
	rsbs r2, r2, #0
_08043D20:
	ldrb r1, [r3]
	ldrb r0, [r5]
	adds r5, #1
	adds r3, #1
	cmp r1, r0
	beq _08043D30
	subs r0, r3, #1
	b _08043D38
_08043D30:
	subs r4, #1
	cmp r4, r2
	bne _08043D20
_08043D36:
	movs r0, #0
_08043D38:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08043D40
sub_08043D40: @ 0x08043D40
	push {r4, r5, lr}
	sub sp, #0x100
	adds r5, r1, #0
	lsls r3, r0, #0x10
	lsrs r4, r3, #0x10
	ldr r2, _08043D88
	ldrh r0, [r2]
	ldr r1, _08043D8C
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08043D90
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _08043D74
	lsrs r0, r3, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_080439FC
	movs r0, #0xf
	ands r4, r0
_08043D74:
	ldr r3, _08043D94
	movs r0, #1
	eors r3, r0
	mov r2, sp
	ldr r0, _08043D98
	ldr r1, _08043D94
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08043DA8
	.align 2, 0
_08043D88: .4byte REG_WAITCNT
_08043D8C: .4byte 0x0000FFFC
_08043D90: .4byte 0x02034A60
_08043D94: .4byte 0x08043D11
_08043D98: .4byte 0x08043D41
_08043D9C:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08043DA8:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08043D9C
	mov r3, sp
	adds r3, #1
	ldr r0, _08043DD4
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r4, r1
	adds r1, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r1, r2
	ldrh r2, [r0, #4]
	adds r0, r5, #0
	bl _call_via_r3
	add sp, #0x100
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08043DD4: .4byte 0x02034A60

	thumb_func_start sub_08043DD8
sub_08043DD8: @ 0x08043DD8
	push {r4, r5, r6, lr}
	sub sp, #0x100
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r2, r0, #0x10
	lsrs r4, r2, #0x10
	ldr r0, _08043E20
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _08043E00
	lsrs r0, r2, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_080439FC
	movs r0, #0xf
	ands r4, r0
_08043E00:
	ldr r2, _08043E24
	ldrh r0, [r2]
	ldr r1, _08043E28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08043E2C
	movs r0, #1
	eors r3, r0
	mov r2, sp
	ldr r0, _08043E30
	ldr r1, _08043E2C
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _08043E40
	.align 2, 0
_08043E20: .4byte 0x02034A60
_08043E24: .4byte REG_WAITCNT
_08043E28: .4byte 0x0000FFFC
_08043E2C: .4byte 0x08043D11
_08043E30: .4byte 0x08043D41
_08043E34:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_08043E40:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08043E34
	mov r3, sp
	adds r3, #1
	ldr r0, _08043E6C
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r4, r1
	adds r1, r4, #0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r1, r1, r0
	adds r0, r5, #0
	adds r2, r6, #0
	bl _call_via_r3
	add sp, #0x100
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08043E6C: .4byte 0x02034A60

	thumb_func_start sub_08043E70
sub_08043E70: @ 0x08043E70
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _08043E82
_08043E7C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08043E82:
	cmp r6, #2
	bhi _08043EA8
	ldr r0, _08043EB0
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08043E7C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08043D40
	adds r2, r0, #0
	cmp r2, #0
	bne _08043E7C
_08043EA8:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08043EB0: .4byte 0x02034A5C

	thumb_func_start sub_08043EB4
sub_08043EB4: @ 0x08043EB4
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _08043EC8
_08043EC2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08043EC8:
	cmp r6, #2
	bhi _08043EF0
	ldr r0, _08043EF8
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08043EC2
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_08043DD8
	adds r3, r0, #0
	cmp r3, #0
	bne _08043EC2
_08043EF0:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08043EF8: .4byte 0x02034A5C
