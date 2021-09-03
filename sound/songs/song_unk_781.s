	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_781_0: @ 0x08354F34
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x12
	.byte VOL, 0x50
	.byte N72, Cn4, v127
	.byte W72
	.byte FINE
song_unk_781_1: @ 0x08354F41
	.byte KEYSH, 0x00
	.byte VOICE, 0x12
	.byte VOL, 0x50
	.byte N72, Cn4, v127
	.byte W72
	.byte FINE
	.align 2, 0
	.global song_unk_781
song_unk_781: @ 0x08354F4C (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup008 @ voice group
	.4byte song_unk_781_0
	.4byte song_unk_781_1
	.size song_unk_781,.-song_unk_781
