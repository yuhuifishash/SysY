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
is_space:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.is_spaceL0:
.is_spaceL1:
	cmp r0,#32
	beq .is_spaceL2
.is_spaceL5:
	cmp r0,#10
	beq .is_spaceL2
.is_spaceL3:
	mov r0,#0
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.is_spaceL2:
	mov r0,#1
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
panic:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.panicL0:
.panicL1:
	@call void @putch(i32 112)
	mov r0,#112
	bl putch
	@call void @putch(i32 97)
	mov r0,#97
	bl putch
	@call void @putch(i32 110)
	mov r0,#110
	bl putch
	@call void @putch(i32 105)
	mov r0,#105
	bl putch
	@call void @putch(i32 99)
	mov r0,#99
	bl putch
	@call void @putch(i32 33)
	mov r0,#33
	bl putch
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	mov r0,#-1
	add sp,sp,#8
	pop {fp,pc}
get_op_prec:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.get_op_precL0:
.get_op_precL1:
	cmp r0,#43
	beq .get_op_precL2
.get_op_precL4:
	cmp r0,#45
	beq .get_op_precL2
.get_op_precL3:
	cmp r0,#42
	beq .get_op_precL6
.get_op_precL10:
	cmp r0,#47
	beq .get_op_precL6
.get_op_precL8:
	cmp r0,#37
	beq .get_op_precL6
.get_op_precL7:
	mov r0,#0
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.get_op_precL6:
	mov r0,#20
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.get_op_precL2:
	mov r0,#10
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
is_num:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.is_numL0:
.is_numL1:
	cmp r0,#48
	bge .is_numL5
.is_numL3:
	mov r0,#0
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.is_numL5:
	cmp r0,#57
	bgt .is_numL3
.is_numL2:
	mov r0,#1
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
next_token:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.next_tokenL0:
.next_tokenL1:
	ldr r8,.LPIC3
	ldr r7,[r8]
.next_tokenL13:
.next_tokenL15:
	cmp r7,#32
	beq .next_tokenL16
.next_tokenL18:
	cmp r7,#10
	beq .next_tokenL16
.next_tokenL17:
	mov r8,#0
.next_tokenL14:
	cmp r8,#0
	bne .next_tokenL55
.next_tokenL5:
	ldr r7,.LPIC3
	ldr r6,[r7]
.next_tokenL28:
.next_tokenL30:
	cmp r6,#48
	bge .next_tokenL33
.next_tokenL32:
	mov r7,#0
.next_tokenL29:
	cmp r7,#0
	bne .next_tokenL6
.next_tokenL7:
	ldr r5,.LPIC3
	ldr r4,[r5]
	ldr r5,.LPIC5
	str r4,[r5]
.next_tokenL37:
.next_tokenL39:
	@%r41 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	bl getch
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r4,.LPIC3
	str r5,[r4]
.next_tokenL38:
	mov r5,#1
	ldr r4,.LPIC2
	str r5,[r4]
.next_tokenL8:
	ldr r5,.LPIC2
	ldr r4,[r5]
	mov r0,r4
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.next_tokenL6:
	ldr r5,.LPIC3
	ldr r4,[r5]
	sub r5,r4,#48
	ldr r4,.LPIC4
	str r5,[r4]
.next_tokenL34:
.next_tokenL36:
	@%r39 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	bl getch
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r4,.LPIC3
	str r5,[r4]
	ldr r5,.LPIC3
	ldr r4,[r5]
.next_tokenL35:
.next_tokenL43:
.next_tokenL45:
	cmp r4,#48
	bge .next_tokenL48
.next_tokenL47:
	mov r5,#0
.next_tokenL44:
	cmp r5,#0
	bne .next_tokenL56
.next_tokenL12:
	mov r3,#0
	ldr r2,.LPIC2
	str r3,[r2]
	bl .next_tokenL8
