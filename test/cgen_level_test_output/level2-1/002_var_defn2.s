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
	sub sp,sp,#12
.mainL0:
.mainL1:
	mov r8,#5
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC1
	ldr r6,[r7]
	add r7,r8,r6
	mov r0,r7
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
