	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_192_0: @ 0x0834C6F4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x00
	.byte VOL, 0x7F
	.byte N06, Cs4, v060
	.byte W16
	.byte N06
	.byte W08
	.byte Bn3
	.byte W16
	.byte N06
	.byte W08
	.byte As3
	.byte W16
	.byte N06
	.byte W08
	.byte An3
	.byte W16
	.byte N06
	.byte W08
	.byte Gs3
	.byte W16
	.byte N30, En4
	.byte W08
	.byte MOD, 0x07
	.byte W24
	.byte 0x00
	.byte N06, Cs4
	.byte W06
	.byte FINE
song_unk_192_1: @ 0x0834C71B
	.byte KEYSH, 0x00
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N06, Cs2, v088
	.byte W16
	.byte N06
	.byte W08
	.byte Fn2
	.byte W16
	.byte N06
	.byte W08
	.byte Fs2
	.byte W16
	.byte N06
	.byte W08
	.byte Gn2
	.byte W16
	.byte N06
	.byte W08
	.byte Gs2
	.byte W48
	.byte Cs2
	.byte W06
	.byte FINE
song_unk_192_2: @ 0x0834C738
	.byte KEYSH, 0x00
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
	.byte N02, Fs1, v020
	.byte W48
	.byte N10, Cs2, v052
	.byte W10
	.byte FINE
	.align 2, 0
	.global song_unk_192
song_unk_192: @ 0x0834C758 (song header)
	.byte 3, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_192_0
	.4byte song_unk_192_1
	.4byte song_unk_192_2
	.size song_unk_192,.-song_unk_192
