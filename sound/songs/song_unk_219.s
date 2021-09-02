	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_219_0: @ 0x0834CED0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x20
	.byte VOL, 0x7F
	.byte N01, Cn8, v100
	.byte W02
	.byte Bn7
	.byte W02
	.byte As7
	.byte W02
	.byte An7
	.byte W02
	.byte Gs7, v080
	.byte W02
	.byte Gn7
	.byte W02
	.byte Fs7
	.byte W02
	.byte Fn7
	.byte W02
	.byte En7
	.byte W02
	.byte Ds7
	.byte W02
	.byte Dn7
	.byte W02
	.byte Cs7
	.byte W02
	.byte Cn7
	.byte W02
	.byte Bn6
	.byte W02
	.byte As6
	.byte W02
	.byte An6
	.byte W02
	.byte Gs6, v064
	.byte W02
	.byte Gn6
	.byte W02
	.byte Fs6
	.byte W02
	.byte Fn6
	.byte W02
	.byte En6
	.byte W02
	.byte Ds6
	.byte W02
	.byte Dn6
	.byte W02
	.byte Cs6
	.byte W02
	.byte Cn6
	.byte W02
	.byte Bn5
	.byte W02
	.byte As5
	.byte W02
	.byte An5
	.byte W02
	.byte Gs5
	.byte W02
	.byte Gn5
	.byte W02
	.byte Fs5
	.byte W02
	.byte Fn5, v048
	.byte W02
	.byte En5
	.byte W02
	.byte Ds5
	.byte W02
	.byte Dn5
	.byte W02
	.byte Cs5
	.byte W02
	.byte Cn5
	.byte W02
	.byte Bn4
	.byte W02
	.byte As4
	.byte W02
	.byte An4, v032
	.byte W02
	.byte Gs4
	.byte W02
	.byte Gn4
	.byte W02
	.byte Fs4
	.byte W02
	.byte Fn4, v020
	.byte W02
	.byte En4
	.byte W02
	.byte Ds4, v016
	.byte W02
	.byte Dn4
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_219
song_unk_219: @ 0x0834CF40 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_219_0

