.arch armv7-a
.fpu vfpv3-d16
.arm
.data
n:
	.word  0
maxn:
	.word  100005
cnt:
	.space  1600080
x:
	.space  400020
a:
	.space  400020
b:
	.space  400020
c:
	.space  400020
.text
.global main
.LPIC0:
	.word  a
.LPIC1:
	.word  b
.LPIC2:
	.word  c
.LPIC3:
	.word  cnt
.LPIC4:
	.word  maxn
.LPIC5:
	.word  n
.LPIC6:
	.word  x
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
sortA:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#12
.sortAL0:
.sortAL1:
	ldr r8,.LPIC5
	ldr r7,[r8]
	cmp r7,#0
	bgt .sortAL12
.sortAL5:
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.sortAL12:
	ldr r8,.LPIC5
	ldr r9,[r8]
	str r9,[fp,#-12]
	mov r8,#0
.sortAL3:
	add r6,r8,#1
	ldr r9,[fp,#-12]
	cmp r6,r9
	blt .sortAL13
.sortAL9:
	add r5,r8,#1
.sortAL4:
	ldr r9,[fp,#-12]
	cmp r5,r9
	bge .sortAL5
.sortAL14:
	mov r8,r5
	bl .sortAL3
.sortAL13:
	mov r5,r8
	add r4,r0,r5,lsl #2
	ldr r5,.LPIC5
	ldr r3,[r5]
	mov r5,r6
.sortAL7:
	ldr r6,[r4]
	mov r2,r5
	add r1,r0,r2,lsl #2
	ldr r2,[r1]
	cmp r6,r2
	bgt .sortAL10
.sortAL11:
	add r6,r5,#1
.sortAL8:
	cmp r6,r3
	bge .sortAL9
.sortAL15:
	mov r5,r6
	bl .sortAL7
.sortAL10:
	mov r6,r8
	add r2,r0,r6,lsl #2
	ldr r6,[r2]
	mov r1,r5
	add r7,r0,r1,lsl #2
	ldr r1,[r7]
	str r1,[r2]
	str r6,[r7]
	bl .sortAL11
sortB:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.sortBL0:
.sortBL1:
	ldr r8,.LPIC5
	ldr r7,[r8]
	cmp r7,#0
	bgt .sortBL16
.sortBL20:
	mvn r8,#99
	mov r7,r8
.sortBL5:
	cmp r7,#0
	bge .sortBL17
.sortBL11:
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.sortBL17:
	mov r8,#0
	mov r6,#0
.sortBL9:
	mov r5,r6
	ldr r4,.LPIC3
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	cmp r5,#0
	bne .sortBL18
.sortBL25:
	mov r4,r8
.sortBL15:
	add r3,r6,#1
.sortBL10:
	cmp r3,r7
	bgt .sortBL11
.sortBL23:
	mov r8,r4
	mov r6,r3
	bl .sortBL9
.sortBL18:
	mov r3,r5
	mov r5,r8
.sortBL13:
	mov r8,r5
	add r2,r0,r8,lsl #2
	str r6,[r2]
	add r8,r5,#1
	sub r2,r3,#1
.sortBL14:
	cmp r2,#0
	bne .sortBL24
.sortBL26:
	mov r4,r8
	bl .sortBL15
.sortBL24:
	mov r3,r2
	mov r5,r8
	bl .sortBL13
.sortBL16:
	ldr r8,.LPIC5
	ldr r6,[r8]
	mvn r8,#99
	mov r5,r8
	mov r8,#0
.sortBL3:
	mov r4,r8
	add r3,r0,r4,lsl #2
	ldr r4,[r3]
	mov r2,r4
	ldr r4,.LPIC3
	add r1,r4,r2,lsl #2
	ldr r4,[r1]
	add r2,r4,#1
	str r2,[r1]
	ldr r4,[r3]
	cmp r4,r5
	bgt .sortBL6
.sortBL22:
	mov r4,r5
.sortBL7:
	add r3,r8,#1
.sortBL4:
	cmp r3,r6
	blt .sortBL19
.sortBL21:
	mov r7,r4
	bl .sortBL5
.sortBL19:
	mov r5,r4
	mov r8,r3
	bl .sortBL3
.sortBL6:
	mov r7,r8
	add r5,r0,r7,lsl #2
	ldr r7,[r5]
	mov r4,r7
	bl .sortBL7
sortC:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#12
.sortCL0:
.sortCL1:
	ldr r8,.LPIC5
	ldr r7,[r8]
	cmp r7,#0
	bgt .sortCL12
.sortCL5:
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.sortCL12:
	ldr r8,.LPIC5
	ldr r9,[r8]
	str r9,[fp,#-12]
	mov r8,#0
.sortCL3:
	add r6,r8,#1
	ldr r9,[fp,#-12]
	cmp r6,r9
	blt .sortCL13
.sortCL16:
	mov r5,r8
.sortCL9:
	mov r4,r8
	add r3,r0,r4,lsl #2
	ldr r4,[r3]
	mov r2,r5
	add r1,r0,r2,lsl #2
	ldr r2,[r1]
	str r2,[r3]
	str r4,[r1]
	add r4,r8,#1
.sortCL4:
	ldr r9,[fp,#-12]
	cmp r4,r9
	bge .sortCL5
.sortCL14:
	mov r8,r4
	bl .sortCL3
.sortCL13:
	ldr r4,.LPIC5
	ldr r3,[r4]
	mov r4,r6
	mov r6,r8
.sortCL7:
	mov r2,r4
	add r1,r0,r2,lsl #2
	ldr r2,[r1]
	mov r1,r6
	add r7,r0,r1,lsl #2
	ldr r1,[r7]
	cmp r2,r1
	blt .sortCL10
.sortCL18:
	mov r7,r6
.sortCL11:
	add r2,r4,#1
.sortCL8:
	cmp r2,r3
	blt .sortCL15
.sortCL17:
	mov r5,r7
	bl .sortCL9
.sortCL15:
	mov r4,r2
	mov r6,r7
	bl .sortCL7
.sortCL10:
	mov r7,r4
	bl .sortCL11
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
	ldr r7,.LPIC5
	str r8,[r7]
	ldr r8,.LPIC5
	ldr r7,[r8]
	cmp r7,#0
	bne .mainL18
.mainL5:
	ldr r8,.LPIC0
	@call void @sortA(ptr %r29)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl sortA
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC1
	@call void @sortB(ptr %r30)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl sortB
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC2
	@call void @sortC(ptr %r31)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl sortC
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC5
	ldr r7,[r8]
	sub r8,r7,#0
	cmp r8,#0
	bne .mainL19
.mainL9:
	ldr r8,.LPIC5
	ldr r7,[r8]
	rsb r8,r7,#0
	cmp r8,#0
	bne .mainL20
.mainL13:
	mov r0,#-123
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL20:
	mov r8,#0
.mainL11:
	mov r7,r8
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	cmp r7,#0
	bne .mainL14
.mainL15:
	mov r7,r8
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	cmp r7,#0
	bne .mainL16
.mainL17:
	add r7,r8,#1
.mainL12:
	ldr r6,.LPIC5
	ldr r5,[r6]
	sub r6,r7,r5
	cmp r6,#0
	beq .mainL13
.mainL23:
	mov r8,r7
	bl .mainL11
.mainL16:
	mov r0,#2
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL14:
	mov r0,#1
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL19:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,#0
.mainL7:
	mov r6,r8
	ldr r5,.LPIC1
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	mov r5,r8
	ldr r3,.LPIC0
	add r2,r3,r5,lsl #2
	ldr r5,[r2]
	sub r3,r6,r5
	str r3,[r4]
	mov r6,r8
	ldr r5,.LPIC2
	add r3,r5,r6,lsl #2
	ldr r6,[r3]
	ldr r5,[r4]
	sub r4,r6,r5
	ldr r6,[r2]
	sub r5,r4,r6
	str r5,[r3]
	add r6,r8,#1
.mainL8:
	sub r5,r7,r6
	cmp r5,#0
	beq .mainL9
.mainL22:
	mov r8,r6
	bl .mainL7
.mainL18:
	mov r8,#0
.mainL3:
	@%r8 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	mov r6,r8
	ldr r5,.LPIC0
	add r4,r5,r6,lsl #2
	str r7,[r4]
	ldr r7,[r4]
	mov r6,r8
	ldr r5,.LPIC1
	add r4,r5,r6,lsl #2
	str r7,[r4]
	ldr r7,[r4]
	mov r6,r8
	ldr r5,.LPIC2
	add r4,r5,r6,lsl #2
	str r7,[r4]
	add r7,r8,#1
.mainL4:
	ldr r6,.LPIC5
	ldr r5,[r6]
	cmp r7,r5
	beq .mainL5
.mainL21:
	mov r8,r7
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
