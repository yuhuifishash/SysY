.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
gcd:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.gcdL0:
.gcdL4:
	mov r8,r1
	mov r7,r0
.gcdL1:
	cmp r8,#0
	beq .gcdL2
.gcdL3:
	@%r13 = call i32 @__modsi3(i32 %r15,i32 %r16)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r8
	bl __modsi3
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,r8
	mov r8,r6
	bl .gcdL1
.gcdL2:
	mov r0,r7
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	bl getint
	mov r8,r0
	cmp r8,#0
	bgt .mainL6
.mainL5:
	mov r0,#0
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL6:
	mov r7,r8
.mainL3:
	@%r8 = call i32 @getint()
	bl getint
	mov r8,r0
	@%r10 = call i32 @getint()
	bl getint
	mov r6,r0
	@%r13 = call i32 @gcd(i32 %r8,i32 %r10)
	mov r0,r8
	mov r1,r6
	bl gcd
	mov r5,r0
	@call void @putint(i32 %r13)
	mov r0,r5
	bl putint
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	sub r8,r7,#1
.mainL4:
	cmp r8,#0
	ble .mainL5
.mainL7:
	mov r7,r8
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
