	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_500_0: @ 0x083507B0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte N05, Ds1, v080
	.byte W06
	.byte FINE
song_unk_500_1: @ 0x083507BD
	.byte KEYSH, 0x00
	.byte VOICE, 0x65
	.byte VOL, 0x7F
	.byte W02
	.byte N03, En3, v052
	.byte W04
	.byte FINE
	.align 2, 0
	.global song_unk_500
song_unk_500: @ 0x083507CC (song header)
	.byte 2, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_500_0
	.4byte song_unk_500_1

