.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a:
	.space  4
	.word  1
	.word  2
	.word  3
	.word  4
.text
.global main
.LPIC0:
	.word  a
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	mov r8,#4
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
