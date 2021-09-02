	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_61_0: @ 0x083484AC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x75
	.byte VOL, 0x7F
	.byte N17, Cn3, v072
	.byte W18
	.byte FINE
	.align 2, 0
	.global song_unk_61
song_unk_61: @ 0x083484BC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_61_0

