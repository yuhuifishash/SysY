.arch armv7-a
.fpu vfpv3-d16
.arm
.data
i:
	.space  4
k:
	.space  4
.text
.global main
.LPIC0:
	.word  i
.LPIC1:
	.word  k
inc:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.incL0:
.incL1:
	mov r8,r0
	ldr r7,.LPIC1
	ldr r6,[r7]
	@call void @inc_impl(ptr %r1,i32 %r4)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r6
	bl inc_impl
	add sp,sp,#4 @stack align 8bytes
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
inc_impl:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.inc_implL0:
.inc_implL1:
	cmp r1,#0
	beq .inc_implL2
.inc_implL3:
	mov r8,r0
	ldr r7,[r8]
	lsl r6,r7,#1
	str r6,[r8]
	mov r8,r0
	sub r7,r1,#1
	@call void @inc_impl(ptr %r22,i32 %r25)
	push {r0}
	mov r0,r8
	mov r1,r7
	bl inc_impl
	pop {r0}
.inc_implL4:
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.inc_implL2:
	mov r8,r0
	ldr r7,[r8]
	add r6,r7,#1
	str r6,[r8]
	bl .inc_implL4
add_impl:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.add_implL0:
.add_implL1:
	cmp r2,#0
	beq .add_implL2
.add_implL3:
	mov r8,r0
	ldr r7,[r8]
	lsl r6,r7,#1
	str r6,[r8]
	mov r8,r0
	mov r7,r1
	sub r6,r2,#1
	@call void @add_impl(ptr %r25,ptr %r26,i32 %r29)
	push {r0,r1}
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl add_impl
	pop {r0,r1}
.add_implL4:
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.add_implL2:
	mov r8,r0
	ldr r7,[r8]
	mov r6,r1
	ldr r5,[r6]
	add r6,r7,r5
	str r6,[r8]
	bl .add_implL4
add:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.addL0:
.addL1:
	mov r8,r0
	mov r7,r1
	ldr r6,.LPIC1
	ldr r5,[r6]
	@call void @add_impl(ptr %r2,ptr %r3,i32 %r6)
	mov r0,r8
	mov r1,r7
	mov r2,r5
	bl add_impl
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
sub_impl:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.sub_implL0:
.sub_implL1:
	cmp r2,#0
	beq .sub_implL2
.sub_implL3:
	mov r8,r0
	ldr r7,[r8]
	lsl r6,r7,#1
	str r6,[r8]
	mov r8,r0
	mov r7,r1
	sub r6,r2,#1
	@call void @sub_impl(ptr %r25,ptr %r26,i32 %r29)
	push {r0,r1}
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl sub_impl
	pop {r0,r1}
.sub_implL4:
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.sub_implL2:
	mov r8,r0
	ldr r7,[r8]
	mov r6,r1
	ldr r5,[r6]
	sub r6,r7,r5
	str r6,[r8]
	bl .sub_implL4
sub:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.subL0:
.subL1:
	mov r8,r0
	mov r7,r1
	ldr r6,.LPIC1
	ldr r5,[r6]
	@call void @sub_impl(ptr %r2,ptr %r3,i32 %r6)
	mov r0,r8
	mov r1,r7
	mov r2,r5
	bl sub_impl
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#56
.mainL0:
.mainL1:
	mvn r8,#15
	add r7,fp,r8
	@call void @memset(i32 %r99,i32 0,i32 8)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#8
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mvn r8,#15
	add r7,fp,r8
	mvn r8,#0
	str r8,[r7]
	@%r6 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC1
	str r8,[r7]
	@%r9 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mvn r7,#19
	add r6,fp,r7
	str r8,[r6]
	mvn r8,#15
	add r7,fp,r8
	@%r14 = call i32 @getarray(ptr %r13)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl getarray
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[r6]
	cmp r8,#0
	bne .mainL28
