.arch armv7-a
.fpu vfpv3-d16
.arm
.data
N:
	.word  0
M:
	.word  0
L:
	.word  0
.text
.global main
.LPIC0:
	.word  L
.LPIC1:
	.word  M
.LPIC2:
	.word  N
sub:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#24
.subL0:
	mov r9,r2
	str r9,[fp,#-24]
	mov r9,r1
	str r9,[fp,#-20]
	mov r9,r0
	str r9,[fp,#-16]
	ldr r5,[fp,#48]
	ldr r4,[fp,#44]
	ldr r8,[fp,#40]
	ldr r7,[fp,#36]
	ldr r6,[fp,#32]
.subL1:
	mov r0,#0
	str r0,[fp,#-12]
	mov r0,#0
	str r0,[fp,#-12]
.subL2:
	ldr r0,[fp,#-12]
	mov r1,#3
	cmp r0,r1
	blt .subL3
.subL4:
	mov r2,#0
	mov r0,r2
	add sp,sp,#24
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.subL3:
	ldr r2,[fp,#-12]
	mov r1,r2
	ldr r9,[fp,#-16]
	add r2,r9,r1,lsl #2
	ldr r1,[r2]
	ldr r2,[fp,#-12]
	mov r0,r2
	add r2,r3,r0,lsl #2
	ldr r0,[r2]
	sub r2,r1,r0
	ldr r1,[fp,#-12]
	mov r0,r1
	add r1,r8,r0,lsl #2
	str r2,[r1]
	ldr r2,[fp,#-12]
	mov r1,r2
	ldr r9,[fp,#-20]
	add r2,r9,r1,lsl #2
	ldr r1,[r2]
	ldr r2,[fp,#-12]
	mov r0,r2
	add r2,r6,r0,lsl #2
	ldr r0,[r2]
	sub r2,r1,r0
	ldr r1,[fp,#-12]
	mov r0,r1
	add r1,r4,r0,lsl #2
	str r2,[r1]
	ldr r2,[fp,#-12]
	mov r1,r2
	ldr r9,[fp,#-24]
	add r2,r9,r1,lsl #2
	ldr r1,[r2]
	ldr r2,[fp,#-12]
	mov r0,r2
	add r2,r7,r0,lsl #2
	ldr r0,[r2]
	sub r2,r1,r0
	ldr r1,[fp,#-12]
	mov r0,r1
	add r1,r5,r0,lsl #2
	str r2,[r1]
	ldr r2,[fp,#-12]
	mov r1,#1
	add r0,r2,r1
	str r0,[fp,#-12]
	bl .subL2
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	mov r9,#140
	sub sp,sp,r9
.mainL0:
.mainL1:
	mov r8,#3
	ldr r7,.LPIC2
	str r8,[r7]
	mov r8,#3
	ldr r7,.LPIC1
	str r8,[r7]
	mov r8,#3
	ldr r7,.LPIC0
	str r8,[r7]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-16]
.mainL2:
	ldr r8,[fp,#-16]
	mov r7,#3
	cmp r8,r7
	blt .mainL3
.mainL4:
	mvn r8,#135
	add r9,fp,r8
	str r9,[fp,#-140]
	mvn r8,#123
	add r6,fp,r8
	mvn r8,#111
	add r5,fp,r8
	mvn r8,#99
	add r4,fp,r8
	mvn r8,#87
	add r3,fp,r8
	mvn r8,#75
	add r2,fp,r8
	mvn r8,#63
	add r1,fp,r8
	mvn r8,#39
	add r0,fp,r8
	mvn r8,#27
	add r7,fp,r8
	@%r50 = call i32 @sub(ptr %r41,ptr %r42,ptr %r43,ptr %r44,ptr %r45,ptr %r46,ptr %r47,ptr %r48,ptr %r49)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	sub sp,sp,#20
	str r7,[sp,#16]  @%r49
	str r0,[sp,#12]  @%r48
	str r1,[sp,#8]  @%r47
	str r2,[sp,#4]  @%r46
	str r3,[sp,#0]  @%r45
	ldr r0,[fp,#-140]
	mov r1,r6
	mov r2,r5
	mov r3,r4
	bl sub
	add sp,sp,#20
	mov r8,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
.mainL5:
	ldr r8,[fp,#-16]
	mov r7,#3
	cmp r8,r7
	blt .mainL6
.mainL7:
	mov r8,#10
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-12]
	@call void @putch(i32 %r67)
	mov r0,r8
	bl putch
.mainL8:
	ldr r8,[fp,#-16]
	mov r7,#3
	cmp r8,r7
	blt .mainL9
.mainL10:
	mov r8,#10
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-12]
	@call void @putch(i32 %r82)
	mov r0,r8
	bl putch
.mainL11:
	ldr r8,[fp,#-16]
	mov r7,#3
	cmp r8,r7
	blt .mainL12
.mainL13:
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putch(i32 %r96)
	mov r0,r8
	bl putch
	mov r8,#0
	mov r0,r8
	mov r9,#140
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL12:
	ldr r8,[fp,#-16]
	mov r7,r8
	mvn r8,#27
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r91)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL11
.mainL9:
	ldr r8,[fp,#-16]
	mov r7,r8
	mvn r8,#39
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r76)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL8
.mainL6:
	ldr r8,[fp,#-16]
	mov r7,r8
	mvn r8,#63
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r61)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL5
.mainL3:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-16]
	mov r6,r7
	mvn r7,#135
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-16]
	mov r6,r7
	mvn r7,#123
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-16]
	mov r6,r7
	mvn r7,#111
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-16]
	mov r6,r7
	mvn r7,#99
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-16]
	mov r6,r7
	mvn r7,#87
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-16]
	mov r6,r7
	mvn r7,#75
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL2
	.section	.note.GNU-stack,"",%progbits
