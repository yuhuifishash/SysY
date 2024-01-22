.arch armv7-a
.fpu vfpv3-d16
.arm
.data
MAX_DIM_X:
	.word  8
MAX_DIM_Y:
	.word  8
test_block:
	.space  256
test_dct:
	.space  256
test_idct:
	.space  256
PI:
	.word  1078530011
TWO_PI:
	.word  1086918619
EPSILON:
	.word  897988541
.text
.global main
.LPIC0:
	.word  EPSILON
.LPIC1:
	.word  MAX_DIM_X
.LPIC2:
	.word  MAX_DIM_Y
.LPIC3:
	.word  PI
.LPIC4:
	.word  TWO_PI
.LPIC5:
	.word  test_block
.LPIC6:
	.word  test_dct
.LPIC7:
	.word  test_idct
dct:@r4 r5 r6 r7 r8 r9 r10 d10 d11 d12 d13 d14 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	vpush.64 {d10,d11,d12,d13,d14}
	add fp,sp,#4
	sub sp,sp,#24
.dctL0:
	mov r9,r2
	str r9,[fp,#-24]
	mov r9,r0
	str r9,[fp,#-20]
	mov r9,r1
	str r9,[fp,#-12]
.dctL1:
	ldr r9,[fp,#-24]
	cmp r9,#0
	bgt .dctL24
.dctL5:
	add sp,sp,#24
	vpop.64 {d10,d11,d12,d13,d14}
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.dctL24:
	mov r8,#0
.dctL3:
	cmp r3,#0
	bgt .dctL25
.dctL9:
	add r7,r8,#1
.dctL4:
	ldr r9,[fp,#-24]
	cmp r7,r9
	bge .dctL5
.dctL28:
	mov r8,r7
	bl .dctL3
.dctL25:
	lsl r7,r8,#3
	mov r6,r7
	ldr r9,[fp,#-20]
	add r10,r9,r6,lsl #2
	str r10,[fp,#-16]
	mov r6,#0
	vmov s29,r6
	vcvt.f32.s32 s29,s29
	mov r6,#0
.dctL7:
	mov r5,r6
	ldr r9,[fp,#-16]
	add r4,r9,r5,lsl #2
	vstr.32 s29,[r4]
	ldr r9,[fp,#-24]
	cmp r9,#0
	bgt .dctL26
.dctL13:
	add r5,r6,#1
.dctL8:
	cmp r5,r3
	bge .dctL9
.dctL29:
	mov r6,r5
	bl .dctL7
.dctL26:
	mov r5,#0
.dctL11:
	cmp r3,#0
	bgt .dctL27
.dctL17:
	add r4,r5,#1
.dctL12:
	ldr r9,[fp,#-24]
	cmp r4,r9
	bge .dctL13
.dctL30:
	mov r5,r4
	bl .dctL11
.dctL27:
	lsl r4,r8,#3
	mov r1,r4
	add r1,r1,r6
	ldr r9,[fp,#-20]
	add r4,r9,r1,lsl #2
	lsl r1,r5,#3
	mov r7,r1
	ldr r9,[fp,#-12]
	add r1,r9,r7,lsl #2
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	movw r7,#4059
	movt r7,#16457  @ 1078530011
	str r7,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s28,s27
	ldr r9,[fp,#-24]
	vmov s28,r9
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s26,s28
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	mov r7,#1065353216
	str r7,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s25,s28,s26
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	mov r7,#1073741824
	str r7,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s24,s28,s26
	vdiv.f32 s28,s25,s24
	vmov s26,r5
	vcvt.f32.s32 s26,s26
	vadd.f32 s25,s26,s28
	vmul.f32 s28,s27,s25
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vmul.f32 s26,s28,s27
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	movw r7,#4059
	movt r7,#16457  @ 1078530011
	str r7,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s25,s28,s27
	vmov s28,r3
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s25,s28
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	mov r7,#1065353216
	str r7,[fp,#-8]
	vldr.32 s25,[fp,#-8]
	vadd.f32 s24,s28,s25
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	mov r7,#1073741824
	str r7,[fp,#-8]
	vldr.32 s25,[fp,#-8]
	vadd.f32 s23,s28,s25
	vdiv.f32 s28,s24,s23
	vmov s25,r6
	vcvt.f32.s32 s25,s25
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s24,[fp,#-8]
	movw r7,#4059
	movt r7,#16457  @ 1078530011
	str r7,[fp,#-8]
	vldr.32 s23,[fp,#-8]
	vadd.f32 s22,s24,s23
	mov r7,#2
	vmov s24,r7
	vcvt.f32.s32 s24,s24
	vdiv.f32 s23,s22,s24
	vadd.f32 s22,s26,s23
	@%s140 = call float @my_sin(float %s139)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	vmov.f32 s0,s22
	bl my_sin
	vmov.f32 s31,s0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s26,s31
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s23,[fp,#-8]
	movw r7,#4059
	movt r7,#16457  @ 1078530011
	str r7,[fp,#-8]
	vldr.32 s22,[fp,#-8]
	vadd.f32 s21,s23,s22
	vdiv.f32 s23,s21,s24
	mov r7,#0
.dctL15:
	vldr.32 s24,[r4]
	mov r0,r7
	add r2,r1,r0,lsl #2
	vldr.32 s22,[r2]
.dctL18:
.dctL20:
.dctL19:
	vmul.f32 s21,s22,s26
	vmov s22,r7
	vcvt.f32.s32 s22,s22
	vadd.f32 s20,s22,s28
	vmul.f32 s22,s27,s20
	vmul.f32 s20,s22,s25
.dctL21:
.dctL23:
	vadd.f32 s22,s20,s23
	@%s145 = call float @my_sin(float %s144)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	vmov.f32 s0,s22
	bl my_sin
	vmov.f32 s31,s0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s20,s31
.dctL22:
	vmul.f32 s22,s21,s20
	vadd.f32 s21,s24,s22
	vstr.32 s21,[r4]
	add r2,r7,#1
.dctL16:
	cmp r2,r3
	bge .dctL17
.dctL31:
	mov r7,r2
	bl .dctL15
my_fabs:@r8 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d14}
	add fp,sp,#4
	sub sp,sp,#8
.my_fabsL0:
.my_fabsL1:
	mov r8,#0
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vcmp.f32 s0,s29
	vmrs APSR_nzcv, FPSCR
	bgt .my_fabsL2
.my_fabsL3:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	vsub.f32 s28,s29,s0
	vmov.f32 s0,s28
	add sp,sp,#8
	vpop.64 {d14}
	pop {r8}
	pop {fp,pc}
.my_fabsL2:
	add sp,sp,#8
	vpop.64 {d14}
	pop {r8}
	pop {fp,pc}
write_mat:@r4 r5 r6 r7 r8 d14 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	vpush.64 {d14}
	add fp,sp,#4
	sub sp,sp,#8
.write_matL0:
.write_matL1:
	cmp r1,#0
	bgt .write_matL10
.write_matL5:
	@call void @putch(i32 10)
	push {r0,r1,r2}
	mov r0,#10
	bl putch
	pop {r0,r1,r2}
	add sp,sp,#8
	vpop.64 {d14}
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.write_matL10:
	mov r8,#0
.write_matL3:
	lsl r7,r8,#3
	mov r6,r7
	add r7,r0,r6,lsl #2
	vldr.32 s29,[r7]
	@call void @putfloat(float %s16)
	push {r0,r1,r2}
	vmov.f32 s0,s29
	bl putfloat
	pop {r0,r1,r2}
	cmp r2,#1
	bgt .write_matL11
.write_matL9:
	@call void @putch(i32 10)
	push {r0,r1,r2}
	mov r0,#10
	bl putch
	pop {r0,r1,r2}
	add r7,r8,#1
.write_matL4:
	cmp r7,r1
	bge .write_matL5
.write_matL12:
	mov r8,r7
	bl .write_matL3
.write_matL11:
	lsl r7,r8,#3
	mov r6,r7
	add r7,r0,r6,lsl #2
	mov r6,#1
.write_matL7:
	@call void @putch(i32 32)
	push {r0,r1,r2}
	mov r0,#32
	bl putch
	pop {r0,r1,r2}
	mov r5,r6
	add r4,r7,r5,lsl #2
	vldr.32 s29,[r4]
	@call void @putfloat(float %s28)
	push {r0,r1,r2}
	vmov.f32 s0,s29
	bl putfloat
	pop {r0,r1,r2}
	add r5,r6,#1
.write_matL8:
	cmp r5,r2
	bge .write_matL9
.write_matL13:
	mov r6,r5
	bl .write_matL7
idct:@r4 r5 r6 r7 r8 r9 r10 d9 d10 d11 d12 d13 d14 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	vpush.64 {d9,d10,d11,d12,d13,d14}
	add fp,sp,#4
	sub sp,sp,#28
.idctL0:
	mov r9,r1
	str r9,[fp,#-24]
	mov r9,r0
	str r9,[fp,#-20]
.idctL1:
	cmp r2,#0
	bgt .idctL32
.idctL5:
	add sp,sp,#28
	vpop.64 {d9,d10,d11,d12,d13,d14}
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.idctL32:
	mov r9,#0
	str r9,[fp,#-28]
.idctL3:
	cmp r3,#0
	bgt .idctL33
.idctL9:
	ldr r9,[fp,#-28]
	add r7,r9,#1
.idctL4:
	cmp r7,r2
	bge .idctL5
.idctL38:
	mov r9,r7
	str r9,[fp,#-28]
	bl .idctL3
.idctL33:
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r7,#0
	movt r7,#16512  @ 1082130432
	str r7,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	mov r7,#1
	vmov s29,r7
	vcvt.f32.s32 s29,s29
	vdiv.f32 s28,s29,s27
	ldr r9,[fp,#-24]
	mov r10,r9
	str r10,[fp,#-12]
	ldr r9,[fp,#-28]
	lsl r6,r9,#3
	mov r5,r6
	ldr r9,[fp,#-20]
	add r10,r9,r5,lsl #2
	str r10,[fp,#-16]
	mov r5,#0
	str r5,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r5,#1073741824
	str r5,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s29,s27
	vmov s29,r2
	vcvt.f32.s32 s29,s29
	mov r5,#0
	str r5,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	mov r5,#1073741824
	str r5,[fp,#-8]
	vldr.32 s25,[fp,#-8]
	vadd.f32 s24,s27,s25
	vmov s27,r3
	vcvt.f32.s32 s27,s27
	mov r5,#0
.idctL7:
	ldr r9,[fp,#-12]
	vldr.32 s25,[r9]
	vmul.f32 s23,s28,s25
	mov r4,r5
	ldr r9,[fp,#-16]
	add r7,r9,r4,lsl #2
	vstr.32 s23,[r7]
	cmp r2,#1
	bgt .idctL34
.idctL13:
	cmp r3,#1
	bgt .idctL35
.idctL17:
	cmp r2,#1
	bgt .idctL36
.idctL21:
	mov r7,r5
	ldr r9,[fp,#-16]
	add r4,r9,r7,lsl #2
	vldr.32 s25,[r4]
	vmul.f32 s23,s25,s26
	vdiv.f32 s25,s23,s29
	vmul.f32 s23,s25,s24
	vdiv.f32 s25,s23,s27
	vstr.32 s25,[r4]
	add r7,r5,#1
.idctL8:
	cmp r7,r3
	bge .idctL9
.idctL39:
	mov r5,r7
	bl .idctL7
.idctL36:
	mov r7,#1
.idctL19:
	cmp r3,#1
	bgt .idctL37
.idctL25:
	add r4,r7,#1
.idctL20:
	cmp r4,r2
	bge .idctL21
.idctL42:
	mov r7,r4
	bl .idctL19
.idctL37:
	ldr r9,[fp,#-28]
	lsl r6,r9,#3
	mov r4,r6
	add r4,r4,r5
	ldr r9,[fp,#-20]
	add r6,r9,r4,lsl #2
	lsl r4,r7,#3
	mov r0,r4
	ldr r9,[fp,#-24]
	add r4,r9,r0,lsl #2
	mov r0,#0
	str r0,[fp,#-8]
	vldr.32 s25,[fp,#-8]
	movw r0,#4059
	movt r0,#16457  @ 1078530011
	str r0,[fp,#-8]
	vldr.32 s23,[fp,#-8]
	vadd.f32 s22,s25,s23
	vmov s25,r2
	vcvt.f32.s32 s25,s25
	vdiv.f32 s23,s22,s25
	mov r0,#0
	str r0,[fp,#-8]
	vldr.32 s25,[fp,#-8]
	mov r0,#1065353216
	str r0,[fp,#-8]
	vldr.32 s22,[fp,#-8]
	vadd.f32 s21,s25,s22
	mov r0,#0
	str r0,[fp,#-8]
	vldr.32 s25,[fp,#-8]
	mov r0,#1073741824
	str r0,[fp,#-8]
	vldr.32 s22,[fp,#-8]
	vadd.f32 s20,s25,s22
	vdiv.f32 s25,s21,s20
	ldr r9,[fp,#-28]
	vmov s22,r9
	vcvt.f32.s32 s22,s22
	vadd.f32 s21,s22,s25
	vmul.f32 s25,s23,s21
	vmov s23,r7
	vcvt.f32.s32 s23,s23
	vmul.f32 s22,s25,s23
	mov r0,#0
	str r0,[fp,#-8]
	vldr.32 s25,[fp,#-8]
	movw r0,#4059
	movt r0,#16457  @ 1078530011
	str r0,[fp,#-8]
	vldr.32 s23,[fp,#-8]
	vadd.f32 s21,s25,s23
	vmov s25,r3
	vcvt.f32.s32 s25,s25
	vdiv.f32 s23,s21,s25
	mov r0,#0
	str r0,[fp,#-8]
	vldr.32 s25,[fp,#-8]
	mov r0,#1065353216
	str r0,[fp,#-8]
	vldr.32 s21,[fp,#-8]
	vadd.f32 s20,s25,s21
	mov r0,#0
	str r0,[fp,#-8]
	vldr.32 s25,[fp,#-8]
	mov r0,#1073741824
	str r0,[fp,#-8]
	vldr.32 s21,[fp,#-8]
	vadd.f32 s19,s25,s21
	vdiv.f32 s25,s20,s19
	vmov s21,r5
	vcvt.f32.s32 s21,s21
	vadd.f32 s20,s21,s25
	vmul.f32 s25,s23,s20
	mov r0,#0
	str r0,[fp,#-8]
	vldr.32 s23,[fp,#-8]
	movw r0,#4059
	movt r0,#16457  @ 1078530011
	str r0,[fp,#-8]
	vldr.32 s21,[fp,#-8]
	vadd.f32 s20,s23,s21
	mov r0,#2
	vmov s23,r0
	vcvt.f32.s32 s23,s23
	vdiv.f32 s21,s20,s23
	vadd.f32 s20,s22,s21
	@%s232 = call float @my_sin(float %s231)
	push {r0,r1,r2,r3}
	vmov.f32 s0,s20
	bl my_sin
	vmov.f32 s31,s0
	pop {r0,r1,r2,r3}
	vmov.f32 s22,s31
	mov r0,#0
	str r0,[fp,#-8]
	vldr.32 s21,[fp,#-8]
	movw r0,#4059
	movt r0,#16457  @ 1078530011
	str r0,[fp,#-8]
	vldr.32 s20,[fp,#-8]
	vadd.f32 s19,s21,s20
	vdiv.f32 s21,s19,s23
	mov r0,#1
.idctL23:
	vldr.32 s23,[r6]
	mov r1,r0
	add r8,r4,r1,lsl #2
	vldr.32 s20,[r8]
.idctL26:
.idctL28:
.idctL27:
	vmul.f32 s19,s20,s22
	vmov s20,r0
	vcvt.f32.s32 s20,s20
	vmul.f32 s18,s25,s20
.idctL29:
.idctL31:
	vadd.f32 s20,s18,s21
	@%s237 = call float @my_sin(float %s236)
	push {r0,r1,r2,r3}
	vmov.f32 s0,s20
	bl my_sin
	vmov.f32 s31,s0
	pop {r0,r1,r2,r3}
	vmov.f32 s18,s31
.idctL30:
	vmul.f32 s20,s19,s18
	vadd.f32 s19,s23,s20
	vstr.32 s19,[r6]
	add r8,r0,#1
.idctL24:
	cmp r8,r3
	bge .idctL25
.idctL43:
	mov r0,r8
	bl .idctL23
.idctL35:
	ldr r9,[fp,#-28]
	lsl r8,r9,#3
	mov r7,r8
	add r7,r7,r5
	ldr r9,[fp,#-20]
	add r8,r9,r7,lsl #2
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s25,[fp,#-8]
	mov r7,#1073741824
	str r7,[fp,#-8]
	vldr.32 s23,[fp,#-8]
	vadd.f32 s22,s25,s23
	mov r7,#1
	vmov s25,r7
	vcvt.f32.s32 s25,s25
	vdiv.f32 s23,s25,s22
	mov r7,#1
.idctL15:
	vldr.32 s25,[r8]
	mov r6,r7
	ldr r9,[fp,#-24]
	add r4,r9,r6,lsl #2
	vldr.32 s22,[r4]
	vmul.f32 s21,s23,s22
	vadd.f32 s22,s25,s21
	vstr.32 s22,[r8]
	add r6,r7,#1
.idctL16:
	cmp r6,r3
	bge .idctL17
.idctL41:
	mov r7,r6
	bl .idctL15
.idctL34:
	ldr r9,[fp,#-28]
	lsl r8,r9,#3
	mov r7,r8
	add r7,r7,r5
	ldr r9,[fp,#-20]
	add r8,r9,r7,lsl #2
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s25,[fp,#-8]
	mov r7,#1073741824
	str r7,[fp,#-8]
	vldr.32 s23,[fp,#-8]
	vadd.f32 s22,s25,s23
	mov r7,#1
	vmov s25,r7
	vcvt.f32.s32 s25,s25
	vdiv.f32 s23,s25,s22
	mov r7,#1
.idctL11:
	vldr.32 s25,[r8]
	lsl r6,r7,#3
	mov r4,r6
	ldr r9,[fp,#-24]
	add r6,r9,r4,lsl #2
	vldr.32 s22,[r6]
	vmul.f32 s21,s23,s22
	vadd.f32 s22,s25,s21
	vstr.32 s22,[r8]
	add r6,r7,#1
.idctL12:
	cmp r6,r2
	bge .idctL13
.idctL40:
	mov r7,r6
	bl .idctL11
p:@r8 d13 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#8
.pL0:
.pL1:
	mov r8,#3
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vmul.f32 s28,s29,s0
	mov r8,#4
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vmul.f32 s27,s29,s0
	vmul.f32 s29,s27,s0
	vmul.f32 s27,s29,s0
	vsub.f32 s29,s28,s27
	vmov.f32 s0,s29
	add sp,sp,#8
	vpop.64 {d13,d14}
	pop {r8}
	pop {fp,pc}
my_sin_impl:@r8 d12 d13 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d12,d13,d14}
	add fp,sp,#4
	sub sp,sp,#8
.my_sin_implL0:
.my_sin_implL1:
.my_sin_implL4:
.my_sin_implL6:
	mov r8,#0
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vcmp.f32 s0,s29
	vmrs APSR_nzcv, FPSCR
	bgt .my_sin_implL7
.my_sin_implL8:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	vsub.f32 s28,s29,s0
	vmov s29,s28
.my_sin_implL5:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	movw r8,#14269
	movt r8,#13702  @ 897988541
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s28,s27
	vcmp.f32 s29,s26
	vmrs APSR_nzcv, FPSCR
	ble .my_sin_implL2
.my_sin_implL3:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	movw r8,#0
	movt r8,#16448  @ 1077936128
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s28,s27
	vdiv.f32 s28,s0,s26
	@%s13 = call float @my_sin_impl(float %s12)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	vmov.f32 s0,s28
	bl my_sin_impl
	vmov.f32 s31,s0
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s27,s31
.my_sin_implL9:
.my_sin_implL11:
	mov r8,#3
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vmul.f32 s26,s28,s27
	mov r8,#4
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vmul.f32 s25,s28,s27
	vmul.f32 s28,s25,s27
	vmul.f32 s25,s28,s27
	vsub.f32 s28,s26,s25
.my_sin_implL10:
	vmov.f32 s0,s28
	add sp,sp,#8
	vpop.64 {d12,d13,d14}
	pop {r8}
	pop {fp,pc}
.my_sin_implL2:
	add sp,sp,#8
	vpop.64 {d12,d13,d14}
	pop {r8}
	pop {fp,pc}
.my_sin_implL7:
	vmov s29,s0
	bl .my_sin_implL5
my_sin:@r4 r5 r6 r7 r8 d9 d10 d11 d12 d13 d14 d15 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	vpush.64 {d9,d10,d11,d12,d13,d14,d15}
	add fp,sp,#4
	sub sp,sp,#8
.my_sinL0:
.my_sinL1:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r8,#4059
	movt r8,#16585  @ 1086918619
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	vcmp.f32 s0,s27
	vmrs APSR_nzcv, FPSCR
	bgt .my_sinL2
.my_sinL4:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r8,#4059
	movt r8,#16585  @ 1086918619
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	vsub.f32 s28,s29,s27
	vcmp.f32 s0,s28
	vmrs APSR_nzcv, FPSCR
	blt .my_sinL2
.my_sinL10:
	vmov s29,s0
.my_sinL3:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	movw r8,#4059
	movt r8,#16457  @ 1078530011
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s28,s27
	vcmp.f32 s29,s26
	vmrs APSR_nzcv, FPSCR
	bgt .my_sinL6
.my_sinL11:
	vmov s28,s29
.my_sinL7:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	movw r8,#4059
	movt r8,#16457  @ 1078530011
	str r8,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s25,s27,s26
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vsub.f32 s26,s27,s25
	vcmp.f32 s28,s26
	vmrs APSR_nzcv, FPSCR
	blt .my_sinL8
.my_sinL12:
	vmov s27,s28
.my_sinL9:
	@%s46 = call float @my_sin_impl(float %s49)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	vmov.f32 s0,s27
	bl my_sin_impl
	vmov.f32 s31,s0
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s26,s31
	vmov.f32 s0,s26
	add sp,sp,#8
	vpop.64 {d9,d10,d11,d12,d13,d14,d15}
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.my_sinL8:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	movw r8,#4059
	movt r8,#16585  @ 1086918619
	str r8,[fp,#-8]
	vldr.32 s25,[fp,#-8]
	vadd.f32 s24,s26,s25
	vadd.f32 s26,s28,s24
	vmov s27,s26
	bl .my_sinL9
.my_sinL6:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	movw r8,#4059
	movt r8,#16585  @ 1086918619
	str r8,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s25,s27,s26
	vsub.f32 s27,s29,s25
	vmov s28,s27
	bl .my_sinL7
.my_sinL2:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	movw r7,#4059
	movt r7,#16585  @ 1086918619
	str r7,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s28,s27
	vdiv.f32 s25,s0,s26
	vcvt.s32.f32 s31,s25
	vmov r6,s31
	mov r5,#0
	str r5,[fp,#-8]
	vldr.32 s24,[fp,#-8]
	movw r4,#4059
	movt r4,#16585  @ 1086918619
	str r4,[fp,#-8]
	vldr.32 s23,[fp,#-8]
	vadd.f32 s22,s24,s23
	vmov s21,r6
	vcvt.f32.s32 s21,s21
	vmul.f32 s20,s21,s22
	vsub.f32 s19,s0,s20
	vmov s29,s19
	bl .my_sinL3
my_cos:@r8 d13 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#8
.my_cosL0:
.my_cosL1:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r8,#4059
	movt r8,#16457  @ 1078530011
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	mov r8,#2
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vdiv.f32 s28,s27,s29
	vadd.f32 s29,s0,s28
	@%s9 = call float @my_sin(float %s8)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s29
	bl my_sin
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s28,s31
	vmov.f32 s0,s28
	add sp,sp,#8
	vpop.64 {d13,d14}
	pop {r8}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 d14 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	vpush.64 {d14}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@%r3 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#0
	bgt .mainL10
.mainL5:
	bl .LPIC9
.LPIC8:
	.word test_dct
.LPIC9:
	ldr r6,.LPIC8
	bl .LPIC11
.LPIC10:
	.word test_block
.LPIC11:
	ldr r5,.LPIC10
	@call void @dct(ptr %r38,ptr %r39,i32 %r1,i32 %r3)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,r5
	mov r2,r8
	mov r3,r7
	bl dct
	add sp,sp,#4 @stack align 8bytes
	@call void @write_mat(ptr %r38,i32 %r1,i32 %r3)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,r8
	mov r2,r7
	bl write_mat
	add sp,sp,#4 @stack align 8bytes
	bl .LPIC13
.LPIC12:
	.word test_idct
.LPIC13:
	ldr r5,.LPIC12
	@call void @idct(ptr %r45,ptr %r38,i32 %r1,i32 %r3)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	mov r1,r6
	mov r2,r8
	mov r3,r7
	bl idct
	add sp,sp,#4 @stack align 8bytes
	@call void @write_mat(ptr %r45,i32 %r1,i32 %r3)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	mov r1,r8
	mov r2,r7
	bl write_mat
	add sp,sp,#4 @stack align 8bytes
	mov r0,#0
	add sp,sp,#8
	vpop.64 {d14}
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL10:
	mov r6,#0
.mainL3:
	cmp r7,#0
	bgt .mainL11
.mainL9:
	add r5,r6,#1
.mainL4:
	cmp r5,r8
	bge .mainL5
.mainL12:
	mov r6,r5
	bl .mainL3
.mainL11:
	lsl r5,r6,#3
	mov r4,r5
	ldr r5,.LPIC10
	add r3,r5,r4,lsl #2
	mov r5,#0
.mainL7:
	@%s19 = call float @getfloat()
	push {r3}
	bl getfloat
	vmov.f32 s31,s0
	pop {r3}
	vmov.f32 s29,s31
	mov r4,r5
	add r2,r3,r4,lsl #2
	vstr.32 s29,[r2]
	add r4,r5,#1
.mainL8:
	cmp r4,r7
	bge .mainL9
.mainL13:
	mov r5,r4
	bl .mainL7
	.section	.note.GNU-stack,"",%progbits
