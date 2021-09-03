	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_30_0: @ 0x08347D24
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x61
	.byte VOL, 0x7F
	.byte N72, Cn3, v096
	.byte W72
	.byte FINE
	.align 2, 0
	.global song_unk_30
song_unk_30: @ 0x08347D34 (song header)
	.byte 1, 0, 15, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_30_0
	.size song_unk_30,.-song_unk_30
