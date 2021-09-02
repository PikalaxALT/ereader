	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_713_0: @ 0x08352460
	.byte VOL, 0x46
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x08
	.byte N08, Fn3, v127
	.byte W08
	.byte VOL, 0x11
	.byte W04
	.byte 0x46
	.byte N03
	.byte W04
	.byte N03
	.byte W04
	.byte N03
	.byte W04
	.byte N05, As3
	.byte W12
	.byte Dn4
	.byte W12
	.byte N42, As3
	.byte W44
	.byte W03
	.byte FINE
song_unk_713_1: @ 0x08352480
	.byte VOL, 0x46
	.byte KEYSH, 0x00
	.byte VOICE, 0x08
	.byte N06, As2, v048
	.byte W06
	.byte VOL, 0x11
	.byte W06
	.byte 0x46
	.byte N03, As2, v064
	.byte W04
	.byte N03
	.byte W04
	.byte N03
	.byte W04
	.byte N05, Dn3
	.byte W12
	.byte Fn3
	.byte W12
	.byte N42, Dn3
	.byte W44
	.byte W03
	.byte FINE
song_unk_713_2: @ 0x083524A0
	.byte VOL, 0x46
	.byte KEYSH, 0x00
	.byte VOICE, 0x08
	.byte N08, Dn2, v088
	.byte W12
	.byte N03, Dn2, v096
	.byte W04
	.byte N03
	.byte W04
	.byte N03
	.byte W04
	.byte N05, Fn2
	.byte W12
	.byte As2
	.byte W12
	.byte N42, Fn2
	.byte W44
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_713
song_unk_713: @ 0x083524BC (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804DE80 @ voice group
	.4byte song_unk_713_0
	.4byte song_unk_713_1
	.4byte song_unk_713_2

