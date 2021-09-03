	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_100_0: @ 0x08349794
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte N06, Ds1, v080
	.byte W06
	.byte FINE
song_unk_100_1: @ 0x083497A1
	.byte KEYSH, 0x00
	.byte VOICE, 0x65
	.byte VOL, 0x7F
	.byte W02
	.byte N04, En3, v052
	.byte W04
	.byte FINE
	.align 2, 0
	.global song_unk_100
song_unk_100: @ 0x083497B0 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_100_0
	.4byte song_unk_100_1
	.size song_unk_100,.-song_unk_100
