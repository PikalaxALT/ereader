	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_141_0: @ 0x0834AFC8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte PAN, 0x7F
	.byte N03, En3, v092
	.byte W04
	.byte Fn3
	.byte W04
	.byte Gn3
	.byte W04
	.byte Cn4
	.byte W04
	.byte En4
	.byte W04
	.byte Fn4
	.byte W04
	.byte Gn4
	.byte W04
	.byte Cn5
	.byte W04
	.byte En5
	.byte W04
	.byte N03
	.byte W04
	.byte En5, v076
	.byte W04
	.byte N03
	.byte W04
	.byte En5, v060
	.byte W04
	.byte En5, v044
	.byte W03
	.byte FINE
song_unk_141_1: @ 0x0834AFF4
	.byte KEYSH, 0x00
	.byte VOICE, 0x42
	.byte VOL, 0x7F
	.byte PAN, 0x00
	.byte N03, Cn4, v092
	.byte W04
	.byte Dn4
	.byte W04
	.byte En4
	.byte W04
	.byte Gn4
	.byte W04
	.byte Cn5
	.byte W04
	.byte Dn5
	.byte W04
	.byte En5
	.byte W04
	.byte Gn5
	.byte W04
	.byte Cn6
	.byte W04
	.byte N03
	.byte W04
	.byte Cn6, v076
	.byte W04
	.byte N03
	.byte W04
	.byte Cn6, v060
	.byte W04
	.byte Cn6, v044
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_141
song_unk_141: @ 0x0834B020 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_141_0
	.4byte song_unk_141_1
	.size song_unk_141,.-song_unk_141
