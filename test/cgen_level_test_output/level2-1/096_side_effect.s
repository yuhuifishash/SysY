.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a:
	.word  -1
b:
	.word  1
.text
.global main
.LPIC0:
	.word  a
.LPIC1:
	.word  b
inc_a:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.inc_aL0:
.inc_aL1:
	ldr r8,.LPIC0
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC0
	str r8,[r7]
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.mainL0:
.mainL1:
	mov r8,#5
	str r8,[fp,#-12]
.mainL2:
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	bge .mainL3
.mainL4:
	ldr r8,.LPIC0
	ldr r7,[r8]
	@call void @putint(i32 %r51)
	mov r0,r7
	bl putint
	mov r8,#32
	@call void @putch(i32 %r52)
	mov r0,r8
	bl putch
	ldr r8,.LPIC1
	ldr r7,[r8]
	@call void @putint(i32 %r53)
	mov r0,r7
	bl putint
	mov r8,#10
	@call void @putch(i32 %r54)
	mov r0,r8
	bl putch
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	@%r7 = call i32 @inc_a()
	bl inc_a
	mov r8,r0
	cmp r8,#0
	bne .mainL9
.mainL6:
	@%r23 = call i32 @inc_a()
	bl inc_a
	mov r8,r0
	mov r7,#14
	cmp r8,r7
	blt .mainL11
.mainL14:
	@%r28 = call i32 @inc_a()
	bl inc_a
	mov r8,r0
	cmp r8,#0
	bne .mainL16
.mainL12:
	@%r47 = call i32 @inc_a()
	bl inc_a
	mov r8,r0
.mainL13:
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL2
.mainL16:
	@%r30 = call i32 @inc_a()
	bl inc_a
	mov r8,r0
	@%r31 = call i32 @inc_a()
	bl inc_a
	mov r7,r0
	sub r6,r8,r7
	mov r8,#1
	add r7,r6,r8
	cmp r7,#0
	beq .mainL12
.mainL11:
	ldr r8,.LPIC0
	ldr r7,[r8]
	@call void @putint(i32 %r42)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r2,r3}
	mov r0,r7
	bl putint
	pop {r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	mov r6,#10
	@call void @putch(i32 %r43)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r2,r3}
	mov r0,r6
	bl putch
	pop {r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	ldr r5,.LPIC1
	ldr r4,[r5]
	mov r3,#2
	mul r2,r4,r3
	ldr r1,.LPIC1
	str r2,[r1]
	bl .mainL13
.mainL9:
	@%r9 = call i32 @inc_a()
	bl inc_a
	mov r8,r0
	cmp r8,#0
	beq .mainL6
.mainL7:
	@%r14 = call i32 @inc_a()
	bl inc_a
	mov r8,r0
	cmp r8,#0
	beq .mainL6
.mainL5:
	ldr r8,.LPIC0
	ldr r7,[r8]
	@call void @putint(i32 %r19)
	mov r0,r7
	bl putint
	mov r8,#32
	@call void @putch(i32 %r20)
	mov r0,r8
	bl putch
	ldr r8,.LPIC1
	ldr r7,[r8]
	@call void @putint(i32 %r21)
	mov r0,r7
	bl putint
	mov r8,#10
	@call void @putch(i32 %r22)
	mov r0,r8
	bl putch
	bl .mainL6
	.section	.note.GNU-stack,"",%progbits
