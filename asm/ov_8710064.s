	.include "asm/macros.inc"
	.text
	.align 2, 0
	.incbin "baserom.gba", 0x710064, 0x41c0
	.align 2, 0
