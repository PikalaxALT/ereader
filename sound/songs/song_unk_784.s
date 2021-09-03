	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_784_0: @ 0x08354FB0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x15
	.byte VOL, 0x50
	.byte N72, Cn4, v127
	.byte W72
	.byte FINE
song_unk_784_1: @ 0x08354FBD
	.byte KEYSH, 0x00
	.byte VOICE, 0x15
	.byte VOL, 0x50
	.byte N72, Cn4, v127
	.byte W72
	.byte FINE
	.align 2, 0
	.global song_unk_784
song_unk_784: @ 0x08354FC8 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_784_0
	.4byte song_unk_784_1
	.size song_unk_784,.-song_unk_784
