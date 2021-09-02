	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_86_0: @ 0x083491D4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x03
	.byte VOL, 0x7F
	.byte N01, As5, v064
	.byte W02
	.byte N32, Dn6
	.byte W36
	.byte FINE
song_unk_86_1: @ 0x083491E4
	.byte KEYSH, 0x00
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte PAN, 0x7F
	.byte N01, As3, v112
	.byte W03
	.byte Dn4
	.byte W04
	.byte Fn4
	.byte W02
	.byte As4
	.byte W04
	.byte Cn5
	.byte W03
	.byte Cn5, v080
	.byte W05
	.byte Cn5, v064
	.byte W04
	.byte N01
	.byte W04
	.byte Cn5, v048
	.byte W04
	.byte Cn5, v032
	.byte W02
	.byte FINE
song_unk_86_2: @ 0x08349207
	.byte KEYSH, 0x00
	.byte VOICE, 0x42
	.byte VOL, 0x7F
	.byte PAN, 0x00
	.byte N01, Fn4, v112
	.byte W04
	.byte As4
	.byte W03
	.byte Dn5
	.byte W03
	.byte Fn5
	.byte W04
	.byte Gs5
	.byte W03
	.byte Gs5, v080
	.byte W04
	.byte Gs5, v064
	.byte W05
	.byte N01
	.byte W04
	.byte Gs5, v048
	.byte W03
	.byte Gs5, v032
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_86
song_unk_86: @ 0x0834922C (song header)
	.byte 3, 0, 15, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_86_0
	.4byte song_unk_86_1
	.4byte song_unk_86_2

