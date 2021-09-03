	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_774_0: @ 0x08354E0C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x0B
	.byte VOL, 0x50
	.byte TIE, Cn4, v127
	.byte W96
	.byte W24
	.byte EOT
	.byte FINE
song_unk_774_1: @ 0x08354E1B
	.byte KEYSH, 0x00
	.byte VOICE, 0x0B
	.byte VOL, 0x50
	.byte TIE, Cn4, v127
	.byte W96
	.byte W24
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_774
song_unk_774: @ 0x08354E28 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_774_0
	.4byte song_unk_774_1
	.size song_unk_774,.-song_unk_774
