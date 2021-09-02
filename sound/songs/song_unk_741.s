	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_741_0: @ 0x083A9E20
	.byte VOL, 0x64
	.byte KEYSH, 0x00
song_unk_741_0_003: @ 0x083A9E24
	.byte TEMPO, 0x27
	.byte VOICE, 0x44
	.byte PAN, 0x40
	.byte N03, Gn2, v127
	.byte W12
	.byte Gn3
	.byte W12
	.byte Dn2
	.byte W12
	.byte Dn3
	.byte W12
	.byte Gn2
	.byte W12
	.byte Gn3
	.byte W12
	.byte Dn2
	.byte W12
	.byte Dn3
	.byte W12
song_unk_741_0_000: @ 0x083A9E3C
	.byte N03, Cn3, v127
	.byte W12
	.byte Cn4
	.byte W12
	.byte Gn2
	.byte W12
	.byte Gn3
	.byte W12
	.byte Cn3
	.byte W12
	.byte Cn4
	.byte W12
	.byte Gn2
	.byte W12
	.byte Gn3
	.byte W12
	.byte PEND
song_unk_741_0_001: @ 0x083A9E4F
	.byte N03, Gn2, v127
	.byte W12
	.byte Gn3
	.byte W12
	.byte Dn2
	.byte W12
	.byte Dn3
	.byte W12
	.byte Gn2
	.byte W12
	.byte Gn3
	.byte W12
	.byte Dn2
	.byte W12
	.byte Dn3
	.byte W12
	.byte PEND
	.byte PATT
	 .4byte song_unk_741_0_000
song_unk_741_0_002: @ 0x083A9E67
	.byte N03, Dn2, v127
	.byte W12
	.byte Dn3
	.byte W12
	.byte An1
	.byte W12
	.byte An2
	.byte W12
	.byte Dn2
	.byte W12
	.byte Dn3
	.byte W12
	.byte Fs2
	.byte W12
	.byte Fs3
	.byte W12
	.byte PEND
	.byte PATT
	 .4byte song_unk_741_0_001
	.byte PATT
	 .4byte song_unk_741_0_002
	.byte PATT
	 .4byte song_unk_741_0_001
	.byte GOTO
	 .4byte song_unk_741_0_003
	.byte FINE
song_unk_741_1: @ 0x083A9E8F
	.byte VOL, 0x64
	.byte KEYSH, 0x00
song_unk_741_1_007: @ 0x083A9E93
	.byte VOICE, 0x02
	.byte PAN, 0x40
	.byte W12
	.byte N01, Fn3, v064
	.byte W12
	.byte N01
	.byte W36
	.byte N01
	.byte W12
	.byte N01
	.byte W24
song_unk_741_1_004: @ 0x083A9EA2
	.byte W12
	.byte N01, En3, v064
	.byte W12
	.byte N01
	.byte W36
	.byte N01
	.byte W12
	.byte N01
	.byte W24
	.byte PEND
	.byte W12
	.byte Fn3
	.byte W12
	.byte N01
	.byte W36
	.byte N01
	.byte W12
	.byte N01
	.byte W24
	.byte PATT
	 .4byte song_unk_741_1_004
song_unk_741_1_005: @ 0x083A9EBC
	.byte W12
	.byte N01, Fs3, v064
	.byte W12
	.byte N01
	.byte W36
	.byte N01
	.byte W12
	.byte N01
	.byte W24
	.byte PEND
song_unk_741_1_006: @ 0x083A9EC8
	.byte W12
	.byte N01, Dn3, v064
	.byte W12
	.byte N01
	.byte W36
	.byte N01
	.byte W12
	.byte N01
	.byte W24
	.byte PEND
	.byte PATT
	 .4byte song_unk_741_1_005
	.byte PATT
	 .4byte song_unk_741_1_006
	.byte GOTO
	 .4byte song_unk_741_1_007
	.byte FINE
song_unk_741_2: @ 0x083A9EE4
	.byte VOL, 0x64
	.byte KEYSH, 0x00
