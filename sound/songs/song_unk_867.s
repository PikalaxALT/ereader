	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_867_0: @ 0x083556F8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x57
	.byte VOL, 0x7F
	.byte N36, Cn4, v127
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_867
song_unk_867: @ 0x08355708 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_867_0
	.size song_unk_867,.-song_unk_867
