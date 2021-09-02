	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_555_0: @ 0x08350CC8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x03
	.byte VOL, 0x7F
	.byte N05, Gs4, v052
	.byte W06
	.byte N32, Cs5
	.byte W36
	.byte FINE
song_unk_555_1: @ 0x08350CD8
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
	.global song_unk_555
song_unk_555: @ 0x08350CE8 (song header)
	.byte 2, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_555_0
	.4byte song_unk_555_1

