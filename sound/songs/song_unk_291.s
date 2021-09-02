	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_291_0: @ 0x0834F1E4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x0D
	.byte VOL, 0x7F
	.byte N44, Cn3, v127
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_291
song_unk_291: @ 0x0834F1F4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D9F4 @ voice group
	.4byte song_unk_291_0

