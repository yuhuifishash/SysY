.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
ifWhile:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.ifWhileL0:
.ifWhileL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#3
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,#5
	cmp r8,r7
	beq .ifWhileL2
.ifWhileL3:
	ldr r8,[fp,#-16]
	mov r7,#5
	cmp r8,r7
	blt .ifWhileL10
.ifWhileL12:
.ifWhileL4:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.ifWhileL10:
	ldr r8,[fp,#-12]
	mov r7,#2
	mul r6,r8,r7
	str r6,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.ifWhileL11:
	ldr r8,[fp,#-16]
	mov r7,#5
	cmp r8,r7
	blt .ifWhileL10
	bge .ifWhileL12
.ifWhileL2:
	ldr r8,[fp,#-12]
	mov r7,#2
	cmp r8,r7
	beq .ifWhileL6
.ifWhileL8:
	ldr r8,[fp,#-12]
	mov r7,#25
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .ifWhileL4
.ifWhileL6:
	ldr r8,[fp,#-12]
	mov r7,#2
	add r6,r8,r7
	str r6,[fp,#-12]
.ifWhileL7:
	ldr r8,[fp,#-12]
	mov r7,#2
	cmp r8,r7
	beq .ifWhileL6
	bne .ifWhileL8
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
