	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_22_0: @ 0x083477E0
	.byte KEYSH, 0x00
song_unk_22_0_001: @ 0x083477E2
	.byte TEMPO, 0x5F
	.byte VOICE, 0x21
	.byte VOL, 0x7F
	.byte N06, Cs4, v064
	.byte W16
	.byte En3
	.byte W08
	.byte Cn4
	.byte W16
	.byte Cs4
	.byte W08
	.byte En3
	.byte W16
	.byte Cn4
	.byte W08
	.byte Cs4
	.byte W24
song_unk_22_0_000: @ 0x083477F8
	.byte N06, Dn4, v064
	.byte W16
	.byte Fs3
	.byte W08
	.byte Cs4
	.byte W16
	.byte Dn4
	.byte W08
	.byte Fs3
	.byte W16
	.byte Cs4
	.byte W08
	.byte Dn4
	.byte W24
	.byte PEND
	.byte En4
	.byte W16
	.byte Gs4
	.byte W08
	.byte As3
	.byte W16
	.byte An3
	.byte W08
	.byte Gs3
	.byte W16
	.byte Fs4
	.byte W08
	.byte Dn4
	.byte W16
	.byte Ds4
	.byte W08
	.byte En4
	.byte W24
	.byte En3
	.byte W16
	.byte Fs3
	.byte W24
	.byte En3
	.byte W08
	.byte Cs3
	.byte W24
	.byte Cs4
	.byte W16
	.byte En3
	.byte W08
	.byte Cn4
	.byte W16
	.byte Cs4
	.byte W08
	.byte En3
	.byte W16
	.byte Cn4
	.byte W08
	.byte Cs4
	.byte W24
	.byte PATT
	 .4byte song_unk_22_0_000
	.byte N06, En4, v064
	.byte W16
	.byte Ds4
	.byte W08
	.byte En4
	.byte W16
	.byte Fs4
	.byte W08
	.byte Gs4
	.byte W24
	.byte En4
	.byte W24
	.byte An4
	.byte W48
	.byte An3
	.byte W48
	.byte GOTO
	 .4byte song_unk_22_0_001
	.byte FINE
song_unk_22_1: @ 0x0834784E
	.byte KEYSH, 0x00
song_unk_22_1_003: @ 0x08347850
	.byte VOICE, 0x42
	.byte VOL, 0x7F
	.byte N06, An1, v112
	.byte W24
	.byte En2
	.byte W24
	.byte Cs2
	.byte W24
	.byte En2
	.byte W24
song_unk_22_1_002: @ 0x0834785E
	.byte N06, Dn2, v112
	.byte W24
	.byte An2
	.byte W24
	.byte Fs2
	.byte W24
	.byte An2
	.byte W24
	.byte PEND
	.byte En2
	.byte W24
	.byte Bn2
	.byte W24
	.byte Gs2
	.byte W24
	.byte Bn2
	.byte W24
	.byte An2
	.byte W24
	.byte En1
	.byte W24
	.byte Fs1
	.byte W24
	.byte Gs1
	.byte W24
	.byte An1
	.byte W24
	.byte En2
	.byte W24
	.byte Cs2
	.byte W24
	.byte En2
	.byte W24
	.byte PATT
	 .4byte song_unk_22_1_002
	.byte N06, En2, v112
	.byte W48
	.byte En1
	.byte W48
	.byte An1
	.byte W24
	.byte En2
	.byte W24
	.byte An2
	.byte W48
	.byte GOTO
	 .4byte song_unk_22_1_003
	.byte FINE
song_unk_22_2: @ 0x08347898
	.byte KEYSH, 0x00
song_unk_22_2_005: @ 0x0834789A
	.byte VOICE, 0x64
	.byte VOL, 0x7F
	.byte N04, Fn3, v076
	.byte W16
	.byte N04
	.byte W08
	.byte N05, Cn4, v080
	.byte W16
	.byte N04, Fn3, v076
	.byte W08
	.byte N04
	.byte W16
	.byte N04
	.byte W08
	.byte N05, Cn4, v080
	.byte W16
	.byte N04, Fn3, v076
	.byte W08
song_unk_22_2_004: @ 0x083478B8
	.byte N04, Fn3, v076
	.byte W16
	.byte N04
	.byte W08
	.byte N05, Cn4, v080
	.byte W16
	.byte N04, Fn3, v076
	.byte W08
	.byte N04
	.byte W16
	.byte N04
	.byte W08
	.byte N05, Cn4, v080
	.byte W16
	.byte N04, Fn3, v076
	.byte W08
	.byte PEND
	.byte PATT
	 .4byte song_unk_22_2_004
	.byte N04, Fn3, v076
	.byte W16
	.byte N04
	.byte W08
	.byte N05, Cn4, v080
	.byte W16
	.byte N04, Fn3, v076
	.byte W08
	.byte N04
	.byte W16
	.byte N04
	.byte N05, Cn4, v080
	.byte W08
	.byte N04, Fn3, v076
	.byte W08
	.byte N04
	.byte W08
	.byte N05, Cn4, v080
	.byte W08
	.byte PATT
	 .4byte song_unk_22_2_004
	.byte PATT
	 .4byte song_unk_22_2_004
	.byte PATT
	 .4byte song_unk_22_2_004
	.byte N05, Cn4, v080
	.byte W16
	.byte N04, Fn3, v076
	.byte W08
	.byte N04
	.byte W08
	.byte N04
	.byte W08
	.byte N05, Cn4, v080
	.byte W08
	.byte N04, Fn3, v076
	.byte W16
	.byte N04
	.byte W08
	.byte N05, Cn4, v080
	.byte W16
	.byte N04, Fn3, v076
	.byte W08
	.byte GOTO
	 .4byte song_unk_22_2_005
	.byte FINE
	.align 2, 0
	.global song_unk_22
song_unk_22: @ 0x0834792C (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_22_0
	.4byte song_unk_22_1
	.4byte song_unk_22_2
	.size song_unk_22,.-song_unk_22
