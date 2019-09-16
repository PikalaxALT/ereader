	.include "asm/macros.inc"
	.include "constants/constants.inc"
	.text
	.syntax unified
	.align 2, 0

	thumb_func_start sub_0804A5B8
sub_0804A5B8: @ 0x0804A5B8
	push {r4, lr}
	ldr r4, _0804A5DC @ =gUnknown_2033D60
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A5D2
	bl sub_0804A5E8
	ldr r1, _0804A5E0 @ =gUnknown_804ACCC
	ldr r2, _0804A5E4 @ =gUnknown_804ACD4
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A5D2:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A5DC: .4byte gUnknown_2033D60
_0804A5E0: .4byte gUnknown_804ACCC
_0804A5E4: .4byte gUnknown_804ACD4
	thumb_func_end sub_0804A5B8

	thumb_func_start sub_0804A5E8
sub_0804A5E8: @ 0x0804A5E8
	push {r4, lr}
	ldr r4, _0804A60C @ =gUnknown_2033D40
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A602
	bl sub_0804A618
	ldr r1, _0804A610 @ =gUnknown_804ACDC
	ldr r2, _0804A614 @ =gUnknown_804ACE4
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A602:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A60C: .4byte gUnknown_2033D40
_0804A610: .4byte gUnknown_804ACDC
_0804A614: .4byte gUnknown_804ACE4
	thumb_func_end sub_0804A5E8

	thumb_func_start sub_0804A618
sub_0804A618: @ 0x0804A618
	push {r4, lr}
	ldr r4, _0804A634 @ =gUnknown_2033D50
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A62A
	ldr r1, _0804A638 @ =gUnknown_804ACEC
	adds r0, r4, #0
	bl sub_0804635C
_0804A62A:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A634: .4byte gUnknown_2033D50
_0804A638: .4byte gUnknown_804ACEC
	thumb_func_end sub_0804A618

	thumb_func_start sub_0804A63C
sub_0804A63C: @ 0x0804A63C
	push {r4, lr}
	ldr r4, _0804A660 @ =gUnknown_2033D70
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A656
	bl sub_0804A618
	ldr r1, _0804A664 @ =gUnknown_804ACF4
	ldr r2, _0804A668 @ =gUnknown_804ACFC
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A656:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A660: .4byte gUnknown_2033D70
_0804A664: .4byte gUnknown_804ACF4
_0804A668: .4byte gUnknown_804ACFC
	thumb_func_end sub_0804A63C

	thumb_func_start sub_0804A66C
sub_0804A66C: @ 0x0804A66C
	push {r4, lr}
	ldr r4, _0804A690 @ =gUnknown_2033D80
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A686
	bl sub_0804A5B8
	ldr r1, _0804A694 @ =gUnknown_804AD2C
	ldr r2, _0804A698 @ =gUnknown_804AD34
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A686:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A690: .4byte gUnknown_2033D80
_0804A694: .4byte gUnknown_804AD2C
_0804A698: .4byte gUnknown_804AD34
	thumb_func_end sub_0804A66C

	thumb_func_start sub_0804A69C
sub_0804A69C: @ 0x0804A69C
	push {r4, lr}
	ldr r4, _0804A6C0 @ =gUnknown_2033D90
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A6B6
	bl sub_0804A66C
	ldr r1, _0804A6C4 @ =gUnknown_804AD8C
	ldr r2, _0804A6C8 @ =gUnknown_804AD98
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A6B6:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A6C0: .4byte gUnknown_2033D90
_0804A6C4: .4byte gUnknown_804AD8C
_0804A6C8: .4byte gUnknown_804AD98
	thumb_func_end sub_0804A69C

	thumb_func_start sub_0804A6CC
sub_0804A6CC: @ 0x0804A6CC
	push {r4, lr}
	ldr r4, _0804A6F0 @ =gUnknown_2027310
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A6E6
	bl sub_0804A63C
	ldr r1, _0804A6F4 @ =gUnknown_804ADA0
	ldr r2, _0804A6F8 @ =gUnknown_804ADA8
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A6E6:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A6F0: .4byte gUnknown_2027310
_0804A6F4: .4byte gUnknown_804ADA0
_0804A6F8: .4byte gUnknown_804ADA8
	thumb_func_end sub_0804A6CC

	thumb_func_start sub_0804A6FC
