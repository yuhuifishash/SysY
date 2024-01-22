.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
if_ifElse_:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.if_ifElse_L0:
.if_ifElse_L1:
.if_ifElse_L2:
.if_ifElse_L4:
.if_ifElse_L6:
.if_ifElse_L3:
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
.mainL7:
.mainL8:
.mainL6:
.mainL3:
	mov r0,#25
	add sp,sp,#8
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
