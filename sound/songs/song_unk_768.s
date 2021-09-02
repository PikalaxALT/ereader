	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_768_0: @ 0x08354CFC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x05
	.byte VOL, 0x50
	.byte TIE, Cn4, v127
	.byte W96
	.byte W96
	.byte W96
	.byte W06
	.byte EOT
	.byte FINE
song_unk_768_1: @ 0x08354D0D
	.byte KEYSH, 0x00
	.byte VOICE, 0x05
	.byte VOL, 0x50
	.byte TIE, Cn4, v127
	.byte W96
	.byte W96
	.byte W96
	.byte W06
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_768
song_unk_768: @ 0x08354D1C (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_768_0
	.4byte song_unk_768_1

