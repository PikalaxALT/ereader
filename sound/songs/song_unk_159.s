	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_159_0: @ 0x0834B514
	.byte KEYSH, 0x00
song_unk_159_0_001: @ 0x0834B516
	.byte TEMPO, 0x3C
	.byte VOICE, 0x00
	.byte VOL, 0x7F
	.byte N06, Fn3, v060
	.byte W16
	.byte Fs3
	.byte W08
	.byte Gn3
	.byte W16
	.byte Gs3
	.byte W24
	.byte Cs4
	.byte W24
	.byte Fn3
	.byte W08
song_unk_159_0_000: @ 0x0834B52A
	.byte N06, Gs3, v060
	.byte W16
	.byte Gn3
	.byte W08
	.byte Fs3
	.byte W16
	.byte Gn3
	.byte W24
	.byte Ds4
	.byte W08
	.byte Dn4
	.byte W16
	.byte Cs4
	.byte W08
	.byte PEND
	.byte Cn4
	.byte W16
	.byte Cs4
	.byte W08
	.byte Dn4
	.byte W16
	.byte Ds4
	.byte W24
	.byte Fs4
	.byte W24
	.byte En4
	.byte W08
	.byte Fn4
	.byte W16
	.byte En4
	.byte W08
	.byte Fn4
	.byte W16
	.byte Cs4
	.byte W24
	.byte Gs3
	.byte W08
	.byte Gn3
	.byte W16
	.byte Fs3
	.byte W08
	.byte Fn3
	.byte W16
	.byte Fs3
	.byte W08
	.byte Gn3
	.byte W16
	.byte Gs3
	.byte W24
	.byte Cs4
	.byte W24
	.byte Fn3
	.byte W08
	.byte PATT
	 .4byte song_unk_159_0_000
	.byte N06, Cn4, v060
	.byte W16
	.byte N30, Gs3
	.byte W08
	.byte MOD, 0x07
	.byte W24
	.byte 0x00
	.byte N06, As3
	.byte W24
	.byte Cn4
	.byte W24
	.byte Cs4
	.byte W24
	.byte Fn4
	.byte W08
	.byte En4
	.byte W08
	.byte Fn4
	.byte W08
	.byte Cs4
	.byte W48
	.byte GOTO
	 .4byte song_unk_159_0_001
	.byte FINE
song_unk_159_1: @ 0x0834B586
	.byte KEYSH, 0x00
song_unk_159_1_003: @ 0x0834B588
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N06, Cs2, v088
	.byte W24
	.byte Gs2
	.byte W24
	.byte Fn2
	.byte W24
	.byte Gs2
	.byte W24
song_unk_159_1_002: @ 0x0834B596
	.byte N06, Ds2, v088
	.byte W24
	.byte As2
	.byte W24
	.byte Gn2
	.byte W24
	.byte As2
	.byte W24
	.byte PEND
	.byte Gs2
	.byte W24
	.byte Fs2
	.byte W24
	.byte Fn2
	.byte W24
	.byte Ds2
	.byte W24
	.byte Cs2
	.byte W24
	.byte Gs2
	.byte W24
	.byte Gn2
	.byte W24
	.byte Gs2
	.byte W24
	.byte Cs2
	.byte W24
	.byte Gs2
	.byte W24
	.byte Fn2
	.byte W24
	.byte Gs2
	.byte W24
	.byte PATT
	 .4byte song_unk_159_1_002
	.byte N06, Gs2, v088
	.byte W48
	.byte Gs1
	.byte W48
	.byte Cs2
	.byte W24
	.byte Gs2
	.byte W24
	.byte Cs3
	.byte W48
	.byte GOTO
	 .4byte song_unk_159_1_003
	.byte FINE
song_unk_159_2: @ 0x0834B5D0
	.byte KEYSH, 0x00
song_unk_159_2_005: @ 0x0834B5D2
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte N24, Fs1, v016
	.byte W24
	.byte N01
	.byte W16
	.byte N08
	.byte W08
	.byte N24
	.byte W24
	.byte N01
	.byte W16
	.byte N08
	.byte W08
	.byte PEND
song_unk_159_2_004: @ 0x0834B5E5
	.byte N24, Fs1, v016
	.byte W24
	.byte N01
	.byte W16
	.byte N08
	.byte W08
	.byte N24
	.byte W24
	.byte N01
	.byte W16
	.byte N08
	.byte W08
	.byte PEND
	.byte PATT
	 .4byte song_unk_159_2_004
	.byte PATT
	 .4byte song_unk_159_2_004
	.byte PATT
	 .4byte song_unk_159_2_005
	.byte PATT
	 .4byte song_unk_159_2_004
	.byte PATT
	 .4byte song_unk_159_2_004
	.byte N24, Fs1, v016
	.byte W24
	.byte N01
	.byte W08
	.byte N01
	.byte W08
	.byte N01
	.byte W08
	.byte N16
	.byte W16
	.byte N01
	.byte W08
	.byte N01
	.byte W16
	.byte N01
	.byte W08
	.byte GOTO
	 .4byte song_unk_159_2_005
	.byte FINE
	.align 2, 0
	.global song_unk_159
song_unk_159: @ 0x0834B628 (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_159_0
	.4byte song_unk_159_1
	.4byte song_unk_159_2
	.size song_unk_159,.-song_unk_159
