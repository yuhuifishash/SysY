.arch armv7-a
.fpu vfpv3-d16
.arm
.data
MAX_WIDTH:
	.word  1024
MAX_HEIGHT:
	.word  1024
image:
	.space  4194304
width:
	.word  0
height:
	.word  0
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
	.word  MAX_HEIGHT
.LPIC2:
	.word  MAX_WIDTH
.LPIC3:
	.word  PI
.LPIC4:
	.word  TWO_PI
.LPIC5:
	.word  height
.LPIC6:
	.word  image
.LPIC7:
	.word  width
write_pgm:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.write_pgmL0:
.write_pgmL1:
	@call void @putch(i32 80)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,#80
	bl putch
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 50)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,#50
	bl putch
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,#10
	bl putch
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC7
	ldr r7,[r8]
	@call void @putint(i32 %r5)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,r7
	bl putint
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,#32
	bl putch
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC5
	ldr r7,[r8]
	@call void @putint(i32 %r7)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,r7
	bl putint
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,#32
	bl putch
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 255)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,#255
	bl putint
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,#10
	bl putch
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	cmp r7,#0
	bgt .write_pgmL10
.write_pgmL5:
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.write_pgmL10:
	mov r8,#0
.write_pgmL3:
	ldr r7,.LPIC7
	ldr r6,[r7]
	cmp r6,#0
	bgt .write_pgmL11
.write_pgmL9:
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,#10
	bl putch
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	add r7,r8,#1
.write_pgmL4:
	ldr r6,.LPIC5
	ldr r5,[r6]
	cmp r7,r5
	bge .write_pgmL5
.write_pgmL12:
	mov r8,r7
	bl .write_pgmL3
.write_pgmL11:
	mov r7,#0
.write_pgmL7:
	@%r28 = call i32 @rotate(i32 %r49,i32 %r51,float %s1)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,r7
	mov r1,r8
	bl rotate
	mov r6,r0
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r28)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,r6
	bl putint
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0}
	mov r0,#32
	bl putch
	vpop.64 {d0}
	add sp,sp,#4 @stack align 8bytes
	add r6,r7,#1
.write_pgmL8:
	ldr r5,.LPIC7
	ldr r4,[r5]
	cmp r6,r4
	bge .write_pgmL9
.write_pgmL13:
	mov r7,r6
	bl .write_pgmL7
main:@r7 r8 d14 
	push {fp,lr}
	push {r7,r8}
	vpush.64 {d14}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%s2 = call float @getfloat()
	bl getfloat
	vmov.f32 s31,s0
	vmov.f32 s29,s31
	@%r2 = call i32 @getch()
	bl getch
	mov r8,r0
	@%r3 = call i32 @read_image()
	bl read_image
	mov r8,r0
	cmp r8,#0
	blt .mainL2
.mainL3:
	@call void @write_pgm(float %s2)
	vmov.f32 s0,s29
	bl write_pgm
	mov r0,#0
	add sp,sp,#8
	vpop.64 {d14}
	pop {r7,r8}
	pop {fp,pc}
.mainL2:
	mov r0,#-1
	add sp,sp,#8
	vpop.64 {d14}
	pop {r7,r8}
	pop {fp,pc}
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
read_image:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.read_imageL0:
.read_imageL1:
	@%r0 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	bl getch
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#80
	bne .read_imageL2
.read_imageL4:
	@%r5 = call i32 @getch()
	sub sp,sp,#4 @stack align 8bytes
	bl getch
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#50
	bne .read_imageL2
.read_imageL3:
	@%r15 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC7
	str r8,[r7]
	@%r16 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC5
	str r8,[r7]
	ldr r8,.LPIC7
	ldr r7,[r8]
	cmp r7,#1024
	bgt .read_imageL6
.read_imageL10:
	ldr r8,.LPIC5
	ldr r7,[r8]
	cmp r7,#1024
	bgt .read_imageL6
.read_imageL8:
	@%r30 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#255
	bne .read_imageL6
.read_imageL7:
	ldr r8,.LPIC5
	ldr r7,[r8]
	cmp r7,#0
	bgt .read_imageL20
