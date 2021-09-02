	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_148_0: @ 0x0834B194
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x29
	.byte VOL, 0x7F
	.byte TIE, Cn3, v060
	.byte W12
song_unk_148_0_000: @ 0x0834B1A0
	.byte W84
	.byte W12
	.byte GOTO
	 .4byte song_unk_148_0_000
	.byte W12
	.byte EOT, Cn3
	.byte FINE
	.align 2, 0
	.global song_unk_148
song_unk_148: @ 0x0834B1AC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_148_0

