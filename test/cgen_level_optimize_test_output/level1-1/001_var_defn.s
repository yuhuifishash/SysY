.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a:
	.word  3
b:
	.word  5
.text
.global main
.LPIC0:
	.word  a
.LPIC1:
	.word  b
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,.LPIC1
	ldr r6,[r8]
	add r8,r7,r6
	mov r0,r8
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
