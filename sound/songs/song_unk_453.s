	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_453_0: @ 0x0835010C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x70
	.byte VOL, 0x7F
	.byte N60, An2, v060
	.byte W60
	.byte FINE
	.align 2, 0
	.global song_unk_453
song_unk_453: @ 0x0835011C (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_453_0
	.size song_unk_453,.-song_unk_453
