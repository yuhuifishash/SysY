.arch armv7-a
.fpu vfpv3-d16
.arm
.data
len:
	.word  20
.text
.global main
.LPIC0:
	.word  len
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	mov r9,#572
	sub sp,sp,r9
.mainL0:
.mainL1:
	movw r8,#65008
	movt r8,#65535  @ -528
	add r7,fp,r8
	@call void @memset(i32 %r308,i32 0,i32 80)
	mov r0,r7
	mov r1,#0
	mov r2,#80
	bl memset
	movw r8,#65008
	movt r8,#65535  @ -528
	add r7,fp,r8
	mov r8,#1
	str r8,[r7]
	mov r8,#1
	movw r7,#65008
	movt r7,#65535  @ -528
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#2
	movw r7,#65008
	movt r7,#65535  @ -528
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#3
	movw r7,#65008
	movt r7,#65535  @ -528
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#4
	movw r7,#65008
	movt r7,#65535  @ -528
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mov r8,#5
	movw r7,#65008
	movt r7,#65535  @ -528
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#6
	str r8,[r7]
	mov r8,#6
	movw r7,#65008
	movt r7,#65535  @ -528
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#7
	str r8,[r7]
	mov r8,#7
	movw r7,#65008
	movt r7,#65535  @ -528
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#8
	str r8,[r7]
	mov r8,#8
	movw r7,#65008
	movt r7,#65535  @ -528
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#9
	str r8,[r7]
	mov r8,#9
	movw r7,#65008
	movt r7,#65535  @ -528
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#0
	str r8,[r7]
	mov r8,#10
	movw r7,#65008
	movt r7,#65535  @ -528
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#11
	movw r7,#65008
	movt r7,#65535  @ -528
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#12
	movw r7,#65008
	movt r7,#65535  @ -528
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#13
	movw r7,#65008
	movt r7,#65535  @ -528
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#14
	movw r7,#65008
	movt r7,#65535  @ -528
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mov r8,#15
	movw r7,#65008
	movt r7,#65535  @ -528
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#6
	str r8,[r7]
	mov r8,#16
	movw r7,#65008
	movt r7,#65535  @ -528
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#7
	str r8,[r7]
	mov r8,#17
	movw r7,#65008
	movt r7,#65535  @ -528
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#8
	str r8,[r7]
	mov r8,#18
	movw r7,#65008
	movt r7,#65535  @ -528
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#9
	str r8,[r7]
	mov r8,#19
	movw r7,#65008
	movt r7,#65535  @ -528
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#0
	str r8,[r7]
	movw r8,#65088
	movt r8,#65535  @ -448
	add r7,fp,r8
	@call void @memset(i32 %r410,i32 0,i32 80)
	mov r0,r7
	mov r1,#0
	mov r2,#80
	bl memset
	movw r8,#65088
	movt r8,#65535  @ -448
	add r7,fp,r8
	mov r8,#2
	str r8,[r7]
	mov r8,#1
	movw r7,#65088
	movt r7,#65535  @ -448
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#2
	movw r7,#65088
	movt r7,#65535  @ -448
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#3
	movw r7,#65088
	movt r7,#65535  @ -448
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#4
	movw r7,#65088
	movt r7,#65535  @ -448
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mov r8,#5
	movw r7,#65088
	movt r7,#65535  @ -448
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#7
	str r8,[r7]
	mov r8,#6
	movw r7,#65088
	movt r7,#65535  @ -448
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#9
	str r8,[r7]
	mov r8,#7
	movw r7,#65088
	movt r7,#65535  @ -448
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#9
	str r8,[r7]
	mov r8,#8
	movw r7,#65088
	movt r7,#65535  @ -448
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#0
	str r8,[r7]
	mov r8,#9
	movw r7,#65088
	movt r7,#65535  @ -448
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#10
	movw r7,#65088
	movt r7,#65535  @ -448
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#9
	str r8,[r7]
	mov r8,#11
	movw r7,#65088
	movt r7,#65535  @ -448
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#8
	str r8,[r7]
	mov r8,#12
	movw r7,#65088
	movt r7,#65535  @ -448
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#7
	str r8,[r7]
	mov r8,#13
	movw r7,#65088
	movt r7,#65535  @ -448
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#6
	str r8,[r7]
	mov r8,#14
	movw r7,#65088
	movt r7,#65535  @ -448
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#15
	movw r7,#65088
	movt r7,#65535  @ -448
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#16
	movw r7,#65088
	movt r7,#65535  @ -448
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#17
	movw r7,#65088
	movt r7,#65535  @ -448
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#18
	movw r7,#65088
	movt r7,#65535  @ -448
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#19
	movw r7,#65088
	movt r7,#65535  @ -448
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mvn r8,#167
	add r7,fp,r8
	@call void @memset(i32 %r512,i32 0,i32 160)
	mov r0,r7
	mov r1,#0
	mov r2,#160
	bl memset
