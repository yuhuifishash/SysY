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
dct:@r5 r6 r7 r8 d11 d12 d13 d14 
	push {fp,lr}
	push {r5,r6,r7,r8}
	vpush.64 {d11,d12,d13,d14}
	add fp,sp,#4
	sub sp,sp,#32
.dctL0:
	str r2,[fp,#-28]
	str r3,[fp,#-32]
.dctL1:
	mov r8,#0
	str r8,[fp,#-24]
.dctL2:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-28]
	cmp r8,r7
	blt .dctL3
.dctL4:
	add sp,sp,#32
	vpop.64 {d11,d12,d13,d14}
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.dctL3:
	mov r8,#0
	str r8,[fp,#-20]
.dctL5:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-32]
	cmp r8,r7
	blt .dctL6
.dctL7:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .dctL2
.dctL6:
	mov r8,#0
	ldr r7,[fp,#-24]
	ldr r6,[fp,#-20]
	lsl r5,r7,#3
	mov r7,r5
	add r7,r7,r6
	add r6,r0,r7,lsl #2
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vstr.32 s29,[r6]
	mov r8,#0
	str r8,[fp,#-16]
.dctL8:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-28]
	cmp r8,r7
	blt .dctL9
.dctL10:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	bl .dctL5
.dctL9:
	mov r8,#0
	str r8,[fp,#-12]
.dctL11:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-32]
	cmp r8,r7
	blt .dctL12
.dctL13:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .dctL8
.dctL12:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	lsl r6,r8,#3
	mov r8,r6
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	vldr.32 s29,[r7]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	lsl r6,r8,#3
	mov r8,r6
	add r8,r8,r7
	add r7,r1,r8,lsl #2
	vldr.32 s28,[r7]
	ldr r8,.LPIC3
	vldr.32 s27,[r8]
	ldr r8,[fp,#-28]
	vmov s26,r8
	vcvt.f32.s32 s26,s26
	vdiv.f32 s25,s27,s26
	ldr r8,[fp,#-16]
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	mov r7,#1065353216
	str r7,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s24,s27,s26
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	mov r7,#1073741824
	str r7,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s23,s27,s26
	vdiv.f32 s27,s24,s23
	vmov s26,r8
	vcvt.f32.s32 s26,s26
	vadd.f32 s24,s26,s27
	vmul.f32 s27,s25,s24
	ldr r8,[fp,#-24]
	vmov s26,r8
	vcvt.f32.s32 s26,s26
	vmul.f32 s25,s27,s26
	@%s62 = call float @my_cos(float %s61)
	push {r0,r1}
	vmov.f32 s0,s25
	bl my_cos
	vmov.f32 s31,s0
	pop {r0,r1}
	vmov.f32 s27,s31
	vmul.f32 s26,s28,s27
	ldr r8,.LPIC3
	vldr.32 s28,[r8]
	ldr r8,[fp,#-32]
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vdiv.f32 s25,s28,s27
	ldr r8,[fp,#-12]
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	mov r7,#1065353216
	str r7,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s24,s28,s27
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	mov r7,#1073741824
	str r7,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s23,s28,s27
	vdiv.f32 s28,s24,s23
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vadd.f32 s24,s27,s28
	vmul.f32 s28,s25,s24
	ldr r8,[fp,#-20]
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vmul.f32 s25,s28,s27
	@%s78 = call float @my_cos(float %s77)
	push {r0,r1}
	vmov.f32 s0,s25
	bl my_cos
	vmov.f32 s31,s0
	pop {r0,r1}
	vmov.f32 s28,s31
	vmul.f32 s27,s26,s28
	vadd.f32 s28,s29,s27
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	lsl r6,r8,#3
	mov r8,r6
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	vstr.32 s28,[r7]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .dctL11
my_fabs:@r8 d13 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#12
.my_fabsL0:
	vstr.32 s0,[fp,#-12]
.my_fabsL1:
	vldr.32 s29,[fp,#-12]
	mov r8,#0
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	bgt .my_fabsL2
.my_fabsL3:
	vldr.32 s29,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vsub.f32 s27,s28,s29
	vmov.f32 s0,s27
	add sp,sp,#12
	vpop.64 {d13,d14}
	pop {r8}
	pop {fp,pc}
.my_fabsL2:
	vldr.32 s29,[fp,#-12]
	vmov.f32 s0,s29
	add sp,sp,#12
	vpop.64 {d13,d14}
	pop {r8}
	pop {fp,pc}
write_mat:@r6 r7 r8 d14 
	push {fp,lr}
	push {r6,r7,r8}
	vpush.64 {d14}
	add fp,sp,#4
	sub sp,sp,#24
.write_matL0:
	str r1,[fp,#-20]
	str r2,[fp,#-24]
.write_matL1:
	mov r8,#0
	str r8,[fp,#-16]
.write_matL2:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .write_matL3
.write_matL4:
	mov r8,#10
	@call void @putch(i32 %r35)
	push {r0}
	mov r0,r8
	bl putch
	pop {r0}
	add sp,sp,#24
	vpop.64 {d14}
	pop {r6,r7,r8}
	pop {fp,pc}
.write_matL3:
	ldr r8,[fp,#-16]
	mov r7,#0
	lsl r6,r8,#3
	mov r8,r6
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	vldr.32 s29,[r7]
	@call void @putfloat(float %s16)
	push {r0}
	vmov.f32 s0,s29
	bl putfloat
	pop {r0}
	mov r8,#1
	str r8,[fp,#-12]
.write_matL5:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-24]
	cmp r8,r7
	blt .write_matL6
.write_matL7:
	mov r8,#10
	@call void @putch(i32 %r31)
	push {r0}
	mov r0,r8
	bl putch
	pop {r0}
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .write_matL2
.write_matL6:
	mov r8,#32
	@call void @putch(i32 %r23)
	push {r0}
	mov r0,r8
	bl putch
	pop {r0}
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	lsl r6,r8,#3
	mov r8,r6
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	vldr.32 s29,[r7]
	@call void @putfloat(float %s28)
	push {r0}
	vmov.f32 s0,s29
	bl putfloat
	pop {r0}
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .write_matL5
idct:@r6 r7 r8 d11 d12 d13 d14 
	push {fp,lr}
	push {r6,r7,r8}
	vpush.64 {d11,d12,d13,d14}
	add fp,sp,#4
	sub sp,sp,#32
.idctL0:
	str r2,[fp,#-28]
	str r3,[fp,#-32]
.idctL1:
	mov r8,#0
	str r8,[fp,#-24]
.idctL2:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-28]
	cmp r8,r7
	blt .idctL3
.idctL4:
	add sp,sp,#32
	vpop.64 {d11,d12,d13,d14}
	pop {r6,r7,r8}
	pop {fp,pc}
.idctL3:
	mov r8,#0
	str r8,[fp,#-20]
.idctL5:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-32]
	cmp r8,r7
	blt .idctL6
.idctL7:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .idctL2
.idctL6:
	mov r8,#1
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r7,#0
	movt r7,#16512  @ 1082130432
	str r7,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vdiv.f32 s28,s29,s27
	mov r8,#0
	mov r7,#0
	lsl r6,r8,#3
	mov r8,r6
	add r8,r8,r7
	add r7,r1,r8,lsl #2
	vldr.32 s29,[r7]
	vmul.f32 s27,s28,s29
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	lsl r6,r8,#3
	mov r8,r6
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	vstr.32 s27,[r7]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#1
	str r8,[fp,#-16]
.idctL8:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-28]
	cmp r8,r7
	blt .idctL9
.idctL10:
	mov r8,#1
	str r8,[fp,#-12]
.idctL11:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-32]
	cmp r8,r7
	blt .idctL12
.idctL13:
	mov r8,#1
	str r8,[fp,#-16]
.idctL14:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-28]
	cmp r8,r7
	blt .idctL15
.idctL16:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	lsl r6,r8,#3
	mov r8,r6
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	vldr.32 s29,[r7]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	mov r8,#1073741824
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s28,s27
	vmul.f32 s28,s29,s26
	ldr r8,[fp,#-28]
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vdiv.f32 s27,s28,s29
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r8,#1073741824
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s26,s29,s28
	vmul.f32 s29,s27,s26
	ldr r8,[fp,#-32]
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s29,s28
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	lsl r6,r8,#3
	mov r8,r6
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	vstr.32 s27,[r7]
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	bl .idctL5
.idctL15:
	mov r8,#1
	str r8,[fp,#-12]
.idctL17:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-32]
	cmp r8,r7
	blt .idctL18
.idctL19:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .idctL14
.idctL18:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	lsl r6,r8,#3
	mov r8,r6
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	vldr.32 s29,[r7]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	lsl r6,r8,#3
	mov r8,r6
	add r8,r8,r7
	add r7,r1,r8,lsl #2
	vldr.32 s28,[r7]
	bl .LPIC9
.LPIC8:
	.word PI
.LPIC9:
	ldr r8,.LPIC8
	vldr.32 s27,[r8]
	ldr r8,[fp,#-28]
	vmov s26,r8
	vcvt.f32.s32 s26,s26
	vdiv.f32 s25,s27,s26
	ldr r8,[fp,#-24]
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	mov r7,#1065353216
	str r7,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s24,s27,s26
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	mov r7,#1073741824
	str r7,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s23,s27,s26
	vdiv.f32 s27,s24,s23
	vmov s26,r8
	vcvt.f32.s32 s26,s26
	vadd.f32 s24,s26,s27
	vmul.f32 s27,s25,s24
	ldr r8,[fp,#-16]
	vmov s26,r8
	vcvt.f32.s32 s26,s26
	vmul.f32 s25,s27,s26
	@%s123 = call float @my_cos(float %s122)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	vmov.f32 s0,s25
	bl my_cos
	vmov.f32 s31,s0
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s27,s31
	vmul.f32 s26,s28,s27
	ldr r8,.LPIC8
	vldr.32 s28,[r8]
	ldr r8,[fp,#-32]
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vdiv.f32 s25,s28,s27
	ldr r8,[fp,#-20]
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	mov r7,#1065353216
	str r7,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s24,s28,s27
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	mov r7,#1073741824
	str r7,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s23,s28,s27
	vdiv.f32 s28,s24,s23
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vadd.f32 s24,s27,s28
	vmul.f32 s28,s25,s24
	ldr r8,[fp,#-12]
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vmul.f32 s25,s28,s27
	@%s139 = call float @my_cos(float %s138)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1}
	vmov.f32 s0,s25
	bl my_cos
	vmov.f32 s31,s0
	pop {r0,r1}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s28,s31
	vmul.f32 s27,s26,s28
	vadd.f32 s28,s29,s27
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	lsl r6,r8,#3
	mov r8,r6
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	vstr.32 s28,[r7]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .idctL17
.idctL12:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	lsl r6,r8,#3
	mov r8,r6
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	vldr.32 s29,[r7]
	mov r8,#1
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	mov r7,#1073741824
	str r7,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s28,s27
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s28,s26
	mov r8,#0
	ldr r7,[fp,#-12]
	lsl r6,r8,#3
	mov r8,r6
	add r8,r8,r7
	add r7,r1,r8,lsl #2
	vldr.32 s28,[r7]
	vmul.f32 s26,s27,s28
	vadd.f32 s28,s29,s26
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	lsl r6,r8,#3
	mov r8,r6
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	vstr.32 s28,[r7]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .idctL11
.idctL9:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	lsl r6,r8,#3
	mov r8,r6
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	vldr.32 s29,[r7]
	mov r8,#1
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	mov r7,#1073741824
	str r7,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s28,s27
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s28,s26
	ldr r8,[fp,#-16]
	mov r7,#0
	lsl r6,r8,#3
	mov r8,r6
	add r8,r8,r7
	add r7,r1,r8,lsl #2
	vldr.32 s28,[r7]
	vmul.f32 s26,s27,s28
	vadd.f32 s28,s29,s26
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	lsl r6,r8,#3
	mov r8,r6
	add r8,r8,r7
	add r7,r0,r8,lsl #2
	vstr.32 s28,[r7]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .idctL8
p:@r8 d13 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#12
.pL0:
	vstr.32 s0,[fp,#-12]
.pL1:
	mov r8,#3
	vldr.32 s29,[fp,#-12]
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vmul.f32 s27,s28,s29
	mov r8,#4
	vldr.32 s29,[fp,#-12]
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vmul.f32 s26,s28,s29
	vldr.32 s29,[fp,#-12]
	vmul.f32 s28,s26,s29
	vldr.32 s29,[fp,#-12]
	vmul.f32 s26,s28,s29
	vsub.f32 s29,s27,s26
	vmov.f32 s0,s29
	add sp,sp,#12
	vpop.64 {d13,d14}
	pop {r8}
	pop {fp,pc}
my_sin_impl:@r8 d13 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#12
.my_sin_implL0:
	vstr.32 s0,[fp,#-12]
.my_sin_implL1:
	vldr.32 s29,[fp,#-12]
	@%s4 = call float @my_fabs(float %s3)
	vmov.f32 s0,s29
	bl my_fabs
	vmov.f32 s31,s0
	vmov.f32 s28,s31
	bl .LPIC11
.LPIC10:
	.word EPSILON
.LPIC11:
	ldr r8,.LPIC10
	vldr.32 s29,[r8]
	vcmp.f32 s28,s29
	vmrs APSR_nzcv, FPSCR
	ble .my_sin_implL2
.my_sin_implL3:
	vldr.32 s29,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	movw r8,#0
	movt r8,#16448  @ 1077936128
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s28,s27
	vdiv.f32 s28,s29,s26
	@%s13 = call float @my_sin_impl(float %s12)
	vmov.f32 s0,s28
	bl my_sin_impl
	vmov.f32 s31,s0
	vmov.f32 s29,s31
	@%s14 = call float @p(float %s13)
	vmov.f32 s0,s29
	bl p
	vmov.f32 s31,s0
	vmov.f32 s28,s31
	vmov.f32 s0,s28
	add sp,sp,#12
	vpop.64 {d13,d14}
	pop {r8}
	pop {fp,pc}
.my_sin_implL2:
	vldr.32 s29,[fp,#-12]
	vmov.f32 s0,s29
	add sp,sp,#12
	vpop.64 {d13,d14}
	pop {r8}
	pop {fp,pc}
my_sin:@r5 r6 r7 r8 d11 d12 d13 d14 d15 
	push {fp,lr}
	push {r5,r6,r7,r8}
	vpush.64 {d11,d12,d13,d14,d15}
	add fp,sp,#4
	sub sp,sp,#16
.my_sinL0:
	vstr.32 s0,[fp,#-16]
.my_sinL1:
	vldr.32 s29,[fp,#-16]
	bl .LPIC13
.LPIC12:
	.word TWO_PI
.LPIC13:
	ldr r8,.LPIC12
	vldr.32 s28,[r8]
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	bgt .my_sinL2
.my_sinL4:
	vldr.32 s29,[fp,#-16]
	ldr r8,.LPIC12
	vldr.32 s28,[r8]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vsub.f32 s26,s27,s28
	vcmp.f32 s29,s26
	vmrs APSR_nzcv, FPSCR
	blt .my_sinL2
.my_sinL3:
	vldr.32 s29,[fp,#-16]
	ldr r8,.LPIC8
	vldr.32 s28,[r8]
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	bgt .my_sinL6
.my_sinL7:
	vldr.32 s29,[fp,#-16]
	ldr r8,.LPIC8
	vldr.32 s28,[r8]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vsub.f32 s26,s27,s28
	vcmp.f32 s29,s26
	vmrs APSR_nzcv, FPSCR
	blt .my_sinL8
.my_sinL9:
	vldr.32 s29,[fp,#-16]
	@%s46 = call float @my_sin_impl(float %s45)
	vmov.f32 s0,s29
	bl my_sin_impl
	vmov.f32 s31,s0
	vmov.f32 s28,s31
	vmov.f32 s0,s28
	add sp,sp,#16
	vpop.64 {d11,d12,d13,d14,d15}
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.my_sinL8:
	vldr.32 s29,[fp,#-16]
	ldr r8,.LPIC12
	vldr.32 s28,[r8]
	vadd.f32 s27,s29,s28
	vstr.32 s27,[fp,#-16]
	bl .my_sinL9
.my_sinL6:
	vldr.32 s29,[fp,#-16]
	ldr r8,.LPIC12
	vldr.32 s28,[r8]
	vsub.f32 s27,s29,s28
	vstr.32 s27,[fp,#-16]
	bl .my_sinL7
.my_sinL2:
	vldr.32 s29,[fp,#-16]
	ldr r8,.LPIC12
	vldr.32 s28,[r8]
	vdiv.f32 s27,s29,s28
	vcvt.s32.f32 s31,s27
	vmov r7,s31
	str r7,[fp,#-12]
	vldr.32 s26,[fp,#-16]
	ldr r6,[fp,#-12]
	ldr r5,.LPIC12
	vldr.32 s25,[r5]
	vmov s24,r6
	vcvt.f32.s32 s24,s24
	vmul.f32 s23,s24,s25
	vsub.f32 s22,s26,s23
	vstr.32 s22,[fp,#-16]
	bl .my_sinL3
my_cos:@r8 d13 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#12
.my_cosL0:
	vstr.32 s0,[fp,#-12]
.my_cosL1:
	vldr.32 s29,[fp,#-12]
	ldr r8,.LPIC8
	vldr.32 s28,[r8]
	mov r8,#2
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vdiv.f32 s26,s28,s27
	vadd.f32 s28,s29,s26
	@%s9 = call float @my_sin(float %s8)
	vmov.f32 s0,s28
	bl my_sin
	vmov.f32 s31,s0
	vmov.f32 s29,s31
	vmov.f32 s0,s29
	add sp,sp,#12
	vpop.64 {d13,d14}
	pop {r8}
	pop {fp,pc}
main:@r5 r6 r7 r8 d14 
	push {fp,lr}
	push {r5,r6,r7,r8}
	vpush.64 {d14}
	add fp,sp,#4
	sub sp,sp,#24
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-24]
	@%r3 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
.mainL2:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-24]
	cmp r8,r7
	blt .mainL3
.mainL4:
	bl .LPIC15
.LPIC14:
	.word test_dct
.LPIC15:
	ldr r8,.LPIC14
	bl .LPIC17
.LPIC16:
	.word test_block
.LPIC17:
	ldr r7,.LPIC16
	ldr r6,[fp,#-24]
	ldr r5,[fp,#-20]
	@call void @dct(ptr %r28,ptr %r29,i32 %r30,i32 %r31)
	mov r0,r8
	mov r1,r7
	mov r2,r6
	mov r3,r5
	bl dct
	ldr r8,.LPIC14
	ldr r7,[fp,#-24]
	ldr r6,[fp,#-20]
	@call void @write_mat(ptr %r32,i32 %r33,i32 %r34)
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl write_mat
	bl .LPIC19
.LPIC18:
	.word test_idct
.LPIC19:
	ldr r8,.LPIC18
	ldr r7,.LPIC14
	ldr r6,[fp,#-24]
	ldr r5,[fp,#-20]
	@call void @idct(ptr %r35,ptr %r36,i32 %r37,i32 %r38)
	mov r0,r8
	mov r1,r7
	mov r2,r6
	mov r3,r5
	bl idct
	ldr r8,.LPIC18
	ldr r7,[fp,#-24]
	ldr r6,[fp,#-20]
	@call void @write_mat(ptr %r39,i32 %r40,i32 %r41)
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl write_mat
	mov r8,#0
	mov r0,r8
	add sp,sp,#24
	vpop.64 {d14}
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	mov r8,#0
	str r8,[fp,#-12]
.mainL5:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .mainL6
.mainL7:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL2
.mainL6:
	@%s19 = call float @getfloat()
	bl getfloat
	vmov.f32 s31,s0
	vmov.f32 s29,s31
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	lsl r6,r8,#3
	mov r8,r6
	add r8,r8,r7
	ldr r7,.LPIC16
	add r6,r7,r8,lsl #2
	vstr.32 s29,[r6]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL5
	.section	.note.GNU-stack,"",%progbits
