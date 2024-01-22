.arch armv7-a
.fpu vfpv3-d16
.arm
.data
ans:
	.space  200
sum:
	.word  0
n:
	.word  0
row:
	.space  200
line1:
	.space  200
line2:
	.space  400
.text
.global main
.LPIC0:
	.word  ans
.LPIC1:
	.word  line1
.LPIC2:
	.word  line2
.LPIC3:
	.word  n
.LPIC4:
	.word  row
.LPIC5:
	.word  sum
f:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.fL0:
.fL1:
	ldr r8,.LPIC3
	ldr r7,[r8]
	cmp r7,#1
	bge .fL14
.fL5:
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.fL14:
	mov r8,#1
.fL3:
	mov r7,r8
	ldr r6,.LPIC4
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	cmp r7,#1
	bne .fL10
.fL7:
	add r7,r8,#1
.fL4:
	ldr r6,.LPIC3
	ldr r5,[r6]
	cmp r7,r5
	bgt .fL5
.fL15:
	mov r8,r7
	bl .fL3
.fL10:
	add r7,r0,r8
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	cmp r7,#0
	bne .fL7
.fL8:
	ldr r7,.LPIC3
	ldr r6,[r7]
	add r7,r6,r0
	sub r6,r7,r8
	mov r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	cmp r7,#0
	bne .fL7
.fL6:
	mov r7,r0
	ldr r6,.LPIC0
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r7,.LPIC3
	ldr r6,[r7]
	cmp r0,r6
	beq .fL12
.fL13:
	mov r7,r8
	ldr r6,.LPIC4
	add r5,r6,r7,lsl #2
	mov r7,#1
	str r7,[r5]
	add r7,r0,r8
	mov r6,r7
	ldr r7,.LPIC1
	add r4,r7,r6,lsl #2
	mov r7,#1
	str r7,[r4]
	ldr r7,.LPIC3
	ldr r6,[r7]
	add r7,r6,r0
	sub r6,r7,r8
	mov r7,r6
	ldr r6,.LPIC2
	add r3,r6,r7,lsl #2
	mov r7,#1
	str r7,[r3]
	add r7,r0,#1
	@call void @f(i32 %r66)
	push {r0}
	mov r0,r7
	bl f
	pop {r0}
	mov r7,#0
	str r7,[r5]
	mov r7,#0
	str r7,[r4]
	ldr r7,.LPIC3
	ldr r6,[r7]
	add r7,r6,r0
	sub r6,r7,r8
	mov r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	mov r7,#0
	str r7,[r5]
	bl .fL7
.fL12:
	@call void @printans()
	push {r0}
	bl printans
	pop {r0}
	bl .fL13
printans:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.printansL0:
.printansL1:
	ldr r8,.LPIC5
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC5
	str r8,[r7]
	ldr r8,.LPIC3
	ldr r7,[r8]
	cmp r7,#1
	bge .printansL9
.printansL5:
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.printansL9:
	mov r8,#1
.printansL3:
	mov r7,r8
	ldr r6,.LPIC0
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	@call void @putint(i32 %r12)
	mov r0,r7
	bl putint
	ldr r7,.LPIC3
	ldr r6,[r7]
	cmp r8,r6
	beq .printansL6
.printansL7:
	@call void @putch(i32 32)
	mov r0,#32
	bl putch
.printansL8:
	add r7,r8,#1
.printansL4:
	ldr r6,.LPIC3
	ldr r5,[r6]
	cmp r7,r5
	bgt .printansL5
.printansL10:
	mov r8,r7
	bl .printansL3
.printansL6:
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#0
	bgt .mainL6
.mainL5:
	ldr r7,.LPIC5
	ldr r6,[r7]
	mov r0,r6
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL6:
	mov r7,r8
.mainL3:
	@%r7 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r6,.LPIC3
	str r8,[r6]
	@call void @f(i32 1)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#1
	bl f
	add sp,sp,#4 @stack align 8bytes
	sub r8,r7,#1
.mainL4:
	cmp r8,#0
	ble .mainL5
.mainL7:
	mov r7,r8
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
