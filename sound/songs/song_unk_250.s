	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_250_0: @ 0x0834DFF0
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1E
	.byte VOL, 0x7F
	.byte N02, Cn4, v060
	.byte W02
	.byte Cs4, v072
	.byte W02
	.byte Dn4, v080
	.byte W02
	.byte Ds4, v072
	.byte W02
	.byte En4, v060
	.byte W02
	.byte Ds4, v052
	.byte W02
	.byte En4, v060
	.byte W02
	.byte Fn4, v072
	.byte W02
	.byte Fs4, v060
	.byte W02
	.byte Gn4, v052
	.byte W02
	.byte Gs4, v040
	.byte W02
	.byte An4, v032
	.byte W02
	.byte FINE
	.align 2, 0
	.global song_unk_250
song_unk_250: @ 0x0834E020 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_250_0
	.size song_unk_250,.-song_unk_250
