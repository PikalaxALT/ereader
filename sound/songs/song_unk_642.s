	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_642_0: @ 0x08350FE8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x4D
	.byte VOL, 0x7F
	.byte N24, As3, v092
	.byte W24
	.byte FINE
	.align 2, 0
	.global song_unk_642
song_unk_642: @ 0x08350FF8 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_642_0
	.size song_unk_642,.-song_unk_642
