	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_441_0: @ 0x0834FEE8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x69
	.byte VOL, 0x7F
	.byte N48, Cn3, v072
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_441
song_unk_441: @ 0x0834FEF8 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_441_0
	.size song_unk_441,.-song_unk_441
