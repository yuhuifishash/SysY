.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
f:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.fL0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
.fL1:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	mul r6,r8,r7
	mov r0,r6
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
g:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.gL0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
.gL1:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	@%r6 = call i32 @__modsi3(i32 %r4,i32 %r5)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r6
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
h:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.hL0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
.hL1:
	mov r8,#2
	ldr r7,[fp,#-12]
	ldr r6,[fp,#-16]
	@%r7 = call i32 @g(i32 %r5,i32 %r6)
	mov r0,r7
	mov r1,r6
	bl g
	mov r5,r0
	@%r8 = call i32 @f(i32 %r4,i32 %r7)
	mov r0,r8
	mov r1,r5
	bl f
	mov r7,r0
	ldr r8,[fp,#-12]
	ldr r6,[fp,#-16]
	@%r11 = call i32 @f(i32 %r9,i32 %r10)
	mov r0,r8
	mov r1,r6
	bl f
	mov r5,r0
	mov r8,#4
	@%r13 = call i32 @g(i32 %r11,i32 %r12)
	mov r0,r5
	mov r1,r8
	bl g
	mov r6,r0
	@%r14 = call i32 @f(i32 %r8,i32 %r13)
	mov r0,r7
	mov r1,r6
	bl f
	mov r8,r0
	mov r0,r8
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	mov r8,#11
	mov r7,#3
	@%r2 = call i32 @h(i32 %r0,i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl h
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r2)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
