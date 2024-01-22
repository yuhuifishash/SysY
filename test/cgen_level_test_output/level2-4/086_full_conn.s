.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
model:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.modelL0:
.modelL1:
	mov r8,#0
	mov r7,#0
	add r6,r8,r8,lsl #2
	mov r8,r6
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	mov r7,r8
	mov r8,#85
	mul r6,r7,r8
	mov r8,#0
	mov r7,#1
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	mov r7,#23
	mul r5,r8,r7
	add r8,r6,r5
	mov r7,#0
	mov r6,#2
	add r5,r7,r7,lsl #2
	mov r7,r5
	add r7,r7,r6
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	mov r6,#82
	rsb r5,r6,#0
	mul r6,r7,r5
	add r7,r8,r6
	mov r8,#0
	mov r6,#3
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r8,r8,r6
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	mov r6,#103
	rsb r5,r6,#0
	mul r6,r8,r5
	add r8,r7,r6
	mov r7,#0
	mov r6,#4
	add r5,r7,r7,lsl #2
	mov r7,r5
	add r7,r7,r6
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	mov r6,#123
	rsb r5,r6,#0
	mul r6,r7,r5
	add r7,r8,r6
	mov r8,#1
	mov r6,#0
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r8,r8,r6
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	mov r6,#64
	mul r5,r8,r6
	add r8,r7,r5
	mov r7,#1
	mov r6,#1
	add r5,r7,r7,lsl #2
	mov r7,r5
	add r7,r7,r6
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	mov r6,#120
	rsb r5,r6,#0
	mul r6,r7,r5
	add r7,r8,r6
	mov r8,#1
	mov r6,#2
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r8,r8,r6
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	mov r6,#50
	mul r5,r8,r6
	add r8,r7,r5
	mov r7,#1
	mov r6,#3
	add r5,r7,r7,lsl #2
	mov r7,r5
	add r7,r7,r6
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	mov r6,#59
	rsb r5,r6,#0
	mul r6,r7,r5
	add r7,r8,r6
	mov r8,#1
	mov r6,#4
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r8,r8,r6
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	mov r6,#47
	mul r5,r8,r6
	add r8,r7,r5
	mov r7,#2
	mov r6,#0
	add r5,r7,r7,lsl #2
	mov r7,r5
	add r7,r7,r6
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	mov r6,#111
	rsb r5,r6,#0
	mul r6,r7,r5
	add r7,r8,r6
	mov r8,#2
	mov r6,#1
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r8,r8,r6
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	mov r6,#67
	rsb r5,r6,#0
	mul r6,r8,r5
	add r8,r7,r6
	mov r7,#2
	mov r6,#2
	add r5,r7,r7,lsl #2
	mov r7,r5
	add r7,r7,r6
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	mov r6,#106
	rsb r5,r6,#0
	mul r6,r7,r5
	add r7,r8,r6
	mov r8,#2
	mov r6,#3
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r8,r8,r6
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	mov r6,#75
	rsb r5,r6,#0
	mul r6,r8,r5
	add r8,r7,r6
	mov r7,#2
	mov r6,#4
	add r5,r7,r7,lsl #2
	mov r7,r5
	add r7,r7,r6
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	mov r6,#102
	rsb r5,r6,#0
	mul r6,r7,r5
	add r7,r8,r6
	mov r8,#3
	mov r6,#0
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r8,r8,r6
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	mov r6,#34
	mul r5,r8,r6
	add r8,r7,r5
	mov r7,#3
	mov r6,#1
	add r5,r7,r7,lsl #2
	mov r7,r5
	add r7,r7,r6
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	mov r6,#39
	rsb r5,r6,#0
	mul r6,r7,r5
	add r7,r8,r6
	mov r8,#3
	mov r6,#2
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r8,r8,r6
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	mov r6,#65
	mul r5,r8,r6
	add r8,r7,r5
	mov r7,#3
	mov r6,#3
	add r5,r7,r7,lsl #2
	mov r7,r5
	add r7,r7,r6
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	mov r6,#47
	mul r5,r7,r6
	add r7,r8,r5
	mov r8,#3
	mov r6,#4
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r8,r8,r6
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	mov r6,#113
	mul r5,r8,r6
	add r8,r7,r5
	mov r7,#4
	mov r6,#0
	add r5,r7,r7,lsl #2
	mov r7,r5
	add r7,r7,r6
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	mov r6,#110
	mul r5,r7,r6
	add r7,r8,r5
	mov r8,#4
	mov r6,#1
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r8,r8,r6
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	mov r6,#47
	mul r5,r8,r6
	add r8,r7,r5
	mov r7,#4
	mov r6,#2
	add r5,r7,r7,lsl #2
	mov r7,r5
	add r7,r7,r6
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	mov r6,#4
	rsb r5,r6,#0
	mul r6,r7,r5
	add r7,r8,r6
	mov r8,#4
	mov r6,#3
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r8,r8,r6
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	mov r6,#80
	mul r5,r8,r6
	add r8,r7,r5
	mov r7,#4
	mov r6,#4
	add r5,r7,r7,lsl #2
	mov r7,r5
	add r7,r7,r6
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	mov r6,#46
	mul r5,r7,r6
	add r7,r8,r5
	@%r188 = call i32 @relu_reg(i32 %r187)
	push {r0}
	mov r0,r7
	bl relu_reg
	mov r8,r0
	pop {r0}
	mov r7,r8
	mov r8,#39
	mul r6,r7,r8
	mov r8,#0
	mov r7,#0
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	mov r7,r8
	mov r8,#106
	rsb r5,r8,#0
	mul r8,r7,r5
	mov r7,#0
	mov r5,#1
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#126
	mul r4,r7,r5
	add r7,r8,r4
	mov r8,#0
	mov r5,#2
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#18
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#0
	mov r5,#3
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#31
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r8,r5
	mov r8,#0
	mov r5,#4
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#8
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#1
	mov r5,#0
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#47
	mul r4,r7,r5
	add r7,r8,r4
	mov r8,#1
	mov r5,#1
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#4
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#1
	mov r5,#2
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#67
	mul r4,r7,r5
	add r7,r8,r4
	mov r8,#1
	mov r5,#3
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#94
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#1
	mov r5,#4
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#121
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r8,r5
	mov r8,#2
	mov r5,#0
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#7
	mul r4,r8,r5
	add r8,r7,r4
	mov r7,#2
	mov r5,#1
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#21
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r8,r5
	mov r8,#2
	mov r5,#2
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#60
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#2
	mov r5,#3
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#43
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r8,r5
	mov r8,#2
	mov r5,#4
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#105
	mul r4,r8,r5
	add r8,r7,r4
	mov r7,#3
	mov r5,#0
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#42
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r8,r5
	mov r8,#3
	mov r5,#1
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#87
	mul r4,r8,r5
	add r8,r7,r4
	mov r7,#3
	mov r5,#2
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#29
	mul r4,r7,r5
	add r7,r8,r4
	mov r8,#3
	mov r5,#3
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#106
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#3
	mov r5,#4
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#31
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r8,r5
	mov r8,#4
	mov r5,#0
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#110
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#4
	mov r5,#1
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#100
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r8,r5
	mov r8,#4
	mov r5,#2
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#22
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#4
	mov r5,#3
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#75
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r8,r5
	mov r8,#4
	mov r5,#4
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#125
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	@%r385 = call i32 @relu_reg(i32 %r384)
	push {r0}
	mov r0,r8
	bl relu_reg
	mov r7,r0
	pop {r0}
	mov r8,#77
	mul r5,r7,r8
	add r8,r6,r5
	mov r7,#0
	mov r6,#0
	add r5,r7,r7,lsl #2
	mov r7,r5
	add r7,r7,r6
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	mov r6,r7
	mov r7,#26
	mul r5,r6,r7
	mov r7,#0
	mov r6,#1
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r6
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	mov r6,#76
	mul r4,r7,r6
	add r7,r5,r4
	mov r6,#0
	mov r5,#2
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#70
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r7,r5
	mov r7,#0
	mov r5,#3
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#29
	mul r4,r7,r5
	add r7,r6,r4
	mov r6,#0
	mov r5,#4
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#95
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r7,r5
	mov r7,#1
	mov r5,#0
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#96
	mul r4,r7,r5
	add r7,r6,r4
	mov r6,#1
	mov r5,#1
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#52
	mul r4,r6,r5
	add r6,r7,r4
	mov r7,#1
	mov r5,#2
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#68
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r6,r5
	mov r6,#1
	mov r5,#3
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#5
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r7,r5
	mov r7,#1
	mov r5,#4
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#34
	mul r4,r7,r5
	add r7,r6,r4
	mov r6,#2
	mov r5,#0
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#34
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r7,r5
	mov r7,#2
	mov r5,#1
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#102
	mul r4,r7,r5
	add r7,r6,r4
	mov r6,#2
	mov r5,#2
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#6
	mul r4,r6,r5
	add r6,r7,r4
	mov r7,#2
	mov r5,#3
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#38
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r6,r5
	mov r6,#2
	mov r5,#4
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#27
	mul r4,r6,r5
	add r6,r7,r4
	mov r7,#3
	mov r5,#0
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#110
	mul r4,r7,r5
	add r7,r6,r4
	mov r6,#3
	mov r5,#1
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#116
	mul r4,r6,r5
	add r6,r7,r4
	mov r7,#3
	mov r5,#2
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#39
	mul r4,r7,r5
	add r7,r6,r4
	mov r6,#3
	mov r5,#3
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#63
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r7,r5
	mov r7,#3
	mov r5,#4
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#99
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r6,r5
	mov r6,#4
	mov r5,#0
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#65
	mul r4,r6,r5
	add r6,r7,r4
	mov r7,#4
	mov r5,#1
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#120
	mul r4,r7,r5
	add r7,r6,r4
	mov r6,#4
	mov r5,#2
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#39
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r7,r5
	mov r7,#4
	mov r5,#3
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#6
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r6,r5
	mov r6,#4
	mov r5,#4
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#94
	mul r4,r6,r5
	add r6,r7,r4
	@%r574 = call i32 @relu_reg(i32 %r573)
	push {r0}
	mov r0,r6
	bl relu_reg
	mov r7,r0
	pop {r0}
	mov r6,#127
	mul r5,r7,r6
	add r7,r8,r5
	mov r8,#0
	mov r6,#0
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r8,r8,r6
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	mov r6,r8
	mov r8,#23
	rsb r5,r8,#0
	mul r8,r6,r5
	mov r6,#0
	mov r5,#1
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#63
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r8,r5
	mov r8,#0
	mov r5,#2
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#49
	mul r4,r8,r5
	add r8,r6,r4
	mov r6,#0
	mov r5,#3
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#50
	mul r4,r6,r5
	add r6,r8,r4
	mov r8,#0
	mov r5,#4
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#72
	mul r4,r8,r5
	add r8,r6,r4
	mov r6,#1
	mov r5,#0
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#85
	mul r4,r6,r5
	add r6,r8,r4
	mov r8,#1
	mov r5,#1
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#30
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r6,r5
	mov r6,#1
	mov r5,#2
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#12
	mul r4,r6,r5
	add r6,r8,r4
	mov r8,#1
	mov r5,#3
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#125
	mul r4,r8,r5
	add r8,r6,r4
	mov r6,#1
	mov r5,#4
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#117
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r8,r5
	mov r8,#2
	mov r5,#0
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#65
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r6,r5
	mov r6,#2
	mov r5,#1
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#67
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r8,r5
	mov r8,#2
	mov r5,#2
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#125
	mul r4,r8,r5
	add r8,r6,r4
	mov r6,#2
	mov r5,#3
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#110
	mul r4,r6,r5
	add r6,r8,r4
	mov r8,#2
	mov r5,#4
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#31
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r6,r5
	mov r6,#3
	mov r5,#0
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#123
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r8,r5
	mov r8,#3
	mov r5,#1
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#83
	mul r4,r8,r5
	add r8,r6,r4
	mov r6,#3
	mov r5,#2
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#122
	mul r4,r6,r5
	add r6,r8,r4
	mov r8,#3
	mov r5,#3
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#11
	mul r4,r8,r5
	add r8,r6,r4
	mov r6,#3
	mov r5,#4
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#23
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r8,r5
	mov r8,#4
	mov r5,#0
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#47
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r6,r5
	mov r6,#4
	mov r5,#1
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#32
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r8,r5
	mov r8,#4
	mov r5,#2
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#117
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r6,r5
	mov r6,#4
	mov r5,#3
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#95
	mul r4,r6,r5
	add r6,r8,r4
	mov r8,#4
	mov r5,#4
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#118
	mul r4,r8,r5
	add r8,r6,r4
	@%r765 = call i32 @relu_reg(i32 %r764)
	push {r0}
	mov r0,r8
	bl relu_reg
	mov r6,r0
	pop {r0}
	mov r8,#106
	rsb r5,r8,#0
	mul r8,r6,r5
	add r6,r7,r8
	mov r8,#0
	mov r7,#0
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	mov r7,r8
	mov r8,#8
	mul r5,r7,r8
	mov r8,#0
	mov r7,#1
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	mov r7,#82
	mul r4,r8,r7
	add r8,r5,r4
	mov r7,#0
	mov r5,#2
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#104
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r8,r5
	mov r8,#0
	mov r5,#3
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#101
	mul r4,r8,r5
	add r8,r7,r4
	mov r7,#0
	mov r5,#4
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#116
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r8,r5
	mov r8,#1
	mov r5,#0
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#63
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#1
	mov r5,#1
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#16
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r8,r5
	mov r8,#1
	mov r5,#2
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#70
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#1
	mov r5,#3
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#125
	mul r4,r7,r5
	add r7,r8,r4
	mov r8,#1
	mov r5,#4
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#75
	mul r4,r8,r5
	add r8,r7,r4
	mov r7,#2
	mov r5,#0
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#66
	mul r4,r7,r5
	add r7,r8,r4
	mov r8,#2
	mov r5,#1
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#96
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#2
	mov r5,#2
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#101
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r8,r5
	mov r8,#2
	mov r5,#3
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#114
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#2
	mov r5,#4
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#59
	mul r4,r7,r5
	add r7,r8,r4
	mov r8,#3
	mov r5,#0
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#12
	mul r4,r8,r5
	add r8,r7,r4
	mov r7,#3
	mov r5,#1
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#5
	mul r4,r7,r5
	add r7,r8,r4
	mov r8,#3
	mov r5,#2
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#95
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#3
	mov r5,#3
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#116
	mul r4,r7,r5
	add r7,r8,r4
	mov r8,#3
	mov r5,#4
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#93
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#4
	mov r5,#0
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#15
	mul r4,r7,r5
	add r7,r8,r4
	mov r8,#4
	mov r5,#1
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#79
	mul r4,r8,r5
	add r8,r7,r4
	mov r7,#4
	mov r5,#2
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#3
	mul r4,r7,r5
	add r7,r8,r4
	mov r8,#4
	mov r5,#3
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#49
	mul r4,r8,r5
	add r8,r7,r4
	mov r7,#4
	mov r5,#4
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#124
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r8,r5
	@%r956 = call i32 @relu_reg(i32 %r955)
	push {r0}
	mov r0,r7
	bl relu_reg
	mov r8,r0
	pop {r0}
	mov r7,#3
	rsb r5,r7,#0
	mul r7,r8,r5
	add r8,r6,r7
	mov r7,#0
	mov r6,#0
	add r5,r7,r7,lsl #2
	mov r7,r5
	add r7,r7,r6
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	mov r6,r7
	mov r7,#81
	mul r5,r6,r7
	mov r7,#0
	mov r6,#1
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r6
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	mov r6,#68
	mul r4,r7,r6
	add r7,r5,r4
	mov r6,#0
	mov r5,#2
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#102
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r7,r5
	mov r7,#0
	mov r5,#3
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#74
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r6,r5
	mov r6,#0
	mov r5,#4
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#121
	mul r4,r6,r5
	add r6,r7,r4
	mov r7,#1
	mov r5,#0
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#15
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r6,r5
	mov r6,#1
	mov r5,#1
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#55
	mul r4,r6,r5
	add r6,r7,r4
	mov r7,#1
	mov r5,#2
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#101
	mul r4,r7,r5
	add r7,r6,r4
	mov r6,#1
	mov r5,#3
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#13
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r7,r5
	mov r7,#1
	mov r5,#4
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#62
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r6,r5
	mov r6,#2
	mov r5,#0
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#64
	mul r4,r6,r5
	add r6,r7,r4
	mov r7,#2
	mov r5,#1
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#114
	mul r4,r7,r5
	add r7,r6,r4
	mov r6,#2
	mov r5,#2
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#38
	mul r4,r6,r5
	add r6,r7,r4
	mov r7,#2
	mov r5,#3
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#21
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r6,r5
	mov r6,#2
	mov r5,#4
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#112
	mul r4,r6,r5
	add r6,r7,r4
	mov r7,#3
	mov r5,#0
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#114
	mul r4,r7,r5
	add r7,r6,r4
	mov r6,#3
	mov r5,#1
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#112
	mul r4,r6,r5
	add r6,r7,r4
	mov r7,#3
	mov r5,#2
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#10
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r6,r5
	mov r6,#3
	mov r5,#3
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#16
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r7,r5
	mov r7,#3
	mov r5,#4
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#50
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r6,r5
	mov r6,#4
	mov r5,#0
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#112
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r7,r5
	mov r7,#4
	mov r5,#1
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#116
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r6,r5
	mov r6,#4
	mov r5,#2
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#54
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r7,r5
	mov r7,#4
	mov r5,#3
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#82
	mul r4,r7,r5
	add r7,r6,r4
	mov r6,#4
	mov r5,#4
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#72
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r7,r5
	@%r1149 = call i32 @relu_reg(i32 %r1148)
	push {r0}
	mov r0,r6
	bl relu_reg
	mov r7,r0
	pop {r0}
	mov r6,#32
	mul r5,r7,r6
	add r7,r8,r5
	mov r8,#0
	mov r6,#0
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r8,r8,r6
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	mov r6,r8
	mov r8,#15
	mul r5,r6,r8
	mov r8,#0
	mov r6,#1
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r6
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	mov r6,#77
	rsb r4,r6,#0
	mul r6,r8,r4
	add r8,r5,r6
	mov r6,#0
	mov r5,#2
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#66
	mul r4,r6,r5
	add r6,r8,r4
	mov r8,#0
	mov r5,#3
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#90
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r6,r5
	mov r6,#0
	mov r5,#4
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#6
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r8,r5
	mov r8,#1
	mov r5,#0
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#30
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r6,r5
	mov r6,#1
	mov r5,#1
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#8
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r8,r5
	mov r8,#1
	mov r5,#2
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#81
	mul r4,r8,r5
	add r8,r6,r4
	mov r6,#1
	mov r5,#3
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#2
	mul r4,r6,r5
	add r6,r8,r4
	mov r8,#1
	mov r5,#4
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#110
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r6,r5
	mov r6,#2
	mov r5,#0
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#95
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r8,r5
	mov r8,#2
	mov r5,#1
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#59
	mul r4,r8,r5
	add r8,r6,r4
	mov r6,#2
	mov r5,#2
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#52
	mul r4,r6,r5
	add r6,r8,r4
	mov r8,#2
	mov r5,#3
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#15
	mul r4,r8,r5
	add r8,r6,r4
	mov r6,#2
	mov r5,#4
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#55
	mul r4,r6,r5
	add r6,r8,r4
	mov r8,#3
	mov r5,#0
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#33
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r6,r5
	mov r6,#3
	mov r5,#1
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#14
	mul r4,r6,r5
	add r6,r8,r4
	mov r8,#3
	mov r5,#2
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#58
	mul r4,r8,r5
	add r8,r6,r4
	mov r6,#3
	mov r5,#3
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#67
	mul r4,r6,r5
	add r6,r8,r4
	mov r8,#3
	mov r5,#4
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#86
	mul r4,r8,r5
	add r8,r6,r4
	mov r6,#4
	mov r5,#0
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#79
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r8,r5
	mov r8,#4
	mov r5,#1
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#48
	mul r4,r8,r5
	add r8,r6,r4
	mov r6,#4
	mov r5,#2
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#13
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r8,r5
	mov r8,#4
	mov r5,#3
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#15
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r6,r5
	mov r6,#4
	mov r5,#4
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#66
	mul r4,r6,r5
	add r6,r8,r4
	@%r1339 = call i32 @relu_reg(i32 %r1338)
	push {r0}
	mov r0,r6
	bl relu_reg
	mov r8,r0
	pop {r0}
	mov r6,#95
	rsb r5,r6,#0
	mul r6,r8,r5
	add r8,r7,r6
	mov r7,#0
	mov r6,#0
	add r5,r7,r7,lsl #2
	mov r7,r5
	add r7,r7,r6
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	mov r6,r7
	mov r7,#33
	mul r5,r6,r7
	mov r7,#0
	mov r6,#1
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r6
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	mov r6,#82
	mul r4,r7,r6
	add r7,r5,r4
	mov r6,#0
	mov r5,#2
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#67
	mul r4,r6,r5
	add r6,r7,r4
	mov r7,#0
	mov r5,#3
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#30
	mul r4,r7,r5
	add r7,r6,r4
	mov r6,#0
	mov r5,#4
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#2
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r7,r5
	mov r7,#1
	mov r5,#0
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#65
	mul r4,r7,r5
	add r7,r6,r4
	mov r6,#1
	mov r5,#1
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#120
	mul r4,r6,r5
	add r6,r7,r4
	mov r7,#1
	mov r5,#2
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#13
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r6,r5
	mov r6,#1
	mov r5,#3
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#18
	mul r4,r6,r5
	add r6,r7,r4
	mov r7,#1
	mov r5,#4
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#5
	mul r4,r7,r5
	add r7,r6,r4
	mov r6,#2
	mov r5,#0
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#104
	mul r4,r6,r5
	add r6,r7,r4
	mov r7,#2
	mov r5,#1
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#119
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r6,r5
	mov r6,#2
	mov r5,#2
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#7
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r7,r5
	mov r7,#2
	mov r5,#3
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#71
	mul r4,r7,r5
	add r7,r6,r4
	mov r6,#2
	mov r5,#4
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#107
	mul r4,r6,r5
	add r6,r7,r4
	mov r7,#3
	mov r5,#0
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#24
	mul r4,r7,r5
	add r7,r6,r4
	mov r6,#3
	mov r5,#1
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#82
	mul r4,r6,r5
	add r6,r7,r4
	mov r7,#3
	mov r5,#2
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#96
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r6,r5
	mov r6,#3
	mov r5,#3
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#104
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r7,r5
	mov r7,#3
	mov r5,#4
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#121
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r6,r5
	mov r6,#4
	mov r5,#0
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#65
	mul r4,r6,r5
	add r6,r7,r4
	mov r7,#4
	mov r5,#1
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#97
	mul r4,r7,r5
	add r7,r6,r4
	mov r6,#4
	mov r5,#2
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#83
	mul r4,r6,r5
	add r6,r7,r4
	mov r7,#4
	mov r5,#3
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#46
	mul r4,r7,r5
	add r7,r6,r4
	mov r6,#4
	mov r5,#4
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#84
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r7,r5
	@%r1527 = call i32 @relu_reg(i32 %r1526)
	push {r0}
	mov r0,r6
	bl relu_reg
	mov r7,r0
	pop {r0}
	mov r6,#50
	rsb r5,r6,#0
	mul r6,r7,r5
	add r7,r8,r6
	mov r8,#0
	mov r6,#0
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r8,r8,r6
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	mov r6,r8
	mov r8,#29
	rsb r5,r8,#0
	mul r8,r6,r5
	mov r6,#0
	mov r5,#1
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#7
	mul r4,r6,r5
	add r6,r8,r4
	mov r8,#0
	mov r5,#2
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#70
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r6,r5
	mov r6,#0
	mov r5,#3
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#38
	mul r4,r6,r5
	add r6,r8,r4
	mov r8,#0
	mov r5,#4
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#90
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r6,r5
	mov r6,#1
	mov r5,#0
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#15
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r8,r5
	mov r8,#1
	mov r5,#1
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#32
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r6,r5
	mov r6,#1
	mov r5,#2
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#37
	mul r4,r6,r5
	add r6,r8,r4
	mov r8,#1
	mov r5,#3
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#36
	mul r4,r8,r5
	add r8,r6,r4
	mov r6,#1
	mov r5,#4
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#62
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r8,r5
	mov r8,#2
	mov r5,#0
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#125
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r6,r5
	mov r6,#2
	mov r5,#1
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#46
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r8,r5
	mov r8,#2
	mov r5,#2
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#70
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r6,r5
	mov r6,#2
	mov r5,#3
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#37
	mul r4,r6,r5
	add r6,r8,r4
	mov r8,#2
	mov r5,#4
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#73
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r6,r5
	mov r6,#3
	mov r5,#0
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#34
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r8,r5
	mov r8,#3
	mov r5,#1
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#87
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r6,r5
	mov r6,#3
	mov r5,#2
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#75
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r8,r5
	mov r8,#3
	mov r5,#3
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#71
	mul r4,r8,r5
	add r8,r6,r4
	mov r6,#3
	mov r5,#4
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#77
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r8,r5
	mov r8,#4
	mov r5,#0
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#53
	mul r4,r8,r5
	add r8,r6,r4
	mov r6,#4
	mov r5,#1
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#37
	mul r4,r6,r5
	add r6,r8,r4
	mov r8,#4
	mov r5,#2
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#103
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r6,r5
	mov r6,#4
	mov r5,#3
	add r4,r6,r6,lsl #2
	mov r6,r4
	add r6,r6,r5
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,#13
	rsb r4,r5,#0
	mul r5,r6,r4
	add r6,r8,r5
	mov r8,#4
	mov r5,#4
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#114
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r6,r5
	@%r1724 = call i32 @relu_reg(i32 %r1723)
	push {r0}
	mov r0,r8
	bl relu_reg
	mov r6,r0
	pop {r0}
	mov r8,#23
	rsb r5,r8,#0
	mul r8,r6,r5
	add r6,r7,r8
	mov r8,#0
	mov r7,#0
	add r5,r8,r8,lsl #2
	mov r8,r5
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	mov r7,r8
	mov r8,#67
	mul r5,r7,r8
	mov r8,#0
	mov r7,#1
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	mov r7,#42
	mul r4,r8,r7
	add r8,r5,r4
	mov r7,#0
	mov r5,#2
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#41
	mul r4,r7,r5
	add r7,r8,r4
	mov r8,#0
	mov r5,#3
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#123
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#0
	mov r5,#4
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#92
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r8,r5
	mov r8,#1
	mov r5,#0
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#10
	mul r4,r8,r5
	add r8,r7,r4
	mov r7,#1
	mov r5,#1
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#77
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r8,r5
	mov r8,#1
	mov r5,#2
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#75
	mul r4,r8,r5
	add r8,r7,r4
	mov r7,#1
	mov r5,#3
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#96
	mul r4,r7,r5
	add r7,r8,r4
	mov r8,#1
	mov r5,#4
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#51
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#2
	mov r5,#0
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#109
	mul r4,r7,r5
	add r7,r8,r4
	mov r8,#2
	mov r5,#1
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#74
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#2
	mov r5,#2
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#7
	rsb r4,r5,#0
	mul r5,r7,r4
	add r7,r8,r5
	mov r8,#2
	mov r5,#3
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#122
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#2
	mov r5,#4
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#67
	mul r4,r7,r5
	add r7,r8,r4
	mov r8,#3
	mov r5,#0
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#47
	mul r4,r8,r5
	add r8,r7,r4
	mov r7,#3
	mov r5,#1
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#22
	mul r4,r7,r5
	add r7,r8,r4
	mov r8,#3
	mov r5,#2
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#68
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#3
	mov r5,#3
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#38
	mul r4,r7,r5
	add r7,r8,r4
	mov r8,#3
	mov r5,#4
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#29
	mul r4,r8,r5
	add r8,r7,r4
	mov r7,#4
	mov r5,#0
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#115
	mul r4,r7,r5
	add r7,r8,r4
	mov r8,#4
	mov r5,#1
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#121
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#4
	mov r5,#2
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#36
	mul r4,r7,r5
	add r7,r8,r4
	mov r8,#4
	mov r5,#3
	add r4,r8,r8,lsl #2
	mov r8,r4
	add r8,r8,r5
	add r5,r0,r8,lsl #2
	ldr r8,[r5]
	mov r5,#49
	rsb r4,r5,#0
	mul r5,r8,r4
	add r8,r7,r5
	mov r7,#4
	mov r5,#4
	add r4,r7,r7,lsl #2
	mov r7,r4
	add r7,r7,r5
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#85
	mul r4,r7,r5
	add r7,r8,r4
	@%r1914 = call i32 @relu_reg(i32 %r1913)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl relu_reg
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#46
	mul r5,r8,r7
	add r8,r6,r5
	mov r7,#0
	cmp r8,r7
	bgt .modelL2
