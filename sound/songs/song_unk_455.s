	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_455_0: @ 0x08350144
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x72
	.byte VOL, 0x7F
	.byte TIE, Cn3, v072
	.byte W12
song_unk_455_0_000: @ 0x08350150
	.byte W84
	.byte W12
	.byte GOTO
	 .4byte song_unk_455_0_000
	.byte W12
	.byte EOT, Cn3
	.byte FINE
	.align 2, 0
	.global song_unk_455
song_unk_455: @ 0x0835015C (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_455_0

