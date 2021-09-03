	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_248_0: @ 0x0834DF94
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte N02, Fn2, v072
	.byte W02
	.byte N01, En2
	.byte W01
	.byte Cn2
	.byte N03, Cn3
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_248
song_unk_248: @ 0x0834DFA8 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_248_0
	.size song_unk_248,.-song_unk_248
