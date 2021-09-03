	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_551_0: @ 0x08350C28
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x21
	.byte VOL, 0x7F
	.byte N03, Gn4, v052
	.byte W02
	.byte An4
	.byte W04
	.byte N36, Dn5
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_551
song_unk_551: @ 0x08350C3C (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_551_0
	.size song_unk_551,.-song_unk_551
