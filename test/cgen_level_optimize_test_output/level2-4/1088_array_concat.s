.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
concat:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#12
.concatL0:
	mov r9,r0
	str r9,[fp,#-12]
.concatL1:
.concatL10:
	mov r8,#0
.concatL3:
	mov r7,r8
	ldr r9,[fp,#-12]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	mov r6,r8
	add r5,r2,r6,lsl #2
	str r7,[r5]
	add r7,r8,#1
.concatL4:
	cmp r7,#3
	blt .concatL12
.concatL5:
.concatL11:
	mov r6,#0
	mov r5,r7
.concatL7:
	mov r4,r6
	add r3,r1,r4,lsl #2
	ldr r4,[r3]
	mov r3,r5
	add r0,r2,r3,lsl #2
	str r4,[r0]
	add r4,r5,#1
	add r3,r6,#1
.concatL8:
	cmp r3,#3
	blt .concatL13
.concatL9:
	mov r0,#0
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.concatL13:
	mov r6,r3
	mov r5,r4
	bl .concatL7
.concatL12:
	mov r8,r7
	bl .concatL3
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#104
.mainL0:
.mainL1:
.mainL10:
	mov r8,#0
.mainL3:
	mov r7,r8
	mvn r6,#103
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r7,r8
	mvn r6,#91
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r7,r8
	mvn r6,#79
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r7,r8
	mvn r6,#67
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r7,r8
	mvn r6,#55
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r7,r8
	mvn r6,#43
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	add r7,r8,#1
.mainL4:
	cmp r7,#3
	blt .mainL12
.mainL5:
	mvn r6,#103
	add r5,fp,r6
	mvn r6,#67
	add r4,fp,r6
	mvn r6,#31
	add r3,fp,r6
	@%r46 = call i32 @concat(ptr %r43,ptr %r44,ptr %r45)
	push {r3}
	mov r0,r5
	mov r1,r4
	mov r2,r3
	bl concat
	mov r6,r0
	pop {r3}
	cmp r6,#6
	blt .mainL11
.mainL9:
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r0,#0
	add sp,sp,#104
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL11:
	mov r5,r6
.mainL7:
	mov r6,r5
	mvn r4,#31
	add r3,fp,r4
	add r4,r3,r6,lsl #2
	ldr r6,[r4]
	@call void @putint(i32 %r56)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl putint
	add sp,sp,#4 @stack align 8bytes
	add r6,r5,#1
.mainL8:
	cmp r6,#6
	bge .mainL9
.mainL13:
	mov r5,r6
	bl .mainL7
.mainL12:
	mov r8,r7
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
