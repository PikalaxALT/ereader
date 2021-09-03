	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_848_0: @ 0x083554E4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x44
	.byte VOL, 0x7F
	.byte TIE, Cn4, v127
	.byte W96
	.byte W06
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_848
song_unk_848: @ 0x083554F4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_848_0
	.size song_unk_848,.-song_unk_848
