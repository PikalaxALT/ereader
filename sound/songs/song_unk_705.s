	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_705_0: @ 0x08351E4C
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x07
	.byte W24
	.byte N23, En4, v064
	.byte W23
	.byte FINE
song_unk_705_1: @ 0x08351E5A
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
	.byte VOICE, 0x07
	.byte W24
	.byte N23, Cs4, v064
	.byte W23
	.byte FINE
song_unk_705_2: @ 0x08351E66
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
	.byte VOICE, 0x07
	.byte W24
	.byte N23, Bn3, v064
	.byte W23
	.byte FINE
song_unk_705_3: @ 0x08351E72
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
	.byte VOICE, 0x7F
	.byte N02, An1, v127
	.byte W03
	.byte N22, An1, v112
	.byte W03
	.byte N17, Gn1, v127
	.byte W06
	.byte N05, Fn1
	.byte W06
	.byte N17, Fn1, v096
	.byte W17
	.byte FINE
song_unk_705_4: @ 0x08351E8C
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
	.byte VOICE, 0x7F
	.byte N11, Cn1, v032
	.byte W24
	.byte Cn1, v127
	.byte W11
	.byte FINE
song_unk_705_5: @ 0x08351E9A
	.byte VOL, 0x7F
	.byte KEYSH, 0x00
	.byte VOICE, 0x7F
	.byte W24
	.byte N23, En1, v080
	.byte W23
	.byte FINE
	.align 2, 0
	.global song_unk_705
song_unk_705: @ 0x08351EA8 (song header)
	.byte 6, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup005 @ voice group
	.4byte song_unk_705_0
	.4byte song_unk_705_1
	.4byte song_unk_705_2
	.4byte song_unk_705_3
	.4byte song_unk_705_4
	.4byte song_unk_705_5
	.size song_unk_705,.-song_unk_705
