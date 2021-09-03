	.include "asm/macros.inc"
	.include "constants/constants.inc"
	.data
	.align 2, 0

	.incbin "baserom.gba", 0x3b6670, 0x90
	.global gUnknown_83B6700
gUnknown_83B6700:
	.incbin "baserom.gba", 0x3b6700, 0x1233b4

	.global gUnknown_84D9AB4
gUnknown_84D9AB4:
	.incbin "baserom.gba", 0x4d9ab4, 0x330

	.global gUnknown_84D9DE4
gUnknown_84D9DE4:
	.incbin "baserom.gba", 0x4d9de4, 0x4e708

	.global gUnknown_85284EC
gUnknown_85284EC:
	.incbin "baserom.gba", 0x5284ec, 0xcd0

	.global gUnknown_85291BC
gUnknown_85291BC:
	.incbin "baserom.gba", 0x5291bc, 0x3cb28

	.global gUnknown_8565CE4
gUnknown_8565CE4:
	.incbin "baserom.gba", 0x565ce4, 0x62f10

	.global gUnknown_85C8BF4
gUnknown_85C8BF4:
	.incbin "baserom.gba", 0x5c8bf4, 0x14284

	.global gUnknown_85DCE78
gUnknown_85DCE78:
	.incbin "baserom.gba", 0x5dce78, 0xd6cf

	.global gUnknown_85EA547
gUnknown_85EA547:
	.byte 7

	.align 4
	.global gUnknown_85EA550
gUnknown_85EA550:
	.4byte REG_DISPCNT
	.4byte REG_BG0HOFS
	.4byte REG_BG0VOFS
	.4byte REG_BG1HOFS
	.4byte REG_BG1VOFS
	.4byte REG_BG2HOFS
	.4byte REG_BG2VOFS
	.4byte REG_BG3HOFS
	.4byte REG_BG3VOFS
	.4byte REG_BG2PA
	.4byte REG_BG2PB
	.4byte REG_BG2PC
	.4byte REG_BG2PD
	.4byte REG_BG2X_L
	.4byte REG_BG2X_H
	.4byte REG_BG2Y_L
	.4byte REG_BG2Y_H
	.4byte REG_BG3PA
	.4byte REG_BG3PB
	.4byte REG_BG3PC
	.4byte REG_BG3PD
	.4byte REG_BG3X_L
	.4byte REG_BG3X_H
	.4byte REG_BG3Y_L
	.4byte REG_BG3Y_H
	.4byte REG_WIN0H
	.4byte REG_WIN1H
	.4byte REG_WIN0V
	.4byte REG_WIN1V
	.4byte REG_WININ
	.4byte REG_WINOUT
	.4byte REG_MOSAIC
	.4byte REG_BLDCNT
	.4byte REG_BLDALPHA
	.4byte REG_BLDY
	.4byte 0

	.global gUnknown_85EA5E0
gUnknown_85EA5E0:
	.2byte 8, 8, 16, 16, 32, 32, 64, 64
	.2byte 16, 8, 32, 8, 32, 16, 64, 32
	.2byte 8, 16, 8, 32, 16, 32, 32, 64

	.global gUnknown_85EA610
gUnknown_85EA610:
	.incbin "baserom.gba", 0x5ea610, 0x9c

	.global gUnknown_85EA6AC
gUnknown_85EA6AC:
	.incbin "baserom.gba", 0x5ea6ac, 0x9c

	.global gUnknown_85EA748
gUnknown_85EA748:
	.incbin "baserom.gba", 0x5ea748, 0x14

	.global gUnknown_85EA75C
gUnknown_85EA75C:
	.incbin "baserom.gba", 0x5ea75c, 0x20

	.global gUnknown_85EA77C
gUnknown_85EA77C:
	.incbin "baserom.gba", 0x5ea77c, 0x20

	.global gUnknown_85EA79C
gUnknown_85EA79C:
	.incbin "baserom.gba", 0x5ea79c, 0x8

	.global gUnknown_85EA7A4
gUnknown_85EA7A4:
	.incbin "baserom.gba", 0x5ea7a4, 0x8

	.global gUnknown_85EA7AC
gUnknown_85EA7AC:
	.incbin "baserom.gba", 0x5ea7ac, 0x8

	.global gUnknown_85EA7B4
gUnknown_85EA7B4:
	.incbin "baserom.gba", 0x5ea7b4, 0x8

	.global gUnknown_85EA7BC
gUnknown_85EA7BC:
	.incbin "baserom.gba", 0x5ea7bc, 0x20

	.global gUnknown_85EA7DC
gUnknown_85EA7DC:
	.incbin "baserom.gba", 0x5ea7dc, 0x3c

	.global gUnknown_85EA818
gUnknown_85EA818:
	.incbin "baserom.gba", 0x5ea818, 0x85c

	.global gUnknown_85EB074
gUnknown_85EB074:
	.incbin "baserom.gba", 0x5eb074, 0x8c8

	.global gUnknown_85EB93C
gUnknown_85EB93C:
	.incbin "baserom.gba", 0x5eb93c, 0x4

	.global gUnknown_85EB940
gUnknown_85EB940:
	.incbin "baserom.gba", 0x5eb940, 0x280

	.global gIntrTable_Template
gIntrTable_Template:
	.4byte DefaultVBlankIntr
	.4byte IntrDummy
	.4byte IntrDummy
	.4byte IntrDummy
	.4byte IntrDummy
	.4byte IntrDummy
	.4byte IntrDummy
	.4byte DefaultSerialIntr
	.4byte IntrDummy
	.4byte IntrDummy
	.4byte IntrDummy
	.4byte IntrDummy
	.4byte IntrDummy
	.4byte IntrDummy

	.global gUnknown_85EBBF8
gUnknown_85EBBF8:
	.incbin "baserom.gba", 0x5ebbf8, 0x1a0

	.global gUnknown_85EBD98
gUnknown_85EBD98:
	.incbin "baserom.gba", 0x5ebd98, 0xc

	.global gUnknown_85EBDA4
gUnknown_85EBDA4:
	.incbin "baserom.gba", 0x5ebda4, 0x34

	.global gUnknown_85EBDD8
gUnknown_85EBDD8:
	.incbin "baserom.gba", 0x5ebdd8, 0x204

	.global gUnknown_85EBFDC
gUnknown_85EBFDC:
	.incbin "baserom.gba", 0x5ebfdc, 0x24

	.global gUnknown_85EC000
gUnknown_85EC000:
	.incbin "baserom.gba", 0x5ec000, 0x44

	.global gUnknown_85EC044
gUnknown_85EC044:
	.incbin "baserom.gba", 0x5ec044, 0x170

	.global gUnknown_85EC1B4
gUnknown_85EC1B4:
	.incbin "baserom.gba", 0x5ec1b4, 0x34

	.global gUnknown_85EC1E8
gUnknown_85EC1E8:
	.incbin "baserom.gba", 0x5ec1e8, 0x34

	.global gUnknown_85EC21C
gUnknown_85EC21C:
	.incbin "baserom.gba", 0x5ec21c, 0xc

	.global gUnknown_85EC228
gUnknown_85EC228:
	.incbin "baserom.gba", 0x5ec228, 0x44

	.global gUnknown_85EC26C
gUnknown_85EC26C:
	.incbin "baserom.gba", 0x5ec26c, 0xc0

	.global gUnknown_85EC32C
gUnknown_85EC32C:
	.incbin "baserom.gba", 0x5ec32c, 0x60

	.global gUnknown_85EC38C
gUnknown_85EC38C:
	.incbin "baserom.gba", 0x5ec38c, 0x8

	.global gUnknown_85EC394
gUnknown_85EC394:
	.incbin "baserom.gba", 0x5ec394, 0x18

	.global gUnknown_85EC3AC
gUnknown_85EC3AC:
	.incbin "baserom.gba", 0x5ec3ac, 0x2

	.global gUnknown_85EC3AE
gUnknown_85EC3AE:
	.incbin "baserom.gba", 0x5ec3ae, 0xa

	.global gUnknown_85EC3B8
gUnknown_85EC3B8:
	.incbin "baserom.gba", 0x5ec3b8, 0x78

	.global gUnknown_85EC430
gUnknown_85EC430:
	.incbin "baserom.gba", 0x5ec430, 0xc

	.global gUnknown_85EC43C
gUnknown_85EC43C:
	.incbin "baserom.gba", 0x5ec43c, 0x398

	.global gUnknown_85EC7D4
gUnknown_85EC7D4:
	.incbin "baserom.gba", 0x5ec7d4, 0xe8

	.global gUnknown_85EC8BC
