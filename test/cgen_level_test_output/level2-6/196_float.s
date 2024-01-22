.arch armv7-a
.fpu vfpv3-d16
.arm
.data
RADIUS:
	.word  1085276160
PI:
	.word  1078530011
EPS:
	.word  897988541
PI_HEX:
	.word  1078530011
HEX2:
	.word  1033895936
FACT:
	.word  -956241920
EVAL1:
	.word  1119752446
EVAL2:
	.word  1107966695
EVAL3:
	.word  1107966695
CONV1:
	.word  1130954752
CONV2:
	.word  1166012416
MAX:
	.word  1000000000
TWO:
	.word  2
THREE:
	.word  3
FIVE:
	.word  5
.text
.global main
.LPIC0:
	.word  CONV1
.LPIC1:
	.word  CONV2
.LPIC2:
	.word  EPS
.LPIC3:
	.word  EVAL1
.LPIC4:
	.word  EVAL2
.LPIC5:
	.word  EVAL3
.LPIC6:
	.word  FACT
.LPIC7:
	.word  FIVE
.LPIC8:
	.word  HEX2
.LPIC9:
	.word  MAX
.LPIC10:
	.word  PI
.LPIC11:
	.word  PI_HEX
.LPIC12:
	.word  RADIUS
.LPIC13:
	.word  THREE
.LPIC14:
	.word  TWO
