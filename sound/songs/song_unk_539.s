	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_539_0: @ 0x08350B14
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x01
	.byte VOL, 0x7F
	.byte N02, En2, v092
	.byte W02
	.byte Bn1
	.byte W02
	.byte Fs1
	.byte W02
	.byte Cs1
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_539
song_unk_539: @ 0x08350B28 (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_539_0
	.size song_unk_539,.-song_unk_539
