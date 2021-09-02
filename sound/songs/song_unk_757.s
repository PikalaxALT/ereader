	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_757_0: @ 0x083AB248
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_757_0_000: @ 0x083AB24C
	.byte TEMPO, 0x28
	.byte VOICE, 0x06
	.byte W24
	.byte N10, Gs4, v127
	.byte W12
	.byte Fn4
	.byte W12
	.byte Cs5
	.byte W24
	.byte Gs4
	.byte W12
	.byte Fn4
	.byte W12
	.byte N04
	.byte W06
	.byte Ds4
	.byte W06
	.byte N10, Cs4
	.byte W84
	.byte GOTO
	 .4byte song_unk_757_0_000
	.byte FINE
song_unk_757_1: @ 0x083AB26A
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_757_1_001: @ 0x083AB26E
	.byte VOICE, 0x5D
	.byte N16, Gn1, v112
	.byte W18
	.byte N04, Cn2
	.byte W06
	.byte N11
	.byte W72
	.byte PEND
	.byte PATT
	 .4byte song_unk_757_1_001
	.byte GOTO
	 .4byte song_unk_757_1_001
	.byte FINE
song_unk_757_2: @ 0x083AB285
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_757_2_002: @ 0x083AB289
	.byte VOICE, 0x78
	.byte PAN, 0x60
	.byte W06
	.byte N04, Fn2, v032
	.byte W06
	.byte Gs2
	.byte W06
	.byte As2
	.byte W06
	.byte N22, Gs2
	.byte W24
	.byte N10, Fn2
	.byte W12
	.byte N04, Gs2
	.byte W06
	.byte Fn2
	.byte W06
	.byte N10, Ds2
	.byte W12
	.byte Fn2
	.byte W12
	.byte W06
	.byte N04
	.byte W06
	.byte Gs2
	.byte W06
	.byte As2
	.byte W06
	.byte N22, Gs2
	.byte W24
	.byte N10, Fn2
	.byte W12
	.byte N04, Gs2
	.byte W06
	.byte Fn2
	.byte W06
	.byte N10, Ds2
	.byte W12
	.byte Cs2
	.byte W12
	.byte GOTO
	 .4byte song_unk_757_2_002
	.byte FINE
song_unk_757_3: @ 0x083AB2C3
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_757_3_003: @ 0x083AB2C7
	.byte VOICE, 0x48
	.byte PAN, 0x00
	.byte N30, Fs3, v112
	.byte W36
	.byte N10, Gs3
	.byte W12
	.byte As3
	.byte W24
	.byte Cn4
	.byte W24
	.byte PEND
	.byte PATT
	 .4byte song_unk_757_3_003
	.byte GOTO
	 .4byte song_unk_757_3_003
	.byte FINE
	.align 2, 0
	.global song_unk_757
song_unk_757: @ 0x083AB2E4 (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_757_0
	.4byte song_unk_757_1
	.4byte song_unk_757_2
	.4byte song_unk_757_3

