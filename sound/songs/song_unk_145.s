	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_145_0: @ 0x0834B0DC
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x28
	.byte VOL, 0x7F
	.byte N60, Cn3, v080
	.byte W60
	.byte FINE
	.align 2, 0
	.global song_unk_145
song_unk_145: @ 0x0834B0EC (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_145_0
	.size song_unk_145,.-song_unk_145
