	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_155_0: @ 0x0834B33C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x03
	.byte VOL, 0x7F
	.byte N05, Gs4, v052
	.byte W06
	.byte N32, Cs5
	.byte W36
	.byte FINE
song_unk_155_1: @ 0x0834B34C
	.byte KEYSH, 0x00
	.byte VOICE, 0x22
	.byte VOL, 0x7F
	.byte W03
	.byte N05, Dn5, v052
	.byte W06
	.byte N32, Fn5
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_155
song_unk_155: @ 0x0834B35C (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_155_0
	.4byte song_unk_155_1

