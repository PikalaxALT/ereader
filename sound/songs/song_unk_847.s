	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_847_0: @ 0x083554C8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x43
	.byte VOL, 0x7F
	.byte TIE, Cn4, v127
	.byte W96
	.byte W06
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_847
song_unk_847: @ 0x083554D8 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_847_0
	.size song_unk_847,.-song_unk_847
