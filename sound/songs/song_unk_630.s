	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_630_0: @ 0x08350F78
	.byte KEYSH, 0x00
	.byte TEMPO, 0x64
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte N01, En5, v060
	.byte W01
	.byte Fn5, v072
	.byte W01
	.byte Fs5
	.byte W01
	.byte Gn5, v060
	.byte W01
	.byte Gs5, v052
	.byte W01
	.byte An5
	.byte W01
	.byte As5, v040
	.byte W01
	.byte Bn5, v032
	.byte W01
	.byte Cn6
	.byte W01
	.byte Cs6, v020
	.byte W01
	.byte Dn6
	.byte W01
	.byte Ds6, v012
	.byte W01
	.byte En6
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_630
song_unk_630: @ 0x08350FA4 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_630_0
	.size song_unk_630,.-song_unk_630
