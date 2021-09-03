	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_268_0: @ 0x0834E7B4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x50
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte N48, Cn3, v048
	.byte N48, Fn3, v056
	.byte W48
	.byte N24, An2, v048
	.byte N24, Gn3, v056
	.byte W24
	.byte Fn2, v048
	.byte N24, An3, v056
	.byte W24
	.byte N48, Gs2, v048
	.byte N12, Bn3, v056
	.byte W12
	.byte N12
	.byte W12
	.byte N12
	.byte W12
	.byte N12
	.byte W12
	.byte FINE
song_unk_268_1: @ 0x0834E7DE
	.byte KEYSH, 0x00
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N06, Fn2, v092
	.byte W12
	.byte N06
	.byte W12
	.byte An2
	.byte W12
	.byte N06
	.byte W12
	.byte Bn2
	.byte W12
	.byte N06
	.byte W12
	.byte Cn3
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
	.byte W06
	.byte FINE
song_unk_268_2: @ 0x0834E7FF
	.byte KEYSH, 0x00
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
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
	.byte N06, Cn2, v052
	.byte W06
	.byte N06
	.byte W06
	.byte Bn1
	.byte W06
	.byte N06
	.byte W06
	.byte Cn1, v072
	.byte N01, Fs1, v020
	.byte W06
	.byte N06, Cn1, v072
	.byte W06
	.byte Dn1, v052
	.byte N42, Cs2, v040
	.byte W12
	.byte N06, Dn1, v052
	.byte N01, Fs1, v020
	.byte W12
	.byte N06, Dn1, v052
	.byte W12
	.byte N06
	.byte N01, Fs1, v020
	.byte W06
	.byte FINE
song_unk_268_3: @ 0x0834E847
	.byte KEYSH, 0x00
	.byte VOICE, 0x01
	.byte VOL, 0x7F
	.byte PAN, 0x00
	.byte N03, An3, v056
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, An4
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x00
	.byte N03, An3
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, An4
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x00
	.byte N03, Cn4
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, Cn5
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x00
	.byte N03, Cn4
	.byte W06
	.byte N03
	.byte W06
	.byte PAN, 0x7F
	.byte N03, Cn5
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
	.byte W12
	.byte 0x7F
	.byte W12
	.byte 0x00
	.byte W12
	.byte 0x7F
	.byte W12
song_unk_268_3_000: @ 0x0834E8AB
	.byte PAN, 0x00
	.byte W12
	.byte 0x7F
	.byte W12
	.byte 0x00
	.byte W12
	.byte 0x7F
	.byte W12
	.byte 0x00
	.byte W12
	.byte 0x7F
	.byte W12
	.byte 0x00
	.byte W12
	.byte 0x7F
	.byte W12
	.byte PEND
	.byte PATT
	 .4byte song_unk_268_3_000
	.byte PATT
	 .4byte song_unk_268_3_000
	.byte PATT
	 .4byte song_unk_268_3_000
	.byte PATT
	 .4byte song_unk_268_3_000
	.byte PATT
	 .4byte song_unk_268_3_000
	.byte PATT
	 .4byte song_unk_268_3_000
	.byte PATT
	 .4byte song_unk_268_3_000
	.byte PATT
	 .4byte song_unk_268_3_000
	.byte PAN, 0x00
	.byte W12
	.byte 0x7F
	.byte W12
	.byte 0x00
	.byte W12
	.byte 0x7F
	.byte W12
	.byte 0x00
	.byte W12
	.byte 0x7F
	.byte W12
	.byte 0x00
	.byte W12
	.byte 0x7F
	.byte FINE
	.align 2, 0
	.global song_unk_268
song_unk_268: @ 0x0834E8F8 (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_268_0
	.4byte song_unk_268_1
	.4byte song_unk_268_2
	.4byte song_unk_268_3
	.size song_unk_268,.-song_unk_268
