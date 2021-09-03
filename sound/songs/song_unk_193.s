	.include "MPlayDef.s"
	.section .rodata
	.align 2, 0
song_unk_193_0: @ 0x0834C76C
	.byte KEYSH, 0x00
	.byte TEMPO, 0x4B
	.byte VOICE, 0x65
	.byte VOL, 0x7F
	.byte N01, Bn3, v056
	.byte N01, Cn4
	.byte W01
	.byte As3
	.byte W01
	.byte An3
	.byte W01
	.byte Gn3
	.byte N01, Gs3
	.byte W01
	.byte Fs3
	.byte W01
	.byte Fn3
	.byte W01
	.byte Ds3
	.byte N01, En3
	.byte W01
	.byte Dn3
	.byte W01
	.byte Cs3
	.byte W01
	.byte Cn3
	.byte W01
	.byte Bn2
	.byte W01
	.byte As2
	.byte W01
	.byte Gs2
	.byte N01, An2
	.byte W01
	.byte Gn2
	.byte W01
	.byte Fs2
	.byte W01
	.byte Fn2
	.byte FINE
song_unk_193_1: @ 0x0834C79E
	.byte KEYSH, 0x00
	.byte VOICE, 0x1F
	.byte VOL, 0x7F
	.byte N01, Bn4, v052
	.byte N01, Cn5
	.byte W01
	.byte As4
	.byte W01
	.byte An4
	.byte W01
	.byte Gn4, v040
	.byte N01, Gs4
	.byte W01
	.byte Fs4
	.byte W01
	.byte Fn4
	.byte W01
	.byte Ds4, v032
	.byte N01, En4, v040
	.byte W01
	.byte Dn4, v032
	.byte W01
	.byte Cs4
	.byte W01
	.byte Cn4
	.byte W01
	.byte Bn3
	.byte W01
	.byte As3
	.byte W01
	.byte Gs3
	.byte N01, An3
	.byte W01
	.byte Gn3
	.byte W01
	.byte Fs3
	.byte W01
	.byte Fn3
	.byte FINE
	.align 2, 0
	.global song_unk_193
song_unk_193: @ 0x0834C7D4 (song header)
	.byte 2, 0, 10, 0 @ trackCount, blockCount, priority, reverb
	.4byte voicegroup000 @ voice group
	.4byte song_unk_193_0
	.4byte song_unk_193_1
	.size song_unk_193,.-song_unk_193