sub_0804A6FC: @ 0x0804A6FC
	push {r4, lr}
	ldr r4, _0804A720 @ =gUnknown_2033DC0
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A716
	bl sub_0804A78C
	ldr r1, _0804A724 @ =gUnknown_804B748
	ldr r2, _0804A728 @ =gUnknown_804B758
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A716:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A720: .4byte gUnknown_2033DC0
_0804A724: .4byte gUnknown_804B748
_0804A728: .4byte gUnknown_804B758
	thumb_func_end sub_0804A6FC

	thumb_func_start sub_0804A72C
sub_0804A72C: @ 0x0804A72C
	push {r4, lr}
	ldr r4, _0804A750 @ =gUnknown_2033DA0
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A746
	bl sub_0804A78C
	ldr r1, _0804A754 @ =gUnknown_804B760
	ldr r2, _0804A758 @ =gUnknown_804B758
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A746:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A750: .4byte gUnknown_2033DA0
_0804A754: .4byte gUnknown_804B760
_0804A758: .4byte gUnknown_804B758
	thumb_func_end sub_0804A72C

	thumb_func_start sub_0804A75C
sub_0804A75C: @ 0x0804A75C
	push {r4, lr}
	ldr r4, _0804A780 @ =gUnknown_2033DB0
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A776
	bl sub_0804A78C
	ldr r1, _0804A784 @ =gUnknown_804B774
	ldr r2, _0804A788 @ =gUnknown_804B758
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A776:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A780: .4byte gUnknown_2033DB0
_0804A784: .4byte gUnknown_804B774
_0804A788: .4byte gUnknown_804B758
	thumb_func_end sub_0804A75C

	thumb_func_start sub_0804A78C
sub_0804A78C: @ 0x0804A78C
	push {r4, lr}
	ldr r4, _0804A7B0 @ =gUnknown_2022300
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A7A6
	bl sub_0804A618
	ldr r1, _0804A7B4 @ =gUnknown_804B788
	ldr r2, _0804A7B8 @ =gUnknown_804B798
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A7A6:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A7B0: .4byte gUnknown_2022300
_0804A7B4: .4byte gUnknown_804B788
_0804A7B8: .4byte gUnknown_804B798
	thumb_func_end sub_0804A78C

	thumb_func_start sub_0804A7BC
sub_0804A7BC: @ 0x0804A7BC
	push {r4, lr}
	ldr r4, _0804A7E0 @ =gUnknown_2024AE0
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A7D6
	bl sub_0804A81C
	ldr r1, _0804A7E4 @ =gUnknown_804B8B0
	ldr r2, _0804A7E8 @ =gUnknown_804B8C0
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A7D6:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A7E0: .4byte gUnknown_2024AE0
_0804A7E4: .4byte gUnknown_804B8B0
_0804A7E8: .4byte gUnknown_804B8C0
	thumb_func_end sub_0804A7BC

	thumb_func_start sub_0804A7EC
sub_0804A7EC: @ 0x0804A7EC
	push {r4, lr}
	ldr r4, _0804A810 @ =gUnknown_2024AD0
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A806
	bl sub_0804A81C
	ldr r1, _0804A814 @ =gUnknown_804B8C8
	ldr r2, _0804A818 @ =gUnknown_804B8C0
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A806:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A810: .4byte gUnknown_2024AD0
_0804A814: .4byte gUnknown_804B8C8
_0804A818: .4byte gUnknown_804B8C0
	thumb_func_end sub_0804A7EC

	thumb_func_start sub_0804A81C
sub_0804A81C: @ 0x0804A81C
	push {r4, lr}
	ldr r4, _0804A840 @ =gUnknown_2020040
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A836
	bl sub_0804A618
	ldr r1, _0804A844 @ =gUnknown_804B8D8
	ldr r2, _0804A848 @ =gUnknown_804B8E8
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A836:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A840: .4byte gUnknown_2020040
_0804A844: .4byte gUnknown_804B8D8
_0804A848: .4byte gUnknown_804B8E8
	thumb_func_end sub_0804A81C

	thumb_func_start sub_0804A84C
