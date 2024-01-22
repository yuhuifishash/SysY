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
	sub sp,sp,#88
.mainL0:
.mainL1:
	mvn r8,#87
	add r7,fp,r8
	@call void @memset(i32 %r57,i32 0,i32 80)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#80
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mvn r8,#87
	add r7,fp,r8
	mov r8,#1
	str r8,[r7]
	mov r8,#1
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
.mainL6:
	mov r8,#0
	mov r7,#2
.mainL3:
	mov r6,r7
	mvn r5,#87
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	ldr r6,[r5]
	sub r4,r7,#1
	mov r3,r4
	mvn r4,#87
	add r2,fp,r4
	add r4,r2,r3,lsl #2
	ldr r3,[r4]
	add r4,r6,r3
	sub r6,r7,#2
	mov r3,r6
	mvn r6,#87
	add r2,fp,r6
	add r6,r2,r3,lsl #2
	ldr r3,[r6]
	add r6,r4,r3
	str r6,[r5]
	ldr r6,[r5]
	add r5,r8,r6
	@call void @putint(i32 %r36)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	add r6,r7,#1
.mainL4:
	cmp r6,#20
	blt .mainL7
.mainL5:
	mov r0,r5
	add sp,sp,#88
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL7:
	mov r8,r5
	mov r7,r6
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
