.arch armv7-a
.fpu vfpv3-d16
.arm
.data
g:
	.word  0
.text
.global main
.LPIC0:
	.word  g
func:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.funcL0:
.funcL1:
	ldr r8,.LPIC0
	ldr r7,[r8]
	add r8,r7,r0
	ldr r7,.LPIC0
	str r8,[r7]
	ldr r8,.LPIC0
	ldr r7,[r8]
	@call void @putint(i32 %r5)
	mov r0,r7
	bl putint
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
	@%r2 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#10
	bgt .mainL5
.mainL3:
.mainL4:
	@%r16 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#11
	bgt .mainL10
.mainL8:
.mainL9:
	@%r30 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#99
	ble .mainL12
.mainL15:
.mainL33:
.mainL35:
	ldr r5,.LPIC0
	ldr r4,[r5]
	add r5,r4,r6
	ldr r6,.LPIC0
	str r5,[r6]
	ldr r6,.LPIC0
	ldr r5,[r6]
	@call void @putint(i32 %r85)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	bl putint
	add sp,sp,#4 @stack align 8bytes
.mainL34:
	cmp r5,#0
	bne .mainL12
.mainL13:
.mainL14:
	@%r44 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#100
	ble .mainL17
.mainL20:
.mainL39:
.mainL41:
	ldr r5,.LPIC0
	ldr r4,[r5]
	add r5,r4,r6
	ldr r6,.LPIC0
	str r5,[r6]
	ldr r6,.LPIC0
	ldr r5,[r6]
	@call void @putint(i32 %r91)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	bl putint
	add sp,sp,#4 @stack align 8bytes
.mainL40:
	cmp r5,#0
	bne .mainL17
.mainL18:
.mainL19:
.mainL36:
.mainL38:
	ldr r6,.LPIC0
	ldr r5,[r6]
	add r6,r5,#99
	ldr r5,.LPIC0
	str r6,[r5]
	ldr r6,.LPIC0
	ldr r5,[r6]
	@call void @putint(i32 %r88)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	bl putint
	add sp,sp,#4 @stack align 8bytes
.mainL37:
	cmp r5,#0
	beq .mainL25
.mainL23:
.mainL24:
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL25:
.mainL42:
.mainL44:
	ldr r6,.LPIC0
	ldr r5,[r6]
	add r6,r5,#100
	ldr r5,.LPIC0
	str r6,[r5]
	ldr r6,.LPIC0
	ldr r5,[r6]
	@call void @putint(i32 %r94)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	bl putint
	add sp,sp,#4 @stack align 8bytes
.mainL43:
	cmp r5,#0
	beq .mainL23
.mainL22:
	bl .mainL24
.mainL17:
	bl .mainL19
.mainL12:
	bl .mainL14
.mainL10:
.mainL30:
.mainL32:
	ldr r6,.LPIC0
	ldr r5,[r6]
	add r6,r5,r7
	ldr r7,.LPIC0
	str r6,[r7]
	ldr r7,.LPIC0
	ldr r6,[r7]
	@call void @putint(i32 %r82)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl putint
	add sp,sp,#4 @stack align 8bytes
.mainL31:
	cmp r6,#0
	beq .mainL8
.mainL7:
	bl .mainL9
.mainL5:
.mainL27:
.mainL29:
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r6,r8
	ldr r8,.LPIC0
	str r7,[r8]
	ldr r8,.LPIC0
	ldr r7,[r8]
	@call void @putint(i32 %r79)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putint
	add sp,sp,#4 @stack align 8bytes
.mainL28:
	cmp r7,#0
	beq .mainL3
.mainL2:
	bl .mainL4
	.section	.note.GNU-stack,"",%progbits
