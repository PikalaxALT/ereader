	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_498_0: @ 0x08350794
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x15
	.byte VOL, 0x7F
	.byte TIE, Cn3, v112
	.byte W96
	.byte W90
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_498
song_unk_498: @ 0x083507A4 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_498_0
	.size song_unk_498,.-song_unk_498
