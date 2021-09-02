	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_277_0: @ 0x0834F070
	.byte KEYSH, 0x00
song_unk_277_0_000: @ 0x0834F072
	.byte TEMPO, 0x32
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte N44, Cs2, v056
	.byte N44, Fn2
	.byte N23, As2
	.byte W24
	.byte An1
	.byte W24
	.byte N92, Bn1
	.byte N44, Ds2
	.byte N44, Gs2
	.byte W48
	.byte TIE, En2
	.byte N64, Gn2
	.byte W48
	.byte N68, Cn2
	.byte W24
	.byte N23, Cn3
	.byte W24
	.byte N68, Gs2
	.byte W24
	.byte EOT, En2
	.byte N44, Cs2
	.byte W24
	.byte Fn2
	.byte W24
	.byte N68, Dn2
	.byte N44, Cs3
	.byte W24
	.byte Gs2
	.byte W24
	.byte Cn3
	.byte W24
	.byte Gs1
	.byte N44, Gn2
	.byte W24
	.byte Ds3
	.byte W24
	.byte N92, Gn1
	.byte N23, Fn2
	.byte W24
	.byte N44, En2
	.byte N23, As2
	.byte W24
	.byte N68, An2
	.byte W24
	.byte N44, Ds2
	.byte W24
	.byte N68, Fs1
	.byte W24
	.byte N44, Dn2
	.byte N23, As2
	.byte W24
	.byte Cn3
	.byte W24
	.byte N68, Cs2
	.byte N44, Gn2
	.byte W24
	.byte Fn1
	.byte W24
	.byte Fs2
	.byte W24
	.byte N23, Gn1
	.byte N68, Cn2
	.byte W24
	.byte N44, An1
	.byte N44, En2
	.byte W24
	.byte W24
	.byte TIE, Bn1
	.byte TIE, Ds2
	.byte W48
	.byte N76, Gn1
	.byte W24
	.byte W42
	.byte VOL, 0x6E
	.byte W03
	.byte 0x64
	.byte W03
	.byte 0x50
	.byte W03
	.byte 0x3C
	.byte W03
	.byte EOT, Bn1
	.byte Ds2
	.byte W18
	.byte GOTO
	 .4byte song_unk_277_0_000
	.byte FINE
	.align 2, 0
	.global song_unk_277
song_unk_277: @ 0x0834F0F8 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_277_0

