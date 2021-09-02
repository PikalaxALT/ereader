	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_181_0: @ 0x0834C408
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x36
	.byte VOL, 0x7F
	.byte N32, Cn3, v092
	.byte W36
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_181
song_unk_181: @ 0x0834C418 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_181_0

