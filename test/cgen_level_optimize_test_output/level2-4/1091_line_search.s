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
.mainL19:
	mov r8,#0
.mainL3:
	add r7,r8,#1
	mov r6,r8
	mvn r5,#47
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	str r7,[r5]
.mainL4:
	cmp r7,#10
	blt .mainL21
.mainL5:
	@%r36 = call i32 @getint()
	bl getint
	str r0,[fp,#-52]
.mainL10:
.mainL20:
	mov r5,#0
	mov r4,#0
	mov r3,#0
.mainL7:
	mov r2,r3
	mvn r1,#47
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	ldr r2,[r1]
	ldr r9,[fp,#-52]
	cmp r2,r9
	beq .mainL12
.mainL25:
	mov r2,r5
	mov r1,r4
.mainL13:
	add r0,r3,#1
.mainL8:
	cmp r0,#10
	blt .mainL14
.mainL23:
	mov r9,r2
	str r9,[fp,#-56]
	mov r9,r1
	str r9,[fp,#-60]
.mainL9:
	ldr r9,[fp,#-60]
	cmp r9,#1
	beq .mainL16
.mainL17:
	@call void @putint(i32 0)
	push {r0,r1,r2,r3}
	mov r0,#0
	bl putint
	pop {r0,r1,r2,r3}
.mainL18:
	@call void @putch(i32 10)
	push {r0,r1,r2,r3}
	mov r0,#10
	bl putch
	pop {r0,r1,r2,r3}
	mov r0,#0
	add sp,sp,#60
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL16:
	@call void @putint(i32 %r104)
	push {r0,r1,r2,r3}
	ldr r0,[fp,#-56]
	bl putint
	pop {r0,r1,r2,r3}
	bl .mainL18
.mainL14:
	cmp r1,#0
	beq .mainL22
.mainL24:
	mov r9,r2
	str r9,[fp,#-56]
	mov r9,r1
	str r9,[fp,#-60]
	bl .mainL9
.mainL22:
	mov r5,r2
	mov r4,r1
	mov r3,r0
	bl .mainL7
.mainL12:
	mov r2,r3
	mov r1,#1
	bl .mainL13
.mainL21:
	mov r8,r7
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
