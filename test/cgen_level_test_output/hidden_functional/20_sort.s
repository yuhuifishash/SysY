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
sortA:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.sortAL0:
.sortAL1:
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
.sortAL2:
	ldr r8,[fp,#-20]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	blt .sortAL3
.sortAL4:
	add sp,sp,#20
	pop {r6,r7,r8}
	pop {fp,pc}
.sortAL3:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.sortAL5:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	blt .sortAL6
.sortAL7:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	bl .sortAL2
.sortAL6:
	ldr r8,[fp,#-20]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	mov r6,r8
	add r8,r0,r6,lsl #2
	ldr r6,[r8]
	cmp r7,r6
	bgt .sortAL8
.sortAL9:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .sortAL5
.sortAL8:
	ldr r8,[fp,#-20]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-20]
	mov r6,r8
	add r8,r0,r6,lsl #2
	str r7,[r8]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	bl .sortAL9
sortB:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.sortBL0:
.sortBL1:
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#100
	rsb r7,r8,#0
	str r7,[fp,#-20]
.sortBL2:
	ldr r8,[fp,#-24]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	blt .sortBL3
.sortBL4:
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-16]
.sortBL7:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	cmp r8,r7
	ble .sortBL8
.sortBL9:
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.sortBL8:
	ldr r8,[fp,#-24]
	mov r7,r8
	ldr r8,.LPIC3
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	str r8,[fp,#-12]
.sortBL10:
	ldr r8,[fp,#-12]
	cmp r8,#0
	bne .sortBL11
.sortBL12:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .sortBL7
.sortBL11:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-16]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
	bl .sortBL10
.sortBL3:
	ldr r8,[fp,#-24]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC3
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#1
	add r6,r8,r7
	ldr r8,[fp,#-24]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC3
	add r5,r7,r8,lsl #2
	str r6,[r5]
	ldr r8,[fp,#-24]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-20]
	cmp r7,r8
	bgt .sortBL5
.sortBL6:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .sortBL2
.sortBL5:
	ldr r8,[fp,#-24]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-20]
	bl .sortBL6
sortC:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.sortCL0:
.sortCL1:
	mov r8,#0
	str r8,[fp,#-24]
.sortCL2:
	ldr r8,[fp,#-24]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	blt .sortCL3
.sortCL4:
	add sp,sp,#24
	pop {r6,r7,r8}
	pop {fp,pc}
.sortCL3:
	ldr r8,[fp,#-24]
	str r8,[fp,#-20]
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.sortCL5:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	blt .sortCL6
.sortCL7:
	ldr r8,[fp,#-24]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-20]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-24]
	mov r6,r8
	add r8,r0,r6,lsl #2
	str r7,[r8]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-20]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .sortCL2
.sortCL6:
	ldr r8,[fp,#-16]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-20]
	mov r6,r8
	add r8,r0,r6,lsl #2
	ldr r6,[r8]
	cmp r7,r6
	blt .sortCL8
.sortCL9:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .sortCL5
.sortCL8:
	ldr r8,[fp,#-16]
	str r8,[fp,#-20]
	bl .sortCL9
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.mainL0:
.mainL1:
	@%r0 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC5
	str r8,[r7]
	mov r8,#0
	str r8,[fp,#-12]
.mainL2:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	bne .mainL3
.mainL4:
	ldr r8,.LPIC0
	@call void @sortA(ptr %r24)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl sortA
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC1
	@call void @sortB(ptr %r25)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl sortB
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC2
	@call void @sortC(ptr %r26)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl sortC
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	str r8,[fp,#-12]
.mainL5:
	ldr r8,.LPIC5
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	sub r6,r7,r8
	cmp r6,#0
	bne .mainL6
.mainL7:
	mov r8,#0
	str r8,[fp,#-12]
.mainL8:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC5
	ldr r6,[r7]
	sub r7,r8,r6
	cmp r7,#0
	bne .mainL9
.mainL10:
	mov r8,#123
	rsb r7,r8,#0
	mov r0,r7
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL9:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	cmp r8,#0
	bne .mainL11
.mainL12:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC2
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	cmp r8,#0
	bne .mainL13
.mainL14:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL8
.mainL13:
	mov r8,#2
	mov r0,r8
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL11:
	mov r8,#1
	mov r0,r8
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL6:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-12]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	sub r6,r8,r7
	ldr r8,[fp,#-12]
	mov r7,r8
	bl .LPIC8
.LPIC7:
	.word b
.LPIC8:
	ldr r8,.LPIC7
	add r5,r8,r7,lsl #2
	str r6,[r5]
	ldr r8,[fp,#-12]
	mov r7,r8
	bl .LPIC10
.LPIC9:
	.word c
.LPIC10:
	ldr r8,.LPIC9
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-12]
	mov r6,r7
	ldr r7,.LPIC7
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	sub r6,r8,r7
	ldr r8,[fp,#-12]
	mov r7,r8
	bl .LPIC12
.LPIC11:
	.word a
.LPIC12:
	ldr r8,.LPIC11
	add r5,r8,r7,lsl #2
	ldr r8,[r5]
	sub r7,r6,r8
	ldr r8,[fp,#-12]
	mov r6,r8
	ldr r8,.LPIC9
	add r5,r8,r6,lsl #2
	str r7,[r5]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL5
.mainL3:
	@%r8 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,[fp,#-12]
	mov r6,r7
	ldr r7,.LPIC11
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC11
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-12]
	mov r6,r7
	ldr r7,.LPIC7
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC7
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-12]
	mov r6,r7
	ldr r7,.LPIC9
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL2
	.section	.note.GNU-stack,"",%progbits
