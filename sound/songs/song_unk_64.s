	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_64_0: @ 0x08348500
	.byte KEYSH, 0x00
song_unk_64_0_000: @ 0x08348502
	.byte TEMPO, 0x4B
	.byte VOICE, 0x77
	.byte VOL, 0x7F
	.byte TIE, Dn2, v127
	.byte W96
	.byte W12
	.byte EOT
	.byte W48
	.byte GOTO
	 .4byte song_unk_64_0_000
	.byte FINE
	.align 2, 0
	.global song_unk_64
song_unk_64: @ 0x08348518 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_64_0

