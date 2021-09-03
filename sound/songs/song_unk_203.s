	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_203_0: @ 0x0834C934
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte N24, Cn3, v092
	.byte W24
	.byte FINE
	.align 2, 0
	.global song_unk_203
song_unk_203: @ 0x0834C944 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_203_0
	.size song_unk_203,.-song_unk_203
