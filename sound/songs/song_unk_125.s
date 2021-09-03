	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_125_0: @ 0x0834A0FC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x23
	.byte VOL, 0x7F
	.byte N78, Cn3, v076
	.byte W78
	.byte FINE
	.align 2, 0
	.global song_unk_125
song_unk_125: @ 0x0834A10C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_125_0
	.size song_unk_125,.-song_unk_125
