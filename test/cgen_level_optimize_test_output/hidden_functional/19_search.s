.arch armv7-a
.fpu vfpv3-d16
.arm
.data
INF:
	.word  1073741824
a:
	.space  3600
step:
	.word  1
	.space  4
	.word  -1
	.space  8
	.word  1
	.space  4
	.word  -1
w:
	.word  0
h:
	.word  0
x_0:
	.word  0
y_0:
	.word  0
x_1:
	.word  0
y_1:
	.word  0
.text
.global main
.LPIC0:
	.word  INF
.LPIC1:
	.word  a
.LPIC2:
	.word  h
.LPIC3:
	.word  step
.LPIC4:
	.word  w
.LPIC5:
	.word  x_0
.LPIC6:
	.word  x_1
.LPIC7:
	.word  y_0
.LPIC8:
	.word  y_1
search:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#48
.searchL0:
	mov r9,r0
	str r9,[fp,#-24]
	mov r9,r1
	str r9,[fp,#-20]
	mov r9,r2
	str r9,[fp,#-12]
.searchL1:
	ldr r9,[fp,#-12]
	cmp r9,#10
	bgt .searchL2
.searchL3:
.searchL37:
	mov r8,#30
	ldr r9,[fp,#-24]
	mul r8,r9,r8
	mov r7,r8
	ldr r9,[fp,#-20]
	add r7,r7,r9
	ldr r8,.LPIC1
	add r9,r8,r7,lsl #2
	str r9,[fp,#-16]
	mov r9,#0
	str r9,[fp,#-44]
	mov r9,#1073741824
	str r9,[fp,#-32]
.searchL5:
	ldr r9,[fp,#-16]
	ldr r5,[r9]
	cmp r5,#1
	bne .searchL38
.searchL41:
	ldr r9,[fp,#-20]
	mov r10,r9
	str r10,[fp,#-36]
	ldr r9,[fp,#-24]
	mov r10,r9
	str r10,[fp,#-40]
	mov r9,#0
	str r9,[fp,#-28]
.searchL11:
	ldr r2,.LPIC6
	ldr r6,[r2]
	ldr r9,[fp,#-40]
	cmp r9,r6
	beq .searchL19
.searchL18:
	ldr r9,[fp,#-28]
	cmp r9,#1
	ble .searchL21
.searchL22:
	ldr r9,[fp,#-40]
	cmp r9,#0
	beq .searchL24
.searchL30:
	ldr r6,.LPIC2
	ldr r2,[r6]
	add r6,r2,#1
	ldr r9,[fp,#-40]
	cmp r9,r6
	beq .searchL24
.searchL28:
	ldr r9,[fp,#-36]
	cmp r9,#0
	beq .searchL24
.searchL26:
	ldr r6,.LPIC4
	ldr r2,[r6]
	add r6,r2,#1
	ldr r9,[fp,#-36]
	cmp r9,r6
	beq .searchL24
.searchL25:
	mov r6,#30
	ldr r9,[fp,#-40]
	mul r6,r9,r6
	mov r2,r6
	ldr r9,[fp,#-36]
	add r2,r2,r9
	ldr r6,.LPIC1
	add r1,r6,r2,lsl #2
	mov r6,#0
	str r6,[r1]
	ldr r9,[fp,#-44]
	lsl r6,r9,#1
	mov r2,r6
	ldr r6,.LPIC3
	add r1,r6,r2,lsl #2
	mov r6,r1
	ldr r2,[r6]
	ldr r9,[fp,#-40]
	sub r6,r9,r2
	mov r2,#1
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	ldr r9,[fp,#-36]
	sub r1,r9,r2
	ldr r9,[fp,#-12]
	add r2,r9,#1
	@%r149 = call i32 @search(i32 %r139,i32 %r145,i32 %r148)
	push {r1,r2,r3}
	mov r0,r6
	bl search
	pop {r1,r2,r3}
	add r6,r0,#1
	ldr r9,[fp,#-32]
	cmp r6,r9
	blt .searchL33
.searchL43:
	ldr r9,[fp,#-32]
	mov r2,r9
.searchL34:
	mov r1,#30
	ldr r9,[fp,#-40]
	mul r1,r9,r1
	mov r0,r1
	ldr r9,[fp,#-36]
	add r0,r0,r9
	ldr r1,.LPIC1
	add r3,r1,r0,lsl #2
	mov r1,#1
	str r1,[r3]
	ldr r9,[fp,#-44]
	add r3,r9,#1
	mov r1,r3
	mov r3,r2
.searchL6:
	cmp r1,#4
	blt .searchL39
.searchL7:
	cmp r3,#10
	bgt .searchL35
.searchL36:
	mov r0,r3
	add sp,sp,#48
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.searchL35:
	mov r0,#1073741824
	add sp,sp,#48
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.searchL39:
	mov r9,r1
	str r9,[fp,#-44]
	mov r9,r3
	str r9,[fp,#-32]
	bl .searchL5
.searchL33:
	mov r2,r6
	bl .searchL34
.searchL24:
	ldr r9,[fp,#-44]
	add r6,r9,#1
	mov r1,r6
	ldr r9,[fp,#-32]
	mov r3,r9
	bl .searchL6
.searchL21:
	ldr r9,[fp,#-44]
	add r6,r9,#1
	mov r1,r6
	ldr r9,[fp,#-32]
	mov r3,r9
	bl .searchL6
.searchL19:
	ldr r6,.LPIC8
	ldr r3,[r6]
	ldr r9,[fp,#-36]
	cmp r9,r3
	bne .searchL18
.searchL17:
	mov r0,#1
	add sp,sp,#48
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.searchL38:
	ldr r6,.LPIC6
	ldr r9,[r6]
	str r9,[fp,#-48]
	ldr r9,[fp,#-20]
	mov r6,r9
	ldr r9,[fp,#-24]
	mov r2,r9
	mov r1,#0
.searchL9:
	ldr r9,[fp,#-48]
	cmp r2,r9
	beq .searchL14
.searchL13:
	ldr r9,[fp,#-44]
	lsl r0,r9,#1
	mov r7,r0
	ldr r0,.LPIC3
	add r5,r0,r7,lsl #2
	mov r7,r5
	ldr r0,[r7]
	add r7,r2,r0
	mov r0,#1
	add r4,r5,r0,lsl #2
	ldr r5,[r4]
	add r4,r6,r5
	add r5,r1,#1
.searchL10:
	mov r0,#30
	mul r0,r7,r0
	mov r8,r0
	add r8,r8,r4
	ldr r0,.LPIC1
	add r3,r0,r8,lsl #2
	ldr r8,[r3]
	cmp r8,#1
	bne .searchL40
.searchL42:
	mov r9,r4
	str r9,[fp,#-36]
	mov r9,r7
	str r9,[fp,#-40]
	mov r9,r5
	str r9,[fp,#-28]
	bl .searchL11
.searchL40:
	mov r6,r4
	mov r2,r7
	mov r1,r5
	bl .searchL9
.searchL14:
	ldr r8,.LPIC8
	ldr r7,[r8]
	cmp r6,r7
	bne .searchL13
.searchL12:
	mov r9,r6
	str r9,[fp,#-36]
	mov r9,r2
	str r9,[fp,#-40]
	mov r9,r1
	str r9,[fp,#-28]
	bl .searchL11
.searchL2:
	mov r0,#1073741824
	add sp,sp,#48
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#16
.mainL0:
.mainL1:
	@%r0 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC4
	str r8,[r7]
	@%r1 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC2
	str r8,[r7]
	ldr r8,.LPIC4
	ldr r7,[r8]
	cmp r7,#0
	bne .mainL30
.mainL5:
	mov r0,#0
	add sp,sp,#16
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL30:
.mainL3:
.mainL31:
	mov r9,#0
	str r9,[fp,#-16]
.mainL7:
.mainL32:
	mov r7,#30
	ldr r9,[fp,#-16]
	mul r7,r9,r7
	mov r6,r7
	ldr r7,.LPIC1
	add r9,r7,r6,lsl #2
	str r9,[fp,#-12]
	mov r7,#0
.mainL11:
	mov r6,r7
	ldr r9,[fp,#-12]
	add r4,r9,r6,lsl #2
	mov r6,#1
	str r6,[r4]
	add r6,r7,#1
.mainL12:
	cmp r6,#30
	blt .mainL36
.mainL13:
	ldr r9,[fp,#-16]
	add r4,r9,#1
.mainL8:
	cmp r4,#30
	blt .mainL35
.mainL9:
	ldr r3,.LPIC2
	ldr r2,[r3]
	cmp r2,#1
	bge .mainL33
.mainL17:
	ldr r3,.LPIC5
	ldr r2,[r3]
	ldr r3,.LPIC7
	ldr r1,[r3]
	@%r99 = call i32 @search(i32 %r96,i32 %r97,i32 1)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r2}
	mov r0,r2
	mov r2,#1
	bl search
	mov r3,r0
	pop {r1,r2}
	add sp,sp,#4 @stack align 8bytes
	cmp r3,#10
	ble .mainL27
.mainL28:
	@call void @putint(i32 -1)
	push {r3}
	mvn r0,#0
	bl putint
	pop {r3}
	@call void @putch(i32 10)
	push {r3}
	mov r0,#10
	bl putch
	pop {r3}
.mainL29:
	@%r110 = call i32 @getint()
	push {r3}
	bl getint
	mov r2,r0
	pop {r3}
	ldr r1,.LPIC4
	str r2,[r1]
	@%r111 = call i32 @getint()
	push {r3}
	bl getint
	mov r2,r0
	pop {r3}
	ldr r1,.LPIC2
	str r2,[r1]
.mainL4:
	ldr r2,.LPIC4
	ldr r1,[r2]
	cmp r1,#0
	bne .mainL3
	beq .mainL5
.mainL27:
	@call void @putint(i32 %r99)
	push {r3}
	mov r0,r3
	bl putint
	pop {r3}
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	bl .mainL29
.mainL33:
	mov r3,#1
.mainL15:
	ldr r2,.LPIC4
	ldr r1,[r2]
	cmp r1,#1
	bge .mainL34
.mainL21:
	add r2,r3,#1
.mainL16:
	ldr r1,.LPIC2
	ldr r0,[r1]
	cmp r2,r0
	bgt .mainL17
.mainL37:
	mov r3,r2
	bl .mainL15
.mainL34:
	mov r2,#30
	mul r2,r3,r2
	mov r1,r2
	ldr r2,.LPIC1
	add r0,r2,r1,lsl #2
	mov r2,#1
.mainL19:
	@%r55 = call i32 @getint()
	push {r0,r2,r3}
	bl getint
	mov r1,r0
	pop {r0,r2,r3}
	mov r5,r2
	add r8,r0,r5,lsl #2
	str r1,[r8]
	ldr r5,[r8]
	cmp r5,#2
	beq .mainL22
.mainL23:
	mov r8,#30
	mul r8,r3,r8
	mov r5,r8
	add r5,r5,r2
	ldr r8,.LPIC1
	add r1,r8,r5,lsl #2
	ldr r8,[r1]
	cmp r8,#3
	beq .mainL25
.mainL26:
.mainL24:
	add r8,r2,#1
.mainL20:
	ldr r5,.LPIC4
	ldr r1,[r5]
	cmp r8,r1
	bgt .mainL21
.mainL38:
	mov r2,r8
	bl .mainL19
.mainL25:
	ldr r8,.LPIC6
	str r3,[r8]
	ldr r8,.LPIC8
	str r2,[r8]
	bl .mainL26
.mainL22:
	ldr r8,.LPIC5
	str r3,[r8]
	ldr r8,.LPIC7
	str r2,[r8]
	bl .mainL24
.mainL35:
	mov r9,r4
	str r9,[fp,#-16]
	bl .mainL7
.mainL36:
	mov r7,r6
	bl .mainL11
	.section	.note.GNU-stack,"",%progbits
