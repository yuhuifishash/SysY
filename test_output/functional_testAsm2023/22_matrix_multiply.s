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
matrix_multiply:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.matrix_multiplyL0:
.matrix_multiplyL1:
	mov r8,#0
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	ldr r7,.LPIC3
	ldr r6,[r7]
	cmp r8,r6
	blt .matrix_multiplyL3
.matrix_multiplyL5:
	add sp,sp,#20
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.matrix_multiplyL3:
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,.LPIC6
	ldr r6,[r7]
	cmp r8,r6
	blt .matrix_multiplyL7
.matrix_multiplyL9:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.matrix_multiplyL4:
	ldr r8,[fp,#-20]
	ldr r7,.LPIC3
	ldr r6,[r7]
	cmp r8,r6
	blt .matrix_multiplyL3
	bge .matrix_multiplyL5
.matrix_multiplyL7:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	blt .matrix_multiplyL11
.matrix_multiplyL13:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.matrix_multiplyL8:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC6
	ldr r6,[r7]
	cmp r8,r6
	blt .matrix_multiplyL7
	bge .matrix_multiplyL9
.matrix_multiplyL11:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	mov r6,#100
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC7
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-12]
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	ldr r6,[fp,#-12]
	ldr r5,[fp,#-16]
	mov r4,#100
	mul r4,r6,r4
	mov r6,r4
	add r6,r6,r5
	ldr r5,.LPIC2
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	mul r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-20]
	ldr r6,[fp,#-16]
	mov r5,#100
	mul r5,r8,r5
	mov r8,r5
	add r8,r8,r6
	ldr r6,.LPIC7
	add r5,r6,r8,lsl #2
	str r7,[r5]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.matrix_multiplyL12:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	blt .matrix_multiplyL11
	bge .matrix_multiplyL13
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	@%r4 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC3
	str r8,[r7]
	@%r5 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC5
	str r8,[r7]
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,.LPIC3
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
.mainL5:
	@%r38 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC4
	str r8,[r7]
	@%r39 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC6
	str r8,[r7]
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,.LPIC4
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL11
.mainL13:
	@call void @matrix_multiply()
	bl matrix_multiply
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,.LPIC3
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL19
.mainL21:
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL19:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC6
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL23
.mainL25:
	mov r8,#10
	@call void @putch(i32 %r97)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL20:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC3
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL19
	bge .mainL21
.mainL23:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	mov r6,#100
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC7
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r87)
	mov r0,r8
	bl putint
	mov r8,#32
	@call void @putch(i32 %r88)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.mainL24:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC6
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL23
	bge .mainL25
.mainL11:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC6
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL15
.mainL17:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL12:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC4
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL11
	bge .mainL13
.mainL15:
	@%r52 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,[fp,#-16]
	ldr r6,[fp,#-12]
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.mainL16:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC6
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL15
	bge .mainL17
.mainL3:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL7
.mainL9:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL4:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC3
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
	bge .mainL5
.mainL7:
	@%r18 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,[fp,#-16]
	ldr r6,[fp,#-12]
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.mainL8:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL7
	bge .mainL9
	.section	.note.GNU-stack,"",%progbits
