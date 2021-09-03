	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_4_0: @ 0x083466A4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x41
	.byte VOL, 0x7F
	.byte PAN, 0x40
	.byte N04, Cn3, v088
	.byte W05
	.byte N10
	.byte W11
	.byte FINE
song_unk_4_1: @ 0x083466B5
	.byte KEYSH, 0x00
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte PAN, 0x40
	.byte N04, Cs2, v088
	.byte W05
	.byte N10
	.byte W11
	.byte FINE
	.align 2, 0
	.global song_unk_4
song_unk_4: @ 0x083466C4 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_4_0
	.4byte song_unk_4_1
	.size song_unk_4,.-song_unk_4
