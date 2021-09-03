	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_160_0: @ 0x0834B63C
	.byte KEYSH, 0x00
song_unk_160_0_001: @ 0x0834B63E
	.byte TEMPO, 0x37
	.byte VOICE, 0x7C
	.byte VOL, 0x7F
	.byte W24
	.byte W01
	.byte N12, An3, v080
	.byte W12
	.byte N01, Ds4
	.byte W02
	.byte N24, En4, v072
	.byte W22
	.byte N36, Cn4, v080
	.byte W32
	.byte W03
song_unk_160_0_000: @ 0x0834B656
	.byte W01
	.byte N36, Dn4, v080
	.byte W36
	.byte N01, As3
	.byte W02
	.byte N24, Bn3
	.byte W22
	.byte N12, An3
	.byte W12
	.byte N24, Gn3
	.byte W23
	.byte PEND
	.byte W24
	.byte W01
	.byte N12, An3
	.byte W12
	.byte N01, Ds4
	.byte W02
	.byte N24, En4, v072
	.byte W22
	.byte N36, Cn4, v080
	.byte W32
	.byte W03
	.byte W01
	.byte Dn4
	.byte W36
	.byte N01, As3
	.byte W02
	.byte N24, Bn3
	.byte W22
	.byte N12, Cn4
	.byte W12
	.byte N24, Dn4
	.byte W23
	.byte W24
	.byte W01
	.byte N12, Cn4
	.byte W12
	.byte N01, Fs4
	.byte W02
	.byte N24, Gn4, v072
	.byte W22
	.byte N36, En4
	.byte W32
	.byte W03
	.byte PATT
	 .4byte song_unk_160_0_000
	.byte W01
	.byte N60, An3, v080
	.byte W72
	.byte N12, Bn3
	.byte W12
	.byte An3
	.byte W11
	.byte W01
	.byte N01, Fs4
	.byte W02
	.byte N24, Gn4, v072
	.byte W22
	.byte N12, Fn4
	.byte W12
	.byte N24, Cn4, v080
	.byte W24
	.byte N32, Dn4
	.byte W32
	.byte W03
	.byte GOTO
	 .4byte song_unk_160_0_001
	.byte FINE
song_unk_160_1: @ 0x0834B6C0
	.byte KEYSH, 0x00
song_unk_160_1_002: @ 0x0834B6C2
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte N96, Dn1, v100
	.byte W10
	.byte N84, Fn1, v060
	.byte W12
	.byte N12, An1
	.byte W12
	.byte N24, Cn2
	.byte W24
	.byte N12, Bn1
	.byte W12
	.byte N24, Cn2
	.byte W24
	.byte N96, Gn0, v100
	.byte W02
	.byte W10
	.byte N84, Dn1, v060
	.byte W12
	.byte N12, Fs1
	.byte W12
	.byte N24, Bn1
	.byte W24
	.byte N12, An1
	.byte W12
	.byte N24, Bn1
	.byte W24
	.byte N96, Dn1, v100
	.byte W02
	.byte W10
	.byte N84, Fn1, v060
	.byte W12
	.byte N12, An1
	.byte W12
	.byte N24, Cn2
	.byte W24
	.byte N12, Bn1, v072
	.byte W12
	.byte N24, Cn2
	.byte W24
	.byte N96, Gn0, v100
	.byte W02
	.byte W10
	.byte N84, Dn1, v060
	.byte W12
	.byte N12, Fs1
	.byte W12
	.byte N24, Bn1
	.byte W24
	.byte N12, An1
	.byte W12
	.byte N24, Bn1
	.byte W24
	.byte N96, An0, v100
	.byte W02
	.byte W10
	.byte N84, En1, v060
	.byte W12
	.byte N12, Gn1
	.byte W12
	.byte N24, Cn2
	.byte W24
	.byte N12, Bn1
	.byte W12
	.byte N24, Cn2
	.byte W24
	.byte N96, En1, v100
	.byte W02
	.byte W10
	.byte N84, Bn1, v060
	.byte W12
	.byte N12, Fs2
	.byte W12
	.byte N24, Gn2
	.byte W24
	.byte N12, Fs2
	.byte W12
	.byte N24, Gn2
	.byte W24
	.byte N96, Bn0, v100
	.byte W02
	.byte W10
	.byte N84, Fs1, v060
	.byte W12
	.byte N12, An1
	.byte W12
	.byte N24, Dn2
	.byte W24
	.byte N12, Cs2, v072
	.byte W12
	.byte N24, Dn2
	.byte W24
	.byte N96, As0, v100
	.byte W02
	.byte W10
	.byte N84, Fn1, v060
	.byte W12
	.byte N12, An1
	.byte W12
	.byte N24, Dn2
	.byte W24
	.byte N12, Cn2
	.byte W12
	.byte N24, Dn2
	.byte W24
	.byte W02
	.byte GOTO
	 .4byte song_unk_160_1_002
	.byte FINE
	.align 2, 0
	.global song_unk_160
song_unk_160: @ 0x0834B778 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_160_0
	.4byte song_unk_160_1
	.size song_unk_160,.-song_unk_160
