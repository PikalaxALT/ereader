	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_101_0: @ 0x083497C0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x50
	.byte W48
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte N96, Gs2, v048
	.byte N96, Bn2, v056
	.byte W48
song_unk_101_0_000: @ 0x083497D0
	.byte W48
	.byte N96, An2, v048
	.byte N48, En3, v056
	.byte W48
	.byte PEND
song_unk_101_0_001: @ 0x083497D9
	.byte N48, Ds3, v056
	.byte W48
	.byte N96, Bn2, v048
	.byte N96, En3, v056
	.byte W48
	.byte PEND
song_unk_101_0_002: @ 0x083497E5
	.byte W48
	.byte N96, Cs3, v048
	.byte N48, Gs3, v056
	.byte W48
	.byte PEND
	.byte Fs3
	.byte W48
song_unk_101_0_003: @ 0x083497F0
	.byte N96, Gs2, v048
	.byte N96, Bn2
	.byte W48
	.byte PATT
	 .4byte song_unk_101_0_000
	.byte N48, Ds3, v056
	.byte W48
	.byte Bn2, v048
	.byte N96, En3, v056
	.byte W48
	.byte N48, Ds3, v048
	.byte W48
	.byte Cs3
	.byte N48, Bn3, v056
	.byte W48
	.byte Cn3, v048
	.byte N48, An3, v056
	.byte W48
	.byte N96, Bn2, v048
	.byte N96, Gs3, v056
	.byte W48
	.byte PATT
	 .4byte song_unk_101_0_000
	.byte PATT
	 .4byte song_unk_101_0_001
	.byte PATT
	 .4byte song_unk_101_0_002
	.byte N48, Fs3, v056
	.byte W48
	.byte GOTO
	 .4byte song_unk_101_0_003
	.byte FINE
song_unk_101_1: @ 0x08349834
	.byte KEYSH, 0x00
	.byte W48
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N06, En2, v092
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
song_unk_101_1_004: @ 0x08349845
	.byte N06, En2, v092
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte Fs2
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte PEND
song_unk_101_1_005: @ 0x08349858
	.byte N06, Fs2, v092
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte Gs2
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte PEND
song_unk_101_1_006: @ 0x0834986B
	.byte N06, Gs2, v092
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte An2
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte PEND
song_unk_101_1_007: @ 0x0834987E
	.byte N06, An2, v092
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte PEND
song_unk_101_1_008: @ 0x08349889
	.byte N06, En2, v092
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte PATT
	 .4byte song_unk_101_1_004
	.byte N06, Fs2, v092
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W06
	.byte Gn2
	.byte W06
	.byte Gs2
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte An2
	.byte W12
	.byte N06
	.byte W12
	.byte Cs2
	.byte W12
	.byte N06
	.byte W12
	.byte Dn2
	.byte W12
	.byte N06
	.byte W12
	.byte Ds2
	.byte W12
	.byte N06
	.byte W12
	.byte En2
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte N06
	.byte W12
	.byte PATT
	 .4byte song_unk_101_1_004
	.byte PATT
	 .4byte song_unk_101_1_005
	.byte PATT
	 .4byte song_unk_101_1_006
	.byte PATT
	 .4byte song_unk_101_1_007
	.byte GOTO
	 .4byte song_unk_101_1_008
	.byte FINE
song_unk_101_2: @ 0x083498E6
	.byte KEYSH, 0x00
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte N06, Dn1, v052
	.byte W12
	.byte Cn1, v072
	.byte W12
	.byte Dn1, v052
	.byte W12
	.byte N06
	.byte W06
	.byte N06
	.byte W06
	.byte Cn1, v072
	.byte W12
	.byte N01, Fs1, v020
	.byte W12
	.byte N06, Dn1, v052
	.byte W12
	.byte N01, Fs1, v020
	.byte W12
song_unk_101_2_009: @ 0x08349909
	.byte N06, Cn1, v072
	.byte W12
	.byte N01, Fs1, v020
	.byte W12
	.byte N06, Dn1, v052
	.byte W12
	.byte N01, Fs1, v020
	.byte W12
	.byte N06, Cn1, v072
	.byte W12
	.byte N01, Fs1, v020
	.byte W12
	.byte N06, Dn1, v052
	.byte W12
	.byte N01, Fs1, v020
	.byte W12
	.byte PEND
