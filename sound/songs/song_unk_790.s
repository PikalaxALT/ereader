	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_790_0: @ 0x08355050
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1B
	.byte VOL, 0x50
	.byte N72, Cn4, v127
	.byte W72
	.byte FINE
song_unk_790_1: @ 0x0835505D
	.byte KEYSH, 0x00
	.byte VOICE, 0x1B
	.byte VOL, 0x50
	.byte N72, Cn4, v127
	.byte W72
	.byte FINE
	.align 2, 0
	.global song_unk_790
song_unk_790: @ 0x08355068 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_790_0
	.4byte song_unk_790_1
	.size song_unk_790,.-song_unk_790
