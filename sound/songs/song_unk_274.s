	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_274_0: @ 0x0834EF9C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte W05
	.byte N23, Ds4, v072
	.byte W24
	.byte FINE
song_unk_274_1: @ 0x0834EFAA
	.byte KEYSH, 0x00
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte N00, Gn2, v052
	.byte W01
	.byte Gs2
	.byte W01
	.byte An2
	.byte W01
	.byte As2
	.byte W01
	.byte Bn2
	.byte W01
	.byte Cn3
	.byte W01
	.byte Cs3
	.byte W01
	.byte Dn3
	.byte W01
	.byte Ds3
	.byte W01
	.byte En3
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_274
song_unk_274: @ 0x0834EFC8 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_274_0
	.4byte song_unk_274_1