.next_tokenL56:
.next_tokenL10:
	ldr r3,.LPIC4
	ldr r2,[r3]
	mov r3,#10
	mul r1,r2,r3
	ldr r3,.LPIC3
	ldr r2,[r3]
	add r3,r1,r2
	sub r2,r3,#48
	ldr r3,.LPIC4
	str r2,[r3]
.next_tokenL11:
.next_tokenL40:
.next_tokenL42:
	@%r43 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	bl getch
	mov r3,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r2,.LPIC3
	str r3,[r2]
	ldr r3,.LPIC3
	ldr r2,[r3]
.next_tokenL41:
.next_tokenL49:
.next_tokenL51:
	cmp r2,#48
	bge .next_tokenL54
.next_tokenL53:
	mov r3,#0
.next_tokenL50:
	cmp r3,#0
	bne .next_tokenL10
	beq .next_tokenL12
.next_tokenL54:
	cmp r2,#57
	bgt .next_tokenL53
.next_tokenL52:
	mov r3,#1
	bl .next_tokenL50
.next_tokenL48:
	cmp r4,#57
	bgt .next_tokenL47
.next_tokenL46:
	mov r5,#1
	bl .next_tokenL44
.next_tokenL33:
	cmp r6,#57
	bgt .next_tokenL32
.next_tokenL31:
	mov r7,#1
	bl .next_tokenL29
.next_tokenL55:
.next_tokenL3:
.next_tokenL19:
.next_tokenL21:
	@%r33 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	bl getch
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r6,.LPIC3
	str r7,[r6]
.next_tokenL20:
.next_tokenL4:
	ldr r7,.LPIC3
	ldr r6,[r7]
.next_tokenL22:
.next_tokenL24:
	cmp r6,#32
	beq .next_tokenL25
.next_tokenL27:
	cmp r6,#10
	beq .next_tokenL25
.next_tokenL26:
	mov r7,#0
.next_tokenL23:
	cmp r7,#0
	bne .next_tokenL3
	beq .next_tokenL5
.next_tokenL25:
	mov r7,#1
	bl .next_tokenL23
.next_tokenL16:
	mov r8,#1
	bl .next_tokenL14
stack_push:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.stack_pushL0:
.stack_pushL1:
	mov r8,r0
	ldr r7,[r8]
	add r6,r7,#1
	str r6,[r8]
	ldr r7,[r8]
	mov r8,r7
	add r7,r0,r8,lsl #2
	str r1,[r7]
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
stack_pop:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.stack_popL0:
.stack_popL1:
	mov r8,r0
	ldr r7,[r8]
	mov r6,r7
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	sub r5,r7,#1
	str r5,[r8]
	mov r0,r6
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
stack_peek:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.stack_peekL0:
.stack_peekL1:
	mov r8,r0
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
	mov r8,r0
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
eval_op:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.eval_opL0:
.eval_opL1:
	cmp r0,#43
	beq .eval_opL2
.eval_opL3:
	cmp r0,#45
	beq .eval_opL4
.eval_opL5:
	cmp r0,#42
	beq .eval_opL6
.eval_opL7:
	cmp r0,#47
	beq .eval_opL8
.eval_opL9:
	cmp r0,#37
	beq .eval_opL10
.eval_opL11:
	mov r0,#0
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.eval_opL10:
	@%r45 = call i32 @__modsi3(i32 %r1,i32 %r2)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r2}
	mov r0,r1
	mov r1,r2
	bl __modsi3
	mov r8,r0
	pop {r1,r2}
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.eval_opL8:
	@%r37 = call i32 @__aeabi_idiv(i32 %r1,i32 %r2)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r2}
	mov r0,r1
	mov r1,r2
	bl __aeabi_idiv
	mov r8,r0
	pop {r1,r2}
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.eval_opL6:
	mul r8,r1,r2
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.eval_opL4:
	sub r8,r1,r2
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.eval_opL2:
	add r8,r1,r2
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
eval:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	movw r9,#2072
	movt r9,#0  @ 2072
	sub sp,sp,r9
