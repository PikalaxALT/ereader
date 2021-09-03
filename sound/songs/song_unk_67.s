	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_67_0: @ 0x0834857C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x44
	.byte VOL, 0x7F
	.byte N02, Cs5, v120
	.byte W02
	.byte Bn5
	.byte W02
	.byte Fs5
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_67
song_unk_67: @ 0x08348590 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_67_0
	.size song_unk_67,.-song_unk_67
