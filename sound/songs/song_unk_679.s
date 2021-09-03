	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_679_0: @ 0x0835191C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x6A
	.byte VOL, 0x7F
	.byte TIE, Cn3, v092
	.byte W24
song_unk_679_0_000: @ 0x08351928
	.byte W72
	.byte W24
	.byte GOTO
	 .4byte song_unk_679_0_000
	.byte W24
	.byte EOT, Cn3
	.byte FINE
	.align 2, 0
	.global song_unk_679
song_unk_679: @ 0x08351934 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_679_0
	.size song_unk_679,.-song_unk_679
