	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_85_0: @ 0x083490EC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x45
	.byte VOL, 0x7F
	.byte PAN, 0x40
	.byte N00, En3, v068
	.byte W01
	.byte Gs3
	.byte W02
	.byte Bn3
	.byte W01
	.byte Dn4
	.byte W02
	.byte Fs3
	.byte W01
	.byte As3
	.byte W02
	.byte Cs4
	.byte W01
	.byte En4
	.byte W02
	.byte Gs3
	.byte W01
	.byte Cn4
	.byte W02
	.byte Ds4
	.byte W01
	.byte Fs4
	.byte W02
	.byte As3
	.byte W01
	.byte Dn4
	.byte W02
	.byte Fn4
	.byte W01
	.byte Gs4
	.byte W02
	.byte Cn4
	.byte W01
	.byte En4
	.byte W02
	.byte Gn4
	.byte W01
	.byte As4
	.byte W02
	.byte Dn4
	.byte W01
	.byte Fs4
	.byte W02
	.byte An4
	.byte W01
	.byte Cn5
	.byte W02
	.byte En4
	.byte W01
	.byte Gs4
	.byte W02
	.byte Bn4
	.byte W01
	.byte Dn5
	.byte W02
	.byte Fs4
	.byte W01
	.byte As4
	.byte W02
	.byte Cs5
	.byte W01
	.byte En5
	.byte W02
	.byte Gs4
	.byte W01
	.byte Cn5
	.byte W02
	.byte Ds5
	.byte W01
	.byte Fs5
	.byte W02
	.byte As4
	.byte W01
	.byte Dn5
	.byte W02
	.byte Fn5
	.byte W01
	.byte Gs5
	.byte W02
song_unk_85_0_000: @ 0x08349148
	.byte N00, Cn5, v068
	.byte W01
	.byte En5
	.byte W02
	.byte Gn5
	.byte W01
	.byte As5
	.byte W02
	.byte GOTO
	 .4byte song_unk_85_0_000
	.byte FINE
song_unk_85_1: @ 0x08349158
	.byte KEYSH, 0x00
	.byte VOICE, 0x1F
	.byte VOL, 0x7F
	.byte PAN, 0x40
	.byte N00, Cn3, v048
	.byte W01
	.byte En3
	.byte W02
	.byte Gn3
	.byte W01
	.byte As3
	.byte W02
	.byte Dn3
	.byte W01
	.byte Fs3
	.byte W02
	.byte An3
	.byte W01
	.byte Cn4
	.byte W02
	.byte En3
	.byte W01
	.byte Gs3
	.byte W02
	.byte Bn3
	.byte W01
	.byte Dn4
	.byte W02
	.byte Fs3
	.byte W01
	.byte As3
	.byte W02
	.byte Cs4
	.byte W01
	.byte En4
	.byte W02
	.byte Gs3
	.byte W01
	.byte Cn4
	.byte W02
	.byte Ds4
	.byte W01
	.byte Fs4
	.byte W02
	.byte As3
	.byte W01
	.byte Dn4
	.byte W02
	.byte Fn4
	.byte W01
	.byte Gs4
	.byte W02
	.byte Cn4
	.byte W01
	.byte En4
	.byte W02
	.byte Gn4
	.byte W01
	.byte As4
	.byte W02
	.byte Dn4
	.byte W01
	.byte Fs4
	.byte W02
	.byte An4
	.byte W01
	.byte Cn5
	.byte W02
	.byte En4
	.byte W01
	.byte Gs4
	.byte W02
	.byte Bn4
	.byte W01
	.byte Dn5
	.byte W02
	.byte Fs4
	.byte W01
	.byte As4
	.byte W02
	.byte Cs5
	.byte W01
	.byte En5
	.byte W02
song_unk_85_1_001: @ 0x083491B2
	.byte N00, Gs4, v048
	.byte W01
	.byte Cn5
	.byte W02
	.byte Ds5
	.byte W01
	.byte Fs5
	.byte W02
	.byte GOTO
	 .4byte song_unk_85_1_001
	.byte FINE
	.align 2, 0
	.global song_unk_85
song_unk_85: @ 0x083491C4 (song header)
	.byte 2, 0, 15, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_85_0
	.4byte song_unk_85_1

