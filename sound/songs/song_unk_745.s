	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_745_0: @ 0x083AA424
	.byte VOL, 0x78
	.byte KEYSH, 0x00
song_unk_745_0_000: @ 0x083AA428
	.byte TEMPO, 0x27
	.byte VOICE, 0x5D
	.byte N03, Cn1, v127
	.byte W84
	.byte N03
	.byte W12
	.byte N03
	.byte W44
	.byte N03
	.byte W04
	.byte N03
	.byte W48
	.byte W96
	.byte W48
	.byte GOTO
	 .4byte song_unk_745_0_000
	.byte FINE
song_unk_745_1: @ 0x083AA440
	.byte VOL, 0x78
	.byte KEYSH, 0x00
song_unk_745_1_001: @ 0x083AA444
	.byte VOICE, 0x64
	.byte PAN, 0x00
	.byte W96
	.byte W96
	.byte W12
	.byte N00, Cn4, v096
	.byte W08
	.byte N00
	.byte W04
	.byte N00
	.byte W20
	.byte N00
	.byte W04
	.byte N00
	.byte W08
	.byte N00
	.byte W04
	.byte N00
	.byte W12
	.byte N00
	.byte W24
	.byte W48
	.byte GOTO
	 .4byte song_unk_745_1_001
	.byte FINE
song_unk_745_2: @ 0x083AA464
	.byte VOL, 0x78
	.byte KEYSH, 0x00
song_unk_745_2_002: @ 0x083AA468
	.byte VOICE, 0x44
	.byte PAN, 0x30
	.byte W96
	.byte N03, Gs1, v127
	.byte W08
	.byte Fs1
	.byte W04
	.byte Gs1
	.byte W32
	.byte Fs1
	.byte W04
	.byte Gs1
	.byte W08
	.byte Gn1
	.byte W04
	.byte Fs1
	.byte W36
	.byte W96
	.byte W48
	.byte GOTO
	 .4byte song_unk_745_2_002
	.byte FINE
song_unk_745_3: @ 0x083AA485
	.byte VOL, 0x78
	.byte KEYSH, 0x00
song_unk_745_3_003: @ 0x083AA489
	.byte VOICE, 0x7B
	.byte PAN, 0x48
	.byte N03, Cn2, v096
	.byte W12
	.byte N03
	.byte W12
	.byte As1
	.byte W12
	.byte N03
	.byte W12
	.byte N19, Gs1
	.byte W12
	.byte BEND, 0x30
	.byte W08
	.byte 0x40
	.byte N03, Fs1
	.byte W28
	.byte W96
	.byte W96
	.byte W48
	.byte GOTO
	 .4byte song_unk_745_3_003
	.byte FINE
song_unk_745_4: @ 0x083AA4AA
	.byte VOL, 0x78
	.byte KEYSH, 0x00
song_unk_745_4_004: @ 0x083AA4AE
	.byte VOICE, 0x7B
	.byte PAN, 0x38
	.byte N03, Gs1, v096
	.byte W12
	.byte N03
	.byte W12
	.byte Fs1
	.byte W12
	.byte N03
	.byte W12
	.byte N19, Fn1
	.byte W12
	.byte BEND, 0x30
	.byte W08
	.byte 0x40
	.byte N03, Ds1
	.byte W28
	.byte W96
	.byte W96
	.byte W48
	.byte GOTO
	 .4byte song_unk_745_4_004
	.byte FINE
	.align 2, 0
	.global song_unk_745
song_unk_745: @ 0x083AA4D0 (song header)
	.byte 5, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_745_0
	.4byte song_unk_745_1
	.4byte song_unk_745_2
	.4byte song_unk_745_3
	.4byte song_unk_745_4

