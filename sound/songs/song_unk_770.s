	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_770_0: @ 0x08354D58
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x07
	.byte VOL, 0x50
	.byte N96, Cn4, v127
	.byte W96
	.byte FINE
song_unk_770_1: @ 0x08354D65
	.byte KEYSH, 0x00
	.byte VOICE, 0x07
	.byte VOL, 0x50
	.byte N96, Cn4, v127
	.byte W96
	.byte FINE
	.align 2, 0
	.global song_unk_770
song_unk_770: @ 0x08354D70 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_770_0
	.4byte song_unk_770_1
	.size song_unk_770,.-song_unk_770
