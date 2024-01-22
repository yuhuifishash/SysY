.arch armv7-a
.fpu vfpv3-d16
.arm
.data
k:
	.word  0
.text
.global main
.LPIC0:
	.word  k
main:@r4 r5 r6 r7 r8 r9 r10 d8 d9 d10 d11 d12 d13 d14 d15 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	vpush.64 {d8,d9,d10,d11,d12,d13,d14,d15}
	add fp,sp,#4
	mov r9,#984
	sub sp,sp,r9
.mainL0:
.mainL1:
	@%r4 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC0
	str r8,[r7]
.mainL10:
	mov r9,#0
	str r9,[fp,#-880]
.mainL3:
	ldr r9,[fp,#-880]
	ldr r10,[fp,#-880]
	add r7,r9,r10,lsl #1
	mov r6,r7
	movw r7,#64760
	movt r7,#65535  @ -776
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	@%r13 = call i32 @getfarray(ptr %r12)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl getfarray
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r9,[fp,#-880]
	add r10,r9,#1
	str r10,[fp,#-856]
.mainL4:
	ldr r9,[fp,#-856]
	cmp r9,#40
	blt .mainL12
.mainL5:
.mainL11:
	mov r9,#0
	str r9,[fp,#-888]
.mainL7:
	ldr r9,[fp,#-888]
	ldr r10,[fp,#-888]
	add r5,r9,r10,lsl #1
	mov r4,r5
	movw r5,#65240
	movt r5,#65535  @ -296
	add r3,fp,r5
	add r5,r3,r4,lsl #2
	@%r30 = call i32 @getarray(ptr %r29)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	bl getarray
	mov r4,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r9,[fp,#-888]
	add r10,r9,#1
	str r10,[fp,#-860]
.mainL8:
	ldr r9,[fp,#-860]
	cmp r9,#24
	blt .mainL13
.mainL9:
	ldr r4,.LPIC0
	ldr r3,[r4]
	mov r4,r3
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s30,[r2]
	vstr.32 s30,[fp,#-780]
	mov r4,r3
	add r4,r4,#3
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s28,[r2]
	mov r4,r3
	add r4,r4,#6
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s30,[r2]
	vstr.32 s30,[fp,#-784]
	mov r4,r3
	add r4,r4,#9
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s30,[r2]
	vstr.32 s30,[fp,#-788]
	mov r4,r3
	add r4,r4,#12
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s30,[r2]
	vstr.32 s30,[fp,#-792]
	mov r4,r3
	add r4,r4,#15
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s24,[r2]
	mov r4,r3
	add r4,r4,#18
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s23,[r2]
	mov r4,r3
	add r4,r4,#21
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s22,[r2]
	mov r4,r3
	add r4,r4,#24
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s21,[r2]
	mov r4,r3
	add r4,r4,#27
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s30,[r2]
	vstr.32 s30,[fp,#-796]
	mov r4,r3
	add r4,r4,#30
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s30,[r2]
	vstr.32 s30,[fp,#-800]
	mov r4,r3
	add r4,r4,#33
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s30,[r2]
	vstr.32 s30,[fp,#-804]
	mov r4,r3
	add r4,r4,#36
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s17,[r2]
	mov r4,r3
	add r4,r4,#39
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s30,[r2]
	vstr.32 s30,[fp,#-808]
	mov r4,r3
	add r4,r4,#42
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s30,[r2]
	vstr.32 s30,[fp,#-812]
	mov r4,r3
	add r4,r4,#45
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s30,[r2]
	vstr.32 s30,[fp,#-816]
	mov r4,r3
	add r4,r4,#48
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s13,[r2]
	mov r4,r3
	add r4,r4,#51
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s12,[r2]
	mov r4,r3
	add r4,r4,#54
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s11,[r2]
	mov r4,r3
	add r4,r4,#57
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s10,[r2]
	mov r4,r3
	add r4,r4,#60
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s9,[r2]
	mov r4,r3
	add r4,r4,#63
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s8,[r2]
	mov r4,r3
	add r4,r4,#66
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s7,[r2]
	mov r4,r3
	add r4,r4,#69
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s6,[r2]
	mov r4,r3
	add r4,r4,#72
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s5,[r2]
	mov r4,r3
	add r4,r4,#75
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s4,[r2]
	mov r4,r3
	add r4,r4,#78
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s3,[r2]
	mov r4,r3
	add r4,r4,#81
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s2,[r2]
	mov r4,r3
	add r4,r4,#84
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s1,[r2]
	mov r4,r3
	add r4,r4,#87
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s0,[r2]
	mov r4,r3
	add r4,r4,#90
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s29,[r2]
	mov r4,r3
	add r4,r4,#93
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s27,[r2]
	mov r4,r3
	add r4,r4,#96
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s26,[r2]
	mov r4,r3
	add r4,r4,#99
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s25,[r2]
	mov r4,r3
	add r4,r4,#102
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s20,[r2]
	mov r4,r3
	add r4,r4,#105
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s19,[r2]
	mov r4,r3
	add r4,r4,#108
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s18,[r2]
	mov r4,r3
	add r4,r4,#111
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s16,[r2]
	mov r4,r3
	add r4,r4,#114
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s15,[r2]
	mov r4,r3
	add r4,r4,#117
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	vldr.32 s14,[r2]
	@%s201 = call float @params_f40(float %s44,float %s48,float %s52,float %s56,float %s60,float %s64,float %s68,float %s72,float %s76,float %s80,float %s84,float %s88,float %s92,float %s96,float %s100,float %s104,float %s108,float %s112,float %s116,float %s120,float %s124,float %s128,float %s132,float %s136,float %s140,float %s144,float %s148,float %s152,float %s156,float %s160,float %s164,float %s168,float %s172,float %s176,float %s180,float %s184,float %s188,float %s192,float %s196,float %s200)
	push {r3}
	vpush.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	sub sp,sp,#96
	vstr.32 s14,[sp,#92]  @%s200
	vstr.32 s15,[sp,#88]  @%s196
	vstr.32 s16,[sp,#84]  @%s192
	vstr.32 s18,[sp,#80]  @%s188
	vstr.32 s19,[sp,#76]  @%s184
	vstr.32 s20,[sp,#72]  @%s180
	vstr.32 s25,[sp,#68]  @%s176
	vstr.32 s26,[sp,#64]  @%s172
	vstr.32 s27,[sp,#60]  @%s168
	vstr.32 s29,[sp,#56]  @%s164
	vstr.32 s0,[sp,#52]  @%s160
	vstr.32 s1,[sp,#48]  @%s156
	vstr.32 s2,[sp,#44]  @%s152
	vstr.32 s3,[sp,#40]  @%s148
	vstr.32 s4,[sp,#36]  @%s144
	vstr.32 s5,[sp,#32]  @%s140
	vstr.32 s6,[sp,#28]  @%s136
	vstr.32 s7,[sp,#24]  @%s132
	vstr.32 s8,[sp,#20]  @%s128
	vstr.32 s9,[sp,#16]  @%s124
	vstr.32 s10,[sp,#12]  @%s120
	vstr.32 s11,[sp,#8]  @%s116
	vstr.32 s12,[sp,#4]  @%s112
	vstr.32 s13,[sp,#0]  @%s108
	vldr.32 s0,[fp,#-780]
	vmov.f32 s1,s28
	vldr.32 s2,[fp,#-784]
	vldr.32 s3,[fp,#-788]
	vldr.32 s4,[fp,#-792]
	vmov.f32 s5,s24
	vmov.f32 s6,s23
	vmov.f32 s7,s22
	vmov.f32 s8,s21
	vldr.32 s9,[fp,#-796]
	vldr.32 s10,[fp,#-800]
	vldr.32 s11,[fp,#-804]
	vmov.f32 s12,s17
	vldr.32 s13,[fp,#-808]
	vldr.32 s14,[fp,#-812]
	vldr.32 s15,[fp,#-816]
	bl params_f40
	add sp,sp,#96
	vmov.f32 s31,s0
	vpop.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	pop {r3}
	vstr.32 s31,[fp,#-820]
	vmov.f32 s30,s31
	mov r4,r3
	add r4,r4,#69
	movw r2,#65240
	movt r2,#65535  @ -296
	add r1,fp,r2
	add r2,r1,r4,lsl #2
	ldr r9,[r2]
	str r9,[fp,#-824]
	mov r2,r3
	add r2,r2,#6
	movw r1,#65240
	movt r1,#65535  @ -296
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	ldr r9,[r1]
	str r9,[fp,#-828]
	mov r1,r3
	add r1,r1,#18
	movw r0,#65240
	movt r0,#65535  @ -296
	add r4,fp,r0
	add r0,r4,r1,lsl #2
	ldr r9,[r0]
	str r9,[fp,#-832]
	mov r1,r3
	add r1,r1,#3
	movw r0,#65240
	movt r0,#65535  @ -296
	add r2,fp,r0
	add r0,r2,r1,lsl #2
	ldr r9,[r0]
	str r9,[fp,#-836]
	mov r1,r3
	add r1,r1,#12
	movw r0,#65240
	movt r0,#65535  @ -296
	add r4,fp,r0
	add r0,r4,r1,lsl #2
	ldr r9,[r0]
	str r9,[fp,#-840]
	mov r1,r3
	add r1,r1,#15
	movw r0,#65240
	movt r0,#65535  @ -296
	add r2,fp,r0
	add r0,r2,r1,lsl #2
	ldr r9,[r0]
	str r9,[fp,#-844]
	mov r1,r3
	add r1,r1,#66
	movw r0,#65240
	movt r0,#65535  @ -296
	add r4,fp,r0
	add r0,r4,r1,lsl #2
	ldr r9,[r0]
	str r9,[fp,#-848]
	mov r1,r3
	movw r0,#65240
	movt r0,#65535  @ -296
	add r2,fp,r0
	add r0,r2,r1,lsl #2
	ldr r9,[r0]
	str r9,[fp,#-852]
	mov r1,r3
	add r1,r1,#57
	movw r0,#65240
	movt r0,#65535  @ -296
	add r4,fp,r0
	add r0,r4,r1,lsl #2
	ldr r9,[r0]
	str r9,[fp,#-864]
	mov r1,r3
	add r1,r1,#21
	movw r0,#65240
	movt r0,#65535  @ -296
	add r2,fp,r0
	add r0,r2,r1,lsl #2
	ldr r9,[r0]
	str r9,[fp,#-868]
	mov r1,r3
	add r1,r1,#30
	movw r0,#65240
	movt r0,#65535  @ -296
	add r7,fp,r0
	add r0,r7,r1,lsl #2
	ldr r9,[r0]
	str r9,[fp,#-872]
	mov r1,r3
	add r1,r1,#39
	movw r0,#65240
	movt r0,#65535  @ -296
	add r5,fp,r0
	add r0,r5,r1,lsl #2
	ldr r9,[r0]
	str r9,[fp,#-876]
	mov r1,r3
	add r1,r1,#24
	movw r0,#65240
	movt r0,#65535  @ -296
	add r4,fp,r0
	add r0,r4,r1,lsl #2
	ldr r9,[r0]
	str r9,[fp,#-884]
	mov r1,r3
	add r1,r1,#51
	movw r0,#65240
	movt r0,#65535  @ -296
	add r2,fp,r0
	add r0,r2,r1,lsl #2
	ldr r9,[r0]
	str r9,[fp,#-892]
	mov r1,r3
	add r1,r1,#54
	movw r0,#65240
	movt r0,#65535  @ -296
	add r7,fp,r0
	add r0,r7,r1,lsl #2
	ldr r9,[r0]
	str r9,[fp,#-896]
	mov r1,r3
	add r1,r1,#27
	movw r0,#65240
	movt r0,#65535  @ -296
	add r5,fp,r0
	add r0,r5,r1,lsl #2
	ldr r9,[r0]
	str r9,[fp,#-900]
	mov r1,r3
	add r1,r1,#36
	movw r0,#65240
	movt r0,#65535  @ -296
	add r8,fp,r0
	add r0,r8,r1,lsl #2
	ldr r9,[r0]
	str r9,[fp,#-904]
	mov r1,r3
	add r1,r1,#33
	movw r0,#65240
	movt r0,#65535  @ -296
	add r4,fp,r0
	add r0,r4,r1,lsl #2
	ldr r9,[r0]
	str r9,[fp,#-908]
	mov r1,r3
	add r1,r1,#48
	movw r0,#65240
	movt r0,#65535  @ -296
	add r6,fp,r0
	add r0,r6,r1,lsl #2
	ldr r6,[r0]
	mov r1,r3
	add r1,r1,#9
	movw r0,#65240
	movt r0,#65535  @ -296
	add r2,fp,r0
	add r0,r2,r1,lsl #2
	ldr r2,[r0]
	mov r1,r3
	add r1,r1,#63
	movw r0,#65240
	movt r0,#65535  @ -296
	add r7,fp,r0
	add r0,r7,r1,lsl #2
	ldr r7,[r0]
	mov r1,r3
	add r1,r1,#60
	movw r0,#65240
	movt r0,#65535  @ -296
	add r5,fp,r0
	add r0,r5,r1,lsl #2
	ldr r5,[r0]
	mov r1,r3
	add r1,r1,#45
	movw r0,#65240
	movt r0,#65535  @ -296
	add r8,fp,r0
	add r0,r8,r1,lsl #2
	ldr r8,[r0]
	mov r1,r3
	add r1,r1,#42
	movw r0,#65240
	movt r0,#65535  @ -296
	add r4,fp,r0
	add r0,r4,r1,lsl #2
	ldr r4,[r0]
	@%s459 = call float @params_f40_i24(i32 %r205,i32 %r209,i32 %r213,float %s60,i32 %r221,i32 %r225,i32 %r229,float %s76,float %s104,float %s72,i32 %r245,float %s56,float %s156,i32 %r257,float %s192,i32 %r265,float %s164,float %s92,float %s48,float %s88,float %s196,float %s68,i32 %r293,float %s172,i32 %r301,i32 %r305,float %s124,float %s176,float %s136,float %s80,float %s144,i32 %r329,float %s200,i32 %r337,float %s128,float %s108,float %s64,float %s180,i32 %r357,i32 %r361,float %s100,float %s84,float %s44,i32 %r377,float %s168,i32 %r385,i32 %r389,float %s152,float %s140,float %s96,float %s160,i32 %r409,i32 %r413,i32 %r417,float %s116,float %s120,float %s132,float %s148,float %s188,float %s112,i32 %r445,float %s52,i32 %r453,float %s184)
	sub sp,sp,#4 @stack align 8bytes
	push {r2,r3}
	vpush.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	sub sp,sp,#176
	vstr.32 s19,[sp,#172]  @%s184
	str r4,[sp,#168]  @%r453
	vldr.32 s30,[fp,#-784]
	vstr.32 s30,[sp,#164]  @%s52
	str r8,[sp,#160]  @%r445
	vstr.32 s12,[sp,#156]  @%s112
	vstr.32 s18,[sp,#152]  @%s188
	vstr.32 s3,[sp,#148]  @%s148
	vstr.32 s7,[sp,#144]  @%s132
	vstr.32 s10,[sp,#140]  @%s120
	vstr.32 s11,[sp,#136]  @%s116
	str r5,[sp,#132]  @%r417
	str r7,[sp,#128]  @%r413
	str r2,[sp,#124]  @%r409
	vstr.32 s0,[sp,#120]  @%s160
	vldr.32 s30,[fp,#-808]
	vstr.32 s30,[sp,#116]  @%s96
	vstr.32 s5,[sp,#112]  @%s140
	vstr.32 s2,[sp,#108]  @%s152
	str r6,[sp,#104]  @%r389
	ldr r9,[fp,#-908]
	str r9,[sp,#100]  @%r385
	vstr.32 s27,[sp,#96]  @%s168
	ldr r9,[fp,#-904]
	str r9,[sp,#92]  @%r377
	vldr.32 s30,[fp,#-780]
	vstr.32 s30,[sp,#88]  @%s44
	vldr.32 s30,[fp,#-800]
	vstr.32 s30,[sp,#84]  @%s84
	vldr.32 s30,[fp,#-812]
	vstr.32 s30,[sp,#80]  @%s100
	ldr r9,[fp,#-900]
	str r9,[sp,#76]  @%r361
	ldr r9,[fp,#-896]
	str r9,[sp,#72]  @%r357
	vstr.32 s20,[sp,#68]  @%s180
	vstr.32 s24,[sp,#64]  @%s64
	vstr.32 s13,[sp,#60]  @%s108
	vstr.32 s8,[sp,#56]  @%s128
	ldr r9,[fp,#-892]
	str r9,[sp,#52]  @%r337
	vstr.32 s14,[sp,#48]  @%s200
	ldr r9,[fp,#-884]
	str r9,[sp,#44]  @%r329
	vstr.32 s4,[sp,#40]  @%s144
	vldr.32 s30,[fp,#-796]
	vstr.32 s30,[sp,#36]  @%s80
	vstr.32 s6,[sp,#32]  @%s136
	ldr r9,[fp,#-876]
	str r9,[sp,#28]  @%r305
	ldr r9,[fp,#-872]
	str r9,[sp,#24]  @%r301
	ldr r9,[fp,#-868]
	str r9,[sp,#20]  @%r293
	ldr r9,[fp,#-864]
	str r9,[sp,#16]  @%r265
	ldr r9,[fp,#-852]
	str r9,[sp,#12]  @%r257
	ldr r9,[fp,#-848]
	str r9,[sp,#8]  @%r245
	ldr r9,[fp,#-844]
	str r9,[sp,#4]  @%r229
	ldr r9,[fp,#-840]
	str r9,[sp,#0]  @%r225
	ldr r0,[fp,#-824]
	ldr r1,[fp,#-828]
	ldr r2,[fp,#-832]
	ldr r3,[fp,#-836]
	vldr.32 s0,[fp,#-792]
	vldr.32 s2,[fp,#-816]
	vmov.f32 s3,s22
	vldr.32 s4,[fp,#-788]
	vmov.f32 s5,s1
	vmov.f32 s1,s21
	vmov.f32 s6,s16
	vmov.f32 s7,s29
	vmov.f32 s8,s17
	vldr.32 s10,[fp,#-804]
	vmov.f32 s11,s15
	vmov.f32 s12,s23
	vmov.f32 s13,s26
	vmov.f32 s14,s9
	vmov.f32 s9,s28
	vmov.f32 s15,s25
	bl params_f40_i24
	add sp,sp,#176
	vmov.f32 s31,s0
	vpop.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	pop {r2,r3}
	add sp,sp,#4 @stack align 8bytes
	vstr.32 s31,[fp,#-912]
	vmov.f32 s30,s31
	movw r8,#64760
	movt r8,#65535  @ -776
	add r9,fp,r8
	str r9,[fp,#-896]
	mov r8,#3
	movw r6,#64760
	movt r6,#65535  @ -776
	add r5,fp,r6
	add r9,r5,r8,lsl #2
	str r9,[fp,#-824]
	mov r8,#6
	movw r5,#64760
	movt r5,#65535  @ -776
	add r4,fp,r5
	add r9,r4,r8,lsl #2
	str r9,[fp,#-892]
	mov r8,#9
	movw r4,#64760
	movt r4,#65535  @ -776
	add r2,fp,r4
	add r9,r2,r8,lsl #2
	str r9,[fp,#-884]
	mov r8,#12
	movw r2,#64760
	movt r2,#65535  @ -776
	add r1,fp,r2
	add r9,r1,r8,lsl #2
	str r9,[fp,#-876]
	mov r8,#15
	movw r1,#64760
	movt r1,#65535  @ -776
	add r0,fp,r1
	add r9,r0,r8,lsl #2
	str r9,[fp,#-828]
	mov r8,#18
	movw r0,#64760
	movt r0,#65535  @ -776
	add r6,fp,r0
	add r9,r6,r8,lsl #2
	str r9,[fp,#-832]
	mov r8,#21
	movw r6,#64760
	movt r6,#65535  @ -776
	add r1,fp,r6
	add r9,r1,r8,lsl #2
	str r9,[fp,#-836]
	mov r8,#24
	movw r1,#64760
	movt r1,#65535  @ -776
	add r0,fp,r1
	add r9,r0,r8,lsl #2
	str r9,[fp,#-900]
	mov r8,#27
	movw r0,#64760
	movt r0,#65535  @ -776
	add r6,fp,r0
	add r9,r6,r8,lsl #2
	str r9,[fp,#-840]
	mov r8,#30
	movw r6,#64760
	movt r6,#65535  @ -776
	add r1,fp,r6
	add r9,r1,r8,lsl #2
	str r9,[fp,#-844]
	mov r8,#33
	movw r1,#64760
	movt r1,#65535  @ -776
	add r7,fp,r1
	add r9,r7,r8,lsl #2
	str r9,[fp,#-848]
	mov r8,#36
	movw r7,#64760
	movt r7,#65535  @ -776
	add r5,fp,r7
	add r9,r5,r8,lsl #2
	str r9,[fp,#-872]
	mov r8,#39
	movw r5,#64760
	movt r5,#65535  @ -776
	add r7,fp,r5
	add r9,r7,r8,lsl #2
	str r9,[fp,#-908]
	mov r8,#42
	movw r7,#64760
	movt r7,#65535  @ -776
	add r4,fp,r7
	add r9,r4,r8,lsl #2
	str r9,[fp,#-916]
	mov r8,#45
	movw r4,#64760
	movt r4,#65535  @ -776
	add r2,fp,r4
	add r9,r2,r8,lsl #2
	str r9,[fp,#-920]
	mov r8,#48
	movw r2,#64760
	movt r2,#65535  @ -776
	add r0,fp,r2
	add r9,r0,r8,lsl #2
	str r9,[fp,#-864]
	mov r8,#51
	movw r0,#64760
	movt r0,#65535  @ -776
	add r2,fp,r0
	add r9,r2,r8,lsl #2
	str r9,[fp,#-868]
	mov r8,#54
	movw r2,#64760
	movt r2,#65535  @ -776
	add r0,fp,r2
	add r9,r0,r8,lsl #2
	str r9,[fp,#-924]
	mov r8,#57
	movw r0,#64760
	movt r0,#65535  @ -776
	add r6,fp,r0
	add r9,r6,r8,lsl #2
	str r9,[fp,#-932]
	mov r8,#60
	movw r6,#64760
	movt r6,#65535  @ -776
	add r1,fp,r6
	add r9,r1,r8,lsl #2
	str r9,[fp,#-852]
	mov r8,#63
	movw r1,#64760
	movt r1,#65535  @ -776
	add r6,fp,r1
	add r9,r6,r8,lsl #2
	str r9,[fp,#-904]
	mov r8,#66
	movw r6,#64760
	movt r6,#65535  @ -776
	add r1,fp,r6
	add r9,r1,r8,lsl #2
	str r9,[fp,#-936]
	mov r8,#69
	movw r1,#64760
	movt r1,#65535  @ -776
	add r5,fp,r1
	add r9,r5,r8,lsl #2
	str r9,[fp,#-948]
	mov r8,#72
	movw r5,#64760
	movt r5,#65535  @ -776
	add r7,fp,r5
	add r9,r7,r8,lsl #2
	str r9,[fp,#-952]
	mov r8,#75
	movw r7,#64760
	movt r7,#65535  @ -776
	add r4,fp,r7
	add r9,r4,r8,lsl #2
	str r9,[fp,#-964]
	mov r8,#78
	movw r4,#64760
	movt r4,#65535  @ -776
	add r2,fp,r4
	add r9,r2,r8,lsl #2
	str r9,[fp,#-928]
	mov r8,#81
	movw r2,#64760
	movt r2,#65535  @ -776
	add r4,fp,r2
	add r9,r4,r8,lsl #2
	str r9,[fp,#-968]
	mov r8,#84
	movw r4,#64760
	movt r4,#65535  @ -776
	add r0,fp,r4
	add r9,r0,r8,lsl #2
	str r9,[fp,#-972]
	mov r8,#87
	movw r0,#64760
	movt r0,#65535  @ -776
	add r6,fp,r0
	add r9,r6,r8,lsl #2
	str r9,[fp,#-940]
	mov r8,#90
	movw r6,#64760
	movt r6,#65535  @ -776
	add r0,fp,r6
	add r9,r0,r8,lsl #2
	str r9,[fp,#-944]
	mov r8,#93
	movw r0,#64760
	movt r0,#65535  @ -776
	add r6,fp,r0
	add r9,r6,r8,lsl #2
	str r9,[fp,#-976]
	mov r8,#96
	movw r6,#64760
	movt r6,#65535  @ -776
	add r1,fp,r6
	add r6,r1,r8,lsl #2
	mov r8,#99
	movw r1,#64760
	movt r1,#65535  @ -776
	add r5,fp,r1
	add r9,r5,r8,lsl #2
	str r9,[fp,#-956]
	mov r8,#102
	movw r5,#64760
	movt r5,#65535  @ -776
	add r1,fp,r5
	add r9,r1,r8,lsl #2
	str r9,[fp,#-960]
	mov r8,#105
	movw r1,#64760
	movt r1,#65535  @ -776
	add r5,fp,r1
	add r1,r5,r8,lsl #2
	mov r8,#108
	movw r5,#64760
	movt r5,#65535  @ -776
	add r7,fp,r5
	add r5,r7,r8,lsl #2
	mov r8,#111
	movw r7,#64760
	movt r7,#65535  @ -776
	add r2,fp,r7
	add r7,r2,r8,lsl #2
	mov r8,#114
	movw r2,#64760
	movt r2,#65535  @ -776
	add r4,fp,r2
	add r2,r4,r8,lsl #2
	mov r8,#117
	movw r4,#64760
	movt r4,#65535  @ -776
	add r0,fp,r4
	add r4,r0,r8,lsl #2
	@%s541 = call float @params_fa40(ptr %r461,ptr %r463,ptr %r465,ptr %r467,ptr %r469,ptr %r471,ptr %r473,ptr %r475,ptr %r477,ptr %r479,ptr %r481,ptr %r483,ptr %r485,ptr %r487,ptr %r489,ptr %r491,ptr %r493,ptr %r495,ptr %r497,ptr %r499,ptr %r501,ptr %r503,ptr %r505,ptr %r507,ptr %r509,ptr %r511,ptr %r513,ptr %r515,ptr %r517,ptr %r519,ptr %r521,ptr %r523,ptr %r525,ptr %r527,ptr %r529,ptr %r531,ptr %r533,ptr %r535,ptr %r537,ptr %r539)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	vpush.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	sub sp,sp,#144
	str r4,[sp,#140]  @%r539
	str r2,[sp,#136]  @%r537
	str r7,[sp,#132]  @%r535
	str r5,[sp,#128]  @%r533
	str r1,[sp,#124]  @%r531
	ldr r9,[fp,#-960]
	str r9,[sp,#120]  @%r529
	ldr r9,[fp,#-956]
	str r9,[sp,#116]  @%r527
	str r6,[sp,#112]  @%r525
	ldr r9,[fp,#-976]
	str r9,[sp,#108]  @%r523
	ldr r9,[fp,#-944]
	str r9,[sp,#104]  @%r521
	ldr r9,[fp,#-940]
	str r9,[sp,#100]  @%r519
	ldr r9,[fp,#-972]
	str r9,[sp,#96]  @%r517
	ldr r9,[fp,#-968]
	str r9,[sp,#92]  @%r515
	ldr r9,[fp,#-928]
	str r9,[sp,#88]  @%r513
	ldr r9,[fp,#-964]
	str r9,[sp,#84]  @%r511
	ldr r9,[fp,#-952]
	str r9,[sp,#80]  @%r509
	ldr r9,[fp,#-948]
	str r9,[sp,#76]  @%r507
	ldr r9,[fp,#-936]
	str r9,[sp,#72]  @%r505
	ldr r9,[fp,#-904]
	str r9,[sp,#68]  @%r503
	ldr r9,[fp,#-852]
	str r9,[sp,#64]  @%r501
	ldr r9,[fp,#-932]
	str r9,[sp,#60]  @%r499
	ldr r9,[fp,#-924]
	str r9,[sp,#56]  @%r497
	ldr r9,[fp,#-868]
	str r9,[sp,#52]  @%r495
	ldr r9,[fp,#-864]
	str r9,[sp,#48]  @%r493
	ldr r9,[fp,#-920]
	str r9,[sp,#44]  @%r491
	ldr r9,[fp,#-916]
	str r9,[sp,#40]  @%r489
	ldr r9,[fp,#-908]
	str r9,[sp,#36]  @%r487
	ldr r9,[fp,#-872]
	str r9,[sp,#32]  @%r485
	ldr r9,[fp,#-848]
	str r9,[sp,#28]  @%r483
	ldr r9,[fp,#-844]
	str r9,[sp,#24]  @%r481
	ldr r9,[fp,#-840]
	str r9,[sp,#20]  @%r479
	ldr r9,[fp,#-900]
	str r9,[sp,#16]  @%r477
	ldr r9,[fp,#-836]
	str r9,[sp,#12]  @%r475
	ldr r9,[fp,#-832]
	str r9,[sp,#8]  @%r473
	ldr r9,[fp,#-828]
	str r9,[sp,#4]  @%r471
	ldr r9,[fp,#-876]
	str r9,[sp,#0]  @%r469
	ldr r0,[fp,#-896]
	ldr r1,[fp,#-824]
	ldr r2,[fp,#-892]
	ldr r3,[fp,#-884]
	bl params_fa40
	add sp,sp,#144
	vmov.f32 s31,s0
	vpop.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s29,s31
	movw r8,#65240
	movt r8,#65535  @ -296
	add r9,fp,r8
	str r9,[fp,#-892]
	mov r8,r3
	add r8,r8,#3
	movw r6,#65240
	movt r6,#65535  @ -296
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	ldr r9,[r6]
	str r9,[fp,#-968]
	mov r6,r3
	add r6,r6,#6
	movw r5,#65240
	movt r5,#65535  @ -296
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	ldr r9,[r5]
	str r9,[fp,#-972]
	mov r5,#9
	movw r4,#65240
	movt r4,#65535  @ -296
	add r2,fp,r4
	add r9,r2,r5,lsl #2
	str r9,[fp,#-976]
	mov r5,r3
	add r5,r5,#12
	movw r2,#65240
	movt r2,#65535  @ -296
	add r1,fp,r2
	add r2,r1,r5,lsl #2
	ldr r9,[r2]
	str r9,[fp,#-884]
	mov r2,r3
	add r2,r2,#15
	movw r1,#65240
	movt r1,#65535  @ -296
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	ldr r9,[r1]
	str r9,[fp,#-876]
	mov r1,#18
	movw r0,#65240
	movt r0,#65535  @ -296
	add r7,fp,r0
	add r9,r7,r1,lsl #2
	str r9,[fp,#-952]
	mov r7,#21
	movw r1,#65240
	movt r1,#65535  @ -296
	add r8,fp,r1
	add r9,r8,r7,lsl #2
	str r9,[fp,#-964]
	mov r8,r3
	add r8,r8,#24
	movw r7,#65240
	movt r7,#65535  @ -296
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r9,[r7]
	str r9,[fp,#-936]
	mov r7,r3
	add r7,r7,#27
	movw r6,#65240
	movt r6,#65535  @ -296
	add r4,fp,r6
	add r6,r4,r7,lsl #2
	ldr r9,[r6]
	str r9,[fp,#-948]
	mov r6,#30
	movw r4,#65240
	movt r4,#65535  @ -296
	add r5,fp,r4
	add r9,r5,r6,lsl #2
	str r9,[fp,#-840]
	mov r6,#33
	movw r5,#65240
	movt r5,#65535  @ -296
	add r2,fp,r5
	add r9,r2,r6,lsl #2
	str r9,[fp,#-848]
	mov r6,#36
	movw r2,#65240
	movt r2,#65535  @ -296
	add r0,fp,r2
	add r9,r0,r6,lsl #2
	str r9,[fp,#-932]
	mov r6,#39
	movw r0,#65240
	movt r0,#65535  @ -296
	add r1,fp,r0
	add r9,r1,r6,lsl #2
	str r9,[fp,#-920]
	mov r6,r3
	add r6,r6,#42
	movw r1,#65240
	movt r1,#65535  @ -296
	add r8,fp,r1
	add r1,r8,r6,lsl #2
	ldr r9,[r1]
	str r9,[fp,#-924]
	mov r6,#45
	movw r1,#65240
	movt r1,#65535  @ -296
	add r7,fp,r1
	add r9,r7,r6,lsl #2
	str r9,[fp,#-896]
	mov r7,#48
	movw r6,#65240
	movt r6,#65535  @ -296
	add r4,fp,r6
	add r9,r4,r7,lsl #2
	str r9,[fp,#-844]
	mov r7,r3
	add r7,r7,#51
	movw r4,#65240
	movt r4,#65535  @ -296
	add r5,fp,r4
	add r4,r5,r7,lsl #2
	ldr r9,[r4]
	str r9,[fp,#-916]
	mov r5,r3
	add r5,r5,#54
	movw r4,#65240
	movt r4,#65535  @ -296
	add r2,fp,r4
	add r4,r2,r5,lsl #2
	ldr r9,[r4]
	str r9,[fp,#-908]
	mov r4,#57
	movw r2,#65240
	movt r2,#65535  @ -296
	add r0,fp,r2
	add r9,r0,r4,lsl #2
	str r9,[fp,#-980]
	mov r4,r3
	add r4,r4,#60
	movw r0,#65240
	movt r0,#65535  @ -296
	add r8,fp,r0
	add r0,r8,r4,lsl #2
	ldr r9,[r0]
	str r9,[fp,#-984]
	mov r4,r3
	add r4,r4,#63
	movw r0,#65240
	movt r0,#65535  @ -296
	add r1,fp,r0
	add r0,r1,r4,lsl #2
	ldr r4,[r0]
	mov r1,#66
	movw r0,#65240
	movt r0,#65535  @ -296
	add r6,fp,r0
	add r0,r6,r1,lsl #2
	mov r6,#69
	movw r1,#65240
	movt r1,#65535  @ -296
	add r7,fp,r1
	add r1,r7,r6,lsl #2
	mov r7,r3
	movw r6,#65240
	movt r6,#65535  @ -296
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	ldr r7,[r6]
	mov r6,#3
	movw r5,#65240
	movt r5,#65535  @ -296
	add r2,fp,r5
	add r5,r2,r6,lsl #2
	mov r6,r3
	add r6,r6,#6
	movw r2,#65240
	movt r2,#65535  @ -296
	add r8,fp,r2
	add r2,r8,r6,lsl #2
	ldr r8,[r2]
	mov r6,r3
	add r6,r6,#9
	movw r3,#65240
	movt r3,#65535  @ -296
	add r2,fp,r3
	add r3,r2,r6,lsl #2
	ldr r6,[r3]
	@%r740 = call i32 @params_mix(float %s44,ptr %r547,i32 %r551,ptr %r463,float %s52,i32 %r561,float %s56,float %s60,ptr %r471,ptr %r573,i32 %r577,i32 %r581,ptr %r473,ptr %r585,ptr %r587,i32 %r591,ptr %r475,ptr %r477,float %s80,float %s84,float %s88,ptr %r485,i32 %r613,float %s96,float %s100,float %s104,ptr %r627,ptr %r493,ptr %r631,ptr %r633,ptr %r495,float %s116,float %s120,ptr %r645,i32 %r649,ptr %r501,ptr %r503,float %s132,float %s136,ptr %r663,ptr %r665,i32 %r669,i32 %r673,float %s140,float %s144,ptr %r683,i32 %r687,ptr %r513,i32 %r693,ptr %r695,ptr %r697,float %s152,float %s156,ptr %r519,i32 %r711,ptr %r713,ptr %r521,float %s168,i32 %r723,float %s172,ptr %r527,ptr %r529,float %s184,i32 %r739)
	push {r0,r1,r2}
	vpush.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	sub sp,sp,#176
	str r6,[sp,#172]  @%r739
	vstr.32 s19,[sp,#168]  @%s184
	ldr r9,[fp,#-960]
	str r9,[sp,#164]  @%r529
	ldr r9,[fp,#-956]
	str r9,[sp,#160]  @%r527
	vstr.32 s26,[sp,#156]  @%s172
	str r8,[sp,#152]  @%r723
	vstr.32 s27,[sp,#148]  @%s168
	ldr r9,[fp,#-944]
	str r9,[sp,#144]  @%r521
	str r5,[sp,#140]  @%r713
	str r7,[sp,#136]  @%r711
	ldr r9,[fp,#-940]
	str r9,[sp,#132]  @%r519
	vstr.32 s1,[sp,#128]  @%s156
	vstr.32 s2,[sp,#124]  @%s152
	str r1,[sp,#120]  @%r697
	str r0,[sp,#116]  @%r695
	str r4,[sp,#112]  @%r693
	ldr r9,[fp,#-928]
	str r9,[sp,#108]  @%r513
	ldr r9,[fp,#-984]
	str r9,[sp,#104]  @%r687
	ldr r9,[fp,#-980]
	str r9,[sp,#100]  @%r683
	ldr r9,[fp,#-908]
	str r9,[sp,#96]  @%r673
	ldr r9,[fp,#-916]
	str r9,[sp,#92]  @%r669
	ldr r9,[fp,#-844]
	str r9,[sp,#88]  @%r665
	ldr r9,[fp,#-896]
	str r9,[sp,#84]  @%r663
	ldr r9,[fp,#-904]
	str r9,[sp,#80]  @%r503
	ldr r9,[fp,#-852]
	str r9,[sp,#76]  @%r501
	ldr r9,[fp,#-924]
	str r9,[sp,#72]  @%r649
	ldr r9,[fp,#-920]
	str r9,[sp,#68]  @%r645
	ldr r9,[fp,#-868]
	str r9,[sp,#64]  @%r495
	ldr r9,[fp,#-932]
	str r9,[sp,#60]  @%r633
	ldr r9,[fp,#-848]
	str r9,[sp,#56]  @%r631
	ldr r9,[fp,#-864]
	str r9,[sp,#52]  @%r493
	ldr r9,[fp,#-840]
	str r9,[sp,#48]  @%r627
	ldr r9,[fp,#-948]
	str r9,[sp,#44]  @%r613
	ldr r9,[fp,#-872]
	str r9,[sp,#40]  @%r485
	ldr r9,[fp,#-900]
	str r9,[sp,#36]  @%r477
	ldr r9,[fp,#-836]
	str r9,[sp,#32]  @%r475
	ldr r9,[fp,#-936]
	str r9,[sp,#28]  @%r591
	ldr r9,[fp,#-964]
	str r9,[sp,#24]  @%r587
	ldr r9,[fp,#-952]
	str r9,[sp,#20]  @%r585
	ldr r9,[fp,#-832]
	str r9,[sp,#16]  @%r473
	ldr r9,[fp,#-876]
	str r9,[sp,#12]  @%r581
	ldr r9,[fp,#-884]
	str r9,[sp,#8]  @%r577
	ldr r9,[fp,#-976]
	str r9,[sp,#4]  @%r573
	ldr r9,[fp,#-828]
	str r9,[sp,#0]  @%r471
	ldr r0,[fp,#-892]
	ldr r1,[fp,#-968]
	ldr r2,[fp,#-824]
	ldr r3,[fp,#-972]
	vldr.32 s0,[fp,#-780]
	vldr.32 s1,[fp,#-784]
	vldr.32 s2,[fp,#-788]
	vldr.32 s3,[fp,#-792]
	vldr.32 s8,[fp,#-812]
	vldr.32 s9,[fp,#-816]
	vmov.f32 s12,s7
	vldr.32 s7,[fp,#-808]
	vmov.f32 s13,s6
	vldr.32 s6,[fp,#-804]
	vmov.f32 s14,s5
	vldr.32 s5,[fp,#-800]
	vmov.f32 s15,s4
	vldr.32 s4,[fp,#-796]
	vmov.f32 s31,s11
	vmov.f32 s11,s10
	vmov.f32 s10,s31
	bl params_mix
	add sp,sp,#176
	mov r3,r0
	vpop.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	pop {r0,r1,r2}
	@call void @putfloat(float %s201)
	push {r3}
	vldr.32 s0,[fp,#-820]
	bl putfloat
	pop {r3}
	@call void @putch(i32 10)
	push {r3}
	mov r0,#10
	bl putch
	pop {r3}
	@call void @putfloat(float %s459)
	push {r3}
	vldr.32 s0,[fp,#-912]
	bl putfloat
	pop {r3}
	@call void @putch(i32 10)
	push {r3}
	mov r0,#10
	bl putch
	pop {r3}
	@call void @putfloat(float %s541)
	push {r3}
	vmov.f32 s0,s29
	bl putfloat
	pop {r3}
	@call void @putch(i32 10)
	push {r3}
	mov r0,#10
	bl putch
	pop {r3}
	@call void @putint(i32 %r740)
	push {r3}
	mov r0,r3
	bl putint
	pop {r3}
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r0,#0
	mov r9,#984
	add sp,sp,r9
	vpop.64 {d8,d9,d10,d11,d12,d13,d14,d15}
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL13:
	ldr r9,[fp,#-860]
	mov r10,r9
	str r10,[fp,#-888]
	bl .mainL7
.mainL12:
	ldr r9,[fp,#-856]
	mov r10,r9
	str r10,[fp,#-880]
	bl .mainL3
params_fa40:@r4 r5 r6 r7 r8 r9 r10 d13 d14 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	vpush.64 {d13,d14}
	add fp,sp,#4
	mov r9,#208
	sub sp,sp,r9
.params_fa40L0:
	mov r9,r1
	str r9,[fp,#-60]
	mov r9,r2
	str r9,[fp,#-56]
	mov r9,r3
	str r9,[fp,#-52]
	ldr r9,[fp,#188]
	str r9,[fp,#-188]
	ldr r9,[fp,#184]
	str r9,[fp,#-168]
	ldr r9,[fp,#180]
	str r9,[fp,#-164]
	ldr r9,[fp,#176]
	str r9,[fp,#-160]
	ldr r9,[fp,#172]
	str r9,[fp,#-156]
	ldr r9,[fp,#168]
	str r9,[fp,#-152]
	ldr r9,[fp,#164]
	str r9,[fp,#-148]
	ldr r9,[fp,#160]
	str r9,[fp,#-144]
	ldr r9,[fp,#156]
	str r9,[fp,#-140]
	ldr r9,[fp,#152]
	str r9,[fp,#-136]
	ldr r9,[fp,#148]
	str r9,[fp,#-132]
	ldr r9,[fp,#144]
	str r9,[fp,#-128]
	ldr r9,[fp,#140]
	str r9,[fp,#-124]
	ldr r9,[fp,#136]
	str r9,[fp,#-120]
	ldr r9,[fp,#132]
	str r9,[fp,#-116]
	ldr r9,[fp,#128]
	str r9,[fp,#-112]
	ldr r9,[fp,#124]
	str r9,[fp,#-108]
	ldr r9,[fp,#120]
	str r9,[fp,#-104]
	ldr r9,[fp,#116]
	str r9,[fp,#-100]
	ldr r9,[fp,#112]
	str r9,[fp,#-96]
	ldr r9,[fp,#108]
	str r9,[fp,#-92]
	ldr r9,[fp,#104]
	str r9,[fp,#-88]
	ldr r9,[fp,#100]
	str r9,[fp,#-84]
	ldr r9,[fp,#96]
	str r9,[fp,#-80]
	ldr r9,[fp,#92]
	str r9,[fp,#-76]
	ldr r9,[fp,#88]
	str r9,[fp,#-72]
	ldr r9,[fp,#84]
	str r9,[fp,#-68]
	ldr r9,[fp,#80]
	str r9,[fp,#-64]
	ldr r9,[fp,#76]
	str r9,[fp,#-172]
	ldr r9,[fp,#72]
	str r9,[fp,#-176]
	ldr r9,[fp,#68]
	str r9,[fp,#-180]
	ldr r9,[fp,#64]
	str r9,[fp,#-184]
	ldr r5,[fp,#60]
	ldr r6,[fp,#56]
	ldr r7,[fp,#52]
	ldr r8,[fp,#48]
.params_fa40L1:
	mvn r2,#47
	add r3,fp,r2
	@call void @memset(i32 %r266,i32 0,i32 40)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r3
	mov r1,#0
	mov r2,#40
	bl memset
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	bl .LPIC2
.LPIC1:
	.word k
.LPIC2:
	ldr r3,.LPIC1
	ldr r2,[r3]
	mov r3,r2
	add r4,r0,r3,lsl #2
	vldr.32 s29,[r4]
	mov r4,r2
	ldr r9,[fp,#-60]
	add r3,r9,r4,lsl #2
	vldr.32 s28,[r3]
	vadd.f32 s27,s29,s28
	mov r4,r2
	ldr r9,[fp,#-56]
	add r3,r9,r4,lsl #2
	vldr.32 s29,[r3]
	vadd.f32 s28,s27,s29
	mov r4,r2
	ldr r9,[fp,#-52]
	add r3,r9,r4,lsl #2
	vldr.32 s29,[r3]
	vadd.f32 s27,s28,s29
	mvn r4,#47
	add r3,fp,r4
	vstr.32 s27,[r3]
	ldr r4,.LPIC1
	ldr r3,[r4]
	mov r4,r3
	add r2,r8,r4,lsl #2
	vldr.32 s29,[r2]
	mov r4,r3
	add r2,r7,r4,lsl #2
	vldr.32 s28,[r2]
	vadd.f32 s27,s29,s28
	mov r4,r3
	add r2,r6,r4,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s28,s27,s29
	mov r4,r3
	add r3,r5,r4,lsl #2
	vldr.32 s29,[r3]
	vadd.f32 s27,s28,s29
	mov r4,#1
	mvn r3,#47
	add r2,fp,r3
	add r3,r2,r4,lsl #2
	vstr.32 s27,[r3]
	ldr r4,.LPIC1
	ldr r3,[r4]
	mov r4,r3
	ldr r9,[fp,#-184]
	add r2,r9,r4,lsl #2
	vldr.32 s29,[r2]
	mov r4,r3
	ldr r9,[fp,#-180]
	add r2,r9,r4,lsl #2
	vldr.32 s28,[r2]
	vadd.f32 s27,s29,s28
	mov r4,r3
	ldr r9,[fp,#-176]
	add r2,r9,r4,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s28,s27,s29
	mov r4,r3
	ldr r9,[fp,#-172]
	add r3,r9,r4,lsl #2
	vldr.32 s29,[r3]
	vadd.f32 s27,s28,s29
	mov r4,#2
	mvn r3,#47
	add r2,fp,r3
	add r3,r2,r4,lsl #2
	vstr.32 s27,[r3]
	ldr r4,.LPIC1
	ldr r3,[r4]
	mov r4,r3
	ldr r9,[fp,#-64]
	add r2,r9,r4,lsl #2
	vldr.32 s29,[r2]
	mov r4,r3
	ldr r9,[fp,#-68]
	add r2,r9,r4,lsl #2
	vldr.32 s28,[r2]
	vadd.f32 s27,s29,s28
	mov r4,r3
	ldr r9,[fp,#-72]
	add r2,r9,r4,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s28,s27,s29
	mov r4,r3
	ldr r9,[fp,#-76]
	add r3,r9,r4,lsl #2
	vldr.32 s29,[r3]
	vadd.f32 s27,s28,s29
	mov r4,#3
	mvn r3,#47
	add r2,fp,r3
	add r3,r2,r4,lsl #2
	vstr.32 s27,[r3]
	ldr r4,.LPIC1
	ldr r3,[r4]
	mov r4,r3
	ldr r9,[fp,#-80]
	add r2,r9,r4,lsl #2
	vldr.32 s29,[r2]
	mov r4,r3
	ldr r9,[fp,#-84]
	add r2,r9,r4,lsl #2
	vldr.32 s28,[r2]
	vadd.f32 s27,s29,s28
	mov r4,r3
	ldr r9,[fp,#-88]
	add r2,r9,r4,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s28,s27,s29
	mov r4,r3
	ldr r9,[fp,#-92]
	add r3,r9,r4,lsl #2
	vldr.32 s29,[r3]
	vadd.f32 s27,s28,s29
	mov r4,#4
	mvn r3,#47
	add r2,fp,r3
	add r3,r2,r4,lsl #2
	vstr.32 s27,[r3]
	ldr r4,.LPIC1
	ldr r3,[r4]
	mov r4,r3
	ldr r9,[fp,#-96]
	add r2,r9,r4,lsl #2
	vldr.32 s29,[r2]
	mov r4,r3
	ldr r9,[fp,#-100]
	add r2,r9,r4,lsl #2
	vldr.32 s28,[r2]
	vadd.f32 s27,s29,s28
	mov r4,r3
	ldr r9,[fp,#-104]
	add r2,r9,r4,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s28,s27,s29
	mov r4,r3
	ldr r9,[fp,#-108]
	add r3,r9,r4,lsl #2
	vldr.32 s29,[r3]
	vadd.f32 s27,s28,s29
	mov r4,#5
	mvn r3,#47
	add r2,fp,r3
	add r3,r2,r4,lsl #2
	vstr.32 s27,[r3]
	ldr r4,.LPIC1
	ldr r3,[r4]
	mov r4,r3
	ldr r9,[fp,#-112]
	add r2,r9,r4,lsl #2
	vldr.32 s29,[r2]
	mov r4,r3
	ldr r9,[fp,#-116]
	add r2,r9,r4,lsl #2
	vldr.32 s28,[r2]
	vadd.f32 s27,s29,s28
	mov r4,r3
	ldr r9,[fp,#-120]
	add r2,r9,r4,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s28,s27,s29
	mov r4,r3
	ldr r9,[fp,#-124]
	add r3,r9,r4,lsl #2
	vldr.32 s29,[r3]
	vadd.f32 s27,s28,s29
	mov r4,#6
	mvn r3,#47
	add r2,fp,r3
	add r3,r2,r4,lsl #2
	vstr.32 s27,[r3]
	ldr r4,.LPIC1
	ldr r3,[r4]
	mov r4,r3
	ldr r9,[fp,#-128]
	add r2,r9,r4,lsl #2
	vldr.32 s29,[r2]
	mov r4,r3
	ldr r9,[fp,#-132]
	add r2,r9,r4,lsl #2
	vldr.32 s28,[r2]
	vadd.f32 s27,s29,s28
	mov r4,r3
	ldr r9,[fp,#-136]
	add r2,r9,r4,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s28,s27,s29
	mov r4,r3
	ldr r9,[fp,#-140]
	add r3,r9,r4,lsl #2
	vldr.32 s29,[r3]
	vadd.f32 s27,s28,s29
	mov r4,#7
	mvn r3,#47
	add r2,fp,r3
	add r3,r2,r4,lsl #2
	vstr.32 s27,[r3]
	ldr r4,.LPIC1
	ldr r3,[r4]
	mov r4,r3
	ldr r9,[fp,#-144]
	add r2,r9,r4,lsl #2
	vldr.32 s29,[r2]
	mov r4,r3
	ldr r9,[fp,#-148]
	add r2,r9,r4,lsl #2
	vldr.32 s28,[r2]
	vadd.f32 s27,s29,s28
	mov r4,r3
	ldr r9,[fp,#-152]
	add r2,r9,r4,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s28,s27,s29
	mov r4,r3
	ldr r9,[fp,#-156]
	add r3,r9,r4,lsl #2
	vldr.32 s29,[r3]
	vadd.f32 s27,s28,s29
	mov r4,#8
	mvn r3,#47
	add r2,fp,r3
	add r3,r2,r4,lsl #2
	vstr.32 s27,[r3]
	ldr r4,.LPIC1
	ldr r3,[r4]
	mov r4,r3
	ldr r9,[fp,#-160]
	add r2,r9,r4,lsl #2
	vldr.32 s29,[r2]
	mov r4,r3
	ldr r9,[fp,#-164]
	add r2,r9,r4,lsl #2
	vldr.32 s28,[r2]
	vadd.f32 s27,s29,s28
	mov r4,r3
	ldr r9,[fp,#-168]
	add r2,r9,r4,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s28,s27,s29
	mov r4,r3
	ldr r9,[fp,#-188]
	add r3,r9,r4,lsl #2
	vldr.32 s29,[r3]
	vadd.f32 s27,s28,s29
	mov r4,#9
	mvn r3,#47
	add r2,fp,r3
	add r3,r2,r4,lsl #2
	vstr.32 s27,[r3]
	ldr r4,.LPIC1
	ldr r3,[r4]
	mov r4,r3
	ldr r9,[fp,#-188]
	add r3,r9,r4,lsl #2
	vldr.32 s29,[r3]
	mov r4,#0
	vmov s28,r4
	vcvt.f32.s32 s28,s28
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	ite ne
	movne r3, #1
	moveq r3, #0
	uxtb r3, r3
	cmp r3,#0
	ite ne
	movne r3, #1
	moveq r3, #0
	uxtb r3, r3
	mov r4,#0
	str r4,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r4,#0
	str r4,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	vmov s29,r3
	vcvt.f32.s32 s29,s29
	vcmp.f32 s29,s27
	vmrs APSR_nzcv, FPSCR
	ite ne
	movne r3, #1
	moveq r3, #0
	uxtb r3, r3
	mov r4,#0
	str r4,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r4,#0
	str r4,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	vmov s29,r3
	vcvt.f32.s32 s29,s29
	vcmp.f32 s29,s27
	vmrs APSR_nzcv, FPSCR
	bne .params_fa40L2
.params_fa40L3:
	ldr r9,[fp,#-60]
	mov r10,r9
	str r10,[fp,#-192]
	ldr r9,[fp,#-56]
	mov r10,r9
	str r10,[fp,#-60]
	ldr r9,[fp,#-52]
	mov r10,r9
	str r10,[fp,#-56]
	mov r9,r8
	str r9,[fp,#-52]
	mov r9,r7
	str r9,[fp,#-196]
	mov r9,r6
	str r9,[fp,#-200]
	mov r9,r5
	str r9,[fp,#-204]
	ldr r9,[fp,#-184]
	mov r10,r9
	str r10,[fp,#-208]
	ldr r9,[fp,#-180]
	mov r10,r9
	str r10,[fp,#-184]
	ldr r9,[fp,#-176]
	mov r10,r9
	str r10,[fp,#-180]
	ldr r9,[fp,#-172]
	mov r10,r9
	str r10,[fp,#-176]
	ldr r9,[fp,#-64]
	mov r10,r9
	str r10,[fp,#-172]
	ldr r9,[fp,#-68]
	mov r10,r9
	str r10,[fp,#-64]
	ldr r9,[fp,#-72]
	mov r10,r9
	str r10,[fp,#-68]
	ldr r9,[fp,#-76]
	mov r10,r9
	str r10,[fp,#-72]
	ldr r9,[fp,#-80]
	mov r10,r9
	str r10,[fp,#-76]
	ldr r9,[fp,#-84]
	mov r10,r9
	str r10,[fp,#-80]
	ldr r9,[fp,#-88]
	mov r10,r9
	str r10,[fp,#-84]
	ldr r9,[fp,#-92]
	mov r10,r9
	str r10,[fp,#-88]
	ldr r9,[fp,#-96]
	mov r10,r9
	str r10,[fp,#-92]
	ldr r9,[fp,#-100]
	mov r10,r9
	str r10,[fp,#-96]
	ldr r9,[fp,#-104]
	mov r10,r9
	str r10,[fp,#-100]
	ldr r9,[fp,#-108]
	mov r10,r9
	str r10,[fp,#-104]
	ldr r9,[fp,#-112]
	mov r10,r9
	str r10,[fp,#-108]
	ldr r9,[fp,#-116]
	mov r10,r9
	str r10,[fp,#-112]
	ldr r9,[fp,#-120]
	mov r10,r9
	str r10,[fp,#-116]
	ldr r9,[fp,#-124]
	mov r10,r9
	str r10,[fp,#-120]
	ldr r9,[fp,#-128]
	mov r10,r9
	str r10,[fp,#-124]
	ldr r9,[fp,#-132]
	mov r10,r9
	str r10,[fp,#-128]
	ldr r9,[fp,#-136]
	mov r10,r9
	str r10,[fp,#-132]
	ldr r9,[fp,#-140]
	mov r10,r9
	str r10,[fp,#-136]
	ldr r9,[fp,#-144]
	mov r10,r9
	str r10,[fp,#-140]
	ldr r9,[fp,#-148]
	mov r7,r9
	ldr r9,[fp,#-152]
	mov r6,r9
	ldr r9,[fp,#-156]
	mov r5,r9
	ldr r9,[fp,#-160]
	mov r1,r9
	ldr r9,[fp,#-164]
	mov r4,r9
	ldr r9,[fp,#-168]
	mov r3,r9
	ldr r9,[fp,#-188]
	mov r2,r9
	mvn r0,#47
	add r8,fp,r0
	@%s266 = call float @params_fa40(ptr %r225,ptr %r226,ptr %r227,ptr %r228,ptr %r229,ptr %r230,ptr %r231,ptr %r232,ptr %r233,ptr %r234,ptr %r235,ptr %r236,ptr %r237,ptr %r238,ptr %r239,ptr %r240,ptr %r241,ptr %r242,ptr %r243,ptr %r244,ptr %r245,ptr %r246,ptr %r247,ptr %r248,ptr %r249,ptr %r250,ptr %r251,ptr %r252,ptr %r253,ptr %r254,ptr %r255,ptr %r256,ptr %r257,ptr %r258,ptr %r259,ptr %r260,ptr %r261,ptr %r262,ptr %r263,ptr %r264)
	push {r0,r2,r3}
	sub sp,sp,#144
	str r8,[sp,#140]  @%r264
	str r2,[sp,#136]  @%r263
	str r3,[sp,#132]  @%r262
	str r4,[sp,#128]  @%r261
	str r1,[sp,#124]  @%r260
	str r5,[sp,#120]  @%r259
	str r6,[sp,#116]  @%r258
	str r7,[sp,#112]  @%r257
	ldr r9,[fp,#-140]
	str r9,[sp,#108]  @%r256
	ldr r9,[fp,#-136]
	str r9,[sp,#104]  @%r255
	ldr r9,[fp,#-132]
	str r9,[sp,#100]  @%r254
	ldr r9,[fp,#-128]
	str r9,[sp,#96]  @%r253
	ldr r9,[fp,#-124]
	str r9,[sp,#92]  @%r252
	ldr r9,[fp,#-120]
	str r9,[sp,#88]  @%r251
	ldr r9,[fp,#-116]
	str r9,[sp,#84]  @%r250
	ldr r9,[fp,#-112]
	str r9,[sp,#80]  @%r249
	ldr r9,[fp,#-108]
	str r9,[sp,#76]  @%r248
	ldr r9,[fp,#-104]
	str r9,[sp,#72]  @%r247
	ldr r9,[fp,#-100]
	str r9,[sp,#68]  @%r246
	ldr r9,[fp,#-96]
	str r9,[sp,#64]  @%r245
	ldr r9,[fp,#-92]
	str r9,[sp,#60]  @%r244
	ldr r9,[fp,#-88]
	str r9,[sp,#56]  @%r243
	ldr r9,[fp,#-84]
	str r9,[sp,#52]  @%r242
	ldr r9,[fp,#-80]
	str r9,[sp,#48]  @%r241
	ldr r9,[fp,#-76]
	str r9,[sp,#44]  @%r240
	ldr r9,[fp,#-72]
	str r9,[sp,#40]  @%r239
	ldr r9,[fp,#-68]
	str r9,[sp,#36]  @%r238
	ldr r9,[fp,#-64]
	str r9,[sp,#32]  @%r237
	ldr r9,[fp,#-172]
	str r9,[sp,#28]  @%r236
	ldr r9,[fp,#-176]
	str r9,[sp,#24]  @%r235
	ldr r9,[fp,#-180]
	str r9,[sp,#20]  @%r234
	ldr r9,[fp,#-184]
	str r9,[sp,#16]  @%r233
	ldr r9,[fp,#-208]
	str r9,[sp,#12]  @%r232
	ldr r9,[fp,#-204]
	str r9,[sp,#8]  @%r231
	ldr r9,[fp,#-200]
	str r9,[sp,#4]  @%r230
	ldr r9,[fp,#-196]
	str r9,[sp,#0]  @%r229
	ldr r0,[fp,#-192]
	ldr r1,[fp,#-60]
	ldr r2,[fp,#-56]
	ldr r3,[fp,#-52]
	bl params_fa40
	add sp,sp,#144
	vmov.f32 s31,s0
	pop {r0,r2,r3}
	vmov.f32 s29,s31
	vmov.f32 s0,s29
	mov r9,#208
	add sp,sp,r9
	vpop.64 {d13,d14}
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.params_fa40L2:
	mvn r8,#47
	add r7,fp,r8
	@call void @putfarray(i32 10,ptr %r221)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	mov r1,r7
	bl putfarray
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r8,r7
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s29,[r7]
	vmov.f32 s0,s29
	mov r9,#208
	add sp,sp,r9
	vpop.64 {d13,d14}
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
params_mix:@r4 r5 r6 r7 r8 r9 r10 d11 d12 d13 d14 d15 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	vpush.64 {d11,d12,d13,d14,d15}
	add fp,sp,#4
	mov r9,#264
	sub sp,sp,r9
.params_mixL0:
	mov r9,r3
	str r9,[fp,#-100]
	mov r9,r1
	str r9,[fp,#-96]
	mov r9,r0
	str r9,[fp,#-92]
	ldr r9,[fp,#244]
	str r9,[fp,#-240]
	vldr.32 s29,[fp,#240]
	ldr r9,[fp,#236]
	str r9,[fp,#-176]
	ldr r9,[fp,#232]
	str r9,[fp,#-172]
	vldr.32 s25,[fp,#228]
	ldr r9,[fp,#224]
	str r9,[fp,#-184]
	vldr.32 s26,[fp,#220]
	ldr r9,[fp,#216]
	str r9,[fp,#-168]
	ldr r9,[fp,#212]
	str r9,[fp,#-164]
	ldr r9,[fp,#208]
	str r9,[fp,#-188]
	ldr r9,[fp,#204]
	str r9,[fp,#-160]
	vldr.32 s27,[fp,#200]
	vldr.32 s28,[fp,#196]
	ldr r9,[fp,#192]
	str r9,[fp,#-156]
	ldr r9,[fp,#188]
	str r9,[fp,#-152]
	ldr r9,[fp,#184]
	str r9,[fp,#-192]
	ldr r9,[fp,#180]
	str r9,[fp,#-148]
	ldr r9,[fp,#176]
	str r9,[fp,#-196]
	ldr r9,[fp,#172]
	str r9,[fp,#-144]
	ldr r9,[fp,#168]
	str r9,[fp,#-204]
	ldr r9,[fp,#164]
	str r9,[fp,#-200]
	ldr r9,[fp,#160]
	str r9,[fp,#-140]
	ldr r9,[fp,#156]
	str r9,[fp,#-136]
	ldr r9,[fp,#152]
	str r9,[fp,#-132]
	ldr r9,[fp,#148]
	str r9,[fp,#-128]
	ldr r9,[fp,#144]
	str r9,[fp,#-208]
	ldr r9,[fp,#140]
	str r9,[fp,#-124]
	ldr r9,[fp,#136]
	str r9,[fp,#-120]
	ldr r9,[fp,#132]
	str r9,[fp,#-116]
	ldr r9,[fp,#128]
	str r9,[fp,#-112]
	ldr r9,[fp,#124]
	str r9,[fp,#-108]
	ldr r9,[fp,#120]
	str r9,[fp,#-104]
	ldr r9,[fp,#116]
	str r9,[fp,#-212]
	ldr r9,[fp,#112]
	str r9,[fp,#-180]
	ldr r9,[fp,#108]
	str r9,[fp,#-228]
	ldr r9,[fp,#104]
	str r9,[fp,#-232]
	ldr r9,[fp,#100]
	str r9,[fp,#-216]
	ldr r9,[fp,#96]
	str r9,[fp,#-236]
	ldr r5,[fp,#92]
	ldr r6,[fp,#88]
	ldr r9,[fp,#84]
	str r9,[fp,#-220]
	ldr r9,[fp,#80]
	str r9,[fp,#-224]
	ldr r7,[fp,#76]
	ldr r8,[fp,#72]
.params_mixL1:
	mvn r1,#87
	add r0,fp,r1
	@call void @memset(i32 %r401,i32 0,i32 40)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	vpush.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	mov r1,#0
	mov r2,#40
	bl memset
	vpop.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	bl .LPIC4
.LPIC3:
	.word k
.LPIC4:
	ldr r1,.LPIC3
	ldr r0,[r1]
	mov r1,r0
	add r0,r2,r1,lsl #2
	vldr.32 s24,[r0]
	vadd.f32 s23,s0,s24
	vadd.f32 s24,s23,s1
	vadd.f32 s23,s24,s2
	mvn r2,#87
	add r1,fp,r2
	vstr.32 s23,[r1]
	ldr r2,.LPIC3
	ldr r1,[r2]
	mov r2,r1
	add r0,r8,r2,lsl #2
	vldr.32 s24,[r0]
	vadd.f32 s23,s3,s24
	mov r2,r1
	add r0,r6,r2,lsl #2
	vldr.32 s24,[r0]
	vadd.f32 s22,s23,s24
	mov r2,r1
	ldr r9,[fp,#-232]
	add r1,r9,r2,lsl #2
	vldr.32 s24,[r1]
	vadd.f32 s23,s22,s24
	mov r2,#1
	mvn r1,#87
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vstr.32 s23,[r1]
	ldr r2,.LPIC3
	ldr r1,[r2]
	mov r2,r1
	ldr r9,[fp,#-228]
	add r1,r9,r2,lsl #2
	vldr.32 s24,[r1]
	vadd.f32 s23,s24,s4
	vadd.f32 s24,s23,s5
	vadd.f32 s23,s24,s6
	mov r2,#2
	mvn r1,#87
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vstr.32 s23,[r1]
	ldr r2,.LPIC3
	ldr r1,[r2]
	mov r2,r1
	ldr r9,[fp,#-180]
	add r1,r9,r2,lsl #2
	vldr.32 s24,[r1]
	vadd.f32 s23,s24,s7
	vadd.f32 s24,s23,s8
	vadd.f32 s23,s24,s9
	mov r2,#3
	mvn r1,#87
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vstr.32 s23,[r1]
	ldr r2,.LPIC3
	ldr r1,[r2]
	mov r2,r1
	ldr r9,[fp,#-108]
	add r0,r9,r2,lsl #2
	vldr.32 s24,[r0]
	mov r2,r1
	ldr r9,[fp,#-120]
	add r1,r9,r2,lsl #2
	vldr.32 s23,[r1]
	vadd.f32 s22,s24,s23
	vadd.f32 s24,s22,s10
	vadd.f32 s23,s24,s11
	mov r2,#4
	mvn r1,#87
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vstr.32 s23,[r1]
	ldr r2,.LPIC3
	ldr r1,[r2]
	mov r2,r1
	ldr r9,[fp,#-128]
	add r0,r9,r2,lsl #2
	vldr.32 s24,[r0]
	mov r2,r1
	ldr r9,[fp,#-132]
	add r1,r9,r2,lsl #2
	vldr.32 s23,[r1]
	vadd.f32 s22,s24,s23
	vadd.f32 s24,s22,s12
	vadd.f32 s23,s24,s13
	mov r2,#5
	mvn r1,#87
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vstr.32 s23,[r1]
	vadd.f32 s24,s14,s15
	ldr r2,.LPIC3
	ldr r1,[r2]
	mov r2,r1
	ldr r9,[fp,#-148]
	add r1,r9,r2,lsl #2
	vldr.32 s23,[r1]
	vadd.f32 s22,s24,s23
	vadd.f32 s24,s22,s28
	mov r2,#6
	mvn r1,#87
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vstr.32 s24,[r1]
	ldr r2,.LPIC3
	ldr r1,[r2]
	mov r2,r1
	ldr r9,[fp,#-160]
	add r0,r9,r2,lsl #2
	vldr.32 s24,[r0]
	vadd.f32 s23,s27,s24
	mov r2,r1
	ldr r9,[fp,#-168]
	add r1,r9,r2,lsl #2
	vldr.32 s24,[r1]
	vadd.f32 s22,s23,s24
	vadd.f32 s24,s22,s26
	mov r2,#7
	mvn r1,#87
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vstr.32 s24,[r1]
	ldr r2,.LPIC3
	ldr r1,[r2]
	mov r2,r1
	ldr r9,[fp,#-172]
	add r0,r9,r2,lsl #2
	vldr.32 s24,[r0]
	vadd.f32 s23,s25,s24
	mov r2,r1
	ldr r9,[fp,#-176]
	add r1,r9,r2,lsl #2
	vldr.32 s24,[r1]
	vadd.f32 s22,s23,s24
	vadd.f32 s24,s22,s29
	mov r2,#8
	mvn r1,#87
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vstr.32 s24,[r1]
	mvn r2,#47
	add r1,fp,r2
	@call void @memset(i32 %r478,i32 0,i32 40)
	push {r0,r1,r3}
	vpush.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	mov r0,r1
	mov r1,#0
	mov r2,#40
	bl memset
	vpop.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	pop {r0,r1,r3}
	ldr r2,.LPIC3
	ldr r1,[r2]
	mov r2,r1
	ldr r9,[fp,#-92]
	add r1,r9,r2,lsl #2
	ldr r2,[r1]
	ldr r9,[fp,#-96]
	add r1,r2,r9
	ldr r9,[fp,#-100]
	add r2,r1,r9
	mvn r1,#47
	add r0,fp,r1
	str r2,[r0]
	ldr r2,.LPIC3
	ldr r1,[r2]
	mov r2,r1
	add r1,r7,r2,lsl #2
	ldr r2,[r1]
	ldr r9,[fp,#-224]
	add r1,r2,r9
	ldr r9,[fp,#-220]
	add r2,r1,r9
	mov r1,#1
	mvn r0,#47
	add r4,fp,r0
	add r0,r4,r1,lsl #2
	str r2,[r0]
	ldr r4,.LPIC3
	ldr r2,[r4]
	mov r4,r2
	add r1,r5,r4,lsl #2
	ldr r4,[r1]
	mov r1,r2
	ldr r9,[fp,#-236]
	add r2,r9,r1,lsl #2
	ldr r1,[r2]
	add r2,r4,r1
	ldr r9,[fp,#-216]
	add r4,r2,r9
	mov r2,#2
	mvn r1,#47
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	str r4,[r1]
	ldr r4,.LPIC3
	ldr r2,[r4]
	mov r4,r2
	ldr r9,[fp,#-104]
	add r1,r9,r4,lsl #2
	ldr r4,[r1]
	ldr r9,[fp,#-212]
	add r1,r9,r4
	mov r4,r2
	ldr r9,[fp,#-112]
	add r2,r9,r4,lsl #2
	ldr r4,[r2]
	add r2,r1,r4
	mov r4,#3
	mvn r1,#47
	add r0,fp,r1
	add r1,r0,r4,lsl #2
	str r2,[r1]
	ldr r4,.LPIC3
	ldr r2,[r4]
	mov r4,r2
	ldr r9,[fp,#-116]
	add r1,r9,r4,lsl #2
	ldr r4,[r1]
	mov r1,r2
	ldr r9,[fp,#-124]
	add r2,r9,r1,lsl #2
	ldr r1,[r2]
	add r2,r4,r1
	ldr r9,[fp,#-208]
	add r4,r2,r9
	mov r2,#4
	mvn r1,#47
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	str r4,[r1]
	ldr r4,.LPIC3
	ldr r2,[r4]
	mov r4,r2
	ldr r9,[fp,#-136]
	add r1,r9,r4,lsl #2
	ldr r4,[r1]
	mov r1,r2
	ldr r9,[fp,#-140]
	add r2,r9,r1,lsl #2
	ldr r1,[r2]
	add r2,r4,r1
	ldr r9,[fp,#-200]
	add r4,r2,r9
	mov r2,#5
	mvn r1,#47
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	str r4,[r1]
	ldr r4,.LPIC3
	ldr r2,[r4]
	mov r4,r2
	ldr r9,[fp,#-144]
	add r2,r9,r4,lsl #2
	ldr r4,[r2]
	ldr r9,[fp,#-204]
	add r2,r9,r4
	ldr r9,[fp,#-196]
	add r4,r2,r9
	mov r2,#6
	mvn r1,#47
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	str r4,[r1]
	ldr r4,.LPIC3
	ldr r2,[r4]
	mov r4,r2
	ldr r9,[fp,#-152]
	add r1,r9,r4,lsl #2
	ldr r4,[r1]
	ldr r9,[fp,#-192]
	add r1,r9,r4
	mov r4,r2
	ldr r9,[fp,#-156]
	add r2,r9,r4,lsl #2
	ldr r4,[r2]
	add r2,r1,r4
	mov r4,#7
	mvn r1,#47
	add r0,fp,r1
	add r1,r0,r4,lsl #2
	str r2,[r1]
	ldr r4,.LPIC3
	ldr r2,[r4]
	mov r4,r2
	ldr r9,[fp,#-164]
	add r2,r9,r4,lsl #2
	ldr r4,[r2]
	ldr r9,[fp,#-188]
	add r2,r9,r4
	ldr r9,[fp,#-184]
	add r4,r2,r9
	ldr r9,[fp,#-240]
	add r2,r4,r9
	mov r4,#8
	mvn r1,#47
	add r0,fp,r1
	add r1,r0,r4,lsl #2
	str r2,[r1]
	ldr r9,[fp,#-240]
	cmp r9,#0
	bne .params_mixL2
.params_mixL3:
	mvn r4,#47
	add r9,fp,r4
	str r9,[fp,#-92]
	mvn r4,#87
	add r9,fp,r4
	str r9,[fp,#-244]
	mov r9,r8
	str r9,[fp,#-248]
	mov r9,r7
	str r9,[fp,#-252]
	mov r9,r6
	str r9,[fp,#-256]
	mov r9,r5
	str r9,[fp,#-260]
	ldr r9,[fp,#-236]
	mov r10,r9
	str r10,[fp,#-264]
	ldr r9,[fp,#-232]
	mov r10,r9
	str r10,[fp,#-236]
	ldr r9,[fp,#-228]
	mov r10,r9
	str r10,[fp,#-232]
	ldr r9,[fp,#-180]
	mov r10,r9
	str r10,[fp,#-228]
	ldr r9,[fp,#-104]
	mov r10,r9
	str r10,[fp,#-180]
	ldr r9,[fp,#-108]
	mov r10,r9
	str r10,[fp,#-104]
	ldr r9,[fp,#-112]
	mov r10,r9
	str r10,[fp,#-108]
	ldr r9,[fp,#-116]
	mov r10,r9
	str r10,[fp,#-112]
	ldr r9,[fp,#-120]
	mov r10,r9
	str r10,[fp,#-116]
	ldr r9,[fp,#-124]
	mov r10,r9
	str r10,[fp,#-120]
	ldr r9,[fp,#-128]
	mov r10,r9
	str r10,[fp,#-124]
	ldr r9,[fp,#-132]
	mov r10,r9
	str r10,[fp,#-128]
	ldr r9,[fp,#-136]
	mov r10,r9
	str r10,[fp,#-132]
	ldr r9,[fp,#-140]
	mov r10,r9
	str r10,[fp,#-136]
	ldr r9,[fp,#-144]
	mov r10,r9
	str r10,[fp,#-140]
	ldr r9,[fp,#-148]
	mov r10,r9
	str r10,[fp,#-144]
	ldr r9,[fp,#-152]
	mov r7,r9
	ldr r9,[fp,#-156]
	mov r6,r9
	ldr r9,[fp,#-160]
	mov r5,r9
	ldr r9,[fp,#-164]
	mov r0,r9
	ldr r9,[fp,#-168]
	mov r3,r9
	ldr r9,[fp,#-172]
	mov r2,r9
	ldr r9,[fp,#-176]
	mov r1,r9
	ldr r9,[fp,#-240]
	vmov s24,r9
	vcvt.f32.s32 s24,s24
	vcvt.s32.f32 s31,s29
	vmov r4,s31
	@%r397 = call i32 @params_mix(float %s1,ptr %r332,i32 %r2,ptr %r334,float %s5,i32 %r5,float %s7,float %s8,ptr %r339,ptr %r340,i32 %r10,i32 %r11,ptr %r343,ptr %r344,ptr %r345,i32 %r15,ptr %r347,ptr %r348,float %s19,float %s20,float %s21,ptr %r352,i32 %r22,float %s24,float %s25,float %s26,ptr %r357,ptr %r358,ptr %r359,ptr %r360,ptr %r361,float %s32,float %s33,ptr %r364,i32 %r34,ptr %r366,ptr %r367,float %s38,float %s39,ptr %r370,ptr %r371,i32 %r41,i32 %r42,float %s44,float %s45,ptr %r376,i32 %r46,ptr %r378,i32 %r48,ptr %r380,ptr %r381,float %s52,float %s53,ptr %r384,i32 %r54,ptr %r386,ptr %r387,float %s58,i32 %r58,float %s60,ptr %r391,ptr %r392,float %s395,i32 %r396)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	vpush.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	sub sp,sp,#176
	str r4,[sp,#172]  @%r396
	vstr.32 s24,[sp,#168]  @%s395
	str r1,[sp,#164]  @%r392
	str r2,[sp,#160]  @%r391
	vstr.32 s25,[sp,#156]  @%s60
	ldr r9,[fp,#-184]
	str r9,[sp,#152]  @%r58
	vstr.32 s26,[sp,#148]  @%s58
	str r3,[sp,#144]  @%r387
	str r0,[sp,#140]  @%r386
	ldr r9,[fp,#-188]
	str r9,[sp,#136]  @%r54
	str r5,[sp,#132]  @%r384
	vstr.32 s27,[sp,#128]  @%s53
	vstr.32 s28,[sp,#124]  @%s52
	str r6,[sp,#120]  @%r381
	str r7,[sp,#116]  @%r380
	ldr r9,[fp,#-192]
	str r9,[sp,#112]  @%r48
	ldr r9,[fp,#-144]
	str r9,[sp,#108]  @%r378
	ldr r9,[fp,#-196]
	str r9,[sp,#104]  @%r46
	ldr r9,[fp,#-140]
	str r9,[sp,#100]  @%r376
	ldr r9,[fp,#-204]
	str r9,[sp,#96]  @%r42
	ldr r9,[fp,#-200]
	str r9,[sp,#92]  @%r41
	ldr r9,[fp,#-136]
	str r9,[sp,#88]  @%r371
	ldr r9,[fp,#-132]
	str r9,[sp,#84]  @%r370
	ldr r9,[fp,#-128]
	str r9,[sp,#80]  @%r367
	ldr r9,[fp,#-124]
	str r9,[sp,#76]  @%r366
	ldr r9,[fp,#-208]
	str r9,[sp,#72]  @%r34
	ldr r9,[fp,#-120]
	str r9,[sp,#68]  @%r364
	ldr r9,[fp,#-116]
	str r9,[sp,#64]  @%r361
	ldr r9,[fp,#-112]
	str r9,[sp,#60]  @%r360
	ldr r9,[fp,#-108]
	str r9,[sp,#56]  @%r359
	ldr r9,[fp,#-104]
	str r9,[sp,#52]  @%r358
	ldr r9,[fp,#-180]
	str r9,[sp,#48]  @%r357
	ldr r9,[fp,#-212]
	str r9,[sp,#44]  @%r22
	ldr r9,[fp,#-228]
	str r9,[sp,#40]  @%r352
	ldr r9,[fp,#-232]
	str r9,[sp,#36]  @%r348
	ldr r9,[fp,#-236]
	str r9,[sp,#32]  @%r347
	ldr r9,[fp,#-216]
	str r9,[sp,#28]  @%r15
	ldr r9,[fp,#-264]
	str r9,[sp,#24]  @%r345
	ldr r9,[fp,#-260]
	str r9,[sp,#20]  @%r344
	ldr r9,[fp,#-256]
	str r9,[sp,#16]  @%r343
	ldr r9,[fp,#-220]
	str r9,[sp,#12]  @%r11
	ldr r9,[fp,#-224]
	str r9,[sp,#8]  @%r10
	ldr r9,[fp,#-252]
	str r9,[sp,#4]  @%r340
	ldr r9,[fp,#-248]
	str r9,[sp,#0]  @%r339
	ldr r0,[fp,#-92]
	ldr r1,[fp,#-96]
	ldr r2,[fp,#-244]
	ldr r3,[fp,#-100]
	bl params_mix
	add sp,sp,#176
	mov r8,r0
	vpop.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r9,#264
	add sp,sp,r9
	vpop.64 {d11,d12,d13,d14,d15}
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.params_mixL2:
	mvn r8,#87
	add r7,fp,r8
	@call void @putfarray(i32 10,ptr %r293)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	mov r1,r7
	bl putfarray
	add sp,sp,#4 @stack align 8bytes
	mvn r8,#47
	add r7,fp,r8
	@call void @putarray(i32 10,ptr %r295)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	mov r1,r7
	bl putarray
	add sp,sp,#4 @stack align 8bytes
.params_mixL9:
	mov r8,#0
.params_mixL6:
	mov r7,r8
	mvn r6,#47
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	ldr r7,[r6]
	mov r5,r8
	mvn r4,#87
	add r3,fp,r4
	add r4,r3,r5,lsl #2
	vldr.32 s29,[r4]
	vmov s28,r7
	vcvt.f32.s32 s28,s28
	vsub.f32 s27,s28,s29
	vcvt.s32.f32 s31,s27
	vmov r7,s31
	str r7,[r6]
	add r7,r8,#1
.params_mixL7:
	cmp r7,#10
	blt .params_mixL10
.params_mixL8:
	ldr r6,.LPIC3
	ldr r5,[r6]
	mov r6,r5
	mvn r5,#47
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	ldr r6,[r5]
	mov r5,#8
	mvn r4,#87
	add r3,fp,r4
	add r4,r3,r5,lsl #2
	vldr.32 s29,[r4]
	vmov s28,r6
	vcvt.f32.s32 s28,s28
	vmul.f32 s27,s28,s29
	vcvt.s32.f32 s31,s27
	vmov r6,s31
	mov r0,r6
	mov r9,#264
	add sp,sp,r9
	vpop.64 {d11,d12,d13,d14,d15}
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.params_mixL10:
	mov r8,r7
	bl .params_mixL6
params_f40_i24:@r4 r5 r6 r7 r8 r9 r10 d8 d9 d10 d11 d12 d13 d14 d15 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	vpush.64 {d8,d9,d10,d11,d12,d13,d14,d15}
	add fp,sp,#4
	mov r9,#196
	sub sp,sp,r9
.params_f40_i24L0:
	vmov s30,s2
	vstr.32 s30,[fp,#-188]
	mov r9,r1
	str r9,[fp,#-132]
	mov r9,r2
	str r9,[fp,#-128]
	mov r9,r0
	str r9,[fp,#-124]
	vmov s30,s14
	vstr.32 s30,[fp,#-108]
	vmov s30,s5
	vstr.32 s30,[fp,#-104]
	vmov s30,s7
	vstr.32 s30,[fp,#-100]
	vmov s30,s13
	vstr.32 s30,[fp,#-96]
	vmov s30,s15
	vstr.32 s30,[fp,#-92]
	vmov s30,s6
	vstr.32 s30,[fp,#-88]
	vmov s30,s11
	vstr.32 s30,[fp,#-84]
	vldr.32 s30,[fp,#268]
	vstr.32 s30,[fp,#-112]
	ldr r9,[fp,#264]
	str r9,[fp,#-148]
	vldr.32 s28,[fp,#260]
	ldr r9,[fp,#256]
	str r9,[fp,#-152]
	vldr.32 s21,[fp,#252]
	vldr.32 s30,[fp,#248]
	vstr.32 s30,[fp,#-116]
	vldr.32 s15,[fp,#244]
	vldr.32 s17,[fp,#240]
	vldr.32 s19,[fp,#236]
	vldr.32 s20,[fp,#232]
	ldr r9,[fp,#228]
	str r9,[fp,#-172]
	ldr r9,[fp,#224]
	str r9,[fp,#-176]
	ldr r7,[fp,#220]
	vldr.32 s7,[fp,#216]
	vldr.32 s24,[fp,#212]
	vldr.32 s6,[fp,#208]
	vldr.32 s13,[fp,#204]
	ldr r9,[fp,#200]
	str r9,[fp,#-156]
	ldr r9,[fp,#196]
	str r9,[fp,#-136]
	vldr.32 s5,[fp,#192]
	ldr r9,[fp,#188]
	str r9,[fp,#-140]
	vldr.32 s29,[fp,#184]
	vldr.32 s25,[fp,#180]
	vldr.32 s23,[fp,#176]
	ldr r9,[fp,#172]
	str r9,[fp,#-184]
	ldr r9,[fp,#168]
	str r9,[fp,#-164]
	vldr.32 s14,[fp,#164]
	vldr.32 s27,[fp,#160]
	vldr.32 s22,[fp,#156]
	vldr.32 s18,[fp,#152]
	ldr r9,[fp,#148]
	str r9,[fp,#-160]
	vldr.32 s30,[fp,#144]
	vstr.32 s30,[fp,#-120]
	ldr r9,[fp,#140]
	str r9,[fp,#-196]
	vldr.32 s11,[fp,#136]
	vldr.32 s26,[fp,#132]
	vldr.32 s16,[fp,#128]
	ldr r9,[fp,#124]
	str r9,[fp,#-144]
	ldr r9,[fp,#120]
	str r9,[fp,#-192]
	ldr r4,[fp,#116]
	ldr r9,[fp,#112]
	str r9,[fp,#-168]
	ldr r8,[fp,#108]
	ldr r9,[fp,#104]
	str r9,[fp,#-180]
	ldr r5,[fp,#100]
	ldr r6,[fp,#96]
.params_f40_i24L1:
	ldr r9,[fp,#-124]
	cmp r9,#0
	bne .params_f40_i24L2
.params_f40_i24L3:
	@%s362 = call float @params_f40_i24(i32 %r4,i32 %r1,i32 %r2,float %s4,i32 %r4,i32 %r5,i32 %r6,float %s8,float %s9,float %s10,i32 %r10,float %s12,float %s13,i32 %r13,float %s15,i32 %r15,float %s17,float %s18,float %s19,float %s20,float %s21,float %s22,i32 %r22,float %s24,i32 %r24,i32 %r25,float %s27,float %s28,float %s29,float %s30,float %s31,i32 %r31,float %s33,i32 %r33,float %s35,float %s36,float %s37,float %s38,i32 %r38,i32 %r39,float %s41,float %s42,float %s43,i32 %r43,float %s45,i32 %r45,i32 %r46,float %s48,float %s49,float %s50,float %s51,i32 %r51,i32 %r52,i32 %r53,float %s55,float %s56,float %s57,float %s58,float %s59,float %s60,i32 %r60,float %s62,i32 %r62,float %s64)
	push {r0,r1,r2,r3}
	vpush.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	sub sp,sp,#176
	vldr.32 s30,[fp,#-112]
	vstr.32 s30,[sp,#172]  @%s64
	ldr r9,[fp,#-148]
	str r9,[sp,#168]  @%r62
	vstr.32 s28,[sp,#164]  @%s62
	ldr r9,[fp,#-152]
	str r9,[sp,#160]  @%r60
	vstr.32 s21,[sp,#156]  @%s60
	vldr.32 s30,[fp,#-116]
	vstr.32 s30,[sp,#152]  @%s59
	vstr.32 s15,[sp,#148]  @%s58
	vstr.32 s17,[sp,#144]  @%s57
	vstr.32 s19,[sp,#140]  @%s56
	vstr.32 s20,[sp,#136]  @%s55
	ldr r9,[fp,#-172]
	str r9,[sp,#132]  @%r53
	ldr r9,[fp,#-176]
	str r9,[sp,#128]  @%r52
	str r7,[sp,#124]  @%r51
	vstr.32 s7,[sp,#120]  @%s51
	vstr.32 s24,[sp,#116]  @%s50
	vstr.32 s6,[sp,#112]  @%s49
	vstr.32 s13,[sp,#108]  @%s48
	ldr r9,[fp,#-156]
	str r9,[sp,#104]  @%r46
	ldr r9,[fp,#-136]
	str r9,[sp,#100]  @%r45
	vstr.32 s5,[sp,#96]  @%s45
	ldr r9,[fp,#-140]
	str r9,[sp,#92]  @%r43
	vstr.32 s29,[sp,#88]  @%s43
	vstr.32 s25,[sp,#84]  @%s42
	vstr.32 s23,[sp,#80]  @%s41
	ldr r9,[fp,#-184]
	str r9,[sp,#76]  @%r39
	ldr r9,[fp,#-164]
	str r9,[sp,#72]  @%r38
	vstr.32 s14,[sp,#68]  @%s38
	vstr.32 s27,[sp,#64]  @%s37
	vstr.32 s22,[sp,#60]  @%s36
	vstr.32 s18,[sp,#56]  @%s35
	ldr r9,[fp,#-160]
	str r9,[sp,#52]  @%r33
	vldr.32 s30,[fp,#-120]
	vstr.32 s30,[sp,#48]  @%s33
	ldr r9,[fp,#-196]
	str r9,[sp,#44]  @%r31
	vstr.32 s11,[sp,#40]  @%s31
	vstr.32 s26,[sp,#36]  @%s30
	vstr.32 s16,[sp,#32]  @%s29
	ldr r9,[fp,#-144]
	str r9,[sp,#28]  @%r25
	ldr r9,[fp,#-192]
	str r9,[sp,#24]  @%r24
	str r4,[sp,#20]  @%r22
	ldr r9,[fp,#-168]
	str r9,[sp,#16]  @%r15
	str r8,[sp,#12]  @%r13
	ldr r9,[fp,#-180]
	str r9,[sp,#8]  @%r10
	str r5,[sp,#4]  @%r6
	str r6,[sp,#0]  @%r5
	mov r0,r3
	ldr r1,[fp,#-132]
	ldr r2,[fp,#-128]
	vldr.32 s2,[fp,#-188]
	vldr.32 s5,[fp,#-104]
	vldr.32 s6,[fp,#-88]
	vldr.32 s7,[fp,#-100]
	vldr.32 s11,[fp,#-84]
	vldr.32 s13,[fp,#-96]
	vldr.32 s14,[fp,#-108]
	vldr.32 s15,[fp,#-92]
	bl params_f40_i24
	add sp,sp,#176
	vmov.f32 s31,s0
	vpop.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	pop {r0,r1,r2,r3}
	vmov.f32 s2,s31
	vmov.f32 s0,s2
	mov r9,#196
	add sp,sp,r9
	vpop.64 {d8,d9,d10,d11,d12,d13,d14,d15}
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.params_f40_i24L2:
	mvn r2,#79
	add r1,fp,r2
	@call void @memset(i32 %r365,i32 0,i32 40)
	push {r0,r1,r2,r3}
	vpush.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	mov r0,r1
	mov r1,#0
	mov r2,#40
	bl memset
	vpop.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	pop {r0,r1,r2,r3}
	vadd.f32 s2,s29,s9
	vadd.f32 s29,s2,s28
	vadd.f32 s28,s29,s4
	mvn r2,#79
	add r1,fp,r2
	vstr.32 s28,[r1]
	vadd.f32 s29,s0,s27
	vadd.f32 s28,s29,s12
	vadd.f32 s29,s28,s3
	mov r2,#1
	mvn r1,#79
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vstr.32 s29,[r1]
	vadd.f32 s29,s1,s26
	vadd.f32 s28,s29,s25
	vadd.f32 s29,s28,s10
	mov r2,#2
	mvn r1,#79
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vstr.32 s29,[r1]
	vadd.f32 s29,s8,s24
	vadd.f32 s28,s29,s23
	vldr.32 s30,[fp,#-188]
	vadd.f32 s29,s28,s30
	mov r2,#3
	mvn r1,#79
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vstr.32 s29,[r1]
	vadd.f32 s29,s22,s21
	vadd.f32 s28,s29,s20
	vadd.f32 s29,s28,s19
	mov r2,#4
	mvn r1,#79
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vstr.32 s29,[r1]
	vldr.32 s30,[fp,#-108]
	vadd.f32 s29,s30,s18
	vadd.f32 s28,s29,s17
	vadd.f32 s29,s28,s16
	mov r2,#5
	mvn r1,#79
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vstr.32 s29,[r1]
	vadd.f32 s29,s6,s11
	vadd.f32 s28,s29,s15
	vadd.f32 s29,s28,s13
	mov r2,#6
	mvn r1,#79
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vstr.32 s29,[r1]
	vldr.32 s30,[fp,#-104]
	vadd.f32 s29,s30,s7
	vldr.32 s30,[fp,#-100]
	vadd.f32 s28,s29,s30
	vadd.f32 s29,s28,s5
	mov r2,#7
	mvn r1,#79
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vstr.32 s29,[r1]
	vldr.32 s30,[fp,#-96]
	vldr.32 s31,[fp,#-92]
	vadd.f32 s29,s30,s31
	vadd.f32 s28,s29,s14
	vldr.32 s30,[fp,#-112]
	vadd.f32 s29,s28,s30
	mov r2,#8
	mvn r1,#79
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vstr.32 s29,[r1]
	vldr.32 s30,[fp,#-116]
	vldr.32 s31,[fp,#-88]
	vadd.f32 s29,s30,s31
	vldr.32 s30,[fp,#-84]
	vadd.f32 s28,s29,s30
	vldr.32 s30,[fp,#-120]
	vadd.f32 s29,s28,s30
	mov r2,#9
	mvn r1,#79
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vstr.32 s29,[r1]
	mvn r2,#39
	add r1,fp,r2
	@call void @memset(i32 %r407,i32 0,i32 32)
	push {r0,r1,r2,r3}
	mov r0,r1
	mov r1,#0
	mov r2,#32
	bl memset
	pop {r0,r1,r2,r3}
	add r2,r8,r3
	ldr r9,[fp,#-132]
	add r8,r2,r9
	mvn r3,#39
	add r2,fp,r3
	str r8,[r2]
	add r8,r7,r6
	add r7,r8,r5
	mov r8,#1
	mvn r6,#39
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	ldr r9,[fp,#-128]
	add r8,r9,r4
	ldr r9,[fp,#-196]
	add r7,r8,r9
	mov r8,#2
	mvn r6,#39
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	ldr r9,[fp,#-184]
	ldr r10,[fp,#-192]
	add r8,r9,r10
	ldr r9,[fp,#-136]
	add r7,r8,r9
	mov r8,#3
	mvn r6,#39
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	ldr r9,[fp,#-140]
	ldr r10,[fp,#-144]
	add r8,r9,r10
	ldr r9,[fp,#-148]
	add r7,r8,r9
	mov r8,#4
	mvn r6,#39
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	ldr r9,[fp,#-152]
	ldr r10,[fp,#-156]
	add r8,r9,r10
	ldr r9,[fp,#-160]
	add r7,r8,r9
	mov r8,#5
	mvn r6,#39
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	ldr r9,[fp,#-164]
	ldr r10,[fp,#-168]
	add r8,r9,r10
	ldr r9,[fp,#-172]
	add r7,r8,r9
	mov r8,#6
	mvn r6,#39
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	ldr r9,[fp,#-176]
	ldr r10,[fp,#-180]
	add r8,r9,r10
	ldr r9,[fp,#-124]
	add r7,r8,r9
	mov r8,#7
	mvn r6,#39
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	mvn r8,#79
	add r7,fp,r8
	@call void @putfarray(i32 10,ptr %r264)
	mov r0,#10
	mov r1,r7
	bl putfarray
	mvn r8,#39
	add r7,fp,r8
	@call void @putarray(i32 8,ptr %r266)
	mov r0,#8
	mov r1,r7
	bl putarray
.params_f40_i24L9:
	mov r8,#0
.params_f40_i24L6:
	mov r7,r8
	mvn r6,#39
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	ldr r7,[r6]
	mov r5,r8
	mvn r4,#79
	add r3,fp,r4
	add r4,r3,r5,lsl #2
	vldr.32 s29,[r4]
	vmov s28,r7
	vcvt.f32.s32 s28,s28
	vsub.f32 s27,s28,s29
	vcvt.s32.f32 s31,s27
	vmov r7,s31
	str r7,[r6]
	add r7,r8,#1
.params_f40_i24L7:
	cmp r7,#8
	blt .params_f40_i24L10
.params_f40_i24L8:
	bl .LPIC6
.LPIC5:
	.word k
.LPIC6:
	ldr r6,.LPIC5
	ldr r5,[r6]
	mov r6,r5
	mvn r5,#39
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	ldr r6,[r5]
	vmov s29,r6
	vcvt.f32.s32 s29,s29
	vmov.f32 s0,s29
	mov r9,#196
	add sp,sp,r9
	vpop.64 {d8,d9,d10,d11,d12,d13,d14,d15}
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.params_f40_i24L10:
	mov r8,r7
	bl .params_f40_i24L6
params_f40:@r6 r7 r8 d8 d9 d10 d11 d12 d13 d14 d15 
	push {fp,lr}
	push {r6,r7,r8}
	vpush.64 {d8,d9,d10,d11,d12,d13,d14,d15}
	add fp,sp,#4
	sub sp,sp,#96
.params_f40L0:
	vmov s30,s15
	vstr.32 s30,[fp,#-88]
	vldr.32 s15,[fp,#172]
	vldr.32 s30,[fp,#168]
	vstr.32 s30,[fp,#-84]
	vldr.32 s30,[fp,#164]
	vstr.32 s30,[fp,#-76]
	vldr.32 s30,[fp,#160]
	vstr.32 s30,[fp,#-80]
	vldr.32 s30,[fp,#156]
	vstr.32 s30,[fp,#-72]
	vldr.32 s30,[fp,#152]
	vstr.32 s30,[fp,#-68]
	vldr.32 s30,[fp,#148]
	vstr.32 s30,[fp,#-60]
	vldr.32 s30,[fp,#144]
	vstr.32 s30,[fp,#-64]
	vldr.32 s30,[fp,#140]
	vstr.32 s30,[fp,#-56]
	vldr.32 s30,[fp,#136]
	vstr.32 s30,[fp,#-52]
	vldr.32 s30,[fp,#132]
	vstr.32 s30,[fp,#-92]
	vldr.32 s30,[fp,#128]
	vstr.32 s30,[fp,#-96]
	vldr.32 s18,[fp,#124]
	vldr.32 s19,[fp,#120]
	vldr.32 s21,[fp,#116]
	vldr.32 s20,[fp,#112]
	vldr.32 s22,[fp,#108]
	vldr.32 s23,[fp,#104]
	vldr.32 s25,[fp,#100]
	vldr.32 s24,[fp,#96]
	vldr.32 s26,[fp,#92]
	vldr.32 s27,[fp,#88]
	vldr.32 s29,[fp,#84]
	vldr.32 s28,[fp,#80]
.params_f40L1:
	mov r8,#0
	vmov s17,r8
	vcvt.f32.s32 s17,s17
	vcmp.f32 s15,s17
	vmrs APSR_nzcv, FPSCR
	bne .params_f40L2
.params_f40L3:
	vadd.f32 s17,s0,s1
	vadd.f32 s16,s17,s2
	@%s217 = call float @params_f40(float %s2,float %s3,float %s4,float %s5,float %s6,float %s7,float %s8,float %s9,float %s10,float %s11,float %s12,float %s13,float %s14,float %s15,float %s16,float %s17,float %s18,float %s19,float %s20,float %s21,float %s22,float %s23,float %s24,float %s25,float %s26,float %s27,float %s28,float %s29,float %s30,float %s31,float %s32,float %s33,float %s34,float %s35,float %s36,float %s37,float %s38,float %s39,float %s40,float %s216)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	sub sp,sp,#96
	vstr.32 s16,[sp,#92]  @%s216
	vstr.32 s15,[sp,#88]  @%s40
	vldr.32 s30,[fp,#-84]
	vstr.32 s30,[sp,#84]  @%s39
	vldr.32 s30,[fp,#-76]
	vstr.32 s30,[sp,#80]  @%s38
	vldr.32 s30,[fp,#-80]
	vstr.32 s30,[sp,#76]  @%s37
	vldr.32 s30,[fp,#-72]
	vstr.32 s30,[sp,#72]  @%s36
	vldr.32 s30,[fp,#-68]
	vstr.32 s30,[sp,#68]  @%s35
	vldr.32 s30,[fp,#-60]
	vstr.32 s30,[sp,#64]  @%s34
	vldr.32 s30,[fp,#-64]
	vstr.32 s30,[sp,#60]  @%s33
	vldr.32 s30,[fp,#-56]
	vstr.32 s30,[sp,#56]  @%s32
	vldr.32 s30,[fp,#-52]
	vstr.32 s30,[sp,#52]  @%s31
	vldr.32 s30,[fp,#-92]
	vstr.32 s30,[sp,#48]  @%s30
	vldr.32 s30,[fp,#-96]
	vstr.32 s30,[sp,#44]  @%s29
	vstr.32 s18,[sp,#40]  @%s28
	vstr.32 s19,[sp,#36]  @%s27
	vstr.32 s21,[sp,#32]  @%s26
	vstr.32 s20,[sp,#28]  @%s25
	vstr.32 s22,[sp,#24]  @%s24
	vstr.32 s23,[sp,#20]  @%s23
	vstr.32 s25,[sp,#16]  @%s22
	vstr.32 s24,[sp,#12]  @%s21
	vstr.32 s26,[sp,#8]  @%s20
	vstr.32 s27,[sp,#4]  @%s19
	vstr.32 s29,[sp,#0]  @%s18
	vmov.f32 s0,s1
	vmov.f32 s1,s2
	vmov.f32 s2,s3
	vmov.f32 s3,s4
	vmov.f32 s4,s5
	vmov.f32 s5,s6
	vmov.f32 s6,s7
	vmov.f32 s7,s8
	vmov.f32 s8,s9
	vmov.f32 s9,s10
	vmov.f32 s10,s11
	vmov.f32 s11,s12
	vmov.f32 s12,s13
	vmov.f32 s13,s14
	vldr.32 s14,[fp,#-88]
	vmov.f32 s15,s28
	bl params_f40
	add sp,sp,#96
	vmov.f32 s31,s0
	vpop.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s17,s31
	vmov.f32 s0,s17
	add sp,sp,#96
	vpop.64 {d8,d9,d10,d11,d12,d13,d14,d15}
	pop {r6,r7,r8}
	pop {fp,pc}
.params_f40L2:
	mvn r8,#47
	add r7,fp,r8
	@call void @memset(i32 %r218,i32 0,i32 40)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	mov r0,r7
	mov r1,#0
	mov r2,#40
	bl memset
	vpop.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	add sp,sp,#4 @stack align 8bytes
	vadd.f32 s17,s0,s1
	vadd.f32 s16,s17,s2
	vadd.f32 s17,s16,s3
	mvn r8,#47
	add r7,fp,r8
	vstr.32 s17,[r7]
	vadd.f32 s17,s4,s5
	vadd.f32 s16,s17,s6
	vadd.f32 s17,s16,s7
	mov r8,#1
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s17,[r7]
	vadd.f32 s17,s8,s9
	vadd.f32 s16,s17,s10
	vadd.f32 s17,s16,s11
	mov r8,#2
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s17,[r7]
	vadd.f32 s17,s12,s13
	vadd.f32 s16,s17,s14
	vldr.32 s30,[fp,#-88]
	vadd.f32 s17,s16,s30
	mov r8,#3
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s17,[r7]
	vadd.f32 s17,s28,s29
	vadd.f32 s29,s17,s27
	vadd.f32 s28,s29,s26
	mov r8,#4
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s28,[r7]
	vadd.f32 s29,s24,s25
	vadd.f32 s28,s29,s23
	vadd.f32 s29,s28,s22
	mov r8,#5
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s29,[r7]
	vadd.f32 s29,s20,s21
	vadd.f32 s28,s29,s19
	vadd.f32 s29,s28,s18
	mov r8,#6
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s29,[r7]
	vldr.32 s30,[fp,#-96]
	vldr.32 s31,[fp,#-92]
	vadd.f32 s29,s30,s31
	vldr.32 s30,[fp,#-52]
	vadd.f32 s28,s29,s30
	vldr.32 s30,[fp,#-56]
	vadd.f32 s29,s28,s30
	mov r8,#7
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s29,[r7]
	vldr.32 s30,[fp,#-64]
	vldr.32 s31,[fp,#-60]
	vadd.f32 s29,s30,s31
	vldr.32 s30,[fp,#-68]
	vadd.f32 s28,s29,s30
	vldr.32 s30,[fp,#-72]
	vadd.f32 s29,s28,s30
	mov r8,#8
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s29,[r7]
	vldr.32 s30,[fp,#-80]
	vldr.32 s31,[fp,#-76]
	vadd.f32 s29,s30,s31
	vldr.32 s30,[fp,#-84]
	vadd.f32 s28,s29,s30
	vadd.f32 s29,s28,s15
	mov r8,#9
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s29,[r7]
	mvn r8,#47
	add r7,fp,r8
	@call void @putfarray(i32 10,ptr %r168)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	mov r1,r7
	bl putfarray
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC5
	ldr r7,[r8]
	mov r8,r7
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s29,[r7]
	vmov.f32 s0,s29
	add sp,sp,#96
	vpop.64 {d8,d9,d10,d11,d12,d13,d14,d15}
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
