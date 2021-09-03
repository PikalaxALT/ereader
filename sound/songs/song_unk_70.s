	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_70_0: @ 0x083485E8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x20
	.byte VOL, 0x7F
	.byte N01, An5, v076
	.byte N01, Bn5
	.byte W01
	.byte Cs6, v060
	.byte W01
	.byte Ds6
	.byte W01
	.byte Fn6, v044
	.byte N01, Gn6
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_70
song_unk_70: @ 0x08348604 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_70_0
	.size song_unk_70,.-song_unk_70
