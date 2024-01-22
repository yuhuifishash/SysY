.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#60
.mainL0:
.mainL1:
.mainL20:
	mov r9,#0
	str r9,[fp,#-56]
.mainL3:
	ldr r9,[fp,#-56]
	add r7,r9,#1
	ldr r9,[fp,#-56]
	mov r6,r9
	mvn r5,#47
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	str r7,[r5]
.mainL4:
	cmp r7,#10
	blt .mainL22
.mainL5:
	@%r36 = call i32 @getint()
	bl getint
	str r0,[fp,#-60]
	mov r5,#4
	mvn r4,#47
	add r3,fp,r4
	add r4,r3,r5,lsl #2
	ldr r5,[r4]
	ldr r9,[fp,#-60]
	cmp r5,r9
	bne .mainL10
.mainL24:
	mov r9,#4
	str r9,[fp,#-52]
.mainL9:
	ldr r9,[fp,#-52]
	mov r4,r9
	mvn r3,#47
	add r2,fp,r3
	add r3,r2,r4,lsl #2
	ldr r4,[r3]
	ldr r9,[fp,#-60]
	cmp r9,r4
	beq .mainL17
.mainL18:
	@call void @putint(i32 0)
	mov r0,#0
	bl putint
.mainL19:
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	mov r0,#0
	add sp,sp,#60
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL17:
	@call void @putint(i32 %r36)
	ldr r0,[fp,#-60]
	bl putint
	bl .mainL19
.mainL10:
.mainL21:
	mov r4,#0
	mov r3,#9
.mainL7:
	add r2,r3,r4
	add r1,r2,r2,lsr #31
	asr r2,r1,#1
	mov r1,r2
	mvn r0,#47
	add r5,fp,r0
	add r0,r5,r1,lsl #2
	ldr r5,[r0]
	ldr r9,[fp,#-60]
	cmp r9,r5
	blt .mainL12
.mainL13:
	add r5,r2,#1
	mov r1,r5
	mov r5,r3
.mainL14:
.mainL8:
	mov r0,r2
	mvn r8,#47
	add r6,fp,r8
	add r8,r6,r0,lsl #2
	ldr r6,[r8]
	ldr r9,[fp,#-60]
	cmp r6,r9
	bne .mainL15
.mainL25:
	mov r9,r2
	str r9,[fp,#-52]
	bl .mainL9
.mainL15:
	cmp r1,r5
	blt .mainL23
.mainL26:
	mov r9,r2
	str r9,[fp,#-52]
	bl .mainL9
.mainL23:
	mov r4,r1
	mov r3,r5
	bl .mainL7
.mainL12:
	sub r8,r2,#1
	mov r1,r4
	mov r5,r8
	bl .mainL14
.mainL22:
	mov r9,r7
	str r9,[fp,#-56]
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
