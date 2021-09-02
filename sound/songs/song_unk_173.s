	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_173_0: @ 0x0834BEC0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x20
	.byte VOL, 0x7F
	.byte N00, Bn6, v032
	.byte N00, Cn7
	.byte W01
	.byte As6
	.byte W01
	.byte An6
	.byte W01
	.byte Gn6
	.byte N00, Gs6
	.byte W01
	.byte Fs6
	.byte W01
	.byte Fn6
	.byte W01
	.byte Ds6, v048
	.byte N00, En6
	.byte W01
	.byte Dn6
	.byte W01
	.byte Cs6
	.byte W01
	.byte Bn5
	.byte N00, Cn6
	.byte W01
	.byte As5
	.byte W01
	.byte An5
	.byte W01
	.byte Gn5, v052
	.byte N00, Gs5
	.byte W01
	.byte Fs5
	.byte W01
	.byte Fn5
	.byte W01
	.byte Ds5
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
	.byte Gn4
	.byte N00, Gs4
	.byte W01
	.byte Fs4
	.byte W01
	.byte Fn4, v048
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
	.byte An3, v032
	.byte W01
	.byte Gn3
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
	.byte FINE
	.align 2, 0
	.global song_unk_173
song_unk_173: @ 0x0834BF30 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_173_0

