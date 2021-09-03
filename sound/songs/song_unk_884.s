	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_884_0: @ 0x083558D4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x68
	.byte VOL, 0x7F
	.byte N36, Cn4, v127
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_884
song_unk_884: @ 0x083558E4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_884_0
	.size song_unk_884,.-song_unk_884
