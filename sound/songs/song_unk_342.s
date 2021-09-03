	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_342_0: @ 0x0834F660
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x40
	.byte VOL, 0x7F
	.byte N36, Cn3, v100
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_342
song_unk_342: @ 0x0834F670 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup004 @ voice group
	.4byte song_unk_342_0
	.size song_unk_342,.-song_unk_342
