.arch armv7-a
.fpu vfpv3-d16
.arm
.data
N:
	.word  0
M:
	.word  0
L:
	.word  0
.text
.global main
.LPIC0:
	.word  L
.LPIC1:
	.word  M
.LPIC2:
	.word  N
sub:@r4 r5 r6 r7 r8 r9 r10 d13 d14 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#20
.subL0:
	mov r9,r2
	str r9,[fp,#-20]
	mov r9,r3
	str r9,[fp,#-16]
	mov r9,r0
	str r9,[fp,#-12]
	ldr r5,[fp,#64]
	ldr r4,[fp,#60]
	ldr r6,[fp,#56]
	ldr r7,[fp,#52]
	ldr r8,[fp,#48]
.subL1:
.subL6:
	mov r0,#0
.subL3:
	mov r3,r0
	ldr r9,[fp,#-12]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	mov r3,r0
	ldr r9,[fp,#-16]
	add r2,r9,r3,lsl #2
	vldr.32 s28,[r2]
	vsub.f32 s27,s29,s28
	mov r3,r0
	add r2,r6,r3,lsl #2
	vstr.32 s27,[r2]
	mov r3,r0
	add r2,r1,r3,lsl #2
	vldr.32 s29,[r2]
	mov r3,r0
	add r2,r8,r3,lsl #2
	vldr.32 s28,[r2]
	vsub.f32 s27,s29,s28
	mov r3,r0
	add r2,r4,r3,lsl #2
	vstr.32 s27,[r2]
	mov r3,r0
	ldr r9,[fp,#-20]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	mov r3,r0
	add r2,r7,r3,lsl #2
	vldr.32 s28,[r2]
	vsub.f32 s27,s29,s28
	mov r3,r0
	add r2,r5,r3,lsl #2
	vstr.32 s27,[r2]
	add r3,r0,#1
.subL4:
	cmp r3,#3
	blt .subL7
.subL5:
	mov r0,#0
	add sp,sp,#20
	vpop.64 {d13,d14}
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.subL7:
	mov r0,r3
	bl .subL3
main:@r4 r5 r6 r7 r8 r9 r10 d14 d15 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	vpush.64 {d14,d15}
	add fp,sp,#4
	mov r9,#140
	sub sp,sp,r9
.mainL0:
.mainL1:
	mov r8,#3
	ldr r7,.LPIC2
	str r8,[r7]
	mov r8,#3
	ldr r7,.LPIC1
	str r8,[r7]
	mov r8,#3
	ldr r7,.LPIC0
	str r8,[r7]
.mainL18:
	mov r8,#0
.mainL3:
	mov r7,r8
	mvn r6,#127
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vstr.32 s29,[r6]
	mov r7,r8
	mvn r6,#115
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	vstr.32 s29,[r6]
	mov r7,r8
	mvn r6,#103
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	vstr.32 s29,[r6]
	mov r7,r8
	mvn r6,#91
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	vstr.32 s29,[r6]
	mov r7,r8
	mvn r6,#79
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	vstr.32 s29,[r6]
	mov r7,r8
	mvn r6,#67
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	vstr.32 s29,[r6]
	add r7,r8,#1
.mainL4:
	cmp r7,#3
	blt .mainL22
.mainL5:
	mvn r6,#127
	add r9,fp,r6
	str r9,[fp,#-132]
	mvn r6,#115
	add r9,fp,r6
	str r9,[fp,#-136]
	mvn r6,#103
	add r9,fp,r6
	str r9,[fp,#-140]
	mvn r6,#91
	add r2,fp,r6
	mvn r6,#79
	add r1,fp,r6
	mvn r6,#67
	add r0,fp,r6
	mvn r6,#55
	add r5,fp,r6
	mvn r6,#31
	add r4,fp,r6
	mvn r6,#19
	add r3,fp,r6
	@%r61 = call i32 @sub(ptr %r52,ptr %r53,ptr %r54,ptr %r55,ptr %r56,ptr %r57,ptr %r58,ptr %r59,ptr %r60)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	sub sp,sp,#20
	str r3,[sp,#16]  @%r60
	str r4,[sp,#12]  @%r59
	str r5,[sp,#8]  @%r58
	str r0,[sp,#4]  @%r57
	str r1,[sp,#0]  @%r56
	ldr r0,[fp,#-132]
	ldr r1,[fp,#-136]
	mov r3,r2
	ldr r2,[fp,#-140]
	bl sub
	add sp,sp,#20
	mov r6,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#3
	blt .mainL19
.mainL9:
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
.mainL20:
	mov r5,#0
.mainL11:
	mov r4,r5
	mvn r3,#31
	add r2,fp,r3
	add r3,r2,r4,lsl #2
	vldr.32 s29,[r3]
	vcvt.s32.f32 s31,s29
	vmov r4,s31
	@call void @putint(i32 %r93)
	mov r0,r4
	bl putint
	add r4,r5,#1
.mainL12:
	cmp r4,#3
	blt .mainL24
.mainL13:
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
.mainL21:
	mov r3,#0
.mainL15:
	mov r2,r3
	mvn r1,#19
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vldr.32 s29,[r1]
	vcvt.s32.f32 s31,s29
	vmov r2,s31
	@call void @putint(i32 %r114)
	push {r2,r3}
	mov r0,r2
	bl putint
	pop {r2,r3}
	add r2,r3,#1
.mainL16:
	cmp r2,#3
	blt .mainL25
.mainL17:
	@call void @putch(i32 10)
	push {r2,r3}
	mov r0,#10
	bl putch
	pop {r2,r3}
	mov r0,#0
	mov r9,#140
	add sp,sp,r9
	vpop.64 {d14,d15}
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL25:
	mov r3,r2
	bl .mainL15
.mainL24:
	mov r5,r4
	bl .mainL11
.mainL19:
	mov r5,r6
.mainL7:
	mov r6,r5
	mvn r4,#55
	add r3,fp,r4
	add r4,r3,r6,lsl #2
	vldr.32 s29,[r4]
	vcvt.s32.f32 s31,s29
	vmov r6,s31
	@call void @putint(i32 %r72)
	mov r0,r6
	bl putint
	add r6,r5,#1
.mainL8:
	cmp r6,#3
	bge .mainL9
.mainL23:
	mov r5,r6
	bl .mainL7
.mainL22:
	mov r8,r7
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
