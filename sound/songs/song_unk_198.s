	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_198_0: @ 0x0834C860
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1F
	.byte VOL, 0x7F
	.byte N01, Gn2, v100
	.byte W02
	.byte Dn2
	.byte W02
	.byte An1
	.byte W02
	.byte En1
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_198
song_unk_198: @ 0x0834C874 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_198_0

