	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_838_0: @ 0x083553CC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x3A
	.byte VOL, 0x7F
	.byte N66, Cn4, v127
	.byte W66
	.byte FINE
	.align 2, 0
	.global song_unk_838
song_unk_838: @ 0x083553DC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_838_0
	.size song_unk_838,.-song_unk_838
