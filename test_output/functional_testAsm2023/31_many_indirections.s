.arch armv7-a
.fpu vfpv3-d16
.arm
.data
N:
	.word  100
M:
	.word  20
array:
	.space  8000
.text
.global main
.LPIC0:
	.word  M
.LPIC1:
	.word  N
.LPIC2:
	.word  array
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#72
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-20]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
.mainL5:
	mov r9,#0
	str r9,[fp,#-24]
	mov r9,#1
	str r9,[fp,#-28]
	mov r9,#2
	str r9,[fp,#-32]
	mov r9,#3
	str r9,[fp,#-36]
	mov r9,#4
	str r9,[fp,#-40]
	mov r9,#5
	str r9,[fp,#-44]
	mov r9,#6
	str r9,[fp,#-48]
	mov r9,#7
	str r9,[fp,#-52]
	mov r9,#8
	str r9,[fp,#-56]
	mov r9,#9
	str r9,[fp,#-60]
	mov r9,#10
	str r9,[fp,#-64]
	mov r9,#11
	str r9,[fp,#-68]
	mov r9,#12
	str r9,[fp,#-72]
	mov r4,#13
	mov r3,#14
	mov r2,#15
	mov r1,#16
	mov r0,#17
	mov r8,#18
	mov r7,#19
	mov r6,#23
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#100
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC2
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#100
	mul r7,r0,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC2
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	mov r7,#100
	mul r7,r1,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC2
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	mov r7,#100
	mul r7,r2,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC2
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	mov r7,#100
	mul r7,r3,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC2
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	mov r7,#100
	mul r7,r4,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC2
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	mov r7,#100
	ldr r9,[fp,#-72]
	mul r7,r9,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC2
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	mov r7,#100
	ldr r9,[fp,#-68]
	mul r7,r9,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC2
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	mov r7,#100
	ldr r9,[fp,#-64]
	mul r7,r9,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC2
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	mov r7,#100
	ldr r9,[fp,#-60]
	mul r7,r9,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC2
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	mov r7,#100
	ldr r9,[fp,#-56]
	mul r7,r9,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC2
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	mov r7,#100
	ldr r9,[fp,#-52]
	mul r7,r9,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC2
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	mov r7,#100
	ldr r9,[fp,#-48]
	mul r7,r9,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC2
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	mov r7,#100
	ldr r9,[fp,#-44]
	mul r7,r9,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC2
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	mov r7,#100
	ldr r9,[fp,#-40]
	mul r7,r9,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC2
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	mov r7,#100
	ldr r9,[fp,#-36]
	mul r7,r9,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC2
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	mov r7,#100
	ldr r9,[fp,#-32]
	mul r7,r9,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC2
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	mov r7,#100
	ldr r9,[fp,#-28]
	mul r7,r9,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC2
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	mov r7,#100
	ldr r9,[fp,#-24]
	mul r7,r9,r7
	mov r6,r7
	add r6,r6,r8
	ldr r8,.LPIC2
	add r7,r8,r6,lsl #2
	ldr r8,[r7]
	mov r7,#19
	mov r6,#18
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#17
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#16
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#15
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#14
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#13
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#12
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#11
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#10
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#9
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#8
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#7
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#6
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#5
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#4
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#3
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#2
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#1
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#0
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#56
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	add r6,r8,r7
	str r6,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r159)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#72
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL3:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL7
.mainL9:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL4:
	ldr r8,[fp,#-20]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
	bge .mainL5
.mainL7:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-20]
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
.mainL8:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL7
	bge .mainL9
	.section	.note.GNU-stack,"",%progbits
