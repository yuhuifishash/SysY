.arch armv7-a
.fpu vfpv3-d16
.arm
.data
n:
	.word  0
.text
.global main
.LPIC0:
	.word  n
gcd:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.gcdL0:
.gcdL1:
	cmp r0,r1
	blt .gcdL2
.gcdL9:
	mov r8,r0
	mov r7,r1
.gcdL3:
	@%r24 = call i32 @__modsi3(i32 %r48,i32 %r51)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bne .gcdL8
.gcdL11:
	mov r5,r7
.gcdL7:
	mul r4,r0,r1
	@%r44 = call i32 @__aeabi_idiv(i32 %r42,i32 %r53)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	mov r0,r4
	mov r1,r5
	bl __aeabi_idiv
	mov r3,r0
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	mov r0,r3
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.gcdL8:
	mov r4,r6
	mov r6,r7
.gcdL5:
	@%r34 = call i32 @__modsi3(i32 %r52,i32 %r45)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	mov r0,r6
	mov r1,r4
	bl __modsi3
	mov r3,r0
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
.gcdL6:
	cmp r3,#0
	bne .gcdL10
.gcdL12:
	mov r5,r4
	bl .gcdL7
.gcdL10:
	mov r6,r4
	mov r4,r3
	bl .gcdL5
.gcdL2:
	mov r8,r1
	mov r7,r0
	bl .gcdL3
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r4 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@%r5 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	@%r8 = call i32 @gcd(i32 %r4,i32 %r5)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl gcd
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r6
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
