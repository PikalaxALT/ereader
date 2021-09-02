	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_223_0: @ 0x0834CFA0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte N00, Cs6, v048
	.byte N00, Dn6, v032
	.byte W01
	.byte Cn6, v060
	.byte W01
	.byte Bn5, v072
	.byte W01
	.byte An5, v060
	.byte N00, As5
	.byte W01
	.byte Gs5, v052
	.byte W01
	.byte Gn5, v040
	.byte W01
	.byte Fn5, v032
	.byte N00, Fs5
	.byte W01
	.byte En5, v020
	.byte W01
	.byte Ds5
	.byte W01
	.byte Cs5, v012
	.byte N00, Dn5
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_223
song_unk_223: @ 0x0834CFD0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_223_0

