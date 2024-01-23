.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
doubleWhile:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.doubleWhileL0:
.doubleWhileL1:
.doubleWhileL10:
	mov r8,#7
	mov r7,#5
.doubleWhileL3:
	add r6,r7,#30
	cmp r8,#100
	blt .doubleWhileL11
.doubleWhileL14:
	mov r5,r8
.doubleWhileL9:
	sub r4,r5,#100
.doubleWhileL4:
	cmp r6,#100
	blt .doubleWhileL12
.doubleWhileL5:
	mov r0,r4
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.doubleWhileL12:
	mov r8,r4
	mov r7,r6
	bl .doubleWhileL3
.doubleWhileL11:
	mov r7,r8
.doubleWhileL7:
	add r8,r7,#6
.doubleWhileL8:
	cmp r8,#100
	blt .doubleWhileL13
.doubleWhileL15:
	mov r5,r8
	bl .doubleWhileL9
.doubleWhileL13:
	mov r7,r8
	bl .doubleWhileL7
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r0 = call i32 @doubleWhile()
	sub sp,sp,#4 @stack align 8bytes
	bl doubleWhile
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
