.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a:
	.word  0
.text
.global main
.LPIC0:
	.word  a
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	mov r8,#10
	ldr r7,.LPIC0
	str r8,[r7]
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#0
	cmp r7,r8
	bgt .mainL2
.mainL3:
	mov r8,#0
	mov r0,r8
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL2:
	mov r8,#1
	mov r0,r8
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
