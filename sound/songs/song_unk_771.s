	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_771_0: @ 0x08354D80
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x08
	.byte VOL, 0x50
	.byte TIE, Cn4, v127
	.byte W96
	.byte W96
	.byte W24
	.byte EOT
	.byte FINE
song_unk_771_1: @ 0x08354D90
	.byte KEYSH, 0x00
	.byte VOICE, 0x08
	.byte VOL, 0x50
	.byte TIE, Cn4, v127
	.byte W96
	.byte W96
	.byte W24
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_771
song_unk_771: @ 0x08354DA0 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_771_0
	.4byte song_unk_771_1
	.size song_unk_771,.-song_unk_771
