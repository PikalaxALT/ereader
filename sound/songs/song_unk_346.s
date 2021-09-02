	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_346_0: @ 0x0834F6D0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x44
	.byte VOL, 0x7F
	.byte N56, Cn3, v120
	.byte W60
	.byte FINE
	.align 2, 0
	.global song_unk_346
song_unk_346: @ 0x0834F6E0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_346_0

