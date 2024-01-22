.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a:
	.word  0
b:
	.word  0
c:
	.word  0
d:
	.word  0
e:
	.word  0
.text
.global main
.LPIC0:
	.word  a
.LPIC1:
	.word  b
.LPIC2:
	.word  c
.LPIC3:
	.word  d
.LPIC4:
	.word  e
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r0 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC0
	str r8,[r7]
	@%r1 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC1
	str r8,[r7]
	@%r2 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC2
	str r8,[r7]
	@%r3 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC3
	str r8,[r7]
	@%r4 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC4
	str r8,[r7]
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,.LPIC1
	ldr r6,[r8]
	ldr r8,.LPIC2
	ldr r5,[r8]
	mul r8,r6,r5
	sub r6,r7,r8
	ldr r8,.LPIC3
	ldr r4,[r8]
	@%r15 = call i32 @__aeabi_idiv(i32 %r7,i32 %r9)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r5
	bl __aeabi_idiv
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	sub r7,r4,r8
	cmp r6,r7
	bne .mainL2
.mainL6:
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,.LPIC1
	ldr r6,[r8]
	mul r8,r7,r6
	ldr r7,.LPIC2
	ldr r6,[r7]
	@%r24 = call i32 @__aeabi_idiv(i32 %r22,i32 %r23)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r6
	bl __aeabi_idiv
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC4
	ldr r6,[r8]
	ldr r8,.LPIC3
	ldr r5,[r8]
	add r8,r6,r5
	cmp r7,r8
	beq .mainL2
.mainL4:
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,.LPIC1
	ldr r6,[r8]
	add r8,r7,r6
	ldr r7,.LPIC2
	ldr r6,[r7]
	add r7,r8,r6
	ldr r8,.LPIC3
	ldr r6,[r8]
	ldr r8,.LPIC4
	ldr r5,[r8]
	add r8,r6,r5
	cmp r7,r8
	beq .mainL2
.mainL8:
	mov r8,#0
.mainL3:
	mov r0,r8
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL2:
	mov r8,#1
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
