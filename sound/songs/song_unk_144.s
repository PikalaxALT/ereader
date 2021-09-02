	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_144_0: @ 0x0834B0BC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x27
	.byte VOL, 0x7F
	.byte N04, Fn2, v072
	.byte W05
	.byte N05, As2, v052
	.byte W06
	.byte FINE
	.align 2, 0
	.global song_unk_144
song_unk_144: @ 0x0834B0D0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_144_0