.read_imageL15:
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.read_imageL20:
	mov r8,#0
.read_imageL13:
	ldr r7,.LPIC7
	ldr r6,[r7]
	cmp r6,#0
	bgt .read_imageL21
.read_imageL19:
	add r7,r8,#1
.read_imageL14:
	ldr r6,.LPIC5
	ldr r5,[r6]
	cmp r7,r5
	bge .read_imageL15
.read_imageL22:
	mov r8,r7
	bl .read_imageL13
.read_imageL21:
	mov r7,#0
.read_imageL17:
	@%r54 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r5,.LPIC7
	ldr r4,[r5]
	mul r5,r8,r4
	add r4,r5,r7
	mov r5,r4
	ldr r4,.LPIC6
	add r3,r4,r5,lsl #2
	str r6,[r3]
	add r6,r7,#1
.read_imageL18:
	ldr r5,.LPIC7
	ldr r4,[r5]
	cmp r6,r4
	bge .read_imageL19
.read_imageL23:
	mov r7,r6
	bl .read_imageL17
.read_imageL6:
	mov r0,#-1
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.read_imageL2:
	mov r0,#-1
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
rotate:@r5 r6 r7 r8 d11 d12 d13 d14 d15 
	push {fp,lr}
	push {r5,r6,r7,r8}
	vpush.64 {d11,d12,d13,d14,d15}
	add fp,sp,#4
	sub sp,sp,#8
.rotateL0:
.rotateL1:
	@%s9 = call float @my_sin(float %s3)
	push {r0,r1}
	vpush.64 {d0}
	bl my_sin
	vmov.f32 s31,s0
	vpop.64 {d0}
	pop {r0,r1}
	vmov.f32 s29,s31
.rotateL10:
.rotateL12:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	movw r8,#4059
	movt r8,#16457  @ 1078530011
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vadd.f32 s26,s28,s27
	mov r8,#2
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s26,s28
	vadd.f32 s28,s0,s27
	@%s98 = call float @my_sin(float %s97)
	push {r0,r1}
	vmov.f32 s0,s28
	bl my_sin
	vmov.f32 s31,s0
	pop {r0,r1}
	vmov.f32 s27,s31
.rotateL11:
	ldr r8,.LPIC7
	ldr r7,[r8]
	add r8,r7,r7,lsr #31
	asr r7,r8,#1
	ldr r8,.LPIC5
	ldr r6,[r8]
	add r8,r6,r6,lsr #31
	asr r6,r8,#1
	sub r8,r0,r7
	sub r5,r1,r6
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vmul.f32 s26,s28,s27
	vmov s25,r5
	vcvt.f32.s32 s25,s25
	vmul.f32 s24,s25,s29
	vsub.f32 s23,s26,s24
	vmov s26,r7
	vcvt.f32.s32 s26,s26
	vadd.f32 s24,s23,s26
	vcvt.s32.f32 s31,s24
	vmov r8,s31
	vmul.f32 s26,s28,s29
	vmul.f32 s29,s25,s27
	vadd.f32 s28,s26,s29
	vmov s29,r6
	vcvt.f32.s32 s29,s29
	vadd.f32 s27,s28,s29
	vcvt.s32.f32 s31,s27
	vmov r7,s31
	cmp r8,#0
	blt .rotateL2
.rotateL8:
	ldr r6,.LPIC7
	ldr r5,[r6]
	cmp r8,r5
	bge .rotateL2
.rotateL6:
	cmp r7,#0
	blt .rotateL2
.rotateL4:
	ldr r6,.LPIC5
	ldr r5,[r6]
	cmp r7,r5
	bge .rotateL2
.rotateL3:
	ldr r6,.LPIC7
	ldr r5,[r6]
	mul r6,r7,r5
	add r7,r6,r8
	mov r8,r7
	bl .LPIC9
.LPIC8:
	.word image
.LPIC9:
	ldr r7,.LPIC8
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#8
	vpop.64 {d11,d12,d13,d14,d15}
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.rotateL2:
	mov r0,#0
	add sp,sp,#8
	vpop.64 {d11,d12,d13,d14,d15}
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
