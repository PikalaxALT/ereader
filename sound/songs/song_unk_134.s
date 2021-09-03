	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_134_0: @ 0x0834AE7C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x01
	.byte VOL, 0x7F
	.byte N02, En5, v060
	.byte W02
	.byte Cn4
	.byte W02
	.byte An5
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_134
song_unk_134: @ 0x0834AE90 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_134_0
	.size song_unk_134,.-song_unk_134
