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
inc:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.incL0:
.incL1:
	mov r8,r0
	mov r7,#0
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@call void @inc_impl(ptr %r1,i32 %r4)
	mov r0,r8
	mov r1,r7
	bl inc_impl
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
inc_impl:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.inc_implL0:
	str r1,[fp,#-12]
.inc_implL1:
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	beq .inc_implL2
.inc_implL3:
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r8,#2
	mul r6,r7,r8
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	str r6,[r8]
	mov r8,r0
	ldr r7,[fp,#-12]
	mov r6,#1
	sub r5,r7,r6
	@call void @inc_impl(ptr %r22,i32 %r25)
	push {r0}
	mov r0,r8
	mov r1,r5
	bl inc_impl
	pop {r0}
.inc_implL4:
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.inc_implL2:
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	str r6,[r8]
	bl .inc_implL4
add_impl:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.add_implL0:
	str r2,[fp,#-12]
.add_implL1:
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	beq .add_implL2
.add_implL3:
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r8,#2
	mul r6,r7,r8
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	str r6,[r8]
	mov r8,r0
	mov r7,r1
	ldr r6,[fp,#-12]
	mov r5,#1
	sub r4,r6,r5
	@call void @add_impl(ptr %r25,ptr %r26,i32 %r29)
	push {r0,r1}
	mov r0,r8
	mov r1,r7
	mov r2,r4
	bl add_impl
	pop {r0,r1}
.add_implL4:
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.add_implL2:
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r8,#0
	mov r6,r8
	add r8,r1,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	mov r7,#0
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	bl .add_implL4
add:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.addL0:
.addL1:
	mov r8,r0
	mov r7,r1
	mov r6,#0
	mov r5,r6
	ldr r6,.LPIC1
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	@call void @add_impl(ptr %r2,ptr %r3,i32 %r6)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl add_impl
	add sp,sp,#4 @stack align 8bytes
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
sub_impl:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.sub_implL0:
	str r2,[fp,#-12]
.sub_implL1:
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	beq .sub_implL2
.sub_implL3:
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r8,#2
	mul r6,r7,r8
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	str r6,[r8]
	mov r8,r0
	mov r7,r1
	ldr r6,[fp,#-12]
	mov r5,#1
	sub r4,r6,r5
	@call void @sub_impl(ptr %r25,ptr %r26,i32 %r29)
	push {r0,r1}
	mov r0,r8
	mov r1,r7
	mov r2,r4
	bl sub_impl
	pop {r0,r1}
.sub_implL4:
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.sub_implL2:
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r8,#0
	mov r6,r8
	add r8,r1,r6,lsl #2
	ldr r6,[r8]
	sub r8,r7,r6
	mov r7,#0
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	bl .sub_implL4
sub:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.subL0:
.subL1:
	mov r8,r0
	mov r7,r1
	mov r6,#0
	mov r5,r6
	ldr r6,.LPIC1
	add r4,r6,r5,lsl #2
	ldr r6,[r4]
	@call void @sub_impl(ptr %r2,ptr %r3,i32 %r6)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl sub_impl
	add sp,sp,#4 @stack align 8bytes
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.mainL0:
.mainL1:
	mvn r8,#15
	add r7,fp,r8
	@call void @memset(i32 %r80,i32 0,i32 8)
	mov r0,r7
	mov r1,#0
	mov r2,#8
	bl memset
	mov r8,#1
	rsb r7,r8,#0
	mvn r8,#15
	add r6,fp,r8
	str r7,[r6]
	@%r6 = call i32 @getint()
	bl getint
	mov r8,r0
	mov r7,#0
	mov r6,r7
	ldr r7,.LPIC1
	add r5,r7,r6,lsl #2
	str r8,[r5]
	@%r9 = call i32 @getint()
	bl getint
	mov r8,r0
	mov r7,#0
	mov r6,r7
	mvn r7,#19
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	lsl r7,r8,#1
	mov r8,r7
	mvn r7,#15
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	@%r14 = call i32 @getarray(ptr %r13)
	mov r0,r7
	bl getarray
	mov r8,r0
	mov r8,#0
	mov r7,r8
	mvn r8,#19
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	cmp r7,#0
	bne .mainL3
.mainL5:
	mov r8,#10
	@call void @putch(i32 %r78)
	mov r0,r8
	bl putch
	mov r8,#0
	mov r0,r8
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	mov r8,#0
	mov r7,#0
	lsl r6,r8,#1
	mov r8,r6
	add r8,r8,r7
	mvn r7,#15
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	mov r7,#0
	mov r6,r7
	mvn r7,#23
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	mov r7,r8
	mvn r8,#23
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	mov r8,#5
	cmp r7,r8
	blt .mainL7
.mainL9:
	ldr r8,.LPIC0
	@call void @inc(ptr %r60)
	mov r0,r8
	bl inc
	ldr r8,.LPIC0
	mov r7,#0
	lsl r6,r7,#1
	mov r7,r6
	mvn r6,#15
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	@call void @add(ptr %r61,ptr %r63)
	mov r0,r8
	mov r1,r6
	bl add
	mov r8,#0
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#0
	mov r6,#1
	lsl r5,r7,#1
	mov r7,r5
	add r7,r7,r6
	mvn r6,#15
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	ldr r7,[r6]
	cmp r8,r7
	beq .mainL10
.mainL11:
.mainL4:
	mov r8,#0
	mov r7,r8
	mvn r8,#19
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	cmp r7,#0
	bne .mainL3
	beq .mainL5
.mainL10:
	bl .mainL5
.mainL7:
	mov r8,#0
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r34)
	mov r0,r8
	bl putint
	mov r8,#0
	mov r7,r8
	mvn r8,#23
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	@call void @putint(i32 %r37)
	mov r0,r7
	bl putint
	mov r8,#0
	mov r7,r8
	mvn r8,#19
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	@call void @putint(i32 %r40)
	mov r0,r7
	bl putint
	mov r8,#0
	mov r7,#0
	lsl r6,r8,#1
	mov r8,r6
	add r8,r8,r7
	mvn r7,#15
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	@call void @putint(i32 %r44)
	mov r0,r8
	bl putint
	mov r8,#0
	lsl r7,r8,#1
	mov r8,r7
	mvn r7,#15
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mvn r8,#19
	add r6,fp,r8
	@call void @add(ptr %r46,ptr %r47)
	mov r0,r7
	mov r1,r6
	bl add
	mvn r8,#23
	add r7,fp,r8
	mvn r8,#19
	add r6,fp,r8
	@call void @add(ptr %r48,ptr %r49)
	mov r0,r7
	mov r1,r6
	bl add
	mov r8,#0
	lsl r7,r8,#1
	mov r8,r7
	mvn r7,#15
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mvn r8,#19
	add r6,fp,r8
	@call void @sub(ptr %r51,ptr %r52)
	mov r0,r7
	mov r1,r6
	bl sub
.mainL8:
	mov r8,#0
	mov r7,r8
	mvn r8,#23
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	mov r8,#5
	cmp r7,r8
	blt .mainL7
	bge .mainL9
	.section	.note.GNU-stack,"",%progbits
