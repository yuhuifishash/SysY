.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#76
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-76]
	mov r8,#0
	str r8,[fp,#-72]
	mov r8,#0
	str r8,[fp,#-72]
	mov r8,#0
	str r8,[fp,#-76]
.mainL2:
	ldr r8,[fp,#-76]
	mov r7,#10
	cmp r8,r7
	blt .mainL3
.mainL4:
	mov r8,#0
	str r8,[fp,#-28]
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#10
	str r8,[fp,#-12]
	@%r31 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-28]
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	add r6,r8,r7
	mov r8,#2
	@%r40 = call i32 @__aeabi_idiv(i32 %r38,i32 %r39)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,r8
	bl __aeabi_idiv
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	str r7,[fp,#-16]
.mainL5:
	ldr r8,[fp,#-16]
	mov r7,r8
	mvn r8,#67
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-28]
	cmp r7,r8
	bne .mainL8
.mainL7:
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-16]
	mov r6,r7
	mvn r7,#67
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	ldr r6,[r7]
	cmp r8,r6
	beq .mainL13
.mainL14:
	mov r8,#0
	str r8,[fp,#-28]
	ldr r8,[fp,#-28]
	@call void @putint(i32 %r83)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
.mainL15:
	mov r8,#10
	str r8,[fp,#-28]
	ldr r8,[fp,#-28]
	@call void @putch(i32 %r85)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#76
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL13:
	ldr r8,[fp,#-28]
	@call void @putint(i32 %r81)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	bl .mainL15
.mainL8:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	cmp r8,r7
	bge .mainL7
.mainL6:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	add r6,r8,r7
	mov r8,#2
	@%r60 = call i32 @__aeabi_idiv(i32 %r58,i32 %r59)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,r8
	bl __aeabi_idiv
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	str r7,[fp,#-16]
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-16]
	mov r6,r7
	mvn r7,#67
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL10
.mainL11:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL12:
	bl .mainL5
.mainL10:
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-24]
	bl .mainL12
.mainL3:
	ldr r8,[fp,#-76]
	mov r7,#1
	add r6,r8,r7
	ldr r8,[fp,#-76]
	mov r7,r8
	mvn r8,#67
	add r5,fp,r8
	add r8,r5,r7,lsl #2
	str r6,[r8]
	ldr r8,[fp,#-76]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-76]
	bl .mainL2
	.section	.note.GNU-stack,"",%progbits
