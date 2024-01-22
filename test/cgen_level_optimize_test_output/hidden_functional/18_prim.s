.arch armv7-a
.fpu vfpv3-d16
.arm
.data
maxm:
	.word  1005
maxn:
	.word  105
n:
	.word  0
m:
	.word  0
u:
	.space  4020
v:
	.space  4020
c:
	.space  4020
fa:
	.space  4020
.text
.global main
.LPIC0:
	.word  c
.LPIC1:
	.word  fa
.LPIC2:
	.word  m
.LPIC3:
	.word  maxm
.LPIC4:
	.word  maxn
.LPIC5:
	.word  n
.LPIC6:
	.word  u
.LPIC7:
	.word  v
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
find:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.findL0:
.findL1:
	mov r8,r0
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	cmp r0,r8
	beq .findL2
.findL3:
	mov r8,r0
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@%r14 = call i32 @find(i32 %r13)
	push {r0}
	mov r0,r8
	bl find
	mov r7,r0
	pop {r0}
	str r7,[r6]
	mov r0,r7
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.findL2:
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
same:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.sameL0:
.sameL1:
	@%r5 = call i32 @find(i32 %r0)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	bl find
	mov r8,r0
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	@%r7 = call i32 @find(i32 %r1)
	push {r1}
	mov r0,r1
	bl find
	mov r7,r0
	pop {r1}
	cmp r8,r7
	beq .sameL2
.sameL3:
	mov r0,#0
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.sameL2:
	mov r0,#1
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
prim:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#12
.primL0:
.primL1:
	ldr r8,.LPIC2
	ldr r7,[r8]
	cmp r7,#0
	bgt .primL28
.primL5:
	ldr r8,.LPIC5
	ldr r7,[r8]
	cmp r7,#1
	bge .primL30
.primL15:
	ldr r8,.LPIC2
	ldr r7,[r8]
	cmp r7,#0
	bgt .primL31
.primL36:
	mov r8,#0
.primL19:
	mov r0,r8
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.primL31:
	mov r7,#0
	mov r6,#0
.primL17:
	mov r5,r6
	ldr r4,.LPIC6
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	mov r4,r6
	ldr r3,.LPIC7
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
.primL23:
.primL25:
	@%r144 = call i32 @find(i32 %r102)
	mov r0,r5
	bl find
	mov r3,r0
	@%r145 = call i32 @find(i32 %r105)
	sub sp,sp,#4 @stack align 8bytes
	push {r3}
	mov r0,r4
	bl find
	mov r5,r0
	pop {r3}
	add sp,sp,#4 @stack align 8bytes
	cmp r3,r5
	beq .primL26
.primL27:
	mov r5,#0
.primL24:
	cmp r5,#0
	bne .primL20
.primL21:
	mov r4,r6
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
	add r3,r7,r4
	mov r4,r6
	ldr r2,.LPIC7
	add r1,r2,r4,lsl #2
	ldr r4,[r1]
	mov r2,r6
	ldr r1,.LPIC6
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	@%r119 = call i32 @find(i32 %r118)
	push {r2,r3}
	mov r0,r2
	bl find
	mov r1,r0
	pop {r2,r3}
	mov r2,r1
	ldr r1,.LPIC1
	add r0,r1,r2,lsl #2
	str r4,[r0]
	add r4,r6,#1
	mov r2,r3
	mov r3,r4
.primL18:
	ldr r4,.LPIC2
	ldr r1,[r4]
	cmp r3,r1
	blt .primL35
.primL37:
	mov r8,r2
	bl .primL19
.primL35:
	mov r7,r2
	mov r6,r3
	bl .primL17
.primL20:
	mov r2,r7
	mov r3,r6
	bl .primL18
.primL26:
	mov r5,#1
	bl .primL24
.primL30:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,#1
.primL13:
	mov r6,r8
	ldr r5,.LPIC1
	add r4,r5,r6,lsl #2
	str r8,[r4]
	add r6,r8,#1
.primL14:
	cmp r6,r7
	bgt .primL15
.primL34:
	mov r8,r6
	bl .primL13
.primL28:
	ldr r8,.LPIC2
	ldr r9,[r8]
	str r9,[fp,#-12]
	mov r8,#0
.primL3:
	add r6,r8,#1
	ldr r9,[fp,#-12]
	cmp r6,r9
	blt .primL29
.primL9:
	add r5,r8,#1
.primL4:
	ldr r9,[fp,#-12]
	cmp r5,r9
	bge .primL5
.primL32:
	mov r8,r5
	bl .primL3
.primL29:
	mov r5,r8
	ldr r4,.LPIC0
	add r3,r4,r5,lsl #2
	ldr r5,.LPIC2
	ldr r4,[r5]
	mov r5,r6
.primL7:
	ldr r6,[r3]
	mov r2,r5
	ldr r1,.LPIC0
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	cmp r6,r2
	bgt .primL10
.primL11:
	add r6,r5,#1
.primL8:
	cmp r6,r4
	bge .primL9
.primL33:
	mov r5,r6
	bl .primL7
.primL10:
	mov r6,r8
	ldr r2,.LPIC6
	add r1,r2,r6,lsl #2
	ldr r6,[r1]
	mov r2,r5
	ldr r0,.LPIC6
	add r7,r0,r2,lsl #2
	ldr r2,[r7]
	str r2,[r1]
	str r6,[r7]
	mov r7,r8
	ldr r6,.LPIC7
	add r2,r6,r7,lsl #2
	ldr r7,[r2]
	mov r6,r5
	ldr r1,.LPIC7
	add r0,r1,r6,lsl #2
	ldr r6,[r0]
	str r6,[r2]
	mov r6,r5
	ldr r2,.LPIC7
	add r1,r2,r6,lsl #2
	str r7,[r1]
	mov r7,r8
	ldr r6,.LPIC0
	add r2,r6,r7,lsl #2
	ldr r7,[r2]
	mov r6,r5
	ldr r1,.LPIC0
	add r0,r1,r6,lsl #2
	ldr r6,[r0]
	str r6,[r2]
	mov r6,r5
	ldr r2,.LPIC0
	add r1,r2,r6,lsl #2
	str r7,[r1]
	bl .primL11
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r1 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@%r3 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#0
	bgt .mainL6
.mainL5:
	@%r28 = call i32 @prim()
	sub sp,sp,#4 @stack align 8bytes
	bl prim
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r7
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL6:
	mov r7,#0
.mainL3:
	@%r11 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	mov r5,r7
	ldr r4,.LPIC6
	add r3,r4,r5,lsl #2
	str r6,[r3]
	@%r14 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	mov r5,r7
	ldr r4,.LPIC7
	add r3,r4,r5,lsl #2
	str r6,[r3]
	@%r17 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	mov r5,r7
	ldr r4,.LPIC0
	add r3,r4,r5,lsl #2
	str r6,[r3]
	add r6,r7,#1
.mainL4:
	cmp r6,r8
	bge .mainL5
.mainL7:
	mov r7,r6
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
