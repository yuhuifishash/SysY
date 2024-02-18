.arch armv7-a
.fpu vfpv3-d16
.arm
.data
TOKEN_NUM:
	.word  0
TOKEN_OTHER:
	.word  1
last_char:
	.word  32
num:
	.word  0
other:
	.word  0
cur_token:
	.word  0
.text
.global main
.LPIC0:
	.word  TOKEN_NUM
.LPIC1:
	.word  TOKEN_OTHER
.LPIC2:
	.word  cur_token
.LPIC3:
	.word  last_char
.LPIC4:
	.word  num
.LPIC5:
	.word  other
next_char:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.next_charL0:
.next_charL1:
	@%r0 = call i32 @getch()
	bl getch
	mov r8,r0
	ldr r7,.LPIC3
	str r8,[r7]
	ldr r8,.LPIC3
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
is_space:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.is_spaceL0:
	str r0,[fp,#-12]
.is_spaceL1:
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	beq .is_spaceL2
.is_spaceL5:
	ldr r8,[fp,#-12]
	mov r7,#10
	cmp r8,r7
	beq .is_spaceL2
.is_spaceL3:
	mov r8,#0
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.is_spaceL2:
	mov r8,#1
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
panic:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.panicL0:
.panicL1:
	mov r8,#112
	@call void @putch(i32 %r0)
	mov r0,r8
	bl putch
	mov r8,#97
	@call void @putch(i32 %r1)
	mov r0,r8
	bl putch
	mov r8,#110
	@call void @putch(i32 %r2)
	mov r0,r8
	bl putch
	mov r8,#105
	@call void @putch(i32 %r3)
	mov r0,r8
	bl putch
	mov r8,#99
	@call void @putch(i32 %r4)
	mov r0,r8
	bl putch
	mov r8,#33
	@call void @putch(i32 %r5)
	mov r0,r8
	bl putch
	mov r8,#10
	@call void @putch(i32 %r6)
	mov r0,r8
	bl putch
	mov r8,#1
	rsb r7,r8,#0
	mov r0,r7
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
get_op_prec:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.get_op_precL0:
	str r0,[fp,#-12]
.get_op_precL1:
	ldr r8,[fp,#-12]
	mov r7,#43
	cmp r8,r7
	beq .get_op_precL2
.get_op_precL4:
	ldr r8,[fp,#-12]
	mov r7,#45
	cmp r8,r7
	beq .get_op_precL2
.get_op_precL3:
	ldr r8,[fp,#-12]
	mov r7,#42
	cmp r8,r7
	beq .get_op_precL6
.get_op_precL10:
	ldr r8,[fp,#-12]
	mov r7,#47
	cmp r8,r7
	beq .get_op_precL6
.get_op_precL8:
	ldr r8,[fp,#-12]
	mov r7,#37
	cmp r8,r7
	beq .get_op_precL6
.get_op_precL7:
	mov r8,#0
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.get_op_precL6:
	mov r8,#20
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.get_op_precL2:
	mov r8,#10
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
is_num:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.is_numL0:
	str r0,[fp,#-12]
.is_numL1:
	ldr r8,[fp,#-12]
	mov r7,#48
	cmp r8,r7
	bge .is_numL5
.is_numL3:
	mov r8,#0
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.is_numL5:
	ldr r8,[fp,#-12]
	mov r7,#57
	cmp r8,r7
	bgt .is_numL3
.is_numL2:
	mov r8,#1
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
next_token:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.next_tokenL0:
.next_tokenL1:
	ldr r8,.LPIC3
	ldr r7,[r8]
	@%r1 = call i32 @is_space(i32 %r0)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl is_space
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#0
	bne .next_tokenL3
.next_tokenL5:
	ldr r8,.LPIC3
	ldr r7,[r8]
	@%r8 = call i32 @is_num(i32 %r7)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl is_num
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#0
	bne .next_tokenL6
.next_tokenL7:
	ldr r8,.LPIC3
	ldr r7,[r8]
	ldr r8,.LPIC5
	str r7,[r8]
	@%r28 = call i32 @next_char()
	sub sp,sp,#4 @stack align 8bytes
	bl next_char
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC1
	ldr r7,[r8]
	ldr r8,.LPIC2
	str r7,[r8]
.next_tokenL8:
	ldr r8,.LPIC2
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.next_tokenL6:
	ldr r8,.LPIC3
	ldr r7,[r8]
	mov r8,#48
	sub r6,r7,r8
	ldr r8,.LPIC4
	str r6,[r8]
	@%r13 = call i32 @next_char()
	sub sp,sp,#4 @stack align 8bytes
	bl next_char
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@%r14 = call i32 @is_num(i32 %r13)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl is_num
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .next_tokenL10
.next_tokenL12:
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,.LPIC2
	str r7,[r8]
	bl .next_tokenL8
.next_tokenL10:
	ldr r8,.LPIC4
	ldr r7,[r8]
	mov r8,#10
	mul r6,r7,r8
	ldr r8,.LPIC3
	ldr r7,[r8]
	add r8,r6,r7
	mov r7,#48
	sub r6,r8,r7
	ldr r8,.LPIC4
	str r6,[r8]
.next_tokenL11:
	@%r23 = call i32 @next_char()
	sub sp,sp,#4 @stack align 8bytes
	bl next_char
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@%r24 = call i32 @is_num(i32 %r23)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl is_num
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bne .next_tokenL10
	beq .next_tokenL12
.next_tokenL3:
	@%r3 = call i32 @next_char()
	sub sp,sp,#4 @stack align 8bytes
	bl next_char
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
.next_tokenL4:
	ldr r8,.LPIC3
	ldr r7,[r8]
	@%r5 = call i32 @is_space(i32 %r4)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl is_space
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#0
	bne .next_tokenL3
	beq .next_tokenL5
stack_push:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.stack_pushL0:
	str r1,[fp,#-12]
.stack_pushL1:
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
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	add r7,r0,r6,lsl #2
	ldr r6,[r7]
	mov r7,r6
	add r6,r0,r7,lsl #2
	str r8,[r6]
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
stack_pop:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.stack_popL0:
.stack_popL1:
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r8,r7
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	str r8,[fp,#-12]
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r8,#1
	sub r6,r7,r8
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	str r6,[r8]
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
stack_peek:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.stack_peekL0:
.stack_peekL1:
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r8,r7
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	mov r0,r8
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
stack_size:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.stack_sizeL0:
.stack_sizeL1:
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
eval_op:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.eval_opL0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
	str r2,[fp,#-20]
.eval_opL1:
	ldr r8,[fp,#-12]
	mov r7,#43
	cmp r8,r7
	beq .eval_opL2
.eval_opL3:
	ldr r8,[fp,#-12]
	mov r7,#45
	cmp r8,r7
	beq .eval_opL4
.eval_opL5:
	ldr r8,[fp,#-12]
	mov r7,#42
	cmp r8,r7
	beq .eval_opL6
.eval_opL7:
	ldr r8,[fp,#-12]
	mov r7,#47
	cmp r8,r7
	beq .eval_opL8
.eval_opL9:
	ldr r8,[fp,#-12]
	mov r7,#37
	cmp r8,r7
	beq .eval_opL10
.eval_opL11:
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r6,r7,r8}
	pop {fp,pc}
.eval_opL10:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	@%r45 = call i32 @__modsi3(i32 %r43,i32 %r44)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	mov r0,r6
	add sp,sp,#20
	pop {r6,r7,r8}
	pop {fp,pc}
.eval_opL8:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	@%r37 = call i32 @__aeabi_idiv(i32 %r35,i32 %r36)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	mov r0,r6
	add sp,sp,#20
	pop {r6,r7,r8}
	pop {fp,pc}
.eval_opL6:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	mul r6,r8,r7
	mov r0,r6
	add sp,sp,#20
	pop {r6,r7,r8}
	pop {fp,pc}
.eval_opL4:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	sub r6,r8,r7
	mov r0,r6
	add sp,sp,#20
	pop {r6,r7,r8}
	pop {fp,pc}
.eval_opL2:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	add r6,r8,r7
	mov r0,r6
	add sp,sp,#20
	pop {r6,r7,r8}
	pop {fp,pc}
eval:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	movw r9,#2084
	movt r9,#0  @ 2084
	sub sp,sp,r9
.evalL0:
.evalL1:
	movw r8,#63452
	movt r8,#65535  @ -2084
	add r7,fp,r8
	@call void @memset(i32 %r105,i32 0,i32 1024)
	mov r0,r7
	mov r1,#0
	mov r2,#1024
	bl memset
	movw r8,#64476
	movt r8,#65535  @ -1060
	add r7,fp,r8
	@call void @memset(i32 %r107,i32 0,i32 1024)
	mov r0,r7
	mov r1,#0
	mov r2,#1024
	bl memset
	ldr r8,.LPIC2
	ldr r7,[r8]
	ldr r8,.LPIC0
	ldr r6,[r8]
	cmp r7,r6
	bne .evalL2
.evalL3:
	movw r8,#63452
	movt r8,#65535  @ -2084
	add r7,fp,r8
	ldr r8,.LPIC4
	ldr r6,[r8]
	@call void @stack_push(ptr %r8,i32 %r9)
	mov r0,r7
	mov r1,r6
	bl stack_push
	@%r10 = call i32 @next_token()
	bl next_token
	mov r8,r0
	ldr r8,.LPIC2
	ldr r7,[r8]
	ldr r8,.LPIC1
	ldr r6,[r8]
	cmp r7,r6
	beq .evalL5
.evalL7:
	@%r82 = call i32 @next_token()
	bl next_token
	mov r8,r0
	movw r8,#64476
	movt r8,#65535  @ -1060
	add r7,fp,r8
	@%r84 = call i32 @stack_size(ptr %r83)
	mov r0,r7
	bl stack_size
	mov r8,r0
	cmp r8,#0
	bne .evalL22
.evalL24:
	movw r8,#63452
	movt r8,#65535  @ -2084
	add r7,fp,r8
	@%r104 = call i32 @stack_peek(ptr %r103)
	mov r0,r7
	bl stack_peek
	mov r8,r0
	mov r0,r8
	movw r9,#2084
	movt r9,#0  @ 2084
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.evalL22:
	movw r8,#64476
	movt r8,#65535  @ -1060
	add r7,fp,r8
	@%r88 = call i32 @stack_pop(ptr %r87)
	mov r0,r7
	bl stack_pop
	mov r8,r0
	str r8,[fp,#-20]
	movw r8,#63452
	movt r8,#65535  @ -2084
	add r7,fp,r8
	@%r91 = call i32 @stack_pop(ptr %r90)
	mov r0,r7
	bl stack_pop
	mov r8,r0
	str r8,[fp,#-16]
	movw r8,#63452
	movt r8,#65535  @ -2084
	add r7,fp,r8
	@%r94 = call i32 @stack_pop(ptr %r93)
	mov r0,r7
	bl stack_pop
	mov r8,r0
	str r8,[fp,#-12]
	movw r8,#63452
	movt r8,#65535  @ -2084
	add r7,fp,r8
	ldr r8,[fp,#-20]
	ldr r6,[fp,#-12]
	ldr r5,[fp,#-16]
	@%r99 = call i32 @eval_op(i32 %r96,i32 %r97,i32 %r98)
	mov r0,r8
	mov r1,r6
	mov r2,r5
	bl eval_op
	mov r4,r0
	@call void @stack_push(ptr %r95,i32 %r99)
	mov r0,r7
	mov r1,r4
	bl stack_push
.evalL23:
	movw r8,#64476
	movt r8,#65535  @ -1060
	add r7,fp,r8
	@%r101 = call i32 @stack_size(ptr %r100)
	mov r0,r7
	bl stack_size
	mov r8,r0
	cmp r8,#0
	bne .evalL22
	beq .evalL24
.evalL5:
	ldr r8,.LPIC5
	ldr r7,[r8]
	str r7,[fp,#-36]
	ldr r8,[fp,#-36]
	@%r19 = call i32 @get_op_prec(i32 %r18)
	mov r0,r8
	bl get_op_prec
	mov r7,r0
	cmp r7,#0
	beq .evalL8
.evalL9:
	@%r23 = call i32 @next_token()
	bl next_token
	mov r8,r0
	movw r8,#64476
	movt r8,#65535  @ -1060
	add r7,fp,r8
	@%r25 = call i32 @stack_size(ptr %r24)
	mov r0,r7
	bl stack_size
	mov r8,r0
	cmp r8,#0
	bne .evalL15
.evalL14:
	movw r8,#64476
	movt r8,#65535  @ -1060
	add r7,fp,r8
	ldr r8,[fp,#-36]
	@call void @stack_push(ptr %r66,i32 %r67)
	mov r0,r7
	mov r1,r8
	bl stack_push
	ldr r8,.LPIC2
	ldr r7,[r8]
	ldr r8,.LPIC0
	ldr r6,[r8]
	cmp r7,r6
	bne .evalL19
.evalL20:
	movw r8,#63452
	movt r8,#65535  @ -2084
	add r7,fp,r8
	ldr r8,.LPIC4
	ldr r6,[r8]
	@call void @stack_push(ptr %r74,i32 %r75)
	mov r0,r7
	mov r1,r6
	bl stack_push
	@%r76 = call i32 @next_token()
	bl next_token
	mov r8,r0
.evalL6:
	ldr r8,.LPIC2
	ldr r7,[r8]
	ldr r8,.LPIC1
	ldr r6,[r8]
	cmp r7,r6
	beq .evalL5
	bne .evalL7
.evalL19:
	@%r73 = call i32 @panic()
	bl panic
	mov r8,r0
	mov r0,r8
	movw r9,#2084
	movt r9,#0  @ 2084
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.evalL15:
	movw r8,#64476
	movt r8,#65535  @ -1060
	add r7,fp,r8
	@%r28 = call i32 @stack_peek(ptr %r27)
	mov r0,r7
	bl stack_peek
	mov r8,r0
	@%r29 = call i32 @get_op_prec(i32 %r28)
	mov r0,r8
	bl get_op_prec
	mov r7,r0
	ldr r8,[fp,#-36]
	@%r31 = call i32 @get_op_prec(i32 %r30)
	mov r0,r8
	bl get_op_prec
	mov r6,r0
	cmp r7,r6
	blt .evalL14
.evalL12:
	movw r8,#64476
	movt r8,#65535  @ -1060
	add r7,fp,r8
	@%r40 = call i32 @stack_pop(ptr %r39)
	mov r0,r7
	bl stack_pop
	mov r8,r0
	str r8,[fp,#-32]
	movw r8,#63452
	movt r8,#65535  @ -2084
	add r7,fp,r8
	@%r43 = call i32 @stack_pop(ptr %r42)
	mov r0,r7
	bl stack_pop
	mov r8,r0
	str r8,[fp,#-28]
	movw r8,#63452
	movt r8,#65535  @ -2084
	add r7,fp,r8
	@%r46 = call i32 @stack_pop(ptr %r45)
	mov r0,r7
	bl stack_pop
	mov r8,r0
	str r8,[fp,#-24]
	movw r8,#63452
	movt r8,#65535  @ -2084
	add r7,fp,r8
	ldr r8,[fp,#-32]
	ldr r6,[fp,#-24]
	ldr r5,[fp,#-28]
	@%r51 = call i32 @eval_op(i32 %r48,i32 %r49,i32 %r50)
	mov r0,r8
	mov r1,r6
	mov r2,r5
	bl eval_op
	mov r4,r0
	@call void @stack_push(ptr %r47,i32 %r51)
	mov r0,r7
	mov r1,r4
	bl stack_push
.evalL13:
	movw r8,#64476
	movt r8,#65535  @ -1060
	add r7,fp,r8
	@%r53 = call i32 @stack_size(ptr %r52)
	mov r0,r7
	bl stack_size
	mov r8,r0
	cmp r8,#0
	beq .evalL14
.evalL17:
	movw r8,#64476
	movt r8,#65535  @ -1060
	add r7,fp,r8
	@%r56 = call i32 @stack_peek(ptr %r55)
	mov r0,r7
	bl stack_peek
	mov r8,r0
	@%r57 = call i32 @get_op_prec(i32 %r56)
	mov r0,r8
	bl get_op_prec
	mov r7,r0
	ldr r8,[fp,#-36]
	@%r59 = call i32 @get_op_prec(i32 %r58)
	mov r0,r8
	bl get_op_prec
	mov r6,r0
	cmp r7,r6
	bge .evalL12
	blt .evalL14
.evalL8:
	bl .evalL7
.evalL2:
	@%r7 = call i32 @panic()
	bl panic
	mov r8,r0
	mov r0,r8
	movw r9,#2084
	movt r9,#0  @ 2084
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8}
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
	@%r2 = call i32 @getch()
	bl getch
	mov r8,r0
	@%r3 = call i32 @next_token()
	bl next_token
	mov r8,r0
	ldr r8,[fp,#-12]
	cmp r8,#0
	bne .mainL3
.mainL5:
	mov r8,#0
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL3:
	@%r6 = call i32 @eval()
	bl eval
	mov r8,r0
	@call void @putint(i32 %r6)
	mov r0,r8
	bl putint
	mov r8,#10
	@call void @putch(i32 %r7)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
.mainL4:
	ldr r8,[fp,#-12]
	cmp r8,#0
	bne .mainL3
	beq .mainL5
	.section	.note.GNU-stack,"",%progbits
