	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_769_0: @ 0x08354D2C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x06
	.byte VOL, 0x50
	.byte TIE, Cn4, v127
	.byte W96
	.byte W60
	.byte EOT
	.byte FINE
song_unk_769_1: @ 0x08354D3B
	.byte KEYSH, 0x00
	.byte VOICE, 0x06
	.byte VOL, 0x50
	.byte TIE, Cn4, v127
	.byte W96
	.byte W60
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_769
song_unk_769: @ 0x08354D48 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_769_0
	.4byte song_unk_769_1
	.size song_unk_769,.-song_unk_769
