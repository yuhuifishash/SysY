.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
FourWhile:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.FourWhileL0:
.FourWhileL1:
.FourWhileL19:
	mov r8,#10
	mov r7,#6
	mov r6,#5
.FourWhileL3:
	add r5,r6,#3
	cmp r7,#10
	blt .FourWhileL18
.FourWhileL23:
	mov r4,r8
	mov r3,r7
.FourWhileL9:
	sub r2,r3,#2
.FourWhileL4:
	cmp r5,#20
	blt .FourWhileL21
.FourWhileL5:
	add r1,r2,r4
	add r0,r5,r1
	add r1,r0,#7
	mov r0,r1
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.FourWhileL21:
	mov r8,r4
	mov r7,r2
	mov r6,r5
	bl .FourWhileL3
.FourWhileL18:
	mov r6,r8
	mov r8,r7
.FourWhileL7:
	add r7,r8,#1
.FourWhileL11:
	cmp r6,#20
	blt .FourWhileL20
.FourWhileL26:
	mov r2,r6
.FourWhileL17:
	sub r1,r2,#1
.FourWhileL12:
.FourWhileL13:
.FourWhileL8:
	cmp r7,#10
	blt .FourWhileL22
.FourWhileL24:
	mov r4,r1
	mov r3,r7
	bl .FourWhileL9
.FourWhileL22:
	mov r6,r1
	mov r8,r7
	bl .FourWhileL7
.FourWhileL20:
	mov r8,r6
.FourWhileL15:
	add r6,r8,#3
.FourWhileL16:
	cmp r6,#20
	blt .FourWhileL25
.FourWhileL27:
	mov r2,r6
	bl .FourWhileL17
.FourWhileL25:
	mov r8,r6
	bl .FourWhileL15
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
