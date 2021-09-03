	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_265_0: @ 0x0834E544
	.byte KEYSH, 0x00
	.byte TEMPO, 0x37
	.byte VOICE, 0x03
	.byte VOL, 0x7F
	.byte N16, Dn4, v052
	.byte W16
	.byte N08, Cn4
	.byte W08
	.byte N16, An3
	.byte W16
	.byte N08, Gs3
	.byte W08
	.byte N16, Gn3
	.byte W16
	.byte N08, Fn3
	.byte W08
	.byte N16, Cn3
	.byte W16
	.byte N08, Cs3
	.byte W08
	.byte N24, Dn3
	.byte W40
	.byte En4
	.byte W24
	.byte FINE
song_unk_265_1: @ 0x0834E56B
	.byte KEYSH, 0x00
	.byte VOICE, 0x4E
	.byte VOL, 0x7F
	.byte N08, Dn2, v120
	.byte W96
	.byte Dn3
	.byte W40
	.byte Dn2
	.byte W08
	.byte FINE
song_unk_265_2: @ 0x0834E57A
	.byte KEYSH, 0x00
	.byte VOICE, 0x23
	.byte VOL, 0x7F
	.byte N16, An3, v052
	.byte W16
	.byte N08, Gn3
	.byte W08
	.byte N16, En3
	.byte W16
	.byte N08, Ds3
	.byte W08
	.byte N16, Dn3
	.byte W16
	.byte N08, Cn3
	.byte W08
	.byte N16, Gn2
	.byte W16
	.byte N08, Gs2
	.byte W08
	.byte N24, An2
	.byte W40
	.byte Gs3
	.byte W24
	.byte FINE
song_unk_265_3: @ 0x0834E59F
	.byte KEYSH, 0x00
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte W96
	.byte W40
	.byte N14, Cs2, v040
	.byte W14
	.byte FINE
	.align 2, 0
	.global song_unk_265
song_unk_265: @ 0x0834E5AC (song header)
	.byte 4, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_265_0
	.4byte song_unk_265_1
	.4byte song_unk_265_2
	.4byte song_unk_265_3
	.size song_unk_265,.-song_unk_265
