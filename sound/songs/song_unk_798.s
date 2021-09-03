	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_798_0: @ 0x083AAE90
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x6F
	.byte VOL, 0x50
	.byte N84, Cn4, v127
	.byte W84
	.byte FINE
song_unk_798_1: @ 0x083AAE9D
	.byte KEYSH, 0x00
	.byte VOICE, 0x6F
	.byte VOL, 0x50
	.byte N84, Cn4, v127
	.byte W84
	.byte FINE
	.align 2, 0
	.global song_unk_798
song_unk_798: @ 0x083AAEA8 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_798_0
	.4byte song_unk_798_1
	.size song_unk_798,.-song_unk_798
