.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#120
.mainL0:
.mainL1:
	mov r8,#3
	str r8,[fp,#-120]
	mov r8,#7
	str r8,[fp,#-116]
	mov r8,#5
	str r8,[fp,#-112]
	mov r8,#6
	str r8,[fp,#-108]
	mov r8,#1
	str r8,[fp,#-104]
	mov r8,#0
	str r8,[fp,#-100]
	mov r8,#3
	str r8,[fp,#-96]
	mov r8,#5
	str r8,[fp,#-92]
	mov r8,#4
	str r8,[fp,#-88]
	mov r8,#2
	str r8,[fp,#-84]
	mov r8,#7
	str r8,[fp,#-80]
	mov r8,#9
	str r8,[fp,#-76]
	mov r8,#8
	str r8,[fp,#-72]
	mov r8,#1
	str r8,[fp,#-68]
	mov r8,#4
	str r8,[fp,#-64]
	mov r8,#6
	str r8,[fp,#-60]
	ldr r8,[fp,#-120]
	ldr r7,[fp,#-116]
	add r6,r8,r7
	ldr r8,[fp,#-112]
	add r7,r6,r8
	ldr r8,[fp,#-108]
	add r6,r7,r8
	ldr r8,[fp,#-104]
	add r7,r6,r8
	ldr r8,[fp,#-100]
	add r6,r7,r8
	ldr r8,[fp,#-96]
	add r7,r6,r8
	ldr r8,[fp,#-92]
	add r6,r7,r8
	str r6,[fp,#-56]
	ldr r8,[fp,#-88]
	ldr r7,[fp,#-84]
	add r6,r8,r7
	ldr r8,[fp,#-80]
	add r7,r6,r8
	ldr r8,[fp,#-76]
	add r6,r7,r8
	ldr r8,[fp,#-72]
	add r7,r6,r8
	ldr r8,[fp,#-68]
	add r6,r7,r8
	ldr r8,[fp,#-64]
	add r7,r6,r8
	ldr r8,[fp,#-60]
	add r6,r7,r8
	str r6,[fp,#-52]
	ldr r8,[fp,#-56]
	@%r65 = call i32 @foo()
	sub sp,sp,#4 @stack align 8bytes
	bl foo
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	add r6,r8,r7
	str r6,[fp,#-56]
	mov r8,#4
	str r8,[fp,#-48]
	mov r8,#7
	str r8,[fp,#-44]
	mov r8,#2
	str r8,[fp,#-40]
	mov r8,#5
	str r8,[fp,#-36]
	mov r8,#8
	str r8,[fp,#-32]
	mov r8,#0
	str r8,[fp,#-28]
	mov r8,#6
	str r8,[fp,#-24]
	mov r8,#3
	str r8,[fp,#-20]
	ldr r8,[fp,#-52]
	@%r84 = call i32 @foo()
	sub sp,sp,#4 @stack align 8bytes
	bl foo
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	add r6,r8,r7
	str r6,[fp,#-52]
	ldr r8,[fp,#-88]
	str r8,[fp,#-120]
	ldr r8,[fp,#-84]
	str r8,[fp,#-116]
	ldr r8,[fp,#-80]
	str r8,[fp,#-112]
	ldr r8,[fp,#-76]
	str r8,[fp,#-108]
	ldr r8,[fp,#-72]
	str r8,[fp,#-104]
	ldr r8,[fp,#-68]
	str r8,[fp,#-100]
	ldr r8,[fp,#-64]
	str r8,[fp,#-96]
	ldr r8,[fp,#-60]
	str r8,[fp,#-92]
	ldr r8,[fp,#-48]
	ldr r7,[fp,#-44]
	add r6,r8,r7
	ldr r8,[fp,#-40]
	add r7,r6,r8
	ldr r8,[fp,#-36]
	add r6,r7,r8
	ldr r8,[fp,#-32]
	add r7,r6,r8
	ldr r8,[fp,#-28]
	add r6,r7,r8
	ldr r8,[fp,#-24]
	add r7,r6,r8
	ldr r8,[fp,#-20]
	add r6,r7,r8
	str r6,[fp,#-16]
	ldr r8,[fp,#-56]
	ldr r7,[fp,#-52]
	add r6,r8,r7
	ldr r8,[fp,#-16]
	add r7,r6,r8
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r116)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r117)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#120
	pop {r6,r7,r8}
	pop {fp,pc}
foo:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	mov r9,#144
	sub sp,sp,r9
.fooL0:
.fooL1:
	mvn r8,#143
	add r7,fp,r8
	@call void @memset(i32 %r104,i32 0,i32 64)
	mov r0,r7
	mov r1,#0
	mov r2,#64
	bl memset
	mov r8,#0
	mvn r7,#143
	add r6,fp,r7
	str r8,[r6]
	mov r8,#1
	mov r7,#1
	mvn r6,#143
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	mov r7,#2
	mvn r6,#143
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#3
	mvn r6,#143
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#0
	mov r7,#4
	mvn r6,#143
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#5
	mvn r6,#143
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	mov r7,#6
	mvn r6,#143
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#7
	mvn r6,#143
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#0
	mov r7,#8
	mvn r6,#143
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#9
	mvn r6,#143
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	mov r7,#10
	mvn r6,#143
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#11
	mvn r6,#143
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#0
	mov r7,#12
	mvn r6,#143
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#13
	mvn r6,#143
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	mov r7,#14
	mvn r6,#143
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#15
	mvn r6,#143
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	str r8,[fp,#-80]
	mov r8,#7
	str r8,[fp,#-76]
	mov r8,#5
	str r8,[fp,#-72]
	mov r8,#6
	str r8,[fp,#-68]
	mov r8,#1
	str r8,[fp,#-64]
	mov r8,#0
	str r8,[fp,#-60]
	mov r8,#3
	str r8,[fp,#-56]
	mov r8,#5
	str r8,[fp,#-52]
	mov r8,#4
	str r8,[fp,#-48]
	mov r8,#2
	str r8,[fp,#-44]
	mov r8,#7
	str r8,[fp,#-40]
	mov r8,#9
	str r8,[fp,#-36]
	mov r8,#8
	str r8,[fp,#-32]
	mov r8,#1
	str r8,[fp,#-28]
	mov r8,#4
	str r8,[fp,#-24]
	mov r8,#6
	str r8,[fp,#-20]
	ldr r8,[fp,#-80]
	ldr r7,[fp,#-76]
	add r6,r8,r7
	ldr r8,[fp,#-72]
	add r7,r6,r8
	ldr r8,[fp,#-68]
	add r6,r7,r8
	ldr r8,[fp,#-64]
	add r7,r6,r8
	ldr r8,[fp,#-60]
	add r6,r7,r8
	ldr r8,[fp,#-56]
	add r7,r6,r8
	ldr r8,[fp,#-52]
	add r6,r7,r8
	str r6,[fp,#-16]
	ldr r8,[fp,#-48]
	ldr r7,[fp,#-44]
	add r6,r8,r7
	ldr r8,[fp,#-40]
	add r7,r6,r8
	ldr r8,[fp,#-36]
	add r6,r7,r8
	ldr r8,[fp,#-32]
	add r7,r6,r8
	ldr r8,[fp,#-28]
	add r6,r7,r8
	ldr r8,[fp,#-24]
	add r7,r6,r8
	ldr r8,[fp,#-20]
	add r6,r7,r8
	str r6,[fp,#-12]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	add r6,r8,r7
	ldr r8,[fp,#-80]
	mov r7,r8
	mvn r8,#143
	add r5,fp,r8
	add r8,r5,r7,lsl #2
	ldr r7,[r8]
	add r8,r6,r7
	mov r0,r8
	mov r9,#144
	add sp,sp,r9
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
