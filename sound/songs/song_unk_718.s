	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_718_0: @ 0x08352974
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_718_0_001: @ 0x08352978
	.byte TEMPO, 0x3A
	.byte VOICE, 0x5D
	.byte N22, Cn1, v127
	.byte W48
	.byte Dn1, v080
	.byte W48
song_unk_718_0_000: @ 0x08352983
	.byte N22, Cn1, v127
	.byte W48
	.byte Dn1, v080
	.byte W48
	.byte PEND
	.byte PATT
	 .4byte song_unk_718_0_000
	.byte PATT
	 .4byte song_unk_718_0_000
	.byte PATT
	 .4byte song_unk_718_0_000
	.byte PATT
	 .4byte song_unk_718_0_000
	.byte PATT
	 .4byte song_unk_718_0_000
	.byte PATT
	 .4byte song_unk_718_0_000
	.byte GOTO
	 .4byte song_unk_718_0_001
	.byte FINE
song_unk_718_1: @ 0x083529AF
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_718_1_003: @ 0x083529B3
	.byte VOICE, 0x65
	.byte PAN, 0x28
	.byte N00, Cn4, v048
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
	.byte N00
	.byte W16
	.byte N00
	.byte W08
song_unk_718_1_002: @ 0x083529C9
	.byte N00, Cn4, v048
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
	.byte N00
	.byte W16
	.byte N00
	.byte W08
	.byte PEND
	.byte PATT
	 .4byte song_unk_718_1_002
	.byte PATT
	 .4byte song_unk_718_1_002
	.byte PATT
	 .4byte song_unk_718_1_002
	.byte PATT
	 .4byte song_unk_718_1_002
	.byte PATT
	 .4byte song_unk_718_1_002
	.byte PATT
	 .4byte song_unk_718_1_002
	.byte GOTO
	 .4byte song_unk_718_1_003
	.byte FINE
song_unk_718_2: @ 0x08352A00
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_718_2_005: @ 0x08352A04
	.byte VOICE, 0x00
	.byte N04, En1, v127
	.byte W24
	.byte Gs1
	.byte W16
	.byte Bn1
	.byte W08
	.byte Dn2
	.byte W48
	.byte W96
song_unk_718_2_004: @ 0x08352A11
	.byte N04, En1, v127
	.byte W24
	.byte Gs1
	.byte W16
	.byte Bn1
	.byte W08
	.byte Dn2
	.byte W48
	.byte PEND
	.byte W96
	.byte PATT
	 .4byte song_unk_718_2_004
	.byte W96
	.byte PATT
	 .4byte song_unk_718_2_004
	.byte W96
	.byte GOTO
	 .4byte song_unk_718_2_005
	.byte FINE
song_unk_718_3: @ 0x08352A2F
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_718_3_006: @ 0x08352A33
	.byte VOICE, 0x21
	.byte PAN, 0x60
	.byte W16
	.byte N01, Bn4, v096
	.byte W08
	.byte Cs5
	.byte W16
	.byte En5
	.byte W08
	.byte Dn5
	.byte W24
	.byte Bn4
	.byte W16
	.byte Cs5
	.byte W08
	.byte W96
	.byte W96
	.byte W64
	.byte N01
	.byte W08
	.byte Bn4
	.byte W16
	.byte An4
	.byte W08
	.byte Gs4
	.byte W16
	.byte En4
	.byte W08
	.byte Fs4
	.byte W16
	.byte Gs4
	.byte W32
	.byte Bn3
	.byte W16
	.byte Fs4
	.byte W08
	.byte W96
	.byte W96
	.byte W96
	.byte GOTO
	 .4byte song_unk_718_3_006
	.byte FINE
song_unk_718_4: @ 0x08352A64
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_718_4_007: @ 0x08352A68
	.byte VOICE, 0x44
	.byte PAN, 0x20
	.byte W16
	.byte N01, Gs5, v088
	.byte W08
	.byte An5
	.byte W16
	.byte Cs6
	.byte W08
	.byte Bn5
	.byte W24
	.byte Gs5
	.byte W16
	.byte An5
	.byte W08
	.byte W96
	.byte W96
	.byte W64
	.byte N01
	.byte W08
	.byte Gs5
	.byte W16
	.byte Fs5
	.byte W08
	.byte En5
	.byte W16
	.byte Cs5
	.byte W08
	.byte Dn5
	.byte W16
	.byte En5
	.byte W32
	.byte Gs4
	.byte W16
	.byte Dn5
	.byte W08
	.byte W96
	.byte W96
	.byte W96
	.byte GOTO
	 .4byte song_unk_718_4_007
	.byte FINE
	.align 2, 0
	.global song_unk_718
song_unk_718: @ 0x08352A9C (song header)
	.byte 5, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_718_0
	.4byte song_unk_718_1
	.4byte song_unk_718_2
	.4byte song_unk_718_3
	.4byte song_unk_718_4

