.arch armv7-a
.fpu vfpv3-d16
.arm
.data
INF:
	.word  1879048192
size:
	.space  40
to:
	.space  400
cap:
	.space  400
rev:
	.space  400
used:
	.space  40
.text
.global main
.LPIC0:
	.word  INF
.LPIC1:
	.word  cap
.LPIC2:
	.word  rev
.LPIC3:
	.word  size
.LPIC4:
	.word  to
.LPIC5:
	.word  used
add_node:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.add_nodeL0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
	str r2,[fp,#-20]
.add_nodeL1:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	ldr r6,[fp,#-12]
	mov r5,r6
	ldr r6,.LPIC3
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mov r5,#10
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC4
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-12]
	ldr r6,[fp,#-12]
	mov r5,r6
	ldr r6,.LPIC3
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mov r5,#10
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC3
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-12]
	ldr r6,[fp,#-12]
	mov r5,r6
	ldr r6,.LPIC3
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mov r5,#10
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	ldr r6,[fp,#-16]
	mov r5,r6
	ldr r6,.LPIC3
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mov r5,#10
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC4
	add r5,r6,r7,lsl #2
	str r8,[r5]
	mov r8,#0
	ldr r7,[fp,#-16]
	ldr r6,[fp,#-16]
	mov r5,r6
	ldr r6,.LPIC3
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mov r5,#10
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC3
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-16]
	ldr r6,[fp,#-16]
	mov r5,r6
	ldr r6,.LPIC3
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	mov r5,#10
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC3
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#1
	add r6,r8,r7
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC3
	add r5,r8,r7,lsl #2
	str r6,[r5]
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC3
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#1
	add r6,r8,r7
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC3
	add r5,r8,r7,lsl #2
	str r6,[r5]
	add sp,sp,#20
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
dfs:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#32
.dfsL0:
	str r0,[fp,#-24]
	str r1,[fp,#-28]
	str r2,[fp,#-32]
.dfsL1:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-28]
	cmp r8,r7
	beq .dfsL2
.dfsL3:
	mov r8,#1
	ldr r7,[fp,#-24]
	mov r6,r7
	ldr r7,.LPIC5
	add r5,r7,r6,lsl #2
	str r8,[r5]
	mov r8,#0
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	mov r6,r7
	ldr r7,.LPIC3
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	cmp r8,r7
	blt .dfsL5
.dfsL7:
	mov r8,#0
	mov r0,r8
	add sp,sp,#32
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.dfsL5:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	mov r6,#10
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,r8
	ldr r8,.LPIC5
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	cmp r8,#0
	bne .dfsL8
.dfsL9:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	mov r6,#10
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#0
	cmp r8,r7
	ble .dfsL11
.dfsL12:
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-32]
	ldr r7,[fp,#-24]
	ldr r6,[fp,#-20]
	mov r5,#10
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	cmp r8,r7
	blt .dfsL14
.dfsL15:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	mov r6,#10
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-16]
.dfsL16:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	mov r6,#10
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-28]
	ldr r6,[fp,#-16]
	@%r67 = call i32 @dfs(i32 %r64,i32 %r65,i32 %r66)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl dfs
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	str r5,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	bgt .dfsL17
.dfsL18:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.dfsL6:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	mov r6,r7
	ldr r7,.LPIC3
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	cmp r8,r7
	blt .dfsL5
	bge .dfsL7
.dfsL17:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	mov r6,#10
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-12]
	sub r6,r8,r7
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	mov r5,#10
	mul r5,r8,r5
	mov r8,r5
	add r8,r8,r7
	ldr r7,.LPIC1
	add r5,r7,r8,lsl #2
	str r6,[r5]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	mov r6,#10
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-24]
	ldr r6,[fp,#-20]
	mov r5,#10
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r6,#10
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-12]
	add r6,r8,r7
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	mov r5,#10
	mul r5,r8,r5
	mov r8,r5
	add r8,r8,r7
	ldr r7,.LPIC4
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	ldr r7,[fp,#-24]
	ldr r5,[fp,#-20]
	mov r4,#10
	mul r4,r7,r4
	mov r7,r4
	add r7,r7,r5
	ldr r5,.LPIC2
	add r4,r5,r7,lsl #2
	ldr r7,[r4]
	mov r5,#10
	mul r5,r8,r5
	mov r8,r5
	add r8,r8,r7
	ldr r7,.LPIC1
	add r5,r7,r8,lsl #2
	str r6,[r5]
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#32
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.dfsL14:
	ldr r8,[fp,#-32]
	str r8,[fp,#-16]
	bl .dfsL16
.dfsL11:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	bl .dfsL6
.dfsL8:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	bl .dfsL6
.dfsL2:
	ldr r8,[fp,#-32]
	mov r0,r8
	add sp,sp,#32
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
max_flow:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.max_flowL0:
	str r0,[fp,#-20]
	str r1,[fp,#-24]
.max_flowL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#1
	cmp r8,#0
	bne .max_flowL3
.max_flowL5:
	mov r0,#0
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.max_flowL3:
	ldr r8,.LPIC5
	mov r7,#0
	mov r6,#10
	@call void @my_memset(ptr %r8,i32 %r9,i32 %r10)
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl my_memset
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	ldr r6,.LPIC0
	ldr r5,[r6]
	@%r15 = call i32 @dfs(i32 %r12,i32 %r13,i32 %r14)
	mov r0,r8
	mov r1,r7
	mov r2,r5
	bl dfs
	mov r6,r0
	str r6,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	beq .max_flowL6
.max_flowL7:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	add r6,r8,r7
	str r6,[fp,#-16]
.max_flowL4:
	mov r8,#1
	cmp r8,#0
	bne .max_flowL3
	beq .max_flowL5
.max_flowL6:
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
my_memset:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.my_memsetL0:
	str r1,[fp,#-16]
	str r2,[fp,#-20]
.my_memsetL1:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .my_memsetL3
.my_memsetL5:
	add sp,sp,#20
	pop {r6,r7,r8}
	pop {fp,pc}
.my_memsetL3:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.my_memsetL4:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .my_memsetL3
	bge .my_memsetL5
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#28
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-28]
	mov r8,#0
	str r8,[fp,#-24]
	@%r4 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-28]
	@%r5 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-24]
	bl .LPIC7
.LPIC6:
	.word size
.LPIC7:
	ldr r8,.LPIC6
	mov r7,#0
	mov r6,#10
	@call void @my_memset(ptr %r6,i32 %r7,i32 %r8)
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl my_memset
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL3
.mainL5:
	mov r8,#1
	ldr r7,[fp,#-28]
	@%r35 = call i32 @max_flow(i32 %r33,i32 %r34)
	mov r0,r8
	mov r1,r7
	bl max_flow
	mov r6,r0
	@call void @putint(i32 %r35)
	mov r0,r6
	bl putint
	mov r8,#10
	@call void @putch(i32 %r36)
	mov r0,r8
	bl putch
	mov r8,#0
	mov r0,r8
	add sp,sp,#28
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL3:
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	@%r18 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-20]
	@%r19 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-16]
	@%r21 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-12]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	ldr r6,[fp,#-12]
	@call void @add_node(i32 %r22,i32 %r23,i32 %r24)
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl add_node
	ldr r8,[fp,#-24]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-24]
.mainL4:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	bgt .mainL3
	ble .mainL5
	.section	.note.GNU-stack,"",%progbits
