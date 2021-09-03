	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_669_0: @ 0x08351068
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x6E
	.byte VOL, 0x7F
	.byte N48, Cn3, v112
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_669
song_unk_669: @ 0x08351078 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_669_0
	.size song_unk_669,.-song_unk_669
