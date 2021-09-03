	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_50_0: @ 0x08348064
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte N01, Bn3, v060
	.byte N01, Cn4
	.byte W01
	.byte As3
	.byte W01
	.byte An3
	.byte W01
	.byte Gn3
	.byte N01, Gs3
	.byte W01
	.byte Fs3
	.byte W01
	.byte Fn3
	.byte W01
	.byte Ds3
	.byte N01, En3
	.byte W01
	.byte Dn3
	.byte W01
	.byte Cs3
	.byte W01
	.byte Cn3
	.byte W01
	.byte Bn2
	.byte W01
	.byte As2
	.byte W01
	.byte Gs2
	.byte N01, An2
	.byte W01
	.byte Gn2
	.byte W01
	.byte Fs2
	.byte W01
	.byte Fn2
	.byte FINE
	.align 2, 0
	.global song_unk_50
song_unk_50: @ 0x08348098 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_50_0
	.size song_unk_50,.-song_unk_50
