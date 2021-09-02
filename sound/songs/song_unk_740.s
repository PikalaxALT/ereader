	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_740_0: @ 0x083A9D24
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_740_0_000: @ 0x083A9D28
	.byte TEMPO, 0x38
	.byte VOICE, 0x45
	.byte PAN, 0x40
	.byte N04, An2, v127
	.byte W18
	.byte En3
	.byte W18
	.byte Bn3
	.byte W60
	.byte W48
	.byte An2
	.byte W18
	.byte En3
	.byte W30
	.byte Dn3
	.byte W18
	.byte An3
	.byte W18
	.byte Dn4
	.byte W60
	.byte W36
	.byte Fs2
	.byte W12
	.byte Dn3
	.byte W18
	.byte An3
	.byte W30
	.byte GOTO
	 .4byte song_unk_740_0_000
	.byte FINE
song_unk_740_1: @ 0x083A9D4E
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_740_1_001: @ 0x083A9D52
	.byte VOICE, 0x03
	.byte PAN, 0x7F
	.byte W24
	.byte N02, Fs4, v096
	.byte W12
	.byte En4
	.byte W12
	.byte Bn3
	.byte W48
	.byte Cs4
	.byte W12
	.byte Bn3
	.byte W12
	.byte Gn3
	.byte W48
	.byte Fs4
	.byte W12
	.byte En4
	.byte W12
	.byte Bn3
	.byte W24
	.byte N02
	.byte W08
	.byte Cs4
	.byte W08
	.byte Bn3
	.byte W08
	.byte An3
	.byte W48
	.byte W96
	.byte GOTO
	 .4byte song_unk_740_1_001
	.byte FINE
song_unk_740_2: @ 0x083A9D7A
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_740_2_002: @ 0x083A9D7E
	.byte W32
	.byte W02
	.byte N01, Fs4, v016
	.byte W12
	.byte En4
	.byte W12
	.byte Bn3
	.byte W36
	.byte W02
	.byte W10
	.byte Cs4
	.byte W12
	.byte Bn3
	.byte W12
	.byte Gn3
	.byte W48
	.byte Fs4
	.byte W12
	.byte En4
	.byte W02
	.byte W10
	.byte Bn3
	.byte W24
	.byte W01
	.byte N01
	.byte W08
	.byte Cs4
	.byte W08
	.byte Bn3
	.byte W07
	.byte An3
	.byte W36
	.byte W02
	.byte W96
	.byte GOTO
	 .4byte song_unk_740_2_002
	.byte FINE
song_unk_740_3: @ 0x083A9DA8
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_740_3_003: @ 0x083A9DAC
	.byte VOICE, 0x21
	.byte PAN, 0x00
	.byte W24
	.byte N02, Dn4, v096
	.byte W12
	.byte Cs4
	.byte W12
	.byte Gn3
	.byte W48
	.byte An3
	.byte W12
	.byte Gn3
	.byte W12
	.byte En3
	.byte W48
	.byte Dn4
	.byte W12
	.byte Cs4
	.byte W12
	.byte Gn3
	.byte W24
	.byte N02
	.byte W08
	.byte An3
	.byte W08
	.byte Gn3
	.byte W08
	.byte Fs3
	.byte W48
	.byte W96
	.byte GOTO
	 .4byte song_unk_740_3_003
	.byte FINE
song_unk_740_4: @ 0x083A9DD4
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_740_4_004: @ 0x083A9DD8
	.byte W32
	.byte W02
	.byte N01, Dn4, v016
	.byte W12
	.byte Cs4
	.byte W12
	.byte Gn3
	.byte W36
	.byte W02
	.byte W10
	.byte An3
	.byte W12
	.byte Gn3
	.byte W12
	.byte En3
	.byte W48
	.byte Dn4
	.byte W12
	.byte Cs4
	.byte W02
	.byte W10
	.byte Gn3
	.byte W24
	.byte W01
	.byte N01
	.byte W08
	.byte An3
	.byte W08
	.byte Gn3
	.byte W07
	.byte Fs3
	.byte W36
	.byte W02
	.byte W96
	.byte GOTO
	 .4byte song_unk_740_4_004
	.byte FINE
	.align 2, 0
	.global song_unk_740
song_unk_740: @ 0x083A9E04 (song header)
	.byte 5, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_740_0
	.4byte song_unk_740_1
	.4byte song_unk_740_2
	.4byte song_unk_740_3
	.4byte song_unk_740_4

