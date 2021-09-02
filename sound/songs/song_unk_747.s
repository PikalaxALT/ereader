	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_747_0: @ 0x083AA604
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_747_0_001: @ 0x083AA608
	.byte TEMPO, 0x27
	.byte VOICE, 0x03
	.byte PAN, 0x40
	.byte N04, Fs1, v127
	.byte W36
	.byte Cs1
	.byte W12
	.byte Fs1
	.byte W36
	.byte Cs1
	.byte W12
song_unk_747_0_000: @ 0x083AA618
	.byte N04, Fs1, v127
	.byte W36
	.byte Cs1
	.byte W12
	.byte Fs1
	.byte W36
	.byte Cs1
	.byte W12
	.byte PEND
	.byte PATT
	 .4byte song_unk_747_0_000
	.byte PATT
	 .4byte song_unk_747_0_000
	.byte N04, Fs1, v127
	.byte W36
	.byte Cs1
	.byte W12
	.byte En1
	.byte W36
	.byte Bn0
	.byte W12
	.byte En1
	.byte W36
	.byte Bn0
	.byte W12
	.byte En1
	.byte W36
	.byte Bn0
	.byte W12
	.byte En1
	.byte W36
	.byte Fn1
	.byte W12
	.byte GOTO
	 .4byte song_unk_747_0_001
	.byte FINE
song_unk_747_1: @ 0x083AA649
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_747_1_004: @ 0x083AA64D
	.byte VOICE, 0x5D
	.byte W12
	.byte N01, Ds4, v064
	.byte W06
	.byte N01
	.byte W06
	.byte N01
	.byte W36
	.byte N01
	.byte W03
	.byte N01
	.byte W03
	.byte N01
	.byte W03
	.byte N01
	.byte W03
	.byte N01
	.byte W24
song_unk_747_1_002: @ 0x083AA662
	.byte W12
	.byte N01, Ds4, v064
	.byte W06
	.byte N01
	.byte W06
	.byte N01
	.byte W36
	.byte N01
	.byte W03
	.byte N01
	.byte W03
	.byte N01
	.byte W03
	.byte N01
	.byte W03
	.byte N01
	.byte W24
	.byte PEND
song_unk_747_1_003: @ 0x083AA676
	.byte W12
	.byte N01, Ds4, v064
	.byte W06
	.byte N01
	.byte W06
	.byte N01
	.byte W36
	.byte N01
	.byte W03
	.byte N01
	.byte W03
	.byte N01
	.byte W03
	.byte N01
	.byte W03
	.byte N01
	.byte W12
	.byte Gs6, v127
	.byte W12
	.byte PEND
	.byte PATT
	 .4byte song_unk_747_1_002
	.byte W12
	.byte N01, Ds4, v064
	.byte W06
	.byte N01
	.byte W06
	.byte N01
	.byte W24
	.byte PATT
	 .4byte song_unk_747_1_002
	.byte PATT
	 .4byte song_unk_747_1_003
	.byte GOTO
	 .4byte song_unk_747_1_004
	.byte FINE
song_unk_747_2: @ 0x083AA6AB
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_747_2_005: @ 0x083AA6AF
	.byte VOICE, 0x7C
	.byte PAN, 0x50
	.byte TUNE, 0x50
	.byte W12
	.byte N02, Gs4, v080
	.byte W06
	.byte As4
	.byte W06
	.byte Bn4
	.byte W12
	.byte Gs4
	.byte W12
	.byte N22, Fn5
	.byte W24
	.byte Ds5
	.byte W24
	.byte W12
	.byte N02, Cs5
	.byte W06
	.byte Ds5
	.byte W06
	.byte En5
	.byte W12
	.byte Cs5
	.byte W12
	.byte N22, As4
	.byte W24
	.byte Gs4
	.byte W24
	.byte W96
	.byte W12
	.byte N02
	.byte W06
	.byte As4
	.byte W06
	.byte Bn4
	.byte W12
	.byte Gs4
	.byte W12
	.byte N22, Fn5
	.byte W24
	.byte N02, Ds5
	.byte W12
	.byte Cs5
	.byte W12
	.byte N22, Cn5
	.byte W24
	.byte N02, As4
	.byte W12
	.byte Gs4
	.byte W12
	.byte N30, Fs4
	.byte W96
	.byte W96
	.byte GOTO
	 .4byte song_unk_747_2_005
	.byte FINE
song_unk_747_3: @ 0x083AA6F8
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_747_3_006: @ 0x083AA6FC
	.byte VOICE, 0x7C
	.byte PAN, 0x30
	.byte W12
	.byte N02, Gs3, v064
	.byte W06
	.byte As3
	.byte W06
	.byte Bn3
	.byte W12
	.byte Gs3
	.byte W12
	.byte N22, Fn4
	.byte W24
	.byte Ds4
	.byte W24
	.byte W12
	.byte N02, Cs4
	.byte W06
	.byte Ds4
	.byte W06
	.byte En4
	.byte W12
	.byte Cs4
	.byte W12
	.byte N22, As3
	.byte W24
	.byte Gs3
	.byte W24
	.byte W96
	.byte W12
	.byte N02
	.byte W06
	.byte As3
	.byte W06
	.byte Bn3
	.byte W12
	.byte Gs3
	.byte W12
	.byte N22, Fn4
	.byte W24
	.byte N02, Ds4
	.byte W12
	.byte Cs4
	.byte W12
	.byte N22, Cn4
	.byte W24
	.byte N02, As3
	.byte W12
	.byte Gs3
	.byte W12
	.byte N30, Fs3
	.byte W96
	.byte W96
	.byte GOTO
	 .4byte song_unk_747_3_006
	.byte FINE
	.align 2, 0
	.global song_unk_747
song_unk_747: @ 0x083AA744 (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_747_0
	.4byte song_unk_747_1
	.4byte song_unk_747_2
	.4byte song_unk_747_3