gUnknown_85EC8BC:
	.incbin "baserom.gba", 0x5ec8bc, 0x14

	.global gUnknown_85EC8D0
gUnknown_85EC8D0:
	.incbin "baserom.gba", 0x5ec8d0, 0x18

	.global gUnknown_85EC8E8
gUnknown_85EC8E8:
	.incbin "baserom.gba", 0x5ec8e8, 0x4c

	.global gUnknown_85EC934
gUnknown_85EC934:
	.incbin "baserom.gba", 0x5ec934, 0x28

	.global gUnknown_85EC95C
gUnknown_85EC95C:
	.incbin "baserom.gba", 0x5ec95c, 0x9c

	.global gUnknown_85EC9F8
gUnknown_85EC9F8:
	.incbin "baserom.gba", 0x5ec9f8, 0x14

	.global gUnknown_85ECA0C
gUnknown_85ECA0C:
	.incbin "baserom.gba", 0x5eca0c, 0x2

	.global gUnknown_85ECA0E
gUnknown_85ECA0E:
	.incbin "baserom.gba", 0x5eca0e, 0x2

	.global gUnknown_85ECA10
gUnknown_85ECA10:
	.incbin "baserom.gba", 0x5eca10, 0x35c

	.global gUnknown_85ECD6C
gUnknown_85ECD6C:
	.incbin "baserom.gba", 0x5ecd6c, 0x14

	.global gUnknown_85ECD80
gUnknown_85ECD80:
	.incbin "baserom.gba", 0x5ecd80, 0x2

	.global gUnknown_85ECD82
gUnknown_85ECD82:
	.incbin "baserom.gba", 0x5ecd82, 0x2

	.global gUnknown_85ECD84
gUnknown_85ECD84:
	.incbin "baserom.gba", 0x5ecd84, 0x2da

	.global gUnknown_85ED05E
gUnknown_85ED05E:
	.incbin "baserom.gba", 0x5ed05e, 0xe

	.global gUnknown_85ED06C
gUnknown_85ED06C:
	.incbin "baserom.gba", 0x5ed06c, 0x2

	.global gUnknown_85ED06E
gUnknown_85ED06E:
	.incbin "baserom.gba", 0x5ed06e, 0x2

	.global gUnknown_85ED070
gUnknown_85ED070:
	.incbin "baserom.gba", 0x5ed070, 0x2be

	.global gUnknown_85ED32E
gUnknown_85ED32E:
	.incbin "baserom.gba", 0x5ed32e, 0xe

	.global gUnknown_85ED33C
gUnknown_85ED33C:
	.incbin "baserom.gba", 0x5ed33c, 0x2

	.global gUnknown_85ED33E
gUnknown_85ED33E:
	.incbin "baserom.gba", 0x5ed33e, 0x2

	.global gUnknown_85ED340
gUnknown_85ED340:
	.incbin "baserom.gba", 0x5ed340, 0x2be

	.global gUnknown_85ED5FE
gUnknown_85ED5FE:
	.incbin "baserom.gba", 0x5ed5fe, 0x4

	.global gUnknown_85ED602
gUnknown_85ED602:
	.incbin "baserom.gba", 0x5ed602, 0xe

	.global gUnknown_85ED610
gUnknown_85ED610:
	.incbin "baserom.gba", 0x5ed610, 0x2

	.global gUnknown_85ED612
gUnknown_85ED612:
	.incbin "baserom.gba", 0x5ed612, 0x2

	.global gUnknown_85ED614
gUnknown_85ED614:
	.incbin "baserom.gba", 0x5ed614, 0x6

	.global gUnknown_85ED61A
gUnknown_85ED61A:
	.incbin "baserom.gba", 0x5ed61a, 0x368

	.global gUnknown_85ED982
gUnknown_85ED982:
	.incbin "baserom.gba", 0x5ed982, 0x4

	.global gUnknown_85ED986
gUnknown_85ED986:
	.incbin "baserom.gba", 0x5ed986, 0xe

	.global gUnknown_85ED994
gUnknown_85ED994:
	.incbin "baserom.gba", 0x5ed994, 0x2

	.global gUnknown_85ED996
gUnknown_85ED996:
	.incbin "baserom.gba", 0x5ed996, 0x2

	.global gUnknown_85ED998
gUnknown_85ED998:
	.incbin "baserom.gba", 0x5ed998, 0x6

	.global gUnknown_85ED99E
gUnknown_85ED99E:
	.incbin "baserom.gba", 0x5ed99e, 0x368

	.global gUnknown_85EDD06
gUnknown_85EDD06:
	.incbin "baserom.gba", 0x5edd06, 0x10

	.global gUnknown_85EDD16
gUnknown_85EDD16:
	.incbin "baserom.gba", 0x5edd16, 0x2

	.global gUnknown_85EDD18
gUnknown_85EDD18:
	.incbin "baserom.gba", 0x5edd18, 0x2

	.global gUnknown_85EDD1A
gUnknown_85EDD1A:
	.incbin "baserom.gba", 0x5edd1a, 0x37a

	.global gUnknown_85EE094
gUnknown_85EE094:
	.incbin "baserom.gba", 0x5ee094, 0x10

	.global gUnknown_85EE0A4
gUnknown_85EE0A4:
	.incbin "baserom.gba", 0x5ee0a4, 0x2

	.global gUnknown_85EE0A6
gUnknown_85EE0A6:
	.incbin "baserom.gba", 0x5ee0a6, 0x2

	.global gUnknown_85EE0A8
gUnknown_85EE0A8:
	.incbin "baserom.gba", 0x5ee0a8, 0x2de

	.global gUnknown_85EE386
gUnknown_85EE386:
	.incbin "baserom.gba", 0x5ee386, 0x1dc

	.global gUnknown_85EE562
gUnknown_85EE562:
	.incbin "baserom.gba", 0x5ee562, 0x1dc

	.global gUnknown_85EE73E
gUnknown_85EE73E:
	.incbin "baserom.gba", 0x5ee73e, 0x18

	.global gUnknown_85EE756
gUnknown_85EE756:
	.incbin "baserom.gba", 0x5ee756, 0x1a

	.global gUnknown_85EE770
gUnknown_85EE770:
	.incbin "baserom.gba", 0x5ee770, 0x24

	.global gUnknown_85EE794
gUnknown_85EE794:
	.incbin "baserom.gba", 0x5ee794, 0xe4

	.global gUnknown_85EE878
gUnknown_85EE878:
	.incbin "baserom.gba", 0x5ee878, 0x18

	.global gUnknown_85EE890
gUnknown_85EE890:
	.incbin "baserom.gba", 0x5ee890, 0x28

	.global gUnknown_85EE8B8
gUnknown_85EE8B8:
	.incbin "baserom.gba", 0x5ee8b8, 0x10

	.global gUnknown_85EE8C8
gUnknown_85EE8C8:
	.incbin "baserom.gba", 0x5ee8c8, 0x10

	.global gUnknown_85EE8D8
gUnknown_85EE8D8:
	.incbin "baserom.gba", 0x5ee8d8, 0x44

	.global gUnknown_85EE91C
gUnknown_85EE91C:
	.incbin "baserom.gba", 0x5ee91c, 0x4

	.global gUnknown_85EE920
gUnknown_85EE920:
	.incbin "baserom.gba", 0x5ee920, 0x44

	.global gUnknown_85EE964
gUnknown_85EE964:
	.incbin "baserom.gba", 0x5ee964, 0x4

	.global gUnknown_85EE968
gUnknown_85EE968:
	.incbin "baserom.gba", 0x5ee968, 0xc

	.global gUnknown_85EE974
gUnknown_85EE974:
	.incbin "baserom.gba", 0x5ee974, 0xc

	.global gUnknown_85EE980
gUnknown_85EE980:
	.incbin "baserom.gba", 0x5ee980, 0x8

	.global gUnknown_85EE988
gUnknown_85EE988:
	.incbin "baserom.gba", 0x5ee988, 0x14

	.global gUnknown_85EE99C
gUnknown_85EE99C:
	.incbin "baserom.gba", 0x5ee99c, 0x14

	.global gUnknown_85EE9B0
gUnknown_85EE9B0:
	.incbin "baserom.gba", 0x5ee9b0, 0x44

	.global gUnknown_85EE9F4
gUnknown_85EE9F4:
	.incbin "baserom.gba", 0x5ee9f4, 0x58

	.global gUnknown_85EEA4C
gUnknown_85EEA4C:
	.incbin "baserom.gba", 0x5eea4c, 0x8

	.global gUnknown_85EEA54
