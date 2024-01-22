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
float_abs:@r8 d14 
	push {fp,lr}
	push {r8}
	vpush.64 {d14}
	add fp,sp,#4
	sub sp,sp,#8
.float_absL0:
.float_absL1:
	mov r8,#0
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vcmp.f32 s0,s29
	vmrs APSR_nzcv, FPSCR
	blt .float_absL2
.float_absL3:
	add sp,sp,#8
	vpop.64 {d14}
	pop {r8}
	pop {fp,pc}
.float_absL2:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	vsub.f32 s28,s29,s0
	vmov.f32 s0,s28
	add sp,sp,#8
	vpop.64 {d14}
	pop {r8}
	pop {fp,pc}
circle_area:@r7 r8 d13 d14 
	push {fp,lr}
	push {r7,r8}
	vpush.64 {d13,d14}
	add fp,sp,#4
	sub sp,sp,#8
.circle_areaL0:
.circle_areaL1:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r8,#4059
	movt r8,#16457  @ 1078530011
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	vmov s29,r0
	vcvt.f32.s32 s29,s29
	vmul.f32 s28,s27,s29
	vmul.f32 s27,s28,s29
	mul r8,r0,r0
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r7,#4059
	movt r7,#16457  @ 1078530011
	str r7,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s26,s29,s28
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vmul.f32 s28,s29,s26
	vadd.f32 s29,s27,s28
	mov r8,#2
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vdiv.f32 s27,s29,s28
	vmov.f32 s0,s27
	add sp,sp,#8
	vpop.64 {d13,d14}
	pop {r7,r8}
	pop {fp,pc}
float_eq:@r8 d12 d13 d14 d15 
	push {fp,lr}
	push {r8}
	vpush.64 {d12,d13,d14,d15}
	add fp,sp,#4
	sub sp,sp,#8
.float_eqL0:
.float_eqL1:
	vsub.f32 s29,s0,s1
.float_eqL5:
.float_eqL7:
	mov r8,#0
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	blt .float_eqL8
.float_eqL9:
	vmov s28,s29
.float_eqL6:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	movw r8,#14269
	movt r8,#13702  @ 897988541
	str r8,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s25,s27,s26
	vcmp.f32 s28,s25
	vmrs APSR_nzcv, FPSCR
	blt .float_eqL2
.float_eqL3:
	mov r0,#0
	add sp,sp,#8
	vpop.64 {d12,d13,d14,d15}
	pop {r8}
	pop {fp,pc}
.float_eqL2:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	mov r8,#1073741824
	str r8,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s25,s27,s26
	mov r8,#1
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vmul.f32 s26,s27,s25
	mov r8,#2
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vdiv.f32 s25,s26,s27
	vcvt.s32.f32 s31,s25
	vmov r8,s31
	mov r0,r8
	add sp,sp,#8
	vpop.64 {d12,d13,d14,d15}
	pop {r8}
	pop {fp,pc}
.float_eqL8:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vsub.f32 s26,s27,s29
	vmov s28,s26
	bl .float_eqL6
error:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.errorL0:
.errorL1:
	@call void @putch(i32 101)
	mov r0,#101
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 111)
	mov r0,#111
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	add sp,sp,#8
	pop {fp,pc}
ok:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.okL0:
.okL1:
	@call void @putch(i32 111)
	mov r0,#111
	bl putch
	@call void @putch(i32 107)
	mov r0,#107
	bl putch
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	add sp,sp,#8
	pop {fp,pc}
assert:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.assertL0:
.assertL1:
	cmp r0,#0
	beq .assertL2
.assertL3:
.assertL8:
.assertL10:
	@call void @putch(i32 111)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#111
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 107)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#107
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
.assertL9:
.assertL4:
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.assertL2:
.assertL5:
.assertL7:
	@call void @putch(i32 101)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#101
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 114)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#114
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 114)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#114
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 111)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#111
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 114)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#114
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
.assertL6:
	bl .assertL4
