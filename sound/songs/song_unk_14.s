	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_14_0: @ 0x08347540
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x7D
	.byte VOL, 0x7F
	.byte N18, Cs4, v060
	.byte W18
	.byte FINE
	.align 2, 0
	.global song_unk_14
song_unk_14: @ 0x08347550 (song header)
	.byte 1, 0, 15, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_14_0
	.size song_unk_14,.-song_unk_14
