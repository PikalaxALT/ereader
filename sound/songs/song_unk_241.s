	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_241_0: @ 0x0834DB88
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x4C
	.byte VOL, 0x7F
	.byte N17, Gn2, v100
	.byte W18
	.byte FINE
	.align 2, 0
	.global song_unk_241
song_unk_241: @ 0x0834DB98 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_241_0