.mainL31:
	mov r9,#0
	str r9,[fp,#-540]
.mainL3:
	ldr r9,[fp,#-540]
	mov r7,r9
	movw r6,#65008
	movt r6,#65535  @ -528
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	ldr r7,[r6]
	ldr r9,[fp,#-540]
	mov r6,r9
	movw r5,#65168
	movt r5,#65535  @ -368
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	str r7,[r5]
	ldr r9,[fp,#-540]
	add r10,r9,#1
	str r10,[fp,#-532]
.mainL4:
	ldr r9,[fp,#-532]
	cmp r9,#20
	blt .mainL37
.mainL5:
.mainL32:
	mov r9,#0
	str r9,[fp,#-560]
.mainL7:
	ldr r9,[fp,#-560]
	mov r5,r9
	movw r4,#65088
	movt r4,#65535  @ -448
	add r3,fp,r4
	add r4,r3,r5,lsl #2
	ldr r5,[r4]
	ldr r9,[fp,#-560]
	mov r4,r9
	movw r3,#65268
	movt r3,#65535  @ -268
	add r2,fp,r3
	add r3,r2,r4,lsl #2
	str r5,[r3]
	ldr r9,[fp,#-560]
	add r10,r9,#1
	str r10,[fp,#-536]
.mainL8:
	ldr r9,[fp,#-536]
	cmp r9,#20
	blt .mainL38
.mainL9:
.mainL33:
	mov r9,#0
	str r9,[fp,#-544]
.mainL11:
	ldr r9,[fp,#-544]
	mov r3,r9
	mvn r2,#167
	add r1,fp,r2
	add r2,r1,r3,lsl #2
	mov r3,#0
	str r3,[r2]
	ldr r9,[fp,#-544]
	add r10,r9,#1
	str r10,[fp,#-548]
.mainL12:
	ldr r9,[fp,#-548]
	cmp r9,#39
	ble .mainL39
.mainL13:
.mainL34:
	mov r9,#39
	str r9,[fp,#-552]
	mov r9,#19
	str r9,[fp,#-564]
.mainL15:
	ldr r9,[fp,#-564]
	mov r0,r9
	movw r7,#65268
	movt r7,#65535  @ -268
	add r5,fp,r7
	add r7,r5,r0,lsl #2
	ldr r9,[r7]
	str r9,[fp,#-556]
.mainL35:
	ldr r9,[fp,#-552]
	mov r7,r9
	mov r9,#19
	str r9,[fp,#-572]
.mainL19:
	mov r8,r7
	mvn r4,#167
	add r3,fp,r4
	add r4,r3,r8,lsl #2
	ldr r8,[r4]
	ldr r9,[fp,#-572]
	mov r4,r9
	movw r3,#65168
	movt r3,#65535  @ -368
	add r2,fp,r3
	add r3,r2,r4,lsl #2
	ldr r4,[r3]
	ldr r9,[fp,#-556]
	mul r3,r9,r4
	add r4,r8,r3
	cmp r4,#10
	bge .mainL22
.mainL23:
	mov r8,r7
	mvn r3,#167
	add r2,fp,r3
	add r3,r2,r8,lsl #2
	str r4,[r3]
.mainL24:
	ldr r9,[fp,#-572]
	sub r8,r9,#1
	sub r3,r7,#1
.mainL20:
	mvn r2,#0
	cmp r8,r2
	bgt .mainL41
.mainL21:
	add r5,r3,#20
	sub r9,r5,#1
	str r9,[fp,#-568]
	ldr r9,[fp,#-564]
	sub r5,r9,#1
.mainL16:
	mvn r6,#0
	cmp r5,r6
	bgt .mainL40
.mainL17:
	mvn r6,#167
	add r1,fp,r6
	ldr r6,[r1]
	cmp r6,#0
	bne .mainL25
.mainL26:
.mainL36:
	mov r6,#1
.mainL28:
	mov r1,r6
	mvn r2,#167
	add r0,fp,r2
	add r2,r0,r1,lsl #2
	ldr r1,[r2]
	@call void @putint(i32 %r262)
	push {r0,r1,r2,r3}
	mov r0,r1
	bl putint
	pop {r0,r1,r2,r3}
	add r2,r6,#1
.mainL29:
	cmp r2,#39
	ble .mainL42
.mainL30:
	mov r0,#0
	mov r9,#572
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL42:
	mov r6,r2
	bl .mainL28
.mainL25:
	mvn r6,#167
	add r2,fp,r6
	ldr r6,[r2]
	@call void @putint(i32 %r249)
	push {r0,r1,r2,r3}
	mov r0,r6
	bl putint
	pop {r0,r1,r2,r3}
	bl .mainL26
.mainL40:
	ldr r9,[fp,#-568]
	mov r10,r9
	str r10,[fp,#-552]
	mov r9,r5
	str r9,[fp,#-564]
	bl .mainL15
.mainL41:
	mov r7,r3
	mov r9,r8
	str r9,[fp,#-572]
	bl .mainL19
.mainL22:
	mov r8,r7
	mvn r6,#167
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r4,[r6]
	sub r8,r7,#1
	mov r6,r8
	mvn r8,#167
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	ldr r6,[r8]
	movw r5,#26215
	movt r5,#26214  @ 1717986919
	smmul r5,r4,r5
	asr r3,r4,#31
	rsb r4,r3,r5,asr #2
	add r5,r6,r4
	str r5,[r8]
	bl .mainL24
.mainL39:
	ldr r9,[fp,#-548]
	mov r10,r9
	str r10,[fp,#-544]
	bl .mainL11
.mainL38:
	ldr r9,[fp,#-536]
	mov r10,r9
	str r10,[fp,#-560]
	bl .mainL7
.mainL37:
	ldr r9,[fp,#-532]
	mov r10,r9
	str r10,[fp,#-540]
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
