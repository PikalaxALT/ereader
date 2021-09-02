	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_506_0: @ 0x08350858
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x16
	.byte VOL, 0x7F
	.byte N05, As2, v072
	.byte W06
	.byte N32
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_506
song_unk_506: @ 0x08350868 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_506_0

