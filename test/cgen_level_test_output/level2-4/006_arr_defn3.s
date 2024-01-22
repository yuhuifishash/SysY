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
	mov r9,#168
	sub sp,sp,r9
.mainL0:
.mainL1:
	mvn r8,#167
	add r7,fp,r8
	@call void @memset(i32 %r90,i32 0,i32 32)
	mov r0,r7
	mov r1,#0
	mov r2,#32
	bl memset
	mvn r8,#135
	add r7,fp,r8
	@call void @memset(i32 %r92,i32 0,i32 32)
	mov r0,r7
	mov r1,#0
	mov r2,#32
	bl memset
	mov r8,#1
	mvn r7,#135
	add r6,fp,r7
	str r8,[r6]
	mov r8,#2
	mov r7,#1
	mvn r6,#135
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#2
	mvn r6,#135
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#3
	mvn r6,#135
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#5
	mov r7,#4
	mvn r6,#135
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#6
	mov r7,#5
	mvn r6,#135
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#7
	mov r7,#6
	mvn r6,#135
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#8
	mov r7,#7
	mvn r6,#135
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mvn r8,#103
	add r7,fp,r8
	@call void @memset(i32 %r126,i32 0,i32 32)
	mov r0,r7
	mov r1,#0
	mov r2,#32
	bl memset
	mov r8,#1
	mvn r7,#103
	add r6,fp,r7
	str r8,[r6]
	mov r8,#2
	mov r7,#1
	mvn r6,#103
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#2
	mvn r6,#103
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#3
	mvn r6,#103
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#5
	mov r7,#4
	mvn r6,#103
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#6
	mov r7,#5
	mvn r6,#103
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#7
	mov r7,#6
	mvn r6,#103
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#8
	mov r7,#7
	mvn r6,#103
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mvn r8,#71
	add r7,fp,r8
	@call void @memset(i32 %r160,i32 0,i32 32)
	mov r0,r7
	mov r1,#0
	mov r2,#32
	bl memset
	mov r8,#1
	mvn r7,#71
	add r6,fp,r7
	str r8,[r6]
	mov r8,#2
	mov r7,#1
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#2
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#5
	mov r7,#4
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#7
	mov r7,#6
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#8
	mov r7,#7
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mvn r8,#39
	add r7,fp,r8
	@call void @memset(i32 %r186,i32 0,i32 32)
	mov r0,r7
	mov r1,#0
	mov r2,#32
	bl memset
	mov r8,#2
	mov r7,#1
	lsl r6,r8,#1
	mov r8,r6
	add r8,r8,r7
	mvn r7,#71
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	mvn r7,#39
	add r6,fp,r7
	str r8,[r6]
	mov r8,#2
	mov r7,#1
	lsl r6,r8,#1
	mov r8,r6
	add r8,r8,r7
	mvn r7,#103
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	mov r7,#1
	mvn r6,#39
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#2
	mvn r6,#39
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#3
	mvn r6,#39
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#5
	mov r7,#4
	mvn r6,#39
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#6
	mov r7,#5
	mvn r6,#39
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#7
	mov r7,#6
	mvn r6,#39
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#8
	mov r7,#7
	mvn r6,#39
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#1
	lsl r6,r8,#1
	mov r8,r6
	add r8,r8,r7
	mvn r7,#39
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	mov r7,#0
	mov r6,#0
	lsl r5,r7,#1
	mov r7,r5
	add r7,r7,r6
	mvn r6,#39
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	mov r8,#0
	mov r7,#1
	lsl r5,r8,#1
	mov r8,r5
	add r8,r8,r7
	mvn r7,#39
	add r5,fp,r7
	add r7,r5,r8,lsl #2
	ldr r8,[r7]
	add r7,r6,r8
	mov r8,#2
	mov r6,#0
	lsl r5,r8,#1
	mov r8,r5
	add r8,r8,r6
	mvn r6,#167
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	ldr r8,[r6]
	add r6,r7,r8
	mov r0,r6
	mov r9,#168
	add sp,sp,r9
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