.evalL0:
.evalL1:
	movw r8,#63480
	movt r8,#65535  @ -2056
	add r7,fp,r8
	@call void @memset(i32 %r205,i32 0,i32 1024)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#1024
	bl memset
	add sp,sp,#4 @stack align 8bytes
	movw r8,#64504
	movt r8,#65535  @ -1032
	add r7,fp,r8
	@call void @memset(i32 %r207,i32 0,i32 1024)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#1024
	bl memset
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC2
	ldr r7,[r8]
	cmp r7,#0
	bne .evalL2
.evalL3:
	movw r8,#63480
	movt r8,#65535  @ -2056
	add r7,fp,r8
	ldr r8,.LPIC4
	ldr r6,[r8]
.evalL28:
.evalL30:
	mov r8,r7
	ldr r5,[r8]
	add r4,r5,#1
	str r4,[r8]
	ldr r5,[r8]
	mov r8,r5
	add r5,r7,r8,lsl #2
	str r6,[r5]
.evalL29:
	@%r10 = call i32 @next_token()
	sub sp,sp,#4 @stack align 8bytes
	bl next_token
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC2
	ldr r7,[r8]
	cmp r7,#1
	beq .evalL135
.evalL7:
	@%r82 = call i32 @next_token()
	sub sp,sp,#4 @stack align 8bytes
	bl next_token
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	movw r8,#64504
	movt r8,#65535  @ -1032
	add r7,fp,r8
.evalL41:
.evalL43:
	mov r8,r7
	ldr r7,[r8]
.evalL42:
	cmp r7,#0
	bne .evalL136
.evalL24:
	movw r8,#63480
	movt r8,#65535  @ -2056
	add r7,fp,r8
.evalL74:
.evalL76:
	mov r8,r7
	ldr r6,[r8]
	mov r8,r6
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
.evalL75:
	mov r0,r8
	movw r9,#2072
	movt r9,#0  @ 2072
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.evalL136:
	movw r8,#64504
	movt r8,#65535  @ -1032
	add r7,fp,r8
	movw r8,#63480
	movt r8,#65535  @ -2056
	add r6,fp,r8
	mov r8,r7
	mov r5,r6
.evalL22:
.evalL68:
.evalL70:
	ldr r4,[r8]
	mov r3,r4
	add r2,r7,r3,lsl #2
	ldr r3,[r2]
	sub r2,r4,#1
	str r2,[r8]
.evalL69:
.evalL100:
.evalL102:
	ldr r4,[r5]
	mov r2,r4
	add r1,r6,r2,lsl #2
	ldr r2,[r1]
	sub r1,r4,#1
	str r1,[r5]
.evalL101:
.evalL126:
.evalL128:
	ldr r4,[r5]
	mov r1,r4
	add r0,r6,r1,lsl #2
	ldr r1,[r0]
	sub r0,r4,#1
	str r0,[r5]
.evalL127:
	@%r99 = call i32 @eval_op(i32 %r147,i32 %r193,i32 %r173)
	push {r1,r2,r3}
	mov r0,r3
	bl eval_op
	mov r4,r0
	pop {r1,r2,r3}
.evalL132:
.evalL134:
	ldr r3,[r5]
	add r2,r3,#1
	str r2,[r5]
	ldr r3,[r5]
	mov r2,r3
	add r3,r6,r2,lsl #2
	str r4,[r3]
.evalL133:
.evalL23:
.evalL71:
.evalL73:
	ldr r4,[r8]
.evalL72:
	cmp r4,#0
	bne .evalL22
	beq .evalL24
.evalL135:
.evalL5:
	ldr r8,.LPIC5
	ldr r7,[r8]
.evalL31:
.evalL33:
	cmp r7,#43
	beq .evalL34
.evalL36:
	cmp r7,#45
	beq .evalL34
.evalL35:
	cmp r7,#42
	beq .evalL37
.evalL40:
	cmp r7,#47
	beq .evalL37
.evalL39:
	cmp r7,#37
	beq .evalL37
