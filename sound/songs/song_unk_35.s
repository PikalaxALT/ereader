	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_35_0: @ 0x08347E7C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x63
	.byte VOL, 0x7F
	.byte TIE, Bn2, v112
	.byte W06
song_unk_35_0_000: @ 0x08347E88
	.byte W90
	.byte GOTO
	 .4byte song_unk_35_0_000
	.byte W24
	.byte EOT, Bn2
	.byte FINE
	.align 2, 0
	.global song_unk_35
song_unk_35: @ 0x08347E94 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_35_0

