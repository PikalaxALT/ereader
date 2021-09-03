	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_89_0: @ 0x08349278
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x5D
	.byte VOL, 0x7F
	.byte N30, Fn2, v112
	.byte W30
	.byte FINE
	.align 2, 0
	.global song_unk_89
song_unk_89: @ 0x08349288 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_89_0
	.size song_unk_89,.-song_unk_89
