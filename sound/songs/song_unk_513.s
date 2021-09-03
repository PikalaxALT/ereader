	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_513_0: @ 0x08350874
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x19
	.byte VOL, 0x7F
	.byte TIE, Cn3, v052
	.byte W12
song_unk_513_0_000: @ 0x08350880
	.byte W84
	.byte W12
	.byte GOTO
	 .4byte song_unk_513_0_000
	.byte W12
	.byte EOT, Cn3
	.byte FINE
	.align 2, 0
	.global song_unk_513
song_unk_513: @ 0x0835088C (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_513_0
	.size song_unk_513,.-song_unk_513
