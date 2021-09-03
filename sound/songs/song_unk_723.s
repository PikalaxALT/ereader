	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_723_0: @ 0x083530A4
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_723_0_001: @ 0x083530A8
	.byte TEMPO, 0x1D
	.byte VOICE, 0x44
	.byte PAN, 0x3C
	.byte N06, An1, v127
	.byte W44
	.byte N02
	.byte W04
	.byte N06, Dn2
	.byte W48
song_unk_723_0_000: @ 0x083530B7
	.byte N06, An1, v127
	.byte W44
	.byte N02
	.byte W04
	.byte N06, Dn2
	.byte W48
	.byte PEND
	.byte PATT
	 .4byte song_unk_723_0_000
	.byte PATT
	 .4byte song_unk_723_0_000
	.byte GOTO
	 .4byte song_unk_723_0_001
	.byte FINE
song_unk_723_1: @ 0x083530D1
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_723_1_003: @ 0x083530D5
	.byte VOICE, 0x5D
	.byte N11, Cn1, v127
	.byte W12
	.byte Ds1, v080
	.byte W36
	.byte Cn1, v127
	.byte W12
	.byte Ds1, v080
	.byte W12
	.byte Gs6, v127
	.byte W24
song_unk_723_1_002: @ 0x083530E7
	.byte N11, Cn1, v127
	.byte W12
	.byte Ds1, v080
	.byte W36
	.byte Cn1, v127
	.byte W12
	.byte Ds1, v080
	.byte W12
	.byte Gs6, v127
	.byte W24
	.byte PEND
	.byte PATT
	 .4byte song_unk_723_1_002
	.byte PATT
	 .4byte song_unk_723_1_002
	.byte GOTO
	 .4byte song_unk_723_1_003
	.byte FINE
song_unk_723_2: @ 0x08353108
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_723_2_005: @ 0x0835310C
	.byte VOICE, 0x65
	.byte PAN, 0x28
	.byte N01, Cn4, v024
	.byte W12
	.byte N01
	.byte W12
	.byte N01
	.byte W12
	.byte N09
	.byte W12
	.byte N01
	.byte W12
	.byte N01
	.byte W36
song_unk_723_2_004: @ 0x0835311E
	.byte N01, Cn4, v024
	.byte W12
	.byte N01
	.byte W12
	.byte N01
	.byte W12
	.byte N09
	.byte W12
	.byte N01
	.byte W12
	.byte N01
	.byte W36
	.byte PEND
	.byte PATT
	 .4byte song_unk_723_2_004
	.byte PATT
	 .4byte song_unk_723_2_004
	.byte GOTO
	 .4byte song_unk_723_2_005
	.byte FINE
song_unk_723_3: @ 0x0835313D
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_723_3_006: @ 0x08353141
	.byte VOICE, 0x7C
	.byte PAN, 0x44
	.byte N03, En4, v127
	.byte W08
	.byte Cs4
	.byte W04
	.byte Dn4
	.byte W08
	.byte En4
	.byte W16
	.byte En3
	.byte W08
	.byte Dn4
	.byte W52
	.byte Cs4
	.byte W08
	.byte An3
	.byte W04
	.byte Bn3
	.byte W08
	.byte Cs4
	.byte W16
	.byte En3
	.byte W08
	.byte Bn3
	.byte W52
	.byte En4
	.byte W08
	.byte Cs4
	.byte W04
	.byte Dn4
	.byte W08
	.byte En4
	.byte W16
	.byte En3
	.byte W08
	.byte Fs4
	.byte W16
	.byte En4
	.byte W08
	.byte Dn4
	.byte W16
	.byte An3
	.byte W08
	.byte Cs4
	.byte W04
	.byte W96
	.byte GOTO
	 .4byte song_unk_723_3_006
	.byte FINE
	.align 2, 0
	.global song_unk_723
song_unk_723: @ 0x0835317C (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_723_0
	.4byte song_unk_723_1
	.4byte song_unk_723_2
	.4byte song_unk_723_3
	.size song_unk_723,.-song_unk_723