gUnknown_85EEA54:
	.incbin "baserom.gba", 0x5eea54, 0x4

	.global gUnknown_85EEA58
gUnknown_85EEA58:
	.incbin "baserom.gba", 0x5eea58, 0x8

	.global gUnknown_85EEA60
gUnknown_85EEA60:
	.incbin "baserom.gba", 0x5eea60, 0x20

	.global gUnknown_85EEA80
gUnknown_85EEA80:
	.incbin "baserom.gba", 0x5eea80, 0x4

	.global gUnknown_85EEA84
gUnknown_85EEA84:
	.incbin "baserom.gba", 0x5eea84, 0x6c

	.global gUnknown_85EEAF0
gUnknown_85EEAF0:
	.incbin "baserom.gba", 0x5eeaf0, 0x18

	.global gUnknown_85EEB08
gUnknown_85EEB08:
	.incbin "baserom.gba", 0x5eeb08, 0x44

	.global gUnknown_85EEB4C
gUnknown_85EEB4C:
	.incbin "baserom.gba", 0x5eeb4c, 0x44

	.global gUnknown_85EEB90
gUnknown_85EEB90:
	.incbin "baserom.gba", 0x5eeb90, 0x44

	.global gUnknown_85EEBD4
gUnknown_85EEBD4:
	.incbin "baserom.gba", 0x5eebd4, 0x10

	.global gUnknown_85EEBE4
gUnknown_85EEBE4:
	.incbin "baserom.gba", 0x5eebe4, 0x10

	.global gUnknown_85EEBF4
gUnknown_85EEBF4:
	.incbin "baserom.gba", 0x5eebf4, 0x4

	.global gUnknown_85EEBF8
gUnknown_85EEBF8:
	.incbin "baserom.gba", 0x5eebf8, 0x3cc

	.global gUnknown_85EEFC4
gUnknown_85EEFC4:
	.incbin "baserom.gba", 0x5eefc4, 0x1db0

	.global gUnknown_85F0D74
gUnknown_85F0D74:
	.incbin "baserom.gba", 0x5f0d74, 0x44

	.global gUnknown_85F0DB8
gUnknown_85F0DB8:
	.incbin "baserom.gba", 0x5f0db8, 0x30

	.global gUnknown_85F0DE8
gUnknown_85F0DE8:
	.incbin "baserom.gba", 0x5f0de8, 0x18

	.global gUnknown_85F0E00
gUnknown_85F0E00:
	.incbin "baserom.gba", 0x5f0e00, 0x198

	.global gUnknown_85F0F98
gUnknown_85F0F98:
	.incbin "baserom.gba", 0x5f0f98, 0xcc

	.global gUnknown_85F1064
gUnknown_85F1064:
	.incbin "baserom.gba", 0x5f1064, 0x34

	.global gUnknown_85F1098
gUnknown_85F1098:
	.incbin "baserom.gba", 0x5f1098, 0x10

	.global gUnknown_85F10A8
gUnknown_85F10A8:
	.incbin "baserom.gba", 0x5f10a8, 0x38

	.global gUnknown_85F10E0
gUnknown_85F10E0:
	.incbin "baserom.gba", 0x5f10e0, 0x10

	.global gUnknown_85F10F0
gUnknown_85F10F0:
	.incbin "baserom.gba", 0x5f10f0, 0xc

	.global gUnknown_85F10FC
gUnknown_85F10FC:
	.incbin "baserom.gba", 0x5f10fc, 0x18

	.global gUnknown_85F1114
gUnknown_85F1114:
	.incbin "baserom.gba", 0x5f1114, 0x24

	.global gUnknown_85F1138
gUnknown_85F1138:
	.incbin "baserom.gba", 0x5f1138, 0x10

	.global gUnknown_85F1148
gUnknown_85F1148:
	.incbin "baserom.gba", 0x5f1148, 0x8

	.global gUnknown_85F1150
gUnknown_85F1150:
	.incbin "baserom.gba", 0x5f1150, 0xc

	.global gUnknown_85F115C
gUnknown_85F115C:
	.incbin "baserom.gba", 0x5f115c, 0x30

	.global gUnknown_85F118C
gUnknown_85F118C:
	.incbin "baserom.gba", 0x5f118c, 0x30

	.global gUnknown_85F11BC
gUnknown_85F11BC:
	.incbin "baserom.gba", 0x5f11bc, 0x30

	.global gUnknown_85F11EC
gUnknown_85F11EC:
	.incbin "baserom.gba", 0x5f11ec, 0x18

	.global gUnknown_85F1204
gUnknown_85F1204:
	.incbin "baserom.gba", 0x5f1204, 0x18

	.global gUnknown_85F121C
gUnknown_85F121C:
	.incbin "baserom.gba", 0x5f121c, 0x40

	.global gUnknown_85F125C
gUnknown_85F125C:
	.incbin "baserom.gba", 0x5f125c, 0x4c

	.global gUnknown_85F12A8
gUnknown_85F12A8:
	.incbin "baserom.gba", 0x5f12a8, 0x8

	.global gUnknown_85F12B0
gUnknown_85F12B0:
	.incbin "baserom.gba", 0x5f12b0, 0xc

	.global gUnknown_85F12BC
gUnknown_85F12BC:
	.incbin "baserom.gba", 0x5f12bc, 0x44

	.global gUnknown_85F1300
gUnknown_85F1300:
	.incbin "baserom.gba", 0x5f1300, 0xc

	.global gUnknown_85F130C
gUnknown_85F130C:
	.incbin "baserom.gba", 0x5f130c, 0x5c

	.global gUnknown_85F1368
gUnknown_85F1368:
	.incbin "baserom.gba", 0x5f1368, 0x40

	.global gUnknown_85F13A8
gUnknown_85F13A8:
	.incbin "baserom.gba", 0x5f13a8, 0x14

	.global gUnknown_85F13BC
gUnknown_85F13BC:
	.incbin "baserom.gba", 0x5f13bc, 0x14

	.global gUnknown_85F13D0
gUnknown_85F13D0:
	.incbin "baserom.gba", 0x5f13d0, 0x30

	.global gUnknown_85F1400
gUnknown_85F1400:
	.incbin "baserom.gba", 0x5f1400, 0x14

	.global gUnknown_85F1414
gUnknown_85F1414:
	.incbin "baserom.gba", 0x5f1414, 0x10

	.global gUnknown_85F1424
gUnknown_85F1424:
	.incbin "baserom.gba", 0x5f1424, 0x8

	.global gUnknown_85F142C
gUnknown_85F142C:
	.incbin "baserom.gba", 0x5f142c, 0x14

	.global gUnknown_85F1440
gUnknown_85F1440:
	.incbin "baserom.gba", 0x5f1440, 0x44

	.global gUnknown_85F1484
gUnknown_85F1484:
	.incbin "baserom.gba", 0x5f1484, 0x18

	.global gUnknown_85F149C
gUnknown_85F149C:
	.incbin "baserom.gba", 0x5f149c, 0x4c

	.global gUnknown_85F14E8
gUnknown_85F14E8:
	.incbin "baserom.gba", 0x5f14e8, 0xec

	.global gUnknown_85F15D4
gUnknown_85F15D4:
	.incbin "baserom.gba", 0x5f15d4, 0x10

	.global gUnknown_85F15E4
gUnknown_85F15E4:
	.incbin "baserom.gba", 0x5f15e4, 0x44

	.global gUnknown_85F1628
gUnknown_85F1628:
	.incbin "baserom.gba", 0x5f1628, 0x50

	.global gUnknown_85F1678
gUnknown_85F1678:
	.incbin "baserom.gba", 0x5f1678, 0x44

	.global gUnknown_85F16BC
gUnknown_85F16BC:
	.incbin "baserom.gba", 0x5f16bc, 0x2c

	.global gUnknown_85F16E8
gUnknown_85F16E8:
	.incbin "baserom.gba", 0x5f16e8, 0x14

	.global gUnknown_85F16FC
gUnknown_85F16FC:
	.incbin "baserom.gba", 0x5f16fc, 0x14

	.global gUnknown_85F1710
gUnknown_85F1710:
	.incbin "baserom.gba", 0x5f1710, 0x18

	.global gUnknown_85F1728
gUnknown_85F1728:
	.incbin "baserom.gba", 0x5f1728, 0x24

	.global gUnknown_85F174C
gUnknown_85F174C:
	.incbin "baserom.gba", 0x5f174c, 0xc

	.global gUnknown_85F1758
gUnknown_85F1758:
	.incbin "baserom.gba", 0x5f1758, 0xc

	.global gUnknown_85F1764
