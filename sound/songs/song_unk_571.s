	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_571_0: @ 0x08350D20
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte N05, En2, v092
	.byte W06
	.byte FINE
song_unk_571_1: @ 0x08350D2D
	.byte KEYSH, 0x00
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte W06
	.byte N02, Gn2, v060
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_571
song_unk_571: @ 0x08350D3C (song header)
	.byte 2, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_571_0
	.4byte song_unk_571_1

