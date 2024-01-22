.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
FourWhile:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.FourWhileL0:
.FourWhileL1:
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#5
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#6
	str r8,[fp,#-20]
	mov r8,#7
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#10
	str r8,[fp,#-12]
.FourWhileL2:
	ldr r8,[fp,#-24]
	mov r7,#20
	cmp r8,r7
	blt .FourWhileL3
.FourWhileL4:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-12]
	add r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-16]
	add r6,r7,r8
	mov r0,r6
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.FourWhileL3:
	ldr r8,[fp,#-24]
	mov r7,#3
	add r6,r8,r7
	str r6,[fp,#-24]
.FourWhileL5:
	ldr r8,[fp,#-20]
	mov r7,#10
	cmp r8,r7
	blt .FourWhileL6
.FourWhileL7:
	ldr r8,[fp,#-20]
	mov r7,#2
	sub r6,r8,r7
	str r6,[fp,#-20]
	bl .FourWhileL2
.FourWhileL6:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.FourWhileL8:
	ldr r8,[fp,#-16]
	mov r7,#7
	cmp r8,r7
	beq .FourWhileL9
.FourWhileL10:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .FourWhileL5
.FourWhileL9:
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-16]
.FourWhileL11:
	ldr r8,[fp,#-12]
	mov r7,#20
	cmp r8,r7
	blt .FourWhileL12
.FourWhileL13:
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
	bl .FourWhileL8
.FourWhileL12:
	ldr r8,[fp,#-12]
	mov r7,#3
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .FourWhileL11
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r0 = call i32 @FourWhile()
	sub sp,sp,#4 @stack align 8bytes
	bl FourWhile
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