gUnknown_85F1764:
	.incbin "baserom.gba", 0x5f1764, 0xc

	.global gUnknown_85F1770
gUnknown_85F1770:
	.incbin "baserom.gba", 0x5f1770, 0x14

	.global gUnknown_85F1784
gUnknown_85F1784:
	.incbin "baserom.gba", 0x5f1784, 0x14

	.global gUnknown_85F1798
gUnknown_85F1798:
	.incbin "baserom.gba", 0x5f1798, 0x24

	.global gUnknown_85F17BC
gUnknown_85F17BC:
	.incbin "baserom.gba", 0x5f17bc, 0x4

	.global gUnknown_85F17C0
gUnknown_85F17C0:
	.incbin "baserom.gba", 0x5f17c0, 0x34

	.global gUnknown_85F17F4
gUnknown_85F17F4:
	.incbin "baserom.gba", 0x5f17f4, 0x1c

	.global gUnknown_85F1810
gUnknown_85F1810:
	.incbin "baserom.gba", 0x5f1810, 0x1c

	.global gUnknown_85F182C
gUnknown_85F182C:
	.incbin "baserom.gba", 0x5f182c, 0xc

	.global gUnknown_85F1838
gUnknown_85F1838:
	.incbin "baserom.gba", 0x5f1838, 0xc

	.global gUnknown_85F1844
gUnknown_85F1844:
	.incbin "baserom.gba", 0x5f1844, 0x10

	.global gUnknown_85F1854
gUnknown_85F1854:
	.incbin "baserom.gba", 0x5f1854, 0x10

	.global gUnknown_85F1864
gUnknown_85F1864:
	.incbin "baserom.gba", 0x5f1864, 0xb4

	.global gUnknown_85F1918
gUnknown_85F1918:
	.incbin "baserom.gba", 0x5f1918, 0x28

	.global gUnknown_85F1940
gUnknown_85F1940:
	.incbin "baserom.gba", 0x5f1940, 0x44

	.global gUnknown_85F1984
gUnknown_85F1984:
	.incbin "baserom.gba", 0x5f1984, 0xc

	.global gUnknown_85F1990
gUnknown_85F1990:
	.incbin "baserom.gba", 0x5f1990, 0x18

	.global gUnknown_85F19A8
gUnknown_85F19A8:
	.incbin "baserom.gba", 0x5f19a8, 0x10

	.global gUnknown_85F19B8
gUnknown_85F19B8:
	.incbin "baserom.gba", 0x5f19b8, 0xc

	.global gUnknown_85F19C4
gUnknown_85F19C4:
	.incbin "baserom.gba", 0x5f19c4, 0x44

	.global gUnknown_85F1A08
gUnknown_85F1A08:
	.incbin "baserom.gba", 0x5f1a08, 0x8

	.global gUnknown_85F1A10
gUnknown_85F1A10:
	.incbin "baserom.gba", 0x5f1a10, 0x64

	.global gUnknown_85F1A74
gUnknown_85F1A74:
	.incbin "baserom.gba", 0x5f1a74, 0x4

	.global gUnknown_85F1A78
gUnknown_85F1A78:
	.incbin "baserom.gba", 0x5f1a78, 0xa0

	.global gUnknown_85F1B18
gUnknown_85F1B18:
	.incbin "baserom.gba", 0x5f1b18, 0x64

	.global gUnknown_85F1B7C
gUnknown_85F1B7C:
	.incbin "baserom.gba", 0x5f1b7c, 0x64

	.global gUnknown_85F1BE0
gUnknown_85F1BE0:
	.incbin "baserom.gba", 0x5f1be0, 0x10

	.global gUnknown_85F1BF0
gUnknown_85F1BF0:
	.incbin "baserom.gba", 0x5f1bf0, 0x60

	.global gUnknown_85F1C50
gUnknown_85F1C50:
	.incbin "baserom.gba", 0x5f1c50, 0x34

	.global gUnknown_85F1C84
gUnknown_85F1C84:
	.incbin "baserom.gba", 0x5f1c84, 0x144

	.global gUnknown_85F1DC8
gUnknown_85F1DC8:
	.incbin "baserom.gba", 0x5f1dc8, 0x18c

	.global gUnknown_85F1F54
gUnknown_85F1F54:
	.incbin "baserom.gba", 0x5f1f54, 0x44

	.global gUnknown_85F1F98
gUnknown_85F1F98:
	.incbin "baserom.gba", 0x5f1f98, 0x34

	.global gUnknown_85F1FCC
gUnknown_85F1FCC:
	.incbin "baserom.gba", 0x5f1fcc, 0x38

	.global gUnknown_85F2004
gUnknown_85F2004:
	.incbin "baserom.gba", 0x5f2004, 0x44

	.global gUnknown_85F2048
gUnknown_85F2048:
	.incbin "baserom.gba", 0x5f2048, 0x2

	.global gUnknown_85F204A
gUnknown_85F204A:
	.incbin "baserom.gba", 0x5f204a, 0x2

	.global gUnknown_85F204C
gUnknown_85F204C:
	.incbin "baserom.gba", 0x5f204c, 0x44

	.global gUnknown_85F2090
gUnknown_85F2090:
	.incbin "baserom.gba", 0x5f2090, 0xc

	.global gUnknown_85F209C
gUnknown_85F209C:
	.incbin "baserom.gba", 0x5f209c, 0x4

	.global gUnknown_85F20A0
gUnknown_85F20A0:
	.incbin "baserom.gba", 0x5f20a0, 0xc

	.global gUnknown_85F20AC
gUnknown_85F20AC:
	.incbin "baserom.gba", 0x5f20ac, 0x30

	.global gUnknown_85F20DC
gUnknown_85F20DC:
	.incbin "baserom.gba", 0x5f20dc, 0x30

	.global gUnknown_85F210C
gUnknown_85F210C:
	.incbin "baserom.gba", 0x5f210c, 0x30

	.global gUnknown_85F213C
gUnknown_85F213C:
	.incbin "baserom.gba", 0x5f213c, 0x30

	.global gUnknown_85F216C
gUnknown_85F216C:
	.incbin "baserom.gba", 0x5f216c, 0x30

	.global gUnknown_85F219C
gUnknown_85F219C:
	.incbin "baserom.gba", 0x5f219c, 0x30

	.global gUnknown_85F21CC
gUnknown_85F21CC:
	.incbin "baserom.gba", 0x5f21cc, 0x50

	.global gUnknown_85F221C
gUnknown_85F221C:
	.incbin "baserom.gba", 0x5f221c, 0x38

	.global gUnknown_85F2254
gUnknown_85F2254:
	.incbin "baserom.gba", 0x5f2254, 0x1ac

	.global gUnknown_85F2400
gUnknown_85F2400:
	.incbin "baserom.gba", 0x5f2400, 0x1b0

	.global gUnknown_85F25B0
gUnknown_85F25B0:
	.incbin "baserom.gba", 0x5f25b0, 0x1ac

	.global gUnknown_85F275C
gUnknown_85F275C:
	.incbin "baserom.gba", 0x5f275c, 0x1f0

	.global gUnknown_85F294C
gUnknown_85F294C:
	.incbin "baserom.gba", 0x5f294c, 0x1c0

	.global gUnknown_85F2B0C
gUnknown_85F2B0C:
	.incbin "baserom.gba", 0x5f2b0c, 0x798

	.global gUnknown_85F32A4
gUnknown_85F32A4:
	.incbin "baserom.gba", 0x5f32a4, 0x28

	.global gUnknown_85F32CC
gUnknown_85F32CC:
	.incbin "baserom.gba", 0x5f32cc, 0xe4

	.global gUnknown_85F33B0
gUnknown_85F33B0:
	.incbin "baserom.gba", 0x5f33b0, 0x44

	.global gUnknown_85F33F4
gUnknown_85F33F4:
	.incbin "baserom.gba", 0x5f33f4, 0x4

	.global gUnknown_85F33F8
gUnknown_85F33F8:
	.incbin "baserom.gba", 0x5f33f8, 0x38

	.global gUnknown_85F3430
gUnknown_85F3430:
	.incbin "baserom.gba", 0x5f3430, 0x8

	.global gUnknown_85F3438
gUnknown_85F3438:
	.incbin "baserom.gba", 0x5f3438, 0x44

	.global gUnknown_85F347C
gUnknown_85F347C:
	.incbin "baserom.gba", 0x5f347c, 0x44

	.global gUnknown_85F34C0
gUnknown_85F34C0:
	.incbin "baserom.gba", 0x5f34c0, 0x40

	.global gUnknown_85F3500
