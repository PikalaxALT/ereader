	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_719_0: @ 0x08352AB8
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_719_0_001: @ 0x08352ABC
	.byte TEMPO, 0x39
	.byte VOICE, 0x5D
	.byte N23, Cn1, v127
	.byte W24
	.byte N11, Gs6, v096
	.byte W12
	.byte Cn1, v127
	.byte W12
	.byte N23
	.byte W24
	.byte N11, Gs6, v096
	.byte W12
	.byte Cn1, v127
	.byte W12
song_unk_719_0_000: @ 0x08352AD4
	.byte N23, Cn1, v127
	.byte W24
	.byte N11, Gs6, v096
	.byte W12
	.byte Cn1, v127
	.byte W12
	.byte N23
	.byte W24
	.byte N11, Gs6, v096
	.byte W12
	.byte Cn1, v127
	.byte W12
	.byte PEND
	.byte PATT
	 .4byte song_unk_719_0_000
	.byte PATT
	 .4byte song_unk_719_0_000
	.byte PATT
	 .4byte song_unk_719_0_000
	.byte PATT
	 .4byte song_unk_719_0_000
	.byte PATT
	 .4byte song_unk_719_0_000
	.byte PATT
	 .4byte song_unk_719_0_000
	.byte GOTO
	 .4byte song_unk_719_0_001
	.byte FINE
song_unk_719_1: @ 0x08352B0D
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_719_1_004: @ 0x08352B11
	.byte VOICE, 0x05
	.byte PAN, 0x60
	.byte N11, Fn2, v056
	.byte W12
	.byte Cn3
	.byte W12
	.byte An2
	.byte W12
	.byte Cn3
	.byte W12
	.byte Fn2
	.byte W12
	.byte Cn3
	.byte W12
	.byte An2
	.byte W12
	.byte Cn3
	.byte W12
song_unk_719_1_002: @ 0x08352B27
	.byte N11, Fn2, v056
	.byte W12
	.byte Dn3
	.byte W12
	.byte As2
	.byte W12
	.byte Dn3
	.byte W12
	.byte Fn2
	.byte W12
	.byte Dn3
	.byte W12
	.byte As2
	.byte W12
	.byte Dn3
	.byte W12
	.byte PEND
song_unk_719_1_003: @ 0x08352B3A
	.byte N11, Fn2, v056
	.byte W12
	.byte En3
	.byte W12
	.byte Cn3
	.byte W12
	.byte En3
	.byte W12
	.byte Fn2
	.byte W12
	.byte En3
	.byte W12
	.byte Cn3
	.byte W12
	.byte En3
	.byte W12
	.byte PEND
	.byte PATT
	 .4byte song_unk_719_1_002
	.byte N11, Fn2, v056
	.byte W12
	.byte Cn3
	.byte W12
	.byte An2
	.byte W12
	.byte Cn3
	.byte W12
	.byte Fn2
	.byte W12
	.byte Cn3
	.byte W12
	.byte An2
	.byte W12
	.byte Cn3
	.byte W12
	.byte PATT
	 .4byte song_unk_719_1_002
	.byte PATT
	 .4byte song_unk_719_1_003
	.byte PATT
	 .4byte song_unk_719_1_002
	.byte GOTO
	 .4byte song_unk_719_1_004
	.byte FINE
song_unk_719_2: @ 0x08352B79
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_719_2_005: @ 0x08352B7D
	.byte VOICE, 0x24
	.byte MOD, 0x00
	.byte PAN, 0x38
	.byte N11, Cn4, v112
	.byte W12
	.byte An3
	.byte W12
	.byte As3
	.byte W12
	.byte N32, Cn4
	.byte W36
	.byte N11, Cn3
	.byte W12
	.byte N92, As3
	.byte W12
	.byte W24
	.byte MOD, 0x02
	.byte W72
	.byte 0x00
	.byte N11, An3
	.byte W12
	.byte Fn3
	.byte W12
	.byte Gn3
	.byte W12
	.byte N32, An3
	.byte W36
	.byte N11, Cn3
	.byte W12
	.byte N92, Gn3
	.byte W12
	.byte W24
	.byte MOD, 0x02
	.byte W72
	.byte 0x00
	.byte N11, Cn4
	.byte W12
	.byte An3
	.byte W12
	.byte As3
	.byte W12
	.byte N32, Cn4
	.byte W36
	.byte N11, Cn3
	.byte W12
	.byte N32, Dn4
	.byte W12
	.byte W24
	.byte N11, Cn4
	.byte W12
	.byte N32, As3
	.byte W36
	.byte N11, Fn3
	.byte W12
	.byte N92, An3
	.byte W12
	.byte W24
	.byte MOD, 0x02
	.byte W72
	.byte W96
	.byte GOTO
	 .4byte song_unk_719_2_005
	.byte FINE
	.align 2, 0
	.global song_unk_719
song_unk_719: @ 0x08352BD8 (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_719_0
	.4byte song_unk_719_1
	.4byte song_unk_719_2
	.size song_unk_719,.-song_unk_719
