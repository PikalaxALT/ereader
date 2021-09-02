	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_383_0: @ 0x0834FBC0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x61
	.byte VOL, 0x7F
	.byte TIE, Bn2, v072
	.byte W24
song_unk_383_0_000: @ 0x0834FBCC
	.byte W72
	.byte W24
	.byte GOTO
	 .4byte song_unk_383_0_000
	.byte W24
	.byte EOT, Bn2
	.byte FINE
	.align 2, 0
	.global song_unk_383
song_unk_383: @ 0x0834FBD8 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_383_0

