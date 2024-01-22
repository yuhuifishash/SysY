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
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	mov r8,#203
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	add r7,r8,r8
	sub r8,r7,#2
	str r8,[r6]
	mov r0,#0
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
