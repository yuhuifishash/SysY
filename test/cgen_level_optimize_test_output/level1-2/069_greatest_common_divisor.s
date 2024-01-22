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
	@%r6 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@%r7 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
.mainL2:
.mainL4:
	cmp r7,#0
	bgt .mainL8
.mainL10:
	mov r6,r8
.mainL7:
.mainL3:
	@call void @putint(i32 %r20)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL8:
	mov r5,r7
	mov r7,r8
.mainL5:
	@%r14 = call i32 @__modsi3(i32 %r16,i32 %r15)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r5
	bl __modsi3
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
.mainL6:
	cmp r8,#0
	bgt .mainL9
.mainL11:
	mov r6,r5
	bl .mainL7
.mainL9:
	mov r7,r5
	mov r5,r8
	bl .mainL5
fun:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.funL0:
.funL1:
	cmp r1,#0
	bgt .funL6
.funL8:
	mov r8,r0
.funL5:
	mov r0,r8
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.funL6:
	mov r7,r0
	mov r6,r1
.funL3:
	@%r13 = call i32 @__modsi3(i32 %r24,i32 %r26)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r6
	bl __modsi3
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
.funL4:
	cmp r5,#0
	bgt .funL7
.funL9:
	mov r8,r6
	bl .funL5
.funL7:
	mov r7,r6
	mov r6,r5
	bl .funL3
	.section	.note.GNU-stack,"",%progbits
