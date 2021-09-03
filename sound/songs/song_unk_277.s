	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_277_0: @ 0x0834F070
	.byte KEYSH, 0x00
song_unk_277_0_000: @ 0x0834F072
	.byte TEMPO, 0x32
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte N48, Cs2, v056
	.byte N48, Fn2
	.byte N24, As2
	.byte W24
	.byte An1
	.byte W24
	.byte N96, Bn1
	.byte N48, Ds2
	.byte N48, Gs2
	.byte W48
	.byte TIE, En2
	.byte N66, Gn2
	.byte W48
	.byte N72, Cn2
	.byte W24
	.byte N24, Cn3
	.byte W24
	.byte N72, Gs2
	.byte W24
	.byte EOT, En2
	.byte N48, Cs2
	.byte W24
	.byte Fn2
	.byte W24
	.byte N72, Dn2
	.byte N48, Cs3
	.byte W24
	.byte Gs2
	.byte W24
	.byte Cn3
	.byte W24
	.byte Gs1
	.byte N48, Gn2
	.byte W24
	.byte Ds3
	.byte W24
	.byte N96, Gn1
	.byte N24, Fn2
	.byte W24
	.byte N48, En2
	.byte N24, As2
	.byte W24
	.byte N72, An2
	.byte W24
	.byte N48, Ds2
	.byte W24
	.byte N72, Fs1
	.byte W24
	.byte N48, Dn2
	.byte N24, As2
	.byte W24
	.byte Cn3
	.byte W24
	.byte N72, Cs2
	.byte N48, Gn2
	.byte W24
	.byte Fn1
	.byte W24
	.byte Fs2
	.byte W24
	.byte N24, Gn1
	.byte N72, Cn2
	.byte W24
	.byte N48, An1
	.byte N48, En2
	.byte W24
	.byte W24
	.byte TIE, Bn1
	.byte TIE, Ds2
	.byte W48
	.byte N78, Gn1
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
	.4byte voicegroup000 @ voice group
	.4byte song_unk_277_0
	.size song_unk_277,.-song_unk_277
