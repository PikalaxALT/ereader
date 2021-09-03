	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_704_0: @ 0x08351D9C
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_704_0_000: @ 0x08351DA0
	.byte TEMPO, 0x2C
	.byte VOICE, 0x06
	.byte N07, Dn4, v048
	.byte W08
	.byte N05, En4
	.byte W12
	.byte Dn4
	.byte W12
	.byte Cs4
	.byte W16
	.byte N07, Bn3
	.byte W08
	.byte N05, Cs4
	.byte W12
	.byte Bn3
	.byte W28
	.byte N07, Gs3
	.byte W08
	.byte N05, As3
	.byte W12
	.byte Gs3
	.byte W12
	.byte Gn3
	.byte W16
	.byte Fn3
	.byte W48
	.byte GOTO
	 .4byte song_unk_704_0_000
	.byte FINE
song_unk_704_1: @ 0x08351DC9
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_704_1_001: @ 0x08351DCD
	.byte VOICE, 0x7F
	.byte N11, En1, v064
	.byte W12
	.byte N01, En1, v032
	.byte W12
	.byte N01
	.byte W12
	.byte N01
	.byte W12
	.byte N01
	.byte W12
	.byte N01
	.byte W12
	.byte N01
	.byte W12
	.byte N01
	.byte W12
	.byte En1, v064
	.byte W12
	.byte En1, v032
	.byte W12
	.byte N01
	.byte W12
	.byte N01
	.byte W12
	.byte N01
	.byte W12
	.byte N01
	.byte W12
	.byte N01
	.byte W12
	.byte N01
	.byte W12
	.byte GOTO
	 .4byte song_unk_704_1_001
	.byte FINE
song_unk_704_2: @ 0x08351DFB
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_704_2_002: @ 0x08351DFF
	.byte VOICE, 0x7F
	.byte N11, Cn1, v127
	.byte W20
	.byte N03
	.byte W16
	.byte N11
	.byte W24
	.byte N11
	.byte W36
	.byte N11
	.byte W20
	.byte N03
	.byte W16
	.byte N11
	.byte W24
	.byte N11
	.byte W36
	.byte GOTO
	 .4byte song_unk_704_2_002
	.byte FINE
song_unk_704_3: @ 0x08351E19
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_704_3_003: @ 0x08351E1D
	.byte VOICE, 0x7F
	.byte W24
	.byte N11, Dn1, v096
	.byte W48
	.byte N11
	.byte W24
	.byte W24
	.byte N11
	.byte W48
	.byte N11
	.byte W24
	.byte GOTO
	 .4byte song_unk_704_3_003
	.byte FINE
	.align 2, 0
	.global song_unk_704
song_unk_704: @ 0x08351E34 (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup005 @ voice group
	.4byte song_unk_704_0
	.4byte song_unk_704_1
	.4byte song_unk_704_2
	.4byte song_unk_704_3
	.size song_unk_704,.-song_unk_704
