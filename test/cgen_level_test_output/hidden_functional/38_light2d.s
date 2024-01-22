.arch armv7-a
.fpu vfpv3-d16
.arm
.data
W:
	.word  192
H:
	.word  192
N:
	.word  24
PI:
	.word  1078530011
TWO_PI:
	.word  1086918619
MAX_STEP:
	.word  10
MAX_DISTANCE:
	.word  1073741824
EPSILON:
	.word  897988541
RAND_MAX:
	.word  100000006
seed:
	.word  0
.text
.global main
.LPIC0:
	.word  EPSILON
.LPIC1:
	.word  H
.LPIC2:
	.word  MAX_DISTANCE
.LPIC3:
	.word  MAX_STEP
.LPIC4:
	.word  N
.LPIC5:
	.word  PI
.LPIC6:
	.word  RAND_MAX
.LPIC7:
	.word  TWO_PI
.LPIC8:
	.word  W
.LPIC9:
	.word  seed
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
	ldr r8,.LPIC0
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
rand:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.randL0:
.randL1:
	ldr r8,.LPIC9
	ldr r7,[r8]
	movw r8,#57186
	movt r8,#304  @ 19980130
	mov r6,r8
	mul r8,r7,r6
	movw r7,#23333
	movt r7,#0  @ 23333
	mov r6,r7
	add r7,r8,r6
	movw r8,#57607
	movt r8,#1525  @ 100000007
	mov r6,r8
	@%r6 = call i32 @__modsi3(i32 %r4,i32 %r5)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r6
	bl __modsi3
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC9
	str r8,[r7]
	ldr r8,.LPIC9
	ldr r7,[r8]
	mov r8,#0
	cmp r7,r8
	blt .randL2
