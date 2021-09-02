	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_200_0: @ 0x0834C8E0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x3E
	.byte VOL, 0x7F
	.byte N56, Cs3, v060
	.byte W60
	.byte FINE
	.align 2, 0
	.global song_unk_200
song_unk_200: @ 0x0834C8F0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_200_0

