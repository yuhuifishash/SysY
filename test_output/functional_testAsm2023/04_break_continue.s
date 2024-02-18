.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#32
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-32]
	mov r8,#0
	str r8,[fp,#-28]
	ldr r8,[fp,#-28]
	mov r7,#20
	cmp r8,r7
	blt .mainL3
.mainL5:
	ldr r8,[fp,#-32]
	mov r0,r8
	add sp,sp,#32
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL3:
	mov r8,#0
	str r8,[fp,#-24]
	ldr r8,[fp,#-24]
	mov r7,#10
	cmp r8,r7
	blt .mainL7
.mainL9:
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-28]
.mainL4:
	ldr r8,[fp,#-28]
	mov r7,#20
	cmp r8,r7
	blt .mainL3
	bge .mainL5
.mainL7:
	mov r8,#0
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	mov r7,#5
	cmp r8,r7
	blt .mainL11
.mainL13:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
.mainL8:
	ldr r8,[fp,#-24]
	mov r7,#10
	cmp r8,r7
	blt .mainL7
	bge .mainL9
.mainL11:
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#3
	cmp r8,r7
	blt .mainL15
.mainL17:
	mov r8,#1
	cmp r8,#0
	bne .mainL37
.mainL39:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL12:
	ldr r8,[fp,#-20]
	mov r7,#5
	cmp r8,r7
	blt .mainL11
	bge .mainL13
.mainL37:
	mov r8,#1
	cmp r8,#0
	bne .mainL41
.mainL43:
	bl .mainL39
.mainL41:
	bl .mainL43
.mainL15:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	mov r8,#3
	cmp r6,r8
	bge .mainL18
.mainL19:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#2
	cmp r8,r7
	blt .mainL31
.mainL33:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	ldr r8,[fp,#-32]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-32]
.mainL16:
	ldr r8,[fp,#-16]
	mov r7,#3
	cmp r8,r7
	blt .mainL15
	bge .mainL17
.mainL31:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.mainL32:
	ldr r8,[fp,#-12]
	mov r7,#2
	cmp r8,r7
	blt .mainL31
	bge .mainL33
.mainL18:
	ldr r8,[fp,#-16]
	cmp r8,#0
	bne .mainL20
.mainL21:
	bl .mainL19
.mainL20:
	ldr r8,[fp,#-16]
	cmp r8,#0
	beq .mainL24
.mainL22:
	ldr r8,[fp,#-16]
	mov r7,#1
	rsb r6,r7,#0
	sub r7,r8,r6
	mov r8,#3
	cmp r7,r8
	bge .mainL26
.mainL27:
.mainL23:
	bl .mainL21
.mainL26:
	bl .mainL17
.mainL24:
	ldr r8,[fp,#-16]
	cmp r8,#0
	beq .mainL22
	bne .mainL23
	.section	.note.GNU-stack,"",%progbits