.randL3:
	ldr r8,.LPIC9
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.randL2:
	ldr r8,.LPIC9
	ldr r7,[r8]
	movw r8,#57607
	movt r8,#1525  @ 100000007
	mov r6,r8
	add r8,r7,r6
	ldr r7,.LPIC9
	str r8,[r7]
	bl .randL3
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
	ldr r8,.LPIC7
	vldr.32 s28,[r8]
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	bgt .my_sinL2
.my_sinL4:
	vldr.32 s29,[fp,#-16]
	ldr r8,.LPIC7
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
	ldr r8,.LPIC5
	vldr.32 s28,[r8]
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	bgt .my_sinL6
.my_sinL7:
	vldr.32 s29,[fp,#-16]
	ldr r8,.LPIC5
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
	ldr r8,.LPIC7
	vldr.32 s28,[r8]
	vadd.f32 s27,s29,s28
	vstr.32 s27,[fp,#-16]
	bl .my_sinL9
.my_sinL6:
	vldr.32 s29,[fp,#-16]
	ldr r8,.LPIC7
	vldr.32 s28,[r8]
	vsub.f32 s27,s29,s28
	vstr.32 s27,[fp,#-16]
	bl .my_sinL7
.my_sinL2:
	vldr.32 s29,[fp,#-16]
	ldr r8,.LPIC7
	vldr.32 s28,[r8]
	vdiv.f32 s27,s29,s28
	vcvt.s32.f32 s31,s27
	vmov r7,s31
	str r7,[fp,#-12]
	vldr.32 s26,[fp,#-16]
	ldr r6,[fp,#-12]
	ldr r5,.LPIC7
	vldr.32 s25,[r5]
	vmov s24,r6
	vcvt.f32.s32 s24,s24
	vmul.f32 s23,s24,s25
	vsub.f32 s22,s26,s23
	vstr.32 s22,[fp,#-16]
	bl .my_sinL3
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
.my_sqrtL2:
	ldr r8,[fp,#-12]
	cmp r8,#0
	bne .my_sqrtL3
.my_sqrtL4:
	vldr.32 s29,[fp,#-16]
	vmov.f32 s0,s29
	add sp,sp,#20
	vpop.64 {d12,d13,d14}
	pop {r6,r7,r8}
	pop {fp,pc}
.my_sqrtL3:
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
	bl .my_sqrtL2
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
	ldr r8,.LPIC5
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
circle_sdf:@d13 d14 
	push {fp,lr}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#36
.circle_sdfL0:
	vstr.32 s0,[fp,#-20]
	vstr.32 s1,[fp,#-24]
	vstr.32 s2,[fp,#-28]
	vstr.32 s3,[fp,#-32]
	vstr.32 s4,[fp,#-36]
.circle_sdfL1:
	vldr.32 s29,[fp,#-20]
	vldr.32 s28,[fp,#-28]
	vsub.f32 s27,s29,s28
	vstr.32 s27,[fp,#-16]
	vldr.32 s29,[fp,#-24]
	vldr.32 s28,[fp,#-32]
	vsub.f32 s27,s29,s28
	vstr.32 s27,[fp,#-12]
	vldr.32 s29,[fp,#-16]
	vldr.32 s28,[fp,#-16]
	vmul.f32 s27,s29,s28
	vldr.32 s29,[fp,#-12]
	vldr.32 s28,[fp,#-12]
	vmul.f32 s26,s29,s28
	vadd.f32 s29,s27,s26
	@%s26 = call float @my_sqrt(float %s25)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s29
	bl my_sqrt
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s28,s31
	vldr.32 s29,[fp,#-36]
	vsub.f32 s27,s28,s29
	vmov.f32 s0,s27
	add sp,sp,#36
	vpop.64 {d13,d14}
	pop {fp,pc}
scene:@r7 r8 d11 d12 d13 d14 
	push {fp,lr}
	push {r7,r8}
	vpush.64 {d11,d12,d13,d14}
	add fp,sp,#4
	sub sp,sp,#24
.sceneL0:
	vstr.32 s0,[fp,#-20]
	vstr.32 s1,[fp,#-24]
.sceneL1:
	vldr.32 s29,[fp,#-20]
	vldr.32 s28,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	movw r8,#52429
	movt r8,#16076  @ 1053609165
	str r8,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s25,s27,s26
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	movw r8,#52429
	movt r8,#16076  @ 1053609165
	str r8,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s24,s27,s26
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	movw r8,#52429
	movt r8,#15820  @ 1036831949
	str r8,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s23,s27,s26
	@%s12 = call float @circle_sdf(float %s7,float %s8,float %s9,float %s10,float %s11)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	vmov.f32 s0,s29
	vmov.f32 s1,s28
	vmov.f32 s2,s25
	vmov.f32 s3,s24
	vmov.f32 s4,s23
	bl circle_sdf
	vmov.f32 s31,s0
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s27,s31
	vstr.32 s27,[fp,#-16]
	vldr.32 s29,[fp,#-20]
	vldr.32 s28,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	movw r8,#39322
	movt r8,#16153  @ 1058642330
	str r8,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s25,s27,s26
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	movw r8,#39322
	movt r8,#16153  @ 1058642330
	str r8,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s24,s27,s26
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	movw r8,#52429
	movt r8,#15692  @ 1028443341
	str r8,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s23,s27,s26
	@%s19 = call float @circle_sdf(float %s14,float %s15,float %s16,float %s17,float %s18)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	vmov.f32 s0,s29
	vmov.f32 s1,s28
	vmov.f32 s2,s25
	vmov.f32 s3,s24
	vmov.f32 s4,s23
	bl circle_sdf
	vmov.f32 s31,s0
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s27,s31
	vstr.32 s27,[fp,#-12]
	vldr.32 s29,[fp,#-16]
	vldr.32 s28,[fp,#-12]
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	blt .sceneL2
.sceneL3:
	vldr.32 s29,[fp,#-12]
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	vstr.32 s29,[r8]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	mov r8,#1
	mov r7,r8
	add r8,r0,r7,lsl #2
	vstr.32 s27,[r8]
.sceneL4:
	add sp,sp,#24
	vpop.64 {d11,d12,d13,d14}
	pop {r7,r8}
	pop {fp,pc}
.sceneL2:
	vldr.32 s29,[fp,#-16]
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	vstr.32 s29,[r8]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r8,#0
	movt r8,#16448  @ 1077936128
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	mov r8,#1
	mov r7,r8
	add r8,r0,r7,lsl #2
	vstr.32 s27,[r8]
	bl .sceneL4
trace:@r6 r7 r8 d12 d13 d14 
	push {fp,lr}
	push {r6,r7,r8}
	vpush.64 {d12,d13,d14}
	add fp,sp,#4
	sub sp,sp,#40
.traceL0:
	vstr.32 s0,[fp,#-28]
	vstr.32 s1,[fp,#-32]
	vstr.32 s2,[fp,#-36]
	vstr.32 s3,[fp,#-40]
.traceL1:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	vstr.32 s27,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
.traceL2:
	ldr r8,[fp,#-20]
	bl .LPIC11
.LPIC10:
	.word MAX_STEP
.LPIC11:
	ldr r7,.LPIC10
	ldr r6,[r7]
	cmp r8,r6
	blt .traceL5
.traceL4:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	vmov.f32 s0,s27
	add sp,sp,#40
	vpop.64 {d12,d13,d14}
	pop {r6,r7,r8}
	pop {fp,pc}
.traceL5:
	vldr.32 s29,[fp,#-24]
	bl .LPIC13
.LPIC12:
	.word MAX_DISTANCE
.LPIC13:
	ldr r8,.LPIC12
	vldr.32 s28,[r8]
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	bge .traceL4
.traceL3:
	vldr.32 s29,[fp,#-28]
	vldr.32 s28,[fp,#-36]
	vldr.32 s27,[fp,#-24]
	vmul.f32 s26,s28,s27
	vadd.f32 s28,s29,s26
	vldr.32 s29,[fp,#-32]
	vldr.32 s27,[fp,#-40]
	vldr.32 s26,[fp,#-24]
	vmul.f32 s25,s27,s26
	vadd.f32 s27,s29,s25
	mvn r8,#15
	add r7,fp,r8
	@call void @scene(float %s31,float %s36,ptr %r36)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	vmov.f32 s0,s28
	vmov.f32 s1,s27
	bl scene
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r7,r8
	mvn r8,#15
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	vldr.32 s29,[r8]
	bl .LPIC15
.LPIC14:
	.word EPSILON
.LPIC15:
	ldr r8,.LPIC14
	vldr.32 s28,[r8]
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	blt .traceL7
.traceL8:
	vldr.32 s29,[fp,#-24]
	mov r8,#0
	mov r7,r8
	mvn r8,#15
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	vldr.32 s28,[r8]
	vadd.f32 s27,s29,s28
	vstr.32 s27,[fp,#-24]
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	bl .traceL2
.traceL7:
	mov r8,#1
	mov r7,r8
	mvn r8,#15
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	vldr.32 s29,[r8]
	vmov.f32 s0,s29
	add sp,sp,#40
	vpop.64 {d12,d13,d14}
	pop {r6,r7,r8}
	pop {fp,pc}
sample:@r6 r7 r8 d12 d13 d14 
	push {fp,lr}
	push {r6,r7,r8}
	vpush.64 {d12,d13,d14}
	add fp,sp,#4
	sub sp,sp,#32
.sampleL0:
	vstr.32 s0,[fp,#-28]
	vstr.32 s1,[fp,#-32]
.sampleL1:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	vstr.32 s27,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
.sampleL2:
	ldr r8,[fp,#-20]
	bl .LPIC17
.LPIC16:
	.word N
.LPIC17:
	ldr r7,.LPIC16
	ldr r6,[r7]
	cmp r8,r6
	blt .sampleL3
.sampleL4:
	vldr.32 s29,[fp,#-24]
	ldr r8,.LPIC16
	ldr r7,[r8]
	vmov s28,r7
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s29,s28
	vmov.f32 s0,s27
	add sp,sp,#32
	vpop.64 {d12,d13,d14}
	pop {r6,r7,r8}
	pop {fp,pc}
.sampleL3:
	@%r14 = call i32 @rand()
	sub sp,sp,#4 @stack align 8bytes
	bl rand
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vstr.32 s29,[fp,#-16]
	bl .LPIC19
.LPIC18:
	.word TWO_PI
.LPIC19:
	ldr r8,.LPIC18
	vldr.32 s29,[r8]
	ldr r8,[fp,#-20]
	vldr.32 s28,[fp,#-16]
	bl .LPIC21
.LPIC20:
	.word RAND_MAX
.LPIC21:
	ldr r7,.LPIC20
	ldr r6,[r7]
	vmov s27,r6
	vcvt.f32.s32 s27,s27
	vdiv.f32 s26,s28,s27
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vadd.f32 s27,s28,s26
	vmul.f32 s28,s29,s27
	ldr r8,.LPIC16
	ldr r7,[r8]
	vmov s29,r7
	vcvt.f32.s32 s29,s29
	vdiv.f32 s27,s28,s29
	vstr.32 s27,[fp,#-12]
	vldr.32 s29,[fp,#-24]
	vldr.32 s28,[fp,#-28]
	vldr.32 s27,[fp,#-32]
	vldr.32 s26,[fp,#-12]
	@%s34 = call float @my_cos(float %s33)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s26
	bl my_cos
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s25,s31
	vldr.32 s26,[fp,#-12]
	@%s36 = call float @my_sin(float %s35)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s26
	bl my_sin
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s24,s31
	@%s37 = call float @trace(float %s31,float %s32,float %s34,float %s36)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s28
	vmov.f32 s1,s27
	vmov.f32 s2,s25
	vmov.f32 s3,s24
	bl trace
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s26,s31
	vadd.f32 s28,s29,s26
	vstr.32 s28,[fp,#-24]
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	bl .sampleL2
write_pgm:@r6 r7 r8 d13 d14 d15 
	push {fp,lr}
	push {r6,r7,r8}
	vpush.64 {d13,d14,d15}
	add fp,sp,#4
	sub sp,sp,#28
.write_pgmL0:
.write_pgmL1:
	mov r8,#80
	@call void @putch(i32 %r0)
	mov r0,r8
	bl putch
	mov r8,#50
	@call void @putch(i32 %r1)
	mov r0,r8
	bl putch
	mov r8,#10
	@call void @putch(i32 %r2)
	mov r0,r8
	bl putch
	bl .LPIC23
.LPIC22:
	.word W
.LPIC23:
	ldr r8,.LPIC22
	ldr r7,[r8]
	@call void @putint(i32 %r3)
	mov r0,r7
	bl putint
	mov r8,#32
	@call void @putch(i32 %r4)
	mov r0,r8
	bl putch
	bl .LPIC25
.LPIC24:
	.word H
.LPIC25:
	ldr r8,.LPIC24
	ldr r7,[r8]
	@call void @putint(i32 %r5)
	mov r0,r7
	bl putint
	mov r8,#32
	@call void @putch(i32 %r6)
	mov r0,r8
	bl putch
	mov r8,#255
	@call void @putint(i32 %r7)
	mov r0,r8
	bl putint
	mov r8,#10
	@call void @putch(i32 %r8)
	mov r0,r8
	bl putch
	mov r8,#0
	str r8,[fp,#-28]
.write_pgmL2:
	ldr r8,[fp,#-28]
	ldr r7,.LPIC24
	ldr r6,[r7]
	cmp r8,r6
	blt .write_pgmL3
.write_pgmL4:
	add sp,sp,#28
	vpop.64 {d13,d14,d15}
	pop {r6,r7,r8}
	pop {fp,pc}
.write_pgmL3:
	mov r8,#0
	str r8,[fp,#-24]
.write_pgmL5:
	ldr r8,[fp,#-24]
	ldr r7,.LPIC22
	ldr r6,[r7]
	cmp r8,r6
	blt .write_pgmL6
.write_pgmL7:
	mov r8,#10
	@call void @putch(i32 %r53)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-28]
	bl .write_pgmL2
.write_pgmL6:
	ldr r8,[fp,#-24]
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vstr.32 s29,[fp,#-20]
	ldr r8,[fp,#-28]
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vstr.32 s29,[fp,#-16]
	vldr.32 s29,[fp,#-20]
	ldr r8,.LPIC22
	ldr r7,[r8]
	vmov s28,r7
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s29,s28
	vldr.32 s29,[fp,#-16]
	ldr r8,.LPIC24
	ldr r7,[r8]
	vmov s28,r7
	vcvt.f32.s32 s28,s28
	vdiv.f32 s26,s29,s28
	@%s39 = call float @sample(float %s34,float %s38)
	vmov.f32 s0,s27
	vmov.f32 s1,s26
	bl sample
	vmov.f32 s31,s0
	vmov.f32 s29,s31
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	movw r8,#0
	movt r8,#17279  @ 1132396544
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s28,s27
	vmul.f32 s28,s29,s26
	vcvt.s32.f32 s31,s28
	vmov r8,s31
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#255
	cmp r8,r7
	bgt .write_pgmL8
.write_pgmL9:
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r48)
	mov r0,r8
	bl putint
	mov r8,#32
	@call void @putch(i32 %r49)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .write_pgmL5
.write_pgmL8:
	mov r8,#255
	str r8,[fp,#-12]
	bl .write_pgmL9
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@call void @write_pgm()
	sub sp,sp,#4 @stack align 8bytes
	bl write_pgm
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
