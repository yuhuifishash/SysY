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
	ldr r8,[fp,#-12]
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
	ldr r8,[fp,#-16]
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
	mov r8,#4
	mov r7,#64
	@%r2 = call i32 @gcd(i32 %r0,i32 %r1)
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
