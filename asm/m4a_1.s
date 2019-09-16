	.include "asm/macros.inc"
	.include "constants/gba_constants.inc"
	.include "constants/m4a_constants.inc"

	.syntax unified

	.text

	thumb_func_start umul3232H32
umul3232H32: @ 0x0803C76C
	adr r2, __umul3232H32
	bx r2
	.align 2, 0
	.arm
__umul3232H32: @ 0x0803C770
	umull r2, r3, r0, r1
	add r0, r3, #0
	bx lr
	thumb_func_end umul3232H32

	thumb_func_start SoundMain
SoundMain: @ 0x0803C77C
	ldr r0, _0803C7E8 @ =SOUND_INFO_PTR
	ldr r0, [r0]
	ldr r2, _0803C7EC @ =ID_NUMBER
	ldr r3, [r0]
	cmp r2, r3
	beq _0803C78A
	bx lr
_0803C78A:
	adds r3, #1
	str r3, [r0]
	push {r4, r5, r6, r7, lr}
	mov r1, r8
	mov r2, sb
	mov r3, sl
	mov r4, fp
	push {r0, r1, r2, r3, r4}
	sub sp, #0x18
	ldrb r1, [r0, #0xc]
	cmp r1, #0
	beq _0803C7AE
	ldr r2, _0803C7F4 @ =REG_VCOUNT
	ldrb r2, [r2]
	cmp r2, #0xa0
	bhs _0803C7AC
	adds r2, #0xe4
_0803C7AC:
	adds r1, r1, r2
_0803C7AE:
	str r1, [sp, #0x14]
	ldr r3, [r0, #0x20]
	cmp r3, #0
	beq _0803C7BE
	ldr r0, [r0, #0x24]
	bl sub_0803CB2A
	ldr r0, [sp, #0x18]
_0803C7BE:
	ldr r3, [r0, #0x28]
	bl sub_0803CB2A
	ldr r0, [sp, #0x18]
	ldr r3, [r0, #0x10]
	mov r8, r3
	ldr r5, _0803C7F8 @ =0x00000350
	adds r5, r5, r0
	ldrb r4, [r0, #4]
	subs r7, r4, #1
	bls _0803C7DE
	ldrb r1, [r0, #0xb]
	subs r1, r1, r7
	mov r2, r8
	muls r2, r1, r2
	adds r5, r5, r2
_0803C7DE:
	str r5, [sp, #8]
	ldr r6, _0803C7FC @ =0x00000630
	ldr r3, _0803C7F0 @ =SoundMainRAM_Buffer + 1
	bx r3
	.align 2, 0
_0803C7E8: .4byte SOUND_INFO_PTR
_0803C7EC: .4byte ID_NUMBER
_0803C7F0: .4byte SoundMainRAM_Buffer + 1
_0803C7F4: .4byte REG_VCOUNT
_0803C7F8: .4byte 0x00000350
_0803C7FC: .4byte 0x00000630
	thumb_func_end SoundMain

	thumb_func_start SoundMainRAM
SoundMainRAM: @ 0x0803C800
	ldrb r3, [r0, #5]
	cmp r3, #0
	beq _0803C84C
	adr r1, SoundMainRAM_Reverb
	bx r1
	.align 2, 0
	.arm
SoundMainRAM_Reverb: @ 0x0803C80C
	cmp r4, #2
	addeq r7, r0, #0x350
	addne r7, r5, r8
	mov r4, r8
_0803C81C:
	ldrsb r0, [r5]
	ldrsb r1, [r7], #1
	add r0, r0, r1
	mul r1, r0, r3
	asr r0, r1, #8
	tst r0, #0x80
	addne r0, r0, #1
	strb r0, [r5], #1
	subs r4, r4, #1
	bgt _0803C81C
	adr r0, _skip_loop + 1
	bx r0
	.thumb
_0803C84C:
	movs r0, #0
	mov r1, r8
	lsrs r1, r1, #3
	blo _0803C856
	stm r5!, {r0}
_0803C856:
	lsrs r1, r1, #1
	blo _0803C85E
	stm r5!, {r0}
	stm r5!, {r0}
_0803C85E:
	stm r5!, {r0}
	stm r5!, {r0}
	stm r5!, {r0}
	stm r5!, {r0}
	subs r1, #1
	bgt _0803C85E
_skip_loop:
	ldr r4, [sp, #0x18]
	ldr r0, [r4, #0x18]
	mov ip, r0
	ldrb r0, [r4, #6]
	adds r4, #0x50
_0803C874:
	str r0, [sp, #4]
	ldr r3, [r4, #0x24]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0803C894
	ldr r1, _0803C890 @ =REG_VCOUNT
	ldrb r1, [r1]
	cmp r1, #0xa0
	bhs _0803C888
	adds r1, #0xe4
_0803C888:
	cmp r1, r0
	blo _0803C894
	b _0803CB16
	.align 2, 0
_0803C890: .4byte REG_VCOUNT
_0803C894:
	ldrb r6, [r4]
	movs r0, #0xc7
	tst r0, r6
	bne _0803C89E
	b _0803CB0C
_0803C89E:
	movs r0, #0x80
	tst r0, r6
	beq _0803C8CE
	movs r0, #0x40
	tst r0, r6
	bne _0803C8DE
	movs r6, #3
	strb r6, [r4]
	adds r0, r3, #0
	adds r0, #0x10
	str r0, [r4, #0x28]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0x18]
	movs r5, #0
	strb r5, [r4, #9]
	str r5, [r4, #0x1c]
	ldrb r2, [r3, #3]
	movs r0, #0xc0
	tst r0, r2
	beq _0803C926
	movs r0, #0x10
	orrs r6, r0
	strb r6, [r4]
	b _0803C926
_0803C8CE:
	ldrb r5, [r4, #9]
	movs r0, #4
	tst r0, r6
	beq _0803C8E4
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	bhi _0803C934
_0803C8DE:
	movs r0, #0
	strb r0, [r4]
	b _0803CB0C
_0803C8E4:
	movs r0, #0x40
	tst r0, r6
	beq _0803C904
	ldrb r0, [r4, #7]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #0xc]
	cmp r5, r0
	bhi _0803C934
_0803C8F6:
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _0803C8DE
	movs r0, #4
	orrs r6, r0
	strb r6, [r4]
	b _0803C934
_0803C904:
	movs r2, #3
	ands r2, r6
	cmp r2, #2
	bne _0803C922
	ldrb r0, [r4, #5]
	muls r5, r0, r5
	lsrs r5, r5, #8
	ldrb r0, [r4, #6]
	cmp r5, r0
	bhi _0803C934
	adds r5, r0, #0
	beq _0803C8F6
	subs r6, #1
	strb r6, [r4]
	b _0803C934
_0803C922:
	cmp r2, #3
	bne _0803C934
_0803C926:
	ldrb r0, [r4, #4]
	adds r5, r5, r0
	cmp r5, #0xff
	blo _0803C934
	movs r5, #0xff
	subs r6, #1
	strb r6, [r4]
_0803C934:
	strb r5, [r4, #9]
	ldr r0, [sp, #0x18]
	ldrb r0, [r0, #7]
	adds r0, #1
	muls r0, r5, r0
	lsrs r5, r0, #4
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	muls r0, r5, r0
	lsrs r0, r0, #9
	strb r0, [r4, #0xa]
	movs r0, #0x10
	ands r0, r6
	str r0, [sp, #0x10]
	beq _0803C964
	adds r0, r3, #0
	adds r0, #0x10
	ldr r1, [r3, #8]
	adds r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r3, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0x10]
_0803C964:
	ldr r5, [sp, #8]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x28]
	adr r0, _0803C970
	bx r0
	.align 2, 0
	.arm
_0803C970: @ 0x0803C970
	str r8, [sp]
	ldrb sl, [r4, #0xa]
	lsl sl, sl, #0x10
	ldrb r0, [r4, #1]
	tst r0, #8
	beq _0803CA78
_0803C988:
	cmp r2, #4
	ble _0803C9E4
	subs r2, r2, r8
	movgt lr, #0
	bgt _0803C9B4
	mov lr, r8
	add r2, r2, r8
	sub r8, r2, #4
	sub lr, lr, r8
	ands r2, r2, #3
	moveq r2, #4
_0803C9B4:
	ldr r6, [r5]
_0803C9B8:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	adds r5, r5, #0x40000000
	blo _0803C9B8
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _0803C9B4
	adds r8, r8, lr
	beq _0803CAF8
_0803C9E4:
	ldr r6, [r5]
_0803C9E8:
	ldrsb r0, [r3], #1
	mul r1, sl, r0
	bic r1, r1, #0xff0000
	add r6, r1, r6, ror #8
	subs r2, r2, #1
	beq _0803CA48
_0803CA00:
	adds r5, r5, #0x40000000
	blo _0803C9E8
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _0803C988
	b _0803CAF8
_0803CA18:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0803CA3C
	ldr r3, [sp, #0x14]
	rsb sb, r2, #0
_0803CA2C:
	adds r2, r0, r2
	bgt _0803CACC
	sub sb, sb, r0
	b _0803CA2C
_0803CA3C:
	pop {r4, ip}
	mov r2, #0
	b _0803CA58
_0803CA48:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	ldrne r3, [sp, #0xc]
	bne _0803CA00
_0803CA58:
	strb r2, [r4]
	lsr r0, r5, #0x1e
	bic r5, r5, #0xc0000000
	rsb r0, r0, #3
	lsl r0, r0, #3
	ror r6, r6, r0
	str r6, [r5], #4
	b _0803CB00
_0803CA78:
	push {r4, ip}
	ldr lr, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	mul r4, ip, r1
	ldrsb r0, [r3]
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_0803CA94:
	ldr r6, [r5]
_0803CA98:
	mul sb, lr, r1
	add sb, r0, sb, asr #23
	mul ip, sl, sb
	bic ip, ip, #0xff0000
	add r6, ip, r6, ror #8
	add lr, lr, r4
	lsrs sb, lr, #0x17
	beq _0803CAD8
	bic lr, lr, #0x3f800000
	subs r2, r2, sb
	ble _0803CA18
	subs sb, sb, #1
	addeq r0, r0, r1
_0803CACC:
	ldrsbne r0, [r3, sb]!
	ldrsb r1, [r3, #1]!
	sub r1, r1, r0
_0803CAD8:
	adds r5, r5, #0x40000000
	blo _0803CA98
	str r6, [r5], #4
	subs r8, r8, #4
	bgt _0803CA94
	sub r3, r3, #1
	pop {r4, ip}
	str lr, [r4, #0x1c]
_0803CAF8:
	str r2, [r4, #0x18]
	str r3, [r4, #0x28]
_0803CB00:
	ldr r8, [sp]
	adr r0, _0803CB0C + 1
	bx r0
	.thumb
_0803CB0C:
	ldr r0, [sp, #4]
	subs r0, #1
	ble _0803CB16
	adds r4, #0x40
	b _0803C874
_0803CB16:
	ldr r0, [sp, #0x18]
	ldr r3, _0803CB2C @ =ID_NUMBER
	str r3, [r0]
	add sp, #0x1c
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}
sub_0803CB2A: @ 0x0803CB2A
	bx r3
	.align 2, 0
_0803CB2C: .4byte ID_NUMBER
	thumb_func_end SoundMainRAM

	thumb_func_start SoundMainBTM
SoundMainBTM: @ 0x0803CB30
	mov ip, r4
	movs r1, #0
	movs r2, #0
	movs r3, #0
	movs r4, #0
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	stm r0!, {r1, r2, r3, r4}
	mov r4, ip
	bx lr
	.align 2, 0
	thumb_func_end SoundMainBTM

	thumb_func_start RealClearChain
RealClearChain: @ 0x0803CB48
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _0803CB66
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _0803CB5A
	str r1, [r2, #0x34]
	b _0803CB5C
_0803CB5A:
	str r1, [r3, #0x20]
_0803CB5C:
	cmp r1, #0
	beq _0803CB62
	str r2, [r1, #0x30]
_0803CB62:
	movs r1, #0
	str r1, [r0, #0x2c]
_0803CB66:
	bx lr
	thumb_func_end RealClearChain

	thumb_func_start ply_fine
ply_fine:
	push {r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0803CB8C
_0803CB72:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0803CB80
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
_0803CB80:
	adds r0, r4, #0
	bl RealClearChain
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _0803CB72
_0803CB8C:
	movs r0, #0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end ply_fine

	thumb_func_start MPlayJumpTableCopy
MPlayJumpTableCopy: @ 0x0803CB98
	mov ip, lr
	movs r1, #0x24
	ldr r2, _0803CBC8 @ =gMPlayJumpTableTemplate
_0803CB9E:
	ldr r3, [r2]
	bl chk_adr_r2
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _0803CB9E
	bx ip
	thumb_func_end MPlayJumpTableCopy
	.align 2, 0

	.align 2, 0
	.thumb_func
ldrb_r3_r2: @ 0x0803CBB0
	ldrb r3, [r2]
	.thumb_func
chk_adr_r2:
	push {r0}
	lsrs r0, r2, #0x19
	bne _0803CBC4
	ldr r0, _0803CBC8 @ =gMPlayJumpTableTemplate
	cmp r2, r0
	blo _0803CBC2
	lsrs r0, r2, #0xe
	beq _0803CBC4
_0803CBC2:
	movs r3, #0
_0803CBC4:
	pop {r0}
	bx lr
	.align 2, 0
_0803CBC8: .4byte gMPlayJumpTableTemplate

	thumb_func_start ld_r3_tp_adr_i
ld_r3_tp_adr_i: @ 0x0803CBCC
	ldr r2, [r1, #0x40]
_0803CBCE: @ 0x0803CBCE
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	b chk_adr_r2
	thumb_func_end ld_r3_tp_adr_i

	thumb_func_start ply_goto
ply_goto:
	push {lr}
_0803CBDA:
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl ldrb_r3_r2
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0
	thumb_func_end ply_goto

	thumb_func_start ply_patt
ply_patt: @ 0x0803CBF8
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _0803CC10
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b ply_goto
_0803CC10:
	b ply_fine
	.align 2, 0
	thumb_func_end ply_patt

	thumb_func_start ply_pend
ply_pend: @ 0x0803CC14
	ldrb r2, [r1, #2]
	cmp r2, #0
	beq _0803CC26
	subs r2, #1
	strb r2, [r1, #2]
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r3, #0x44]
	str r2, [r1, #0x40]
_0803CC26:
	bx lr
	thumb_func_end ply_pend

	thumb_func_start ply_rept
ply_rept: @ 0x0803CC28
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0
	bne _0803CC38
	adds r2, #1
	str r2, [r1, #0x40]
	b _0803CBDA
_0803CC38:
	ldrb r3, [r1, #3]
	adds r3, #1
	strb r3, [r1, #3]
	mov ip, r3
	bl ld_r3_tp_adr_i
	cmp ip, r3
	bhs _0803CC4A
	b _0803CBDA
_0803CC4A:
	movs r3, #0
	strb r3, [r1, #3]
	adds r2, #5
	str r2, [r1, #0x40]
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end ply_rept

	thumb_func_start ply_prio
ply_prio: @ 0x0803CC58
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1d]
	bx ip
	.align 2, 0
	thumb_func_end ply_prio

	thumb_func_start ply_tempo
ply_tempo: @ 0x0803CC64
	mov ip, lr
	bl ld_r3_tp_adr_i
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip
	thumb_func_end ply_tempo

	thumb_func_start ply_keysh
ply_keysh: @ 0x0803CC78
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xa]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0
	thumb_func_end ply_keysh

	thumb_func_start ply_voice
ply_voice: @ 0x0803CC8C
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2]
	bl chk_adr_r2
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl chk_adr_r2
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl chk_adr_r2
	str r3, [r1, #0x2c]
	bx ip
	.align 2, 0
	thumb_func_end ply_voice

	thumb_func_start ply_vol
ply_vol: @ 0x0803CCBC
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x12]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0
	thumb_func_end ply_vol

	thumb_func_start ply_pan
ply_pan: @ 0x0803CCD0
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1]
	bx ip
	thumb_func_end ply_pan

	thumb_func_start ply_bend
ply_bend: @ 0x0803CCE4
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xe]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	thumb_func_end ply_bend

	thumb_func_start ply_bendr
ply_bendr: @ 0x0803CCF8
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0xf]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	.align 2, 0
	thumb_func_end ply_bendr

	thumb_func_start ply_lfodl
ply_lfodl: @ 0x0803CD0C
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x1b]
	bx ip
	.align 2, 0
	thumb_func_end ply_lfodl

	thumb_func_start ply_modt
ply_modt: @ 0x0803CD18
	mov ip, lr
	bl ld_r3_tp_adr_i
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _0803CD2E
	strb r3, [r1, #0x18]
	ldrb r3, [r1]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1]
_0803CD2E:
	bx ip
	thumb_func_end ply_modt

	thumb_func_start ply_tune
ply_tune: @ 0x0803CD30
	mov ip, lr
	bl ld_r3_tp_adr_i
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1]
	bx ip
	thumb_func_end ply_tune

	thumb_func_start ply_port
ply_port: @ 0x0803CD44
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	ldr r0, _0803CD58 @ =REG_SOUND1CNT_L
	adds r0, r0, r3
	bl _0803CBCE
	strb r3, [r0]
	bx ip
	.align 2, 0
_0803CD58: .4byte REG_SOUND1CNT_L
	thumb_func_end ply_port

	thumb_func_start m4aSoundVSync
m4aSoundVSync: @ 0x0803CD5C
	ldr r0, _0803CFF8 @ =SOUND_INFO_PTR
	ldr r0, [r0]
	ldr r2, _0803CFFC @ =ID_NUMBER
	ldr r3, [r0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _0803CD8E
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _0803CD8E
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	ldr r2, _0803CD90 @ =REG_DMA1
	ldr r1, [r2, #8]
	lsls r1, r1, #7
	blo _0803CD82
	ldr r1, _0803CD94 @ =0x84400004
	str r1, [r2, #8]
_0803CD82:
	movs r1, #4
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
	movs r1, #0xb6
	lsls r1, r1, #8
	strh r1, [r2, #0xa]
_0803CD8E:
	bx lr
	.align 2, 0
_0803CD90: .4byte REG_DMA1
_0803CD94: .4byte 0x84400004
	thumb_func_end m4aSoundVSync

	thumb_func_start MPlayMain
MPlayMain: @ 0x0803CD98
	ldr r2, _0803CFFC @ =ID_NUMBER
	ldr r3, [r0, #0x34]
	cmp r2, r3
	beq _0803CDA2
	bx lr
_0803CDA2:
	adds r3, #1
	str r3, [r0, #0x34]
	push {r0, lr}
	ldr r3, [r0, #0x38]
	cmp r3, #0
	beq _0803CDB4
	ldr r0, [r0, #0x3c]
	bl call_r3
_0803CDB4:
	pop {r0}
	push {r4, r5, r6, r7}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _0803CDCC
	b _0803CFE0
_0803CDCC:
	ldr r0, _0803CFF8 @ =SOUND_INFO_PTR
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl FadeOutBody
	ldr r0, [r7, #4]
	cmp r0, #0
	bge _0803CDE0
	b _0803CFE0
_0803CDE0:
	ldrh r0, [r7, #0x22]
	ldrh r1, [r7, #0x20]
	adds r0, r0, r1
	b _0803CF30
_0803CDE8:
	ldrb r6, [r7, #8]
	ldr r5, [r7, #0x2c]
	movs r3, #1
	movs r4, #0
_0803CDF0:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	bne _0803CDFA
	b _0803CF0C
_0803CDFA:
	mov sl, r3
	orrs r4, r3
	mov fp, r4
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0803CE2E
_0803CE06:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0803CE22
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0803CE28
	subs r0, #1
	strb r0, [r4, #0x10]
	bne _0803CE28
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4]
	b _0803CE28
_0803CE22:
	adds r0, r4, #0
	bl ClearChain
_0803CE28:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _0803CE06
_0803CE2E:
	ldrb r3, [r5]
	movs r0, #0x40
	tst r0, r3
	beq _0803CEAC
	adds r0, r5, #0
	bl Clear64byte
	movs r0, #0x80
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #0xf]
	movs r0, #0x40
	strb r0, [r5, #0x13]
	movs r0, #0x16
	strb r0, [r5, #0x19]
	movs r0, #1
	adds r1, r5, #6
	strb r0, [r1, #0x1e]
	b _0803CEAC
_0803CE54:
	ldr r2, [r5, #0x40]
	ldrb r1, [r2]
	cmp r1, #0x80
	bhs _0803CE60
	ldrb r1, [r5, #7]
	b _0803CE6A
_0803CE60:
	adds r2, #1
	str r2, [r5, #0x40]
	cmp r1, #0xbd
	blo _0803CE6A
	strb r1, [r5, #7]
_0803CE6A:
	cmp r1, #0xcf
	blo _0803CE80
	mov r0, r8
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	subs r0, #0xcf
	adds r1, r7, #0
	adds r2, r5, #0
	bl call_r3
	b _0803CEAC
_0803CE80:
	cmp r1, #0xb0
	bls _0803CEA2
	adds r0, r1, #0
	subs r0, #0xb1
	strb r0, [r7, #0xa]
	mov r3, r8
	ldr r3, [r3, #0x34]
	lsls r0, r0, #2
	ldr r3, [r3, r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl call_r3
	ldrb r0, [r5]
	cmp r0, #0
	beq _0803CF08
	b _0803CEAC
_0803CEA2:
	ldr r0, _0803CFF4 @ =gClockTable
	subs r1, #0x80
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5, #1]
_0803CEAC:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _0803CE54
	subs r0, #1
	strb r0, [r5, #1]
	ldrb r1, [r5, #0x19]
	cmp r1, #0
	beq _0803CF08
	ldrb r0, [r5, #0x17]
	cmp r0, #0
	beq _0803CF08
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _0803CECE
	subs r0, #1
	strb r0, [r5, #0x1c]
	b _0803CF08
_0803CECE:
	ldrb r0, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r5, #0x1a]
	adds r1, r0, #0
	subs r0, #0x40
	lsls r0, r0, #0x18
	bpl _0803CEE2
	lsls r2, r1, #0x18
	asrs r2, r2, #0x18
	b _0803CEE6
_0803CEE2:
	movs r0, #0x80
	subs r2, r0, r1
_0803CEE6:
	ldrb r0, [r5, #0x17]
	muls r0, r2, r0
	asrs r2, r0, #6
	ldrb r0, [r5, #0x16]
	eors r0, r2
	lsls r0, r0, #0x18
	beq _0803CF08
	strb r2, [r5, #0x16]
	ldrb r0, [r5]
	ldrb r1, [r5, #0x18]
	cmp r1, #0
	bne _0803CF02
	movs r1, #0xc
	b _0803CF04
_0803CF02:
	movs r1, #3
_0803CF04:
	orrs r0, r1
	strb r0, [r5]
_0803CF08:
	mov r3, sl
	mov r4, fp
_0803CF0C:
	subs r6, #1
	ble _0803CF18
	movs r0, #0x50
	adds r5, r5, r0
	lsls r3, r3, #1
	b _0803CDF0
_0803CF18:
	ldr r0, [r7, #0xc]
	adds r0, #1
	str r0, [r7, #0xc]
	cmp r4, #0
	bne _0803CF2A
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	b _0803CFE0
_0803CF2A:
	str r4, [r7, #4]
	ldrh r0, [r7, #0x22]
	subs r0, #0x96
_0803CF30:
	strh r0, [r7, #0x22]
	cmp r0, #0x96
	blo _0803CF38
	b _0803CDE8
_0803CF38:
	ldrb r2, [r7, #8]
	ldr r5, [r7, #0x2c]
_0803CF3C:
	ldrb r0, [r5]
	movs r1, #0x80
	tst r1, r0
	beq _0803CFD6
	movs r1, #0xf
	tst r1, r0
	beq _0803CFD6
	mov sb, r2
	adds r0, r7, #0
	adds r1, r5, #0
	bl TrkVolPitSet
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0803CFCC
_0803CF5A:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	bne _0803CF6A
	adds r0, r4, #0
	bl ClearChain
	b _0803CFC6
_0803CF6A:
	ldrb r0, [r4, #1]
	movs r6, #7
	ands r6, r0
	ldrb r3, [r5]
	movs r0, #3
	tst r0, r3
	beq _0803CF88
	bl ChnVolSetAsm
	cmp r6, #0
	beq _0803CF88
	ldrb r0, [r4, #0x1d]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x1d]
_0803CF88:
	ldrb r3, [r5]
	movs r0, #0xc
	tst r0, r3
	beq _0803CFC6
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r2, r1, r0
	bpl _0803CF9C
	movs r2, #0
_0803CF9C:
	cmp r6, #0
	beq _0803CFBA
	mov r0, r8
	ldr r3, [r0, #0x30]
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	adds r0, r6, #0
	bl call_r3
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x1d]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _0803CFC6
_0803CFBA:
	adds r1, r2, #0
	ldrb r2, [r5, #9]
	ldr r0, [r4, #0x24]
	bl MidiKeyToFreq
	str r0, [r4, #0x20]
_0803CFC6:
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _0803CF5A
_0803CFCC:
	ldrb r0, [r5]
	movs r1, #0xf0
	ands r0, r1
	strb r0, [r5]
	mov r2, sb
_0803CFD6:
	subs r2, #1
	ble _0803CFE0
	movs r0, #0x50
	adds r5, r5, r0
	bgt _0803CF3C
_0803CFE0:
	ldr r0, _0803CFFC @ =ID_NUMBER
	str r0, [r7, #0x34]
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r3}

call_r3: @ 0x0803CFF0
	bx r3
	.align 2, 0
_0803CFF4: .4byte gClockTable
_0803CFF8: .4byte SOUND_INFO_PTR
_0803CFFC: .4byte ID_NUMBER
	thumb_func_end MPlayMain

	thumb_func_start TrackStop
TrackStop: @ 0x0803D000
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r1, [r5]
	movs r0, #0x80
	tst r0, r1
	beq _0803D038
	ldr r4, [r5, #0x20]
	cmp r4, #0
	beq _0803D036
	movs r6, #0
_0803D014:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803D02E
	ldrb r0, [r4, #1]
	movs r3, #7
	ands r0, r3
	beq _0803D02C
	ldr r3, _0803D040 @ =SOUND_INFO_PTR
	ldr r3, [r3]
	ldr r3, [r3, #0x2c]
	bl call_r3
_0803D02C:
	strb r6, [r4]
_0803D02E:
	str r6, [r4, #0x2c]
	ldr r4, [r4, #0x34]
	cmp r4, #0
	bne _0803D014
_0803D036:
	str r4, [r5, #0x20]
_0803D038:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803D040: .4byte SOUND_INFO_PTR
	thumb_func_end TrackStop

	thumb_func_start ChnVolSetAsm
ChnVolSetAsm: @ 0x0803D044
	ldrb r1, [r4, #0x12]
	movs r0, #0x14
	ldrsb r2, [r4, r0]
	movs r3, #0x80
	adds r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x10]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _0803D05C
	movs r0, #0xff
_0803D05C:
	strb r0, [r4, #2]
	movs r3, #0x7f
	subs r3, r3, r2
	muls r3, r1, r3
	ldrb r0, [r5, #0x11]
	muls r0, r3, r0
	asrs r0, r0, #0xe
	cmp r0, #0xff
	bls _0803D070
	movs r0, #0xff
_0803D070:
	strb r0, [r4, #3]
	bx lr
	thumb_func_end ChnVolSetAsm

	thumb_func_start ply_note
ply_note: @ 0x0803D074
	push {r4, r5, r6, r7, lr}
	mov r4, r8
	mov r5, sb
	mov r6, sl
	mov r7, fp
	push {r4, r5, r6, r7}
	sub sp, #0x18
	str r1, [sp]
	adds r5, r2, #0
	ldr r1, _0803D26C @ =SOUND_INFO_PTR
	ldr r1, [r1]
	str r1, [sp, #4]
	ldr r1, _0803D270 @ =gClockTable
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #4]
	ldr r3, [r5, #0x40]
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _0803D0BA
	strb r0, [r5, #5]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _0803D0B8
	strb r0, [r5, #6]
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0x80
	bhs _0803D0B8
	ldrb r1, [r5, #4]
	adds r1, r1, r0
	strb r1, [r5, #4]
	adds r3, #1
_0803D0B8:
	str r3, [r5, #0x40]
_0803D0BA:
	movs r0, #0
	str r0, [sp, #0x14]
	adds r4, r5, #0
	adds r4, #0x24
	ldrb r2, [r4]
	movs r0, #0xc0
	tst r0, r2
	beq _0803D10C
	ldrb r3, [r5, #5]
	movs r0, #0x40
	tst r0, r2
	beq _0803D0DA
	ldr r1, [r5, #0x2c]
	adds r1, r1, r3
	ldrb r0, [r1]
	b _0803D0DC
_0803D0DA:
	adds r0, r3, #0
_0803D0DC:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5, #0x28]
	adds r1, r1, r0
	mov sb, r1
	mov r6, sb
	ldrb r1, [r6]
	movs r0, #0xc0
	tst r0, r1
	beq _0803D0F4
	b _0803D25A
_0803D0F4:
	movs r0, #0x80
	tst r0, r2
	beq _0803D110
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	beq _0803D108
	subs r1, #0xc0
	lsls r1, r1, #1
	str r1, [sp, #0x14]
_0803D108:
	ldrb r3, [r6, #1]
	b _0803D110
_0803D10C:
	mov sb, r4
	ldrb r3, [r5, #5]
_0803D110:
	str r3, [sp, #8]
	ldr r6, [sp]
	ldrb r1, [r6, #9]
	ldrb r0, [r5, #0x1d]
	adds r0, r0, r1
	cmp r0, #0xff
	bls _0803D120
	movs r0, #0xff
_0803D120:
	str r0, [sp, #0x10]
	mov r6, sb
	ldrb r0, [r6]
	movs r6, #7
	ands r6, r0
	str r6, [sp, #0xc]
	beq _0803D160
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
	cmp r4, #0
	bne _0803D138
	b _0803D25A
_0803D138:
	subs r6, #1
	lsls r0, r6, #6
	adds r4, r4, r0
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0803D1B4
	movs r0, #0x40
	tst r0, r1
	bne _0803D1B4
	ldrb r1, [r4, #0x13]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	blo _0803D1B4
	beq _0803D158
	b _0803D25A
_0803D158:
	ldr r0, [r4, #0x2c]
	cmp r0, r5
	bhs _0803D1B4
	b _0803D25A
_0803D160:
	ldr r6, [sp, #0x10]
	adds r7, r5, #0
	movs r2, #0
	mov r8, r2
	ldr r4, [sp, #4]
	ldrb r3, [r4, #6]
	adds r4, #0x50
_0803D16E:
	ldrb r1, [r4]
	movs r0, #0xc7
	tst r0, r1
	beq _0803D1B4
	movs r0, #0x40
	tst r0, r1
	beq _0803D188
	cmp r2, #0
	bne _0803D18C
	adds r2, #1
	ldrb r6, [r4, #0x13]
	ldr r7, [r4, #0x2c]
	b _0803D1A6
_0803D188:
	cmp r2, #0
	bne _0803D1A8
_0803D18C:
	ldrb r0, [r4, #0x13]
	cmp r0, r6
	bhs _0803D198
	adds r6, r0, #0
	ldr r7, [r4, #0x2c]
	b _0803D1A6
_0803D198:
	bhi _0803D1A8
	ldr r0, [r4, #0x2c]
	cmp r0, r7
	bls _0803D1A4
	adds r7, r0, #0
	b _0803D1A6
_0803D1A4:
	blo _0803D1A8
_0803D1A6:
	mov r8, r4
_0803D1A8:
	adds r4, #0x40
	subs r3, #1
	bgt _0803D16E
	mov r4, r8
	cmp r4, #0
	beq _0803D25A
_0803D1B4:
	adds r0, r4, #0
	bl ClearChain
	movs r1, #0
	str r1, [r4, #0x30]
	ldr r3, [r5, #0x20]
	str r3, [r4, #0x34]
	cmp r3, #0
	beq _0803D1C8
	str r4, [r3, #0x30]
_0803D1C8:
	str r4, [r5, #0x20]
	str r5, [r4, #0x2c]
	ldrb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	cmp r0, r1
	beq _0803D1DA
	adds r1, r5, #0
	bl clear_modM
_0803D1DA:
	ldr r0, [sp]
	adds r1, r5, #0
	bl TrkVolPitSet
	ldr r0, [r5, #4]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x10]
	strb r0, [r4, #0x13]
	ldr r0, [sp, #8]
	strb r0, [r4, #8]
	ldr r0, [sp, #0x14]
	strb r0, [r4, #0x14]
	mov r6, sb
	ldrb r0, [r6]
	strb r0, [r4, #1]
	ldr r7, [r6, #4]
	str r7, [r4, #0x24]
	ldr r0, [r6, #8]
	str r0, [r4, #4]
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0xc]
	bl ChnVolSetAsm
	ldrb r1, [r4, #8]
	movs r0, #8
	ldrsb r0, [r5, r0]
	adds r3, r1, r0
	bpl _0803D214
	movs r3, #0
_0803D214:
	ldr r6, [sp, #0xc]
	cmp r6, #0
	beq _0803D242
	mov r6, sb
	ldrb r0, [r6, #2]
	strb r0, [r4, #0x1e]
	ldrb r1, [r6, #3]
	movs r0, #0x80
	tst r0, r1
	bne _0803D22E
	movs r0, #0x70
	tst r0, r1
	bne _0803D230
_0803D22E:
	movs r1, #8
_0803D230:
	strb r1, [r4, #0x1f]
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #4]
	ldr r3, [r3, #0x30]
	bl call_r3
	b _0803D24C
_0803D242:
	ldrb r2, [r5, #9]
	adds r1, r3, #0
	adds r0, r7, #0
	bl MidiKeyToFreq
_0803D24C:
	str r0, [r4, #0x20]
	movs r0, #0x80
	strb r0, [r4]
	ldrb r1, [r5]
	movs r0, #0xf0
	ands r0, r1
	strb r0, [r5]
_0803D25A:
	add sp, #0x18
	pop {r0, r1, r2, r3, r4, r5, r6, r7}
	mov r8, r0
	mov sb, r1
	mov sl, r2
	mov fp, r3
	pop {r0}
	bx r0
	.align 2, 0
_0803D26C: .4byte SOUND_INFO_PTR
_0803D270: .4byte gClockTable
	thumb_func_end ply_note

	thumb_func_start ply_endtie
ply_endtie: @ 0x0803D274
	push {r4, r5}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	cmp r3, #0x80
	bhs _0803D286
	strb r3, [r1, #5]
	adds r2, #1
	str r2, [r1, #0x40]
	b _0803D288
_0803D286:
	ldrb r3, [r1, #5]
_0803D288:
	ldr r1, [r1, #0x20]
	cmp r1, #0
	beq _0803D2B0
	movs r4, #0x83
	movs r5, #0x40
_0803D292:
	ldrb r2, [r1]
	tst r2, r4
	beq _0803D2AA
	tst r2, r5
	bne _0803D2AA
	ldrb r0, [r1, #0x11]
	cmp r0, r3
	bne _0803D2AA
	movs r0, #0x40
	orrs r2, r0
	strb r2, [r1]
	b _0803D2B0
_0803D2AA:
	ldr r1, [r1, #0x34]
	cmp r1, #0
	bne _0803D292
_0803D2B0:
	pop {r4, r5}
	bx lr
	thumb_func_end ply_endtie

	thumb_func_start clear_modM
clear_modM: @ 0x0803D2B4
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _0803D2C4
	movs r2, #0xc
	b _0803D2C6
_0803D2C4:
	movs r2, #3
_0803D2C6:
	ldrb r3, [r1]
	orrs r3, r2
	strb r3, [r1]
	bx lr
	.align 2, 0
	thumb_func_end clear_modM

	thumb_func_start ld_r3_tp_adr_i_unchecked
ld_r3_tp_adr_i_unchecked: @ 0x0803D2D0
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2]
	bx lr
	.align 2, 0
	thumb_func_end ld_r3_tp_adr_i_unchecked

	thumb_func_start ply_lfos
ply_lfos: @ 0x0803D2DC
	mov ip, lr
	bl ld_r3_tp_adr_i_unchecked
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _0803D2EC
	bl clear_modM
_0803D2EC:
	bx ip
	.align 2, 0
	thumb_func_end ply_lfos

	thumb_func_start ply_mod
ply_mod: @ 0x0803D2F0
	mov ip, lr
	bl ld_r3_tp_adr_i_unchecked
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _0803D300
	bl clear_modM
_0803D300:
	bx ip
	.align 2, 0
	thumb_func_end ply_mod

	.align 2, 0 @ Don't pad with nop.
