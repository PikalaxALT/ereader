	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_554_0: @ 0x08350C98
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x04
	.byte VOL, 0x7F
	.byte N06, Cn4, v052
	.byte W06
	.byte N36, Ds4
	.byte W36
	.byte FINE
song_unk_554_1: @ 0x08350CA8
	.byte KEYSH, 0x00
	.byte VOICE, 0x22
	.byte VOL, 0x7F
	.byte W03
	.byte N06, Gn4, v052
	.byte W06
	.byte N36, Dn5
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_554
song_unk_554: @ 0x08350CB8 (song header)
	.byte 2, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_554_0
	.4byte song_unk_554_1
	.size song_unk_554,.-song_unk_554
