.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
func:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.funcL0:
.funcL1:
	cmp r0,#50
	ble .funcL2
.funcL3:
	@call void @putint(i32 %r0)
	push {r0}
	bl putint
	pop {r0}
	mov r0,#0
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.funcL2:
	@call void @putint(i32 %r0)
	push {r0}
	bl putint
	pop {r0}
	mov r0,#1
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
main:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
.mainL16:
.mainL18:
.mainL19:
	@call void @putint(i32 0)
	mov r0,#0
	bl putint
.mainL17:
.mainL2:
.mainL4:
.mainL21:
.mainL23:
.mainL24:
	@call void @putint(i32 50)
	mov r0,#50
	bl putint
.mainL22:
.mainL14:
.mainL41:
.mainL43:
.mainL44:
	@call void @putint(i32 40)
	mov r0,#40
	bl putint
.mainL42:
.mainL9:
.mainL11:
	mov r0,#0
	add sp,sp,#8
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
