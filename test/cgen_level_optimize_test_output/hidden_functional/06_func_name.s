.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
f:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.fL0:
.fL1:
	mov r0,#10
	add sp,sp,#8
	pop {fp,pc}
main:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	mov r0,#20
	add sp,sp,#8
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
