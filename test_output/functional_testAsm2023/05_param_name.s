.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
f:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.fL0:
	str r0,[fp,#-12]
.fL1:
	ldr r8,[fp,#-12]
	mov r7,#2
	mul r6,r8,r7
	mov r0,r6
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
main:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	mov r8,#10
	@%r1 = call i32 @f(i32 %r0)
	mov r0,r8
	bl f
	mov r7,r0
	mov r0,r7
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
