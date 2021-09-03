	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_267_0: @ 0x0834E6B4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x48
	.byte VOICE, 0x22
	.byte VOL, 0x7F
	.byte PAN, 0x7F
	.byte N04, Cs4, v060
	.byte W12
	.byte Cn4
	.byte W12
	.byte Cs4
	.byte W12
	.byte Cn4
	.byte W12
	.byte Cs4
	.byte W12
	.byte Cn4
	.byte W06
	.byte Cs4
	.byte W30
	.byte N16, Cn4
	.byte W18
	.byte N10
	.byte W10
	.byte FINE
song_unk_267_1: @ 0x0834E6D4
	.byte KEYSH, 0x00
	.byte VOICE, 0x52
	.byte VOL, 0x7F
	.byte PAN, 0x00
	.byte N04, As4, v072
	.byte W12
	.byte Gs4
	.byte W12
	.byte As4
	.byte W12
	.byte Gs4
	.byte W12
	.byte As4
	.byte W12
	.byte Gs4
	.byte W06
	.byte As4
	.byte W30
	.byte N16, Gs4
	.byte W18
	.byte N10
	.byte W10
	.byte FINE
song_unk_267_2: @ 0x0834E6F2
	.byte KEYSH, 0x00
	.byte VOICE, 0x58
	.byte VOL, 0x7F
	.byte N06, Fs3, v060
	.byte W18
	.byte N06
	.byte W18
	.byte N06
	.byte W06
	.byte N06
	.byte W54
	.byte N18, Fn3
	.byte W18
	.byte N12
	.byte W12
	.byte FINE
song_unk_267_3: @ 0x0834E708
	.byte KEYSH, 0x00
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte N06, Cn1, v060
	.byte N01, Fs1, v016
	.byte W06
	.byte Fs1, v012
	.byte W06
	.byte Fs1, v016
	.byte W06
	.byte Fs1, v012
	.byte W06
	.byte N06, Dn1, v052
	.byte N01, Fs1, v016
	.byte W06
	.byte Fs1, v012
	.byte W06
	.byte N06, Cn1, v060
	.byte N12, Fs1, v016
	.byte W12
	.byte N06, Dn1, v052
	.byte N01, Fs1, v016
	.byte W06
	.byte N06, Dn1, v052
	.byte N01, Fs1, v012
	.byte W06
	.byte Fs1, v016
	.byte N06, Cn2, v052
	.byte W06
	.byte N01, Fs1, v012
	.byte N06, Cn2, v052
	.byte W06
	.byte N01, Fs1, v016
	.byte N06, Bn1, v052
	.byte W06
	.byte N01, Fs1, v012
	.byte N06, Bn1, v052
	.byte W06
	.byte Cn1, v060
	.byte N01, Fs1, v016
	.byte W06
	.byte N06, Cn1, v060
	.byte N01, Fs1, v012
	.byte W06
	.byte N06, Dn1, v052
	.byte N18, Cs2, v040
	.byte W18
	.byte N06, Dn1, v052
	.byte N12, Cs2, v040
	.byte W12
	.byte FINE
song_unk_267_4: @ 0x0834E774
	.byte KEYSH, 0x00
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte N10, As2, v060
	.byte W10
	.byte N12, Gs2
	.byte W12
	.byte As2
	.byte W12
	.byte Cn3
	.byte W12
	.byte Cs3
	.byte W12
	.byte Ds3
	.byte W12
	.byte Fn3, v052
	.byte W12
	.byte Gs3
	.byte W12
	.byte N18, Gn3
	.byte W02
	.byte W16
	.byte N18
	.byte W18
	.byte FINE
	.align 2, 0
	.global song_unk_267
song_unk_267: @ 0x0834E798 (song header)
	.byte 5, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_267_0
	.4byte song_unk_267_1
	.4byte song_unk_267_2
	.4byte song_unk_267_3
	.4byte song_unk_267_4
	.size song_unk_267,.-song_unk_267
