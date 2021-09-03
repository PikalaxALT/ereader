	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_138_0: @ 0x0834AF00
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x01
	.byte VOL, 0x7F
	.byte N02, Cn3, v060
	.byte W02
	.byte Dn4
	.byte W02
	.byte En3
	.byte W02
	.byte Fs4
	.byte W03
	.byte Gs3
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_138
song_unk_138: @ 0x0834AF18 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_138_0
	.size song_unk_138,.-song_unk_138
