	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_207_0: @ 0x0834C9A4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x28
	.byte VOL, 0x7F
	.byte N76, Fn2, v092
	.byte W78
	.byte FINE
	.align 2, 0
	.global song_unk_207
song_unk_207: @ 0x0834C9B4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_207_0

