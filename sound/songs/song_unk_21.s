	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_21_0: @ 0x083477A0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x66
	.byte VOL, 0x7F
	.byte N00, Bn2, v112
	.byte N00, Cn3
	.byte W01
	.byte As2, v096
	.byte W01
	.byte An2
	.byte W01
	.byte Gn2, v080
	.byte N00, Gs2
	.byte W01
	.byte Cn3, v112
	.byte W01
	.byte Bn2
	.byte W01
	.byte An2, v096
	.byte N00, As2, v112
	.byte W01
	.byte Gs2, v096
	.byte W01
	.byte Gn2
	.byte W01
	.byte Fn2, v080
	.byte N00, Fs2, v096
	.byte W01
	.byte En2, v080
	.byte W01
	.byte Ds2
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_21
song_unk_21: @ 0x083477D4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_21_0

