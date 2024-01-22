.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#10
	str r8,[fp,#-24]
	mov r8,#4
	str r8,[fp,#-20]
	mov r8,#2
	str r8,[fp,#-16]
	mov r8,#2
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-24]
	ldr r6,[fp,#-20]
	mul r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-12]
	sub r6,r7,r8
	mov r0,r6
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
