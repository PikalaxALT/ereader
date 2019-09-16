	.include "asm/macros.inc"
	.include "constants/constants.inc"
	.text
	.syntax unified
	.align 2, 0

	thumb_func_start sub_080443C4
sub_080443C4: @ 0x080443C4
	push {lr}
	bl abort
	.align 2, 0
	thumb_func_end sub_080443C4

	thumb_func_start sub_080443CC
sub_080443CC: @ 0x080443CC
	push {lr}
	ldr r0, _080443D8 @ =gUnknown_8703718
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_080443D8: .4byte gUnknown_8703718
	thumb_func_end sub_080443CC

	thumb_func_start sub_080443DC
sub_080443DC: @ 0x080443DC
	push {r4, lr}
	adds r4, r2, #0
	bl strcmp
	cmp r0, #0
	beq _080443EC
	movs r0, #0
	b _080443EE
_080443EC:
	adds r0, r4, #0
_080443EE:
	pop {r4, pc}
	thumb_func_end sub_080443DC

	thumb_func_start sub_080443F0
sub_080443F0: @ 0x080443F0
	bx lr
	.align 2, 0
	thumb_func_end sub_080443F0

	thumb_func_start sub_080443F4
sub_080443F4: @ 0x080443F4
	push {r4, lr}
	movs r0, #0x18
	bl malloc
	adds r4, r0, #0
	cmp r4, #0
	bne _08044406
	bl sub_080443CC
