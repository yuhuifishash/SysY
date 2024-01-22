.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
dec2bin:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#28
.dec2binL0:
	str r0,[fp,#-28]
.dec2binL1:
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#1
	str r8,[fp,#-20]
	ldr r8,[fp,#-28]
	str r8,[fp,#-12]
.dec2binL2:
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	bne .dec2binL3
.dec2binL4:
	ldr r8,[fp,#-24]
	mov r0,r8
	add sp,sp,#28
	pop {r6,r7,r8}
	pop {fp,pc}
.dec2binL3:
	ldr r8,[fp,#-12]
	mov r7,#2
	@%r20 = call i32 @__modsi3(i32 %r18,i32 %r19)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	str r6,[fp,#-16]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	mul r6,r8,r7
	ldr r8,[fp,#-24]
	add r7,r6,r8
	str r7,[fp,#-24]
	ldr r8,[fp,#-20]
	mov r7,#10
	mul r6,r8,r7
	str r6,[fp,#-20]
	ldr r8,[fp,#-12]
	mov r7,#2
	@%r31 = call i32 @__aeabi_idiv(i32 %r29,i32 %r30)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-12]
	bl .dec2binL2
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
	@%r6 = call i32 @dec2bin(i32 %r5)
	mov r0,r8
	bl dec2bin
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
