	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_281_0: @ 0x0834F13C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x03
	.byte VOL, 0x7F
	.byte N18, Cn3, v112
	.byte W18
	.byte FINE
	.align 2, 0
	.global song_unk_281
song_unk_281: @ 0x0834F14C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup004 @ voice group
	.4byte song_unk_281_0
	.size song_unk_281,.-song_unk_281
