	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_87_0: @ 0x08349240
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x03
	.byte VOL, 0x7F
	.byte N12, Bn4, v080
	.byte W12
	.byte N48, Gn4
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_87
song_unk_87: @ 0x08349250 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_87_0
	.size song_unk_87,.-song_unk_87
