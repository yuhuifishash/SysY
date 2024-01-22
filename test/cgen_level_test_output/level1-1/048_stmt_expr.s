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
	sub sp,sp,#12
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#1
	ldr r7,.LPIC0
	str r8,[r7]
.mainL2:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC1
	ldr r6,[r7]
	mov r7,#1
	sub r5,r6,r7
	cmp r8,r5
	ble .mainL3
.mainL4:
	ldr r8,.LPIC0
	ldr r7,[r8]
	@call void @putint(i32 %r19)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putint
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,.LPIC0
	ldr r6,[r8]
	add r8,r7,r6
	ldr r7,.LPIC0
	str r8,[r7]
	bl .mainL2
	.section	.note.GNU-stack,"",%progbits
