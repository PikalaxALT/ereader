	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_840_0: @ 0x08355404
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x3C
	.byte VOL, 0x7F
	.byte N42, Cn4, v127
	.byte W42
	.byte FINE
	.align 2, 0
	.global song_unk_840
song_unk_840: @ 0x08355414 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_840_0
	.size song_unk_840,.-song_unk_840
