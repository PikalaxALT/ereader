	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_759_0: @ 0x083AB394
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_759_0_000: @ 0x083AB398
	.byte TEMPO, 0x5A
	.byte VOICE, 0x03
	.byte N06, Gn4, v096
	.byte W12
	.byte En4
	.byte W06
	.byte Cn4
	.byte W06
	.byte N48, Gn3
	.byte W48
	.byte N06
	.byte W12
	.byte An3
	.byte W12
	.byte As3
	.byte W12
	.byte An3
	.byte W06
	.byte Gn3
	.byte W06
	.byte Fn3
	.byte W12
	.byte Gn3
	.byte W12
	.byte An3
	.byte W12
	.byte Gn3
	.byte W06
	.byte Fn3
	.byte W06
	.byte En3
	.byte W12
	.byte Gn3
	.byte W12
	.byte Fs3
	.byte W12
	.byte En3
	.byte W12
	.byte Dn3
	.byte W12
	.byte En3
	.byte W12
	.byte Gn3
	.byte W12
	.byte Fs3
	.byte W12
	.byte Gn3
	.byte W12
	.byte An3
	.byte W12
	.byte Gn4
	.byte W18
	.byte Fs4
	.byte W06
	.byte Gn4
	.byte W18
	.byte Fs4
	.byte W06
	.byte Gn4
	.byte W12
	.byte As4
	.byte W12
	.byte Gn4
	.byte W24
	.byte GOTO
	 .4byte song_unk_759_0_000
	.byte FINE
song_unk_759_1: @ 0x083AB3E3
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_759_1_001: @ 0x083AB3E7
	.byte VOICE, 0x5D
	.byte N24, Cn1, v127
	.byte W24
	.byte N24
	.byte W24
	.byte N24
	.byte W24
	.byte N24
	.byte W24
	.byte PEND
	.byte PATT
	 .4byte song_unk_759_1_001
	.byte PATT
	 .4byte song_unk_759_1_001
	.byte PATT
	 .4byte song_unk_759_1_001
	.byte GOTO
	 .4byte song_unk_759_1_001
	.byte FINE
song_unk_759_2: @ 0x083AB409
	.byte VOL, 0x6E
	.byte KEYSH, 0x00
song_unk_759_2_002: @ 0x083AB40D
	.byte VOICE, 0x44
	.byte MOD, 0x0A
	.byte PAN, 0x60
	.byte W12
	.byte N12, Gn3, v127
	.byte W24
	.byte N12
	.byte W24
	.byte N12
	.byte W24
	.byte N12
	.byte W12
	.byte PEND
	.byte PATT
	 .4byte song_unk_759_2_002
	.byte PATT
	 .4byte song_unk_759_2_002
	.byte N06, Fs5, v127
	.byte W12
	.byte N12, Gn3
	.byte W12
	.byte N06, Fs5
	.byte W12
	.byte N12, Gn3
	.byte W12
	.byte N06, Fs5
	.byte W12
	.byte N12, Gn3
	.byte W12
	.byte N06, Fs5
	.byte W12
	.byte N12, Gn3
	.byte W12
	.byte GOTO
	 .4byte song_unk_759_2_002
	.byte FINE
	.align 2, 0
	.global song_unk_759
song_unk_759: @ 0x083AB448 (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_759_0
	.4byte song_unk_759_1
	.4byte song_unk_759_2
	.size song_unk_759,.-song_unk_759
