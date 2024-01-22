.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
move:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#16
.moveL0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
.moveL1:
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r4)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#32
	@call void @putch(i32 %r5)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r6)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#44
	@call void @putch(i32 %r7)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#32
	@call void @putch(i32 %r8)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	add sp,sp,#16
	pop {r8}
	pop {fp,pc}
hanoi:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.hanoiL0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
	str r2,[fp,#-20]
	str r3,[fp,#-24]
.hanoiL1:
	ldr r8,[fp,#-12]
	mov r7,#1
	cmp r8,r7
	beq .hanoiL2
.hanoiL3:
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-24]
	ldr r5,[fp,#-20]
	@call void @hanoi(i32 %r17,i32 %r18,i32 %r19,i32 %r20)
	mov r0,r6
	mov r1,r8
	mov r2,r7
	mov r3,r5
	bl hanoi
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-24]
	@call void @move(i32 %r21,i32 %r22)
	mov r0,r8
	mov r1,r7
	bl move
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	ldr r5,[fp,#-24]
	@call void @hanoi(i32 %r25,i32 %r26,i32 %r27,i32 %r28)
	mov r0,r6
	mov r1,r8
	mov r2,r7
	mov r3,r5
	bl hanoi
.hanoiL4:
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.hanoiL2:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-24]
	@call void @move(i32 %r13,i32 %r14)
	mov r0,r8
	mov r1,r7
	bl move
	bl .hanoiL4
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-12]
.mainL2:
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	bgt .mainL3
.mainL4:
	mov r8,#0
	mov r0,r8
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	@%r7 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#1
	mov r6,#2
	mov r5,#3
	@call void @hanoi(i32 %r7,i32 %r8,i32 %r9,i32 %r10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	mov r2,r6
	mov r3,r5
	bl hanoi
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r11)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL2
	.section	.note.GNU-stack,"",%progbits
