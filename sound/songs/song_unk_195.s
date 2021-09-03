	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_195_0: @ 0x0834C800
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x60
	.byte VOL, 0x7F
	.byte N03, En3, v100
	.byte W02
	.byte VOL, 0x3C
	.byte W01
	.byte 0x7F
	.byte N03
	.byte W02
	.byte VOL, 0x3C
	.byte W01
	.byte FINE
	.align 2, 0
	.global song_unk_195
song_unk_195: @ 0x0834C818 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_195_0
	.size song_unk_195,.-song_unk_195