.evalL38:
	mov r9,#0
	str r9,[fp,#-2060]
.evalL32:
	ldr r9,[fp,#-2060]
	cmp r9,#0
	beq .evalL8
.evalL9:
	@%r23 = call i32 @next_token()
	sub sp,sp,#4 @stack align 8bytes
	bl next_token
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	movw r6,#64504
	movt r6,#65535  @ -1032
	add r5,fp,r6
.evalL44:
.evalL46:
	mov r6,r5
	ldr r5,[r6]
.evalL45:
	cmp r5,#0
	bne .evalL15
.evalL14:
	movw r6,#64504
	movt r6,#65535  @ -1032
	add r5,fp,r6
.evalL53:
.evalL55:
	mov r6,r5
	ldr r4,[r6]
	add r3,r4,#1
	str r3,[r6]
	ldr r4,[r6]
	mov r6,r4
	add r4,r5,r6,lsl #2
	str r7,[r4]
.evalL54:
	ldr r6,.LPIC2
	ldr r5,[r6]
	cmp r5,#0
	bne .evalL19
.evalL20:
	movw r6,#63480
	movt r6,#65535  @ -2056
	add r5,fp,r6
	ldr r6,.LPIC4
	ldr r4,[r6]
.evalL65:
.evalL67:
	mov r6,r5
	ldr r3,[r6]
	add r2,r3,#1
	str r2,[r6]
	ldr r3,[r6]
	mov r6,r3
	add r3,r5,r6,lsl #2
	str r4,[r3]
.evalL66:
	@%r76 = call i32 @next_token()
	sub sp,sp,#4 @stack align 8bytes
	bl next_token
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
.evalL6:
	bl .LPIC7
.LPIC6:
	.word cur_token
.LPIC7:
	ldr r6,.LPIC6
	ldr r5,[r6]
	cmp r5,#1
	beq .evalL5
	bne .evalL7
.evalL19:
.evalL62:
.evalL64:
	@call void @putch(i32 112)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#112
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 97)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#97
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 110)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#110
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 105)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#105
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 99)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#99
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 33)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#33
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
.evalL63:
	mov r0,#-1
	movw r9,#2072
	movt r9,#0  @ 2072
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.evalL15:
	movw r6,#64504
	movt r6,#65535  @ -1032
	add r5,fp,r6
.evalL56:
.evalL58:
	mov r6,r5
	ldr r4,[r6]
	mov r6,r4
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
.evalL57:
.evalL80:
.evalL82:
	cmp r6,#43
	beq .evalL83
.evalL85:
	cmp r6,#45
	beq .evalL83
.evalL84:
	cmp r6,#42
	beq .evalL86
.evalL89:
	cmp r6,#47
	beq .evalL86
.evalL88:
	cmp r6,#37
	beq .evalL86
