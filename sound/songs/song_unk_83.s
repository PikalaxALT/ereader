	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_83_0: @ 0x08348FC8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x03
	.byte VOL, 0x7F
	.byte N11, Fs4, v060
	.byte W12
	.byte TEMPO, 0x32
	.byte En4
	.byte W12
	.byte TEMPO, 0x2A
	.byte Dn4
	.byte W12
	.byte TEMPO, 0x20
	.byte Cs4
	.byte W12
	.byte N44, Bn3
	.byte W48
	.byte FINE
song_unk_83_1: @ 0x08348FE4
	.byte KEYSH, 0x00
	.byte VOICE, 0x22
	.byte VOL, 0x7F
	.byte W06
	.byte N11, Bn3, v060
	.byte W12
	.byte An3
	.byte W12
	.byte Fs3
	.byte W12
	.byte N05, En3
	.byte W06
	.byte N44, Ds3
	.byte W48
	.byte FINE
song_unk_83_2: @ 0x08348FFA
	.byte KEYSH, 0x00
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte N14, An2, v052
	.byte W12
	.byte Gs2
	.byte W12
	.byte An2
	.byte W12
	.byte Gs2
	.byte W12
	.byte N32, Ds2, v080
	.byte N32, Bn2, v060
	.byte W36
	.byte FINE
song_unk_83_3: @ 0x08349012
	.byte KEYSH, 0x00
	.byte VOICE, 0x57
	.byte VOL, 0x7F
	.byte N11, Dn4, v052
	.byte W12
	.byte Cs4
	.byte W12
	.byte Bn3
	.byte W12
	.byte An3
	.byte W12
	.byte N32, Gn3
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_83
song_unk_83: @ 0x08349028 (song header)
	.byte 4, 0, 20, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_83_0
	.4byte song_unk_83_1
	.4byte song_unk_83_2
	.4byte song_unk_83_3

