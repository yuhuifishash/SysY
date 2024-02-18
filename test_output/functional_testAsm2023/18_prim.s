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
find:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.findL0:
	str r0,[fp,#-16]
.findL1:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-16]
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	cmp r8,r7
	beq .findL2
.findL3:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	@%r14 = call i32 @find(i32 %r13)
	mov r0,r8
	bl find
	mov r7,r0
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.findL2:
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
same:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.sameL0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
.sameL1:
	ldr r8,[fp,#-12]
	@%r5 = call i32 @find(i32 %r4)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl find
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	str r7,[fp,#-12]
	ldr r8,[fp,#-16]
	@%r7 = call i32 @find(i32 %r6)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl find
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	str r7,[fp,#-16]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	beq .sameL2
.sameL3:
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.sameL2:
	mov r8,#1
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
prim:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.primL0:
.primL1:
	mov r8,#0
	str r8,[fp,#-24]
	ldr r8,[fp,#-24]
	ldr r7,.LPIC2
	ldr r6,[r7]
	cmp r8,r6
	blt .primL3
.primL5:
	mov r8,#1
	str r8,[fp,#-24]
	ldr r8,[fp,#-24]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	ble .primL13
.primL15:
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-24]
	ldr r7,.LPIC2
	ldr r6,[r7]
	cmp r8,r6
	blt .primL17
.primL19:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.primL17:
	ldr r8,[fp,#-24]
	mov r7,r8
	ldr r8,.LPIC6
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-24]
	mov r6,r7
	ldr r7,.LPIC7
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r106 = call i32 @same(i32 %r102,i32 %r105)
	mov r0,r8
	mov r1,r7
	bl same
	mov r6,r0
	cmp r6,#0
	bne .primL20
.primL21:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-24]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	add r6,r8,r7
	str r6,[fp,#-12]
	ldr r8,[fp,#-24]
	mov r7,r8
	ldr r8,.LPIC7
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-24]
	mov r6,r7
	ldr r7,.LPIC6
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r119 = call i32 @find(i32 %r118)
	mov r0,r7
	bl find
	mov r6,r0
	mov r7,r6
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
.primL18:
	ldr r8,[fp,#-24]
	ldr r7,.LPIC2
	ldr r6,[r7]
	cmp r8,r6
	blt .primL17
	bge .primL19
.primL20:
	bl .primL18
.primL13:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-24]
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
.primL14:
	ldr r8,[fp,#-24]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	ble .primL13
	bgt .primL15
.primL3:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	ldr r8,[fp,#-20]
	ldr r7,.LPIC2
	ldr r6,[r7]
	cmp r8,r6
	blt .primL7
.primL9:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
.primL4:
	ldr r8,[fp,#-24]
	ldr r7,.LPIC2
	ldr r6,[r7]
	cmp r8,r6
	blt .primL3
	bge .primL5
.primL7:
	ldr r8,[fp,#-24]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-20]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	cmp r8,r7
	bgt .primL10
.primL11:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.primL8:
	ldr r8,[fp,#-20]
	ldr r7,.LPIC2
	ldr r6,[r7]
	cmp r8,r6
	blt .primL7
	bge .primL9
.primL10:
	ldr r8,[fp,#-24]
	mov r7,r8
	ldr r8,.LPIC6
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-16]
	ldr r8,[fp,#-20]
	mov r7,r8
	ldr r8,.LPIC6
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-24]
	mov r6,r7
	ldr r7,.LPIC6
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	mov r6,r7
	ldr r7,.LPIC6
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-24]
	mov r7,r8
	ldr r8,.LPIC7
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-16]
	ldr r8,[fp,#-20]
	mov r7,r8
	ldr r8,.LPIC7
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-24]
	mov r6,r7
	ldr r7,.LPIC7
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	mov r6,r7
	ldr r7,.LPIC7
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-24]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-16]
	ldr r8,[fp,#-20]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-24]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	str r8,[r5]
	bl .primL11
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.mainL0:
.mainL1:
	@%r1 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-20]
	@%r3 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	blt .mainL3
.mainL5:
	@%r28 = call i32 @prim()
	sub sp,sp,#4 @stack align 8bytes
	bl prim
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	@%r11 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,[fp,#-12]
	mov r6,r7
	ldr r7,.LPIC6
	add r5,r7,r6,lsl #2
	str r8,[r5]
	@%r14 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,[fp,#-12]
	mov r6,r7
	bl .LPIC9
.LPIC8:
	.word v
.LPIC9:
	ldr r7,.LPIC8
	add r5,r7,r6,lsl #2
	str r8,[r5]
	@%r17 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,[fp,#-12]
	mov r6,r7
	bl .LPIC11
.LPIC10:
	.word c
.LPIC11:
	ldr r7,.LPIC10
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.mainL4:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	blt .mainL3
	bge .mainL5
	.section	.note.GNU-stack,"",%progbits
