	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_59_0: @ 0x083483B8
	.byte KEYSH, 0x00
song_unk_59_0_000: @ 0x083483BA
	.byte TEMPO, 0x37
	.byte VOICE, 0x03
	.byte VOL, 0x7F
	.byte N16, Fn3, v052
	.byte W16
	.byte N08, En3
	.byte W08
	.byte N16, Fn3
	.byte W16
	.byte N08, An3
	.byte W08
	.byte N24, Gs3
	.byte W48
	.byte N16, Fn3
	.byte W16
	.byte N08, En3
	.byte W08
	.byte N16, Fn3
	.byte W16
	.byte N08, Cn4
	.byte W08
	.byte N24, Bn3
	.byte W48
	.byte N16, Fn3
	.byte W16
	.byte N08, En3
	.byte W08
	.byte N16, Fn3
	.byte W16
	.byte N08, An3
	.byte W08
	.byte N16, Gs3
	.byte W16
	.byte N24, En3
	.byte W24
	.byte N08, Bn2
	.byte W08
	.byte N24, Dn3
	.byte W96
	.byte GOTO
	 .4byte song_unk_59_0_000
	.byte FINE
song_unk_59_1: @ 0x083483FD
	.byte KEYSH, 0x00
song_unk_59_1_002: @ 0x083483FF
	.byte VOICE, 0x4E
	.byte VOL, 0x7F
	.byte N08, Dn2, v120
	.byte W48
	.byte An1
	.byte W48
song_unk_59_1_001: @ 0x08348409
	.byte N08, Dn2, v120
	.byte W48
	.byte An1
	.byte W48
	.byte PEND
	.byte PATT
	 .4byte song_unk_59_1_001
	.byte N08, Gs1, v120
	.byte W24
	.byte Gs2
	.byte W08
	.byte N08
	.byte W08
	.byte N08
	.byte W08
	.byte N08
	.byte W16
	.byte Bn1
	.byte W08
	.byte Cn2
	.byte W16
	.byte Cs2
	.byte W08
	.byte GOTO
	 .4byte song_unk_59_1_002
	.byte FINE
song_unk_59_2: @ 0x0834842D
	.byte KEYSH, 0x00
song_unk_59_2_003: @ 0x0834842F
	.byte VOICE, 0x23
	.byte VOL, 0x7F
	.byte N16, Dn3, v052
	.byte W16
	.byte N08, Cs3
	.byte W08
	.byte N16, Dn3
	.byte W16
	.byte N08, Fn3
	.byte W08
	.byte N24, En3
	.byte W48
	.byte N16, Dn3
	.byte W16
	.byte N08, Cs3
	.byte W08
	.byte N16, Dn3
	.byte W16
	.byte N08, An3
	.byte W08
	.byte N24, Gs3
	.byte W48
	.byte N16, Dn3
	.byte W16
	.byte N08, Cs3
	.byte W08
	.byte N16, Dn3
	.byte W16
	.byte N08, Fn3
	.byte W08
	.byte N16, En3
	.byte W16
	.byte N24, Bn2
	.byte W24
	.byte N08, En2
	.byte W08
	.byte N24, Fn2
	.byte W24
	.byte N08, Bn1
	.byte W08
	.byte N08
	.byte W08
	.byte N08
	.byte W08
	.byte N08
	.byte W48
	.byte GOTO
	 .4byte song_unk_59_2_003
	.byte FINE
	.align 2, 0
	.global song_unk_59
song_unk_59: @ 0x0834847C (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_59_0
	.4byte song_unk_59_1
	.4byte song_unk_59_2
	.size song_unk_59,.-song_unk_59
