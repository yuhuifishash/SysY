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
	sub sp,sp,#28
.mainL0:
.mainL1:
	mov r8,#5
	str r8,[fp,#-28]
	mov r8,#7
	str r8,[fp,#-24]
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-24]
	add r6,r8,r7
	str r6,[fp,#-20]
	mov r8,#23
	str r8,[fp,#-16]
	ldr r8,[fp,#-20]
	cmp r8,#0
	bne .mainL2
.mainL3:
	ldr r8,[fp,#-20]
	cmp r8,#0
	beq .mainL4
.mainL5:
	mov r8,#3
	ldr r7,[fp,#-16]
	mul r6,r8,r7
	str r6,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#28
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL4:
	mov r8,#3
	mov r7,#5
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL5
.mainL2:
	movw r8,#389
	movt r8,#0  @ 389
	mov r7,r8
	str r7,[fp,#-16]
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
