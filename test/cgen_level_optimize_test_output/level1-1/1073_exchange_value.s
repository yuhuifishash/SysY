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
main:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r4 = call i32 @getint()
	bl getint
	mov r8,r0
	@%r5 = call i32 @getint()
	bl getint
	mov r7,r0
	@call void @putint(i32 %r5)
	mov r0,r7
	bl putint
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	@call void @putint(i32 %r4)
	mov r0,r8
	bl putint
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	mov r0,#0
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
