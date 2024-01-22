.arch armv7-a
.fpu vfpv3-d16
.arm
.data
V:
	.space  160000
.text
.global main
.LPIC0:
	.word  V
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#80
.mainL0:
.mainL1:
	mvn r8,#79
	add r7,fp,r8
	@call void @memset(i32 %r41,i32 0,i32 24)
	mov r0,r7
	mov r1,#0
	mov r2,#24
	bl memset
	mvn r8,#79
	add r7,fp,r8
	mov r8,#0
	str r8,[r7]
	mov r8,#1
	mvn r7,#79
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#2
	mvn r7,#79
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#3
	mvn r7,#79
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#6
	str r8,[r7]
	mov r8,#4
	mvn r7,#79
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mov r8,#5
	mvn r7,#79
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mvn r8,#55
	add r7,fp,r8
	@call void @memset(i32 %r73,i32 0,i32 24)
	mov r0,r7
	mov r1,#0
	mov r2,#24
	bl memset
	mvn r8,#55
	add r7,fp,r8
	mov r8,#0
	str r8,[r7]
	mov r8,#1
	mvn r7,#55
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#6
	str r8,[r7]
	mov r8,#2
	mvn r7,#55
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#3
	mvn r7,#55
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mov r8,#4
	mvn r7,#55
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#5
	mvn r7,#55
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#6
	str r8,[r7]
	mvn r8,#79
	add r7,fp,r8
	mvn r8,#55
	add r6,fp,r8
	mvn r8,#31
	add r5,fp,r8
	@%r38 = call i32 @KnapSack(i32 5,ptr %r34,ptr %r35,ptr %r36,i32 10)
	sub sp,sp,#4 @stack align 8bytes
	sub sp,sp,#4
	mov r9,#10
	str r9,[sp,#0]  @10
	mov r0,#5
	mov r1,r7
	mov r2,r6
	mov r3,r5
	bl KnapSack
	add sp,sp,#4
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r38)
	mov r0,r8
	bl putint
	mov r0,#0
	add sp,sp,#80
	pop {r5,r6,r7,r8}
	pop {fp,pc}
KnapSack:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#32
.KnapSackL0:
	mov r9,r1
	str r9,[fp,#-32]
	mov r9,r3
	str r9,[fp,#-24]
	mov r9,r2
	str r9,[fp,#-16]
	mov r9,r0
	str r9,[fp,#-12]
	ldr r9,[fp,#32]
	str r9,[fp,#-20]
.KnapSackL1:
	ldr r9,[fp,#-12]
	cmp r9,#1
	bge .KnapSackL23
.KnapSackL5:
	ldr r9,[fp,#-12]
	cmp r9,#1
	bge .KnapSackL25
.KnapSackL19:
	mov r7,#200
	ldr r9,[fp,#-12]
	mul r7,r9,r7
	mov r6,r7
	ldr r9,[fp,#-20]
	add r6,r6,r9
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mov r0,r7
	add sp,sp,#32
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.KnapSackL25:
	ldr r9,[fp,#-20]
	mov r7,r9
	ldr r9,[fp,#-12]
	mov r6,r9
.KnapSackL17:
	mov r5,#200
	mul r5,r6,r5
	mov r4,r5
	add r4,r4,r7
	ldr r5,.LPIC0
	add r0,r5,r4,lsl #2
	ldr r5,[r0]
	sub r4,r6,#1
	mov r0,#200
	mul r0,r4,r0
	mov r4,r0
	add r4,r4,r7
	ldr r0,.LPIC0
	add r2,r0,r4,lsl #2
	ldr r4,[r2]
	cmp r5,r4
	bgt .KnapSackL20
.KnapSackL21:
	mov r5,r6
	ldr r9,[fp,#-24]
	add r4,r9,r5,lsl #2
	mov r5,#0
	str r5,[r4]
	mov r5,r7
.KnapSackL22:
	sub r4,r6,#1
.KnapSackL18:
	cmp r4,#1
	blt .KnapSackL19
.KnapSackL28:
	mov r7,r5
	mov r6,r4
	bl .KnapSackL17
.KnapSackL20:
	mov r4,r6
	ldr r9,[fp,#-24]
	add r2,r9,r4,lsl #2
	mov r4,#1
	str r4,[r2]
	mov r4,r6
	ldr r9,[fp,#-32]
	add r2,r9,r4,lsl #2
	ldr r4,[r2]
	sub r2,r7,r4
	mov r5,r2
	bl .KnapSackL22
.KnapSackL23:
	ldr r9,[fp,#-20]
	add r10,r9,#1
	str r10,[fp,#-28]
	mov r6,#1
.KnapSackL3:
	ldr r9,[fp,#-28]
	cmp r9,#0
	bgt .KnapSackL24
.KnapSackL9:
	add r5,r6,#1
.KnapSackL4:
	ldr r9,[fp,#-12]
	cmp r5,r9
	bgt .KnapSackL5
.KnapSackL26:
	mov r6,r5
	bl .KnapSackL3
.KnapSackL24:
	mov r5,r6
	ldr r9,[fp,#-32]
	add r4,r9,r5,lsl #2
	ldr r9,[fp,#-20]
	add r5,r9,#1
	mov r2,#0
.KnapSackL7:
	ldr r0,[r4]
	cmp r2,r0
	blt .KnapSackL10
.KnapSackL11:
	sub r8,r6,#1
	mov r0,#200
	mul r0,r8,r0
	mov r8,r0
	ldr r0,.LPIC0
	add r3,r0,r8,lsl #2
	mov r8,r2
	add r0,r3,r8,lsl #2
	ldr r8,[r0]
	mov r0,r6
	ldr r9,[fp,#-32]
	add r7,r9,r0,lsl #2
	ldr r0,[r7]
	sub r7,r2,r0
	mov r0,r7
	add r7,r3,r0,lsl #2
	ldr r3,[r7]
	mov r7,r6
	ldr r9,[fp,#-16]
	add r0,r9,r7,lsl #2
	ldr r7,[r0]
	add r0,r3,r7
	cmp r8,r0
	bgt .KnapSackL13
.KnapSackL14:
	mov r7,#200
	mul r7,r6,r7
	mov r3,r7
	add r3,r3,r2
	ldr r7,.LPIC0
	add r1,r7,r3,lsl #2
	str r0,[r1]
.KnapSackL15:
.KnapSackL12:
	add r7,r2,#1
.KnapSackL8:
	cmp r7,r5
	bge .KnapSackL9
.KnapSackL27:
	mov r2,r7
	bl .KnapSackL7
.KnapSackL13:
	mov r7,#200
	mul r7,r6,r7
	mov r3,r7
	add r3,r3,r2
	ldr r7,.LPIC0
	add r1,r7,r3,lsl #2
	str r8,[r1]
	bl .KnapSackL15
.KnapSackL10:
	sub r8,r6,#1
	mov r7,#200
	mul r7,r8,r7
	mov r8,r7
	add r8,r8,r2
	ldr r7,.LPIC0
	add r3,r7,r8,lsl #2
	ldr r8,[r3]
	mov r7,#200
	mul r7,r6,r7
	mov r3,r7
	add r3,r3,r2
	ldr r7,.LPIC0
	add r1,r7,r3,lsl #2
	str r8,[r1]
	bl .KnapSackL12
	.section	.note.GNU-stack,"",%progbits
