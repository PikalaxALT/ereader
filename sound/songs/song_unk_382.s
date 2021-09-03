	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_382_0: @ 0x0834FBA4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x69
	.byte VOL, 0x7F
	.byte N72, Cn3, v127
	.byte W72
	.byte FINE
	.align 2, 0
	.global song_unk_382
song_unk_382: @ 0x0834FBB4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_382_0
	.size song_unk_382,.-song_unk_382
