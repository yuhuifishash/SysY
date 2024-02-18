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
vis:
	.space  4020
.text
.global main
.LPIC0:
	.word  cnt
.LPIC1:
	.word  head
.LPIC2:
	.word  m
.LPIC3:
	.word  maxm
.LPIC4:
	.word  maxn
.LPIC5:
	.word  n
.LPIC6:
	.word  next
.LPIC7:
	.word  to
.LPIC8:
	.word  vis
quick_read:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.quick_readL0:
.quick_readL1:
	@%r1 = call i32 @getch()
	bl getch
	mov r8,r0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-20]
	mov r7,#48
	cmp r8,r7
	blt .quick_readL3
.quick_readL6:
	ldr r8,[fp,#-20]
	mov r7,#57
	cmp r8,r7
	bgt .quick_readL3
.quick_readL5:
	ldr r8,[fp,#-20]
	mov r7,#48
	cmp r8,r7
	bge .quick_readL16
.quick_readL15:
	ldr r8,[fp,#-12]
	cmp r8,#0
	bne .quick_readL20
.quick_readL21:
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#20
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.quick_readL20:
	ldr r8,[fp,#-16]
	rsb r7,r8,#0
	mov r0,r7
	add sp,sp,#20
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.quick_readL16:
	ldr r8,[fp,#-20]
	mov r7,#57
	cmp r8,r7
	bgt .quick_readL15
.quick_readL13:
	ldr r8,[fp,#-16]
	mov r7,#10
	mul r6,r8,r7
	ldr r8,[fp,#-20]
	add r7,r6,r8
	mov r8,#48
	sub r6,r7,r8
	str r6,[fp,#-16]
	@%r59 = call i32 @getch()
	bl getch
	mov r8,r0
	str r8,[fp,#-20]
.quick_readL14:
	ldr r8,[fp,#-20]
	mov r7,#48
	cmp r8,r7
	blt .quick_readL15
.quick_readL18:
	ldr r8,[fp,#-20]
	mov r7,#57
	cmp r8,r7
	ble .quick_readL13
	bgt .quick_readL15
.quick_readL3:
	ldr r8,[fp,#-20]
	mov r7,#45
	cmp r8,r7
	beq .quick_readL8
.quick_readL9:
	@%r25 = call i32 @getch()
	bl getch
	mov r5,r0
	str r5,[fp,#-20]
.quick_readL4:
	ldr r5,[fp,#-20]
	mov r4,#48
	cmp r5,r4
	blt .quick_readL3
.quick_readL10:
	ldr r5,[fp,#-20]
	mov r4,#57
	cmp r5,r4
	bgt .quick_readL3
	ble .quick_readL5
.quick_readL8:
	mov r5,#1
	str r5,[fp,#-12]
	bl .quick_readL9
init:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.initL0:
.initL1:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC4
	ldr r6,[r7]
	cmp r8,r6
	blt .initL3
.initL5:
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.initL3:
	mov r8,#1
	rsb r7,r8,#0
	ldr r8,[fp,#-12]
	mov r6,r8
	ldr r8,.LPIC1
	add r5,r8,r6,lsl #2
	str r7,[r5]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.initL4:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC4
	ldr r6,[r7]
	cmp r8,r6
	blt .initL3
	bge .initL5
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
	ldr r6,.LPIC7
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,.LPIC0
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC6
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	mov r6,r8
	ldr r8,.LPIC1
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
	ldr r6,.LPIC7
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,.LPIC0
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC6
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	mov r6,r8
	ldr r8,.LPIC1
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
clear:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.clearL0:
.clearL1:
	mov r8,#1
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	ble .clearL3
.clearL5:
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.clearL3:
	mov r8,#0
	ldr r7,[fp,#-12]
	mov r6,r7
	ldr r7,.LPIC8
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.clearL4:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	ble .clearL3
	bgt .clearL5
same:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.sameL0:
	str r0,[fp,#-20]
	str r1,[fp,#-24]
.sameL1:
	mov r8,#1
	ldr r7,[fp,#-20]
	mov r6,r7
	ldr r7,.LPIC8
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	cmp r8,r7
	beq .sameL2
.sameL3:
	ldr r8,[fp,#-20]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bne .sameL5
.sameL7:
	mov r8,#0
	mov r0,r8
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.sameL5:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC7
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC8
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	cmp r8,#0
	beq .sameL10
.sameL9:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC6
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-16]
.sameL6:
	ldr r8,[fp,#-16]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bne .sameL5
	beq .sameL7
.sameL10:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-24]
	@%r35 = call i32 @same(i32 %r33,i32 %r34)
	mov r0,r8
	mov r1,r7
	bl same
	mov r6,r0
	cmp r6,#0
	beq .sameL9
.sameL8:
	mov r8,#1
	mov r0,r8
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.sameL2:
	mov r8,#1
	mov r0,r8
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
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
	ldr r7,.LPIC5
	str r8,[r7]
	@%r1 = call i32 @quick_read()
	bl quick_read
	mov r8,r0
	ldr r7,.LPIC2
	str r8,[r7]
	@call void @init()
	bl init
	ldr r8,.LPIC2
	ldr r7,[r8]
	cmp r7,#0
	bne .mainL3
.mainL5:
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
	ldr r8,[fp,#-28]
	mov r7,#81
	cmp r8,r7
	bne .mainL10
.mainL9:
	ldr r8,[fp,#-28]
	mov r7,#81
	cmp r8,r7
	beq .mainL14
.mainL15:
	@%r47 = call i32 @quick_read()
	bl quick_read
	mov r8,r0
	str r8,[fp,#-16]
	@%r49 = call i32 @quick_read()
	bl quick_read
	mov r8,r0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	@call void @add_edge(i32 %r50,i32 %r51)
	mov r0,r8
	mov r1,r7
	bl add_edge
.mainL16:
	ldr r8,.LPIC2
	ldr r7,[r8]
	mov r8,#1
	sub r6,r7,r8
	ldr r8,.LPIC2
	str r6,[r8]
.mainL4:
	ldr r8,.LPIC2
	ldr r7,[r8]
	cmp r7,#0
	bne .mainL3
	beq .mainL5
.mainL14:
	@%r39 = call i32 @quick_read()
	bl quick_read
	mov r8,r0
	str r8,[fp,#-24]
	@%r41 = call i32 @quick_read()
	bl quick_read
	mov r8,r0
	str r8,[fp,#-20]
	@call void @clear()
	bl clear
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	@%r44 = call i32 @same(i32 %r42,i32 %r43)
	mov r0,r8
	mov r1,r7
	bl same
	mov r6,r0
	@call void @putint(i32 %r44)
	mov r0,r6
	bl putint
	mov r8,#10
	@call void @putch(i32 %r45)
	mov r0,r8
	bl putch
	bl .mainL16
.mainL10:
	ldr r8,[fp,#-28]
	mov r7,#85
	cmp r8,r7
	beq .mainL9
.mainL7:
	@%r19 = call i32 @getch()
	bl getch
	mov r8,r0
	str r8,[fp,#-28]
.mainL8:
	ldr r8,[fp,#-28]
	mov r7,#81
	cmp r8,r7
	beq .mainL9
.mainL12:
	ldr r8,[fp,#-28]
	mov r7,#85
	cmp r8,r7
	bne .mainL7
	beq .mainL9
	.section	.note.GNU-stack,"",%progbits
