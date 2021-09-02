	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_0_0: @ 0x083AB774
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x7F
	.byte VOL, 0x6E
	.byte N28, Bn3, v060
	.byte W13
	.byte VOL, 0x69
	.byte W01
	.byte 0x5A
	.byte W01
	.byte 0x4D
	.byte W01
	.byte 0x3E
	.byte W01
	.byte 0x32
	.byte W01
	.byte 0x26
	.byte W01
	.byte 0x1F
	.byte W01
	.byte 0x17
	.byte W01
	.byte 0x13
	.byte W01
	.byte 0x0F
	.byte W01
	.byte 0x0B
	.byte W01
	.byte 0x07
	.byte W01
	.byte 0x03
	.byte W01
	.byte 0x00
	.byte W04
	.byte FINE
	.align 2, 0
	.global song_unk_0
song_unk_0: @ 0x083AB7A0 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_0_0

