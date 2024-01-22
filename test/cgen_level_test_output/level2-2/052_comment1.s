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
	sub sp,sp,#12
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#5
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#12
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
