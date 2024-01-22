.arch armv7-a
.fpu vfpv3-d16
.arm
.data
e:
	.word  1076754516
.text
.global main
.LPIC0:
	.word  e
asr5:@r8 d10 d11 d12 d13 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d10,d11,d12,d13,d14}
	add fp,sp,#4
	sub sp,sp,#8
.asr5L0:
.asr5L1:
	vsub.f32 s29,s1,s0
	mov r8,#2
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s29,s28
	vadd.f32 s29,s0,s27
	@%s24 = call float @simpson(float %s1,float %s19,i32 %r4)
	push {r0}
	vpush.64 {d0,d1}
	vmov.f32 s1,s29
	bl simpson
	vmov.f32 s31,s0
	vpop.64 {d0,d1}
	pop {r0}
	vmov.f32 s28,s31
	@%s29 = call float @simpson(float %s19,float %s2,i32 %r4)
	push {r0}
	vpush.64 {d0,d1}
	vmov.f32 s0,s29
	bl simpson
	vmov.f32 s31,s0
	vpop.64 {d0,d1}
	pop {r0}
	vmov.f32 s27,s31
	vadd.f32 s26,s28,s27
	vsub.f32 s25,s26,s3
.asr5L4:
.asr5L6:
	mov r8,#0
	vmov s26,r8
	vcvt.f32.s32 s26,s26
	vcmp.f32 s25,s26
	vmrs APSR_nzcv, FPSCR
	bgt .asr5L7
.asr5L8:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vsub.f32 s24,s26,s25
	vmov s26,s24
.asr5L5:
	mov r8,#15
	vmov s24,r8
	vcvt.f32.s32 s24,s24
	vmul.f32 s23,s24,s2
	vcmp.f32 s26,s23
	vmrs APSR_nzcv, FPSCR
	ble .asr5L2
.asr5L3:
	mov r8,#2
	vmov s24,r8
	vcvt.f32.s32 s24,s24
	vdiv.f32 s23,s2,s24
	@%s62 = call float @asr5(float %s1,float %s19,float %s59,float %s24,i32 %r4)
	push {r0}
	vpush.64 {d0,d1}
	vmov.f32 s1,s29
	vmov.f32 s2,s23
	vmov.f32 s3,s28
	bl asr5
	vmov.f32 s31,s0
	vpop.64 {d0,d1}
	pop {r0}
	vmov.f32 s22,s31
	vdiv.f32 s23,s2,s24
	@%s71 = call float @asr5(float %s19,float %s2,float %s68,float %s29,i32 %r4)
	push {r0}
	vpush.64 {d0,d1}
	vmov.f32 s0,s29
	vmov.f32 s2,s23
	vmov.f32 s3,s27
	bl asr5
	vmov.f32 s31,s0
	vpop.64 {d0,d1}
	pop {r0}
	vmov.f32 s24,s31
	vadd.f32 s23,s22,s24
	vmov.f32 s0,s23
	add sp,sp,#8
	vpop.64 {d10,d11,d12,d13,d14}
	pop {r8}
	pop {fp,pc}
