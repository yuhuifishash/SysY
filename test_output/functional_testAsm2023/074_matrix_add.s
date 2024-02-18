.arch armv7-a
.fpu vfpv3-d16
.arm
.data
M:
	.word  0
L:
	.word  0
N:
	.word  0
.text
.global main
.LPIC0:
	.word  L
.LPIC1:
	.word  M
.LPIC2:
	.word  N
add:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#24
.addL0:
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
.addL1:
	mov r0,#0
	str r0,[fp,#-12]
	mov r0,#0
	str r0,[fp,#-12]
	ldr r0,[fp,#-12]
	ldr r1,.LPIC1
	ldr r2,[r1]
	cmp r0,r2
	blt .addL3
.addL5:
	mov r2,#0
	mov r0,r2
	add sp,sp,#24
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.addL3:
	ldr r2,[fp,#-12]
	mov r1,r2
	ldr r9,[fp,#-16]
	add r2,r9,r1,lsl #2
	ldr r1,[r2]
	ldr r2,[fp,#-12]
	mov r0,r2
	add r2,r3,r0,lsl #2
	ldr r0,[r2]
	add r2,r1,r0
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
	add r2,r1,r0
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
	add r2,r1,r0
	ldr r1,[fp,#-12]
	mov r0,r1
	add r1,r5,r0,lsl #2
	str r2,[r1]
	ldr r2,[fp,#-12]
	mov r1,#1
	add r0,r2,r1
	str r0,[fp,#-12]
.addL4:
	ldr r2,[fp,#-12]
	ldr r1,.LPIC1
	ldr r0,[r1]
	cmp r2,r0
	blt .addL3
	bge .addL5
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
	ldr r8,[fp,#-16]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
.mainL5:
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
	@%r55 = call i32 @add(ptr %r46,ptr %r47,ptr %r48,ptr %r49,ptr %r50,ptr %r51,ptr %r52,ptr %r53,ptr %r54)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	sub sp,sp,#20
	str r7,[sp,#16]  @%r54
	str r0,[sp,#12]  @%r53
	str r1,[sp,#8]  @%r52
	str r2,[sp,#4]  @%r51
	str r3,[sp,#0]  @%r50
	ldr r0,[fp,#-140]
	mov r1,r6
	mov r2,r5
	mov r3,r4
	bl add
	add sp,sp,#20
	mov r8,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	ldr r7,.LPIC2
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL7
.mainL9:
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putch(i32 %r76)
	mov r0,r8
	bl putch
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,.LPIC2
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL11
.mainL13:
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putch(i32 %r96)
	mov r0,r8
	bl putch
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,.LPIC2
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL15
.mainL17:
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putch(i32 %r116)
	mov r0,r8
	bl putch
	mov r8,#0
	mov r0,r8
	mov r9,#140
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL15:
	ldr r8,[fp,#-16]
	mov r7,r8
	mvn r8,#27
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r106)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL16:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC2
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL15
	bge .mainL17
.mainL11:
	ldr r8,[fp,#-16]
	mov r7,r8
	mvn r8,#39
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r86)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL12:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC2
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL11
	bge .mainL13
.mainL7:
	ldr r8,[fp,#-16]
	mov r7,r8
	mvn r8,#63
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r66)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL8:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC2
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL7
	bge .mainL9
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
.mainL4:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
	bge .mainL5
	.section	.note.GNU-stack,"",%progbits
