.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	mov r9,#168
	sub sp,sp,r9
.mainL0:
.mainL1:
	mvn r8,#167
	add r7,fp,r8
	@call void @memset(i32 %r92,i32 0,i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#32
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mvn r8,#167
	add r7,fp,r8
	mov r8,#1
	str r8,[r7]
	mov r8,#1
	mvn r7,#167
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#2
	mvn r7,#167
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#3
	mvn r7,#167
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#6
	mvn r7,#167
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#7
	str r8,[r7]
	mvn r8,#135
	add r7,fp,r8
	@call void @memset(i32 %r119,i32 0,i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#32
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mvn r8,#103
	add r7,fp,r8
	@call void @memset(i32 %r121,i32 0,i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#32
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mvn r8,#103
	add r7,fp,r8
	mov r8,#1
	str r8,[r7]
	mov r8,#1
	mvn r7,#103
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#2
	mvn r7,#103
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#3
	mvn r7,#103
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#4
	mvn r7,#103
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mov r8,#5
	mvn r7,#103
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#6
	str r8,[r7]
	mov r8,#6
	mvn r6,#103
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#7
	str r8,[r6]
	mov r8,#7
	mvn r6,#103
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#8
	str r8,[r6]
	mvn r8,#71
	add r6,fp,r8
	@call void @memset(i32 %r163,i32 0,i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,#0
	mov r2,#32
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mvn r8,#71
	add r6,fp,r8
	mov r8,#1
	str r8,[r6]
	mov r8,#1
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#2
	str r8,[r6]
	mov r8,#2
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#3
	str r8,[r6]
	mov r8,#4
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#5
	str r8,[r6]
	mov r8,#6
	mvn r6,#167
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	ldr r8,[r6]
	mov r6,#6
	mvn r5,#71
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	str r8,[r5]
	mov r8,#7
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#8
	str r8,[r6]
	mvn r8,#39
	add r6,fp,r8
	@call void @memset(i32 %r198,i32 0,i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,#0
	mov r2,#32
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mov r8,#5
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	ldr r8,[r6]
	mvn r6,#39
	add r5,fp,r6
	str r8,[r5]
	ldr r8,[r7]
	mov r7,#1
	mvn r6,#39
	add r4,fp,r6
	add r6,r4,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	mvn r7,#39
	add r4,fp,r7
	add r7,r4,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#3
	mvn r7,#39
	add r4,fp,r7
	add r7,r4,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#4
	mvn r7,#39
	add r4,fp,r7
	add r7,r4,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mov r8,#5
	mvn r7,#39
	add r4,fp,r7
	add r7,r4,r8,lsl #2
	mov r8,#6
	str r8,[r7]
	mov r8,#6
	mvn r7,#39
	add r4,fp,r7
	add r7,r4,r8,lsl #2
	mov r8,#7
	str r8,[r7]
	mov r8,#7
	mvn r7,#39
	add r4,fp,r7
	add r7,r4,r8,lsl #2
	mov r8,#8
	str r8,[r7]
	ldr r8,[r7]
	ldr r7,[r5]
	add r5,r8,r7
	ldr r8,[r6]
	add r7,r5,r8
	mov r8,#6
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	ldr r8,[r6]
	add r6,r7,r8
	mov r0,r6
	mov r9,#168
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
