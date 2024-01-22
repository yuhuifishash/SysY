.arch armv7-a
.fpu vfpv3-d16
.arm
.data
k:
	.word  0
.text
.global main
.LPIC0:
	.word  k
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	movw r8,#3389
	movt r8,#0  @ 3389
	ldr r7,.LPIC0
	str r8,[r7]
	ldr r8,.LPIC0
	ldr r7,[r8]
	movw r8,#10000
	movt r8,#0  @ 10000
	cmp r7,r8
	blt .mainL2
.mainL3:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL2:
	ldr r8,.LPIC0
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC0
	str r8,[r7]
.mainL10:
	mov r8,#112
.mainL5:
	sub r7,r8,#88
	cmp r7,#1000
	blt .mainL8
.mainL12:
	mov r6,r7
.mainL9:
.mainL6:
	cmp r6,#10
	bgt .mainL11
.mainL7:
	@call void @putint(i32 %r49)
	mov r0,r6
	bl putint
	bl .mainL3
.mainL11:
	mov r8,r6
	bl .mainL5
.mainL8:
	sub r8,r7,#10
	add r7,r8,#22
	mov r6,r7
	bl .mainL9
	.section	.note.GNU-stack,"",%progbits