_08044406:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x18
	bl memset
	adds r0, r4, #0
	adds r0, #0x10
	str r0, [r4, #4]
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end sub_080443F4

	thumb_func_start sub_0804441C
sub_0804441C: @ 0x0804441C
	push {lr}
	ldr r0, _08044428 @ =gUnknown_870371C
	ldr r0, [r0]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08044428: .4byte gUnknown_870371C
	thumb_func_end sub_0804441C

	thumb_func_start sub_0804442C
sub_0804442C: @ 0x0804442C
	push {lr}
	ldr r0, _0804443C @ =gUnknown_870371C
	ldr r0, [r0]
	bl _call_via_r0
	adds r0, #8
	pop {pc}
	.align 2, 0
_0804443C: .4byte gUnknown_870371C
	thumb_func_end sub_0804442C

	thumb_func_start sub_08044440
sub_08044440: @ 0x08044440
	push {lr}
	ldr r1, _08044450 @ =gUnknown_870371C
	ldr r0, _08044454 @ =sub_08044458
	str r0, [r1]
	bl _call_via_r0
	pop {pc}
	.align 2, 0
_08044450: .4byte gUnknown_870371C
_08044454: .4byte sub_08044458
	thumb_func_end sub_08044440

	thumb_func_start sub_08044458
sub_08044458: @ 0x08044458
	push {r4, lr}
	ldr r1, _0804447C @ =gUnknown_2033BC8
	ldr r0, [r1]
	cmp r0, #0
	bne _08044476
	movs r0, #1
	str r0, [r1]
	ldr r4, _08044480 @ =gUnknown_2033BB8
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x10
	bl memset
	ldr r0, _08044484 @ =gUnknown_2033BD0
	str r0, [r4, #4]
_08044476:
	ldr r0, _08044480 @ =gUnknown_2033BB8
	pop {r4, pc}
	.align 2, 0
_0804447C: .4byte gUnknown_2033BC8
_08044480: .4byte gUnknown_2033BB8
_08044484: .4byte gUnknown_2033BD0
	thumb_func_end sub_08044458

	thumb_func_start sub_08044488
sub_08044488: @ 0x08044488
	push {lr}
	ldr r0, _08044498 @ =gUnknown_870371C
	ldr r0, [r0]
	bl _call_via_r0
	adds r0, #4
	pop {pc}
	.align 2, 0
_08044498: .4byte gUnknown_870371C
	thumb_func_end sub_08044488

	thumb_func_start sub_0804449C
sub_0804449C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _080444F4 @ =0xFFFFF9B0
	add sp, r4
	mov r7, sp
	ldr r0, _080444F8 @ =gUnknown_870371C
	ldr r0, [r0]
	bl _call_via_r0
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r1, r1, r7
	str r0, [r1]
	adds r0, #4
	ldr r2, _080444FC @ =0x00000644
	adds r2, r2, r7
	str r0, [r2]
	ldr r3, [r1]
	ldr r1, [r3, #4]
	adds r0, r1, #4
	movs r2, #0xc9
	lsls r2, r2, #3
	adds r2, r2, r7
	str r0, [r2]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0804456C
	ldr r3, _08044500 @ =0x0000064C
	adds r3, r3, r7
	str r7, [r3]
	movs r0, #0
	str r0, [r7, #4]
	str r1, [r7]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08044504 @ =sub_08044508
	str r0, [r1, #4]
	mov r0, sp
	str r0, [r1, #8]
	b _0804450A
	.align 2, 0
_080444F4: .4byte 0xFFFFF9B0
_080444F8: .4byte gUnknown_870371C
_080444FC: .4byte 0x00000644
_08044500: .4byte 0x0000064C
_08044504: .4byte _08044508
_08044508: @ 0x08044508
	b _08044568
_0804450A:
	ldr r1, _08044560 @ =0x0000064C
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r2, _08044564 @ =0x00000644
	adds r2, r2, r7
	ldr r2, [r2]
	str r1, [r2]
	movs r2, #0xc9
	lsls r2, r2, #3
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2]
	cmp r0, #0
	beq _0804454C
_08044526:
	movs r3, #0xc9
	lsls r3, r3, #3
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r1, [r3]
	ldr r2, [r1, #4]
	ldr r0, [r1, #8]
	ldr r1, [r1]
	str r1, [r3]
	movs r1, #2
	bl _call_via_r2
	movs r1, #0xc9
	lsls r1, r1, #3
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1]
	cmp r0, #0
	bne _08044526
_0804454C:
	ldr r2, _08044560 @ =0x0000064C
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2]
	ldr r3, _08044564 @ =0x00000644
	adds r3, r3, r7
	ldr r3, [r3]
	str r0, [r3]
	b _0804456C
	.align 2, 0
_08044560: .4byte 0x0000064C
_08044564: .4byte 0x00000644
_08044568:
	bl sub_080443CC
_0804456C:
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _08044588
	ldr r2, _080445A8 @ =0x00000644
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2]
	ldr r0, [r0]
	cmp r0, #0
	bne _0804458C
_08044588:
	bl sub_080443CC
_0804458C:
	ldr r3, _080445A8 @ =0x00000644
	adds r3, r3, r7
	ldr r3, [r3]
	ldr r1, [r3]
	adds r2, r1, #0
	adds r2, #8
	ldr r0, [r1]
	str r0, [r3]
	ldr r0, [r2, #4]
	ldr r7, [r1, #8]
	ldr r2, [r2, #8]
	mov sp, r2
	mov pc, r0
	.align 2, 0
_080445A8: .4byte 0x00000644
	thumb_func_end sub_0804449C

	thumb_func_start sub_080445AC
sub_080445AC: @ 0x080445AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _080445FC @ =0xFFFFF9B4
	add sp, r4
	mov r7, sp
	ldr r0, _08044600 @ =gUnknown_870371C
	ldr r0, [r0]
	bl _call_via_r0
	adds r1, r0, #4
	movs r2, #0xc8
	lsls r2, r2, #3
	adds r2, r2, r7
	str r1, [r2]
	ldr r1, [r0, #4]
	adds r3, r1, #4
	ldr r0, _08044604 @ =0x00000644
	adds r0, r0, r7
	str r3, [r0]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _08044668
	movs r2, #0xc9
	lsls r2, r2, #3
	adds r2, r2, r7
	str r7, [r2]
	movs r0, #0
	str r0, [r7, #4]
	str r1, [r7]
	adds r1, r7, #0
	adds r1, #8
	str r7, [r7, #8]
	ldr r0, _08044608 @ =sub_0804460C
	str r0, [r1, #4]
	mov r3, sp
	str r3, [r1, #8]
	b _0804460E
	.align 2, 0
_080445FC: .4byte 0xFFFFF9B4
_08044600: .4byte gUnknown_870371C
_08044604: .4byte 0x00000644
_08044608: .4byte _0804460C
_0804460C: @ 0x0804460C
	b _08044664
_0804460E:
	movs r0, #0xc9
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r1, r1, r7
	ldr r1, [r1]
	str r0, [r1]
	b _0804463E
_08044622:
	ldr r2, _08044660 @ =0x00000644
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r1, [r2]
	ldr r2, [r1, #4]
	ldr r0, [r1, #8]
	ldr r1, [r1]
	ldr r3, _08044660 @ =0x00000644
	adds r3, r3, r7
	ldr r3, [r3]
	str r1, [r3]
	movs r1, #2
	bl _call_via_r2
_0804463E:
	ldr r1, _08044660 @ =0x00000644
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1]
	cmp r0, #0
	bne _08044622
	movs r2, #0xc9
	lsls r2, r2, #3
	adds r2, r2, r7
	ldr r2, [r2]
	ldr r0, [r2]
	movs r3, #0xc8
	lsls r3, r3, #3
	adds r3, r3, r7
	ldr r3, [r3]
	str r0, [r3]
	b _08044668
	.align 2, 0
_08044660: .4byte 0x00000644
_08044664:
	bl sub_080443CC
_08044668:
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r1, r1, r7
	ldr r1, [r1]
	ldr r0, [r1]
	ldr r0, [r0]
	str r0, [r1]
	bl sub_0804449C
	.align 2, 0
	thumb_func_end sub_080445AC

	thumb_func_start sub_0804467C
sub_0804467C: @ 0x0804467C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0804442C
	ldr r0, [r0]
	ldr r3, [r0]
	cmp r3, #0
	bne _08044690
	movs r0, #0
	b _0804469E
_08044690:
	adds r1, r4, #0
	movs r2, #0
	bl _call_via_r3
	cmp r0, #0
	beq _0804469E
	movs r0, #1
_0804469E:
	pop {r4, pc}
	thumb_func_end sub_0804467C

	.align 2, 0 @ Don't pad with nop
