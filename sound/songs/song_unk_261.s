	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_261_0: @ 0x0834E484
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x56
	.byte VOL, 0x7F
	.byte N72, As2, v127
	.byte W72
	.byte FINE
	.align 2, 0
	.global song_unk_261
song_unk_261: @ 0x0834E494 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_261_0
	.size song_unk_261,.-song_unk_261
