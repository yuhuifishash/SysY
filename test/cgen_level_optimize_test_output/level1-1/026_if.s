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
main:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	mov r8,#10
	ldr r7,.LPIC0
	str r8,[r7]
	ldr r8,.LPIC0
	ldr r7,[r8]
	cmp r7,#0
	bgt .mainL2
.mainL3:
	mov r0,#0
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
.mainL2:
	mov r0,#1
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
