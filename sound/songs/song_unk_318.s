	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_318_0: @ 0x0834F430
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x28
	.byte VOL, 0x7F
	.byte N36, Cn3, v080
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_318
song_unk_318: @ 0x0834F440 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup004 @ voice group
	.4byte song_unk_318_0
	.size song_unk_318,.-song_unk_318
