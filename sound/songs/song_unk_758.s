	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_758_0: @ 0x083AB2FC
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_758_0_000: @ 0x083AB300
	.byte TEMPO, 0x28
	.byte VOICE, 0x03
	.byte N10, An5, v080
	.byte W12
	.byte Fs5
	.byte W12
	.byte Gn5
	.byte W12
	.byte N32, An5
	.byte W60
	.byte W96
	.byte N10, Fs5
	.byte W12
	.byte Dn5
	.byte W12
	.byte En5
	.byte W12
	.byte N32, Fs5
	.byte W60
	.byte W96
	.byte GOTO
	 .4byte song_unk_758_0_000
	.byte FINE
song_unk_758_1: @ 0x083AB321
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_758_1_001: @ 0x083AB325
	.byte VOICE, 0x44
	.byte N11, Fs6, v032
	.byte W12
	.byte Dn6
	.byte W12
	.byte En6
	.byte W12
	.byte Fs6
	.byte W60
	.byte W96
	.byte Dn6
	.byte W12
	.byte Fs5
	.byte W12
	.byte An5
	.byte W12
	.byte Dn6
	.byte W60
	.byte W96
	.byte GOTO
	 .4byte song_unk_758_1_001
	.byte FINE
song_unk_758_2: @ 0x083AB341
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_758_2_002: @ 0x083AB345
	.byte VOICE, 0x7C
	.byte N10, Dn3, v064
	.byte W12
	.byte An3
	.byte W12
	.byte Fs3
	.byte W12
	.byte An3
	.byte W12
	.byte Dn3
	.byte W12
	.byte An3
	.byte W12
	.byte Fs3
	.byte W12
	.byte An3
	.byte W12
	.byte PEND
song_unk_758_2_003: @ 0x083AB35A
	.byte N10, Cs3, v064
	.byte W12
	.byte An3
	.byte W12
	.byte Gn3
	.byte W12
	.byte An3
	.byte W12
	.byte Cs3
	.byte W12
	.byte An3
	.byte W12
	.byte Gn3
	.byte W12
	.byte An3
	.byte W12
	.byte PEND
	.byte PATT
	 .4byte song_unk_758_2_002
	.byte PATT
	 .4byte song_unk_758_2_003
	.byte GOTO
	 .4byte song_unk_758_2_002
	.byte FINE
	.align 2, 0
	.global song_unk_758
song_unk_758: @ 0x083AB380 (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_758_0
	.4byte song_unk_758_1
	.4byte song_unk_758_2