gUnknown_85F3500:
	.incbin "baserom.gba", 0x5f3500, 0x54

	.global gUnknown_85F3554
gUnknown_85F3554:
	.incbin "baserom.gba", 0x5f3554, 0x34

	.global gUnknown_85F3588
gUnknown_85F3588:
	.incbin "baserom.gba", 0x5f3588, 0x78

	.global gUnknown_85F3600
gUnknown_85F3600:
	.incbin "baserom.gba", 0x5f3600, 0x50

	.global gUnknown_85F3650
gUnknown_85F3650:
	.incbin "baserom.gba", 0x5f3650, 0x34

	.global gUnknown_85F3684
gUnknown_85F3684:
	.incbin "baserom.gba", 0x5f3684, 0x78

	.global gUnknown_85F36FC
gUnknown_85F36FC:
	.incbin "baserom.gba", 0x5f36fc, 0x44

	.global gUnknown_85F3740
gUnknown_85F3740:
	.incbin "baserom.gba", 0x5f3740, 0x10

	.global gUnknown_85F3750
gUnknown_85F3750:
	.incbin "baserom.gba", 0x5f3750, 0x8

	.global gUnknown_85F3758
gUnknown_85F3758:
	.incbin "baserom.gba", 0x5f3758, 0xc

	.global gUnknown_85F3764
gUnknown_85F3764:
	.incbin "baserom.gba", 0x5f3764, 0x14

	.global gUnknown_85F3778
gUnknown_85F3778:
	.incbin "baserom.gba", 0x5f3778, 0x14

	.global gUnknown_85F378C
gUnknown_85F378C:
	.incbin "baserom.gba", 0x5f378c, 0xe

	.global gUnknown_85F379A
gUnknown_85F379A:
	.incbin "baserom.gba", 0x5f379a, 0x22

	.global gUnknown_85F37BC
gUnknown_85F37BC:
	.incbin "baserom.gba", 0x5f37bc, 0x132

	.global gUnknown_85F38EE
gUnknown_85F38EE:
	.incbin "baserom.gba", 0x5f38ee, 0x30

	.global gUnknown_85F391E
gUnknown_85F391E:
	.incbin "baserom.gba", 0x5f391e, 0x6

	.global gUnknown_85F3924
gUnknown_85F3924:
	.incbin "baserom.gba", 0x5f3924, 0x1a0

	.global gUnknown_85F3AC4
gUnknown_85F3AC4:
	.incbin "baserom.gba", 0x5f3ac4, 0x118

	.global gUnknown_85F3BDC
gUnknown_85F3BDC:
	.incbin "baserom.gba", 0x5f3bdc, 0xc60

	.global gUnknown_85F483C
gUnknown_85F483C:
	.incbin "baserom.gba", 0x5f483c, 0x1960

	.global gUnknown_85F619C
gUnknown_85F619C:
	.incbin "baserom.gba", 0x5f619c, 0x500

	.global gUnknown_85F669C
gUnknown_85F669C:
	.incbin "baserom.gba", 0x5f669c, 0x300

	.global gUnknown_85F699C
gUnknown_85F699C:
	.incbin "baserom.gba", 0x5f699c, 0x24

	.global gUnknown_85F69C0
gUnknown_85F69C0:
	.incbin "baserom.gba", 0x5f69c0, 0x1024

	.global gUnknown_85F79E4
gUnknown_85F79E4:
	.incbin "baserom.gba", 0x5f79e4, 0x9c

	.global gUnknown_85F7A80
gUnknown_85F7A80:
	.incbin "baserom.gba", 0x5f7a80, 0xdd9c

	.global gUnknown_860581C
gUnknown_860581C:
	.incbin "baserom.gba", 0x60581c, 0x20

	.global gUnknown_860583C
gUnknown_860583C:
	.incbin "baserom.gba", 0x60583c, 0x40

	.global gUnknown_860587C
gUnknown_860587C:
	.incbin "baserom.gba", 0x60587c, 0x60

	.global gUnknown_86058DC
gUnknown_86058DC:
	.incbin "baserom.gba", 0x6058dc, 0x60

	.global gUnknown_860593C
gUnknown_860593C:
	.incbin "baserom.gba", 0x60593c, 0xe0

	.global gUnknown_8605A1C
gUnknown_8605A1C:
	.incbin "baserom.gba", 0x605a1c, 0x200

	.global gUnknown_8605C1C
gUnknown_8605C1C:
	.incbin "baserom.gba", 0x605c1c, 0x2880

	.global gUnknown_860849C
gUnknown_860849C:
	.incbin "baserom.gba", 0x60849c, 0x360

	.global gUnknown_86087FC
gUnknown_86087FC:
	.incbin "baserom.gba", 0x6087fc, 0x4280

	.global gUnknown_860CA7C
gUnknown_860CA7C:
	.incbin "baserom.gba", 0x60ca7c, 0x24c0

	.global gUnknown_860EF3C
gUnknown_860EF3C:
	.incbin "baserom.gba", 0x60ef3c, 0x800

	.global gUnknown_860F73C
gUnknown_860F73C:
	.incbin "baserom.gba", 0x60f73c, 0x2a0

	.global gUnknown_860F9DC
gUnknown_860F9DC:
	.incbin "baserom.gba", 0x60f9dc, 0xe0

	.global gUnknown_860FABC
gUnknown_860FABC:
	.incbin "baserom.gba", 0x60fabc, 0xe0

	.global gUnknown_860FB9C
gUnknown_860FB9C:
	.incbin "baserom.gba", 0x60fb9c, 0x140

	.global gUnknown_860FCDC
gUnknown_860FCDC:
	.incbin "baserom.gba", 0x60fcdc, 0x680

	.global gUnknown_861035C
gUnknown_861035C:
	.incbin "baserom.gba", 0x61035c, 0x20

	.global gUnknown_861037C
gUnknown_861037C:
	.incbin "baserom.gba", 0x61037c, 0xa0

	.global gUnknown_861041C
gUnknown_861041C:
	.incbin "baserom.gba", 0x61041c, 0xb00

	.global gUnknown_8610F1C
gUnknown_8610F1C:
	.incbin "baserom.gba", 0x610f1c, 0xc0

	.global gUnknown_8610FDC
gUnknown_8610FDC:
	.incbin "baserom.gba", 0x610fdc, 0xc0

	.global gUnknown_861109C
gUnknown_861109C:
	.incbin "baserom.gba", 0x61109c, 0x1c0

	.global gUnknown_861125C
gUnknown_861125C:
	.incbin "baserom.gba", 0x61125c, 0x1c0

	.global gUnknown_861141C
gUnknown_861141C:
	.incbin "baserom.gba", 0x61141c, 0x1c0

	.global gUnknown_86115DC
gUnknown_86115DC:
	.incbin "baserom.gba", 0x6115dc, 0x1c0

	.global gUnknown_861179C
gUnknown_861179C:
	.incbin "baserom.gba", 0x61179c, 0x2e0

	.global gUnknown_8611A7C
gUnknown_8611A7C:
	.incbin "baserom.gba", 0x611a7c, 0x4e0

	.global gUnknown_8611F5C
gUnknown_8611F5C:
	.incbin "baserom.gba", 0x611f5c, 0x800

	.global gUnknown_861275C
gUnknown_861275C:
	.incbin "baserom.gba", 0x61275c, 0x3480

	.global gUnknown_8615BDC
gUnknown_8615BDC:
	.incbin "baserom.gba", 0x615bdc, 0x800

	.global gUnknown_86163DC
gUnknown_86163DC:
	.incbin "baserom.gba", 0x6163dc, 0x1900

	.global gUnknown_8617CDC
gUnknown_8617CDC:
	.incbin "baserom.gba", 0x617cdc, 0xa20

	.global gUnknown_86186FC
gUnknown_86186FC:
	.incbin "baserom.gba", 0x6186fc, 0x1260

	.global gUnknown_861995C
gUnknown_861995C:
	.incbin "baserom.gba", 0x61995c, 0x229e

	.global gUnknown_861BBFA
gUnknown_861BBFA:
	.incbin "baserom.gba", 0x61bbfa, 0x228

	.global gUnknown_861BE22
gUnknown_861BE22:
	.incbin "baserom.gba", 0x61be22, 0x80

	.global gUnknown_861BEA2
gUnknown_861BEA2:
	.incbin "baserom.gba", 0x61bea2, 0x700

	.global gUnknown_861C5A2
gUnknown_861C5A2:
	.incbin "baserom.gba", 0x61c5a2, 0xc0

	.global gUnknown_861C662
gUnknown_861C662:
	.incbin "baserom.gba", 0x61c662, 0x228

	.global gUnknown_861C88A
