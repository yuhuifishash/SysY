.arch armv7-a
.fpu vfpv3-d16
.arm
.data
M:
	.word  0
L:
	.word  0
N:
	.word  0
.text
.global main
.LPIC0:
	.word  L
.LPIC1:
	.word  M
.LPIC2:
	.word  N
tran:@r4 r5 r6 r7 r8 d14 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	vpush.64 {d14}
	add fp,sp,#4
	sub sp,sp,#8
.tranL0:
	ldr r5,[fp,#48]
	ldr r6,[fp,#44]
	ldr r4,[fp,#40]
	ldr r8,[fp,#36]
	ldr r7,[fp,#32]
.tranL1:
	mov r8,#1
	add r7,r2,r8,lsl #2
	vldr.32 s29,[r7]
	mov r8,#2
	add r7,r6,r8,lsl #2
	vstr.32 s29,[r7]
	mov r8,#2
	add r7,r1,r8,lsl #2
	vldr.32 s29,[r7]
	mov r8,#1
	add r7,r5,r8,lsl #2
	vstr.32 s29,[r7]
	mov r8,r1
	vldr.32 s29,[r8]
	mov r8,#1
	add r7,r4,r8,lsl #2
	vstr.32 s29,[r7]
	mov r8,r2
	vldr.32 s29,[r8]
	mov r8,#2
	add r7,r4,r8,lsl #2
	vstr.32 s29,[r7]
	mov r8,#1
	add r7,r0,r8,lsl #2
	vldr.32 s29,[r7]
	mov r8,r6
	vstr.32 s29,[r8]
	mov r8,#2
	add r7,r0,r8,lsl #2
	vldr.32 s29,[r7]
	mov r8,r5
	vstr.32 s29,[r8]
	mov r8,#1
	add r7,r1,r8,lsl #2
	vldr.32 s29,[r7]
	mov r8,#1
	add r7,r6,r8,lsl #2
	vstr.32 s29,[r7]
	mov r8,#2
	add r7,r2,r8,lsl #2
	vldr.32 s29,[r7]
	mov r8,#2
	add r7,r5,r8,lsl #2
	vstr.32 s29,[r7]
	mov r8,r0
	vldr.32 s29,[r8]
	mov r8,r4
	vstr.32 s29,[r8]
	mov r0,#0
	add sp,sp,#8
	vpop.64 {d14}
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 r9 r10 d14 d15 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	vpush.64 {d14,d15}
	add fp,sp,#4
	mov r9,#132
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
	ldr r8,.LPIC1
	ldr r7,[r8]
	cmp r7,#0
	bgt .mainL18
.mainL5:
	mvn r8,#127
	add r9,fp,r8
	str r9,[fp,#-132]
	mvn r8,#115
	add r6,fp,r8
	mvn r8,#103
	add r5,fp,r8
	mvn r8,#91
	add r4,fp,r8
	mvn r8,#79
	add r3,fp,r8
	mvn r8,#67
	add r2,fp,r8
	mvn r8,#55
	add r1,fp,r8
	mvn r8,#31
	add r0,fp,r8
	mvn r8,#19
	add r7,fp,r8
	@%r61 = call i32 @tran(ptr %r52,ptr %r53,ptr %r54,ptr %r55,ptr %r56,ptr %r57,ptr %r58,ptr %r59,ptr %r60)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	sub sp,sp,#20
	str r7,[sp,#16]  @%r60
	str r0,[sp,#12]  @%r59
	str r1,[sp,#8]  @%r58
	str r2,[sp,#4]  @%r57
	str r3,[sp,#0]  @%r56
	ldr r0,[fp,#-132]
	mov r1,r6
	mov r2,r5
	mov r3,r4
	bl tran
	add sp,sp,#20
	mov r8,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC2
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL19
.mainL9:
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	ldr r7,.LPIC2
	ldr r6,[r7]
	cmp r6,#0
	bgt .mainL20
.mainL13:
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	ldr r7,.LPIC2
	ldr r6,[r7]
	cmp r6,#0
	bgt .mainL21
.mainL17:
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	mov r0,#0
	mov r9,#132
	add sp,sp,r9
	vpop.64 {d14,d15}
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL21:
	mov r7,#0
.mainL15:
	mov r6,r7
	mvn r5,#19
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	vldr.32 s29,[r5]
	vcvt.s32.f32 s31,s29
	vmov r6,s31
	@call void @putint(i32 %r114)
	mov r0,r6
	bl putint
	add r6,r7,#1
.mainL16:
	ldr r5,.LPIC2
	ldr r4,[r5]
	cmp r6,r4
	bge .mainL17
.mainL25:
	mov r7,r6
	bl .mainL15
.mainL20:
	mov r7,#0
.mainL11:
	mov r6,r7
	mvn r5,#31
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	vldr.32 s29,[r5]
	vcvt.s32.f32 s31,s29
	vmov r6,s31
	@call void @putint(i32 %r93)
	mov r0,r6
	bl putint
	add r6,r7,#1
.mainL12:
	ldr r5,.LPIC2
	ldr r4,[r5]
	cmp r6,r4
	bge .mainL13
.mainL24:
	mov r7,r6
	bl .mainL11
.mainL19:
	mov r7,r8
.mainL7:
	mov r8,r7
	mvn r6,#55
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	vldr.32 s29,[r6]
	vcvt.s32.f32 s31,s29
	vmov r8,s31
	@call void @putint(i32 %r72)
	mov r0,r8
	bl putint
	add r8,r7,#1
.mainL8:
	ldr r6,.LPIC2
	ldr r5,[r6]
	cmp r8,r5
	bge .mainL9
.mainL23:
	mov r7,r8
	bl .mainL7
.mainL18:
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r8,#0
.mainL3:
	mov r6,r8
	mvn r5,#127
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vstr.32 s29,[r5]
	mov r6,r8
	mvn r5,#115
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	vstr.32 s29,[r5]
	mov r6,r8
	mvn r5,#103
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	vstr.32 s29,[r5]
	mov r6,r8
	mvn r5,#91
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	vstr.32 s29,[r5]
	mov r6,r8
	mvn r5,#79
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	vstr.32 s29,[r5]
	mov r6,r8
	mvn r5,#67
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	vstr.32 s29,[r5]
	add r6,r8,#1
.mainL4:
	cmp r6,r7
	bge .mainL5
.mainL22:
	mov r8,r6
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
