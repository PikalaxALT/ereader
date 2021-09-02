	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_34_0: @ 0x08347D9C
	.byte KEYSH, 0x00
song_unk_34_0_000: @ 0x08347D9E
	.byte TEMPO, 0x4B
	.byte VOICE, 0x05
	.byte VOL, 0x7F
	.byte N21, Dn4, v056
	.byte W24
	.byte N03, An3
	.byte W16
	.byte Fs3
	.byte W24
	.byte Gn3
	.byte W08
	.byte An3
	.byte W16
	.byte Bn3
	.byte W08
	.byte N66, An3
	.byte W72
	.byte N03
	.byte W08
	.byte Bn3
	.byte W08
	.byte Cs4
	.byte W08
	.byte N21, Dn4
	.byte W24
	.byte N03, An3
	.byte W16
	.byte Fs3
	.byte W24
	.byte Gn3
	.byte W08
	.byte Fs3
	.byte W16
	.byte En3
	.byte W08
	.byte N90, Dn3
	.byte W96
	.byte GOTO
	 .4byte song_unk_34_0_000
	.byte FINE
song_unk_34_1: @ 0x08347DD3
	.byte KEYSH, 0x00
song_unk_34_1_001: @ 0x08347DD5
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte N03, Dn2, v080
	.byte W24
	.byte An2
	.byte W24
	.byte Gn2
	.byte W24
	.byte An2
	.byte W24
	.byte Fs2
	.byte W24
	.byte An2
	.byte W24
	.byte En2
	.byte W24
	.byte An2
	.byte W24
	.byte Dn2
	.byte W24
	.byte An2
	.byte W24
	.byte Gn2
	.byte W24
	.byte An2
	.byte W24
	.byte Fs2
	.byte W24
	.byte Fn2
	.byte W24
	.byte En2
	.byte W24
	.byte Ds2
	.byte W24
	.byte GOTO
	 .4byte song_unk_34_1_001
	.byte FINE
song_unk_34_2: @ 0x08347E01
	.byte KEYSH, 0x00
song_unk_34_2_002: @ 0x08347E03
	.byte VOICE, 0x3E
	.byte VOL, 0x7F
	.byte N03, Fs5, v052
	.byte W24
	.byte N03
	.byte W24
	.byte En5
	.byte W24
	.byte N03
	.byte W24
	.byte Dn5
	.byte W24
	.byte N03
	.byte W24
	.byte Gn5
	.byte W24
	.byte N03
	.byte W24
	.byte Fs5
	.byte W24
	.byte N03
	.byte W24
	.byte En5
	.byte W24
	.byte N03
	.byte W24
	.byte An5
	.byte W24
	.byte N03
	.byte W24
	.byte Gn5
	.byte W24
	.byte N03
	.byte W24
	.byte GOTO
	 .4byte song_unk_34_2_002
	.byte FINE
song_unk_34_3: @ 0x08347E2F
	.byte KEYSH, 0x00
song_unk_34_3_004: @ 0x08347E31
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte N23, Fs1, v016
	.byte W24
	.byte N01
	.byte W16
	.byte N01
	.byte W08
	.byte N23
	.byte W24
	.byte N01
	.byte W16
	.byte N01
	.byte W08
song_unk_34_3_003: @ 0x08347E43
	.byte N23, Fs1, v016
	.byte W24
	.byte N01
	.byte W16
	.byte N01
	.byte W08
	.byte N23
	.byte W24
	.byte N01
	.byte W16
	.byte N01
	.byte W08
	.byte PEND
	.byte PATT
	 .4byte song_unk_34_3_003
	.byte PATT
	 .4byte song_unk_34_3_003
	.byte GOTO
	 .4byte song_unk_34_3_004
	.byte FINE
	.align 2, 0
	.global song_unk_34
song_unk_34: @ 0x08347E64 (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_34_0
	.4byte song_unk_34_1
	.4byte song_unk_34_2
	.4byte song_unk_34_3

