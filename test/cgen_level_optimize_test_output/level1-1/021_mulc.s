.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a:
	.word  5
.text
.global main
.LPIC0:
	.word  a
main:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	mov r0,#25
	add sp,sp,#8
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
