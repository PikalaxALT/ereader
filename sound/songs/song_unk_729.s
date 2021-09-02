	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_729_0: @ 0x08353A70
	.byte VOL, 0x78
	.byte KEYSH, 0x00
song_unk_729_0_000: @ 0x08353A74
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
	 .4byte song_unk_729_0_000
	.byte FINE
song_unk_729_1: @ 0x08353A9A
	.byte VOL, 0x78
	.byte KEYSH, 0x00
song_unk_729_1_001: @ 0x08353A9E
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
	 .4byte song_unk_729_1_001
	.byte FINE
song_unk_729_2: @ 0x08353AC6
	.byte VOL, 0x78
	.byte KEYSH, 0x00
song_unk_729_2_002: @ 0x08353ACA
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
	 .4byte song_unk_729_2_002
	.byte FINE
song_unk_729_3: @ 0x08353AF4
	.byte VOL, 0x78
	.byte KEYSH, 0x00
song_unk_729_3_003: @ 0x08353AF8
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
	 .4byte song_unk_729_3_003
	.byte FINE
song_unk_729_4: @ 0x08353B20
	.byte VOL, 0x78
	.byte KEYSH, 0x00
song_unk_729_4_004: @ 0x08353B24
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
	 .4byte song_unk_729_4_004
	.byte FINE
	.align 2, 0
	.global song_unk_729
song_unk_729: @ 0x08353B50 (song header)
	.byte 5, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_729_0
	.4byte song_unk_729_1
	.4byte song_unk_729_2
	.4byte song_unk_729_3
	.4byte song_unk_729_4

