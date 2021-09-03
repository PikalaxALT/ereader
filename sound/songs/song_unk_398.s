	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_398_0: @ 0x0834FD9C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x6D
	.byte VOL, 0x64
	.byte TIE, Cn3, v040
	.byte W96
	.byte W24
	.byte EOT
	.byte FINE
	.align 2, 0
	.global song_unk_398
song_unk_398: @ 0x0834FDAC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_398_0
	.size song_unk_398,.-song_unk_398
