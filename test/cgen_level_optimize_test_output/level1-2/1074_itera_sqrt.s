.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
fsqrt:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.fsqrtL0:
.fsqrtL1:
	add r8,r0,r0,lsr #31
	asr r7,r8,#1
	rsb r8,r7,#0
	cmp r8,#0
	bne .fsqrtL6
.fsqrtL8:
	mov r8,r7
.fsqrtL5:
	mov r0,r8
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.fsqrtL6:
	mov r6,r7
.fsqrtL3:
	@%r20 = call i32 @__aeabi_idiv(i32 %r0,i32 %r33)
	push {r0}
	mov r1,r6
	bl __aeabi_idiv
	mov r7,r0
	pop {r0}
	add r5,r6,r7
	add r7,r5,r5,lsr #31
	asr r5,r7,#1
.fsqrtL4:
	sub r7,r6,r5
	cmp r7,#0
	bne .fsqrtL7
.fsqrtL9:
	mov r8,r5
	bl .fsqrtL5
.fsqrtL7:
	mov r6,r5
	bl .fsqrtL3
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r6 = call i32 @fsqrt(i32 400)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#400
	bl fsqrt
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r6)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r0,#0
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
