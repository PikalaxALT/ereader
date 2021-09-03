	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_746_0: @ 0x083AA4EC
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_746_0_000: @ 0x083AA4F0
	.byte TEMPO, 0x2C
	.byte VOICE, 0x1E
	.byte MOD, 0x00
	.byte PAN, 0x7F
	.byte W12
	.byte N06, En3, v040
	.byte W24
	.byte An3
	.byte W24
	.byte En3
	.byte W24
	.byte Gn3
	.byte W12
	.byte W12
	.byte En3
	.byte W24
	.byte An3
	.byte W12
	.byte N12, Fs3
	.byte W24
	.byte N06
	.byte W24
	.byte W12
	.byte En3
	.byte W12
	.byte N06
	.byte W24
	.byte Gn3
	.byte W12
	.byte Fs3
	.byte W12
	.byte En3
	.byte W24
	.byte Ds3
	.byte W12
	.byte En3
	.byte W12
	.byte N04, Ds3
	.byte W04
	.byte En3
	.byte W04
	.byte Ds3
	.byte W04
	.byte N06, Cs3
	.byte W06
	.byte Bn2
	.byte W06
	.byte An2
	.byte W12
	.byte Bn2
	.byte W12
	.byte N12, An2
	.byte W24
	.byte GOTO
	 .4byte song_unk_746_0_000
	.byte FINE
song_unk_746_1: @ 0x083AA535
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_746_1_001: @ 0x083AA539
	.byte VOICE, 0x07
	.byte PAN, 0x00
	.byte N12, An2, v048
	.byte W12
	.byte N06, En3
	.byte W12
	.byte N12, Ds3
	.byte W12
	.byte N06, Cs3
	.byte W06
	.byte Bn2
	.byte W06
	.byte An2
	.byte W12
	.byte En3
	.byte W12
	.byte N12, Ds3
	.byte W24
	.byte PEND
	.byte PATT
	 .4byte song_unk_746_1_001
	.byte PATT
	 .4byte song_unk_746_1_001
	.byte PATT
	 .4byte song_unk_746_1_001
	.byte GOTO
	 .4byte song_unk_746_1_001
	.byte FINE
song_unk_746_2: @ 0x083AA569
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_746_2_002: @ 0x083AA56D
	.byte VOICE, 0x51
	.byte PAN, 0x40
	.byte N17, An4, v127
	.byte W18
	.byte N06, Bn4
	.byte W06
	.byte Cs5
	.byte W12
	.byte An4
	.byte W12
	.byte N12, Cn5
	.byte W12
	.byte N23, Bn4
	.byte W36
	.byte N17, An4
	.byte W18
	.byte N06, Bn4
	.byte W06
	.byte Cs5
	.byte W12
	.byte An4
	.byte W12
	.byte N12, Gn4
	.byte W12
	.byte N23, Fs4
	.byte W36
	.byte N17, An4
	.byte W18
	.byte N06, Bn4
	.byte W06
	.byte Cs5
	.byte W12
	.byte An4
	.byte W12
	.byte N12, En5
	.byte W12
	.byte N06, Ds5
	.byte W12
	.byte Cs5
	.byte W12
	.byte Bn4
	.byte W12
	.byte N12, Cs5
	.byte W12
	.byte N06, Bn4
	.byte W06
	.byte An4
	.byte W06
	.byte Gn4
	.byte W12
	.byte Fn4
	.byte W12
	.byte N24, En4
	.byte W48
	.byte GOTO
	 .4byte song_unk_746_2_002
	.byte FINE
song_unk_746_3: @ 0x083AA5BB
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
song_unk_746_3_003: @ 0x083AA5BF
	.byte VOICE, 0x5D
	.byte PAN, 0x20
	.byte W06
	.byte N06, Ds4, v024
	.byte W12
	.byte N06
	.byte W06
	.byte N06
	.byte W12
	.byte N06
	.byte W06
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W06
	.byte N06
	.byte W24
	.byte PEND
	.byte PATT
	 .4byte song_unk_746_3_003
	.byte PATT
	 .4byte song_unk_746_3_003
	.byte PATT
	 .4byte song_unk_746_3_003
	.byte GOTO
	 .4byte song_unk_746_3_003
	.byte FINE
	.align 2, 0
	.global song_unk_746
song_unk_746: @ 0x083AA5EC (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_746_0
	.4byte song_unk_746_1
	.4byte song_unk_746_2
	.4byte song_unk_746_3
	.size song_unk_746,.-song_unk_746
