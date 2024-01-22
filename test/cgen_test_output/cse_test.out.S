.arch armv7-a
.fpu vfpv3-d16
.arm
.data
d:
	.word  5
A:
	.space  40000
.text
.global main
.LPIC0:
	.word  A
.LPIC1:
	.word  d
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.mainL0:
.mainL1:
	mov r8,#2
	str r8,[fp,#-16]
	mov r8,#3
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	mov r6,#100
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-16]
	ldr r6,[fp,#-12]
	mov r5,#100
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC0
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	add r6,r8,r7
	mov r8,#2
	sub r7,r6,r8
	ldr r8,[fp,#-16]
	ldr r6,[fp,#-12]
	mov r5,#100
	mul r5,r8,r5
	mov r8,r5
	add r8,r8,r6
	ldr r6,.LPIC0
	add r5,r6,r8,lsl #2
	str r7,[r5]
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
