.arch armv7-a
.fpu vfpv3-d16
.arm
.data
N:
	.word  -1
arr:
	.word  1
	.word  2
	.word  33
	.word  4
	.word  5
	.word  6
.text
.global main
.LPIC0:
	.word  N
.LPIC1:
	.word  arr
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
	ldr r8,[fp,#-16]
	mov r7,#6
	cmp r8,r7
	blt .mainL3
.mainL5:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	add r6,r8,r7
	str r6,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL4:
	ldr r8,[fp,#-16]
	mov r7,#6
	cmp r8,r7
	blt .mainL3
	bge .mainL5
	.section	.note.GNU-stack,"",%progbits
