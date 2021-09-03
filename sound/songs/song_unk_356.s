	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_356_0: @ 0x0834F794
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x4E
	.byte VOL, 0x7F
	.byte N60, Cn3, v100
	.byte W60
	.byte FINE
	.align 2, 0
	.global song_unk_356
song_unk_356: @ 0x0834F7A4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup004 @ voice group
	.4byte song_unk_356_0
	.size song_unk_356,.-song_unk_356
