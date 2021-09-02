	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_266_0: @ 0x0834E5C4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x50
	.byte VOICE, 0x05
	.byte VOL, 0x7F
	.byte PAN, 0x40
	.byte W28
	.byte N07, An3, v048
	.byte W08
	.byte N23, En4
	.byte W24
	.byte FINE
song_unk_266_1: @ 0x0834E5D7
	.byte KEYSH, 0x00
	.byte VOICE, 0x23
	.byte VOL, 0x7F
	.byte PAN, 0x40
	.byte W24
	.byte N07, En3, v048
	.byte W08
	.byte N23, Bn3
	.byte W24
	.byte FINE
song_unk_266_2: @ 0x0834E5E8
	.byte KEYSH, 0x00
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N03, En2, v088
	.byte W06
	.byte Bn1
	.byte W06
	.byte Dn2
	.byte W06
	.byte En2
	.byte W06
	.byte Gn2
	.byte W06
	.byte Dn2
	.byte W06
	.byte En1
	.byte N03, En2
	.byte W06
	.byte En1
	.byte N03, Gn2
	.byte W06
	.byte An2
	.byte W06
	.byte En1
	.byte N03, En2
	.byte W06
	.byte En1
	.byte N03, Gn2
	.byte W06
	.byte An2
	.byte W06
	.byte En1
	.byte N03, As2
	.byte W06
	.byte En1
	.byte N03, Bn2
	.byte W06
	.byte Dn3
	.byte W06
	.byte Ds3
	.byte W06
	.byte En3
	.byte W06
	.byte N03
	.byte W30
	.byte N08, En2
	.byte W09
	.byte FINE
song_unk_266_3: @ 0x0834E624
	.byte KEYSH, 0x00
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte N05, Cn1, v072
	.byte N00, Fs1, v020
	.byte W12
	.byte N05, Cn1, v072
	.byte N00, Fs1, v020
	.byte W12
	.byte N05, Dn1, v052
	.byte N00, Fs1, v020
	.byte W12
	.byte N11
	.byte W12
	.byte N05, Cn1, v072
	.byte N00, Fs1, v020
	.byte W12
	.byte N00
	.byte N05, Cn2, v052
	.byte W06
	.byte N05
	.byte W06
	.byte Dn1
	.byte N00, Fs1, v020
	.byte N05, Bn1, v052
	.byte W06
	.byte N05
	.byte W06
	.byte N00, Fs1, v020
	.byte N05, An1, v052
	.byte W06
	.byte N05
	.byte W06
	.byte Dn1
	.byte N00, Fs1, v020
	.byte W06
	.byte N05, Dn1, v052
	.byte W06
	.byte N00, Fs1, v020
	.byte N03, Bn1, v052
	.byte W04
	.byte Cn2
	.byte W04
	.byte An1
	.byte W04
	.byte N05, Cn1, v072
	.byte N00, Fs1, v020
	.byte W12
	.byte N05, Dn1, v052
	.byte N00, Fs1, v020
	.byte N14, Cs2, v040
	.byte W15
	.byte FINE
song_unk_266_4: @ 0x0834E688
	.byte KEYSH, 0x00
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte W36
	.byte W02
	.byte N40, Bn2, v048
	.byte N40, En3
	.byte W42
	.byte FINE
	.align 2, 0
	.global song_unk_266
song_unk_266: @ 0x0834E698 (song header)
	.byte 5, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_266_0
	.4byte song_unk_266_1
	.4byte song_unk_266_2
	.4byte song_unk_266_3
	.4byte song_unk_266_4

