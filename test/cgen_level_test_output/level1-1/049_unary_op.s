.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
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
	str r8,[fp,#-12]
.mainL4:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#12
	pop {r7,r8}
	pop {fp,pc}
.mainL2:
	mov r8,#1
	rsb r7,r8,#0
	rsb r8,r7,#0
	rsb r7,r8,#0
	str r7,[fp,#-12]
	bl .mainL4
	.section	.note.GNU-stack,"",%progbits
