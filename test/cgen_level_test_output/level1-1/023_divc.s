.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a:
	.word  10
.text
.global main
.LPIC0:
	.word  a
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#5
	@%r2 = call i32 @__aeabi_idiv(i32 %r0,i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r8
	bl __aeabi_idiv
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r6
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
