.arch armv7-a
.fpu vfpv3-d16
.arm
.data
ascii_0:
	.word  48
.text
.global main
.LPIC0:
	.word  ascii_0
my_getint:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.my_getintL0:
.my_getintL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
.my_getintL2:
	mov r8,#1
	cmp r8,#0
	bne .my_getintL3
.my_getintL4:
	ldr r8,[fp,#-12]
	str r8,[fp,#-16]
.my_getintL12:
	mov r8,#1
	cmp r8,#0
	bne .my_getintL13
.my_getintL14:
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.my_getintL13:
	@%r25 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	bl getch
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC0
	ldr r6,[r7]
	sub r7,r8,r6
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	bge .my_getintL18
.my_getintL16:
	bl .my_getintL14
.my_getintL18:
	ldr r8,[fp,#-12]
	mov r7,#9
	cmp r8,r7
	bgt .my_getintL16
.my_getintL15:
	ldr r8,[fp,#-16]
	mov r7,#10
	mul r6,r8,r7
	ldr r8,[fp,#-12]
	add r7,r6,r8
	str r7,[fp,#-16]
.my_getintL17:
	bl .my_getintL12
.my_getintL3:
	@%r6 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	bl getch
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC0
	ldr r6,[r7]
	sub r7,r8,r6
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	blt .my_getintL5
.my_getintL8:
	ldr r8,[fp,#-12]
	mov r7,#9
	cmp r8,r7
	bgt .my_getintL5
.my_getintL6:
	bl .my_getintL4
.my_getintL5:
	bl .my_getintL2
my_putint:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#80
.my_putintL0:
	str r0,[fp,#-80]
.my_putintL1:
	mov r8,#0
	str r8,[fp,#-12]
.my_putintL2:
	ldr r8,[fp,#-80]
	mov r7,#0
	cmp r8,r7
	bgt .my_putintL3
.my_putintL4:
.my_putintL5:
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	bgt .my_putintL6
.my_putintL7:
	add sp,sp,#80
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.my_putintL6:
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#75
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	@call void @putch(i32 %r33)
	mov r0,r7
	bl putch
	bl .my_putintL5
.my_putintL3:
	ldr r8,[fp,#-80]
	mov r7,#10
	@%r12 = call i32 @__modsi3(i32 %r10,i32 %r11)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	ldr r8,.LPIC0
	ldr r7,[r8]
	add r8,r6,r7
	ldr r7,[fp,#-12]
	mov r6,r7
	mvn r7,#75
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-80]
	mov r7,#10
	@%r19 = call i32 @__aeabi_idiv(i32 %r17,i32 %r18)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-80]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .my_putintL2
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.mainL0:
.mainL1:
	@%r1 = call i32 @my_getint()
	sub sp,sp,#4 @stack align 8bytes
	bl my_getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-16]
.mainL2:
	ldr r8,[fp,#-16]
	mov r7,#0
	cmp r8,r7
	bgt .mainL3
.mainL4:
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL3:
	@%r8 = call i32 @my_getint()
	sub sp,sp,#4 @stack align 8bytes
	bl my_getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @my_putint(i32 %r9)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl my_putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL2
	.section	.note.GNU-stack,"",%progbits
