	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_72_0: @ 0x0834862C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x61
	.byte VOL, 0x7F
	.byte N48, Dn4, v100
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_72
song_unk_72: @ 0x0834863C (song header)
	.byte 1, 0, 15, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_72_0
	.size song_unk_72,.-song_unk_72