song_unk_101_2_010: @ 0x0834992A
	.byte N06, Cn1, v072
	.byte W12
	.byte N06
	.byte N01, Fs1, v020
	.byte W12
	.byte N06, Dn1, v052
	.byte W12
	.byte N12, Fs1, v020
	.byte W12
	.byte N06, Cn1, v072
	.byte W12
	.byte N01, Fs1, v020
	.byte W12
	.byte N06, Dn1, v052
	.byte W12
	.byte N01, Fs1, v020
	.byte W12
	.byte PEND
	.byte PATT
	 .4byte song_unk_101_2_009
song_unk_101_2_011: @ 0x08349951
	.byte N06, Cn1, v072
	.byte W12
	.byte N06
	.byte N01, Fs1, v020
	.byte W12
	.byte N06, Dn1, v052
	.byte W12
	.byte N12, Fs1, v020
	.byte W12
	.byte PEND
song_unk_101_2_012: @ 0x08349963
	.byte N06, Cn1, v072
	.byte W12
	.byte N01, Fs1, v020
	.byte W12
	.byte N06, Dn1, v052
	.byte W12
	.byte N01, Fs1, v020
	.byte W12
	.byte PATT
	 .4byte song_unk_101_2_009
	.byte PATT
	 .4byte song_unk_101_2_010
	.byte PATT
	 .4byte song_unk_101_2_009
	.byte N06, Cn1, v072
	.byte W12
	.byte N06
	.byte N01, Fs1, v020
	.byte W12
	.byte N06, Dn1, v052
	.byte W12
	.byte N06
	.byte N12, Fs1, v020
	.byte W12
	.byte N06, Cn1, v072
	.byte W12
	.byte N01, Fs1, v020
	.byte W12
	.byte N06, Dn1, v052
	.byte W12
	.byte N01, Fs1, v020
	.byte W12
	.byte PATT
	 .4byte song_unk_101_2_009
	.byte PATT
	 .4byte song_unk_101_2_010
	.byte PATT
	 .4byte song_unk_101_2_009
	.byte PATT
	 .4byte song_unk_101_2_011
	.byte GOTO
	 .4byte song_unk_101_2_012
	.byte FINE
song_unk_101_3: @ 0x083499BE
	.byte KEYSH, 0x00
	.byte W48
	.byte VOICE, 0x01
	.byte VOL, 0x7F
	.byte PAN, 0x00
	.byte N03, Bn3, v056
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, Bn4
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x00
	.byte N03, Bn3
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, Bn4
	.byte W06
	.byte N03
	.byte W06
song_unk_101_3_013: @ 0x083499E2
	.byte PAN, 0x00
	.byte N03, Bn3, v056
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, Bn4
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x00
	.byte N03, Bn3
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, Bn4
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x00
	.byte N03, Bn3
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, Bn4
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x00
	.byte N03, Bn3
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, Bn4
	.byte W06
	.byte N03
	.byte W06
	.byte PEND
	.byte PATT
	 .4byte song_unk_101_3_013
	.byte PATT
	 .4byte song_unk_101_3_013
song_unk_101_3_014: @ 0x08349A26
	.byte PAN, 0x00
	.byte N03, Bn3, v056
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, Bn4
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x00
	.byte N03, Bn3
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, Bn4
	.byte W06
	.byte N03
	.byte W06
	.byte PEND
song_unk_101_3_015: @ 0x08349A44
	.byte PAN, 0x00
	.byte N03, Bn3, v056
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, Bn4
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x00
	.byte N03, Bn3
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, Bn4
	.byte W06
	.byte N03
	.byte W06
	.byte PATT
	 .4byte song_unk_101_3_013
	.byte PATT
	 .4byte song_unk_101_3_013
	.byte PAN, 0x00
	.byte N03, Bn3, v056
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, Bn4
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x00
	.byte N03, Bn3
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, Bn4
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x00
	.byte N03, En4
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, En5
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x00
	.byte N03, En4
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, En5
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x00
	.byte N03, En4
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, En5
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x00
	.byte N03, En4
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, En5
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x00
	.byte N03, Bn3
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, Bn4
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x00
	.byte N03, Bn3
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, Bn4
	.byte W06
	.byte N03
	.byte W06
	.byte PATT
	 .4byte song_unk_101_3_013
	.byte PATT
	 .4byte song_unk_101_3_013
	.byte PATT
	 .4byte song_unk_101_3_013
	.byte PATT
	 .4byte song_unk_101_3_014
	.byte GOTO
	 .4byte song_unk_101_3_015
	.byte FINE
	.align 2, 0
	.global song_unk_101
song_unk_101: @ 0x08349AF8 (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_101_0
	.4byte song_unk_101_1
	.4byte song_unk_101_2
	.4byte song_unk_101_3
	.size song_unk_101,.-song_unk_101