.asr5L2:
	vadd.f32 s24,s28,s27
	vadd.f32 s23,s28,s27
	vsub.f32 s22,s23,s3
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s23,[fp,#-8]
	movw r8,#0
	movt r8,#16752  @ 1097859072
	str r8,[fp,#-8]
	vldr.32 s21,[fp,#-8]
	vadd.f32 s20,s23,s21
	vdiv.f32 s23,s22,s20
	vadd.f32 s22,s24,s23
	vmov.f32 s0,s22
	add sp,sp,#8
	vpop.64 {d10,d11,d12,d13,d14}
	pop {r8}
	pop {fp,pc}
.asr5L7:
	vmov s26,s25
	bl .asr5L5
asr4:@d14 
	push {fp,lr}
	vpush.64 {d14}
	add fp,sp,#4
	sub sp,sp,#8
.asr4L0:
.asr4L1:
	@%s15 = call float @simpson(float %s1,float %s2,i32 %r3)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	vpush.64 {d0,d1}
	bl simpson
	vmov.f32 s31,s0
	vpop.64 {d0,d1}
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s29,s31
	@%s17 = call float @asr5(float %s1,float %s2,float %s3,float %s15,i32 %r3)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	vpush.64 {d0,d1}
	vmov.f32 s3,s29
	bl asr5
	vmov.f32 s31,s0
	vpop.64 {d0,d1}
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s28,s31
	vmov.f32 s0,s28
	add sp,sp,#8
	vpop.64 {d14}
	pop {fp,pc}
my_pow:@r6 r7 r8 d12 d13 d14 
	push {fp,lr}
	push {r6,r7,r8}
	vpush.64 {d12,d13,d14}
	add fp,sp,#4
	sub sp,sp,#8
.my_powL0:
.my_powL1:
	cmp r0,#0
	blt .my_powL2
.my_powL3:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r8,#1065353216
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	cmp r0,#0
	bne .my_powL10
.my_powL12:
	vmov s29,s27
.my_powL7:
	vmov.f32 s0,s29
	add sp,sp,#8
	vpop.64 {d12,d13,d14}
	pop {r6,r7,r8}
	pop {fp,pc}
.my_powL10:
	vmov s28,s27
	vmov s27,s0
	mov r8,r0
.my_powL5:
	cmp r8,#0
	and r7,r8,#1
	it lt
	rsblt r7,r7,#0
	cmp r7,#0
	bne .my_powL8
.my_powL14:
	vmov s26,s28
.my_powL9:
	vmul.f32 s25,s27,s27
	add r7,r8,r8,lsr #31
	asr r6,r7,#1
.my_powL6:
	cmp r6,#0
	bne .my_powL11
.my_powL13:
	vmov s29,s26
	bl .my_powL7
.my_powL11:
	vmov s28,s26
	vmov s27,s25
	mov r8,r6
	bl .my_powL5
.my_powL8:
	vmul.f32 s29,s28,s27
	vmov s26,s29
	bl .my_powL9
.my_powL2:
	rsb r8,r0,#0
	@%s14 = call float @my_pow(float %s1,i32 %r12)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,r8
	bl my_pow
	vmov.f32 s31,s0
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s29,s31
	mov r8,#1
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s28,s29
	vmov.f32 s0,s27
	add sp,sp,#8
	vpop.64 {d12,d13,d14}
	pop {r6,r7,r8}
	pop {fp,pc}
F1:@r8 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d14}
	add fp,sp,#4
	sub sp,sp,#8
.F1L0:
.F1L1:
	mov r8,#1
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vdiv.f32 s28,s29,s0
	vmov.f32 s0,s28
	add sp,sp,#8
	vpop.64 {d14}
	pop {r8}
	pop {fp,pc}
my_sqrt:@r6 r7 r8 d13 d14 
	push {fp,lr}
	push {r6,r7,r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#8
.my_sqrtL0:
.my_sqrtL1:
	mov r8,#100
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vcmp.f32 s0,s29
	vmrs APSR_nzcv, FPSCR
	bgt .my_sqrtL2
.my_sqrtL3:
	mov r8,#8
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vdiv.f32 s28,s0,s29
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r8,#1056964608
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s29,s27
	vadd.f32 s29,s28,s26
	mov r8,#2
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vmul.f32 s27,s28,s0
	mov r8,#4
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vadd.f32 s26,s28,s0
	vdiv.f32 s28,s27,s26
	vadd.f32 s27,s29,s28
.my_sqrtL8:
	mov r8,#2
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	mov r8,#10
	vmov s28,s27
.my_sqrtL5:
	vdiv.f32 s27,s0,s28
	vadd.f32 s26,s28,s27
	vdiv.f32 s27,s26,s29
	sub r7,r8,#1
.my_sqrtL6:
	cmp r7,#0
	bne .my_sqrtL9
.my_sqrtL7:
	vmov.f32 s0,s27
	add sp,sp,#8
	vpop.64 {d13,d14}
	pop {r6,r7,r8}
	pop {fp,pc}
.my_sqrtL9:
	mov r8,r7
	vmov s28,s27
	bl .my_sqrtL5
.my_sqrtL2:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r8,#0
	movt r8,#16672  @ 1092616192
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	mov r8,#100
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vdiv.f32 s28,s0,s29
	@%s14 = call float @my_sqrt(float %s13)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s28
	bl my_sqrt
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s29,s31
	vmul.f32 s28,s27,s29
	vmov.f32 s0,s28
	add sp,sp,#8
	vpop.64 {d13,d14}
	pop {r6,r7,r8}
	pop {fp,pc}
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
F2:@r8 d13 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#8
.F2L0:
.F2L1:
	vmul.f32 s29,s0,s0
	mov r8,#1
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vsub.f32 s27,s28,s29
	@%s10 = call float @my_sqrt(float %s9)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s27
	bl my_sqrt
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s29,s31
	vdiv.f32 s27,s28,s29
	vmov.f32 s0,s27
	add sp,sp,#8
	vpop.64 {d13,d14}
	pop {r8}
	pop {fp,pc}
simpson:@r8 d12 d13 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d12,d13,d14}
	add fp,sp,#4
	sub sp,sp,#8
.simpsonL0:
.simpsonL1:
	vsub.f32 s29,s1,s0
	mov r8,#2
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s29,s28
	vadd.f32 s29,s0,s27
	cmp r0,#1
	beq .simpsonL2
.simpsonL3:
	cmp r0,#2
	beq .simpsonL4
.simpsonL5:
	mov r8,#0
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vmov.f32 s0,s28
	add sp,sp,#8
	vpop.64 {d12,d13,d14}
	pop {r8}
	pop {fp,pc}
.simpsonL4:
.simpsonL9:
.simpsonL11:
	vmul.f32 s28,s0,s0
	mov r8,#1
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vsub.f32 s26,s27,s28
	@%s69 = call float @my_sqrt(float %s68)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	vmov.f32 s0,s26
	bl my_sqrt
	vmov.f32 s31,s0
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s28,s31
	vdiv.f32 s26,s27,s28
.simpsonL10:
.simpsonL15:
.simpsonL17:
	vmul.f32 s28,s29,s29
	mov r8,#1
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vsub.f32 s25,s27,s28
	@%s76 = call float @my_sqrt(float %s75)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	vmov.f32 s0,s25
	bl my_sqrt
	vmov.f32 s31,s0
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s28,s31
	vdiv.f32 s25,s27,s28
.simpsonL16:
	mov r8,#4
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vmul.f32 s27,s28,s25
	vadd.f32 s28,s26,s27
.simpsonL21:
.simpsonL23:
	vmul.f32 s27,s1,s1
	mov r8,#1
	vmov s26,r8
	vcvt.f32.s32 s26,s26
	vsub.f32 s25,s26,s27
	@%s83 = call float @my_sqrt(float %s82)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	vmov.f32 s0,s25
	bl my_sqrt
	vmov.f32 s31,s0
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s27,s31
	vdiv.f32 s25,s26,s27
.simpsonL22:
	vadd.f32 s27,s28,s25
	vsub.f32 s28,s1,s0
	vmul.f32 s26,s27,s28
	mov r8,#6
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s26,s28
	vmov.f32 s0,s27
	add sp,sp,#8
	vpop.64 {d12,d13,d14}
	pop {r8}
	pop {fp,pc}
.simpsonL2:
.simpsonL6:
.simpsonL8:
	mov r8,#1
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s28,s0
.simpsonL7:
.simpsonL12:
.simpsonL14:
	mov r8,#1
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s26,s28,s29
.simpsonL13:
	mov r8,#4
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vmul.f32 s28,s29,s26
	vadd.f32 s29,s27,s28
.simpsonL18:
.simpsonL20:
	mov r8,#1
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s28,s1
.simpsonL19:
	vadd.f32 s28,s29,s27
	vsub.f32 s29,s1,s0
	vmul.f32 s27,s28,s29
	mov r8,#6
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vdiv.f32 s28,s27,s29
	vmov.f32 s0,s28
	add sp,sp,#8
	vpop.64 {d12,d13,d14}
	pop {r8}
	pop {fp,pc}
eee:@r8 d13 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#8
.eeeL0:
.eeeL1:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r8,#4719
	movt r8,#14979  @ 981668463
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	vcmp.f32 s0,s27
	vmrs APSR_nzcv, FPSCR
	bgt .eeeL2
.eeeL3:
	mov r8,#1
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vadd.f32 s28,s29,s0
	vmul.f32 s29,s0,s0
	mov r8,#2
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vdiv.f32 s26,s29,s27
	vadd.f32 s29,s28,s26
	@%s30 = call float @my_pow(float %s1,i32 3)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,#3
	bl my_pow
	vmov.f32 s31,s0
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s28,s31
	mov r8,#6
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vdiv.f32 s26,s28,s27
	vadd.f32 s28,s29,s26
	@%s37 = call float @my_pow(float %s1,i32 4)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,#4
	bl my_pow
	vmov.f32 s31,s0
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s29,s31
	mov r8,#24
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vdiv.f32 s26,s29,s27
	vadd.f32 s29,s28,s26
	@%s44 = call float @my_pow(float %s1,i32 5)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,#5
	bl my_pow
	vmov.f32 s31,s0
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s28,s31
	mov r8,#120
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vdiv.f32 s26,s28,s27
	vadd.f32 s28,s29,s26
	vmov.f32 s0,s28
	add sp,sp,#8
	vpop.64 {d13,d14}
	pop {r8}
	pop {fp,pc}
.eeeL2:
	mov r8,#2
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vdiv.f32 s28,s0,s29
	@%s13 = call float @eee(float %s12)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s28
	bl eee
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s29,s31
	vmul.f32 s28,s29,s29
	vmov.f32 s0,s28
	add sp,sp,#8
	vpop.64 {d13,d14}
	pop {r8}
	pop {fp,pc}
my_exp:@r7 r8 d13 d14 d15 
	push {fp,lr}
	push {r7,r8}
	vpush.64 {d13,d14,d15}
	add fp,sp,#4
	sub sp,sp,#8
.my_expL0:
.my_expL1:
	mov r8,#0
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vcmp.f32 s0,s29
	vmrs APSR_nzcv, FPSCR
	blt .my_expL2
.my_expL3:
	vcvt.s32.f32 s31,s0
	vmov r8,s31
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vsub.f32 s28,s0,s29
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r7,#63572
	movt r7,#16429  @ 1076754516
	str r7,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s29,s27
	@%s25 = call float @my_pow(float %s23,i32 %r16)
	vpush.64 {d0}
	mov r0,r8
	vmov.f32 s0,s26
	bl my_pow
	vmov.f32 s31,s0
	vpop.64 {d0}
	vmov.f32 s29,s31
	@%s28 = call float @eee(float %s21)
	vpush.64 {d0}
	vmov.f32 s0,s28
	bl eee
	vmov.f32 s31,s0
	vpop.64 {d0}
	vmov.f32 s27,s31
	vmul.f32 s28,s29,s27
	vmov.f32 s0,s28
	add sp,sp,#8
	vpop.64 {d13,d14,d15}
	pop {r7,r8}
	pop {fp,pc}
.my_expL2:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	vsub.f32 s28,s29,s0
	@%s12 = call float @my_exp(float %s11)
	vmov.f32 s0,s28
	bl my_exp
	vmov.f32 s31,s0
	vmov.f32 s29,s31
	mov r8,#1
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s28,s29
	vmov.f32 s0,s27
	add sp,sp,#8
	vpop.64 {d13,d14,d15}
	pop {r7,r8}
	pop {fp,pc}
my_ln:@r8 d13 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#8
.my_lnL0:
.my_lnL1:
	mov r8,#1
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	movw r8,#52343
	movt r8,#12843  @ 841731191
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s28,s27
.my_lnL2:
.my_lnL4:
	@%s9 = call float @simpson(float %s4,float %s1,i32 1)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,#1
	vmov.f32 s1,s0
	vmov.f32 s0,s29
	bl simpson
	vmov.f32 s31,s0
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s28,s31
	@%s10 = call float @asr5(float %s4,float %s1,float %s6,float %s9,i32 1)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,#1
	vmov.f32 s1,s0
	vmov.f32 s0,s29
	vmov.f32 s2,s26
	vmov.f32 s3,s28
	bl asr5
	vmov.f32 s31,s0
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s27,s31
.my_lnL3:
	vmov.f32 s0,s27
	add sp,sp,#8
	vpop.64 {d13,d14}
	pop {r8}
	pop {fp,pc}
my_log:@r8 d12 d13 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d12,d13,d14}
	add fp,sp,#4
	sub sp,sp,#8
.my_logL0:
.my_logL1:
.my_logL2:
.my_logL4:
	mov r8,#1
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	movw r8,#52343
	movt r8,#12843  @ 841731191
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s28,s27
.my_logL5:
.my_logL7:
	@%s14 = call float @simpson(float %s10,float %s2,i32 1)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,#1
	vmov.f32 s0,s29
	bl simpson
	vmov.f32 s31,s0
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s28,s31
	@%s12 = call float @asr5(float %s10,float %s2,float %s11,float %s14,i32 1)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,#1
	vmov.f32 s0,s29
	vmov.f32 s2,s26
	vmov.f32 s3,s28
	bl asr5
	vmov.f32 s31,s0
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s27,s31
.my_logL6:
.my_logL3:
.my_logL8:
.my_logL10:
	mov r8,#1
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	movw r8,#52343
	movt r8,#12843  @ 841731191
	str r8,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s25,s28,s26
.my_logL11:
.my_logL13:
	@%s19 = call float @simpson(float %s15,float %s1,i32 1)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,#1
	vmov.f32 s1,s0
	vmov.f32 s0,s29
	bl simpson
	vmov.f32 s31,s0
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s28,s31
	@%s17 = call float @asr5(float %s15,float %s1,float %s16,float %s19,i32 1)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,#1
	vmov.f32 s1,s0
	vmov.f32 s0,s29
	vmov.f32 s2,s25
	vmov.f32 s3,s28
	bl asr5
	vmov.f32 s31,s0
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s26,s31
.my_logL12:
.my_logL9:
	vdiv.f32 s29,s27,s26
	vmov.f32 s0,s29
	add sp,sp,#8
	vpop.64 {d12,d13,d14}
	pop {r8}
	pop {fp,pc}
my_powf:@r8 d13 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#8
.my_powfL0:
.my_powfL1:
.my_powfL2:
.my_powfL4:
	mov r8,#1
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	movw r8,#52343
	movt r8,#12843  @ 841731191
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s28,s27
.my_powfL5:
.my_powfL7:
	@%s14 = call float @simpson(float %s10,float %s1,i32 1)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,#1
	vmov.f32 s1,s0
	vmov.f32 s0,s29
	bl simpson
	vmov.f32 s31,s0
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s28,s31
	@%s12 = call float @asr5(float %s10,float %s1,float %s11,float %s14,i32 1)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,#1
	vmov.f32 s1,s0
	vmov.f32 s0,s29
	vmov.f32 s2,s26
	vmov.f32 s3,s28
	bl asr5
	vmov.f32 s31,s0
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s27,s31
.my_powfL6:
.my_powfL3:
	vmul.f32 s29,s1,s27
	@%s9 = call float @my_exp(float %s8)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s29
	bl my_exp
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s28,s31
	vmov.f32 s0,s28
	add sp,sp,#8
	vpop.64 {d13,d14}
	pop {r8}
	pop {fp,pc}
main:@r6 r7 r8 d10 d11 d12 d13 d14 
	push {fp,lr}
	push {r6,r7,r8}
	vpush.64 {d10,d11,d12,d13,d14}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#0
	bne .mainL52
.mainL5:
	mov r0,#0
	add sp,sp,#8
	vpop.64 {d10,d11,d12,d13,d14}
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL52:
	mov r7,#0
	vmov s29,r7
	vcvt.f32.s32 s29,s29
	mov r7,r8
.mainL3:
	@%s6 = call float @getfloat()
	sub sp,sp,#4 @stack align 8bytes
	bl getfloat
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s28,s31
	@%s8 = call float @getfloat()
	sub sp,sp,#4 @stack align 8bytes
	bl getfloat
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s27,s31
.mainL17:
.mainL19:
	vcmp.f32 s28,s29
	vmrs APSR_nzcv, FPSCR
	bgt .mainL20
.mainL21:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vsub.f32 s25,s26,s28
	vmov s26,s25
.mainL18:
	@call void @putfloat(float %s10)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s26
	bl putfloat
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#32
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@%s14 = call float @my_pow(float %s6,i32 2)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#2
	vmov.f32 s0,s28
	bl my_pow
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s25,s31
	@call void @putfloat(float %s14)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s25
	bl putfloat
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#32
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@%s17 = call float @my_sqrt(float %s6)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s28
	bl my_sqrt
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s25,s31
	@call void @putfloat(float %s17)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s25
	bl putfloat
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#32
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@%s20 = call float @my_exp(float %s6)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s28
	bl my_exp
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s25,s31
	@call void @putfloat(float %s20)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s25
	bl putfloat
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#32
	bl putch
	add sp,sp,#4 @stack align 8bytes
	vcmp.f32 s28,s29
	vmrs APSR_nzcv, FPSCR
	bgt .mainL6
.mainL7:
	@call void @putch(i32 45)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#45
	bl putch
	add sp,sp,#4 @stack align 8bytes
.mainL8:
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#32
	bl putch
	add sp,sp,#4 @stack align 8bytes
	vcmp.f32 s28,s29
	vmrs APSR_nzcv, FPSCR
	bgt .mainL12
.mainL10:
	@call void @putch(i32 45)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#45
	bl putch
	add sp,sp,#4 @stack align 8bytes
.mainL11:
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#32
	bl putch
	add sp,sp,#4 @stack align 8bytes
	vcmp.f32 s28,s29
	vmrs APSR_nzcv, FPSCR
	bgt .mainL14
.mainL15:
	@call void @putch(i32 45)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#45
	bl putch
	add sp,sp,#4 @stack align 8bytes
.mainL16:
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	sub r8,r7,#1
.mainL4:
	cmp r8,#0
	beq .mainL5
.mainL53:
	mov r7,r8
	bl .mainL3
.mainL14:
.mainL43:
.mainL45:
.mainL46:
.mainL48:
	mov r8,#1
	vmov s25,r8
	vcvt.f32.s32 s25,s25
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s24,[fp,#-8]
	movw r8,#52343
	movt r8,#12843  @ 841731191
	str r8,[fp,#-8]
	vldr.32 s23,[fp,#-8]
	vadd.f32 s22,s24,s23
.mainL49:
.mainL51:
	@%s99 = call float @simpson(float %s96,float %s6,i32 1)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#1
	vmov.f32 s0,s25
	vmov.f32 s1,s28
	bl simpson
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s24,s31
	@%s98 = call float @asr5(float %s96,float %s6,float %s97,float %s99,i32 1)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#1
	vmov.f32 s0,s25
	vmov.f32 s1,s28
	vmov.f32 s2,s22
	vmov.f32 s3,s24
	bl asr5
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s23,s31
.mainL50:
.mainL47:
	vmul.f32 s25,s27,s23
	@%s95 = call float @my_exp(float %s94)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s25
	bl my_exp
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s24,s31
.mainL44:
	@call void @putfloat(float %s95)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s24
	bl putfloat
	add sp,sp,#4 @stack align 8bytes
	bl .mainL16
.mainL12:
	mov r8,#0
	vmov s25,r8
	vcvt.f32.s32 s25,s25
	vcmp.f32 s27,s25
	vmrs APSR_nzcv, FPSCR
	ble .mainL10
.mainL9:
.mainL28:
.mainL30:
.mainL31:
.mainL33:
	mov r8,#1
	vmov s25,r8
	vcvt.f32.s32 s25,s25
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s24,[fp,#-8]
	movw r8,#52343
	movt r8,#12843  @ 841731191
	str r8,[fp,#-8]
	vldr.32 s23,[fp,#-8]
	vadd.f32 s22,s24,s23
.mainL34:
.mainL36:
	@%s84 = call float @simpson(float %s81,float %s8,i32 1)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#1
	vmov.f32 s0,s25
	vmov.f32 s1,s27
	bl simpson
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s24,s31
	@%s83 = call float @asr5(float %s81,float %s8,float %s82,float %s84,i32 1)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#1
	vmov.f32 s0,s25
	vmov.f32 s1,s27
	vmov.f32 s2,s22
	vmov.f32 s3,s24
	bl asr5
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s23,s31
.mainL35:
.mainL32:
.mainL37:
.mainL39:
	mov r8,#1
	vmov s25,r8
	vcvt.f32.s32 s25,s25
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s24,[fp,#-8]
	movw r8,#52343
	movt r8,#12843  @ 841731191
	str r8,[fp,#-8]
	vldr.32 s22,[fp,#-8]
	vadd.f32 s21,s24,s22
.mainL40:
.mainL42:
	@%s91 = call float @simpson(float %s88,float %s6,i32 1)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#1
	vmov.f32 s0,s25
	vmov.f32 s1,s28
	bl simpson
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s24,s31
	@%s90 = call float @asr5(float %s88,float %s6,float %s89,float %s91,i32 1)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#1
	vmov.f32 s0,s25
	vmov.f32 s1,s28
	vmov.f32 s2,s21
	vmov.f32 s3,s24
	bl asr5
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s22,s31
.mainL41:
.mainL38:
	vdiv.f32 s25,s23,s22
.mainL29:
	@call void @putfloat(float %s87)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s25
	bl putfloat
	add sp,sp,#4 @stack align 8bytes
	bl .mainL11
.mainL6:
.mainL22:
.mainL24:
	mov r8,#1
	vmov s25,r8
	vcvt.f32.s32 s25,s25
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s24,[fp,#-8]
	movw r8,#52343
	movt r8,#12843  @ 841731191
	str r8,[fp,#-8]
	vldr.32 s23,[fp,#-8]
	vadd.f32 s22,s24,s23
.mainL25:
.mainL27:
	@%s78 = call float @simpson(float %s74,float %s6,i32 1)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#1
	vmov.f32 s0,s25
	vmov.f32 s1,s28
	bl simpson
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s24,s31
	@%s76 = call float @asr5(float %s74,float %s6,float %s75,float %s78,i32 1)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#1
	vmov.f32 s0,s25
	vmov.f32 s1,s28
	vmov.f32 s2,s22
	vmov.f32 s3,s24
	bl asr5
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s23,s31
.mainL26:
.mainL23:
	@call void @putfloat(float %s76)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s23
	bl putfloat
	add sp,sp,#4 @stack align 8bytes
	bl .mainL8
.mainL20:
	vmov s26,s28
	bl .mainL18
	.section	.note.GNU-stack,"",%progbits
