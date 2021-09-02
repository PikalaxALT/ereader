	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_99_0: @ 0x0834967C
	.byte KEYSH, 0x00
song_unk_99_0_000: @ 0x0834967E
	.byte TEMPO, 0x41
	.byte VOICE, 0x00
	.byte VOL, 0x7F
	.byte N05, Gs3, v064
	.byte W24
	.byte Gn3
	.byte W12
	.byte Gs3
	.byte W12
	.byte En3
	.byte W24
	.byte Cn3
	.byte W24
	.byte N05
	.byte W24
	.byte Gs3
	.byte W24
	.byte Gn3
	.byte W12
	.byte Gs3
	.byte W12
	.byte En3
	.byte W24
	.byte Cn4
	.byte W24
	.byte N05
	.byte W48
	.byte W24
	.byte Gs3
	.byte W24
	.byte Gn3
	.byte W12
	.byte Gs3
	.byte W12
	.byte En3
	.byte W24
	.byte W48
	.byte An3
	.byte W24
	.byte Gs3
	.byte W12
	.byte An3
	.byte W12
	.byte Fn3
	.byte W72
	.byte As3
	.byte W24
	.byte An3
	.byte W12
	.byte As3
	.byte W12
	.byte Fs3
	.byte W72
	.byte W24
	.byte Cs4
	.byte W24
	.byte N05
	.byte W48
	.byte GOTO
	 .4byte song_unk_99_0_000
	.byte FINE
song_unk_99_1: @ 0x083496C3
	.byte KEYSH, 0x00
song_unk_99_1_001: @ 0x083496C5
	.byte VOICE, 0x44
	.byte VOL, 0x7F
	.byte N05, En2, v120
	.byte W24
	.byte En3
	.byte W24
	.byte N05
	.byte W24
	.byte As3
	.byte W24
	.byte N05
	.byte W24
	.byte En2
	.byte W24
	.byte En3
	.byte W24
	.byte N05
	.byte W24
	.byte As3
	.byte W24
	.byte N05
	.byte W48
	.byte En2
	.byte W72
	.byte Bn2
	.byte W24
	.byte En2
	.byte W24
	.byte Fn2
	.byte W72
	.byte Cn3
	.byte W24
	.byte Fn2
	.byte W24
	.byte Fs2
	.byte W48
	.byte W24
	.byte Cs3
	.byte W24
	.byte Fs2
	.byte W24
	.byte Gn2
	.byte W24
	.byte W24
	.byte Cn3
	.byte W24
	.byte N05
	.byte W48
	.byte GOTO
	 .4byte song_unk_99_1_001
	.byte FINE
song_unk_99_2: @ 0x083496FF
	.byte KEYSH, 0x00
song_unk_99_2_002: @ 0x08349701
	.byte VOICE, 0x65
	.byte VOL, 0x7F
	.byte N02, Gn2, v080
	.byte W24
	.byte N03, Cn4, v036
	.byte W24
	.byte N03
	.byte W24
	.byte N02, Gn2, v080
	.byte W24
	.byte N03, Cn4, v036
	.byte W24
	.byte N02, Gn2, v080
	.byte W24
	.byte N03, Cn4, v036
	.byte W24
	.byte N03
	.byte W24
	.byte N02, Gn2, v080
	.byte W24
	.byte N03, Cn4, v036
	.byte W24
	.byte Cn4, v040
	.byte W12
	.byte N03
	.byte W12
	.byte N02, Gn2, v080
	.byte W24
	.byte N03, Cn4, v036
	.byte W24
	.byte N03
	.byte W24
	.byte N02, Gn2, v080
	.byte W24
	.byte N03, Cn4, v036
	.byte W24
	.byte N02, Gn2, v080
	.byte W24
	.byte N03, Cn4, v036
	.byte W24
	.byte N03
	.byte W24
	.byte N02, Gn2, v080
	.byte W24
	.byte N03, Cn4, v036
	.byte W24
	.byte N02, Gn2, v080
	.byte W24
	.byte N03, Cn4, v036
	.byte W24
	.byte N03
	.byte W24
	.byte N02, Gn2, v080
	.byte W24
	.byte N03, Cn4, v036
	.byte W24
	.byte N02, Gn2, v080
	.byte W24
	.byte N03, Cn4, v036
	.byte W24
	.byte N02, Gn2, v080
	.byte W24
	.byte N02
	.byte W24
	.byte N03, Cn4, v040
	.byte W12
	.byte N03
	.byte W12
	.byte GOTO
	 .4byte song_unk_99_2_002
	.byte FINE
	.align 2, 0
	.global song_unk_99
song_unk_99: @ 0x08349780 (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_99_0
	.4byte song_unk_99_1
	.4byte song_unk_99_2

