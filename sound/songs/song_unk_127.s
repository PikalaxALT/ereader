	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_127_0: @ 0x0834A134
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x67
	.byte VOL, 0x7F
	.byte N00, Bn4, v048
	.byte N00, Cn5
	.byte W01
	.byte As4
	.byte W01
	.byte An4
	.byte W01
	.byte Gn4
	.byte N00, Gs4
	.byte W01
	.byte Fs4
	.byte W01
	.byte Fn4
	.byte W01
	.byte Ds4, v064
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
	.byte Gn3, v080
	.byte N00, Gs3
	.byte W01
	.byte Fs3
	.byte W01
	.byte Fn3
	.byte W01
	.byte Ds3
	.byte N00, En3
	.byte W01
	.byte Dn3
	.byte W01
	.byte Cs3
	.byte W01
	.byte Bn2
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
	.byte Fn2, v064
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
	.byte An1, v048
	.byte W01
	.byte Gn1
	.byte N00, Gs1
	.byte W01
	.byte Fs1
	.byte W01
	.byte Fn1
	.byte W01
	.byte Ds1
	.byte N00, En1
	.byte W01
	.byte Dn1
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_127
song_unk_127: @ 0x0834A1A4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_127_0

