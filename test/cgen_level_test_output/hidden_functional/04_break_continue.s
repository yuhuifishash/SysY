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
.mainL2:
	ldr r8,[fp,#-28]
	mov r7,#20
	cmp r8,r7
	blt .mainL3
.mainL4:
	ldr r8,[fp,#-32]
	mov r0,r8
	add sp,sp,#32
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL3:
	mov r8,#0
	str r8,[fp,#-24]
.mainL5:
	ldr r8,[fp,#-24]
	mov r7,#10
	cmp r8,r7
	blt .mainL6
.mainL7:
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-28]
	bl .mainL2
.mainL6:
	mov r8,#0
	str r8,[fp,#-20]
.mainL8:
	ldr r8,[fp,#-20]
	mov r7,#5
	cmp r8,r7
	blt .mainL9
.mainL10:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .mainL5
.mainL9:
	mov r8,#0
	str r8,[fp,#-16]
.mainL11:
	ldr r8,[fp,#-16]
	mov r7,#3
	cmp r8,r7
	blt .mainL12
.mainL13:
.mainL31:
	mov r8,#1
	cmp r8,#0
	bne .mainL32
.mainL33:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	bl .mainL8
.mainL32:
.mainL34:
	mov r8,#1
	cmp r8,#0
	bne .mainL35
.mainL36:
	bl .mainL33
.mainL35:
	bl .mainL36
.mainL12:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	mov r8,#3
	cmp r6,r8
	bge .mainL14
.mainL15:
	mov r8,#0
	str r8,[fp,#-12]
.mainL26:
	ldr r8,[fp,#-12]
	mov r7,#2
	cmp r8,r7
	blt .mainL27
.mainL28:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	ldr r8,[fp,#-32]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-32]
	bl .mainL11
.mainL27:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL26
.mainL14:
	ldr r8,[fp,#-16]
	cmp r8,#0
	bne .mainL16
.mainL17:
	bl .mainL15
.mainL16:
	ldr r8,[fp,#-16]
	cmp r8,#0
	beq .mainL20
.mainL18:
	ldr r8,[fp,#-16]
	mov r7,#1
	rsb r6,r7,#0
	sub r7,r8,r6
	mov r8,#3
	cmp r7,r8
	bge .mainL22
.mainL23:
.mainL19:
	bl .mainL17
.mainL22:
	bl .mainL13
.mainL20:
	ldr r8,[fp,#-16]
	cmp r8,#0
	beq .mainL18
	bne .mainL19
	.section	.note.GNU-stack,"",%progbits
