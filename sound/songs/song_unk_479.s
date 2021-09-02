	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_479_0: @ 0x0835048C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte PAN, 0x40
	.byte N02, Cn3, v072
	.byte W02
	.byte Dn3
	.byte W03
	.byte En3
	.byte W02
	.byte Fs3
	.byte W02
	.byte Gs3
	.byte W02
	.byte As3
	.byte W03
	.byte Cn4
	.byte W02
	.byte Dn4
	.byte W02
	.byte En4
	.byte W02
	.byte Fs4
	.byte W03
	.byte Gs4
	.byte W02
	.byte As4
	.byte W02
	.byte Cn5
	.byte W02
	.byte Dn5
	.byte W03
	.byte En5
	.byte W02
	.byte Fs5
	.byte W04
	.byte N01, Fs5, v060
	.byte W03
	.byte Fs5, v052
	.byte W04
	.byte Fs5, v040
	.byte W04
	.byte Fs5, v032
	.byte W04
	.byte Fs5, v020
	.byte W03
	.byte N01
	.byte W03
	.byte FINE
song_unk_479_1: @ 0x083504CB
	.byte KEYSH, 0x00
	.byte VOICE, 0x1E
	.byte VOL, 0x7E
	.byte PAN, 0x40
	.byte N02, En3, v060
	.byte W02
	.byte Fs3
	.byte W02
	.byte Gs3
	.byte W02
	.byte As3
	.byte W03
	.byte Cn4
	.byte W02
	.byte Dn4
	.byte W02
	.byte En4
	.byte W02
	.byte Fs4
	.byte W03
	.byte Gs4
	.byte W02
	.byte As4
	.byte W02
	.byte Cn5
	.byte W02
	.byte Dn5
	.byte W03
	.byte En5
	.byte W02
	.byte Fs5
	.byte W02
	.byte Gs5
	.byte W02
	.byte As5
	.byte W04
	.byte N01, As5, v052
	.byte W04
	.byte As5, v040
	.byte W04
	.byte As5, v032
	.byte W03
	.byte As5, v020
	.byte W04
	.byte N01
	.byte W04
	.byte N01
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_479
song_unk_479: @ 0x08350508 (song header)
	.byte 2, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_479_0
	.4byte song_unk_479_1

