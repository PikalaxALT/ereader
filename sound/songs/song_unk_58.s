	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_58_0: @ 0x083482B4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x04
	.byte VOL, 0x7F
	.byte N23, Dn3, v060
	.byte W24
song_unk_58_0_002: @ 0x083482C0
	.byte N44, Bn3, v060
	.byte W48
song_unk_58_0_000: @ 0x083482C4
	.byte N23, An3, v060
	.byte W24
	.byte N44, Bn3
	.byte W48
	.byte PEND
song_unk_58_0_001: @ 0x083482CC
	.byte N23, Cn4, v060
	.byte W24
	.byte N44, Dn4
	.byte W48
	.byte PEND
	.byte N23, Gn3
	.byte W24
	.byte N11, Fs3
	.byte W12
	.byte Gn3
	.byte W12
	.byte N23, En3
	.byte W24
	.byte Dn3
	.byte W24
	.byte N44, Bn3
	.byte W48
	.byte PATT
	 .4byte song_unk_58_0_000
	.byte PATT
	 .4byte song_unk_58_0_001
	.byte N23, Gn3, v060
	.byte W24
	.byte N11, Fs4
	.byte W12
	.byte Gn4
	.byte W12
	.byte N23, En4
	.byte W24
	.byte N11, Dn4
	.byte W12
	.byte Cn4
	.byte W12
	.byte GOTO
	 .4byte song_unk_58_0_002
	.byte FINE
song_unk_58_1: @ 0x08348305
	.byte KEYSH, 0x00
	.byte W24
song_unk_58_1_006: @ 0x08348308
	.byte VOICE, 0x3A
	.byte VOL, 0x7F
	.byte N08, Gn1, v127
	.byte W12
	.byte Dn2
	.byte W12
	.byte Gn2
	.byte W24
song_unk_58_1_003: @ 0x08348314
	.byte W24
	.byte N08, An1, v127
	.byte W12
	.byte En2
	.byte W12
	.byte Cn3
	.byte W24
	.byte PEND
song_unk_58_1_004: @ 0x0834831E
	.byte W24
	.byte N08, Bn1, v127
	.byte W12
	.byte Fs2
	.byte W12
	.byte Dn3
	.byte W24
	.byte PEND
song_unk_58_1_005: @ 0x08348328
	.byte W24
	.byte N08, Cn2, v127
	.byte W12
	.byte Gn2
	.byte W12
	.byte Cn3
	.byte W24
	.byte PEND
	.byte W24
	.byte Gn1
	.byte W12
	.byte Dn2
	.byte W12
	.byte Gn2
	.byte W24
	.byte PATT
	 .4byte song_unk_58_1_003
	.byte PATT
	 .4byte song_unk_58_1_004
	.byte PATT
	 .4byte song_unk_58_1_005
	.byte W24
	.byte GOTO
	 .4byte song_unk_58_1_006
	.byte FINE
song_unk_58_2: @ 0x0834834F
	.byte KEYSH, 0x00
	.byte VOICE, 0x21
	.byte VOL, 0x7F
	.byte N23, Dn4, v040
	.byte W24
song_unk_58_2_009: @ 0x08348359
	.byte N23, Bn4, v040
	.byte W24
	.byte Dn4
	.byte W24
song_unk_58_2_007: @ 0x0834835F
	.byte N23, An4, v040
	.byte W24
	.byte Bn4
	.byte W24
	.byte En4
	.byte W24
	.byte PEND
song_unk_58_2_008: @ 0x08348368
	.byte N23, An4, v040
	.byte W24
	.byte Bn4
	.byte W24
	.byte Fs4
	.byte W24
	.byte PEND
	.byte Gn4
	.byte W24
	.byte N11, Dn4
	.byte W12
	.byte En4
	.byte W12
	.byte N23, Cn4
	.byte W24
	.byte Dn4
	.byte W24
	.byte Bn4
	.byte W24
	.byte Dn4
	.byte W24
	.byte PATT
	 .4byte song_unk_58_2_007
	.byte PATT
	 .4byte song_unk_58_2_008
	.byte N23, Gn4, v040
	.byte W24
	.byte N11, Dn5
	.byte W12
	.byte En5
	.byte W12
	.byte N23, Cn5
	.byte W24
	.byte N11, Bn4
	.byte W12
	.byte An4
	.byte W12
	.byte GOTO
	 .4byte song_unk_58_2_009
	.byte FINE
	.align 2, 0
	.global song_unk_58
song_unk_58: @ 0x083483A4 (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_58_0
	.4byte song_unk_58_1
	.4byte song_unk_58_2

