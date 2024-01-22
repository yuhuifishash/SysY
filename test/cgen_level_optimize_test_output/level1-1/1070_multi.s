.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
.mainL6:
	mov r8,#0
	mov r7,#0
.mainL3:
	mul r6,r8,r7
	add r5,r7,#1
.mainL4:
	cmp r5,#21
	blt .mainL7
.mainL5:
	@call void @putint(i32 %r13)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL7:
	mov r8,r6
	mov r7,r5
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