gUnknown_861C88A:
	.incbin "baserom.gba", 0x61c88a, 0x6b40

	.global gUnknown_86233CA
gUnknown_86233CA:
	.incbin "baserom.gba", 0x6233ca, 0x800

	.global gUnknown_8623BCA
gUnknown_8623BCA:
	.incbin "baserom.gba", 0x623bca, 0x200

	.global gUnknown_8623DCA
gUnknown_8623DCA:
	.incbin "baserom.gba", 0x623dca, 0x200

	.global gUnknown_8623FCA
gUnknown_8623FCA:
	.incbin "baserom.gba", 0x623fca, 0x3c0

	.global gUnknown_862438A
gUnknown_862438A:
	.incbin "baserom.gba", 0x62438a, 0x800

	.global gUnknown_8624B8A
gUnknown_8624B8A:
	.incbin "baserom.gba", 0x624b8a, 0x800

	.global gUnknown_862538A
gUnknown_862538A:
	.incbin "baserom.gba", 0x62538a, 0x800

	.global gUnknown_8625B8A
gUnknown_8625B8A:
	.incbin "baserom.gba", 0x625b8a, 0x1e0

	.global gUnknown_8625D6A
gUnknown_8625D6A:
	.incbin "baserom.gba", 0x625d6a, 0x3220

	.global gUnknown_8628F8A
gUnknown_8628F8A:
	.incbin "baserom.gba", 0x628f8a, 0x22

	.global gUnknown_8628FAC
gUnknown_8628FAC:
	.incbin "baserom.gba", 0x628fac, 0x1de

	.global gUnknown_862918A
gUnknown_862918A:
	.incbin "baserom.gba", 0x62918a, 0x1b00

	.global gUnknown_862AC8A
gUnknown_862AC8A:
	.incbin "baserom.gba", 0x62ac8a, 0x1ec0

	.global gUnknown_862CB4A
gUnknown_862CB4A:
	.incbin "baserom.gba", 0x62cb4a, 0x1f40

	.global gUnknown_862EA8A
gUnknown_862EA8A:
	.incbin "baserom.gba", 0x62ea8a, 0xbc0

	.global gUnknown_862F64A
gUnknown_862F64A:
	.incbin "baserom.gba", 0x62f64a, 0x800

	.global gUnknown_862FE4A
gUnknown_862FE4A:
	.incbin "baserom.gba", 0x62fe4a, 0x800

	.global gUnknown_863064A
gUnknown_863064A:
	.incbin "baserom.gba", 0x63064a, 0x9e0

	.global gUnknown_863102A
gUnknown_863102A:
	.incbin "baserom.gba", 0x63102a, 0x20

	.global gUnknown_863104A
gUnknown_863104A:
	.incbin "baserom.gba", 0x63104a, 0xa80

	.global gUnknown_8631ACA
gUnknown_8631ACA:
	.incbin "baserom.gba", 0x631aca, 0x1500

	.global gUnknown_8632FCA
gUnknown_8632FCA:
	.incbin "baserom.gba", 0x632fca, 0x27c40

	.global gUnknown_865AC0A
gUnknown_865AC0A:
	.incbin "baserom.gba", 0x65ac0a, 0x820

	.global gUnknown_865B42A
gUnknown_865B42A:
	.incbin "baserom.gba", 0x65b42a, 0x40

	.global gUnknown_865B46A
gUnknown_865B46A:
	.incbin "baserom.gba", 0x65b46a, 0x3360

	.global gUnknown_865E7CA
gUnknown_865E7CA:
	.incbin "baserom.gba", 0x65e7ca, 0x20

	.global gUnknown_865E7EA
gUnknown_865E7EA:
	.incbin "baserom.gba", 0x65e7ea, 0x7fc0

	.global gUnknown_86667AA
gUnknown_86667AA:
	.incbin "baserom.gba", 0x6667aa, 0x1e00

	.global gUnknown_86685AA
gUnknown_86685AA:
	.incbin "baserom.gba", 0x6685aa, 0x3e80

	.global gUnknown_866C42A
gUnknown_866C42A:
	.incbin "baserom.gba", 0x66c42a, 0x800

	.global gUnknown_866CC2A
gUnknown_866CC2A:
	.incbin "baserom.gba", 0x66cc2a, 0x200

	.global gUnknown_866CE2A
gUnknown_866CE2A:
	.incbin "baserom.gba", 0x66ce2a, 0x3e80

	.global gUnknown_8670CAA
gUnknown_8670CAA:
	.incbin "baserom.gba", 0x670caa, 0x800

	.global gUnknown_86714AA
gUnknown_86714AA:
	.incbin "baserom.gba", 0x6714aa, 0x200

	.global gUnknown_86716AA
gUnknown_86716AA:
	.incbin "baserom.gba", 0x6716aa, 0xa0

	.global gUnknown_867174A
gUnknown_867174A:
	.incbin "baserom.gba", 0x67174a, 0x160

	.global gUnknown_86718AA
gUnknown_86718AA:
	.incbin "baserom.gba", 0x6718aa, 0x800

	.global gUnknown_86720AA
gUnknown_86720AA:
	.incbin "baserom.gba", 0x6720aa, 0x20

	.global gUnknown_86720CA
gUnknown_86720CA:
	.incbin "baserom.gba", 0x6720ca, 0x17c0

	.global gUnknown_867388A
gUnknown_867388A:
	.incbin "baserom.gba", 0x67388a, 0x800

	.global gUnknown_867408A
gUnknown_867408A:
	.incbin "baserom.gba", 0x67408a, 0x440

	.global gUnknown_86744CA
gUnknown_86744CA:
	.incbin "baserom.gba", 0x6744ca, 0x1c

	.global gUnknown_86744E6
gUnknown_86744E6:
	.incbin "baserom.gba", 0x6744e6, 0x1e4

	.global gUnknown_86746CA
gUnknown_86746CA:
	.incbin "baserom.gba", 0x6746ca, 0x13c0

	.global gUnknown_8675A8A
gUnknown_8675A8A:
	.incbin "baserom.gba", 0x675a8a, 0x800

	.global gUnknown_867628A
gUnknown_867628A:
	.incbin "baserom.gba", 0x67628a, 0x200

	.global gUnknown_867648A
gUnknown_867648A:
	.incbin "baserom.gba", 0x67648a, 0x200

	.global gUnknown_867668A
gUnknown_867668A:
	.incbin "baserom.gba", 0x67668a, 0x5600

	.global gUnknown_867BC8A
gUnknown_867BC8A:
	.incbin "baserom.gba", 0x67bc8a, 0x1900

	.global gUnknown_867D58A
gUnknown_867D58A:
	.incbin "baserom.gba", 0x67d58a, 0x20

	.global gUnknown_867D5AA
gUnknown_867D5AA:
	.incbin "baserom.gba", 0x67d5aa, 0xe20

	.global gUnknown_867E3CA
gUnknown_867E3CA:
	.incbin "baserom.gba", 0x67e3ca, 0x140

	.global gUnknown_867E50A
gUnknown_867E50A:
	.incbin "baserom.gba", 0x67e50a, 0x10a0

	.global gUnknown_867F5AA
gUnknown_867F5AA:
	.incbin "baserom.gba", 0x67f5aa, 0x800

	.global gUnknown_867FDAA
gUnknown_867FDAA:
	.incbin "baserom.gba", 0x67fdaa, 0x200

	.global gUnknown_867FFAA
gUnknown_867FFAA:
	.incbin "baserom.gba", 0x67ffaa, 0x800

	.global gUnknown_86807AA
gUnknown_86807AA:
	.incbin "baserom.gba", 0x6807aa, 0x4b00

	.global gUnknown_86852AA
gUnknown_86852AA:
	.incbin "baserom.gba", 0x6852aa, 0x800

	.global gUnknown_8685AAA
gUnknown_8685AAA:
	.incbin "baserom.gba", 0x685aaa, 0x3c20

	.global gUnknown_86896CA
gUnknown_86896CA:
	.incbin "baserom.gba", 0x6896ca, 0x800

	.global gUnknown_8689ECA
gUnknown_8689ECA:
	.incbin "baserom.gba", 0x689eca, 0xf20

	.global gUnknown_868ADEA
gUnknown_868ADEA:
	.incbin "baserom.gba", 0x68adea, 0x800

	.global gUnknown_868B5EA
gUnknown_868B5EA:
	.incbin "baserom.gba", 0x68b5ea, 0x200

	.global gUnknown_868B7EA
gUnknown_868B7EA:
	.incbin "baserom.gba", 0x68b7ea, 0x1880

	.global gUnknown_868D06A
