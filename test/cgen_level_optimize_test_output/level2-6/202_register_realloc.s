.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
func:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.funcL0:
.funcL1:
	sub r8,r0,r1
	add r7,r8,#110
	sub r8,r7,#2
	sub r7,r8,#4
	sub r8,r7,#6
	sub r7,r8,#8
	add r8,r7,#30
	sub r7,r8,#4
	sub r8,r7,#8
	sub r7,r8,#12
	sub r8,r7,#16
	add r7,r8,#50
	sub r8,r7,#6
	sub r7,r8,#12
	sub r8,r7,#18
	sub r7,r8,#24
	add r8,r7,#70
	sub r7,r8,#8
	sub r8,r7,#16
	sub r7,r8,#24
	sub r8,r7,#32
	add r7,r8,#90
	mov r0,r7
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
	@%r12 = call i32 @func(i32 1,i32 19)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#1
	mov r1,#19
	bl func
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
