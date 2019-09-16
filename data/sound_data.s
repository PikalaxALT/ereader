	.include "asm/macros.inc"
	.include "constants/constants.inc"
	.section .rodata
	.align 2, 0

	.global gUnknown_804CE78
gUnknown_804CE78: @ voice groups
	.incbin "baserom.gba", 0x4ce78, 0x1f08

	.global gMPlayTable
gMPlayTable: @ 0x0804ed80
	music_player gMPlayInfo_1, gMPlayTrack_1, 5, 0
	music_player gMPlayInfo_2, gMPlayTrack_2, 5, 0
	music_player gMPlayInfo_3, gMPlayTrack_3, 5, 0
	music_player gMPlayInfo_4, gMPlayTrack_4, 8, 0
	music_player gMPlayInfo_5, gMPlayTrack_5, 5, 0

	.global gSongTable
gSongTable:
	.incbin "baserom.gba", 0x4edbc, 0x36670c
