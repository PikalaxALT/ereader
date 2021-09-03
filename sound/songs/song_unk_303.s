	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_303_0: @ 0x0834F2FC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x19
	.byte VOL, 0x7F
	.byte N90, Cn3, v127
	.byte W90
	.byte FINE
	.align 2, 0
	.global song_unk_303
song_unk_303: @ 0x0834F30C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup004 @ voice group
	.4byte song_unk_303_0
	.size song_unk_303,.-song_unk_303
