	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_211_0: @ 0x0834CA14
	.byte KEYSH, 0x00
	.byte TEMPO, 0x46
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N18, An1, v072
	.byte W20
	.byte N16, En2
	.byte W16
	.byte N12, An2
	.byte W12
	.byte N18, Gn2
	.byte W20
	.byte N16, Gn1
	.byte W16
	.byte N12, Dn2
	.byte W12
	.byte N18, An1
	.byte W36
	.byte N12, An2
	.byte W12
	.byte FINE
song_unk_211_1: @ 0x0834CA36
	.byte KEYSH, 0x00
	.byte VOICE, 0x7B
	.byte VOL, 0x7F
	.byte W96
	.byte W36
	.byte N18, En3, v040
	.byte N18, An3
	.byte W18
	.byte N03, Gn3, v032
	.byte W02
	.byte N02, Fn3
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
	.byte N06, En4, v056
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
	.byte N06, Cn1, v060
	.byte W06
	.byte Dn1, v020
	.byte W06
	.byte N02, Fs1
	.byte W06
	.byte N06, Cn1, v060
	.byte W06
	.byte Bn1
	.byte W06
	.byte Dn1, v020
	.byte W06
	.byte N02, Fs1
	.byte W06
	.byte N06, Cn1, v060
	.byte W06
	.byte N06
	.byte W06
	.byte Dn1, v020
	.byte W06
	.byte N02, Fs1
	.byte W06
	.byte N06, Cn1, v060
	.byte W06
	.byte Bn1
	.byte W06
	.byte Dn1, v040
	.byte W06
	.byte N02, Fs1, v020
	.byte W06
	.byte N06, Cn1, v060
	.byte W06
	.byte N04, Dn1, v052
	.byte W04
	.byte N04
	.byte W04
	.byte Cn2
	.byte W04
	.byte N04
	.byte W04
	.byte Bn1
	.byte W04
	.byte N04
	.byte W04
	.byte N12, An1
	.byte W12
	.byte N06, Cn1, v060
	.byte N18, Cs2, v040
	.byte W18
	.byte FINE
song_unk_211_4: @ 0x0834CAD3
	.byte KEYSH, 0x00
	.byte VOICE, 0x65
	.byte VOL, 0x7F
	.byte N02, Cn4, v012
	.byte W07
	.byte N02
	.byte W05
	.byte Cn4, v020
	.byte W07
	.byte N02
	.byte W05
	.byte Cn4, v012
	.byte W07
	.byte N02
	.byte W05
	.byte Cn4, v020
	.byte W07
	.byte N02
	.byte W05
	.byte Cn4, v012
	.byte W07
	.byte N02
	.byte W05
	.byte Cn4, v020
	.byte W07
	.byte N02
	.byte W05
	.byte Cn4, v012
	.byte W07
	.byte N02
	.byte W05
	.byte Cn4, v020
	.byte W07
	.byte N02
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_211
song_unk_211: @ 0x0834CB04 (song header)
	.byte 5, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_211_0
	.4byte song_unk_211_1
	.4byte song_unk_211_2
	.4byte song_unk_211_3
	.4byte song_unk_211_4
	.size song_unk_211,.-song_unk_211
