	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_302_0: @ 0x0834F2E0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x18
	.byte VOL, 0x7F
	.byte N84, Cn3, v127
	.byte W84
	.byte FINE
	.align 2, 0
	.global song_unk_302
song_unk_302: @ 0x0834F2F0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup004 @ voice group
	.4byte song_unk_302_0
	.size song_unk_302,.-song_unk_302
