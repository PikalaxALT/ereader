	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_228_0: @ 0x0834D09C
	.byte KEYSH, 0x00
song_unk_228_0_002: @ 0x0834D09E
	.byte TEMPO, 0x23
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte N44, Cs2, v060
	.byte W48
	.byte Ds2
	.byte W48
song_unk_228_0_000: @ 0x0834D0AA
	.byte N23, En2, v060
	.byte W24
	.byte Gs2
	.byte W24
	.byte N44, Fs2
	.byte W48
	.byte PEND
	.byte Cs2
	.byte W48
	.byte Ds2
	.byte W48
	.byte PATT
	 .4byte song_unk_228_0_000
song_unk_228_0_001: @ 0x0834D0BD
	.byte N44, Bn2, v060
	.byte W48
	.byte An2
	.byte W48
	.byte PEND
	.byte N68, Dn2
	.byte W72
	.byte N23, Fs2
	.byte W24
	.byte PATT
	 .4byte song_unk_228_0_001
	.byte N92, Gs2, v060
	.byte W96
	.byte GOTO
	 .4byte song_unk_228_0_002
	.byte FINE
song_unk_228_1: @ 0x0834D0D9
	.byte KEYSH, 0x00
song_unk_228_1_004: @ 0x0834D0DB
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte N44, Bn1, v060
	.byte W48
	.byte N44
	.byte W48
song_unk_228_1_003: @ 0x0834D0E5
	.byte N23, Cs2, v060
	.byte W24
	.byte En2
	.byte W24
	.byte N44, Ds2
	.byte W48
	.byte PEND
	.byte Bn1
	.byte W48
	.byte N44
	.byte W48
	.byte PATT
	 .4byte song_unk_228_1_003
	.byte N44, Gn2, v060
	.byte W48
	.byte Fs2
	.byte W48
	.byte N68, Bn1
	.byte W72
	.byte N23, Dn2
	.byte W24
	.byte N44, Gn2
	.byte W48
	.byte N92, Fs2
	.byte W48
	.byte W48
	.byte N23, En2
	.byte W24
	.byte Ds2
	.byte W24
	.byte GOTO
	 .4byte song_unk_228_1_004
	.byte FINE
song_unk_228_2: @ 0x0834D116
	.byte KEYSH, 0x00
song_unk_228_2_005: @ 0x0834D118
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte TIE, En1, v052
	.byte W96
	.byte W24
	.byte EOT
	.byte N23, Cs2
	.byte W24
	.byte N44, Bn1
	.byte W48
	.byte TIE, En1
	.byte W96
	.byte W24
	.byte EOT
	.byte N23, Cs2
	.byte W24
	.byte N44, Bn1
	.byte W48
	.byte N92, En2
	.byte W96
	.byte N44, An1
	.byte W48
	.byte N23, Gn1
	.byte W24
	.byte Bn1
	.byte W24
	.byte N92, En2
	.byte W96
	.byte Bn1
	.byte W96
	.byte GOTO
	 .4byte song_unk_228_2_005
	.byte FINE
song_unk_228_3: @ 0x0834D149
	.byte KEYSH, 0x00
song_unk_228_3_007: @ 0x0834D14B
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte TIE, An0, v100
	.byte W96
	.byte W96
	.byte EOT
	.byte TIE
	.byte W96
	.byte W72
	.byte EOT
	.byte N23, Bn0
	.byte W24
song_unk_228_3_006: @ 0x0834D15C
	.byte N44, Cn1, v100
	.byte W48
	.byte Dn1
	.byte W48
	.byte PEND
	.byte N92, Gn0
	.byte W96
	.byte PATT
	 .4byte song_unk_228_3_006
	.byte N92, En1, v100
	.byte W96
	.byte GOTO
	 .4byte song_unk_228_3_007
	.byte FINE
	.align 2, 0
	.global song_unk_228
song_unk_228: @ 0x0834D178 (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_228_0
	.4byte song_unk_228_1
	.4byte song_unk_228_2
	.4byte song_unk_228_3

