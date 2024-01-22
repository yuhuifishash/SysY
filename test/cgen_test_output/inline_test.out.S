.arch armv7-a
.fpu vfpv3-d16
.arm
.data
d:
	.word  0
.text
.global main
.LPIC0:
	.word  d
f:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.fL0:
.fL1:
	ldr r8,.LPIC0
	ldr r7,[r8]
	cmp r7,#0
	bne .fL2
.fL3:
	mov r8,#15
	mov r0,r8
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
.fL2:
	mov r8,#3
	mov r0,r8
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r0 = call i32 @f()
	sub sp,sp,#4 @stack align 8bytes
	bl f
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
