	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_379_0: @ 0x0834FB50
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x5A
	.byte VOL, 0x6E
	.byte TIE, Cn3, v080
	.byte W96
	.byte W48
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_379
song_unk_379: @ 0x0834FB60 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_379_0
	.size song_unk_379,.-song_unk_379
