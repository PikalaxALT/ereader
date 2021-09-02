	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_544_0: @ 0x08350B50
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
	.global song_unk_544
song_unk_544: @ 0x08350B64 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_544_0

