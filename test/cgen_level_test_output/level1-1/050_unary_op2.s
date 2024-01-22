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
	mov r8,#56
	str r8,[fp,#-16]
	mov r8,#4
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,#4
	rsb r6,r7,#0
	sub r7,r8,r6
	ldr r8,[fp,#-12]
	mov r6,r8
	add r8,r7,r6
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	cmp r8,#0
	ite eq
	moveq r8, #1
	movne r8, #0
	uxtb r8, r8
	cmp r8,#0
	ite eq
	moveq r8, #1
	movne r8, #0
	uxtb r8, r8
	cmp r8,#0
	ite eq
	moveq r8, #1
	movne r8, #0
	uxtb r8, r8
	rsb r7,r8,#0
	mov r8,r7
	cmp r8,#0
	bne .mainL2
.mainL3:
	mov r8,#0
	ldr r7,[fp,#-12]
	mov r6,r7
	add r7,r8,r6
	str r7,[fp,#-16]
.mainL4:
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r31)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL2:
	mov r8,#1
	rsb r7,r8,#0
	rsb r8,r7,#0
	rsb r7,r8,#0
	str r7,[fp,#-16]
	bl .mainL4
	.section	.note.GNU-stack,"",%progbits
