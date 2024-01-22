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
	mul r6,r7,r8
	movw r8,#23333
	movt r8,#0  @ 23333
	add r7,r6,r8
	movw r8,#36553
	movt r8,#5497  @ 360287945
	smmul r8,r7,r8
	asr r6,r7,#31
	rsb r8,r6,r8,asr #23
	movw r6,#57607
	movt r6,#1525  @ 100000007
	mul r8,r8,r6
	sub r6,r7,r8
	ldr r8,.LPIC9
	str r6,[r8]
	ldr r8,.LPIC9
	ldr r7,[r8]
	cmp r7,#0
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
	add r6,r7,r8
	ldr r8,.LPIC9
	str r6,[r8]
	bl .randL3
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
my_sqrt:@r6 r7 r8 d13 d14 
	push {fp,lr}
	push {r6,r7,r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#8
.my_sqrtL0:
.my_sqrtL1:
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
.my_sqrtL6:
	mov r8,#2
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	mov r8,#10
	vmov s28,s27
.my_sqrtL3:
	vdiv.f32 s27,s0,s28
	vadd.f32 s26,s28,s27
	vdiv.f32 s27,s26,s29
	sub r7,r8,#1
.my_sqrtL4:
	cmp r7,#0
	bne .my_sqrtL7
.my_sqrtL5:
	vmov.f32 s0,s27
	add sp,sp,#8
	vpop.64 {d13,d14}
	pop {r6,r7,r8}
	pop {fp,pc}
.my_sqrtL7:
	mov r8,r7
	vmov s28,s27
	bl .my_sqrtL3
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
circle_sdf:@d13 d14 
	push {fp,lr}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#8
.circle_sdfL0:
.circle_sdfL1:
	vsub.f32 s29,s0,s2
	vsub.f32 s28,s1,s3
	vmul.f32 s27,s29,s29
	vmul.f32 s29,s28,s28
	vadd.f32 s28,s27,s29
	@%s26 = call float @my_sqrt(float %s25)
	vpush.64 {d2}
	vmov.f32 s0,s28
	bl my_sqrt
	vmov.f32 s31,s0
	vpop.64 {d2}
	vmov.f32 s29,s31
	vsub.f32 s28,s29,s4
	vmov.f32 s0,s28
	add sp,sp,#8
	vpop.64 {d13,d14}
	pop {fp,pc}
scene:@r7 r8 d12 d13 d14 
	push {fp,lr}
	push {r7,r8}
	vpush.64 {d12,d13,d14}
	add fp,sp,#4
	sub sp,sp,#8
.sceneL0:
.sceneL1:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r8,#52429
	movt r8,#16076  @ 1053609165
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r8,#52429
	movt r8,#16076  @ 1053609165
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s26,s29,s28
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r8,#52429
	movt r8,#15820  @ 1036831949
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s25,s29,s28
	@%s12 = call float @circle_sdf(float %s1,float %s2,float %s9,float %s10,float %s11)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	vpush.64 {d0}
	vmov.f32 s2,s27
	vmov.f32 s3,s26
	vmov.f32 s4,s25
	bl circle_sdf
	vmov.f32 s31,s0
	vpop.64 {d0}
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s29,s31
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	movw r8,#39322
	movt r8,#16153  @ 1058642330
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s28,s27
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	movw r8,#39322
	movt r8,#16153  @ 1058642330
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s25,s28,s27
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	movw r8,#52429
	movt r8,#15692  @ 1028443341
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s24,s28,s27
	@%s19 = call float @circle_sdf(float %s1,float %s2,float %s16,float %s17,float %s18)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	vpush.64 {d0}
	vmov.f32 s2,s26
	vmov.f32 s3,s25
	vmov.f32 s4,s24
	bl circle_sdf
	vmov.f32 s31,s0
	vpop.64 {d0}
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s28,s31
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	blt .sceneL2
.sceneL3:
	mov r8,r0
	vstr.32 s28,[r8]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s28,s27
	mov r8,#1
	add r7,r0,r8,lsl #2
	vstr.32 s26,[r7]
.sceneL4:
	add sp,sp,#8
	vpop.64 {d12,d13,d14}
	pop {r7,r8}
	pop {fp,pc}
.sceneL2:
	mov r8,r0
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
	add r7,r0,r8,lsl #2
	vstr.32 s27,[r7]
	bl .sceneL4
trace:@r4 r5 r6 r7 r8 d12 d13 d14 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	vpush.64 {d12,d13,d14}
	add fp,sp,#4
	sub sp,sp,#16
.traceL0:
.traceL1:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
.traceL6:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r8,#1073741824
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s26,s29,s28
	vcmp.f32 s27,s26
	vmrs APSR_nzcv, FPSCR
	blt .traceL12
.traceL5:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s26,s29,s28
	vmov.f32 s0,s26
	add sp,sp,#16
	vpop.64 {d12,d13,d14}
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.traceL12:
	mvn r8,#15
	add r7,fp,r8
	mvn r8,#15
	add r6,fp,r8
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r8,#14269
	movt r8,#13702  @ 897988541
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s26,s29,s28
	mov r8,#0
	vmov s29,s27
.traceL3:
	vmul.f32 s28,s2,s29
	vadd.f32 s27,s0,s28
	vmul.f32 s28,s3,s29
	vadd.f32 s25,s1,s28
	@call void @scene(float %s31,float %s36,ptr %r36)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0,d1}
	mov r0,r7
	vmov.f32 s0,s27
	vmov.f32 s1,s25
	bl scene
	vpop.64 {d0,d1}
	add sp,sp,#4 @stack align 8bytes
	vldr.32 s28,[r6]
	vcmp.f32 s28,s26
	vmrs APSR_nzcv, FPSCR
	blt .traceL8
