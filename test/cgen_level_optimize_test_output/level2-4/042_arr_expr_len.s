.arch armv7-a
.fpu vfpv3-d16
.arm
.data
N:
	.word  -1
arr:
	.word  1
	.word  2
	.word  33
	.word  4
	.word  5
	.word  6
.text
.global main
.LPIC0:
	.word  N
.LPIC1:
	.word  arr
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
.mainL6:
	mov r8,#0
	mov r7,#0
.mainL3:
	mov r6,r7
	ldr r5,.LPIC1
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	add r5,r8,r6
	add r6,r7,#1
.mainL4:
	cmp r6,#6
	blt .mainL7
.mainL5:
	mov r0,r5
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL7:
	mov r8,r5
	mov r7,r6
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
