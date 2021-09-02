	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_763_0: @ 0x08354C1C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x00
	.byte VOL, 0x50
	.byte N80, Cn4, v127
	.byte W84
	.byte FINE
song_unk_763_1: @ 0x08354C29
	.byte KEYSH, 0x00
	.byte VOICE, 0x00
	.byte VOL, 0x50
	.byte N80, Cn4, v127
	.byte W84
	.byte FINE
	.align 2, 0
	.global song_unk_763
song_unk_763: @ 0x08354C34 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_763_0
	.4byte song_unk_763_1

