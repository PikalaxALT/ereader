	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_712_0: @ 0x083523DC
	.byte VOL, 0x3C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x08
	.byte N05, En3, v127
	.byte W08
	.byte Fn3
	.byte W08
	.byte Fs3
	.byte W08
	.byte N08, Gn3
	.byte W09
	.byte FINE
song_unk_712_1: @ 0x083523F0
	.byte VOL, 0x3C
	.byte KEYSH, 0x00
	.byte VOICE, 0x08
	.byte N05, Cn3, v064
	.byte W08
	.byte Dn3
	.byte W08
	.byte Ds3
	.byte W09
	.byte N07, En3, v048
	.byte W08
	.byte FINE
song_unk_712_2: @ 0x08352403
	.byte VOL, 0x3C
	.byte KEYSH, 0x00
	.byte VOICE, 0x08
	.byte N05, Bn2, v064
	.byte W08
	.byte Cn3
	.byte W08
	.byte Cs3
	.byte W09
	.byte N08, Dn3, v048
	.byte W09
	.byte FINE
song_unk_712_3: @ 0x08352416
	.byte VOL, 0x3C
	.byte KEYSH, 0x00
	.byte VOICE, 0x08
	.byte N05, Gn2, v064
	.byte W08
	.byte An2
	.byte W08
	.byte As2
	.byte W08
	.byte N07, Bn2, v056
	.byte W08
	.byte FINE
song_unk_712_4: @ 0x08352429
	.byte VOL, 0x3C
	.byte KEYSH, 0x00
	.byte VOICE, 0x7F
	.byte N07, Dn1, v096
	.byte W08
	.byte Dn1, v064
	.byte W08
	.byte N07
	.byte W11
	.byte N10, Cn1, v096
	.byte W01
	.byte TIE, En1, v032
	.byte W68
	.byte W48
	.byte W03
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_712
song_unk_712: @ 0x08352444 (song header)
	.byte 5, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804DE80 @ voice group
	.4byte song_unk_712_0
	.4byte song_unk_712_1
	.4byte song_unk_712_2
	.4byte song_unk_712_3
	.4byte song_unk_712_4

