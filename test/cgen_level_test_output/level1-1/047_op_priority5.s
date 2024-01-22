.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a:
	.word  1
b:
	.word  0
c:
	.word  1
d:
	.word  2
e:
	.word  4
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
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,.LPIC1
	ldr r6,[r8]
	mul r8,r7,r6
	ldr r7,.LPIC2
	ldr r6,[r7]
	@%r6 = call i32 @__aeabi_idiv(i32 %r4,i32 %r5)
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
	beq .mainL6
.mainL4:
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
	@%r37 = call i32 @__aeabi_idiv(i32 %r35,i32 %r36)
	mov r0,r5
	mov r1,r4
	bl __aeabi_idiv
	mov r8,r0
	sub r5,r7,r8
	cmp r6,r5
	beq .mainL2
.mainL3:
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r46)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL2:
	mov r8,#1
	str r8,[fp,#-12]
	bl .mainL3
.mainL6:
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,.LPIC0
	ldr r6,[r8]
	ldr r8,.LPIC1
	ldr r5,[r8]
	add r8,r6,r5
	mul r6,r7,r8
	ldr r8,.LPIC2
	ldr r7,[r8]
	add r8,r6,r7
	ldr r7,.LPIC3
	ldr r6,[r7]
	ldr r7,.LPIC4
	ldr r5,[r7]
	add r7,r6,r5
	cmp r8,r7
	ble .mainL2
	bgt .mainL4
	.section	.note.GNU-stack,"",%progbits
