	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_546_0: @ 0x08350B70
	.byte KEYSH, 0x00
song_unk_546_0_000: @ 0x08350B72
	.byte TEMPO, 0x4B
	.byte VOICE, 0x17
	.byte VOL, 0x7F
	.byte N03, Gn2, v052
	.byte W10
	.byte N03
	.byte W11
	.byte N03
	.byte W10
	.byte N03
	.byte W11
	.byte GOTO
	 .4byte song_unk_546_0_000
	.byte FINE
	.align 2, 0
	.global song_unk_546
song_unk_546: @ 0x08350B88 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_546_0
	.size song_unk_546,.-song_unk_546
