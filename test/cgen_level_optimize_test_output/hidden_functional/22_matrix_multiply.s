.arch armv7-a
.fpu vfpv3-d16
.arm
.data
MAX_SIZE:
	.word  100
a:
	.space  40000
b:
	.space  40000
res:
	.space  40000
n1:
	.word  0
m1:
	.word  0
n2:
	.word  0
m2:
	.word  0
.text
.global main
.LPIC0:
	.word  MAX_SIZE
.LPIC1:
	.word  a
.LPIC2:
	.word  b
.LPIC3:
	.word  m1
.LPIC4:
	.word  m2
.LPIC5:
	.word  n1
.LPIC6:
	.word  n2
.LPIC7:
	.word  res
matrix_multiply:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#32
.matrix_multiplyL0:
.matrix_multiplyL1:
	ldr r8,.LPIC3
	ldr r7,[r8]
	cmp r7,#0
	bgt .matrix_multiplyL14
.matrix_multiplyL5:
	add sp,sp,#32
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.matrix_multiplyL14:
	ldr r8,.LPIC6
	ldr r9,[r8]
	str r9,[fp,#-12]
	ldr r8,.LPIC3
	ldr r9,[r8]
	str r9,[fp,#-16]
	mov r9,#0
	str r9,[fp,#-28]
.matrix_multiplyL3:
	ldr r9,[fp,#-12]
	cmp r9,#0
	bgt .matrix_multiplyL15
.matrix_multiplyL9:
	ldr r9,[fp,#-28]
	add r5,r9,#1
.matrix_multiplyL4:
	ldr r9,[fp,#-16]
	cmp r5,r9
	bge .matrix_multiplyL5
.matrix_multiplyL17:
	mov r9,r5
	str r9,[fp,#-28]
	bl .matrix_multiplyL3
.matrix_multiplyL15:
	ldr r5,.LPIC5
	ldr r9,[r5]
	str r9,[fp,#-20]
	ldr r5,.LPIC6
	ldr r9,[r5]
	str r9,[fp,#-24]
	mov r5,#0
.matrix_multiplyL7:
	ldr r9,[fp,#-20]
	cmp r9,#0
	bgt .matrix_multiplyL16
.matrix_multiplyL13:
	add r2,r5,#1
.matrix_multiplyL8:
	ldr r9,[fp,#-24]
	cmp r2,r9
	bge .matrix_multiplyL9
.matrix_multiplyL18:
	mov r5,r2
	bl .matrix_multiplyL7
.matrix_multiplyL16:
	mov r2,#100
	ldr r9,[fp,#-28]
	mul r2,r9,r2
	mov r1,r2
	add r1,r1,r5
	ldr r2,.LPIC7
	add r0,r2,r1,lsl #2
	mov r2,#100
	ldr r9,[fp,#-28]
	mul r2,r9,r2
	mov r1,r2
	ldr r2,.LPIC1
	add r9,r2,r1,lsl #2
	str r9,[fp,#-32]
	ldr r2,.LPIC5
	ldr r1,[r2]
	mov r2,#0
.matrix_multiplyL11:
	ldr r6,[r0]
	mov r4,r2
	ldr r9,[fp,#-32]
	add r3,r9,r4,lsl #2
	ldr r4,[r3]
	mov r3,#100
	mul r3,r2,r3
	mov r8,r3
	add r8,r8,r5
	ldr r3,.LPIC2
	add r7,r3,r8,lsl #2
	ldr r8,[r7]
	mul r7,r4,r8
	add r8,r6,r7
	str r8,[r0]
	add r8,r2,#1
.matrix_multiplyL12:
	cmp r8,r1
	bge .matrix_multiplyL13
.matrix_multiplyL19:
	mov r2,r8
	bl .matrix_multiplyL11
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r4 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC3
	str r8,[r7]
	@%r5 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC5
	str r8,[r7]
	ldr r8,.LPIC3
	ldr r7,[r8]
	cmp r7,#0
	bgt .mainL26
.mainL5:
	@%r38 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC4
	str r8,[r7]
	@%r39 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC6
	str r8,[r7]
	ldr r8,.LPIC4
	ldr r7,[r8]
	cmp r7,#0
	bgt .mainL28
.mainL13:
	@call void @matrix_multiply()
	sub sp,sp,#4 @stack align 8bytes
	bl matrix_multiply
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC3
	ldr r7,[r8]
	cmp r7,#0
	bgt .mainL30
.mainL21:
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL30:
	mov r8,#0
.mainL19:
	ldr r7,.LPIC6
	ldr r6,[r7]
	cmp r6,#0
	bgt .mainL31
.mainL25:
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	add r7,r8,#1
.mainL20:
	ldr r6,.LPIC3
	ldr r5,[r6]
	cmp r7,r5
	bge .mainL21
.mainL36:
	mov r8,r7
	bl .mainL19
.mainL31:
	mov r7,#100
	mul r7,r8,r7
	mov r6,r7
	ldr r7,.LPIC7
	add r5,r7,r6,lsl #2
	mov r7,#0
.mainL23:
	mov r6,r7
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	@call void @putint(i32 %r87)
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
.mainL24:
	ldr r4,.LPIC6
	ldr r3,[r4]
	cmp r6,r3
	bge .mainL25
.mainL37:
	mov r7,r6
	bl .mainL23
.mainL28:
	mov r8,#0
.mainL11:
	ldr r7,.LPIC6
	ldr r6,[r7]
	cmp r6,#0
	bgt .mainL29
.mainL17:
	add r7,r8,#1
.mainL12:
	ldr r6,.LPIC4
	ldr r5,[r6]
	cmp r7,r5
	bge .mainL13
.mainL34:
	mov r8,r7
	bl .mainL11
.mainL29:
	mov r7,#100
	mul r7,r8,r7
	mov r6,r7
	ldr r7,.LPIC2
	add r5,r7,r6,lsl #2
	mov r7,#0
.mainL15:
	@%r52 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	mov r4,r7
	add r3,r5,r4,lsl #2
	str r6,[r3]
	add r6,r7,#1
.mainL16:
	ldr r4,.LPIC6
	ldr r3,[r4]
	cmp r6,r3
	bge .mainL17
.mainL35:
	mov r7,r6
	bl .mainL15
.mainL26:
	mov r8,#0
.mainL3:
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r6,#0
	bgt .mainL27
.mainL9:
	add r7,r8,#1
.mainL4:
	ldr r6,.LPIC3
	ldr r5,[r6]
	cmp r7,r5
	bge .mainL5
.mainL32:
	mov r8,r7
	bl .mainL3
.mainL27:
	mov r7,#100
	mul r7,r8,r7
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	mov r7,#0
.mainL7:
	@%r18 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	mov r4,r7
	add r3,r5,r4,lsl #2
	str r6,[r3]
	add r6,r7,#1
.mainL8:
	ldr r4,.LPIC5
	ldr r3,[r4]
	cmp r6,r3
	bge .mainL9
.mainL33:
	mov r7,r6
	bl .mainL7
	.section	.note.GNU-stack,"",%progbits
