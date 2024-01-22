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
	@call void @putint(i32 -1)
	mvn r0,#0
	bl putint
	@call void @putint(i32 71)
	mov r0,#71
	bl putint
	mov r0,#0
	add sp,sp,#8
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
