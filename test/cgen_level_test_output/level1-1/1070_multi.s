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
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-16]
.mainL2:
	ldr r8,[fp,#-16]
	mov r7,#21
	cmp r8,r7
	blt .mainL3
.mainL4:
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r17)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL3:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	mul r6,r8,r7
	str r6,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL2
	.section	.note.GNU-stack,"",%progbits
