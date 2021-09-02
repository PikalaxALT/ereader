	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_153_0: @ 0x0834B2EC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x21
	.byte VOL, 0x7F
	.byte N02, Gs4, v052
	.byte W02
	.byte Cs5
	.byte W04
	.byte N32, En5
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_153
song_unk_153: @ 0x0834B300 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_153_0

