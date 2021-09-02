	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_390_0: @ 0x0834FCA4
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x62
	.byte VOL, 0x7F
	.byte N04, Fs2, v092
	.byte W05
	.byte N23
	.byte W24
	.byte FINE
	.align 2, 0
	.global song_unk_390
song_unk_390: @ 0x0834FCB4 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804D478 @ voice group
	.4byte song_unk_390_0

