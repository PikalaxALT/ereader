	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_557_0: @ 0x08350CF8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x44
	.byte VOL, 0x7F
	.byte N01, Fn5, v080
	.byte N01, Gn5
	.byte W01
	.byte An5, v064
	.byte W01
	.byte Bn5
	.byte W01
	.byte Cs6, v048
	.byte N01, Ds6
	.byte W01
	.byte Fn6, v032
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_557
song_unk_557: @ 0x08350D14 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_557_0
	.size song_unk_557,.-song_unk_557
