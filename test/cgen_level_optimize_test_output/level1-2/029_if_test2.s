.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
ifElseIf:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.ifElseIfL0:
.ifElseIfL1:
.ifElseIfL5:
.ifElseIfL3:
.ifElseIfL10:
.ifElseIfL8:
.ifElseIfL15:
.ifElseIfL13:
.ifElseIfL14:
.ifElseIfL9:
.ifElseIfL4:
	mov r0,#-5
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
.mainL7:
.mainL5:
.mainL10:
.mainL8:
.mainL13:
.mainL11:
.mainL12:
.mainL9:
.mainL6:
.mainL3:
	@call void @putint(i32 -5)
	mvn r0,#4
	bl putint
	mov r0,#0
	add sp,sp,#8
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
