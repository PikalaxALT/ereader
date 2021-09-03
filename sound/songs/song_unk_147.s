	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_147_0: @ 0x0834B11C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x41
	.byte VOICE, 0x39
	.byte VOL, 0x7F
	.byte N06, Cs3, v032
	.byte N06, Fs3
	.byte W06
	.byte Cs3
	.byte N06, Fs3
	.byte W12
	.byte N30, Cs3
	.byte N30, Fs3
	.byte W30
	.byte FINE
song_unk_147_1: @ 0x0834B134
	.byte KEYSH, 0x00
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N06, Ds2, v080
	.byte W06
	.byte N06
	.byte W12
	.byte N30
	.byte W30
	.byte FINE
song_unk_147_2: @ 0x0834B143
	.byte KEYSH, 0x00
	.byte VOICE, 0x05
	.byte VOL, 0x7F
	.byte N06, Gn2, v052
	.byte W06
	.byte N06
	.byte W12
	.byte N30
	.byte W30
	.byte FINE
song_unk_147_3: @ 0x0834B152
	.byte KEYSH, 0x00
	.byte VOICE, 0x23
	.byte VOL, 0x7F
	.byte N06, Ds4, v060
	.byte W06
	.byte N06
	.byte W12
	.byte N30
	.byte W30
	.byte FINE
song_unk_147_4: @ 0x0834B161
	.byte KEYSH, 0x00
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte N06, Dn1, v052
	.byte W06
	.byte N06
	.byte W12
	.byte N30, Cn1, v072
	.byte N36, Cs2, v032
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_147
song_unk_147: @ 0x0834B178 (song header)
	.byte 5, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_147_0
	.4byte song_unk_147_1
	.4byte song_unk_147_2
	.4byte song_unk_147_3
	.4byte song_unk_147_4
	.size song_unk_147,.-song_unk_147
