	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_6_0: @ 0x083AB81C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x7D
	.byte VOL, 0x64
	.byte N28, Gs2, v080
	.byte W07
	.byte VOL, 0x5E
	.byte W01
	.byte 0x50
	.byte W01
	.byte 0x3E
	.byte W01
	.byte 0x30
	.byte W01
	.byte 0x2C
	.byte W01
	.byte 0x25
	.byte W01
	.byte 0x21
	.byte W01
	.byte 0x1E
	.byte W01
	.byte 0x1A
	.byte W01
	.byte 0x17
	.byte W01
	.byte 0x13
	.byte W01
	.byte 0x10
	.byte W01
	.byte 0x08
	.byte W01
	.byte 0x00
	.byte W10
	.byte FINE
	.align 2, 0
	.global song_unk_6
song_unk_6: @ 0x083AB848 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_6_0

