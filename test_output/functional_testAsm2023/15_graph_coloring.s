.arch armv7-a
.fpu vfpv3-d16
.arm
.data
V:
	.word  4
space:
	.word  32
LF:
	.word  10
.text
.global main
.LPIC0:
	.word  LF
.LPIC1:
	.word  V
.LPIC2:
	.word  space
graphColoring:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.graphColoringL0:
	str r1,[fp,#-16]
	str r2,[fp,#-20]
.graphColoringL1:
	ldr r8,[fp,#-20]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	beq .graphColoringL2
.graphColoringL3:
	mov r8,#1
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	ble .graphColoringL7
.graphColoringL9:
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.graphColoringL7:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-20]
	mov r6,r7
	add r7,r3,r6,lsl #2
	str r8,[r7]
	mov r8,r0
	ldr r7,[fp,#-16]
	ldr r6,[fp,#-20]
	mov r5,#1
	add r4,r6,r5
	mov r6,r3
	@%r34 = call i32 @graphColoring(ptr %r28,i32 %r29,i32 %r32,ptr %r33)
	push {r0,r3}
	mov r0,r8
	mov r1,r7
	mov r2,r4
	mov r3,r6
	bl graphColoring
	mov r5,r0
	pop {r0,r3}
	cmp r5,#0
	bne .graphColoringL10
.graphColoringL11:
	mov r8,#0
	ldr r7,[fp,#-20]
	mov r6,r7
	add r7,r3,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.graphColoringL8:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	ble .graphColoringL7
	bgt .graphColoringL9
.graphColoringL10:
	mov r8,#1
	mov r0,r8
	add sp,sp,#20
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.graphColoringL2:
	mov r8,r0
	mov r7,r3
	@%r13 = call i32 @isSafe(ptr %r11,ptr %r12)
	sub sp,sp,#4 @stack align 8bytes
	push {r3}
	mov r0,r8
	mov r1,r7
	bl isSafe
	mov r6,r0
	pop {r3}
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .graphColoringL4
.graphColoringL5:
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.graphColoringL4:
	mov r8,r3
	@call void @printSolution(ptr %r15)
	mov r0,r8
	bl printSolution
	mov r8,#1
	mov r0,r8
	add sp,sp,#20
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
printSolution:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.printSolutionL0:
.printSolutionL1:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .printSolutionL3
.printSolutionL5:
	ldr r8,.LPIC0
	ldr r7,[r8]
	@call void @putch(i32 %r20)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	mov r0,r7
	bl putch
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.printSolutionL3:
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	@call void @putint(i32 %r10)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	mov r0,r7
	bl putint
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC2
	ldr r7,[r8]
	@call void @putch(i32 %r11)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	mov r0,r7
	bl putch
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.printSolutionL4:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .printSolutionL3
	bge .printSolutionL5
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#96
.mainL0:
.mainL1:
	mvn r8,#95
	add r7,fp,r8
	@call void @memset(i32 %r63,i32 0,i32 64)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#64
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mvn r7,#95
	add r6,fp,r7
	str r8,[r6]
	mov r8,#1
	mov r7,#1
	mvn r6,#95
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#2
	mvn r6,#95
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#3
	mvn r6,#95
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#4
	mvn r6,#95
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#0
	mov r7,#5
	mvn r6,#95
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#6
	mvn r6,#95
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#0
	mov r7,#7
	mvn r6,#95
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#8
	mvn r6,#95
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#9
	mvn r6,#95
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#0
	mov r7,#10
	mvn r6,#95
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#11
	mvn r6,#95
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#12
	mvn r6,#95
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#0
	mov r7,#13
	mvn r6,#95
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#14
	mvn r6,#95
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#0
	mov r7,#15
	mvn r6,#95
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	str r8,[fp,#-32]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
.mainL5:
	mvn r8,#95
	add r7,fp,r8
	ldr r8,[fp,#-32]
	mov r6,#0
	mvn r5,#27
	add r4,fp,r5
	@%r58 = call i32 @graphColoring(ptr %r54,i32 %r55,i32 %r56,ptr %r57)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r8
	mov r2,r6
	mov r3,r4
	bl graphColoring
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r5,#0
	beq .mainL6
.mainL7:
	mov r8,#0
	mov r0,r8
	add sp,sp,#96
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL6:
	@call void @printMessage()
	sub sp,sp,#4 @stack align 8bytes
	bl printMessage
	add sp,sp,#4 @stack align 8bytes
	bl .mainL7
.mainL3:
	mov r8,#0
	ldr r7,[fp,#-12]
	mov r6,r7
	mvn r7,#27
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.mainL4:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
	bge .mainL5
isSafe:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.isSafeL0:
.isSafeL1:
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .isSafeL3
.isSafeL5:
	mov r8,#1
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.isSafeL3:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .isSafeL7
.isSafeL9:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.isSafeL4:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .isSafeL3
	bge .isSafeL5
.isSafeL7:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	lsl r6,r8,#2
	mov r8,r6
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	cmp r8,#0
	bne .isSafeL12
.isSafeL11:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.isSafeL8:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .isSafeL7
	bge .isSafeL9
.isSafeL12:
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r1,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	mov r6,r8
	add r8,r1,r6,lsl #2
	ldr r6,[r8]
	cmp r7,r6
	bne .isSafeL11
.isSafeL10:
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
printMessage:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.printMessageL0:
.printMessageL1:
	mov r8,#78
	@call void @putch(i32 %r0)
	mov r0,r8
	bl putch
	mov r8,#111
	@call void @putch(i32 %r1)
	mov r0,r8
	bl putch
	mov r8,#116
	@call void @putch(i32 %r2)
	mov r0,r8
	bl putch
	ldr r8,.LPIC2
	ldr r7,[r8]
	@call void @putch(i32 %r3)
	mov r0,r7
	bl putch
	mov r8,#101
	@call void @putch(i32 %r4)
	mov r0,r8
	bl putch
	mov r8,#120
	@call void @putch(i32 %r5)
	mov r0,r8
	bl putch
	mov r8,#105
	@call void @putch(i32 %r6)
	mov r0,r8
	bl putch
	mov r8,#115
	@call void @putch(i32 %r7)
	mov r0,r8
	bl putch
	mov r8,#116
	@call void @putch(i32 %r8)
	mov r0,r8
	bl putch
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
