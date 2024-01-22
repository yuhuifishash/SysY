.arch armv7-a
.fpu vfpv3-d16
.arm
.data
maxn:
	.word  10005
n:
	.word  0
m:
	.word  0
f:
	.space  800400
dep:
	.space  40020
to:
	.space  40020
next:
	.space  40020
head:
	.space  40020
cnt:
	.word  0
.text
.global main
.LPIC0:
	.word  cnt
.LPIC1:
	.word  dep
.LPIC2:
	.word  f
.LPIC3:
	.word  head
.LPIC4:
	.word  m
.LPIC5:
	.word  maxn
.LPIC6:
	.word  n
.LPIC7:
	.word  next
.LPIC8:
	.word  to
LCA:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#28
.LCAL0:
	mov r9,r1
	str r9,[fp,#-16]
	mov r9,r0
	str r9,[fp,#-12]
.LCAL1:
	ldr r9,[fp,#-12]
	mov r8,r9
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-16]
	mov r7,r9
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	cmp r8,r7
	blt .LCAL2
.LCAL22:
	ldr r9,[fp,#-12]
	mov r10,r9
	str r10,[fp,#-20]
	ldr r9,[fp,#-16]
	mov r10,r9
	str r10,[fp,#-28]
.LCAL3:
	ldr r9,[fp,#-20]
	mov r6,r9
	ldr r5,.LPIC1
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	ldr r9,[fp,#-28]
	mov r5,r9
	ldr r4,.LPIC1
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	cmp r6,r5
	bgt .LCAL20
.LCAL24:
	ldr r9,[fp,#-20]
	mov r10,r9
	str r10,[fp,#-24]
.LCAL7:
	ldr r9,[fp,#-24]
	ldr r10,[fp,#-28]
	cmp r9,r10
	beq .LCAL12
.LCAL13:
.LCAL21:
	mov r5,#19
	ldr r9,[fp,#-24]
	mov r4,r9
	ldr r9,[fp,#-28]
	mov r3,r9
.LCAL15:
	mov r2,#20
	mul r2,r4,r2
	mov r0,r2
	add r0,r0,r5
	ldr r2,.LPIC2
	add r1,r2,r0,lsl #2
	ldr r2,[r1]
	mov r1,#20
	mul r1,r3,r1
	mov r0,r1
	add r0,r0,r5
	ldr r1,.LPIC2
	add r8,r1,r0,lsl #2
	ldr r1,[r8]
	cmp r2,r1
	bne .LCAL18
.LCAL29:
	mov r8,r4
	mov r2,r3
.LCAL19:
	sub r1,r5,#1
.LCAL16:
	cmp r1,#0
	bge .LCAL28
.LCAL17:
	mov r0,#20
	mul r0,r8,r0
	mov r6,r0
	ldr r0,.LPIC2
	add r7,r0,r6,lsl #2
	ldr r6,[r7]
	mov r0,r6
	add sp,sp,#28
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.LCAL28:
	mov r5,r1
	mov r4,r8
	mov r3,r2
	bl .LCAL15
.LCAL18:
	mov r7,#20
	mul r7,r4,r7
	mov r6,r7
	add r6,r6,r5
	ldr r7,.LPIC2
	add r4,r7,r6,lsl #2
	ldr r7,[r4]
	mov r6,#20
	mul r6,r3,r6
	mov r4,r6
	add r4,r4,r5
	ldr r6,.LPIC2
	add r3,r6,r4,lsl #2
	ldr r6,[r3]
	mov r8,r7
	mov r2,r6
	bl .LCAL19
.LCAL12:
	ldr r9,[fp,#-24]
	mov r0,r9
	add sp,sp,#28
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.LCAL20:
	ldr r9,[fp,#-28]
	mov r8,r9
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	mov r8,#19
	ldr r9,[fp,#-20]
	mov r7,r9
.LCAL5:
	mov r5,#20
	mul r5,r7,r5
	mov r4,r5
	add r4,r4,r8
	ldr r5,.LPIC2
	add r3,r5,r4,lsl #2
	ldr r5,[r3]
	cmp r5,#0
	bne .LCAL10
.LCAL26:
	mov r5,r7
.LCAL9:
	sub r4,r8,#1
.LCAL6:
	mov r3,r5
	ldr r2,.LPIC1
	add r1,r2,r3,lsl #2
	ldr r3,[r1]
	ldr r2,[r6]
	cmp r3,r2
	bgt .LCAL23
.LCAL25:
	mov r9,r5
	str r9,[fp,#-24]
	bl .LCAL7
.LCAL23:
	mov r8,r4
	mov r7,r5
	bl .LCAL5
.LCAL10:
	mov r4,#20
	mul r4,r7,r4
	mov r3,r4
	add r3,r3,r8
	ldr r4,.LPIC2
	add r2,r4,r3,lsl #2
	ldr r4,[r2]
	mov r3,r4
	ldr r4,.LPIC1
	add r2,r4,r3,lsl #2
	ldr r4,[r2]
	ldr r9,[fp,#-28]
	mov r3,r9
	ldr r2,.LPIC1
	add r1,r2,r3,lsl #2
	ldr r3,[r1]
	cmp r4,r3
	bge .LCAL8
.LCAL27:
	mov r5,r7
	bl .LCAL9
.LCAL8:
	mov r4,#20
	mul r4,r7,r4
	mov r7,r4
	add r7,r7,r8
	ldr r4,.LPIC2
	add r3,r4,r7,lsl #2
	ldr r7,[r3]
	mov r5,r7
	bl .LCAL9
.LCAL2:
	ldr r9,[fp,#-16]
	mov r10,r9
	str r10,[fp,#-20]
	ldr r9,[fp,#-12]
	mov r10,r9
	str r10,[fp,#-28]
	bl .LCAL3
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
	ldr r7,.LPIC8
	add r6,r7,r8,lsl #2
	str r1,[r6]
	mov r8,r0
	ldr r7,.LPIC3
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r7,.LPIC0
	ldr r5,[r7]
	mov r7,r5
	ldr r5,.LPIC7
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
	mov r8,#20
	mul r8,r1,r8
	mov r7,r8
	ldr r8,.LPIC2
	add r6,r8,r7,lsl #2
	str r0,[r6]
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
init:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.initL0:
.initL1:
	ldr r8,.LPIC1
	movw r7,#16191
	movt r7,#16191  @ 1061109567
	str r7,[r8]
	ldr r8,.LPIC6
	ldr r7,[r8]
	cmp r7,#1
	bge .initL6
.initL5:
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.initL6:
	ldr r8,.LPIC6
	ldr r7,[r8]
	mov r8,#1
.initL3:
	mov r6,r8
	ldr r5,.LPIC3
	add r4,r5,r6,lsl #2
	mvn r6,#0
	str r6,[r4]
	add r6,r8,#1
.initL4:
	cmp r6,r7
	bgt .initL5
.initL7:
	mov r8,r6
	bl .initL3
tree:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.treeL0:
.treeL1:
	mov r8,r0
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	str r1,[r6]
	mov r8,#20
	mul r8,r0,r8
	mov r7,r8
	ldr r8,.LPIC2
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	cmp r8,#0
	bne .treeL10
.treeL5:
	mov r8,r0
	ldr r7,.LPIC3
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mvn r7,#0
	cmp r8,r7
	bne .treeL11
.treeL9:
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.treeL11:
	add r7,r1,#1
	mov r6,r8
.treeL7:
	mov r8,r6
	ldr r5,.LPIC8
	add r4,r5,r8,lsl #2
	ldr r8,[r4]
	@call void @tree(i32 %r46,i32 %r50)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	mov r0,r8
	mov r1,r7
	bl tree
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	mov r8,r6
	ldr r5,.LPIC7
	add r4,r5,r8,lsl #2
	ldr r8,[r4]
.treeL8:
	mvn r5,#0
	cmp r8,r5
	beq .treeL9
.treeL13:
	mov r6,r8
	bl .treeL7
.treeL10:
	mov r8,#20
	mul r8,r0,r8
	mov r7,r8
	ldr r8,.LPIC2
	add r6,r8,r7,lsl #2
	mov r8,#0
.treeL3:
	mov r7,r8
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r5,#20
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r8
	ldr r5,.LPIC2
	add r4,r5,r7,lsl #2
	ldr r7,[r4]
	add r5,r8,#1
	mov r4,r5
	add r3,r6,r4,lsl #2
	str r7,[r3]
.treeL4:
	mov r7,r5
	add r4,r6,r7,lsl #2
	ldr r7,[r4]
	cmp r7,#0
	beq .treeL5
.treeL12:
	mov r8,r5
	bl .treeL3
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r0 = call i32 @quick_read()
	bl quick_read
	mov r8,r0
	ldr r7,.LPIC6
	str r8,[r7]
	@%r1 = call i32 @quick_read()
	bl quick_read
	mov r8,r0
	ldr r7,.LPIC4
	str r8,[r7]
	@call void @init()
	bl init
	ldr r8,.LPIC6
	ldr r7,[r8]
	cmp r7,#1
	bne .mainL10
.mainL5:
	@call void @tree(i32 1,i32 1)
	mov r0,#1
	mov r1,#1
	bl tree
	ldr r8,.LPIC4
	ldr r7,[r8]
	cmp r7,#0
	bne .mainL11
.mainL9:
	mov r0,#0
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL11:
.mainL7:
	@%r28 = call i32 @quick_read()
	bl quick_read
	mov r8,r0
	@%r30 = call i32 @quick_read()
	bl quick_read
	mov r7,r0
	@%r33 = call i32 @LCA(i32 %r28,i32 %r30)
	mov r0,r8
	mov r1,r7
	bl LCA
	mov r6,r0
	@call void @putint(i32 %r33)
	mov r0,r6
	bl putint
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	ldr r8,.LPIC4
	ldr r7,[r8]
	sub r8,r7,#1
	bl .LPIC10
.LPIC9:
	.word m
.LPIC10:
	ldr r7,.LPIC9
	str r8,[r7]
.mainL8:
	ldr r8,.LPIC9
	ldr r7,[r8]
	cmp r7,#0
	bne .mainL7
	beq .mainL9
.mainL10:
	mov r8,#1
.mainL3:
	@%r10 = call i32 @quick_read()
	bl quick_read
	mov r7,r0
	@%r12 = call i32 @quick_read()
	bl quick_read
	mov r6,r0
	@call void @add_edge(i32 %r10,i32 %r12)
	mov r0,r7
	mov r1,r6
	bl add_edge
	add r7,r8,#1
.mainL4:
	bl .LPIC12
.LPIC11:
	.word n
.LPIC12:
	ldr r6,.LPIC11
	ldr r5,[r6]
	cmp r7,r5
	beq .mainL5
.mainL12:
	mov r8,r7
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
