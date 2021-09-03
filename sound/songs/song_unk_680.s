	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_680_0: @ 0x08351940
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x6B
	.byte VOL, 0x7F
	.byte TIE, Cn3, v080
	.byte W96
	.byte W96
	.byte W36
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_680
song_unk_680: @ 0x08351950 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_680_0
	.size song_unk_680,.-song_unk_680
