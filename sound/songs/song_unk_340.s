	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_340_0: @ 0x0834F644
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x3E
	.byte VOL, 0x7F
	.byte N72, Cn3, v112
	.byte W72
	.byte FINE
	.align 2, 0
	.global song_unk_340
song_unk_340: @ 0x0834F654 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup004 @ voice group
	.4byte song_unk_340_0
	.size song_unk_340,.-song_unk_340
