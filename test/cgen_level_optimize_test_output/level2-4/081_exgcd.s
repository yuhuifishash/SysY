.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
exgcd:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.exgcdL0:
.exgcdL1:
	cmp r1,#0
	beq .exgcdL2
.exgcdL3:
	@%r22 = call i32 @__modsi3(i32 %r0,i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	bl __modsi3
	mov r8,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	mov r7,r2
	mov r6,r3
	@%r25 = call i32 @exgcd(i32 %r1,i32 %r22,ptr %r23,ptr %r24)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r1
	mov r1,r8
	mov r2,r7
	mov r3,r6
	bl exgcd
	mov r5,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	mov r8,r2
	ldr r7,[r8]
	mov r6,r3
	ldr r4,[r6]
	str r4,[r8]
	@%r38 = call i32 @__aeabi_idiv(i32 %r0,i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	bl __aeabi_idiv
	mov r8,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	ldr r4,[r6]
	mul r1,r8,r4
	sub r8,r7,r1
	str r8,[r6]
	mov r0,r5
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.exgcdL2:
	mov r8,r2
	mov r7,#1
	str r7,[r8]
	mov r8,r3
	mov r7,#0
	str r7,[r8]
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.mainL0:
.mainL1:
	mvn r8,#15
	add r7,fp,r8
	@call void @memset(i32 %r30,i32 0,i32 4)
	mov r0,r7
	mov r1,#0
	mov r2,#4
	bl memset
	mvn r8,#15
	add r7,fp,r8
	mov r8,#1
	str r8,[r7]
	mvn r8,#11
	add r6,fp,r8
	@call void @memset(i32 %r37,i32 0,i32 4)
	mov r0,r6
	mov r1,#0
	mov r2,#4
	bl memset
	mvn r8,#11
	add r6,fp,r8
	mov r8,#1
	str r8,[r6]
	mvn r8,#15
	add r6,fp,r8
	mvn r8,#11
	add r5,fp,r8
	@%r14 = call i32 @exgcd(i32 7,i32 15,ptr %r12,ptr %r13)
	mov r0,#7
	mov r1,#15
	mov r2,r6
	mov r3,r5
	bl exgcd
	mov r8,r0
	ldr r8,[r7]
	movw r6,#34953
	movt r6,#34952  @ -2004318071
	smmul r6,r8,r6
	asr r5,r8,#31
	add r6,r8,r6
	rsb r6,r5,r6,asr #3
	rsb r6,r6,r6,lsl #4
	sub r5,r8,r6
	add r8,r5,#15
	movw r6,#34953
	movt r6,#34952  @ -2004318071
	smmul r6,r8,r6
	asr r5,r8,#31
	add r6,r8,r6
	rsb r6,r5,r6,asr #3
	rsb r6,r6,r6,lsl #4
	sub r5,r8,r6
	str r5,[r7]
	ldr r8,[r7]
	@call void @putint(i32 %r28)
	mov r0,r8
	bl putint
	mov r0,#0
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