gUnknown_868D06A:
	.incbin "baserom.gba", 0x68d06a, 0x800

	.global gUnknown_868D86A
gUnknown_868D86A:
	.incbin "baserom.gba", 0x68d86a, 0x200

	.global gUnknown_868DA6A
gUnknown_868DA6A:
	.incbin "baserom.gba", 0x68da6a, 0x1b80

	.global gUnknown_868F5EA
gUnknown_868F5EA:
	.incbin "baserom.gba", 0x68f5ea, 0x800

	.global gUnknown_868FDEA
gUnknown_868FDEA:
	.incbin "baserom.gba", 0x68fdea, 0x200

	.global gUnknown_868FFEA
gUnknown_868FFEA:
	.incbin "baserom.gba", 0x68ffea, 0x200

	.global gUnknown_86901EA
gUnknown_86901EA:
	.incbin "baserom.gba", 0x6901ea, 0x280

	.global gUnknown_869046A
gUnknown_869046A:
	.incbin "baserom.gba", 0x69046a, 0x20

	.global gUnknown_869048A
gUnknown_869048A:
	.incbin "baserom.gba", 0x69048a, 0x300

	.global gUnknown_869078A
gUnknown_869078A:
	.incbin "baserom.gba", 0x69078a, 0x1500

	.global gUnknown_8691C8A
gUnknown_8691C8A:
	.incbin "baserom.gba", 0x691c8a, 0x900

	.global gUnknown_869258A
gUnknown_869258A:
	.incbin "baserom.gba", 0x69258a, 0x21c0

	.global gUnknown_869474A
gUnknown_869474A:
	.incbin "baserom.gba", 0x69474a, 0x2ea0

	.global gUnknown_86975EA
gUnknown_86975EA:
	.incbin "baserom.gba", 0x6975ea, 0x14e0

	.global gUnknown_8698ACA
gUnknown_8698ACA:
	.incbin "baserom.gba", 0x698aca, 0x800

	.global gUnknown_86992CA
gUnknown_86992CA:
	.incbin "baserom.gba", 0x6992ca, 0x200

	.global gUnknown_86994CA
gUnknown_86994CA:
	.incbin "baserom.gba", 0x6994ca, 0x200

	.global gUnknown_86996CA
gUnknown_86996CA:
	.incbin "baserom.gba", 0x6996ca, 0x780

	.global gUnknown_8699E4A
gUnknown_8699E4A:
	.incbin "baserom.gba", 0x699e4a, 0x800

	.global gUnknown_869A64A
gUnknown_869A64A:
	.incbin "baserom.gba", 0x69a64a, 0xe80

	.global gUnknown_869B4CA
gUnknown_869B4CA:
	.incbin "baserom.gba", 0x69b4ca, 0x800

	.global gUnknown_869BCCA
gUnknown_869BCCA:
	.incbin "baserom.gba", 0x69bcca, 0x200

	.global gUnknown_869BECA
gUnknown_869BECA:
	.incbin "baserom.gba", 0x69beca, 0x200

	.global gUnknown_869C0CA
gUnknown_869C0CA:
	.incbin "baserom.gba", 0x69c0ca, 0x200

	.global gUnknown_869C2CA
gUnknown_869C2CA:
	.incbin "baserom.gba", 0x69c2ca, 0xa0

	.global gUnknown_869C36A
gUnknown_869C36A:
	.incbin "baserom.gba", 0x69c36a, 0x20

	.global gUnknown_869C38A
gUnknown_869C38A:
	.incbin "baserom.gba", 0x69c38a, 0xb80

	.global gUnknown_869CF0A
gUnknown_869CF0A:
	.incbin "baserom.gba", 0x69cf0a, 0x2f80

	.global gUnknown_869FE8A
gUnknown_869FE8A:
	.incbin "baserom.gba", 0x69fe8a, 0x9600

	.global gUnknown_86A948A
gUnknown_86A948A:
	.incbin "baserom.gba", 0x6a948a, 0x800

	.global gUnknown_86A9C8A
gUnknown_86A9C8A:
	.incbin "baserom.gba", 0x6a9c8a, 0x200

	.global gUnknown_86A9E8A
gUnknown_86A9E8A:
	.incbin "baserom.gba", 0x6a9e8a, 0x9600

	.global gUnknown_86B348A
gUnknown_86B348A:
	.incbin "baserom.gba", 0x6b348a, 0x800

	.global gUnknown_86B3C8A
gUnknown_86B3C8A:
	.incbin "baserom.gba", 0x6b3c8a, 0x200

	.global gUnknown_86B3E8A
gUnknown_86B3E8A:
	.incbin "baserom.gba", 0x6b3e8a, 0x900

	.global gUnknown_86B478A
gUnknown_86B478A:
	.incbin "baserom.gba", 0x6b478a, 0x200

	.global gUnknown_86B498A
gUnknown_86B498A:
	.incbin "baserom.gba", 0x6b498a, 0x9a0

	.global gUnknown_86B532A
gUnknown_86B532A:
	.incbin "baserom.gba", 0x6b532a, 0x800

	.global gUnknown_86B5B2A
gUnknown_86B5B2A:
	.incbin "baserom.gba", 0x6b5b2a, 0x800

	.global gUnknown_86B632A
gUnknown_86B632A:
	.incbin "baserom.gba", 0x6b632a, 0x200

	.global gUnknown_86B652A
gUnknown_86B652A:
	.incbin "baserom.gba", 0x6b652a, 0x2140

	.global gUnknown_86B866A
gUnknown_86B866A:
	.incbin "baserom.gba", 0x6b866a, 0x800

	.global gUnknown_86B8E6A
gUnknown_86B8E6A:
	.incbin "baserom.gba", 0x6b8e6a, 0x200

	.global gUnknown_86B906A
gUnknown_86B906A:
	.incbin "baserom.gba", 0x6b906a, 0x2200

	.global gUnknown_86BB26A
gUnknown_86BB26A:
	.incbin "baserom.gba", 0x6bb26a, 0x800

	.global gUnknown_86BBA6A
gUnknown_86BBA6A:
	.incbin "baserom.gba", 0x6bba6a, 0x200

	.global gUnknown_86BBC6A
gUnknown_86BBC6A:
	.incbin "baserom.gba", 0x6bbc6a, 0xa80

	.global gUnknown_86BC6EA
gUnknown_86BC6EA:
	.incbin "baserom.gba", 0x6bc6ea, 0x800

	.global gUnknown_86BCEEA
gUnknown_86BCEEA:
	.incbin "baserom.gba", 0x6bceea, 0x40

	.global gUnknown_86BCF2A
gUnknown_86BCF2A:
	.incbin "baserom.gba", 0x6bcf2a, 0x800

	.global gUnknown_86BD72A
gUnknown_86BD72A:
	.incbin "baserom.gba", 0x6bd72a, 0x120

	.global gUnknown_86BD84A
gUnknown_86BD84A:
	.incbin "baserom.gba", 0x6bd84a, 0x800

	.global gUnknown_86BE04A
gUnknown_86BE04A:
	.incbin "baserom.gba", 0x6be04a, 0x200

	.global gUnknown_86BE24A
gUnknown_86BE24A:
	.incbin "baserom.gba", 0x6be24a, 0x200

	.global gUnknown_86BE44A
gUnknown_86BE44A:
	.incbin "baserom.gba", 0x6be44a, 0x200

	.global gUnknown_86BE64A
gUnknown_86BE64A:
	.incbin "baserom.gba", 0x6be64a, 0x20

	.global gUnknown_86BE66A
gUnknown_86BE66A:
	.incbin "baserom.gba", 0x6be66a, 0x480

	.global gUnknown_86BEAEA
gUnknown_86BEAEA:
	.incbin "baserom.gba", 0x6beaea, 0x200

	.global gUnknown_86BECEA
gUnknown_86BECEA:
	.incbin "baserom.gba", 0x6becea, 0x780

	.global gUnknown_86BF46A
gUnknown_86BF46A:
	.incbin "baserom.gba", 0x6bf46a, 0x180

	.global gUnknown_86BF5EA
gUnknown_86BF5EA:
	.incbin "baserom.gba", 0x6bf5ea, 0x120

	.global gUnknown_86BF70A
gUnknown_86BF70A:
	.incbin "baserom.gba", 0x6bf70a, 0x1ae0

	.global gUnknown_86C11EA
gUnknown_86C11EA:
	.incbin "baserom.gba", 0x6c11ea, 0xb00

	.global gUnknown_86C1CEA
