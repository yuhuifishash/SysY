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
	movw r9,#28876
	movt r9,#0  @ 28876
	sub sp,sp,r9
.mainL0:
.mainL1:
	movw r8,#36668
	movt r8,#65535  @ -28868
	add r7,fp,r8
	@call void @memset(i32 %r87,i32 0,i32 16348)
	mov r0,r7
	mov r1,#0
	movw r2,#16348
	movt r2,#0  @ 16348
	bl memset
	movw r8,#53016
	movt r8,#65535  @ -12520
	add r7,fp,r8
	@call void @memset(i32 %r89,i32 0,i32 12508)
	mov r0,r7
	mov r1,#0
	movw r2,#12508
	movt r2,#0  @ 12508
	bl memset
	mov r8,#6
	mov r7,#17
	mov r6,#1
	mov r5,#67
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	movw r6,#36668
	movt r6,#65535  @ -28868
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#7
	mov r7,#17
	mov r6,#3
	mov r5,#67
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	movw r6,#36668
	movt r6,#65535  @ -28868
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#17
	mov r6,#4
	mov r5,#67
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	movw r6,#36668
	movt r6,#65535  @ -28868
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#9
	mov r7,#17
	mov r6,#7
	mov r5,#67
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	movw r6,#36668
	movt r6,#65535  @ -28868
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#11
	mov r7,#17
	mov r6,#11
	mov r5,#67
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	movw r6,#36668
	movt r6,#65535  @ -28868
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#6
	mov r6,#1
	mov r5,#59
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	movw r6,#53016
	movt r6,#65535  @ -12520
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	mov r7,#6
	mov r6,#2
	mov r5,#59
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	movw r6,#53016
	movt r6,#65535  @ -12520
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#6
	mov r6,#3
	mov r5,#59
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	movw r6,#53016
	movt r6,#65535  @ -12520
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#9
	mov r7,#6
	mov r6,#9
	mov r5,#59
	mul r5,r7,r5
	mov r7,r5
	add r7,r7,r6
	movw r6,#53016
	movt r6,#65535  @ -12520
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#17
	mov r7,#1
	mov r6,#67
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	movw r7,#36668
	movt r7,#65535  @ -28868
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r9,[r7]
	movw r10,#36664
	movt r10,#65535  @ -28872
	str r9,[fp,r10]
	movw r7,#53016
	movt r7,#65535  @ -12520
	add r9,fp,r7
	movw r10,#36660
	movt r10,#65535  @ -28876
	str r9,[fp,r10]
	mov r7,#17
	mov r5,#3
	mov r4,#67
	mul r4,r7,r4
	mov r7,r4
	add r7,r7,r5
	movw r5,#36668
	movt r5,#65535  @ -28868
	add r4,fp,r5
	add r5,r4,r7,lsl #2
	ldr r7,[r5]
	mov r5,#17
	mov r4,#67
	mul r4,r5,r4
	mov r5,r4
	movw r4,#36668
	movt r4,#65535  @ -28868
	add r3,fp,r4
	add r4,r3,r5,lsl #2
	mov r5,#6
	mov r3,#3
	mov r2,#59
	mul r2,r5,r2
	mov r5,r2
	add r5,r5,r3
	movw r3,#53016
	movt r3,#65535  @ -12520
	add r2,fp,r3
	add r3,r2,r5,lsl #2
	ldr r5,[r3]
	mov r3,#6
	mov r2,#0
	mov r1,#59
	mul r1,r3,r1
	mov r3,r1
	add r3,r3,r2
	movw r2,#53016
	movt r2,#65535  @ -12520
	add r1,fp,r2
	add r2,r1,r3,lsl #2
	ldr r3,[r2]
	mov r2,#6
	mov r1,#59
	mul r1,r2,r1
	mov r2,r1
	movw r1,#53016
	movt r1,#65535  @ -12520
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	mov r2,#34
	mov r0,#4
	mov r8,#59
	mul r8,r2,r8
	mov r2,r8
	add r2,r2,r0
	movw r8,#53016
	movt r8,#65535  @ -12520
	add r0,fp,r8
	add r8,r0,r2,lsl #2
	ldr r2,[r8]
	mov r8,#51
	mov r0,#18
	mov r6,#59
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r0
	movw r6,#53016
	movt r6,#65535  @ -12520
	add r0,fp,r6
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	@%r69 = call i32 @func(i32 %r43,ptr %r44,i32 %r48,ptr %r50,i32 %r54,i32 %r58,ptr %r60,i32 %r64,i32 %r68)
	push {r1,r2,r3}
	sub sp,sp,#20
	str r8,[sp,#16]  @%r68
	str r2,[sp,#12]  @%r64
	str r1,[sp,#8]  @%r60
	str r3,[sp,#4]  @%r58
	str r5,[sp,#0]  @%r54
	movw r10,#36664
	movt r10,#65535  @ -28872
	ldr r0,[fp,r10]
	movw r10,#36660
	movt r10,#65535  @ -28876
	ldr r1,[fp,r10]
	mov r2,r7
	mov r3,r4
	bl func
	add sp,sp,#20
	mov r6,r0
	pop {r1,r2,r3}
	mov r8,#3
	mul r7,r6,r8
	str r7,[fp,#-12]
.mainL2:
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	bge .mainL3
.mainL4:
	mov r8,#10
	@call void @putch(i32 %r85)
	mov r0,r8
	bl putch
	mov r8,#0
	mov r0,r8
	movw r9,#28876
	movt r9,#0  @ 28876
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL3:
	mov r8,#6
	ldr r7,[fp,#-12]
	mov r6,#59
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	movw r7,#53016
	movt r7,#65535  @ -12520
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	@call void @putint(i32 %r80)
	mov r0,r8
	bl putint
	mov r8,#32
	@call void @putch(i32 %r81)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL2
func:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#36
.funcL0:
	ldr r5,[fp,#40]
	ldr r6,[fp,#36]
	ldr r4,[fp,#32]
	ldr r7,[fp,#28]
	ldr r8,[fp,#24]
	str r0,[fp,#-16]
	str r2,[fp,#-20]
	str r8,[fp,#-24]
	str r7,[fp,#-28]
	str r6,[fp,#-32]
	str r5,[fp,#-36]
.funcL1:
	mov r8,#0
	str r8,[fp,#-12]
.funcL2:
	ldr r8,[fp,#-12]
	mov r7,#10
	cmp r8,r7
	blt .funcL3
.funcL4:
	mov r8,#10
	@call void @putch(i32 %r29)
	push {r1,r3}
	mov r0,r8
	bl putch
	pop {r1,r3}
	ldr r8,[fp,#-20]
	mov r7,r8
	add r8,r3,r7,lsl #2
	ldr r7,[r8]
	@call void @putint(i32 %r32)
	push {r1,r3}
	mov r0,r7
	bl putint
	pop {r1,r3}
	mov r8,#10
	@call void @putch(i32 %r33)
	push {r1,r3}
	mov r0,r8
	bl putch
	pop {r1,r3}
.funcL5:
	ldr r8,[fp,#-36]
	mov r7,#10
	cmp r8,r7
	blt .funcL6
.funcL7:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-28]
	add r6,r8,r7
	mov r0,r6
	add sp,sp,#36
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.funcL6:
	ldr r8,[fp,#-32]
	movw r7,#63339
	movt r7,#1  @ 128875
	mov r6,r7
	mul r7,r8,r6
	movw r8,#3724
	movt r8,#0  @ 3724
	mov r6,r8
	@%r43 = call i32 @__modsi3(i32 %r41,i32 %r42)
	push {r1,r3}
	mov r0,r7
	mov r1,r6
	bl __modsi3
	mov r8,r0
	pop {r1,r3}
	ldr r7,[fp,#-36]
	mov r6,r7
	add r7,r4,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-36]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-36]
	ldr r8,[fp,#-32]
	mov r7,#7
	add r6,r8,r7
	str r6,[fp,#-32]
	bl .funcL5
.funcL3:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	mov r6,#59
	mul r6,r8,r6
	mov r8,r6
	add r8,r8,r7
	add r7,r1,r8,lsl #2
	ldr r8,[r7]
	@call void @putint(i32 %r25)
	push {r1,r3}
	mov r0,r8
	bl putint
	pop {r1,r3}
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .funcL2
	.section	.note.GNU-stack,"",%progbits
