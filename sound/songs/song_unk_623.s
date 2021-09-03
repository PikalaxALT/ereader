	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_623_0: @ 0x08350F0C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte N01, Cs6, v048
	.byte N01, Dn6, v032
	.byte W01
	.byte Cn6, v060
	.byte W01
	.byte Bn5, v072
	.byte W01
	.byte An5, v060
	.byte N01, As5
	.byte W01
	.byte Gs5, v052
	.byte W01
	.byte Gn5, v040
	.byte W01
	.byte Fn5, v032
	.byte N01, Fs5
	.byte W01
	.byte En5, v020
	.byte W01
	.byte Ds5
	.byte W01
	.byte Cs5, v012
	.byte N01, Dn5
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_623
song_unk_623: @ 0x08350F3C (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_623_0
	.size song_unk_623,.-song_unk_623
