	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_176_0: @ 0x0834C37C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x31
	.byte VOL, 0x7F
	.byte N36, Bn2, v080
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_176
song_unk_176: @ 0x0834C38C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_176_0
	.size song_unk_176,.-song_unk_176