.evalL87:
	mov r9,#0
	str r9,[fp,#-2068]
.evalL81:
.evalL106:
.evalL108:
	cmp r7,#43
	beq .evalL109
.evalL111:
	cmp r7,#45
	beq .evalL109
.evalL110:
	cmp r7,#42
	beq .evalL112
.evalL115:
	cmp r7,#47
	beq .evalL112
.evalL114:
	cmp r7,#37
	beq .evalL112
.evalL113:
	mov r9,#0
	str r9,[fp,#-2072]
.evalL107:
	ldr r9,[fp,#-2068]
	ldr r10,[fp,#-2072]
	cmp r9,r10
	blt .evalL14
.evalL137:
	movw r4,#64504
	movt r4,#65535  @ -1032
	add r9,fp,r4
	str r9,[fp,#-2064]
	movw r4,#63480
	movt r4,#65535  @ -2056
	add r2,fp,r4
	ldr r9,[fp,#-2064]
	mov r4,r9
	mov r1,r2
.evalL12:
.evalL47:
.evalL49:
	ldr r0,[r4]
	mov r8,r0
	ldr r9,[fp,#-2064]
	add r3,r9,r8,lsl #2
	ldr r8,[r3]
	sub r3,r0,#1
	str r3,[r4]
.evalL48:
.evalL77:
.evalL79:
	ldr r3,[r1]
	mov r0,r3
	add r6,r2,r0,lsl #2
	ldr r0,[r6]
	sub r6,r3,#1
	str r6,[r1]
.evalL78:
.evalL103:
.evalL105:
	ldr r6,[r1]
	mov r3,r6
	add r5,r2,r3,lsl #2
	ldr r3,[r5]
	sub r5,r6,#1
	str r5,[r1]
.evalL104:
	@%r51 = call i32 @eval_op(i32 %r122,i32 %r178,i32 %r158)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r3
	mov r2,r0
	mov r0,r8
	bl eval_op
	mov r6,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
.evalL129:
.evalL131:
	ldr r8,[r1]
	add r5,r8,#1
	str r5,[r1]
	ldr r8,[r1]
	mov r5,r8
	add r8,r2,r5,lsl #2
	str r6,[r8]
.evalL130:
.evalL13:
.evalL50:
.evalL52:
	ldr r8,[r4]
.evalL51:
	cmp r8,#0
	beq .evalL14
.evalL17:
	movw r8,#64504
	movt r8,#65535  @ -1032
	add r6,fp,r8
.evalL59:
.evalL61:
	mov r8,r6
	ldr r5,[r8]
	mov r8,r5
	add r5,r6,r8,lsl #2
	ldr r8,[r5]
.evalL60:
.evalL90:
.evalL92:
	cmp r8,#43
	beq .evalL93
.evalL95:
	cmp r8,#45
	beq .evalL93
.evalL94:
	cmp r8,#42
	beq .evalL96
.evalL99:
	cmp r8,#47
	beq .evalL96
.evalL98:
	cmp r8,#37
	beq .evalL96
.evalL97:
	mov r8,#0
.evalL91:
.evalL116:
.evalL118:
	cmp r7,#43
	beq .evalL119
.evalL121:
	cmp r7,#45
	beq .evalL119
.evalL120:
	cmp r7,#42
	beq .evalL122
.evalL125:
	cmp r7,#47
	beq .evalL122
.evalL124:
	cmp r7,#37
	beq .evalL122
.evalL123:
	mov r6,#0
.evalL117:
	cmp r8,r6
	bge .evalL12
	blt .evalL14
.evalL122:
	mov r6,#20
	bl .evalL117
.evalL119:
	mov r6,#10
	bl .evalL117
.evalL96:
	mov r8,#20
	bl .evalL91
.evalL93:
	mov r8,#10
	bl .evalL91
.evalL112:
	mov r9,#20
	str r9,[fp,#-2072]
	bl .evalL107
.evalL109:
	mov r9,#10
	str r9,[fp,#-2072]
	bl .evalL107
.evalL86:
	mov r9,#20
	str r9,[fp,#-2068]
	bl .evalL81
.evalL83:
	mov r9,#10
	str r9,[fp,#-2068]
	bl .evalL81
.evalL8:
	bl .evalL7
.evalL37:
	mov r9,#20
	str r9,[fp,#-2060]
	bl .evalL32
.evalL34:
	mov r9,#10
	str r9,[fp,#-2060]
	bl .evalL32
.evalL2:
.evalL25:
.evalL27:
	@call void @putch(i32 112)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#112
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 97)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#97
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 110)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#110
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 105)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#105
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 99)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#99
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 33)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#33
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
.evalL26:
	mov r0,#-1
	movw r9,#2072
	movt r9,#0  @ 2072
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
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
	@%r2 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	bl getch
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	@%r3 = call i32 @next_token()
	sub sp,sp,#4 @stack align 8bytes
	bl next_token
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#0
	bne .mainL6
.mainL5:
	mov r0,#0
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL6:
	mov r7,r8
.mainL3:
	@%r6 = call i32 @eval()
	sub sp,sp,#4 @stack align 8bytes
	bl eval
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r6)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	sub r8,r7,#1
.mainL4:
	cmp r8,#0
	beq .mainL5
.mainL7:
	mov r7,r8
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
