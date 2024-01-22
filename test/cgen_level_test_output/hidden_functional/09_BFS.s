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
add_edge:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.add_edgeL0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
.add_edgeL1:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC0
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC11
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC2
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,.LPIC0
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC8
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	mov r6,r8
	ldr r8,.LPIC2
	add r5,r8,r6,lsl #2
	str r7,[r5]
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC0
	str r6,[r8]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC0
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC11
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC2
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,.LPIC0
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC8
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	mov r6,r8
	ldr r8,.LPIC2
	add r5,r8,r6,lsl #2
	str r7,[r5]
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC0
	str r6,[r8]
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
quick_read:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.quick_readL0:
.quick_readL1:
	@%r1 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	bl getch
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
.quick_readL2:
	ldr r8,[fp,#-20]
	mov r7,#48
	cmp r8,r7
	blt .quick_readL3
.quick_readL5:
	ldr r8,[fp,#-20]
	mov r7,#57
	cmp r8,r7
	bgt .quick_readL3
.quick_readL4:
.quick_readL9:
	ldr r8,[fp,#-20]
	mov r7,#48
	cmp r8,r7
	bge .quick_readL12
.quick_readL11:
	ldr r8,[fp,#-12]
	cmp r8,#0
	bne .quick_readL14
.quick_readL15:
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.quick_readL14:
	ldr r8,[fp,#-16]
	rsb r7,r8,#0
	mov r0,r7
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.quick_readL12:
	ldr r8,[fp,#-20]
	mov r7,#57
	cmp r8,r7
	bgt .quick_readL11
.quick_readL10:
	ldr r8,[fp,#-16]
	mov r7,#10
	mul r6,r8,r7
	ldr r8,[fp,#-20]
	add r7,r6,r8
	mov r8,#48
	sub r6,r7,r8
	str r6,[fp,#-16]
	@%r46 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	bl getch
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-20]
	bl .quick_readL9
.quick_readL3:
	ldr r8,[fp,#-20]
	mov r7,#45
	cmp r8,r7
	beq .quick_readL7
.quick_readL8:
	@%r25 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	bl getch
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	str r5,[fp,#-20]
	bl .quick_readL2
.quick_readL7:
	mov r5,#1
	str r5,[fp,#-12]
	bl .quick_readL8
pop_queue:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.pop_queueL0:
.pop_queueL1:
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC1
	str r6,[r8]
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC9
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-12]
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC9
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
init:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.initL0:
.initL1:
	mov r8,#0
	str r8,[fp,#-12]
.initL2:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC6
	ldr r6,[r7]
	cmp r8,r6
	blt .initL3
.initL4:
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.initL3:
	mov r8,#1
	rsb r7,r8,#0
	ldr r8,[fp,#-12]
	mov r6,r8
	ldr r8,.LPIC2
	add r5,r8,r6,lsl #2
	str r7,[r5]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .initL2
inqueue:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.inqueueL0:
	str r0,[fp,#-12]
.inqueueL1:
	mov r8,#1
	ldr r7,[fp,#-12]
	mov r6,r7
	ldr r7,.LPIC3
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,.LPIC10
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC10
	str r6,[r8]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC10
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC9
	add r5,r6,r7,lsl #2
	str r8,[r5]
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
same:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#32
.sameL0:
	str r0,[fp,#-28]
	str r1,[fp,#-32]
.sameL1:
	mov r8,#0
	ldr r7,.LPIC1
	str r8,[r7]
	mov r8,#0
	ldr r7,.LPIC10
	str r8,[r7]
	ldr r8,[fp,#-28]
	@call void @inqueue(i32 %r6)
	mov r0,r8
	bl inqueue
	mov r8,#0
	str r8,[fp,#-24]
.sameL2:
	ldr r8,.LPIC1
	ldr r7,[r8]
	ldr r8,.LPIC10
	ldr r6,[r8]
	cmp r7,r6
	blt .sameL3
.sameL4:
	mov r8,#0
	str r8,[fp,#-12]
.sameL12:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC10
	ldr r6,[r7]
	cmp r8,r6
	ble .sameL13
.sameL14:
	ldr r8,[fp,#-24]
	mov r0,r8
	add sp,sp,#32
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.sameL13:
	mov r8,#0
	ldr r7,[fp,#-12]
	mov r6,r7
	ldr r7,.LPIC9
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	mov r6,r7
	ldr r7,.LPIC3
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .sameL12
.sameL3:
	@%r15 = call i32 @pop_queue()
	bl pop_queue
	mov r8,r0
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-32]
	cmp r8,r7
	beq .sameL5
.sameL6:
	ldr r8,[fp,#-20]
	mov r7,r8
	ldr r8,.LPIC2
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-16]
.sameL7:
	ldr r8,[fp,#-16]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bne .sameL8
.sameL9:
	bl .sameL2
.sameL8:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC11
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,r8
	ldr r8,.LPIC3
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	cmp r8,#0
	beq .sameL10
.sameL11:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC8
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-16]
	bl .sameL7
.sameL10:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC11
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	@call void @inqueue(i32 %r42)
	mov r0,r8
	bl inqueue
	bl .sameL11
.sameL5:
	mov r8,#1
	str r8,[fp,#-24]
	bl .sameL6
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#28
.mainL0:
.mainL1:
	@%r0 = call i32 @quick_read()
	bl quick_read
	mov r8,r0
	ldr r7,.LPIC7
	str r8,[r7]
	@%r1 = call i32 @quick_read()
	bl quick_read
	mov r8,r0
	ldr r7,.LPIC4
	str r8,[r7]
	@call void @init()
	bl init
.mainL2:
	ldr r8,.LPIC4
	ldr r7,[r8]
	cmp r7,#0
	bne .mainL3
.mainL4:
	mov r8,#0
	mov r0,r8
	add sp,sp,#28
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL3:
	@%r5 = call i32 @getch()
	bl getch
	mov r8,r0
	str r8,[fp,#-28]
.mainL5:
	ldr r8,[fp,#-28]
	mov r7,#81
	cmp r8,r7
	bne .mainL8
.mainL7:
	ldr r8,[fp,#-28]
	mov r7,#81
	cmp r8,r7
	beq .mainL10
.mainL11:
	@%r34 = call i32 @quick_read()
	bl quick_read
	mov r8,r0
	str r8,[fp,#-16]
	@%r36 = call i32 @quick_read()
	bl quick_read
	mov r8,r0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	@call void @add_edge(i32 %r37,i32 %r38)
	mov r0,r8
	mov r1,r7
	bl add_edge
.mainL12:
	ldr r8,.LPIC4
	ldr r7,[r8]
	mov r8,#1
	sub r6,r7,r8
	ldr r8,.LPIC4
	str r6,[r8]
	bl .mainL2
.mainL10:
	@%r26 = call i32 @quick_read()
	bl quick_read
	mov r8,r0
	str r8,[fp,#-24]
	@%r28 = call i32 @quick_read()
	bl quick_read
	mov r8,r0
	str r8,[fp,#-20]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	@%r31 = call i32 @same(i32 %r29,i32 %r30)
	mov r0,r8
	mov r1,r7
	bl same
	mov r6,r0
	@call void @putint(i32 %r31)
	mov r0,r6
	bl putint
	mov r8,#10
	@call void @putch(i32 %r32)
	mov r0,r8
	bl putch
	bl .mainL12
.mainL8:
	ldr r8,[fp,#-28]
	mov r7,#85
	cmp r8,r7
	beq .mainL7
.mainL6:
	@%r19 = call i32 @getch()
	bl getch
	mov r8,r0
	str r8,[fp,#-28]
	bl .mainL5
	.section	.note.GNU-stack,"",%progbits
