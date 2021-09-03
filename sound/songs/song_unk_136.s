	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_136_0: @ 0x0834AEBC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x01
	.byte VOL, 0x7F
	.byte N02, Dn3, v072
	.byte W02
	.byte Gn3
	.byte W02
	.byte N03, Cn4
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_136
song_unk_136: @ 0x0834AED0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_136_0
	.size song_unk_136,.-song_unk_136
