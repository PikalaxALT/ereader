	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_279_0: @ 0x0834F104
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x01
	.byte VOL, 0x7F
	.byte TIE, Cn3, v127
	.byte W96
	.byte W12
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_279
song_unk_279: @ 0x0834F114 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup004 @ voice group
	.4byte song_unk_279_0
	.size song_unk_279,.-song_unk_279
