.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
defn:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.defnL0:
.defnL1:
	mov r0,#4
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
.mainL3:
	mov r0,#4
	add sp,sp,#8
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
