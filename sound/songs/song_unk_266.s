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
	.byte N08, An3, v048
	.byte W08
	.byte N24, En4
	.byte W24
	.byte FINE
song_unk_266_1: @ 0x0834E5D7
	.byte KEYSH, 0x00
	.byte VOICE, 0x23
	.byte VOL, 0x7F
	.byte PAN, 0x40
	.byte W24
	.byte N08, En3, v048
	.byte W08
	.byte N24, Bn3
	.byte W24
	.byte FINE
song_unk_266_2: @ 0x0834E5E8
	.byte KEYSH, 0x00
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N04, En2, v088
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
	.byte N04, En2
	.byte W06
	.byte En1
	.byte N04, Gn2
	.byte W06
	.byte An2
	.byte W06
	.byte En1
	.byte N04, En2
	.byte W06
	.byte En1
	.byte N04, Gn2
	.byte W06
	.byte An2
	.byte W06
	.byte En1
	.byte N04, As2
	.byte W06
	.byte En1
	.byte N04, Bn2
	.byte W06
	.byte Dn3
	.byte W06
	.byte Ds3
	.byte W06
	.byte En3
	.byte W06
	.byte N04
	.byte W30
	.byte N09, En2
	.byte W09
	.byte FINE
song_unk_266_3: @ 0x0834E624
	.byte KEYSH, 0x00
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte N06, Cn1, v072
	.byte N01, Fs1, v020
	.byte W12
	.byte N06, Cn1, v072
	.byte N01, Fs1, v020
	.byte W12
	.byte N06, Dn1, v052
	.byte N01, Fs1, v020
	.byte W12
	.byte N12
	.byte W12
	.byte N06, Cn1, v072
	.byte N01, Fs1, v020
	.byte W12
	.byte N01
	.byte N06, Cn2, v052
	.byte W06
	.byte N06
	.byte W06
	.byte Dn1
	.byte N01, Fs1, v020
	.byte N06, Bn1, v052
	.byte W06
	.byte N06
	.byte W06
	.byte N01, Fs1, v020
	.byte N06, An1, v052
	.byte W06
	.byte N06
	.byte W06
	.byte Dn1
	.byte N01, Fs1, v020
	.byte W06
	.byte N06, Dn1, v052
	.byte W06
	.byte N01, Fs1, v020
	.byte N04, Bn1, v052
	.byte W04
	.byte Cn2
	.byte W04
	.byte An1
	.byte W04
	.byte N06, Cn1, v072
	.byte N01, Fs1, v020
	.byte W12
	.byte N06, Dn1, v052
	.byte N01, Fs1, v020
	.byte N15, Cs2, v040
	.byte W15
	.byte FINE
song_unk_266_4: @ 0x0834E688
	.byte KEYSH, 0x00
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte W36
	.byte W02
	.byte N42, Bn2, v048
	.byte N42, En3
	.byte W42
	.byte FINE
	.align 2, 0
	.global song_unk_266
song_unk_266: @ 0x0834E698 (song header)
	.byte 5, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_266_0
	.4byte song_unk_266_1
	.4byte song_unk_266_2
	.4byte song_unk_266_3
	.4byte song_unk_266_4
	.size song_unk_266,.-song_unk_266
