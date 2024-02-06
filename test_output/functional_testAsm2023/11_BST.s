.arch armv7-a
.fpu vfpv3-d16
.arm
.data
space:
	.word  32
LF:
	.word  10
maxNode:
	.word  10000
value:
	.space  40000
left_child:
	.space  40000
right_child:
	.space  40000
now:
	.word  0
.text
.global main
.LPIC0:
	.word  LF
.LPIC1:
	.word  left_child
.LPIC2:
	.word  maxNode
.LPIC3:
	.word  now
.LPIC4:
	.word  right_child
.LPIC5:
	.word  space
.LPIC6:
	.word  value
inorder:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.inorderL0:
	str r0,[fp,#-12]
.inorderL1:
	ldr r8,[fp,#-12]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bne .inorderL2
.inorderL3:
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.inorderL2:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	@call void @inorder(i32 %r10)
	mov r0,r8
	bl inorder
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC6
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r13)
	mov r0,r8
	bl putint
	ldr r8,.LPIC5
	ldr r7,[r8]
	@call void @putch(i32 %r14)
	mov r0,r7
	bl putch
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC4
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	@call void @inorder(i32 %r17)
	mov r0,r8
	bl inorder
	bl .inorderL3
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.mainL0:
.mainL1:
	mov r8,#0
	ldr r7,.LPIC3
	str r8,[r7]
	@%r2 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	cmp r8,#0
	beq .mainL2
.mainL3:
	@%r9 = call i32 @getint()
	bl getint
	mov r8,r0
	@%r10 = call i32 @new_node(i32 %r9)
	mov r0,r8
	bl new_node
	mov r7,r0
	str r7,[fp,#-16]
	mov r8,#1
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .mainL5
.mainL7:
	ldr r8,[fp,#-16]
	@call void @inorder(i32 %r29)
	mov r0,r8
	bl inorder
	ldr r8,.LPIC0
	ldr r7,[r8]
	@call void @putch(i32 %r30)
	mov r0,r7
	bl putch
	@%r31 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .mainL9
.mainL11:
	ldr r8,[fp,#-16]
	@call void @inorder(i32 %r49)
	mov r0,r8
	bl inorder
	ldr r8,.LPIC0
	ldr r7,[r8]
	@call void @putch(i32 %r50)
	mov r0,r7
	bl putch
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL9:
	ldr r8,[fp,#-16]
	@%r39 = call i32 @getint()
	bl getint
	mov r7,r0
	@%r40 = call i32 @delete(i32 %r38,i32 %r39)
	mov r0,r8
	mov r1,r7
	bl delete
	mov r6,r0
	str r6,[fp,#-16]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.mainL10:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .mainL9
	bge .mainL11
.mainL5:
	ldr r8,[fp,#-16]
	@%r19 = call i32 @getint()
	bl getint
	mov r7,r0
	@%r20 = call i32 @insert(i32 %r18,i32 %r19)
	mov r0,r8
	mov r1,r7
	bl insert
	mov r6,r0
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.mainL6:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .mainL5
	bge .mainL7
.mainL2:
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r6,r7,r8}
	pop {fp,pc}
find_minimum:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.find_minimumL0:
	str r0,[fp,#-12]
.find_minimumL1:
	ldr r8,[fp,#-12]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	beq .find_minimumL2
.find_minimumL3:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bne .find_minimumL5
.find_minimumL6:
.find_minimumL4:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.find_minimumL5:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	@%r21 = call i32 @find_minimum(i32 %r20)
	mov r0,r8
	bl find_minimum
	mov r7,r0
	mov r0,r7
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.find_minimumL2:
	mov r8,#1
	rsb r7,r8,#0
	mov r0,r7
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
search:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.searchL0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
.searchL1:
	ldr r8,[fp,#-12]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	beq .searchL2
.searchL5:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC6
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-16]
	cmp r8,r7
	beq .searchL2
.searchL3:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	mov r6,r7
	ldr r7,.LPIC6
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	cmp r8,r7
	bgt .searchL7
.searchL8:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-16]
	@%r37 = call i32 @search(i32 %r35,i32 %r36)
	mov r0,r8
	mov r1,r7
	bl search
	mov r6,r0
	mov r0,r6
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.searchL7:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC4
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-16]
	@%r32 = call i32 @search(i32 %r30,i32 %r31)
	mov r0,r8
	mov r1,r7
	bl search
	mov r6,r0
	mov r0,r6
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.searchL2:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
new_node:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.new_nodeL0:
	str r0,[fp,#-12]
.new_nodeL1:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC3
	ldr r6,[r7]
	mov r7,r6
	ldr r6,.LPIC6
	add r5,r6,r7,lsl #2
	str r8,[r5]
	mov r8,#1
	rsb r7,r8,#0
	ldr r8,.LPIC3
	ldr r6,[r8]
	mov r8,r6
	ldr r6,.LPIC1
	add r5,r6,r8,lsl #2
	str r7,[r5]
	mov r8,#1
	rsb r7,r8,#0
	ldr r8,.LPIC3
	ldr r6,[r8]
	mov r8,r6
	ldr r6,.LPIC4
	add r5,r6,r8,lsl #2
	str r7,[r5]
	ldr r8,.LPIC3
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC3
	str r6,[r8]
	ldr r8,.LPIC3
	ldr r7,[r8]
	mov r8,#1
	sub r6,r7,r8
	mov r0,r6
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
insert:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.insertL0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
.insertL1:
	ldr r8,[fp,#-12]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	beq .insertL2
.insertL3:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	mov r6,r7
	ldr r7,.LPIC6
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	cmp r8,r7
	bgt .insertL5
.insertL6:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-16]
	@%r30 = call i32 @insert(i32 %r28,i32 %r29)
	mov r0,r8
	mov r1,r7
	bl insert
	mov r6,r0
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC1
	add r5,r8,r7,lsl #2
	str r6,[r5]
.insertL7:
.insertL4:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.insertL5:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC4
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-16]
	@%r23 = call i32 @insert(i32 %r21,i32 %r22)
	mov r0,r8
	mov r1,r7
	bl insert
	mov r6,r0
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC4
	add r5,r8,r7,lsl #2
	str r6,[r5]
	bl .insertL7
.insertL2:
	ldr r8,[fp,#-16]
	@%r11 = call i32 @new_node(i32 %r10)
	mov r0,r8
	bl new_node
	mov r7,r0
	mov r0,r7
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
delete:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#28
.deleteL0:
	str r0,[fp,#-16]
	str r1,[fp,#-20]
.deleteL1:
	ldr r8,[fp,#-16]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	beq .deleteL2
.deleteL3:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	mov r6,r7
	ldr r7,.LPIC6
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	cmp r8,r7
	bgt .deleteL4
.deleteL5:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	mov r6,r7
	ldr r7,.LPIC6
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	cmp r8,r7
	blt .deleteL7
.deleteL8:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	beq .deleteL13
.deleteL11:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC1
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	beq .deleteL15
.deleteL18:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC4
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	beq .deleteL15
.deleteL16:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC4
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	@%r98 = call i32 @find_minimum(i32 %r97)
	mov r0,r8
	bl find_minimum
	mov r7,r0
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC6
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-16]
	mov r6,r7
	ldr r7,.LPIC6
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC4
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-12]
	mov r6,r7
	ldr r7,.LPIC6
	add r5,r7,r6,lsl #2
	ldr r7,[r5]
	@%r110 = call i32 @delete(i32 %r106,i32 %r109)
	mov r0,r8
	mov r1,r7
	bl delete
	mov r6,r0
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC4
	add r5,r8,r7,lsl #2
	str r6,[r5]
.deleteL17:
.deleteL12:
.deleteL9:
.deleteL6:
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#28
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.deleteL15:
	ldr r8,[fp,#-16]
	mov r9,r8
	str r9,[fp,#-28]
	bl .LPIC8
.LPIC7:
	.word left_child
.LPIC8:
	ldr r6,.LPIC7
	ldr r9,[fp,#-28]
	add r5,r6,r9,lsl #2
	ldr r9,[r5]
	str r9,[fp,#-24]
	mov r3,#1
	rsb r2,r3,#0
	ldr r9,[fp,#-24]
	cmp r9,r2
	beq .deleteL20
.deleteL21:
	ldr r0,[fp,#-16]
	mov r4,r0
	ldr r0,.LPIC7
	add r7,r0,r4,lsl #2
	ldr r4,[r7]
	mov r0,r4
	add sp,sp,#28
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.deleteL20:
	ldr r7,[fp,#-16]
	mov r4,r7
	bl .LPIC10
.LPIC9:
	.word right_child
.LPIC10:
	ldr r7,.LPIC9
	add r0,r7,r4,lsl #2
	ldr r7,[r0]
	mov r0,r7
	add sp,sp,#28
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.deleteL13:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC9
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bne .deleteL11
.deleteL10:
	mov r8,#1
	rsb r7,r8,#0
	mov r0,r7
	add sp,sp,#28
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.deleteL7:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC7
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-20]
	@%r37 = call i32 @delete(i32 %r35,i32 %r36)
	mov r0,r8
	mov r1,r7
	bl delete
	mov r6,r0
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC7
	add r5,r8,r7,lsl #2
	str r6,[r5]
	bl .deleteL9
.deleteL4:
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC9
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-20]
	@%r23 = call i32 @delete(i32 %r21,i32 %r22)
	mov r0,r8
	mov r1,r7
	bl delete
	mov r6,r0
	ldr r8,[fp,#-16]
	mov r7,r8
	ldr r8,.LPIC9
	add r5,r8,r7,lsl #2
	str r6,[r5]
	bl .deleteL6
.deleteL2:
	mov r8,#1
	rsb r7,r8,#0
	mov r0,r7
	add sp,sp,#28
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
