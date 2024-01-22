.arch armv7-a
.fpu vfpv3-d16
.arm
.data
b:
	.word  5
c:
	.word  6
	.word  7
	.word  8
	.word  9
.text
.global main
.LPIC0:
	.word  b
.LPIC1:
	.word  c
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	mov r9,#228
	sub sp,sp,r9
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-228]
	mov r8,#1
	str r8,[fp,#-228]
	mov r8,#0
	str r8,[fp,#-224]
	mov r8,#2
	str r8,[fp,#-224]
	mov r8,#3
	str r8,[fp,#-224]
	ldr r8,[fp,#-224]
	@call void @putint(i32 %r7)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-224]
	@call void @putint(i32 %r8)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-228]
	@call void @putint(i32 %r9)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
.mainL2:
	ldr r8,[fp,#-228]
	mov r7,#5
	cmp r8,r7
	blt .mainL3
.mainL4:
	ldr r8,[fp,#-228]
	@call void @putint(i32 %r23)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r24)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#1
	mov r7,#2
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	str r8,[r5]
	mvn r8,#215
	add r7,fp,r8
	@call void @memset(i32 %r85,i32 0,i32 64)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#64
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mvn r7,#215
	add r6,fp,r7
	str r8,[r6]
	mov r8,#9
	mov r7,#1
	mvn r6,#215
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#8
	mov r7,#8
	mvn r6,#215
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#9
	mvn r6,#215
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	str r8,[fp,#-152]
	mov r8,#2
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	cmp r8,#0
	bne .mainL8
.mainL9:
	mov r8,#10
	@call void @putch(i32 %r65)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC0
	ldr r7,[r8]
	@call void @putint(i32 %r66)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r67)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r70)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#1
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r73)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#2
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r76)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#3
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r79)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r80)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	mov r9,#228
	add sp,sp,r9
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL8:
	mvn r8,#147
	add r7,fp,r8
	@call void @memset(i32 %r106,i32 0,i32 140)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#140
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mov r8,#2
	mov r7,#10
	mvn r6,#147
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#11
	mvn r6,#147
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#8
	mov r7,#12
	mvn r6,#147
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-152]
	mov r7,#0
	mov r6,#0
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r5,r7,r7,lsl #2
	add r8,r8,r5
	add r8,r8,r6
	mvn r7,#147
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	@call void @putint(i32 %r54)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-152]
	mov r7,#0
	mov r6,#1
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r5,r7,r7,lsl #2
	add r8,r8,r5
	add r8,r8,r6
	mvn r7,#147
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	@call void @putint(i32 %r59)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-152]
	mov r7,#0
	mov r6,#2
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r5,r7,r7,lsl #2
	add r8,r8,r5
	add r8,r8,r6
	mvn r7,#147
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	@call void @putint(i32 %r64)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	bl .mainL9
.mainL3:
	mov r8,#0
	str r8,[fp,#-220]
	ldr r8,[fp,#-220]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-220]
	ldr r8,[fp,#-220]
	cmp r8,#0
	bne .mainL5
.mainL6:
	bl .mainL2
.mainL5:
	bl .mainL4
	.section	.note.GNU-stack,"",%progbits
