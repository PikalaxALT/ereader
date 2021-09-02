	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_269_0: @ 0x0834E910
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x6E
	.byte VOL, 0x7F
	.byte N44, Cn3, v112
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_269
song_unk_269: @ 0x0834E920 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_269_0

