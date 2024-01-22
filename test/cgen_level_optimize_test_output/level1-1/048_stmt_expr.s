.arch armv7-a
.fpu vfpv3-d16
.arm
.data
k:
	.word  0
n:
	.word  10
.text
.global main
.LPIC0:
	.word  k
.LPIC1:
	.word  n
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	mov r8,#1
	ldr r7,.LPIC0
	str r8,[r7]
.mainL6:
	mov r8,#0
.mainL3:
	add r7,r8,#1
	ldr r6,.LPIC0
	ldr r5,[r6]
	add r6,r5,r5
	ldr r5,.LPIC0
	str r6,[r5]
.mainL4:
	cmp r7,#9
	ble .mainL7
.mainL5:
	ldr r6,.LPIC0
	ldr r5,[r6]
	@call void @putint(i32 %r26)
	mov r0,r5
	bl putint
	mov r0,r5
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL7:
	mov r8,r7
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
