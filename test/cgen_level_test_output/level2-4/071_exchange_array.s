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
	sub sp,sp,#124
.mainL0:
.mainL1:
	mvn r8,#123
	add r7,fp,r8
	@call void @memset(i32 %r97,i32 0,i32 100)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#100
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mov r8,#1
	mvn r7,#123
	add r6,fp,r7
	str r8,[r6]
	mov r8,#1
	mov r7,#1
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#2
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#3
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#4
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	mov r7,#5
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	mov r7,#6
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	mov r7,#7
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	mov r7,#8
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	mov r7,#9
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#10
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#11
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#12
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#13
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#14
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#15
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#16
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#17
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#18
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#19
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#5
	mov r7,#20
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#5
	mov r7,#21
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#5
	mov r7,#22
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#5
	mov r7,#23
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#5
	mov r7,#24
	mvn r6,#123
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#2
	str r8,[fp,#-24]
	mov r8,#3
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-12]
.mainL2:
	ldr r8,[fp,#-12]
	mov r7,#5
	cmp r8,r7
	blt .mainL3
.mainL4:
	mov r8,#2
	mov r7,#0
	add r6,r8,r8,lsl #2
	mov r8,r6
	add r8,r8,r7
	mvn r7,#123
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	mov r0,r8
	add sp,sp,#124
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	ldr r8,[fp,#-24]
	mov r7,#1
	sub r6,r8,r7
	ldr r8,[fp,#-12]
	add r7,r6,r6,lsl #2
	mov r6,r7
	add r6,r6,r8
	mvn r8,#123
	add r7,fp,r8
	add r8,r7,r6,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-16]
	ldr r8,[fp,#-20]
	mov r7,#1
	sub r6,r8,r7
	ldr r8,[fp,#-12]
	add r7,r6,r6,lsl #2
	mov r6,r7
	add r6,r6,r8
	mvn r8,#123
	add r7,fp,r8
	add r8,r7,r6,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-24]
	mov r6,#1
	sub r5,r8,r6
	ldr r8,[fp,#-12]
	add r6,r5,r5,lsl #2
	mov r5,r6
	add r5,r5,r8
	mvn r8,#123
	add r6,fp,r8
	add r8,r6,r5,lsl #2
	str r7,[r8]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	mov r6,#1
	sub r5,r7,r6
	ldr r7,[fp,#-12]
	add r6,r5,r5,lsl #2
	mov r5,r6
	add r5,r5,r7
	mvn r7,#123
	add r6,fp,r7
	add r7,r6,r5,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL2
	.section	.note.GNU-stack,"",%progbits
