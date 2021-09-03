	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_537_0: @ 0x08350ACC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x01
	.byte VOL, 0x7F
	.byte N03, Cs1, v092
	.byte W03
	.byte Cs2, v080
	.byte W03
	.byte Cs1, v092
	.byte W03
	.byte Cs2, v080
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_537
song_unk_537: @ 0x08350AE4 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_537_0
	.size song_unk_537,.-song_unk_537
