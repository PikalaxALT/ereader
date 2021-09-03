	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_112_0: @ 0x08349DE0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x18
	.byte VOL, 0x40
	.byte N06, Cn3, v112
	.byte W06
	.byte Cn3, v084
	.byte W06
	.byte Cn3, v112
	.byte W06
	.byte Cn3, v084
	.byte W06
	.byte FINE
	.align 2, 0
	.global song_unk_112
song_unk_112: @ 0x08349DF8 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_112_0
	.size song_unk_112,.-song_unk_112
