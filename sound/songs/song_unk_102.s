	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_102_0: @ 0x08349B10
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x4B
	.byte VOL, 0x7F
	.byte N54, Cn3, v052
	.byte W54
	.byte FINE
song_unk_102_1: @ 0x08349B1D
	.byte KEYSH, 0x00
	.byte VOICE, 0x3B
	.byte VOL, 0x7F
	.byte N36, Ds2, v080
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_102
song_unk_102: @ 0x08349B28 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_102_0
	.4byte song_unk_102_1
	.size song_unk_102,.-song_unk_102