song_unk_741_2_010: @ 0x083A9EE8
	.byte VOICE, 0x7C
	.byte PAN, 0x50
	.byte TUNE, 0x48
	.byte W12
	.byte N02, En5, v088
	.byte W06
	.byte Dn5
	.byte W06
	.byte An4
	.byte W24
	.byte Bn4
	.byte W06
	.byte An4
	.byte W06
	.byte Fn4
	.byte W24
	.byte En5
	.byte W06
	.byte Dn5
	.byte W06
song_unk_741_2_008: @ 0x083A9F01
	.byte N02, An4, v088
	.byte W12
	.byte N02
	.byte W04
	.byte Bn4
	.byte W04
	.byte An4
	.byte W04
	.byte Gn4
	.byte W72
	.byte PEND
	.byte W12
	.byte En5
	.byte W06
	.byte Dn5
	.byte W06
	.byte An4
	.byte W24
	.byte Bn4
	.byte W06
	.byte An4
	.byte W06
	.byte Fn4
	.byte W24
	.byte En5
	.byte W06
	.byte Dn5
	.byte W06
	.byte PATT
	 .4byte song_unk_741_2_008
song_unk_741_2_009: @ 0x083A9F24
	.byte W12
	.byte N02, An4, v088
	.byte W06
	.byte Bn4
	.byte W06
	.byte Cn5
	.byte W24
	.byte Fs5
	.byte W06
	.byte En5
	.byte W06
	.byte Cn5
	.byte W24
	.byte Bn4
	.byte W06
	.byte Cn5
	.byte W06
	.byte PEND
	.byte Dn5
	.byte W12
	.byte N02
	.byte W04
	.byte En5
	.byte W04
	.byte Dn5
	.byte W04
	.byte An4
	.byte W72
	.byte PATT
	 .4byte song_unk_741_2_009
	.byte N02, Dn5, v088
	.byte W04
	.byte En5
	.byte W04
	.byte Dn5
	.byte W04
	.byte An4
	.byte W84
	.byte GOTO
	 .4byte song_unk_741_2_010
	.byte FINE
song_unk_741_3: @ 0x083A9F57
	.byte VOL, 0x64
	.byte KEYSH, 0x00
song_unk_741_3_013: @ 0x083A9F5B
	.byte VOICE, 0x7C
	.byte PAN, 0x30
	.byte W12
	.byte N02, En5, v088
	.byte W06
	.byte Dn5
	.byte W06
	.byte An4
	.byte W24
	.byte Bn4
	.byte W06
	.byte An4
	.byte W06
	.byte Fn4
	.byte W24
	.byte En5
	.byte W06
	.byte Dn5
	.byte W06
song_unk_741_3_011: @ 0x083A9F72
	.byte N02, An4, v088
	.byte W12
	.byte N02
	.byte W04
	.byte Bn4
	.byte W04
	.byte An4
	.byte W04
	.byte Gn4
	.byte W72
	.byte PEND
	.byte W12
	.byte En5
	.byte W06
	.byte Dn5
	.byte W06
	.byte An4
	.byte W24
	.byte Bn4
	.byte W06
	.byte An4
	.byte W06
	.byte Fn4
	.byte W24
	.byte En5
	.byte W06
	.byte Dn5
	.byte W06
	.byte PATT
	 .4byte song_unk_741_3_011
song_unk_741_3_012: @ 0x083A9F95
	.byte W12
	.byte N02, An4, v088
	.byte W06
	.byte Bn4
	.byte W06
	.byte Cn5
	.byte W24
	.byte Fs5
	.byte W06
	.byte En5
	.byte W06
	.byte Cn5
	.byte W24
	.byte Bn4
	.byte W06
	.byte Cn5
	.byte W06
	.byte PEND
	.byte Dn5
	.byte W12
	.byte N02
	.byte W04
	.byte En5
	.byte W04
	.byte Dn5
	.byte W04
	.byte An4
	.byte W72
	.byte PATT
	 .4byte song_unk_741_3_012
	.byte N02, Dn5, v088
	.byte W04
	.byte En5
	.byte W04
	.byte Dn5
	.byte W04
	.byte An4
	.byte W84
	.byte GOTO
	 .4byte song_unk_741_3_013
	.byte FINE
	.align 2, 0
	.global song_unk_741
song_unk_741: @ 0x083A9FC8 (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_741_0
	.4byte song_unk_741_1
	.4byte song_unk_741_2
	.4byte song_unk_741_3

