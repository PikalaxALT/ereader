	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_172_0: @ 0x0834BE70
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte N01, Cn2, v072
	.byte N01, Cs2
	.byte W01
	.byte Dn2
	.byte W01
	.byte Ds2
	.byte W01
	.byte En2
	.byte N01, Fn2
	.byte W01
	.byte Fs2
	.byte W01
	.byte Gn2, v060
	.byte W01
	.byte Gs2
	.byte N01, An2
	.byte W01
	.byte As2
	.byte W01
	.byte Bn2
	.byte W01
	.byte Cn3
	.byte N01, Cs3
	.byte W01
	.byte Dn3
	.byte W01
	.byte Ds3, v044
	.byte W01
	.byte En3
	.byte N01, Fn3
	.byte W01
	.byte Fs3
	.byte W01
	.byte Gn3
	.byte W01
	.byte Gs3
	.byte N01, An3
	.byte W01
	.byte As3
	.byte W01
	.byte Bn3, v028
	.byte W01
	.byte Cn4
	.byte N01, Cs4
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_172
song_unk_172: @ 0x0834BEB4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_172_0
	.size song_unk_172,.-song_unk_172
