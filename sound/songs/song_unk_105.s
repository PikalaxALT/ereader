	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_105_0: @ 0x08349C00
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x17
	.byte VOL, 0x7F
	.byte N11, Dn3, v040
	.byte W12
	.byte N11
	.byte W12
	.byte N17, Dn3, v028
	.byte W18
	.byte FINE
song_unk_105_1: @ 0x08349C13
	.byte KEYSH, 0x00
	.byte VOICE, 0x17
	.byte VOL, 0x7F
	.byte W08
	.byte N11, Dn3, v032
	.byte W12
	.byte N08
	.byte W10
	.byte N17, Dn3, v020
	.byte W18
	.byte FINE
	.align 2, 0
	.global song_unk_105
song_unk_105: @ 0x08349C28 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_105_0
	.4byte song_unk_105_1

