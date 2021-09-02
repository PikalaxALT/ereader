	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_375_0: @ 0x0834F938
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
	.byte Fn3, v064
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
	.byte An2, v048
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
	.byte FINE
	.align 2, 0
	.global song_unk_375
song_unk_375: @ 0x0834F9A8 (song header)
	.byte 1, 0, 200, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_375_0