.traceL9:
	mvn r5,#15
	add r4,fp,r5
	vldr.32 s28,[r4]
	vadd.f32 s27,s29,s28
	add r5,r8,#1
.traceL4:
	cmp r5,#10
	bge .traceL5
.traceL10:
	mov r4,#0
	str r4,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	mov r4,#1073741824
	str r4,[fp,#-8]
	vldr.32 s25,[fp,#-8]
	vadd.f32 s24,s28,s25
	vcmp.f32 s27,s24
	vmrs APSR_nzcv, FPSCR
	bge .traceL5
.traceL13:
	mov r8,r5
	vmov s29,s27
	bl .traceL3
.traceL8:
	mov r8,#1
	mvn r7,#15
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s29,[r7]
	vmov.f32 s0,s29
	add sp,sp,#16
	vpop.64 {d12,d13,d14}
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
sample:@r5 r6 r7 r8 d11 d12 d13 d14 
	push {fp,lr}
	push {r5,r6,r7,r8}
	vpush.64 {d11,d12,d13,d14}
	add fp,sp,#4
	sub sp,sp,#8
.sampleL0:
.sampleL1:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
.sampleL14:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r8,#4059
	movt r8,#16585  @ 1086918619
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s26,s29,s28
	movw r8,#57606
	movt r8,#1525  @ 100000006
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	mov r8,#24
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s25,[fp,#-8]
	movw r8,#4059
	movt r8,#16457  @ 1078530011
	str r8,[fp,#-8]
	vldr.32 s24,[fp,#-8]
	vadd.f32 s23,s25,s24
	mov r8,#2
	vmov s25,r8
	vcvt.f32.s32 s25,s25
	vdiv.f32 s24,s23,s25
	mov r8,#0
	vmov s25,s27
.sampleL3:
.sampleL6:
.sampleL8:
	bl .LPIC11
.LPIC10:
	.word seed
.LPIC11:
	ldr r7,.LPIC10
	ldr r6,[r7]
	movw r7,#57186
	movt r7,#304  @ 19980130
	mul r5,r6,r7
	movw r7,#23333
	movt r7,#0  @ 23333
	add r6,r5,r7
	movw r7,#36553
	movt r7,#5497  @ 360287945
	smmul r7,r6,r7
	asr r5,r6,#31
	rsb r7,r5,r7,asr #23
	movw r5,#57607
	movt r5,#1525  @ 100000007
	mul r7,r7,r5
	sub r5,r6,r7
	ldr r7,.LPIC10
	str r5,[r7]
	ldr r7,.LPIC10
	ldr r6,[r7]
	cmp r6,#0
	blt .sampleL9
.sampleL10:
	ldr r7,.LPIC10
	ldr r6,[r7]
.sampleL7:
	vmov s27,r6
	vcvt.f32.s32 s27,s27
	vdiv.f32 s23,s27,s29
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vadd.f32 s22,s27,s23
	vmul.f32 s27,s26,s22
	vdiv.f32 s23,s27,s28
.sampleL11:
.sampleL13:
	vadd.f32 s27,s23,s24
	@%s68 = call float @my_sin(float %s67)
	vpush.64 {d0}
	vmov.f32 s0,s27
	bl my_sin
	vmov.f32 s31,s0
	vpop.64 {d0}
	vmov.f32 s22,s31
.sampleL12:
	@%s36 = call float @my_sin(float %s29)
	vpush.64 {d0}
	vmov.f32 s0,s23
	bl my_sin
	vmov.f32 s31,s0
	vpop.64 {d0}
	vmov.f32 s27,s31
	@%s37 = call float @trace(float %s1,float %s2,float %s68,float %s36)
	vpush.64 {d0}
	vmov.f32 s2,s22
	vmov.f32 s3,s27
	bl trace
	vmov.f32 s31,s0
	vpop.64 {d0}
	vmov.f32 s23,s31
	vadd.f32 s27,s25,s23
	add r7,r8,#1
.sampleL4:
	cmp r7,#24
	blt .sampleL15
.sampleL5:
	mov r6,#24
	vmov s23,r6
	vcvt.f32.s32 s23,s23
	vdiv.f32 s22,s27,s23
	vmov.f32 s0,s22
	add sp,sp,#8
	vpop.64 {d11,d12,d13,d14}
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.sampleL15:
	mov r8,r7
	vmov s25,s27
	bl .sampleL3
.sampleL9:
	ldr r7,.LPIC10
	ldr r6,[r7]
	movw r7,#57607
	movt r7,#1525  @ 100000007
	add r5,r6,r7
	ldr r7,.LPIC10
	str r5,[r7]
	bl .sampleL10
write_pgm:@r4 r5 r6 r7 r8 d12 d13 d14 d15 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	vpush.64 {d12,d13,d14,d15}
	add fp,sp,#4
	sub sp,sp,#8
.write_pgmL0:
.write_pgmL1:
	@call void @putch(i32 80)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#80
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 50)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#50
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 192)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#192
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#32
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 192)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#192
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#32
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 255)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#255
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
.write_pgmL12:
	mov r8,#192
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	movw r8,#0
	movt r8,#17279  @ 1132396544
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s28,s27
	mov r8,#0
.write_pgmL3:
.write_pgmL13:
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s28,s29
	mov r7,#0
.write_pgmL7:
	vmov s28,r7
	vcvt.f32.s32 s28,s28
	vdiv.f32 s25,s28,s29
	@%s39 = call float @sample(float %s34,float %s38)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s25
	vmov.f32 s1,s27
	bl sample
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s28,s31
	vmul.f32 s25,s28,s26
	vcvt.s32.f32 s31,s25
	vmov r6,s31
	cmp r6,#255
	bgt .write_pgmL10
.write_pgmL16:
	mov r5,r6
.write_pgmL11:
	@call void @putint(i32 %r71)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#32
	bl putch
	add sp,sp,#4 @stack align 8bytes
	add r6,r7,#1
.write_pgmL8:
	cmp r6,#192
	blt .write_pgmL15
.write_pgmL9:
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	add r4,r8,#1
.write_pgmL4:
	cmp r4,#192
	blt .write_pgmL14
.write_pgmL5:
	add sp,sp,#8
	vpop.64 {d12,d13,d14,d15}
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.write_pgmL14:
	mov r8,r4
	bl .write_pgmL3
.write_pgmL15:
	mov r7,r6
	bl .write_pgmL7
.write_pgmL10:
	mov r5,#255
	bl .write_pgmL11
main:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@call void @write_pgm()
	bl write_pgm
	mov r0,#0
	add sp,sp,#8
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
