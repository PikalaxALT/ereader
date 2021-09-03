	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_751_0: @ 0x083AABBC
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_751_0_000: @ 0x083AABC0
	.byte TEMPO, 0x2C
	.byte VOICE, 0x00
	.byte MOD, 0x00
	.byte PAN, 0x40
	.byte N03, Cn2, v127
	.byte W16
	.byte N03
	.byte W04
	.byte Dn2
	.byte W04
	.byte En2
	.byte W16
	.byte Dn2
	.byte W08
	.byte Cn2
	.byte W24
	.byte Gn2
	.byte W24
	.byte En2
	.byte W24
	.byte Cn3
	.byte W24
	.byte Gn2
	.byte W48
	.byte N03
	.byte W16
	.byte N03
	.byte W04
	.byte Gs2
	.byte W04
	.byte Gn2
	.byte W16
	.byte Fs2
	.byte W08
	.byte Ds2
	.byte W48
	.byte Dn2
	.byte W24
	.byte Gn2
	.byte W24
	.byte Cn2
	.byte W48
	.byte W96
	.byte W96
	.byte GOTO
	 .4byte song_unk_751_0_000
	.byte FINE
song_unk_751_1: @ 0x083AABF8
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_751_1_002: @ 0x083AABFC
	.byte VOICE, 0x5D
	.byte N07, Ds4, v072
	.byte W16
	.byte N07
	.byte W08
	.byte Gs6, v127
	.byte W16
	.byte N07
	.byte W08
	.byte Ds4, v072
	.byte W16
	.byte N07
	.byte W08
	.byte Gs6, v127
	.byte W16
	.byte N07
	.byte W08
song_unk_751_1_001: @ 0x083AAC13
	.byte N07, Ds4, v072
	.byte W16
	.byte N07
	.byte W08
	.byte Gs6, v127
	.byte W16
	.byte N07
	.byte W08
	.byte Ds4, v072
	.byte W48
	.byte PEND
	.byte PATT
	 .4byte song_unk_751_1_001
	.byte N07, Ds4, v072
	.byte W24
	.byte Gs6, v127
	.byte W24
	.byte Ds4, v072
	.byte W48
	.byte N07
	.byte W16
	.byte N07
	.byte W08
	.byte Gs6, v127
	.byte W16
	.byte N07
	.byte W08
	.byte Ds4, v072
	.byte W16
	.byte N07
	.byte W08
	.byte Gs6, v127
	.byte W16
	.byte N07
	.byte W08
	.byte PATT
	 .4byte song_unk_751_1_001
	.byte GOTO
	 .4byte song_unk_751_1_002
	.byte FINE
	.align 2, 0
	.global song_unk_751
song_unk_751: @ 0x083AAC50 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_751_0
	.4byte song_unk_751_1
	.size song_unk_751,.-song_unk_751
