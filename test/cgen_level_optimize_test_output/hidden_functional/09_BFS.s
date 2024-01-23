.arch armv7-a
.fpu vfpv3-d16
.arm
.data
n:
	.word  0
m:
	.word  0
maxn:
	.word  1005
maxm:
	.word  5005
to:
	.space  20020
next:
	.space  20020
head:
	.space  4020
cnt:
	.word  0
que:
	.space  4020
h:
	.word  0
tail:
	.word  0
inq:
	.space  4020
.text
.global main
.LPIC0:
	.word  cnt
.LPIC1:
	.word  h
.LPIC2:
	.word  head
.LPIC3:
	.word  inq
.LPIC4:
	.word  m
.LPIC5:
	.word  maxm
.LPIC6:
	.word  maxn
.LPIC7:
	.word  n
.LPIC8:
	.word  next
.LPIC9:
	.word  que
.LPIC10:
	.word  tail
.LPIC11:
	.word  to
add_edge:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.add_edgeL0:
.add_edgeL1:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC11
	add r6,r7,r8,lsl #2
	str r1,[r6]
	mov r8,r0
	ldr r7,.LPIC2
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r7,.LPIC0
	ldr r5,[r7]
	mov r7,r5
	ldr r5,.LPIC8
	add r4,r5,r7,lsl #2
	str r8,[r4]
	ldr r8,.LPIC0
	ldr r7,[r8]
	str r7,[r6]
	ldr r8,.LPIC0
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC0
	str r8,[r7]
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC11
	add r6,r7,r8,lsl #2
	str r0,[r6]
	mov r8,r1
	ldr r7,.LPIC2
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r7,.LPIC0
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC8
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,r1
	ldr r6,.LPIC2
	add r5,r6,r8,lsl #2
	str r7,[r5]
	ldr r8,.LPIC0
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC0
	str r8,[r7]
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
quick_read:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#12
.quick_readL0:
.quick_readL1:
	@%r1 = call i32 @getch()
	bl getch
	mov r8,r0
	cmp r8,#48
	blt .quick_readL35
.quick_readL6:
	cmp r8,#57
	bgt .quick_readL36
