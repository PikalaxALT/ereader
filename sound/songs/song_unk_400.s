	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_400_0: @ 0x083465CC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x7F
	.byte VOL, 0x7F
	.byte N48, Bn3, v060
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_400
song_unk_400: @ 0x083465DC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_400_0
	.size song_unk_400,.-song_unk_400