.mainL5:
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r0,#0
	add sp,sp,#56
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL28:
	mvn r8,#15
	add r9,fp,r8
	str r9,[fp,#-28]
	mvn r8,#23
	add r9,fp,r8
	str r9,[fp,#-44]
	ldr r8,.LPIC0
	mvn r5,#15
	add r4,fp,r5
	mov r9,r8
	str r9,[fp,#-48]
	ldr r9,.LPIC1
	str r9,[fp,#-52]
	ldr r9,.LPIC0
	str r9,[fp,#-32]
	mov r2,#1
	mvn r1,#15
	add r0,fp,r1
	add r9,r0,r2,lsl #2
	str r9,[fp,#-36]
	mov r9,r4
	str r9,[fp,#-40]
.mainL3:
	ldr r9,[fp,#-28]
	ldr r4,[r9]
	ldr r9,[fp,#-44]
	str r4,[r9]
	ldr r9,[fp,#-44]
	ldr r4,[r9]
	cmp r4,#5
	blt .mainL29
.mainL9:
.mainL16:
.mainL18:
	ldr r9,[fp,#-52]
	ldr r4,[r9]
	@call void @inc_impl(ptr %r84,i32 %r86)
	push {r1,r2,r3}
	ldr r0,[fp,#-48]
	mov r1,r4
	bl inc_impl
	pop {r1,r2,r3}
.mainL17:
.mainL22:
.mainL24:
	ldr r9,[fp,#-52]
	ldr r4,[r9]
	@call void @add_impl(ptr %r84,ptr %r92,i32 %r94)
	push {r1,r2,r3}
	ldr r0,[fp,#-48]
	ldr r1,[fp,#-40]
	mov r2,r4
	bl add_impl
	pop {r1,r2,r3}
.mainL23:
	ldr r9,[fp,#-32]
	ldr r4,[r9]
	ldr r9,[fp,#-36]
	ldr r0,[r9]
	cmp r4,r0
	beq .mainL10
.mainL11:
.mainL4:
	mvn r7,#19
	add r4,fp,r7
	ldr r7,[r4]
	cmp r7,#0
	bne .mainL3
	beq .mainL5
.mainL10:
	bl .mainL5
.mainL29:
	ldr r9,.LPIC0
	str r9,[fp,#-56]
	mvn r4,#23
	add r0,fp,r4
	mvn r4,#19
	add r3,fp,r4
	mvn r4,#15
	add r1,fp,r4
	mvn r4,#15
	add r2,fp,r4
	mvn r4,#19
	add r6,fp,r4
	mvn r4,#23
	add r5,fp,r4
	mov r4,r2
	mov r2,r6
	ldr r6,.LPIC1
	mov r8,r5
.mainL7:
	ldr r9,[fp,#-56]
	ldr r5,[r9]
	@call void @putint(i32 %r34)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r5
	bl putint
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	ldr r5,[r0]
	@call void @putint(i32 %r37)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r5
	bl putint
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	ldr r5,[r3]
	@call void @putint(i32 %r40)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r5
	bl putint
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	ldr r5,[r1]
	@call void @putint(i32 %r44)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r5
	bl putint
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
.mainL13:
.mainL15:
	ldr r5,[r6]
	@call void @add_impl(ptr %r80,ptr %r81,i32 %r83)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r4
	mov r1,r2
	mov r2,r5
	bl add_impl
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
.mainL14:
.mainL19:
.mainL21:
	ldr r5,[r6]
	@call void @add_impl(ptr %r87,ptr %r81,i32 %r90)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r8
	mov r1,r2
	mov r2,r5
	bl add_impl
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
.mainL20:
.mainL25:
.mainL27:
	ldr r5,[r6]
	@call void @sub_impl(ptr %r80,ptr %r81,i32 %r98)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r4
	mov r1,r2
	mov r2,r5
	bl sub_impl
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
.mainL26:
.mainL8:
	ldr r5,[r0]
	cmp r5,#5
	blt .mainL7
	bge .mainL9
	.section	.note.GNU-stack,"",%progbits
