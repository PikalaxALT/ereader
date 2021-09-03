	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_26_0: @ 0x083479A0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte N01, An5, v100
	.byte N01, Cs6
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_26
song_unk_26: @ 0x083479B0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_26_0
	.size song_unk_26,.-song_unk_26
