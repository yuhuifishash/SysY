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
f:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.fL0:
	str r0,[fp,#-16]
.fL1:
	mov r8,#1
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC3
	ldr r6,[r7]
	cmp r8,r6
	ble .fL3
.fL5:
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.fL3:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC4
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#1
	cmp r8,r7
	bne .fL10
.fL7:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.fL4:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC3
	ldr r6,[r7]
	cmp r8,r6
	ble .fL3
	bgt .fL5
.fL10:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	add r6,r8,r7
	mov r8,r6
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#0
	cmp r8,r7
	bne .fL7
.fL8:
	ldr r8,.LPIC3
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	add r6,r7,r8
	ldr r8,[fp,#-12]
	sub r7,r6,r8
	mov r8,r7
	ldr r7,.LPIC2
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	cmp r8,#0
	bne .fL7
.fL6:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-16]
	ldr r7,.LPIC3
	ldr r6,[r7]
	cmp r8,r6
	beq .fL12
.fL13:
	mov r8,#1
	ldr r7,[fp,#-12]
	mov r6,r7
	ldr r7,.LPIC4
	add r5,r7,r6,lsl #2
	str r8,[r5]
	mov r8,#1
	ldr r7,[fp,#-16]
	ldr r6,[fp,#-12]
	add r5,r7,r6
	mov r7,r5
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	str r8,[r5]
	mov r8,#1
	ldr r7,.LPIC3
	ldr r6,[r7]
	ldr r7,[fp,#-16]
	add r5,r6,r7
	ldr r7,[fp,#-12]
	sub r6,r5,r7
	mov r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	@call void @f(i32 %r66)
	mov r0,r6
	bl f
	mov r8,#0
	ldr r7,[fp,#-12]
	mov r6,r7
	ldr r7,.LPIC4
	add r5,r7,r6,lsl #2
	str r8,[r5]
	mov r8,#0
	ldr r7,[fp,#-16]
	ldr r6,[fp,#-12]
	add r5,r7,r6
	mov r7,r5
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	str r8,[r5]
	mov r8,#0
	ldr r7,.LPIC3
	ldr r6,[r7]
	ldr r7,[fp,#-16]
	add r5,r6,r7
	ldr r7,[fp,#-12]
	sub r6,r5,r7
	mov r7,r6
	ldr r6,.LPIC2
	add r5,r6,r7,lsl #2
	str r8,[r5]
	bl .fL7
.fL12:
	@call void @printans()
	bl printans
	bl .fL13
printans:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.printansL0:
.printansL1:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC5
	str r6,[r8]
	mov r8,#1
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC3
	ldr r6,[r7]
	cmp r8,r6
	ble .printansL3
.printansL5:
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.printansL3:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r12)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-12]
	ldr r7,.LPIC3
	ldr r6,[r7]
	cmp r8,r6
	beq .printansL6
.printansL7:
	mov r8,#32
	@call void @putch(i32 %r19)
	mov r0,r8
	bl putch
.printansL8:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.printansL4:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC3
	ldr r6,[r7]
	cmp r8,r6
	ble .printansL3
	bgt .printansL5
.printansL6:
	mov r8,#10
	@call void @putch(i32 %r18)
	mov r0,r8
	bl putch
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	bgt .mainL3
.mainL5:
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL3:
	@%r7 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC3
	str r8,[r7]
	mov r8,#1
	@call void @f(i32 %r8)
	mov r0,r8
	bl f
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
.mainL4:
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	bgt .mainL3
	ble .mainL5
	.section	.note.GNU-stack,"",%progbits
