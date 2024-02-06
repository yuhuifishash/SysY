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
write_pgm:@r6 r7 r8 d14 
	push {fp,lr}
	push {r6,r7,r8}
	vpush.64 {d14}
	add fp,sp,#4
	sub sp,sp,#20
.write_pgmL0:
	vstr.32 s0,[fp,#-20]
.write_pgmL1:
	mov r8,#80
	@call void @putch(i32 %r2)
	mov r0,r8
	bl putch
	mov r8,#50
	@call void @putch(i32 %r3)
	mov r0,r8
	bl putch
	mov r8,#10
	@call void @putch(i32 %r4)
	mov r0,r8
	bl putch
	ldr r8,.LPIC7
	ldr r7,[r8]
	@call void @putint(i32 %r5)
	mov r0,r7
	bl putint
	mov r8,#32
	@call void @putch(i32 %r6)
	mov r0,r8
	bl putch
	ldr r8,.LPIC5
	ldr r7,[r8]
	@call void @putint(i32 %r7)
	mov r0,r7
	bl putint
	mov r8,#32
	@call void @putch(i32 %r8)
	mov r0,r8
	bl putch
	mov r8,#255
	@call void @putint(i32 %r9)
	mov r0,r8
	bl putint
	mov r8,#10
	@call void @putch(i32 %r10)
	mov r0,r8
	bl putch
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	blt .write_pgmL3
.write_pgmL5:
	add sp,sp,#20
	vpop.64 {d14}
	pop {r6,r7,r8}
	pop {fp,pc}
.write_pgmL3:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC7
	ldr r6,[r7]
	cmp r8,r6
	blt .write_pgmL7
.write_pgmL9:
	mov r8,#10
	@call void @putch(i32 %r38)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.write_pgmL4:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	blt .write_pgmL3
	bge .write_pgmL5
.write_pgmL7:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	vldr.32 s29,[fp,#-20]
	@%r28 = call i32 @rotate(i32 %r25,i32 %r26,float %s28)
	mov r0,r8
	mov r1,r7
	vmov.f32 s0,s29
	bl rotate
	mov r6,r0
	@call void @putint(i32 %r28)
	mov r0,r6
	bl putint
	mov r8,#32
	@call void @putch(i32 %r29)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.write_pgmL8:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC7
	ldr r6,[r7]
	cmp r8,r6
	blt .write_pgmL7
	bge .write_pgmL9
main:@r6 r7 r8 d14 
	push {fp,lr}
	push {r6,r7,r8}
	vpush.64 {d14}
	add fp,sp,#4
	sub sp,sp,#12
.mainL0:
.mainL1:
	@%s2 = call float @getfloat()
	bl getfloat
	vmov.f32 s31,s0
	vmov.f32 s29,s31
	vstr.32 s29,[fp,#-12]
	@%r2 = call i32 @getch()
	bl getch
	mov r8,r0
	@%r3 = call i32 @read_image()
	bl read_image
	mov r8,r0
	mov r7,#0
	cmp r8,r7
	blt .mainL2
.mainL3:
	vldr.32 s29,[fp,#-12]
	@call void @write_pgm(float %s11)
	vmov.f32 s0,s29
	bl write_pgm
	mov r8,#0
	mov r0,r8
	add sp,sp,#12
	vpop.64 {d14}
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL2:
	mov r8,#1
	rsb r7,r8,#0
	mov r0,r7
	add sp,sp,#12
	vpop.64 {d14}
	pop {r6,r7,r8}
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
	ldr r8,.LPIC4
	vldr.32 s28,[r8]
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	bgt .my_sinL2
.my_sinL4:
	vldr.32 s29,[fp,#-16]
	ldr r8,.LPIC4
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
	ldr r8,.LPIC3
	vldr.32 s28,[r8]
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	bgt .my_sinL6
.my_sinL7:
	vldr.32 s29,[fp,#-16]
	ldr r8,.LPIC3
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
	ldr r8,.LPIC4
	vldr.32 s28,[r8]
	vadd.f32 s27,s29,s28
	vstr.32 s27,[fp,#-16]
	bl .my_sinL9
.my_sinL6:
	vldr.32 s29,[fp,#-16]
	ldr r8,.LPIC4
	vldr.32 s28,[r8]
	vsub.f32 s27,s29,s28
	vstr.32 s27,[fp,#-16]
	bl .my_sinL7
.my_sinL2:
	vldr.32 s29,[fp,#-16]
	ldr r8,.LPIC4
	vldr.32 s28,[r8]
	vdiv.f32 s27,s29,s28
	vcvt.s32.f32 s31,s27
	vmov r7,s31
	str r7,[fp,#-12]
	vldr.32 s26,[fp,#-16]
	ldr r6,[fp,#-12]
	ldr r5,.LPIC4
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
	ldr r8,.LPIC3
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
read_image:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.read_imageL0:
.read_imageL1:
	@%r0 = call i32 @getch()
	bl getch
	mov r8,r0
	mov r7,#80
	cmp r8,r7
	bne .read_imageL2
.read_imageL4:
	@%r5 = call i32 @getch()
	bl getch
	mov r8,r0
	mov r7,#50
	cmp r8,r7
	bne .read_imageL2
.read_imageL3:
	@%r15 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC7
	str r8,[r7]
	@%r16 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC5
	str r8,[r7]
	ldr r8,.LPIC7
	ldr r7,[r8]
	ldr r8,.LPIC2
	ldr r6,[r8]
	cmp r7,r6
	bgt .read_imageL6
.read_imageL10:
	ldr r8,.LPIC5
	ldr r7,[r8]
	ldr r8,.LPIC1
	ldr r6,[r8]
	cmp r7,r6
	bgt .read_imageL6
.read_imageL8:
	@%r30 = call i32 @getint()
	bl getint
	mov r8,r0
	mov r7,#255
	cmp r8,r7
	bne .read_imageL6
.read_imageL7:
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	blt .read_imageL13
.read_imageL15:
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.read_imageL13:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC7
	ldr r6,[r7]
	cmp r8,r6
	blt .read_imageL17
.read_imageL19:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.read_imageL14:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC5
	ldr r6,[r7]
	cmp r8,r6
	blt .read_imageL13
	bge .read_imageL15
.read_imageL17:
	@%r54 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,[fp,#-16]
	ldr r6,.LPIC7
	ldr r5,[r6]
	mul r6,r7,r5
	ldr r7,[fp,#-12]
	add r5,r6,r7
	mov r7,r5
	ldr r6,.LPIC6
	add r5,r6,r7,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.read_imageL18:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC7
	ldr r6,[r7]
	cmp r8,r6
	blt .read_imageL17
	bge .read_imageL19
.read_imageL6:
	mov r8,#1
	rsb r7,r8,#0
	mov r0,r7
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.read_imageL2:
	mov r8,#1
	rsb r7,r8,#0
	mov r0,r7
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
rotate:@r6 r7 r8 d13 d14 d15 
	push {fp,lr}
	push {r6,r7,r8}
	vpush.64 {d13,d14,d15}
	add fp,sp,#4
	sub sp,sp,#52
.rotateL0:
	str r0,[fp,#-44]
	str r1,[fp,#-48]
	vstr.32 s0,[fp,#-52]
.rotateL1:
	vldr.32 s29,[fp,#-52]
	@%s9 = call float @my_sin(float %s8)
	vmov.f32 s0,s29
	bl my_sin
	vmov.f32 s31,s0
	vmov.f32 s28,s31
	vstr.32 s28,[fp,#-40]
	vldr.32 s29,[fp,#-52]
	@%s12 = call float @my_cos(float %s11)
	vmov.f32 s0,s29
	bl my_cos
	vmov.f32 s31,s0
	vmov.f32 s28,s31
	vstr.32 s28,[fp,#-36]
	ldr r8,.LPIC7
	ldr r7,[r8]
	mov r8,#2
	@%r15 = call i32 @__aeabi_idiv(i32 %r13,i32 %r14)
	mov r0,r7
	mov r1,r8
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-32]
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,#2
	@%r19 = call i32 @__aeabi_idiv(i32 %r17,i32 %r18)
	mov r0,r7
	mov r1,r8
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-28]
	ldr r8,[fp,#-44]
	ldr r7,[fp,#-32]
	sub r6,r8,r7
	str r6,[fp,#-24]
	ldr r8,[fp,#-48]
	ldr r7,[fp,#-28]
	sub r6,r8,r7
	str r6,[fp,#-20]
	ldr r8,[fp,#-24]
	vldr.32 s29,[fp,#-36]
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vmul.f32 s27,s28,s29
	ldr r8,[fp,#-20]
	vldr.32 s29,[fp,#-40]
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vmul.f32 s26,s28,s29
	vsub.f32 s29,s27,s26
	ldr r8,[fp,#-32]
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vadd.f32 s27,s29,s28
	vcvt.s32.f32 s31,s27
	vmov r8,s31
	str r8,[fp,#-16]
	ldr r8,[fp,#-24]
	vldr.32 s29,[fp,#-40]
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vmul.f32 s27,s28,s29
	ldr r8,[fp,#-20]
	vldr.32 s29,[fp,#-36]
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vmul.f32 s26,s28,s29
	vadd.f32 s29,s27,s26
	ldr r8,[fp,#-28]
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vadd.f32 s27,s29,s28
	vcvt.s32.f32 s31,s27
	vmov r8,s31
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,#0
	cmp r8,r7
	blt .rotateL2
.rotateL8:
	ldr r8,[fp,#-16]
	bl .LPIC9
.LPIC8:
	.word width
.LPIC9:
	ldr r7,.LPIC8
	ldr r6,[r7]
	cmp r8,r6
	bge .rotateL2
.rotateL6:
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	blt .rotateL2
.rotateL4:
	ldr r8,[fp,#-12]
	bl .LPIC11
.LPIC10:
	.word height
.LPIC11:
	ldr r7,.LPIC10
	ldr r6,[r7]
	cmp r8,r6
	bge .rotateL2
.rotateL3:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC8
	ldr r6,[r7]
	mul r7,r8,r6
	ldr r8,[fp,#-16]
	add r6,r7,r8
	mov r8,r6
	bl .LPIC13
.LPIC12:
	.word image
.LPIC13:
	ldr r7,.LPIC12
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#52
	vpop.64 {d13,d14,d15}
	pop {r6,r7,r8}
	pop {fp,pc}
.rotateL2:
	mov r8,#0
	mov r0,r8
	add sp,sp,#52
	vpop.64 {d13,d14,d15}
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
