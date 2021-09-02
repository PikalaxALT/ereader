	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_139_0: @ 0x0834AF24
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x01
	.byte VOL, 0x7F
	.byte N01, En2, v092
	.byte W02
	.byte Bn1
	.byte W02
	.byte Fs1
	.byte W02
	.byte Cs1
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_139
song_unk_139: @ 0x0834AF38 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte gUnknown_0804CE78 @ voice group
	.4byte song_unk_139_0

