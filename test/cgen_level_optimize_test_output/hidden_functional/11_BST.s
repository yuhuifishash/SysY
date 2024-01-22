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
	sub sp,sp,#8
.inorderL0:
.inorderL1:
	mvn r8,#0
	cmp r0,r8
	bne .inorderL2
.inorderL3:
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.inorderL2:
	mov r8,r0
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@call void @inorder(i32 %r10)
	push {r0}
	mov r0,r8
	bl inorder
	pop {r0}
	mov r8,r0
	ldr r7,.LPIC6
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r13)
	push {r0}
	mov r0,r8
	bl putint
	pop {r0}
	@call void @putch(i32 32)
	push {r0}
	mov r0,#32
	bl putch
	pop {r0}
	mov r8,r0
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@call void @inorder(i32 %r17)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl inorder
	add sp,sp,#4 @stack align 8bytes
	bl .inorderL3
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	mov r8,#0
	ldr r7,.LPIC3
	str r8,[r7]
	@%r2 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#0
	beq .mainL2
.mainL3:
	@%r9 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	@%r10 = call i32 @new_node(i32 %r9)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl new_node
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#1
	bgt .mainL12
.mainL7:
	@call void @inorder(i32 %r10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl inorder
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@%r31 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bgt .mainL13
.mainL16:
	mov r5,r6
.mainL11:
	@call void @inorder(i32 %r57)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	bl inorder
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL13:
	mov r4,#0
	mov r3,r6
.mainL9:
	@%r39 = call i32 @getint()
	push {r3}
	bl getint
	mov r2,r0
	pop {r3}
	@%r40 = call i32 @delete(i32 %r56,i32 %r39)
	sub sp,sp,#4 @stack align 8bytes
	push {r2,r3}
	mov r0,r3
	mov r1,r2
	bl delete
	mov r1,r0
	pop {r2,r3}
	add sp,sp,#4 @stack align 8bytes
	add r2,r4,#1
.mainL10:
	cmp r2,r7
	blt .mainL15
.mainL17:
	mov r5,r1
	bl .mainL11
.mainL15:
	mov r4,r2
	mov r3,r1
	bl .mainL9
.mainL12:
	mov r7,#1
.mainL5:
	@%r19 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	@%r20 = call i32 @insert(i32 %r10,i32 %r19)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,r5
	bl insert
	mov r4,r0
	add sp,sp,#4 @stack align 8bytes
	add r5,r7,#1
.mainL6:
	cmp r5,r8
	bge .mainL7
.mainL14:
	mov r7,r5
	bl .mainL5
.mainL2:
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
find_minimum:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.find_minimumL0:
.find_minimumL7:
	mov r8,r0
.find_minimumL1:
	mvn r7,#0
	cmp r8,r7
	beq .find_minimumL2
.find_minimumL3:
	mov r7,r8
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mvn r6,#0
	cmp r7,r6
	bne .find_minimumL5
.find_minimumL6:
.find_minimumL4:
	mov r0,r8
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.find_minimumL5:
	mov r7,r8
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	mov r8,r7
	bl .find_minimumL1
.find_minimumL2:
	mov r0,#-1
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
search:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.searchL0:
.searchL10:
	mov r8,r1
	mov r7,r0
.searchL1:
	mvn r6,#0
	cmp r7,r6
	beq .searchL2
.searchL5:
	mov r6,r7
	ldr r5,.LPIC6
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r6,r8
	beq .searchL2
.searchL3:
	mov r6,r7
	ldr r5,.LPIC6
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	cmp r8,r6
	bgt .searchL7
.searchL8:
	mov r6,r7
	ldr r5,.LPIC1
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	mov r7,r6
	bl .searchL1
.searchL7:
	mov r6,r7
	ldr r5,.LPIC4
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	mov r7,r6
	bl .searchL1
.searchL2:
	mov r0,r7
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
new_node:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.new_nodeL0:
.new_nodeL1:
	ldr r8,.LPIC3
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC6
	add r6,r7,r8,lsl #2
	str r0,[r6]
	ldr r8,.LPIC3
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	mvn r8,#0
	str r8,[r6]
	ldr r8,.LPIC3
	ldr r7,[r8]
	mov r8,r7
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	mvn r8,#0
	str r8,[r6]
	ldr r8,.LPIC3
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC3
	str r8,[r7]
	ldr r8,.LPIC3
	ldr r7,[r8]
	sub r8,r7,#1
	mov r0,r8
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
insert:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.insertL0:
.insertL1:
	mvn r8,#0
	cmp r0,r8
	beq .insertL2
.insertL3:
	mov r8,r0
	ldr r7,.LPIC6
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	cmp r1,r8
	bgt .insertL5
.insertL6:
	mov r8,r0
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@%r30 = call i32 @insert(i32 %r28,i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	mov r0,r8
	bl insert
	mov r7,r0
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	str r7,[r6]
.insertL7:
.insertL4:
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.insertL5:
	mov r8,r0
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@%r23 = call i32 @insert(i32 %r21,i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	mov r0,r8
	bl insert
	mov r7,r0
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	str r7,[r6]
	bl .insertL7
.insertL2:
	@%r11 = call i32 @new_node(i32 %r1)
	push {r1}
	mov r0,r1
	bl new_node
	mov r8,r0
	pop {r1}
	mov r0,r8
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
delete:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#16
.deleteL0:
	mov r9,r0
	str r9,[fp,#-16]
	mov r9,r1
	str r9,[fp,#-12]
.deleteL1:
	mvn r8,#0
	ldr r9,[fp,#-16]
	cmp r9,r8
	beq .deleteL2
.deleteL3:
	ldr r9,[fp,#-16]
	mov r8,r9
	ldr r7,.LPIC6
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-12]
	cmp r9,r8
	bgt .deleteL4
.deleteL5:
	ldr r9,[fp,#-16]
	mov r8,r9
	ldr r7,.LPIC6
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-12]
	cmp r9,r8
	blt .deleteL7
.deleteL8:
	ldr r9,[fp,#-16]
	mov r8,r9
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mvn r7,#0
	cmp r8,r7
	beq .deleteL13
.deleteL11:
	ldr r9,[fp,#-16]
	mov r8,r9
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mvn r7,#0
	cmp r8,r7
	beq .deleteL15
.deleteL18:
	ldr r9,[fp,#-16]
	mov r8,r9
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mvn r7,#0
	cmp r8,r7
	beq .deleteL15
.deleteL16:
	ldr r9,[fp,#-16]
	mov r8,r9
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@%r98 = call i32 @find_minimum(i32 %r97)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	mov r0,r8
	bl find_minimum
	mov r7,r0
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	mov r8,r7
	ldr r7,.LPIC6
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	ldr r9,[fp,#-16]
	mov r7,r9
	ldr r4,.LPIC6
	add r3,r4,r7,lsl #2
	str r8,[r3]
	ldr r8,[r6]
	ldr r7,[r5]
	@%r110 = call i32 @delete(i32 %r106,i32 %r109)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	mov r0,r8
	mov r1,r7
	bl delete
	mov r5,r0
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	str r5,[r6]
.deleteL17:
.deleteL12:
.deleteL9:
.deleteL6:
	ldr r9,[fp,#-16]
	mov r0,r9
	add sp,sp,#16
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.deleteL15:
	ldr r9,[fp,#-16]
	mov r8,r9
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r5,[r6]
	mvn r4,#0
	cmp r5,r4
	beq .deleteL20
.deleteL21:
	ldr r9,[fp,#-16]
	mov r2,r9
	ldr r1,.LPIC1
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	mov r0,r2
	add sp,sp,#16
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.deleteL20:
	ldr r9,[fp,#-16]
	mov r2,r9
	ldr r1,.LPIC4
	add r0,r1,r2,lsl #2
	ldr r2,[r0]
	mov r0,r2
	add sp,sp,#16
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.deleteL13:
	ldr r9,[fp,#-16]
	mov r8,r9
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mvn r7,#0
	cmp r8,r7
	bne .deleteL11
.deleteL10:
	mov r0,#-1
	add sp,sp,#16
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.deleteL7:
	ldr r9,[fp,#-16]
	mov r8,r9
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@%r37 = call i32 @delete(i32 %r35,i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	mov r0,r8
	ldr r1,[fp,#-12]
	bl delete
	mov r7,r0
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	str r7,[r6]
	bl .deleteL9
.deleteL4:
	ldr r9,[fp,#-16]
	mov r8,r9
	ldr r7,.LPIC4
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@%r23 = call i32 @delete(i32 %r21,i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	mov r0,r8
	ldr r1,[fp,#-12]
	bl delete
	mov r7,r0
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	str r7,[r6]
	bl .deleteL6
.deleteL2:
	mov r0,#-1
	add sp,sp,#16
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
