	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_480_0: @ 0x08350518
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x73
	.byte VOL, 0x7F
	.byte W01
	.byte N05, Gn5, v060
	.byte N05, Gn6
	.byte W06
	.byte FINE
song_unk_480_1: @ 0x08350528
	.byte KEYSH, 0x00
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte N01, Ds2, v080
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_480
song_unk_480: @ 0x08350534 (song header)
	.byte 2, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_480_0
	.4byte song_unk_480_1

