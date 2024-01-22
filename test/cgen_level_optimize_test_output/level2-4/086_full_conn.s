.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
model:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#100
.modelL0:
.modelL1:
	mov r8,r0
	ldr r7,[r8]
	mov r9,r7
	str r9,[fp,#-100]
	mov r7,#85
	ldr r9,[fp,#-100]
	mul r6,r9,r7
	mov r7,#1
	add r5,r0,r7,lsl #2
	ldr r9,[r5]
	str r9,[fp,#-84]
	mov r5,#23
	ldr r9,[fp,#-84]
	mul r4,r9,r5
	add r5,r6,r4
	mov r6,#2
	add r4,r0,r6,lsl #2
	ldr r9,[r4]
	str r9,[fp,#-12]
	mvn r4,#81
	ldr r9,[fp,#-12]
	mul r3,r9,r4
	add r4,r5,r3
	mov r5,#3
	add r3,r0,r5,lsl #2
	ldr r9,[r3]
	str r9,[fp,#-16]
	mvn r3,#102
	ldr r9,[fp,#-16]
	mul r2,r9,r3
	add r3,r4,r2
	mov r4,#4
	add r2,r0,r4,lsl #2
	ldr r9,[r2]
	str r9,[fp,#-20]
	mvn r2,#122
	ldr r9,[fp,#-20]
	mul r1,r9,r2
	add r2,r3,r1
	mov r3,#5
	add r1,r0,r3,lsl #2
	ldr r3,[r1]
	lsl r1,r3,#6
	add r3,r2,r1
	mov r2,#6
	add r1,r0,r2,lsl #2
	ldr r2,[r1]
	mvn r1,#119
	mul r6,r2,r1
	add r2,r3,r6
	mov r6,#7
	add r3,r0,r6,lsl #2
	ldr r6,[r3]
	mov r3,#50
	mul r1,r6,r3
	add r6,r2,r1
	mov r3,#8
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#58
	mul r1,r3,r2
	add r3,r6,r1
	mov r6,#9
	add r2,r0,r6,lsl #2
	ldr r9,[r2]
	str r9,[fp,#-96]
	mov r2,#47
	ldr r9,[fp,#-96]
	mul r1,r9,r2
	add r2,r3,r1
	mov r3,#10
	add r1,r0,r3,lsl #2
	ldr r3,[r1]
	mvn r1,#110
	mul r5,r3,r1
	add r3,r2,r5
	mov r5,#11
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#66
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#12
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#105
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#13
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#74
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#14
	add r2,r0,r3,lsl #2
	ldr r9,[r2]
	str r9,[fp,#-24]
	mvn r2,#101
	ldr r9,[fp,#-24]
	mul r1,r9,r2
	add r2,r5,r1
	mov r5,#15
	add r1,r0,r5,lsl #2
	ldr r5,[r1]
	mov r1,#34
	mul r4,r5,r1
	add r5,r2,r4
	mov r4,#16
	add r2,r0,r4,lsl #2
	ldr r4,[r2]
	mvn r2,#38
	mul r1,r4,r2
	add r4,r5,r1
	mov r5,#17
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	add r2,r5,r5,lsl #6
	add r5,r4,r2
	mov r4,#18
	add r2,r0,r4,lsl #2
	ldr r4,[r2]
	mov r2,#47
	mul r1,r4,r2
	add r4,r5,r1
	mov r5,#19
	add r2,r0,r5,lsl #2
	ldr r9,[r2]
	str r9,[fp,#-36]
	mov r2,#113
	ldr r9,[fp,#-36]
	mul r1,r9,r2
	add r2,r4,r1
	mov r4,#20
	add r1,r0,r4,lsl #2
	ldr r4,[r1]
	mov r1,#110
	mul r3,r4,r1
	add r4,r2,r3
	mov r3,#21
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#47
	mul r1,r3,r2
	add r3,r4,r1
	mov r4,#22
	add r2,r0,r4,lsl #2
	ldr r4,[r2]
	mvn r2,#3
	mul r1,r4,r2
	add r4,r3,r1
	mov r3,#23
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#80
	mul r1,r3,r2
	add r3,r4,r1
	mov r4,#24
	add r2,r0,r4,lsl #2
	ldr r9,[r2]
	str r9,[fp,#-92]
	mov r2,#46
	ldr r9,[fp,#-92]
	mul r1,r9,r2
	add r2,r3,r1
.modelL4:
.modelL6:
	cmp r2,#127
	bgt .modelL7
.modelL8:
	cmp r2,#0
	blt .modelL9
.modelL10:
	mov r9,r2
	str r9,[fp,#-32]
.modelL5:
	ldr r9,[fp,#-32]
	mov r2,r9
	mov r1,#39
	mul r9,r2,r1
	str r9,[fp,#-28]
	mvn r2,#105
	ldr r9,[fp,#-100]
	mul r1,r9,r2
	mov r2,#126
	ldr r9,[fp,#-84]
	mul r3,r9,r2
	add r2,r1,r3
	mvn r3,#17
	ldr r9,[fp,#-12]
	mul r1,r9,r3
	add r3,r2,r1
	mvn r2,#30
	ldr r9,[fp,#-16]
	mul r1,r9,r2
	add r2,r3,r1
	mvn r3,#7
	ldr r9,[fp,#-20]
	mul r1,r9,r3
	add r3,r2,r1
	mov r2,#5
	add r1,r0,r2,lsl #2
	ldr r2,[r1]
	mov r1,#47
	mul r5,r2,r1
	add r2,r3,r5
	mov r5,#6
	add r3,r0,r5,lsl #2
	ldr r5,[r3]
	mvn r3,#3
	mul r1,r5,r3
	add r5,r2,r1
	mov r3,#7
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#67
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#8
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#93
	mul r1,r5,r2
	add r5,r3,r1
	mvn r3,#120
	ldr r9,[fp,#-96]
	mul r2,r9,r3
	add r3,r5,r2
	mov r5,#10
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	rsb r2,r5,r5,lsl #3
	add r5,r3,r2
	mov r3,#11
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#20
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#12
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#59
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#13
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#42
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#105
	ldr r9,[fp,#-24]
	mul r2,r9,r5
	add r5,r3,r2
	mov r3,#15
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#41
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#16
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mov r2,#87
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#17
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#29
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#18
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#105
	mul r1,r5,r2
	add r5,r3,r1
	mvn r3,#30
	ldr r9,[fp,#-36]
	mul r2,r9,r3
	add r3,r5,r2
	mov r5,#20
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#109
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#21
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#99
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#22
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#21
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#23
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#74
	mul r1,r3,r2
	add r3,r5,r1
	mvn r5,#124
	ldr r9,[fp,#-92]
	mul r2,r9,r5
	add r5,r3,r2
.modelL11:
.modelL13:
	cmp r5,#127
	bgt .modelL14
.modelL15:
	cmp r5,#0
	blt .modelL16
.modelL17:
	mov r9,r5
	str r9,[fp,#-44]
.modelL12:
	mov r5,#77
	ldr r9,[fp,#-44]
	mul r2,r9,r5
	ldr r9,[fp,#-28]
	add r10,r9,r2
	str r10,[fp,#-40]
	mov r2,#26
	ldr r9,[fp,#-100]
	mul r1,r9,r2
	mov r2,#76
	ldr r9,[fp,#-84]
	mul r5,r9,r2
	add r2,r1,r5
	mvn r5,#69
	ldr r9,[fp,#-12]
	mul r1,r9,r5
	add r5,r2,r1
	mov r2,#29
	ldr r9,[fp,#-16]
	mul r1,r9,r2
	add r2,r5,r1
	mvn r5,#94
	ldr r9,[fp,#-20]
	mul r1,r9,r5
	add r5,r2,r1
	mov r2,#5
	add r1,r0,r2,lsl #2
	ldr r2,[r1]
	mov r1,#96
	mul r3,r2,r1
	add r2,r5,r3
	mov r5,#6
	add r3,r0,r5,lsl #2
	ldr r5,[r3]
	mov r3,#52
	mul r1,r5,r3
	add r5,r2,r1
	mov r3,#7
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#67
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#8
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#4
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#34
	ldr r9,[fp,#-96]
	mul r2,r9,r3
	add r3,r5,r2
	mov r5,#10
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#33
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#11
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#102
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#12
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mov r2,#6
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#13
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#37
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#27
	ldr r9,[fp,#-24]
	mul r2,r9,r5
	add r5,r3,r2
	mov r3,#15
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#110
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#16
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mov r2,#116
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#17
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#39
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#18
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#62
	mul r1,r5,r2
	add r5,r3,r1
	mvn r3,#98
	ldr r9,[fp,#-36]
	mul r2,r9,r3
	add r3,r5,r2
	mov r5,#20
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	add r2,r5,r5,lsl #6
	add r5,r3,r2
	mov r3,#21
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#120
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#22
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#38
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#23
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#5
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#94
	ldr r9,[fp,#-92]
	mul r2,r9,r5
	add r5,r3,r2
.modelL18:
.modelL20:
	cmp r5,#127
	bgt .modelL21
.modelL22:
	cmp r5,#0
	blt .modelL23
.modelL24:
	mov r9,r5
	str r9,[fp,#-52]
.modelL19:
	ldr r9,[fp,#-52]
	ldr r10,[fp,#-52]
	rsb r5,r9,r10,lsl #7
	ldr r9,[fp,#-40]
	add r10,r9,r5
	str r10,[fp,#-48]
	mvn r5,#22
	ldr r9,[fp,#-100]
	mul r1,r9,r5
	mvn r5,#62
	ldr r9,[fp,#-84]
	mul r2,r9,r5
	add r5,r1,r2
	mov r2,#49
	ldr r9,[fp,#-12]
	mul r1,r9,r2
	add r2,r5,r1
	mov r5,#50
	ldr r9,[fp,#-16]
	mul r1,r9,r5
	add r5,r2,r1
	mov r2,#72
	ldr r9,[fp,#-20]
	mul r1,r9,r2
	add r2,r5,r1
	mov r5,#5
	add r1,r0,r5,lsl #2
	ldr r5,[r1]
	mov r1,#85
	mul r3,r5,r1
	add r5,r2,r3
	mov r3,#6
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#29
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#7
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mov r2,#12
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#8
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#125
	mul r1,r3,r2
	add r3,r5,r1
	mvn r5,#116
	ldr r9,[fp,#-96]
	mul r2,r9,r5
	add r5,r3,r2
	mov r3,#10
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#64
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#11
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#66
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#12
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#125
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#13
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mov r2,#110
	mul r1,r5,r2
	add r5,r3,r1
	mvn r3,#30
	ldr r9,[fp,#-24]
	mul r2,r9,r3
	add r3,r5,r2
	mov r5,#15
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#122
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#16
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#83
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#17
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mov r2,#122
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#18
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#11
	mul r1,r3,r2
	add r3,r5,r1
	mvn r5,#22
	ldr r9,[fp,#-36]
	mul r2,r9,r5
	add r5,r3,r2
	mov r3,#20
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#46
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#21
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#31
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#22
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#116
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#23
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mov r2,#95
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#118
	ldr r9,[fp,#-92]
	mul r2,r9,r3
	add r3,r5,r2
.modelL25:
.modelL27:
	cmp r3,#127
	bgt .modelL28
.modelL29:
	cmp r3,#0
	blt .modelL30
.modelL31:
	mov r9,r3
	str r9,[fp,#-60]
.modelL26:
	mvn r3,#105
	ldr r9,[fp,#-60]
	mul r2,r9,r3
	ldr r9,[fp,#-48]
	add r10,r9,r2
	str r10,[fp,#-56]
	ldr r9,[fp,#-100]
	lsl r2,r9,#3
	mov r1,#82
	ldr r9,[fp,#-84]
	mul r3,r9,r1
	add r1,r2,r3
	mvn r3,#103
	ldr r9,[fp,#-12]
	mul r2,r9,r3
	add r3,r1,r2
	mov r2,#101
	ldr r9,[fp,#-16]
	mul r1,r9,r2
	add r2,r3,r1
	mvn r3,#115
	ldr r9,[fp,#-20]
	mul r1,r9,r3
	add r3,r2,r1
	mov r2,#5
	add r1,r0,r2,lsl #2
	ldr r2,[r1]
	mvn r1,#62
	mul r5,r2,r1
	add r2,r3,r5
	mov r5,#6
	add r3,r0,r5,lsl #2
	ldr r5,[r3]
	mvn r3,#15
	mul r1,r5,r3
	add r5,r2,r1
	mov r3,#7
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#69
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#8
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mov r2,#125
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#75
	ldr r9,[fp,#-96]
	mul r2,r9,r3
	add r3,r5,r2
	mov r5,#10
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mov r2,#66
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#11
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#95
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#12
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#100
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#13
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#113
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#59
	ldr r9,[fp,#-24]
	mul r2,r9,r5
	add r5,r3,r2
	mov r3,#15
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#12
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#16
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	add r2,r5,r5,lsl #2
	add r5,r3,r2
	mov r3,#17
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#94
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#18
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mov r2,#116
	mul r1,r5,r2
	add r5,r3,r1
	mvn r3,#92
	ldr r9,[fp,#-36]
	mul r2,r9,r3
	add r3,r5,r2
	mov r5,#20
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	rsb r2,r5,r5,lsl #4
	add r5,r3,r2
	mov r3,#21
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#79
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#22
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	add r2,r5,r5,lsl #1
	add r5,r3,r2
	mov r3,#23
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#49
	mul r1,r3,r2
	add r3,r5,r1
	mvn r5,#123
	ldr r9,[fp,#-92]
	mul r2,r9,r5
	add r5,r3,r2
.modelL32:
.modelL34:
	cmp r5,#127
	bgt .modelL35
.modelL36:
	cmp r5,#0
	blt .modelL37
.modelL38:
	mov r9,r5
	str r9,[fp,#-68]
.modelL33:
	mvn r5,#2
	ldr r9,[fp,#-68]
	mul r2,r9,r5
	ldr r9,[fp,#-56]
	add r10,r9,r2
	str r10,[fp,#-64]
	mov r2,#81
	ldr r9,[fp,#-100]
	mul r1,r9,r2
	mov r2,#68
	ldr r9,[fp,#-84]
	mul r5,r9,r2
	add r2,r1,r5
	mvn r5,#101
	ldr r9,[fp,#-12]
	mul r1,r9,r5
	add r5,r2,r1
	mvn r2,#73
	ldr r9,[fp,#-16]
	mul r1,r9,r2
	add r2,r5,r1
	mov r5,#121
	ldr r9,[fp,#-20]
	mul r1,r9,r5
	add r5,r2,r1
	mov r2,#5
	add r1,r0,r2,lsl #2
	ldr r2,[r1]
	mvn r1,#14
	mul r3,r2,r1
	add r2,r5,r3
	mov r5,#6
	add r3,r0,r5,lsl #2
	ldr r5,[r3]
	mov r3,#55
	mul r1,r5,r3
	add r5,r2,r1
	mov r3,#7
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#101
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#8
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#12
	mul r1,r5,r2
	add r5,r3,r1
	mvn r3,#61
	ldr r9,[fp,#-96]
	mul r2,r9,r3
	add r3,r5,r2
	mov r5,#10
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	lsl r2,r5,#6
	add r5,r3,r2
	mov r3,#11
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#114
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#12
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mov r2,#38
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#13
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#20
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#112
	ldr r9,[fp,#-24]
	mul r2,r9,r5
	add r5,r3,r2
	mov r3,#15
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#114
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#16
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mov r2,#112
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#17
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#9
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#18
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#15
	mul r1,r5,r2
	add r5,r3,r1
	mvn r3,#49
	ldr r9,[fp,#-36]
	mul r2,r9,r3
	add r3,r5,r2
	mov r5,#20
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#111
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#21
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#115
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#22
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#53
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#23
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#82
	mul r1,r3,r2
	add r3,r5,r1
	mvn r5,#71
	ldr r9,[fp,#-92]
	mul r2,r9,r5
	add r5,r3,r2
.modelL39:
.modelL41:
	cmp r5,#127
	bgt .modelL42
.modelL43:
	cmp r5,#0
	blt .modelL44
.modelL45:
	mov r9,r5
	str r9,[fp,#-76]
.modelL40:
	ldr r9,[fp,#-76]
	lsl r5,r9,#5
	ldr r9,[fp,#-64]
	add r10,r9,r5
	str r10,[fp,#-72]
	ldr r9,[fp,#-100]
	ldr r10,[fp,#-100]
	rsb r5,r9,r10,lsl #4
	mvn r1,#76
	ldr r9,[fp,#-84]
	mul r2,r9,r1
	add r1,r5,r2
	mov r5,#66
	ldr r9,[fp,#-12]
	mul r2,r9,r5
	add r5,r1,r2
	mvn r2,#89
	ldr r9,[fp,#-16]
	mul r1,r9,r2
	add r2,r5,r1
	mvn r5,#5
	ldr r9,[fp,#-20]
	mul r1,r9,r5
	add r5,r2,r1
	mov r2,#5
	add r1,r0,r2,lsl #2
	ldr r2,[r1]
	mvn r1,#29
	mul r3,r2,r1
	add r2,r5,r3
	mov r5,#6
	add r3,r0,r5,lsl #2
	ldr r5,[r3]
	mvn r3,#7
	mul r1,r5,r3
	add r5,r2,r1
	mov r3,#7
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#81
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#8
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	lsl r2,r5,#1
	add r5,r3,r2
	mvn r3,#109
	ldr r9,[fp,#-96]
	mul r2,r9,r3
	add r3,r5,r2
	mov r5,#10
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#94
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#11
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#59
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#12
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mov r2,#52
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#13
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	rsb r2,r3,r3,lsl #4
	add r3,r5,r2
	mov r5,#55
	ldr r9,[fp,#-24]
	mul r2,r9,r5
	add r5,r3,r2
	mov r3,#15
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#32
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#16
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mov r2,#14
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#17
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#58
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#18
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mov r2,#67
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#86
	ldr r9,[fp,#-36]
	mul r2,r9,r3
	add r3,r5,r2
	mov r5,#20
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#78
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#21
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mov r2,#48
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#22
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#12
	mul r1,r5,r2
	add r5,r3,r1
	mov r3,#23
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mvn r2,#14
	mul r1,r3,r2
	add r3,r5,r1
	mov r5,#66
	ldr r9,[fp,#-92]
	mul r2,r9,r5
	add r5,r3,r2
.modelL46:
.modelL48:
	cmp r5,#127
	bgt .modelL49
.modelL50:
	cmp r5,#0
	blt .modelL51
.modelL52:
	mov r3,r5
.modelL47:
	mvn r5,#94
	mul r2,r3,r5
	ldr r9,[fp,#-72]
	add r10,r9,r2
	str r10,[fp,#-80]
	ldr r9,[fp,#-100]
	ldr r10,[fp,#-100]
	add r2,r9,r10,lsl #5
	mov r1,#82
	ldr r9,[fp,#-84]
	mul r5,r9,r1
	add r1,r2,r5
	mov r5,#67
	ldr r9,[fp,#-12]
	mul r2,r9,r5
	add r5,r1,r2
	mov r2,#30
	ldr r9,[fp,#-16]
	mul r1,r9,r2
	add r2,r5,r1
	mvn r5,#1
	ldr r9,[fp,#-20]
	mul r1,r9,r5
	add r5,r2,r1
	mov r2,#5
	add r1,r0,r2,lsl #2
	ldr r2,[r1]
	add r1,r2,r2,lsl #6
	add r2,r5,r1
	mov r5,#6
	add r1,r0,r5,lsl #2
	ldr r5,[r1]
	mov r1,#120
	mul r7,r5,r1
	add r5,r2,r7
	mov r7,#7
	add r2,r0,r7,lsl #2
	ldr r7,[r2]
	mvn r2,#12
	mul r1,r7,r2
	add r7,r5,r1
	mov r5,#8
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mov r2,#18
	mul r1,r5,r2
	add r5,r7,r1
	ldr r9,[fp,#-96]
	ldr r10,[fp,#-96]
	add r7,r9,r10,lsl #2
	add r2,r5,r7
	mov r7,#10
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r5,#104
	mul r1,r7,r5
	add r7,r2,r1
	mov r5,#11
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#118
	mul r1,r5,r2
	add r5,r7,r1
	mov r7,#12
	add r2,r0,r7,lsl #2
	ldr r7,[r2]
	mvn r2,#6
	mul r1,r7,r2
	add r7,r5,r1
	mov r5,#13
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mov r2,#71
	mul r1,r5,r2
	add r5,r7,r1
	mov r7,#107
	ldr r9,[fp,#-24]
	mul r2,r9,r7
	add r7,r5,r2
	mov r5,#15
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mov r2,#24
	mul r1,r5,r2
	add r5,r7,r1
	mov r7,#16
	add r2,r0,r7,lsl #2
	ldr r7,[r2]
	mov r2,#82
	mul r1,r7,r2
	add r7,r5,r1
	mov r5,#17
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mvn r2,#95
	mul r1,r5,r2
	add r5,r7,r1
	mov r7,#18
	add r2,r0,r7,lsl #2
	ldr r7,[r2]
	mvn r2,#103
	mul r1,r7,r2
	add r7,r5,r1
	mvn r5,#120
	ldr r9,[fp,#-36]
	mul r2,r9,r5
	add r5,r7,r2
	mov r7,#20
	add r2,r0,r7,lsl #2
	ldr r7,[r2]
	add r2,r7,r7,lsl #6
	add r7,r5,r2
	mov r5,#21
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mov r2,#97
	mul r1,r5,r2
	add r5,r7,r1
	mov r7,#22
	add r2,r0,r7,lsl #2
	ldr r7,[r2]
	mov r2,#83
	mul r1,r7,r2
	add r7,r5,r1
	mov r5,#23
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	mov r2,#46
	mul r1,r5,r2
	add r5,r7,r1
	mvn r7,#83
	ldr r9,[fp,#-92]
	mul r2,r9,r7
	add r7,r5,r2
.modelL53:
.modelL55:
	cmp r7,#127
	bgt .modelL56
.modelL57:
	cmp r7,#0
	blt .modelL58
.modelL59:
	mov r5,r7
.modelL54:
	mvn r7,#49
	mul r2,r5,r7
	ldr r9,[fp,#-80]
	add r10,r9,r2
	str r10,[fp,#-88]
	mvn r2,#28
	ldr r9,[fp,#-100]
	mul r1,r9,r2
	ldr r9,[fp,#-84]
	ldr r10,[fp,#-84]
	rsb r2,r9,r10,lsl #3
	add r7,r1,r2
	mvn r2,#69
	ldr r9,[fp,#-12]
	mul r1,r9,r2
	add r2,r7,r1
	mov r7,#38
	ldr r9,[fp,#-16]
	mul r1,r9,r7
	add r7,r2,r1
	mvn r2,#89
	ldr r9,[fp,#-20]
	mul r1,r9,r2
	add r2,r7,r1
	mov r7,#5
	add r1,r0,r7,lsl #2
	ldr r7,[r1]
	mvn r1,#14
	mul r4,r7,r1
	add r7,r2,r4
	mov r4,#6
	add r2,r0,r4,lsl #2
	ldr r4,[r2]
	mvn r2,#31
	mul r1,r4,r2
	add r4,r7,r1
	mov r7,#7
	add r2,r0,r7,lsl #2
	ldr r7,[r2]
	mov r2,#37
	mul r1,r7,r2
	add r7,r4,r1
	mov r4,#8
	add r2,r0,r4,lsl #2
	ldr r4,[r2]
	mov r2,#36
	mul r1,r4,r2
	add r4,r7,r1
	mvn r7,#61
	ldr r9,[fp,#-96]
	mul r2,r9,r7
	add r7,r4,r2
	mov r4,#10
	add r2,r0,r4,lsl #2
	ldr r4,[r2]
	mvn r2,#124
	mul r1,r4,r2
	add r4,r7,r1
	mov r7,#11
	add r2,r0,r7,lsl #2
	ldr r7,[r2]
	mvn r2,#45
	mul r1,r7,r2
	add r7,r4,r1
	mov r4,#12
	add r2,r0,r4,lsl #2
	ldr r4,[r2]
	mvn r2,#69
	mul r1,r4,r2
	add r4,r7,r1
	mov r7,#13
	add r2,r0,r7,lsl #2
	ldr r7,[r2]
	mov r2,#37
	mul r1,r7,r2
	add r7,r4,r1
	mvn r4,#72
	ldr r9,[fp,#-24]
	mul r2,r9,r4
	add r4,r7,r2
	mov r7,#15
	add r2,r0,r7,lsl #2
	ldr r7,[r2]
	mvn r2,#33
	mul r1,r7,r2
	add r7,r4,r1
	mov r4,#16
	add r2,r0,r4,lsl #2
	ldr r4,[r2]
	mvn r2,#86
	mul r1,r4,r2
	add r4,r7,r1
	mov r7,#17
	add r2,r0,r7,lsl #2
	ldr r7,[r2]
	mvn r2,#74
	mul r1,r7,r2
	add r7,r4,r1
	mov r4,#18
	add r2,r0,r4,lsl #2
	ldr r4,[r2]
	mov r2,#71
	mul r1,r4,r2
	add r4,r7,r1
	mvn r7,#76
	ldr r9,[fp,#-36]
	mul r2,r9,r7
	add r7,r4,r2
	mov r4,#20
	add r2,r0,r4,lsl #2
	ldr r4,[r2]
	mov r2,#53
	mul r1,r4,r2
	add r4,r7,r1
	mov r7,#21
	add r2,r0,r7,lsl #2
	ldr r7,[r2]
	mov r2,#37
	mul r1,r7,r2
	add r7,r4,r1
	mov r4,#22
	add r2,r0,r4,lsl #2
	ldr r4,[r2]
	mvn r2,#102
	mul r1,r4,r2
	add r4,r7,r1
	mov r7,#23
	add r2,r0,r7,lsl #2
	ldr r7,[r2]
	mvn r2,#12
	mul r1,r7,r2
	add r7,r4,r1
	mvn r4,#113
	ldr r9,[fp,#-92]
	mul r2,r9,r4
	add r4,r7,r2
.modelL60:
.modelL62:
	cmp r4,#127
	bgt .modelL63
.modelL64:
	cmp r4,#0
	blt .modelL65
.modelL66:
	mov r7,r4
.modelL61:
	mvn r4,#22
	mul r2,r7,r4
	ldr r9,[fp,#-88]
	add r4,r9,r2
	mov r2,#67
	ldr r9,[fp,#-100]
	mul r1,r9,r2
	mov r2,#42
	ldr r9,[fp,#-84]
	mul r6,r9,r2
	add r2,r1,r6
	mov r6,#41
	ldr r9,[fp,#-12]
	mul r1,r9,r6
	add r6,r2,r1
	mvn r2,#122
	ldr r9,[fp,#-16]
	mul r1,r9,r2
	add r2,r6,r1
	mvn r6,#91
	ldr r9,[fp,#-20]
	mul r1,r9,r6
	add r6,r2,r1
	mov r2,#5
	add r1,r0,r2,lsl #2
	ldr r2,[r1]
	mov r1,#10
	mul r8,r2,r1
	add r2,r6,r8
	mov r8,#6
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	mvn r6,#76
	mul r1,r8,r6
	add r8,r2,r1
	mov r6,#7
	add r2,r0,r6,lsl #2
	ldr r6,[r2]
	mov r2,#75
	mul r1,r6,r2
	add r6,r8,r1
	mov r8,#8
	add r2,r0,r8,lsl #2
	ldr r8,[r2]
	mov r2,#96
	mul r1,r8,r2
	add r8,r6,r1
	mvn r6,#50
	ldr r9,[fp,#-96]
	mul r2,r9,r6
	add r6,r8,r2
	mov r8,#10
	add r2,r0,r8,lsl #2
	ldr r8,[r2]
	mov r2,#109
	mul r1,r8,r2
	add r8,r6,r1
	mov r6,#11
	add r2,r0,r6,lsl #2
	ldr r6,[r2]
	mvn r2,#73
	mul r1,r6,r2
	add r6,r8,r1
	mov r8,#12
	add r2,r0,r8,lsl #2
	ldr r8,[r2]
	mvn r2,#6
	mul r1,r8,r2
	add r8,r6,r1
	mov r6,#13
	add r2,r0,r6,lsl #2
	ldr r6,[r2]
	mvn r2,#121
	mul r1,r6,r2
	add r6,r8,r1
	mov r8,#67
	ldr r9,[fp,#-24]
	mul r2,r9,r8
	add r8,r6,r2
	mov r6,#15
	add r2,r0,r6,lsl #2
	ldr r6,[r2]
	mov r2,#47
	mul r1,r6,r2
	add r6,r8,r1
	mov r8,#16
	add r2,r0,r8,lsl #2
	ldr r8,[r2]
	mov r2,#22
	mul r1,r8,r2
	add r8,r6,r1
	mov r6,#17
	add r2,r0,r6,lsl #2
	ldr r6,[r2]
	mvn r2,#67
	mul r1,r6,r2
	add r6,r8,r1
	mov r8,#18
	add r2,r0,r8,lsl #2
	ldr r8,[r2]
	mov r2,#38
	mul r1,r8,r2
	add r8,r6,r1
	mov r6,#29
	ldr r9,[fp,#-36]
	mul r2,r9,r6
	add r6,r8,r2
	mov r8,#20
	add r2,r0,r8,lsl #2
	ldr r8,[r2]
	mov r2,#115
	mul r1,r8,r2
	add r8,r6,r1
	mov r6,#21
	add r2,r0,r6,lsl #2
	ldr r6,[r2]
	mvn r2,#120
	mul r1,r6,r2
	add r6,r8,r1
	mov r8,#22
	add r2,r0,r8,lsl #2
	ldr r8,[r2]
	mov r2,#36
	mul r1,r8,r2
	add r8,r6,r1
	mov r6,#23
	add r2,r0,r6,lsl #2
	ldr r6,[r2]
	mvn r2,#48
	mul r1,r6,r2
	add r6,r8,r1
	mov r8,#85
	ldr r9,[fp,#-92]
	mul r2,r9,r8
	add r8,r6,r2
.modelL67:
.modelL69:
	cmp r8,#127
	bgt .modelL70
.modelL71:
	cmp r8,#0
	blt .modelL72
.modelL73:
	mov r6,r8
.modelL68:
	mov r8,#46
	mul r2,r6,r8
	add r8,r4,r2
	cmp r8,#0
	bgt .modelL2
.modelL3:
	mov r0,#0
	add sp,sp,#100
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.modelL2:
	mov r0,#1
	add sp,sp,#100
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.modelL72:
	mov r6,#0
	bl .modelL68
.modelL70:
	mov r6,#127
	bl .modelL68
.modelL65:
	mov r7,#0
	bl .modelL61
.modelL63:
	mov r7,#127
	bl .modelL61
.modelL58:
	mov r5,#0
	bl .modelL54
.modelL56:
	mov r5,#127
	bl .modelL54
.modelL51:
	mov r3,#0
	bl .modelL47
.modelL49:
	mov r3,#127
	bl .modelL47
.modelL44:
	mov r9,#0
	str r9,[fp,#-76]
	bl .modelL40
.modelL42:
	mov r9,#127
	str r9,[fp,#-76]
	bl .modelL40
.modelL37:
	mov r9,#0
	str r9,[fp,#-68]
	bl .modelL33
.modelL35:
	mov r9,#127
	str r9,[fp,#-68]
	bl .modelL33
.modelL30:
	mov r9,#0
	str r9,[fp,#-60]
	bl .modelL26
.modelL28:
	mov r9,#127
	str r9,[fp,#-60]
	bl .modelL26
.modelL23:
	mov r9,#0
	str r9,[fp,#-52]
	bl .modelL19
.modelL21:
	mov r9,#127
	str r9,[fp,#-52]
	bl .modelL19
.modelL16:
	mov r9,#0
	str r9,[fp,#-44]
	bl .modelL12
.modelL14:
	mov r9,#127
	str r9,[fp,#-44]
	bl .modelL12
.modelL9:
	mov r9,#0
	str r9,[fp,#-32]
	bl .modelL5
.modelL7:
	mov r9,#127
	str r9,[fp,#-32]
	bl .modelL5
relu_reg:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.relu_regL0:
.relu_regL1:
	cmp r0,#127
	bgt .relu_regL2
.relu_regL3:
	cmp r0,#0
	blt .relu_regL4
.relu_regL5:
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.relu_regL4:
	mov r0,#0
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.relu_regL2:
	mov r0,#127
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#108
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	bl getint
	mov r8,r0
	cmp r8,#0
	bgt .mainL17
.mainL5:
	mov r0,#0
	add sp,sp,#108
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL17:
	mvn r7,#107
	add r6,fp,r7
	mov r7,r8
.mainL3:
.mainL18:
	mov r8,#0
.mainL7:
.mainL19:
	add r5,r8,r8,lsl #2
	mov r4,r5
	mvn r5,#107
	add r3,fp,r5
	add r5,r3,r4,lsl #2
	mov r4,#0
.mainL11:
	@%r22 = call i32 @getint()
	bl getint
	mov r3,r0
	mov r2,r4
	add r1,r5,r2,lsl #2
	str r3,[r1]
	add r3,r4,#1
.mainL12:
	cmp r3,#5
	blt .mainL22
.mainL13:
	add r2,r8,#1
.mainL8:
	cmp r2,#5
	blt .mainL21
.mainL9:
	@%r43 = call i32 @model(ptr %r42)
	push {r2,r3}
	mov r0,r6
	bl model
	mov r1,r0
	pop {r2,r3}
	cmp r1,#0
	bne .mainL14
.mainL15:
	@call void @putch(i32 100)
	push {r2,r3}
	mov r0,#100
	bl putch
	pop {r2,r3}
	@call void @putch(i32 111)
	push {r2,r3}
	mov r0,#111
	bl putch
	pop {r2,r3}
	@call void @putch(i32 103)
	push {r2,r3}
	mov r0,#103
	bl putch
	pop {r2,r3}
	@call void @putch(i32 10)
	push {r2,r3}
	mov r0,#10
	bl putch
	pop {r2,r3}
.mainL16:
	sub r1,r7,#1
.mainL4:
	cmp r1,#0
	ble .mainL5
.mainL20:
	mov r7,r1
	bl .mainL3
.mainL14:
	@call void @putch(i32 99)
	push {r2,r3}
	mov r0,#99
	bl putch
	pop {r2,r3}
	@call void @putch(i32 97)
	push {r2,r3}
	mov r0,#97
	bl putch
	pop {r2,r3}
	@call void @putch(i32 116)
	push {r2,r3}
	mov r0,#116
	bl putch
	pop {r2,r3}
	@call void @putch(i32 10)
	push {r2,r3}
	mov r0,#10
	bl putch
	pop {r2,r3}
	bl .mainL16
.mainL21:
	mov r8,r2
	bl .mainL7
.mainL22:
	mov r4,r3
	bl .mainL11
	.section	.note.GNU-stack,"",%progbits
