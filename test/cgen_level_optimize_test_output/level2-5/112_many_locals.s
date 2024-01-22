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
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r65 = call i32 @foo()
	sub sp,sp,#4 @stack align 8bytes
	bl foo
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	add r7,r8,#30
	@%r84 = call i32 @foo()
	sub sp,sp,#4 @stack align 8bytes
	bl foo
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	add r6,r8,#41
	add r8,r7,r6
	add r7,r8,#35
	@call void @putint(i32 %r115)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r0,#0
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
foo:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#72
.fooL0:
.fooL1:
	mvn r8,#71
	add r7,fp,r8
	@call void @memset(i32 %r104,i32 0,i32 64)
	mov r0,r7
	mov r1,#0
	mov r2,#64
	bl memset
	mvn r8,#71
	add r7,fp,r8
	mov r8,#0
	str r8,[r7]
	mov r8,#1
	mvn r7,#71
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#2
	mvn r7,#71
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#3
	mvn r7,#71
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#4
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#0
	str r8,[r6]
	mov r8,#5
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#1
	str r8,[r6]
	mov r8,#6
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#2
	str r8,[r6]
	mov r8,#7
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#3
	str r8,[r6]
	mov r8,#8
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#0
	str r8,[r6]
	mov r8,#9
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#1
	str r8,[r6]
	mov r8,#10
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#2
	str r8,[r6]
	mov r8,#11
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#3
	str r8,[r6]
	mov r8,#12
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#0
	str r8,[r6]
	mov r8,#13
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#1
	str r8,[r6]
	mov r8,#14
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#2
	str r8,[r6]
	mov r8,#15
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#3
	str r8,[r6]
	ldr r8,[r7]
	add r7,r8,#71
	mov r0,r7
	add sp,sp,#72
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
