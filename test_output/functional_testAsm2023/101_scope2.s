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
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.mainL0:
.mainL1:
	movw r8,#3389
	movt r8,#0  @ 3389
	mov r7,r8
	ldr r8,.LPIC0
	str r7,[r8]
	ldr r8,.LPIC0
	ldr r7,[r8]
	movw r8,#10000
	movt r8,#0  @ 10000
	mov r6,r8
	cmp r7,r6
	blt .mainL2
.mainL3:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#24
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL2:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC0
	str r6,[r8]
	mov r8,#112
	str r8,[fp,#-24]
	ldr r8,[fp,#-24]
	mov r7,#10
	cmp r8,r7
	bgt .mainL5
.mainL7:
	ldr r8,[fp,#-24]
	@call void @putint(i32 %r44)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	bl .mainL3
.mainL5:
	ldr r8,[fp,#-24]
	mov r7,#88
	sub r6,r8,r7
	str r6,[fp,#-24]
	ldr r8,[fp,#-24]
	mov r7,#1000
	cmp r8,r7
	blt .mainL8
.mainL9:
.mainL6:
	ldr r8,[fp,#-24]
	mov r7,#10
	cmp r8,r7
	bgt .mainL5
	ble .mainL7
.mainL8:
	mov r8,#9
	str r8,[fp,#-20]
	mov r8,#11
	str r8,[fp,#-16]
	mov r8,#10
	str r8,[fp,#-20]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	sub r6,r8,r7
	str r6,[fp,#-24]
	mov r8,#11
	str r8,[fp,#-12]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-12]
	add r6,r8,r7
	ldr r8,[fp,#-16]
	add r7,r6,r8
	str r7,[fp,#-24]
	bl .mainL9
	.section	.note.GNU-stack,"",%progbits
