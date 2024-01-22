.arch armv7-a
.fpu vfpv3-d16
.arm
.data
N:
	.word  0
newline:
	.word  0
.text
.global main
.LPIC0:
	.word  N
.LPIC1:
	.word  newline
factor:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.factorL0:
	str r0,[fp,#-20]
.factorL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#1
	str r8,[fp,#-16]
.factorL2:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	mov r6,#1
	add r5,r7,r6
	cmp r8,r5
	blt .factorL3
.factorL4:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.factorL3:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	@%r17 = call i32 @__modsi3(i32 %r15,i32 %r16)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	cmp r6,r8
	beq .factorL5
.factorL6:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .factorL2
.factorL5:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .factorL6
main:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.mainL0:
.mainL1:
	mov r8,#4
	ldr r7,.LPIC0
	str r8,[r7]
	mov r8,#10
	ldr r7,.LPIC1
	str r8,[r7]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	movw r8,#1478
	movt r8,#0  @ 1478
	mov r7,r8
	str r7,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	@%r10 = call i32 @factor(i32 %r9)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl factor
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r7
	add sp,sp,#20
	pop {r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
