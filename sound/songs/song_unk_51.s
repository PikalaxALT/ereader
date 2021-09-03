	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_51_0: @ 0x083480A4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x67
	.byte VOL, 0x7F
	.byte N05, An3, v048
	.byte W05
	.byte FINE
	.align 2, 0
	.global song_unk_51
song_unk_51: @ 0x083480B4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_51_0
	.size song_unk_51,.-song_unk_51
