	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_121_0: @ 0x0834A030
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x20
	.byte VOL, 0x7F
	.byte N12, Bn2, v080
	.byte W12
	.byte FINE
	.align 2, 0
	.global song_unk_121
song_unk_121: @ 0x0834A040 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_121_0
	.size song_unk_121,.-song_unk_121
