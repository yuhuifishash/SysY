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
	sub sp,sp,#100
.mainL0:
.mainL1:
	mov r8,#2
	str r8,[fp,#-100]
	mov r8,#20
	str r8,[fp,#-96]
	mvn r8,#91
	add r7,fp,r8
	@call void @memset(i32 %r51,i32 0,i32 80)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#80
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mov r8,#1
	mvn r7,#91
	add r6,fp,r7
	str r8,[r6]
	mov r8,#2
	mov r7,#1
	mvn r6,#91
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-100]
	ldr r7,[fp,#-96]
	cmp r8,r7
	blt .mainL3
.mainL5:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#100
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	ldr r8,[fp,#-100]
	mov r7,r8
	mvn r8,#91
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-100]
	mov r6,#1
	sub r5,r8,r6
	mov r8,r5
	mvn r6,#91
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	ldr r8,[r6]
	add r6,r7,r8
	ldr r8,[fp,#-100]
	mov r7,#2
	sub r5,r8,r7
	mov r8,r5
	mvn r7,#91
	add r5,fp,r7
	add r7,r5,r8,lsl #2
	ldr r8,[r7]
	add r7,r6,r8
	ldr r8,[fp,#-100]
	mov r6,r8
	mvn r8,#91
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	str r7,[r8]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-100]
	mov r6,r7
	mvn r7,#91
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	str r7,[fp,#-12]
	ldr r8,[fp,#-100]
	mov r7,r8
	mvn r8,#91
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	@call void @putint(i32 %r40)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r41)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-100]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-100]
.mainL4:
	ldr r8,[fp,#-100]
	ldr r7,[fp,#-96]
	cmp r8,r7
	blt .mainL3
	bge .mainL5
	.section	.note.GNU-stack,"",%progbits
