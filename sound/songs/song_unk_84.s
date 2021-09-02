	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_84_0: @ 0x08349040
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x03
	.byte VOL, 0x7F
	.byte N05, An3, v056
	.byte W06
	.byte Cs4
	.byte W06
	.byte En4
	.byte W06
	.byte An4
	.byte W06
	.byte Bn4
	.byte W06
	.byte Cs5
	.byte W06
	.byte Ds5
	.byte W06
	.byte Bn4
	.byte W06
	.byte Fs5
	.byte W06
	.byte En5
	.byte W06
	.byte Dn5
	.byte W06
	.byte Cs5
	.byte W06
	.byte TEMPO, 0x32
	.byte Bn4
	.byte W06
	.byte An4
	.byte W06
	.byte TEMPO, 0x28
	.byte Gs4
	.byte W06
	.byte Bn4
	.byte W06
	.byte N32, Cs5
	.byte W36
	.byte FINE
song_unk_84_1: @ 0x08349072
	.byte KEYSH, 0x00
	.byte VOICE, 0x22
	.byte VOL, 0x7F
	.byte N05, Cs3, v052
	.byte W06
	.byte En3
	.byte W06
	.byte An3
	.byte W06
	.byte Cs4
	.byte W06
	.byte Ds4
	.byte W06
	.byte En4
	.byte W06
	.byte Fs4
	.byte W06
	.byte Ds4
	.byte W06
	.byte An4
	.byte W06
	.byte Gs4
	.byte W06
	.byte Fs4
	.byte W06
	.byte En4
	.byte W06
	.byte Dn4
	.byte W06
	.byte Cs4
	.byte W06
	.byte Bn3
	.byte W06
	.byte En4
	.byte W06
	.byte N32, Fs4
	.byte W36
	.byte FINE
song_unk_84_2: @ 0x0834909E
	.byte KEYSH, 0x00
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte N23, Cs3, v048
	.byte N23, En3
	.byte W24
	.byte Ds3
	.byte N23, Fs3
	.byte W24
	.byte N23
	.byte N23, An3
	.byte W24
	.byte En3
	.byte N23, Gs3
	.byte W24
	.byte N40, Cs3, v056
	.byte N40, As3
	.byte W42
	.byte FINE
song_unk_84_3: @ 0x083490BD
	.byte KEYSH, 0x00
	.byte VOICE, 0x57
	.byte VOL, 0x7F
	.byte N23, An4, v052
	.byte W24
	.byte Bn4
	.byte W24
	.byte Dn4
	.byte W24
	.byte En4
	.byte W24
	.byte N40, Fs4
	.byte W42
	.byte FINE
	.align 2, 0
	.global song_unk_84
song_unk_84: @ 0x083490D4 (song header)
	.byte 4, 0, 20, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_84_0
	.4byte song_unk_84_1
	.4byte song_unk_84_2
	.4byte song_unk_84_3

