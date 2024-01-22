.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
ififElse:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.ififElseL0:
.ififElseL1:
.ififElseL2:
.ififElseL4:
.ififElseL6:
.ififElseL3:
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