sub_0804A84C: @ 0x0804A84C
	push {r4, lr}
	ldr r4, _0804A870 @ =gUnknown_2024BB0
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A866
	bl sub_0804A87C
	ldr r1, _0804A874 @ =gUnknown_804B938
	ldr r2, _0804A878 @ =gUnknown_804B948
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A866:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A870: .4byte gUnknown_2024BB0
_0804A874: .4byte gUnknown_804B938
_0804A878: .4byte gUnknown_804B948
	thumb_func_end sub_0804A84C

	thumb_func_start sub_0804A87C
sub_0804A87C: @ 0x0804A87C
	push {r4, lr}
	ldr r4, _0804A8A0 @ =gUnknown_20277F0
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A896
	bl sub_0804A618
	ldr r1, _0804A8A4 @ =gUnknown_804B950
	ldr r2, _0804A8A8 @ =gUnknown_804B960
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A896:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A8A0: .4byte gUnknown_20277F0
_0804A8A4: .4byte gUnknown_804B950
_0804A8A8: .4byte gUnknown_804B960
	thumb_func_end sub_0804A87C

	thumb_func_start sub_0804A8AC
sub_0804A8AC: @ 0x0804A8AC
	push {r4, lr}
	ldr r4, _0804A8D0 @ =gUnknown_2024C30
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A8C6
	bl sub_0804A96C
	ldr r1, _0804A8D4 @ =gUnknown_804B9C0
	ldr r2, _0804A8D8 @ =gUnknown_804B9D0
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A8C6:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A8D0: .4byte gUnknown_2024C30
_0804A8D4: .4byte gUnknown_804B9C0
_0804A8D8: .4byte gUnknown_804B9D0
	thumb_func_end sub_0804A8AC

	thumb_func_start sub_0804A8DC
sub_0804A8DC: @ 0x0804A8DC
	push {r4, lr}
	ldr r4, _0804A900 @ =gUnknown_2024C10
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A8F6
	bl sub_0804A96C
	ldr r1, _0804A904 @ =gUnknown_804B9D8
	ldr r2, _0804A908 @ =gUnknown_804B9D0
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A8F6:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A900: .4byte gUnknown_2024C10
_0804A904: .4byte gUnknown_804B9D8
_0804A908: .4byte gUnknown_804B9D0
	thumb_func_end sub_0804A8DC

	thumb_func_start sub_0804A90C
sub_0804A90C: @ 0x0804A90C
	push {r4, lr}
	ldr r4, _0804A930 @ =gUnknown_2024C20
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A926
	bl sub_0804A96C
	ldr r1, _0804A934 @ =gUnknown_804B9E8
	ldr r2, _0804A938 @ =gUnknown_804B9D0
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A926:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A930: .4byte gUnknown_2024C20
_0804A934: .4byte gUnknown_804B9E8
_0804A938: .4byte gUnknown_804B9D0
	thumb_func_end sub_0804A90C

	thumb_func_start sub_0804A93C
sub_0804A93C: @ 0x0804A93C
	push {r4, lr}
	ldr r4, _0804A960 @ =gUnknown_2024C00
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A956
	bl sub_0804A96C
	ldr r1, _0804A964 @ =gUnknown_804B9F8
	ldr r2, _0804A968 @ =gUnknown_804B9D0
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A956:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A960: .4byte gUnknown_2024C00
_0804A964: .4byte gUnknown_804B9F8
_0804A968: .4byte gUnknown_804B9D0
	thumb_func_end sub_0804A93C

	thumb_func_start sub_0804A96C
sub_0804A96C: @ 0x0804A96C
	push {r4, lr}
	ldr r4, _0804A990 @ =gUnknown_2024BD0
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A986
	bl sub_0804A618
	ldr r1, _0804A994 @ =gUnknown_804BA04
	ldr r2, _0804A998 @ =gUnknown_804BA14
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A986:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A990: .4byte gUnknown_2024BD0
_0804A994: .4byte gUnknown_804BA04
_0804A998: .4byte gUnknown_804BA14
	thumb_func_end sub_0804A96C

	thumb_func_start sub_0804A99C
