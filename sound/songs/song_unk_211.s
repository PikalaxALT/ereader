	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_211_0: @ 0x0834CA14
	.byte KEYSH, 0x00
	.byte TEMPO, 0x46
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N17, An1, v072
	.byte W20
	.byte N15, En2
	.byte W16
	.byte N11, An2
	.byte W12
	.byte N17, Gn2
	.byte W20
	.byte N15, Gn1
	.byte W16
	.byte N11, Dn2
	.byte W12
	.byte N17, An1
	.byte W36
	.byte N11, An2
	.byte W12
	.byte FINE
song_unk_211_1: @ 0x0834CA36
	.byte KEYSH, 0x00
	.byte VOICE, 0x7B
	.byte VOL, 0x7F
	.byte W96
	.byte W36
	.byte N17, En3, v040
	.byte N17, An3
	.byte W18
	.byte N02, Gn3, v032
	.byte W02
	.byte N01, Fn3
	.byte W02
	.byte En3
	.byte W02
	.byte Dn3
	.byte W03
	.byte Cn3
	.byte W02
	.byte Bn2
	.byte W02
	.byte An2
	.byte W02
	.byte FINE
song_unk_211_2: @ 0x0834CA56
	.byte KEYSH, 0x00
	.byte VOICE, 0x7C
	.byte VOL, 0x7F
	.byte N05, En4, v056
	.byte W06
	.byte Dn4
	.byte W06
	.byte Cs4
	.byte W06
	.byte En4
	.byte W06
	.byte Dn4
	.byte W06
	.byte Cs4
	.byte W06
	.byte Bn3
	.byte W06
	.byte Dn4
	.byte W06
	.byte Cs4
	.byte W06
	.byte An3
	.byte W06
	.byte Bn3
	.byte W06
	.byte Gn3
	.byte W06
	.byte An3
	.byte W06
	.byte Bn3
	.byte W06
	.byte Gn3
	.byte W06
	.byte Fs3
	.byte W06
	.byte En3
	.byte W06
	.byte FINE
song_unk_211_3: @ 0x0834CA81
	.byte KEYSH, 0x00
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte N05, Cn1, v060
	.byte W06
	.byte Dn1, v020
	.byte W06
	.byte N01, Fs1
	.byte W06
	.byte N05, Cn1, v060
	.byte W06
	.byte Bn1
	.byte W06
	.byte Dn1, v020
	.byte W06
	.byte N01, Fs1
	.byte W06
	.byte N05, Cn1, v060
	.byte W06
	.byte N05
	.byte W06
	.byte Dn1, v020
	.byte W06
	.byte N01, Fs1
	.byte W06
	.byte N05, Cn1, v060
	.byte W06
	.byte Bn1
	.byte W06
	.byte Dn1, v040
	.byte W06
	.byte N01, Fs1, v020
	.byte W06
	.byte N05, Cn1, v060
	.byte W06
	.byte N03, Dn1, v052
	.byte W04
	.byte N03
	.byte W04
	.byte Cn2
	.byte W04
	.byte N03
	.byte W04
	.byte Bn1
	.byte W04
	.byte N03
	.byte W04
	.byte N11, An1
	.byte W12
	.byte N05, Cn1, v060
	.byte N17, Cs2, v040
	.byte W18
	.byte FINE
song_unk_211_4: @ 0x0834CAD3
	.byte KEYSH, 0x00
	.byte VOICE, 0x65
	.byte VOL, 0x7F
	.byte N01, Cn4, v012
	.byte W07
	.byte N01
	.byte W05
	.byte Cn4, v020
	.byte W07
	.byte N01
	.byte W05
	.byte Cn4, v012
	.byte W07
	.byte N01
	.byte W05
	.byte Cn4, v020
	.byte W07
	.byte N01
	.byte W05
	.byte Cn4, v012
	.byte W07
	.byte N01
	.byte W05
	.byte Cn4, v020
	.byte W07
	.byte N01
	.byte W05
	.byte Cn4, v012
	.byte W07
	.byte N01
	.byte W05
	.byte Cn4, v020
	.byte W07
	.byte N01
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_211
song_unk_211: @ 0x0834CB04 (song header)
	.byte 5, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_211_0
	.4byte song_unk_211_1
	.4byte song_unk_211_2
	.4byte song_unk_211_3
	.4byte song_unk_211_4

