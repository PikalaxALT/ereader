	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_708_0: @ 0x083521A8
	.byte VOL, 0x50
	.byte KEYSH, 0x00
	.byte TEMPO, 0x64
	.byte VOICE, 0x02
	.byte N07, An2, v096
	.byte W08
	.byte En3, v064
	.byte W16
	.byte En3, v096
	.byte W08
	.byte Bn3
	.byte W16
	.byte An3
	.byte W08
	.byte En4
	.byte W07
	.byte FINE
song_unk_708_1: @ 0x083521C1
	.byte VOL, 0x50
	.byte KEYSH, 0x00
	.byte VOICE, 0x02
	.byte W02
	.byte N07, Bn2, v096
	.byte W08
	.byte Fn3, v064
	.byte W16
	.byte Fn3, v096
	.byte W08
	.byte Cn4
	.byte W16
	.byte Bn3
	.byte W08
	.byte Fn4
	.byte W07
	.byte FINE
song_unk_708_2: @ 0x083521D9
	.byte VOL, 0x50
	.byte KEYSH, 0x00
	.byte VOICE, 0x02
	.byte W04
	.byte N07, Cn3, v096
	.byte W08
	.byte Gn3, v064
	.byte W16
	.byte Gn3, v096
	.byte W08
	.byte Dn4
	.byte W16
	.byte Cn4
	.byte W08
	.byte Gn4, v064
	.byte W07
	.byte FINE
song_unk_708_3: @ 0x083521F2
	.byte VOL, 0x50
	.byte KEYSH, 0x00
	.byte VOICE, 0x02
	.byte W06
	.byte N07, Dn3, v096
	.byte W24
	.byte An3
	.byte W24
	.byte Dn4
	.byte W07
	.byte FINE
	.align 2, 0
	.global song_unk_708
song_unk_708: @ 0x08352204 (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup005 @ voice group
	.4byte song_unk_708_0
	.4byte song_unk_708_1
	.4byte song_unk_708_2
	.4byte song_unk_708_3
	.size song_unk_708,.-song_unk_708
