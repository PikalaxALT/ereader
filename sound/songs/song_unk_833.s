	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_833_0: @ 0x08355340
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x35
	.byte VOL, 0x7F
	.byte N60, Cn4, v127
	.byte W60
	.byte FINE
	.align 2, 0
	.global song_unk_833
song_unk_833: @ 0x08355350 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_833_0
	.size song_unk_833,.-song_unk_833
