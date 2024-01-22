.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
ifElse:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.ifElseL0:
.ifElseL1:
.ifElseL2:
.ifElseL4:
	mov r0,#25
	add sp,sp,#8
	pop {fp,pc}
main:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
.mainL2:
.mainL4:
.mainL5:
.mainL6:
.mainL3:
	mov r0,#25
	add sp,sp,#8
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
