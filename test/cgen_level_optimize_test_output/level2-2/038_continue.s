.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
.mainL9:
	mov r8,#0
	mov r7,#0
.mainL3:
	cmp r7,#50
	beq .mainL6
.mainL7:
	add r6,r8,r7
	add r5,r7,#1
	mov r4,r6
	mov r6,r5
.mainL4:
	cmp r6,#100
	blt .mainL10
.mainL5:
	mov r0,r4
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL10:
	mov r8,r4
	mov r7,r6
	bl .mainL3
.mainL6:
	add r5,r7,#1
	mov r4,r8
	mov r6,r5
	bl .mainL4
	.section	.note.GNU-stack,"",%progbits
