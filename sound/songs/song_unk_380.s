	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_380_0: @ 0x0834FB6C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x5B
	.byte VOL, 0x7F
	.byte N44, Cn3, v060
	.byte N23, Cn4, v040
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_380
song_unk_380: @ 0x0834FB7C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_380_0

