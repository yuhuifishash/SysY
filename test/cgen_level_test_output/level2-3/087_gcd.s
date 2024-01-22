.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
gcd:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.gcdL0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
.gcdL1:
	ldr r8,[fp,#-16]
	mov r7,#0
	cmp r8,r7
	beq .gcdL2
.gcdL3:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	ldr r6,[fp,#-16]
	@%r13 = call i32 @__modsi3(i32 %r11,i32 %r12)
	mov r0,r7
	mov r1,r6
	bl __modsi3
	mov r5,r0
	@%r14 = call i32 @gcd(i32 %r10,i32 %r13)
	mov r0,r8
	mov r1,r5
	bl gcd
	mov r7,r0
	mov r0,r7
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.gcdL2:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-20]
.mainL2:
	ldr r8,[fp,#-20]
	mov r7,#0
	cmp r8,r7
	bgt .mainL3
.mainL4:
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL3:
	@%r8 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-16]
	@%r10 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	@%r13 = call i32 @gcd(i32 %r11,i32 %r12)
	mov r0,r8
	mov r1,r7
	bl gcd
	mov r6,r0
	@call void @putint(i32 %r13)
	mov r0,r6
	bl putint
	mov r8,#10
	@call void @putch(i32 %r14)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-20]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-20]
	bl .mainL2
	.section	.note.GNU-stack,"",%progbits
