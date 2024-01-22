.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	movw r9,#28872
	movt r9,#0  @ 28872
	sub sp,sp,r9
.mainL0:
.mainL1:
	movw r8,#36672
	movt r8,#65535  @ -28864
	add r7,fp,r8
	@call void @memset(i32 %r95,i32 0,i32 16348)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	movw r2,#16348
	movt r2,#0  @ 16348
	bl memset
	add sp,sp,#4 @stack align 8bytes
	movw r8,#53020
	movt r8,#65535  @ -12516
	add r7,fp,r8
	@call void @memset(i32 %r97,i32 0,i32 12508)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	movw r2,#12508
	movt r2,#0  @ 12508
	bl memset
	add sp,sp,#4 @stack align 8bytes
	movw r8,#1140
	movt r8,#0  @ 1140
	mov r7,r8
	movw r8,#36672
	movt r8,#65535  @ -28864
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	mov r7,#6
	str r7,[r8]
	movw r7,#1142
	movt r7,#0  @ 1142
	mov r6,r7
	movw r7,#36672
	movt r7,#65535  @ -28864
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	mov r6,#7
	str r6,[r7]
	movw r6,#1143
	movt r6,#0  @ 1143
	mov r5,r6
	movw r6,#36672
	movt r6,#65535  @ -28864
	add r4,fp,r6
	add r6,r4,r5,lsl #2
	mov r5,#4
	str r5,[r6]
	movw r6,#1146
	movt r6,#0  @ 1146
	mov r5,r6
	movw r6,#36672
	movt r6,#65535  @ -28864
	add r4,fp,r6
	add r6,r4,r5,lsl #2
	mov r5,#9
	str r5,[r6]
	movw r6,#1150
	movt r6,#0  @ 1150
	mov r5,r6
	movw r6,#36672
	movt r6,#65535  @ -28864
	add r4,fp,r6
	add r6,r4,r5,lsl #2
	mov r5,#11
	str r5,[r6]
	movw r6,#355
	movt r6,#0  @ 355
	mov r5,r6
	movw r6,#53020
	movt r6,#65535  @ -12516
	add r4,fp,r6
	add r6,r4,r5,lsl #2
	mov r5,#1
	str r5,[r6]
	mov r6,#356
	movw r5,#53020
	movt r5,#65535  @ -12516
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	mov r6,#2
	str r6,[r5]
	movw r6,#357
	movt r6,#0  @ 357
	mov r5,r6
	movw r6,#53020
	movt r6,#65535  @ -12516
	add r4,fp,r6
	add r6,r4,r5,lsl #2
	mov r5,#3
	str r5,[r6]
	movw r6,#363
	movt r6,#0  @ 363
	mov r5,r6
	movw r6,#53020
	movt r6,#65535  @ -12516
	add r4,fp,r6
	add r6,r4,r5,lsl #2
	mov r5,#9
	str r5,[r6]
	ldr r9,[r8]
	movw r10,#36668
	movt r10,#65535  @ -28868
	str r9,[fp,r10]
	movw r8,#53020
	movt r8,#65535  @ -12516
	add r9,fp,r8
	movw r10,#36664
	movt r10,#65535  @ -28872
	str r9,[fp,r10]
	ldr r8,[r7]
	movw r7,#1139
	movt r7,#0  @ 1139
	mov r4,r7
	movw r7,#36672
	movt r7,#65535  @ -28864
	add r3,fp,r7
	add r7,r3,r4,lsl #2
	movw r4,#357
	movt r4,#0  @ 357
	mov r3,r4
	movw r4,#53020
	movt r4,#65535  @ -12516
	add r2,fp,r4
	add r4,r2,r3,lsl #2
	ldr r3,[r4]
	movw r4,#354
	movt r4,#0  @ 354
	mov r2,r4
	movw r4,#53020
	movt r4,#65535  @ -12516
	add r1,fp,r4
	add r4,r1,r2,lsl #2
	ldr r2,[r4]
	movw r4,#354
	movt r4,#0  @ 354
	mov r1,r4
	movw r4,#53020
	movt r4,#65535  @ -12516
	add r0,fp,r4
	add r4,r0,r1,lsl #2
	movw r1,#2010
	movt r1,#0  @ 2010
	mov r0,r1
	movw r1,#53020
	movt r1,#65535  @ -12516
	add r6,fp,r1
	add r1,r6,r0,lsl #2
	ldr r6,[r1]
	movw r1,#3027
	movt r1,#0  @ 3027
	mov r0,r1
	movw r1,#53020
	movt r1,#65535  @ -12516
	add r5,fp,r1
	add r1,r5,r0,lsl #2
	ldr r5,[r1]
	@%r69 = call i32 @func(i32 %r43,ptr %r44,i32 %r48,ptr %r50,i32 %r54,i32 %r58,ptr %r60,i32 %r64,i32 %r68)
	push {r2,r3}
	sub sp,sp,#20
	str r5,[sp,#16]  @%r68
	str r6,[sp,#12]  @%r64
	str r4,[sp,#8]  @%r60
	str r2,[sp,#4]  @%r58
	str r3,[sp,#0]  @%r54
	movw r10,#36668
	movt r10,#65535  @ -28868
	ldr r0,[fp,r10]
	movw r10,#36664
	movt r10,#65535  @ -28872
	ldr r1,[fp,r10]
	mov r2,r8
	mov r3,r7
	bl func
	add sp,sp,#20
	mov r1,r0
	pop {r2,r3}
	add r8,r1,r1,lsl #1
	cmp r8,#0
	bge .mainL6
.mainL5:
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r0,#0
	movw r9,#28872
	movt r9,#0  @ 28872
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL6:
	mov r7,r8
.mainL3:
	mov r8,r7
	movw r6,#354
	movt r6,#0  @ 354
	add r8,r8,r6
	movw r6,#53020
	movt r6,#65535  @ -12516
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r80)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#32
	bl putch
	add sp,sp,#4 @stack align 8bytes
	sub r8,r7,#1
.mainL4:
	cmp r8,#0
	blt .mainL5
.mainL7:
	mov r7,r8
	bl .mainL3
func:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#32
.funcL0:
	mov r9,r3
	str r9,[fp,#-16]
	mov r9,r2
	str r9,[fp,#-12]
	ldr r9,[fp,#48]
	str r9,[fp,#-32]
	ldr r9,[fp,#44]
	str r9,[fp,#-28]
	ldr r8,[fp,#40]
	ldr r9,[fp,#36]
	str r9,[fp,#-20]
	ldr r9,[fp,#32]
	str r9,[fp,#-24]
.funcL1:
.funcL10:
	mov r2,#59
	mul r2,r0,r2
	mov r0,r2
	add r2,r1,r0,lsl #2
	mov r1,#0
.funcL3:
	mov r0,r1
	add r3,r2,r0,lsl #2
	ldr r0,[r3]
	@call void @putint(i32 %r25)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	bl putint
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	add r3,r1,#1
.funcL4:
	cmp r3,#10
	blt .funcL12
.funcL5:
	@call void @putch(i32 10)
	push {r1,r2,r3}
	mov r0,#10
	bl putch
	pop {r1,r2,r3}
	ldr r9,[fp,#-12]
	mov r0,r9
	ldr r9,[fp,#-16]
	add r7,r9,r0,lsl #2
	ldr r0,[r7]
	@call void @putint(i32 %r37)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	bl putint
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	push {r1,r2,r3}
	mov r0,#10
	bl putch
	pop {r1,r2,r3}
	ldr r9,[fp,#-32]
	cmp r9,#10
	blt .funcL11
.funcL9:
	ldr r9,[fp,#-24]
	ldr r10,[fp,#-20]
	add r7,r9,r10
	mov r0,r7
	add sp,sp,#32
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.funcL11:
	ldr r9,[fp,#-28]
	mov r7,r9
	ldr r9,[fp,#-32]
	mov r0,r9
.funcL7:
	movw r6,#63339
	movt r6,#1  @ 128875
	mul r4,r7,r6
	movw r6,#18373
	movt r6,#36041  @ -1932965947
	smmul r6,r4,r6
	asr r5,r4,#31
	add r6,r4,r6
	rsb r6,r5,r6,asr #11
	movw r5,#3724
	movt r5,#0  @ 3724
	mul r6,r6,r5
	sub r5,r4,r6
	mov r6,r0
	add r4,r8,r6,lsl #2
	str r5,[r4]
	add r6,r0,#1
	add r5,r7,#7
.funcL8:
	cmp r6,#10
	bge .funcL9
.funcL13:
	mov r7,r5
	mov r0,r6
	bl .funcL7
.funcL12:
	mov r1,r3
	bl .funcL3
	.section	.note.GNU-stack,"",%progbits
