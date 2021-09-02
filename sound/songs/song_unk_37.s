	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_37_0: @ 0x08347EBC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x62
	.byte VOL, 0x7F
	.byte N56, Cn3, v060
	.byte W60
	.byte FINE
	.align 2, 0
	.global song_unk_37
song_unk_37: @ 0x08347ECC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_37_0

