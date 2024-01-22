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
	sub sp,sp,#84
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-84]
	mov r8,#0
	str r8,[fp,#-80]
	mov r8,#0
	str r8,[fp,#-80]
	mov r8,#0
	str r8,[fp,#-84]
.mainL2:
	ldr r8,[fp,#-84]
	mov r7,#10
	cmp r8,r7
	blt .mainL3
.mainL4:
	mov r8,#0
	str r8,[fp,#-36]
	mov r8,#0
	str r8,[fp,#-32]
	mov r8,#0
	str r8,[fp,#-28]
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#10
	str r8,[fp,#-20]
	@%r31 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-36]
	ldr r8,[fp,#-20]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-32]
	mov r8,#0
	str r8,[fp,#-28]
	ldr r8,[fp,#-32]
	ldr r7,[fp,#-28]
	add r6,r8,r7
	mov r8,#2
	@%r40 = call i32 @__aeabi_idiv(i32 %r38,i32 %r39)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,r8
	bl __aeabi_idiv
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	str r7,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-84]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-12]
.mainL5:
	ldr r8,[fp,#-84]
	mov r7,#10
	cmp r8,r7
	blt .mainL8
.mainL7:
	ldr r8,[fp,#-16]
	mov r7,#1
	cmp r8,r7
	beq .mainL12
.mainL13:
	mov r8,#0
	str r8,[fp,#-36]
	ldr r8,[fp,#-36]
	@call void @putint(i32 %r80)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
.mainL14:
	mov r8,#10
	str r8,[fp,#-36]
	ldr r8,[fp,#-36]
	@call void @putch(i32 %r82)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#84
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL12:
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r78)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	bl .mainL14
.mainL8:
	ldr r8,[fp,#-16]
	mov r7,#0
	cmp r8,r7
	bne .mainL7
.mainL6:
	ldr r8,[fp,#-84]
	mov r7,r8
	mvn r8,#75
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-36]
	cmp r7,r8
	beq .mainL10
.mainL11:
	ldr r8,[fp,#-84]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-84]
	bl .mainL5
.mainL10:
	mov r8,#1
	str r8,[fp,#-16]
	ldr r8,[fp,#-84]
	str r8,[fp,#-12]
	bl .mainL11
.mainL3:
	ldr r8,[fp,#-84]
	mov r7,#1
	add r6,r8,r7
	ldr r8,[fp,#-84]
	mov r7,r8
	mvn r8,#75
	add r5,fp,r8
	add r8,r5,r7,lsl #2
	str r6,[r8]
	ldr r8,[fp,#-84]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-84]
	bl .mainL2
	.section	.note.GNU-stack,"",%progbits
