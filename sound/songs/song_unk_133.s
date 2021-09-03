	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_133_0: @ 0x0834AE60
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x00
	.byte VOL, 0x7F
	.byte N01, Gs4, v072
	.byte W01
	.byte N03, Gn3
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_133
song_unk_133: @ 0x0834AE70 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_133_0
	.size song_unk_133,.-song_unk_133
