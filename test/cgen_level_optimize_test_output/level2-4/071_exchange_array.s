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
	sub sp,sp,#108
.mainL0:
.mainL1:
	mvn r8,#107
	add r7,fp,r8
	@call void @memset(i32 %r107,i32 0,i32 100)
	mov r0,r7
	mov r1,#0
	mov r2,#100
	bl memset
	mvn r8,#107
	add r7,fp,r8
	mov r8,#1
	str r8,[r7]
	mov r8,#1
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#2
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#3
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#4
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#5
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#6
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#7
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#8
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#9
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#10
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#11
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#12
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#13
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#14
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#15
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#16
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#17
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#18
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#19
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#20
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mov r8,#21
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mov r8,#22
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mov r8,#23
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mov r8,#24
	mvn r7,#107
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
.mainL6:
	mov r8,#0
.mainL3:
	mov r7,r8
	add r7,r7,#5
	mvn r6,#107
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	ldr r7,[r6]
	mov r5,r8
	add r5,r5,#10
	mvn r4,#107
	add r3,fp,r4
	add r4,r3,r5,lsl #2
	ldr r5,[r4]
	str r5,[r6]
	str r7,[r4]
	add r7,r8,#1
.mainL4:
	cmp r7,#5
	blt .mainL7
.mainL5:
	mov r6,#10
	mvn r5,#107
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	ldr r6,[r5]
	mov r0,r6
	add sp,sp,#108
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL7:
	mov r8,r7
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
