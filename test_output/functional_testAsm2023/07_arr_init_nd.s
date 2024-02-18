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
	mov r9,#496
	sub sp,sp,r9
.mainL0:
.mainL1:
	movw r8,#65100
	movt r8,#65535  @ -436
	add r7,fp,r8
	@call void @memset(i32 %r126,i32 0,i32 60)
	mov r0,r7
	mov r1,#0
	mov r2,#60
	bl memset
	movw r8,#65160
	movt r8,#65535  @ -376
	add r7,fp,r8
	@call void @memset(i32 %r128,i32 0,i32 60)
	mov r0,r7
	mov r1,#0
	mov r2,#60
	bl memset
	mov r8,#1
	movw r7,#65160
	movt r7,#65535  @ -376
	add r6,fp,r7
	str r8,[r6]
	mov r8,#2
	mov r7,#1
	movw r6,#65160
	movt r6,#65535  @ -376
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#2
	movw r6,#65160
	movt r6,#65535  @ -376
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#3
	movw r6,#65160
	movt r6,#65535  @ -376
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#5
	mov r7,#4
	movw r6,#65160
	movt r6,#65535  @ -376
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#6
	mov r7,#5
	movw r6,#65160
	movt r6,#65535  @ -376
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#7
	mov r7,#6
	movw r6,#65160
	movt r6,#65535  @ -376
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#8
	mov r7,#7
	movw r6,#65160
	movt r6,#65535  @ -376
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#9
	mov r7,#8
	movw r6,#65160
	movt r6,#65535  @ -376
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#10
	mov r7,#9
	movw r6,#65160
	movt r6,#65535  @ -376
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#11
	mov r7,#10
	movw r6,#65160
	movt r6,#65535  @ -376
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#12
	mov r7,#11
	movw r6,#65160
	movt r6,#65535  @ -376
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#13
	mov r7,#12
	movw r6,#65160
	movt r6,#65535  @ -376
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#14
	mov r7,#13
	movw r6,#65160
	movt r6,#65535  @ -376
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#15
	mov r7,#14
	movw r6,#65160
	movt r6,#65535  @ -376
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	movw r8,#65220
	movt r8,#65535  @ -316
	add r7,fp,r8
	@call void @memset(i32 %r190,i32 0,i32 60)
	mov r0,r7
	mov r1,#0
	mov r2,#60
	bl memset
	mov r8,#1
	movw r7,#65220
	movt r7,#65535  @ -316
	add r6,fp,r7
	str r8,[r6]
	mov r8,#2
	mov r7,#1
	movw r6,#65220
	movt r6,#65535  @ -316
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#2
	movw r6,#65220
	movt r6,#65535  @ -316
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#3
	movw r6,#65220
	movt r6,#65535  @ -316
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#5
	mov r7,#4
	movw r6,#65220
	movt r6,#65535  @ -316
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#6
	mov r7,#5
	movw r6,#65220
	movt r6,#65535  @ -316
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#7
	mov r7,#6
	movw r6,#65220
	movt r6,#65535  @ -316
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#8
	mov r7,#7
	movw r6,#65220
	movt r6,#65535  @ -316
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#9
	mov r7,#8
	movw r6,#65220
	movt r6,#65535  @ -316
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#10
	mov r7,#9
	movw r6,#65220
	movt r6,#65535  @ -316
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#11
	mov r7,#10
	movw r6,#65220
	movt r6,#65535  @ -316
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#12
	mov r7,#11
	movw r6,#65220
	movt r6,#65535  @ -316
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#13
	mov r7,#12
	movw r6,#65220
	movt r6,#65535  @ -316
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#14
	mov r7,#13
	movw r6,#65220
	movt r6,#65535  @ -316
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#15
	mov r7,#14
	movw r6,#65220
	movt r6,#65535  @ -316
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mvn r8,#255
	add r7,fp,r8
	@call void @memset(i32 %r252,i32 0,i32 60)
	mov r0,r7
	mov r1,#0
	mov r2,#60
	bl memset
	mov r8,#1
	mvn r7,#255
	add r6,fp,r7
	str r8,[r6]
	mov r8,#2
	mov r7,#1
	mvn r6,#255
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#2
	mvn r6,#255
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#3
	mvn r6,#255
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#5
	mov r7,#4
	mvn r6,#255
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#6
	mov r7,#5
	mvn r6,#255
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#7
	mov r7,#6
	mvn r6,#255
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#8
	mov r7,#7
	mvn r6,#255
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#9
	mov r7,#8
	mvn r6,#255
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#10
	mov r7,#9
	mvn r6,#255
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#11
	mov r7,#10
	mvn r6,#255
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#12
	mov r7,#11
	mvn r6,#255
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#13
	mov r7,#12
	mvn r6,#255
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#14
	mov r7,#13
	mvn r6,#255
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#15
	mov r7,#14
	mvn r6,#255
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mvn r8,#175
	add r7,fp,r8
	@call void @memset(i32 %r314,i32 0,i32 60)
	mov r0,r7
	mov r1,#0
	mov r2,#60
	bl memset
	mov r8,#1
	mvn r7,#175
	add r6,fp,r7
	str r8,[r6]
	mov r8,#2
	mov r7,#1
	mvn r6,#175
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#2
	mvn r6,#175
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#3
	mvn r6,#175
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#7
	mov r7,#6
	mvn r6,#175
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#10
	mov r7,#9
	mvn r6,#175
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#11
	mov r7,#10
	mvn r6,#175
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#12
	mov r7,#11
	mvn r6,#175
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mvn r8,#103
	add r7,fp,r8
	@call void @memset(i32 %r348,i32 0,i32 96)
	mov r0,r7
	mov r1,#0
	mov r2,#96
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
	mov r8,#4
	mov r0,r8
	mov r9,#496
	add sp,sp,r9
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
