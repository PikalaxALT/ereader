	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_18_0: @ 0x083476D0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte N01, Ds2, v112
	.byte N01, Fn2
	.byte W01
	.byte Cs2
	.byte W01
	.byte Bn1
	.byte W01
	.byte N03, Cn3, v096
	.byte W03
	.byte FINE
song_unk_18_1: @ 0x083476E7
	.byte KEYSH, 0x00
	.byte VOICE, 0x1F
	.byte VOL, 0x7F
	.byte N01, Gn5, v064
	.byte N01, Cn6
	.byte W01
	.byte Dn5
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_18
song_unk_18: @ 0x083476F8 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_18_0
	.4byte song_unk_18_1
	.size song_unk_18,.-song_unk_18
