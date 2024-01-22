.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a:
	.word  -1
b:
	.word  1
.text
.global main
.LPIC0:
	.word  a
.LPIC1:
	.word  b
inc_a:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.inc_aL0:
.inc_aL1:
	ldr r8,.LPIC0
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC0
	str r8,[r7]
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
.mainL43:
	mov r8,#5
.mainL3:
.mainL19:
.mainL21:
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r6,#1
	ldr r6,.LPIC0
	str r7,[r6]
	ldr r7,.LPIC0
	ldr r6,[r7]
.mainL20:
	cmp r6,#0
	bne .mainL10
.mainL7:
.mainL22:
.mainL24:
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r6,#1
	ldr r6,.LPIC0
	str r7,[r6]
	ldr r7,.LPIC0
	ldr r6,[r7]
.mainL23:
	cmp r6,#14
	blt .mainL12
.mainL15:
.mainL34:
.mainL36:
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r6,#1
	ldr r6,.LPIC0
	str r7,[r6]
	ldr r7,.LPIC0
	ldr r6,[r7]
.mainL35:
	cmp r6,#0
	bne .mainL17
.mainL13:
.mainL31:
.mainL33:
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r6,#1
	ldr r6,.LPIC0
	str r7,[r6]
.mainL32:
	mov r7,r8
.mainL14:
	sub r6,r7,#1
.mainL4:
	cmp r6,#0
	bge .mainL44
.mainL5:
	ldr r5,.LPIC0
	ldr r4,[r5]
	@call void @putint(i32 %r56)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r4
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#32
	bl putch
	add sp,sp,#4 @stack align 8bytes
	ldr r5,.LPIC1
	ldr r3,[r5]
	@call void @putint(i32 %r58)
	push {r3}
	mov r0,r3
	bl putint
	pop {r3}
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r0,r4
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL44:
	mov r8,r6
	bl .mainL3
.mainL17:
.mainL37:
.mainL39:
	ldr r6,.LPIC0
	ldr r5,[r6]
	add r6,r5,#1
	ldr r5,.LPIC0
	str r6,[r5]
	ldr r6,.LPIC0
	ldr r5,[r6]
.mainL38:
.mainL40:
.mainL42:
	ldr r6,.LPIC0
	ldr r4,[r6]
	add r6,r4,#1
	ldr r4,.LPIC0
	str r6,[r4]
	ldr r6,.LPIC0
	ldr r4,[r6]
.mainL41:
	sub r6,r5,r4
	add r5,r6,#1
	cmp r5,#0
	beq .mainL13
.mainL12:
	ldr r6,.LPIC0
	ldr r5,[r6]
	@call void @putint(i32 %r42)
	push {r1,r2,r3}
	mov r0,r5
	bl putint
	pop {r1,r2,r3}
	@call void @putch(i32 10)
	push {r1,r2,r3}
	mov r0,#10
	bl putch
	pop {r1,r2,r3}
	ldr r4,.LPIC1
	ldr r3,[r4]
	lsl r2,r3,#1
	ldr r1,.LPIC1
	str r2,[r1]
	mov r7,r8
	bl .mainL14
.mainL10:
.mainL28:
.mainL30:
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r6,#1
	ldr r6,.LPIC0
	str r7,[r6]
	ldr r7,.LPIC0
	ldr r6,[r7]
.mainL29:
	cmp r6,#0
	beq .mainL7
.mainL8:
.mainL25:
.mainL27:
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r6,#1
	ldr r6,.LPIC0
	str r7,[r6]
	ldr r7,.LPIC0
	ldr r6,[r7]
.mainL26:
	cmp r6,#0
	beq .mainL7
.mainL6:
	ldr r7,.LPIC0
	ldr r6,[r7]
	@call void @putint(i32 %r19)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#32
	bl putch
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC1
	ldr r6,[r7]
	@call void @putint(i32 %r21)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	bl .mainL7
	.section	.note.GNU-stack,"",%progbits
