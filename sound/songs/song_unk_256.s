	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_256_0: @ 0x0834E3F8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x51
	.byte VOL, 0x7F
	.byte N17, Cn3, v060
	.byte W18
	.byte FINE
	.align 2, 0
	.global song_unk_256
song_unk_256: @ 0x0834E408 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_256_0

