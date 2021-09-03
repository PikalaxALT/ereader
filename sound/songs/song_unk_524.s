	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_524_0: @ 0x08350980
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x22
	.byte VOL, 0x7F
	.byte N42, Dn3, v068
	.byte W42
	.byte FINE
	.align 2, 0
	.global song_unk_524
song_unk_524: @ 0x08350990 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_524_0
	.size song_unk_524,.-song_unk_524
