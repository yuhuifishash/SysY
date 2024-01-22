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
.matrix_multiplyL2:
	ldr r8,[fp,#-20]
	ldr r7,.LPIC3
	ldr r6,[r7]
	cmp r8,r6
	blt .matrix_multiplyL3
.matrix_multiplyL4:
	add sp,sp,#20
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.matrix_multiplyL3:
	mov r8,#0
	str r8,[fp,#-16]
.matrix_multiplyL5:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC6
	ldr r6,[r7]
	cmp r8,r6
	blt .matrix_multiplyL6
.matrix_multiplyL7:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	bl .matrix_multiplyL2
.matrix_multiplyL6:
	mov r8,#0
	str r8,[fp,#-12]
.matrix_multiplyL8:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	blt .matrix_multiplyL9
.matrix_multiplyL10:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .matrix_multiplyL5
.matrix_multiplyL9:
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
	bl .matrix_multiplyL8
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
.mainL2:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC3
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
.mainL4:
	@%r28 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC4
	str r8,[r7]
	@%r29 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC6
	str r8,[r7]
	mov r8,#0
	str r8,[fp,#-16]
.mainL8:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC4
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL9
.mainL10:
	@call void @matrix_multiply()
	bl matrix_multiply
	mov r8,#0
	str r8,[fp,#-16]
.mainL14:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC3
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL15
.mainL16:
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL15:
	mov r8,#0
	str r8,[fp,#-12]
.mainL17:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC6
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL18
.mainL19:
	mov r8,#10
	@call void @putch(i32 %r72)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL14
.mainL18:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	mov r6,#100
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC7
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r67)
	mov r0,r8
	bl putint
	mov r8,#32
	@call void @putch(i32 %r68)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL17
.mainL9:
	mov r8,#0
	str r8,[fp,#-12]
.mainL11:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC6
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL12
.mainL13:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL8
.mainL12:
	@%r42 = call i32 @getint()
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
	bl .mainL11
.mainL3:
	mov r8,#0
	str r8,[fp,#-12]
.mainL5:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL6
.mainL7:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL2
.mainL6:
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
	bl .mainL5
	.section	.note.GNU-stack,"",%progbits
