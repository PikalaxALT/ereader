	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_387_0: @ 0x0834FC40
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x64
	.byte VOL, 0x7F
	.byte TIE, Cn3, v060
	.byte W24
song_unk_387_0_000: @ 0x0834FC4C
	.byte W72
	.byte W24
	.byte GOTO
	 .4byte song_unk_387_0_000
	.byte W24
	.byte EOT, Cn3
	.byte FINE
	.align 2, 0
	.global song_unk_387
song_unk_387: @ 0x0834FC58 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_387_0

