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
	sub sp,sp,#8
.set_aL0:
.set_aL1:
	ldr r8,.LPIC0
	str r0,[r8]
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
set_b:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.set_bL0:
.set_bL1:
	ldr r8,.LPIC1
	str r0,[r8]
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
set_d:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.set_dL0:
.set_dL1:
	ldr r8,.LPIC2
	str r0,[r8]
	ldr r8,.LPIC2
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
main:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	mov r8,#2
	ldr r7,.LPIC0
	str r8,[r7]
	mov r8,#3
	ldr r7,.LPIC1
	str r8,[r7]
.mainL62:
.mainL64:
	mov r8,#0
	ldr r7,.LPIC0
	str r8,[r7]
	ldr r8,.LPIC0
	ldr r7,[r8]
.mainL63:
	cmp r7,#0
	bne .mainL4
.mainL3:
	ldr r8,.LPIC0
	ldr r7,[r8]
	@call void @putint(i32 %r11)
	mov r0,r7
	bl putint
	@call void @putch(i32 32)
	mov r0,#32
	bl putch
	ldr r8,.LPIC1
	ldr r7,[r8]
	@call void @putint(i32 %r13)
	mov r0,r7
	bl putint
	@call void @putch(i32 32)
	mov r0,#32
	bl putch
	mov r8,#2
	ldr r7,.LPIC0
	str r8,[r7]
	mov r8,#3
	ldr r7,.LPIC1
	str r8,[r7]
.mainL65:
.mainL67:
	mov r8,#0
	ldr r7,.LPIC0
	str r8,[r7]
	ldr r8,.LPIC0
	ldr r7,[r8]
.mainL66:
	cmp r7,#0
	bne .mainL8
.mainL7:
	ldr r8,.LPIC0
	ldr r7,[r8]
	@call void @putint(i32 %r26)
	mov r0,r7
	bl putint
	@call void @putch(i32 32)
	mov r0,#32
	bl putch
	ldr r8,.LPIC1
	ldr r7,[r8]
	@call void @putint(i32 %r28)
	mov r0,r7
	bl putint
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	mov r8,#2
	ldr r7,.LPIC2
	str r8,[r7]
.mainL12:
.mainL74:
.mainL76:
	mov r8,#3
	ldr r7,.LPIC2
	str r8,[r7]
	ldr r8,.LPIC2
	ldr r7,[r8]
.mainL75:
	cmp r7,#0
	bne .mainL10
.mainL11:
	ldr r8,.LPIC2
	ldr r7,[r8]
	@call void @putint(i32 %r44)
	mov r0,r7
	bl putint
	@call void @putch(i32 32)
	mov r0,#32
	bl putch
.mainL14:
.mainL15:
	ldr r8,.LPIC2
	ldr r7,[r8]
	@call void @putint(i32 %r57)
	mov r0,r7
	bl putint
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
.mainL18:
	@call void @putch(i32 65)
	mov r0,#65
	bl putch
.mainL19:
.mainL21:
.mainL23:
.mainL24:
	@call void @putch(i32 68)
	mov r0,#68
	bl putch
.mainL25:
.mainL27:
.mainL28:
	@call void @putch(i32 70)
	mov r0,#70
	bl putch
.mainL29:
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
.mainL33:
.mainL40:
.mainL38:
	@call void @putch(i32 67)
	mov r0,#67
	bl putch
.mainL39:
.mainL44:
.mainL43:
.mainL48:
.mainL46:
	@call void @putch(i32 73)
	mov r0,#73
	bl putch
.mainL47:
.mainL54:
.mainL52:
.mainL50:
	@call void @putch(i32 74)
	mov r0,#74
	bl putch
.mainL51:
.mainL56:
	@call void @putch(i32 75)
	mov r0,#75
	bl putch
.mainL57:
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	mov r0,#0
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
.mainL10:
	bl .mainL11
.mainL8:
.mainL71:
.mainL73:
	mov r8,#1
	ldr r7,.LPIC1
	str r8,[r7]
	ldr r8,.LPIC1
	ldr r7,[r8]
.mainL72:
	cmp r7,#0
	beq .mainL7
.mainL6:
	bl .mainL7
.mainL4:
.mainL68:
.mainL70:
	mov r8,#1
	ldr r7,.LPIC1
	str r8,[r7]
	ldr r8,.LPIC1
	ldr r7,[r8]
.mainL69:
	cmp r7,#0
	beq .mainL3
.mainL2:
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
