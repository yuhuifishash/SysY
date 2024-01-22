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
	sub sp,sp,#8
.add_nodeL0:
.add_nodeL1:
	mov r8,r0
	ldr r7,.LPIC3
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#10
	mul r7,r0,r7
	mov r5,r7
	add r5,r5,r8
	ldr r8,.LPIC4
	add r7,r8,r5,lsl #2
	str r1,[r7]
	ldr r8,[r6]
	mov r7,#10
	mul r7,r0,r7
	mov r5,r7
	add r5,r5,r8
	ldr r8,.LPIC1
	add r7,r8,r5,lsl #2
	str r2,[r7]
	mov r8,r1
	ldr r7,.LPIC3
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	ldr r7,[r6]
	mov r4,#10
	mul r4,r0,r4
	mov r3,r4
	add r3,r3,r7
	ldr r7,.LPIC2
	add r4,r7,r3,lsl #2
	str r8,[r4]
	ldr r8,[r5]
	mov r7,#10
	mul r7,r1,r7
	mov r4,r7
	add r4,r4,r8
	ldr r8,.LPIC4
	add r7,r8,r4,lsl #2
	str r0,[r7]
	ldr r8,[r5]
	mov r7,#10
	mul r7,r1,r7
	mov r4,r7
	add r4,r4,r8
	ldr r8,.LPIC1
	add r7,r8,r4,lsl #2
	mov r8,#0
	str r8,[r7]
	ldr r8,[r6]
	ldr r7,[r5]
	mov r4,#10
	mul r4,r1,r4
	mov r3,r4
	add r3,r3,r7
	ldr r7,.LPIC2
	add r4,r7,r3,lsl #2
	str r8,[r4]
	ldr r8,[r6]
	add r7,r8,#1
	str r7,[r6]
	ldr r8,[r5]
	add r7,r8,#1
	str r7,[r5]
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
dfs:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#20
.dfsL0:
	mov r9,r2
	str r9,[fp,#-20]
	mov r9,r1
	str r9,[fp,#-12]
.dfsL1:
	ldr r9,[fp,#-12]
	cmp r0,r9
	beq .dfsL2
.dfsL3:
	mov r8,r0
	ldr r7,.LPIC5
	add r6,r7,r8,lsl #2
	mov r8,#1
	str r8,[r6]
	mov r8,r0
	ldr r7,.LPIC3
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	cmp r8,#0
	bgt .dfsL19
.dfsL7:
	mov r0,#0
	add sp,sp,#20
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.dfsL19:
	mov r8,#10
	mul r8,r0,r8
	mov r7,r8
	ldr r8,.LPIC4
	add r9,r8,r7,lsl #2
	str r9,[fp,#-16]
	mov r8,#0
.dfsL5:
	mov r7,r8
	ldr r9,[fp,#-16]
	add r5,r9,r7,lsl #2
	ldr r7,[r5]
	mov r5,r7
	ldr r7,.LPIC5
	add r4,r7,r5,lsl #2
	ldr r7,[r4]
	cmp r7,#0
	bne .dfsL8
.dfsL9:
	mov r7,#10
	mul r7,r0,r7
	mov r5,r7
	add r5,r5,r8
	ldr r7,.LPIC1
	add r4,r7,r5,lsl #2
	ldr r7,[r4]
	cmp r7,#0
	ble .dfsL11
.dfsL12:
	mov r7,#10
	mul r7,r0,r7
	mov r5,r7
	add r5,r5,r8
	ldr r7,.LPIC1
	add r4,r7,r5,lsl #2
	ldr r7,[r4]
	ldr r9,[fp,#-20]
	cmp r9,r7
	blt .dfsL14
.dfsL15:
	mov r7,#10
	mul r7,r0,r7
	mov r5,r7
	add r5,r5,r8
	ldr r7,.LPIC1
	add r4,r7,r5,lsl #2
	ldr r7,[r4]
	mov r5,r7
.dfsL16:
	mov r7,#10
	mul r7,r0,r7
	mov r4,r7
	add r4,r4,r8
	ldr r7,.LPIC4
	add r3,r7,r4,lsl #2
	ldr r7,[r3]
	@%r67 = call i32 @dfs(i32 %r64,i32 %r1,i32 %r118)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2}
	mov r0,r7
	ldr r1,[fp,#-12]
	mov r2,r5
	bl dfs
	mov r4,r0
	pop {r0,r1,r2}
	add sp,sp,#4 @stack align 8bytes
	cmp r4,#0
	bgt .dfsL17
.dfsL18:
	add r7,r8,#1
	mov r3,r7
.dfsL6:
	mov r7,r0
	ldr r1,.LPIC3
	add r6,r1,r7,lsl #2
	ldr r7,[r6]
	cmp r3,r7
	bge .dfsL7
.dfsL20:
	mov r8,r3
	bl .dfsL5
.dfsL17:
	mov r7,#10
	mul r7,r0,r7
	mov r6,r7
	add r6,r6,r8
	ldr r7,.LPIC1
	add r1,r7,r6,lsl #2
	ldr r7,[r1]
	sub r6,r7,r4
	str r6,[r1]
	mov r7,#10
	mul r7,r0,r7
	mov r6,r7
	add r6,r6,r8
	ldr r7,.LPIC4
	add r1,r7,r6,lsl #2
	ldr r7,[r1]
	mov r6,#10
	mul r6,r0,r6
	mov r1,r6
	add r1,r1,r8
	ldr r6,.LPIC2
	add r2,r6,r1,lsl #2
	ldr r6,[r2]
	mov r2,#10
	mul r2,r7,r2
	mov r7,r2
	ldr r2,.LPIC1
	add r1,r2,r7,lsl #2
	mov r7,r6
	add r2,r1,r7,lsl #2
	ldr r7,[r2]
	add r2,r7,r4
	mov r7,r6
	add r6,r1,r7,lsl #2
	str r2,[r6]
	mov r0,r4
	add sp,sp,#20
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.dfsL14:
	ldr r9,[fp,#-20]
	mov r5,r9
	bl .dfsL16
.dfsL11:
	add r7,r8,#1
	mov r3,r7
	bl .dfsL6
.dfsL8:
	add r7,r8,#1
	mov r3,r7
	bl .dfsL6
.dfsL2:
	ldr r9,[fp,#-20]
	mov r0,r9
	add sp,sp,#20
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
max_flow:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.max_flowL0:
.max_flowL1:
.max_flowL15:
	ldr r8,.LPIC5
	mov r7,#0
.max_flowL3:
.max_flowL8:
.max_flowL10:
.max_flowL14:
	mov r6,#0
.max_flowL11:
	mov r5,r6
	add r4,r8,r5,lsl #2
	mov r5,#0
	str r5,[r4]
	add r5,r6,#1
.max_flowL12:
	cmp r5,#10
	blt .max_flowL16
.max_flowL13:
.max_flowL9:
	@%r15 = call i32 @dfs(i32 %r0,i32 %r1,i32 1879048192)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	mov r2,#1879048192
	bl dfs
	mov r4,r0
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	cmp r4,#0
	beq .max_flowL6
.max_flowL7:
	add r3,r7,r4
.max_flowL4:
	mov r7,r3
	bl .max_flowL3
.max_flowL6:
	mov r0,r7
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.max_flowL16:
	mov r6,r5
	bl .max_flowL11
my_memset:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.my_memsetL0:
.my_memsetL1:
	cmp r2,#0
	bgt .my_memsetL6
.my_memsetL5:
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.my_memsetL6:
	mov r8,#0
.my_memsetL3:
	mov r7,r8
	add r6,r0,r7,lsl #2
	str r1,[r6]
	add r7,r8,#1
.my_memsetL4:
	cmp r7,r2
	bge .my_memsetL5
.my_memsetL7:
	mov r8,r7
	bl .my_memsetL3
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#16
.mainL0:
.mainL1:
	@%r4 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	str r0,[fp,#-16]
	add sp,sp,#4 @stack align 8bytes
	@%r5 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	str r0,[fp,#-12]
	add sp,sp,#4 @stack align 8bytes
	ldr r6,.LPIC3
.mainL6:
.mainL8:
.mainL26:
	mov r5,#0
.mainL9:
	mov r4,r5
	add r3,r6,r4,lsl #2
	mov r4,#0
	str r4,[r3]
	add r4,r5,#1
.mainL10:
	cmp r4,#10
	blt .mainL30
.mainL11:
.mainL7:
	ldr r9,[fp,#-12]
	cmp r9,#0
	bgt .mainL25
.mainL5:
.mainL12:
.mainL14:
.mainL27:
	ldr r3,.LPIC5
	mov r2,#0
.mainL15:
.mainL19:
.mainL21:
.mainL28:
	mov r1,#0
.mainL22:
	mov r0,r1
	add r7,r3,r0,lsl #2
	mov r0,#0
	str r0,[r7]
	add r7,r1,#1
.mainL23:
	cmp r7,#10
	blt .mainL31
.mainL24:
.mainL20:
	@%r49 = call i32 @dfs(i32 1,i32 %r4,i32 1879048192)
	push {r1,r2,r3}
	mov r0,#1
	ldr r1,[fp,#-16]
	mov r2,#1879048192
	bl dfs
	pop {r1,r2,r3}
	cmp r0,#0
	beq .mainL17
.mainL18:
	add r8,r2,r0
.mainL16:
	mov r2,r8
	bl .mainL15
.mainL17:
.mainL13:
	@call void @putint(i32 %r47)
	push {r1,r2,r3}
	mov r0,r2
	bl putint
	pop {r1,r2,r3}
	@call void @putch(i32 10)
	push {r1,r2,r3}
	mov r0,#10
	bl putch
	pop {r1,r2,r3}
	mov r0,#0
	add sp,sp,#16
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL31:
	mov r1,r7
	bl .mainL22
.mainL25:
	ldr r9,[fp,#-12]
	mov r8,r9
.mainL3:
	@%r18 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	@%r19 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r3,r0
	add sp,sp,#4 @stack align 8bytes
	@%r21 = call i32 @getint()
	push {r3}
	bl getint
	mov r2,r0
	pop {r3}
	@call void @add_node(i32 %r18,i32 %r19,i32 %r21)
	sub sp,sp,#4 @stack align 8bytes
	push {r2,r3}
	mov r0,r7
	mov r1,r3
	bl add_node
	pop {r2,r3}
	add sp,sp,#4 @stack align 8bytes
	sub r7,r8,#1
.mainL4:
	cmp r7,#0
	ble .mainL5
.mainL29:
	mov r8,r7
	bl .mainL3
.mainL30:
	mov r5,r4
	bl .mainL9
	.section	.note.GNU-stack,"",%progbits
