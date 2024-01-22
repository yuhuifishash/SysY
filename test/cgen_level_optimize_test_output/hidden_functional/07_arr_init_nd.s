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
	mov r9,#404
	sub sp,sp,r9
.mainL0:
.mainL1:
	movw r8,#65132
	movt r8,#65535  @ -404
	add r7,fp,r8
	@call void @memset(i32 %r126,i32 0,i32 60)
	mov r0,r7
	mov r1,#0
	mov r2,#60
	bl memset
	movw r8,#65192
	movt r8,#65535  @ -344
	add r7,fp,r8
	@call void @memset(i32 %r128,i32 0,i32 60)
	mov r0,r7
	mov r1,#0
	mov r2,#60
	bl memset
	movw r8,#65192
	movt r8,#65535  @ -344
	add r7,fp,r8
	mov r8,#1
	str r8,[r7]
	mov r8,#1
	movw r7,#65192
	movt r7,#65535  @ -344
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#2
	movw r7,#65192
	movt r7,#65535  @ -344
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#3
	movw r7,#65192
	movt r7,#65535  @ -344
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#4
	movw r7,#65192
	movt r7,#65535  @ -344
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mov r8,#5
	movw r7,#65192
	movt r7,#65535  @ -344
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#6
	str r8,[r7]
	mov r8,#6
	movw r7,#65192
	movt r7,#65535  @ -344
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#7
	str r8,[r7]
	mov r8,#7
	movw r7,#65192
	movt r7,#65535  @ -344
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#8
	str r8,[r7]
	mov r8,#8
	movw r7,#65192
	movt r7,#65535  @ -344
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#9
	str r8,[r7]
	mov r8,#9
	movw r7,#65192
	movt r7,#65535  @ -344
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#10
	str r8,[r7]
	mov r8,#10
	movw r7,#65192
	movt r7,#65535  @ -344
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#11
	str r8,[r7]
	mov r8,#11
	movw r7,#65192
	movt r7,#65535  @ -344
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#12
	str r8,[r7]
	mov r8,#12
	movw r7,#65192
	movt r7,#65535  @ -344
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#13
	str r8,[r7]
	mov r8,#13
	movw r7,#65192
	movt r7,#65535  @ -344
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#14
	str r8,[r7]
	mov r8,#14
	movw r7,#65192
	movt r7,#65535  @ -344
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#15
	str r8,[r7]
	movw r8,#65252
	movt r8,#65535  @ -284
	add r7,fp,r8
	@call void @memset(i32 %r205,i32 0,i32 60)
	mov r0,r7
	mov r1,#0
	mov r2,#60
	bl memset
	movw r8,#65252
	movt r8,#65535  @ -284
	add r7,fp,r8
	mov r8,#1
	str r8,[r7]
	mov r8,#1
	movw r7,#65252
	movt r7,#65535  @ -284
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#2
	movw r7,#65252
	movt r7,#65535  @ -284
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#3
	movw r7,#65252
	movt r7,#65535  @ -284
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#4
	movw r7,#65252
	movt r7,#65535  @ -284
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mov r8,#5
	movw r7,#65252
	movt r7,#65535  @ -284
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#6
	str r8,[r7]
	mov r8,#6
	movw r7,#65252
	movt r7,#65535  @ -284
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#7
	str r8,[r7]
	mov r8,#7
	movw r7,#65252
	movt r7,#65535  @ -284
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#8
	str r8,[r7]
	mov r8,#8
	movw r7,#65252
	movt r7,#65535  @ -284
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#9
	str r8,[r7]
	mov r8,#9
	movw r7,#65252
	movt r7,#65535  @ -284
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#10
	str r8,[r7]
	mov r8,#10
	movw r7,#65252
	movt r7,#65535  @ -284
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#11
	str r8,[r7]
	mov r8,#11
	movw r7,#65252
	movt r7,#65535  @ -284
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#12
	str r8,[r7]
	mov r8,#12
	movw r7,#65252
	movt r7,#65535  @ -284
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#13
	str r8,[r7]
	mov r8,#13
	movw r7,#65252
	movt r7,#65535  @ -284
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#14
	str r8,[r7]
	mov r8,#14
	movw r7,#65252
	movt r7,#65535  @ -284
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#15
	str r8,[r7]
	mvn r8,#223
	add r7,fp,r8
	@call void @memset(i32 %r282,i32 0,i32 60)
	mov r0,r7
	mov r1,#0
	mov r2,#60
	bl memset
	mvn r8,#223
	add r7,fp,r8
	mov r8,#1
	str r8,[r7]
	mov r8,#1
	mvn r7,#223
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#2
	mvn r7,#223
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#3
	mvn r7,#223
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#4
	mvn r7,#223
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mov r8,#5
	mvn r7,#223
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#6
	str r8,[r7]
	mov r8,#6
	mvn r7,#223
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#7
	str r8,[r7]
	mov r8,#7
	mvn r7,#223
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#8
	str r8,[r7]
	mov r8,#8
	mvn r7,#223
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#9
	str r8,[r7]
	mov r8,#9
	mvn r7,#223
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#10
	str r8,[r7]
	mov r8,#10
	mvn r7,#223
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#11
	str r8,[r7]
	mov r8,#11
	mvn r7,#223
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#12
	str r8,[r7]
	mov r8,#12
	mvn r7,#223
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#13
	str r8,[r7]
	mov r8,#13
	mvn r7,#223
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#14
	str r8,[r7]
	mov r8,#14
	mvn r7,#223
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#15
	str r8,[r7]
	mvn r8,#163
	add r7,fp,r8
	@call void @memset(i32 %r359,i32 0,i32 60)
	mov r0,r7
	mov r1,#0
	mov r2,#60
	bl memset
	mvn r8,#163
	add r7,fp,r8
	mov r8,#1
	str r8,[r7]
	mov r8,#1
	mvn r7,#163
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#2
	mvn r7,#163
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#3
	mvn r7,#163
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#6
	mvn r7,#163
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#7
	str r8,[r7]
	mov r8,#9
	mvn r7,#163
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#10
	str r8,[r7]
	mov r8,#10
	mvn r7,#163
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#11
	str r8,[r7]
	mov r8,#11
	mvn r7,#163
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#12
	str r8,[r7]
	mvn r8,#103
	add r7,fp,r8
	@call void @memset(i32 %r401,i32 0,i32 96)
	mov r0,r7
	mov r1,#0
	mov r2,#96
	bl memset
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
	mov r0,#4
	mov r9,#404
	add sp,sp,r9
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
