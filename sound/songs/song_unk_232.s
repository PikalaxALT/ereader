	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_232_0: @ 0x0834D21C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x2A
	.byte VOL, 0x7F
	.byte TIE, An2, v092
	.byte W72
	.byte VOL, 0x71
	.byte W06
	.byte 0x6C
	.byte W06
	.byte 0x5F
	.byte W06
	.byte 0x4D
	.byte W06
	.byte 0x3A
	.byte W06
	.byte 0x2D
	.byte W06
	.byte 0x1F
	.byte W06
	.byte 0x12
	.byte W06
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_232
song_unk_232: @ 0x0834D23C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_232_0

