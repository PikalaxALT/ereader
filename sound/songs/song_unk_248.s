	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_248_0: @ 0x0834DF94
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte N01, Fn2, v072
	.byte W02
	.byte N00, En2
	.byte W01
	.byte Cn2
	.byte N02, Cn3
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_248
song_unk_248: @ 0x0834DFA8 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_248_0

