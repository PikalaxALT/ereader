	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_62_0: @ 0x083484C8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x76
	.byte VOL, 0x7F
	.byte N17, Cn3, v088
	.byte W18
	.byte FINE
	.align 2, 0
	.global song_unk_62
song_unk_62: @ 0x083484D8 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_62_0