sub_0804A99C: @ 0x0804A99C
	push {r4, lr}
	ldr r4, _0804A9C0 @ =gUnknown_2033DE0
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A9B6
	bl sub_0804A9FC
	ldr r1, _0804A9C4 @ =gUnknown_804BA7C
	ldr r2, _0804A9C8 @ =gUnknown_804BA88
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A9B6:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A9C0: .4byte gUnknown_2033DE0
_0804A9C4: .4byte gUnknown_804BA7C
_0804A9C8: .4byte gUnknown_804BA88
	thumb_func_end sub_0804A99C

	thumb_func_start sub_0804A9CC
sub_0804A9CC: @ 0x0804A9CC
	push {r4, lr}
	ldr r4, _0804A9F0 @ =gUnknown_2033DD0
	ldr r0, [r4]
	cmp r0, #0
	bne _0804A9E6
	bl sub_0804A9FC
	ldr r1, _0804A9F4 @ =gUnknown_804BA90
	ldr r2, _0804A9F8 @ =gUnknown_804BA88
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804A9E6:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804A9F0: .4byte gUnknown_2033DD0
_0804A9F4: .4byte gUnknown_804BA90
_0804A9F8: .4byte gUnknown_804BA88
	thumb_func_end sub_0804A9CC

	thumb_func_start sub_0804A9FC
sub_0804A9FC: @ 0x0804A9FC
	push {r4, lr}
	ldr r4, _0804AA20 @ =gUnknown_2027360
	ldr r0, [r4]
	cmp r0, #0
	bne _0804AA16
	bl sub_0804A618
	ldr r1, _0804AA24 @ =gUnknown_804BA9C
	ldr r2, _0804AA28 @ =gUnknown_804BAA4
	adds r0, r4, #0
	movs r3, #1
	bl sub_08045FD0
_0804AA16:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0804AA20: .4byte gUnknown_2027360
_0804AA24: .4byte gUnknown_804BA9C
_0804AA28: .4byte gUnknown_804BAA4
	thumb_func_end sub_0804A9FC

	thumb_func_start sub_0804AA2C
sub_0804AA2C: @ 0x0804AA2C
	push {r4, lr}
	ldr r4, _0804AA48 @ =gUnknown_2034AD0
	ldr r0, [r4]
	cmp r0, #0
	bne _0804AA44
	bl sub_0804AA8C
	ldr r1, _0804AA4C @ =gUnknown_83B64D4
	ldr r2, _0804AA50 @ =gUnknown_2034AB0
	adds r0, r4, #0
	bl sub_0804619C
_0804AA44:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0804AA48: .4byte gUnknown_2034AD0
_0804AA4C: .4byte gUnknown_83B64D4
_0804AA50: .4byte gUnknown_2034AB0
	thumb_func_end sub_0804AA2C

	thumb_func_start sub_0804AA54
sub_0804AA54: @ 0x0804AA54
	push {lr}
	bl sub_08045F98
	pop {pc}
	thumb_func_end sub_0804AA54

	thumb_func_start sub_0804AA5C
sub_0804AA5C: @ 0x0804AA5C
	push {r4, lr}
	ldr r4, _0804AA78 @ =gUnknown_2034AC0
	ldr r0, [r4]
	cmp r0, #0
	bne _0804AA74
	bl sub_0804AA8C
	ldr r1, _0804AA7C @ =gUnknown_83B64E8
	ldr r2, _0804AA80 @ =gUnknown_2034AB0
	adds r0, r4, #0
	bl sub_0804619C
_0804AA74:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0804AA78: .4byte gUnknown_2034AC0
_0804AA7C: .4byte gUnknown_83B64E8
_0804AA80: .4byte gUnknown_2034AB0
	thumb_func_end sub_0804AA5C

	thumb_func_start sub_0804AA84
sub_0804AA84: @ 0x0804AA84
	push {lr}
	bl sub_08045F98
	pop {pc}
	thumb_func_end sub_0804AA84

	thumb_func_start sub_0804AA8C
