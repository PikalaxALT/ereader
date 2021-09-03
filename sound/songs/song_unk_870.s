	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_870_0: @ 0x0835574C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x5A
	.byte VOL, 0x7F
	.byte N48, Cn4, v127
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_870
song_unk_870: @ 0x0835575C (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_870_0
	.size song_unk_870,.-song_unk_870
