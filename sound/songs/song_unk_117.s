	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_117_0: @ 0x08349E94
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1D
	.byte VOL, 0x7F
	.byte N72, Cn3, v088
	.byte W72
	.byte FINE
	.align 2, 0
	.global song_unk_117
song_unk_117: @ 0x08349EA4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_117_0
	.size song_unk_117,.-song_unk_117
