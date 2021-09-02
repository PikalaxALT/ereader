	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_319_0: @ 0x0834F44C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x29
	.byte VOL, 0x7F
	.byte N28, Cn3, v080
	.byte W30
	.byte FINE
	.align 2, 0
	.global song_unk_319
song_unk_319: @ 0x0834F45C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_319_0