main:@r4 r5 r6 r7 r8 r9 r10 d8 d9 d10 d11 d12 d13 d14 d15 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	vpush.64 {d8,d9,d10,d11,d12,d13,d14,d15}
	add fp,sp,#4
	sub sp,sp,#60
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r8,#0
	movt r8,#15776  @ 1033895936
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	movw r8,#59392
	movt r8,#50944  @ -956241920
	str r8,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s26,s29,s28
.mainL18:
.mainL20:
	vsub.f32 s29,s27,s26
.mainL23:
.mainL25:
	mov r8,#0
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	blt .mainL26
.mainL27:
	vmov s28,s29
.mainL24:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	movw r8,#14269
	movt r8,#13702  @ 897988541
	str r8,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s25,s27,s26
	vcmp.f32 s28,s25
	vmrs APSR_nzcv, FPSCR
	blt .mainL21
.mainL22:
	mov r9,#0
	str r9,[fp,#-52]
.mainL19:
	ldr r9,[fp,#-52]
	cmp r9,#0
	ite eq
	moveq r6, #1
	movne r6, #0
	uxtb r6, r6
.mainL43:
.mainL45:
	cmp r6,#0
	beq .mainL46
.mainL47:
.mainL52:
.mainL54:
	@call void @putch(i32 111)
	mov r0,#111
	bl putch
	@call void @putch(i32 107)
	mov r0,#107
	bl putch
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
.mainL53:
.mainL48:
.mainL44:
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	movw r7,#4350
	movt r7,#17086  @ 1119752446
	str r7,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s25,s27,s26
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	movw r7,#15079
	movt r7,#16906  @ 1107966695
	str r7,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s24,s27,s26
.mainL55:
.mainL57:
	vsub.f32 s27,s25,s24
.mainL60:
.mainL62:
	mov r7,#0
	vmov s26,r7
	vcvt.f32.s32 s26,s26
	vcmp.f32 s27,s26
	vmrs APSR_nzcv, FPSCR
	blt .mainL63
.mainL64:
	vmov s26,s27
.mainL61:
	mov r7,#0
	str r7,[fp,#-8]
	vldr.32 s25,[fp,#-8]
	movw r7,#14269
	movt r7,#13702  @ 897988541
	str r7,[fp,#-8]
	vldr.32 s24,[fp,#-8]
	vadd.f32 s23,s25,s24
	vcmp.f32 s26,s23
	vmrs APSR_nzcv, FPSCR
	blt .mainL58
.mainL59:
	mov r9,#0
	str r9,[fp,#-56]
.mainL56:
	ldr r9,[fp,#-56]
	cmp r9,#0
	ite eq
	moveq r5, #1
	movne r5, #0
	uxtb r5, r5
.mainL65:
.mainL67:
	cmp r5,#0
	beq .mainL68
.mainL69:
.mainL74:
.mainL76:
	@call void @putch(i32 111)
	mov r0,#111
	bl putch
	@call void @putch(i32 107)
	mov r0,#107
	bl putch
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
.mainL75:
.mainL70:
.mainL66:
	mov r6,#0
	str r6,[fp,#-8]
	vldr.32 s25,[fp,#-8]
	movw r6,#15079
	movt r6,#16906  @ 1107966695
	str r6,[fp,#-8]
	vldr.32 s24,[fp,#-8]
	vadd.f32 s23,s25,s24
	mov r6,#0
	str r6,[fp,#-8]
	vldr.32 s25,[fp,#-8]
	movw r6,#15079
	movt r6,#16906  @ 1107966695
	str r6,[fp,#-8]
	vldr.32 s24,[fp,#-8]
	vadd.f32 s22,s25,s24
.mainL77:
.mainL79:
	vsub.f32 s25,s23,s22
.mainL82:
.mainL84:
	mov r6,#0
	vmov s24,r6
	vcvt.f32.s32 s24,s24
	vcmp.f32 s25,s24
	vmrs APSR_nzcv, FPSCR
	blt .mainL85
.mainL86:
	vmov s24,s25
.mainL83:
	mov r6,#0
	str r6,[fp,#-8]
	vldr.32 s23,[fp,#-8]
	movw r6,#14269
	movt r6,#13702  @ 897988541
	str r6,[fp,#-8]
	vldr.32 s22,[fp,#-8]
	vadd.f32 s21,s23,s22
	vcmp.f32 s24,s21
	vmrs APSR_nzcv, FPSCR
	blt .mainL80
.mainL81:
	mov r9,#0
	str r9,[fp,#-60]
.mainL78:
.mainL87:
.mainL89:
	ldr r9,[fp,#-60]
	cmp r9,#0
	beq .mainL90
.mainL91:
.mainL96:
.mainL98:
	@call void @putch(i32 111)
	mov r0,#111
	bl putch
	@call void @putch(i32 107)
	mov r0,#107
	bl putch
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
.mainL97:
.mainL92:
.mainL88:
	mov r5,#0
	str r5,[fp,#-8]
	vldr.32 s23,[fp,#-8]
	movw r5,#0
	movt r5,#16560  @ 1085276160
	str r5,[fp,#-8]
	vldr.32 s22,[fp,#-8]
	vadd.f32 s21,s23,s22
	vcvt.s32.f32 s31,s21
	vmov r5,s31
.mainL99:
.mainL101:
	mov r4,#0
	str r4,[fp,#-8]
	vldr.32 s23,[fp,#-8]
	movw r4,#4059
	movt r4,#16457  @ 1078530011
	str r4,[fp,#-8]
	vldr.32 s22,[fp,#-8]
	vadd.f32 s21,s23,s22
	vmov s23,r5
	vcvt.f32.s32 s23,s23
	vmul.f32 s22,s21,s23
	vmul.f32 s21,s22,s23
	mul r4,r5,r5
	mov r5,#0
	str r5,[fp,#-8]
	vldr.32 s23,[fp,#-8]
	movw r5,#4059
	movt r5,#16457  @ 1078530011
	str r5,[fp,#-8]
	vldr.32 s22,[fp,#-8]
	vadd.f32 s20,s23,s22
	vmov s23,r4
	vcvt.f32.s32 s23,s23
	vmul.f32 s22,s23,s20
	vadd.f32 s23,s21,s22
	mov r5,#2
	vmov s22,r5
	vcvt.f32.s32 s22,s22
	vdiv.f32 s21,s23,s22
.mainL100:
.mainL102:
.mainL104:
	mov r5,#0
	str r5,[fp,#-8]
	vldr.32 s23,[fp,#-8]
	movw r5,#4059
	movt r5,#16457  @ 1078530011
	str r5,[fp,#-8]
	vldr.32 s22,[fp,#-8]
	vadd.f32 s20,s23,s22
	mov r5,#5
	vmov s23,r5
	vcvt.f32.s32 s23,s23
	vmul.f32 s22,s20,s23
	vmul.f32 s20,s22,s23
	mov r5,#0
	str r5,[fp,#-8]
	vldr.32 s23,[fp,#-8]
	movw r5,#4059
	movt r5,#16457  @ 1078530011
	str r5,[fp,#-8]
	vldr.32 s22,[fp,#-8]
	vadd.f32 s19,s23,s22
	mov r5,#25
	vmov s23,r5
	vcvt.f32.s32 s23,s23
	vmul.f32 s22,s23,s19
	vadd.f32 s23,s20,s22
	mov r5,#2
	vmov s22,r5
	vcvt.f32.s32 s22,s22
	vdiv.f32 s20,s23,s22
.mainL103:
.mainL105:
.mainL107:
	vsub.f32 s23,s21,s20
.mainL110:
.mainL112:
	mov r5,#0
	vmov s22,r5
	vcvt.f32.s32 s22,s22
	vcmp.f32 s23,s22
	vmrs APSR_nzcv, FPSCR
	blt .mainL113
.mainL114:
	vmov s22,s23
.mainL111:
	mov r5,#0
	str r5,[fp,#-8]
	vldr.32 s21,[fp,#-8]
	movw r5,#14269
	movt r5,#13702  @ 897988541
	str r5,[fp,#-8]
	vldr.32 s20,[fp,#-8]
	vadd.f32 s19,s21,s20
	vcmp.f32 s22,s19
	vmrs APSR_nzcv, FPSCR
	blt .mainL108
.mainL109:
	mov r5,#0
.mainL106:
.mainL115:
.mainL117:
	cmp r5,#0
	beq .mainL118
.mainL119:
.mainL124:
.mainL126:
	@call void @putch(i32 111)
	mov r0,#111
	bl putch
	@call void @putch(i32 107)
	mov r0,#107
	bl putch
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
.mainL125:
.mainL120:
.mainL116:
	mov r4,#0
	str r4,[fp,#-8]
	vldr.32 s21,[fp,#-8]
	movw r4,#0
	movt r4,#17257  @ 1130954752
	str r4,[fp,#-8]
	vldr.32 s20,[fp,#-8]
	vadd.f32 s19,s21,s20
	mov r4,#0
	str r4,[fp,#-8]
	vldr.32 s21,[fp,#-8]
	movw r4,#61440
	movt r4,#17791  @ 1166012416
	str r4,[fp,#-8]
	vldr.32 s20,[fp,#-8]
	vadd.f32 s18,s21,s20
.mainL127:
.mainL129:
	vsub.f32 s21,s19,s18
.mainL132:
.mainL134:
	mov r4,#0
	vmov s20,r4
	vcvt.f32.s32 s20,s20
	vcmp.f32 s21,s20
	vmrs APSR_nzcv, FPSCR
	blt .mainL135
.mainL136:
	vmov s20,s21
.mainL133:
	mov r4,#0
	str r4,[fp,#-8]
	vldr.32 s19,[fp,#-8]
	movw r4,#14269
	movt r4,#13702  @ 897988541
	str r4,[fp,#-8]
	vldr.32 s18,[fp,#-8]
	vadd.f32 s17,s19,s18
	vcmp.f32 s20,s17
	vmrs APSR_nzcv, FPSCR
	blt .mainL130
.mainL131:
	mov r4,#0
.mainL128:
	cmp r4,#0
	ite eq
	moveq r2, #1
	movne r2, #0
	uxtb r2, r2
.mainL137:
.mainL139:
	cmp r2,#0
	beq .mainL140
.mainL141:
.mainL146:
.mainL148:
	@call void @putch(i32 111)
	mov r0,#111
	bl putch
	@call void @putch(i32 107)
	mov r0,#107
	bl putch
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
.mainL147:
.mainL142:
.mainL138:
	mov r3,#0
	str r3,[fp,#-8]
	vldr.32 s19,[fp,#-8]
	mov r3,#1069547520
	str r3,[fp,#-8]
	vldr.32 s18,[fp,#-8]
	vadd.f32 s17,s19,s18
	vcmp.f32 s17,#0.000000
	vmrs APSR_nzcv, FPSCR
	bne .mainL2
.mainL3:
	mov r3,#0
	str r3,[fp,#-8]
	vldr.32 s19,[fp,#-8]
	movw r3,#13107
	movt r3,#16467  @ 1079194419
	str r3,[fp,#-8]
	vldr.32 s18,[fp,#-8]
	vadd.f32 s17,s19,s18
	vcmp.f32 s17,#0.000000
	vmrs APSR_nzcv, FPSCR
	ite eq
	moveq r2, #1
	movne r2, #0
	uxtb r2, r2
	cmp r2,#0
	beq .mainL4
.mainL5:
	mov r3,#0
	str r3,[fp,#-8]
	vldr.32 s19,[fp,#-8]
	mov r3,#0
	str r3,[fp,#-8]
	vldr.32 s18,[fp,#-8]
	vadd.f32 s17,s19,s18
	vcmp.f32 s17,#0.000000
	vmrs APSR_nzcv, FPSCR
	bne .mainL8
.mainL7:
.mainL12:
	mov r3,#0
	str r3,[fp,#-8]
	vldr.32 s19,[fp,#-8]
	movw r3,#39322
	movt r3,#16025  @ 1050253722
	str r3,[fp,#-8]
	vldr.32 s18,[fp,#-8]
	vadd.f32 s17,s19,s18
	vcmp.f32 s17,#0.000000
	vmrs APSR_nzcv, FPSCR
	bne .mainL10
.mainL11:
	mvn r3,#47
	add r2,fp,r3
	@call void @memset(i32 %r231,i32 0,i32 40)
	sub sp,sp,#4 @stack align 8bytes
	push {r2}
	mov r0,r2
	mov r1,#0
	mov r2,#40
	bl memset
	pop {r2}
	add sp,sp,#4 @stack align 8bytes
	mov r3,#0
	str r3,[fp,#-8]
	vldr.32 s19,[fp,#-8]
	mov r3,#1065353216
	str r3,[fp,#-8]
	vldr.32 s18,[fp,#-8]
	vadd.f32 s17,s19,s18
	mvn r3,#47
	add r2,fp,r3
	vstr.32 s17,[r2]
	mov r3,#2
	vmov s19,r3
	vcvt.f32.s32 s19,s19
	mov r3,#1
	mvn r2,#47
	add r1,fp,r2
	add r2,r1,r3,lsl #2
	vstr.32 s19,[r2]
	mvn r3,#47
	add r2,fp,r3
	@%r58 = call i32 @getfarray(ptr %r57)
	sub sp,sp,#4 @stack align 8bytes
	push {r2}
	mov r0,r2
	bl getfarray
	mov r3,r0
	pop {r2}
	add sp,sp,#4 @stack align 8bytes
.mainL149:
	mov r2,#0
	str r2,[fp,#-8]
	vldr.32 s19,[fp,#-8]
	movw r2,#4059
	movt r2,#16457  @ 1078530011
	str r2,[fp,#-8]
	vldr.32 s18,[fp,#-8]
	vadd.f32 s17,s19,s18
	mov r2,#0
	str r2,[fp,#-8]
	vldr.32 s19,[fp,#-8]
	movw r2,#0
	movt r2,#16672  @ 1092616192
	str r2,[fp,#-8]
	vldr.32 s18,[fp,#-8]
	vadd.f32 s16,s19,s18
	mov r2,#0
	str r2,[fp,#-8]
	vldr.32 s19,[fp,#-8]
	vsub.f32 s18,s19,s16
	mov r2,#0
	str r2,[fp,#-8]
	vldr.32 s19,[fp,#-8]
	vsub.f32 s16,s19,s18
	mov r2,#0
	str r2,[fp,#-8]
	vldr.32 s19,[fp,#-8]
	movw r2,#4059
	movt r2,#16457  @ 1078530011
	str r2,[fp,#-8]
	vldr.32 s18,[fp,#-8]
	vadd.f32 s15,s19,s18
	mov r2,#0
	str r2,[fp,#-8]
	vldr.32 s19,[fp,#-8]
	movw r2,#4059
	movt r2,#16457  @ 1078530011
	str r2,[fp,#-8]
	vldr.32 s18,[fp,#-8]
	vadd.f32 s14,s19,s18
	mov r2,#2
	vmov s19,r2
	vcvt.f32.s32 s19,s19
	mov r2,#0
	mov r1,#1
.mainL15:
	@%s66 = call float @getfloat()
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r2,r3}
	vpush.64 {d7}
	bl getfloat
	vmov.f32 s31,s0
	vpop.64 {d7}
	pop {r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s18,s31
	vmul.f32 s13,s17,s18
	vmul.f32 s12,s13,s18
	vcvt.s32.f32 s31,s18
	vmov r0,s31
.mainL40:
.mainL42:
	vmov s13,r0
	vcvt.f32.s32 s13,s13
	vmul.f32 s11,s15,s13
	vmul.f32 s10,s11,s13
	mul r8,r0,r0
	vmov s13,r8
	vcvt.f32.s32 s13,s13
	vmul.f32 s11,s13,s14
	vadd.f32 s13,s10,s11
	vdiv.f32 s11,s13,s19
.mainL41:
	mov r8,r2
	mvn r0,#47
	add r7,fp,r0
	add r0,r7,r8,lsl #2
	vldr.32 s13,[r0]
	vadd.f32 s10,s13,s18
	vstr.32 s10,[r0]
	@call void @putfloat(float %s72)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r2,r3}
	vpush.64 {d5,d6,d7}
	vmov.f32 s0,s12
	bl putfloat
	vpop.64 {d5,d6,d7}
	pop {r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r2,r3}
	vpush.64 {d5,d6,d7}
	mov r0,#32
	bl putch
	vpop.64 {d5,d6,d7}
	pop {r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	vcvt.s32.f32 s31,s11
	vmov r8,s31
	@call void @putint(i32 %r86)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r2,r3}
	vpush.64 {d7}
	mov r0,r8
	bl putint
	vpop.64 {d7}
	pop {r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r2,r3}
	vpush.64 {d7}
	mov r0,#10
	bl putch
	vpop.64 {d7}
	pop {r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	vmov s18,r1
	vcvt.f32.s32 s18,s18
	vmul.f32 s13,s18,s16
	vcvt.s32.f32 s31,s13
	vmov r8,s31
	add r7,r2,#1
.mainL16:
	movw r0,#51712
	movt r0,#15258  @ 1000000000
	cmp r8,r0
	blt .mainL150
.mainL17:
	mvn r6,#47
	add r0,fp,r6
	@call void @putfarray(i32 %r58,ptr %r104)
	push {r0,r1,r2,r3}
	vpush.64 {d7}
	mov r1,r0
	mov r0,r3
	bl putfarray
	vpop.64 {d7}
	pop {r0,r1,r2,r3}
	mov r0,#0
	add sp,sp,#60
	vpop.64 {d8,d9,d10,d11,d12,d13,d14,d15}
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL150:
	mov r2,r7
	mov r1,r8
	bl .mainL15
.mainL10:
.mainL37:
.mainL39:
	@call void @putch(i32 111)
	mov r0,#111
	bl putch
	@call void @putch(i32 107)
	mov r0,#107
	bl putch
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
.mainL38:
	bl .mainL11
.mainL8:
.mainL6:
.mainL34:
.mainL36:
	@call void @putch(i32 101)
	mov r0,#101
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 111)
	mov r0,#111
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
.mainL35:
	bl .mainL7
.mainL4:
.mainL31:
.mainL33:
	@call void @putch(i32 111)
	mov r0,#111
	bl putch
	@call void @putch(i32 107)
	mov r0,#107
	bl putch
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
.mainL32:
	bl .mainL5
.mainL2:
.mainL28:
.mainL30:
	@call void @putch(i32 111)
	mov r0,#111
	bl putch
	@call void @putch(i32 107)
	mov r0,#107
	bl putch
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
.mainL29:
	bl .mainL3
.mainL140:
.mainL143:
.mainL145:
	@call void @putch(i32 101)
	mov r0,#101
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 111)
	mov r0,#111
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
.mainL144:
	bl .mainL142
.mainL130:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s19,[fp,#-8]
	mov r8,#1073741824
	str r8,[fp,#-8]
	vldr.32 s18,[fp,#-8]
	vadd.f32 s17,s19,s18
	mov r8,#1
	vmov s19,r8
	vcvt.f32.s32 s19,s19
	vmul.f32 s18,s19,s17
	mov r8,#2
	vmov s19,r8
	vcvt.f32.s32 s19,s19
	vdiv.f32 s17,s18,s19
	vcvt.s32.f32 s31,s17
	vmov r8,s31
	mov r4,r8
	bl .mainL128
.mainL135:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s19,[fp,#-8]
	vsub.f32 s18,s19,s21
	vmov s20,s18
	bl .mainL133
.mainL118:
.mainL121:
.mainL123:
	@call void @putch(i32 101)
	mov r0,#101
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 111)
	mov r0,#111
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
.mainL122:
	bl .mainL120
.mainL108:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s21,[fp,#-8]
	mov r8,#1073741824
	str r8,[fp,#-8]
	vldr.32 s20,[fp,#-8]
	vadd.f32 s19,s21,s20
	mov r8,#1
	vmov s21,r8
	vcvt.f32.s32 s21,s21
	vmul.f32 s20,s21,s19
	mov r8,#2
	vmov s21,r8
	vcvt.f32.s32 s21,s21
	vdiv.f32 s19,s20,s21
	vcvt.s32.f32 s31,s19
	vmov r8,s31
	mov r5,r8
	bl .mainL106
.mainL113:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s21,[fp,#-8]
	vsub.f32 s20,s21,s23
	vmov s22,s20
	bl .mainL111
.mainL90:
.mainL93:
.mainL95:
	@call void @putch(i32 101)
	mov r0,#101
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 111)
	mov r0,#111
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
.mainL94:
	bl .mainL92
.mainL80:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s23,[fp,#-8]
	mov r8,#1073741824
	str r8,[fp,#-8]
	vldr.32 s22,[fp,#-8]
	vadd.f32 s21,s23,s22
	mov r8,#1
	vmov s23,r8
	vcvt.f32.s32 s23,s23
	vmul.f32 s22,s23,s21
	mov r8,#2
	vmov s23,r8
	vcvt.f32.s32 s23,s23
	vdiv.f32 s21,s22,s23
	vcvt.s32.f32 s31,s21
	vmov r8,s31
	mov r9,r8
	str r9,[fp,#-60]
	bl .mainL78
.mainL85:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s23,[fp,#-8]
	vsub.f32 s22,s23,s25
	vmov s24,s22
	bl .mainL83
.mainL68:
.mainL71:
.mainL73:
	@call void @putch(i32 101)
	mov r0,#101
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 111)
	mov r0,#111
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
.mainL72:
	bl .mainL70
.mainL58:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s25,[fp,#-8]
	mov r8,#1073741824
	str r8,[fp,#-8]
	vldr.32 s24,[fp,#-8]
	vadd.f32 s23,s25,s24
	mov r8,#1
	vmov s25,r8
	vcvt.f32.s32 s25,s25
	vmul.f32 s24,s25,s23
	mov r8,#2
	vmov s25,r8
	vcvt.f32.s32 s25,s25
	vdiv.f32 s23,s24,s25
	vcvt.s32.f32 s31,s23
	vmov r8,s31
	mov r9,r8
	str r9,[fp,#-56]
	bl .mainL56
.mainL63:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s25,[fp,#-8]
	vsub.f32 s24,s25,s27
	vmov s26,s24
	bl .mainL61
.mainL46:
.mainL49:
.mainL51:
	@call void @putch(i32 101)
	mov r0,#101
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 111)
	mov r0,#111
	bl putch
	@call void @putch(i32 114)
	mov r0,#114
	bl putch
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
.mainL50:
	bl .mainL48
.mainL21:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	mov r8,#1073741824
	str r8,[fp,#-8]
	vldr.32 s26,[fp,#-8]
	vadd.f32 s25,s27,s26
	mov r8,#1
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vmul.f32 s26,s27,s25
	mov r8,#2
	vmov s27,r8
	vcvt.f32.s32 s27,s27
	vdiv.f32 s25,s26,s27
	vcvt.s32.f32 s31,s25
	vmov r8,s31
	mov r9,r8
	str r9,[fp,#-52]
	bl .mainL19
.mainL26:
	mov r8,#0
	str r8,[fp,#-8]
	vldr.32 s27,[fp,#-8]
	vsub.f32 s26,s27,s29
	vmov s28,s26
	bl .mainL24
	.section	.note.GNU-stack,"",%progbits
