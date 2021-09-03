	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_754_0: @ 0x083AB0DC
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_754_0_000: @ 0x083AB0E0
	.byte TEMPO, 0x3C
	.byte VOICE, 0x21
	.byte PAN, 0x00
	.byte TUNE, 0x60
	.byte W96
	.byte W96
	.byte W96
	.byte W96
	.byte N96, An5, v080
	.byte W96
	.byte W96
	.byte GOTO
	 .4byte song_unk_754_0_000
	.byte FINE
song_unk_754_1: @ 0x083AB0F7
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_754_1_001: @ 0x083AB0FB
	.byte VOICE, 0x5D
	.byte N48, Gn1, v096
	.byte W48
	.byte Ds1
	.byte W48
	.byte PEND
	.byte PATT
	 .4byte song_unk_754_1_001
	.byte PATT
	 .4byte song_unk_754_1_001
	.byte PATT
	 .4byte song_unk_754_1_001
	.byte PATT
	 .4byte song_unk_754_1_001
	.byte PATT
	 .4byte song_unk_754_1_001
	.byte GOTO
	 .4byte song_unk_754_1_001
	.byte FINE
song_unk_754_2: @ 0x083AB123
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_754_2_002: @ 0x083AB127
	.byte VOICE, 0x64
	.byte PAN, 0x00
	.byte N01, Cn4, v127
	.byte W12
	.byte Cn4, v064
	.byte W12
	.byte Cn4, v032
	.byte W12
	.byte N01
	.byte W12
	.byte Cn4, v127
	.byte W12
	.byte Cn4, v064
	.byte W12
	.byte Cn4, v032
	.byte W12
	.byte N01
	.byte W12
	.byte PEND
song_unk_754_2_003: @ 0x083AB143
	.byte VOICE, 0x64
	.byte PAN, 0x40
	.byte N01, Cn4, v127
	.byte W12
	.byte Cn4, v064
	.byte W12
	.byte Cn4, v032
	.byte W12
	.byte N01
	.byte W12
	.byte Cn4, v127
	.byte W12
	.byte Cn4, v064
	.byte W12
	.byte Cn4, v032
	.byte W12
	.byte N01
	.byte W12
	.byte PEND
	.byte PATT
	 .4byte song_unk_754_2_002
	.byte PATT
	 .4byte song_unk_754_2_003
	.byte PATT
	 .4byte song_unk_754_2_002
	.byte PATT
	 .4byte song_unk_754_2_003
	.byte GOTO
	 .4byte song_unk_754_2_002
	.byte FINE
song_unk_754_3: @ 0x083AB179
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_754_3_004: @ 0x083AB17D
	.byte VOICE, 0x7C
	.byte PAN, 0x7F
	.byte N01, Cn3, v048
	.byte W12
	.byte Cn3, v032
	.byte W12
	.byte Cn3, v024
	.byte W12
	.byte N01
	.byte W12
	.byte Cn3, v048
	.byte W12
	.byte Cn3, v032
	.byte W12
	.byte Cn3, v024
	.byte W12
	.byte N01
	.byte W12
	.byte PEND
	.byte PATT
	 .4byte song_unk_754_3_004
	.byte PATT
	 .4byte song_unk_754_3_004
	.byte PATT
	 .4byte song_unk_754_3_004
	.byte PATT
	 .4byte song_unk_754_3_004
	.byte PATT
	 .4byte song_unk_754_3_004
	.byte GOTO
	 .4byte song_unk_754_3_004
	.byte FINE
song_unk_754_4: @ 0x083AB1B8
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_754_4_005: @ 0x083AB1BC
	.byte VOICE, 0x03
	.byte PAN, 0x40
	.byte W48
	.byte N48, As3, v080
	.byte W48
	.byte PEND
song_unk_754_4_006: @ 0x083AB1C6
	.byte N48, Dn3, v080
	.byte W48
	.byte Ds3
	.byte W48
	.byte PEND
	.byte PATT
	 .4byte song_unk_754_4_005
	.byte PATT
	 .4byte song_unk_754_4_006
	.byte PAN, 0x7F
	.byte N96, An5, v080
	.byte W96
	.byte W96
	.byte GOTO
	 .4byte song_unk_754_4_005
	.byte FINE
	.align 2, 0
	.global song_unk_754
song_unk_754: @ 0x083AB1E4 (song header)
	.byte 5, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_754_0
	.4byte song_unk_754_1
	.4byte song_unk_754_2
	.4byte song_unk_754_3
	.4byte song_unk_754_4
	.size song_unk_754,.-song_unk_754
