	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_406_0: @ 0x083466F0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x7D
	.byte VOL, 0x7F
	.byte N30, Gs2, v080
	.byte W30
	.byte FINE
song_unk_406_1: @ 0x083466FD
	.byte KEYSH, 0x00
	.byte VOICE, 0x7D
	.byte VOL, 0x7F
	.byte W09
	.byte N30, Gs2, v040
	.byte W30
	.byte FINE
	.align 2, 0
	.global song_unk_406
song_unk_406: @ 0x0834670C (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_406_0
	.4byte song_unk_406_1
	.size song_unk_406,.-song_unk_406
