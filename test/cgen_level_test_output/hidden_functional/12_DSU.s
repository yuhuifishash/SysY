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
init:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.initL0:
.initL1:
	mov r8,#1
	str r8,[fp,#-12]
.initL2:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC2
	ldr r6,[r7]
	cmp r8,r6
	ble .initL3
.initL4:
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.initL3:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-12]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .initL2
find:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.findL0:
	str r0,[fp,#-16]
.findL1:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-16]
	cmp r8,r7
	beq .findL2
.findL3:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC0
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
	ldr r7,.LPIC0
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
	ldr r8,[fp,#-16]
	@%r7 = call i32 @find(i32 %r6)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl find
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,r6
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
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#28
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
	@call void @init()
	sub sp,sp,#4 @stack align 8bytes
	bl init
	add sp,sp,#4 @stack align 8bytes
.mainL2:
	ldr r8,.LPIC1
	ldr r7,[r8]
	cmp r7,#0
	bne .mainL3
.mainL4:
	mov r8,#0
	mov r0,r8
	add sp,sp,#28
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	@%r5 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	bl getch
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-28]
.mainL5:
	ldr r8,[fp,#-28]
	mov r7,#81
	cmp r8,r7
	bne .mainL8
.mainL7:
	ldr r8,[fp,#-28]
	mov r7,#81
	cmp r8,r7
	beq .mainL10
.mainL11:
	@%r34 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@%r35 = call i32 @find(i32 %r34)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl find
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	str r7,[fp,#-16]
	@%r37 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@%r38 = call i32 @find(i32 %r37)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl find
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	str r8,[r5]
.mainL12:
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r8,#1
	sub r6,r7,r8
	ldr r8,.LPIC1
	str r6,[r8]
	bl .mainL2
.mainL10:
	@%r26 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-24]
	@%r28 = call i32 @quick_read()
	sub sp,sp,#4 @stack align 8bytes
	bl quick_read
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-20]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	@%r31 = call i32 @same(i32 %r29,i32 %r30)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl same
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r31)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	bl .mainL12
.mainL8:
	ldr r8,[fp,#-28]
	mov r7,#85
	cmp r8,r7
	beq .mainL7
.mainL6:
	@%r19 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	bl getch
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-28]
	bl .mainL5
	.section	.note.GNU-stack,"",%progbits
