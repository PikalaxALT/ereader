	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_756_0: @ 0x083AB22C
	.byte VOL, 0x5F
	.byte KEYSH, 0x00
	.byte TEMPO, 0x3C
	.byte VOICE, 0x5D
	.byte N92, Gn1, v080
	.byte N92, Cs2
	.byte W96
	.byte FINE
	.align 2, 0
	.global song_unk_756
song_unk_756: @ 0x083AB23C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_756_0

