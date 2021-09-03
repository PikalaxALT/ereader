	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_823_0: @ 0x08355228
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x2B
	.byte VOL, 0x7F
	.byte N42, Cn4, v127
	.byte W42
	.byte FINE
	.align 2, 0
	.global song_unk_823
song_unk_823: @ 0x08355238 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_823_0
	.size song_unk_823,.-song_unk_823
