	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_118_0: @ 0x08349EB0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte TIE, Cn3, v060
	.byte W96
	.byte W60
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_118
song_unk_118: @ 0x08349EC0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_118_0
	.size song_unk_118,.-song_unk_118
