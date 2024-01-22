.arch armv7-a
.fpu vfpv3-d16
.arm
.data
n:
	.word  0
.text
.global main
.LPIC0:
	.word  n
gcd:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#32
.gcdL0:
	str r0,[fp,#-28]
	str r1,[fp,#-32]
.gcdL1:
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	ldr r8,[fp,#-28]
	str r8,[fp,#-24]
	ldr r8,[fp,#-32]
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-32]
	cmp r8,r7
	blt .gcdL2
.gcdL3:
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-32]
	@%r24 = call i32 @__modsi3(i32 %r22,i32 %r23)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	str r6,[fp,#-12]
.gcdL4:
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	bne .gcdL5
.gcdL6:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	mul r6,r8,r7
	ldr r8,[fp,#-32]
	@%r39 = call i32 @__aeabi_idiv(i32 %r37,i32 %r38)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,r8
	bl __aeabi_idiv
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r7
	add sp,sp,#32
	pop {r6,r7,r8}
	pop {fp,pc}
.gcdL5:
	ldr r8,[fp,#-32]
	str r8,[fp,#-28]
	ldr r8,[fp,#-12]
	str r8,[fp,#-32]
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-32]
	@%r34 = call i32 @__modsi3(i32 %r32,i32 %r33)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	str r6,[fp,#-12]
	bl .gcdL4
.gcdL2:
	ldr r8,[fp,#-28]
	str r8,[fp,#-16]
	ldr r8,[fp,#-32]
	str r8,[fp,#-28]
	ldr r8,[fp,#-16]
	str r8,[fp,#-32]
	bl .gcdL3
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
	@%r4 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-16]
	@%r5 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	@%r8 = call i32 @gcd(i32 %r6,i32 %r7)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl gcd
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r6
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