sub_0804AA8C: @ 0x0804AA8C
	push {r4, lr}
	ldr r4, _0804AAA8 @ =gUnknown_2034AB0
	ldr r0, [r4]
	cmp r0, #0
	bne _0804AAA4
	bl sub_0804AB0C
	ldr r1, _0804AAAC @ =gUnknown_83B64FC
	ldr r2, _0804AAB0 @ =gUnknown_2034AA0
	adds r0, r4, #0
	bl sub_0804619C
_0804AAA4:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0804AAA8: .4byte gUnknown_2034AB0
_0804AAAC: .4byte gUnknown_83B64FC
_0804AAB0: .4byte gUnknown_2034AA0
	thumb_func_end sub_0804AA8C

	thumb_func_start sub_0804AAB4
sub_0804AAB4: @ 0x0804AAB4
	push {lr}
	bl sub_08045F98
	pop {pc}
	thumb_func_end sub_0804AAB4

	thumb_func_start sub_0804AABC
sub_0804AABC: @ 0x0804AABC
	push {r4, lr}
	ldr r4, _0804AAD8 @ =gUnknown_2034A80
	ldr r0, [r4]
	cmp r0, #0
	bne _0804AAD4
	bl sub_0804AB54
	ldr r1, _0804AADC @ =gUnknown_83B6510
	ldr r2, _0804AAE0 @ =gUnknown_2034AF0
	adds r0, r4, #0
	bl sub_0804619C
_0804AAD4:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0804AAD8: .4byte gUnknown_2034A80
_0804AADC: .4byte gUnknown_83B6510
_0804AAE0: .4byte gUnknown_2034AF0
	thumb_func_end sub_0804AABC

	thumb_func_start sub_0804AAE4
sub_0804AAE4: @ 0x0804AAE4
	push {r4, lr}
	ldr r4, _0804AB00 @ =gUnknown_2034A90
	ldr r0, [r4]
	cmp r0, #0
	bne _0804AAFC
	bl sub_0804AB54
	ldr r1, _0804AB04 @ =gUnknown_83B6520
	ldr r2, _0804AB08 @ =gUnknown_2034AF0
	adds r0, r4, #0
	bl sub_0804619C
_0804AAFC:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0804AB00: .4byte gUnknown_2034A90
_0804AB04: .4byte gUnknown_83B6520
_0804AB08: .4byte gUnknown_2034AF0
	thumb_func_end sub_0804AAE4

	thumb_func_start sub_0804AB0C
sub_0804AB0C: @ 0x0804AB0C
	push {r4, lr}
	ldr r4, _0804AB24 @ =gUnknown_2034AA0
	ldr r0, [r4]
	cmp r0, #0
	bne _0804AB1E
	ldr r1, _0804AB28 @ =gUnknown_83B652C
	adds r0, r4, #0
	bl sub_0804635C
_0804AB1E:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0804AB24: .4byte gUnknown_2034AA0
_0804AB28: .4byte gUnknown_83B652C
	thumb_func_end sub_0804AB0C

	thumb_func_start sub_0804AB2C
sub_0804AB2C: @ 0x0804AB2C
	push {r4, lr}
	ldr r4, _0804AB48 @ =gUnknown_2034AE0
	ldr r0, [r4]
	cmp r0, #0
	bne _0804AB44
	bl sub_0804AB54
	ldr r1, _0804AB4C @ =gUnknown_83B6538
	ldr r2, _0804AB50 @ =gUnknown_2034AF0
	adds r0, r4, #0
	bl sub_0804619C
_0804AB44:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0804AB48: .4byte gUnknown_2034AE0
_0804AB4C: .4byte gUnknown_83B6538
_0804AB50: .4byte gUnknown_2034AF0
	thumb_func_end sub_0804AB2C

	thumb_func_start sub_0804AB54
sub_0804AB54: @ 0x0804AB54
	push {r4, lr}
	ldr r4, _0804AB6C @ =gUnknown_2034AF0
	ldr r0, [r4]
	cmp r0, #0
	bne _0804AB66
	ldr r1, _0804AB70 @ =gUnknown_83B6548
	adds r0, r4, #0
	bl sub_0804635C
_0804AB66:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
_0804AB6C: .4byte gUnknown_2034AF0
_0804AB70: .4byte gUnknown_83B6548
	.align 2, 0
	thumb_func_end sub_0804AB54
	.align 2, 0 @ Don't pad with nop
