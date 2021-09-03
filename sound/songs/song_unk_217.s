	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_217_0: @ 0x0834CE54
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x1F
	.byte VOL, 0x7F
	.byte N36, Gs1, v060
	.byte W36
	.byte N60, Gn1
	.byte W60
	.byte FINE
song_unk_217_1: @ 0x0834CE64
	.byte KEYSH, 0x00
	.byte VOICE, 0x01
	.byte VOL, 0x7F
	.byte N36, Dn2, v040
	.byte W36
	.byte N60, Cs2
	.byte W60
	.byte FINE
	.align 2, 0
	.global song_unk_217
song_unk_217: @ 0x0834CE74 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_217_0
	.4byte song_unk_217_1
	.size song_unk_217,.-song_unk_217