.quick_readL27:
	mov r9,#0
	str r9,[fp,#-12]
	mov r6,r8
.quick_readL5:
	cmp r6,#48
	bge .quick_readL16
.quick_readL31:
	mov r5,#0
.quick_readL15:
	ldr r9,[fp,#-12]
	cmp r9,#0
	bne .quick_readL20
.quick_readL21:
	mov r0,r5
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.quick_readL20:
	rsb r4,r5,#0
	mov r0,r4
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.quick_readL16:
	cmp r6,#57
	ble .quick_readL24
.quick_readL33:
	mov r5,#0
	bl .quick_readL15
.quick_readL24:
	mov r4,#0
	mov r3,r6
.quick_readL13:
	mov r2,#10
	mul r1,r4,r2
	add r2,r1,r3
	sub r1,r2,#48
	@%r59 = call i32 @getch()
	push {r1,r3}
	bl getch
	mov r2,r0
	pop {r1,r3}
.quick_readL14:
	cmp r2,#48
	bge .quick_readL18
.quick_readL32:
	mov r5,r1
	bl .quick_readL15
.quick_readL18:
	cmp r2,#57
	ble .quick_readL30
.quick_readL34:
	mov r5,r1
	bl .quick_readL15
.quick_readL30:
	mov r4,r1
	mov r3,r2
	bl .quick_readL13
.quick_readL36:
	mov r5,r8
	mov r4,#0
.quick_readL23:
	mov r3,r4
	mov r2,r5
.quick_readL3:
	cmp r2,#45
	beq .quick_readL8
.quick_readL29:
	mov r1,r3
.quick_readL9:
	@%r25 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r2,r3}
	bl getch
	pop {r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
.quick_readL4:
	cmp r0,#48
	blt .quick_readL25
.quick_readL10:
	cmp r0,#57
	bgt .quick_readL26
.quick_readL28:
	mov r9,r1
	str r9,[fp,#-12]
	mov r6,r0
	bl .quick_readL5
.quick_readL26:
	mov r3,r1
	mov r2,r0
	bl .quick_readL3
.quick_readL25:
	mov r3,r1
	mov r2,r0
	bl .quick_readL3
.quick_readL8:
	mov r1,#1
	bl .quick_readL9
.quick_readL35:
	mov r5,r8
	mov r4,#0
	bl .quick_readL23
pop_queue:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.pop_queueL0:
.pop_queueL1:
	ldr r8,.LPIC1
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC1
	str r8,[r7]
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC9
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
init:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.initL0:
.initL1:
.initL6:
	mov r8,#0
.initL3:
	mov r7,r8
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	mvn r7,#0
	str r7,[r5]
	add r7,r8,#1
.initL4:
	movw r6,#1005
	movt r6,#0  @ 1005
	cmp r7,r6
	blt .initL7
.initL5:
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.initL7:
	mov r8,r7
	bl .initL3
inqueue:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.inqueueL0:
.inqueueL1:
	mov r8,r0
	ldr r7,.LPIC3
	add r6,r7,r8,lsl #2
	mov r8,#1
	str r8,[r6]
	ldr r8,.LPIC10
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC10
	str r8,[r7]
	ldr r8,.LPIC10
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC9
	add r6,r7,r8,lsl #2
	str r0,[r6]
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
same:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.sameL0:
.sameL1:
	mov r8,#0
	ldr r7,.LPIC1
	str r8,[r7]
	mov r8,#0
	ldr r7,.LPIC10
	str r8,[r7]
.sameL18:
.sameL20:
	mov r8,r0
	ldr r7,.LPIC3
	add r6,r7,r8,lsl #2
	mov r8,#1
	str r8,[r6]
	ldr r8,.LPIC10
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC10
	str r8,[r7]
	ldr r8,.LPIC10
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC9
	add r6,r7,r8,lsl #2
	str r0,[r6]
.sameL19:
	ldr r8,.LPIC1
	ldr r7,[r8]
	ldr r8,.LPIC10
	ldr r6,[r8]
	cmp r7,r6
	blt .sameL27
.sameL32:
	mov r8,#0
.sameL5:
	ldr r7,.LPIC10
	ldr r6,[r7]
	cmp r6,#0
	bge .sameL29
.sameL17:
	mov r0,r8
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.sameL29:
	ldr r7,.LPIC10
	ldr r6,[r7]
	mov r7,#0
.sameL15:
	mov r5,r7
	ldr r4,.LPIC9
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,r5
	ldr r5,.LPIC3
	add r3,r5,r4,lsl #2
	mov r5,#0
	str r5,[r3]
	add r5,r7,#1
.sameL16:
	cmp r5,r6
	bgt .sameL17
.sameL35:
	mov r7,r5
	bl .sameL15
.sameL27:
	mov r7,#0
.sameL3:
.sameL21:
.sameL23:
	ldr r6,.LPIC1
	ldr r5,[r6]
	add r6,r5,#1
	ldr r5,.LPIC1
	str r6,[r5]
	ldr r6,.LPIC1
	ldr r5,[r6]
	mov r6,r5
	ldr r5,.LPIC9
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
.sameL22:
	cmp r6,r1
	beq .sameL6
.sameL33:
	mov r5,r7
.sameL7:
	mov r4,r6
	ldr r3,.LPIC2
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
	mvn r3,#0
	cmp r4,r3
	bne .sameL28
.sameL11:
.sameL4:
	ldr r3,.LPIC1
	ldr r2,[r3]
	ldr r3,.LPIC10
	ldr r0,[r3]
	cmp r2,r0
	blt .sameL30
.sameL31:
	mov r8,r5
	bl .sameL5
.sameL30:
	mov r7,r5
	bl .sameL3
.sameL28:
	mov r8,r4
.sameL9:
	mov r7,r8
	ldr r4,.LPIC11
	add r3,r4,r7,lsl #2
	ldr r7,[r3]
	mov r4,r7
	ldr r7,.LPIC3
	add r3,r7,r4,lsl #2
	ldr r7,[r3]
	cmp r7,#0
	beq .sameL12
.sameL13:
	mov r7,r8
	ldr r4,.LPIC8
	add r3,r4,r7,lsl #2
	ldr r7,[r3]
.sameL10:
	mvn r4,#0
	cmp r7,r4
	beq .sameL11
.sameL34:
	mov r8,r7
	bl .sameL9
.sameL12:
	mov r7,r8
	ldr r4,.LPIC11
	add r3,r4,r7,lsl #2
	ldr r7,[r3]
.sameL24:
.sameL26:
	mov r4,r7
	ldr r3,.LPIC3
	add r2,r3,r4,lsl #2
	mov r4,#1
	str r4,[r2]
	ldr r4,.LPIC10
	ldr r3,[r4]
	add r4,r3,#1
	ldr r3,.LPIC10
	str r4,[r3]
	ldr r4,.LPIC10
	ldr r3,[r4]
	mov r4,r3
	ldr r3,.LPIC9
	add r2,r3,r4,lsl #2
	str r7,[r2]
.sameL25:
	bl .sameL13
.sameL6:
	mov r5,#1
	bl .sameL7
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r0 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC7
	str r8,[r7]
	@%r1 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC4
	str r8,[r7]
.mainL17:
.mainL19:
.mainL25:
	mov r8,#0
.mainL20:
	mov r7,r8
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	mvn r7,#0
	str r7,[r5]
	add r7,r8,#1
.mainL21:
	movw r6,#1005
	movt r6,#0  @ 1005
	cmp r7,r6
	blt .mainL30
.mainL22:
.mainL18:
	ldr r6,.LPIC4
	ldr r5,[r6]
	cmp r5,#0
	bne .mainL23
.mainL5:
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL23:
.mainL3:
	@%r5 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	bl getch
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#81
	bne .mainL10
.mainL26:
	mov r5,r6
.mainL9:
	cmp r5,#81
	beq .mainL14
.mainL15:
	@%r47 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r4,r0
	add sp,sp,#4 @stack align 8bytes
	@%r49 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r3,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @add_edge(i32 %r47,i32 %r49)
	push {r3}
	mov r0,r4
	mov r1,r3
	bl add_edge
	pop {r3}
.mainL16:
	ldr r4,.LPIC4
	ldr r3,[r4]
	sub r4,r3,#1
	ldr r3,.LPIC4
	str r4,[r3]
.mainL4:
	ldr r4,.LPIC4
	ldr r3,[r4]
	cmp r3,#0
	bne .mainL3
	beq .mainL5
.mainL14:
	@%r39 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r4,r0
	add sp,sp,#4 @stack align 8bytes
	@%r41 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r3,r0
	add sp,sp,#4 @stack align 8bytes
	@%r44 = call i32 @same(i32 %r39,i32 %r41)
	push {r3}
	mov r0,r4
	mov r1,r3
	bl same
	mov r2,r0
	pop {r3}
	@call void @putint(i32 %r44)
	push {r2}
	mov r0,r2
	bl putint
	pop {r2}
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	bl .mainL16
.mainL10:
	cmp r6,#85
	bne .mainL24
.mainL28:
	mov r5,r6
	bl .mainL9
.mainL24:
.mainL7:
	@%r19 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	bl getch
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
.mainL8:
	cmp r6,#81
	bne .mainL12
.mainL27:
	mov r5,r6
	bl .mainL9
.mainL12:
	cmp r6,#85
	bne .mainL7
.mainL29:
	mov r5,r6
	bl .mainL9
.mainL30:
	mov r8,r7
	bl .mainL20
	.section	.note.GNU-stack,"",%progbits
