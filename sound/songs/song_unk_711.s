	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_711_0: @ 0x083522D0
	.byte VOL, 0x50
	.byte KEYSH, 0x00
song_unk_711_0_000: @ 0x083522D4
	.byte TEMPO, 0x41
	.byte VOICE, 0x00
	.byte PAN, 0x30
	.byte W72
	.byte W72
	.byte W72
	.byte W72
	.byte W48
	.byte N05, As4, v048
	.byte W24
	.byte W48
	.byte N05
	.byte W24
	.byte GOTO
	 .4byte song_unk_711_0_000
	.byte FINE
song_unk_711_1: @ 0x083522EC
	.byte VOL, 0x50
	.byte KEYSH, 0x00
song_unk_711_1_001: @ 0x083522F0
	.byte VOICE, 0x00
	.byte PAN, 0x30
	.byte W72
	.byte W72
	.byte W72
	.byte W72
	.byte W48
	.byte N05, Bn3, v048
	.byte W24
	.byte W48
	.byte N05
	.byte W24
	.byte GOTO
	 .4byte song_unk_711_1_001
	.byte FINE
song_unk_711_2: @ 0x08352306
	.byte VOL, 0x50
	.byte KEYSH, 0x00
song_unk_711_2_002: @ 0x0835230A
	.byte VOICE, 0x05
	.byte N23, En0, v127
	.byte W72
	.byte Bn0
	.byte W72
	.byte En0
	.byte W72
	.byte Bn0
	.byte W72
	.byte En0
	.byte W72
	.byte Bn0
	.byte W72
	.byte GOTO
	 .4byte song_unk_711_2_002
	.byte FINE
song_unk_711_3: @ 0x08352320
	.byte VOL, 0x50
	.byte KEYSH, 0x00
song_unk_711_3_003: @ 0x08352324
	.byte VOICE, 0x06
	.byte N11, Fs4, v127
	.byte W12
	.byte Fn4
	.byte W12
	.byte En4
	.byte W48
	.byte Ds4
	.byte W12
	.byte Dn4
	.byte W12
	.byte Cs4
	.byte W48
	.byte W72
	.byte As3
	.byte W12
	.byte An3
	.byte W12
	.byte Gs3
	.byte W48
	.byte W72
	.byte W72
	.byte GOTO
	 .4byte song_unk_711_3_003
	.byte FINE
song_unk_711_4: @ 0x08352343
	.byte VOL, 0x50
	.byte KEYSH, 0x00
song_unk_711_4_004: @ 0x08352347
	.byte VOICE, 0x07
	.byte PAN, 0x50
	.byte W72
	.byte W72
	.byte N44, Bn3, v064
	.byte N44, Bn4
	.byte W72
	.byte W72
	.byte Bn3
	.byte N44, Bn4
	.byte W72
	.byte W72
	.byte GOTO
	 .4byte song_unk_711_4_004
	.byte FINE
song_unk_711_5: @ 0x0835235F
	.byte VOL, 0x50
	.byte KEYSH, 0x00
song_unk_711_5_005: @ 0x08352363
	.byte VOICE, 0x7F
	.byte N11, Cn1, v127
	.byte W72
	.byte Dn1, v064
	.byte W72
	.byte Cn1, v127
	.byte W72
	.byte Dn1, v064
	.byte W72
	.byte Cn1, v127
	.byte W72
	.byte Dn1, v064
	.byte W72
	.byte GOTO
	 .4byte song_unk_711_5_005
	.byte FINE
song_unk_711_6: @ 0x0835237E
	.byte VOL, 0x50
	.byte KEYSH, 0x00
song_unk_711_6_008: @ 0x08352382
	.byte VOICE, 0x7F
	.byte N23, En1, v064
	.byte W24
	.byte N01, En1, v032
	.byte W24
	.byte N01
	.byte W24
song_unk_711_6_006: @ 0x0835238E
	.byte N01, En1, v032
	.byte W24
	.byte N01
	.byte W24
	.byte N01
	.byte W24
	.byte PEND
song_unk_711_6_007: @ 0x08352397
	.byte N23, En1, v064
	.byte W24
	.byte N01, En1, v032
	.byte W24
	.byte N01
	.byte W24
	.byte PEND
	.byte PATT
	 .4byte song_unk_711_6_006
	.byte PATT
	 .4byte song_unk_711_6_007
	.byte PATT
	 .4byte song_unk_711_6_006
	.byte GOTO
	 .4byte song_unk_711_6_008
	.byte FINE
	.align 2, 0
	.global song_unk_711
song_unk_711: @ 0x083523B8 (song header)
	.byte 7, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup005 @ voice group
	.4byte song_unk_711_0
	.4byte song_unk_711_1
	.4byte song_unk_711_2
	.4byte song_unk_711_3
	.4byte song_unk_711_4
	.4byte song_unk_711_5
	.4byte song_unk_711_6
	.size song_unk_711,.-song_unk_711
