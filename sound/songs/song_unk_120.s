	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_120_0: @ 0x08349F0C
	.byte KEYSH, 0x00
song_unk_120_0_000: @ 0x08349F0E
	.byte TEMPO, 0x32
	.byte VOICE, 0x03
	.byte VOL, 0x7F
	.byte W01
	.byte N18, An4, v052
	.byte W18
	.byte Fn4
	.byte W18
	.byte Cn4
	.byte W18
	.byte N40, Dn4
	.byte W40
	.byte W01
	.byte W01
	.byte N18, Gn4
	.byte W18
	.byte Ds4
	.byte W18
	.byte As3
	.byte W18
	.byte N40, Cn4
	.byte W40
	.byte W01
	.byte W01
	.byte N18, An4
	.byte W18
	.byte Fn4
	.byte W18
	.byte Cn4
	.byte W18
	.byte N40, Dn4
	.byte W40
	.byte W01
	.byte W01
	.byte N18, Bn4
	.byte W18
	.byte Gn4
	.byte W18
	.byte Dn4
	.byte W18
	.byte N40, En4
	.byte W40
	.byte W01
	.byte GOTO
	 .4byte song_unk_120_0_000
	.byte FINE
song_unk_120_1: @ 0x08349F4B
	.byte KEYSH, 0x00
song_unk_120_1_001: @ 0x08349F4D
	.byte VOICE, 0x22
	.byte VOL, 0x7F
	.byte N18, An3, v040
	.byte W18
	.byte Fn3
	.byte W18
	.byte Cn3
	.byte W18
	.byte N40, Dn3
	.byte W42
	.byte N18, Gn3
	.byte W18
	.byte Ds3
	.byte W18
	.byte As2
	.byte W18
	.byte N40, Cn3
	.byte W42
	.byte N18, An3
	.byte W18
	.byte Fn3
	.byte W18
	.byte Cn3
	.byte W18
	.byte N40, Dn3
	.byte W42
	.byte N18, Bn3
	.byte W18
	.byte Gn3
	.byte W18
	.byte Dn3
	.byte W18
	.byte N40, En3
	.byte W42
	.byte GOTO
	 .4byte song_unk_120_1_001
	.byte FINE
song_unk_120_2: @ 0x08349F80
	.byte KEYSH, 0x00
song_unk_120_2_002: @ 0x08349F82
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte N18, As1, v060
	.byte N18, Fn2
	.byte N18, Dn3
	.byte W19
	.byte As1, v052
	.byte N18, Fn2
	.byte N18, Dn3
	.byte W19
	.byte As1, v040
	.byte N18, Fn2
	.byte N18, Dn3
	.byte W20
	.byte As1, v032
	.byte N18, Fn2
	.byte N18, Dn3
	.byte W19
	.byte As1, v020
	.byte N18, Fn2
	.byte N18, Dn3
	.byte W19
	.byte Gs1, v060
	.byte N18, Ds2
	.byte N18, Cn3
	.byte W19
	.byte Gs1, v052
	.byte N18, Ds2
	.byte N18, Cn3
	.byte W19
	.byte Gs1, v040
	.byte N18, Ds2
	.byte N18, Cn3
	.byte W20
	.byte Gs1, v032
	.byte N18, Ds2
	.byte N18, Cn3
	.byte W19
	.byte Gs1, v020
	.byte N18, Ds2
	.byte N18, Cn3
	.byte W19
	.byte As1, v060
	.byte N18, Fn2
	.byte N18, Dn3
	.byte W19
	.byte As1, v052
	.byte N18, Fn2
	.byte N18, Dn3
	.byte W19
	.byte As1, v040
	.byte N18, Fn2
	.byte N18, Dn3
	.byte W20
	.byte As1, v032
	.byte N18, Fn2
	.byte N18, Dn3
	.byte W19
	.byte As1, v020
	.byte N18, Fn2
	.byte N18, Dn3
	.byte W19
	.byte Cn2, v060
	.byte N18, Gn2
	.byte N18, En3
	.byte W19
	.byte Cn2, v052
	.byte N18, Gn2
	.byte N18, En3
	.byte W19
	.byte Cn2, v040
	.byte N18, Gn2
	.byte N18, En3
	.byte W20
	.byte Cn2, v032
	.byte N18, Gn2
	.byte N18, En3
	.byte W19
	.byte Cn2, v020
	.byte N18, Gn2
	.byte N18, En3
	.byte W19
	.byte GOTO
	 .4byte song_unk_120_2_002
	.byte FINE
	.align 2, 0
	.global song_unk_120
song_unk_120: @ 0x0834A01C (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_120_0
	.4byte song_unk_120_1
	.4byte song_unk_120_2
	.size song_unk_120,.-song_unk_120
