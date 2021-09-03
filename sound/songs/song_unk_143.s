	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_143_0: @ 0x0834B0A0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x27
	.byte VOL, 0x7F
	.byte N03, Cn3, v040
	.byte W03
	.byte N06, Gn3
	.byte W06
	.byte FINE
	.align 2, 0
	.global song_unk_143
song_unk_143: @ 0x0834B0B0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_143_0
	.size song_unk_143,.-song_unk_143
