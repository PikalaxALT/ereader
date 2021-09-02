	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_785_0: @ 0x08354FD8
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x16
	.byte VOL, 0x50
	.byte N56, Cn4, v127
	.byte W60
	.byte FINE
song_unk_785_1: @ 0x08354FE5
	.byte KEYSH, 0x00
	.byte VOICE, 0x16
	.byte VOL, 0x50
	.byte N56, Cn4, v127
	.byte W60
	.byte FINE
	.align 2, 0
	.global song_unk_785
song_unk_785: @ 0x08354FF0 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804E5B8 @ voice group
	.4byte song_unk_785_0
	.4byte song_unk_785_1

