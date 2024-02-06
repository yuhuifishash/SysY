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
	movw r8,#1221
	movt r8,#0  @ 1221
	mov r7,r8
	str r7,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	@%r6 = call i32 @palindrome(i32 %r5)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl palindrome
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#1
	cmp r8,r7
	beq .mainL2
.mainL3:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r14)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
.mainL4:
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putch(i32 %r16)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL2:
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r12)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	bl .mainL4
palindrome:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#36
.palindromeL0:
	str r0,[fp,#-36]
.palindromeL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#4
	cmp r8,r7
	blt .palindromeL3
.palindromeL5:
	mov r8,#0
	mov r7,r8
	mvn r8,#31
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	mov r8,#3
	mov r6,r8
	mvn r8,#31
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	ldr r6,[r8]
	cmp r7,r6
	beq .palindromeL9
.palindromeL7:
	mov r8,#0
	str r8,[fp,#-12]
.palindromeL8:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#36
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.palindromeL9:
	mov r8,#1
	mov r7,r8
	mvn r8,#31
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	mov r8,#2
	mov r6,r8
	mvn r8,#31
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	ldr r6,[r8]
	cmp r7,r6
	bne .palindromeL7
.palindromeL6:
	mov r8,#1
	str r8,[fp,#-12]
	bl .palindromeL8
.palindromeL3:
	ldr r8,[fp,#-36]
	mov r7,#10
	@%r15 = call i32 @__modsi3(i32 %r13,i32 %r14)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-16]
	mov r7,r8
	mvn r8,#31
	add r5,fp,r8
	add r8,r5,r7,lsl #2
	str r6,[r8]
	ldr r8,[fp,#-36]
	mov r7,#10
	@%r20 = call i32 @__aeabi_idiv(i32 %r18,i32 %r19)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	str r6,[fp,#-36]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.palindromeL4:
	ldr r8,[fp,#-16]
	mov r7,#4
	cmp r8,r7
	blt .palindromeL3
	bge .palindromeL5
	.section	.note.GNU-stack,"",%progbits
