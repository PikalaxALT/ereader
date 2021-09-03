	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_63_0: @ 0x083484E4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x21
	.byte VOL, 0x7F
	.byte N02, Gn6, v064
	.byte W02
	.byte N36, Cn7
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_63
song_unk_63: @ 0x083484F4 (song header)
	.byte 1, 0, 15, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_63_0
	.size song_unk_63,.-song_unk_63
