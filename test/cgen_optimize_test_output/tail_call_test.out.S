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
	mov r8,r0
	mov r7,r1
.gcdL1:
	cmp r8,#0
	beq .gcdL2
.gcdL3:
	@%r13 = call i32 @__modsi3(i32 %r15,i32 %r16)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	mov r8,r7
	mov r7,r6
	bl .gcdL1
.gcdL2:
	mov r0,r7
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r2 = call i32 @gcd(i32 4,i32 64)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#4
	mov r1,#64
	bl gcd
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
