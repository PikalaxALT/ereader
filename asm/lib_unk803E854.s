	.include "asm/macros.inc"
	.include "constants/constants.inc"
	.text
	.syntax unified
	.align 2, 0

	thumb_func_start sub_0803E854
sub_0803E854: @ 0x0803E854
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r1, r0, r1
	ldr r0, _0803E958 @ =gUnknown_20095A0
	adds r4, r1, r0
	ldr r0, _0803E95C @ =gUnknown_2015288
	ldrh r0, [r0]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	strb r0, [r4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0803E952
	adds r0, r4, #0
	bl sub_08042C08
	ldr r5, [r4, #8]
	ldr r6, [r4, #0xc]
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #8]
	adds r1, r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08042B98
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803E8B0
	adds r0, r4, #0
	bl sub_0803F7DC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803E8B0
	adds r0, r4, #0
	bl sub_0803F87C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803E8CA
_0803E8B0:
	str r5, [r4, #8]
	ldrb r2, [r4, #3]
	lsrs r1, r2, #7
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #7
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #3]
	ldrh r0, [r4, #0x1c]
	negs r0, r0
	strh r0, [r4, #0x1c]
_0803E8CA:
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0803E8EC
	adds r0, r4, #0
	movs r1, #3
	bl sub_08042B98
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _0803E8EC
	ldrb r0, [r4, #5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #5]
	strh r2, [r4, #0x1e]
_0803E8EC:
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0803E94C
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r0, [r0]
	ldrh r1, [r4, #0x1e]
	adds r0, r0, r1
	movs r5, #0
	strh r0, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08042B98
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803E92A
	ldr r0, [r4, #0xc]
	ldr r1, _0803E960 @ =0xFFFFF800
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0xc]
	strh r5, [r4, #0x1e]
_0803E92A:
	adds r0, r4, #0
	movs r1, #3
	bl sub_08042B98
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803E94C
	ldr r0, [r4, #0xc]
	ldr r1, _0803E960 @ =0xFFFFF800
	ands r0, r1
	str r0, [r4, #0xc]
	strh r5, [r4, #0x1e]
	ldrb r1, [r4, #5]
	movs r0, #3
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #5]
_0803E94C:
	adds r0, r4, #0
	bl sub_08042BC0
_0803E952:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803E958: .4byte gUnknown_20095A0
_0803E95C: .4byte gUnknown_2015288
_0803E960: .4byte 0xFFFFF800
	thumb_func_end sub_0803E854

	thumb_func_start sub_0803E964
sub_0803E964: @ 0x0803E964
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r1, r0, r1
	ldr r0, _0803E9E4 @ =gUnknown_20095A0
	adds r4, r1, r0
	ldr r0, _0803E9E8 @ =gUnknown_2015288
	ldrh r0, [r0]
	lsrs r0, r0, #4
	movs r7, #1
	ands r0, r7
	strb r0, [r4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0803EA10
	adds r0, r4, #0
	bl sub_08042C08
	ldr r5, [r4, #8]
	ldr r6, [r4, #0xc]
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #8]
	adds r1, r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08042B98
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803E9B6
	adds r0, r4, #0
	bl sub_0803F87C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803E9CE
_0803E9B6:
	str r5, [r4, #8]
	ldrb r2, [r4, #3]
	lsrs r1, r2, #7
	eors r1, r7
	lsls r1, r1, #7
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #3]
	ldrh r0, [r4, #0x1c]
	negs r0, r0
	strh r0, [r4, #0x1c]
_0803E9CE:
	ldr r1, [r4, #0xc]
	str r1, [sp, #4]
	movs r0, #0x22
	ldrsh r2, [r4, r0]
	movs r0, #0x1e
	ldrsh r3, [r4, r0]
	ldr r0, [r4, #0x3c]
	cmp r1, r0
	blt _0803E9EC
	subs r0, r3, r2
	b _0803E9EE
	.align 2, 0
_0803E9E4: .4byte gUnknown_20095A0
_0803E9E8: .4byte gUnknown_2015288
_0803E9EC:
	adds r0, r3, r2
_0803E9EE:
	strh r0, [r4, #0x1e]
	movs r2, #0x1e
	ldrsh r0, [r4, r2]
	adds r0, r1, r0
	str r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08042B98
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803EA10
	ldr r0, [sp, #4]
	str r0, [r4, #0xc]
	ldrh r0, [r4, #0x1e]
	negs r0, r0
	strh r0, [r4, #0x1e]
_0803EA10:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0803E964

	thumb_func_start sub_0803EA18
sub_0803EA18: @ 0x0803EA18
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r1, r0, r1
	ldr r0, _0803EAD4 @ =gUnknown_20095A0
	adds r6, r1, r0
	ldr r0, _0803EAD8 @ =gUnknown_2015288
	ldrh r0, [r0]
	lsrs r0, r0, #4
	movs r7, #1
	ands r0, r7
	strb r0, [r6]
	movs r1, #0x1e
	ldrsh r0, [r6, r1]
	cmp r0, #0
	ble _0803EA56
	movs r3, #0x28
	ldrsh r0, [r6, r3]
	cmp r0, #0
	bne _0803EA56
	ldr r4, [r6, #0x40]
	ldr r5, [r6, #0x44]
	str r0, [r6, #0x40]
	str r7, [r6, #0x44]
	adds r0, r6, #0
	bl sub_08042C08
	str r4, [r6, #0x40]
	str r5, [r6, #0x44]
	strh r7, [r6, #0x28]
_0803EA56:
	ldrb r0, [r6, #5]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0803EACE
	movs r5, #0
	strh r5, [r6, #0x10]
	strh r5, [r6, #0x12]
	ldr r2, [r6, #0x44]
	adds r0, r2, #0
	subs r0, #0x10
	ldr r1, [r6, #0x40]
	adds r4, r1, #0
	adds r3, r2, #0
	cmp r1, r0
	ble _0803EA80
	ldr r0, _0803EADC @ =gUnknown_83B5500
	subs r1, r3, r1
	adds r1, r1, r0
	ldrb r0, [r1]
	lsls r0, r0, #8
	strh r0, [r6, #0x12]
_0803EA80:
	adds r0, r4, #1
	str r0, [r6, #0x40]
	cmp r0, r2
	ble _0803EA9A
	str r5, [r6, #0x40]
	adds r0, r6, #0
	adds r0, #0x52
	ldrh r0, [r0]
	strh r0, [r6, #0x1e]
	ldrb r0, [r6, #5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r6, #5]
_0803EA9A:
	ldrb r2, [r6, #5]
	lsls r0, r2, #0x1e
	cmp r0, #0
	bge _0803EACE
	movs r1, #0x1e
	ldrsh r0, [r6, r1]
	ldr r1, [r6, #0xc]
	adds r1, r1, r0
	adds r1, r1, r0
	str r1, [r6, #0xc]
	adds r0, r6, #0
	adds r0, #0x50
	ldrh r0, [r0]
	ldrh r3, [r6, #0x1e]
	adds r0, r0, r3
	strh r0, [r6, #0x1e]
	ldr r0, [r6, #0x3c]
	cmp r1, r0
	ble _0803EACE
	str r0, [r6, #0xc]
	strh r5, [r6, #0x1e]
	movs r0, #3
	negs r0, r0
	ands r0, r2
	strb r0, [r6, #5]
	strh r5, [r6, #0x28]
_0803EACE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803EAD4: .4byte gUnknown_20095A0
_0803EAD8: .4byte gUnknown_2015288
_0803EADC: .4byte gUnknown_83B5500
	thumb_func_end sub_0803EA18

	thumb_func_start sub_0803EAE0
sub_0803EAE0: @ 0x0803EAE0
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r1, r0, r1
	ldr r0, _0803EB04 @ =gUnknown_20095A0
	adds r4, r1, r0
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0803EB0C
	ldr r0, _0803EB08 @ =gUnknown_2015288
	ldrh r0, [r0]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	b _0803EB0E
	.align 2, 0
_0803EB04: .4byte gUnknown_20095A0
_0803EB08: .4byte gUnknown_2015288
_0803EB0C:
	movs r0, #0
_0803EB0E:
	strb r0, [r4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0803EC0A
	adds r0, r4, #0
	bl sub_08042C08
	ldr r5, [r4, #8]
	ldr r6, [r4, #0xc]
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #8]
	adds r1, r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08042B98
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803EB52
	adds r0, r4, #0
	bl sub_0803F7DC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803EB52
	adds r0, r4, #0
	bl sub_0803F87C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803EB6C
_0803EB52:
	str r5, [r4, #8]
	ldrb r2, [r4, #3]
	lsrs r1, r2, #7
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #7
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #3]
	ldrh r0, [r4, #0x1c]
	negs r0, r0
	strh r0, [r4, #0x1c]
_0803EB6C:
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0803EBA4
	adds r0, r4, #0
	movs r1, #3
	bl sub_08042B98
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _0803EB8E
	ldrb r0, [r4, #5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #5]
	strh r2, [r4, #0x1e]
_0803EB8E:
	ldrb r1, [r4, #5]
	lsls r0, r1, #0x1e
	cmp r0, #0
	blt _0803EBA4
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r0, [r0]
	strh r0, [r4, #0x1e]
	movs r0, #2
	orrs r0, r1
	strb r0, [r4, #5]
_0803EBA4:
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0803EC04
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r0, [r0]
	ldrh r1, [r4, #0x1e]
	adds r0, r0, r1
	movs r5, #0
	strh r0, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08042B98
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803EBE2
	ldr r0, [r4, #0xc]
	ldr r1, _0803EC10 @ =0xFFFFF800
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0xc]
	strh r5, [r4, #0x1e]
_0803EBE2:
	adds r0, r4, #0
	movs r1, #3
	bl sub_08042B98
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803EC04
	ldr r0, [r4, #0xc]
	ldr r1, _0803EC10 @ =0xFFFFF800
	ands r0, r1
	str r0, [r4, #0xc]
	strh r5, [r4, #0x1e]
	ldrb r1, [r4, #5]
	movs r0, #3
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #5]
_0803EC04:
	adds r0, r4, #0
	bl sub_08042BC0
_0803EC0A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803EC10: .4byte 0xFFFFF800
	thumb_func_end sub_0803EAE0

	thumb_func_start sub_0803EC14
sub_0803EC14: @ 0x0803EC14
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r1, r0, r1
	ldr r0, _0803ECE0 @ =gUnknown_20095A0
	adds r4, r1, r0
	ldr r0, _0803ECE4 @ =gUnknown_2015288
	ldrh r0, [r0]
	lsrs r0, r0, #4
	movs r5, #1
	ands r0, r5
	strb r0, [r4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0803ECD8
	adds r0, r4, #0
	bl sub_08042C08
	ldrh r0, [r4, #0x30]
	adds r0, #0x40
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r4, #0x32]
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	cmp r0, r1
	ble _0803EC52
	strh r2, [r4, #0x30]
_0803EC52:
	movs r0, #0x1c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldrh r0, [r4, #0x28]
	adds r0, #1
	strh r0, [r4, #0x28]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2a
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _0803EC88
	movs r0, #0
	strh r0, [r4, #0x28]
	ldrb r2, [r4, #3]
	lsrs r1, r2, #7
	eors r1, r5
	lsls r1, r1, #7
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #3]
	ldrh r0, [r4, #0x1c]
	negs r0, r0
	strh r0, [r4, #0x1c]
_0803EC88:
	ldr r2, [r4, #0x2c]
	movs r3, #0xe0
	lsls r3, r3, #2
	adds r1, r2, r3
	adds r0, r1, #0
	cmp r1, #0
	bge _0803EC9A
	ldr r3, _0803ECE8 @ =0x0001037F
	adds r0, r2, r3
_0803EC9A:
	asrs r0, r0, #0x10
	lsls r0, r0, #0x10
	subs r0, r1, r0
	str r0, [r4, #0x2c]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	bl sub_08043918
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x30]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	muls r1, r0, r1
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	bl sub_08043964
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x30]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	muls r1, r0, r1
	ldr r0, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r4, #0xc]
_0803ECD8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803ECE0: .4byte gUnknown_20095A0
_0803ECE4: .4byte gUnknown_2015288
_0803ECE8: .4byte 0x0001037F
	thumb_func_end sub_0803EC14

	thumb_func_start sub_0803ECEC
sub_0803ECEC: @ 0x0803ECEC
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r1, r0, r1
	ldr r0, _0803EDB8 @ =gUnknown_20095A0
	adds r4, r1, r0
	ldr r0, _0803EDBC @ =gUnknown_2015288
	ldrh r0, [r0]
	lsrs r0, r0, #4
	movs r5, #1
	ands r0, r5
	strb r0, [r4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0803EDB0
	adds r0, r4, #0
	bl sub_08042C08
	ldrh r0, [r4, #0x30]
	adds r0, #0x40
	strh r0, [r4, #0x30]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r4, #0x32]
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	cmp r0, r1
	ble _0803ED2A
	strh r2, [r4, #0x30]
_0803ED2A:
	movs r0, #0x1c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldrh r0, [r4, #0x28]
	adds r0, #1
	strh r0, [r4, #0x28]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x2a
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _0803ED60
	movs r0, #0
	strh r0, [r4, #0x28]
	ldrb r2, [r4, #3]
	lsrs r1, r2, #7
	eors r1, r5
	lsls r1, r1, #7
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #3]
	ldrh r0, [r4, #0x1c]
	negs r0, r0
	strh r0, [r4, #0x1c]
_0803ED60:
	ldr r2, [r4, #0x2c]
	movs r3, #0xe0
	lsls r3, r3, #2
	adds r1, r2, r3
	adds r0, r1, #0
	cmp r1, #0
	bge _0803ED72
	ldr r3, _0803EDC0 @ =0x0001037F
	adds r0, r2, r3
_0803ED72:
	asrs r0, r0, #0x10
	lsls r0, r0, #0x10
	subs r0, r1, r0
	str r0, [r4, #0x2c]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	bl sub_08043918
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x30]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	muls r1, r0, r1
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x2c]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	bl sub_08043964
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4, #0x30]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	muls r1, r0, r1
	ldr r0, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r4, #0xc]
_0803EDB0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803EDB8: .4byte gUnknown_20095A0
_0803EDBC: .4byte gUnknown_2015288
_0803EDC0: .4byte 0x0001037F
	thumb_func_end sub_0803ECEC

	thumb_func_start sub_0803EDC4
sub_0803EDC4: @ 0x0803EDC4
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r1, r0, r1
	ldr r0, _0803EE34 @ =gUnknown_20095A0
	adds r4, r1, r0
	ldr r0, _0803EE38 @ =gUnknown_2015288
	ldrh r0, [r0]
	lsrs r0, r0, #4
	movs r7, #1
	ands r0, r7
	strb r0, [r4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0803EE2C
	adds r0, r4, #0
	bl sub_08042C08
	ldr r5, [r4, #8]
	ldr r6, [r4, #0xc]
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #8]
	adds r1, r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08042B98
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803EE14
	adds r0, r4, #0
	bl sub_0803F87C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803EE2C
_0803EE14:
	str r5, [r4, #8]
	ldrb r2, [r4, #3]
	lsrs r1, r2, #7
	eors r1, r7
	lsls r1, r1, #7
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #3]
	ldrh r0, [r4, #0x1c]
	negs r0, r0
	strh r0, [r4, #0x1c]
_0803EE2C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803EE34: .4byte gUnknown_20095A0
_0803EE38: .4byte gUnknown_2015288
	thumb_func_end sub_0803EDC4

	thumb_func_start sub_0803EE3C
sub_0803EE3C: @ 0x0803EE3C
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r1, r0, r1
	ldr r0, _0803EFA8 @ =gUnknown_20095A0
	adds r4, r1, r0
	ldr r0, _0803EFAC @ =gUnknown_2015288
	ldrh r0, [r0]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	strb r0, [r4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _0803EE60
	b _0803EFA2
_0803EE60:
	adds r0, r4, #0
	bl sub_08042C08
	movs r1, #0x28
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0803EEA6
	ldr r0, _0803EFB0 @ =gUnknown_2009510
	ldr r1, [r0, #0x14]
	ldr r0, [r4, #0xc]
	subs r1, r1, r0
	cmp r1, #0
	bge _0803EE7C
	negs r1, r1
_0803EE7C:
	ldr r0, _0803EFB4 @ =0x00001FFF
	cmp r1, r0
	bgt _0803EE9E
	ldrh r0, [r4, #0x2a]
	strh r0, [r4, #0x28]
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0803EE96
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r0, [r0]
	strh r0, [r4, #0x1e]
_0803EE96:
	ldrb r0, [r4, #5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #5]
_0803EE9E:
	movs r2, #0x28
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _0803EEAC
_0803EEA6:
	ldrh r0, [r4, #0x28]
	subs r0, #1
	strh r0, [r4, #0x28]
_0803EEAC:
	movs r1, #0x28
	ldrsh r0, [r4, r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	cmp r0, #0
	bne _0803EEBC
	movs r1, #0x80
_0803EEBC:
	strh r1, [r4, #0x34]
	ldr r5, [r4, #8]
	ldr r6, [r4, #0xc]
	movs r0, #0x1c
	ldrsh r1, [r4, r0]
	movs r2, #0x34
	ldrsh r0, [r4, r2]
	muls r0, r1, r0
	cmp r0, #0
	bge _0803EED2
	adds r0, #0xff
_0803EED2:
	asrs r0, r0, #8
	ldr r1, [r4, #8]
	adds r1, r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08042B98
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803EF00
	adds r0, r4, #0
	bl sub_0803F7DC
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803EF00
	adds r0, r4, #0
	bl sub_0803F87C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803EF1A
_0803EF00:
	str r5, [r4, #8]
	ldrb r2, [r4, #3]
	lsrs r1, r2, #7
	movs r0, #1
	eors r1, r0
	lsls r1, r1, #7
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #3]
	ldrh r0, [r4, #0x1c]
	negs r0, r0
	strh r0, [r4, #0x1c]
_0803EF1A:
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0803EF3C
	adds r0, r4, #0
	movs r1, #3
	bl sub_08042B98
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _0803EF3C
	ldrb r0, [r4, #5]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #5]
	strh r2, [r4, #0x1e]
_0803EF3C:
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge _0803EF9C
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r0, [r0]
	ldrh r1, [r4, #0x1e]
	adds r0, r0, r1
	movs r5, #0
	strh r0, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08042B98
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803EF7A
	ldr r0, [r4, #0xc]
	ldr r1, _0803EFB8 @ =0xFFFFF800
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r4, #0xc]
	strh r5, [r4, #0x1e]
_0803EF7A:
	adds r0, r4, #0
	movs r1, #3
	bl sub_08042B98
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803EF9C
	ldr r0, [r4, #0xc]
	ldr r1, _0803EFB8 @ =0xFFFFF800
	ands r0, r1
	str r0, [r4, #0xc]
	strh r5, [r4, #0x1e]
	ldrb r1, [r4, #5]
	movs r0, #3
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #5]
_0803EF9C:
	adds r0, r4, #0
	bl sub_08042BC0
_0803EFA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803EFA8: .4byte gUnknown_20095A0
_0803EFAC: .4byte gUnknown_2015288
_0803EFB0: .4byte gUnknown_2009510
_0803EFB4: .4byte 0x00001FFF
_0803EFB8: .4byte 0xFFFFF800
	thumb_func_end sub_0803EE3C

	thumb_func_start sub_0803EFBC
sub_0803EFBC: @ 0x0803EFBC
	push {r4, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r1, r0, r1
	ldr r0, _0803EFFC @ =gUnknown_20095A0
	adds r4, r1, r0
	movs r0, #0x8a
	strb r0, [r4]
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #0xc]
	adds r0, r1, #0
	cmp r0, #0
	bge _0803F000
	adds r0, r4, #0
	movs r1, #3
	bl sub_08042B98
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803F030
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0xc]
	subs r1, r1, r0
	str r1, [r4, #0xc]
	movs r0, #0
	strh r0, [r4, #0x1e]
	b _0803F030
	.align 2, 0
_0803EFFC: .4byte gUnknown_20095A0
_0803F000:
	adds r0, r4, #0
	movs r1, #3
	bl sub_08042B98
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803F018
	ldr r1, [r4, #0xc]
	movs r0, #0xe0
	lsls r0, r0, #7
	cmp r1, r0
	ble _0803F030
_0803F018:
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0xc]
	subs r0, r0, r1
	str r0, [r4, #0xc]
	ldrh r0, [r4, #0x1e]
	negs r0, r0
	strh r0, [r4, #0x1e]
	ldrh r1, [r4, #2]
	ldr r0, _0803F03C @ =0xFFFFE07F
	ands r0, r1
	strh r0, [r4, #2]
_0803F030:
	ldrh r0, [r4, #0x1e]
	adds r0, #0x40
	strh r0, [r4, #0x1e]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F03C: .4byte 0xFFFFE07F
	thumb_func_end sub_0803EFBC

	thumb_func_start sub_0803F040
sub_0803F040: @ 0x0803F040
	push {r4, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r1, r0, r1
	ldr r0, _0803F0D8 @ =gUnknown_20095A0
	adds r4, r1, r0
	ldr r1, [r4]
	lsls r1, r1, #0xe
	lsrs r1, r1, #0x1c
	lsls r1, r1, #1
	adds r1, #0x6d
	ldr r0, _0803F0DC @ =gUnknown_2015288
	ldrh r0, [r0]
	lsrs r0, r0, #2
	movs r2, #1
	ands r0, r2
	adds r0, r0, r1
	strb r0, [r4]
	movs r0, #0x1c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #0xc]
	movs r0, #0x1c
	ldrsh r1, [r4, r0]
	mvns r1, r1
	lsrs r1, r1, #0x1f
	lsls r1, r1, #7
	ldrb r2, [r4, #3]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #3]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _0803F0AA
	adds r0, r4, #0
	movs r1, #3
	bl sub_08042B98
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803F0AA
	ldrh r1, [r4, #2]
	ldr r0, _0803F0E0 @ =0xFFFFE07F
	ands r0, r1
	strh r0, [r4, #2]
_0803F0AA:
	ldr r0, [r4, #0xc]
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r0, r1
	movs r1, #0x98
	lsls r1, r1, #8
	cmp r0, r1
	bhi _0803F0C8
	ldr r1, [r4, #8]
	cmp r1, #0
	blt _0803F0C8
	movs r0, #0xc0
	lsls r0, r0, #0xb
	cmp r1, r0
	ble _0803F0D0
_0803F0C8:
	ldrh r1, [r4, #2]
	ldr r0, _0803F0E0 @ =0xFFFFE07F
	ands r0, r1
	strh r0, [r4, #2]
_0803F0D0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803F0D8: .4byte gUnknown_20095A0
_0803F0DC: .4byte gUnknown_2015288
_0803F0E0: .4byte 0xFFFFE07F
	thumb_func_end sub_0803F040

	thumb_func_start sub_0803F0E4
sub_0803F0E4: @ 0x0803F0E4
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r1, r0, r1
	ldr r0, _0803F184 @ =gUnknown_20095A0
	adds r4, r1, r0
	movs r0, #0
	strb r0, [r4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0803F17C
	movs r0, #0x1c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	subs r1, #4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_080429F4
	movs r5, #0x80
	lsls r5, r5, #7
	adds r1, r5, #0
	ands r1, r0
	cmp r1, #0
	beq _0803F176
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	ldr r0, [r4, #8]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	subs r1, #4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_080429F4
	adds r1, r5, #0
	ands r1, r0
	cmp r1, #0
	beq _0803F176
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	ldr r0, [r4, #8]
	adds r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0xc]
	asrs r1, r1, #8
	subs r1, #4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_080429F4
	adds r1, r5, #0
	ands r1, r0
	cmp r1, #0
	bne _0803F17C
_0803F176:
	ldrh r0, [r4, #0x1c]
	negs r0, r0
	strh r0, [r4, #0x1c]
_0803F17C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803F184: .4byte gUnknown_20095A0
	thumb_func_end sub_0803F0E4

	thumb_func_start sub_0803F188
sub_0803F188: @ 0x0803F188
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r6, #0x5c
	muls r0, r6, r0
	ldr r5, _0803F208 @ =gUnknown_20095A0
	adds r4, r0, r5
	ldrb r1, [r4, #5]
	lsls r0, r1, #0x1c
	cmp r0, #0
	bge _0803F200
	movs r0, #9
	negs r0, r0
	ands r0, r1
	strb r0, [r4, #5]
	movs r0, #0x18
	bl sub_0803FCC4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r6, r0
	adds r3, r0, r5
	ldr r2, [r4]
	movs r0, #0xf0
	lsls r0, r0, #0xa
	ands r2, r0
	ldr r0, [r3]
	ldr r1, _0803F20C @ =0xFFFC3FFF
	ands r0, r1
	orrs r0, r2
	str r0, [r3]
	ldr r0, [r4, #8]
	str r0, [r3, #8]
	ldr r0, [r4, #0xc]
	ldr r1, _0803F210 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r3, #0xc]
	adds r0, r4, #0
	adds r0, #0x4c
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldrb r0, [r4, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _0803F1E4
	negs r1, r1
_0803F1E4:
	strh r1, [r3, #0x1c]
	adds r0, r4, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	strh r0, [r3, #0x1e]
	ldrb r0, [r4, #3]
	movs r1, #0x40
	ands r1, r0
	ldrb r2, [r3, #3]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
_0803F200:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803F208: .4byte gUnknown_20095A0
_0803F20C: .4byte 0xFFFC3FFF
_0803F210: .4byte 0xFFFFFF00
	thumb_func_end sub_0803F188

	thumb_func_start sub_0803F214
sub_0803F214: @ 0x0803F214
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	bl sub_08042A4C
	movs r0, #0xbd
	bl m4aSongNumStart
	ldr r0, _0803F270 @ =gUnknown_200C0F2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0803F284
	ldr r0, _0803F274 @ =gUnknown_86FF928
	ldr r4, _0803F278 @ =gUnknown_200C100
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r6, _0803F27C @ =gUnknown_2016700
_0803F242:
	movs r3, #0
	adds r0, r1, #4
	adds r5, r1, #1
	lsls r0, r0, #5
	adds r1, r0, #3
	ldr r2, _0803F280 @ =0x00000403
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r2, r0, r6
	lsls r1, r1, #1
	adds r1, r1, r4
_0803F258:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r3, #1
	cmp r3, #0x17
	bls _0803F258
	adds r1, r5, #0
	cmp r1, #0xd
	bls _0803F242
	b _0803F3B0
	.align 2, 0
_0803F270: .4byte gUnknown_200C0F2
_0803F274: .4byte gUnknown_86FF928
_0803F278: .4byte gUnknown_200C100
_0803F27C: .4byte gUnknown_2016700
_0803F280: .4byte 0x00000403
_0803F284:
	cmp r0, #1
	bne _0803F2EC
	ldr r0, _0803F2D4 @ =gUnknown_20138A8
	movs r1, #0xc7
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r1, _0803F2D8 @ =gUnknown_86FFA34
	cmp r0, #0
	bne _0803F29A
	ldr r1, _0803F2DC @ =gUnknown_86FFB98
_0803F29A:
	ldr r4, _0803F2E0 @ =gUnknown_200C100
	adds r0, r1, #0
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r6, _0803F2E4 @ =gUnknown_2016700
_0803F2A8:
	movs r3, #0
	adds r0, r1, #4
	adds r5, r1, #1
	lsls r0, r0, #5
	adds r1, r0, #3
	ldr r2, _0803F2E8 @ =0x00000403
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r2, r0, r6
	lsls r1, r1, #1
	adds r1, r1, r4
_0803F2BE:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r3, #1
	cmp r3, #0x17
	bls _0803F2BE
	adds r1, r5, #0
	cmp r1, #0xd
	bls _0803F2A8
	b _0803F336
	.align 2, 0
_0803F2D4: .4byte gUnknown_20138A8
_0803F2D8: .4byte gUnknown_86FFA34
_0803F2DC: .4byte gUnknown_86FFB98
_0803F2E0: .4byte gUnknown_200C100
_0803F2E4: .4byte gUnknown_2016700
_0803F2E8: .4byte 0x00000403
_0803F2EC:
	ldr r0, _0803F3C0 @ =gUnknown_20138A8
	movs r1, #0xc7
	lsls r1, r1, #5
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r1, _0803F3C4 @ =gUnknown_86FFCF0
	cmp r0, #0
	bne _0803F2FE
	ldr r1, _0803F3C8 @ =gUnknown_86FFE58
_0803F2FE:
	ldr r4, _0803F3CC @ =gUnknown_200C100
	adds r0, r1, #0
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r1, #0
	ldr r6, _0803F3D0 @ =gUnknown_2016700
_0803F30C:
	movs r3, #0
	adds r0, r1, #4
	adds r5, r1, #1
	lsls r0, r0, #5
	adds r1, r0, #3
	ldr r2, _0803F3D4 @ =0x00000403
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r2, r0, r6
	lsls r1, r1, #1
	adds r1, r1, r4
_0803F322:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r3, #1
	cmp r3, #0x17
	bls _0803F322
	adds r1, r5, #0
	cmp r1, #0xd
	bls _0803F30C
_0803F336:
	movs r5, #0
	mov r8, sp
	ldr r0, _0803F3D8 @ =gUnknown_200C0F2
	mov sb, r0
	movs r1, #0xa
	mov sl, r1
_0803F342:
	mov r2, sb
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r1, #0xa
	bl __divsi3
	mov r2, r8
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803F35C
	mov r0, sl
	strh r0, [r2]
_0803F35C:
	mov r1, sb
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r1, #0xa
	bl __modsi3
	mov r1, r8
	strh r0, [r1, #2]
	movs r4, #0
	lsls r0, r5, #1
	adds r7, r5, #1
	ldr r1, _0803F3D0 @ =gUnknown_2016700
	movs r2, #0xfc
	lsls r2, r2, #8
	mov ip, r2
	mov r2, sp
	adds r6, r2, r0
	movs r2, #0xae
	lsls r2, r2, #3
	adds r0, r5, r2
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r5, r2, #0
	lsls r0, r0, #1
	adds r3, r0, r1
_0803F38E:
	ldrh r2, [r3]
	mov r0, ip
	ands r2, r0
	ldrh r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, r0, r4
	adds r0, r0, r5
	orrs r2, r0
	strh r2, [r3]
	adds r3, #0x40
	adds r4, #1
	cmp r4, #2
	ble _0803F38E
	adds r5, r7, #0
	cmp r5, #1
	ble _0803F342
_0803F3B0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F3C0: .4byte gUnknown_20138A8
_0803F3C4: .4byte gUnknown_86FFCF0
_0803F3C8: .4byte gUnknown_86FFE58
_0803F3CC: .4byte gUnknown_200C100
_0803F3D0: .4byte gUnknown_2016700
_0803F3D4: .4byte 0x00000403
_0803F3D8: .4byte gUnknown_200C0F2
	thumb_func_end sub_0803F214

	thumb_func_start sub_0803F3DC
sub_0803F3DC: @ 0x0803F3DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _0803F514 @ =gUnknown_200C0F0
	mov r8, r0
	ldr r1, _0803F518 @ =gUnknown_200C0F2
	mov sb, r1
	ldr r2, _0803F51C @ =gUnknown_200C0F6
	mov sl, r2
	ldr r0, _0803F520 @ =gUnknown_20095A0
	ldr r7, _0803F524 @ =0xFFFFE07F
	movs r6, #0x1f
	negs r6, r6
	ldr r5, _0803F528 @ =0xFFFFFE1F
	adds r2, r0, #2
	adds r3, r0, #0
	ldr r0, _0803F52C @ =0x00002AC4
	adds r4, r3, r0
_0803F406:
	ldrh r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	strh r0, [r2]
	ldrb r1, [r2, #2]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r2, #2]
	ldrh r1, [r2, #2]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r2, #2]
	adds r2, #0x5c
	adds r3, #0x5c
	cmp r3, r4
	ble _0803F406
	movs r0, #0
	mov r1, r8
	strh r0, [r1]
	mov r2, sb
	strh r0, [r2]
	mov r3, sl
	strh r0, [r3]
	movs r7, #0
_0803F436:
	ldr r0, _0803F530 @ =gUnknown_20151A0
	lsls r1, r7, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r4, r7, #1
	mov sb, r4
	cmp r0, #0
	bne _0803F448
	b _0803F7C0
_0803F448:
	lsls r4, r7, #5
	lsls r5, r7, #3
	str r5, [sp, #4]
	ldr r2, _0803F534 @ =gUnknown_2016300
	ldr r0, _0803F538 @ =0x0000129C
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r3, _0803F53C @ =gUnknown_200C900
	movs r5, #0xae
	lsls r5, r5, #2
	adds r0, r3, r5
	adds r1, r1, r0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, r3
	movs r6, #0x1f
	lsls r0, r0, #1
	adds r2, r0, r2
_0803F46C:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	subs r6, #1
	cmp r6, #0
	bge _0803F46C
	movs r6, #0
	mov r2, sp
	ldr r1, _0803F53C @ =gUnknown_200C900
	ldr r0, _0803F538 @ =0x0000129C
	muls r0, r7, r0
	movs r5, #0xbe
	lsls r5, r5, #2
	adds r1, r1, r5
	adds r3, r0, r1
	adds r5, r4, #0
	ldr r1, [sp, #4]
	subs r0, r1, r7
	lsls r4, r0, #9
_0803F494:
	ldrb r1, [r3]
	strb r1, [r2]
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _0803F4A2
	adds r0, r1, r5
	strb r0, [r2]
_0803F4A2:
	ldrb r1, [r3, #1]
	strb r1, [r2, #1]
	lsls r0, r1, #0x18
	cmp r0, #0
	beq _0803F4B0
	adds r0, r1, r5
	strb r0, [r2, #1]
_0803F4B0:
	ldr r1, _0803F540 @ =0x06010000
	adds r0, r4, r1
	ldrh r1, [r2]
	strh r1, [r0]
	adds r3, #2
	adds r4, #2
	adds r6, #1
	ldr r0, _0803F544 @ =0x000006FF
	cmp r6, r0
	ble _0803F494
	movs r6, #0
_0803F4C6:
	ldr r0, _0803F538 @ =0x0000129C
	muls r0, r7, r0
	adds r0, r6, r0
	ldr r3, _0803F53C @ =gUnknown_200C900
	adds r2, r0, r3
	ldrb r0, [r2]
	adds r4, r6, #1
	mov r8, r4
	cmp r0, #0
	bne _0803F4DC
	b _0803F7B8
_0803F4DC:
	ldr r1, _0803F548 @ =gUnknown_83B5526
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_0803FCC4
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r0, #0x5c
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _0803F520 @ =gUnknown_20095A0
	adds r1, r1, r0
	mov ip, r1
	ldrb r0, [r1, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803F54C
	cmp r6, #6
	beq _0803F54C
	ldr r1, _0803F514 @ =gUnknown_200C0F0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b _0803F554
	.align 2, 0
_0803F514: .4byte gUnknown_200C0F0
_0803F518: .4byte gUnknown_200C0F2
_0803F51C: .4byte gUnknown_200C0F6
_0803F520: .4byte gUnknown_20095A0
_0803F524: .4byte 0xFFFFE07F
_0803F528: .4byte 0xFFFFFE1F
_0803F52C: .4byte 0x00002AC4
_0803F530: .4byte gUnknown_20151A0
_0803F534: .4byte gUnknown_2016300
_0803F538: .4byte 0x0000129C
_0803F53C: .4byte gUnknown_200C900
_0803F540: .4byte 0x06010000
_0803F544: .4byte 0x000006FF
_0803F548: .4byte gUnknown_83B5526
_0803F54C:
	ldr r1, _0803F638 @ =gUnknown_200C0D0
	lsls r0, r7, #1
	adds r0, r0, r1
	strh r2, [r0]
_0803F554:
	ldr r5, [sp, #4]
	subs r0, r5, r7
	adds r0, r0, r6
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x10
	ldr r1, _0803F63C @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #0xd
	mov r2, ip
	ldr r1, [r2, #4]
	ldr r2, _0803F640 @ =0xFF801FFF
	ands r1, r2
	orrs r1, r0
	mov r3, ip
	str r1, [r3, #4]
	movs r0, #0xf
	mov r1, sb
	ands r1, r0
	lsls r3, r1, #1
	mov r4, ip
	ldrb r2, [r4, #4]
	movs r0, #0x1f
	negs r0, r0
	ands r0, r2
	orrs r0, r3
	strb r0, [r4, #4]
	lsls r1, r1, #5
	ldrh r2, [r4, #4]
	ldr r0, _0803F644 @ =0xFFFFFE1F
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #4]
	ldr r3, _0803F648 @ =gUnknown_200C900
	ldr r0, _0803F64C @ =0x0000129C
	adds r2, r7, #0
	muls r2, r0, r2
	adds r2, r6, r2
	adds r1, r3, #7
	adds r1, r2, r1
	mov r5, sb
	lsls r0, r5, #1
	add r0, sb
	lsls r0, r0, #6
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #8
	str r0, [r4, #8]
	adds r0, r3, #0
	adds r0, #0xe
	adds r2, r2, r0
	ldrb r0, [r2]
	lsls r0, r0, #8
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	mov r2, ip
	str r0, [r2, #0x38]
	str r1, [r2, #0x3c]
	str r0, [r4, #0x14]
	str r1, [r4, #0x18]
	movs r0, #6
	eors r0, r6
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	lsls r1, r1, #2
	ldrb r2, [r4, #5]
	movs r0, #5
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #5]
	cmp r6, #6
	bne _0803F5EC
	ldr r0, _0803F650 @ =0xFFFFF000
	str r0, [r4, #0xc]
_0803F5EC:
	movs r5, #0
	lsls r0, r6, #1
	mov sl, r0
	adds r1, r6, #1
	mov r8, r1
_0803F5F6:
	lsls r1, r5, #2
	mov r3, sl
	adds r2, r3, r6
	lsls r0, r2, #4
	adds r1, r1, r0
	ldr r0, _0803F64C @ =0x0000129C
	adds r3, r7, #0
	muls r3, r0, r3
	adds r1, r1, r3
	str r1, [sp, #8]
	ldr r4, _0803F648 @ =gUnknown_200C900
	ldr r1, _0803F654 @ =0x0000114C
	adds r0, r4, r1
	ldr r4, [sp, #8]
	adds r1, r4, r0
	ldr r4, [r1]
	lsls r2, r2, #2
	adds r2, r5, r2
	adds r2, r2, r3
	ldr r1, _0803F648 @ =gUnknown_200C900
	ldr r3, _0803F658 @ =0x000010F8
	adds r0, r1, r3
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0x16
	bls _0803F62C
	b _0803F7B0
_0803F62C:
	lsls r0, r0, #2
	ldr r1, _0803F65C @ =_0803F660
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803F638: .4byte gUnknown_200C0D0
_0803F63C: .4byte 0x000003FF
_0803F640: .4byte 0xFF801FFF
_0803F644: .4byte 0xFFFFFE1F
_0803F648: .4byte gUnknown_200C900
_0803F64C: .4byte 0x0000129C
_0803F650: .4byte 0xFFFFF000
_0803F654: .4byte 0x0000114C
_0803F658: .4byte 0x000010F8
_0803F65C: .4byte _0803F660
_0803F660: @ jump table
	.4byte _0803F7B0 @ case 0
	.4byte _0803F6BC @ case 1
	.4byte _0803F6CE @ case 2
	.4byte _0803F6D4 @ case 3
	.4byte _0803F6DA @ case 4
	.4byte _0803F6E0 @ case 5
	.4byte _0803F6E6 @ case 6
	.4byte _0803F6EC @ case 7
	.4byte _0803F6FA @ case 8
	.4byte _0803F6F2 @ case 9
	.4byte _0803F700 @ case 10
	.4byte _0803F718 @ case 11
	.4byte _0803F7B0 @ case 12
	.4byte _0803F72C @ case 13
	.4byte _0803F734 @ case 14
	.4byte _0803F73C @ case 15
	.4byte _0803F750 @ case 16
	.4byte _0803F758 @ case 17
	.4byte _0803F746 @ case 18
	.4byte _0803F760 @ case 19
	.4byte _0803F77A @ case 20
	.4byte _0803F792 @ case 21
	.4byte _0803F798 @ case 22
_0803F6BC:
	lsls r0, r4, #0x10
	lsrs r0, r0, #9
	mov r4, ip
	ldrb r2, [r4, #3]
	movs r1, #0x7f
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #3]
	b _0803F7B0
_0803F6CE:
	mov r0, ip
	strh r4, [r0, #0x1c]
	b _0803F7B0
_0803F6D4:
	mov r1, ip
	strh r4, [r1, #0x1e]
	b _0803F7B0
_0803F6DA:
	mov r2, ip
	strh r4, [r2, #0x20]
	b _0803F7B0
_0803F6E0:
	mov r3, ip
	strh r4, [r3, #0x22]
	b _0803F7B0
_0803F6E6:
	mov r0, ip
	strh r4, [r0, #0x24]
	b _0803F7B0
_0803F6EC:
	mov r1, ip
	strh r4, [r1, #0x26]
	b _0803F7B0
_0803F6F2:
	mov r0, ip
	adds r0, #0x48
	strh r4, [r0]
	b _0803F7B0
_0803F6FA:
	mov r2, ip
	strh r4, [r2, #0x32]
	b _0803F7B0
_0803F700:
	movs r0, #0x3f
	ands r4, r0
	lsls r2, r4, #7
	mov r3, ip
	ldrh r1, [r3, #6]
	ldr r0, _0803F714 @ =0xFFFFE07F
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #6]
	b _0803F7B0
	.align 2, 0
_0803F714: .4byte 0xFFFFE07F
_0803F718:
	ldr r0, _0803F728 @ =gUnknown_83B5534
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	mov r4, ip
	str r0, [r4, #0x54]
	b _0803F7B0
	.align 2, 0
_0803F728: .4byte gUnknown_83B5534
_0803F72C:
	mov r0, ip
	adds r0, #0x52
	strh r4, [r0]
	b _0803F7B0
_0803F734:
	mov r0, ip
	adds r0, #0x50
	strh r4, [r0]
	b _0803F7B0
_0803F73C:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	str r0, [r1, #0x44]
	b _0803F7B0
_0803F746:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r2, ip
	str r0, [r2, #0x44]
	b _0803F7B0
_0803F750:
	mov r0, ip
	adds r0, #0x4c
	strh r4, [r0]
	b _0803F7B0
_0803F758:
	mov r0, ip
	adds r0, #0x4e
	strh r4, [r0]
	b _0803F7B0
_0803F760:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	mov r3, ip
	ldrb r2, [r3, #3]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	b _0803F7B0
_0803F77A:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	ands r1, r0
	mov r4, ip
	ldrb r2, [r4, #4]
	movs r0, #2
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
	b _0803F7B0
_0803F792:
	mov r0, ip
	strh r4, [r0, #0x2a]
	b _0803F7B0
_0803F798:
	lsls r2, r4, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0xf
	ands r2, r0
	lsls r2, r2, #0xe
	mov r1, ip
	ldr r0, [r1]
	ldr r1, _0803F7D8 @ =0xFFFC3FFF
	ands r0, r1
	orrs r0, r2
	mov r2, ip
	str r0, [r2]
_0803F7B0:
	adds r5, #1
	cmp r5, #0xb
	bgt _0803F7B8
	b _0803F5F6
_0803F7B8:
	mov r6, r8
	cmp r6, #6
	bgt _0803F7C0
	b _0803F4C6
_0803F7C0:
	mov r7, sb
	cmp r7, #5
	bgt _0803F7C8
	b _0803F436
_0803F7C8:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803F7D8: .4byte 0xFFFC3FFF
	thumb_func_end sub_0803F3DC

	thumb_func_start sub_0803F7DC
sub_0803F7DC: @ 0x0803F7DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, [r0, #8]
	asrs r1, r1, #8
	mov sb, r1
	ldr r1, [r0, #0xc]
	asrs r6, r1, #8
	ldrh r1, [r0, #0x24]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	lsrs r1, r1, #0x1f
	adds r2, r2, r1
	asrs r2, r2, #1
	subs r2, #1
	mov r8, r2
	ldrh r0, [r0, #0x26]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	subs r0, #1
	mov r3, sb
	subs r1, r3, r2
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	subs r0, r6, r0
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_080429F4
	movs r5, #0x80
	lsls r5, r5, #6
	adds r1, r5, #0
	ands r1, r0
	cmp r1, #0
	bne _0803F868
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080429F4
	adds r1, r5, #0
	ands r1, r0
	cmp r1, #0
	bne _0803F868
	mov r0, sb
	add r0, r8
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_080429F4
	adds r1, r5, #0
	ands r1, r0
	cmp r1, #0
	bne _0803F868
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080429F4
	adds r1, r5, #0
	ands r1, r0
	cmp r1, #0
	beq _0803F86C
_0803F868:
	movs r0, #1
	b _0803F86E
_0803F86C:
	movs r0, #0
_0803F86E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0803F7DC

	thumb_func_start sub_0803F87C
sub_0803F87C: @ 0x0803F87C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r3, [r0, #8]
	asrs r3, r3, #8
	ldr r1, [r0, #0xc]
	asrs r7, r1, #8
	ldrh r1, [r0, #0x24]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	lsrs r1, r1, #0x1f
	adds r2, r2, r1
	asrs r2, r2, #1
	subs r2, #1
	ldrh r0, [r0, #0x26]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	subs r0, #1
	movs r6, #0
	subs r0, r7, r0
	lsls r0, r0, #0x10
	mov sb, r0
	subs r5, r3, r2
	lsls r2, r2, #1
	mov r8, r2
_0803F8B4:
	cmp r5, #0xbf
	ble _0803F8EC
	ldr r0, _0803F8F0 @ =gUnknown_200C0F8
	ldrb r1, [r0]
	adds r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #6
	cmp r5, r0
	bge _0803F8EC
	lsls r0, r5, #0x10
	asrs r4, r0, #0x10
	adds r0, r4, #0
	mov r2, sb
	asrs r1, r2, #0x10
	bl sub_08042994
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0803F8EC
	lsls r1, r7, #0x10
	adds r0, r4, #0
	asrs r1, r1, #0x10
	bl sub_08042994
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0803F8F4
_0803F8EC:
	movs r0, #1
	b _0803F8FE
	.align 2, 0
_0803F8F0: .4byte gUnknown_200C0F8
_0803F8F4:
	add r5, r8
	adds r6, #1
	cmp r6, #1
	ble _0803F8B4
	movs r0, #0
_0803F8FE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0803F87C

	thumb_func_start sub_0803F90C
sub_0803F90C: @ 0x0803F90C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp, #0x2c]
	lsls r0, r0, #0x18
	movs r1, #0
	mov r8, r1
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsrs r0, r0, #0x14
	adds r0, r3, r0
	cmp r0, #0x13
	bls _0803F932
	b _0803FCA8
_0803F932:
	lsls r0, r0, #2
	ldr r1, _0803F93C @ =_0803F940
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803F93C: .4byte _0803F940
_0803F940: @ jump table
	.4byte _0803F990 @ case 0
	.4byte _0803FA94 @ case 1
	.4byte _0803FCA8 @ case 2
	.4byte _0803FADC @ case 3
	.4byte _0803FCA8 @ case 4
	.4byte _0803FCA8 @ case 5
	.4byte _0803FCA8 @ case 6
	.4byte _0803FCA8 @ case 7
	.4byte _0803FCA8 @ case 8
	.4byte _0803FCA8 @ case 9
	.4byte _0803FCA8 @ case 10
	.4byte _0803FCA8 @ case 11
	.4byte _0803FCA8 @ case 12
	.4byte _0803FCA8 @ case 13
	.4byte _0803FCA8 @ case 14
	.4byte _0803FCA8 @ case 15
	.4byte _0803FB20 @ case 16
	.4byte _0803FC24 @ case 17
	.4byte _0803FCA8 @ case 18
	.4byte _0803FC6C @ case 19
_0803F990:
	movs r6, #0
	lsls r7, r2, #0x10
	asrs r2, r2, #0x10
	str r2, [sp]
	subs r2, r5, #1
	str r2, [sp, #4]
	asrs r3, r7, #0x10
	mov sl, r3
	ldr r1, [sp]
	subs r0, r5, r1
	asrs r0, r0, #8
	lsls r0, r0, #0x10
	mov sb, r0
	ldr r2, _0803FA90 @ =gUnknown_83B557C
_0803F9AC:
	ldr r0, [r2]
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	cmp r0, #0
	bge _0803F9BA
	adds r0, #3
_0803F9BA:
	asrs r0, r0, #2
	subs r0, r4, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r3, sb
	asrs r1, r3, #0x10
	str r2, [sp, #8]
	bl sub_0804292C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add r8, r0
	ldr r2, [sp, #8]
	adds r2, #4
	adds r6, #1
	cmp r6, #4
	ble _0803F9AC
	movs r6, #0
	asrs r0, r7, #0x10
	lsrs r1, r7, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r0, r0, r4
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [sp]
	mov sb, r0
_0803F9F2:
	adds r6, #1
	mov r1, sb
	muls r1, r6, r1
	cmp r1, #0
	bge _0803F9FE
	adds r1, #3
_0803F9FE:
	asrs r1, r1, #2
	subs r1, r5, r1
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r0, sl
	bl sub_0804292C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add r8, r0
	cmp r6, #2
	ble _0803F9F2
	movs r6, #0
	asrs r1, r7, #0x10
	mov sl, r1
	ldr r2, [sp, #4]
	asrs r0, r2, #8
	lsls r0, r0, #0x10
	mov sb, r0
	ldr r2, _0803FA90 @ =gUnknown_83B557C
_0803FA26:
	ldr r0, [r2]
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	cmp r0, #0
	bge _0803FA34
	adds r0, #3
_0803FA34:
	asrs r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r3, sb
	asrs r1, r3, #0x10
	str r2, [sp, #8]
	bl sub_0804292C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add r8, r0
	ldr r2, [sp, #8]
	adds r2, #4
	adds r6, #1
	cmp r6, #4
	ble _0803FA26
	movs r6, #0
	asrs r0, r7, #0x10
	lsrs r1, r7, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r0, r4, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r7, [sp]
_0803FA6A:
	adds r6, #1
	adds r1, r7, #0
	muls r1, r6, r1
	cmp r1, #0
	bge _0803FA76
	adds r1, #3
_0803FA76:
	asrs r1, r1, #2
	subs r1, r5, r1
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r0, sb
	bl sub_0804292C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add r8, r0
	cmp r6, #2
	ble _0803FA6A
	b _0803FCA8
	.align 2, 0
_0803FA90: .4byte gUnknown_83B557C
_0803FA94:
	movs r6, #0
	lsls r7, r2, #0x10
	asrs r7, r7, #0x10
	mov sl, r7
	asrs r0, r2, #0x10
	subs r0, r5, r0
	asrs r0, r0, #8
	lsls r0, r0, #0x10
	mov sb, r0
	ldr r7, _0803FAD8 @ =gUnknown_83B557C
_0803FAA8:
	ldr r0, [r7]
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _0803FAB6
	adds r0, #3
_0803FAB6:
	asrs r0, r0, #2
	subs r0, r4, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r2, sb
	asrs r1, r2, #0x10
	bl sub_0804292C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add r8, r0
	adds r7, #4
	adds r6, #1
	cmp r6, #4
	ble _0803FAA8
	b _0803FCA8
	.align 2, 0
_0803FAD8: .4byte gUnknown_83B557C
_0803FADC:
	movs r6, #0
	lsls r7, r2, #0x10
	adds r0, r5, #1
	asrs r7, r7, #0x10
	mov sl, r7
	asrs r0, r0, #8
	lsls r0, r0, #0x10
	mov sb, r0
	ldr r7, _0803FB1C @ =gUnknown_83B557C
_0803FAEE:
	ldr r0, [r7]
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	cmp r0, #0
	bge _0803FAFC
	adds r0, #3
_0803FAFC:
	asrs r0, r0, #2
	subs r0, r4, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r2, sb
	asrs r1, r2, #0x10
	bl sub_0804292C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add r8, r0
	adds r7, #4
	adds r6, #1
	cmp r6, #4
	ble _0803FAEE
	b _0803FCA8
	.align 2, 0
_0803FB1C: .4byte gUnknown_83B557C
_0803FB20:
	movs r6, #0
	lsls r7, r2, #0x10
	asrs r2, r2, #0x10
	str r2, [sp]
	subs r3, r5, #1
	str r3, [sp, #4]
	asrs r0, r7, #0x10
	mov sl, r0
	subs r0, r5, r2
	asrs r0, r0, #8
	lsls r0, r0, #0x10
	mov sb, r0
	ldr r2, _0803FC20 @ =gUnknown_83B557C
_0803FB3A:
	ldr r0, [r2]
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _0803FB48
	adds r0, #3
_0803FB48:
	asrs r0, r0, #2
	subs r0, r4, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r3, sb
	asrs r1, r3, #0x10
	str r2, [sp, #8]
	bl sub_08040384
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add r8, r0
	ldr r2, [sp, #8]
	adds r2, #4
	adds r6, #1
	cmp r6, #4
	ble _0803FB3A
	movs r6, #0
	asrs r0, r7, #0x10
	lsrs r1, r7, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r0, r0, r4
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov sl, r0
	ldr r0, [sp]
	mov sb, r0
_0803FB80:
	adds r6, #1
	mov r1, sb
	muls r1, r6, r1
	cmp r1, #0
	bge _0803FB8C
	adds r1, #3
_0803FB8C:
	asrs r1, r1, #2
	subs r1, r5, r1
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r0, sl
	bl sub_08040384
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add r8, r0
	cmp r6, #2
	ble _0803FB80
	movs r6, #0
	asrs r1, r7, #0x10
	mov sl, r1
	ldr r2, [sp, #4]
	asrs r0, r2, #8
	lsls r0, r0, #0x10
	mov sb, r0
	ldr r2, _0803FC20 @ =gUnknown_83B557C
_0803FBB4:
	ldr r0, [r2]
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	cmp r0, #0
	bge _0803FBC2
	adds r0, #3
_0803FBC2:
	asrs r0, r0, #2
	adds r0, r0, r4
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r3, sb
	asrs r1, r3, #0x10
	str r2, [sp, #8]
	bl sub_08040384
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add r8, r0
	ldr r2, [sp, #8]
	adds r2, #4
	adds r6, #1
	cmp r6, #4
	ble _0803FBB4
	movs r6, #0
	asrs r0, r7, #0x10
	lsrs r1, r7, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r0, r4, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov sb, r0
	ldr r7, [sp]
_0803FBF8:
	adds r6, #1
	adds r1, r7, #0
	muls r1, r6, r1
	cmp r1, #0
	bge _0803FC04
	adds r1, #3
_0803FC04:
	asrs r1, r1, #2
	subs r1, r5, r1
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r0, sb
	bl sub_08040384
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add r8, r0
	cmp r6, #2
	ble _0803FBF8
	b _0803FCA8
	.align 2, 0
_0803FC20: .4byte gUnknown_83B557C
_0803FC24:
	movs r6, #0
	lsls r7, r2, #0x10
	asrs r7, r7, #0x10
	mov sl, r7
	asrs r0, r2, #0x10
	subs r0, r5, r0
	asrs r0, r0, #8
	lsls r0, r0, #0x10
	mov sb, r0
	ldr r7, _0803FC68 @ =gUnknown_83B557C
_0803FC38:
	ldr r0, [r7]
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _0803FC46
	adds r0, #3
_0803FC46:
	asrs r0, r0, #2
	subs r0, r4, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r2, sb
	asrs r1, r2, #0x10
	bl sub_08040384
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add r8, r0
	adds r7, #4
	adds r6, #1
	cmp r6, #4
	ble _0803FC38
	b _0803FCA8
	.align 2, 0
_0803FC68: .4byte gUnknown_83B557C
_0803FC6C:
	movs r6, #0
	lsls r7, r2, #0x10
	asrs r0, r5, #8
	asrs r7, r7, #0x10
	mov sl, r7
	lsls r0, r0, #0x10
	mov sb, r0
	ldr r7, _0803FCC0 @ =gUnknown_83B557C
_0803FC7C:
	ldr r0, [r7]
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	cmp r0, #0
	bge _0803FC8A
	adds r0, #3
_0803FC8A:
	asrs r0, r0, #2
	subs r0, r4, r0
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r2, sb
	asrs r1, r2, #0x10
	bl sub_08040384
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add r8, r0
	adds r7, #4
	adds r6, #1
	cmp r6, #4
	ble _0803FC7C
_0803FCA8:
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0803FCC0: .4byte gUnknown_83B557C
	thumb_func_end sub_0803F90C

	thumb_func_start sub_0803FCC4
sub_0803FCC4: @ 0x0803FCC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #3
	ldr r2, _0803FE18 @ =gUnknown_86FED70
	adds r1, r1, r2
	mov ip, r1
	movs r5, #0
	ldr r1, _0803FE1C @ =gUnknown_20095A0
	movs r2, #0x3f
	ands r0, r2
	lsls r6, r0, #7
	ldr r7, _0803FE20 @ =0xFFFFE07F
	movs r0, #1
	mov r8, r0
_0803FCEA:
	movs r0, #0x5c
	muls r0, r5, r0
	adds r3, r0, r1
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x13
	lsrs r4, r0, #0x1a
	cmp r4, #0
	beq _0803FCFC
	b _0803FE2C
_0803FCFC:
	ldrb r1, [r3, #3]
	movs r0, #0x21
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #3]
	strb r4, [r3]
	ldr r0, [r3, #4]
	ldr r1, _0803FE24 @ =0x007FE000
	orrs r0, r1
	str r0, [r3, #4]
	strh r4, [r3, #0x10]
	strh r4, [r3, #0x12]
	ldrb r1, [r3, #2]
	movs r0, #0x7d
	negs r0, r0
	ands r0, r1
	strb r0, [r3, #2]
	str r4, [r3, #0x2c]
	strh r4, [r3, #0x30]
	mov r1, ip
	ldrh r0, [r1, #0x10]
	strh r0, [r3, #0x32]
	strh r4, [r3, #0x28]
	ldr r0, [r1, #0x20]
	strh r0, [r3, #0x2a]
	ldr r0, [r3, #8]
	ldr r1, [r3, #0xc]
	str r0, [r3, #0x38]
	str r1, [r3, #0x3c]
	ldrh r1, [r3, #2]
	adds r0, r7, #0
	ands r0, r1
	orrs r0, r6
	strh r0, [r3, #2]
	mov r0, ip
	ldrb r1, [r0]
	ands r1, r2
	ldrb r2, [r3, #1]
	movs r0, #0x40
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	mov r1, ip
	ldr r0, [r1, #4]
	str r0, [r3, #0x1c]
	ldr r0, [r1, #8]
	str r0, [r3, #0x20]
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	lsls r0, r0, #8
	strh r0, [r3, #0x24]
	movs r2, #0xe
	ldrsh r0, [r1, r2]
	lsls r0, r0, #8
	strh r0, [r3, #0x26]
	movs r0, #0x80
	strh r0, [r3, #0x34]
	str r4, [r3, #0x40]
	ldr r0, [r1, #0x18]
	str r0, [r3, #0x44]
	ldrb r1, [r1, #0x1c]
	mov r0, r8
	ands r1, r0
	ldrb r2, [r3, #4]
	movs r0, #2
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	ldrb r1, [r3, #5]
	movs r0, #3
	negs r0, r0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #9
	negs r1, r1
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r3, #5]
	ldrb r1, [r3, #3]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #3]
	mov r2, ip
	ldrh r1, [r2, #0x12]
	adds r0, r3, #0
	adds r0, #0x48
	strh r1, [r0]
	movs r1, #0x14
	ldrsb r1, [r2, r1]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #7
	ldrh r2, [r3, #6]
	adds r0, r7, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #6]
	mov r0, ip
	adds r0, #0x24
	ldrb r2, [r0]
	movs r0, #0xf
	ands r2, r0
	lsls r2, r2, #0xe
	ldr r0, [r3]
	ldr r1, _0803FE28 @ =0xFFFC3FFF
	ands r0, r1
	orrs r0, r2
	str r0, [r3]
	mov r0, ip
	adds r0, #0x25
	ldrb r1, [r0]
	mov r0, r8
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #3]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	mov r1, ip
	ldr r0, [r1, #0x28]
	str r0, [r3, #0x4c]
	ldrh r1, [r1, #0x2c]
	adds r0, r3, #0
	adds r0, #0x50
	strh r1, [r0]
	mov r2, ip
	ldrh r0, [r2, #0x2e]
	adds r1, r3, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r0, [r2, #0x30]
	str r0, [r3, #0x54]
	ldr r0, [r2, #0x34]
	str r0, [r3, #0x58]
	b _0803FE34
	.align 2, 0
_0803FE18: .4byte gUnknown_86FED70
_0803FE1C: .4byte gUnknown_20095A0
_0803FE20: .4byte 0xFFFFE07F
_0803FE24: .4byte 0x007FE000
_0803FE28: .4byte 0xFFFC3FFF
_0803FE2C:
	adds r5, #1
	cmp r5, #0x77
	bgt _0803FE34
	b _0803FCEA
_0803FE34:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0803FCC4

	thumb_func_start sub_0803FE44
sub_0803FE44: @ 0x0803FE44
	push {r4, r5, r6, lr}
	movs r6, #0
	movs r5, #0
_0803FE4A:
	movs r0, #0x5c
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _0803FECC @ =gUnknown_20095A0
	adds r4, r1, r0
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1a
	cmp r0, #0
	beq _0803FEB8
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0803FEB8
	ldr r0, [r4, #8]
	movs r1, #0xc0
	lsls r1, r1, #8
	bl __divsi3
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r4, #4]
	movs r3, #0x1f
	negs r3, r3
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #4]
	ldrb r2, [r4, #2]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1b
	cmp r0, #0
	beq _0803FEA0
	subs r1, r0, #1
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #2
	subs r3, #0x5e
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #2]
_0803FEA0:
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _0803FEAC
	asrs r0, r5, #0x10
	bl _call_via_r1
_0803FEAC:
	ldr r1, [r4, #0x58]
	cmp r1, #0
	beq _0803FEB8
	asrs r0, r5, #0x10
	bl _call_via_r1
_0803FEB8:
	movs r0, #0x80
	lsls r0, r0, #9
	adds r5, r5, r0
	adds r6, #1
	cmp r6, #0x77
	ble _0803FE4A
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803FECC: .4byte gUnknown_20095A0
	thumb_func_end sub_0803FE44

	thumb_func_start sub_0803FED0
sub_0803FED0: @ 0x0803FED0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	movs r0, #0
	str r0, [sp, #0x18]
_0803FEE0:
	movs r0, #0x5c
	ldr r2, [sp, #0x18]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _0803FF10 @ =gUnknown_20095A0
	adds r2, r1, r0
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1a
	ldr r5, [sp, #0x18]
	adds r5, #1
	mov sb, r5
	cmp r0, #0
	bne _0803FEFE
	b _080400DC
_0803FEFE:
	ldrb r0, [r2, #5]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _0803FF14
	movs r0, #0x89
	strb r0, [r2]
	movs r1, #1
	negs r1, r1
	b _0803FF1A
	.align 2, 0
_0803FF10: .4byte gUnknown_20095A0
_0803FF14:
	ldr r0, [r2, #4]
	lsls r0, r0, #9
	asrs r1, r0, #0x16
_0803FF1A:
	ldrb r3, [r2]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _0803FF28
	adds r0, r3, #1
	adds r3, r0, r1
_0803FF28:
	ldr r0, [sp, #0x18]
	adds r0, #1
	mov sb, r0
	cmp r3, #0
	bne _0803FF34
	b _080400DC
_0803FF34:
	movs r1, #0x10
	ldrsh r0, [r2, r1]
	ldr r1, [r2, #8]
	adds r1, r1, r0
	ldr r5, _0803FFE0 @ =gUnknown_2009588
	ldr r0, [r5]
	subs r0, r1, r0
	cmp r0, #0
	bge _0803FF48
	adds r0, #0xff
_0803FF48:
	asrs r4, r0, #8
	adds r0, r4, #0
	adds r0, #0x18
	str r0, [sp, #0x1c]
	movs r1, #0x12
	ldrsh r0, [r2, r1]
	ldr r1, [r2, #0xc]
	adds r1, r1, r0
	ldr r0, [r5, #4]
	subs r0, r1, r0
	cmp r0, #0
	bge _0803FF62
	adds r0, #0xff
_0803FF62:
	asrs r0, r0, #8
	adds r0, #0x20
	mov r8, r0
	adds r0, r4, #0
	adds r0, #0x28
	movs r6, #0x80
	lsls r6, r6, #1
	cmp r0, r6
	bls _0803FF76
	b _080400DC
_0803FF76:
	movs r0, #0x10
	negs r0, r0
	cmp r8, r0
	bge _0803FF80
	b _080400DC
_0803FF80:
	mov r5, r8
	cmp r5, #0xc8
	ble _0803FF88
	b _080400DC
_0803FF88:
	ldrb r0, [r2, #2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	cmp r0, #0
	beq _0803FFA2
	ldr r0, _0803FFE4 @ =gUnknown_2015288
	ldrh r0, [r0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803FFA2
	b _080400DC
_0803FFA2:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1a
	cmp r0, #0x16
	beq _08040040
	ldrb r4, [r2, #3]
	lsls r0, r4, #0x1a
	cmp r0, #0
	blt _0803FFF0
	lsls r4, r4, #0x18
	lsrs r0, r4, #0x1f
	adds r0, #0xc
	ldr r2, [sp, #0x1c]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	mov r5, r8
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	ldr r5, _0803FFE8 @ =gUnknown_83B6100
	lsls r3, r3, #2
	adds r3, r3, r5
	ldr r3, [r3]
	ldr r5, _0803FFEC @ =gUnknown_83B5590
	lsrs r4, r4, #0x1f
	lsls r4, r4, #1
	adds r4, r4, r5
	movs r5, #0
	ldrsh r4, [r4, r5]
	str r4, [sp]
	str r6, [sp, #4]
	b _08040026
	.align 2, 0
_0803FFE0: .4byte gUnknown_2009588
_0803FFE4: .4byte gUnknown_2015288
_0803FFE8: .4byte gUnknown_83B6100
_0803FFEC: .4byte gUnknown_83B5590
_0803FFF0:
	ldrh r0, [r2, #0x26]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	movs r2, #0x20
	subs r2, r2, r0
	lsls r4, r4, #0x18
	lsrs r0, r4, #0x1f
	adds r0, #0xe
	ldr r5, [sp, #0x1c]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	add r2, r8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r5, _08040034 @ =gUnknown_83B6100
	lsls r3, r3, #2
	adds r3, r3, r5
	ldr r3, [r3]
	ldr r5, _08040038 @ =gUnknown_83B5590
	lsrs r4, r4, #0x1f
	lsls r4, r4, #1
	adds r4, r4, r5
	movs r5, #0
	ldrsh r4, [r4, r5]
	str r4, [sp]
	ldr r4, _0804003C @ =0xFFFFFF00
	str r4, [sp, #4]
_08040026:
	bl sub_08043878
	ldr r0, [sp, #0x18]
	adds r0, #1
	mov sb, r0
	b _080400DC
	.align 2, 0
_08040034: .4byte gUnknown_83B6100
_08040038: .4byte gUnknown_83B5590
_0804003C: .4byte 0xFFFFFF00
_08040040:
	movs r7, #0
	movs r5, #0xfa
	lsls r5, r5, #2
	movs r1, #0
	mov sl, r1
	adds r0, r2, #0
	adds r0, #0x48
	movs r2, #0
	ldrsh r6, [r0, r2]
	ldr r0, [sp, #0x18]
	adds r0, #1
	mov sb, r0
	b _0804006A
_0804005A:
	muls r0, r5, r0
	subs r6, r6, r0
	adds r0, r5, #0
	movs r1, #0xa
	bl __divsi3
	adds r5, r0, #0
	adds r7, #1
_0804006A:
	lsls r0, r7, #2
	mov r4, sp
	adds r4, r4, r0
	adds r4, #8
	adds r0, r6, #0
	adds r1, r5, #0
	bl __divsi3
	str r0, [r4]
	cmp r5, #1
	bne _0804005A
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0804009E
	movs r3, #0xa
	add r1, sp, #8
	add r2, sp, #0x10
_0804008C:
	movs r5, #4
	negs r5, r5
	add sl, r5
	stm r1!, {r3}
	cmp r1, r2
	bgt _0804009E
	ldr r0, [r1]
	cmp r0, #0
	beq _0804008C
_0804009E:
	ldr r5, [sp, #0x1c]
	add r4, sp, #8
	mov r0, r8
	lsls r6, r0, #0x10
	movs r7, #3
_080400A8:
	ldr r0, [r4]
	cmp r0, #0xa
	beq _080400D2
	mov r1, sl
	subs r1, #8
	adds r1, r5, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, #0x79
	lsls r0, r0, #2
	ldr r2, _080400F8 @ =gUnknown_83B6100
	adds r0, r0, r2
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0xc
	asrs r2, r6, #0x10
	bl sub_08043878
_080400D2:
	adds r5, #8
	adds r4, #4
	subs r7, #1
	cmp r7, #0
	bge _080400A8
_080400DC:
	mov r5, sb
	str r5, [sp, #0x18]
	cmp r5, #0x77
	bgt _080400E6
	b _0803FEE0
_080400E6:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080400F8: .4byte gUnknown_83B6100
	thumb_func_end sub_0803FED0

	thumb_func_start sub_080400FC
sub_080400FC: @ 0x080400FC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	ldr r0, _080401CC @ =gUnknown_2009590
	ldr r2, [r0]
	movs r5, #0xc9
	str r5, [sp]
	movs r4, #1
	str r4, [sp, #4]
	str r4, [sp, #8]
	movs r0, #8
	movs r1, #2
	movs r3, #5
	bl sub_080401DC
	ldr r0, _080401D0 @ =gUnknown_2009594
	ldr r2, [r0]
	str r5, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	movs r0, #0x15
	movs r1, #2
	movs r3, #5
	bl sub_080401DC
	ldr r0, _080401D4 @ =gUnknown_2009598
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r0, #0xd4
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #2
	mov r8, r0
	str r0, [sp, #8]
	movs r0, #6
	movs r1, #0x12
	movs r3, #2
	bl sub_080401DC
	ldr r5, _080401D8 @ =gUnknown_2008000
	ldr r0, [r5]
	movs r1, #0xe1
	lsls r1, r1, #4
	bl __divsi3
	movs r1, #0x3c
	bl __modsi3
	adds r2, r0, #0
	movs r6, #0xea
	str r6, [sp]
	movs r4, #0
	str r4, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	movs r0, #0x12
	movs r1, #0x12
	movs r3, #2
	bl sub_080401DC
	ldr r0, [r5]
	movs r1, #0x3c
	bl __divsi3
	movs r1, #0x3c
	bl __modsi3
	adds r2, r0, #0
	str r6, [sp]
	str r4, [sp, #4]
	mov r0, r8
	str r0, [sp, #8]
	movs r0, #0x15
	movs r1, #0x12
	movs r3, #2
	bl sub_080401DC
	ldr r0, [r5]
	movs r1, #0x3c
	bl __modsi3
	movs r1, #0x64
	muls r0, r1, r0
	movs r1, #0x3c
	bl __divsi3
	adds r2, r0, #0
	str r6, [sp]
	str r4, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	movs r0, #0x18
	movs r1, #0x12
	movs r3, #2
	bl sub_080401DC
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080401CC: .4byte gUnknown_2009590
_080401D0: .4byte gUnknown_2009594
_080401D4: .4byte gUnknown_2009598
_080401D8: .4byte gUnknown_2008000
	thumb_func_end sub_080400FC

	thumb_func_start sub_080401DC
sub_080401DC: @ 0x080401DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r2, [sp, #8]
	ldr r2, [sp, #0x44]
	ldr r4, [sp, #0x48]
	ldr r5, [sp, #0x4c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r3, r3, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xc]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x10]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0
	str r0, [sp, #0x14]
	movs r1, #1
	mov r8, r1
	lsrs r1, r3, #0x10
	asrs r3, r3, #0x10
	subs r0, r3, #1
	cmp r0, #0
	ble _08040232
	adds r4, r0, #0
_08040222:
	mov r2, r8
	lsls r0, r2, #2
	add r0, r8
	lsls r0, r0, #1
	mov r8, r0
	subs r4, #1
	cmp r4, #0
	bne _08040222
_08040232:
	lsls r0, r1, #0x10
	movs r4, #0
	str r0, [sp, #0x18]
	cmp r0, #0
	ble _080402EC
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
_08040242:
	mov r3, r8
	lsls r1, r3, #2
	add r1, r8
	lsls r1, r1, #1
	ldr r0, [sp, #8]
	bl __modsi3
	mov r1, r8
	bl __divsi3
	adds r2, r0, #0
	cmp r2, #0
	beq _08040262
	movs r6, #1
	str r6, [sp, #0x14]
	b _08040276
_08040262:
	ldr r7, [sp, #0x14]
	cmp r7, #0
	bne _08040276
	mov r0, r8
	cmp r0, #1
	beq _08040276
	ldr r1, [sp, #0x10]
	cmp r1, #1
	bne _08040276
	movs r2, #0xa
_08040276:
	ldr r3, _080402FC @ =gUnknown_2016700
	mov sb, r3
	ldr r6, [sp, #4]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x20]
	lsls r1, r0, #5
	ldr r7, [sp]
	lsls r0, r7, #0x10
	asrs r3, r0, #0x10
	adds r1, r1, r3
	adds r1, r1, r4
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #1
	add r1, sb
	mov r5, sl
	muls r5, r2, r5
	ldr r2, [sp, #0xc]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, r5
	ldr r6, _08040300 @ =0xFFFFE000
	mov ip, r6
	movs r6, #0
	mov r7, sp
	strh r6, [r7, #0x1c]
	mov r7, ip
	orrs r0, r7
	strh r0, [r1]
	mov r0, sl
	cmp r0, #2
	bne _080402D8
	ldr r1, [sp, #0x20]
	adds r1, #1
	lsls r1, r1, #5
	adds r1, r1, r3
	adds r1, r1, r4
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #1
	add r1, sb
	adds r0, r2, #1
	adds r0, r5, r0
	mov r6, ip
	orrs r0, r6
	strh r0, [r1]
_080402D8:
	mov r0, r8
	movs r1, #0xa
	bl __divsi3
	mov r8, r0
	adds r4, #1
	ldr r7, [sp, #0x18]
	asrs r0, r7, #0x10
	cmp r4, r0
	blt _08040242
_080402EC:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080402FC: .4byte gUnknown_2016700
_08040300: .4byte 0xFFFFE000
	thumb_func_end sub_080401DC

	thumb_func_start sub_08040304
sub_08040304: @ 0x08040304
	push {r4, lr}
	ldr r1, _08040348 @ =gUnknown_2008000
	ldr r4, [r1]
	cmp r4, #0
	bne _0804036C
	bl sub_08042A4C
	ldr r0, _0804034C @ =gUnknown_200C0C4
	movs r1, #1
	strb r1, [r0]
	ldr r1, _08040350 @ =gUnknown_83B551C
	movs r2, #6
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _08040328
	ldrh r0, [r1, #6]
	bl m4aSongNumStart
_08040328:
	ldr r0, _08040354 @ =gUnknown_86FF390
	ldr r0, [r0, #0xc]
	bl sub_08042B4C
	ldr r0, _08040358 @ =gUnknown_200C0C6
	strh r4, [r0]
	ldr r1, _0804035C @ =gUnknown_200C0C0
	movs r0, #0x3c
	str r0, [r1]
	ldr r0, _08040360 @ =gUnknown_201520C
	ldr r1, _08040364 @ =sub_080424B8
	str r1, [r0]
	ldr r0, _08040368 @ =gUnknown_200C0E0
	str r1, [r0]
	b _0804037A
	.align 2, 0
_08040348: .4byte gUnknown_2008000
_0804034C: .4byte gUnknown_200C0C4
_08040350: .4byte gUnknown_83B551C
_08040354: .4byte gUnknown_86FF390
_08040358: .4byte gUnknown_200C0C6
_0804035C: .4byte gUnknown_200C0C0
_08040360: .4byte gUnknown_201520C
_08040364: .4byte sub_080424B8
_08040368: .4byte gUnknown_200C0E0
_0804036C:
	ldr r0, _08040380 @ =gUnknown_200C0C8
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0804037A
	subs r0, r4, #1
	str r0, [r1]
_0804037A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08040380: .4byte gUnknown_200C0C8
	thumb_func_end sub_08040304

	thumb_func_start sub_08040384
sub_08040384: @ 0x08040384
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r0, _080403C8 @ =gUnknown_2009588
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #8
	bl __divsi3
	adds r5, r0, #0
	lsls r4, r4, #0x10
	asrs r6, r4, #0x10
	adds r0, r6, #0
	movs r1, #0xc0
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r5, r0
	bne _080403D6
	ldr r0, _080403CC @ =0x05FF0000
	cmp r4, r0
	bhi _080403C4
	lsls r1, r7, #0x10
	asrs r2, r1, #0x10
	movs r0, #0x20
	negs r0, r0
	cmp r2, r0
	bge _080403D0
_080403C4:
	movs r0, #0x20
	b _08040404
	.align 2, 0
_080403C8: .4byte gUnknown_2009588
_080403CC: .4byte 0x05FF0000
_080403D0:
	lsrs r0, r1, #0x10
	cmp r0, #0x6f
	bls _080403DA
_080403D6:
	movs r0, #0
	b _08040404
_080403DA:
	ldr r3, _0804040C @ =gUnknown_2008010
	adds r1, r2, #0
	cmp r1, #0
	bge _080403E4
	adds r1, #7
_080403E4:
	asrs r1, r1, #3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #6
	adds r0, r6, #0
	cmp r0, #0
	bge _080403F4
	adds r0, #7
_080403F4:
	asrs r0, r0, #3
	adds r0, r1, r0
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r1, [r0]
	ldr r0, _08040410 @ =0x000003FF
	ands r0, r1
	lsrs r0, r0, #8
_08040404:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0804040C: .4byte gUnknown_2008010
_08040410: .4byte 0x000003FF
	thumb_func_end sub_08040384

	thumb_func_start sub_08040414
sub_08040414: @ 0x08040414
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08040500 @ =gUnknown_2015190
	ldr r0, [r0]
	cmp r0, #0
	bne _0804042A
	b _0804062C
_0804042A:
	ldr r7, _08040504 @ =gUnknown_2009510
	ldr r2, _08040508 @ =gUnknown_2009588
	ldr r1, [r7, #0x10]
	ldr r0, [r2]
	subs r0, r1, r0
	cmp r0, #0
	bge _0804043A
	adds r0, #0xff
_0804043A:
	asrs r0, r0, #8
	adds r0, #0x18
	mov sl, r0
	ldr r1, [r7, #0x14]
	ldr r0, [r2, #4]
	subs r0, r1, r0
	cmp r0, #0
	bge _0804044C
	adds r0, #0xff
_0804044C:
	asrs r0, r0, #8
	adds r0, #0x20
	mov sb, r0
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r7, #0
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #2
	bne _08040466
	movs r1, #0x80
	mov r8, r1
_08040466:
	ldr r6, [r7, #8]
	adds r0, r6, #0
	mov r1, r8
	bl __udivsi3
	adds r5, r0, #0
	ldr r0, [r7, #0x18]
	cmp r0, #0
	bge _0804047A
	negs r0, r0
_0804047A:
	cmp r0, #0
	bge _08040480
	adds r0, #0xf
_08040480:
	asrs r0, r0, #4
	adds r0, r6, r0
	str r0, [r7, #8]
	mov r1, r8
	bl __udivsi3
	subs r5, r0, r5
	ldr r0, _0804050C @ =gUnknown_201520C
	ldr r1, [r0]
	ldr r0, _08040510 @ =sub_08041DA4
	cmp r1, r0
	beq _080404A4
	ldr r0, _08040514 @ =sub_08042044
	cmp r1, r0
	beq _080404A4
	ldr r0, _08040518 @ =sub_08042100
	cmp r1, r0
	bne _080404C2
_080404A4:
	ldr r0, _08040504 @ =gUnknown_2009510
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #0
	beq _080404B2
	cmp r0, #2
	bne _080404C2
_080404B2:
	cmp r5, #0
	beq _080404C2
	ldr r0, _0804051C @ =gUnknown_20138A8
	ldr r2, _08040520 @ =0x000018CC
	adds r0, r0, r2
	ldrh r0, [r0]
	bl m4aSongNumStart
_080404C2:
	ldr r1, _08040504 @ =gUnknown_2009510
	adds r0, r1, #0
	adds r0, #0x46
	ldrb r0, [r0]
	adds r5, r1, #0
	cmp r0, #0
	bne _08040534
	ldr r0, _08040524 @ =gUnknown_2017814
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08040530
	ldr r0, _08040528 @ =gUnknown_200C0C4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08040530
	ldr r4, _0804052C @ =gUnknown_83B5594
	ldr r0, [r5, #8]
	movs r1, #0x96
	bl __udivsi3
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r4, r0, #0
	adds r4, #0x55
	b _0804058A
	.align 2, 0
_08040500: .4byte gUnknown_2015190
_08040504: .4byte gUnknown_2009510
_08040508: .4byte gUnknown_2009588
_0804050C: .4byte gUnknown_201520C
_08040510: .4byte sub_08041DA4
_08040514: .4byte sub_08042044
_08040518: .4byte sub_08042100
_0804051C: .4byte gUnknown_20138A8
_08040520: .4byte 0x000018CC
_08040524: .4byte gUnknown_2017814
_08040528: .4byte gUnknown_200C0C4
_0804052C: .4byte gUnknown_83B5594
_08040530:
	movs r4, #0x5d
	b _0804058A
_08040534:
	cmp r0, #2
	bne _08040584
	ldr r0, _08040570 @ =gUnknown_2017814
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08040580
	ldr r0, _08040574 @ =gUnknown_200C0C4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08040580
	ldr r4, _08040578 @ =gUnknown_83B55A4
	ldr r0, _0804057C @ =gUnknown_2015288
	ldrh r0, [r0]
	movs r1, #6
	bl __udivsi3
	lsls r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #0xa
	ands r1, r0
	lsrs r1, r1, #0xf
	adds r1, r1, r4
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r4, r0, #0
	adds r4, #0x61
	b _0804058A
	.align 2, 0
_08040570: .4byte gUnknown_2017814
_08040574: .4byte gUnknown_200C0C4
_08040578: .4byte gUnknown_83B55A4
_0804057C: .4byte gUnknown_2015288
_08040580:
	movs r4, #0x5f
	b _0804058A
_08040584:
	cmp r0, #1
	bne _0804058A
	movs r4, #0x5e
_0804058A:
	adds r1, r5, #0
	adds r1, #0x4c
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _080405C8
	subs r0, r2, #1
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080405B2
	ldr r0, _0804063C @ =gUnknown_2009570
	ldrh r0, [r0, #0x16]
	movs r4, #0x65
	cmp r0, #0
	bne _080405B2
	movs r4, #0x66
_080405B2:
	adds r0, r5, #0
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #2
	bne _080405C8
	ldr r0, _0804063C @ =gUnknown_2009570
	ldrh r0, [r0, #0x16]
	movs r4, #0x8b
	cmp r0, #0
	bne _080405C8
	movs r4, #0x60
_080405C8:
	adds r0, r5, #0
	adds r0, #0x48
	ldrb r0, [r0]
	cmp r0, #0
	beq _080405FA
	adds r1, r5, #0
	adds r1, #0x4a
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0x1e
	bgt _080405E4
	adds r0, r2, #1
	strh r0, [r1]
_080405E4:
	ldr r4, _08040640 @ =gUnknown_83B55B0
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r1, #0xb
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r4
	movs r3, #0
	ldrsh r4, [r0, r3]
_080405FA:
	mov r0, sl
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	mov r3, sb
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	ldr r3, _08040644 @ =gUnknown_83B6100
	lsls r0, r4, #2
	adds r0, r0, r3
	ldr r3, [r0]
	ldr r4, _08040648 @ =gUnknown_83B55AC
	adds r0, r5, #0
	adds r0, #0x47
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #4]
	movs r0, #0x1f
	bl sub_08043878
_0804062C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804063C: .4byte gUnknown_2009570
_08040640: .4byte gUnknown_83B55B0
_08040644: .4byte gUnknown_83B6100
_08040648: .4byte gUnknown_83B55AC
	thumb_func_end sub_08040414

	thumb_func_start sub_0804064C
sub_0804064C: @ 0x0804064C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, _0804069C @ =gUnknown_200C0DC
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r5, #1
	negs r5, r5
	cmp r0, r5
	beq _08040696
	ldr r1, _080406A0 @ =gUnknown_200C0D0
	movs r2, #0
	ldrsh r0, [r6, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0x5c
	mov r8, r2
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r7, _080406A4 @ =gUnknown_20095A0
	adds r4, r0, r7
	ldr r0, [r4, #0xc]
	bl sub_080454C8
	ldr r2, _080406A8 @ =0x40700000
	ldr r3, _080406AC @ =0x00000000
	bl sub_08044D3C
	bl sub_08045544
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x18]
	cmp r0, r1
	bge _080406B0
_08040696:
	movs r0, #0
	b _080406E0
	.align 2, 0
_0804069C: .4byte gUnknown_200C0DC
_080406A0: .4byte gUnknown_200C0D0
_080406A4: .4byte gUnknown_20095A0
_080406A8: .4byte 0x40700000
_080406AC: .4byte 0x00000000
_080406B0:
	str r1, [r4, #0xc]
	ldrb r0, [r4, #5]
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #5]
	movs r0, #0x66
	bl m4aSongNumStart
	movs r0, #0x14
	bl sub_0803FCC4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	muls r2, r0, r2
	adds r2, r2, r7
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	movs r0, #0x3c
	str r0, [r2, #0x40]
	strh r5, [r6]
	adds r0, r5, #0
_080406E0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0804064C

	thumb_func_start sub_080406EC
sub_080406EC: @ 0x080406EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _08040820 @ =gUnknown_2015190
	ldr r0, [r0]
	cmp r0, #0
	bne _08040704
	bl _08040ED0
_08040704:
	ldr r0, _08040824 @ =gUnknown_20151A0
	ldr r0, [r0]
	cmp r0, #0
	beq _08040716
	ldr r0, _08040828 @ =gUnknown_200C0C8
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08040728
_08040716:
	ldr r0, _0804082C @ =gUnknown_2017814
	ldrh r2, [r0]
	mov sl, r2
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08040830 @ =gUnknown_201781C
	ldrh r3, [r0]
	str r3, [sp, #0x1c]
	strh r1, [r0]
_08040728:
	bl sub_08042A9C
	ldr r1, _08040834 @ =gUnknown_2009510
	adds r0, r1, #0
	adds r0, #0x46
	ldrb r0, [r0]
	add r2, sp, #0xc
	mov sb, r2
	cmp r0, #0
	bne _08040780
	movs r6, #0
	movs r4, #0
	adds r5, r1, #0
_08040742:
	subs r1, r4, #1
	movs r3, #0x30
	ldrsh r0, [r5, r3]
	muls r1, r0, r1
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x14]
	asrs r1, r1, #8
	subs r1, #0x16
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08040384
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r6, r6, r0
	adds r4, #1
	cmp r4, #2
	ble _08040742
	cmp r6, #0
	beq _08040780
	ldr r1, _08040834 @ =gUnknown_2009510
	ldr r0, [r1, #0x18]
	ldr r2, _08040838 @ =0xFFFFFF00
	adds r0, r0, r2
	str r0, [r1, #0x18]
_08040780:
	movs r0, #1
	movs r1, #2
	bl sub_08042B18
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08040792
	bl sub_08041374
_08040792:
	ldr r5, _08040834 @ =gUnknown_2009510
	ldr r1, [r5, #0x14]
	movs r0, #0x90
	lsls r0, r0, #8
	cmp r1, r0
	ble _080407D0
	bl m4aMPlayAllStop
	ldr r0, _0804083C @ =gUnknown_20138A8
	ldr r3, _08040840 @ =0x000018D8
	adds r0, r0, r3
	ldrh r0, [r0]
	bl m4aSongNumStart
	ldr r1, _08040844 @ =gUnknown_200C0C6
	movs r0, #0x96
	strh r0, [r1]
	ldr r1, _08040848 @ =gUnknown_200C0C0
	movs r0, #0x3c
	str r0, [r1]
	ldr r0, _0804084C @ =gUnknown_201520C
	ldr r1, _08040850 @ =sub_080424B8
	str r1, [r0]
	ldr r0, _08040854 @ =gUnknown_200C0E0
	str r1, [r0]
	adds r2, r5, #0
	adds r2, #0x58
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
_080407D0:
	ldr r4, [r5, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r0, r4, #0
	bl __divsi3
	mov r8, r0
	str r4, [sp, #0x14]
	ldr r0, _08040858 @ =gUnknown_200C0C4
	ldrb r3, [r0]
	cmp r3, #0
	bne _08040806
	ldr r0, _0804082C @ =gUnknown_2017814
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08040806
	adds r2, r5, #0
	adds r2, #0x47
	strb r3, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08040806
	movs r0, #1
	strb r0, [r2]
_08040806:
	ldr r0, _08040834 @ =gUnknown_2009510
	adds r1, r0, #0
	adds r1, #0x46
	ldrb r1, [r1]
	cmp r1, #1
	bne _08040814
	b _08040970
_08040814:
	cmp r1, #1
	bgt _0804085C
	cmp r1, #0
	beq _08040864
	b _08040A1A
	.align 2, 0
_08040820: .4byte gUnknown_2015190
_08040824: .4byte gUnknown_20151A0
_08040828: .4byte gUnknown_200C0C8
_0804082C: .4byte gUnknown_2017814
_08040830: .4byte gUnknown_201781C
_08040834: .4byte gUnknown_2009510
_08040838: .4byte 0xFFFFFF00
_0804083C: .4byte gUnknown_20138A8
_08040840: .4byte 0x000018D8
_08040844: .4byte gUnknown_200C0C6
_08040848: .4byte gUnknown_200C0C0
_0804084C: .4byte gUnknown_201520C
_08040850: .4byte sub_080424B8
_08040854: .4byte gUnknown_200C0E0
_08040858: .4byte gUnknown_200C0C4
_0804085C:
	cmp r1, #2
	bne _08040862
	b _080409C4
_08040862:
	b _08040A1A
_08040864:
	movs r0, #0
	movs r1, #3
	bl sub_08042B18
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080408C0
	ldr r0, _08040898 @ =gUnknown_2017814
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080408A0
	ldr r0, _0804089C @ =gUnknown_2009510
	ldr r1, [r0, #0x18]
	subs r1, #0x80
	str r1, [r0, #0x18]
	ldr r0, [r0, #0x20]
	negs r0, r0
	cmp r1, r0
	blt _08040890
	b _08040A1A
_08040890:
	ldr r1, _0804089C @ =gUnknown_2009510
	str r0, [r1, #0x18]
	b _08040A1A
	.align 2, 0
_08040898: .4byte gUnknown_2017814
_0804089C: .4byte gUnknown_2009510
_080408A0:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080408AA
	b _08040A1A
_080408AA:
	ldr r2, _080408BC @ =gUnknown_2009510
	ldr r0, [r2, #0x18]
	adds r0, #0x80
	str r0, [r2, #0x18]
	ldr r1, [r2, #0x20]
	cmp r0, r1
	bgt _080408BA
	b _08040A1A
_080408BA:
	b _08040A18
	.align 2, 0
_080408BC: .4byte gUnknown_2009510
_080408C0:
	ldr r0, _08040908 @ =gUnknown_2017814
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08040918
	ldr r3, _0804090C @ =gUnknown_2009510
	ldr r0, [r3, #0x18]
	subs r0, #0x80
	str r0, [r3, #0x18]
	bl sub_080454C8
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r1, _0804090C @ =gUnknown_2009510
	ldr r0, [r1, #0x20]
	negs r0, r0
	bl sub_080454C8
	ldr r2, _08040910 @ =0x40019999
	ldr r3, _08040914 @ =0x9999999A
	bl sub_08044DA4
	adds r7, r1, #0
	adds r6, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_08045430
	cmp r0, #0
	blt _08040904
	b _08040A1A
_08040904:
	b _08040956
	.align 2, 0
_08040908: .4byte gUnknown_2017814
_0804090C: .4byte gUnknown_2009510
_08040910: .4byte 0x40019999
_08040914: .4byte 0x9999999A
_08040918:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08040922
	b _08040A1A
_08040922:
	ldr r3, _08040964 @ =gUnknown_2009510
	ldr r0, [r3, #0x18]
	adds r0, #0x80
	str r0, [r3, #0x18]
	bl sub_080454C8
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r1, _08040964 @ =gUnknown_2009510
	ldr r0, [r1, #0x20]
	bl sub_080454C8
	ldr r2, _08040968 @ =0x40019999
	ldr r3, _0804096C @ =0x9999999A
	bl sub_08044DA4
	adds r7, r1, #0
	adds r6, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl sub_08045398
	cmp r0, #0
	ble _08040A1A
_08040956:
	adds r1, r7, #0
	adds r0, r6, #0
	bl sub_08045544
	ldr r2, _08040964 @ =gUnknown_2009510
	str r0, [r2, #0x18]
	b _08040A1A
	.align 2, 0
_08040964: .4byte gUnknown_2009510
_08040968: .4byte 0x40019999
_0804096C: .4byte 0x9999999A
_08040970:
	ldr r0, _08040998 @ =gUnknown_2017814
	ldrh r6, [r0]
	movs r0, #0x30
	ands r0, r6
	cmp r0, #0
	beq _08040A1A
	ldr r7, _0804099C @ =gUnknown_2009510
	adds r3, r7, #0
	ldr r0, [r3, #0x18]
	bl sub_080454C8
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0x20
	ands r0, r6
	cmp r0, #0
	beq _080409A8
	ldr r2, _080409A0 @ =0xC0400000
	ldr r3, _080409A4 @ =0x00000000
	b _080409AC
	.align 2, 0
_08040998: .4byte gUnknown_2017814
_0804099C: .4byte gUnknown_2009510
_080409A0: .4byte 0xC0400000
_080409A4: .4byte 0x00000000
_080409A8:
	ldr r3, _080409C0 @ =0x00000000
	ldr r2, _080409BC @ =0x40400000
_080409AC:
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08044D3C
	bl sub_08045544
	str r0, [r7, #0x18]
	b _08040A1A
	.align 2, 0
_080409BC: .4byte 0x40400000
_080409C0: .4byte 0x00000000
_080409C4:
	movs r0, #0
	movs r1, #3
	bl sub_08042B18
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080409FC
	ldr r0, _080409F4 @ =gUnknown_2017814
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08040A1A
	movs r0, #0x20
	ands r0, r1
	movs r1, #0x80
	cmp r0, #0
	beq _080409EC
	movs r1, #0x80
	negs r1, r1
_080409EC:
	ldr r0, _080409F8 @ =gUnknown_2009510
	str r1, [r0, #0x18]
	b _08040A1A
	.align 2, 0
_080409F4: .4byte gUnknown_2017814
_080409F8: .4byte gUnknown_2009510
_080409FC:
	ldr r0, _08040A4C @ =gUnknown_2017814
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08040A1A
	movs r0, #0x20
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, #0
	beq _08040A16
	ldr r1, _08040A50 @ =0xFFFFFF00
_08040A16:
	ldr r2, _08040A54 @ =gUnknown_2009510
_08040A18:
	str r1, [r2, #0x18]
_08040A1A:
	ldr r3, _08040A54 @ =gUnknown_2009510
	ldr r0, [r3, #0x10]
	ldr r1, [r3, #0x18]
	adds r0, r0, r1
	str r0, [r3, #0x10]
	adds r0, r3, #0
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #1
	beq _08040A7C
	adds r6, r3, #0
	adds r0, r1, #0
	bl sub_080454C8
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, _08040A4C @ =gUnknown_2017814
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08040A60
	ldr r2, _08040A58 @ =0x3FECCCCC
	ldr r3, _08040A5C @ =0xCCCCCCCD
	b _08040A64
	.align 2, 0
_08040A4C: .4byte gUnknown_2017814
_08040A50: .4byte 0xFFFFFF00
_08040A54: .4byte gUnknown_2009510
_08040A58: .4byte 0x3FECCCCC
_08040A5C: .4byte 0xCCCCCCCD
_08040A60:
	ldr r3, _08040A78 @ =0xCCCCCCCD
	ldr r2, _08040A74 @ =0x3FE4CCCC
_08040A64:
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08044DA4
	bl sub_08045544
	str r0, [r6, #0x18]
	b _08040A92
	.align 2, 0
_08040A74: .4byte 0x3FE4CCCC
_08040A78: .4byte 0xCCCCCCCD
_08040A7C:
	adds r0, r1, #0
	bl sub_080454C8
	ldr r3, _08040AFC @ =0x51EB851F
	ldr r2, _08040AF8 @ =0x3FED1EB8
	bl sub_08044DA4
	bl sub_08045544
	ldr r1, _08040B00 @ =gUnknown_2009510
	str r0, [r1, #0x18]
_08040A92:
	ldr r4, _08040B00 @ =gUnknown_2009510
	ldr r2, [r4, #0x10]
	ldr r0, [r4, #0x24]
	adds r2, r2, r0
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x28]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	movs r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x2c]
	adds r2, r2, r0
	str r2, [r4, #0x10]
	bl sub_080454C8
	ldr r2, _08040B04 @ =0x3FEB3333
	ldr r3, _08040B08 @ =0x33333333
	bl sub_08044DA4
	bl sub_08045544
	str r0, [r4, #0x2c]
	adds r7, r4, #0
	adds r7, #0x46
	ldrb r0, [r7]
	cmp r0, #0
	beq _08040ACE
	cmp r0, #2
	bne _08040B4E
_08040ACE:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _08040B4E
	ldr r6, [r4, #0x30]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	bl sub_080454C8
	adds r5, r1, #0
	adds r4, r0, #0
	ldrb r0, [r7]
	cmp r0, #2
	bne _08040B14
	ldr r2, _08040B0C @ =0x3FE00000
	ldr r3, _08040B10 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_08044DA4
	b _08040B18
	.align 2, 0
_08040AF8: .4byte 0x3FED1EB8
_08040AFC: .4byte 0x51EB851F
_08040B00: .4byte gUnknown_2009510
_08040B04: .4byte 0x3FEB3333
_08040B08: .4byte 0x33333333
_08040B0C: .4byte 0x3FE00000
_08040B10: .4byte 0x00000000
_08040B14:
	adds r1, r5, #0
	adds r0, r4, #0
_08040B18:
	bl sub_08045544
	lsls r1, r0, #0x10
	ldr r0, _08040B70 @ =0x0000FFFF
	ands r6, r0
	orrs r6, r1
	ldr r4, _08040B74 @ =gUnknown_2009510
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	movs r3, #3
	movs r2, #1
	str r2, [sp]
	adds r2, r6, #0
	bl sub_0803F90C
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _08040B4E
	str r2, [r4, #0x1c]
	adds r0, r4, #0
	adds r0, #0x46
	movs r1, #1
	strb r1, [r0]
	subs r0, #2
	strh r2, [r0]
	strb r1, [r4, #0xc]
_08040B4E:
	ldr r4, _08040B74 @ =gUnknown_2009510
	adds r0, r4, #0
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #1
	bne _08040BE4
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	bge _08040B78
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r0, r1, #0
	adds r0, #0x40
	str r0, [r4, #0x1c]
	b _08040BB2
	.align 2, 0
_08040B70: .4byte 0x0000FFFF
_08040B74: .4byte gUnknown_2009510
_08040B78:
	adds r5, r4, #0
	adds r5, #0x44
	movs r3, #0
	ldrsh r0, [r5, r3]
	cmp r0, #0
	beq _08040B92
	movs r0, #0
	movs r1, #1
	bl sub_08042B18
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08040BA4
_08040B92:
	movs r0, #0
	strh r0, [r5]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	adds r1, #0x40
	str r1, [r4, #0x1c]
	b _08040BB2
_08040BA4:
	ldrh r1, [r5]
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	beq _08040BB2
	subs r0, r1, #1
	strh r0, [r5]
_08040BB2:
	ldr r4, _08040C58 @ =gUnknown_2009510
	ldr r2, [r4, #0x14]
	add r0, sp, #4
	ldr r1, [sp, #0x14]
	bl sub_08042BF8
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [r4, #0x30]
	movs r3, #1
	str r3, [sp]
	bl sub_0803F90C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08040BE4
	ldr r0, [r4, #0x14]
	ldr r1, _08040C5C @ =0xFFFFF800
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r4, #0x14]
	movs r0, #0
	str r0, [r4, #0x1c]
_08040BE4:
	ldr r4, _08040C58 @ =gUnknown_2009510
	ldr r2, [r4, #0x14]
	mov r0, sb
	ldr r1, [sp, #0x14]
	bl sub_08042BF8
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [r4, #0x30]
	movs r3, #1
	str r3, [sp]
	movs r3, #3
	bl sub_0803F90C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08040C32
	ldr r0, [r4, #0x14]
	ldr r1, _08040C5C @ =0xFFFFF800
	ands r0, r1
	str r0, [r4, #0x14]
	movs r5, #0
	str r5, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x46
	ldrb r0, [r1]
	cmp r0, #1
	bne _08040C1E
	strb r5, [r1]
_08040C1E:
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _08040C30
	ldr r0, _08040C60 @ =gUnknown_20138A8
	ldr r1, _08040C64 @ =0x000018CE
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
_08040C30:
	strb r5, [r4, #0xc]
_08040C32:
	ldr r4, _08040C58 @ =gUnknown_2009510
	ldr r7, [r4, #0x30]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	bl sub_080454C8
	adds r6, r1, #0
	adds r5, r0, #0
	adds r4, #0x46
	ldrb r0, [r4]
	cmp r0, #2
	bne _08040C70
	ldr r2, _08040C68 @ =0x3FE00000
	ldr r3, _08040C6C @ =0x00000000
	adds r1, r6, #0
	adds r0, r5, #0
	bl sub_08044DA4
	b _08040C74
	.align 2, 0
_08040C58: .4byte gUnknown_2009510
_08040C5C: .4byte 0xFFFFF800
_08040C60: .4byte gUnknown_20138A8
_08040C64: .4byte 0x000018CE
_08040C68: .4byte 0x3FE00000
_08040C6C: .4byte 0x00000000
_08040C70:
	adds r1, r6, #0
	adds r0, r5, #0
_08040C74:
	bl sub_08045544
	lsls r1, r0, #0x10
	ldr r0, _08040D20 @ =0x0000FFFF
	ands r7, r0
	orrs r7, r1
	ldr r5, _08040D24 @ =gUnknown_2009510
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	movs r3, #0
	movs r2, #0
	str r2, [sp]
	adds r2, r7, #0
	bl sub_0803F90C
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	beq _08040D44
	ldr r2, _08040D28 @ =gUnknown_2009588
	ldr r1, [r5, #0x10]
	ldr r0, [r2]
	subs r0, r1, r0
	adds r3, r2, #0
	cmp r0, #0
	bge _08040CAA
	adds r0, #0xff
_08040CAA:
	asrs r0, r0, #8
	cmp r0, #0xb7
	ble _08040CD4
	mov r0, r8
	cmp r0, #8
	beq _08040CD4
	ldr r1, _08040D2C @ =gUnknown_201520C
	ldr r0, _08040D30 @ =sub_080421FC
	str r0, [r1]
	ldr r1, _08040D34 @ =gUnknown_200C0E4
	movs r0, #0
	str r0, [r1]
	ldr r1, _08040D38 @ =gUnknown_200C0E8
	movs r0, #1
	strh r0, [r1]
	ldr r1, _08040D3C @ =gUnknown_200C0EA
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08040D40 @ =gUnknown_200C0EC
	movs r0, #0xc
	str r0, [r1]
_08040CD4:
	ldr r2, _08040D24 @ =gUnknown_2009510
	ldr r1, [r2, #0x10]
	ldr r0, [r3]
	subs r0, r1, r0
	cmp r0, #0
	bge _08040CE2
	adds r0, #0xff
_08040CE2:
	asrs r0, r0, #8
	cmp r0, #7
	bgt _08040D10
	mov r1, r8
	cmp r1, #0
	beq _08040D10
	ldr r1, _08040D2C @ =gUnknown_201520C
	ldr r0, _08040D30 @ =sub_080421FC
	str r0, [r1]
	ldr r1, _08040D34 @ =gUnknown_200C0E4
	movs r0, #0
	str r0, [r1]
	ldr r1, _08040D38 @ =gUnknown_200C0E8
	movs r2, #1
	negs r2, r2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08040D3C @ =gUnknown_200C0EA
	movs r0, #2
	strb r0, [r1]
	ldr r1, _08040D40 @ =gUnknown_200C0EC
	movs r0, #0xc
	str r0, [r1]
_08040D10:
	ldr r3, [sp, #0x14]
	ldr r0, _08040D24 @ =gUnknown_2009510
	str r3, [r0, #0x10]
	movs r0, #0
	ldr r1, _08040D24 @ =gUnknown_2009510
	str r0, [r1, #0x2c]
	b _08040D96
	.align 2, 0
_08040D20: .4byte 0x0000FFFF
_08040D24: .4byte gUnknown_2009510
_08040D28: .4byte gUnknown_2009588
_08040D2C: .4byte gUnknown_201520C
_08040D30: .4byte sub_080421FC
_08040D34: .4byte gUnknown_200C0E4
_08040D38: .4byte gUnknown_200C0E8
_08040D3C: .4byte gUnknown_200C0EA
_08040D40: .4byte gUnknown_200C0EC
_08040D44:
	ldr r0, [r5, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #8
	bl __divsi3
	cmp r8, r0
	bge _08040D74
	ldr r1, _08040D64 @ =gUnknown_201520C
	ldr r0, _08040D68 @ =sub_080421FC
	str r0, [r1]
	ldr r0, _08040D6C @ =gUnknown_200C0E4
	str r4, [r0]
	ldr r1, _08040D70 @ =gUnknown_200C0E8
	movs r0, #4
	b _08040D8A
	.align 2, 0
_08040D64: .4byte gUnknown_201520C
_08040D68: .4byte sub_080421FC
_08040D6C: .4byte gUnknown_200C0E4
_08040D70: .4byte gUnknown_200C0E8
_08040D74:
	cmp r8, r0
	ble _08040D96
	ldr r1, _08040DC8 @ =gUnknown_201520C
	ldr r0, _08040DCC @ =sub_080421FC
	str r0, [r1]
	ldr r0, _08040DD0 @ =gUnknown_200C0E4
	str r4, [r0]
	ldr r1, _08040DD4 @ =gUnknown_200C0E8
	movs r2, #4
	negs r2, r2
	adds r0, r2, #0
_08040D8A:
	strh r0, [r1]
	ldr r0, _08040DD8 @ =gUnknown_200C0EA
	strb r4, [r0]
	ldr r1, _08040DDC @ =gUnknown_200C0EC
	movs r0, #0x30
	str r0, [r1]
_08040D96:
	ldr r4, _08040DE0 @ =gUnknown_2009510
	adds r5, r4, #0
	adds r5, #0x46
	ldrb r0, [r5]
	cmp r0, #0
	beq _08040DA6
	cmp r0, #2
	bne _08040E00
_08040DA6:
	ldr r0, _08040DE4 @ =gUnknown_2017814
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08040DC2
	movs r0, #0
	movs r1, #5
	bl sub_08042B18
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	beq _08040DE8
_08040DC2:
	movs r0, #2
	b _08040DFE
	.align 2, 0
_08040DC8: .4byte gUnknown_201520C
_08040DCC: .4byte sub_080421FC
_08040DD0: .4byte gUnknown_200C0E4
_08040DD4: .4byte gUnknown_200C0E8
_08040DD8: .4byte gUnknown_200C0EA
_08040DDC: .4byte gUnknown_200C0EC
_08040DE0: .4byte gUnknown_2009510
_08040DE4: .4byte gUnknown_2017814
_08040DE8:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x30]
	str r3, [sp]
	movs r3, #1
	bl sub_0803F90C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08040E00
_08040DFE:
	strb r0, [r5]
_08040E00:
	ldr r4, _08040EE0 @ =gUnknown_2009510
	adds r6, r4, #0
	adds r6, #0x46
	ldrb r0, [r6]
	cmp r0, #0
	beq _08040E10
	cmp r0, #2
	bne _08040EA4
_08040E10:
	movs r0, #1
	movs r1, #1
	bl sub_08042B18
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08040EA4
	movs r5, #0
	ldrb r0, [r6]
	cmp r0, #2
	bne _08040E28
	movs r5, #1
_08040E28:
	movs r3, #0
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x30]
	movs r7, #1
	str r3, [sp]
	movs r3, #1
	bl sub_0803F90C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08040EA4
	ldr r0, _08040EE4 @ =gUnknown_86FF3A4
	lsls r5, r5, #2
	adds r0, r5, r0
	ldr r0, [r0]
	ldrh r0, [r0]
	bl m4aSongNumStart
	ldr r2, [r4, #0x18]
	cmp r2, #0
	bge _08040E56
	negs r2, r2
_08040E56:
	ldr r0, _08040EE8 @ =0x000001AB
	cmp r2, r0
	bgt _08040E60
	movs r2, #0xd6
	lsls r2, r2, #1
_08040E60:
	ldr r0, _08040EEC @ =gUnknown_83B55BC
	adds r0, r5, r0
	ldr r1, [r4, #0x34]
	ldr r0, [r0]
	muls r0, r1, r0
	cmp r0, #0
	bge _08040E70
	adds r0, #0xff
_08040E70:
	asrs r1, r0, #8
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r0, r2, r3
	muls r0, r1, r0
	movs r1, #0x9a
	lsls r1, r1, #3
	bl __divsi3
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	bl sub_080454C8
	ldr r2, _08040EF0 @ =0x3FF0CCCC
	ldr r3, _08040EF4 @ =0xCCCCCCCD
	bl sub_08044DA4
	bl sub_08045544
	str r0, [r4, #0x18]
	strb r7, [r6]
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #5
	strh r0, [r1]
	strb r7, [r4, #0xc]
_08040EA4:
	ldr r2, _08040EE0 @ =gUnknown_2009510
	ldr r1, [r2, #0x14]
	movs r0, #0xb0
	lsls r0, r0, #8
	cmp r1, r0
	ble _08040EBA
	movs r1, #0
	str r1, [r2, #0x1c]
	adds r0, r2, #0
	adds r0, #0x46
	strb r1, [r0]
_08040EBA:
	ldr r0, _08040EF8 @ =gUnknown_20151A0
	ldr r0, [r0]
	cmp r0, #0
	bne _08040ED0
	ldr r0, _08040EFC @ =gUnknown_2017814
	mov r1, sl
	strh r1, [r0]
	ldr r0, _08040F00 @ =gUnknown_201781C
	mov r2, sp
	ldrh r2, [r2, #0x1c]
	strh r2, [r0]
_08040ED0:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08040EE0: .4byte gUnknown_2009510
_08040EE4: .4byte gUnknown_86FF3A4
_08040EE8: .4byte 0x000001AB
_08040EEC: .4byte gUnknown_83B55BC
_08040EF0: .4byte 0x3FF0CCCC
_08040EF4: .4byte 0xCCCCCCCD
_08040EF8: .4byte gUnknown_20151A0
_08040EFC: .4byte gUnknown_2017814
_08040F00: .4byte gUnknown_201781C
	thumb_func_end sub_080406EC

	thumb_func_start sub_08040F04
sub_08040F04: @ 0x08040F04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r2, #0
	ldr r5, _08040FE4 @ =gUnknown_2009510
	str r2, [r5]
	str r2, [r5, #4]
	str r2, [r5, #8]
	movs r3, #1
	strb r3, [r5, #0xc]
	strb r2, [r5, #0xd]
	movs r0, #0xd0
	lsls r0, r0, #8
	str r0, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r5, #0x14]
	ldr r1, _08040FE8 @ =gUnknown_83B55CC
	ldr r0, [r1, #8]
	str r0, [r5, #0x20]
	str r2, [r5, #0x18]
	str r2, [r5, #0x1c]
	str r2, [r5, #0x24]
	str r2, [r5, #0x28]
	str r2, [r5, #0x2c]
	ldr r0, [r1]
	movs r4, #0
	strh r0, [r5, #0x30]
	ldr r0, [r1, #4]
	strh r0, [r5, #0x32]
	ldr r0, [r1, #0xc]
	str r0, [r5, #0x34]
	ldr r0, [r1, #0x10]
	str r0, [r5, #0x38]
	ldr r0, [r1, #0x14]
	str r0, [r5, #0x3c]
	ldr r0, [r1, #0x18]
	str r0, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0x44
	strh r2, [r0]
	adds r0, #2
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r1, r5, #0
	adds r1, #0x4e
	movs r0, #0xaf
	strh r0, [r1]
	adds r3, r5, #0
	adds r3, #0x58
	ldrb r1, [r3]
	subs r0, #0xb1
	ands r0, r1
	strb r0, [r3]
	ldr r0, _08040FEC @ =gUnknown_2009598
	strh r2, [r0]
	ldr r0, _08040FF0 @ =gUnknown_2015190
	ldr r0, [r0]
	cmp r0, #0
	bne _08040F8C
	b _08041096
_08040F8C:
	ldr r5, _08040FF4 @ =gUnknown_20150CC
	ldr r4, _08040FF8 @ =gUnknown_2016680
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x10
	bl CpuSet
	ldr r1, _08040FFC @ =0xFFFFE800
	adds r0, r5, r1
	ldr r1, _08041000 @ =0x06015400
	movs r2, #0xc0
	lsls r2, r2, #4
	bl CpuSet
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r2, _08041004 @ =0xFFFFFE62
	adds r4, r4, r2
	adds r1, r4, #0
	movs r2, #4
	bl CpuSet
	movs r6, #0
	movs r0, #0x20
	adds r0, r0, r5
	mov r8, r0
	ldr r1, _08041008 @ =0xFFFFE7DC
	adds r5, r5, r1
	movs r7, #0xf
	ldr r2, _0804100C @ =gUnknown_83B55C4
	mov ip, r2
_08040FCA:
	lsrs r0, r6, #0x1f
	adds r0, r6, r0
	asrs r0, r0, #1
	add r0, r8
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _08041010
	asrs r4, r1, #4
	ands r4, r7
	b _08041014
	.align 2, 0
_08040FE4: .4byte gUnknown_2009510
_08040FE8: .4byte gUnknown_83B55CC
_08040FEC: .4byte gUnknown_2009598
_08040FF0: .4byte gUnknown_2015190
_08040FF4: .4byte gUnknown_20150CC
_08040FF8: .4byte gUnknown_2016680
_08040FFC: .4byte 0xFFFFE800
_08041000: .4byte 0x06015400
_08041004: .4byte 0xFFFFFE62
_08041008: .4byte 0xFFFFE7DC
_0804100C: .4byte gUnknown_83B55C4
_08041010:
	adds r4, r7, #0
	ands r4, r1
_08041014:
	cmp r4, #0
	beq _08041042
	adds r1, r6, #0
	cmp r6, #0
	bge _08041020
	adds r1, r6, #3
_08041020:
	asrs r1, r1, #2
	lsls r2, r1, #1
	ldr r0, _080410A0 @ =0x0600D8A0
	adds r2, r2, r0
	ldrh r3, [r2]
	lsls r1, r1, #2
	subs r1, r6, r1
	lsls r0, r1, #1
	add r0, ip
	ldrh r0, [r0]
	ands r0, r3
	lsls r1, r1, #2
	lsls r4, r1
	orrs r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r0, [r2]
_08041042:
	adds r6, #1
	cmp r6, #0xff
	ble _08040FCA
	ldr r1, _080410A4 @ =gUnknown_2009510
	ldr r0, [r5]
	strh r0, [r1, #0x30]
	ldr r0, [r5, #4]
	strh r0, [r1, #0x32]
	ldr r0, [r5, #8]
	str r0, [r1, #0x20]
	ldr r0, [r5, #0xc]
	str r0, [r1, #0x34]
	ldr r0, [r5, #0x10]
	str r0, [r1, #0x38]
	ldr r2, _080410A8 @ =0x000018DA
	adds r0, r5, r2
	ldrh r0, [r0]
	adds r2, r1, #0
	adds r2, #0x4e
	strh r0, [r2]
	ldr r0, [r5, #0x1c]
	str r0, [r1, #0x50]
	ldr r0, [r5, #0x20]
	str r0, [r1, #0x54]
	ldr r2, _080410AC @ =gUnknown_2009598
	ldr r0, [r5, #0x14]
	strh r0, [r2]
	ldr r0, [r5, #0x18]
	str r0, [r1, #0x40]
	ldr r1, _080410B0 @ =gUnknown_2008004
	ldr r2, _080410B4 @ =0x000018DC
	adds r0, r5, r2
	ldrb r0, [r0]
	strh r0, [r1]
	adds r2, #1
	adds r0, r5, r2
	ldrb r0, [r0]
	strh r0, [r1, #2]
	adds r2, #1
	adds r0, r5, r2
	ldrb r0, [r0]
	strh r0, [r1, #4]
_08041096:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080410A0: .4byte 0x0600D8A0
_080410A4: .4byte gUnknown_2009510
_080410A8: .4byte 0x000018DA
_080410AC: .4byte gUnknown_2009598
_080410B0: .4byte gUnknown_2008004
_080410B4: .4byte 0x000018DC
	thumb_func_end sub_08040F04

	thumb_func_start sub_080410B8
sub_080410B8: @ 0x080410B8
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_08043134
	ldr r1, _080411B0 @ =gUnknown_20162E8
	movs r2, #0xba
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _080411B4 @ =gUnknown_2015284
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080411B8 @ =gUnknown_83B54C8
	ldr r1, _080411BC @ =gUnknown_2015220
	ldr r2, _080411C0 @ =0x0400000E
	bl CpuSet
	ldr r0, _080411C4 @ =gUnknown_86FFFB8
	ldr r5, _080411C8 @ =gUnknown_20095A0
	adds r1, r5, #0
	bl LZ77UnCompWram
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r5, #0
	bl LZ77UnCompVram
	ldr r0, _080411CC @ =gUnknown_8701758
	ldr r6, _080411D0 @ =gUnknown_2016300
	adds r1, r6, #0
	bl LZ77UnCompVram
	ldr r0, _080411D4 @ =gUnknown_8701944
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r1, _080411D8 @ =0x0600C000
	adds r0, r5, #0
	bl LZ77UnCompVram
	ldr r4, _080411DC @ =gUnknown_86FF3AC
	ldr r1, _080411E0 @ =0x0600B000
	adds r0, r4, #0
	bl LZ77UnCompVram
	ldr r1, _080411E4 @ =gUnknown_2016F00
	adds r0, r4, #0
	bl LZ77UnCompWram
	ldr r0, _080411E8 @ =gUnknown_8702D84
	adds r1, r5, #0
	bl LZ77UnCompWram
	ldr r1, _080411EC @ =0x06010000
	adds r0, r5, #0
	bl LZ77UnCompVram
	ldr r0, _080411F0 @ =gUnknown_8703238
	movs r3, #0x80
	lsls r3, r3, #2
	adds r6, r6, r3
	adds r1, r6, #0
	bl LZ77UnCompWram
	movs r0, #0xa0
	str r0, [sp]
	ldr r1, _080411F4 @ =gUnknown_2015ED0
	ldr r2, _080411F8 @ =0x05000100
	mov r0, sp
	bl CpuSet
	ldr r1, _080411FC @ =gUnknown_2015258
	ldr r2, _08041200 @ =0x0000160C
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08041204 @ =gUnknown_2015EBC
	movs r3, #0xac
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08041208 @ =gUnknown_20162D8
	ldr r2, _0804120C @ =0x00001781
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08041210 @ =gUnknown_20151F8
	ldr r1, _08041214 @ =gUnknown_2015EC8
	movs r0, #0xa8
	strh r0, [r1]
	strh r0, [r2]
	ldr r2, _08041218 @ =gUnknown_20162D4
	ldr r1, _0804121C @ =gUnknown_20151F4
	ldr r3, _08041220 @ =0x0000FFE0
	adds r0, r3, #0
	strh r0, [r1]
	strh r0, [r2]
	ldr r1, _08041224 @ =gUnknown_2015EB4
	ldr r2, _08041228 @ =0x00001244
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0804122C @ =gUnknown_2015210
	ldr r3, _08041230 @ =0x00000808
	adds r0, r3, #0
	strh r0, [r1]
	movs r1, #0
	ldr r0, _08041234 @ =gUnknown_20151D0
	movs r2, #1
	adds r0, #0x10
_0804118E:
	strb r2, [r0]
	adds r0, #1
	adds r1, #1
	cmp r1, #0xf
	bls _0804118E
	movs r1, #0
	ldr r3, _08041234 @ =gUnknown_20151D0
	movs r2, #1
_0804119E:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #9
	bls _0804119E
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080411B0: .4byte gUnknown_20162E8
_080411B4: .4byte gUnknown_2015284
_080411B8: .4byte gUnknown_83B54C8
_080411BC: .4byte gUnknown_2015220
_080411C0: .4byte 0x0400000E
_080411C4: .4byte gUnknown_86FFFB8
_080411C8: .4byte gUnknown_20095A0
_080411CC: .4byte gUnknown_8701758
_080411D0: .4byte gUnknown_2016300
_080411D4: .4byte gUnknown_8701944
_080411D8: .4byte 0x0600C000
_080411DC: .4byte gUnknown_86FF3AC
_080411E0: .4byte 0x0600B000
_080411E4: .4byte gUnknown_2016F00
_080411E8: .4byte gUnknown_8702D84
_080411EC: .4byte 0x06010000
_080411F0: .4byte gUnknown_8703238
_080411F4: .4byte gUnknown_2015ED0
_080411F8: .4byte 0x05000100
_080411FC: .4byte gUnknown_2015258
_08041200: .4byte 0x0000160C
_08041204: .4byte gUnknown_2015EBC
_08041208: .4byte gUnknown_20162D8
_0804120C: .4byte 0x00001781
_08041210: .4byte gUnknown_20151F8
_08041214: .4byte gUnknown_2015EC8
_08041218: .4byte gUnknown_20162D4
_0804121C: .4byte gUnknown_20151F4
_08041220: .4byte 0x0000FFE0
_08041224: .4byte gUnknown_2015EB4
_08041228: .4byte 0x00001244
_0804122C: .4byte gUnknown_2015210
_08041230: .4byte 0x00000808
_08041234: .4byte gUnknown_20151D0
	thumb_func_end sub_080410B8

	thumb_func_start sub_08041238
sub_08041238: @ 0x08041238
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r2, r0, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0xef
	bhi _080412A6
	movs r7, #0
	ldr r1, _080412B4 @ =gUnknown_2008010
	asrs r5, r2, #0x10
	ldr r0, _080412B8 @ =gUnknown_2016700
	mov sb, r0
	movs r0, #0x80
	lsls r0, r0, #5
	mov r8, r0
	lsls r0, r5, #1
	adds r6, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #1
	mov ip, r1
_08041262:
	ldrh r4, [r6]
	lsls r1, r7, #5
	adds r0, r5, #0
	cmp r5, #0
	bge _0804126E
	adds r0, #0x1f
_0804126E:
	asrs r0, r0, #5
	lsls r0, r0, #5
	subs r0, r5, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r1, r0
	lsls r0, r0, #1
	mov r1, sb
	adds r3, r0, r1
	lsrs r1, r4, #0xc
	movs r2, #1
	ands r1, r2
	adds r1, r4, r1
	strh r1, [r3]
	ldr r1, _080412BC @ =0x0600A800
	adds r2, r0, r1
	adds r0, r4, #0
	mov r1, r8
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	beq _0804129C
	adds r1, r4, #0
_0804129C:
	strh r1, [r2]
	add r6, ip
	adds r7, #1
	cmp r7, #0xd
	ble _08041262
_080412A6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080412B4: .4byte gUnknown_2008010
_080412B8: .4byte gUnknown_2016700
_080412BC: .4byte 0x0600A800
	thumb_func_end sub_08041238

	thumb_func_start sub_080412C0
sub_080412C0: @ 0x080412C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0804135C @ =gUnknown_20151A0
	mov sl, r0
	movs r1, #0
	ldr r0, _08041360 @ =gUnknown_2008010
	movs r2, #0xa8
	lsls r2, r2, #4
_080412D6:
	strh r1, [r0]
	adds r0, #2
	subs r2, #1
	cmp r2, #0
	bne _080412D6
	movs r4, #0
	ldr r1, _08041364 @ =gUnknown_2008000
	mov sb, r1
_080412E6:
	lsls r0, r4, #2
	add r0, sl
	ldr r0, [r0]
	adds r2, r4, #1
	mov ip, r2
	cmp r0, #0
	beq _08041348
	ldr r0, _08041368 @ =gUnknown_2015198
	adds r0, r4, r0
	ldrb r0, [r0]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	mov r7, sb
	ldr r0, [r7]
	adds r0, r0, r1
	str r0, [r7]
	movs r2, #0
	lsls r0, r4, #1
	ldr r1, _08041360 @ =gUnknown_2008010
	mov r8, r1
	adds r0, r0, r4
	lsls r6, r0, #3
_08041314:
	lsls r1, r2, #1
	adds r5, r2, #1
	adds r1, r1, r2
	lsls r0, r1, #6
	lsls r1, r1, #4
	adds r0, #0x18
	adds r0, r6, r0
	movs r3, #0x17
	lsls r0, r0, #1
	mov r7, r8
	adds r2, r0, r7
	ldr r0, _0804136C @ =0x0000129C
	muls r0, r4, r0
	ldr r7, _08041370 @ =gUnknown_200C918
	adds r0, r0, r7
	adds r1, r1, r0
_08041334:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _08041334
	adds r2, r5, #0
	cmp r2, #0xd
	ble _08041314
_08041348:
	mov r4, ip
	cmp r4, #5
	ble _080412E6
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804135C: .4byte gUnknown_20151A0
_08041360: .4byte gUnknown_2008010
_08041364: .4byte gUnknown_2008000
_08041368: .4byte gUnknown_2015198
_0804136C: .4byte 0x0000129C
_08041370: .4byte gUnknown_200C918
	thumb_func_end sub_080412C0

	thumb_func_start sub_08041374
sub_08041374: @ 0x08041374
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0804142C @ =gUnknown_2009510
	mov r8, r0
	mov r4, r8
	adds r4, #0x4c
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0804141E
	ldr r2, _08041430 @ =gUnknown_2009598
	ldrh r3, [r2]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _0804141E
	ldr r7, _08041434 @ =gUnknown_2009570
	ldrb r1, [r7]
	movs r0, #1
	mov sb, r0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0804141E
	subs r0, r3, #1
	strh r0, [r2]
	movs r0, #0x1e
	strh r0, [r4]
	ldr r0, _08041438 @ =gUnknown_20138A8
	ldr r1, _0804143C @ =0x000018D4
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	mov r2, r8
	adds r2, #0x47
	ldrb r0, [r2]
	mov r1, sb
	ands r0, r1
	lsls r0, r0, #1
	ldrb r1, [r7]
	movs r6, #3
	negs r6, r6
	ands r6, r1
	orrs r6, r0
	strb r6, [r7]
	mov r0, r8
	ldr r5, [r0, #0x18]
	cmp r5, #0
	bge _080413DE
	negs r5, r5
_080413DE:
	ldr r0, _08041440 @ =0x00000129
	cmp r5, r0
	bgt _080413E8
	movs r5, #0x95
	lsls r5, r5, #1
_080413E8:
	ldr r1, _08041444 @ =gUnknown_83B55E8
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	adds r5, r5, r1
	ldr r0, [r0]
	muls r0, r5, r0
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r1, r4, #0
	bl __divsi3
	str r0, [r7, #0xc]
	mov r1, r8
	ldr r0, [r1, #0x38]
	muls r0, r5, r0
	adds r1, r4, #0
	bl __divsi3
	strh r0, [r7, #0x14]
	mov r0, sb
	orrs r6, r0
	strb r6, [r7]
	movs r0, #3
	strh r0, [r7, #0x16]
_0804141E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0804142C: .4byte gUnknown_2009510
_08041430: .4byte gUnknown_2009598
_08041434: .4byte gUnknown_2009570
_08041438: .4byte gUnknown_20138A8
_0804143C: .4byte 0x000018D4
_08041440: .4byte 0x00000129
_08041444: .4byte gUnknown_83B55E8
	thumb_func_end sub_08041374

	thumb_func_start sub_08041448
sub_08041448: @ 0x08041448
	push {r4, r5, lr}
	ldr r0, _0804148C @ =gUnknown_2015190
	ldr r0, [r0]
	cmp r0, #0
	beq _08041542
	ldr r2, _08041490 @ =gUnknown_2009570
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08041542
	ldrh r0, [r2, #0x16]
	cmp r0, #0
	bne _080414EC
	ldr r0, [r2, #4]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r2, #8]
	asrs r1, r1, #8
	subs r1, #4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r4, r0, #0x10
	ldr r0, _08041494 @ =0x05FF0000
	cmp r4, r0
	bhi _08041488
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	movs r0, #0x20
	negs r0, r0
	cmp r3, r0
	bge _08041498
_08041488:
	movs r0, #0x20
	b _080414CC
	.align 2, 0
_0804148C: .4byte gUnknown_2015190
_08041490: .4byte gUnknown_2009570
_08041494: .4byte 0x05FF0000
_08041498:
	lsrs r0, r1, #0x10
	cmp r0, #0x6f
	bls _080414A2
	movs r0, #0
	b _080414CC
_080414A2:
	ldr r5, _080414DC @ =gUnknown_2008010
	adds r1, r3, #0
	cmp r1, #0
	bge _080414AC
	adds r1, #7
_080414AC:
	asrs r1, r1, #3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #6
	asrs r0, r4, #0x10
	cmp r0, #0
	bge _080414BC
	adds r0, #7
_080414BC:
	asrs r0, r0, #3
	adds r0, r1, r0
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	ldr r0, _080414E0 @ =0x000003FF
	ands r0, r1
	lsrs r0, r0, #8
_080414CC:
	cmp r0, #0
	beq _080414E4
	ldrb r1, [r2]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	strb r0, [r2]
	b _08041542
	.align 2, 0
_080414DC: .4byte gUnknown_2008010
_080414E0: .4byte 0x000003FF
_080414E4:
	adds r3, r2, #0
	ldrh r0, [r3, #0x16]
	cmp r0, #0
	beq _0804151C
_080414EC:
	ldrh r0, [r2, #0x16]
	subs r0, #1
	strh r0, [r2, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08041542
	ldr r3, _08041510 @ =gUnknown_2009510
	ldr r0, [r3, #0x10]
	str r0, [r2, #4]
	ldr r1, [r3, #0x14]
	adds r0, r3, #0
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #2
	bne _08041514
	ldr r0, [r3, #0x54]
	b _08041516
	.align 2, 0
_08041510: .4byte gUnknown_2009510
_08041514:
	ldr r0, [r3, #0x50]
_08041516:
	subs r0, r1, r0
	str r0, [r2, #8]
	b _08041542
_0804151C:
	ldrh r1, [r3, #0x14]
	movs r4, #0x14
	ldrsh r0, [r3, r4]
	cmp r0, #0
	beq _08041542
	subs r0, r1, #1
	strh r0, [r3, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0804153A
	ldrb r1, [r3]
	movs r0, #2
	negs r0, r0
	ands r0, r1
	strb r0, [r3]
_0804153A:
	ldr r0, [r2, #4]
	ldr r1, [r2, #0xc]
	adds r0, r0, r1
	str r0, [r2, #4]
_08041542:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08041448

	thumb_func_start sub_08041548
sub_08041548: @ 0x08041548
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _080415DC @ =gUnknown_2015190
	ldr r0, [r0]
	cmp r0, #0
	beq _080415D2
	ldr r2, _080415E0 @ =gUnknown_2009570
	ldrb r4, [r2]
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080415D2
	ldrh r0, [r2, #0x16]
	cmp r0, #0
	bne _080415D2
	ldr r5, _080415E4 @ =gUnknown_2009588
	ldr r1, [r2, #4]
	ldr r0, [r5]
	subs r0, r1, r0
	cmp r0, #0
	bge _08041574
	adds r0, #0xff
_08041574:
	asrs r3, r0, #8
	adds r6, r3, #0
	adds r6, #0x18
	ldr r1, [r2, #8]
	ldr r0, [r5, #4]
	subs r0, r1, r0
	cmp r0, #0
	bge _08041586
	adds r0, #0xff
_08041586:
	asrs r0, r0, #8
	adds r2, r0, #0
	adds r2, #0x20
	adds r0, r3, #0
	adds r0, #0x28
	movs r7, #0x80
	lsls r7, r7, #1
	cmp r0, r7
	bhi _080415D2
	movs r0, #0x10
	negs r0, r0
	cmp r2, r0
	blt _080415D2
	cmp r2, #0xc8
	bgt _080415D2
	lsls r4, r4, #0x1e
	lsrs r0, r4, #0x1f
	adds r0, #0xc
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r3, _080415E8 @ =gUnknown_83B6100
	movs r5, #0x83
	lsls r5, r5, #2
	adds r3, r3, r5
	ldr r3, [r3]
	ldr r5, _080415EC @ =gUnknown_83B55F0
	lsrs r4, r4, #0x1f
	adds r4, r4, r5
	ldrb r4, [r4]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	lsls r4, r4, #8
	str r4, [sp]
	str r7, [sp, #4]
	bl sub_08043878
_080415D2:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080415DC: .4byte gUnknown_2015190
_080415E0: .4byte gUnknown_2009570
_080415E4: .4byte gUnknown_2009588
_080415E8: .4byte gUnknown_83B6100
_080415EC: .4byte gUnknown_83B55F0
	thumb_func_end sub_08041548

	thumb_func_start sub_080415F0
sub_080415F0: @ 0x080415F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r0, _08041660 @ =gUnknown_2015190
	ldr r0, [r0]
	cmp r0, #0
	bne _08041606
	b _08041BD0
_08041606:
	ldr r1, _08041664 @ =gUnknown_2009510
	movs r0, #0
	strb r0, [r1, #0xd]
	str r0, [sp]
	mov sl, r1
_08041610:
	movs r0, #0x5c
	ldr r2, [sp]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _08041668 @ =gUnknown_20095A0
	adds r7, r1, r0
	ldrh r0, [r7, #2]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _08041628
	b _08041882
_08041628:
	ldrb r0, [r7, #5]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _08041632
	b _08041882
_08041632:
	mov r3, sl
	ldr r0, [r3, #0x10]
	asrs r0, r0, #8
	str r0, [sp, #4]
	movs r4, #0x32
	ldrsh r0, [r3, r4]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r1, r0, #0x10
	asrs r2, r1, #0x10
	ldr r3, [r3, #0x14]
	ldr r4, _0804166C @ =gUnknown_2009556
	ldrb r0, [r4]
	ldr r4, _08041664 @ =gUnknown_2009510
	mov r8, r4
	cmp r0, #2
	bne _08041670
	lsrs r0, r1, #0x1f
	adds r0, r2, r0
	asrs r0, r0, #1
	subs r0, r3, r0
	b _08041672
	.align 2, 0
_08041660: .4byte gUnknown_2015190
_08041664: .4byte gUnknown_2009510
_08041668: .4byte gUnknown_20095A0
_0804166C: .4byte gUnknown_2009556
_08041670:
	subs r0, r3, r2
_08041672:
	asrs r0, r0, #8
	str r0, [sp, #8]
	mov r1, sl
	ldrh r0, [r1, #0x30]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	str r0, [sp, #0xc]
	movs r2, #0x32
	ldrsh r1, [r1, r2]
	ldr r3, _08041698 @ =gUnknown_2009556
	ldrb r0, [r3]
	cmp r0, #2
	bne _0804169C
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #9
	mov sb, r0
	b _080416A0
	.align 2, 0
_08041698: .4byte gUnknown_2009556
_0804169C:
	asrs r1, r1, #8
	mov sb, r1
_080416A0:
	ldr r0, [r7, #8]
	asrs r2, r0, #8
	movs r4, #0x26
	ldrsh r1, [r7, r4]
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	ldr r0, [r7, #0xc]
	subs r0, r0, r1
	asrs r0, r0, #8
	mov ip, r0
	ldrh r0, [r7, #0x24]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	lsls r1, r0, #0x10
	asrs r3, r1, #0x10
	ldrb r0, [r7, #1]
	lsls r0, r0, #0x1a
	lsrs r6, r0, #0x1a
	adds r5, r6, #0
	movs r0, #1
	ands r5, r0
	cmp r5, #0
	beq _080416D6
	lsrs r0, r1, #0x1f
	adds r0, r3, r0
	asrs r3, r0, #1
_080416D6:
	ldrh r0, [r7, #0x26]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r5, #0
	beq _080416EA
	lsrs r0, r0, #0x1f
	adds r0, r4, r0
	asrs r4, r0, #1
_080416EA:
	ldr r1, [sp, #4]
	subs r2, r1, r2
	cmp r2, #0
	bge _080416F4
	negs r2, r2
_080416F4:
	ldr r1, [sp, #0xc]
	adds r0, r1, r3
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	cmp r2, r0
	ble _08041704
	b _08041882
_08041704:
	ldr r3, [sp, #8]
	mov r0, ip
	subs r2, r3, r0
	cmp r2, #0
	bge _08041710
	negs r2, r2
_08041710:
	mov r1, sb
	adds r0, r1, r4
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	cmp r2, r0
	ble _08041720
	b _08041882
_08041720:
	cmp r5, #0
	beq _08041770
	mov r0, sl
	adds r0, #0x48
	movs r1, #0
	movs r2, #1
	strb r2, [r0]
	ldr r3, _08041754 @ =gUnknown_200955A
	strh r1, [r3]
	ldr r1, _08041758 @ =gUnknown_200C0C0
	movs r0, #0x3c
	str r0, [r1]
	bl m4aMPlayAllStop
	ldr r0, _0804175C @ =gUnknown_20138A8
	ldr r4, _08041760 @ =0x000018D6
	adds r0, r0, r4
	ldrh r0, [r0]
	bl m4aSongNumStart
	ldr r0, _08041764 @ =gUnknown_201520C
	ldr r1, _08041768 @ =sub_080428D4
	str r1, [r0]
	ldr r0, _0804176C @ =gUnknown_200C0E0
	str r1, [r0]
	b _08041882
	.align 2, 0
_08041754: .4byte gUnknown_200955A
_08041758: .4byte gUnknown_200C0C0
_0804175C: .4byte gUnknown_20138A8
_08041760: .4byte 0x000018D6
_08041764: .4byte gUnknown_201520C
_08041768: .4byte sub_080428D4
_0804176C: .4byte gUnknown_200C0E0
_08041770:
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _080417A0
	ldr r1, _08041798 @ =gUnknown_2008000
	ldr r0, [r1]
	movs r2, #0xe1
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r1]
	ldrh r0, [r7, #2]
	ldr r3, _0804179C @ =0xFFFFE07F
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r7, #2]
	movs r0, #0xc4
	bl m4aSongNumStart
	b _08041882
	.align 2, 0
_08041798: .4byte gUnknown_2008000
_0804179C: .4byte 0xFFFFE07F
_080417A0:
	movs r4, #0x20
	ands r4, r6
	cmp r4, #0
	beq _080417CC
	ldr r1, _080417C4 @ =gUnknown_2009598
	ldrh r0, [r1]
	adds r0, #5
	strh r0, [r1]
	ldrh r0, [r7, #2]
	ldr r4, _080417C8 @ =0xFFFFE07F
	adds r1, r4, #0
	ands r0, r1
	strh r0, [r7, #2]
	movs r0, #0xc5
	bl m4aSongNumStart
	b _08041882
	.align 2, 0
_080417C4: .4byte gUnknown_2009598
_080417C8: .4byte 0xFFFFE07F
_080417CC:
	movs r0, #8
	ands r6, r0
	cmp r6, #0
	beq _08041882
	mov r0, r8
	ldr r1, [r0, #0x1c]
	ldr r0, _0804182C @ =0xFFFFFF00
	cmp r1, r0
	blt _08041882
	cmp r1, #0
	blt _080417F6
	mov r1, r8
	ldrb r0, [r1, #0xc]
	cmp r0, #1
	bne _080417F2
	ldr r2, _08041830 @ =gUnknown_2015176
	ldrh r0, [r2]
	bl m4aSongNumStart
_080417F2:
	mov r3, r8
	strb r4, [r3, #0xc]
_080417F6:
	ldr r2, [r7, #0xc]
	mov r4, r8
	ldr r0, [r4, #0x14]
	subs r0, r2, r0
	ldr r1, [r4, #0x1c]
	adds r0, r0, r1
	ldr r1, _08041834 @ =0x000003FF
	cmp r0, r1
	bgt _08041858
	movs r1, #0x1c
	ldrsh r0, [r7, r1]
	cmp r0, #0
	beq _08041882
	movs r2, #0x24
	ldrsh r0, [r7, r2]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r3, #0x80
	lsls r3, r3, #4
	adds r2, r0, r3
	ldr r1, [r7, #8]
	ldr r0, [r4, #0x10]
	cmp r0, r1
	bge _08041838
	subs r1, r1, r2
	b _0804183A
	.align 2, 0
_0804182C: .4byte 0xFFFFFF00
_08041830: .4byte gUnknown_2015176
_08041834: .4byte 0x000003FF
_08041838:
	adds r1, r1, r2
_0804183A:
	mov r4, r8
	ldr r0, [r4, #0x10]
	subs r0, r1, r0
	str r0, [r4, #0x24]
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, #0
	bge _0804184C
	ldr r1, _08041854 @ =0xFFFFFC00
_0804184C:
	mov r0, r8
	str r1, [r0, #0x24]
	b _08041882
	.align 2, 0
_08041854: .4byte 0xFFFFFC00
_08041858:
	ldr r1, _080419AC @ =0xFFFFF800
	adds r0, r2, r1
	mov r2, r8
	str r0, [r2, #0x14]
	movs r3, #0x1c
	ldrsh r0, [r7, r3]
	str r0, [r2, #0x24]
	movs r4, #0x1e
	ldrsh r0, [r7, r4]
	str r0, [r2, #0x28]
	movs r2, #0
	mov r0, r8
	str r2, [r0, #0x1c]
	movs r0, #1
	mov r1, r8
	strb r0, [r1, #0xd]
	adds r1, #0x46
	ldrb r0, [r1]
	cmp r0, #1
	bne _08041882
	strb r2, [r1]
_08041882:
	ldr r2, [sp]
	adds r2, #1
	str r2, [sp]
	cmp r2, #0x77
	bgt _0804188E
	b _08041610
_0804188E:
	ldr r1, _080419B0 @ =gUnknown_2009570
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	str r0, [sp, #4]
	ldr r0, [r1, #8]
	ldr r3, _080419AC @ =0xFFFFF800
	adds r0, r0, r3
	asrs r0, r0, #8
	str r0, [sp, #8]
	movs r4, #8
	str r4, [sp, #0xc]
	mov sb, r4
	movs r0, #0
	str r0, [sp]
	mov r8, r1
_080418AC:
	movs r6, #0x5c
	ldr r1, [sp]
	adds r0, r1, #0
	muls r0, r6, r0
	ldr r2, _080419B4 @ =gUnknown_20095A0
	mov sl, r2
	adds r7, r0, r2
	mov r2, r8
	ldrb r5, [r2]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _080418C8
	b _08041BC4
_080418C8:
	ldrb r0, [r7, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080418D8
	b _08041BC4
_080418D8:
	ldrh r0, [r2, #0x16]
	cmp r0, #0
	beq _080418E0
	b _08041BC4
_080418E0:
	ldrh r0, [r7, #2]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1a
	cmp r0, #0
	bne _080418EC
	b _08041BC4
_080418EC:
	ldrb r0, [r7, #5]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _080418F6
	b _08041BC4
_080418F6:
	ldr r0, [r7, #8]
	asrs r2, r0, #8
	movs r3, #0x26
	ldrsh r1, [r7, r3]
	lsrs r0, r1, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	ldr r0, [r7, #0xc]
	subs r0, r0, r1
	asrs r0, r0, #8
	mov ip, r0
	ldrh r0, [r7, #0x24]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x18
	ldrh r0, [r7, #0x26]
	lsls r0, r0, #0x10
	asrs r4, r0, #0x18
	ldr r0, [sp, #4]
	subs r2, r0, r2
	cmp r2, #0
	bge _08041922
	negs r2, r2
_08041922:
	ldr r1, [sp, #0xc]
	adds r0, r1, r3
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	cmp r2, r0
	ble _08041932
	b _08041BC4
_08041932:
	ldr r3, [sp, #8]
	mov r0, ip
	subs r2, r3, r0
	cmp r2, #0
	bge _0804193E
	negs r2, r2
_0804193E:
	mov r1, sb
	adds r0, r1, r4
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	cmp r2, r0
	ble _0804194E
	b _08041BC4
_0804194E:
	movs r0, #2
	negs r0, r0
	ands r0, r5
	mov r2, r8
	strb r0, [r2]
	ldrh r2, [r7, #6]
	lsls r1, r2, #0x13
	asrs r1, r1, #0x1a
	subs r1, #1
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #7
	ldr r0, _080419B8 @ =0xFFFFE07F
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #6]
	movs r1, #0xfc
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080419BC
	ldrb r1, [r7, #2]
	movs r0, #0x7d
	negs r0, r0
	ands r0, r1
	movs r1, #0x78
	orrs r0, r1
	strb r0, [r7, #2]
	movs r0, #0xc6
	bl m4aSongNumStart
	movs r0, #0xe
	bl sub_0803FCC4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r6, r0
	mov r4, sl
	adds r3, r0, r4
	mov r2, r8
	ldr r0, [r2, #4]
	ldr r1, [r2, #8]
	str r0, [r3, #8]
	str r1, [r3, #0xc]
	movs r0, #8
	str r0, [r3, #0x40]
	b _08041BD0
	.align 2, 0
_080419AC: .4byte 0xFFFFF800
_080419B0: .4byte gUnknown_2009570
_080419B4: .4byte gUnknown_20095A0
_080419B8: .4byte 0xFFFFE07F
_080419BC:
	ldr r1, _08041A2C @ =gUnknown_83B55F2
	ldr r0, _08041A30 @ =gUnknown_20138A8
	ldr r3, _08041A34 @ =0x000018DF
	adds r4, r0, r3
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	movs r0, #0x16
	bl sub_0803FCC4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r6, r0
	ldr r1, _08041A38 @ =gUnknown_20095A0
	adds r3, r0, r1
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	str r0, [r3, #8]
	str r1, [r3, #0xc]
	adds r2, r7, #0
	adds r2, #0x48
	ldrh r0, [r2]
	adds r1, r3, #0
	adds r1, #0x48
	strh r0, [r1]
	movs r0, #0x20
	str r0, [r3, #0x40]
	movs r3, #0
	ldrsh r1, [r1, r3]
	ldr r3, _08041A3C @ =gUnknown_2009590
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	ldr r1, _08041A40 @ =0x0001869F
	adds r6, r2, #0
	cmp r0, r1
	ble _08041A0E
	str r1, [r3]
_08041A0E:
	ldr r2, _08041A44 @ =gUnknown_2009594
	ldr r1, [r3]
	ldr r0, [r2]
	cmp r1, r0
	ble _08041A1A
	str r1, [r2]
_08041A1A:
	ldrb r0, [r4]
	cmp r0, #4
	bls _08041A22
	b _08041BB2
_08041A22:
	lsls r0, r0, #2
	ldr r1, _08041A48 @ =_08041A4C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08041A2C: .4byte gUnknown_83B55F2
_08041A30: .4byte gUnknown_20138A8
_08041A34: .4byte 0x000018DF
_08041A38: .4byte gUnknown_20095A0
_08041A3C: .4byte gUnknown_2009590
_08041A40: .4byte 0x0001869F
_08041A44: .4byte gUnknown_2009594
_08041A48: .4byte _08041A4C
_08041A4C: @ jump table
	.4byte _08041A60 @ case 0
	.4byte _08041A78 @ case 1
	.4byte _08041AE0 @ case 2
	.4byte _08041B04 @ case 3
	.4byte _08041B78 @ case 4
_08041A60:
	movs r0, #0x14
	bl sub_0803FCC4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r1, r0, r1
	ldr r0, _08041A74 @ =gUnknown_20095A0
	adds r3, r1, r0
	b _08041BA6
	.align 2, 0
_08041A74: .4byte gUnknown_20095A0
_08041A78:
	movs r0, #0xe
	bl sub_0803FCC4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x5c
	muls r0, r5, r0
	ldr r4, _08041AD0 @ =gUnknown_20095A0
	adds r3, r0, r4
	ldr r0, _08041AD4 @ =gUnknown_2009570
	ldr r1, [r0, #8]
	ldr r0, [r0, #4]
	str r0, [r3, #8]
	str r1, [r3, #0xc]
	movs r0, #8
	str r0, [r3, #0x40]
	ldrh r1, [r6]
	adds r0, r3, #0
	adds r0, #0x48
	strh r1, [r0]
	movs r0, #0xf
	bl sub_0803FCC4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r5, r0
	adds r3, r0, r4
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	str r0, [r3, #8]
	str r1, [r3, #0xc]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r3, #0x1e]
	ldr r2, [r7, #4]
	ldr r0, _08041AD8 @ =0x007FE000
	ands r2, r0
	ldr r0, [r3, #4]
	ldr r1, _08041ADC @ =0xFF801FFF
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #4]
	b _08041BAE
	.align 2, 0
_08041AD0: .4byte gUnknown_20095A0
_08041AD4: .4byte gUnknown_2009570
_08041AD8: .4byte 0x007FE000
_08041ADC: .4byte 0xFF801FFF
_08041AE0:
	movs r0, #0x17
	bl sub_0803FCC4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r1, r0, r1
	ldr r0, _08041B00 @ =gUnknown_20095A0
	adds r3, r1, r0
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	str r0, [r3, #8]
	str r1, [r3, #0xc]
	movs r0, #0xf
	b _08041BB0
	.align 2, 0
_08041B00: .4byte gUnknown_20095A0
_08041B04:
	movs r0, #0xe
	bl sub_0803FCC4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x5c
	muls r0, r5, r0
	ldr r4, _08041B68 @ =gUnknown_20095A0
	adds r3, r0, r4
	ldr r6, _08041B6C @ =gUnknown_2009570
	ldr r0, [r6, #4]
	ldr r1, [r6, #8]
	str r0, [r3, #8]
	str r1, [r3, #0xc]
	movs r0, #8
	str r0, [r3, #0x40]
	movs r0, #0x10
	bl sub_0803FCC4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r5, r0
	adds r3, r0, r4
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	str r0, [r3, #8]
	str r1, [r3, #0xc]
	movs r2, #0xfc
	lsls r2, r2, #8
	strh r2, [r3, #0x1e]
	ldrb r1, [r6]
	movs r0, #2
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #3
	adds r1, r4, #0
	cmp r0, #0
	bne _08041B52
	adds r1, r2, #0
_08041B52:
	strh r1, [r3, #0x1c]
	ldr r2, [r7, #4]
	ldr r0, _08041B70 @ =0x007FE000
	ands r2, r0
	ldr r0, [r3, #4]
	ldr r1, _08041B74 @ =0xFF801FFF
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #4]
	b _08041BAE
	.align 2, 0
_08041B68: .4byte gUnknown_20095A0
_08041B6C: .4byte gUnknown_2009570
_08041B70: .4byte 0x007FE000
_08041B74: .4byte 0xFF801FFF
_08041B78:
	movs r0, #0x15
	bl sub_0803FCC4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r5, #0x5c
	muls r0, r5, r0
	ldr r4, _08041BBC @ =gUnknown_20095A0
	adds r3, r0, r4
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	str r0, [r3, #8]
	str r1, [r3, #0xc]
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r3, #0x1e]
	movs r0, #0x14
	bl sub_0803FCC4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r5, r0
	adds r3, r0, r4
_08041BA6:
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	str r0, [r3, #8]
	str r1, [r3, #0xc]
_08041BAE:
	movs r0, #0x3c
_08041BB0:
	str r0, [r3, #0x40]
_08041BB2:
	ldrh r1, [r7, #2]
	ldr r0, _08041BC0 @ =0xFFFFE07F
	ands r0, r1
	strh r0, [r7, #2]
	b _08041BD0
	.align 2, 0
_08041BBC: .4byte gUnknown_20095A0
_08041BC0: .4byte 0xFFFFE07F
_08041BC4:
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	cmp r0, #0x77
	bgt _08041BD0
	b _080418AC
_08041BD0:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080415F0

	thumb_func_start sub_08041BE0
sub_08041BE0: @ 0x08041BE0
	push {r4, r5, r6, r7, lr}
	bl sub_080426E0
	ldr r1, _08041D2C @ =gUnknown_2008004
	movs r4, #0
	movs r3, #0
	movs r0, #1
	strh r0, [r1]
	movs r0, #2
	strh r0, [r1, #2]
	movs r0, #3
	strh r0, [r1, #4]
	ldr r2, _08041D30 @ =gUnknown_2009570
	ldrb r1, [r2]
	subs r0, #5
	ands r0, r1
	strb r0, [r2]
	ldr r1, _08041D34 @ =gUnknown_2009588
	movs r0, #0xc0
	lsls r0, r0, #8
	str r0, [r1]
	str r3, [r1, #4]
	ldr r0, _08041D38 @ =gUnknown_2009590
	str r3, [r0]
	ldr r1, _08041D3C @ =gUnknown_200C0E0
	ldr r0, _08041D40 @ =sub_08041DA4
	str r0, [r1]
	ldr r1, _08041D44 @ =gUnknown_200C0DC
	movs r2, #1
	negs r2, r2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08041D48 @ =gUnknown_200C0C4
	ldr r1, _08041D4C @ =gUnknown_200C0C6
	ldr r0, _08041D50 @ =gUnknown_200C0C8
	strh r3, [r0]
	strh r3, [r1]
	strb r4, [r2]
	bl sub_080412C0
	bl sub_080410B8
	bl sub_08040F04
	bl sub_0803F3DC
	ldr r0, _08041D54 @ =gUnknown_87032B4
	ldr r4, _08041D58 @ =gUnknown_2010900
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r0, _08041D5C @ =0xFFFFC000
	adds r1, r4, r0
	adds r0, r4, #0
	bl LZ77UnCompVram
	movs r5, #0
	movs r4, #0xc0
	lsls r4, r4, #0xd
_08041C56:
	asrs r0, r4, #0x10
	bl sub_08041238
	movs r1, #0x80
	lsls r1, r1, #9
	adds r4, r4, r1
	adds r5, #1
	cmp r5, #0x17
	bls _08041C56
	bl sub_08043764
	ldr r1, _08041D60 @ =gUnknown_2009510
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	ldr r0, _08041D64 @ =gUnknown_201781C
	ldrh r7, [r0]
	adds r4, r1, #0
	movs r6, #1
	ldr r3, _08041D2C @ =gUnknown_2008004
	ldr r2, _08041D68 @ =gUnknown_83B55FC
	ldr r0, _08041D6C @ =gUnknown_2017814
	mov ip, r0
	movs r5, #2
_08041C86:
	ldr r0, [r2]
	ands r0, r7
	cmp r0, #0
	beq _08041C9C
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r1, r6, #0
	lsls r1, r0
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
_08041C9C:
	mov r1, ip
	ldrh r0, [r1]
	ldr r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08041CB6
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r1, r6, #0
	lsls r1, r0
	ldr r0, [r4, #4]
	orrs r0, r1
	str r0, [r4, #4]
_08041CB6:
	adds r3, #2
	adds r2, #4
	subs r5, #1
	cmp r5, #0
	bge _08041C86
	bl sub_08040414
	bl sub_0803FE44
	ldr r0, _08041D34 @ =gUnknown_2009588
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #8
	bl __divsi3
	adds r3, r0, #0
	ldr r0, _08041D70 @ =gUnknown_20095A0
	adds r1, r0, #2
	movs r4, #0x10
	movs r2, #0x77
_08041CDE:
	ldrh r0, [r1]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1a
	cmp r0, #0
	beq _08041CF8
	ldrb r0, [r1, #2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	cmp r0, r3
	bne _08041CF8
	ldrb r0, [r1, #3]
	orrs r0, r4
	strb r0, [r1, #3]
_08041CF8:
	adds r1, #0x5c
	subs r2, #1
	cmp r2, #0
	bge _08041CDE
	bl sub_0803FED0
	bl sub_080400FC
	ldr r3, _08041D74 @ =gUnknown_201520C
	ldr r0, _08041D40 @ =sub_08041DA4
	str r0, [r3]
	ldr r2, _08041D3C @ =gUnknown_200C0E0
	str r0, [r2]
	ldr r0, _08041D78 @ =gUnknown_2015190
	ldr r0, [r0]
	cmp r0, #0
	beq _08041D7C
	bl sub_08043660
	ldr r0, _08041D60 @ =gUnknown_2009510
	adds r0, #0x4e
	ldrh r0, [r0]
	bl m4aSongNumStart
	b _08041D92
	.align 2, 0
_08041D2C: .4byte gUnknown_2008004
_08041D30: .4byte gUnknown_2009570
_08041D34: .4byte gUnknown_2009588
_08041D38: .4byte gUnknown_2009590
_08041D3C: .4byte gUnknown_200C0E0
_08041D40: .4byte sub_08041DA4
_08041D44: .4byte gUnknown_200C0DC
_08041D48: .4byte gUnknown_200C0C4
_08041D4C: .4byte gUnknown_200C0C6
_08041D50: .4byte gUnknown_200C0C8
_08041D54: .4byte gUnknown_87032B4
_08041D58: .4byte gUnknown_2010900
_08041D5C: .4byte 0xFFFFC000
_08041D60: .4byte gUnknown_2009510
_08041D64: .4byte gUnknown_201781C
_08041D68: .4byte gUnknown_83B55FC
_08041D6C: .4byte gUnknown_2017814
_08041D70: .4byte gUnknown_20095A0
_08041D74: .4byte gUnknown_201520C
_08041D78: .4byte gUnknown_2015190
_08041D7C:
	ldr r1, _08041D98 @ =gUnknown_200C0C6
	movs r0, #1
	strh r0, [r1]
	ldr r1, _08041D9C @ =gUnknown_200C0C0
	movs r0, #0x3c
	str r0, [r1]
	ldr r0, _08041DA0 @ =sub_080424B8
	str r0, [r3]
	str r0, [r2]
	bl sub_08043660
_08041D92:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08041D98: .4byte gUnknown_200C0C6
_08041D9C: .4byte gUnknown_200C0C0
_08041DA0: .4byte sub_080424B8
	thumb_func_end sub_08041BE0

	thumb_func_start sub_08041DA4
sub_08041DA4: @ 0x08041DA4
	push {r4, r5, lr}
	bl sub_080406EC
	bl sub_08040304
	bl sub_08041448
	bl sub_0803FE44
	bl sub_080415F0
	bl sub_08040414
	bl sub_08041548
	bl sub_0803FED0
	ldr r4, _08041E8C @ =gUnknown_2009588
	ldr r0, [r4]
	cmp r0, #0
	bge _08041DD2
	ldr r1, _08041E90 @ =0x000007FF
	adds r0, r0, r1
_08041DD2:
	asrs r0, r0, #0xb
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08041238
	ldr r0, [r4]
	cmp r0, #0
	bge _08041DE8
	ldr r2, _08041E90 @ =0x000007FF
	adds r0, r0, r2
_08041DE8:
	asrs r0, r0, #0xb
	adds r0, #0x18
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08041238
	ldr r5, _08041E94 @ =gUnknown_2015EC8
	ldr r2, [r4]
	adds r0, r2, #0
	cmp r2, #0
	bge _08041E00
	adds r0, #0xff
_08041E00:
	asrs r3, r0, #8
	adds r1, r3, #0
	subs r1, #0x18
	adds r0, r1, #0
	cmp r1, #0
	bge _08041E10
	adds r0, r3, #0
	adds r0, #0xe7
_08041E10:
	asrs r0, r0, #8
	lsls r0, r0, #8
	subs r0, r1, r0
	strh r0, [r5]
	ldr r1, _08041E98 @ =gUnknown_20151F8
	strh r0, [r1]
	bl sub_080400FC
	ldr r4, _08041E9C @ =gUnknown_201520C
	ldr r1, [r4]
	ldr r0, _08041EA0 @ =sub_08041DA4
	cmp r1, r0
	bne _08041F06
	ldr r0, _08041EA4 @ =gUnknown_200C0F8
	ldrb r0, [r0]
	cmp r0, #6
	bne _08041E40
	ldr r0, _08041EA8 @ =gUnknown_20138A8
	movs r3, #0xc7
	lsls r3, r3, #5
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08041EC4
_08041E40:
	ldr r0, _08041EAC @ =gUnknown_200C0F0
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _08041EB0 @ =gUnknown_200C0C8
	cmp r0, #0
	bne _08041E58
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _08041E60
	movs r0, #1
	strh r0, [r1]
_08041E58:
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _08041F06
_08041E60:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	bne _08041F06
	ldr r0, _08041EB4 @ =gUnknown_200C0C4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08041F06
	ldr r1, _08041EB8 @ =gUnknown_200C0C0
	movs r0, #0xf0
	str r0, [r1]
	bl sub_0803F214
	ldr r2, _08041EBC @ =gUnknown_200C0E0
	ldr r1, _08041E9C @ =gUnknown_201520C
	ldr r0, _08041EC0 @ =sub_080423F4
	str r0, [r1]
	str r0, [r2]
	b _08041F06
	.align 2, 0
_08041E8C: .4byte gUnknown_2009588
_08041E90: .4byte 0x000007FF
_08041E94: .4byte gUnknown_2015EC8
_08041E98: .4byte gUnknown_20151F8
_08041E9C: .4byte gUnknown_201520C
_08041EA0: .4byte sub_08041DA4
_08041EA4: .4byte gUnknown_200C0F8
_08041EA8: .4byte gUnknown_20138A8
_08041EAC: .4byte gUnknown_200C0F0
_08041EB0: .4byte gUnknown_200C0C8
_08041EB4: .4byte gUnknown_200C0C4
_08041EB8: .4byte gUnknown_200C0C0
_08041EBC: .4byte gUnknown_200C0E0
_08041EC0: .4byte sub_080423F4
_08041EC4:
	ldr r1, _08041F0C @ =gUnknown_200C0F0
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _08041F06
	ldr r0, _08041F10 @ =gUnknown_200C0C4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08041F06
	adds r0, r2, #1
	strh r0, [r1]
	bl sub_08042A4C
	ldr r1, _08041F14 @ =gUnknown_83B551C
	movs r2, #8
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _08041EF0
	ldrh r0, [r1, #8]
	bl m4aSongNumStart
_08041EF0:
	ldr r0, _08041F18 @ =gUnknown_86FF390
	ldr r0, [r0, #0x10]
	bl sub_08042B4C
	ldr r1, _08041F1C @ =gUnknown_200C0C0
	movs r0, #0x78
	str r0, [r1]
	ldr r1, _08041F20 @ =gUnknown_200C0E0
	ldr r0, _08041F24 @ =sub_08041F28
	str r0, [r4]
	str r0, [r1]
_08041F06:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08041F0C: .4byte gUnknown_200C0F0
_08041F10: .4byte gUnknown_200C0C4
_08041F14: .4byte gUnknown_83B551C
_08041F18: .4byte gUnknown_86FF390
_08041F1C: .4byte gUnknown_200C0C0
_08041F20: .4byte gUnknown_200C0E0
_08041F24: .4byte sub_08041F28
	thumb_func_end sub_08041DA4

	thumb_func_start sub_08041F28
sub_08041F28: @ 0x08041F28
	push {r4, r5, lr}
	bl sub_080406EC
	bl sub_08041448
	bl sub_0803FE44
	bl sub_080415F0
	bl sub_08040414
	bl sub_08041548
	bl sub_0803FED0
	ldr r4, _08041FB0 @ =gUnknown_2009588
	ldr r0, [r4]
	cmp r0, #0
	bge _08041F52
	ldr r1, _08041FB4 @ =0x000007FF
	adds r0, r0, r1
_08041F52:
	asrs r0, r0, #0xb
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08041238
	ldr r0, [r4]
	cmp r0, #0
	bge _08041F68
	ldr r2, _08041FB4 @ =0x000007FF
	adds r0, r0, r2
_08041F68:
	asrs r0, r0, #0xb
	adds r0, #0x18
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08041238
	ldr r5, _08041FB8 @ =gUnknown_2015EC8
	ldr r2, [r4]
	adds r0, r2, #0
	cmp r2, #0
	bge _08041F80
	adds r0, #0xff
_08041F80:
	asrs r3, r0, #8
	adds r1, r3, #0
	subs r1, #0x18
	adds r0, r1, #0
	cmp r1, #0
	bge _08041F90
	adds r0, r3, #0
	adds r0, #0xe7
_08041F90:
	asrs r0, r0, #8
	lsls r0, r0, #8
	subs r0, r1, r0
	strh r0, [r5]
	ldr r1, _08041FBC @ =gUnknown_20151F8
	strh r0, [r1]
	bl sub_080400FC
	ldr r1, _08041FC0 @ =gUnknown_200C0C0
	ldr r0, [r1]
	cmp r0, #0
	beq _08041FC4
	subs r0, #1
	str r0, [r1]
	b _0804201E
	.align 2, 0
_08041FB0: .4byte gUnknown_2009588
_08041FB4: .4byte 0x000007FF
_08041FB8: .4byte gUnknown_2015EC8
_08041FBC: .4byte gUnknown_20151F8
_08041FC0: .4byte gUnknown_200C0C0
_08041FC4:
	ldr r5, _08042024 @ =gUnknown_201520C
	ldr r1, [r5]
	ldr r0, _08042028 @ =sub_08041F28
	cmp r1, r0
	bne _0804201E
	ldr r4, _0804202C @ =gUnknown_200C0DC
	ldr r0, _08042030 @ =gUnknown_2009510
	ldr r0, [r0, #0x10]
	movs r1, #0xc0
	lsls r1, r1, #8
	bl __divsi3
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08041FE8
	movs r0, #1
	strh r0, [r4]
_08041FE8:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #7
	bne _08041FF4
	movs r0, #6
	strh r0, [r4]
_08041FF4:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	bl sub_08042A74
	ldr r1, _08042034 @ =gUnknown_83B551C
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _0804200E
	ldrh r0, [r1]
	bl m4aSongNumStart
_0804200E:
	ldr r0, _08042038 @ =gUnknown_86FF390
	ldr r0, [r0]
	bl sub_08042B4C
	ldr r1, _0804203C @ =sub_08042044
	str r1, [r5]
	ldr r0, _08042040 @ =gUnknown_200C0E0
	str r1, [r0]
_0804201E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08042024: .4byte gUnknown_201520C
_08042028: .4byte sub_08041F28
_0804202C: .4byte gUnknown_200C0DC
_08042030: .4byte gUnknown_2009510
_08042034: .4byte gUnknown_83B551C
_08042038: .4byte gUnknown_86FF390
_0804203C: .4byte sub_08042044
_08042040: .4byte gUnknown_200C0E0
	thumb_func_end sub_08041F28

	thumb_func_start sub_08042044
sub_08042044: @ 0x08042044
	push {r4, r5, lr}
	bl sub_080406EC
	bl sub_08041448
	bl sub_0803FE44
	bl sub_080415F0
	bl sub_08040414
	bl sub_08041548
	bl sub_0803FED0
	ldr r4, _080420E0 @ =gUnknown_2009588
	ldr r0, [r4]
	cmp r0, #0
	bge _0804206E
	ldr r1, _080420E4 @ =0x000007FF
	adds r0, r0, r1
_0804206E:
	asrs r0, r0, #0xb
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08041238
	ldr r0, [r4]
	cmp r0, #0
	bge _08042084
	ldr r1, _080420E4 @ =0x000007FF
	adds r0, r0, r1
_08042084:
	asrs r0, r0, #0xb
	adds r0, #0x18
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08041238
	ldr r5, _080420E8 @ =gUnknown_2015EC8
	ldr r2, [r4]
	adds r0, r2, #0
	cmp r2, #0
	bge _0804209C
	adds r0, #0xff
_0804209C:
	asrs r3, r0, #8
	adds r1, r3, #0
	subs r1, #0x18
	adds r0, r1, #0
	cmp r1, #0
	bge _080420AC
	adds r0, r3, #0
	adds r0, #0xe7
_080420AC:
	asrs r0, r0, #8
	lsls r0, r0, #8
	subs r0, r1, r0
	strh r0, [r5]
	ldr r1, _080420EC @ =gUnknown_20151F8
	strh r0, [r1]
	bl sub_080400FC
	ldr r4, _080420F0 @ =gUnknown_201520C
	ldr r1, [r4]
	ldr r0, _080420F4 @ =sub_08042044
	cmp r1, r0
	bne _080420D8
	bl sub_0804064C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080420D8
	ldr r1, _080420F8 @ =sub_08042100
	str r1, [r4]
	ldr r0, _080420FC @ =gUnknown_200C0E0
	str r1, [r0]
_080420D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080420E0: .4byte gUnknown_2009588
_080420E4: .4byte 0x000007FF
_080420E8: .4byte gUnknown_2015EC8
_080420EC: .4byte gUnknown_20151F8
_080420F0: .4byte gUnknown_201520C
_080420F4: .4byte sub_08042044
_080420F8: .4byte sub_08042100
_080420FC: .4byte gUnknown_200C0E0
	thumb_func_end sub_08042044

	thumb_func_start sub_08042100
sub_08042100: @ 0x08042100
	push {r4, r5, lr}
	bl sub_080406EC
	bl sub_08041448
	bl sub_0803FE44
	bl sub_080415F0
	bl sub_08040414
	bl sub_08041548
	bl sub_0803FED0
	ldr r4, _080421D0 @ =gUnknown_2009588
	ldr r0, [r4]
	cmp r0, #0
	bge _0804212A
	ldr r1, _080421D4 @ =0x000007FF
	adds r0, r0, r1
_0804212A:
	asrs r0, r0, #0xb
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08041238
	ldr r0, [r4]
	cmp r0, #0
	bge _08042140
	ldr r2, _080421D4 @ =0x000007FF
	adds r0, r0, r2
_08042140:
	asrs r0, r0, #0xb
	adds r0, #0x18
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08041238
	ldr r5, _080421D8 @ =gUnknown_2015EC8
	ldr r2, [r4]
	adds r0, r2, #0
	cmp r2, #0
	bge _08042158
	adds r0, #0xff
_08042158:
	asrs r3, r0, #8
	adds r1, r3, #0
	subs r1, #0x18
	adds r0, r1, #0
	cmp r1, #0
	bge _08042168
	adds r0, r3, #0
	adds r0, #0xe7
_08042168:
	asrs r0, r0, #8
	lsls r0, r0, #8
	subs r0, r1, r0
	strh r0, [r5]
	ldr r1, _080421DC @ =gUnknown_20151F8
	strh r0, [r1]
	bl sub_080400FC
	ldr r0, _080421E0 @ =gUnknown_200C0F0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08042192
	ldr r0, _080421E4 @ =gUnknown_200C0C8
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bne _0804219E
	movs r0, #1
	strh r0, [r2]
_08042192:
	ldr r0, _080421E4 @ =gUnknown_200C0C8
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	beq _080421C8
_0804219E:
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	bne _080421C8
	ldr r0, _080421E8 @ =gUnknown_200C0C4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080421C8
	ldr r1, _080421EC @ =gUnknown_200C0C0
	movs r0, #0xf0
	str r0, [r1]
	bl sub_0803F214
	ldr r0, _080421F0 @ =gUnknown_201520C
	ldr r1, _080421F4 @ =sub_080423F4
	str r1, [r0]
	ldr r0, _080421F8 @ =gUnknown_200C0E0
	str r1, [r0]
_080421C8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080421D0: .4byte gUnknown_2009588
_080421D4: .4byte 0x000007FF
_080421D8: .4byte gUnknown_2015EC8
_080421DC: .4byte gUnknown_20151F8
_080421E0: .4byte gUnknown_200C0F0
_080421E4: .4byte gUnknown_200C0C8
_080421E8: .4byte gUnknown_200C0C4
_080421EC: .4byte gUnknown_200C0C0
_080421F0: .4byte gUnknown_201520C
_080421F4: .4byte sub_080423F4
_080421F8: .4byte gUnknown_200C0E0
	thumb_func_end sub_08042100

	thumb_func_start sub_080421FC
sub_080421FC: @ 0x080421FC
	push {r4, r5, r6, lr}
	ldr r2, _08042264 @ =gUnknown_200C0E8
	ldrh r1, [r2]
	ldr r3, _08042268 @ =gUnknown_2009588
	lsls r1, r1, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r3]
	adds r0, r0, r1
	str r0, [r3]
	adds r5, r2, #0
	cmp r0, #0
	bge _08042218
	movs r0, #0
	str r0, [r3]
_08042218:
	ldr r0, [r3]
	movs r1, #0xa8
	lsls r1, r1, #0xb
	cmp r0, r1
	ble _08042224
	str r1, [r3]
_08042224:
	ldr r1, _0804226C @ =gUnknown_200C0E4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08042270 @ =gUnknown_200C0EC
	ldr r1, [r1]
	cmp r0, r1
	beq _08042236
	b _08042356
_08042236:
	ldr r0, _08042274 @ =gUnknown_200C0EA
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r6, r0, #0
	cmp r1, #0
	bne _08042286
	ldr r4, _08042278 @ =gUnknown_2009510
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	movs r1, #0xc0
	bl __divsi3
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #6
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _0804227C
	adds r0, r1, #0
	adds r0, #8
	b _08042280
	.align 2, 0
_08042264: .4byte gUnknown_200C0E8
_08042268: .4byte gUnknown_2009588
_0804226C: .4byte gUnknown_200C0E4
_08042270: .4byte gUnknown_200C0EC
_08042274: .4byte gUnknown_200C0EA
_08042278: .4byte gUnknown_2009510
_0804227C:
	adds r0, r1, #0
	adds r0, #0xb8
_08042280:
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	b _080422CA
_08042286:
	cmp r1, #1
	bne _080422CA
	ldr r4, _080422AC @ =gUnknown_2009510
	ldr r0, [r4, #0x10]
	asrs r0, r0, #8
	movs r1, #0xc0
	bl __divsi3
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #6
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _080422B0
	adds r0, r1, #0
	adds r0, #8
	b _080422B4
	.align 2, 0
_080422AC: .4byte gUnknown_2009510
_080422B0:
	adds r0, r1, #0
	adds r0, #0xb8
_080422B4:
	lsls r0, r0, #8
	str r0, [r4, #0x10]
	ldr r2, _08042320 @ =gUnknown_2009510
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r1, _08042324 @ =0xFFFFFC00
	cmp r0, #0
	ble _080422C8
	movs r1, #0x80
	lsls r1, r1, #3
_080422C8:
	str r1, [r2, #0x2c]
_080422CA:
	ldrb r1, [r6]
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _080422DE
	subs r0, r1, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08042338
_080422DE:
	ldr r0, _08042328 @ =gUnknown_2009588
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #8
	bl __divsi3
	adds r3, r0, #0
	ldr r0, _0804232C @ =gUnknown_20095A0
	adds r1, r0, #2
	movs r4, #0x10
	movs r2, #0x77
_080422F4:
	ldrh r0, [r1]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1a
	cmp r0, #0
	beq _0804230E
	ldrb r0, [r1, #2]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1c
	cmp r0, r3
	bne _0804230E
	ldrb r0, [r1, #3]
	orrs r0, r4
	strb r0, [r1, #3]
_0804230E:
	adds r1, #0x5c
	subs r2, #1
	cmp r2, #0
	bge _080422F4
	ldr r0, _08042330 @ =gUnknown_201520C
	ldr r1, _08042334 @ =gUnknown_200C0E0
	ldr r1, [r1]
	str r1, [r0]
	b _0804234C
	.align 2, 0
_08042320: .4byte gUnknown_2009510
_08042324: .4byte 0xFFFFFC00
_08042328: .4byte gUnknown_2009588
_0804232C: .4byte gUnknown_20095A0
_08042330: .4byte gUnknown_201520C
_08042334: .4byte gUnknown_200C0E0
_08042338:
	movs r0, #0x96
	bl m4aSongNumStart
	ldr r1, _080423D0 @ =gUnknown_200C0E8
	ldrh r0, [r1]
	negs r0, r0
	strh r0, [r1]
	ldr r1, _080423D4 @ =gUnknown_200C0E4
	movs r0, #0
	str r0, [r1]
_0804234C:
	ldr r0, _080423D8 @ =gUnknown_2009510
	ldr r1, _080423DC @ =gUnknown_2009588
	ldr r0, [r0, #0x10]
	ldr r1, [r1]
	subs r0, r0, r1
_08042356:
	bl sub_08040414
	bl sub_08041548
	bl sub_0803FED0
	ldr r4, _080423DC @ =gUnknown_2009588
	ldr r0, [r4]
	cmp r0, #0
	bge _0804236E
	ldr r2, _080423E0 @ =0x000007FF
	adds r0, r0, r2
_0804236E:
	asrs r0, r0, #0xb
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08041238
	ldr r0, [r4]
	cmp r0, #0
	bge _08042384
	ldr r1, _080423E0 @ =0x000007FF
	adds r0, r0, r1
_08042384:
	asrs r0, r0, #0xb
	adds r0, #0x18
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_08041238
	ldr r5, _080423E4 @ =gUnknown_2015EC8
	ldr r2, [r4]
	adds r0, r2, #0
	cmp r2, #0
	bge _0804239C
	adds r0, #0xff
_0804239C:
	asrs r3, r0, #8
	adds r1, r3, #0
	subs r1, #0x18
	adds r0, r1, #0
	cmp r1, #0
	bge _080423AC
	adds r0, r3, #0
	adds r0, #0xe7
_080423AC:
	asrs r0, r0, #8
	lsls r0, r0, #8
	subs r0, r1, r0
	strh r0, [r5]
	ldr r1, _080423E8 @ =gUnknown_20151F8
	strh r0, [r1]
	ldr r0, _080423EC @ =gUnknown_200C0E0
	ldr r1, [r0]
	ldr r0, _080423F0 @ =sub_08041DA4
	cmp r1, r0
	bne _080423C6
	bl sub_08040304
_080423C6:
	bl sub_080400FC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080423D0: .4byte gUnknown_200C0E8
_080423D4: .4byte gUnknown_200C0E4
_080423D8: .4byte gUnknown_2009510
_080423DC: .4byte gUnknown_2009588
_080423E0: .4byte 0x000007FF
_080423E4: .4byte gUnknown_2015EC8
_080423E8: .4byte gUnknown_20151F8
_080423EC: .4byte gUnknown_200C0E0
_080423F0: .4byte sub_08041DA4
	thumb_func_end sub_080421FC

	thumb_func_start sub_080423F4
sub_080423F4: @ 0x080423F4
	push {r4, lr}
	ldr r1, _08042404 @ =gUnknown_200C0C0
	ldr r0, [r1]
	cmp r0, #0
	beq _08042408
	subs r0, #1
	str r0, [r1]
	b _0804249C
	.align 2, 0
_08042404: .4byte gUnknown_200C0C0
_08042408:
	ldr r3, _08042438 @ =gUnknown_2008000
	ldr r1, [r3]
	cmp r1, #0
	beq _0804241A
	ldr r0, _0804243C @ =gUnknown_200C0F2
	movs r4, #0
	ldrsh r2, [r0, r4]
	cmp r2, #0
	beq _08042450
_0804241A:
	ldr r0, _08042440 @ =gUnknown_201781C
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08042498
	movs r0, #5
	bl m4aSongNumStart
	ldr r0, _08042444 @ =gUnknown_201520C
	ldr r1, _08042448 @ =sub_080428A8
	str r1, [r0]
	ldr r0, _0804244C @ =gUnknown_200C0E0
	str r1, [r0]
	b _08042498
	.align 2, 0
_08042438: .4byte gUnknown_2008000
_0804243C: .4byte gUnknown_200C0F2
_08042440: .4byte gUnknown_201781C
_08042444: .4byte gUnknown_201520C
_08042448: .4byte sub_080428A8
_0804244C: .4byte gUnknown_200C0E0
_08042450:
	adds r0, r1, #0
	subs r0, #0x11
	str r0, [r3]
	movs r4, #0x11
	cmp r0, #0
	bge _08042462
	adds r4, r1, #0
	str r2, [r3]
	b _08042474
_08042462:
	ldr r0, _080424A4 @ =gUnknown_2015288
	ldrh r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08042474
	movs r0, #0x27
	bl m4aSongNumStart
_08042474:
	ldr r0, _080424A8 @ =gUnknown_2009510
	ldr r0, [r0, #0x40]
	adds r1, r0, #0
	muls r1, r4, r1
	ldr r2, _080424AC @ =gUnknown_2009590
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _080424B0 @ =0x0001869F
	cmp r0, r1
	ble _0804248C
	str r1, [r2]
_0804248C:
	ldr r3, _080424B4 @ =gUnknown_2009594
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	ble _08042498
	str r1, [r3]
_08042498:
	bl sub_080400FC
_0804249C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080424A4: .4byte gUnknown_2015288
_080424A8: .4byte gUnknown_2009510
_080424AC: .4byte gUnknown_2009590
_080424B0: .4byte 0x0001869F
_080424B4: .4byte gUnknown_2009594
	thumb_func_end sub_080423F4

	thumb_func_start sub_080424B8
sub_080424B8: @ 0x080424B8
	push {r4, lr}
	bl sub_08041448
	bl sub_0803FE44
	bl sub_08040414
	bl sub_08041548
	bl sub_0803FED0
	bl sub_080400FC
	bl sub_0804064C
	ldr r0, _080424F8 @ =gUnknown_200C0C6
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _08042534
	ldr r0, _080424FC @ =gUnknown_2015190
	ldr r0, [r0]
	movs r1, #2
	cmp r0, #0
	beq _080424EC
	movs r1, #1
_080424EC:
	adds r4, r1, #0
	cmp r4, #0
	beq _08042500
	bl sub_08042A4C
	b _08042504
	.align 2, 0
_080424F8: .4byte gUnknown_200C0C6
_080424FC: .4byte gUnknown_2015190
_08042500:
	bl sub_08042A74
_08042504:
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08042514
	ldr r1, _08042548 @ =gUnknown_200C0C4
	movs r0, #1
	strb r0, [r1]
_08042514:
	ldr r0, _0804254C @ =gUnknown_83B551C
	lsls r1, r4, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _08042528
	ldrh r0, [r1]
	bl m4aSongNumStart
_08042528:
	ldr r0, _08042550 @ =gUnknown_86FF390
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	bl sub_08042B4C
_08042534:
	ldr r1, _08042554 @ =gUnknown_200C0C6
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _08042558
	subs r0, r2, #1
	strh r0, [r1]
	b _08042584
	.align 2, 0
_08042548: .4byte gUnknown_200C0C4
_0804254C: .4byte gUnknown_83B551C
_08042550: .4byte gUnknown_86FF390
_08042554: .4byte gUnknown_200C0C6
_08042558:
	ldr r1, _0804258C @ =gUnknown_200C0C0
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bgt _08042584
	ldr r0, _08042590 @ =gUnknown_201781C
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08042584
	bl m4aMPlayAllStop
	movs r0, #5
	bl m4aSongNumStart
	ldr r0, _08042594 @ =gUnknown_201520C
	ldr r1, _08042598 @ =sub_080428A8
	str r1, [r0]
	ldr r0, _0804259C @ =gUnknown_200C0E0
	str r1, [r0]
_08042584:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0804258C: .4byte gUnknown_200C0C0
_08042590: .4byte gUnknown_201781C
_08042594: .4byte gUnknown_201520C
_08042598: .4byte sub_080428A8
_0804259C: .4byte gUnknown_200C0E0
	thumb_func_end sub_080424B8

	thumb_func_start sub_080425A0
sub_080425A0: @ 0x080425A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	mov r8, r1
	bl m4aMPlayAllStop
	movs r4, #0
_080425B4:
	bl sub_080438FC
	adds r4, #1
	cmp r4, #0xf
	bls _080425B4
	ldr r0, _080426A0 @ =gUnknown_2015190
	str r5, [r0]
	movs r4, #0
	ldr r0, _080426A4 @ =0x0000081C
	adds r1, r5, r0
	ldr r2, _080426A8 @ =gUnknown_20151A0
_080425CA:
	stm r2!, {r1}
	adds r1, r1, r0
	adds r4, #1
	cmp r4, #5
	bls _080425CA
	bl sub_08043134
	ldr r1, _080426AC @ =gUnknown_2009594
	mov r2, r8
	ldr r0, [r2]
	str r0, [r1]
	bl sub_08042ED8
	ldr r7, _080426B0 @ =gUnknown_2015288
	movs r2, #0
	strh r2, [r7]
	ldr r6, _080426B4 @ =gUnknown_201520C
	ldr r1, _080426B8 @ =sub_08041BE0
	str r1, [r6]
	ldr r0, _080426BC @ =gUnknown_200C0E0
	str r1, [r0]
	ldr r4, _080426C0 @ =0x04000200
	ldrh r0, [r4]
	mov sl, r0
	ldr r3, _080426C4 @ =0x04000004
	ldrh r0, [r3]
	mov sb, r0
	ldr r5, _080426C8 @ =0x04000208
	strh r2, [r5]
	strh r2, [r4]
	strh r2, [r3]
	ldr r2, _080426CC @ =gUnknown_20151B8
	ldr r1, _080426D0 @ =gUnknown_30046E0
	ldr r0, [r1]
	str r0, [r2]
	ldr r0, _080426D4 @ =sub_080427D0
	str r0, [r1]
	movs r1, #1
	str r1, [r4]
	movs r0, #8
	str r0, [r3]
	str r1, [r5]
	bl sub_080436F0
	bl sub_080430BC
	ldr r0, [r6]
	cmp r0, #0
	beq _08042652
	adds r5, r7, #0
	adds r4, r6, #0
_08042630:
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	bl sub_08043704
	ldr r0, [r4]
	bl _call_via_r0
	bl sub_08043798
	bl sub_080438FC
	bl sub_080430BC
	ldr r0, [r4]
	cmp r0, #0
	bne _08042630
_08042652:
	ldr r0, _080426D8 @ =gUnknown_2009590
	ldr r0, [r0]
	mov r1, r8
	str r0, [r1]
	movs r4, #0
	ldr r2, _080426DC @ =0x0000BFFF
	ldr r5, _080426CC @ =gUnknown_20151B8
	ldr r6, _080426D0 @ =gUnknown_30046E0
	movs r1, #0
	movs r0, #0xc0
	lsls r0, r0, #0x13
_08042668:
	strh r1, [r0]
	adds r0, #2
	adds r4, #1
	cmp r4, r2
	bls _08042668
	ldr r3, _080426C8 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _080426C0 @ =0x04000200
	strh r0, [r2]
	ldr r1, _080426C4 @ =0x04000004
	strh r0, [r1]
	ldr r0, [r5]
	str r0, [r6]
	movs r0, #1
	strh r0, [r3]
	mov r0, sl
	strh r0, [r2]
	mov r2, sb
	strh r2, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080426A0: .4byte gUnknown_2015190
_080426A4: .4byte 0x0000081C
_080426A8: .4byte gUnknown_20151A0
_080426AC: .4byte gUnknown_2009594
_080426B0: .4byte gUnknown_2015288
_080426B4: .4byte gUnknown_201520C
_080426B8: .4byte sub_08041BE0
_080426BC: .4byte gUnknown_200C0E0
_080426C0: .4byte 0x04000200
_080426C4: .4byte 0x04000004
_080426C8: .4byte 0x04000208
_080426CC: .4byte gUnknown_20151B8
_080426D0: .4byte gUnknown_30046E0
_080426D4: .4byte sub_080427D0
_080426D8: .4byte gUnknown_2009590
_080426DC: .4byte 0x0000BFFF
	thumb_func_end sub_080425A0

	thumb_func_start sub_080426E0
sub_080426E0: @ 0x080426E0
	push {r4, r5, r6, r7, lr}
	ldr r1, _08042700 @ =gUnknown_2017818
	movs r0, #0
	strb r0, [r1]
	ldr r3, _08042704 @ =gUnknown_2015190
	ldr r1, [r3]
	movs r2, #0xd3
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrh r2, [r0]
	cmp r2, #0
	bne _0804270C
	ldr r0, _08042708 @ =gUnknown_2008000
	str r2, [r0]
	str r2, [r3]
	b _08042720
	.align 2, 0
_08042700: .4byte gUnknown_2017818
_08042704: .4byte gUnknown_2015190
_08042708: .4byte gUnknown_2008000
_0804270C:
	movs r2, #0xd6
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r3]
	ldr r2, _08042740 @ =gUnknown_2008000
	ldrh r1, [r1, #4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	str r0, [r2]
_08042720:
	movs r4, #0
	ldr r7, _08042744 @ =gUnknown_200C0F8
	ldr r3, _08042748 @ =gUnknown_2015198
	ldr r2, _0804274C @ =gUnknown_20151A0
	movs r6, #0xd3
	lsls r6, r6, #1
	movs r5, #0xd6
	lsls r5, r5, #1
_08042730:
	ldr r1, [r2]
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, #0
	bne _08042750
	strb r0, [r3]
	str r0, [r2]
	b _08042758
	.align 2, 0
_08042740: .4byte gUnknown_2008000
_08042744: .4byte gUnknown_200C0F8
_08042748: .4byte gUnknown_2015198
_0804274C: .4byte gUnknown_20151A0
_08042750:
	adds r0, r1, r5
	str r0, [r2]
	ldrh r0, [r1, #4]
	strb r0, [r3]
_08042758:
	adds r3, #1
	adds r2, #4
	adds r4, #1
	cmp r4, #5
	bls _08042730
	movs r0, #0
	strb r0, [r7]
	movs r4, #0
	ldr r6, _080427B8 @ =gUnknown_20095A0
	ldr r5, _080427BC @ =gUnknown_20151A0
_0804276C:
	ldr r0, [r5]
	cmp r0, #0
	beq _08042790
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	ldr r0, [r5]
	adds r1, r6, #0
	bl LZ77UnCompWram
	ldr r0, _080427C0 @ =0x0000129C
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _080427C4 @ =gUnknown_200C900
	adds r1, r1, r0
	adds r0, r6, #0
	bl LZ77UnCompWram
_08042790:
	adds r5, #4
	adds r4, #1
	cmp r4, #5
	bls _0804276C
	ldr r0, _080427C8 @ =gUnknown_2015190
	ldr r0, [r0]
	cmp r0, #0
	beq _080427B0
	ldr r4, _080427B8 @ =gUnknown_20095A0
	adds r1, r4, #0
	bl LZ77UnCompWram
	ldr r1, _080427CC @ =gUnknown_20138A8
	adds r0, r4, #0
	bl LZ77UnCompWram
_080427B0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080427B8: .4byte gUnknown_20095A0
_080427BC: .4byte gUnknown_20151A0
_080427C0: .4byte 0x0000129C
_080427C4: .4byte gUnknown_200C900
_080427C8: .4byte gUnknown_2015190
_080427CC: .4byte gUnknown_20138A8
	thumb_func_end sub_080426E0

	thumb_func_start sub_080427D0
sub_080427D0: @ 0x080427D0
	push {lr}
	bl m4aSoundVSync
	ldr r0, _080427F4 @ =gUnknown_2017818
	ldrb r0, [r0]
	cmp r0, #0
	beq _080427E6
	ldr r0, _080427F8 @ =gUnknown_2015290
	ldrb r0, [r0]
	cmp r0, #0
	bne _08042800
_080427E6:
	ldr r1, _080427FC @ =gUnknown_3007FF8
	movs r0, #1
	str r0, [r1]
	bl m4aSoundMain
	b _08042868
	.align 2, 0
_080427F4: .4byte gUnknown_2017818
_080427F8: .4byte gUnknown_2015290
_080427FC: .4byte gUnknown_3007FF8
_08042800:
	bl sub_080432C0
	ldr r1, _0804286C @ =0x040000D4
	ldr r0, _08042870 @ =gUnknown_2015ED0
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r3, _08042874 @ =0x84000100
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	ldr r2, _08042878 @ =gUnknown_2016F00
	str r2, [r1]
	ldr r0, _0804287C @ =0x0600B000
	str r0, [r1, #4]
	ldr r0, _08042880 @ =0x80000400
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08042884 @ =gUnknown_20152A0
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	str r3, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08042888 @ =0xFFFFF800
	adds r2, r2, r0
	str r2, [r1]
	ldr r0, _0804288C @ =0x0600B800
	str r0, [r1, #4]
	ldr r0, _08042890 @ =0x80000340
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08042894 @ =gUnknown_2015288
	ldrh r0, [r0]
	lsrs r0, r0, #3
	movs r2, #3
	ands r0, r2
	lsls r0, r0, #0xc
	ldr r2, _08042898 @ =gUnknown_200C900
	adds r0, r0, r2
	str r0, [r1]
	ldr r0, _0804289C @ =0x06003800
	str r0, [r1, #4]
	ldr r0, _080428A0 @ =0x80000800
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _080428A4 @ =gUnknown_3007FF8
	movs r0, #1
	str r0, [r1]
	bl m4aSoundMain
_08042868:
	pop {r0}
	bx r0
	.align 2, 0
_0804286C: .4byte 0x040000D4
_08042870: .4byte gUnknown_2015ED0
_08042874: .4byte 0x84000100
_08042878: .4byte gUnknown_2016F00
_0804287C: .4byte 0x0600B000
_08042880: .4byte 0x80000400
_08042884: .4byte gUnknown_20152A0
_08042888: .4byte 0xFFFFF800
_0804288C: .4byte 0x0600B800
_08042890: .4byte 0x80000340
_08042894: .4byte gUnknown_2015288
_08042898: .4byte gUnknown_200C900
_0804289C: .4byte 0x06003800
_080428A0: .4byte 0x80000800
_080428A4: .4byte gUnknown_3007FF8
	thumb_func_end sub_080427D0

	thumb_func_start sub_080428A8
sub_080428A8: @ 0x080428A8
	push {r4, lr}
	movs r4, #0
_080428AC:
	bl sub_080438FC
	adds r4, #1
	cmp r4, #0x3b
	bls _080428AC
	bl sub_080436B8
	ldr r0, _080428CC @ =gUnknown_201520C
	movs r1, #0
	str r1, [r0]
	ldr r0, _080428D0 @ =gUnknown_200C0E0
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080428CC: .4byte gUnknown_201520C
_080428D0: .4byte gUnknown_200C0E0
	thumb_func_end sub_080428A8

	thumb_func_start sub_080428D4
sub_080428D4: @ 0x080428D4
	push {lr}
	ldr r2, _080428F4 @ =gUnknown_200C0C0
	ldr r0, [r2]
	cmp r0, #0
	bne _08042908
	ldr r1, _080428F8 @ =gUnknown_200C0C6
	movs r0, #1
	strh r0, [r1]
	movs r0, #0x3c
	str r0, [r2]
	ldr r2, _080428FC @ =gUnknown_200C0E0
	ldr r1, _08042900 @ =gUnknown_201520C
	ldr r0, _08042904 @ =sub_080424B8
	str r0, [r1]
	b _0804290A
	.align 2, 0
_080428F4: .4byte gUnknown_200C0C0
_080428F8: .4byte gUnknown_200C0C6
_080428FC: .4byte gUnknown_200C0E0
_08042900: .4byte gUnknown_201520C
_08042904: .4byte sub_080424B8
_08042908:
	subs r0, #1
_0804290A:
	str r0, [r2]
	bl sub_08041448
	bl sub_0803FE44
	bl sub_08040414
	bl sub_08041548
	bl sub_0803FED0
	bl sub_080400FC
	pop {r0}
	bx r0
	thumb_func_end sub_080428D4

	thumb_func_start sub_08042928
sub_08042928: @ 0x08042928
	bx lr
	.align 2, 0
	thumb_func_end sub_08042928

	thumb_func_start sub_0804292C
sub_0804292C: @ 0x0804292C
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r0, #0x10
	ldr r0, _0804294C @ =0x05FF0000
	cmp r3, r0
	bhi _08042946
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	movs r0, #0x20
	negs r0, r0
	cmp r2, r0
	bge _08042950
_08042946:
	movs r0, #0x20
	b _08042984
	.align 2, 0
_0804294C: .4byte 0x05FF0000
_08042950:
	lsrs r0, r1, #0x10
	cmp r0, #0x6f
	bls _0804295A
	movs r0, #0
	b _08042984
_0804295A:
	ldr r4, _0804298C @ =gUnknown_2008010
	adds r1, r2, #0
	cmp r1, #0
	bge _08042964
	adds r1, #7
_08042964:
	asrs r1, r1, #3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #6
	asrs r0, r3, #0x10
	cmp r0, #0
	bge _08042974
	adds r0, #7
_08042974:
	asrs r0, r0, #3
	adds r0, r1, r0
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	ldr r0, _08042990 @ =0x000003FF
	ands r0, r1
	lsrs r0, r0, #8
_08042984:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804298C: .4byte gUnknown_2008010
_08042990: .4byte 0x000003FF
	thumb_func_end sub_0804292C

	thumb_func_start sub_08042994
sub_08042994: @ 0x08042994
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r0, #0x10
	ldr r0, _080429B8 @ =0x05FF0000
	cmp r3, r0
	bhi _080429B4
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	movs r0, #0x20
	negs r0, r0
	cmp r2, r0
	blt _080429B4
	lsrs r0, r1, #0x10
	cmp r0, #0x6f
	bls _080429BC
_080429B4:
	movs r0, #0x20
	b _080429E4
	.align 2, 0
_080429B8: .4byte 0x05FF0000
_080429BC:
	ldr r4, _080429EC @ =gUnknown_2008010
	adds r1, r2, #0
	cmp r1, #0
	bge _080429C6
	adds r1, #7
_080429C6:
	asrs r1, r1, #3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #6
	asrs r0, r3, #0x10
	cmp r0, #0
	bge _080429D6
	adds r0, #7
_080429D6:
	asrs r0, r0, #3
	adds r0, r1, r0
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	ldr r0, _080429F0 @ =0x000003FF
	ands r0, r1
_080429E4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080429EC: .4byte gUnknown_2008010
_080429F0: .4byte 0x000003FF
	thumb_func_end sub_08042994

	thumb_func_start sub_080429F4
sub_080429F4: @ 0x080429F4
	push {r4, lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r3, r0, #0x10
	ldr r0, _08042A18 @ =0x05FF0000
	cmp r3, r0
	bhi _08042A14
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	movs r0, #0x20
	negs r0, r0
	cmp r2, r0
	blt _08042A14
	lsrs r0, r1, #0x10
	cmp r0, #0x6f
	bls _08042A1C
_08042A14:
	movs r0, #0x20
	b _08042A42
	.align 2, 0
_08042A18: .4byte 0x05FF0000
_08042A1C:
	ldr r4, _08042A48 @ =gUnknown_2008010
	adds r1, r2, #0
	cmp r1, #0
	bge _08042A26
	adds r1, #7
_08042A26:
	asrs r1, r1, #3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #6
	asrs r0, r3, #0x10
	cmp r0, #0
	bge _08042A36
	adds r0, #7
_08042A36:
	asrs r0, r0, #3
	adds r0, r1, r0
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
_08042A42:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08042A48: .4byte gUnknown_2008010
	thumb_func_end sub_080429F4

	thumb_func_start sub_08042A4C
sub_08042A4C: @ 0x08042A4C
	push {lr}
	ldr r1, _08042A64 @ =gUnknown_2015270
	movs r0, #0xd
	str r0, [r1]
	ldr r0, _08042A68 @ =gUnknown_20152A0
	ldr r1, _08042A6C @ =gUnknown_2017410
	ldr r2, _08042A70 @ =gUnknown_2016300
	movs r3, #0x20
	bl sub_08042F58
	pop {r0}
	bx r0
	.align 2, 0
_08042A64: .4byte gUnknown_2015270
_08042A68: .4byte gUnknown_20152A0
_08042A6C: .4byte gUnknown_2017410
_08042A70: .4byte gUnknown_2016300
	thumb_func_end sub_08042A4C

	thumb_func_start sub_08042A74
sub_08042A74: @ 0x08042A74
	push {lr}
	ldr r1, _08042A8C @ =gUnknown_2015270
	movs r0, #0x10
	str r0, [r1]
	ldr r0, _08042A90 @ =gUnknown_20152A0
	ldr r1, _08042A94 @ =gUnknown_2017410
	ldr r2, _08042A98 @ =gUnknown_2016300
	movs r3, #0x20
	bl sub_08042F58
	pop {r0}
	bx r0
	.align 2, 0
_08042A8C: .4byte gUnknown_2015270
_08042A90: .4byte gUnknown_20152A0
_08042A94: .4byte gUnknown_2017410
_08042A98: .4byte gUnknown_2016300
	thumb_func_end sub_08042A74

	thumb_func_start sub_08042A9C
sub_08042A9C: @ 0x08042A9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08042B04 @ =gUnknown_2009510
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	ldr r0, _08042B08 @ =gUnknown_201781C
	ldrh r0, [r0]
	mov ip, r0
	adds r4, r1, #0
	movs r7, #1
	ldr r3, _08042B0C @ =gUnknown_2008004
	ldr r6, _08042B10 @ =gUnknown_83B55FC
	ldr r0, _08042B14 @ =gUnknown_2017814
	mov r8, r0
	movs r5, #2
_08042ABE:
	ldr r2, [r6]
	mov r0, ip
	ands r0, r2
	cmp r0, #0
	beq _08042AD6
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r1, r7, #0
	lsls r1, r0
	ldr r0, [r4]
	orrs r0, r1
	str r0, [r4]
_08042AD6:
	mov r1, r8
	ldrh r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _08042AEE
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r1, r7, #0
	lsls r1, r0
	ldr r0, [r4, #4]
	orrs r0, r1
	str r0, [r4, #4]
_08042AEE:
	adds r3, #2
	adds r6, #4
	subs r5, #1
	cmp r5, #0
	bge _08042ABE
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042B04: .4byte gUnknown_2009510
_08042B08: .4byte gUnknown_201781C
_08042B0C: .4byte gUnknown_2008004
_08042B10: .4byte gUnknown_83B55FC
_08042B14: .4byte gUnknown_2017814
	thumb_func_end sub_08042A9C

	thumb_func_start sub_08042B18
sub_08042B18: @ 0x08042B18
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08042B30
	ldr r0, _08042B2C @ =gUnknown_2009510
	ldr r0, [r0]
	b _08042B34
	.align 2, 0
_08042B2C: .4byte gUnknown_2009510
_08042B30:
	ldr r0, _08042B48 @ =gUnknown_2009510
	ldr r0, [r0, #4]
_08042B34:
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	movs r1, #1
	lsls r1, r2
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_08042B48: .4byte gUnknown_2009510
	thumb_func_end sub_08042B18

	thumb_func_start sub_08042B4C
sub_08042B4C: @ 0x08042B4C
	push {r4, r5, r6, r7, lr}
	ldr r4, _08042B8C @ =gUnknown_200C100
	adds r1, r4, #0
	bl LZ77UnCompWram
	movs r0, #0
	ldr r6, _08042B90 @ =gUnknown_2016700
	adds r7, r4, #0
_08042B5C:
	movs r4, #0
	adds r1, r0, #4
	adds r5, r0, #1
	lsls r1, r1, #5
	adds r0, r1, #3
	ldr r2, _08042B94 @ =0x00000403
	adds r3, r1, r2
	lsls r0, r0, #1
	adds r2, r0, r7
_08042B6E:
	lsls r0, r3, #1
	adds r0, r0, r6
	ldrh r1, [r2]
	strh r1, [r0]
	adds r2, #2
	adds r3, #1
	adds r4, #1
	cmp r4, #0x17
	bls _08042B6E
	adds r0, r5, #0
	cmp r0, #0xd
	bls _08042B5C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08042B8C: .4byte gUnknown_200C100
_08042B90: .4byte gUnknown_2016700
_08042B94: .4byte 0x00000403
	thumb_func_end sub_08042B4C

	thumb_func_start sub_08042B98
sub_08042B98: @ 0x08042B98
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, [r0, #8]
	ldr r5, [r0, #0xc]
	ldr r2, [r0, #0x24]
	lsls r3, r1, #0x10
	asrs r3, r3, #0x10
	movs r0, #0
	str r0, [sp]
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_0803F90C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08042B98

	thumb_func_start sub_08042BC0
sub_08042BC0: @ 0x08042BC0
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #0xc]
	movs r0, #0x90
	lsls r0, r0, #8
	cmp r1, r0
	ble _08042BE6
	ldr r1, _08042BEC @ =gUnknown_200C0F0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldr r1, _08042BF0 @ =gUnknown_200C0F2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldrh r1, [r2, #2]
	ldr r0, _08042BF4 @ =0xFFFFE07F
	ands r0, r1
	strh r0, [r2, #2]
_08042BE6:
	pop {r0}
	bx r0
	.align 2, 0
_08042BEC: .4byte gUnknown_200C0F0
_08042BF0: .4byte gUnknown_200C0F2
_08042BF4: .4byte 0xFFFFE07F
	thumb_func_end sub_08042BC0

	thumb_func_start sub_08042BF8
sub_08042BF8: @ 0x08042BF8
	push {r4, lr}
	adds r3, r1, #0
	adds r4, r2, #0
	str r3, [r0]
	str r4, [r0, #4]
	pop {r4}
	pop {r2}
	bx r2
	thumb_func_end sub_08042BF8

	thumb_func_start sub_08042C08
sub_08042C08: @ 0x08042C08
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	adds r0, #1
	str r0, [r4, #0x40]
	ldr r1, [r4, #0x44]
	cmp r0, r1
	bne _08042C3E
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq _08042C3E
	bl sub_08042EAC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x67
	bgt _08042C3A
	ldrb r0, [r4, #5]
	movs r1, #8
	orrs r0, r1
	strb r0, [r4, #5]
	adds r0, r4, #0
	bl sub_08042C44
_08042C3A:
	movs r0, #0
	str r0, [r4, #0x40]
_08042C3E:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08042C08

	thumb_func_start sub_08042C44
sub_08042C44: @ 0x08042C44
	push {lr}
	ldr r1, _08042C5C @ =gUnknown_83B5510
	ldr r0, [r0]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1c
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	pop {r0}
	bx r0
	.align 2, 0
_08042C5C: .4byte gUnknown_83B5510
	thumb_func_end sub_08042C44

	thumb_func_start sub_08042C60
sub_08042C60: @ 0x08042C60
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r1, r0, r1
	ldr r0, _08042C88 @ =gUnknown_20095A0
	adds r2, r1, r0
	movs r0, #0x88
	strb r0, [r2]
	ldr r0, [r2, #0x40]
	subs r0, #1
	str r0, [r2, #0x40]
	cmp r0, #0
	bne _08042C84
	ldrh r1, [r2, #2]
	ldr r0, _08042C8C @ =0xFFFFE07F
	ands r0, r1
	strh r0, [r2, #2]
_08042C84:
	pop {r0}
	bx r0
	.align 2, 0
_08042C88: .4byte gUnknown_20095A0
_08042C8C: .4byte 0xFFFFE07F
	thumb_func_end sub_08042C60

	thumb_func_start sub_08042C90
sub_08042C90: @ 0x08042C90
	push {r4, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r1, r0, r1
	ldr r0, _08042CE0 @ =gUnknown_20095A0
	adds r4, r1, r0
	movs r0, #0
	strb r0, [r4]
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	ldr r3, [r4, #0xc]
	adds r3, r3, r0
	str r3, [r4, #0xc]
	ldrh r0, [r4, #0x1e]
	adds r0, #0x40
	strh r0, [r4, #0x1e]
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	mvns r1, r1
	lsrs r1, r1, #0x1f
	lsls r1, r1, #5
	ldrb r2, [r4, #3]
	movs r0, #0x21
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #3]
	movs r0, #0x90
	lsls r0, r0, #8
	cmp r3, r0
	ble _08042CD8
	ldrh r1, [r4, #2]
	ldr r0, _08042CE4 @ =0xFFFFE07F
	ands r0, r1
	strh r0, [r4, #2]
_08042CD8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08042CE0: .4byte gUnknown_20095A0
_08042CE4: .4byte 0xFFFFE07F
	thumb_func_end sub_08042C90

	thumb_func_start sub_08042CE8
sub_08042CE8: @ 0x08042CE8
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r1, r0, r1
	ldr r0, _08042D30 @ =gUnknown_20095A0
	adds r3, r1, r0
	movs r0, #0
	strb r0, [r3]
	movs r0, #0x1c
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #8]
	adds r0, r0, r1
	str r0, [r3, #8]
	movs r1, #0x1e
	ldrsh r0, [r3, r1]
	ldr r2, [r3, #0xc]
	adds r2, r2, r0
	str r2, [r3, #0xc]
	ldrh r0, [r3, #0x1e]
	adds r0, #0x40
	strh r0, [r3, #0x1e]
	ldrb r0, [r3, #3]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #3]
	movs r0, #0x90
	lsls r0, r0, #8
	cmp r2, r0
	ble _08042D2C
	ldrh r1, [r3, #2]
	ldr r0, _08042D34 @ =0xFFFFE07F
	ands r0, r1
	strh r0, [r3, #2]
_08042D2C:
	pop {r0}
	bx r0
	.align 2, 0
_08042D30: .4byte gUnknown_20095A0
_08042D34: .4byte 0xFFFFE07F
	thumb_func_end sub_08042CE8

	thumb_func_start sub_08042D38
sub_08042D38: @ 0x08042D38
	ldr r2, _08042D4C @ =gUnknown_20095A0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r0, r1, r0
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08042D4C: .4byte gUnknown_20095A0
	thumb_func_end sub_08042D38

	thumb_func_start sub_08042D50
sub_08042D50: @ 0x08042D50
	ldr r2, _08042D64 @ =gUnknown_20095A0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r0, r1, r0
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08042D64: .4byte gUnknown_20095A0
	thumb_func_end sub_08042D50

	thumb_func_start sub_08042D68
sub_08042D68: @ 0x08042D68
	ldr r2, _08042D7C @ =gUnknown_20095A0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r0, r1, r0
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08042D7C: .4byte gUnknown_20095A0
	thumb_func_end sub_08042D68

	thumb_func_start sub_08042D80
sub_08042D80: @ 0x08042D80
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r1, r0, r1
	ldr r0, _08042DBC @ =gUnknown_20095A0
	adds r5, r1, r0
	ldr r4, [r5, #0x40]
	adds r0, r4, #0
	cmp r4, #0
	bge _08042D98
	adds r0, r4, #3
_08042D98:
	asrs r0, r0, #2
	movs r1, #3
	bl __modsi3
	adds r0, #0x6a
	strb r0, [r5]
	subs r0, r4, #1
	str r0, [r5, #0x40]
	cmp r0, #0
	bne _08042DB4
	ldrh r1, [r5, #2]
	ldr r0, _08042DC0 @ =0xFFFFE07F
	ands r0, r1
	strh r0, [r5, #2]
_08042DB4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08042DBC: .4byte gUnknown_20095A0
_08042DC0: .4byte 0xFFFFE07F
	thumb_func_end sub_08042D80

	thumb_func_start sub_08042DC4
sub_08042DC4: @ 0x08042DC4
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r1, r0, r1
	ldr r0, _08042E00 @ =gUnknown_20095A0
	adds r2, r1, r0
	adds r0, r2, #0
	adds r0, #0x48
	ldrb r0, [r0]
	adds r0, #0x71
	strb r0, [r2]
	ldr r1, [r2, #0x40]
	subs r1, #1
	str r1, [r2, #0x40]
	ldr r0, [r2, #0xc]
	subs r0, #0x80
	str r0, [r2, #0xc]
	cmp r1, #0
	bne _08042DFC
	ldrh r1, [r2, #2]
	ldr r0, _08042E04 @ =0xFFFFE07F
	ands r0, r1
	strh r0, [r2, #2]
	ldr r1, _08042E08 @ =gUnknown_200C0F0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
_08042DFC:
	pop {r0}
	bx r0
	.align 2, 0
_08042E00: .4byte gUnknown_20095A0
_08042E04: .4byte 0xFFFFE07F
_08042E08: .4byte gUnknown_200C0F0
	thumb_func_end sub_08042DC4

	thumb_func_start sub_08042E0C
sub_08042E0C: @ 0x08042E0C
	push {r4, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r1, r0, r1
	ldr r0, _08042E54 @ =gUnknown_20095A0
	adds r3, r1, r0
	ldr r2, [r3, #0x40]
	adds r0, r2, #0
	cmp r2, #0
	bge _08042E24
	adds r0, r2, #3
_08042E24:
	asrs r1, r0, #2
	adds r0, r1, #0
	cmp r1, #0
	bge _08042E2E
	adds r0, r1, #3
_08042E2E:
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r1, r0
	movs r4, #0x79
	negs r4, r4
	adds r1, r4, #0
	subs r1, r1, r0
	strb r1, [r3]
	subs r0, r2, #1
	str r0, [r3, #0x40]
	cmp r0, #0
	bne _08042E4E
	ldrh r1, [r3, #2]
	ldr r0, _08042E58 @ =0xFFFFE07F
	ands r0, r1
	strh r0, [r3, #2]
_08042E4E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08042E54: .4byte gUnknown_20095A0
_08042E58: .4byte 0xFFFFE07F
	thumb_func_end sub_08042E0C

	thumb_func_start sub_08042E5C
sub_08042E5C: @ 0x08042E5C
	push {r4, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x5c
	muls r1, r0, r1
	ldr r0, _08042EA8 @ =gUnknown_20095A0
	adds r4, r1, r0
	movs r0, #0
	strb r0, [r4]
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08042EA2
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	ldr r1, [r4, #0xc]
	adds r1, r1, r0
	str r1, [r4, #0xc]
	ldr r0, [r4, #8]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	asrs r1, r1, #8
	subs r1, #4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_080429F4
	movs r1, #0x80
	lsls r1, r1, #7
	ands r1, r0
	cmp r1, #0
	bne _08042EA2
	ldrh r0, [r4, #0x1e]
	negs r0, r0
	strh r0, [r4, #0x1e]
_08042EA2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08042EA8: .4byte gUnknown_20095A0
	thumb_func_end sub_08042E5C

	thumb_func_start sub_08042EAC
sub_08042EAC: @ 0x08042EAC
	push {lr}
	movs r2, #0
	ldr r1, _08042ED0 @ =gUnknown_20095A0
	ldr r0, _08042ED4 @ =0x00002AC4
	adds r3, r1, r0
_08042EB6:
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x1a
	cmp r0, #0
	beq _08042EC2
	adds r2, #1
_08042EC2:
	adds r1, #0x5c
	cmp r1, r3
	ble _08042EB6
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_08042ED0: .4byte gUnknown_20095A0
_08042ED4: .4byte 0x00002AC4
	thumb_func_end sub_08042EAC

	thumb_func_start sub_08042ED8
sub_08042ED8: @ 0x08042ED8
	push {r4, r5, r6, lr}
	movs r2, #0xa0
	lsls r2, r2, #0x13
	ldr r1, _08042F44 @ =gUnknown_2015270
	movs r0, #0x10
	str r0, [r1]
	movs r1, #0
	ldr r4, _08042F48 @ =gUnknown_20151D0
	movs r3, #0
_08042EEA:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, r4
	strb r3, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _08042EEA
	movs r1, #0
	movs r4, #0
	ldr r3, _08042F4C @ =0x000001FF
_08042F04:
	strh r4, [r2]
	adds r2, #2
	lsls r0, r1, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r3
	ble _08042F04
	movs r1, #0
	ldr r6, _08042F50 @ =gUnknown_20152A0
	movs r3, #0
	ldr r5, _08042F54 @ =gUnknown_2017410
	ldr r4, _08042F4C @ =0x000001FF
_08042F22:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #1
	adds r1, r2, r6
	strh r3, [r1]
	adds r2, r2, r5
	strh r3, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	ble _08042F22
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08042F44: .4byte gUnknown_2015270
_08042F48: .4byte gUnknown_20151D0
_08042F4C: .4byte 0x000001FF
_08042F50: .4byte gUnknown_20152A0
_08042F54: .4byte gUnknown_2017410
	thumb_func_end sub_08042ED8

	thumb_func_start sub_08042F58
sub_08042F58: @ 0x08042F58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	movs r1, #0
_08042F72:
	ldr r2, [sp, #4]
	ldrh r0, [r2]
	movs r6, #0x1f
	ands r6, r0
	str r6, [sp, #0xc]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x15
	movs r3, #0x1f
	ands r7, r3
	str r7, [sp, #0x10]
	lsrs r0, r0, #0x1a
	movs r4, #0x1f
	ands r4, r0
	mov ip, r4
	mov r5, ip
	str r5, [sp, #0x14]
	ldr r2, [sp, #8]
	ldrh r0, [r2]
	ands r3, r0
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x15
	movs r5, #0x1f
	ands r4, r5
	mov sb, r4
	lsrs r5, r0, #0x1a
	movs r0, #0x1f
	ands r5, r0
	mov sl, r5
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	str r0, [sp, #0x18]
	cmp r1, #0
	bge _08042FB8
	adds r1, #0xf
_08042FB8:
	asrs r0, r1, #4
	ldr r1, _08043008 @ =gUnknown_20151D0
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804300C
	movs r0, #0x20
	mov r1, r8
	subs r2, r0, r1
	adds r1, r6, #0
	muls r1, r2, r1
	mov r0, r8
	muls r0, r3, r0
	adds r0, r1, r0
	cmp r0, #0
	bge _08042FDA
	adds r0, #0x1f
_08042FDA:
	lsls r0, r0, #0xb
	lsrs r6, r0, #0x10
	adds r1, r7, #0
	muls r1, r2, r1
	mov r0, r8
	muls r0, r4, r0
	adds r0, r1, r0
	cmp r0, #0
	bge _08042FEE
	adds r0, #0x1f
_08042FEE:
	lsls r0, r0, #0xb
	lsrs r4, r0, #0x10
	mov r1, ip
	muls r1, r2, r1
	mov r0, r8
	muls r0, r5, r0
	adds r0, r1, r0
	cmp r0, #0
	bge _08043002
	adds r0, #0x1f
_08043002:
	lsls r0, r0, #0xb
	b _08043068
	.align 2, 0
_08043008: .4byte gUnknown_20151D0
_0804300C:
	movs r0, #0x20
	mov r4, r8
	subs r3, r0, r4
	ldr r5, [sp, #0xc]
	adds r1, r5, #0
	muls r1, r3, r1
	mov r0, r8
	muls r0, r2, r0
	adds r0, r1, r0
	cmp r0, #0
	bge _08043024
	adds r0, #0x1f
_08043024:
	asrs r1, r0, #5
	ldr r0, _080430B0 @ =gUnknown_2015270
	ldr r2, [r0]
	adds r0, r1, #0
	muls r0, r2, r0
	lsls r0, r0, #0xc
	lsrs r6, r0, #0x10
	ldr r0, [sp, #0x10]
	adds r1, r0, #0
	muls r1, r3, r1
	mov r4, r8
	mov r0, sb
	muls r0, r4, r0
	adds r0, r1, r0
	cmp r0, #0
	bge _08043046
	adds r0, #0x1f
_08043046:
	asrs r0, r0, #5
	muls r0, r2, r0
	lsls r0, r0, #0xc
	lsrs r4, r0, #0x10
	ldr r5, [sp, #0x14]
	adds r1, r5, #0
	muls r1, r3, r1
	mov r3, r8
	mov r0, sl
	muls r0, r3, r0
	adds r0, r1, r0
	cmp r0, #0
	bge _08043062
	adds r0, #0x1f
_08043062:
	asrs r0, r0, #5
	muls r0, r2, r0
	lsls r0, r0, #0xc
_08043068:
	lsrs r1, r0, #0x10
	lsls r0, r4, #5
	adds r0, r6, r0
	lsls r1, r1, #0xa
	adds r0, r0, r1
	ldr r4, [sp]
	strh r0, [r4]
	ldr r5, [sp, #4]
	adds r5, #2
	str r5, [sp, #4]
	ldr r0, [sp, #8]
	adds r0, #2
	str r0, [sp, #8]
	adds r4, #2
	str r4, [sp]
	ldr r1, [sp, #0x18]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080430B4 @ =0x000001FF
	cmp r0, r3
	bgt _0804309A
	b _08042F72
_0804309A:
	movs r0, #1
	ldr r4, _080430B8 @ =gUnknown_2017818
	strb r0, [r4]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080430B0: .4byte gUnknown_2015270
_080430B4: .4byte 0x000001FF
_080430B8: .4byte gUnknown_2017818
	thumb_func_end sub_08042F58

	thumb_func_start sub_080430BC
sub_080430BC: @ 0x080430BC
	push {r4, r5, r6, lr}
	ldr r0, _08043100 @ =0x04000130
	ldrh r1, [r0]
	mvns r1, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r4, _08043104 @ =gUnknown_201781C
	ldr r2, _08043108 @ =gUnknown_2017814
	ldrh r3, [r2]
	adds r0, r1, #0
	bics r0, r3
	strh r0, [r4]
	strh r1, [r2]
	ldr r0, _0804310C @ =gUnknown_2017810
	adds r5, r2, #0
	adds r6, r0, #0
	ldr r3, _08043110 @ =gUnknown_2017820
	ldrh r0, [r6]
	cmp r1, r0
	bne _080430EA
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
_080430EA:
	ldrh r0, [r3]
	cmp r0, #0xf
	bne _08043118
	ldr r2, _08043114 @ =gUnknown_2017824
	ldrh r0, [r4]
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	strh r0, [r3]
	b _0804311E
	.align 2, 0
_08043100: .4byte 0x04000130
_08043104: .4byte gUnknown_201781C
_08043108: .4byte gUnknown_2017814
_0804310C: .4byte gUnknown_2017810
_08043110: .4byte gUnknown_2017820
_08043114: .4byte gUnknown_2017824
_08043118:
	ldr r1, _08043130 @ =gUnknown_2017824
	ldrh r0, [r4]
	strh r0, [r1]
_0804311E:
	ldrh r0, [r5]
	cmp r0, #0
	bne _08043126
	strh r0, [r3]
_08043126:
	ldrh r0, [r5]
	strh r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08043130: .4byte gUnknown_2017824
	thumb_func_end sub_080430BC

	thumb_func_start sub_08043134
sub_08043134: @ 0x08043134
	ldr r1, _08043200 @ =0x040000D4
	ldr r0, _08043204 @ =gUnknown_83B5608
	str r0, [r1]
	ldr r0, _08043208 @ =gUnknown_2015220
	str r0, [r1, #4]
	ldr r0, _0804320C @ =0x8400000E
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08043210 @ =gUnknown_2015284
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08043214 @ =gUnknown_2015290
	strb r1, [r0]
	ldr r1, _08043218 @ =gUnknown_20162E8
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0804321C @ =gUnknown_2015264
	strh r0, [r1]
	ldr r1, _08043220 @ =gUnknown_2015268
	strh r0, [r1]
	ldr r1, _08043224 @ =gUnknown_2015EB4
	strh r0, [r1]
	ldr r1, _08043228 @ =gUnknown_2015210
	strh r0, [r1]
	ldr r1, _0804322C @ =gUnknown_2017400
	strh r0, [r1]
	ldr r1, _08043230 @ =gUnknown_201526C
	strh r0, [r1]
	ldr r1, _08043234 @ =gUnknown_2015EB0
	strh r0, [r1]
	ldr r1, _08043238 @ =gUnknown_20162DC
	strh r0, [r1]
	ldr r1, _0804323C @ =gUnknown_2015EB8
	strh r0, [r1]
	ldr r1, _08043240 @ =gUnknown_2015204
	strh r0, [r1]
	ldr r1, _08043244 @ =gUnknown_20162E4
	strh r0, [r1]
	ldr r1, _08043248 @ =gUnknown_20151FC
	strh r0, [r1]
	ldr r1, _0804324C @ =gUnknown_2015278
	strh r0, [r1]
	ldr r1, _08043250 @ =gUnknown_2015258
	strh r0, [r1]
	ldr r1, _08043254 @ =gUnknown_20162D8
	strh r0, [r1]
	ldr r1, _08043258 @ =gUnknown_2015EBC
	strh r0, [r1]
	ldr r1, _0804325C @ =gUnknown_2015ECC
	strh r0, [r1]
	ldr r1, _08043260 @ =gUnknown_2015208
	strh r0, [r1]
	ldr r1, _08043264 @ =gUnknown_2015EC4
	strh r0, [r1]
	ldr r1, _08043268 @ =gUnknown_2015EC8
	strh r0, [r1]
	ldr r1, _0804326C @ =gUnknown_20151F4
	strh r0, [r1]
	ldr r1, _08043270 @ =gUnknown_20151F8
	strh r0, [r1]
	ldr r1, _08043274 @ =gUnknown_20162D4
	strh r0, [r1]
	ldr r1, _08043278 @ =gUnknown_20162D0
	strh r0, [r1]
	ldr r1, _0804327C @ =gUnknown_20162F0
	strh r0, [r1]
	ldr r1, _08043280 @ =gUnknown_2015EC0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r3, #0
	strh r2, [r1]
	ldr r1, _08043284 @ =gUnknown_20156A8
	strh r0, [r1]
	ldr r1, _08043288 @ =gUnknown_2015200
	strh r0, [r1]
	ldr r1, _0804328C @ =gUnknown_20151F0
	strh r2, [r1]
	ldr r1, _08043290 @ =gUnknown_20162EC
	strh r0, [r1]
	ldr r1, _08043294 @ =gUnknown_20156A4
	strh r0, [r1]
	ldr r1, _08043298 @ =gUnknown_20156A0
	strh r0, [r1]
	ldr r1, _0804329C @ =gUnknown_201525C
	strh r0, [r1]
	ldr r1, _080432A0 @ =gUnknown_2015218
	strh r2, [r1]
	ldr r1, _080432A4 @ =gUnknown_20162E0
	strh r0, [r1]
	ldr r1, _080432A8 @ =gUnknown_201527C
	strh r0, [r1]
	ldr r1, _080432AC @ =gUnknown_2015214
	strh r2, [r1]
	ldr r1, _080432B0 @ =gUnknown_2015280
	strh r0, [r1]
	ldr r1, _080432B4 @ =gUnknown_2015274
	strh r0, [r1]
	ldr r1, _080432B8 @ =gUnknown_20151C0
	strh r0, [r1]
	ldr r1, _080432BC @ =gUnknown_2015260
	strh r0, [r1]
	bx lr
	.align 2, 0
_08043200: .4byte 0x040000D4
_08043204: .4byte gUnknown_83B5608
_08043208: .4byte gUnknown_2015220
_0804320C: .4byte 0x8400000E
_08043210: .4byte gUnknown_2015284
_08043214: .4byte gUnknown_2015290
_08043218: .4byte gUnknown_20162E8
_0804321C: .4byte gUnknown_2015264
_08043220: .4byte gUnknown_2015268
_08043224: .4byte gUnknown_2015EB4
_08043228: .4byte gUnknown_2015210
_0804322C: .4byte gUnknown_2017400
_08043230: .4byte gUnknown_201526C
_08043234: .4byte gUnknown_2015EB0
_08043238: .4byte gUnknown_20162DC
_0804323C: .4byte gUnknown_2015EB8
_08043240: .4byte gUnknown_2015204
_08043244: .4byte gUnknown_20162E4
_08043248: .4byte gUnknown_20151FC
_0804324C: .4byte gUnknown_2015278
_08043250: .4byte gUnknown_2015258
_08043254: .4byte gUnknown_20162D8
_08043258: .4byte gUnknown_2015EBC
_0804325C: .4byte gUnknown_2015ECC
_08043260: .4byte gUnknown_2015208
_08043264: .4byte gUnknown_2015EC4
_08043268: .4byte gUnknown_2015EC8
_0804326C: .4byte gUnknown_20151F4
_08043270: .4byte gUnknown_20151F8
_08043274: .4byte gUnknown_20162D4
_08043278: .4byte gUnknown_20162D0
_0804327C: .4byte gUnknown_20162F0
_08043280: .4byte gUnknown_2015EC0
_08043284: .4byte gUnknown_20156A8
_08043288: .4byte gUnknown_2015200
_0804328C: .4byte gUnknown_20151F0
_08043290: .4byte gUnknown_20162EC
_08043294: .4byte gUnknown_20156A4
_08043298: .4byte gUnknown_20156A0
_0804329C: .4byte gUnknown_201525C
_080432A0: .4byte gUnknown_2015218
_080432A4: .4byte gUnknown_20162E0
_080432A8: .4byte gUnknown_201527C
_080432AC: .4byte gUnknown_2015214
_080432B0: .4byte gUnknown_2015280
_080432B4: .4byte gUnknown_2015274
_080432B8: .4byte gUnknown_20151C0
_080432BC: .4byte gUnknown_2015260
	thumb_func_end sub_08043134

	thumb_func_start sub_080432C0
sub_080432C0: @ 0x080432C0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _08043414 @ =gUnknown_20162E8
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #6
	ldr r0, _08043418 @ =gUnknown_2015264
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #0x46
	ldr r0, _0804341C @ =gUnknown_2015268
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #4
	ldr r0, _08043420 @ =gUnknown_2015EB4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08043424 @ =gUnknown_2015210
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08043428 @ =gUnknown_2017400
	ldrh r0, [r0]
	strh r0, [r1]
	subs r1, #0x14
	ldr r0, _0804342C @ =gUnknown_201526C
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08043430 @ =gUnknown_2015EB0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08043434 @ =gUnknown_20162DC
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08043438 @ =gUnknown_2015EB8
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0804343C @ =gUnknown_2015204
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #1
	ldr r0, _08043440 @ =gUnknown_20162E4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #1
	ldr r0, _08043444 @ =gUnknown_20151FC
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #1
	ldr r0, _08043448 @ =gUnknown_2015278
	ldrh r0, [r0]
	strh r0, [r1]
	subs r1, #0x43
	ldr r0, _0804344C @ =gUnknown_2015258
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08043450 @ =gUnknown_20162D8
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08043454 @ =gUnknown_2015EBC
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08043458 @ =gUnknown_2015ECC
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0804345C @ =gUnknown_2015208
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08043460 @ =gUnknown_2015EC4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08043464 @ =gUnknown_2015EC8
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08043468 @ =gUnknown_20151F4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0804346C @ =gUnknown_20151F8
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08043470 @ =gUnknown_20162D4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08043474 @ =gUnknown_20162D0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08043478 @ =gUnknown_20162F0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0804347C @ =gUnknown_2015EC0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08043480 @ =gUnknown_20156A8
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08043484 @ =gUnknown_2015200
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08043488 @ =gUnknown_20151F0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0804348C @ =gUnknown_20162EC
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08043490 @ =gUnknown_20156A4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08043494 @ =gUnknown_20156A0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08043498 @ =gUnknown_201525C
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0804349C @ =gUnknown_2015218
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080434A0 @ =gUnknown_20162E0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080434A4 @ =gUnknown_201527C
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080434A8 @ =gUnknown_2015214
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080434AC @ =gUnknown_2015280
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080434B0 @ =gUnknown_2015274
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080434B4 @ =gUnknown_20151C0
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080434B8 @ =gUnknown_2015260
	ldrh r0, [r0]
	strh r0, [r1]
	bx lr
	.align 2, 0
_08043414: .4byte gUnknown_20162E8
_08043418: .4byte gUnknown_2015264
_0804341C: .4byte gUnknown_2015268
_08043420: .4byte gUnknown_2015EB4
_08043424: .4byte gUnknown_2015210
_08043428: .4byte gUnknown_2017400
_0804342C: .4byte gUnknown_201526C
_08043430: .4byte gUnknown_2015EB0
_08043434: .4byte gUnknown_20162DC
_08043438: .4byte gUnknown_2015EB8
_0804343C: .4byte gUnknown_2015204
_08043440: .4byte gUnknown_20162E4
_08043444: .4byte gUnknown_20151FC
_08043448: .4byte gUnknown_2015278
_0804344C: .4byte gUnknown_2015258
_08043450: .4byte gUnknown_20162D8
_08043454: .4byte gUnknown_2015EBC
_08043458: .4byte gUnknown_2015ECC
_0804345C: .4byte gUnknown_2015208
_08043460: .4byte gUnknown_2015EC4
_08043464: .4byte gUnknown_2015EC8
_08043468: .4byte gUnknown_20151F4
_0804346C: .4byte gUnknown_20151F8
_08043470: .4byte gUnknown_20162D4
_08043474: .4byte gUnknown_20162D0
_08043478: .4byte gUnknown_20162F0
_0804347C: .4byte gUnknown_2015EC0
_08043480: .4byte gUnknown_20156A8
_08043484: .4byte gUnknown_2015200
_08043488: .4byte gUnknown_20151F0
_0804348C: .4byte gUnknown_20162EC
_08043490: .4byte gUnknown_20156A4
_08043494: .4byte gUnknown_20156A0
_08043498: .4byte gUnknown_201525C
_0804349C: .4byte gUnknown_2015218
_080434A0: .4byte gUnknown_20162E0
_080434A4: .4byte gUnknown_201527C
_080434A8: .4byte gUnknown_2015214
_080434AC: .4byte gUnknown_2015280
_080434B0: .4byte gUnknown_2015274
_080434B4: .4byte gUnknown_20151C0
_080434B8: .4byte gUnknown_2015260
	thumb_func_end sub_080432C0

	thumb_func_start sub_080434BC
sub_080434BC: @ 0x080434BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r3, [sp, #4]
	ldr r3, [sp, #0x28]
	ldr r4, [sp, #0x2c]
	lsls r0, r0, #0x10
	mov r8, r0
	lsrs r6, r0, #0x10
	adds r7, r6, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _08043600 @ =gUnknown_201518C
	ldrh r0, [r1]
	cmp r0, #0x80
	beq _080435EE
	lsls r0, r0, #3
	ldr r1, _08043604 @ =gUnknown_2015ED0
	adds r5, r0, r1
	lsls r0, r6, #5
	adds r0, r0, r1
	mov sb, r0
	mov r2, ip
	lsls r3, r2, #0x10
	ldrh r2, [r5, #6]
	ldr r6, [sp, #4]
	ldr r0, [r6]
	ldr r1, [r6, #4]
	str r0, [r5]
	str r1, [r5, #4]
	strh r2, [r5, #6]
	ldrh r2, [r5, #2]
	lsls r0, r2, #0x17
	lsrs r1, r0, #0x17
	mov r6, sl
	lsls r0, r6, #0x10
	asrs r6, r0, #0x10
	adds r0, r6, #0
	cmp r6, #0
	bge _08043526
	rsbs r0, r6, #0
_08043526:
	muls r0, r1, r0
	cmp r0, #0
	bge _0804352E
	adds r0, #0x7f
_0804352E:
	asrs r1, r0, #7
	asrs r0, r3, #0x10
	adds r1, r1, r0
	ldr r3, _08043608 @ =0x000001FF
	adds r0, r3, #0
	ands r1, r0
	ldr r0, _0804360C @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #2]
	ldrb r1, [r5]
	lsls r4, r4, #0x10
	mov sl, r4
	asrs r0, r4, #0x10
	cmp r0, #0
	bge _08043550
	negs r0, r0
_08043550:
	muls r0, r1, r0
	cmp r0, #0
	bge _08043558
	adds r0, #0x7f
_08043558:
	asrs r0, r0, #7
	ldr r1, [sp]
	adds r0, r1, r0
	strb r0, [r5]
	ldrb r0, [r5, #1]
	movs r1, #3
	orrs r0, r1
	strb r0, [r5, #1]
	movs r0, #7
	ands r7, r0
	lsls r2, r7, #1
	ldrb r1, [r5, #3]
	subs r0, #0x16
	ands r0, r1
	orrs r0, r2
	mov r2, r8
	lsrs r1, r2, #0x13
	movs r3, #1
	ands r1, r3
	lsls r1, r1, #4
	movs r2, #0x11
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	mov r2, r8
	lsrs r1, r2, #0x14
	ands r1, r3
	lsls r1, r1, #5
	movs r2, #0x21
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #3]
	ldr r4, _08043610 @ =gUnknown_83B5640
	adds r5, r4, #0
	adds r5, #0x80
	movs r3, #0
	ldrsh r0, [r5, r3]
	lsls r0, r0, #7
	adds r1, r6, #0
	bl __divsi3
	mov r1, sb
	strh r0, [r1, #6]
	movs r2, #0
	ldrsh r0, [r4, r2]
	negs r0, r0
	lsls r0, r0, #7
	adds r1, r6, #0
	bl __divsi3
	mov r3, sb
	strh r0, [r3, #0xe]
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #7
	mov r1, sl
	asrs r4, r1, #0x10
	adds r1, r4, #0
	bl __divsi3
	mov r2, sb
	strh r0, [r2, #0x16]
	movs r3, #0
	ldrsh r0, [r5, r3]
	lsls r0, r0, #7
	adds r1, r4, #0
	bl __divsi3
	mov r6, sb
	strh r0, [r6, #0x1e]
	ldr r1, _08043600 @ =gUnknown_201518C
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_080435EE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043600: .4byte gUnknown_201518C
_08043604: .4byte gUnknown_2015ED0
_08043608: .4byte 0x000001FF
_0804360C: .4byte 0xFFFFFE00
_08043610: .4byte gUnknown_83B5640
	thumb_func_end sub_080434BC

	thumb_func_start sub_08043614
sub_08043614: @ 0x08043614
	push {r4, r5, lr}
	ldr r1, _0804364C @ =gUnknown_201528C
	movs r0, #0
	strh r0, [r1]
	adds r4, r1, #0
	ldr r5, _08043650 @ =gUnknown_2015288
_08043620:
	ldrh r3, [r4]
	ldr r0, _08043654 @ =gUnknown_20152A0
	ldr r1, _08043658 @ =gUnknown_2017410
	ldr r2, _0804365C @ =gUnknown_2016300
	bl sub_08042F58
	bl sub_080438FC
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _08043620
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0804364C: .4byte gUnknown_201528C
_08043650: .4byte gUnknown_2015288
_08043654: .4byte gUnknown_20152A0
_08043658: .4byte gUnknown_2017410
_0804365C: .4byte gUnknown_2016300
	thumb_func_end sub_08043614

	thumb_func_start sub_08043660
sub_08043660: @ 0x08043660
	push {lr}
	bl sub_080436D4
	bl sub_08043614
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08043660

	thumb_func_start sub_08043670
sub_08043670: @ 0x08043670
	push {r4, r5, lr}
	ldr r1, _080436A4 @ =gUnknown_201528C
	movs r0, #0x20
	strh r0, [r1]
	adds r4, r1, #0
	ldr r5, _080436A8 @ =gUnknown_2015288
_0804367C:
	ldrh r3, [r4]
	ldr r0, _080436AC @ =gUnknown_20152A0
	ldr r1, _080436B0 @ =gUnknown_2017410
	ldr r2, _080436B4 @ =gUnknown_2016300
	bl sub_08042F58
	bl sub_080438FC
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0804367C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080436A4: .4byte gUnknown_201528C
_080436A8: .4byte gUnknown_2015288
_080436AC: .4byte gUnknown_20152A0
_080436B0: .4byte gUnknown_2017410
_080436B4: .4byte gUnknown_2016300
	thumb_func_end sub_08043670

	thumb_func_start sub_080436B8
sub_080436B8: @ 0x080436B8
	push {lr}
	bl sub_08043670
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080436B8

	thumb_func_start sub_080436C4
sub_080436C4: @ 0x080436C4
	ldr r0, _080436D0 @ =gUnknown_20162E8
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	bx lr
	.align 2, 0
_080436D0: .4byte gUnknown_20162E8
	thumb_func_end sub_080436C4

	thumb_func_start sub_080436D4
sub_080436D4: @ 0x080436D4
	ldr r2, _080436E8 @ =gUnknown_20162E8
	ldrh r1, [r2]
	ldr r0, _080436EC @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x13
	strh r0, [r1]
	bx lr
	.align 2, 0
_080436E8: .4byte gUnknown_20162E8
_080436EC: .4byte 0x0000FF7F
	thumb_func_end sub_080436D4

	thumb_func_start sub_080436F0
sub_080436F0: @ 0x080436F0
	ldr r0, _080436FC @ =gUnknown_2017820
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08043700 @ =gUnknown_2017810
	strh r1, [r0]
	bx lr
	.align 2, 0
_080436FC: .4byte gUnknown_2017820
_08043700: .4byte gUnknown_2017810
	thumb_func_end sub_080436F0

	thumb_func_start sub_08043704
sub_08043704: @ 0x08043704
	ldr r1, _0804370C @ =gUnknown_201518C
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0804370C: .4byte gUnknown_201518C
	thumb_func_end sub_08043704

	thumb_func_start sub_08043710
sub_08043710: @ 0x08043710
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x10
	ldr r5, _08043754 @ =gUnknown_201518C
	ldrh r4, [r5]
	lsls r4, r4, #3
	ldr r3, _08043758 @ =gUnknown_2015ED0
	adds r4, r4, r3
	ldr r3, [r2, #4]
	ldr r2, [r2]
	str r2, [r4]
	str r3, [r4, #4]
	ldrh r3, [r4, #2]
	lsls r2, r3, #0x17
	lsrs r2, r2, #0x17
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r2, r0
	ldr r6, _0804375C @ =0x000001FF
	adds r0, r6, #0
	ands r2, r0
	ldr r0, _08043760 @ =0xFFFFFE00
	ands r0, r3
	orrs r0, r2
	strh r0, [r4, #2]
	lsrs r1, r1, #0x10
	ldrb r0, [r4]
	adds r1, r1, r0
	strb r1, [r4]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08043754: .4byte gUnknown_201518C
_08043758: .4byte gUnknown_2015ED0
_0804375C: .4byte 0x000001FF
_08043760: .4byte 0xFFFFFE00
	thumb_func_end sub_08043710

	thumb_func_start sub_08043764
sub_08043764: @ 0x08043764
	push {r4, r5, r6, lr}
	movs r0, #0
	ldr r5, _08043794 @ =gUnknown_2015ED0
	movs r6, #4
	negs r6, r6
	movs r4, #2
_08043770:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r2, r1, #3
	adds r2, r2, r5
	ldrb r3, [r2, #1]
	adds r0, r6, #0
	ands r0, r3
	orrs r0, r4
	strb r0, [r2, #1]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x7f
	ble _08043770
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08043794: .4byte gUnknown_2015ED0
	thumb_func_end sub_08043764

	thumb_func_start sub_08043798
sub_08043798: @ 0x08043798
	push {r4, r5, r6, lr}
	ldr r0, _080437D0 @ =gUnknown_201518C
	ldrh r0, [r0]
	lsls r3, r0, #0x10
	asrs r0, r3, #0x10
	cmp r0, #0x7f
	bgt _080437C8
	ldr r5, _080437D4 @ =gUnknown_2015ED0
	movs r6, #4
	negs r6, r6
	movs r4, #2
_080437AE:
	asrs r3, r3, #0x10
	lsls r1, r3, #3
	adds r1, r1, r5
	ldrb r2, [r1, #1]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r4
	strb r0, [r1, #1]
	adds r3, #1
	lsls r3, r3, #0x10
	asrs r0, r3, #0x10
	cmp r0, #0x7f
	ble _080437AE
_080437C8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080437D0: .4byte gUnknown_201518C
_080437D4: .4byte gUnknown_2015ED0
	thumb_func_end sub_08043798

	thumb_func_start sub_080437D8
sub_080437D8: @ 0x080437D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	movs r4, #0
	ldr r1, [r5]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _0804385A
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov ip, r0
	ldr r6, _08043868 @ =gUnknown_201518C
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	ldr r0, _0804386C @ =gUnknown_2015ED0
	mov sb, r0
	ldr r7, _08043870 @ =0xFFFFFE00
	mov r8, r7
_0804380E:
	lsls r3, r4, #0x10
	asrs r3, r3, #0x10
	lsls r0, r3, #3
	adds r0, r0, r5
	ldrh r2, [r6]
	lsls r2, r2, #3
	add r2, sb
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	ldrh r4, [r2, #2]
	lsls r1, r4, #0x17
	lsrs r1, r1, #0x17
	add r1, sl
	ldr r7, _08043874 @ =0x000001FF
	adds r0, r7, #0
	ands r1, r0
	mov r0, r8
	ands r0, r4
	orrs r0, r1
	strh r0, [r2, #2]
	ldrb r0, [r2]
	add r0, ip
	strb r0, [r2]
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	asrs r3, r3, #0xd
	adds r3, r3, r5
	ldr r1, [r3]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _0804380E
_0804385A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08043868: .4byte gUnknown_201518C
_0804386C: .4byte gUnknown_2015ED0
_08043870: .4byte 0xFFFFFE00
_08043874: .4byte 0x000001FF
	thumb_func_end sub_080437D8

	thumb_func_start sub_08043878
sub_08043878: @ 0x08043878
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r3, #0
	ldr r3, [sp, #0x28]
	ldr r4, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r2, #0
	ldr r1, [r5]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _080438EA
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	lsls r7, r7, #0x10
	mov r8, r7
	lsls r7, r6, #0x10
	lsls r0, r4, #0x10
	asrs r6, r0, #0x10
_080438BC:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r3, r4, #3
	adds r3, r5, r3
	mov r0, sb
	str r0, [sp]
	str r6, [sp, #4]
	mov r0, sl
	mov r2, r8
	asrs r1, r2, #0x10
	asrs r2, r7, #0x10
	bl sub_080434BC
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0xd
	adds r4, r4, r5
	ldr r1, [r4]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _080438BC
_080438EA:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08043878

	thumb_func_start sub_080438FC
sub_080438FC: @ 0x080438FC
	push {r4, lr}
	ldr r4, _08043914 @ =gUnknown_2015290
	movs r0, #1
	strb r0, [r4]
	bl VBlankIntrWait
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08043914: .4byte gUnknown_2015290
	thumb_func_end sub_080438FC

	thumb_func_start sub_08043918
sub_08043918: @ 0x08043918
	push {lr}
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	blt _0804393C
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	subs r0, r1, r0
	ldr r1, _08043938 @ =gUnknown_83B5640
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	b _0804395C
	.align 2, 0
_08043938: .4byte gUnknown_83B5640
_0804393C:
	negs r1, r1
	adds r0, r1, #0
	cmp r1, #0
	bge _08043946
	adds r0, #0xff
_08043946:
	asrs r0, r0, #8
	lsls r0, r0, #8
	subs r0, r1, r0
	ldr r1, _08043960 @ =gUnknown_83B5640
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r0, [r0]
	negs r0, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
_0804395C:
	pop {r1}
	bx r1
	.align 2, 0
_08043960: .4byte gUnknown_83B5640
	thumb_func_end sub_08043918

	thumb_func_start sub_08043964
sub_08043964: @ 0x08043964
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08043970
	negs r0, r0
_08043970:
	adds r1, r0, #0
	adds r1, #0x40
	adds r2, r1, #0
	cmp r1, #0
	bge _0804397E
	ldr r3, _08043994 @ =0x0000013F
	adds r2, r0, r3
_0804397E:
	asrs r0, r2, #8
	lsls r0, r0, #8
	subs r0, r1, r0
	ldr r1, _08043998 @ =gUnknown_83B5640
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	pop {r1}
	bx r1
	.align 2, 0
_08043994: .4byte 0x0000013F
_08043998: .4byte gUnknown_83B5640
	thumb_func_end sub_08043964

	thumb_func_start sub_0804399C
sub_0804399C: @ 0x0804399C
	bx lr
	.align 2, 0
	thumb_func_end sub_0804399C

	thumb_func_start sub_080439A0
sub_080439A0: @ 0x080439A0
	ldr r1, _080439A8 @ =gUnknown_3007FF8
	movs r0, #1
	strh r0, [r1]
	bx lr
	.align 2, 0
_080439A8: .4byte gUnknown_3007FF8
	thumb_func_end sub_080439A0
	.align 2, 0 @ Don't pad with nop
