	.include "asm/macros.inc"
	.text
	.syntax unified
	.align 2, 0

	arm_func_start ovx64_3000000
ovx64_3000000: @ 0x03000000
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #8
	str r0, [fp, #-0x2c]
	ldr r6, _030000F8 @ =ovx64_3000248
	ldr sl, _030000FC @ =ovx64_300025C
	ldr r5, _03000100 @ =ovx64_3000250
	ldr r4, _03000104 @ =ovx64_3000244
	ldr sb, _03000108 @ =gUnknown_2028B64
	ldr r0, _0300010C @ =gUnknown_2028B20
	mov ip, #0x810
	str ip, [r6]
	mov lr, #0x1000
	str sl, [r6, #4]
	mov ip, #3
	str ip, [r5]
	mov r8, r1
	ldr ip, _03000110 @ =ovx64_3000A6C
	mov r7, r3
	str ip, [r5, #4]
	mov r1, sb
	str lr, [r5, #8]
	mov ip, #0
	str ip, [r4]
	mov r3, r6
	ldr lr, _03000114 @ =ovx64_300015C
	mov r4, r2
	str lr, [sp]
	mov r2, r5
	bl ovx64_3001A6C
	cmp r0, #0
	blt _03000154
	ldr r3, _03000118 @ =gUnknown_202656C
	ldr r1, _0300011C @ =gUnknown_202656E
	ldr r2, _03000120 @ =gUnknown_2026570
	ldr ip, [fp, #-0x2c]
	ldrh r3, [r3]
	strh r3, [ip]
	ldrh r1, [r1]
	ldr r3, [r2]
	strh r1, [r8]
	str r3, [r4]
	ldr r3, [r2, #4]
	str r3, [r4, #4]
	ldr r3, [sb, #4]
	sub r3, r3, #1
	cmp r3, #0x17
	bhi _03000124
	mov lr, r7
	mov r4, sl
	mov ip, #0xff00
	add ip, ip, #0xff
	mov r1, #0x5000000
	add r1, r1, #0xe0000
_030000DC:
	mov r2, r1
	ldrb r3, [r4], #1
	sub r1, r1, #0x10000
	strb r3, [lr], #1
	cmp ip, r2, lsr #16
	bne _030000DC
	b _03000154
	.align 2, 0
_030000F8: .4byte ovx64_3000248
_030000FC: .4byte ovx64_300025C
_03000100: .4byte ovx64_3000250
_03000104: .4byte ovx64_3000244
_03000108: .4byte gUnknown_2028B64
_0300010C: .4byte gUnknown_2028B20
_03000110: .4byte ovx64_3000A6C
_03000114: .4byte ovx64_300015C
_03000118: .4byte gUnknown_202656C
_0300011C: .4byte gUnknown_202656E
_03000120: .4byte gUnknown_2026570
_03000124:
	mov lr, r7
	mov r4, sl
	mov ip, #0xff00
	add ip, ip, #0xff
	mov r1, #0x8000000
	add r1, r1, #0xe0000
_0300013C:
	mov r2, r1
	ldrb r3, [r4], #1
	sub r1, r1, #0x10000
	strb r3, [lr], #1
	cmp ip, r2, lsr #16
	bne _0300013C
_03000154:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovx64_300015C
ovx64_300015C: @ 0x0300015C
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	mov lr, r0
	cmp lr, #0
	cmpeq r1, #0
	mov r0, r2
	bne _03000194
	cmp r0, #0
	bne _03000194
	ldr r3, _03000220 @ =ovx64_3000244
	str r0, [r3]
	ldmdb fp, {fp, sp, lr}
	bx lr
_03000194:
	ldr r2, _03000220 @ =ovx64_3000244
	ldr r3, [r2]
	add r3, r3, #1
	str r3, [r2]
	cmp r3, #1
	beq _030001B8
	cmp r3, #2
	beq _030001CC
	b _03000204
_030001B8:
	ldr r3, _03000224 @ =ovx64_300023C
	ldr r2, _03000228 @ =ovx64_3000240
	str lr, [r3]
	str r1, [r2]
	b _03000214
_030001CC:
	ldr ip, [r0]
	ldr r2, _0300022C @ =gUnknown_202656C
	ldr r1, _03000230 @ =gUnknown_2026570
	asr r3, lr, #0x10
	strh r3, [r2]
	str ip, [r1]
	ldr r3, _03000234 @ =gUnknown_202656E
	ldr ip, [r0, #4]
	ldr r2, _03000238 @ =gUnknown_2029416
	strh lr, [r3]
	str ip, [r1, #4]
	ldrb r3, [r0, #8]
	strh r3, [r2]
	b _03000214
_03000204:
	cmn r1, #1
	mov r0, #1
	ldmdbeq fp, {fp, sp, lr}
	bxeq lr
_03000214:
	mov r0, #0
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_03000220: .4byte ovx64_3000244
_03000224: .4byte ovx64_300023C
_03000228: .4byte ovx64_3000240
_0300022C: .4byte gUnknown_202656C
_03000230: .4byte gUnknown_2026570
_03000234: .4byte gUnknown_202656E
_03000238: .4byte gUnknown_2029416

ovx64_300023C:
	.space 0x4

ovx64_3000240:
	.space 0x4

ovx64_3000244:
	.space 0x4

ovx64_3000248:
	.space 0x8

ovx64_3000250:
	.space 0xC

ovx64_300025C:
	.space 0x810

ovx64_3000A6C:
	.space 0x1000

	arm_func_start ovx64_3001A6C
ovx64_3001A6C: @ 0x03001A6C
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x9c
	str r0, [fp, #-0x90]
	str r2, [fp, #-0x94]
	ldr ip, _03001E20 @ =ovx64_300416C
	str r3, [fp, #-0x98]
	mov r6, r1
	ldm ip, {r0, r1, r2, r3}
	sub r4, fp, #0x38
	stm r4, {r0, r1, r2, r3}
	ldr r1, [fp, #-0x94]
	ldr r0, [r1, #8]
	mov r1, #4
	bl ovx64_3001EB4
	ldr r2, [fp, #-0x94]
	lsl sl, r0, #2
	ldr r3, [r2, #4]
	sub sl, sl, #0x400
	ldr r1, _03001E24 @ =ovx64_30041B8
	mov r2, #0x400
	str r2, [r1, #4]
	add r3, r3, sl
	str r3, [r1]
	ldr r3, [fp, #-0x94]
	ldr r2, [r3]
	str r2, [fp, #-0x3c]
	mov r3, #0
	str r3, [r6, #8]
	str r3, [r6, #4]
	ldr r1, [r6, #0x10]
	mov r5, r3
	ldrb r3, [r1, r5]
	cmp r3, #0
	bne _03001B20
	ldr r2, [r6, #0xc]
	cmp r5, r2
	bge _03001B20
_03001B08:
	add r5, r5, #1
	ldrb r3, [r1, r5]
	cmp r3, #0
	bne _03001B20
	cmp r5, r2
	blt _03001B08
_03001B20:
	cmp r3, #0
	addne r3, r5, #1
	strne r3, [r6, #4]
	ldr r3, [r6, #0xc]
	ldr r2, [r6, #0x10]
	sub r5, r3, #1
	ldrb r3, [r2, r5]
	ldr r1, [r6, #4]
	cmp r3, #0
	bne _03001B6C
	cmp r5, r1
	beq _03001B6C
	mov r0, r1
_03001B54:
	sub r5, r5, #1
	ldrb r3, [r2, r5]
	cmp r3, #0
	bne _03001B6C
	cmp r5, r0
	bne _03001B54
_03001B6C:
	cmp r3, #0
	addne r3, r5, #1
	strne r3, [r6, #8]
	cmp r1, #0
	beq _03001B8C
	ldr r3, [r6, #8]
	cmp r3, #0
	bne _03001B94
_03001B8C:
	mvn r0, #0x190
	b _03001EAC
_03001B94:
	mov r2, #0
	str r2, [fp, #-0x80]
	str r2, [fp, #-0x7c]
	ldr r3, [fp, #4]
	str r6, [fp, #-0x74]
	str r3, [fp, #-0x78]
	cmp sl, #0x200
	blt _03001D18
	ldr r1, [fp, #-0x94]
	ldr ip, [r1, #4]
	str ip, [fp, #-0x70]
	add r1, ip, #0x100
	str r1, [fp, #-0x6c]
	add r3, r1, #0x100
	str r3, [fp, #-0x68]
	cmp sl, #0x2b0
	blt _03001D18
	mov r7, #0x430
	add r3, ip, #0x258
	str r3, [fp, #-0x64]
	add r2, ip, #0x2b0
	str r2, [fp, #-0x60]
	cmp sl, r7
	blt _03001D18
	add r7, r7, #0x580
	cmp sl, r7
	add r3, ip, #0x430
	str r3, [fp, #-0x5c]
	mvn r0, #0xc8
	blt _03001EAC
	mov r0, ip
	mov r2, #8
	bl ovx64_3002E40
	mov r1, #0x18
	ldr r0, [fp, #-0x60]
	mov r2, #0x10
	bl ovx64_3002EFC
	ldr r1, [fp, #-0x74]
	ldr r3, [r1]
	tst r3, #4
	ldr r3, [fp, #-0x94]
	ldr r2, [r3]
	moveq r3, #0x68
	movne r3, #0x50
	str r3, [fp, #-0xa8]
	ldrb r3, [r1]
	and r3, r3, #3
	str r3, [fp, #-0xa0]
	tst r2, #2
	beq _03001CB8
	ldr r2, [r6, #8]
	ldr r3, [r6, #4]
	cmp r2, #0x18
	movgt r4, #0x34
	movle r4, #0x12
	cmp r4, r2
	movlt r4, r2
	cmp r3, #0x18
	movgt r5, #0x18
	movle r5, #0
	cmp r5, r4
	bge _03001CB8
_03001C8C:
	ldr r3, [r6, #0x10]
	ldrb r2, [r3, r5]
	cmp r2, #0
	bne _03001CAC
	ldr r0, [fp, #-0x90]
	ldr r2, [fp, #-0xa8]
	mov r1, r5
	bl ovx64_3001F50
_03001CAC:
	add r5, r5, #1
	cmp r5, r4
	blt _03001C8C
_03001CB8:
	ldr r1, [fp, #-0x94]
	mov r3, #0
	ldr r0, [r1, #4]
	mov sb, r3
	mov r1, #4
	add r0, r0, r7
	str r3, [fp, #-0x8c]
	add r0, r0, #3
	bl ovx64_3001EB4
	lsl r0, r0, #2
	ldr r3, [fp, #-0x94]
	mov r1, #0x9f0
	ldr r2, [r3, #4]
	add r1, r1, #0xc
	add r3, r2, r7
	rsb r3, r3, r0
	add r7, r1, r3
	str r0, [fp, #-0xac]
	cmp sl, r7
	blt _03001D18
	add r6, r2, r7
	add r7, r7, #8
	cmp sl, r7
	bge _03001D30
_03001D18:
	mvn r0, #0xc8
	b _03001EAC
_03001D20:
	mvn r0, #0xc9
	b _03001EAC
_03001D28:
	mvn r0, #0x67
	b _03001EAC
_03001D30:
	ldr r3, [fp, #-0xa0]
	sub r2, fp, #0x38
	ldr r2, [r2, r3, lsl #2]
	str r2, [fp, #-0xa4]
	ldr r3, [fp, #-0x74]
	ldr r0, [r3, #8]
	mov r1, r2
	add r0, r0, r2
	sub r0, r0, #1
	bl ovx64_3001EB4
	sub r1, fp, #0xa8
	ldm r1, {r1, r3}
	mul r3, r1, r3
	mul ip, r3, r0
	str sb, [fp, #-0x80]
	str sb, [fp, #-0x7c]
	ldr r2, [fp, #-0x98]
	ldr r1, [fp, #-0x98]
	ldr r3, [r2, #4]
	str r3, [fp, #-0x84]
	ldr r3, [fp, #-0x90]
	ldr r2, [r3]
	ldr r3, [r1]
	str sb, [fp, #-0x9c]
	mov r4, sb
	str r3, [fp, #-0x88]
	cmp ip, r2
	movge ip, r2
	sub r5, fp, #0x88
	b _03001E30
_03001DA8:
	cmp r8, #0
	ble _03001E28
	ldr r2, [fp, #-0x9c]
	ldr r1, [fp, #-0x98]
	rsb r3, r2, r8
	ldr r2, [r1]
	add r4, r4, r3
	cmp r4, r2
	bgt _03001D20
	ldr r3, [fp, #-0xac]
	ldr r2, [fp, #-0x88]
	ldr r1, [r3]
	mov r0, #4
	ldr r3, [r5, r0]
	rsb r2, r1, r2
	str r2, [fp, #-0x88]
	add r3, r3, r1
	str r3, [r5, r0]
	subs r1, r8, r1
	str r1, [fp, #-0x9c]
	bmi _03001D28
	ldr r2, [fp, #-0x54]
	add sb, sb, #1
	ldr r3, [fp, #-0x44]
	add r7, r7, r2
	add r6, r3, r2
	add r7, r7, #8
	cmp sl, r7
	bge _03001E30
	b _03001D18
	.align 2, 0
_03001E20: .4byte ovx64_300416C
_03001E24: .4byte ovx64_30041B8
_03001E28:
	cmn r8, #0xc9
	beq _03001D18
_03001E30:
	ldr r3, [fp, #-0x8c]
	cmp r3, ip
	bge _03001E98
	add r3, r6, #8
	str r3, [fp, #-0x44]
	ldr r1, [fp, #-0xa4]
	rsb r2, r7, sl
	str r2, [fp, #-0x40]
	str r1, [sp]
	sub r3, fp, #0x80
	str r3, [sp, #4]
	ldr r2, [fp, #-0xac]
	ldr r0, [fp, #-0x90]
	str r2, [sp, #8]
	str r6, [sp, #0xc]
	str r5, [sp, #0x10]
	ldr r3, [fp, #-0xa8]
	mov r1, #0
	str ip, [fp, #-0xb0]
	sub r2, fp, #0x8c
	bl ovx64_3001FC0
	mov r8, r0
	ldr ip, [fp, #-0xb0]
	cmn r8, #0x10
	cmnne r8, #0x65
	bne _03001DA8
_03001E98:
	cmp sb, #0
	ldr r3, [fp, #-0x98]
	movne r0, sb
	moveq r0, r8
	str r4, [r3]
_03001EAC:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovx64_3001EB4
ovx64_3001EB4: @ 0x03001EB4
	mov ip, sp
	mov r2, r0
	push {fp, ip, lr, pc}
	cmp r1, #0
	movne r3, #0
	moveq r3, #1
	cmp r2, #0
	moveq r3, #1
	cmp r3, #0
	sub fp, ip, #4
	movne r0, #0
	ldmdbne fp, {fp, sp, lr}
	bxne lr
	mov ip, r3
	mov r3, r1
_03001EF0:
	cmp r2, r1
	blo _03001F08
	mov r3, r1
	add ip, ip, #1
	lsls r1, r1, #1
	bpl _03001EF0
_03001F08:
	cmp r2, r1
	addhs ip, ip, #1
	movlo r1, r3
	mov r0, #0
	mov r3, r0
	cmp r0, ip
	ldmdbhs fp, {fp, sp, lr}
	bxhs lr
_03001F28:
	lsl r0, r0, #1
	cmp r2, r1
	addhs r0, r0, #1
	rsbhs r2, r1, r2
	lsr r1, r1, #1
	add r3, r3, #1
	cmp r3, ip
	blo _03001F28
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx64_3001F50
ovx64_3001F50: @ 0x03001F50
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	mul ip, r2, r1
	mla r1, r2, r1, r2
	ldr r3, [r0]
	cmp r1, r3
	ldmdbgt fp, {fp, sp, lr}
	bxgt lr
	mov r2, ip
	cmp r2, r1
	ldmdbge fp, {fp, sp, lr}
	bxge lr
	mov ip, #0
_03001F88:
	ldr r3, [r0, #4]
	strb ip, [r3, r2]
	add r2, r2, #1
	cmp r2, r1
	blt _03001F88
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx64_3001FA4
ovx64_3001FA4: @ 0x03001FA4
	mov ip, sp
	push {fp, ip, lr, pc}
	ldr r0, _03001FBC @ =ovx64_300417C
	sub fp, ip, #4
	ldmdb fp, {fp, sp, lr}
	bx lr
_03001FBC: .4byte ovx64_300417C

	arm_func_start ovx64_3001FC0
ovx64_3001FC0: @ 0x03001FC0
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x2c
	ldr lr, [fp, #8]
	ldr ip, [lr, #8]
	mov r8, r0
	str r2, [fp, #-0x48]
	mov r7, r1
	str r3, [fp, #-0x4c]
	cmp ip, #0
	beq _03002010
	mov r0, #0
	mov r1, r0
	mov r2, r0
	mov lr, pc
	bx ip
_03002004:
	cmp r0, #1
	mvn r0, #15
	beq _03002310
_03002010:
	ldr r1, [fp, #4]
	mov r0, #0x18
	bl ovx64_3001EB4
	ldr r1, [fp, #8]
	ldr r3, [r1, #0xc]
	lsl ip, r0, #0x10
	ldr r2, [r3, #4]
	asr sl, ip, #0x10
	ldr r1, [fp, #4]
	sub r0, r2, #1
	bl ovx64_3001EB4
	ldr r4, [fp, #4]
	ldr r2, [fp, #-0x4c]
	mul r4, r2, r4
	ldr sb, [fp, #4]
	mov r6, r0
	mul sb, r6, sb
	muls r6, r4, r6
	ldmib fp, {r1, ip}
	ldr r3, [ip, #0xc]
	ldr r0, [r3, #8]
	add r0, r0, r1
	sub r0, r0, #1
	movmi r6, #0
	bl ovx64_3001EB4
	mul r0, r4, r0
	ldr lr, [fp, #0x10]
	add r2, lr, #0x17
	str r0, [fp, #-0x50]
	mov r1, lr
	ldr lr, [fp, #-0x50]
	mov r0, #0
	ldr r3, [r8]
	mov ip, r0
	cmp lr, r3
	movge lr, r3
	str lr, [fp, #-0x50]
_030020A4:
	strb ip, [r2], #-1
	cmp r2, r1
	bge _030020A4
	cmp r0, #1
	beq _03002198
_030020B8:
	mov r4, #0
	ldr r0, [fp, #4]
	mov r5, r4
	cmp r4, r0
	bge _03002174
_030020CC:
	mov r0, #0
	cmp r0, sl
	bge _03002158
	sub r1, fp, #0x40
_030020DC:
	ldr r2, [fp, #-0x48]
	ldr r3, [r2]
	add r3, r3, r6
	add ip, r3, r0
	ldr r3, [fp, #-0x50]
	cmp ip, r3
	bge _030021C0
	ldr lr, [fp, #8]
	ldr r3, [lr, #0xc]
	ldr r3, [r3, #0x10]
	cmp r3, #0
	beq _03002128
	ldrb r3, [r3, sb]
	cmp r3, #0
	ldrne r3, [r8, #4]
	ldrbne r2, [r3, ip]
	ldrne r3, [fp, #0x10]
	strbne r2, [r3, r4]
	b _03002138
_03002128:
	ldr r3, [r8, #4]
	ldr lr, [fp, #0x10]
	ldrb r2, [r3, ip]
	strb r2, [lr, r4]
_03002138:
	cmp r7, #0
	strbeq r7, [r1, r4]
	ldrbne r3, [r7, ip]
	strbne r3, [r1, r4]
	add r4, r4, #1
	add r0, r0, #1
	cmp r0, sl
	blt _030020DC
_03002158:
	add sb, sb, #1
	ldr r0, [fp, #-0x4c]
	add r5, r5, #1
	ldr r1, [fp, #4]
	add r6, r6, r0
	cmp r5, r1
	blt _030020CC
_03002174:
	ldr r0, [fp, #0x10]
	sub r1, fp, #0x40
	ldr r3, [fp, #8]
	sub r2, fp, #0x44
	bl ovx64_3002CCC
	cmn r0, #0xc9
	beq _03002310
	cmp r0, #1
	bne _030020B8
_03002198:
	ldr r2, [fp, #-0x48]
	ldr ip, [fp, #8]
	ldr lr, [fp, #-0x48]
	ldr r3, [r2]
	mov r4, #0
	ldr r2, [ip, #0x28]
	add r3, r3, r6
	str r3, [lr]
	cmp r2, r4
	bne _030021C8
_030021C0:
	mvn r0, #0x64
	b _03002310
_030021C8:
	ldr ip, [fp, #-0x4c]
	sub r3, r2, #1
	mul ip, r3, ip
	ldr r0, [fp, #8]
	ldr r1, [r0, #0x30]
	ldr r2, [r0, #0x2c]
	mul r6, r2, r1
	ldr r3, [r0, #0x40]
	cmp r2, r3
	mov r0, r2
	mvngt r0, #0xc8
	bgt _03002310
	ldr lr, [fp, #-0x4c]
	b _03002280
_03002200:
	mov r5, #0
	cmp r5, r0
	bge _03002280
_0300220C:
	mov r0, #0
	add r5, r5, #1
_03002214:
	cmp r0, r1
	bge _0300226C
	ldr r2, [fp, #-0x4c]
	cmp lr, r2
	addeq ip, ip, sl
	moveq lr, sl
	ldr r3, [r8]
	cmp ip, r3
	bge _0300226C
	ldr r2, [r8, #4]
	ldrb r3, [r2, ip]
	strb r3, [r2, r4]
	cmp r7, #0
	ldrbne r3, [r7, ip]
	strbne r3, [r7, r4]
	add r4, r4, #1
	add ip, ip, #1
	ldr r3, [fp, #8]
	add lr, lr, #1
	ldr r1, [r3, #0x30]
	add r0, r0, #1
	b _03002214
_0300226C:
	ldr r0, [fp, #8]
	ldr r3, [r0, #0x2c]
	cmp r5, r3
	mov r0, r3
	blt _0300220C
_03002280:
	cmp r4, r6
	bge _03002294
	ldr r3, [r8]
	cmp ip, r3
	blt _03002200
_03002294:
	ldr r3, [fp, #8]
	ldr r1, [fp, #-0x44]
	ldr r2, [r3, #0x28]
	ldr r3, [fp, #4]
	mla r3, r1, r3, r2
	ldr r2, [fp, #-0x4c]
	sub r3, r3, #1
	mul r2, r3, r2
	ldr ip, [fp, #8]
	ldr lr, [fp, #-0x48]
	ldr r3, [ip, #8]
	str r2, [lr]
	cmp r3, #0
	beq _030022EC
	sub r0, r0, #1
	ldr r1, [ip, #0x34]
	mov r2, #0
	mov lr, pc
	bx r3
_030022E0:
	cmp r0, #1
	mvneq r0, #15
	beq _03002310
_030022EC:
	ldr r3, [fp, #0x14]
	ldr r2, [fp, #8]
	str r3, [sp]
	mov r0, r8
	ldr r3, [fp, #0xc]
	mov r1, r7
	bl ovx64_3002318
	cmp r0, r6
	mvngt r0, #0x64
_03002310:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovx64_3002318
ovx64_3002318: @ 0x03002318
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x70
	mov ip, #0
	str ip, [fp, #-0x80]
	str ip, [fp, #-0x7c]
	str ip, [fp, #-0x88]
	str r0, [fp, #-0x70]
	mov r4, r2
	ldr r0, [r4, #0x24]
	str ip, [fp, #-0x8c]
	ldr ip, [r4, #0x38]
	mov sb, r1
	ldr r1, [r4, #0x30]
	mov r2, ip
	str r3, [fp, #-0x74]
	asr ip, ip, #1
	str ip, [fp, #-0x78]
	bl ovx64_3002EFC
	mov r2, r4
	ldr r0, [fp, #-0x80]
	mov r3, #1
	mov r1, r0
	bl ovx64_3002AA8
	ldr r3, [r4, #0x2c]
	ldr sl, [fp, #-0x80]
	cmp sl, r3
	bge _03002678
_0300238C:
	mov r6, sl
	ldr r3, [r4, #0x30]
	mov r5, #0
	cmp r5, r3
	bge _03002460
_030023A0:
	ldr r0, [fp, #-0x70]
	ldr r3, [r0]
	cmp r6, r3
	movge r1, #0
	bge _030023E0
	ldr r3, [r4, #0x34]
	cmp r5, r3
	ldrlt r2, [fp, #-0x70]
	ldrlt r3, [r2, #4]
	ldrblt r1, [r3, r6]
	blt _030023E0
	ldr r3, [fp, #-0x70]
	ldr r2, [r3, #4]
	ldrb r3, [r2, r6]
	mvn r3, r3
	and r1, r3, #0xff
_030023E0:
	ldr r3, [r4, #0x30]
	ldr r0, [r4, #0x18]
	ldr r2, [r4, #0x14]
	rsb r3, r5, r3
	ldrb r1, [r2, r1]
	add r3, r3, r0
	strb r1, [r3, #-1]
	cmp sb, #0
	bne _0300241C
	ldr r3, [r4, #0x30]
	ldr r2, [r4, #0x1c]
	rsb r3, r5, r3
	add r3, r3, r2
	strb sb, [r3, #-1]
	b _03002434
_0300241C:
	ldr r3, [r4, #0x30]
	ldr r1, [r4, #0x1c]
	ldrb r2, [sb, r6]
	rsb r3, r5, r3
	add r3, r3, r1
	strb r2, [r3, #-1]
_03002434:
	mov r0, sl
	mov r1, r5
	mov r2, r4
	mov r3, #0
	bl ovx64_3002AA8
	ldr r2, [r4, #0x2c]
	add r5, r5, #1
	ldr r3, [r4, #0x30]
	add r6, r6, r2
	cmp r5, r3
	blt _030023A0
_03002460:
	ldr ip, [fp, #-0x78]
	str ip, [sp]
	ldr r3, [r4, #0x24]
	str r3, [sp, #4]
	add r0, r4, #0x10
	ldm r0, {r0, r1, r2, ip}
	ldr r3, [r4, #0x30]
	str ip, [sp, #8]
	bl ovx64_3002F7C
	mov r8, r0
	cmn r8, #0xc9
	beq _030026A8
	ldr r3, [r4, #0x3c]
	strb r8, [r3, sl]
	cmp sl, #0
	bne _03002590
	ldr r0, [r4, #0x34]
	mov r5, sl
	ldr r7, [r4, #0x2c]
	cmp sl, r0
	mov r6, r0
	bge _030024E4
	ldr r2, [r4, #0x30]
	ldr r3, [r4, #0x18]
	sub lr, fp, #0x68
	ldr ip, [r4, #0x10]
	add r2, r2, r3
_030024CC:
	ldrb r1, [r2, #-1]!
	ldrb r3, [ip, r1]
	strb r3, [lr, r5]
	add r5, r5, #1
	cmp r5, r0
	blt _030024CC
_030024E4:
	mul ip, r6, r7
	cmn r8, #1
	beq _030026B0
	mov r3, #0
	str r3, [fp, #-0x30]
	str r3, [fp, #-0x34]
	str r3, [fp, #-0x38]
	str r3, [fp, #-0x2c]
	sub r0, fp, #0x68
	ldr r3, [fp, #-0x74]
	sub r1, fp, #0x38
	str r3, [sp]
	sub r2, fp, #0x6c
	mov r3, ip
	bl ovx64_3002704
	ldr ip, [fp, #-0x74]
	ldr r2, [r4, #0x3c]
	ldr r3, [ip, #0x3c]
	ldrb r1, [r2, sl]
	mvn r3, r3
	lsl r3, r3, #0x10
	str r3, [fp, #-0x84]
	strb r1, [fp, #-0x2b]
	mov r7, r0
	ldr r0, [fp, #-0x84]
	asr r3, r7, #0x10
	strb r3, [fp, #-0x2a]
	lsr r0, r0, #0x10
	str r0, [fp, #-0x84]
	cmp r7, #0
	blt _030026B8
	ldr r3, [r4, #8]
	cmp r3, #0
	beq _03002668
	ldr r0, [fp, #-0x38]
	ldr r1, [fp, #-0x6c]
	sub r2, fp, #0x34
	mov lr, pc
	bx r3
_03002580:
	cmp r0, #1
	bne _03002668
_03002588:
	mvn r0, #15
	b _030026FC
_03002590:
	ldr r1, [r4, #0x34]
	ldr r3, [fp, #4]
	ldr ip, [fp, #-0x80]
	ldr r2, [r3]
	add r3, ip, r1
	cmp r3, r2
	bgt _030026C0
	mov r6, #0
	mov r5, r6
	cmp r6, r1
	bge _03002624
	mvn r0, #0
_030025C0:
	ldr r3, [r4, #0x30]
	ldr r2, [r4, #0x18]
	ldr ip, [fp, #-0x7c]
	rsb r3, r5, r3
	add r3, r3, r2
	ldrb r1, [r3, r0]
	ldr r2, [r4, #0x10]
	ldrb r1, [r2, r1]
	ldr r2, [fp, #4]
	ldr r3, [r2, #4]
	strb r1, [r3, ip]
	add ip, ip, #1
	str ip, [fp, #-0x7c]
	tst r5, #1
	ldrne r2, [fp, #-0x88]
	addne r2, r2, r1
	strne r2, [fp, #-0x88]
	ldreq r3, [fp, #-0x88]
	addeq r3, r3, r1, lsl #8
	streq r3, [fp, #-0x88]
	eor r6, r6, r1
	ldr r3, [r4, #0x34]
	add r5, r5, #1
	cmp r5, r3
	blt _030025C0
_03002624:
	ldr r3, [r4, #8]
	cmp r3, #0
	beq _0300264C
	mov r0, sl
	mov r1, r8
	mov r2, #0
	mov lr, pc
	bx r3
_03002644:
	cmp r0, #1
	beq _03002588
_0300264C:
	ldr r3, [r4, #0x34]
	ldr ip, [fp, #-0x8c]
	ldr r0, [fp, #-0x80]
	add ip, ip, r6
	str ip, [fp, #-0x8c]
	add r0, r0, r3
	str r0, [fp, #-0x80]
_03002668:
	ldr r3, [r4, #0x2c]
	add sl, sl, #1
	cmp sl, r3
	blt _0300238C
_03002678:
	tst r7, #0x10000
	beq _030026C8
	asr r3, r7, #8
	ldr r2, [fp, #-0x8c]
	and r3, r3, #0xff
	add r2, r2, r3
	and r2, r2, #0xff
	and r3, r7, #0xff
	cmp r2, r3
	beq _030026C8
	mvn r0, #0x68
	b _030026FC
_030026A8:
	mov r0, r8
	b _030026FC
_030026B0:
	mvn r0, #0x67
	b _030026FC
_030026B8:
	mov r0, r7
	b _030026FC
_030026C0:
	mvn r0, #0xc9
	b _030026FC
_030026C8:
	ldr ip, [fp, #-0x74]
	ldr r3, [ip, #0x3c]
	tst r3, #0x100000
	beq _030026F8
	mov r3, #0xff00
	ldr r0, [fp, #-0x88]
	add r3, r3, #0xff
	ldr r2, [fp, #-0x84]
	and r3, r0, r3
	cmp r3, r2
	mvn r0, #0x69
	bne _030026FC
_030026F8:
	ldr r0, [fp, #-0x80]
_030026FC:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovx64_3002704
ovx64_3002704: @ 0x03002704
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x14
	mov r7, #1
	mov r4, r0
	mov r5, r2
	ldrb r0, [r4, r7]
	mov sl, r3
	ldrb ip, [r4]
	add r7, r7, r7
	orr r0, r0, ip, lsl #8
	lsl r0, r0, #0x10
	lsr lr, r0, #0x10
	cmp lr, #0x30
	str r1, [fp, #-0x2c]
	asr r6, r0, #0x10
	beq _03002754
_0300274C:
	mvn r0, #0x12c
	b _03002AA0
_03002754:
	ldrb ip, [r4, r7]
	ldrb r3, [r4, #0x2f]
	add r7, r7, #1
	mvn r3, r3
	and r3, r3, #0xff
	str r3, [fp, #-0x38]
	tst ip, #1
	beq _030027A8
	mov r8, #0
	mov r2, r8
	sub r0, lr, #1
_03002780:
	ldrb r3, [r4, r8]
	add r2, r2, r3
	add r8, r8, #1
	cmp r8, r0
	blt _03002780
	ldr r0, [fp, #-0x38]
	and r3, r2, #0xff
	orr r0, r0, r3, lsl #8
	str r0, [fp, #-0x38]
	b _030027B0
_030027A8:
	cmp ip, #0
	bne _03002A84
_030027B0:
	ldrb r1, [r4, r7]
	add r7, r7, #3
	ldrb r2, [r4, r7]
	ldr r0, [fp, #-0x38]
	add r7, r7, #1
	ldrb r3, [r4, r7]
	orr r0, r0, ip, lsl #16
	str r0, [fp, #-0x38]
	orr r3, r3, r2, lsl #8
	ldr r0, [fp, #4]
	add r7, r7, #3
	str r3, [r5]
	lsl r2, r6, #0x10
	str r3, [r0]
	lsr r8, r2, #0x10
	str r1, [r0, #4]
	add r3, r8, r3
	cmp sl, r3
	blt _03002A84
	ldrb r6, [r4, r7]
	add r7, r7, #1
	ldrb lr, [r4, r7]
	add r7, r7, #1
	ldrb r3, [r4, r7]
	add r7, r7, #1
	ldrb r2, [r4, r7]
	ldr r1, [fp, #4]
	add r7, r7, #1
	ldrb r0, [r4, r7]
	str r6, [r1, #8]
	add r7, r7, #1
	ldrb ip, [r4, r7]
	orr r2, r2, r3, lsl #8
	str r2, [r1, #0xc]
	ldr r3, [fp, #4]
	add r7, r7, #1
	ldrb r1, [r4, r7]
	str r0, [r3, #0x10]
	ldr r0, [fp, #4]
	add r7, r7, #1
	ldrb r3, [r4, r7]
	str ip, [r0, #0x14]
	orr r3, r3, r1, lsl #8
	str r3, [r0, #0x18]
	add r7, r7, #1
	ldr r1, [fp, #-0x2c]
	orr r3, r3, r2, lsl #16
	str r3, [r1]
	cmp r7, lr
	bne _03002A84
	ldrb ip, [r4, r7]
	subs r3, ip, #0x10
	movne r3, #1
	cmp ip, #0
	movne lr, r3
	moveq lr, #0
	cmp lr, #0
	bne _03002A84
	add r1, r4, r7
	ldrb r3, [r1, #1]
	mov r0, #2
	ldrb r2, [r1, r0]
	lsl r3, r3, #8
	orr r3, r3, ip, lsl #16
	add r3, r3, r2
	ldr r2, [fp, #4]
	str r3, [r2, #0x3c]
	add r5, r7, #3
	ldrb r2, [r4, r5]
	ldrb r3, [r1, r0]
	add r5, r7, #4
	ldr r0, [fp, #4]
	lsl r2, r2, #0x10
	str r3, [r0, #0x40]
	lsr r1, r2, #0x10
	add r3, r1, r5
	cmp r3, r8
	bhi _03002A84
	cmp r6, #0x10
	str lr, [fp, #-0x34]
	add sb, r4, r5
	bne _0300274C
	mov r8, lr
	cmp r8, r1
	bge _03002A90
	str r2, [fp, #-0x3c]
_03002908:
	add r0, sb, r8
	bl ovx64_3002BD4
	add r8, r8, #2
	lsl r3, r0, #0x10
	add r0, sb, r8
	asr r4, r3, #0x10
	bl ovx64_3002BD4
	add r8, r8, #2
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	lsl r5, r0, #0x10
	lsr r2, r5, #0x10
	ldr r1, [fp, #-0x3c]
	add r3, r2, r8
	str r0, [fp, #-0x30]
	cmp r3, r1, lsr #16
	bgt _03002A84
	lsl r3, r4, #0x10
	lsr r3, r3, #0x10
	cmp r3, #1
	beq _030029A4
	bgt _03002970
	cmp r3, #0
	beq _03002980
	mov r0, r5
	b _03002A70
_03002970:
	cmp r3, #0x22
	beq _030029EC
	mov r0, r5
	b _03002A70
_03002980:
	ldr r1, _03002A8C @ =ovx64_30041AC
	add r0, sb, r8
	bl ovx64_3002C24
	cmp r0, #0
	beq _0300274C
	mov r2, #1
	str r2, [fp, #-0x34]
	mov r0, r5
	b _03002A70
_030029A4:
	cmp r2, #7
	bhi _03002A84
	mov r4, #0
	cmp r4, r2
	ldr r3, [fp, #4]
	mov r0, r5
	add lr, r3, #0x44
	bge _030029E0
	mov ip, lr
	add r1, sb, r8
_030029CC:
	ldrb r3, [r1, r4]
	strb r3, [ip, r4]
	add r4, r4, #1
	cmp r4, r2
	blt _030029CC
_030029E0:
	mov r3, #0
	strb r3, [lr, r4]
	b _03002A70
_030029EC:
	cmp r2, #9
	bhi _03002A84
	lsr r3, r5, #0x12
	add r7, r3, #1
	mov r5, #0
	mov r4, #1
	cmp r4, r7
	and sl, r2, r4
	bge _03002A34
	add r6, sb, r8
_03002A14:
	add r0, r6, r5
	bl ovx64_3002BF4
	ldr r1, [fp, #-0x2c]
	str r0, [r1, r4, lsl #2]
	add r5, r5, #4
	add r4, r4, #1
	cmp r4, r7
	blt _03002A14
_03002A34:
	cmp sl, #0
	beq _03002A58
	ldr r0, [fp, #-0x2c]
	add r3, sb, r8
	ldrb r2, [r3, r5]
	mov r1, r7
	bl ovx64_3002C70
	cmp r0, #0
	beq _03002A84
_03002A58:
	ldr r2, [fp, #4]
	ldr r1, [fp, #-0x30]
	ldrb r3, [r2, #4]
	ldr r2, [fp, #-0x2c]
	lsl r0, r1, #0x10
	strb r3, [r2, r7, lsl #2]
_03002A70:
	ldr r3, [fp, #-0x3c]
	add r8, r8, r0, lsr #16
	cmp r8, r3, lsr #16
	blt _03002908
	b _03002A90
_03002A84:
	mvn r0, #0x67
	b _03002AA0
	.align 2, 0
_03002A8C: .4byte ovx64_30041AC
_03002A90:
	ldr r0, [fp, #-0x34]
	cmp r0, #0
	ldr r0, [fp, #-0x38]
	mvneq r0, #0x12c
_03002AA0:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovx64_3002AA8
ovx64_3002AA8: @ 0x03002AA8
	mov ip, sp
	push {r4, r5, r6, r7, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x10
	mov r6, r0
	mov r7, r1
	mov r4, r2
	ldr ip, _03002B88 @ =ovx64_300419C
	mov r5, r3
	ldm ip, {r0, r1, r2, r3}
	sub lr, fp, #0x2c
	stm lr, {r0, r1, r2, r3}
	ldr r2, [r4, #0xc]
	ldr r3, [r2, #0x10]
	cmp r3, #0
	beq _03002BCC
	ldr r3, [r4, #0x44]
	tst r3, #1
	beq _03002BCC
	cmp r5, #0
	beq _03002B5C
	ldr r3, [r2]
	tst r3, #4
	beq _03002B1C
	ldr r2, _03002B8C @ =ovx64_3004144
	mov r3, #0x50
	str r3, [r2]
	mov r0, r2
	b _03002B2C
_03002B1C:
	ldr r2, _03002B8C @ =ovx64_3004144
	mov r3, #0x68
	mov r0, r2
	str r3, [r2]
_03002B2C:
	ldr r2, [r4, #0xc]
	ldr r3, [r2]
	ldr r1, [r0]
	and r3, r3, #3
	ldr r2, [lr, r3, lsl #2]
	rsb r1, r2, r1
	str r1, [r0]
	ldr r3, [r4, #0x28]
	ldr r2, _03002B90 @ =ovx64_3004148
	sub r3, r3, #1
	str r3, [r2]
	b _03002BCC
_03002B5C:
	ldr r3, [r4, #0x2c]
	mla r0, r3, r7, r6
	ldr r2, _03002B8C @ =ovx64_3004144
	ldr r1, [r2]
	bl ovx64_3001EB4
	ldr r2, _03002B90 @ =ovx64_3004148
	ldr r3, [r2]
	adds r0, r0, r3
	bpl _03002B94
	mov ip, #1
	b _03002BAC
	.align 2, 0
_03002B88: .4byte ovx64_300419C
_03002B8C: .4byte ovx64_3004144
_03002B90: .4byte ovx64_3004148
_03002B94:
	ldr r3, [r4, #0xc]
	ldr r2, [r3, #0x10]
	ldrb r1, [r2, r0]
	cmp r1, #0
	movne ip, #0
	moveq ip, #1
_03002BAC:
	ldr r2, [r4, #0x30]
	mvn r0, #0
	ldr r1, [r4, #0x1c]
	rsb r2, r7, r2
	add r2, r2, r1
	ldrb r3, [r2, r0]
	orr r3, r3, ip
	strb r3, [r2, r0]
_03002BCC:
	ldmdb fp, {r4, r5, r6, r7, fp, sp, lr}
	bx lr

	arm_func_start ovx64_3002BD4
ovx64_3002BD4: @ 0x03002BD4
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	ldrb r0, [r0, #1]
	sub fp, ip, #4
	orr r0, r0, r3, lsl #8
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx64_3002BF4
ovx64_3002BF4: @ 0x03002BF4
	mov ip, sp
	push {fp, ip, lr, pc}
	ldrb r3, [r0]
	ldrb r2, [r0, #1]
	sub fp, ip, #4
	ldrb r1, [r0, #2]
	orr r3, r3, r2, lsl #8
	ldrb r0, [r0, #3]
	orr r3, r3, r1, lsl #16
	orr r0, r3, r0, lsl #24
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx64_3002C24
ovx64_3002C24: @ 0x03002C24
	mov ip, sp
	push {fp, ip, lr, pc}
	sub fp, ip, #4
	mov ip, #0
	mov lr, r2
	cmp ip, lr
	bge _03002C64
_03002C40:
	ldrb r2, [r0, ip]
	ldrb r3, [r1, ip]
	cmp r2, r3
	movne r0, #0
	ldmdbne fp, {fp, sp, lr}
	bxne lr
	add ip, ip, #1
	cmp ip, lr
	blt _03002C40
_03002C64:
	mov r0, #1
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx64_3002C70
ovx64_3002C70: @ 0x03002C70
	mov ip, sp
	push {fp, ip, lr, pc}
	and r2, r2, #0xff
	sub fp, ip, #4
	mov ip, #0
	mov lr, r1
	cmp ip, lr
	bge _03002CB8
_03002C90:
	ldr r3, [r0, ip, lsl #2]
	ldrb r1, [r0, ip, lsl #2]
	eor r2, r2, r3, lsr #24
	eor r2, r2, r3, asr #16
	eor r2, r2, r3, lsr #8
	and r2, r2, #0xff
	eor r2, r1, r2
	add ip, ip, #1
	cmp ip, lr
	blt _03002C90
_03002CB8:
	cmp r2, #0
	movne r0, #0
	moveq r0, #1
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx64_3002CCC
ovx64_3002CCC: @ 0x03002CCC
	mov ip, sp
	push {r4, r5, r6, r7, r8, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0xc
	mov r8, r0
	mov r0, r1
	mov r4, r2
	mov r6, r3
	mov r5, #0
_03002CF0:
	cmp r5, #7
	ldrble r1, [r8, r5]
	ldrbgt r3, [r8, r5]
	mvngt r3, r3
	andgt r1, r3, #0xff
	add r2, r6, #0x14
	ldm r2, {r2, r3}
	add r3, r3, #0x17
	ldrb r1, [r2, r1]
	rsb r3, r5, r3
	strb r1, [r3]
	cmp r0, #0
	bne _03002D38
	ldr r3, [r6, #0x1c]
	add r3, r3, #0x17
	rsb r3, r5, r3
	strb r0, [r3]
	b _03002D4C
_03002D38:
	ldr r3, [r6, #0x1c]
	ldrb r2, [r0, r5]
	add r3, r3, #0x17
	rsb r3, r5, r3
	strb r2, [r3]
_03002D4C:
	add r5, r5, #1
	cmp r5, #0x17
	ble _03002CF0
	mov r3, #8
	str r3, [sp]
	ldr r2, [r6, #0x20]
	str r2, [sp, #4]
	ldr r3, [r6, #0x1c]
	str r3, [sp, #8]
	add r0, r6, #0x10
	ldm r0, {r0, r1, r2}
	mov r3, #0x18
	bl ovx64_3002F7C
	cmn r0, #1
	moveq r0, #0
	beq _03002E38
	cmn r0, #0xc9
	beq _03002E38
	ldr r0, [r6, #0x18]
	ldr r1, [r6, #0x10]
	ldrb r2, [r0, #0x16]
	ldrb r3, [r1, r2]
	str r3, [r4]
	ldrb r2, [r0, #0x15]
	ldrb ip, [r0, #0x14]
	ldrb lr, [r1, r2]
	ldrb r3, [r1, ip]
	orr r3, r3, lr, lsl #8
	str r3, [r6, #0x28]
	ldrb r2, [r0, #0x13]
	ldrb ip, [r1, r2]
	str ip, [r6, #0x30]
	ldrb r3, [r0, #0x12]
	ldrb r4, [r1, r3]
	str r4, [r6, #0x38]
	ldrb r3, [r0, #0x11]
	ldrb r2, [r0, #0x10]
	mov r5, #0
	ldrb lr, [r1, r3]
	mov r7, r1
	ldrb r3, [r1, r2]
	rsb ip, r4, ip
	orr r3, r3, lr, lsl #8
	str r3, [r6, #0x2c]
	add r0, r0, #0x17
	str ip, [r6, #0x34]
_03002E04:
	cmp r5, #7
	ldrble r3, [r0]
	ldrble r2, [r7, r3]
	strble r2, [r8, r5]
	ldrbgt r2, [r0]
	ldrbgt r3, [r7, r2]
	mvngt r3, r3
	strbgt r3, [r8, r5]
	sub r0, r0, #1
	add r5, r5, #1
	cmp r5, #0x17
	ble _03002E04
	mov r0, #1
_03002E38:
	ldmdb fp, {r4, r5, r6, r7, r8, fp, sp, lr}
	bx lr

	arm_func_start ovx64_3002E40
ovx64_3002E40: @ 0x03002E40
	mov ip, sp
	push {r4, r5, r6, fp, ip, lr, pc}
	mov r3, #1
	strb r3, [r0]
	sub fp, ip, #4
	mov ip, r3
	mov r4, ip
	lsl r5, r3, r2
	sub lr, r5, #1
	cmp r4, lr
	bge _03002EA0
	sub r3, r2, #1
	lsl r2, r3, #2
	ldr r6, _03002EEC @ =ovx64_300414C
_03002E78:
	lsl ip, ip, #1
	cmp r5, ip
	ldrle r3, [r6, r2]
	andle ip, ip, lr
	eorle ip, ip, r3
	strb ip, [r0, r4]
	sub lr, r5, #1
	add r4, r4, #1
	cmp r4, lr
	blt _03002E78
_03002EA0:
	mov r2, #0
	mov r4, r2
	add r3, r5, r0
	strb r2, [r3, #-1]
	cmp r4, r5
	bge _03002EF4
_03002EB8:
	mov r2, #0
	cmp r2, r5
	add ip, r4, #1
	bge _03002EE0
_03002EC8:
	ldrb r3, [r0, r2]
	cmp r4, r3
	strbeq r2, [r1, r4]
	add r2, r2, #1
	cmp r2, r5
	blt _03002EC8
_03002EE0:
	mov r4, ip
	cmp r4, r5
	b _03002EF0
	.align 2, 0
_03002EEC: .4byte ovx64_300414C
_03002EF0:
	blt _03002EB8
_03002EF4:
	ldmdb fp, {r4, r5, r6, fp, sp, lr}
	bx lr

	arm_func_start ovx64_3002EFC
ovx64_3002EFC: @ 0x03002EFC
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	mov r3, #0
	sub fp, ip, #4
	sub sp, sp, #4
	mov ip, r3
	mov sb, r2
	cmp r3, sb
	str r0, [fp, #-0x2c]
	mov r6, r1
	bge _03002F74
_03002F28:
	mov r4, #0
	cmp r4, r6
	add r8, ip, r6
	add sl, r3, #1
	bge _03002F64
	add r7, r3, #0x78
	ldr r3, [fp, #-0x2c]
	add r5, r3, ip
_03002F48:
	and r0, r7, #0xff
	mov r1, r4
	bl ovx64_300375C
	strb r0, [r5, r4]
	add r4, r4, #1
	cmp r4, r6
	blt _03002F48
_03002F64:
	mov ip, r8
	mov r3, sl
	cmp r3, sb
	blt _03002F28
_03002F74:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovx64_3002F7C
ovx64_3002F7C: @ 0x03002F7C
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x54
	ldr ip, _03003220 @ =ovx64_30041B8
	ldm ip, {r5, lr}
	add r4, r5, #0xf5
	str r4, [ip]
	sub lr, lr, #0xf5
	str lr, [ip, #4]
	str r0, [fp, #-0x34]
	mov sl, ip
	str r1, [fp, #-0x38]
	cmp lr, #0
	str r2, [fp, #-0x3c]
	add sb, r5, #0xa4
	str r3, [fp, #-0x40]
	add r1, r5, #0x21
	str r1, [fp, #-0x44]
	add r2, r5, #0x42
	str r2, [fp, #-0x48]
	add r3, r5, #0x63
	str r3, [fp, #-0x4c]
	add r1, r5, #0x84
	str r1, [fp, #-0x50]
	add r2, r5, #0x94
	str r2, [fp, #-0x54]
	add r3, r5, #0xc5
	str r3, [fp, #-0x58]
	add r1, r5, #0xd5
	str r1, [fp, #-0x5c]
	add r6, r5, #0xe5
	mvnlt r0, #0xc8
	blt _03003388
	mov r4, #0
	ldr r3, [fp, #4]
	mov r2, #0xff
	lsl r3, r3, #1
_03003014:
	ldr ip, [fp, #-0x44]
	strb r2, [ip, r4]
	strb r2, [r5, r4]
	strb r2, [sb, r4]
	ldr r1, [fp, #-0x48]
	strb r2, [r1, r4]
	ldr ip, [fp, #-0x4c]
	strb r2, [ip, r4]
	add r4, r4, #1
	cmp r4, #0x20
	ble _03003014
	ldr r0, [fp, #-0x34]
	ldr r1, [fp, #-0x38]
	str r5, [sp]
	mov r8, r3
	str r8, [sp, #4]
	ldr r3, [fp, #-0x40]
	ldr r2, [fp, #8]
	str r3, [sp, #8]
	ldr r3, [fp, #-0x3c]
	bl ovx64_30037B4
	mov r2, #0
	mov r4, r2
	cmp r2, r8
	bge _03003090
_03003078:
	ldrb r3, [r5, r4]
	cmp r3, #0xff
	addeq r2, r2, #1
	add r4, r4, #1
	cmp r4, r8
	blt _03003078
_03003090:
	cmp r2, r8
	bne _030030B0
	ldr r3, [sl, #4]
	str r5, [sl]
	add r3, r3, #0xf5
	str r3, [sl, #4]
	mov r0, #0
	b _03003388
_030030B0:
	mov r3, #0
	str r3, [fp, #-0x2c]
	mov r7, r3
	strb r7, [sb]
	ldr ip, [fp, #-0x40]
	mov r4, r7
	cmp r7, ip
	bge _03003140
_030030D0:
	ldr r1, [fp, #0xc]
	ldrb r3, [r1, r4]
	cmp r3, #0
	beq _03003130
	mov r3, #0
	strb r3, [r6]
	strb r4, [r6, #1]
	ldr r0, [fp, #-0x34]
	str sb, [sp]
	ldr r1, [fp, #-0x38]
	ldr ip, [fp, #-0x2c]
	mov r2, sb
	str ip, [sp, #4]
	add r3, r3, #1
	str r3, [sp, #8]
	sub ip, fp, #0x2c
	str ip, [sp, #0xc]
	mov r3, r6
	bl ovx64_3003390
	cmp r0, #1
	bne _03003370
	ldr r2, [fp, #-0x58]
	strb r4, [r2, r7]
	add r7, r7, #1
_03003130:
	ldr r3, [fp, #-0x40]
	add r4, r4, #1
	cmp r4, r3
	blt _030030D0
_03003140:
	cmp r7, r8
	bge _03003208
	mov r0, r5
	bl ovx64_300386C
	ldr ip, [fp, #-0x44]
	ldr r1, [fp, #-0x38]
	str ip, [sp]
	stmib sp, {r0, r7}
	sub r0, fp, #0x30
	str r0, [sp, #0xc]
	mov r2, r5
	ldr r0, [fp, #-0x34]
	mov r3, sb
	bl ovx64_3003390
	cmp r0, #1
	bne _03003370
	ldr r1, [fp, #-0x48]
	rsb r3, r7, r8
	str r1, [sp]
	asr r6, r3, #1
	str r6, [sp, #8]
	ldr r0, [fp, #-0x34]
	str r7, [sp, #0xc]
	add r3, r8, #1
	str r3, [sp, #0x10]
	ldr r1, [fp, #-0x38]
	ldr r3, [fp, #-0x30]
	ldr r2, [fp, #-0x44]
	str r3, [sp, #4]
	ldr r3, [fp, #-0x4c]
	bl ovx64_3003AE0
	cmp r0, #1
	bne _03003370
	ldr r0, [fp, #-0x4c]
	bl ovx64_300386C
	cmp r6, r0
	blt _03003208
	ldr r0, [fp, #-0x4c]
	bl ovx64_300386C
	mov r6, r0
	ldr r0, [fp, #-0x34]
	ldr r1, [fp, #-0x38]
	str r6, [sp]
	ldr r3, [fp, #-0x40]
	ldr r2, [fp, #-0x4c]
	str r3, [sp, #4]
	ldr r3, [fp, #-0x50]
	bl ovx64_3003510
	cmn r0, #6
	bne _03003224
_03003208:
	ldr r3, [sl, #4]
	str r5, [sl]
	add r3, r3, #0xf5
	str r3, [sl, #4]
	mvn r0, #0
	b _03003388
	.align 2, 0
_03003220: .4byte ovx64_30041B8
_03003224:
	ldr ip, [fp, #-0x4c]
	str ip, [sp]
	str sb, [sp, #4]
	ldr r1, [fp, #-0x50]
	str r1, [sp, #8]
	ldr r2, [fp, #-0x58]
	str r2, [sp, #0xc]
	ldr r0, [fp, #-0x34]
	str r6, [sp, #0x10]
	ldr r1, [fp, #-0x38]
	str r7, [sp, #0x14]
	ldr r3, [fp, #-0x54]
	ldr r2, [fp, #8]
	str r3, [sp, #0x18]
	ldr ip, [fp, #-0x5c]
	ldr r3, [fp, #-0x48]
	str ip, [sp, #0x1c]
	mov r4, #0
	bl ovx64_30038B8
	cmp r4, r6
	bge _030032B8
_03003278:
	sub r1, fp, #0x54
	ldm r1, {r1, r2}
	ldr r0, [fp, #-0x34]
	ldr ip, [fp, #-0x3c]
	ldrb r3, [r1, r4]
	ldrb r1, [r2, r4]
	ldrb r2, [ip, r1]
	ldr r1, [fp, #-0x38]
	bl ovx64_3003668
	ldr r1, [fp, #-0x50]
	ldrb r3, [r1, r4]
	ldr r2, [fp, #-0x3c]
	add r4, r4, #1
	strb r0, [r2, r3]
	cmp r4, r6
	blt _03003278
_030032B8:
	mov r4, #0
	cmp r4, r7
	bge _03003304
_030032C4:
	ldr ip, [fp, #-0x5c]
	ldr r2, [fp, #-0x58]
	ldr r0, [fp, #-0x34]
	ldrb r3, [ip, r4]
	ldrb r1, [r2, r4]
	ldr ip, [fp, #-0x3c]
	ldrb r2, [ip, r1]
	ldr r1, [fp, #-0x38]
	bl ovx64_3003668
	ldr r1, [fp, #-0x58]
	ldrb r3, [r1, r4]
	ldr r2, [fp, #-0x3c]
	add r4, r4, #1
	strb r0, [r2, r3]
	cmp r4, r7
	blt _030032C4
_03003304:
	ldr r0, [fp, #-0x34]
	str r5, [sp]
	ldr r1, [fp, #-0x38]
	str r8, [sp, #4]
	ldr r3, [fp, #-0x40]
	ldr r2, [fp, #8]
	str r3, [sp, #8]
	ldr r3, [fp, #-0x3c]
	bl ovx64_30037B4
	mov r2, #0
	mov r4, r2
	cmp r2, r8
	bge _03003350
_03003338:
	ldrb r3, [r5, r4]
	cmp r3, #0xff
	addeq r2, r2, #1
	add r4, r4, #1
	cmp r4, r8
	blt _03003338
_03003350:
	ldr r3, [sl, #4]
	str r5, [sl]
	add r3, r3, #0xf5
	str r3, [sl, #4]
	cmp r2, r8
	beq _03003384
	mvn r0, #0
	b _03003388
_03003370:
	ldr r3, [sl, #4]
	str r5, [sl]
	add r3, r3, #0xf5
	str r3, [sl, #4]
	b _03003388
_03003384:
	add r0, r6, r7
_03003388:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovx64_3003390
ovx64_3003390: @ 0x03003390
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x1c
	ldr r5, _03003444 @ =ovx64_30041B8
	mov r4, #0x240
	ldr r7, [r5]
	add r4, r4, #2
	ldr ip, [r5, #4]
	add lr, r7, r4
	str lr, [r5]
	rsb ip, r4, ip
	str ip, [r5, #4]
	ldr sb, [fp, #8]
	add r6, fp, #0xc
	ldm r6, {r6, sl}
	str r0, [fp, #-0x2c]
	str r1, [fp, #-0x30]
	mov r8, r2
	str r3, [fp, #-0x34]
	cmp ip, #0
	mvnlt r0, #0xc8
	blt _03003500
	mov r4, #0
	mov lr, r4
	add r3, sb, r6
	str r3, [sl]
	add r0, r6, #1
	str r0, [fp, #-0x38]
	cmp lr, r3
	bgt _03003470
_0300340C:
	mov ip, #0
	cmp ip, r6
	add r1, r4, #1
	add r0, lr, #1
	bgt _0300345C
	mov r5, #0xff
_03003424:
	subs r3, lr, ip
	bmi _03003448
	cmp r3, sb
	bgt _03003448
	ldrb r2, [r8, r3]
	add r3, r4, ip
	strb r2, [r7, r3]
	b _03003450
	.align 2, 0
_03003444: .4byte ovx64_30041B8
_03003448:
	add r3, r4, ip
	strb r5, [r7, r3]
_03003450:
	add ip, ip, #1
	cmp ip, r6
	ble _03003424
_0300345C:
	add r4, r1, r6
	ldr r3, [sl]
	mov lr, r0
	cmp lr, r3
	ble _0300340C
_03003470:
	ldr r2, [fp, #4]
	str r2, [sp]
	ldr r0, [fp, #-0x2c]
	ldr r2, [fp, #-0x38]
	ldr r3, [sl]
	str r2, [sp, #8]
	add r3, r3, #1
	str r3, [sp, #4]
	ldr r1, [fp, #-0x30]
	ldr r3, [fp, #-0x34]
	mov r2, r7
	bl ovx64_30037B4
	mov r2, #0
	ldr r1, [sl]
	mov lr, r2
	cmp r2, r1
	bgt _030034D0
_030034B4:
	ldr r0, [fp, #4]
	ldrb r3, [r0, lr]
	cmp r3, #0xff
	addeq r2, r2, #1
	add lr, lr, #1
	cmp lr, r1
	ble _030034B4
_030034D0:
	ldr r3, [sl]
	add r3, r3, #1
	cmp r2, r3
	moveq r3, #0
	streq r3, [sl]
	ldr r2, _03003504 @ =ovx64_30041B8
	ldr r3, [r2, #4]
	mov r0, #1
	str r7, [r2]
	add r3, r3, #0x240
	add r3, r3, #2
	str r3, [r2, #4]
_03003500:
	b _03003508
	.align 2, 0
_03003504: .4byte ovx64_30041B8
_03003508:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovx64_3003510
ovx64_3003510: @ 0x03003510
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x18
	mov ip, #0
	str ip, [fp, #-0x3c]
	mov lr, #1
	str lr, [fp, #-0x38]
	mov r8, ip
	ldr ip, [fp, #4]
	str r0, [fp, #-0x2c]
	str r1, [fp, #-0x30]
	mov sb, r2
	str r3, [fp, #-0x34]
	cmp lr, ip
	bgt _0300364C
_03003550:
	ldr r0, [fp, #-0x38]
	ldr lr, [fp, #8]
	add r0, r0, #1
	str r0, [fp, #-0x40]
	cmp r8, lr
	bge _03003614
_03003568:
	and r0, r8, #0xff
	bl ovx64_3003694
	mov r5, #1
	and sl, r0, #0xff
	ldr r1, [fp, #4]
	add r7, r8, r5
	ldrb r6, [sb]
	cmp r5, r1
	bgt _030035D8
_0300358C:
	and r0, sl, #0xff
	ldrb r4, [sb, r5]
	mov r1, r5
	bl ovx64_300375C
	mov r1, r0
	mov r0, r4
	and r1, r1, #0xff
	bl ovx64_30036CC
	mov r3, r0
	ldr r0, [fp, #-0x2c]
	and r3, r3, #0xff
	ldr r1, [fp, #-0x30]
	mov r2, r6
	bl ovx64_3003668
	and r6, r0, #0xff
	ldr r2, [fp, #4]
	add r5, r5, #1
	cmp r5, r2
	ble _0300358C
_030035D8:
	cmp r6, #0xff
	bne _03003604
	sub ip, fp, #0x38
	ldm ip, {ip, lr}
	add r3, ip, lr
	strb r8, [r3, #-1]
	ldr r0, [fp, #-0x3c]
	add r0, r0, #1
	str r0, [fp, #-0x3c]
	mov r8, r7
	b _03003614
_03003604:
	ldr r1, [fp, #8]
	mov r8, r7
	cmp r8, r1
	blt _03003568
_03003614:
	ldr r2, [fp, #-0x38]
	ldr r3, [fp, #-0x3c]
	cmp r2, r3
	beq _03003638
	sub ip, fp, #0x38
	ldm ip, {ip, lr}
	mvn r2, #0
	add r3, ip, lr
	strb r2, [r3, r2]
_03003638:
	ldr r0, [fp, #-0x40]
	ldr r1, [fp, #4]
	str r0, [fp, #-0x38]
	cmp r0, r1
	ble _03003550
_0300364C:
	ldr r2, [fp, #4]
	ldr r3, [fp, #-0x3c]
	cmp r2, r3
	moveq r0, #1
	mvnne r0, #5
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovx64_3003668
ovx64_3003668: @ 0x03003668
	mov ip, sp
	push {fp, ip, lr, pc}
	and r2, r2, #0xff
	sub fp, ip, #4
	ldrb ip, [r0, r2]
	and r3, r3, #0xff
	ldrb r2, [r0, r3]
	eor r2, r2, ip
	ldrb r0, [r1, r2]
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx64_3003694
ovx64_3003694: @ 0x03003694
	mov ip, sp
	push {fp, ip, lr, pc}
	ands r0, r0, #0xff
	movne r2, #0
	moveq r2, #1
	cmp r0, #0xff
	movne r3, #0
	moveq r3, #1
	orrs r2, r2, r3
	sub fp, ip, #4
	mvneq r0, r0
	andeq r0, r0, #0xff
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx64_30036CC
ovx64_30036CC: @ 0x030036CC
	mov ip, sp
	push {fp, ip, lr, pc}
	and r3, r0, #0xff
	and r0, r1, #0xff
	cmp r0, #0xff
	cmpne r3, #0xff
	sub fp, ip, #4
	beq _03003708
	add r0, r3, r0
	sub r3, r0, #0xff
	cmp r0, #0xfe
	movgt r0, r3
	and r0, r0, #0xff
	ldmdb fp, {fp, sp, lr}
	bx lr
_03003708:
	mov r0, #0xff
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx64_3003714
ovx64_3003714: @ 0x03003714
	mov ip, sp
	push {fp, ip, lr, pc}
	and r3, r0, #0xff
	and r0, r1, #0xff
	cmp r0, #0xff
	cmpne r3, #0xff
	sub fp, ip, #4
	beq _03003750
	rsb r0, r0, r3
	add r3, r0, #0xff
	cmp r0, #0
	movlt r0, r3
	and r0, r0, #0xff
	ldmdb fp, {fp, sp, lr}
	bx lr
_03003750:
	mov r0, #0xff
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx64_300375C
ovx64_300375C: @ 0x0300375C
	mov ip, sp
	push {fp, ip, lr, pc}
	mov r3, #0
	cmp r3, r1
	sub fp, ip, #4
	and ip, r0, #0xff
	bge _030037A8
_03003778:
	cmp ip, #0xff
	cmpne r3, #0xff
	moveq r0, #0xff
	beq _0300379C
	add r3, r3, ip
	sub r2, r3, #0xff
	cmp r3, #0xfe
	movle r0, r3
	movgt r0, r2
_0300379C:
	and r3, r0, #0xff
	subs r1, r1, #1
	bne _03003778
_030037A8:
	mov r0, r3
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx64_30037B4
ovx64_30037B4: @ 0x030037B4
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	mov lr, #0
	mov r7, lr
	mov sb, r1
	mov sl, r2
	ldr ip, [fp, #8]
	mov r8, r3
	ldr r4, [fp, #0xc]
	cmp lr, ip
	bge _03003864
_030037E4:
	mov r1, #0xff
	mov ip, #0
	cmp ip, r4
	add r6, r7, r4
	add r5, lr, #1
	bge _03003848
_030037FC:
	add r3, r7, ip
	ldrb r2, [sl, r3]
	ldrb r3, [r8, ip]
	cmp r3, #0xff
	cmpne r2, #0xff
	moveq r2, #0xff
	beq _03003828
	add r3, r2, r3
	sub r2, r3, #0xff
	cmp r3, #0xfe
	movle r2, r3
_03003828:
	ldrb r3, [r0, r1]
	and r2, r2, #0xff
	ldrb r1, [r0, r2]
	add ip, ip, #1
	eor r1, r1, r3
	ldrb r1, [sb, r1]
	cmp ip, r4
	blt _030037FC
_03003848:
	ldr r3, [fp, #4]
	strb r1, [r3, lr]
	mov r7, r6
	ldr ip, [fp, #8]
	mov lr, r5
	cmp lr, ip
	blt _030037E4
_03003864:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovx64_300386C
ovx64_300386C: @ 0x0300386C
	mov ip, sp
	push {fp, ip, lr, pc}
	mov r1, #0x20
	ldrb r3, [r0, r1]
	sub fp, ip, #4
	cmp r3, #0xff
	bne _030038AC
_03003888:
	sub r1, r1, #1
	ldrb r2, [r0, r1]
	cmp r1, #0
	movle r3, #0
	movgt r3, #1
	cmp r2, #0xff
	movne r3, #0
	cmp r3, #0
	bne _03003888
_030038AC:
	mov r0, r1
	ldmdb fp, {fp, sp, lr}
	bx lr

	arm_func_start ovx64_30038B8
ovx64_30038B8: @ 0x030038B8
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #8
	mov r5, #0
	ldr ip, [fp, #0x14]
	mov sb, r0
	str r2, [fp, #-0x2c]
	mov sl, r1
	str r3, [fp, #-0x30]
	cmp r5, ip
	bge _030039D8
_030038E8:
	ldr r1, [fp, #0xc]
	ldr r2, [fp, #-0x2c]
	ldrb r0, [r1, r5]
	ldrb r8, [r2, r0]
	mov r6, #0
	bl ovx64_3003694
	and r7, r0, #0xff
	mov r0, sb
	mov r1, sl
	ldr r2, [fp, #-0x30]
	mov r3, r7
	bl ovx64_3003DF0
	mov r4, r0
	mov r0, sb
	mov r1, sl
	mov r3, r7
	ldr r2, [fp, #8]
	and r4, r4, #0xff
	bl ovx64_3003DF0
	mov r1, r0
	mov r0, r4
	and r1, r1, #0xff
	bl ovx64_3003714
	ldr r3, [fp, #0x1c]
	strb r0, [r3, r5]
	ldrb r0, [r3, r5]
	mov r1, r8
	bl ovx64_3003714
	ldr ip, [fp, #0x1c]
	strb r0, [ip, r5]
	ldr r0, [fp, #0x14]
	add r4, r5, #1
	cmp r6, r0
	bge _030039C8
_03003970:
	ldr r1, [fp, #0xc]
	ldrb r0, [r1, r6]
	mov r1, r7
	bl ovx64_30036CC
	mov r3, r0
	mov r0, sb
	mov r1, sl
	mov r2, #0
	and r3, r3, #0xff
	bl ovx64_3003668
	and r1, r0, #0xff
	cmp r1, #0xff
	beq _030039B8
	ldr r2, [fp, #0x1c]
	ldrb r0, [r2, r5]
	bl ovx64_3003714
	ldr r3, [fp, #0x1c]
	strb r0, [r3, r5]
_030039B8:
	ldr ip, [fp, #0x14]
	add r6, r6, #1
	cmp r6, ip
	blt _03003970
_030039C8:
	ldr r0, [fp, #0x14]
	mov r5, r4
	cmp r5, r0
	blt _030038E8
_030039D8:
	ldr r1, [fp, #0x18]
	mov r5, #0
	cmp r5, r1
	bge _03003AD8
_030039E8:
	ldr r2, [fp, #0x10]
	ldr r3, [fp, #-0x2c]
	ldrb r0, [r2, r5]
	ldrb r8, [r3, r0]
	mov r6, #0
	bl ovx64_3003694
	and r7, r0, #0xff
	mov r0, sb
	mov r1, sl
	ldr r2, [fp, #-0x30]
	mov r3, r7
	bl ovx64_3003DF0
	mov r4, r0
	mov r0, sb
	mov r1, sl
	mov r3, r7
	ldr r2, [fp, #4]
	and r4, r4, #0xff
	bl ovx64_3003DF0
	mov r1, r0
	mov r0, r4
	and r1, r1, #0xff
	bl ovx64_3003714
	ldr ip, [fp, #0x20]
	strb r0, [ip, r5]
	ldrb r0, [ip, r5]
	mov r1, r8
	bl ovx64_3003714
	ldr r1, [fp, #0x20]
	strb r0, [r1, r5]
	ldr r2, [fp, #0x18]
	add r4, r5, #1
	cmp r6, r2
	bge _03003AC8
_03003A70:
	ldr r3, [fp, #0x10]
	ldrb r0, [r3, r6]
	mov r1, r7
	bl ovx64_30036CC
	mov r3, r0
	mov r0, sb
	mov r1, sl
	mov r2, #0
	and r3, r3, #0xff
	bl ovx64_3003668
	and r1, r0, #0xff
	cmp r1, #0xff
	beq _03003AB8
	ldr ip, [fp, #0x20]
	ldrb r0, [ip, r5]
	bl ovx64_3003714
	ldr r1, [fp, #0x20]
	strb r0, [r1, r5]
_03003AB8:
	ldr r2, [fp, #0x18]
	add r6, r6, #1
	cmp r6, r2
	blt _03003A70
_03003AC8:
	ldr r3, [fp, #0x18]
	mov r5, r4
	cmp r5, r3
	blt _030039E8
_03003AD8:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovx64_3003AE0
ovx64_3003AE0: @ 0x03003AE0
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x48
	mov sb, r1
	mov sl, r2
	str r0, [fp, #-0x48]
	mov r4, #0
	str r3, [fp, #-0x4c]
	sub r1, fp, #0x40
	ldr r5, [fp, #8]
	mov lr, #4
	str r1, [fp, #-0x50]
	sub r2, fp, #0x38
	str r2, [fp, #-0x58]
	sub r0, fp, #0x3c
	str r0, [fp, #-0x54]
	sub r8, fp, #0x30
	ldr r0, _03003CC4 @ =ovx64_30041B8
	mov r6, r2
	ldr r3, [r0]
	mov ip, #0xff
	str r3, [fp, #-0x30]
	add r2, r3, #0x21
	str r2, [fp, #-0x2c]
	add r1, r3, #0x42
	str r1, [fp, #-0x38]
	add r2, r3, #0x63
	str r2, [fp, #-0x34]
	add r7, r3, #0x84
	ldr r2, [r0, #4]
	add r3, r3, #0xa5
	str r3, [r0]
	sub r2, r2, #0xa5
	str r2, [r0, #4]
_03003B6C:
	ldr r0, [fp, #-0x30]
	sub r3, fp, #0x30
	ldr r1, [r3, lr]
	ldr r2, [fp, #-0x38]
	ldr r3, [r6, lr]
	strb ip, [r4, r3]
	strb ip, [r4, r2]
	strb ip, [r4, r1]
	strb ip, [r4, r0]
	strb ip, [r7, r4]
	add r4, r4, #1
	cmp r4, #0x20
	ble _03003B6C
	mov r6, #1
	ldr r2, [fp, #-0x30]
	mov r1, #0
	strb r1, [r2]
	mov r4, r1
	ldr r3, [fp, #0x14]
	cmp r4, r5
	sub ip, r3, #1
	bgt _03003BE4
	mov r0, #4
	ldr r1, [fp, #-0x58]
_03003BCC:
	ldr r2, [r1, r0]
	ldrb r3, [sl, r4]
	strb r3, [r4, r2]
	add r4, r4, #1
	cmp r4, r5
	ble _03003BCC
_03003BE4:
	str ip, [fp, #-0x40]
	ldr sl, _03003CC4 @ =ovx64_30041B8
	ldr r5, [fp, #-0x58]
	ldr r2, [fp, #-0x38]
	mov r3, #0
	strb r3, [ip, r2]
_03003BFC:
	eor r6, r6, #1
	lsl r4, r6, #2
	ldr r0, [r4, r5]
	bl ovx64_300386C
	cmp r6, #0
	str r0, [fp, #-0x40]
	moveq r3, #4
	movne r3, #0
	ldr r0, [r3, r5]
	bl ovx64_300386C
	str r7, [sp]
	str r0, [sp, #0xc]
	ldr r0, [fp, #-0x54]
	str r0, [sp, #0x10]
	ldr r1, [fp, #-0x50]
	str r1, [sp, #0x14]
	ldr r2, [r4, r5]
	str r2, [sp, #4]
	cmp r6, #0
	ldr ip, [fp, #-0x40]
	moveq r0, #4
	movne r0, #0
	ldr r3, [r0, r5]
	ldr r0, [fp, #-0x48]
	str ip, [sp, #8]
	mov r1, sb
	bl ovx64_3003EEC
	cmp r0, #1
	bne _03003CAC
	ldr r0, [r4, r8]
	bl ovx64_300386C
	str r7, [sp]
	str r0, [sp, #8]
	ldr r2, [fp, #-0x54]
	str r2, [sp, #0xc]
	ldr ip, [fp, #-0x3c]
	ldr r0, [fp, #-0x48]
	ldr r3, [r4, r8]
	mov r1, sb
	str ip, [sp, #4]
	mov r2, r7
	bl ovx64_3003390
	cmp r0, #1
	beq _03003CC8
_03003CAC:
	ldr r2, [fp, #-0x30]
	ldr r3, [sl, #4]
	str r2, [sl]
	add r3, r3, #0xa5
	str r3, [sl, #4]
	b _03003DE0
	.align 2, 0
_03003CC4: .4byte ovx64_30041B8
_03003CC8:
	cmp r6, #0
	moveq r3, #4
	movne r3, #0
	ldr r0, [r3, r8]
	bl ovx64_300386C
	sub r3, fp, #0x44
	str r0, [sp, #4]
	cmp r6, #0
	str r3, [sp, #0xc]
	moveq r1, #4
	movne r1, #0
	ldr r2, [r1, r8]
	str r2, [sp]
	ldr ip, [fp, #-0x3c]
	ldr r0, [fp, #-0x48]
	mov r3, r7
	str ip, [sp, #8]
	mov r1, sb
	bl ovx64_3003E74
	add r0, fp, #0xc
	ldm r0, {r0, r1}
	ldr r2, [fp, #-0x40]
	add r3, r0, r1
	cmp r2, r3
	bge _03003BFC
	ldr r3, [fp, #-0x44]
	mov r4, #0
	cmp r4, r3
	bgt _03003D74
	mov r5, r8
_03003D40:
	cmp r6, #0
	moveq r3, #4
	movne r3, #0
	ldr r2, [r3, r5]
	ldrb r0, [r2, r4]
	ldrb r1, [r2]
	bl ovx64_3003714
	ldr r2, [fp, #-0x4c]
	strb r0, [r2, r4]
	ldr r3, [fp, #-0x44]
	add r4, r4, #1
	cmp r4, r3
	ble _03003D40
_03003D74:
	ldr r3, [fp, #-0x40]
	mov r4, #0
	cmp r4, r3
	bgt _03003DC0
_03003D84:
	ldr r3, [fp, #-0x58]
	ldr r2, [r3, r6, lsl #2]
	cmp r6, #0
	ldrb r0, [r2, r4]
	moveq r3, #4
	movne r3, #0
	ldr r2, [r3, r8]
	ldrb r1, [r2]
	bl ovx64_3003714
	ldr r1, [fp, #4]
	strb r0, [r1, r4]
	ldr r3, [fp, #-0x40]
	add r4, r4, #1
	cmp r4, r3
	ble _03003D84
_03003DC0:
	ldr r2, [fp, #-0x30]
	ldr r0, _03003DE4 @ =ovx64_30041B8
	ldr r1, _03003DE4 @ =ovx64_30041B8
	ldr r3, [r0, #4]
	str r2, [r1]
	mov r0, #1
	add r3, r3, #0xa5
	str r3, [r1, #4]
_03003DE0:
	b _03003DE8
	.align 2, 0
_03003DE4: .4byte ovx64_30041B8
_03003DE8:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovx64_3003DF0
ovx64_3003DF0: @ 0x03003DF0
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	mov r5, #1
	mov r7, r2
	mov sb, r0
	mov sl, r1
	ldrb r6, [r7]
	and r8, r3, #0xff
	b _03003E58
_03003E18:
	mov r0, r8
	ldrb r4, [r7, r5]
	mov r1, r5
	bl ovx64_300375C
	mov r1, r0
	mov r0, r4
	and r1, r1, #0xff
	bl ovx64_30036CC
	mov r3, r0
	mov r0, sb
	mov r1, sl
	and r3, r3, #0xff
	mov r2, r6
	bl ovx64_3003668
	and r6, r0, #0xff
	add r5, r5, #1
_03003E58:
	mov r0, r7
	bl ovx64_300386C
	cmp r5, r0
	ble _03003E18
	mov r0, r6
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovx64_3003E74
ovx64_3003E74: @ 0x03003E74
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	mov sl, r0
	ldr lr, [fp, #8]
	mov r8, r1
	ldr ip, [fp, #0xc]
	mov r7, r2
	ldr sb, [fp, #4]
	mov r6, r3
	ldr r5, [fp, #0x10]
	cmp lr, ip
	strgt lr, [r5]
	strle ip, [r5]
	ldr r3, [r5]
	mov r4, #0
	cmp r4, r3
	bgt _03003EE4
_03003EBC:
	ldrb r2, [r7, r4]
	mov r0, sl
	ldrb r3, [r6, r4]
	mov r1, r8
	bl ovx64_3003668
	strb r0, [sb, r4]
	ldr r3, [r5]
	add r4, r4, #1
	cmp r4, r3
	ble _03003EBC
_03003EE4:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

	arm_func_start ovx64_3003EEC
ovx64_3003EEC: @ 0x03003EEC
	mov ip, sp
	push {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr, pc}
	sub fp, ip, #4
	sub sp, sp, #0x2c
	ldr ip, _0300407C @ =ovx64_30041B8
	ldm ip, {r8, lr}
	add r4, r8, #0x42
	str r4, [ip]
	sub lr, lr, #0x42
	str lr, [ip, #4]
	str r0, [fp, #-0x30]
	str r1, [fp, #-0x34]
	cmp lr, #0
	str r3, [fp, #-0x38]
	add sb, r8, #0x21
	mvn r0, #0xc8
	blt _03004134
	add r0, fp, #0xc
	ldm r0, {r0, r1}
	cmp r0, r1
	bge _03003FA8
	mov r4, #0
	cmp r4, r0
	bgt _03003F68
_03003F4C:
	ldrb r3, [r2, r4]
	ldr lr, [fp, #8]
	strb r3, [lr, r4]
	ldr r0, [fp, #0xc]
	add r4, r4, #1
	cmp r4, r0
	ble _03003F4C
_03003F68:
	ldr r1, [fp, #4]
	ldr lr, _0300407C @ =ovx64_30041B8
	mov r3, #0xff
	strb r3, [r1]
	ldr r3, [fp, #0x14]
	mov r2, #0
	str r2, [r3]
	str r8, [lr]
	ldr r1, [fp, #0xc]
	ldr r0, [fp, #0x18]
	ldr r3, [lr, #4]
	str r1, [r0]
	add r3, r3, #0x42
	str r3, [lr, #4]
	mov r0, #1
	b _03004134
_03003FA8:
	ldr r3, [fp, #0xc]
	mov r4, #0
	ldr lr, [fp, #0x10]
	cmp r4, r3
	rsb lr, lr, r3
	str lr, [fp, #-0x44]
	add r1, r3, #1
	bgt _03003FE0
_03003FC8:
	ldrb r3, [r2, r4]
	strb r3, [r8, r4]
	ldr r0, [fp, #0xc]
	add r4, r4, #1
	cmp r4, r0
	ble _03003FC8
_03003FE0:
	mov r4, r1
	cmp r4, #0x20
	bgt _03004000
	mov r3, #0xff
_03003FF0:
	strb r3, [r8, r4]
	add r4, r4, #1
	cmp r4, #0x20
	ble _03003FF0
_03004000:
	ldr r4, [fp, #0xc]
	ldr r1, [fp, #0x10]
	cmp r4, r1
	blt _030040D4
_03004010:
	ldr r2, [fp, #-0x38]
	ldr r3, [fp, #0x10]
	ldrb r0, [r8, r4]
	ldrb r1, [r2, r3]
	bl ovx64_3003714
	and r7, r0, #0xff
	cmp r7, #0xff
	ldr lr, [fp, #0x10]
	sub r0, r4, #1
	str r0, [fp, #-0x40]
	rsb sl, lr, r4
	beq _030040BC
	mov r5, #0
	mov r6, r5
	sub r1, fp, #0x2c
	str r1, [fp, #-0x3c]
	cmp r5, r4
	bgt _03004094
_03004058:
	cmp r5, sl
	blt _03004080
	ldr r2, [fp, #-0x38]
	ldrb r0, [r2, r6]
	mov r1, r7
	bl ovx64_30036CC
	strb r0, [sb, r5]
	add r6, r6, #1
	b _03004088
	.align 2, 0
_0300407C: .4byte ovx64_30041B8
_03004080:
	mov r3, #0xff
	strb r3, [sb, r5]
_03004088:
	add r5, r5, #1
	cmp r5, r4
	ble _03004058
_03004094:
	str r8, [sp]
	str r4, [sp, #4]
	ldr r0, [fp, #-0x30]
	str r4, [sp, #8]
	ldr r3, [fp, #-0x3c]
	ldr r1, [fp, #-0x34]
	str r3, [sp, #0xc]
	mov r2, r8
	mov r3, sb
	bl ovx64_3003E74
_030040BC:
	ldr lr, [fp, #4]
	ldr r4, [fp, #-0x40]
	strb r7, [lr, sl]
	ldr r0, [fp, #0x10]
	cmp r4, r0
	bge _03004010
_030040D4:
	ldr r2, [fp, #-0x44]
	ldr r1, [fp, #0x14]
	mov r0, r8
	str r2, [r1]
	mov r4, #0
	bl ovx64_300386C
	ldr r3, [fp, #0x18]
	str r0, [r3]
	ldr lr, [fp, #0xc]
	cmp r4, lr
	bgt _0300411C
_03004100:
	ldrb r3, [r8, r4]
	ldr r0, [fp, #8]
	strb r3, [r0, r4]
	ldr r1, [fp, #0xc]
	add r4, r4, #1
	cmp r4, r1
	ble _03004100
_0300411C:
	ldr r2, _03004138 @ =ovx64_30041B8
	ldr r3, [r2, #4]
	mov r0, #1
	str r8, [r2]
	add r3, r3, #0x42
	str r3, [r2, #4]
_03004134:
	b _0300413C
	.align 2, 0
_03004138: .4byte ovx64_30041B8
_0300413C:
	ldmdb fp, {r4, r5, r6, r7, r8, sb, sl, fp, sp, lr}
	bx lr

ovx64_3004144:
	.4byte 0x66

ovx64_3004148:
	.4byte 0

ovx64_300414C:
	.4byte 1, 3, 3, 3, 5, 3, 3, 135

ovx64_300416C:
	.4byte 12, 6, 4, 1

	.align 2, 0
ovx64_300417C:
	.asciz "ST Decoder Ver.1.10 for CARDe"

	.align 2, 0
ovx64_300419C:
	.4byte 2, 4, 6, 24

ovx64_30041AC:
	.asciz "NINTENDO"

	.align 2, 0
ovx64_30041B8:
	.4byte 0
	.4byte 0

	.align 2, 0
