	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_749_0: @ 0x083AA908
	.byte VOL, 0x64
	.byte KEYSH, 0x00
song_unk_749_0_000: @ 0x083AA90C
	.byte TEMPO, 0x3C
	.byte VOICE, 0x7C
	.byte PAN, 0x7F
	.byte W24
	.byte N03, An4, v127
	.byte W16
	.byte Bn4
	.byte W08
	.byte Cn5
	.byte W24
	.byte An4
	.byte W24
	.byte Fs5
	.byte W40
	.byte En5
	.byte W56
	.byte W96
	.byte W96
	.byte GOTO
	 .4byte song_unk_749_0_000
	.byte FINE
song_unk_749_1: @ 0x083AA929
	.byte VOL, 0x64
	.byte KEYSH, 0x00
song_unk_749_1_001: @ 0x083AA92D
	.byte VOICE, 0x44
	.byte PAN, 0x40
	.byte N23, An2, v064
	.byte W48
	.byte En3
	.byte W48
	.byte Dn3
	.byte W40
	.byte N07, Dn2
	.byte W08
	.byte N23, En2
	.byte W24
	.byte Fs2
	.byte W24
	.byte Gn2
	.byte W48
	.byte Dn3
	.byte W48
	.byte Gn2
	.byte W40
	.byte N07, Dn2
	.byte W08
	.byte N23, Gn2
	.byte W24
	.byte Gs2
	.byte W24
	.byte GOTO
	 .4byte song_unk_749_1_001
	.byte FINE
song_unk_749_2: @ 0x083AA955
	.byte VOL, 0x64
	.byte KEYSH, 0x00
song_unk_749_2_002: @ 0x083AA959
	.byte VOICE, 0x64
	.byte PAN, 0x00
	.byte N15, Cn4, v064
	.byte W24
	.byte N00, Cn4, v127
	.byte W16
	.byte N00
	.byte W08
	.byte N15, Cn4, v064
	.byte W24
	.byte N00, Cn4, v127
	.byte W16
	.byte N00
	.byte W08
	.byte PEND
	.byte PATT
	 .4byte song_unk_749_2_002
	.byte PATT
	 .4byte song_unk_749_2_002
	.byte PATT
	 .4byte song_unk_749_2_002
	.byte GOTO
	 .4byte song_unk_749_2_002
	.byte FINE
song_unk_749_3: @ 0x083AA987
	.byte VOL, 0x64
	.byte KEYSH, 0x00
song_unk_749_3_003: @ 0x083AA98B
	.byte VOICE, 0x02
	.byte PAN, 0x7F
	.byte W96
	.byte W96
	.byte W88
	.byte N03, Dn4, v064
	.byte W08
	.byte W16
	.byte N07
	.byte W08
	.byte N15, Cs4
	.byte W16
	.byte N07, Dn4
	.byte W56
	.byte GOTO
	 .4byte song_unk_749_3_003
	.byte FINE
song_unk_749_4: @ 0x083AA9A5
	.byte VOL, 0x64
	.byte KEYSH, 0x00
song_unk_749_4_004: @ 0x083AA9A9
	.byte VOICE, 0x20
	.byte PAN, 0x00
	.byte W24
	.byte N03, An2, v096
	.byte W16
	.byte Bn2
	.byte W08
	.byte Cn3
	.byte W24
	.byte An2
	.byte W24
	.byte Fs3
	.byte W40
	.byte En3
	.byte W56
	.byte W88
	.byte Bn3, v064
	.byte W08
	.byte W16
	.byte N07
	.byte W08
	.byte N15, As3
	.byte W16
	.byte N07, Bn3
	.byte W56
	.byte GOTO
	 .4byte song_unk_749_4_004
	.byte FINE
	.align 2, 0
	.global song_unk_749
song_unk_749: @ 0x083AA9D0 (song header)
	.byte 5, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_749_0
	.4byte song_unk_749_1
	.4byte song_unk_749_2
	.4byte song_unk_749_3
	.4byte song_unk_749_4

