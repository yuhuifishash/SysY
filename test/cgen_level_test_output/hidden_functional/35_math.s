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
asr5:@r8 d12 d13 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d12,d13,d14}
	add fp,sp,#4
	sub sp,sp,#40
.asr5L0:
	vstr.32 s0,[fp,#-24]
	vstr.32 s1,[fp,#-28]
	vstr.32 s2,[fp,#-32]
	vstr.32 s3,[fp,#-36]
	str r0,[fp,#-40]
.asr5L1:
	vldr.32 s29,[fp,#-24]
	vldr.32 s28,[fp,#-28]
	vldr.32 s27,[fp,#-24]
	vsub.f32 s26,s28,s27
	mov r8,#2
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s26,s28
	vadd.f32 s28,s29,s27
	vstr.32 s28,[fp,#-20]
	vldr.32 s29,[fp,#-24]
	vldr.32 s28,[fp,#-20]
	ldr r8,[fp,#-40]
	@%s24 = call float @simpson(float %s21,float %s22,i32 %r22)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	vmov.f32 s0,s29
	vmov.f32 s1,s28
	bl simpson
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s27,s31
	vstr.32 s27,[fp,#-16]
	vldr.32 s29,[fp,#-20]
	vldr.32 s28,[fp,#-28]
	ldr r8,[fp,#-40]
	@%s29 = call float @simpson(float %s26,float %s27,i32 %r27)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	vmov.f32 s0,s29
	vmov.f32 s1,s28
	bl simpson
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s27,s31
	vstr.32 s27,[fp,#-12]
	vldr.32 s29,[fp,#-16]
	vldr.32 s28,[fp,#-12]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-36]
	vsub.f32 s28,s27,s29
	@%s35 = call float @my_fabs(float %s34)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s28
	bl my_fabs
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s29,s31
	mov r8,#15
	vldr.32 s28,[fp,#-32]
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vmul.f32 s26,s27,s28
	vcmp.f32 s29,s26
	vmrs APSR_nzcv, FPSCR
	ble .asr5L2
.asr5L3:
	vldr.32 s29,[fp,#-24]
	vldr.32 s28,[fp,#-20]
	vldr.32 s27,[fp,#-32]
	mov r8,#2
	vmov s26,r8
	vcvt.f32.s32 s26,s26
	vdiv.f32 s25,s27,s26
	vldr.32 s27,[fp,#-16]
	ldr r8,[fp,#-40]
	@%s62 = call float @asr5(float %s54,float %s55,float %s59,float %s60,i32 %r60)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	vmov.f32 s0,s29
	vmov.f32 s1,s28
	vmov.f32 s2,s25
	vmov.f32 s3,s27
	bl asr5
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s26,s31
	vldr.32 s29,[fp,#-20]
	vldr.32 s28,[fp,#-28]
	vldr.32 s27,[fp,#-32]
	mov r8,#2
	vmov s25,r8
	vcvt.f32.s32 s25,s25
	vdiv.f32 s24,s27,s25
	vldr.32 s27,[fp,#-12]
	ldr r8,[fp,#-40]
	@%s71 = call float @asr5(float %s63,float %s64,float %s68,float %s69,i32 %r69)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	vmov.f32 s0,s29
	vmov.f32 s1,s28
	vmov.f32 s2,s24
	vmov.f32 s3,s27
	bl asr5
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s25,s31
	vadd.f32 s29,s26,s25
	vmov.f32 s0,s29
	add sp,sp,#40
	vpop.64 {d12,d13,d14}
	pop {r8}
	pop {fp,pc}
.asr5L2:
	vldr.32 s29,[fp,#-16]
	vldr.32 s28,[fp,#-12]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-16]
	vldr.32 s28,[fp,#-12]
	vadd.f32 s26,s29,s28
	vldr.32 s29,[fp,#-36]
	vsub.f32 s28,s26,s29
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r8,#0
	movt r8,#16752  @ 1097859072
	str r8,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s25,s29,s26
	vdiv.f32 s29,s28,s25
	vadd.f32 s28,s27,s29
	vmov.f32 s0,s28
	add sp,sp,#40
	vpop.64 {d12,d13,d14}
	pop {r8}
	pop {fp,pc}
asr4:@r8 d12 d13 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d12,d13,d14}
	add fp,sp,#4
	sub sp,sp,#24
.asr4L0:
	vstr.32 s0,[fp,#-12]
	vstr.32 s1,[fp,#-16]
	vstr.32 s2,[fp,#-20]
	str r0,[fp,#-24]
.asr4L1:
	vldr.32 s29,[fp,#-12]
	vldr.32 s28,[fp,#-16]
	vldr.32 s27,[fp,#-20]
	vldr.32 s26,[fp,#-12]
	vldr.32 s25,[fp,#-16]
	ldr r8,[fp,#-24]
	@%s15 = call float @simpson(float %s12,float %s13,i32 %r13)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	vmov.f32 s0,s26
	vmov.f32 s1,s25
	bl simpson
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s24,s31
	ldr r8,[fp,#-24]
	@%s17 = call float @asr5(float %s9,float %s10,float %s11,float %s15,i32 %r15)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	vmov.f32 s0,s29
	vmov.f32 s1,s28
	vmov.f32 s2,s27
	vmov.f32 s3,s24
	bl asr5
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s26,s31
	vmov.f32 s0,s26
	add sp,sp,#24
	vpop.64 {d12,d13,d14}
	pop {r8}
	pop {fp,pc}
my_pow:@r6 r7 r8 d13 d14 
	push {fp,lr}
	push {r6,r7,r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#20
.my_powL0:
	vstr.32 s0,[fp,#-16]
	str r0,[fp,#-20]
.my_powL1:
	ldr r8,[fp,#-20]
	mov r7,#0
	cmp r8,r7
	blt .my_powL2
.my_powL3:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r8,#1065353216
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	vstr.32 s27,[fp,#-12]
.my_powL4:
	ldr r8,[fp,#-20]
	cmp r8,#0
	bne .my_powL5
.my_powL6:
	vldr.32 s29,[fp,#-12]
	vmov.f32 s0,s29
	add sp,sp,#20
	vpop.64 {d13,d14}
	pop {r6,r7,r8}
	pop {fp,pc}
.my_powL5:
	ldr r8,[fp,#-20]
	mov r7,#2
	@%r22 = call i32 @__modsi3(i32 %r20,i32 %r21)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	cmp r6,#0
	bne .my_powL7
.my_powL8:
	vldr.32 s29,[fp,#-16]
	vldr.32 s28,[fp,#-16]
	vmul.f32 s27,s29,s28
	vstr.32 s27,[fp,#-16]
	ldr r8,[fp,#-20]
	mov r7,#2
	@%r32 = call i32 @__aeabi_idiv(i32 %r30,i32 %r31)
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-20]
	bl .my_powL4
.my_powL7:
	vldr.32 s29,[fp,#-12]
	vldr.32 s28,[fp,#-16]
	vmul.f32 s27,s29,s28
	vstr.32 s27,[fp,#-12]
	bl .my_powL8
.my_powL2:
	mov r8,#1
	vldr.32 s29,[fp,#-16]
	ldr r7,[fp,#-20]
	rsb r6,r7,#0
	@%s14 = call float @my_pow(float %s11,i32 %r12)
	mov r0,r6
	vmov.f32 s0,s29
	bl my_pow
	vmov.f32 s31,s0
	vmov.f32 s28,s31
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vdiv.f32 s27,s29,s28
	vmov.f32 s0,s27
	add sp,sp,#20
	vpop.64 {d13,d14}
	pop {r6,r7,r8}
	pop {fp,pc}
F1:@r8 d13 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#12
.F1L0:
	vstr.32 s0,[fp,#-12]
.F1L1:
	mov r8,#1
	vldr.32 s29,[fp,#-12]
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s28,s29
	vmov.f32 s0,s27
	add sp,sp,#12
	vpop.64 {d13,d14}
	pop {r8}
	pop {fp,pc}
my_sqrt:@r6 r7 r8 d12 d13 d14 
	push {fp,lr}
	push {r6,r7,r8}
	vpush.64 {d12,d13,d14}
	add fp,sp,#4
	sub sp,sp,#20
.my_sqrtL0:
	vstr.32 s0,[fp,#-20]
.my_sqrtL1:
	vldr.32 s29,[fp,#-20]
	mov r8,#100
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	bgt .my_sqrtL2
.my_sqrtL3:
	vldr.32 s29,[fp,#-20]
	mov r8,#8
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s29,s28
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r8,#1056964608
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s26,s29,s28
	vadd.f32 s29,s27,s26
	mov r8,#2
	vldr.32 s28,[fp,#-20]
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vmul.f32 s26,s27,s28
	mov r8,#4
	vldr.32 s28,[fp,#-20]
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vadd.f32 s25,s27,s28
	vdiv.f32 s28,s26,s25
	vadd.f32 s27,s29,s28
	vstr.32 s27,[fp,#-16]
	mov r8,#10
	str r8,[fp,#-12]
.my_sqrtL4:
	ldr r8,[fp,#-12]
	cmp r8,#0
	bne .my_sqrtL5
.my_sqrtL6:
	vldr.32 s29,[fp,#-16]
	vmov.f32 s0,s29
	add sp,sp,#20
	vpop.64 {d12,d13,d14}
	pop {r6,r7,r8}
	pop {fp,pc}
.my_sqrtL5:
	vldr.32 s29,[fp,#-16]
	vldr.32 s28,[fp,#-20]
	vldr.32 s27,[fp,#-16]
	vdiv.f32 s26,s28,s27
	vadd.f32 s28,s29,s26
	mov r8,#2
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vdiv.f32 s27,s28,s29
	vstr.32 s27,[fp,#-16]
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
	bl .my_sqrtL4
.my_sqrtL2:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r8,#0
	movt r8,#16672  @ 1092616192
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-20]
	mov r8,#100
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s26,s29,s28
	@%s14 = call float @my_sqrt(float %s13)
	vmov.f32 s0,s26
	bl my_sqrt
	vmov.f32 s31,s0
	vmov.f32 s29,s31
	vmul.f32 s28,s27,s29
	vmov.f32 s0,s28
	add sp,sp,#20
	vpop.64 {d12,d13,d14}
	pop {r6,r7,r8}
	pop {fp,pc}
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
F2:@r7 r8 d13 d14 
	push {fp,lr}
	push {r7,r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#12
.F2L0:
	vstr.32 s0,[fp,#-12]
.F2L1:
	mov r8,#1
	mov r7,#1
	vldr.32 s29,[fp,#-12]
	vldr.32 s28,[fp,#-12]
	vmul.f32 s27,s29,s28
	vmov s29,r7
	vcvt.f32.s32 s29,s29
	vsub.f32 s28,s29,s27
	@%s10 = call float @my_sqrt(float %s9)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s28
	bl my_sqrt
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s29,s31
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s28,s29
	vmov.f32 s0,s27
	add sp,sp,#12
	vpop.64 {d13,d14}
	pop {r7,r8}
	pop {fp,pc}
simpson:@r6 r7 r8 d13 d14 
	push {fp,lr}
	push {r6,r7,r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#24
.simpsonL0:
	vstr.32 s0,[fp,#-16]
	vstr.32 s1,[fp,#-20]
	str r0,[fp,#-24]
.simpsonL1:
	vldr.32 s29,[fp,#-16]
	vldr.32 s28,[fp,#-20]
	vldr.32 s27,[fp,#-16]
	vsub.f32 s26,s28,s27
	mov r8,#2
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s26,s28
	vadd.f32 s28,s29,s27
	vstr.32 s28,[fp,#-12]
	ldr r8,[fp,#-24]
	mov r7,#1
	cmp r8,r7
	beq .simpsonL2
.simpsonL3:
	ldr r8,[fp,#-24]
	mov r7,#2
	cmp r8,r7
	beq .simpsonL4
.simpsonL5:
	mov r8,#0
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vmov.f32 s0,s29
	add sp,sp,#24
	vpop.64 {d13,d14}
	pop {r6,r7,r8}
	pop {fp,pc}
.simpsonL4:
	vldr.32 s29,[fp,#-16]
	@%s45 = call float @F2(float %s44)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s29
	bl F2
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s28,s31
	mov r8,#4
	vldr.32 s29,[fp,#-12]
	@%s48 = call float @F2(float %s47)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s29
	bl F2
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s27,s31
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vmul.f32 s26,s29,s27
	vadd.f32 s29,s28,s26
	vldr.32 s28,[fp,#-20]
	@%s53 = call float @F2(float %s52)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s28
	bl F2
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s27,s31
	vadd.f32 s28,s29,s27
	vldr.32 s29,[fp,#-20]
	vldr.32 s27,[fp,#-16]
	vsub.f32 s26,s29,s27
	vmul.f32 s29,s28,s26
	mov r8,#6
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s29,s28
	vmov.f32 s0,s27
	add sp,sp,#24
	vpop.64 {d13,d14}
	pop {r6,r7,r8}
	pop {fp,pc}
.simpsonL2:
	vldr.32 s29,[fp,#-16]
	@%s22 = call float @F1(float %s21)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s29
	bl F1
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s28,s31
	mov r8,#4
	vldr.32 s29,[fp,#-12]
	@%s25 = call float @F1(float %s24)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s29
	bl F1
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s27,s31
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vmul.f32 s26,s29,s27
	vadd.f32 s29,s28,s26
	vldr.32 s28,[fp,#-20]
	@%s30 = call float @F1(float %s29)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s28
	bl F1
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s27,s31
	vadd.f32 s28,s29,s27
	vldr.32 s29,[fp,#-20]
	vldr.32 s27,[fp,#-16]
	vsub.f32 s26,s29,s27
	vmul.f32 s29,s28,s26
	mov r8,#6
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s29,s28
	vmov.f32 s0,s27
	add sp,sp,#24
	vpop.64 {d13,d14}
	pop {r6,r7,r8}
	pop {fp,pc}
eee:@r8 d13 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#16
.eeeL0:
	vstr.32 s0,[fp,#-16]
.eeeL1:
	vldr.32 s29,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	movw r8,#4719
	movt r8,#14979  @ 981668463
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s28,s27
	vcmp.f32 s29,s26
	vmrs APSR_nzcv, FPSCR
	bgt .eeeL2
.eeeL3:
	mov r8,#1
	vldr.32 s29,[fp,#-16]
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vadd.f32 s27,s28,s29
	vldr.32 s29,[fp,#-16]
	vldr.32 s28,[fp,#-16]
	vmul.f32 s26,s29,s28
	mov r8,#2
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vdiv.f32 s28,s26,s29
	vadd.f32 s29,s27,s28
	vldr.32 s28,[fp,#-16]
	mov r8,#3
	@%s30 = call float @my_pow(float %s28,i32 %r28)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	vmov.f32 s0,s28
	bl my_pow
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s27,s31
	mov r8,#6
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s26,s27,s28
	vadd.f32 s28,s29,s26
	vldr.32 s29,[fp,#-16]
	mov r8,#4
	@%s37 = call float @my_pow(float %s35,i32 %r35)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	vmov.f32 s0,s29
	bl my_pow
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s27,s31
	mov r8,#24
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vdiv.f32 s26,s27,s29
	vadd.f32 s29,s28,s26
	vldr.32 s28,[fp,#-16]
	mov r8,#5
	@%s44 = call float @my_pow(float %s42,i32 %r42)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	vmov.f32 s0,s28
	bl my_pow
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s27,s31
	mov r8,#120
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s26,s27,s28
	vadd.f32 s28,s29,s26
	vmov.f32 s0,s28
	add sp,sp,#16
	vpop.64 {d13,d14}
	pop {r8}
	pop {fp,pc}
.eeeL2:
	vldr.32 s29,[fp,#-16]
	mov r8,#2
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s29,s28
	@%s13 = call float @eee(float %s12)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s27
	bl eee
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s29,s31
	vstr.32 s29,[fp,#-12]
	vldr.32 s29,[fp,#-12]
	vldr.32 s28,[fp,#-12]
	vmul.f32 s27,s29,s28
	vmov.f32 s0,s27
	add sp,sp,#16
	vpop.64 {d13,d14}
	pop {r8}
	pop {fp,pc}
my_exp:@r7 r8 d13 d14 d15 
	push {fp,lr}
	push {r7,r8}
	vpush.64 {d13,d14,d15}
	add fp,sp,#4
	sub sp,sp,#24
.my_expL0:
	vstr.32 s0,[fp,#-24]
.my_expL1:
	vldr.32 s29,[fp,#-24]
	mov r8,#0
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	blt .my_expL2
.my_expL3:
	vldr.32 s29,[fp,#-24]
	vcvt.s32.f32 s31,s29
	vmov r8,s31
	str r8,[fp,#-20]
	vldr.32 s29,[fp,#-24]
	ldr r8,[fp,#-20]
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vsub.f32 s27,s29,s28
	vstr.32 s27,[fp,#-24]
	bl .LPIC2
.LPIC1:
	.word e
.LPIC2:
	ldr r8,.LPIC1
	vldr.32 s29,[r8]
	ldr r8,[fp,#-20]
	@%s25 = call float @my_pow(float %s23,i32 %r23)
	mov r0,r8
	vmov.f32 s0,s29
	bl my_pow
	vmov.f32 s31,s0
	vmov.f32 s28,s31
	vstr.32 s28,[fp,#-16]
	vldr.32 s29,[fp,#-24]
	@%s28 = call float @eee(float %s27)
	vmov.f32 s0,s29
	bl eee
	vmov.f32 s31,s0
	vmov.f32 s28,s31
	vstr.32 s28,[fp,#-12]
	vldr.32 s29,[fp,#-16]
	vldr.32 s28,[fp,#-12]
	vmul.f32 s27,s29,s28
	vmov.f32 s0,s27
	add sp,sp,#24
	vpop.64 {d13,d14,d15}
	pop {r7,r8}
	pop {fp,pc}
.my_expL2:
	mov r8,#1
	vldr.32 s29,[fp,#-24]
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vsub.f32 s27,s28,s29
	@%s12 = call float @my_exp(float %s11)
	vmov.f32 s0,s27
	bl my_exp
	vmov.f32 s31,s0
	vmov.f32 s29,s31
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s28,s29
	vmov.f32 s0,s27
	add sp,sp,#24
	vpop.64 {d13,d14,d15}
	pop {r7,r8}
	pop {fp,pc}
my_ln:@r8 d12 d13 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d12,d13,d14}
	add fp,sp,#4
	sub sp,sp,#12
.my_lnL0:
	vstr.32 s0,[fp,#-12]
.my_lnL1:
	mov r8,#1
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vldr.32 s28,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	movw r8,#52343
	movt r8,#12843  @ 841731191
	str r8,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s25,s27,s26
	mov r8,#1
	@%s8 = call float @asr4(float %s4,float %s5,float %s6,i32 %r6)
	mov r0,r8
	vmov.f32 s0,s29
	vmov.f32 s1,s28
	vmov.f32 s2,s25
	bl asr4
	vmov.f32 s31,s0
	vmov.f32 s27,s31
	vmov.f32 s0,s27
	add sp,sp,#12
	vpop.64 {d12,d13,d14}
	pop {r8}
	pop {fp,pc}
my_log:@d13 d14 
	push {fp,lr}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#16
.my_logL0:
	vstr.32 s0,[fp,#-12]
	vstr.32 s1,[fp,#-16]
.my_logL1:
	vldr.32 s29,[fp,#-16]
	@%s6 = call float @my_ln(float %s5)
	vmov.f32 s0,s29
	bl my_ln
	vmov.f32 s31,s0
	vmov.f32 s28,s31
	vldr.32 s29,[fp,#-12]
	@%s8 = call float @my_ln(float %s7)
	vmov.f32 s0,s29
	bl my_ln
	vmov.f32 s31,s0
	vmov.f32 s27,s31
	vdiv.f32 s29,s28,s27
	vmov.f32 s0,s29
	add sp,sp,#16
	vpop.64 {d13,d14}
	pop {fp,pc}
my_powf:@d13 d14 
	push {fp,lr}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#16
.my_powfL0:
	vstr.32 s0,[fp,#-12]
	vstr.32 s1,[fp,#-16]
.my_powfL1:
	vldr.32 s29,[fp,#-16]
	vldr.32 s28,[fp,#-12]
	@%s7 = call float @my_ln(float %s6)
	vmov.f32 s0,s28
	bl my_ln
	vmov.f32 s31,s0
	vmov.f32 s27,s31
	vmul.f32 s28,s29,s27
	@%s9 = call float @my_exp(float %s8)
	vmov.f32 s0,s28
	bl my_exp
	vmov.f32 s31,s0
	vmov.f32 s29,s31
	vmov.f32 s0,s29
	add sp,sp,#16
	vpop.64 {d13,d14}
	pop {fp,pc}
main:@r6 r7 r8 d13 d14 
	push {fp,lr}
	push {r6,r7,r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#20
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-20]
.mainL2:
	ldr r8,[fp,#-20]
	cmp r8,#0
	bne .mainL3
.mainL4:
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	vpop.64 {d13,d14}
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL3:
	@%s6 = call float @getfloat()
	bl getfloat
	vmov.f32 s31,s0
	vmov.f32 s29,s31
	vstr.32 s29,[fp,#-16]
	@%s8 = call float @getfloat()
	bl getfloat
	vmov.f32 s31,s0
	vmov.f32 s29,s31
	vstr.32 s29,[fp,#-12]
	vldr.32 s29,[fp,#-16]
	@%s10 = call float @my_fabs(float %s9)
	vmov.f32 s0,s29
	bl my_fabs
	vmov.f32 s31,s0
	vmov.f32 s28,s31
	@call void @putfloat(float %s10)
	vmov.f32 s0,s28
	bl putfloat
	mov r8,#32
	@call void @putch(i32 %r10)
	mov r0,r8
	bl putch
	vldr.32 s29,[fp,#-16]
	mov r8,#2
	@%s14 = call float @my_pow(float %s12,i32 %r12)
	mov r0,r8
	vmov.f32 s0,s29
	bl my_pow
	vmov.f32 s31,s0
	vmov.f32 s28,s31
	@call void @putfloat(float %s14)
	vmov.f32 s0,s28
	bl putfloat
	mov r8,#32
	@call void @putch(i32 %r14)
	mov r0,r8
	bl putch
	vldr.32 s29,[fp,#-16]
	@%s17 = call float @my_sqrt(float %s16)
	vmov.f32 s0,s29
	bl my_sqrt
	vmov.f32 s31,s0
	vmov.f32 s28,s31
	@call void @putfloat(float %s17)
	vmov.f32 s0,s28
	bl putfloat
	mov r8,#32
	@call void @putch(i32 %r17)
	mov r0,r8
	bl putch
	vldr.32 s29,[fp,#-16]
	@%s20 = call float @my_exp(float %s19)
	vmov.f32 s0,s29
	bl my_exp
	vmov.f32 s31,s0
	vmov.f32 s28,s31
	@call void @putfloat(float %s20)
	vmov.f32 s0,s28
	bl putfloat
	mov r8,#32
	@call void @putch(i32 %r20)
	mov r0,r8
	bl putch
	vldr.32 s29,[fp,#-16]
	mov r8,#0
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	bgt .mainL5
.mainL6:
	mov r8,#45
	@call void @putch(i32 %r29)
	mov r0,r8
	bl putch
.mainL7:
	mov r8,#32
	@call void @putch(i32 %r30)
	mov r0,r8
	bl putch
	vldr.32 s29,[fp,#-16]
	mov r8,#0
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	bgt .mainL11
.mainL9:
	mov r8,#45
	@call void @putch(i32 %r49)
	mov r0,r8
	bl putch
.mainL10:
	mov r8,#32
	@call void @putch(i32 %r50)
	mov r0,r8
	bl putch
	vldr.32 s29,[fp,#-16]
	mov r8,#0
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	bgt .mainL13
.mainL14:
	mov r8,#45
	@call void @putch(i32 %r60)
	mov r0,r8
	bl putch
.mainL15:
	mov r8,#10
	@call void @putch(i32 %r61)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-20]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-20]
	bl .mainL2
.mainL13:
	vldr.32 s29,[fp,#-16]
	vldr.32 s28,[fp,#-12]
	@%s60 = call float @my_powf(float %s58,float %s59)
	vmov.f32 s0,s29
	vmov.f32 s1,s28
	bl my_powf
	vmov.f32 s31,s0
	vmov.f32 s27,s31
	@call void @putfloat(float %s60)
	vmov.f32 s0,s27
	bl putfloat
	bl .mainL15
.mainL11:
	vldr.32 s29,[fp,#-12]
	mov r8,#0
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	ble .mainL9
.mainL8:
	vldr.32 s29,[fp,#-16]
	vldr.32 s28,[fp,#-12]
	@%s49 = call float @my_log(float %s47,float %s48)
	vmov.f32 s0,s29
	vmov.f32 s1,s28
	bl my_log
	vmov.f32 s31,s0
	vmov.f32 s27,s31
	@call void @putfloat(float %s49)
	vmov.f32 s0,s27
	bl putfloat
	bl .mainL10
.mainL5:
	vldr.32 s29,[fp,#-16]
	@%s29 = call float @my_ln(float %s28)
	vmov.f32 s0,s29
	bl my_ln
	vmov.f32 s31,s0
	vmov.f32 s28,s31
	@call void @putfloat(float %s29)
	vmov.f32 s0,s28
	bl putfloat
	bl .mainL7
	.section	.note.GNU-stack,"",%progbits
