	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_801_0: @ 0x083AAF10
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x72
	.byte VOL, 0x50
	.byte TIE, Cn4, v127
	.byte W96
	.byte W48
	.byte EOT
	.byte FINE
song_unk_801_1: @ 0x083AAF1F
	.byte KEYSH, 0x00
	.byte VOICE, 0x72
	.byte VOL, 0x50
	.byte TIE, Cn4, v127
	.byte W96
	.byte W48
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_801
song_unk_801: @ 0x083AAF2C (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_801_0
	.4byte song_unk_801_1
	.size song_unk_801,.-song_unk_801
