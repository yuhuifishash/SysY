.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
f:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.fL0:
.fL1:
	lsl r8,r0,#1
	mov r0,r8
	add sp,sp,#8
	pop {r8}
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
	mov r0,#20
	add sp,sp,#8
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
