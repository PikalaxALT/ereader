	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_152_0: @ 0x0834B2BC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x22
	.byte VOL, 0x7F
	.byte N36, Ds5, v060
	.byte W36
	.byte FINE
song_unk_152_1: @ 0x0834B2C9
	.byte KEYSH, 0x00
	.byte VOICE, 0x04
	.byte VOL, 0x7F
	.byte W04
	.byte N04, As4, v052
	.byte W05
	.byte Gs4, v048
	.byte W04
	.byte N36, Gn4, v040
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_152
song_unk_152: @ 0x0834B2DC (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_152_0
	.4byte song_unk_152_1
	.size song_unk_152,.-song_unk_152
