	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_264_0: @ 0x0834E4A0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x32
	.byte VOICE, 0x03
	.byte VOL, 0x7F
	.byte W01
	.byte N17, Cn5, v052
	.byte W19
	.byte As4
	.byte W19
	.byte Gs4
	.byte W19
	.byte Ds4
	.byte W19
	.byte Fn4
	.byte W19
	.byte W01
	.byte N32, Gn4
	.byte W36
	.byte N36, Dn5
	.byte W40
	.byte W01
	.byte FINE
song_unk_264_1: @ 0x0834E4BE
	.byte KEYSH, 0x00
	.byte VOICE, 0x22
	.byte VOL, 0x7F
	.byte N17, Cn4, v040
	.byte W19
	.byte As3
	.byte W19
	.byte Gs3
	.byte W19
	.byte Ds3
	.byte W19
	.byte Fn3
	.byte W20
	.byte N32, Gn3
	.byte W36
	.byte N36, Dn4
	.byte W40
	.byte FINE
song_unk_264_2: @ 0x0834E4D7
	.byte KEYSH, 0x00
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte N17, Cs2, v060
	.byte N17, Gs2
	.byte N17, Fn3
	.byte W19
	.byte Cs2, v052
	.byte N17, Gs2
	.byte N17, Fn3
	.byte W19
	.byte Cs2, v040
	.byte N17, Gs2
	.byte N17, Fn3
	.byte W20
	.byte Cs2, v032
	.byte N17, Gs2
	.byte N17, Fn3
	.byte W19
	.byte Cs2, v020
	.byte N17, Gs2
	.byte N17, Fn3
	.byte W19
	.byte Cn2, v060
	.byte N17, Gn2
	.byte N17, En3
	.byte W19
	.byte Cn2, v052
	.byte N17, Gn2
	.byte N17, En3
	.byte W19
	.byte Cn2, v040
	.byte N17, Gn2
	.byte N17, En3
	.byte W20
	.byte Cn2, v032
	.byte N17, Gn2
	.byte N17, En3
	.byte W19
	.byte Cn2, v020
	.byte N17, Gn2
	.byte N17, En3
	.byte W19
	.byte W01
	.byte Cn2, v012
	.byte N17, Gn2
	.byte N17, En3
	.byte W18
	.byte FINE
	.align 2, 0
	.global song_unk_264
song_unk_264: @ 0x0834E530 (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_264_0
	.4byte song_unk_264_1
	.4byte song_unk_264_2

