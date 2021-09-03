	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_97_0: @ 0x08349644
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x14
	.byte VOL, 0x7F
	.byte N72, Cn3, v068
	.byte W72
	.byte FINE
	.align 2, 0
	.global song_unk_97
song_unk_97: @ 0x08349654 (song header)
	.byte 1, 0, 20, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup002 @ voice group
	.4byte song_unk_97_0
	.size song_unk_97,.-song_unk_97
