	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_760_0: @ 0x083AB45C
	.byte VOL, 0x78
	.byte KEYSH, 0x00
song_unk_760_0_000: @ 0x083AB460
	.byte TEMPO, 0x41
	.byte VOICE, 0x5D
	.byte N05, Cn2, v064
	.byte N23, As2, v016
	.byte N01, Gs6, v127
	.byte W24
	.byte N11, Gn1
	.byte N05, Cn2, v064
	.byte W12
	.byte N01, Gs6, v127
	.byte W12
	.byte N05, Cn2, v064
	.byte N05, As2, v016
	.byte N01, Ds4, v048
	.byte W24
	.byte N05, Cn2, v064
	.byte N05, As2, v016
	.byte W12
	.byte N01, Ds4, v048
	.byte W12
	.byte N05, Cn2, v064
	.byte N23, As2, v016
	.byte N01, Gs6, v127
	.byte W18
	.byte N01
	.byte W06
	.byte N11, Gn1
	.byte N05, Cn2, v064
	.byte N01, Ds4, v048
	.byte W12
	.byte N01
	.byte W12
	.byte N05, Cn2, v064
	.byte N05, As2, v016
	.byte N01, Gs6, v127
	.byte W12
	.byte N11, Gn1
	.byte W12
	.byte N05, Cn2, v064
	.byte N01, Ds4, v048
	.byte W24
	.byte GOTO
	 .4byte song_unk_760_0_000
	.byte FINE
	.align 2, 0
	.global song_unk_760
song_unk_760: @ 0x083AB4C0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_760_0

