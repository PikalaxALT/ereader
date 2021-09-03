	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_868_0: @ 0x08355714
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x58
	.byte VOL, 0x7F
	.byte N48, Cn4, v127
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_868
song_unk_868: @ 0x08355724 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_868_0
	.size song_unk_868,.-song_unk_868
