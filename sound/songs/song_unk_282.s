	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_282_0: @ 0x0834F158
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x04
	.byte VOL, 0x7F
	.byte N36, Cn3, v112
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_282
song_unk_282: @ 0x0834F168 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup004 @ voice group
	.4byte song_unk_282_0
	.size song_unk_282,.-song_unk_282
