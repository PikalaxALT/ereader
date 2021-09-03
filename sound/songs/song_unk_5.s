	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_5_0: @ 0x083AB7E4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x7E
	.byte VOL, 0x7F
	.byte N36, Cn3, v112
	.byte W13
	.byte VOL, 0x78
	.byte W01
	.byte 0x66
	.byte W01
	.byte 0x50
	.byte W01
	.byte 0x3D
	.byte W01
	.byte 0x39
	.byte W01
	.byte 0x30
	.byte W01
	.byte 0x2B
	.byte W01
	.byte 0x27
	.byte W01
	.byte 0x22
	.byte W01
	.byte 0x1E
	.byte W01
	.byte 0x19
	.byte W01
	.byte 0x15
	.byte W01
	.byte 0x0B
	.byte W01
	.byte 0x00
	.byte W10
	.byte FINE
	.align 2, 0
	.global song_unk_5
song_unk_5: @ 0x083AB810 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_5_0
	.size song_unk_5,.-song_unk_5
