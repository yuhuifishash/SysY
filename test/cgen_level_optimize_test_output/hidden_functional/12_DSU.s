.arch armv7-a
.fpu vfpv3-d16
.arm
.data
n:
	.word  0
m:
	.word  0
fa:
	.space  400020
.text
.global main
.LPIC0:
	.word  fa
.LPIC1:
	.word  m
.LPIC2:
	.word  n
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
init:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.initL0:
.initL1:
	ldr r8,.LPIC2
	ldr r7,[r8]
	cmp r7,#1
	bge .initL6
.initL5:
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.initL6:
	ldr r8,.LPIC2
	ldr r7,[r8]
	mov r8,#1
.initL3:
	mov r6,r8
	ldr r5,.LPIC0
	add r4,r5,r6,lsl #2
	str r8,[r4]
	add r6,r8,#1
.initL4:
	cmp r6,r7
	bgt .initL5
.initL7:
	mov r8,r6
	bl .initL3
find:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.findL0:
.findL1:
	mov r8,r0
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	cmp r8,r0
	beq .findL2
.findL3:
	mov r8,r0
	ldr r7,.LPIC0
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
	ldr r7,.LPIC2
	str r8,[r7]
	@%r1 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC1
	str r8,[r7]
.mainL17:
.mainL19:
	ldr r8,.LPIC2
	ldr r7,[r8]
	cmp r7,#1
	bge .mainL30
.mainL22:
.mainL18:
	ldr r8,.LPIC1
	ldr r7,[r8]
	cmp r7,#0
	bne .mainL28
.mainL5:
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL28:
.mainL3:
	@%r5 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	bl getch
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#81
	bne .mainL10
.mainL31:
	mov r7,r8
.mainL9:
	cmp r7,#81
	beq .mainL14
.mainL15:
	@%r47 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	@%r48 = call i32 @find(i32 %r47)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl find
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	@%r50 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	@%r51 = call i32 @find(i32 %r50)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl find
	mov r4,r0
	add sp,sp,#4 @stack align 8bytes
	mov r6,r5
	ldr r5,.LPIC0
	add r3,r5,r6,lsl #2
	str r4,[r3]
.mainL16:
	ldr r6,.LPIC1
	ldr r5,[r6]
	sub r6,r5,#1
	ldr r5,.LPIC1
	str r6,[r5]
.mainL4:
	ldr r6,.LPIC1
	ldr r5,[r6]
	cmp r5,#0
	bne .mainL3
	beq .mainL5
.mainL14:
	@%r39 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	@%r41 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
.mainL23:
.mainL25:
	@%r73 = call i32 @find(i32 %r39)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl find
	mov r4,r0
	add sp,sp,#4 @stack align 8bytes
	@%r74 = call i32 @find(i32 %r41)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	bl find
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r4,r6
	beq .mainL26
.mainL27:
	mov r6,#0
.mainL24:
	@call void @putint(i32 %r44)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	bl .mainL16
.mainL26:
	mov r6,#1
	bl .mainL24
.mainL10:
	cmp r8,#85
	bne .mainL29
.mainL33:
	mov r7,r8
	bl .mainL9
.mainL29:
.mainL7:
	@%r19 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	bl getch
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
.mainL8:
	cmp r8,#81
	bne .mainL12
.mainL32:
	mov r7,r8
	bl .mainL9
.mainL12:
	cmp r8,#85
	bne .mainL7
.mainL34:
	mov r7,r8
	bl .mainL9
.mainL30:
	ldr r8,.LPIC2
	ldr r7,[r8]
	mov r8,#1
.mainL20:
	mov r6,r8
	ldr r5,.LPIC0
	add r4,r5,r6,lsl #2
	str r8,[r4]
	add r6,r8,#1
.mainL21:
	cmp r6,r7
	bgt .mainL22
.mainL35:
	mov r8,r6
	bl .mainL20
	.section	.note.GNU-stack,"",%progbits
