.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
whileIf:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.whileIfL0:
.whileIfL1:
.whileIfL12:
	mov r8,#0
.whileIfL3:
	cmp r8,#5
	beq .whileIfL6
.whileIfL7:
	cmp r8,#10
	beq .whileIfL9
.whileIfL10:
	lsl r7,r8,#1
	mov r6,r7
.whileIfL11:
	mov r7,r6
.whileIfL8:
	add r5,r8,#1
.whileIfL4:
	cmp r5,#100
	blt .whileIfL13
.whileIfL5:
	mov r0,r7
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.whileIfL13:
	mov r8,r5
	bl .whileIfL3
.whileIfL9:
	mov r6,#42
	bl .whileIfL11
.whileIfL6:
	mov r7,#25
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
