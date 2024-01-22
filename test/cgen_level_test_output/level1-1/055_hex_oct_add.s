.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#15
	str r8,[fp,#-16]
	mov r8,#12
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	add r6,r8,r7
	mov r8,#61
	add r7,r6,r8
	mov r0,r7
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