.modelL3:
	mov r8,#0
	mov r0,r8
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.modelL2:
	mov r8,#1
	mov r0,r8
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
relu_reg:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.relu_regL0:
	str r0,[fp,#-12]
.relu_regL1:
	ldr r8,[fp,#-12]
	mov r7,#127
	cmp r8,r7
	bgt .relu_regL2
.relu_regL3:
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	blt .relu_regL4
.relu_regL5:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.relu_regL4:
	mov r8,#0
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.relu_regL2:
	mov r8,#127
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#120
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-120]
.mainL2:
	ldr r8,[fp,#-120]
	mov r7,#0
	cmp r8,r7
	bgt .mainL3
.mainL4:
	mov r8,#0
	mov r0,r8
	add sp,sp,#120
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	mov r8,#0
	str r8,[fp,#-16]
.mainL5:
	ldr r8,[fp,#-16]
	mov r7,#5
	cmp r8,r7
	blt .mainL6
.mainL7:
	mvn r8,#115
	add r7,fp,r8
	@%r33 = call i32 @model(ptr %r32)
	mov r0,r7
	bl model
	mov r8,r0
	cmp r8,#0
	bne .mainL11
.mainL12:
	mov r8,#100
	@call void @putch(i32 %r39)
	mov r0,r8
	bl putch
	mov r8,#111
	@call void @putch(i32 %r40)
	mov r0,r8
	bl putch
	mov r8,#103
	@call void @putch(i32 %r41)
	mov r0,r8
	bl putch
	mov r8,#10
	@call void @putch(i32 %r42)
	mov r0,r8
	bl putch
.mainL13:
	ldr r8,[fp,#-120]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-120]
	bl .mainL2
.mainL11:
	mov r8,#99
	@call void @putch(i32 %r35)
	mov r0,r8
	bl putch
	mov r8,#97
	@call void @putch(i32 %r36)
	mov r0,r8
	bl putch
	mov r8,#116
	@call void @putch(i32 %r37)
	mov r0,r8
	bl putch
	mov r8,#10
	@call void @putch(i32 %r38)
	mov r0,r8
	bl putch
	bl .mainL13
.mainL6:
	mov r8,#0
	str r8,[fp,#-12]
.mainL8:
	ldr r8,[fp,#-12]
	mov r7,#5
	cmp r8,r7
	blt .mainL9
.mainL10:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL5
.mainL9:
	@%r22 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,[fp,#-16]
	ldr r6,[fp,#-12]
	add r5,r7,r7,lsl #2
	mov r7,r5
	add r7,r7,r6
	mvn r6,#115
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL8
	.section	.note.GNU-stack,"",%progbits
