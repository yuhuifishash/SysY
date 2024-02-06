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
LCA:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.LCAL0:
	str r0,[fp,#-20]
	str r1,[fp,#-24]
.LCAL1:
	ldr r8,[fp,#-20]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-24]
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	cmp r8,r7
	blt .LCAL2
.LCAL3:
	mov r8,#19
	str r8,[fp,#-12]
	ldr r8,[fp,#-20]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-24]
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	cmp r8,r7
	bgt .LCAL5
.LCAL7:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	cmp r8,r7
	beq .LCAL12
.LCAL13:
	mov r8,#19
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	bge .LCAL15
.LCAL17:
	ldr r8,[fp,#-20]
	mov r7,#0
	mov r6,#20
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC2
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.LCAL15:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-12]
	mov r6,#20
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC2
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-24]
	ldr r6,[fp,#-12]
	mov r5,#20
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	cmp r8,r7
	bne .LCAL18
.LCAL19:
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
.LCAL16:
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	bge .LCAL15
	blt .LCAL17
.LCAL18:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-12]
	mov r6,#20
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC2
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-20]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-12]
	mov r6,#20
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC2
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-24]
	bl .LCAL19
.LCAL12:
	ldr r8,[fp,#-20]
	mov r0,r8
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.LCAL5:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-12]
	mov r6,#20
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC2
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	cmp r8,#0
	bne .LCAL10
.LCAL9:
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
.LCAL6:
	ldr r8,[fp,#-20]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-24]
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	cmp r8,r7
	bgt .LCAL5
	ble .LCAL7
.LCAL10:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-12]
	mov r6,#20
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC2
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-24]
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	cmp r8,r7
	blt .LCAL9
.LCAL8:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-12]
	mov r6,#20
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC2
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-20]
	bl .LCAL9
.LCAL2:
	ldr r8,[fp,#-20]
	str r8,[fp,#-16]
	ldr r8,[fp,#-24]
	str r8,[fp,#-20]
	ldr r8,[fp,#-16]
	str r8,[fp,#-24]
	bl .LCAL3
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
	ldr r6,.LPIC8
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC3
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,.LPIC0
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC7
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	mov r6,r8
	ldr r8,.LPIC3
	add r5,r8,r6,lsl #2
	str r7,[r5]
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC0
	str r6,[r8]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	mov r6,#0
	mov r5,#20
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	str r8,[r5]
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
init:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.initL0:
.initL1:
	movw r8,#16191
	movt r8,#16191  @ 1061109567
	mov r7,r8
	mov r8,#0
	mov r6,r8
	ldr r8,.LPIC1
	add r5,r8,r6,lsl #2
	str r7,[r5]
	mov r8,#1
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC6
	ldr r6,[r7]
	cmp r8,r6
	ble .initL3
.initL5:
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.initL3:
	mov r8,#1
	rsb r7,r8,#0
	ldr r8,[fp,#-12]
	mov r6,r8
	ldr r8,.LPIC3
	add r5,r8,r6,lsl #2
	str r7,[r5]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.initL4:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC6
	ldr r6,[r7]
	cmp r8,r6
	ble .initL3
	bgt .initL5
tree:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.treeL0:
	str r0,[fp,#-20]
	str r1,[fp,#-24]
.treeL1:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	str r8,[r5]
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	mov r6,#20
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC2
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	cmp r8,#0
	bne .treeL3
.treeL5:
	ldr r8,[fp,#-20]
	mov r7,r8
	ldr r8,.LPIC3
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bne .treeL7
.treeL9:
	add sp,sp,#24
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.treeL7:
	ldr r8,[fp,#-16]
	mov r7,r8
	bl .LPIC10
.LPIC9:
	.word to
.LPIC10:
	ldr r8,.LPIC9
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-24]
	mov r6,#1
	add r5,r7,r6
	@call void @tree(i32 %r47,i32 %r50)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r5
	bl tree
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-16]
	mov r7,r8
	bl .LPIC12
.LPIC11:
	.word next
.LPIC12:
	ldr r8,.LPIC11
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-16]
.treeL8:
	ldr r8,[fp,#-16]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bne .treeL7
	beq .treeL9
.treeL3:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	mov r6,#20
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	bl .LPIC14
.LPIC13:
	.word f
.LPIC14:
	ldr r7,.LPIC13
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-16]
	mov r6,#20
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC13
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-16]
	mov r5,#1
	add r4,r6,r5
	mov r6,#20
	mul r6,r7,r6
	mov r7,r6
	add r7,r7,r4
	ldr r6,.LPIC13
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.treeL4:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	mov r6,#20
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC13
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	cmp r8,#0
	bne .treeL3
	beq .treeL5
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
	bl .LPIC16
.LPIC15:
	.word n
.LPIC16:
	ldr r7,.LPIC15
	str r8,[r7]
	@%r1 = call i32 @quick_read()
	bl quick_read
	mov r8,r0
	bl .LPIC18
.LPIC17:
	.word m
.LPIC18:
	ldr r7,.LPIC17
	str r8,[r7]
	@call void @init()
	bl init
	mov r8,#1
	str r8,[fp,#-28]
	ldr r8,[fp,#-28]
	ldr r7,.LPIC15
	ldr r6,[r7]
	cmp r8,r6
	bne .mainL3
.mainL5:
	mov r8,#1
	mov r7,#1
	@call void @tree(i32 %r23,i32 %r24)
	mov r0,r8
	mov r1,r7
	bl tree
	ldr r8,.LPIC17
	ldr r7,[r8]
	cmp r7,#0
	bne .mainL7
.mainL9:
	mov r8,#0
	mov r0,r8
	add sp,sp,#28
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL7:
	@%r28 = call i32 @quick_read()
	bl quick_read
	mov r8,r0
	str r8,[fp,#-16]
	@%r30 = call i32 @quick_read()
	bl quick_read
	mov r8,r0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	@%r33 = call i32 @LCA(i32 %r31,i32 %r32)
	mov r0,r8
	mov r1,r7
	bl LCA
	mov r6,r0
	@call void @putint(i32 %r33)
	mov r0,r6
	bl putint
	mov r8,#10
	@call void @putch(i32 %r34)
	mov r0,r8
	bl putch
	ldr r8,.LPIC17
	ldr r7,[r8]
	mov r8,#1
	sub r6,r7,r8
	ldr r8,.LPIC17
	str r6,[r8]
.mainL8:
	ldr r8,.LPIC17
	ldr r7,[r8]
	cmp r7,#0
	bne .mainL7
	beq .mainL9
.mainL3:
	@%r10 = call i32 @quick_read()
	bl quick_read
	mov r8,r0
	str r8,[fp,#-24]
	@%r12 = call i32 @quick_read()
	bl quick_read
	mov r8,r0
	str r8,[fp,#-20]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	@call void @add_edge(i32 %r13,i32 %r14)
	mov r0,r8
	mov r1,r7
	bl add_edge
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-28]
.mainL4:
	ldr r8,[fp,#-28]
	ldr r7,.LPIC15
	ldr r6,[r7]
	cmp r8,r6
	bne .mainL3
	beq .mainL5
	.section	.note.GNU-stack,"",%progbits
