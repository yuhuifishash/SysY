.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
whileIf:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.whileIfL0:
.whileIfL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,#100
	cmp r8,r7
	blt .whileIfL3
.whileIfL5:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.whileIfL3:
	ldr r8,[fp,#-16]
	mov r7,#5
	cmp r8,r7
	beq .whileIfL6
.whileIfL7:
	ldr r8,[fp,#-16]
	mov r7,#10
	cmp r8,r7
	beq .whileIfL9
.whileIfL10:
	ldr r8,[fp,#-16]
	mov r7,#2
	mul r6,r8,r7
	str r6,[fp,#-12]
.whileIfL11:
.whileIfL8:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.whileIfL4:
	ldr r8,[fp,#-16]
	mov r7,#100
	cmp r8,r7
	blt .whileIfL3
	bge .whileIfL5
.whileIfL9:
	mov r8,#42
	str r8,[fp,#-12]
	bl .whileIfL11
.whileIfL6:
	mov r8,#25
	str r8,[fp,#-12]
	bl .whileIfL8
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r0 = call i32 @whileIf()
	sub sp,sp,#4 @stack align 8bytes
	bl whileIf
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
