	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_122_0: @ 0x0834A04C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x21
	.byte VOL, 0x7F
	.byte N24, Cs3, v072
	.byte W24
	.byte FINE
	.align 2, 0
	.global song_unk_122
song_unk_122: @ 0x0834A05C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_122_0
	.size song_unk_122,.-song_unk_122
