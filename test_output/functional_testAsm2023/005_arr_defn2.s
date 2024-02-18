.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a:
	.space  400
.text
.global main
.LPIC0:
	.word  a
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	mov r8,#0
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
