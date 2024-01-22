.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
doubleWhile:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.doubleWhileL0:
.doubleWhileL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#5
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#7
	str r8,[fp,#-12]
.doubleWhileL2:
	ldr r8,[fp,#-16]
	mov r7,#100
	cmp r8,r7
	blt .doubleWhileL3
.doubleWhileL4:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.doubleWhileL3:
	ldr r8,[fp,#-16]
	mov r7,#30
	add r6,r8,r7
	str r6,[fp,#-16]
.doubleWhileL5:
	ldr r8,[fp,#-12]
	mov r7,#100
	cmp r8,r7
	blt .doubleWhileL6
.doubleWhileL7:
	ldr r8,[fp,#-12]
	mov r7,#100
	sub r6,r8,r7
	str r6,[fp,#-12]
	bl .doubleWhileL2
.doubleWhileL6:
	ldr r8,[fp,#-12]
	mov r7,#6
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .doubleWhileL5
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
