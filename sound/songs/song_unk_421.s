	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_421_0: @ 0x0834FE80
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte N01, Bn2, v112
	.byte N01, Cn3
	.byte W01
	.byte As2, v096
	.byte W01
	.byte An2
	.byte W01
	.byte Gn2, v080
	.byte N01, Gs2
	.byte W01
	.byte Cn3, v112
	.byte W01
	.byte Bn2
	.byte W01
	.byte An2, v096
	.byte N01, As2, v112
	.byte W01
	.byte Gs2, v096
	.byte W01
	.byte Gn2
	.byte W01
	.byte Fn2, v080
	.byte N01, Fs2, v096
	.byte W01
	.byte En2, v080
	.byte W01
	.byte Ds2
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_421
song_unk_421: @ 0x0834FEB4 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_421_0
	.size song_unk_421,.-song_unk_421
