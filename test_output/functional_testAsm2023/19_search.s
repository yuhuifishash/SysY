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
search:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#44
.searchL0:
	str r0,[fp,#-36]
	str r1,[fp,#-40]
	str r2,[fp,#-44]
.searchL1:
	ldr r8,[fp,#-44]
	mov r7,#10
	cmp r8,r7
	bgt .searchL2
.searchL3:
	ldr r8,.LPIC0
	ldr r7,[r8]
	str r7,[fp,#-32]
	mov r8,#0
	str r8,[fp,#-28]
	ldr r8,[fp,#-28]
	mov r7,#4
	cmp r8,r7
	blt .searchL5
.searchL7:
	ldr r8,[fp,#-32]
	mov r7,#10
	cmp r8,r7
	bgt .searchL35
.searchL36:
	ldr r8,[fp,#-32]
	mov r0,r8
	add sp,sp,#44
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.searchL35:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#44
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.searchL5:
	mov r8,#0
	str r8,[fp,#-24]
	ldr r8,[fp,#-36]
	str r8,[fp,#-20]
	ldr r8,[fp,#-40]
	str r8,[fp,#-16]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	mov r6,#30
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#1
	cmp r8,r7
	bne .searchL9
.searchL11:
	ldr r8,[fp,#-20]
	ldr r7,.LPIC6
	ldr r6,[r7]
	cmp r8,r6
	beq .searchL19
.searchL18:
	ldr r8,[fp,#-24]
	mov r7,#1
	cmp r8,r7
	ble .searchL21
.searchL22:
	ldr r8,[fp,#-20]
	mov r7,#0
	cmp r8,r7
	beq .searchL24
.searchL30:
	ldr r8,[fp,#-20]
	ldr r7,.LPIC2
	ldr r6,[r7]
	mov r7,#1
	add r5,r6,r7
	cmp r8,r5
	beq .searchL24
.searchL28:
	ldr r8,[fp,#-16]
	mov r7,#0
	cmp r8,r7
	beq .searchL24
.searchL26:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC4
	ldr r6,[r7]
	mov r7,#1
	add r5,r6,r7
	cmp r8,r5
	beq .searchL24
.searchL25:
	mov r8,#0
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-16]
	mov r5,#30
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-28]
	mov r6,#0
	lsl r5,r7,#1
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC3
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	sub r6,r8,r7
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-28]
	mov r5,#1
	lsl r4,r7,#1
	mov r7,r4
	add r7,r7,r5
	ldr r5,.LPIC3
	add r4,r5,r7,lsl #2
	ldr r7,[r4]
	sub r5,r8,r7
	ldr r8,[fp,#-44]
	mov r7,#1
	add r4,r8,r7
	@%r149 = call i32 @search(i32 %r139,i32 %r145,i32 %r148)
	mov r0,r6
	mov r1,r5
	mov r2,r4
	bl search
	mov r8,r0
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-32]
	cmp r8,r7
	blt .searchL33
.searchL34:
	mov r8,#1
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-16]
	mov r5,#30
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-28]
.searchL6:
	ldr r8,[fp,#-28]
	mov r7,#4
	cmp r8,r7
	blt .searchL5
	bge .searchL7
.searchL33:
	ldr r8,[fp,#-12]
	str r8,[fp,#-32]
	bl .searchL34
.searchL24:
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-28]
	bl .searchL6
.searchL21:
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-28]
	bl .searchL6
.searchL19:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC8
	ldr r6,[r7]
	cmp r8,r6
	bne .searchL18
.searchL17:
	mov r8,#1
	mov r0,r8
	add sp,sp,#44
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.searchL9:
	ldr r8,[fp,#-20]
	ldr r7,.LPIC6
	ldr r6,[r7]
	cmp r8,r6
	beq .searchL14
.searchL13:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-28]
	mov r6,#0
	lsl r5,r7,#1
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC3
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	add r6,r8,r7
	str r6,[fp,#-20]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-28]
	mov r6,#1
	lsl r5,r7,#1
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC3
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	add r6,r8,r7
	str r6,[fp,#-16]
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
.searchL10:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	mov r6,#30
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#1
	cmp r8,r7
	bne .searchL9
	beq .searchL11
.searchL14:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC8
	ldr r6,[r7]
	cmp r8,r6
	bne .searchL13
.searchL12:
	bl .searchL11
.searchL2:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#44
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
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
	mov r8,#0
	cmp r7,r8
	bne .mainL3
.mainL5:
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	mov r7,#30
	cmp r8,r7
	blt .mainL7
.mainL9:
	mov r8,#1
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	ldr r7,.LPIC2
	ldr r6,[r7]
	cmp r8,r6
	ble .mainL15
.mainL17:
	ldr r8,.LPIC5
	ldr r7,[r8]
	ldr r8,.LPIC7
	ldr r6,[r8]
	mov r8,#1
	@%r99 = call i32 @search(i32 %r96,i32 %r97,i32 %r98)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r6
	mov r2,r8
	bl search
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	str r5,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#10
	cmp r8,r7
	ble .mainL27
.mainL28:
	mov r8,#1
	rsb r7,r8,#0
	@call void @putint(i32 %r108)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r109)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
.mainL29:
	@%r110 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC4
	str r8,[r7]
	@%r111 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC2
	str r8,[r7]
.mainL4:
	ldr r8,.LPIC4
	ldr r7,[r8]
	mov r8,#0
	cmp r7,r8
	bne .mainL3
	beq .mainL5
.mainL27:
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r105)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r106)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	bl .mainL29
.mainL15:
	mov r8,#1
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,.LPIC4
	ldr r6,[r7]
	cmp r8,r6
	ble .mainL19
.mainL21:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL16:
	ldr r8,[fp,#-20]
	ldr r7,.LPIC2
	ldr r6,[r7]
	cmp r8,r6
	ble .mainL15
	bgt .mainL17
.mainL19:
	@%r55 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-16]
	mov r5,#30
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	mov r6,#30
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#2
	cmp r8,r7
	beq .mainL22
.mainL23:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	mov r6,#30
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#3
	cmp r8,r7
	beq .mainL25
.mainL26:
.mainL24:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL20:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC4
	ldr r6,[r7]
	cmp r8,r6
	ble .mainL19
	bgt .mainL21
.mainL25:
	ldr r8,[fp,#-20]
	ldr r7,.LPIC6
	str r8,[r7]
	ldr r8,[fp,#-16]
	ldr r7,.LPIC8
	str r8,[r7]
	bl .mainL26
.mainL22:
	ldr r8,[fp,#-20]
	ldr r7,.LPIC5
	str r8,[r7]
	ldr r8,[fp,#-16]
	ldr r7,.LPIC7
	str r8,[r7]
	bl .mainL24
.mainL7:
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#30
	cmp r8,r7
	blt .mainL11
.mainL13:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL8:
	ldr r8,[fp,#-20]
	mov r7,#30
	cmp r8,r7
	blt .mainL7
	bge .mainL9
.mainL11:
	mov r8,#1
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-16]
	mov r5,#30
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	bl .LPIC10
.LPIC9:
	.word a
.LPIC10:
	ldr r6,.LPIC9
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL12:
	ldr r8,[fp,#-16]
	mov r7,#30
	cmp r8,r7
	blt .mainL11
	bge .mainL13
	.section	.note.GNU-stack,"",%progbits
