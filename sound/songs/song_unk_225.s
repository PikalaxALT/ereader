	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_225_0: @ 0x0834D01C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte N00, Cn2, v100
	.byte W01
	.byte Bn1
	.byte W01
	.byte As1
	.byte W01
	.byte An1
	.byte W01
	.byte Cn4, v092
	.byte W01
	.byte Cs4, v080
	.byte W01
	.byte Dn4, v072
	.byte W01
	.byte Ds4, v060
	.byte W01
	.byte En4, v052
	.byte W01
	.byte Fn4
	.byte W01
	.byte Fs4
	.byte W01
	.byte Gn4, v040
	.byte W01
	.byte Gs4
	.byte W01
	.byte An4
	.byte W01
	.byte As4, v032
	.byte W01
	.byte Bn4
	.byte W01
	.byte Cn5
	.byte W01
	.byte Cs5, v020
	.byte W01
	.byte Dn5
	.byte W01
	.byte Ds5
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_225
song_unk_225: @ 0x0834D058 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_225_0

