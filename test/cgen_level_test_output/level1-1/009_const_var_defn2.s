.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a:
	.word  10
b:
	.word  5
.text
.global main
.LPIC0:
	.word  a
.LPIC1:
	.word  b
main:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
