	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_235_0: @ 0x0834D280
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x30
	.byte VOL, 0x7F
	.byte TIE, Cs3, v092
	.byte W96
	.byte VOL, 0x72
	.byte W06
	.byte 0x6E
	.byte W06
	.byte 0x60
	.byte W06
	.byte 0x57
	.byte W06
	.byte 0x4A
	.byte W06
	.byte 0x3C
	.byte W06
	.byte 0x2E
	.byte W06
	.byte 0x21
	.byte W06
	.byte 0x0F
	.byte W06
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_235
song_unk_235: @ 0x0834D2A4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_235_0
	.size song_unk_235,.-song_unk_235
