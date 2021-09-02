	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_752_0: @ 0x083AAC60
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_752_0_001: @ 0x083AAC64
	.byte TEMPO, 0x27
	.byte VOICE, 0x5D
	.byte W12
	.byte N05, Ds4, v096
	.byte W06
	.byte N05
	.byte W06
	.byte N05
	.byte W12
	.byte Gs6, v127
	.byte W24
	.byte N02, Ds4, v096
	.byte W03
	.byte N02
	.byte W03
	.byte N02
	.byte W03
	.byte N02
	.byte W03
	.byte N05
	.byte W12
	.byte Gs6, v127
	.byte W12
song_unk_752_0_000: @ 0x083AAC83
	.byte W12
	.byte N05, Ds4, v096
	.byte W06
	.byte N05
	.byte W06
	.byte N05
	.byte W12
	.byte Gs6, v127
	.byte W24
	.byte N02, Ds4, v096
	.byte W03
	.byte N02
	.byte W03
	.byte N02
	.byte W03
	.byte N02
	.byte W03
	.byte N05
	.byte W12
	.byte Gs6, v127
	.byte W12
	.byte PEND
	.byte PATT
	 .4byte song_unk_752_0_000
	.byte PATT
	 .4byte song_unk_752_0_000
	.byte W12
	.byte N05, Ds4, v096
	.byte W06
	.byte N05
	.byte W06
	.byte N05
	.byte W12
	.byte Gs6, v127
	.byte W12
	.byte PATT
	 .4byte song_unk_752_0_000
	.byte PATT
	 .4byte song_unk_752_0_000
	.byte GOTO
	 .4byte song_unk_752_0_001
	.byte FINE
song_unk_752_1: @ 0x083AACC5
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_752_1_004: @ 0x083AACC9
	.byte VOICE, 0x4E
	.byte PAN, 0x3C
	.byte N05, Ds1, v127
	.byte W36
	.byte As1
	.byte W12
	.byte Ds1
	.byte W36
	.byte As1
	.byte W12
song_unk_752_1_002: @ 0x083AACD7
	.byte N05, Ds1, v127
	.byte W36
	.byte As1
	.byte W12
	.byte Ds1
	.byte W36
	.byte As1
	.byte W12
	.byte PEND
	.byte PATT
	 .4byte song_unk_752_1_002
	.byte PATT
	 .4byte song_unk_752_1_002
	.byte N05, Ds1, v127
	.byte W36
	.byte As1
	.byte W12
song_unk_752_1_003: @ 0x083AACF2
	.byte N05, Dn1, v127
	.byte W36
	.byte Fn1
	.byte W12
	.byte Dn1
	.byte W36
	.byte Fn1
	.byte W12
	.byte PEND
	.byte PATT
	 .4byte song_unk_752_1_003
	.byte GOTO
	 .4byte song_unk_752_1_004
	.byte FINE
song_unk_752_2: @ 0x083AAD08
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_752_2_005: @ 0x083AAD0C
	.byte VOICE, 0x08
	.byte MOD, 0x04
	.byte PAN, 0x44
	.byte N05, As3, v048
	.byte W06
	.byte Bn3
	.byte W06
	.byte As3
	.byte W24
	.byte N05
	.byte W06
	.byte Bn3
	.byte W06
	.byte As3
	.byte W12
	.byte Ds3
	.byte W12
	.byte N23, Fs3
	.byte W24
	.byte W12
	.byte N05, As3
	.byte W06
	.byte Bn3
	.byte W06
	.byte As3
	.byte W12
	.byte Ds3
	.byte W12
	.byte N17, Fs3
	.byte W18
	.byte N02, Gs3
	.byte W03
	.byte Fs3
	.byte W03
	.byte N23, Fn3
	.byte W24
	.byte W96
	.byte W12
	.byte N05, As3
	.byte W06
	.byte Bn3
	.byte W06
	.byte As3
	.byte W12
	.byte Ds3
	.byte W12
	.byte N17, Fs3
	.byte W18
	.byte N02, Gs3
	.byte W03
	.byte Fs3
	.byte W03
	.byte N05, Fn3
	.byte W12
	.byte Fs3
	.byte W12
	.byte N23, Gs3
	.byte W24
	.byte N05, As3
	.byte W12
	.byte BEND, 0x4F
	.byte N05, Bn3
	.byte W12
	.byte BEND, 0x40
	.byte N44, As3
	.byte W96
	.byte W96
	.byte GOTO
	 .4byte song_unk_752_2_005
	.byte FINE
	.align 2, 0
	.global song_unk_752
song_unk_752: @ 0x083AAD6C (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_752_0
	.4byte song_unk_752_1
	.4byte song_unk_752_2

