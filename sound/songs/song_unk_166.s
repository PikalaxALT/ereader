	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_166_0: @ 0x0834BAEC
	.byte KEYSH, 0x00
song_unk_166_0_000: @ 0x0834BAEE
	.byte TEMPO, 0x4B
	.byte VOICE, 0x2E
	.byte VOL, 0x7F
	.byte N11, En3, v112
	.byte W18
	.byte N11
	.byte W18
	.byte N11
	.byte W18
	.byte N11
	.byte W18
	.byte GOTO
	 .4byte song_unk_166_0_000
	.byte FINE
	.align 2, 0
	.global song_unk_166
song_unk_166: @ 0x0834BB04 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_166_0

