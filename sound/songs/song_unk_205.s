	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_205_0: @ 0x0834C96C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x43
	.byte VOL, 0x7F
	.byte N30, Cn3, v040
	.byte W30
	.byte FINE
	.align 2, 0
	.global song_unk_205
song_unk_205: @ 0x0834C97C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_205_0
	.size song_unk_205,.-song_unk_205
