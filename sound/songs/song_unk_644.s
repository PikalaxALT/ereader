	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_644_0: @ 0x08351020
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x20
	.byte VOL, 0x7F
	.byte N03, Gn4, v060
	.byte W03
	.byte Dn5
	.byte W03
	.byte Bn4
	.byte W03
	.byte Fs5
	.byte W03
	.byte Dn5
	.byte W03
	.byte An5
	.byte W03
	.byte Fn5
	.byte W03
	.byte Cn6
	.byte W03
	.byte FINE
	.align 2, 0
	.global song_unk_644
song_unk_644: @ 0x0835103C (song header)
	.byte 1, 0, 100, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_644_0
	.size song_unk_644,.-song_unk_644
