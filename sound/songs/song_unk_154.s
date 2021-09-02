	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_154_0: @ 0x0834B30C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x04
	.byte VOL, 0x7F
	.byte N05, Cn4, v052
	.byte W06
	.byte N32, Ds4
	.byte W36
	.byte FINE
song_unk_154_1: @ 0x0834B31C
	.byte KEYSH, 0x00
	.byte VOICE, 0x22
	.byte VOL, 0x7F
	.byte W03
	.byte N05, Gn4, v052
	.byte W06
	.byte N32, Dn5
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_154
song_unk_154: @ 0x0834B32C (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_154_0
	.4byte song_unk_154_1

