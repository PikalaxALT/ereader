	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_33_0: @ 0x08347D80
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x25
	.byte VOL, 0x7F
	.byte N28, Cn3, v072
	.byte W30
	.byte FINE
	.align 2, 0
	.global song_unk_33
song_unk_33: @ 0x08347D90 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_33_0

