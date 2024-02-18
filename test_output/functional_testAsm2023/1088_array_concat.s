.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
concat:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.concatL0:
.concatL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#3
	cmp r8,r7
	blt .concatL3
.concatL5:
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#3
	cmp r8,r7
	blt .concatL7
.concatL9:
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.concatL7:
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r1,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	mov r6,r8
	add r8,r2,r6,lsl #2
	str r7,[r8]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.concatL8:
	ldr r8,[fp,#-12]
	mov r7,#3
	cmp r8,r7
	blt .concatL7
	bge .concatL9
.concatL3:
	ldr r8,[fp,#-16]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	mov r6,r8
	add r8,r2,r6,lsl #2
	str r7,[r8]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.concatL4:
	ldr r8,[fp,#-16]
	mov r7,#3
	cmp r8,r7
	blt .concatL3
	bge .concatL5
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	mov r9,#136
	sub sp,sp,r9
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#3
	cmp r8,r7
	blt .mainL3
.mainL5:
	mvn r8,#135
	add r7,fp,r8
	mvn r8,#99
	add r6,fp,r8
	mvn r8,#63
	add r5,fp,r8
	@%r46 = call i32 @concat(ptr %r43,ptr %r44,ptr %r45)
	mov r0,r7
	mov r1,r6
	mov r2,r5
	bl concat
	mov r8,r0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,#6
	cmp r8,r7
	blt .mainL7
.mainL9:
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putch(i32 %r67)
	mov r0,r8
	bl putch
	mov r8,#0
	mov r0,r8
	mov r9,#136
	add sp,sp,r9
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL7:
	ldr r8,[fp,#-16]
	mov r7,r8
	mvn r8,#63
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r57)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL8:
	ldr r8,[fp,#-16]
	mov r7,#6
	cmp r8,r7
	blt .mainL7
	bge .mainL9
.mainL3:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-16]
	mov r6,r7
	mvn r7,#135
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-16]
	mov r6,r7
	mvn r7,#123
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-16]
	mov r6,r7
	mvn r7,#111
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-16]
	mov r6,r7
	mvn r7,#99
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-16]
	mov r6,r7
	mvn r7,#87
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-16]
	mov r6,r7
	mvn r7,#75
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL4:
	ldr r8,[fp,#-16]
	mov r7,#3
	cmp r8,r7
	blt .mainL3
	bge .mainL5
	.section	.note.GNU-stack,"",%progbits
