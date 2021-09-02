	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_401_0: @ 0x083465E8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x7F
	.byte VOL, 0x7F
	.byte N44, En3, v052
	.byte W24
	.byte VOL, 0x63
	.byte W06
	.byte 0x48
	.byte W06
	.byte 0x2D
	.byte W06
	.byte 0x1B
	.byte W06
	.byte FINE
	.align 2, 0
	.global song_unk_401
song_unk_401: @ 0x08346600 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_401_0

