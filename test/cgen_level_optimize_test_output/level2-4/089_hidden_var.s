.arch armv7-a
.fpu vfpv3-d16
.arm
.data
b:
	.word  5
c:
	.word  6
	.word  7
	.word  8
	.word  9
.text
.global main
.LPIC0:
	.word  b
.LPIC1:
	.word  c
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	mov r9,#212
	sub sp,sp,r9
.mainL0:
.mainL1:
	@call void @putint(i32 3)
	mov r0,#3
	bl putint
	@call void @putint(i32 3)
	mov r0,#3
	bl putint
	@call void @putint(i32 1)
	mov r0,#1
	bl putint
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
.mainL3:
.mainL6:
.mainL5:
	@call void @putint(i32 1)
	mov r0,#1
	bl putint
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	mov r8,#2
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	mov r8,#1
	str r8,[r6]
	mvn r8,#211
	add r7,fp,r8
	@call void @memset(i32 %r91,i32 0,i32 64)
	mov r0,r7
	mov r1,#0
	mov r2,#64
	bl memset
	mvn r8,#211
	add r7,fp,r8
	mov r8,#0
	str r8,[r7]
	mov r8,#1
	mvn r7,#211
	add r5,fp,r7
	add r7,r5,r8,lsl #2
	mov r8,#9
	str r8,[r7]
	mov r8,#8
	mvn r7,#211
	add r5,fp,r7
	add r7,r5,r8,lsl #2
	mov r8,#8
	str r8,[r7]
	mov r8,#9
	mvn r7,#211
	add r5,fp,r7
	add r7,r5,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	ldr r8,[r6]
	cmp r8,#0
	bne .mainL9
.mainL10:
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	ldr r8,.LPIC0
	ldr r7,[r8]
	@call void @putint(i32 %r71)
	mov r0,r7
	bl putint
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	ldr r8,.LPIC1
	ldr r7,[r8]
	@call void @putint(i32 %r75)
	mov r0,r7
	bl putint
	mov r8,#1
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r78)
	mov r0,r8
	bl putint
	mov r8,#2
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r81)
	mov r0,r8
	bl putint
	mov r8,#3
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r84)
	mov r0,r8
	bl putint
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	mov r0,#0
	mov r9,#212
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL9:
	mvn r8,#147
	add r7,fp,r8
	@call void @memset(i32 %r113,i32 0,i32 140)
	mov r0,r7
	mov r1,#0
	mov r2,#140
	bl memset
	mov r8,#10
	mvn r7,#147
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#11
	mvn r6,#147
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#1
	str r8,[r6]
	mov r8,#12
	mvn r5,#147
	add r4,fp,r5
	add r5,r4,r8,lsl #2
	mov r8,#8
	str r8,[r5]
	ldr r8,[r7]
	@call void @putint(i32 %r59)
	mov r0,r8
	bl putint
	ldr r8,[r6]
	@call void @putint(i32 %r64)
	mov r0,r8
	bl putint
	ldr r8,[r5]
	@call void @putint(i32 %r69)
	mov r0,r8
	bl putint
	bl .mainL10
	.section	.note.GNU-stack,"",%progbits
