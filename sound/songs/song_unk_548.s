	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_548_0: @ 0x08350B94
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x29
	.byte VOL, 0x7F
	.byte TIE, Cn3, v060
	.byte W12
song_unk_548_0_000: @ 0x08350BA0
	.byte W84
	.byte W12
	.byte GOTO
	 .4byte song_unk_548_0_000
	.byte W12
	.byte EOT, Cn3
	.byte FINE
	.align 2, 0
	.global song_unk_548
song_unk_548: @ 0x08350BAC (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_548_0
	.size song_unk_548,.-song_unk_548
