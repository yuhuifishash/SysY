.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
sum:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#60
.sumL0:
	ldr r9,[fp,#88]
	str r9,[fp,#-48]
	ldr r9,[fp,#84]
	str r9,[fp,#-44]
	ldr r9,[fp,#80]
	str r9,[fp,#-40]
	ldr r9,[fp,#76]
	str r9,[fp,#-36]
	ldr r9,[fp,#72]
	str r9,[fp,#-32]
	ldr r9,[fp,#68]
	str r9,[fp,#-28]
	ldr r9,[fp,#64]
	str r9,[fp,#-24]
	ldr r9,[fp,#60]
	str r9,[fp,#-20]
	ldr r9,[fp,#56]
	str r9,[fp,#-16]
	ldr r9,[fp,#52]
	str r9,[fp,#-12]
	ldr r9,[fp,#48]
	str r9,[fp,#-52]
	ldr r9,[fp,#44]
	str r9,[fp,#-56]
	ldr r9,[fp,#40]
	str r9,[fp,#-60]
	ldr r7,[fp,#36]
	ldr r8,[fp,#32]
.sumL1:
	mov r4,#0
	mov r5,r4
	add r4,r0,r5,lsl #2
	ldr r5,[r4]
	mov r4,#1
	mov r0,#0
	lsl r6,r4,#1
	mov r4,r6
	add r4,r4,r0
	add r6,r1,r4,lsl #2
	ldr r4,[r6]
	add r6,r5,r4
	mov r5,#0
	mov r4,#0
	mov r1,#1
	lsl r0,r5,#2
	mov r5,r0
	lsl r0,r4,#1
	add r5,r5,r0
	add r5,r5,r1
	add r4,r2,r5,lsl #2
	ldr r5,[r4]
	add r4,r6,r5
	mov r6,#1
	mov r5,#0
	mov r2,#1
	mov r1,#0
	lsl r0,r6,#3
	mov r6,r0
	lsl r0,r5,#2
	add r6,r6,r0
	lsl r0,r2,#1
	add r6,r6,r0
	add r6,r6,r1
	add r5,r3,r6,lsl #2
	ldr r6,[r5]
	add r5,r4,r6
	mov r6,#0
	mov r4,#0
	mov r3,#1
	mov r2,#1
	mov r1,#0
	lsl r0,r6,#4
	mov r6,r0
	lsl r0,r4,#3
	add r6,r6,r0
	lsl r0,r3,#2
	add r6,r6,r0
	lsl r0,r2,#1
	add r6,r6,r0
	add r6,r6,r1
	add r4,r8,r6,lsl #2
	ldr r8,[r4]
	add r6,r5,r8
	mov r8,#1
	mov r5,#1
	mov r4,#1
	mov r3,#0
	mov r2,#0
	mov r1,#1
	lsl r0,r8,#5
	mov r8,r0
	lsl r0,r5,#4
	add r8,r8,r0
	lsl r0,r4,#3
	add r8,r8,r0
	lsl r0,r3,#2
	add r8,r8,r0
	lsl r0,r2,#1
	add r8,r8,r0
	add r8,r8,r1
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	add r7,r6,r8
	mov r8,#0
	mov r6,#0
	mov r5,#0
	mov r4,#1
	mov r3,#1
	mov r2,#1
	mov r1,#0
	lsl r0,r8,#6
	mov r8,r0
	lsl r0,r6,#5
	add r8,r8,r0
	lsl r0,r5,#4
	add r8,r8,r0
	lsl r0,r4,#3
	add r8,r8,r0
	lsl r0,r3,#2
	add r8,r8,r0
	lsl r0,r2,#1
	add r8,r8,r0
	add r8,r8,r1
	ldr r9,[fp,#-60]
	add r6,r9,r8,lsl #2
	ldr r8,[r6]
	add r9,r7,r8
	str r9,[fp,#-60]
	mov r8,#1
	mov r7,#1
	mov r5,#1
	mov r4,#1
	mov r3,#0
	mov r2,#0
	mov r1,#0
	mov r0,#1
	lsl r6,r8,#7
	mov r8,r6
	lsl r6,r7,#6
	add r8,r8,r6
	lsl r6,r5,#5
	add r8,r8,r6
	lsl r6,r4,#4
	add r8,r8,r6
	lsl r6,r3,#3
	add r8,r8,r6
	lsl r6,r2,#2
	add r8,r8,r6
	lsl r6,r1,#1
	add r8,r8,r6
	add r8,r8,r0
	ldr r9,[fp,#-56]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	ldr r9,[fp,#-60]
	add r10,r9,r8
	str r10,[fp,#-56]
	mov r8,#0
	mov r6,#0
	mov r5,#0
	mov r4,#1
	mov r3,#1
	mov r2,#1
	mov r1,#0
	mov r0,#0
	mov r9,#0
	str r9,[fp,#-60]
	lsl r7,r8,#8
	mov r8,r7
	lsl r7,r6,#7
	add r8,r8,r7
	lsl r7,r5,#6
	add r8,r8,r7
	lsl r7,r4,#5
	add r8,r8,r7
	lsl r7,r3,#4
	add r8,r8,r7
	lsl r7,r2,#3
	add r8,r8,r7
	lsl r7,r1,#2
	add r8,r8,r7
	lsl r7,r0,#1
	add r8,r8,r7
	ldr r9,[fp,#-60]
	add r8,r8,r9
	ldr r9,[fp,#-52]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	ldr r9,[fp,#-56]
	add r10,r9,r8
	str r10,[fp,#-60]
	mov r8,#0
	mov r6,#0
	mov r5,#1
	mov r4,#1
	mov r3,#0
	mov r2,#0
	mov r1,#1
	mov r0,#0
	mov r9,#0
	str r9,[fp,#-56]
	mov r9,#1
	str r9,[fp,#-52]
	lsl r7,r8,#9
	mov r8,r7
	lsl r7,r6,#8
	add r8,r8,r7
	lsl r7,r5,#7
	add r8,r8,r7
	lsl r7,r4,#6
	add r8,r8,r7
	lsl r7,r3,#5
	add r8,r8,r7
	lsl r7,r2,#4
	add r8,r8,r7
	lsl r7,r1,#3
	add r8,r8,r7
	lsl r7,r0,#2
	add r8,r8,r7
	ldr r9,[fp,#-56]
	lsl r7,r9,#1
	add r8,r8,r7
	ldr r9,[fp,#-52]
	add r8,r8,r9
	ldr r9,[fp,#-12]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	ldr r9,[fp,#-60]
	add r10,r9,r8
	str r10,[fp,#-56]
	mov r8,#0
	mov r6,#0
	mov r5,#1
	mov r4,#1
	mov r3,#1
	mov r2,#1
	mov r1,#1
	mov r0,#0
	mov r9,#0
	str r9,[fp,#-60]
	mov r9,#1
	str r9,[fp,#-52]
	mov r9,#1
	str r9,[fp,#-12]
	lsl r7,r8,#10
	mov r8,r7
	lsl r7,r6,#9
	add r8,r8,r7
	lsl r7,r5,#8
	add r8,r8,r7
	lsl r7,r4,#7
	add r8,r8,r7
	lsl r7,r3,#6
	add r8,r8,r7
	lsl r7,r2,#5
	add r8,r8,r7
	lsl r7,r1,#4
	add r8,r8,r7
	lsl r7,r0,#3
	add r8,r8,r7
	ldr r9,[fp,#-60]
	lsl r7,r9,#2
	add r8,r8,r7
	ldr r9,[fp,#-52]
	lsl r7,r9,#1
	add r8,r8,r7
	ldr r9,[fp,#-12]
	add r8,r8,r9
	ldr r9,[fp,#-16]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	ldr r9,[fp,#-56]
	add r10,r9,r8
	str r10,[fp,#-60]
	mov r8,#0
	mov r6,#0
	mov r5,#1
	mov r4,#1
	mov r3,#0
	mov r2,#0
	mov r1,#1
	mov r0,#0
	mov r9,#0
	str r9,[fp,#-56]
	mov r9,#1
	str r9,[fp,#-52]
	mov r9,#1
	str r9,[fp,#-12]
	mov r9,#0
	str r9,[fp,#-16]
	lsl r7,r8,#11
	mov r8,r7
	lsl r7,r6,#10
	add r8,r8,r7
	lsl r7,r5,#9
	add r8,r8,r7
	lsl r7,r4,#8
	add r8,r8,r7
	lsl r7,r3,#7
	add r8,r8,r7
	lsl r7,r2,#6
	add r8,r8,r7
	lsl r7,r1,#5
	add r8,r8,r7
	lsl r7,r0,#4
	add r8,r8,r7
	ldr r9,[fp,#-56]
	lsl r7,r9,#3
	add r8,r8,r7
	ldr r9,[fp,#-52]
	lsl r7,r9,#2
	add r8,r8,r7
	ldr r9,[fp,#-12]
	lsl r7,r9,#1
	add r8,r8,r7
	ldr r9,[fp,#-16]
	add r8,r8,r9
	ldr r9,[fp,#-20]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	ldr r9,[fp,#-60]
	add r10,r9,r8
	str r10,[fp,#-56]
	mov r8,#1
	mov r6,#1
	mov r5,#0
	mov r4,#0
	mov r3,#1
	mov r2,#1
	mov r1,#1
	mov r0,#0
	mov r9,#0
	str r9,[fp,#-60]
	mov r9,#1
	str r9,[fp,#-52]
	mov r9,#0
	str r9,[fp,#-12]
	mov r9,#0
	str r9,[fp,#-16]
	mov r9,#0
	str r9,[fp,#-20]
	lsl r7,r8,#12
	mov r8,r7
	lsl r7,r6,#11
	add r8,r8,r7
	lsl r7,r5,#10
	add r8,r8,r7
	lsl r7,r4,#9
	add r8,r8,r7
	lsl r7,r3,#8
	add r8,r8,r7
	lsl r7,r2,#7
	add r8,r8,r7
	lsl r7,r1,#6
	add r8,r8,r7
	lsl r7,r0,#5
	add r8,r8,r7
	ldr r9,[fp,#-60]
	lsl r7,r9,#4
	add r8,r8,r7
	ldr r9,[fp,#-52]
	lsl r7,r9,#3
	add r8,r8,r7
	ldr r9,[fp,#-12]
	lsl r7,r9,#2
	add r8,r8,r7
	ldr r9,[fp,#-16]
	lsl r7,r9,#1
	add r8,r8,r7
	ldr r9,[fp,#-20]
	add r8,r8,r9
	ldr r9,[fp,#-24]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	ldr r9,[fp,#-56]
	add r10,r9,r8
	str r10,[fp,#-60]
	mov r8,#0
	mov r6,#0
	mov r5,#0
	mov r4,#0
	mov r3,#0
	mov r2,#0
	mov r1,#0
	mov r0,#1
	mov r9,#1
	str r9,[fp,#-56]
	mov r9,#1
	str r9,[fp,#-52]
	mov r9,#1
	str r9,[fp,#-12]
	mov r9,#1
	str r9,[fp,#-16]
	mov r9,#1
	str r9,[fp,#-20]
	mov r9,#1
	str r9,[fp,#-24]
	lsl r7,r8,#13
	mov r8,r7
	lsl r7,r6,#12
	add r8,r8,r7
	lsl r7,r5,#11
	add r8,r8,r7
	lsl r7,r4,#10
	add r8,r8,r7
	lsl r7,r3,#9
	add r8,r8,r7
	lsl r7,r2,#8
	add r8,r8,r7
	lsl r7,r1,#7
	add r8,r8,r7
	lsl r7,r0,#6
	add r8,r8,r7
	ldr r9,[fp,#-56]
	lsl r7,r9,#5
	add r8,r8,r7
	ldr r9,[fp,#-52]
	lsl r7,r9,#4
	add r8,r8,r7
	ldr r9,[fp,#-12]
	lsl r7,r9,#3
	add r8,r8,r7
	ldr r9,[fp,#-16]
	lsl r7,r9,#2
	add r8,r8,r7
	ldr r9,[fp,#-20]
	lsl r7,r9,#1
	add r8,r8,r7
	ldr r9,[fp,#-24]
	add r8,r8,r9
	ldr r9,[fp,#-28]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	ldr r9,[fp,#-60]
	add r10,r9,r8
	str r10,[fp,#-56]
	mov r8,#0
	mov r6,#0
	mov r5,#0
	mov r4,#0
	mov r3,#0
	mov r2,#0
	mov r1,#0
	mov r0,#0
	mov r9,#0
	str r9,[fp,#-60]
	mov r9,#0
	str r9,[fp,#-52]
	mov r9,#1
	str r9,[fp,#-12]
	mov r9,#1
	str r9,[fp,#-16]
	mov r9,#1
	str r9,[fp,#-20]
	mov r9,#1
	str r9,[fp,#-24]
	mov r9,#1
	str r9,[fp,#-28]
	lsl r7,r8,#14
	mov r8,r7
	lsl r7,r6,#13
	add r8,r8,r7
	lsl r7,r5,#12
	add r8,r8,r7
	lsl r7,r4,#11
	add r8,r8,r7
	lsl r7,r3,#10
	add r8,r8,r7
	lsl r7,r2,#9
	add r8,r8,r7
	lsl r7,r1,#8
	add r8,r8,r7
	lsl r7,r0,#7
	add r8,r8,r7
	ldr r9,[fp,#-60]
	lsl r7,r9,#6
	add r8,r8,r7
	ldr r9,[fp,#-52]
	lsl r7,r9,#5
	add r8,r8,r7
	ldr r9,[fp,#-12]
	lsl r7,r9,#4
	add r8,r8,r7
	ldr r9,[fp,#-16]
	lsl r7,r9,#3
	add r8,r8,r7
	ldr r9,[fp,#-20]
	lsl r7,r9,#2
	add r8,r8,r7
	ldr r9,[fp,#-24]
	lsl r7,r9,#1
	add r8,r8,r7
	ldr r9,[fp,#-28]
	add r8,r8,r9
	ldr r9,[fp,#-32]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	ldr r9,[fp,#-56]
	add r10,r9,r8
	str r10,[fp,#-60]
	mov r8,#1
	mov r6,#1
	mov r5,#1
	mov r4,#1
	mov r3,#0
	mov r2,#0
	mov r1,#0
	mov r0,#0
	mov r9,#1
	str r9,[fp,#-56]
	mov r9,#1
	str r9,[fp,#-52]
	mov r9,#1
	str r9,[fp,#-12]
	mov r9,#0
	str r9,[fp,#-16]
	mov r9,#0
	str r9,[fp,#-20]
	mov r9,#1
	str r9,[fp,#-24]
	mov r9,#0
	str r9,[fp,#-28]
	mov r9,#0
	str r9,[fp,#-32]
	lsl r7,r8,#15
	mov r8,r7
	lsl r7,r6,#14
	add r8,r8,r7
	lsl r7,r5,#13
	add r8,r8,r7
	lsl r7,r4,#12
	add r8,r8,r7
	lsl r7,r3,#11
	add r8,r8,r7
	lsl r7,r2,#10
	add r8,r8,r7
	lsl r7,r1,#9
	add r8,r8,r7
	lsl r7,r0,#8
	add r8,r8,r7
	ldr r9,[fp,#-56]
	lsl r7,r9,#7
	add r8,r8,r7
	ldr r9,[fp,#-52]
	lsl r7,r9,#6
	add r8,r8,r7
	ldr r9,[fp,#-12]
	lsl r7,r9,#5
	add r8,r8,r7
	ldr r9,[fp,#-16]
	lsl r7,r9,#4
	add r8,r8,r7
	ldr r9,[fp,#-20]
	lsl r7,r9,#3
	add r8,r8,r7
	ldr r9,[fp,#-24]
	lsl r7,r9,#2
	add r8,r8,r7
	ldr r9,[fp,#-28]
	lsl r7,r9,#1
	add r8,r8,r7
	ldr r9,[fp,#-32]
	add r8,r8,r9
	ldr r9,[fp,#-36]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	ldr r9,[fp,#-60]
	add r10,r9,r8
	str r10,[fp,#-56]
	mov r8,#0
	mov r6,#0
	mov r5,#0
	mov r4,#0
	mov r3,#0
	mov r2,#1
	mov r1,#1
	mov r0,#1
	mov r9,#1
	str r9,[fp,#-60]
	mov r9,#1
	str r9,[fp,#-52]
	mov r9,#0
	str r9,[fp,#-12]
	mov r9,#0
	str r9,[fp,#-16]
	mov r9,#1
	str r9,[fp,#-20]
	mov r9,#0
	str r9,[fp,#-24]
	mov r9,#1
	str r9,[fp,#-28]
	mov r9,#0
	str r9,[fp,#-32]
	mov r9,#1
	str r9,[fp,#-36]
	lsl r7,r8,#16
	mov r8,r7
	lsl r7,r6,#15
	add r8,r8,r7
	lsl r7,r5,#14
	add r8,r8,r7
	lsl r7,r4,#13
	add r8,r8,r7
	lsl r7,r3,#12
	add r8,r8,r7
	lsl r7,r2,#11
	add r8,r8,r7
	lsl r7,r1,#10
	add r8,r8,r7
	lsl r7,r0,#9
	add r8,r8,r7
	ldr r9,[fp,#-60]
	lsl r7,r9,#8
	add r8,r8,r7
	ldr r9,[fp,#-52]
	lsl r7,r9,#7
	add r8,r8,r7
	ldr r9,[fp,#-12]
	lsl r7,r9,#6
	add r8,r8,r7
	ldr r9,[fp,#-16]
	lsl r7,r9,#5
	add r8,r8,r7
	ldr r9,[fp,#-20]
	lsl r7,r9,#4
	add r8,r8,r7
	ldr r9,[fp,#-24]
	lsl r7,r9,#3
	add r8,r8,r7
	ldr r9,[fp,#-28]
	lsl r7,r9,#2
	add r8,r8,r7
	ldr r9,[fp,#-32]
	lsl r7,r9,#1
	add r8,r8,r7
	ldr r9,[fp,#-36]
	add r8,r8,r9
	ldr r9,[fp,#-40]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	ldr r9,[fp,#-56]
	add r10,r9,r8
	str r10,[fp,#-60]
	mov r8,#1
	mov r6,#1
	mov r5,#0
	mov r4,#0
	mov r3,#1
	mov r2,#0
	mov r1,#1
	mov r0,#0
	mov r9,#0
	str r9,[fp,#-56]
	mov r9,#0
	str r9,[fp,#-52]
	mov r9,#1
	str r9,[fp,#-12]
	mov r9,#1
	str r9,[fp,#-16]
	mov r9,#1
	str r9,[fp,#-20]
	mov r9,#1
	str r9,[fp,#-24]
	mov r9,#0
	str r9,[fp,#-28]
	mov r9,#0
	str r9,[fp,#-32]
	mov r9,#1
	str r9,[fp,#-36]
	mov r9,#1
	str r9,[fp,#-40]
	lsl r7,r8,#17
	mov r8,r7
	lsl r7,r6,#16
	add r8,r8,r7
	lsl r7,r5,#15
	add r8,r8,r7
	lsl r7,r4,#14
	add r8,r8,r7
	lsl r7,r3,#13
	add r8,r8,r7
	lsl r7,r2,#12
	add r8,r8,r7
	lsl r7,r1,#11
	add r8,r8,r7
	lsl r7,r0,#10
	add r8,r8,r7
	ldr r9,[fp,#-56]
	lsl r7,r9,#9
	add r8,r8,r7
	ldr r9,[fp,#-52]
	lsl r7,r9,#8
	add r8,r8,r7
	ldr r9,[fp,#-12]
	lsl r7,r9,#7
	add r8,r8,r7
	ldr r9,[fp,#-16]
	lsl r7,r9,#6
	add r8,r8,r7
	ldr r9,[fp,#-20]
	lsl r7,r9,#5
	add r8,r8,r7
	ldr r9,[fp,#-24]
	lsl r7,r9,#4
	add r8,r8,r7
	ldr r9,[fp,#-28]
	lsl r7,r9,#3
	add r8,r8,r7
	ldr r9,[fp,#-32]
	lsl r7,r9,#2
	add r8,r8,r7
	ldr r9,[fp,#-36]
	lsl r7,r9,#1
	add r8,r8,r7
	ldr r9,[fp,#-40]
	add r8,r8,r9
	ldr r9,[fp,#-44]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	ldr r9,[fp,#-60]
	add r10,r9,r8
	str r10,[fp,#-56]
	mov r8,#0
	mov r6,#0
	mov r5,#1
	mov r4,#0
	mov r3,#0
	mov r2,#0
	mov r1,#1
	mov r0,#0
	mov r9,#0
	str r9,[fp,#-60]
	mov r9,#1
	str r9,[fp,#-52]
	mov r9,#1
	str r9,[fp,#-12]
	mov r9,#0
	str r9,[fp,#-16]
	mov r9,#0
	str r9,[fp,#-20]
	mov r9,#0
	str r9,[fp,#-24]
	mov r9,#0
	str r9,[fp,#-28]
	mov r9,#0
	str r9,[fp,#-32]
	mov r9,#0
	str r9,[fp,#-36]
	mov r9,#0
	str r9,[fp,#-40]
	mov r9,#0
	str r9,[fp,#-44]
	lsl r7,r8,#18
	mov r8,r7
	lsl r7,r6,#17
	add r8,r8,r7
	lsl r7,r5,#16
	add r8,r8,r7
	lsl r7,r4,#15
	add r8,r8,r7
	lsl r7,r3,#14
	add r8,r8,r7
	lsl r7,r2,#13
	add r8,r8,r7
	lsl r7,r1,#12
	add r8,r8,r7
	lsl r7,r0,#11
	add r8,r8,r7
	ldr r9,[fp,#-60]
	lsl r7,r9,#10
	add r8,r8,r7
	ldr r9,[fp,#-52]
	lsl r7,r9,#9
	add r8,r8,r7
	ldr r9,[fp,#-12]
	lsl r7,r9,#8
	add r8,r8,r7
	ldr r9,[fp,#-16]
	lsl r7,r9,#7
	add r8,r8,r7
	ldr r9,[fp,#-20]
	lsl r7,r9,#6
	add r8,r8,r7
	ldr r9,[fp,#-24]
	lsl r7,r9,#5
	add r8,r8,r7
	ldr r9,[fp,#-28]
	lsl r7,r9,#4
	add r8,r8,r7
	ldr r9,[fp,#-32]
	lsl r7,r9,#3
	add r8,r8,r7
	ldr r9,[fp,#-36]
	lsl r7,r9,#2
	add r8,r8,r7
	ldr r9,[fp,#-40]
	lsl r7,r9,#1
	add r8,r8,r7
	ldr r9,[fp,#-44]
	add r8,r8,r9
	ldr r9,[fp,#-48]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	ldr r9,[fp,#-56]
	add r7,r9,r8
	mov r0,r7
	add sp,sp,#60
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	movw r9,#136
	movt r9,#32  @ 2097288
	sub sp,sp,r9
.mainL0:
.mainL1:
	movw r8,#65448
	movt r8,#65503  @ -2097240
	add r7,fp,r8
	@call void @memset(i32 %r506,i32 0,i32 2097152)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#2097152
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	movw r7,#65448
	movt r7,#65503  @ -2097240
	add r6,fp,r7
	str r8,[r6]
	mov r8,#0
	str r8,[fp,#-88]
	mov r8,#0
	str r8,[fp,#-84]
	ldr r8,[fp,#-84]
	mov r7,#2
	cmp r8,r7
	blt .mainL3
.mainL5:
	mov r8,#0
	mov r7,#0
	mov r6,#0
	mov r5,#0
	mov r4,#0
	mov r3,#0
	mov r2,#0
	mov r1,#0
	mov r9,#0
	movw r10,#65408
	movt r10,#65503  @ -2097280
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65444
	movt r10,#65503  @ -2097244
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65440
	movt r10,#65503  @ -2097248
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65436
	movt r10,#65503  @ -2097252
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65432
	movt r10,#65503  @ -2097256
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65428
	movt r10,#65503  @ -2097260
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65424
	movt r10,#65503  @ -2097264
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65420
	movt r10,#65503  @ -2097268
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65416
	movt r10,#65503  @ -2097272
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65412
	movt r10,#65503  @ -2097276
	str r9,[fp,r10]
	lsl r0,r8,#18
	mov r8,r0
	lsl r0,r7,#17
	add r8,r8,r0
	lsl r0,r6,#16
	add r8,r8,r0
	lsl r0,r5,#15
	add r8,r8,r0
	lsl r0,r4,#14
	add r8,r8,r0
	lsl r0,r3,#13
	add r8,r8,r0
	lsl r0,r2,#12
	add r8,r8,r0
	lsl r0,r1,#11
	add r8,r8,r0
	movw r10,#65408
	movt r10,#65503  @ -2097280
	ldr r9,[fp,r10]
	lsl r0,r9,#10
	add r8,r8,r0
	movw r10,#65444
	movt r10,#65503  @ -2097244
	ldr r9,[fp,r10]
	lsl r0,r9,#9
	add r8,r8,r0
	movw r10,#65440
	movt r10,#65503  @ -2097248
	ldr r9,[fp,r10]
	lsl r0,r9,#8
	add r8,r8,r0
	movw r10,#65436
	movt r10,#65503  @ -2097252
	ldr r9,[fp,r10]
	lsl r0,r9,#7
	add r8,r8,r0
	movw r10,#65432
	movt r10,#65503  @ -2097256
	ldr r9,[fp,r10]
	lsl r0,r9,#6
	add r8,r8,r0
	movw r10,#65428
	movt r10,#65503  @ -2097260
	ldr r9,[fp,r10]
	lsl r0,r9,#5
	add r8,r8,r0
	movw r10,#65424
	movt r10,#65503  @ -2097264
	ldr r9,[fp,r10]
	lsl r0,r9,#4
	add r8,r8,r0
	movw r10,#65420
	movt r10,#65503  @ -2097268
	ldr r9,[fp,r10]
	lsl r0,r9,#3
	add r8,r8,r0
	movw r10,#65416
	movt r10,#65503  @ -2097272
	ldr r9,[fp,r10]
	lsl r0,r9,#2
	add r8,r8,r0
	movw r10,#65412
	movt r10,#65503  @ -2097276
	ldr r9,[fp,r10]
	lsl r0,r9,#1
	add r8,r8,r0
	movw r7,#65448
	movt r7,#65503  @ -2097240
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	movw r10,#65408
	movt r10,#65503  @ -2097280
	str r9,[fp,r10]
	mov r8,#0
	mov r6,#0
	mov r5,#0
	mov r4,#0
	mov r3,#0
	mov r2,#0
	mov r1,#0
	mov r0,#0
	mov r9,#0
	movw r10,#65412
	movt r10,#65503  @ -2097276
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65444
	movt r10,#65503  @ -2097244
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65440
	movt r10,#65503  @ -2097248
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65436
	movt r10,#65503  @ -2097252
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65432
	movt r10,#65503  @ -2097256
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65428
	movt r10,#65503  @ -2097260
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65424
	movt r10,#65503  @ -2097264
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65420
	movt r10,#65503  @ -2097268
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65416
	movt r10,#65503  @ -2097272
	str r9,[fp,r10]
	lsl r7,r8,#18
	mov r8,r7
	lsl r7,r6,#17
	add r8,r8,r7
	lsl r7,r5,#16
	add r8,r8,r7
	lsl r7,r4,#15
	add r8,r8,r7
	lsl r7,r3,#14
	add r8,r8,r7
	lsl r7,r2,#13
	add r8,r8,r7
	lsl r7,r1,#12
	add r8,r8,r7
	lsl r7,r0,#11
	add r8,r8,r7
	movw r10,#65412
	movt r10,#65503  @ -2097276
	ldr r9,[fp,r10]
	lsl r7,r9,#10
	add r8,r8,r7
	movw r10,#65444
	movt r10,#65503  @ -2097244
	ldr r9,[fp,r10]
	lsl r7,r9,#9
	add r8,r8,r7
	movw r10,#65440
	movt r10,#65503  @ -2097248
	ldr r9,[fp,r10]
	lsl r7,r9,#8
	add r8,r8,r7
	movw r10,#65436
	movt r10,#65503  @ -2097252
	ldr r9,[fp,r10]
	lsl r7,r9,#7
	add r8,r8,r7
	movw r10,#65432
	movt r10,#65503  @ -2097256
	ldr r9,[fp,r10]
	lsl r7,r9,#6
	add r8,r8,r7
	movw r10,#65428
	movt r10,#65503  @ -2097260
	ldr r9,[fp,r10]
	lsl r7,r9,#5
	add r8,r8,r7
	movw r10,#65424
	movt r10,#65503  @ -2097264
	ldr r9,[fp,r10]
	lsl r7,r9,#4
	add r8,r8,r7
	movw r10,#65420
	movt r10,#65503  @ -2097268
	ldr r9,[fp,r10]
	lsl r7,r9,#3
	add r8,r8,r7
	movw r10,#65416
	movt r10,#65503  @ -2097272
	ldr r9,[fp,r10]
	lsl r7,r9,#2
	add r8,r8,r7
	movw r7,#65448
	movt r7,#65503  @ -2097240
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	movw r10,#65412
	movt r10,#65503  @ -2097276
	str r9,[fp,r10]
	mov r8,#0
	mov r6,#0
	mov r5,#0
	mov r4,#0
	mov r3,#0
	mov r2,#0
	mov r1,#0
	mov r0,#0
	mov r9,#0
	movw r10,#65416
	movt r10,#65503  @ -2097272
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65444
	movt r10,#65503  @ -2097244
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65440
	movt r10,#65503  @ -2097248
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65436
	movt r10,#65503  @ -2097252
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65432
	movt r10,#65503  @ -2097256
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65428
	movt r10,#65503  @ -2097260
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65424
	movt r10,#65503  @ -2097264
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65420
	movt r10,#65503  @ -2097268
	str r9,[fp,r10]
	lsl r7,r8,#18
	mov r8,r7
	lsl r7,r6,#17
	add r8,r8,r7
	lsl r7,r5,#16
	add r8,r8,r7
	lsl r7,r4,#15
	add r8,r8,r7
	lsl r7,r3,#14
	add r8,r8,r7
	lsl r7,r2,#13
	add r8,r8,r7
	lsl r7,r1,#12
	add r8,r8,r7
	lsl r7,r0,#11
	add r8,r8,r7
	movw r10,#65416
	movt r10,#65503  @ -2097272
	ldr r9,[fp,r10]
	lsl r7,r9,#10
	add r8,r8,r7
	movw r10,#65444
	movt r10,#65503  @ -2097244
	ldr r9,[fp,r10]
	lsl r7,r9,#9
	add r8,r8,r7
	movw r10,#65440
	movt r10,#65503  @ -2097248
	ldr r9,[fp,r10]
	lsl r7,r9,#8
	add r8,r8,r7
	movw r10,#65436
	movt r10,#65503  @ -2097252
	ldr r9,[fp,r10]
	lsl r7,r9,#7
	add r8,r8,r7
	movw r10,#65432
	movt r10,#65503  @ -2097256
	ldr r9,[fp,r10]
	lsl r7,r9,#6
	add r8,r8,r7
	movw r10,#65428
	movt r10,#65503  @ -2097260
	ldr r9,[fp,r10]
	lsl r7,r9,#5
	add r8,r8,r7
	movw r10,#65424
	movt r10,#65503  @ -2097264
	ldr r9,[fp,r10]
	lsl r7,r9,#4
	add r8,r8,r7
	movw r10,#65420
	movt r10,#65503  @ -2097268
	ldr r9,[fp,r10]
	lsl r7,r9,#3
	add r8,r8,r7
	movw r7,#65448
	movt r7,#65503  @ -2097240
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	movw r10,#65416
	movt r10,#65503  @ -2097272
	str r9,[fp,r10]
	mov r8,#0
	mov r6,#0
	mov r5,#0
	mov r4,#0
	mov r3,#0
	mov r2,#0
	mov r1,#0
	mov r0,#0
	mov r9,#0
	movw r10,#65420
	movt r10,#65503  @ -2097268
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65444
	movt r10,#65503  @ -2097244
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65440
	movt r10,#65503  @ -2097248
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65436
	movt r10,#65503  @ -2097252
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65432
	movt r10,#65503  @ -2097256
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65428
	movt r10,#65503  @ -2097260
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65424
	movt r10,#65503  @ -2097264
	str r9,[fp,r10]
	lsl r7,r8,#18
	mov r8,r7
	lsl r7,r6,#17
	add r8,r8,r7
	lsl r7,r5,#16
	add r8,r8,r7
	lsl r7,r4,#15
	add r8,r8,r7
	lsl r7,r3,#14
	add r8,r8,r7
	lsl r7,r2,#13
	add r8,r8,r7
	lsl r7,r1,#12
	add r8,r8,r7
	lsl r7,r0,#11
	add r8,r8,r7
	movw r10,#65420
	movt r10,#65503  @ -2097268
	ldr r9,[fp,r10]
	lsl r7,r9,#10
	add r8,r8,r7
	movw r10,#65444
	movt r10,#65503  @ -2097244
	ldr r9,[fp,r10]
	lsl r7,r9,#9
	add r8,r8,r7
	movw r10,#65440
	movt r10,#65503  @ -2097248
	ldr r9,[fp,r10]
	lsl r7,r9,#8
	add r8,r8,r7
	movw r10,#65436
	movt r10,#65503  @ -2097252
	ldr r9,[fp,r10]
	lsl r7,r9,#7
	add r8,r8,r7
	movw r10,#65432
	movt r10,#65503  @ -2097256
	ldr r9,[fp,r10]
	lsl r7,r9,#6
	add r8,r8,r7
	movw r10,#65428
	movt r10,#65503  @ -2097260
	ldr r9,[fp,r10]
	lsl r7,r9,#5
	add r8,r8,r7
	movw r10,#65424
	movt r10,#65503  @ -2097264
	ldr r9,[fp,r10]
	lsl r7,r9,#4
	add r8,r8,r7
	movw r7,#65448
	movt r7,#65503  @ -2097240
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	movw r10,#65420
	movt r10,#65503  @ -2097268
	str r9,[fp,r10]
	mov r8,#0
	mov r6,#0
	mov r5,#0
	mov r4,#0
	mov r3,#0
	mov r2,#0
	mov r1,#0
	mov r0,#0
	mov r9,#0
	movw r10,#65424
	movt r10,#65503  @ -2097264
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65444
	movt r10,#65503  @ -2097244
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65440
	movt r10,#65503  @ -2097248
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65436
	movt r10,#65503  @ -2097252
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65432
	movt r10,#65503  @ -2097256
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65428
	movt r10,#65503  @ -2097260
	str r9,[fp,r10]
	lsl r7,r8,#18
	mov r8,r7
	lsl r7,r6,#17
	add r8,r8,r7
	lsl r7,r5,#16
	add r8,r8,r7
	lsl r7,r4,#15
	add r8,r8,r7
	lsl r7,r3,#14
	add r8,r8,r7
	lsl r7,r2,#13
	add r8,r8,r7
	lsl r7,r1,#12
	add r8,r8,r7
	lsl r7,r0,#11
	add r8,r8,r7
	movw r10,#65424
	movt r10,#65503  @ -2097264
	ldr r9,[fp,r10]
	lsl r7,r9,#10
	add r8,r8,r7
	movw r10,#65444
	movt r10,#65503  @ -2097244
	ldr r9,[fp,r10]
	lsl r7,r9,#9
	add r8,r8,r7
	movw r10,#65440
	movt r10,#65503  @ -2097248
	ldr r9,[fp,r10]
	lsl r7,r9,#8
	add r8,r8,r7
	movw r10,#65436
	movt r10,#65503  @ -2097252
	ldr r9,[fp,r10]
	lsl r7,r9,#7
	add r8,r8,r7
	movw r10,#65432
	movt r10,#65503  @ -2097256
	ldr r9,[fp,r10]
	lsl r7,r9,#6
	add r8,r8,r7
	movw r10,#65428
	movt r10,#65503  @ -2097260
	ldr r9,[fp,r10]
	lsl r7,r9,#5
	add r8,r8,r7
	movw r7,#65448
	movt r7,#65503  @ -2097240
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	movw r10,#65424
	movt r10,#65503  @ -2097264
	str r9,[fp,r10]
	mov r8,#0
	mov r6,#0
	mov r5,#0
	mov r4,#0
	mov r3,#0
	mov r2,#0
	mov r1,#0
	mov r0,#0
	mov r9,#0
	movw r10,#65428
	movt r10,#65503  @ -2097260
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65444
	movt r10,#65503  @ -2097244
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65440
	movt r10,#65503  @ -2097248
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65436
	movt r10,#65503  @ -2097252
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65432
	movt r10,#65503  @ -2097256
	str r9,[fp,r10]
	lsl r7,r8,#18
	mov r8,r7
	lsl r7,r6,#17
	add r8,r8,r7
	lsl r7,r5,#16
	add r8,r8,r7
	lsl r7,r4,#15
	add r8,r8,r7
	lsl r7,r3,#14
	add r8,r8,r7
	lsl r7,r2,#13
	add r8,r8,r7
	lsl r7,r1,#12
	add r8,r8,r7
	lsl r7,r0,#11
	add r8,r8,r7
	movw r10,#65428
	movt r10,#65503  @ -2097260
	ldr r9,[fp,r10]
	lsl r7,r9,#10
	add r8,r8,r7
	movw r10,#65444
	movt r10,#65503  @ -2097244
	ldr r9,[fp,r10]
	lsl r7,r9,#9
	add r8,r8,r7
	movw r10,#65440
	movt r10,#65503  @ -2097248
	ldr r9,[fp,r10]
	lsl r7,r9,#8
	add r8,r8,r7
	movw r10,#65436
	movt r10,#65503  @ -2097252
	ldr r9,[fp,r10]
	lsl r7,r9,#7
	add r8,r8,r7
	movw r10,#65432
	movt r10,#65503  @ -2097256
	ldr r9,[fp,r10]
	lsl r7,r9,#6
	add r8,r8,r7
	movw r7,#65448
	movt r7,#65503  @ -2097240
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	movw r10,#65428
	movt r10,#65503  @ -2097260
	str r9,[fp,r10]
	mov r8,#0
	mov r6,#0
	mov r5,#0
	mov r4,#0
	mov r3,#0
	mov r2,#0
	mov r1,#0
	mov r0,#0
	mov r9,#0
	movw r10,#65432
	movt r10,#65503  @ -2097256
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65444
	movt r10,#65503  @ -2097244
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65440
	movt r10,#65503  @ -2097248
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65436
	movt r10,#65503  @ -2097252
	str r9,[fp,r10]
	lsl r7,r8,#18
	mov r8,r7
	lsl r7,r6,#17
	add r8,r8,r7
	lsl r7,r5,#16
	add r8,r8,r7
	lsl r7,r4,#15
	add r8,r8,r7
	lsl r7,r3,#14
	add r8,r8,r7
	lsl r7,r2,#13
	add r8,r8,r7
	lsl r7,r1,#12
	add r8,r8,r7
	lsl r7,r0,#11
	add r8,r8,r7
	movw r10,#65432
	movt r10,#65503  @ -2097256
	ldr r9,[fp,r10]
	lsl r7,r9,#10
	add r8,r8,r7
	movw r10,#65444
	movt r10,#65503  @ -2097244
	ldr r9,[fp,r10]
	lsl r7,r9,#9
	add r8,r8,r7
	movw r10,#65440
	movt r10,#65503  @ -2097248
	ldr r9,[fp,r10]
	lsl r7,r9,#8
	add r8,r8,r7
	movw r10,#65436
	movt r10,#65503  @ -2097252
	ldr r9,[fp,r10]
	lsl r7,r9,#7
	add r8,r8,r7
	movw r7,#65448
	movt r7,#65503  @ -2097240
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	movw r10,#65432
	movt r10,#65503  @ -2097256
	str r9,[fp,r10]
	mov r8,#0
	mov r6,#0
	mov r5,#0
	mov r4,#0
	mov r3,#0
	mov r2,#0
	mov r1,#0
	mov r0,#0
	mov r9,#0
	movw r10,#65436
	movt r10,#65503  @ -2097252
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65444
	movt r10,#65503  @ -2097244
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65440
	movt r10,#65503  @ -2097248
	str r9,[fp,r10]
	lsl r7,r8,#18
	mov r8,r7
	lsl r7,r6,#17
	add r8,r8,r7
	lsl r7,r5,#16
	add r8,r8,r7
	lsl r7,r4,#15
	add r8,r8,r7
	lsl r7,r3,#14
	add r8,r8,r7
	lsl r7,r2,#13
	add r8,r8,r7
	lsl r7,r1,#12
	add r8,r8,r7
	lsl r7,r0,#11
	add r8,r8,r7
	movw r10,#65436
	movt r10,#65503  @ -2097252
	ldr r9,[fp,r10]
	lsl r7,r9,#10
	add r8,r8,r7
	movw r10,#65444
	movt r10,#65503  @ -2097244
	ldr r9,[fp,r10]
	lsl r7,r9,#9
	add r8,r8,r7
	movw r10,#65440
	movt r10,#65503  @ -2097248
	ldr r9,[fp,r10]
	lsl r7,r9,#8
	add r8,r8,r7
	movw r7,#65448
	movt r7,#65503  @ -2097240
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	movw r10,#65436
	movt r10,#65503  @ -2097252
	str r9,[fp,r10]
	mov r8,#0
	mov r6,#0
	mov r5,#0
	mov r4,#0
	mov r3,#0
	mov r2,#0
	mov r1,#0
	mov r0,#0
	mov r9,#0
	movw r10,#65440
	movt r10,#65503  @ -2097248
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65444
	movt r10,#65503  @ -2097244
	str r9,[fp,r10]
	lsl r7,r8,#18
	mov r8,r7
	lsl r7,r6,#17
	add r8,r8,r7
	lsl r7,r5,#16
	add r8,r8,r7
	lsl r7,r4,#15
	add r8,r8,r7
	lsl r7,r3,#14
	add r8,r8,r7
	lsl r7,r2,#13
	add r8,r8,r7
	lsl r7,r1,#12
	add r8,r8,r7
	lsl r7,r0,#11
	add r8,r8,r7
	movw r10,#65440
	movt r10,#65503  @ -2097248
	ldr r9,[fp,r10]
	lsl r7,r9,#10
	add r8,r8,r7
	movw r10,#65444
	movt r10,#65503  @ -2097244
	ldr r9,[fp,r10]
	lsl r7,r9,#9
	add r8,r8,r7
	movw r7,#65448
	movt r7,#65503  @ -2097240
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	movw r10,#65440
	movt r10,#65503  @ -2097248
	str r9,[fp,r10]
	mov r8,#0
	mov r6,#0
	mov r5,#0
	mov r4,#0
	mov r3,#0
	mov r2,#0
	mov r1,#0
	mov r0,#0
	mov r9,#0
	movw r10,#65444
	movt r10,#65503  @ -2097244
	str r9,[fp,r10]
	lsl r7,r8,#18
	mov r8,r7
	lsl r7,r6,#17
	add r8,r8,r7
	lsl r7,r5,#16
	add r8,r8,r7
	lsl r7,r4,#15
	add r8,r8,r7
	lsl r7,r3,#14
	add r8,r8,r7
	lsl r7,r2,#13
	add r8,r8,r7
	lsl r7,r1,#12
	add r8,r8,r7
	lsl r7,r0,#11
	add r8,r8,r7
	movw r10,#65444
	movt r10,#65503  @ -2097244
	ldr r9,[fp,r10]
	lsl r7,r9,#10
	add r8,r8,r7
	movw r7,#65448
	movt r7,#65503  @ -2097240
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	movw r10,#65444
	movt r10,#65503  @ -2097244
	str r9,[fp,r10]
	mov r8,#0
	mov r6,#0
	mov r5,#0
	mov r4,#0
	mov r3,#0
	mov r2,#0
	mov r1,#0
	mov r0,#0
	lsl r7,r8,#18
	mov r8,r7
	lsl r7,r6,#17
	add r8,r8,r7
	lsl r7,r5,#16
	add r8,r8,r7
	lsl r7,r4,#15
	add r8,r8,r7
	lsl r7,r3,#14
	add r8,r8,r7
	lsl r7,r2,#13
	add r8,r8,r7
	lsl r7,r1,#12
	add r8,r8,r7
	lsl r7,r0,#11
	add r8,r8,r7
	movw r7,#65448
	movt r7,#65503  @ -2097240
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	movw r10,#65404
	movt r10,#65503  @ -2097284
	str r9,[fp,r10]
	mov r8,#0
	mov r6,#0
	mov r5,#0
	mov r4,#0
	mov r3,#0
	mov r2,#0
	mov r1,#0
	lsl r0,r8,#18
	mov r8,r0
	lsl r0,r6,#17
	add r8,r8,r0
	lsl r0,r5,#16
	add r8,r8,r0
	lsl r0,r4,#15
	add r8,r8,r0
	lsl r0,r3,#14
	add r8,r8,r0
	lsl r0,r2,#13
	add r8,r8,r0
	lsl r0,r1,#12
	add r8,r8,r0
	movw r6,#65448
	movt r6,#65503  @ -2097240
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#0
	mov r5,#0
	mov r4,#0
	mov r3,#0
	mov r2,#0
	mov r1,#0
	lsl r0,r8,#18
	mov r8,r0
	lsl r0,r5,#17
	add r8,r8,r0
	lsl r0,r4,#16
	add r8,r8,r0
	lsl r0,r3,#15
	add r8,r8,r0
	lsl r0,r2,#14
	add r8,r8,r0
	lsl r0,r1,#13
	add r8,r8,r0
	movw r5,#65448
	movt r5,#65503  @ -2097240
	add r4,fp,r5
	add r5,r4,r8,lsl #2
	mov r8,#0
	mov r4,#0
	mov r3,#0
	mov r2,#0
	mov r1,#0
	lsl r0,r8,#18
	mov r8,r0
	lsl r0,r4,#17
	add r8,r8,r0
	lsl r0,r3,#16
	add r8,r8,r0
	lsl r0,r2,#15
	add r8,r8,r0
	lsl r0,r1,#14
	add r8,r8,r0
	movw r4,#65448
	movt r4,#65503  @ -2097240
	add r3,fp,r4
	add r4,r3,r8,lsl #2
	mov r8,#0
	mov r3,#0
	mov r2,#0
	mov r1,#0
	lsl r0,r8,#18
	mov r8,r0
	lsl r0,r3,#17
	add r8,r8,r0
	lsl r0,r2,#16
	add r8,r8,r0
	lsl r0,r1,#15
	add r8,r8,r0
	movw r3,#65448
	movt r3,#65503  @ -2097240
	add r2,fp,r3
	add r3,r2,r8,lsl #2
	mov r8,#0
	mov r2,#0
	mov r1,#0
	lsl r0,r8,#18
	mov r8,r0
	lsl r0,r2,#17
	add r8,r8,r0
	lsl r0,r1,#16
	add r8,r8,r0
	movw r2,#65448
	movt r2,#65503  @ -2097240
	add r1,fp,r2
	add r2,r1,r8,lsl #2
	mov r8,#0
	mov r1,#0
	lsl r0,r8,#18
	mov r8,r0
	lsl r0,r1,#17
	add r8,r8,r0
	movw r1,#65448
	movt r1,#65503  @ -2097240
	add r0,fp,r1
	add r1,r0,r8,lsl #2
	mov r8,#0
	lsl r0,r8,#18
	mov r8,r0
	movw r0,#65448
	movt r0,#65503  @ -2097240
	add r7,fp,r0
	add r0,r7,r8,lsl #2
	movw r8,#65448
	movt r8,#65503  @ -2097240
	add r7,fp,r8
	@%r504 = call i32 @sum(ptr %r332,ptr %r350,ptr %r367,ptr %r383,ptr %r398,ptr %r412,ptr %r425,ptr %r437,ptr %r448,ptr %r458,ptr %r467,ptr %r475,ptr %r482,ptr %r488,ptr %r493,ptr %r497,ptr %r500,ptr %r502,ptr %r503)
	push {r0,r1,r2,r3}
	sub sp,sp,#60
	str r7,[sp,#56]  @%r503
	str r0,[sp,#52]  @%r502
	str r1,[sp,#48]  @%r500
	str r2,[sp,#44]  @%r497
	str r3,[sp,#40]  @%r493
	str r4,[sp,#36]  @%r488
	str r5,[sp,#32]  @%r482
	str r6,[sp,#28]  @%r475
	movw r10,#65404
	movt r10,#65503  @ -2097284
	ldr r9,[fp,r10]
	str r9,[sp,#24]  @%r467
	movw r10,#65444
	movt r10,#65503  @ -2097244
	ldr r9,[fp,r10]
	str r9,[sp,#20]  @%r458
	movw r10,#65440
	movt r10,#65503  @ -2097248
	ldr r9,[fp,r10]
	str r9,[sp,#16]  @%r448
	movw r10,#65436
	movt r10,#65503  @ -2097252
	ldr r9,[fp,r10]
	str r9,[sp,#12]  @%r437
	movw r10,#65432
	movt r10,#65503  @ -2097256
	ldr r9,[fp,r10]
	str r9,[sp,#8]  @%r425
	movw r10,#65428
	movt r10,#65503  @ -2097260
	ldr r9,[fp,r10]
	str r9,[sp,#4]  @%r412
	movw r10,#65424
	movt r10,#65503  @ -2097264
	ldr r9,[fp,r10]
	str r9,[sp,#0]  @%r398
	movw r10,#65408
	movt r10,#65503  @ -2097280
	ldr r0,[fp,r10]
	movw r10,#65412
	movt r10,#65503  @ -2097276
	ldr r1,[fp,r10]
	movw r10,#65416
	movt r10,#65503  @ -2097272
	ldr r2,[fp,r10]
	movw r10,#65420
	movt r10,#65503  @ -2097268
	ldr r3,[fp,r10]
	bl sum
	add sp,sp,#60
	mov r8,r0
	pop {r0,r1,r2,r3}
	@call void @putint(i32 %r504)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	movw r9,#136
	movt r9,#32  @ 2097288
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL3:
	mov r8,#0
	str r8,[fp,#-80]
	ldr r8,[fp,#-80]
	mov r7,#2
	cmp r8,r7
	blt .mainL7
.mainL9:
	ldr r8,[fp,#-84]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-84]
.mainL4:
	ldr r8,[fp,#-84]
	mov r7,#2
	cmp r8,r7
	blt .mainL3
	bge .mainL5
.mainL7:
	mov r8,#0
	str r8,[fp,#-76]
	ldr r8,[fp,#-76]
	mov r7,#2
	cmp r8,r7
	blt .mainL11
.mainL13:
	ldr r8,[fp,#-80]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-80]
.mainL8:
	ldr r8,[fp,#-80]
	mov r7,#2
	cmp r8,r7
	blt .mainL7
	bge .mainL9
.mainL11:
	mov r8,#0
	str r8,[fp,#-72]
	ldr r8,[fp,#-72]
	mov r7,#2
	cmp r8,r7
	blt .mainL15
.mainL17:
	ldr r8,[fp,#-76]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-76]
.mainL12:
	ldr r8,[fp,#-76]
	mov r7,#2
	cmp r8,r7
	blt .mainL11
	bge .mainL13
.mainL15:
	mov r8,#0
	str r8,[fp,#-68]
	ldr r8,[fp,#-68]
	mov r7,#2
	cmp r8,r7
	blt .mainL19
.mainL21:
	ldr r8,[fp,#-72]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-72]
.mainL16:
	ldr r8,[fp,#-72]
	mov r7,#2
	cmp r8,r7
	blt .mainL15
	bge .mainL17
.mainL19:
	mov r8,#0
	str r8,[fp,#-64]
	ldr r8,[fp,#-64]
	mov r7,#2
	cmp r8,r7
	blt .mainL23
.mainL25:
	ldr r8,[fp,#-68]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-68]
.mainL20:
	ldr r8,[fp,#-68]
	mov r7,#2
	cmp r8,r7
	blt .mainL19
	bge .mainL21
.mainL23:
	mov r8,#0
	str r8,[fp,#-60]
	ldr r8,[fp,#-60]
	mov r7,#2
	cmp r8,r7
	blt .mainL27
.mainL29:
	ldr r8,[fp,#-64]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-64]
.mainL24:
	ldr r8,[fp,#-64]
	mov r7,#2
	cmp r8,r7
	blt .mainL23
	bge .mainL25
.mainL27:
	mov r8,#0
	str r8,[fp,#-56]
	ldr r8,[fp,#-56]
	mov r7,#2
	cmp r8,r7
	blt .mainL31
.mainL33:
	ldr r8,[fp,#-60]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-60]
.mainL28:
	ldr r8,[fp,#-60]
	mov r7,#2
	cmp r8,r7
	blt .mainL27
	bge .mainL29
.mainL31:
	mov r8,#0
	str r8,[fp,#-52]
	ldr r8,[fp,#-52]
	mov r7,#2
	cmp r8,r7
	blt .mainL35
.mainL37:
	ldr r8,[fp,#-56]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-56]
.mainL32:
	ldr r8,[fp,#-56]
	mov r7,#2
	cmp r8,r7
	blt .mainL31
	bge .mainL33
.mainL35:
	mov r8,#0
	str r8,[fp,#-48]
	ldr r8,[fp,#-48]
	mov r7,#2
	cmp r8,r7
	blt .mainL39
.mainL41:
	ldr r8,[fp,#-52]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-52]
.mainL36:
	ldr r8,[fp,#-52]
	mov r7,#2
	cmp r8,r7
	blt .mainL35
	bge .mainL37
.mainL39:
	mov r8,#0
	str r8,[fp,#-44]
	ldr r8,[fp,#-44]
	mov r7,#2
	cmp r8,r7
	blt .mainL43
.mainL45:
	ldr r8,[fp,#-48]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-48]
.mainL40:
	ldr r8,[fp,#-48]
	mov r7,#2
	cmp r8,r7
	blt .mainL39
	bge .mainL41
.mainL43:
	mov r8,#0
	str r8,[fp,#-40]
	ldr r8,[fp,#-40]
	mov r7,#2
	cmp r8,r7
	blt .mainL47
.mainL49:
	ldr r8,[fp,#-44]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-44]
.mainL44:
	ldr r8,[fp,#-44]
	mov r7,#2
	cmp r8,r7
	blt .mainL43
	bge .mainL45
.mainL47:
	mov r8,#0
	str r8,[fp,#-36]
	ldr r8,[fp,#-36]
	mov r7,#2
	cmp r8,r7
	blt .mainL51
.mainL53:
	ldr r8,[fp,#-40]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-40]
.mainL48:
	ldr r8,[fp,#-40]
	mov r7,#2
	cmp r8,r7
	blt .mainL47
	bge .mainL49
.mainL51:
	mov r8,#0
	str r8,[fp,#-32]
	ldr r8,[fp,#-32]
	mov r7,#2
	cmp r8,r7
	blt .mainL55
.mainL57:
	ldr r8,[fp,#-36]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-36]
.mainL52:
	ldr r8,[fp,#-36]
	mov r7,#2
	cmp r8,r7
	blt .mainL51
	bge .mainL53
.mainL55:
	mov r8,#0
	str r8,[fp,#-28]
	ldr r8,[fp,#-28]
	mov r7,#2
	cmp r8,r7
	blt .mainL59
.mainL61:
	ldr r8,[fp,#-32]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-32]
.mainL56:
	ldr r8,[fp,#-32]
	mov r7,#2
	cmp r8,r7
	blt .mainL55
	bge .mainL57
.mainL59:
	mov r8,#0
	str r8,[fp,#-24]
	ldr r8,[fp,#-24]
	mov r7,#2
	cmp r8,r7
	blt .mainL63
.mainL65:
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-28]
.mainL60:
	ldr r8,[fp,#-28]
	mov r7,#2
	cmp r8,r7
	blt .mainL59
	bge .mainL61
.mainL63:
	mov r8,#0
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	mov r7,#2
	cmp r8,r7
	blt .mainL67
.mainL69:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
.mainL64:
	ldr r8,[fp,#-24]
	mov r7,#2
	cmp r8,r7
	blt .mainL63
	bge .mainL65
.mainL67:
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#2
	cmp r8,r7
	blt .mainL71
.mainL73:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL68:
	ldr r8,[fp,#-20]
	mov r7,#2
	cmp r8,r7
	blt .mainL67
	bge .mainL69
.mainL71:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#2
	cmp r8,r7
	blt .mainL75
.mainL77:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL72:
	ldr r8,[fp,#-16]
	mov r7,#2
	cmp r8,r7
	blt .mainL71
	bge .mainL73
.mainL75:
	ldr r9,[fp,#-88]
	movw r10,#65428
	movt r10,#65503  @ -2097260
	str r9,[fp,r10]
	ldr r7,[fp,#-84]
	ldr r6,[fp,#-80]
	ldr r5,[fp,#-76]
	ldr r4,[fp,#-72]
	ldr r3,[fp,#-68]
	ldr r2,[fp,#-64]
	ldr r1,[fp,#-60]
	ldr r0,[fp,#-56]
	ldr r9,[fp,#-52]
	movw r10,#65400
	movt r10,#65503  @ -2097288
	str r9,[fp,r10]
	ldr r9,[fp,#-48]
	movw r10,#65440
	movt r10,#65503  @ -2097248
	str r9,[fp,r10]
	ldr r9,[fp,#-44]
	movw r10,#65436
	movt r10,#65503  @ -2097252
	str r9,[fp,r10]
	ldr r9,[fp,#-40]
	movw r10,#65404
	movt r10,#65503  @ -2097284
	str r9,[fp,r10]
	ldr r9,[fp,#-36]
	movw r10,#65424
	movt r10,#65503  @ -2097264
	str r9,[fp,r10]
	ldr r9,[fp,#-32]
	movw r10,#65416
	movt r10,#65503  @ -2097272
	str r9,[fp,r10]
	ldr r9,[fp,#-28]
	movw r10,#65432
	movt r10,#65503  @ -2097256
	str r9,[fp,r10]
	ldr r9,[fp,#-24]
	movw r10,#65444
	movt r10,#65503  @ -2097244
	str r9,[fp,r10]
	ldr r9,[fp,#-20]
	movw r10,#65412
	movt r10,#65503  @ -2097276
	str r9,[fp,r10]
	ldr r9,[fp,#-16]
	movw r10,#65420
	movt r10,#65503  @ -2097268
	str r9,[fp,r10]
	ldr r9,[fp,#-12]
	movw r10,#65408
	movt r10,#65503  @ -2097280
	str r9,[fp,r10]
	lsl r8,r7,#18
	mov r7,r8
	lsl r8,r6,#17
	add r7,r7,r8
	lsl r8,r5,#16
	add r7,r7,r8
	lsl r8,r4,#15
	add r7,r7,r8
	lsl r8,r3,#14
	add r7,r7,r8
	lsl r8,r2,#13
	add r7,r7,r8
	lsl r8,r1,#12
	add r7,r7,r8
	lsl r8,r0,#11
	add r7,r7,r8
	movw r10,#65400
	movt r10,#65503  @ -2097288
	ldr r9,[fp,r10]
	lsl r8,r9,#10
	add r7,r7,r8
	movw r10,#65440
	movt r10,#65503  @ -2097248
	ldr r9,[fp,r10]
	lsl r8,r9,#9
	add r7,r7,r8
	movw r10,#65436
	movt r10,#65503  @ -2097252
	ldr r9,[fp,r10]
	lsl r8,r9,#8
	add r7,r7,r8
	movw r10,#65404
	movt r10,#65503  @ -2097284
	ldr r9,[fp,r10]
	lsl r8,r9,#7
	add r7,r7,r8
	movw r10,#65424
	movt r10,#65503  @ -2097264
	ldr r9,[fp,r10]
	lsl r8,r9,#6
	add r7,r7,r8
	movw r10,#65416
	movt r10,#65503  @ -2097272
	ldr r9,[fp,r10]
	lsl r8,r9,#5
	add r7,r7,r8
	movw r10,#65432
	movt r10,#65503  @ -2097256
	ldr r9,[fp,r10]
	lsl r8,r9,#4
	add r7,r7,r8
	movw r10,#65444
	movt r10,#65503  @ -2097244
	ldr r9,[fp,r10]
	lsl r8,r9,#3
	add r7,r7,r8
	movw r10,#65412
	movt r10,#65503  @ -2097276
	ldr r9,[fp,r10]
	lsl r8,r9,#2
	add r7,r7,r8
	movw r10,#65420
	movt r10,#65503  @ -2097268
	ldr r9,[fp,r10]
	lsl r8,r9,#1
	add r7,r7,r8
	movw r10,#65408
	movt r10,#65503  @ -2097280
	ldr r9,[fp,r10]
	add r7,r7,r9
	movw r8,#65448
	movt r8,#65503  @ -2097240
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	movw r10,#65428
	movt r10,#65503  @ -2097260
	ldr r9,[fp,r10]
	str r9,[r8]
	ldr r8,[fp,#-88]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-88]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.mainL76:
	ldr r8,[fp,#-12]
	mov r7,#2
	cmp r8,r7
	blt .mainL75
	bge .mainL77
	.section	.note.GNU-stack,"",%progbits
