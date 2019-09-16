	.include "asm/macros.inc"
	.include "constants/constants.inc"
	.text
	.syntax unified
	.align 2, 0

	thumb_func_start sub_08044770
sub_08044770: @ 0x08044770
	push {lr}
	bl sub_080443CC
	pop {pc}
	thumb_func_end sub_08044770

	.align 2, 0 @ Don't pad with nop
