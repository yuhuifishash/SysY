.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#40
.mainL0:
.mainL1:
.mainL47:
	mov r9,#0
	str r9,[fp,#-12]
	mov r9,#0
	str r9,[fp,#-16]
.mainL3:
.mainL48:
	mov r9,#0
	str r9,[fp,#-20]
	ldr r9,[fp,#-16]
	mov r10,r9
	str r10,[fp,#-24]
.mainL7:
.mainL49:
	mov r9,#0
	str r9,[fp,#-28]
	ldr r9,[fp,#-24]
	mov r10,r9
	str r10,[fp,#-32]
.mainL11:
.mainL50:
	mov r2,#0
	ldr r9,[fp,#-32]
	mov r10,r9
	str r10,[fp,#-36]
.mainL15:
	add r0,r2,#1
	cmp r0,#3
	bge .mainL18
.mainL19:
.mainL51:
	mov r8,#0
.mainL31:
	add r0,r8,#1
.mainL32:
	cmp r0,#2
	blt .mainL57
.mainL33:
	add r7,r2,#1
	ldr r9,[fp,#-36]
	add r6,r9,#1
.mainL16:
	cmp r7,#3
	blt .mainL55
.mainL56:
	mov r9,r6
	str r9,[fp,#-40]
.mainL17:
.mainL37:
.mainL41:
.mainL43:
.mainL39:
	ldr r9,[fp,#-28]
	add r4,r9,#1
.mainL12:
	cmp r4,#5
	blt .mainL54
.mainL13:
	ldr r9,[fp,#-20]
	add r3,r9,#1
.mainL8:
	cmp r3,#10
	blt .mainL53
.mainL9:
	ldr r9,[fp,#-12]
	add r1,r9,#1
.mainL4:
	cmp r1,#20
	blt .mainL52
.mainL5:
	ldr r9,[fp,#-40]
	mov r0,r9
	add sp,sp,#40
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL52:
	mov r9,r1
	str r9,[fp,#-12]
	ldr r9,[fp,#-40]
	mov r10,r9
	str r10,[fp,#-16]
	bl .mainL3
.mainL53:
	mov r9,r3
	str r9,[fp,#-20]
	ldr r9,[fp,#-40]
	mov r10,r9
	str r10,[fp,#-24]
	bl .mainL7
.mainL54:
	mov r9,r4
	str r9,[fp,#-28]
	ldr r9,[fp,#-40]
	mov r10,r9
	str r10,[fp,#-32]
	bl .mainL11
.mainL55:
	mov r2,r7
	mov r9,r6
	str r9,[fp,#-36]
	bl .mainL15
.mainL57:
	mov r8,r0
	bl .mainL31
.mainL18:
	cmp r2,#0
	bne .mainL20
.mainL21:
	bl .mainL19
.mainL20:
	cmp r2,#0
	beq .mainL24
.mainL22:
	mvn r8,#0
	sub r7,r2,r8
	cmp r7,#3
	bge .mainL26
.mainL27:
.mainL23:
	bl .mainL21
.mainL26:
	ldr r9,[fp,#-36]
	mov r10,r9
	str r10,[fp,#-40]
	bl .mainL17
.mainL24:
	cmp r2,#0
	beq .mainL22
	bne .mainL23
	.section	.note.GNU-stack,"",%progbits
