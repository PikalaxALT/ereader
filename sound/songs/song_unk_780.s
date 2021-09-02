	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_780_0: @ 0x08354F0C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x11
	.byte VOL, 0x50
	.byte N92, Cn4, v127
	.byte W96
	.byte FINE
song_unk_780_1: @ 0x08354F19
	.byte KEYSH, 0x00
	.byte VOICE, 0x11
	.byte VOL, 0x50
	.byte N92, Cn4, v127
	.byte W96
	.byte FINE
	.align 2, 0
	.global song_unk_780
song_unk_780: @ 0x08354F24 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_780_0
	.4byte song_unk_780_1

