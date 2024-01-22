.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
fsqrt:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.fsqrtL0:
	str r0,[fp,#-20]
.fsqrtL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-20]
	mov r7,#2
	@%r8 = call i32 @__aeabi_idiv(i32 %r6,i32 %r7)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	str r6,[fp,#-12]
.fsqrtL2:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	sub r6,r8,r7
	mov r8,#0
	cmp r6,r8
	bne .fsqrtL3
.fsqrtL4:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.fsqrtL3:
	ldr r8,[fp,#-12]
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-16]
	@%r20 = call i32 @__aeabi_idiv(i32 %r18,i32 %r19)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r6
	bl __aeabi_idiv
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	add r7,r8,r5
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#2
	@%r24 = call i32 @__aeabi_idiv(i32 %r22,i32 %r23)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	str r6,[fp,#-12]
	bl .fsqrtL2
main:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#400
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	@%r6 = call i32 @fsqrt(i32 %r5)
	mov r0,r8
	bl fsqrt
	mov r7,r0
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r7)
	mov r0,r8
	bl putint
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putch(i32 %r9)
	mov r0,r8
	bl putch
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
