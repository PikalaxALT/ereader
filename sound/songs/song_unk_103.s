	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_103_0: @ 0x08349B38
	.byte KEYSH, 0x00
	.byte TEMPO, 0x32
	.byte VOICE, 0x03
	.byte VOL, 0x7F
	.byte N05, Cn5, v052
	.byte W04
	.byte Gs4
	.byte W04
	.byte En4
	.byte W04
	.byte N24, Bn3
	.byte W24
	.byte FINE
song_unk_103_1: @ 0x08349B4C
	.byte KEYSH, 0x00
	.byte VOICE, 0x21
	.byte VOL, 0x7F
	.byte N05, En3, v052
	.byte W04
	.byte Gs3
	.byte W04
	.byte Cn4
	.byte W04
	.byte N24, En4
	.byte W24
	.byte FINE
song_unk_103_2: @ 0x08349B5E
	.byte KEYSH, 0x00
	.byte VOICE, 0x78
	.byte VOL, 0x7F
	.byte N30, Cn2, v048
	.byte N30, Gs2
	.byte N30, En3
	.byte W30
	.byte FINE
	.align 2, 0
	.global song_unk_103
song_unk_103: @ 0x08349B70 (song header)
	.byte 3, 0, 20, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_103_0
	.4byte song_unk_103_1
	.4byte song_unk_103_2
	.size song_unk_103,.-song_unk_103
