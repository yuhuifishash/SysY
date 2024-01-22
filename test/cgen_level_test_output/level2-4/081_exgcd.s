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
	sub sp,sp,#24
.exgcdL0:
	str r0,[fp,#-20]
	str r1,[fp,#-24]
.exgcdL1:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	beq .exgcdL2
.exgcdL3:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-24]
	@%r22 = call i32 @__modsi3(i32 %r20,i32 %r21)
	sub sp,sp,#4 @stack align 8bytes
	push {r2,r3}
	mov r0,r7
	mov r1,r6
	bl __modsi3
	mov r5,r0
	pop {r2,r3}
	add sp,sp,#4 @stack align 8bytes
	mov r7,r2
	mov r6,r3
	@%r25 = call i32 @exgcd(i32 %r19,i32 %r22,ptr %r23,ptr %r24)
	sub sp,sp,#4 @stack align 8bytes
	push {r2,r3}
	mov r0,r8
	mov r1,r5
	mov r2,r7
	mov r3,r6
	bl exgcd
	mov r4,r0
	pop {r2,r3}
	add sp,sp,#4 @stack align 8bytes
	str r4,[fp,#-16]
	mov r8,#0
	mov r7,r8
	add r8,r2,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	mov r8,#0
	mov r7,r8
	add r8,r3,r7,lsl #2
	ldr r7,[r8]
	mov r8,#0
	mov r6,r8
	add r8,r2,r6,lsl #2
	str r7,[r8]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-24]
	@%r38 = call i32 @__aeabi_idiv(i32 %r36,i32 %r37)
	sub sp,sp,#4 @stack align 8bytes
	push {r2,r3}
	mov r0,r7
	mov r1,r6
	bl __aeabi_idiv
	mov r5,r0
	pop {r2,r3}
	add sp,sp,#4 @stack align 8bytes
	mov r7,#0
	mov r6,r7
	add r7,r3,r6,lsl #2
	ldr r6,[r7]
	mul r7,r5,r6
	sub r6,r8,r7
	mov r8,#0
	mov r7,r8
	add r8,r3,r7,lsl #2
	str r6,[r8]
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#24
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.exgcdL2:
	mov r8,#1
	mov r7,#0
	mov r6,r7
	add r7,r2,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	mov r7,#0
	mov r6,r7
	add r7,r3,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-20]
	mov r0,r8
	add sp,sp,#24
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.mainL0:
.mainL1:
	mov r8,#7
	str r8,[fp,#-24]
	mov r8,#15
	str r8,[fp,#-20]
	mvn r8,#15
	add r7,fp,r8
	@call void @memset(i32 %r30,i32 0,i32 4)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#4
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mov r8,#1
	mvn r7,#15
	add r6,fp,r7
	str r8,[r6]
	mvn r8,#11
	add r7,fp,r8
	@call void @memset(i32 %r36,i32 0,i32 4)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#4
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mov r8,#1
	mvn r7,#11
	add r6,fp,r7
	str r8,[r6]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	mvn r6,#15
	add r5,fp,r6
	mvn r6,#11
	add r4,fp,r6
	@%r14 = call i32 @exgcd(i32 %r10,i32 %r11,ptr %r12,ptr %r13)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	mov r2,r5
	mov r3,r4
	bl exgcd
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r7,r8
	mvn r8,#15
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-20]
	@%r19 = call i32 @__modsi3(i32 %r17,i32 %r18)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r8
	bl __modsi3
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-20]
	add r7,r6,r8
	ldr r8,[fp,#-20]
	@%r23 = call i32 @__modsi3(i32 %r21,i32 %r22)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r8
	bl __modsi3
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r7,r8
	mvn r8,#15
	add r5,fp,r8
	add r8,r5,r7,lsl #2
	str r6,[r8]
	mov r8,#0
	mov r7,r8
	mvn r8,#15
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	@call void @putint(i32 %r28)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#24
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
