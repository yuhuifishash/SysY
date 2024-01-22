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
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#20
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	@%r4 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-20]
	@%r5 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-20]
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	str r8,[fp,#-20]
	ldr r8,[fp,#-12]
	str r8,[fp,#-16]
	ldr r8,[fp,#-20]
	@call void @putint(i32 %r11)
	mov r0,r8
	bl putint
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putch(i32 %r13)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r14)
	mov r0,r8
	bl putint
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putch(i32 %r16)
	mov r0,r8
	bl putch
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
