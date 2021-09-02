	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_707_0: @ 0x083520C0
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_707_0_000: @ 0x083520C4
	.byte TEMPO, 0x20
	.byte VOICE, 0x07
	.byte N42, Fn4, v064
	.byte W48
	.byte An3
	.byte W48
	.byte En4
	.byte W48
	.byte Gs3
	.byte W48
	.byte Ds4
	.byte W48
	.byte Gn3
	.byte W48
	.byte Dn4
	.byte W48
	.byte Fs3
	.byte W48
	.byte GOTO
	 .4byte song_unk_707_0_000
	.byte FINE
song_unk_707_1: @ 0x083520E0
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_707_1_002: @ 0x083520E4
	.byte VOICE, 0x7F
	.byte N10, Cn1, v127
	.byte W48
	.byte N10
	.byte W48
song_unk_707_1_001: @ 0x083520EC
	.byte N10, Cn1, v127
	.byte W48
	.byte N04
	.byte W06
	.byte N10
	.byte W42
	.byte PEND
	.byte N10
	.byte W48
	.byte N10
	.byte W48
	.byte PATT
	 .4byte song_unk_707_1_001
	.byte GOTO
	 .4byte song_unk_707_1_002
	.byte FINE
song_unk_707_2: @ 0x08352104
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_707_2_004: @ 0x08352108
	.byte VOICE, 0x7F
	.byte W24
	.byte N10, Dn1, v096
	.byte W48
	.byte N10
	.byte W24
song_unk_707_2_003: @ 0x08352111
	.byte W24
	.byte N10, Dn1, v096
	.byte W48
	.byte N10
	.byte W24
	.byte PEND
	.byte PATT
	 .4byte song_unk_707_2_003
	.byte PATT
	 .4byte song_unk_707_2_003
	.byte GOTO
	 .4byte song_unk_707_2_004
	.byte FINE
song_unk_707_3: @ 0x08352129
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_707_3_006: @ 0x0835212D
	.byte VOICE, 0x7F
	.byte N00, En1, v032
	.byte W12
	.byte N00
	.byte W12
	.byte N00
	.byte W12
	.byte N00
	.byte W12
	.byte N00
	.byte W12
	.byte N00
	.byte W12
	.byte N00
	.byte W12
	.byte N00
	.byte W12
song_unk_707_3_005: @ 0x08352141
	.byte N00, En1, v032
	.byte W12
	.byte N00
	.byte W12
	.byte N00
	.byte W12
	.byte N00
	.byte W12
	.byte N00
	.byte W12
	.byte N00
	.byte W12
	.byte N00
	.byte W12
	.byte N00
	.byte W12
	.byte PEND
	.byte PATT
	 .4byte song_unk_707_3_005
	.byte N00, En1, v032
	.byte W12
	.byte N00
	.byte W12
	.byte N00
	.byte W12
	.byte N00
	.byte W12
	.byte N00
	.byte W12
	.byte N00
	.byte W12
	.byte N10, En1, v064
	.byte W12
	.byte N00, En1, v032
	.byte W12
	.byte GOTO
	 .4byte song_unk_707_3_006
	.byte FINE
song_unk_707_4: @ 0x08352175
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_707_4_007: @ 0x08352179
	.byte VOICE, 0x7F
	.byte W96
	.byte W96
	.byte W96
	.byte W60
	.byte N04, Bn1, v064
	.byte W06
	.byte Bn1, v032
	.byte W30
	.byte GOTO
	 .4byte song_unk_707_4_007
	.byte FINE
	.align 2, 0
	.global song_unk_707
song_unk_707: @ 0x0835218C (song header)
	.byte 5, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804DE80 @ voice group
	.4byte song_unk_707_0
	.4byte song_unk_707_1
	.4byte song_unk_707_2
	.4byte song_unk_707_3
	.4byte song_unk_707_4

