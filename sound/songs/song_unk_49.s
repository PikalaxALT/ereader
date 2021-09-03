	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_49_0: @ 0x08348040
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x6B
	.byte VOL, 0x7F
	.byte N01, Dn3, v127
	.byte N01, Ds3
	.byte W01
	.byte En3
	.byte W01
	.byte Fs3
	.byte W01
	.byte N36, Gn3
	.byte W36
	.byte FINE
	.align 2, 0
	.global song_unk_49
song_unk_49: @ 0x08348058 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_49_0
	.size song_unk_49,.-song_unk_49
