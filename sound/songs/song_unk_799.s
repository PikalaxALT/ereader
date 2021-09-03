	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_799_0: @ 0x083AAEB8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x70
	.byte VOL, 0x50
	.byte N96, Cn4, v127
	.byte W96
	.byte FINE
song_unk_799_1: @ 0x083AAEC5
	.byte KEYSH, 0x00
	.byte VOICE, 0x70
	.byte VOL, 0x50
	.byte N96, Cn4, v127
	.byte W96
	.byte FINE
	.align 2, 0
	.global song_unk_799
song_unk_799: @ 0x083AAED0 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_799_0
	.4byte song_unk_799_1
	.size song_unk_799,.-song_unk_799
