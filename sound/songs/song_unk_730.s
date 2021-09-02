	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_730_0: @ 0x08353B6C
	.byte KEYSH, 0x00
song_unk_730_0_000: @ 0x08353B6E
	.byte TEMPO, 0x2F
	.byte VOICE, 0x06
	.byte MOD, 0x08
	.byte VOL, 0x37
	.byte PAN, 0x00
	.byte W72
	.byte W72
	.byte N66, Fn4, v024
	.byte W72
	.byte N22, An4
	.byte W24
	.byte N42, Cn5
	.byte W48
	.byte GOTO
	 .4byte song_unk_730_0_000
	.byte FINE
song_unk_730_1: @ 0x08353B8A
	.byte KEYSH, 0x00
song_unk_730_1_001: @ 0x08353B8C
	.byte VOICE, 0x24
	.byte VOL, 0x37
	.byte PAN, 0x7F
	.byte TUNE, 0x44
	.byte W72
	.byte W72
	.byte N66, Fn4, v024
	.byte W72
	.byte N22, An4
	.byte W24
	.byte N42, Cn5
	.byte W48
	.byte GOTO
	 .4byte song_unk_730_1_001
	.byte FINE
song_unk_730_2: @ 0x08353BA6
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_730_2_002: @ 0x08353BAA
	.byte VOICE, 0x7C
	.byte PAN, 0x50
	.byte W16
	.byte N03, Cn4, v127
	.byte W08
	.byte Fn3
	.byte W16
	.byte Dn4
	.byte W08
	.byte Ds4
	.byte W24
	.byte W72
	.byte W72
	.byte W72
	.byte GOTO
	 .4byte song_unk_730_2_002
	.byte FINE
song_unk_730_3: @ 0x08353BC2
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_730_3_003: @ 0x08353BC6
	.byte VOICE, 0x7C
	.byte PAN, 0x30
	.byte W16
	.byte N03, Ds3, v127
	.byte W08
	.byte An2
	.byte W16
	.byte Fn3
	.byte W08
	.byte Gn3
	.byte W24
	.byte W72
	.byte W72
	.byte W72
	.byte GOTO
	 .4byte song_unk_730_3_003
	.byte FINE
song_unk_730_4: @ 0x08353BDE
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_730_4_005: @ 0x08353BE2
	.byte VOICE, 0x5D
	.byte PAN, 0x40
	.byte N06, Cn1, v127
	.byte W16
	.byte N01, Cn2, v048
	.byte W08
	.byte N01
	.byte W16
	.byte Gn1
	.byte W08
	.byte N01
	.byte W24
song_unk_730_4_004: @ 0x08353BF4
	.byte W32
	.byte N01, Gn1, v048
	.byte W08
	.byte N01
	.byte W08
	.byte N01
	.byte W08
	.byte Cn2
	.byte W08
	.byte N01
	.byte W08
	.byte PEND
	.byte N06, Cn1, v127
	.byte W16
	.byte N01, Cn2, v048
	.byte W08
	.byte N01
	.byte W16
	.byte Gn1
	.byte W08
	.byte N01
	.byte W24
	.byte PATT
	 .4byte song_unk_730_4_004
	.byte GOTO
	 .4byte song_unk_730_4_005
	.byte FINE
song_unk_730_5: @ 0x08353C1B
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_730_5_007: @ 0x08353C1F
	.byte VOICE, 0x64
	.byte PAN, 0x00
	.byte N00, Cn4, v096
	.byte W16
	.byte N00
	.byte W08
	.byte N00
	.byte W16
	.byte N00
	.byte W08
	.byte N14, Cn4, v064
	.byte W16
	.byte N00, Cn4, v096
	.byte W08
song_unk_730_5_006: @ 0x08353C35
	.byte N00, Cn4, v096
	.byte W16
	.byte N00
	.byte W08
	.byte N00
	.byte W16
	.byte N00
	.byte W08
	.byte N00
	.byte W16
	.byte N00
	.byte W08
	.byte PEND
	.byte N00
	.byte W16
	.byte N00
	.byte W08
	.byte N00
	.byte W16
	.byte N00
	.byte W08
	.byte N14, Cn4, v064
	.byte W16
	.byte N00, Cn4, v096
	.byte W08
	.byte PATT
	 .4byte song_unk_730_5_006
	.byte GOTO
	 .4byte song_unk_730_5_007
	.byte FINE
	.align 2, 0
	.global song_unk_730
song_unk_730: @ 0x08353C60 (song header)
	.byte 6, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_730_0
	.4byte song_unk_730_1
	.4byte song_unk_730_2
	.4byte song_unk_730_3
	.4byte song_unk_730_4
	.4byte song_unk_730_5

