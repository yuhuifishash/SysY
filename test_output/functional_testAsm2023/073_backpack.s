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
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#92
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-92]
	mvn r8,#87
	add r7,fp,r8
	@call void @memset(i32 %r41,i32 0,i32 24)
	mov r0,r7
	mov r1,#0
	mov r2,#24
	bl memset
	mov r8,#0
	mvn r7,#87
	add r6,fp,r7
	str r8,[r6]
	mov r8,#2
	mov r7,#1
	mvn r6,#87
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	mov r7,#2
	mvn r6,#87
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#6
	mov r7,#3
	mvn r6,#87
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#5
	mov r7,#4
	mvn r6,#87
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#5
	mvn r6,#87
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mvn r8,#63
	add r7,fp,r8
	@call void @memset(i32 %r67,i32 0,i32 24)
	mov r0,r7
	mov r1,#0
	mov r2,#24
	bl memset
	mov r8,#0
	mvn r7,#63
	add r6,fp,r7
	str r8,[r6]
	mov r8,#6
	mov r7,#1
	mvn r6,#63
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#2
	mvn r6,#63
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#5
	mov r7,#3
	mvn r6,#63
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#4
	mvn r6,#63
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#6
	mov r7,#5
	mvn r6,#63
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#5
	str r8,[fp,#-16]
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mvn r7,#87
	add r6,fp,r7
	mvn r7,#63
	add r5,fp,r7
	mvn r7,#39
	add r4,fp,r7
	ldr r7,[fp,#-12]
	@%r38 = call i32 @KnapSack(i32 %r33,ptr %r34,ptr %r35,ptr %r36,i32 %r37)
	sub sp,sp,#4 @stack align 8bytes
	sub sp,sp,#4
	str r7,[sp,#0]  @%r37
	mov r0,r8
	mov r1,r6
	mov r2,r5
	mov r3,r4
	bl KnapSack
	add sp,sp,#4
	mov r3,r0
	add sp,sp,#4 @stack align 8bytes
	str r3,[fp,#-92]
	ldr r8,[fp,#-92]
	@call void @putint(i32 %r39)
	mov r0,r8
	bl putint
	mov r8,#0
	mov r0,r8
	add sp,sp,#92
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
KnapSack:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#32
.KnapSackL0:
	ldr r8,[fp,#20]
	str r0,[fp,#-28]
	str r8,[fp,#-32]
.KnapSackL1:
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#1
	str r8,[fp,#-24]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-28]
	cmp r8,r7
	ble .KnapSackL3
.KnapSackL5:
	ldr r8,[fp,#-32]
	str r8,[fp,#-20]
	ldr r8,[fp,#-28]
	str r8,[fp,#-24]
	ldr r8,[fp,#-24]
	mov r7,#1
	cmp r8,r7
	bge .KnapSackL17
.KnapSackL19:
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-32]
	mov r6,#200
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#32
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.KnapSackL17:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	mov r6,#200
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-24]
	mov r6,#1
	sub r5,r7,r6
	ldr r7,[fp,#-20]
	mov r6,#200
	mul r6,r5,r6
	mov r5,r6
	add r5,r5,r7
	ldr r7,.LPIC0
	add r6,r7,r5,lsl #2
	ldr r7,[r6]
	cmp r8,r7
	bgt .KnapSackL20
.KnapSackL21:
	mov r8,#0
	ldr r7,[fp,#-24]
	mov r6,r7
	add r7,r3,r6,lsl #2
	str r8,[r7]
.KnapSackL22:
	ldr r8,[fp,#-24]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-24]
.KnapSackL18:
	ldr r8,[fp,#-24]
	mov r7,#1
	cmp r8,r7
	bge .KnapSackL17
	blt .KnapSackL19
.KnapSackL20:
	mov r8,#1
	ldr r7,[fp,#-24]
	mov r6,r7
	add r7,r3,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	mov r6,r7
	add r7,r1,r6,lsl #2
	ldr r6,[r7]
	sub r7,r8,r6
	str r7,[fp,#-20]
	bl .KnapSackL22
.KnapSackL3:
	mov r8,#0
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-32]
	mov r6,#1
	add r5,r7,r6
	cmp r8,r5
	blt .KnapSackL7
.KnapSackL9:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
.KnapSackL4:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-28]
	cmp r8,r7
	ble .KnapSackL3
	bgt .KnapSackL5
.KnapSackL7:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	mov r6,r7
	add r7,r1,r6,lsl #2
	ldr r6,[r7]
	cmp r8,r6
	blt .KnapSackL10
.KnapSackL11:
	ldr r8,[fp,#-24]
	mov r7,#1
	sub r6,r8,r7
	ldr r8,[fp,#-20]
	mov r7,#200
	mul r7,r6,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC0
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	str r8,[fp,#-16]
	ldr r8,[fp,#-24]
	mov r7,#1
	sub r6,r8,r7
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	mov r5,r7
	add r7,r1,r5,lsl #2
	ldr r5,[r7]
	sub r7,r8,r5
	mov r8,#200
	mul r8,r6,r8
	mov r6,r8
	add r6,r6,r7
	ldr r8,.LPIC0
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	ldr r7,[fp,#-24]
	mov r6,r7
	add r7,r2,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	str r7,[fp,#-12]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	cmp r8,r7
	bgt .KnapSackL13
.KnapSackL14:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-24]
	ldr r6,[fp,#-20]
	mov r5,#200
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC0
	add r5,r6,r7,lsl #2
	str r8,[r5]
.KnapSackL15:
.KnapSackL12:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.KnapSackL8:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-32]
	mov r6,#1
	add r5,r7,r6
	cmp r8,r5
	blt .KnapSackL7
	bge .KnapSackL9
.KnapSackL13:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-24]
	ldr r6,[fp,#-20]
	mov r5,#200
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC0
	add r5,r6,r7,lsl #2
	str r8,[r5]
	bl .KnapSackL15
.KnapSackL10:
	ldr r8,[fp,#-24]
	mov r7,#1
	sub r6,r8,r7
	ldr r8,[fp,#-20]
	mov r7,#200
	mul r7,r6,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC0
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	ldr r7,[fp,#-24]
	ldr r6,[fp,#-20]
	mov r5,#200
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC0
	add r5,r6,r7,lsl #2
	str r8,[r5]
	bl .KnapSackL12
	.section	.note.GNU-stack,"",%progbits
