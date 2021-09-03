	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_713_0: @ 0x08352460
	.byte VOL, 0x46
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x08
	.byte N09, Fn3, v127
	.byte W08
	.byte VOL, 0x11
	.byte W04
	.byte 0x46
	.byte N04
	.byte W04
	.byte N04
	.byte W04
	.byte N04
	.byte W04
	.byte N06, As3
	.byte W12
	.byte Dn4
	.byte W12
	.byte N44, As3
	.byte W44
	.byte W03
	.byte FINE
song_unk_713_1: @ 0x08352480
	.byte VOL, 0x46
	.byte KEYSH, 0x00
	.byte VOICE, 0x08
	.byte N07, As2, v048
	.byte W06
	.byte VOL, 0x11
	.byte W06
	.byte 0x46
	.byte N04, As2, v064
	.byte W04
	.byte N04
	.byte W04
	.byte N04
	.byte W04
	.byte N06, Dn3
	.byte W12
	.byte Fn3
	.byte W12
	.byte N44, Dn3
	.byte W44
	.byte W03
	.byte FINE
song_unk_713_2: @ 0x083524A0
	.byte VOL, 0x46
	.byte KEYSH, 0x00
	.byte VOICE, 0x08
	.byte N09, Dn2, v088
	.byte W12
	.byte N04, Dn2, v096
	.byte W04
	.byte N04
	.byte W04
	.byte N04
	.byte W04
	.byte N06, Fn2
	.byte W12
	.byte As2
	.byte W12
	.byte N44, Fn2
	.byte W44
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_713
song_unk_713: @ 0x083524BC (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup005 @ voice group
	.4byte song_unk_713_0
	.4byte song_unk_713_1
	.4byte song_unk_713_2
	.size song_unk_713,.-song_unk_713
