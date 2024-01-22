.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#16
.mainL0:
.mainL1:
	mov r8,#10
	str r8,[fp,#-16]
	mov r8,#5
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#16
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
