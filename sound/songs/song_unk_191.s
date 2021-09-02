	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_191_0: @ 0x0834C668
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x02
	.byte VOL, 0x7F
	.byte W16
	.byte N03, Dn3, v056
	.byte W08
	.byte En3
	.byte W16
	.byte Fs3
	.byte W08
	.byte Gn3
	.byte W16
	.byte An3
	.byte W08
	.byte Bn3
	.byte W16
	.byte Cs4
	.byte W08
	.byte Dn4, v072
	.byte W24
	.byte Fn3, v068
	.byte W16
	.byte N30, En3, v056
	.byte W32
	.byte FINE
song_unk_191_1: @ 0x0834C68C
	.byte KEYSH, 0x00
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte N03, Dn2, v080
	.byte W24
	.byte Fs2
	.byte W24
	.byte Gn2
	.byte W24
	.byte Gs2
	.byte W24
	.byte An2
	.byte W24
	.byte An1
	.byte W16
	.byte N30, Dn2
	.byte W32
	.byte FINE
song_unk_191_2: @ 0x0834C6A4
	.byte KEYSH, 0x00
	.byte VOICE, 0x3E
	.byte VOL, 0x7F
	.byte N03, Fs4, v052
	.byte W24
	.byte An4
	.byte W24
	.byte Bn4
	.byte W24
	.byte Dn5
	.byte W24
	.byte Gn4
	.byte W24
	.byte An4
	.byte W16
	.byte N30, Gs4
	.byte W32
	.byte FINE
song_unk_191_3: @ 0x0834C6BC
	.byte KEYSH, 0x00
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte N23, Fs1, v016
	.byte W24
	.byte N01
	.byte W16
	.byte N01
	.byte W08
	.byte N23
	.byte W24
	.byte N01
	.byte W16
	.byte N01
	.byte W08
	.byte N23
	.byte W24
	.byte N01
	.byte W16
	.byte N30, Cs2, v040
	.byte W32
	.byte FINE
	.align 2, 0
	.global song_unk_191
song_unk_191: @ 0x0834C6DC (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_191_0
	.4byte song_unk_191_1
	.4byte song_unk_191_2
	.4byte song_unk_191_3

