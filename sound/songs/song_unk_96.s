	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_96_0: @ 0x08349628
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x13
	.byte VOL, 0x7F
	.byte N12, Cn3, v100
	.byte W12
	.byte FINE
	.align 2, 0
	.global song_unk_96
song_unk_96: @ 0x08349638 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_96_0
	.size song_unk_96,.-song_unk_96
