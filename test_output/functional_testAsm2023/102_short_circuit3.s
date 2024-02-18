.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a:
	.word  0
b:
	.word  0
d:
	.word  0
.text
.global main
.LPIC0:
	.word  a
.LPIC1:
	.word  b
.LPIC2:
	.word  d
set_a:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.set_aL0:
	str r0,[fp,#-12]
.set_aL1:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC0
	str r8,[r7]
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#12
	pop {r7,r8}
	pop {fp,pc}
set_b:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.set_bL0:
	str r0,[fp,#-12]
.set_bL1:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC1
	str r8,[r7]
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#12
	pop {r7,r8}
	pop {fp,pc}
set_d:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.set_dL0:
	str r0,[fp,#-12]
.set_dL1:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC2
	str r8,[r7]
	ldr r8,.LPIC2
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#12
	pop {r7,r8}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#32
.mainL0:
.mainL1:
	mov r8,#2
	ldr r7,.LPIC0
	str r8,[r7]
	mov r8,#3
	ldr r7,.LPIC1
	str r8,[r7]
	mov r8,#0
	@%r3 = call i32 @set_a(i32 %r2)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl set_a
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL4
.mainL3:
	ldr r8,.LPIC0
	ldr r7,[r8]
	@call void @putint(i32 %r11)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#32
	@call void @putch(i32 %r12)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC1
	ldr r7,[r8]
	@call void @putint(i32 %r13)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#32
	@call void @putch(i32 %r14)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#2
	ldr r7,.LPIC0
	str r8,[r7]
	mov r8,#3
	ldr r7,.LPIC1
	str r8,[r7]
	mov r8,#0
	@%r18 = call i32 @set_a(i32 %r17)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl set_a
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL8
.mainL7:
	ldr r8,.LPIC0
	ldr r7,[r8]
	@call void @putint(i32 %r26)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#32
	@call void @putch(i32 %r27)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC1
	ldr r7,[r8]
	@call void @putint(i32 %r28)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r29)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#1
	str r8,[fp,#-32]
	mov r8,#2
	ldr r7,.LPIC2
	str r8,[r7]
	ldr r8,[fp,#-32]
	mov r7,#1
	cmp r8,r7
	bge .mainL12
.mainL11:
	ldr r8,.LPIC2
	ldr r7,[r8]
	@call void @putint(i32 %r44)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#32
	@call void @putch(i32 %r45)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-32]
	mov r7,#1
	cmp r8,r7
	ble .mainL14
.mainL16:
	mov r8,#4
	@%r52 = call i32 @set_d(i32 %r51)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl set_d
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .mainL14
.mainL15:
	ldr r8,.LPIC2
	ldr r7,[r8]
	@call void @putint(i32 %r57)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r58)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#16
	mov r7,#3
	mov r6,#2
	mov r5,#1
	add r4,r6,r5
	sub r6,r7,r4
	cmp r8,r6
	bge .mainL18
.mainL19:
	mov r8,#25
	mov r7,#7
	sub r6,r8,r7
	mov r8,#36
	mov r7,#6
	mov r5,#3
	mul r4,r7,r5
	sub r7,r8,r4
	cmp r6,r7
	bne .mainL20
.mainL21:
	mov r8,#1
	mov r7,#8
	cmp r8,r7
	ite lt
	movlt r8, #1
	movge r8, #0
	uxtb r8, r8
	mov r7,#7
	mov r6,#2
	@%r87 = call i32 @__modsi3(i32 %r85,i32 %r86)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r6
	bl __modsi3
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,r5
	bne .mainL22
.mainL23:
	mov r8,#3
	mov r7,#4
	cmp r8,r7
	ite gt
	movgt r8, #1
	movle r8, #0
	uxtb r8, r8
	mov r7,#0
	cmp r8,r7
	beq .mainL24
.mainL25:
	mov r8,#1
	mov r7,#102
	mov r6,#63
	cmp r7,r6
	ite le
	movle r7, #1
	movgt r7, #0
	uxtb r7, r7
	cmp r8,r7
	beq .mainL26
.mainL27:
	mov r8,#5
	mov r7,#6
	sub r6,r8,r7
	mov r8,#0
	cmp r8,#0
	ite eq
	moveq r8, #1
	movne r8, #0
	uxtb r8, r8
	rsb r7,r8,#0
	cmp r6,r7
	beq .mainL28
.mainL29:
	mov r8,#10
	@call void @putch(i32 %r121)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	str r8,[fp,#-28]
	mov r8,#1
	str r8,[fp,#-24]
	mov r8,#2
	str r8,[fp,#-20]
	mov r8,#3
	str r8,[fp,#-16]
	mov r8,#4
	str r8,[fp,#-12]
	ldr r8,[fp,#-28]
	cmp r8,#0
	bne .mainL34
.mainL33:
	ldr r8,[fp,#-28]
	cmp r8,#0
	beq .mainL40
.mainL38:
	mov r8,#67
	@call void @putch(i32 %r154)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
.mainL39:
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-24]
	cmp r8,r7
	bge .mainL42
.mainL44:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-28]
	cmp r8,r7
	ble .mainL42
.mainL43:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	cmp r8,r7
	bge .mainL48
.mainL47:
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-24]
	cmp r7,#0
	ite eq
	moveq r7, #1
	movne r7, #0
	uxtb r7, r7
	cmp r8,r7
	beq .mainL54
.mainL52:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-12]
	cmp r8,r7
	bge .mainL50
.mainL51:
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-24]
	cmp r7,#0
	ite eq
	moveq r7, #1
	movne r7, #0
	uxtb r7, r7
	cmp r8,r7
	beq .mainL56
.mainL58:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-16]
	cmp r8,r7
	blt .mainL60
.mainL57:
	mov r8,#10
	@call void @putch(i32 %r231)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#32
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL60:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-12]
	cmp r8,r7
	blt .mainL57
.mainL56:
	mov r8,#75
	@call void @putch(i32 %r230)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	bl .mainL57
.mainL50:
	mov r8,#74
	@call void @putch(i32 %r206)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	bl .mainL51
.mainL54:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-16]
	cmp r8,r7
	blt .mainL50
	bge .mainL52
.mainL48:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	beq .mainL47
.mainL46:
	mov r8,#73
	@call void @putch(i32 %r182)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	bl .mainL47
.mainL42:
	mov r8,#72
	@call void @putch(i32 %r168)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	bl .mainL43
.mainL40:
	ldr r8,[fp,#-24]
	cmp r8,#0
	bne .mainL38
	beq .mainL39
.mainL34:
	ldr r8,[fp,#-24]
	cmp r8,#0
	beq .mainL33
.mainL31:
	mov r8,#32
	@call void @putch(i32 %r139)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
.mainL32:
	ldr r8,[fp,#-28]
	cmp r8,#0
	beq .mainL33
.mainL36:
	ldr r8,[fp,#-24]
	cmp r8,#0
	bne .mainL31
	beq .mainL33
.mainL28:
	mov r8,#70
	@call void @putch(i32 %r120)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	bl .mainL29
.mainL26:
	mov r8,#69
	@call void @putch(i32 %r109)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	bl .mainL27
.mainL24:
	mov r8,#68
	@call void @putch(i32 %r100)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	bl .mainL25
.mainL22:
	mov r8,#67
	@call void @putch(i32 %r91)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	bl .mainL23
.mainL20:
	mov r8,#66
	@call void @putch(i32 %r80)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	bl .mainL21
.mainL18:
	mov r8,#65
	@call void @putch(i32 %r68)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	bl .mainL19
.mainL14:
	bl .mainL15
.mainL12:
	mov r8,#3
	@%r39 = call i32 @set_d(i32 %r38)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl set_d
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL11
.mainL10:
	bl .mainL11
.mainL8:
	mov r8,#1
	@%r21 = call i32 @set_b(i32 %r20)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl set_b
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL7
.mainL6:
	bl .mainL7
.mainL4:
	mov r8,#1
	@%r6 = call i32 @set_b(i32 %r5)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl set_b
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	beq .mainL3
.mainL2:
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
