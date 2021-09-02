	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_106_0: @ 0x08349C38
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x16
	.byte VOL, 0x7F
	.byte N05, As2, v072
	.byte W06
	.byte N32
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_106
song_unk_106: @ 0x08349C48 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_106_0

