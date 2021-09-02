	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_10_0: @ 0x0834671C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1D
	.byte VOL, 0x7F
	.byte N00, Bn5, v048
	.byte N00, Cn6
	.byte W01
	.byte As5
	.byte W01
	.byte An5
	.byte W01
	.byte Gn5
	.byte N00, Gs5
	.byte W01
	.byte Fs5
	.byte W01
	.byte Fn5
	.byte W01
	.byte Ds5, v064
	.byte N00, En5
	.byte W01
	.byte Dn5
	.byte W01
	.byte Cs5
	.byte W01
	.byte Bn4
	.byte N00, Cn5
	.byte W01
	.byte As4
	.byte W01
	.byte An4
	.byte W01
	.byte Gn4, v080
	.byte N00, Gs4
	.byte W01
	.byte Fs4
	.byte W01
	.byte Fn4
	.byte W01
	.byte Ds4
	.byte N00, En4
	.byte W01
	.byte Dn4
	.byte W01
	.byte Cs4
	.byte W01
	.byte Bn3
	.byte N00, Cn4
	.byte W01
	.byte As3
	.byte W01
	.byte An3
	.byte W01
	.byte Gn3
	.byte N00, Gs3
	.byte W01
	.byte Fs3
	.byte W01
	.byte Fn3
	.byte W01
	.byte FINE
song_unk_10_1: @ 0x08346769
	.byte KEYSH, 0x00
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte W23
	.byte N00, Cn3, v120
	.byte W01
	.byte Bn2
	.byte W01
	.byte As2
	.byte W01
	.byte Gs2
	.byte N00, An2
	.byte W01
	.byte Gn2
	.byte W01
	.byte Fs2
	.byte W01
	.byte En2
	.byte N00, Fn2
	.byte W01
	.byte Ds2
	.byte W01
	.byte Dn2
	.byte W01
	.byte Cn2, v112
	.byte N00, Cs2
	.byte W01
	.byte Bn1
	.byte W01
	.byte As1
	.byte W01
	.byte Gs1
	.byte N00, An1
	.byte W01
	.byte Gn1
	.byte W11
	.byte Cn3, v096
	.byte W01
	.byte Bn2
	.byte W01
	.byte An2
	.byte N00, As2
	.byte W01
	.byte Gs2
	.byte W01
	.byte Gn2
	.byte W01
	.byte Fn2
	.byte N00, Fs2
	.byte W01
	.byte En2
	.byte W01
	.byte Ds2
	.byte W01
	.byte Cs2
	.byte N00, Dn2
	.byte W01
	.byte Cn2
	.byte W01
	.byte Bn1
	.byte W01
	.byte An1
	.byte N00, As1
	.byte W01
	.byte Gs1
	.byte W01
	.byte Gn1
	.byte W05
	.byte Cn3, v080
	.byte W01
	.byte As2
	.byte N00, Bn2
	.byte W01
	.byte An2
	.byte W01
	.byte Gs2
	.byte W01
	.byte Fs2
	.byte N00, Gn2
	.byte W01
	.byte Fn2
	.byte W01
	.byte En2
	.byte W01
	.byte Ds2
	.byte W01
	.byte Cn3, v064
	.byte W01
	.byte As2
	.byte N00, Bn2
	.byte W01
	.byte An2
	.byte W01
	.byte Gs2
	.byte W01
	.byte Fs2
	.byte N00, Gn2
	.byte W01
	.byte Fn2
	.byte W01
	.byte En2
	.byte W01
	.byte Ds2
	.byte W01
	.byte Cn3, v048
	.byte W01
	.byte As2
	.byte N00, Bn2
	.byte W01
	.byte An2
	.byte W02
	.byte Bn2, v032
	.byte N00, Cn3
	.byte W01
	.byte As2
	.byte W01
	.byte An2
	.byte W01
	.byte Gn2
	.byte N00, Gs2
	.byte W01
	.byte Fs2
	.byte W01
	.byte Fn2
	.byte W01
	.byte Ds2
	.byte N00, En2
	.byte W01
	.byte Dn2
	.byte W01
	.byte Cs2
	.byte W01
	.byte Bn1
	.byte N00, Cn2
	.byte W01
	.byte As1
	.byte W01
	.byte An1
	.byte W01
	.byte Gn1
	.byte N00, Gs1
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_10
song_unk_10: @ 0x08346818 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_10_0
	.4byte song_unk_10_1

