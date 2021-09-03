	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_472_0: @ 0x08350320
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x61
	.byte VOL, 0x7F
	.byte N48, Dn4, v100
	.byte W48
	.byte FINE
	.align 2, 0
	.global song_unk_472
song_unk_472: @ 0x08350330 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_472_0
	.size song_unk_472,.-song_unk_472
