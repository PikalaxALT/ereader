	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_218_0: @ 0x0834CE84
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x01
	.byte VOL, 0x7F
	.byte N05, Cn3, v052
	.byte W06
	.byte Dn3
	.byte W06
	.byte En3
	.byte W06
	.byte Gn3
	.byte W06
	.byte Cn4
	.byte W06
	.byte Dn4
	.byte W06
	.byte En4
	.byte W06
	.byte Gn4
	.byte W06
	.byte N32, Cn5
	.byte W36
	.byte FINE
song_unk_218_1: @ 0x0834CEA2
	.byte KEYSH, 0x00
	.byte VOICE, 0x20
	.byte VOL, 0x7F
	.byte N05, Gn2, v040
	.byte W06
	.byte Bn2
	.byte W06
	.byte Cn3
	.byte W06
	.byte En3
	.byte W06
	.byte Gn3
	.byte W06
	.byte Bn3
	.byte W06
	.byte Cn4
	.byte W06
	.byte En4
	.byte W06
	.byte N32, Gn4
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_218
song_unk_218: @ 0x0834CEC0 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_218_0
	.4byte song_unk_218_1

