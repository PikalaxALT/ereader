	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_742_0: @ 0x083A9FE0
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_742_0_001: @ 0x083A9FE4
	.byte TEMPO, 0x20
	.byte VOICE, 0x7B
	.byte PAN, 0x44
	.byte W32
	.byte N02, Gn2, v127
	.byte W08
	.byte Gn2, v080
	.byte W08
	.byte Gn2, v032
	.byte W48
	.byte W32
	.byte Gn2, v127
	.byte W08
	.byte Gn2, v080
	.byte W08
	.byte Gn2, v032
	.byte W48
song_unk_742_0_000: @ 0x083A9FFF
	.byte W32
	.byte N02, An2, v127
	.byte W08
	.byte An2, v080
	.byte W08
	.byte An2, v032
	.byte W48
	.byte PEND
	.byte PATT
	 .4byte song_unk_742_0_000
	.byte GOTO
	 .4byte song_unk_742_0_001
	.byte FINE
song_unk_742_1: @ 0x083AA016
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_742_1_003: @ 0x083AA01A
	.byte VOICE, 0x7B
	.byte PAN, 0x3C
	.byte W32
	.byte N02, Ds2, v127
	.byte W08
	.byte Ds2, v080
	.byte W08
	.byte Ds2, v032
	.byte W48
	.byte W32
	.byte Ds2, v127
	.byte W08
	.byte Ds2, v080
	.byte W08
	.byte Ds2, v032
	.byte W48
song_unk_742_1_002: @ 0x083AA033
	.byte W32
	.byte N02, Fn2, v127
	.byte W08
	.byte Fn2, v080
	.byte W08
	.byte Fn2, v032
	.byte W48
	.byte PEND
	.byte PATT
	 .4byte song_unk_742_1_002
	.byte GOTO
	 .4byte song_unk_742_1_003
	.byte FINE
song_unk_742_2: @ 0x083AA04A
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_742_2_005: @ 0x083AA04E
	.byte VOICE, 0x5D
	.byte PAN, 0x40
	.byte W24
	.byte N44, Ds4, v127
	.byte W48
	.byte N11, Gs6
	.byte W12
	.byte N11
	.byte W12
song_unk_742_2_004: @ 0x083AA05C
	.byte W24
	.byte N44, Ds4, v127
	.byte W48
	.byte N23, As4
	.byte W24
	.byte PEND
	.byte W24
	.byte N44, Ds4
	.byte W48
	.byte N11, Gs6
	.byte W12
	.byte N11
	.byte W12
	.byte PATT
	 .4byte song_unk_742_2_004
	.byte GOTO
	 .4byte song_unk_742_2_005
	.byte FINE
song_unk_742_3: @ 0x083AA079
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_742_3_006: @ 0x083AA07D
	.byte VOICE, 0x03
	.byte PAN, 0x50
	.byte TUNE, 0x44
	.byte N92, Fn1, v127
	.byte W96
	.byte N92
	.byte W96
	.byte Ds1
	.byte W96
	.byte N92
	.byte W96
	.byte GOTO
	 .4byte song_unk_742_3_006
	.byte FINE
song_unk_742_4: @ 0x083AA093
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_742_4_007: @ 0x083AA097
	.byte VOICE, 0x21
	.byte PAN, 0x30
	.byte TUNE, 0x40
	.byte N92, Fn1, v127
	.byte W96
	.byte N92
	.byte W96
	.byte Ds1
	.byte W96
	.byte N92
	.byte W96
	.byte GOTO
	 .4byte song_unk_742_4_007
	.byte FINE
	.align 2, 0
	.global song_unk_742
song_unk_742: @ 0x083AA0B0 (song header)
	.byte 5, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_742_0
	.4byte song_unk_742_1
	.4byte song_unk_742_2
	.4byte song_unk_742_3
	.4byte song_unk_742_4
	.size song_unk_742,.-song_unk_742