float_abs:@r8 d13 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#12
.float_absL0:
	vstr.32 s0,[fp,#-12]
.float_absL1:
	vldr.32 s29,[fp,#-12]
	mov r8,#0
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	blt .float_absL2
.float_absL3:
	vldr.32 s29,[fp,#-12]
	vmov.f32 s0,s29
	add sp,sp,#12
	vpop.64 {d13,d14}
	pop {r8}
	pop {fp,pc}
.float_absL2:
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
circle_area:@r6 r7 r8 d13 d14 
	push {fp,lr}
	push {r6,r7,r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#12
.circle_areaL0:
	str r0,[fp,#-12]
.circle_areaL1:
	ldr r8,.LPIC10
	vldr.32 s29,[r8]
	ldr r8,[fp,#-12]
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vmul.f32 s27,s29,s28
	ldr r8,[fp,#-12]
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vmul.f32 s28,s27,s29
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-12]
	mul r6,r8,r7
	ldr r8,.LPIC10
	vldr.32 s29,[r8]
	vmov s27,r6
	vcvt.f32.s32 s27,s27
	vmul.f32 s26,s27,s29
	vadd.f32 s29,s28,s26
	mov r8,#2
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s29,s28
	vmov.f32 s0,s27
	add sp,sp,#12
	vpop.64 {d13,d14}
	pop {r6,r7,r8}
	pop {fp,pc}
float_eq:@r7 r8 d13 d14 d15 
	push {fp,lr}
	push {r7,r8}
	vpush.64 {d13,d14,d15}
	add fp,sp,#4
	sub sp,sp,#16
.float_eqL0:
	vstr.32 s0,[fp,#-12]
	vstr.32 s1,[fp,#-16]
.float_eqL1:
	vldr.32 s29,[fp,#-12]
	vldr.32 s28,[fp,#-16]
	vsub.f32 s27,s29,s28
	@%s8 = call float @float_abs(float %s7)
	vmov.f32 s0,s27
	bl float_abs
	vmov.f32 s31,s0
	vmov.f32 s29,s31
	ldr r8,.LPIC2
	vldr.32 s28,[r8]
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	blt .float_eqL2
.float_eqL3:
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	vpop.64 {d13,d14,d15}
	pop {r7,r8}
	pop {fp,pc}
.float_eqL2:
	mov r8,#1
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r7,#1073741824
	str r7,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vmul.f32 s28,s29,s27
	mov r8,#2
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vdiv.f32 s27,s28,s29
	vcvt.s32.f32 s31,s27
	vmov r8,s31
	mov r0,r8
	add sp,sp,#16
	vpop.64 {d13,d14,d15}
	pop {r7,r8}
	pop {fp,pc}
error:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.errorL0:
.errorL1:
	mov r8,#101
	@call void @putch(i32 %r0)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#114
	@call void @putch(i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#114
	@call void @putch(i32 %r2)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#111
	@call void @putch(i32 %r3)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#114
	@call void @putch(i32 %r4)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r5)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
ok:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.okL0:
.okL1:
	mov r8,#111
	@call void @putch(i32 %r0)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#107
	@call void @putch(i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r2)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
assert:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.assertL0:
	str r0,[fp,#-12]
.assertL1:
	ldr r8,[fp,#-12]
	cmp r8,#0
	beq .assertL2
.assertL3:
	@call void @ok()
	sub sp,sp,#4 @stack align 8bytes
	bl ok
	add sp,sp,#4 @stack align 8bytes
.assertL4:
	add sp,sp,#12
	pop {r7,r8}
	pop {fp,pc}
.assertL2:
	@call void @error()
	sub sp,sp,#4 @stack align 8bytes
	bl error
	add sp,sp,#4 @stack align 8bytes
	bl .assertL4
main:@r6 r7 r8 d13 d14 d15 
	push {fp,lr}
	push {r6,r7,r8}
	vpush.64 {d13,d14,d15}
	add fp,sp,#4
	sub sp,sp,#72
.mainL0:
.mainL1:
	ldr r8,.LPIC8
	vldr.32 s29,[r8]
	ldr r8,.LPIC6
	vldr.32 s28,[r8]
	@%r2 = call i32 @float_eq(float %s1,float %s2)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s29
	vmov.f32 s1,s28
	bl float_eq
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#0
	ite eq
	moveq r8, #1
	movne r8, #0
	uxtb r8, r8
	@call void @assert(i32 %r4)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl assert
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC3
	vldr.32 s29,[r8]
	ldr r8,.LPIC4
	vldr.32 s28,[r8]
	@%r7 = call i32 @float_eq(float %s6,float %s7)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s29
	vmov.f32 s1,s28
	bl float_eq
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#0
	ite eq
	moveq r8, #1
	movne r8, #0
	uxtb r8, r8
	@call void @assert(i32 %r9)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl assert
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC4
	vldr.32 s29,[r8]
	ldr r8,.LPIC5
	vldr.32 s28,[r8]
	@%r12 = call i32 @float_eq(float %s11,float %s12)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s29
	vmov.f32 s1,s28
	bl float_eq
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @assert(i32 %r12)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl assert
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC12
	vldr.32 s29,[r8]
	vcvt.s32.f32 s31,s29
	vmov r8,s31
	@%s16 = call float @circle_area(i32 %r14)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl circle_area
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s29,s31
	ldr r8,.LPIC7
	ldr r7,[r8]
	@%s18 = call float @circle_area(i32 %r16)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl circle_area
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s28,s31
	@%r18 = call i32 @float_eq(float %s16,float %s18)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s29
	vmov.f32 s1,s28
	bl float_eq
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @assert(i32 %r18)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl assert
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC0
	vldr.32 s29,[r8]
	ldr r8,.LPIC1
	vldr.32 s28,[r8]
	@%r21 = call i32 @float_eq(float %s20,float %s21)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s29
	vmov.f32 s1,s28
	bl float_eq
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#0
	ite eq
	moveq r8, #1
	movne r8, #0
	uxtb r8, r8
	@call void @assert(i32 %r23)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl assert
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r8,#1069547520
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	vcmp.f32 s27,#0.000000
	vmrs APSR_nzcv, FPSCR
	bne .mainL2
.mainL3:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r8,#13107
	movt r8,#16467  @ 1079194419
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	vcmp.f32 s27,#0.000000
	vmrs APSR_nzcv, FPSCR
	ite eq
	moveq r7, #1
	movne r7, #0
	uxtb r7, r7
	cmp r7,#0
	beq .mainL4
.mainL5:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	vcmp.f32 s27,#0.000000
	vmrs APSR_nzcv, FPSCR
	bne .mainL8
.mainL7:
	mov r8,#0
	cmp r8,#0
	beq .mainL12
.mainL10:
	@call void @ok()
	sub sp,sp,#4 @stack align 8bytes
	bl ok
	add sp,sp,#4 @stack align 8bytes
.mainL11:
	mov r8,#1
	str r8,[fp,#-72]
	mov r8,#0
	str r8,[fp,#-68]
	mvn r8,#63
	add r7,fp,r8
	@call void @memset(i32 %r123,i32 0,i32 40)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#40
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r8,#1065353216
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	mvn r8,#63
	add r7,fp,r8
	vstr.32 s27,[r7]
	mov r8,#2
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	mov r8,#1
	mvn r7,#63
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s29,[r7]
	mvn r8,#63
	add r7,fp,r8
	@%r58 = call i32 @getfarray(ptr %r57)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl getfarray
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-24]
.mainL14:
	ldr r8,[fp,#-72]
	ldr r7,.LPIC9
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL15
.mainL16:
	ldr r8,[fp,#-24]
	mvn r7,#63
	add r6,fp,r7
	@call void @putfarray(i32 %r98,ptr %r99)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r6
	bl putfarray
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#72
	vpop.64 {d13,d14,d15}
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL15:
	@%s66 = call float @getfloat()
	sub sp,sp,#4 @stack align 8bytes
	bl getfloat
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s29,s31
	vstr.32 s29,[fp,#-20]
	ldr r8,.LPIC10
	vldr.32 s29,[r8]
	vldr.32 s28,[fp,#-20]
	vmul.f32 s27,s29,s28
	vldr.32 s29,[fp,#-20]
	vmul.f32 s28,s27,s29
	vstr.32 s28,[fp,#-16]
	vldr.32 s29,[fp,#-20]
	vcvt.s32.f32 s31,s29
	vmov r8,s31
	@%s76 = call float @circle_area(i32 %r74)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl circle_area
	vmov.f32 s31,s0
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s29,s31
	vstr.32 s29,[fp,#-12]
	ldr r8,[fp,#-68]
	mov r7,r8
	mvn r8,#63
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	vldr.32 s29,[r8]
	vldr.32 s28,[fp,#-20]
	vadd.f32 s27,s29,s28
	ldr r8,[fp,#-68]
	mov r7,r8
	mvn r8,#63
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	vstr.32 s27,[r8]
	vldr.32 s29,[fp,#-16]
	@call void @putfloat(float %s84)
	sub sp,sp,#4 @stack align 8bytes
	vmov.f32 s0,s29
	bl putfloat
	add sp,sp,#4 @stack align 8bytes
	mov r8,#32
	@call void @putch(i32 %r84)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	vldr.32 s29,[fp,#-12]
	vcvt.s32.f32 s31,s29
	vmov r8,s31
	@call void @putint(i32 %r86)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r87)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-72]
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r7,#0
	movt r7,#16672  @ 1092616192
	str r7,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	vsub.f32 s28,s29,s27
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	vsub.f32 s27,s29,s28
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vmul.f32 s28,s29,s27
	vcvt.s32.f32 s31,s28
	vmov r8,s31
	str r8,[fp,#-72]
	ldr r8,[fp,#-68]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-68]
	bl .mainL14
.mainL12:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r8,#39322
	movt r8,#16025  @ 1050253722
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	vcmp.f32 s27,#0.000000
	vmrs APSR_nzcv, FPSCR
	bne .mainL10
	beq .mainL11
.mainL8:
	mov r8,#3
	cmp r8,#0
	beq .mainL7
.mainL6:
	@call void @error()
	sub sp,sp,#4 @stack align 8bytes
	bl error
	add sp,sp,#4 @stack align 8bytes
	bl .mainL7
.mainL4:
	@call void @ok()
	sub sp,sp,#4 @stack align 8bytes
	bl ok
	add sp,sp,#4 @stack align 8bytes
	bl .mainL5
.mainL2:
	@call void @ok()
	sub sp,sp,#4 @stack align 8bytes
	bl ok
	add sp,sp,#4 @stack align 8bytes
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
