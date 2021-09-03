	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_19_0: @ 0x08347708
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x60
	.byte VOL, 0x7F
	.byte N12, Cn3, v127
	.byte W12
	.byte FINE
	.align 2, 0
	.global song_unk_19
song_unk_19: @ 0x08347718 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_19_0
	.size song_unk_19,.-song_unk_19
