	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_90_0: @ 0x08349294
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x4C
	.byte VOL, 0x7F
	.byte N01, Cn2, v112
	.byte N01, Cs2
	.byte W01
	.byte Dn2
	.byte W01
	.byte Ds2
	.byte W01
	.byte En2
	.byte N01, Fn2
	.byte W01
	.byte Fs2
	.byte W01
	.byte Gn2
	.byte W01
	.byte Gs2
	.byte N01, An2
	.byte W01
	.byte As2
	.byte W01
	.byte Bn2
	.byte W01
	.byte TIE, Cn3, v080
	.byte W15
song_unk_90_0_000: @ 0x083492BA
	.byte W72
	.byte W24
	.byte GOTO
	 .4byte song_unk_90_0_000
	.byte W15
	.byte EOT, Cn3
	.byte FINE
	.align 2, 0
	.global song_unk_90
song_unk_90: @ 0x083492C8 (song header)
	.byte 1, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_90_0
	.size song_unk_90,.-song_unk_90
