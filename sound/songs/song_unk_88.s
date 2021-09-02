	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_88_0: @ 0x0834925C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte N32, En2, v112
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_88
song_unk_88: @ 0x0834926C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_88_0

