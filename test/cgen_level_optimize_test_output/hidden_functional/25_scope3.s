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
	@call void @putch(i32 97)
	mov r0,#97
	bl putch
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	mov r0,#46
	add sp,sp,#8
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
