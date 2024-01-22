.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	mov r0,#11
	add sp,sp,#8
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