gUnknown_86C1CEA:
	.incbin "baserom.gba", 0x6c1cea, 0x800

	.global gUnknown_86C24EA
gUnknown_86C24EA:
	.incbin "baserom.gba", 0x6c24ea, 0x200

	.global gUnknown_86C26EA
gUnknown_86C26EA:
	.incbin "baserom.gba", 0x6c26ea, 0x200

	.global gUnknown_86C28EA
gUnknown_86C28EA:
	.incbin "baserom.gba", 0x6c28ea, 0x200

	.global gUnknown_86C2AEA
gUnknown_86C2AEA:
	.incbin "baserom.gba", 0x6c2aea, 0x200

	.global gUnknown_86C2CEA
gUnknown_86C2CEA:
	.incbin "baserom.gba", 0x6c2cea, 0x7c00

	.global gUnknown_86CA8EA
gUnknown_86CA8EA:
	.incbin "baserom.gba", 0x6ca8ea, 0xc000

	.global gUnknown_86D68EA
gUnknown_86D68EA:
	.incbin "baserom.gba", 0x6d68ea, 0x68a0

	.global gUnknown_86DD18A
gUnknown_86DD18A:
	.incbin "baserom.gba", 0x6dd18a, 0x3000

	.global gUnknown_86E018A
gUnknown_86E018A:
	.incbin "baserom.gba", 0x6e018a, 0x200

	.global gUnknown_86E038A
gUnknown_86E038A:
	.incbin "baserom.gba", 0x6e038a, 0x1160

	.global gUnknown_86E14EA
gUnknown_86E14EA:
	.incbin "baserom.gba", 0x6e14ea, 0x800

	.global gUnknown_86E1CEA
gUnknown_86E1CEA:
	.incbin "baserom.gba", 0x6e1cea, 0x200

	.global gUnknown_86E1EEA
gUnknown_86E1EEA:
	.incbin "baserom.gba", 0x6e1eea, 0x7000

	.global gUnknown_86E8EEA
gUnknown_86E8EEA:
	.incbin "baserom.gba", 0x6e8eea, 0x800

	.global gUnknown_86E96EA
gUnknown_86E96EA:
	.incbin "baserom.gba", 0x6e96ea, 0x200

	.global gUnknown_86E98EA
gUnknown_86E98EA:
	.incbin "baserom.gba", 0x6e98ea, 0x200

	.global gUnknown_86E9AEA
gUnknown_86E9AEA:
	.incbin "baserom.gba", 0x6e9aea, 0x12e0

	.global gUnknown_86EADCA
gUnknown_86EADCA:
	.incbin "baserom.gba", 0x6eadca, 0x800

	.global gUnknown_86EB5CA
gUnknown_86EB5CA:
	.incbin "baserom.gba", 0x6eb5ca, 0x1400

	.global gUnknown_86EC9CA
gUnknown_86EC9CA:
	.incbin "baserom.gba", 0x6ec9ca, 0xd80

	.global gUnknown_86ED74A
gUnknown_86ED74A:
	.incbin "baserom.gba", 0x6ed74a, 0xe80

	.global gUnknown_86EE5CA
gUnknown_86EE5CA:
	.incbin "baserom.gba", 0x6ee5ca, 0x7000

	.global gUnknown_86F55CA
gUnknown_86F55CA:
	.incbin "baserom.gba", 0x6f55ca, 0x800

	.global gUnknown_86F5DCA
gUnknown_86F5DCA:
	.incbin "baserom.gba", 0x6f5dca, 0x200

	.global gUnknown_86F5FCA
gUnknown_86F5FCA:
	.incbin "baserom.gba", 0x6f5fca, 0x1460

	.global gUnknown_86F742A
gUnknown_86F742A:
	.incbin "baserom.gba", 0x6f742a, 0x9c0

	.global gUnknown_86F7DEA
gUnknown_86F7DEA:
	.incbin "baserom.gba", 0x6f7dea, 0x40

	.global gUnknown_86F7E2A
gUnknown_86F7E2A:
	.incbin "baserom.gba", 0x6f7e2a, 0x1862

	.global gUnknown_86F968C
gUnknown_86F968C:
	.incbin "baserom.gba", 0x6f968c, 0x1390

	.global gUnknown_86FAA1C
gUnknown_86FAA1C:
	.incbin "baserom.gba", 0x6faa1c, 0xa2

	.global gUnknown_86FAABE
gUnknown_86FAABE:
	.incbin "baserom.gba", 0x6faabe, 0x4b0

	.global gUnknown_86FAF6E
gUnknown_86FAF6E:
	.incbin "baserom.gba", 0x6faf6e, 0x2002

	.global gUnknown_86FCF70
gUnknown_86FCF70:
	.incbin "baserom.gba", 0x6fcf70, 0x20

	.global gUnknown_86FCF90
gUnknown_86FCF90:
	.incbin "baserom.gba", 0x6fcf90, 0x9e0

	.global gUnknown_86FD970
gUnknown_86FD970:
	.incbin "baserom.gba", 0x6fd970, 0x4b0

	.global gUnknown_86FDE20
gUnknown_86FDE20:
	.incbin "baserom.gba", 0x6fde20, 0x20

	.global gUnknown_86FDE40
gUnknown_86FDE40:
	.incbin "baserom.gba", 0x6fde40, 0x4b0

	.global gUnknown_86FE2F0
gUnknown_86FE2F0:
	.incbin "baserom.gba", 0x6fe2f0, 0x6e0

	.global gUnknown_86FE9D0
gUnknown_86FE9D0:
	.incbin "baserom.gba", 0x6fe9d0, 0x20

	.global gUnknown_86FE9F0
gUnknown_86FE9F0:
	.incbin "baserom.gba", 0x6fe9f0, 0x300

	.global gUnknown_86FECF0
gUnknown_86FECF0:
	.incbin "baserom.gba", 0x6fecf0, 0x20

	.global gUnknown_86FED10
gUnknown_86FED10:
	.incbin "baserom.gba", 0x6fed10, 0x20

	.global gUnknown_86FED30
gUnknown_86FED30:
	.incbin "baserom.gba", 0x6fed30, 0x20

	.global gUnknown_86FED50
gUnknown_86FED50:
	.incbin "baserom.gba", 0x6fed50, 0x20

	@ lib_unk803E854.s

	.global gUnknown_86FED70
gUnknown_86FED70:
	.incbin "baserom.gba", 0x6fed70, 0x620

	.global gUnknown_86FF390
gUnknown_86FF390:
	.incbin "baserom.gba", 0x6ff390, 0x14

	.global gUnknown_86FF3A4
gUnknown_86FF3A4:
	.incbin "baserom.gba", 0x6ff3a4, 0x8

	.global gUnknown_86FF3AC
gUnknown_86FF3AC:
	.incbin "baserom.gba", 0x6ff3ac, 0x57c

	.global gUnknown_86FF928
gUnknown_86FF928:
	.incbin "baserom.gba", 0x6ff928, 0x10c

	.global gUnknown_86FFA34
gUnknown_86FFA34:
	.incbin "baserom.gba", 0x6ffa34, 0x164

	.global gUnknown_86FFB98
gUnknown_86FFB98:
	.incbin "baserom.gba", 0x6ffb98, 0x158

	.global gUnknown_86FFCF0
gUnknown_86FFCF0:
	.incbin "baserom.gba", 0x6ffcf0, 0x168

	.global gUnknown_86FFE58
gUnknown_86FFE58:
	.incbin "baserom.gba", 0x6ffe58, 0x160

	.global gUnknown_86FFFB8
gUnknown_86FFFB8:
	.incbin "baserom.gba", 0x6fffb8, 0x17a0

	.global gUnknown_8701758
gUnknown_8701758:
	.incbin "baserom.gba", 0x701758, 0x1ec

	.global gUnknown_8701944
gUnknown_8701944:
	.incbin "baserom.gba", 0x701944, 0x1440

	.global gUnknown_8702D84
gUnknown_8702D84:
	.incbin "baserom.gba", 0x702d84, 0x4b4

	.global gUnknown_8703238
gUnknown_8703238:
	.incbin "baserom.gba", 0x703238, 0x7c

	.global gUnknown_87032B4
gUnknown_87032B4:
	.incbin "baserom.gba", 0x7032b4, 0x464

	@ lib_unk080443C4.s
	@ lib_unk080448B0.s

	.global gUnknown_8703718
gUnknown_8703718:
	.4byte sub_080443C4

	.global gUnknown_870371C
gUnknown_870371C:
	.4byte sub_08044440

	.global gUnknown_8703720
gUnknown_8703720:
	.4byte sub_08046B7C
