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
graphColoring:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#16
.graphColoringL0:
	mov r9,r3
	str r9,[fp,#-16]
	mov r9,r0
	str r9,[fp,#-12]
.graphColoringL1:
	cmp r2,#4
	beq .graphColoringL2
.graphColoringL3:
	cmp r1,#1
	bge .graphColoringL18
.graphColoringL9:
	mov r0,#0
	add sp,sp,#16
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.graphColoringL18:
	mov r8,r2
	ldr r9,[fp,#-16]
	add r7,r9,r8,lsl #2
	ldr r9,[fp,#-12]
	mov r8,r9
	add r6,r2,#1
	ldr r9,[fp,#-16]
	mov r5,r9
	mov r4,#1
.graphColoringL7:
	str r4,[r7]
	@%r34 = call i32 @graphColoring(ptr %r28,i32 %r1,i32 %r32,ptr %r33)
	push {r1,r2,r3}
	mov r0,r8
	mov r2,r6
	mov r3,r5
	bl graphColoring
	pop {r1,r2,r3}
	cmp r0,#0
	bne .graphColoringL10
.graphColoringL11:
	mov r3,r2
	ldr r9,[fp,#-16]
	add r0,r9,r3,lsl #2
	mov r3,#0
	str r3,[r0]
	add r3,r4,#1
.graphColoringL8:
	cmp r3,r1
	bgt .graphColoringL9
.graphColoringL20:
	mov r4,r3
	bl .graphColoringL7
.graphColoringL10:
	mov r0,#1
	add sp,sp,#16
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.graphColoringL2:
	ldr r9,[fp,#-12]
	mov r8,r9
	ldr r9,[fp,#-16]
	mov r7,r9
	@%r13 = call i32 @isSafe(ptr %r11,ptr %r12)
	push {r3}
	mov r0,r8
	mov r1,r7
	bl isSafe
	mov r6,r0
	pop {r3}
	cmp r6,#0
	bne .graphColoringL4
.graphColoringL5:
	mov r0,#0
	add sp,sp,#16
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.graphColoringL4:
	ldr r9,[fp,#-16]
	mov r8,r9
.graphColoringL12:
.graphColoringL14:
.graphColoringL19:
	mov r7,#0
.graphColoringL15:
	mov r6,r7
	add r5,r8,r6,lsl #2
	ldr r6,[r5]
	@call void @putint(i32 %r54)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#32
	bl putch
	add sp,sp,#4 @stack align 8bytes
	add r6,r7,#1
.graphColoringL16:
	cmp r6,#4
	blt .graphColoringL21
.graphColoringL17:
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
.graphColoringL13:
	mov r0,#1
	add sp,sp,#16
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.graphColoringL21:
	mov r7,r6
	bl .graphColoringL15
printSolution:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.printSolutionL0:
.printSolutionL1:
.printSolutionL6:
	mov r8,#0
.printSolutionL3:
	mov r7,r8
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	@call void @putint(i32 %r10)
	push {r0}
	mov r0,r7
	bl putint
	pop {r0}
	@call void @putch(i32 32)
	push {r0}
	mov r0,#32
	bl putch
	pop {r0}
	add r7,r8,#1
.printSolutionL4:
	cmp r7,#4
	blt .printSolutionL7
.printSolutionL5:
	@call void @putch(i32 10)
	push {r0}
	mov r0,#10
	bl putch
	pop {r0}
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.printSolutionL7:
	mov r8,r7
	bl .printSolutionL3
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#88
.mainL0:
.mainL1:
	mvn r8,#87
	add r7,fp,r8
	@call void @memset(i32 %r66,i32 0,i32 64)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#64
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mvn r8,#87
	add r7,fp,r8
	mov r8,#0
	str r8,[r7]
	mov r8,#1
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#2
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#3
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#4
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#5
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#0
	str r8,[r7]
	mov r8,#6
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#7
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#0
	str r8,[r7]
	mov r8,#8
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#9
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#10
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#0
	str r8,[r7]
	mov r8,#11
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#12
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#13
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#0
	str r8,[r7]
	mov r8,#14
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#15
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#0
	str r8,[r7]
.mainL11:
	mov r8,#0
.mainL3:
	mov r7,r8
	mvn r6,#23
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	mov r7,#0
	str r7,[r6]
	add r7,r8,#1
.mainL4:
	cmp r7,#4
	blt .mainL12
.mainL5:
	mvn r6,#87
	add r5,fp,r6
	mvn r6,#23
	add r4,fp,r6
	@%r58 = call i32 @graphColoring(ptr %r54,i32 3,i32 0,ptr %r57)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	mov r1,#3
	mov r2,#0
	mov r3,r4
	bl graphColoring
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	beq .mainL6
.mainL7:
	mov r0,#0
	add sp,sp,#88
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL6:
.mainL8:
.mainL10:
	@call void @putch(i32 78)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#78
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 111)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#111
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 116)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#116
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#32
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 101)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#101
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 120)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#120
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 105)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#105
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 115)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#115
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 116)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#116
	bl putch
	add sp,sp,#4 @stack align 8bytes
.mainL9:
	bl .mainL7
.mainL12:
	mov r8,r7
	bl .mainL3
isSafe:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.isSafeL0:
.isSafeL1:
.isSafeL14:
	mov r8,#0
.isSafeL3:
	add r7,r8,#1
	cmp r7,#4
	blt .isSafeL15
.isSafeL9:
	add r6,r8,#1
.isSafeL4:
	cmp r6,#4
	blt .isSafeL16
.isSafeL5:
	mov r0,#1
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.isSafeL16:
	mov r8,r6
	bl .isSafeL3
.isSafeL15:
	lsl r6,r8,#2
	mov r5,r6
	add r6,r0,r5,lsl #2
	mov r5,r7
.isSafeL7:
	mov r7,r5
	add r4,r6,r7,lsl #2
	ldr r7,[r4]
	cmp r7,#0
	bne .isSafeL12
.isSafeL11:
	add r7,r5,#1
.isSafeL8:
	cmp r7,#4
	bge .isSafeL9
.isSafeL17:
	mov r5,r7
	bl .isSafeL7
.isSafeL12:
	mov r7,r5
	add r4,r1,r7,lsl #2
	ldr r7,[r4]
	mov r4,r8
	add r3,r1,r4,lsl #2
	ldr r4,[r3]
	cmp r7,r4
	bne .isSafeL11
.isSafeL10:
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
printMessage:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.printMessageL0:
.printMessageL1:
	@call void @putch(i32 78)
	mov r0,#78
	bl putch
	@call void @putch(i32 111)
	mov r0,#111
	bl putch
	@call void @putch(i32 116)
	mov r0,#116
	bl putch
	@call void @putch(i32 32)
	mov r0,#32
	bl putch
	@call void @putch(i32 101)
	mov r0,#101
	bl putch
	@call void @putch(i32 120)
	mov r0,#120
	bl putch
	@call void @putch(i32 105)
	mov r0,#105
	bl putch
	@call void @putch(i32 115)
	mov r0,#115
	bl putch
	@call void @putch(i32 116)
	mov r0,#116
	bl putch
	add sp,sp,#8
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
