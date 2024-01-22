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
	mov r8,#10
	str r8,[fp,#-16]
	mov r8,#30
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,#5
	rsb r6,r7,#0
	sub r7,r8,r6
	ldr r8,[fp,#-12]
	add r6,r7,r8
	mov r8,#5
	rsb r7,r8,#0
	add r8,r6,r7
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
