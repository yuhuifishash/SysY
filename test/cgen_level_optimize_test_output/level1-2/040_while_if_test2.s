.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
ifWhile:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.ifWhileL0:
.ifWhileL1:
.ifWhileL3:
.ifWhileL13:
	mov r8,#3
	mov r7,#0
.ifWhileL10:
	lsl r6,r8,#1
	add r5,r7,#1
.ifWhileL11:
	cmp r5,#5
	blt .ifWhileL14
.ifWhileL12:
.ifWhileL4:
	mov r0,r6
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.ifWhileL14:
	mov r8,r6
	mov r7,r5
	bl .ifWhileL10
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r0 = call i32 @ifWhile()
	sub sp,sp,#4 @stack align 8bytes
	bl ifWhile
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
