	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_197_0: @ 0x0834C840
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte N02, Cs4, v060
	.byte W02
	.byte Bn4
	.byte W02
	.byte Fs4
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_197
song_unk_197: @ 0x0834C854 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_197_0
	.size song_unk_197,.-song_unk_197
