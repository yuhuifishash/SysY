.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#28
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-28]
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#5
	str r8,[fp,#-28]
	mov r8,#5
	str r8,[fp,#-24]
	mov r8,#1
	str r8,[fp,#-20]
	mov r8,#2
	rsb r7,r8,#0
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#1
	mul r6,r8,r7
	mov r8,#2
	@%r19 = call i32 @__aeabi_idiv(i32 %r17,i32 %r18)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,r8
	bl __aeabi_idiv
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-28]
	ldr r6,[fp,#-24]
	sub r5,r8,r6
	add r8,r7,r5
	ldr r7,[fp,#-20]
	mov r6,#3
	add r5,r7,r6
	rsb r7,r5,#0
	mov r6,#2
	@%r29 = call i32 @__modsi3(i32 %r27,i32 %r28)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r6
	bl __modsi3
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	sub r7,r8,r5
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r31)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-16]
	mov r7,#2
	@%r34 = call i32 @__modsi3(i32 %r32,i32 %r33)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	mov r8,#67
	add r7,r6,r8
	ldr r8,[fp,#-28]
	ldr r6,[fp,#-24]
	sub r5,r8,r6
	rsb r8,r5,#0
	add r6,r7,r8
	ldr r8,[fp,#-20]
	mov r7,#2
	add r5,r8,r7
	mov r8,#2
	@%r46 = call i32 @__modsi3(i32 %r44,i32 %r45)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	mov r1,r8
	bl __modsi3
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	rsb r8,r7,#0
	sub r7,r6,r8
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#3
	add r6,r8,r7
	str r6,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r52)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#28
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
