	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_180_0: @ 0x0834C3EC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x35
	.byte VOL, 0x7F
	.byte N36, Bn2, v127
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_180
song_unk_180: @ 0x0834C3FC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_180_0
	.size song_unk_180,.-song_unk_180
