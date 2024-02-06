.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#32
.mainL0:
.mainL1:
	mov r8,#1
	str r8,[fp,#-32]
	mov r8,#2
	str r8,[fp,#-28]
	mov r8,#3
	str r8,[fp,#-24]
	mov r8,#4
	str r8,[fp,#-20]
	mov r8,#5
	str r8,[fp,#-16]
	mov r8,#6
	str r8,[fp,#-12]
	ldr r8,[fp,#-32]
	ldr r7,[fp,#-28]
	mul r6,r8,r7
	ldr r8,[fp,#-24]
	add r7,r6,r8
	mov r8,#6
	cmp r7,r8
	blt .mainL5
.mainL3:
	mov r8,#1
	mov r0,r8
	add sp,sp,#32
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL5:
	ldr r8,[fp,#-20]
	mov r7,#0
	cmp r8,r7
	beq .mainL3
.mainL2:
	ldr r8,[fp,#-16]
	cmp r8,#0
	beq .mainL10
.mainL7:
	ldr r8,[fp,#-24]
	mov r7,#2
	cmp r8,r7
	beq .mainL15
.mainL13:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-24]
	@%r58 = call i32 @__modsi3(i32 %r56,i32 %r57)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .mainL20
.mainL18:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-28]
	@%r68 = call i32 @__aeabi_idiv(i32 %r66,i32 %r67)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	ldr r8,[fp,#-32]
	add r7,r6,r8
	mov r8,#2
	cmp r7,r8
	bge .mainL22
.mainL23:
	mov r8,#5
	mov r0,r8
	add sp,sp,#32
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL22:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	sub r6,r8,r7
	mov r8,#0
	cmp r6,r8
	bge .mainL25
.mainL28:
	ldr r8,[fp,#-20]
	mov r7,#4
	cmp r8,r7
	bgt .mainL25
.mainL26:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-12]
	cmp r8,r7
	bne .mainL30
.mainL31:
	mov r8,#7
	mov r0,r8
	add sp,sp,#32
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL30:
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-16]
	ldr r6,[fp,#-20]
	mul r5,r7,r6
	add r7,r8,r5
	mov r8,#10
	cmp r7,r8
	bgt .mainL33
.mainL34:
	mov r8,#8
	mov r0,r8
	add sp,sp,#32
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL33:
	ldr r8,[fp,#-12]
	cmp r8,#0
	beq .mainL36
.mainL37:
	mov r8,#10
	mov r0,r8
	add sp,sp,#32
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL36:
	mov r8,#9
	mov r0,r8
	add sp,sp,#32
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL25:
	mov r8,#6
	mov r0,r8
	add sp,sp,#32
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL20:
	ldr r8,[fp,#-16]
	cmp r8,#0
	beq .mainL18
.mainL17:
	mov r8,#4
	mov r0,r8
	add sp,sp,#32
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL15:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	add r6,r8,r7
	mov r8,#2
	cmp r6,r8
	ble .mainL13
.mainL12:
	mov r8,#3
	mov r0,r8
	add sp,sp,#32
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL10:
	ldr r8,[fp,#-32]
	cmp r8,#0
	ite eq
	moveq r8, #1
	movne r8, #0
	uxtb r8, r8
	mov r7,#0
	add r6,r8,r7
	cmp r6,#0
	bne .mainL7
.mainL8:
	mov r8,#2
	mov r0,r8
	add sp,sp,#32
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
