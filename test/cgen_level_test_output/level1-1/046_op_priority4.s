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
	sub sp,sp,#12
.mainL0:
.mainL1:
	@%r0 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC0
	str r8,[r7]
	@%r1 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC1
	str r8,[r7]
	@%r2 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC2
	str r8,[r7]
	@%r3 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC3
	str r8,[r7]
	@%r4 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC4
	str r8,[r7]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,.LPIC1
	ldr r6,[r8]
	ldr r8,.LPIC2
	ldr r5,[r8]
	mul r8,r6,r5
	sub r6,r7,r8
	ldr r8,.LPIC3
	ldr r7,[r8]
	ldr r8,.LPIC0
	ldr r5,[r8]
	ldr r8,.LPIC2
	ldr r4,[r8]
	@%r15 = call i32 @__aeabi_idiv(i32 %r13,i32 %r14)
	mov r0,r5
	mov r1,r4
	bl __aeabi_idiv
	mov r8,r0
	sub r5,r7,r8
	cmp r6,r5
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
	mov r0,r8
	mov r1,r6
	bl __aeabi_idiv
	mov r7,r0
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
.mainL3:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL2:
	mov r8,#1
	str r8,[fp,#-12]
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
