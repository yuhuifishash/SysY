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
	mov r9,#940
	sub sp,sp,r9
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-28]
	@%r4 = call i32 @getint()
	bl getint
	mov r8,r0
	ldr r7,.LPIC0
	str r8,[r7]
	mov r8,#0
	str r8,[fp,#-28]
.mainL2:
	ldr r8,[fp,#-28]
	mov r7,#40
	cmp r8,r7
	blt .mainL3
.mainL4:
	mov r8,#0
	str r8,[fp,#-28]
.mainL5:
	ldr r8,[fp,#-28]
	mov r7,#24
	cmp r8,r7
	blt .mainL6
.mainL7:
	mov r8,#0
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s30,[r7]
	vstr.32 s30,[fp,#-800]
	mov r8,#1
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s30,[r7]
	vstr.32 s30,[fp,#-804]
	mov r8,#2
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s30,[r7]
	vstr.32 s30,[fp,#-808]
	mov r8,#3
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s30,[r7]
	vstr.32 s30,[fp,#-812]
	mov r8,#4
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s30,[r7]
	vstr.32 s30,[fp,#-816]
	mov r8,#5
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s30,[r7]
	vstr.32 s30,[fp,#-820]
	mov r8,#6
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s30,[r7]
	vstr.32 s30,[fp,#-824]
	mov r8,#7
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s30,[r7]
	vstr.32 s30,[fp,#-828]
	mov r8,#8
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s30,[r7]
	vstr.32 s30,[fp,#-832]
	mov r8,#9
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s30,[r7]
	vstr.32 s30,[fp,#-836]
	mov r8,#10
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s30,[r7]
	vstr.32 s30,[fp,#-840]
	mov r8,#11
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s18,[r7]
	mov r8,#12
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s17,[r7]
	mov r8,#13
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s16,[r7]
	mov r8,#14
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s15,[r7]
	mov r8,#15
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s14,[r7]
	mov r8,#16
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s13,[r7]
	mov r8,#17
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s12,[r7]
	mov r8,#18
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s11,[r7]
	mov r8,#19
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s10,[r7]
	mov r8,#20
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s9,[r7]
	mov r8,#21
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s8,[r7]
	mov r8,#22
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s7,[r7]
	mov r8,#23
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s6,[r7]
	mov r8,#24
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s5,[r7]
	mov r8,#25
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s4,[r7]
	mov r8,#26
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s3,[r7]
	mov r8,#27
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s2,[r7]
	mov r8,#28
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s1,[r7]
	mov r8,#29
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s0,[r7]
	mov r8,#30
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s29,[r7]
	mov r8,#31
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s28,[r7]
	mov r8,#32
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s27,[r7]
	mov r8,#33
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s26,[r7]
	mov r8,#34
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s25,[r7]
	mov r8,#35
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s24,[r7]
	mov r8,#36
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s23,[r7]
	mov r8,#37
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s22,[r7]
	mov r8,#38
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s21,[r7]
	mov r8,#39
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s20,[r7]
	@%s191 = call float @params_f40(float %s34,float %s38,float %s42,float %s46,float %s50,float %s54,float %s58,float %s62,float %s66,float %s70,float %s74,float %s78,float %s82,float %s86,float %s90,float %s94,float %s98,float %s102,float %s106,float %s110,float %s114,float %s118,float %s122,float %s126,float %s130,float %s134,float %s138,float %s142,float %s146,float %s150,float %s154,float %s158,float %s162,float %s166,float %s170,float %s174,float %s178,float %s182,float %s186,float %s190)
	vpush.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	sub sp,sp,#96
	vstr.32 s20,[sp,#92]  @%s190
	vstr.32 s21,[sp,#88]  @%s186
	vstr.32 s22,[sp,#84]  @%s182
	vstr.32 s23,[sp,#80]  @%s178
	vstr.32 s24,[sp,#76]  @%s174
	vstr.32 s25,[sp,#72]  @%s170
	vstr.32 s26,[sp,#68]  @%s166
	vstr.32 s27,[sp,#64]  @%s162
	vstr.32 s28,[sp,#60]  @%s158
	vstr.32 s29,[sp,#56]  @%s154
	vstr.32 s0,[sp,#52]  @%s150
	vstr.32 s1,[sp,#48]  @%s146
	vstr.32 s2,[sp,#44]  @%s142
	vstr.32 s3,[sp,#40]  @%s138
	vstr.32 s4,[sp,#36]  @%s134
	vstr.32 s5,[sp,#32]  @%s130
	vstr.32 s6,[sp,#28]  @%s126
	vstr.32 s7,[sp,#24]  @%s122
	vstr.32 s8,[sp,#20]  @%s118
	vstr.32 s9,[sp,#16]  @%s114
	vstr.32 s10,[sp,#12]  @%s110
	vstr.32 s11,[sp,#8]  @%s106
	vstr.32 s12,[sp,#4]  @%s102
	vstr.32 s13,[sp,#0]  @%s98
	vldr.32 s0,[fp,#-800]
	vldr.32 s1,[fp,#-804]
	vldr.32 s2,[fp,#-808]
	vldr.32 s3,[fp,#-812]
	vldr.32 s4,[fp,#-816]
	vldr.32 s5,[fp,#-820]
	vldr.32 s6,[fp,#-824]
	vldr.32 s7,[fp,#-828]
	vldr.32 s8,[fp,#-832]
	vldr.32 s9,[fp,#-836]
	vldr.32 s10,[fp,#-840]
	vmov.f32 s11,s18
	vmov.f32 s12,s17
	vmov.f32 s13,s16
	vmov.f32 s31,s15
	vmov.f32 s15,s14
	vmov.f32 s14,s31
	bl params_f40
	add sp,sp,#96
	vmov.f32 s31,s0
	vpop.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	vmov.f32 s19,s31
	vstr.32 s19,[fp,#-24]
	mov r8,#23
	ldr r7,.LPIC0
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#65220
	movt r7,#65535  @ -316
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r9,[r7]
	str r9,[fp,#-800]
	mov r7,#2
	bl .LPIC2
.LPIC1:
	.word k
.LPIC2:
	ldr r6,.LPIC1
	ldr r5,[r6]
	add r6,r7,r7,lsl #1
	mov r7,r6
	add r7,r7,r5
	movw r6,#65220
	movt r6,#65535  @ -316
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	ldr r9,[r6]
	str r9,[fp,#-808]
	mov r6,#6
	ldr r5,.LPIC1
	ldr r4,[r5]
	add r5,r6,r6,lsl #1
	mov r6,r5
	add r6,r6,r4
	movw r5,#65220
	movt r5,#65535  @ -316
	add r4,fp,r5
	add r5,r4,r6,lsl #2
	ldr r9,[r5]
	str r9,[fp,#-824]
	mov r5,#4
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r5,r5,lsl #1
	mov r5,r4
	add r5,r5,r3
	movw r4,#64740
	movt r4,#65535  @ -796
	add r3,fp,r4
	add r4,r3,r5,lsl #2
	vldr.32 s30,[r4]
	vstr.32 s30,[fp,#-852]
	mov r5,#1
	ldr r4,.LPIC1
	ldr r3,[r4]
	add r4,r5,r5,lsl #1
	mov r5,r4
	add r5,r5,r3
	movw r4,#65220
	movt r4,#65535  @ -316
	add r3,fp,r4
	add r4,r3,r5,lsl #2
	ldr r9,[r4]
	str r9,[fp,#-840]
	mov r4,#4
	ldr r3,.LPIC1
	ldr r2,[r3]
	add r3,r4,r4,lsl #1
	mov r4,r3
	add r4,r4,r2
	movw r3,#65220
	movt r3,#65535  @ -316
	add r2,fp,r3
	add r3,r2,r4,lsl #2
	ldr r9,[r3]
	str r9,[fp,#-820]
	mov r3,#5
	ldr r2,.LPIC1
	ldr r1,[r2]
	add r2,r3,r3,lsl #1
	mov r3,r2
	add r3,r3,r1
	movw r2,#65220
	movt r2,#65535  @ -316
	add r1,fp,r2
	add r2,r1,r3,lsl #2
	ldr r9,[r2]
	str r9,[fp,#-804]
	mov r2,#8
	ldr r1,.LPIC1
	ldr r0,[r1]
	add r1,r2,r2,lsl #1
	mov r2,r1
	add r2,r2,r0
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vldr.32 s30,[r1]
	vstr.32 s30,[fp,#-856]
	mov r2,#15
	ldr r1,.LPIC1
	ldr r0,[r1]
	add r1,r2,r2,lsl #1
	mov r2,r1
	add r2,r2,r0
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vldr.32 s30,[r1]
	vstr.32 s30,[fp,#-872]
	mov r2,#7
	ldr r1,.LPIC1
	ldr r0,[r1]
	add r1,r2,r2,lsl #1
	mov r2,r1
	add r2,r2,r0
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	vldr.32 s30,[r1]
	vstr.32 s30,[fp,#-876]
	mov r2,#22
	ldr r1,.LPIC1
	ldr r0,[r1]
	add r1,r2,r2,lsl #1
	mov r2,r1
	add r2,r2,r0
	movw r1,#65220
	movt r1,#65535  @ -316
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	ldr r9,[r1]
	str r9,[fp,#-816]
	mov r1,#3
	ldr r0,.LPIC1
	ldr r8,[r0]
	add r0,r1,r1,lsl #1
	mov r1,r0
	add r1,r1,r8
	movw r8,#64740
	movt r8,#65535  @ -796
	add r0,fp,r8
	add r8,r0,r1,lsl #2
	vldr.32 s30,[r8]
	vstr.32 s30,[fp,#-880]
	mov r8,#28
	ldr r1,.LPIC1
	ldr r0,[r1]
	add r1,r8,r8,lsl #1
	mov r8,r1
	add r8,r8,r0
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r1,r0,r8,lsl #2
	vldr.32 s30,[r1]
	vstr.32 s30,[fp,#-884]
	mov r8,#0
	ldr r1,.LPIC1
	ldr r0,[r1]
	add r1,r8,r8,lsl #1
	mov r8,r1
	add r8,r8,r0
	movw r1,#65220
	movt r1,#65535  @ -316
	add r0,fp,r1
	add r1,r0,r8,lsl #2
	ldr r9,[r1]
	str r9,[fp,#-836]
	mov r1,#37
	ldr r0,.LPIC1
	ldr r7,[r0]
	add r0,r1,r1,lsl #1
	mov r1,r0
	add r1,r1,r7
	movw r7,#64740
	movt r7,#65535  @ -796
	add r0,fp,r7
	add r7,r0,r1,lsl #2
	vldr.32 s30,[r7]
	vstr.32 s30,[fp,#-888]
	mov r7,#19
	ldr r1,.LPIC1
	ldr r0,[r1]
	add r1,r7,r7,lsl #1
	mov r7,r1
	add r7,r7,r0
	movw r1,#65220
	movt r1,#65535  @ -316
	add r0,fp,r1
	add r1,r0,r7,lsl #2
	ldr r9,[r1]
	str r9,[fp,#-812]
	mov r1,#30
	ldr r0,.LPIC1
	ldr r6,[r0]
	add r0,r1,r1,lsl #1
	mov r1,r0
	add r1,r1,r6
	movw r6,#64740
	movt r6,#65535  @ -796
	add r0,fp,r6
	add r6,r0,r1,lsl #2
	vldr.32 s30,[r6]
	vstr.32 s30,[fp,#-892]
	mov r6,#12
	ldr r1,.LPIC1
	ldr r0,[r1]
	add r1,r6,r6,lsl #1
	mov r6,r1
	add r6,r6,r0
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r1,r0,r6,lsl #2
	vldr.32 s30,[r1]
	vstr.32 s30,[fp,#-900]
	mov r6,#1
	ldr r1,.LPIC1
	ldr r0,[r1]
	add r1,r6,r6,lsl #1
	mov r6,r1
	add r6,r6,r0
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r1,r0,r6,lsl #2
	vldr.32 s30,[r1]
	vstr.32 s30,[fp,#-908]
	mov r6,#11
	ldr r1,.LPIC1
	ldr r0,[r1]
	add r1,r6,r6,lsl #1
	mov r6,r1
	add r6,r6,r0
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r1,r0,r6,lsl #2
	vldr.32 s30,[r1]
	vstr.32 s30,[fp,#-912]
	mov r6,#38
	ldr r1,.LPIC1
	ldr r0,[r1]
	add r1,r6,r6,lsl #1
	mov r6,r1
	add r6,r6,r0
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r1,r0,r6,lsl #2
	vldr.32 s18,[r1]
	mov r6,#6
	ldr r1,.LPIC1
	ldr r0,[r1]
	add r1,r6,r6,lsl #1
	mov r6,r1
	add r6,r6,r0
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r1,r0,r6,lsl #2
	vldr.32 s17,[r1]
	mov r6,#7
	ldr r1,.LPIC1
	ldr r0,[r1]
	add r1,r6,r6,lsl #1
	mov r6,r1
	add r6,r6,r0
	movw r1,#65220
	movt r1,#65535  @ -316
	add r0,fp,r1
	add r1,r0,r6,lsl #2
	ldr r9,[r1]
	str r9,[fp,#-832]
	mov r1,#32
	ldr r0,.LPIC1
	ldr r5,[r0]
	add r0,r1,r1,lsl #1
	mov r1,r0
	add r1,r1,r5
	movw r5,#64740
	movt r5,#65535  @ -796
	add r0,fp,r5
	add r5,r0,r1,lsl #2
	vldr.32 s16,[r5]
	mov r5,#10
	ldr r1,.LPIC1
	ldr r0,[r1]
	add r1,r5,r5,lsl #1
	mov r5,r1
	add r5,r5,r0
	movw r1,#65220
	movt r1,#65535  @ -316
	add r0,fp,r1
	add r1,r0,r5,lsl #2
	ldr r9,[r1]
	str r9,[fp,#-828]
	mov r1,#13
	ldr r0,.LPIC1
	ldr r4,[r0]
	add r0,r1,r1,lsl #1
	mov r1,r0
	add r1,r1,r4
	movw r4,#65220
	movt r4,#65535  @ -316
	add r0,fp,r4
	add r4,r0,r1,lsl #2
	ldr r9,[r4]
	str r9,[fp,#-844]
	mov r4,#20
	ldr r0,.LPIC1
	ldr r3,[r0]
	add r0,r4,r4,lsl #1
	mov r4,r0
	add r4,r4,r3
	movw r3,#64740
	movt r3,#65535  @ -796
	add r0,fp,r3
	add r3,r0,r4,lsl #2
	vldr.32 s15,[r3]
	mov r4,#33
	ldr r3,.LPIC1
	ldr r0,[r3]
	add r3,r4,r4,lsl #1
	mov r4,r3
	add r4,r4,r0
	movw r3,#64740
	movt r3,#65535  @ -796
	add r0,fp,r3
	add r3,r0,r4,lsl #2
	vldr.32 s14,[r3]
	mov r4,#23
	ldr r3,.LPIC1
	ldr r0,[r3]
	add r3,r4,r4,lsl #1
	mov r4,r3
	add r4,r4,r0
	movw r3,#64740
	movt r3,#65535  @ -796
	add r0,fp,r3
	add r3,r0,r4,lsl #2
	vldr.32 s13,[r3]
	mov r4,#9
	ldr r3,.LPIC1
	ldr r0,[r3]
	add r3,r4,r4,lsl #1
	mov r4,r3
	add r4,r4,r0
	movw r3,#64740
	movt r3,#65535  @ -796
	add r0,fp,r3
	add r3,r0,r4,lsl #2
	vldr.32 s12,[r3]
	mov r4,#25
	ldr r3,.LPIC1
	ldr r0,[r3]
	add r3,r4,r4,lsl #1
	mov r4,r3
	add r4,r4,r0
	movw r3,#64740
	movt r3,#65535  @ -796
	add r0,fp,r3
	add r3,r0,r4,lsl #2
	vldr.32 s11,[r3]
	mov r4,#8
	ldr r3,.LPIC1
	ldr r0,[r3]
	add r3,r4,r4,lsl #1
	mov r4,r3
	add r4,r4,r0
	movw r3,#65220
	movt r3,#65535  @ -316
	add r0,fp,r3
	add r3,r0,r4,lsl #2
	ldr r9,[r3]
	str r9,[fp,#-848]
	mov r3,#39
	ldr r0,.LPIC1
	ldr r2,[r0]
	add r0,r3,r3,lsl #1
	mov r3,r0
	add r3,r3,r2
	movw r2,#64740
	movt r2,#65535  @ -796
	add r0,fp,r2
	add r2,r0,r3,lsl #2
	vldr.32 s10,[r2]
	mov r3,#17
	ldr r2,.LPIC1
	ldr r0,[r2]
	add r2,r3,r3,lsl #1
	mov r3,r2
	add r3,r3,r0
	movw r2,#65220
	movt r2,#65535  @ -316
	add r0,fp,r2
	add r2,r0,r3,lsl #2
	ldr r9,[r2]
	str r9,[fp,#-860]
	mov r2,#21
	ldr r0,.LPIC1
	ldr r8,[r0]
	add r0,r2,r2,lsl #1
	mov r2,r0
	add r2,r2,r8
	movw r8,#64740
	movt r8,#65535  @ -796
	add r0,fp,r8
	add r8,r0,r2,lsl #2
	vldr.32 s9,[r8]
	mov r8,#16
	ldr r2,.LPIC1
	ldr r0,[r2]
	add r2,r8,r8,lsl #1
	mov r8,r2
	add r8,r8,r0
	movw r2,#64740
	movt r2,#65535  @ -796
	add r0,fp,r2
	add r2,r0,r8,lsl #2
	vldr.32 s8,[r2]
	mov r8,#5
	ldr r2,.LPIC1
	ldr r0,[r2]
	add r2,r8,r8,lsl #1
	mov r8,r2
	add r8,r8,r0
	movw r2,#64740
	movt r2,#65535  @ -796
	add r0,fp,r2
	add r2,r0,r8,lsl #2
	vldr.32 s7,[r2]
	mov r8,#34
	ldr r2,.LPIC1
	ldr r0,[r2]
	add r2,r8,r8,lsl #1
	mov r8,r2
	add r8,r8,r0
	movw r2,#64740
	movt r2,#65535  @ -796
	add r0,fp,r2
	add r2,r0,r8,lsl #2
	vldr.32 s6,[r2]
	mov r8,#18
	ldr r2,.LPIC1
	ldr r0,[r2]
	add r2,r8,r8,lsl #1
	mov r8,r2
	add r8,r8,r0
	movw r2,#65220
	movt r2,#65535  @ -316
	add r0,fp,r2
	add r2,r0,r8,lsl #2
	ldr r9,[r2]
	str r9,[fp,#-864]
	mov r2,#9
	ldr r0,.LPIC1
	ldr r7,[r0]
	add r0,r2,r2,lsl #1
	mov r2,r0
	add r2,r2,r7
	movw r7,#65220
	movt r7,#65535  @ -316
	add r0,fp,r7
	add r7,r0,r2,lsl #2
	ldr r9,[r7]
	str r9,[fp,#-868]
	mov r7,#14
	ldr r0,.LPIC1
	ldr r6,[r0]
	add r0,r7,r7,lsl #1
	mov r7,r0
	add r7,r7,r6
	movw r6,#64740
	movt r6,#65535  @ -796
	add r0,fp,r6
	add r6,r0,r7,lsl #2
	vldr.32 s5,[r6]
	mov r7,#10
	ldr r6,.LPIC1
	ldr r0,[r6]
	add r6,r7,r7,lsl #1
	mov r7,r6
	add r7,r7,r0
	movw r6,#64740
	movt r6,#65535  @ -796
	add r0,fp,r6
	add r6,r0,r7,lsl #2
	vldr.32 s4,[r6]
	mov r7,#0
	ldr r6,.LPIC1
	ldr r0,[r6]
	add r6,r7,r7,lsl #1
	mov r7,r6
	add r7,r7,r0
	movw r6,#64740
	movt r6,#65535  @ -796
	add r0,fp,r6
	add r6,r0,r7,lsl #2
	vldr.32 s3,[r6]
	mov r7,#12
	ldr r6,.LPIC1
	ldr r0,[r6]
	add r6,r7,r7,lsl #1
	mov r7,r6
	add r7,r7,r0
	movw r6,#65220
	movt r6,#65535  @ -316
	add r0,fp,r6
	add r6,r0,r7,lsl #2
	ldr r9,[r6]
	str r9,[fp,#-896]
	mov r6,#31
	ldr r0,.LPIC1
	ldr r5,[r0]
	add r0,r6,r6,lsl #1
	mov r6,r0
	add r6,r6,r5
	movw r5,#64740
	movt r5,#65535  @ -796
	add r0,fp,r5
	add r5,r0,r6,lsl #2
	vldr.32 s2,[r5]
	mov r6,#11
	ldr r5,.LPIC1
	ldr r0,[r5]
	add r5,r6,r6,lsl #1
	mov r6,r5
	add r6,r6,r0
	movw r5,#65220
	movt r5,#65535  @ -316
	add r0,fp,r5
	add r5,r0,r6,lsl #2
	ldr r9,[r5]
	str r9,[fp,#-904]
	mov r5,#16
	bl .LPIC4
.LPIC3:
	.word k
.LPIC4:
	ldr r0,.LPIC3
	ldr r1,[r0]
	add r0,r5,r5,lsl #1
	mov r5,r0
	add r5,r5,r1
	movw r1,#65220
	movt r1,#65535  @ -316
	add r0,fp,r1
	add r1,r0,r5,lsl #2
	ldr r5,[r1]
	mov r1,#27
	ldr r0,.LPIC3
	ldr r4,[r0]
	add r0,r1,r1,lsl #1
	mov r1,r0
	add r1,r1,r4
	movw r4,#64740
	movt r4,#65535  @ -796
	add r0,fp,r4
	add r4,r0,r1,lsl #2
	vldr.32 s1,[r4]
	mov r4,#24
	ldr r1,.LPIC3
	ldr r0,[r1]
	add r1,r4,r4,lsl #1
	mov r4,r1
	add r4,r4,r0
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r1,r0,r4,lsl #2
	vldr.32 s0,[r1]
	mov r4,#13
	ldr r1,.LPIC3
	ldr r0,[r1]
	add r1,r4,r4,lsl #1
	mov r4,r1
	add r4,r4,r0
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r1,r0,r4,lsl #2
	vldr.32 s29,[r1]
	mov r4,#29
	ldr r1,.LPIC3
	ldr r0,[r1]
	add r1,r4,r4,lsl #1
	mov r4,r1
	add r4,r4,r0
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r1,r0,r4,lsl #2
	vldr.32 s28,[r1]
	mov r4,#3
	ldr r1,.LPIC3
	ldr r0,[r1]
	add r1,r4,r4,lsl #1
	mov r4,r1
	add r4,r4,r0
	movw r1,#65220
	movt r1,#65535  @ -316
	add r0,fp,r1
	add r1,r0,r4,lsl #2
	ldr r4,[r1]
	mov r1,#21
	ldr r0,.LPIC3
	ldr r3,[r0]
	add r0,r1,r1,lsl #1
	mov r1,r0
	add r1,r1,r3
	movw r3,#65220
	movt r3,#65535  @ -316
	add r0,fp,r3
	add r3,r0,r1,lsl #2
	ldr r1,[r3]
	mov r3,#20
	ldr r0,.LPIC3
	ldr r8,[r0]
	add r0,r3,r3,lsl #1
	mov r3,r0
	add r3,r3,r8
	movw r8,#65220
	movt r8,#65535  @ -316
	add r0,fp,r8
	add r8,r0,r3,lsl #2
	ldr r3,[r8]
	mov r8,#18
	ldr r0,.LPIC3
	ldr r2,[r0]
	add r0,r8,r8,lsl #1
	mov r8,r0
	add r8,r8,r2
	movw r2,#64740
	movt r2,#65535  @ -796
	add r0,fp,r2
	add r2,r0,r8,lsl #2
	vldr.32 s27,[r2]
	mov r8,#19
	ldr r2,.LPIC3
	ldr r0,[r2]
	add r2,r8,r8,lsl #1
	mov r8,r2
	add r8,r8,r0
	movw r2,#64740
	movt r2,#65535  @ -796
	add r0,fp,r2
	add r2,r0,r8,lsl #2
	vldr.32 s26,[r2]
	mov r8,#22
	ldr r2,.LPIC3
	ldr r0,[r2]
	add r2,r8,r8,lsl #1
	mov r8,r2
	add r8,r8,r0
	movw r2,#64740
	movt r2,#65535  @ -796
	add r0,fp,r2
	add r2,r0,r8,lsl #2
	vldr.32 s25,[r2]
	mov r8,#26
	ldr r2,.LPIC3
	ldr r0,[r2]
	add r2,r8,r8,lsl #1
	mov r8,r2
	add r8,r8,r0
	movw r2,#64740
	movt r2,#65535  @ -796
	add r0,fp,r2
	add r2,r0,r8,lsl #2
	vldr.32 s24,[r2]
	mov r8,#36
	ldr r2,.LPIC3
	ldr r0,[r2]
	add r2,r8,r8,lsl #1
	mov r8,r2
	add r8,r8,r0
	movw r2,#64740
	movt r2,#65535  @ -796
	add r0,fp,r2
	add r2,r0,r8,lsl #2
	vldr.32 s23,[r2]
	mov r8,#17
	ldr r2,.LPIC3
	ldr r0,[r2]
	add r2,r8,r8,lsl #1
	mov r8,r2
	add r8,r8,r0
	movw r2,#64740
	movt r2,#65535  @ -796
	add r0,fp,r2
	add r2,r0,r8,lsl #2
	vldr.32 s22,[r2]
	mov r8,#15
	ldr r2,.LPIC3
	ldr r0,[r2]
	add r2,r8,r8,lsl #1
	mov r8,r2
	add r8,r8,r0
	movw r2,#65220
	movt r2,#65535  @ -316
	add r0,fp,r2
	add r2,r0,r8,lsl #2
	ldr r8,[r2]
	mov r2,#2
	ldr r0,.LPIC3
	ldr r7,[r0]
	add r0,r2,r2,lsl #1
	mov r2,r0
	add r2,r2,r7
	movw r7,#64740
	movt r7,#65535  @ -796
	add r0,fp,r7
	add r7,r0,r2,lsl #2
	vldr.32 s21,[r7]
	mov r7,#14
	ldr r2,.LPIC3
	ldr r0,[r2]
	add r2,r7,r7,lsl #1
	mov r7,r2
	add r7,r7,r0
	movw r2,#65220
	movt r2,#65535  @ -316
	add r0,fp,r2
	add r2,r0,r7,lsl #2
	ldr r7,[r2]
	mov r2,#35
	ldr r0,.LPIC3
	ldr r6,[r0]
	add r0,r2,r2,lsl #1
	mov r2,r0
	add r2,r2,r6
	movw r6,#64740
	movt r6,#65535  @ -796
	add r0,fp,r6
	add r6,r0,r2,lsl #2
	vldr.32 s20,[r6]
	@%s449 = call float @params_f40_i24(i32 %r195,i32 %r199,i32 %r203,float %s208,i32 %r211,i32 %r215,i32 %r219,float %s224,float %s228,float %s232,i32 %r235,float %s240,float %s244,i32 %r247,float %s252,i32 %r255,float %s260,float %s264,float %s268,float %s272,float %s276,float %s280,i32 %r283,float %s288,i32 %r291,i32 %r295,float %s300,float %s304,float %s308,float %s312,float %s316,i32 %r319,float %s324,i32 %r327,float %s332,float %s336,float %s340,float %s344,i32 %r347,i32 %r351,float %s356,float %s360,float %s364,i32 %r367,float %s372,i32 %r375,i32 %r379,float %s384,float %s388,float %s392,float %s396,i32 %r399,i32 %r403,i32 %r407,float %s412,float %s416,float %s420,float %s424,float %s428,float %s432,i32 %r435,float %s440,i32 %r443,float %s448)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r2,r3}
	vpush.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	sub sp,sp,#176
	vstr.32 s20,[sp,#172]  @%s448
	str r7,[sp,#168]  @%r443
	vstr.32 s21,[sp,#164]  @%s440
	str r8,[sp,#160]  @%r435
	vstr.32 s22,[sp,#156]  @%s432
	vstr.32 s23,[sp,#152]  @%s428
	vstr.32 s24,[sp,#148]  @%s424
	vstr.32 s25,[sp,#144]  @%s420
	vstr.32 s26,[sp,#140]  @%s416
	vstr.32 s27,[sp,#136]  @%s412
	str r3,[sp,#132]  @%r407
	str r1,[sp,#128]  @%r403
	str r4,[sp,#124]  @%r399
	vstr.32 s28,[sp,#120]  @%s396
	vstr.32 s29,[sp,#116]  @%s392
	vstr.32 s0,[sp,#112]  @%s388
	vstr.32 s1,[sp,#108]  @%s384
	str r5,[sp,#104]  @%r379
	ldr r9,[fp,#-904]
	str r9,[sp,#100]  @%r375
	vstr.32 s2,[sp,#96]  @%s372
	ldr r9,[fp,#-896]
	str r9,[sp,#92]  @%r367
	vstr.32 s3,[sp,#88]  @%s364
	vstr.32 s4,[sp,#84]  @%s360
	vstr.32 s5,[sp,#80]  @%s356
	ldr r9,[fp,#-868]
	str r9,[sp,#76]  @%r351
	ldr r9,[fp,#-864]
	str r9,[sp,#72]  @%r347
	vstr.32 s6,[sp,#68]  @%s344
	vstr.32 s7,[sp,#64]  @%s340
	vstr.32 s8,[sp,#60]  @%s336
	vstr.32 s9,[sp,#56]  @%s332
	ldr r9,[fp,#-860]
	str r9,[sp,#52]  @%r327
	vstr.32 s10,[sp,#48]  @%s324
	ldr r9,[fp,#-848]
	str r9,[sp,#44]  @%r319
	vstr.32 s11,[sp,#40]  @%s316
	vstr.32 s12,[sp,#36]  @%s312
	vstr.32 s13,[sp,#32]  @%s308
	ldr r9,[fp,#-844]
	str r9,[sp,#28]  @%r295
	ldr r9,[fp,#-828]
	str r9,[sp,#24]  @%r291
	ldr r9,[fp,#-832]
	str r9,[sp,#20]  @%r283
	ldr r9,[fp,#-812]
	str r9,[sp,#16]  @%r255
	ldr r9,[fp,#-836]
	str r9,[sp,#12]  @%r247
	ldr r9,[fp,#-816]
	str r9,[sp,#8]  @%r235
	ldr r9,[fp,#-804]
	str r9,[sp,#4]  @%r219
	ldr r9,[fp,#-820]
	str r9,[sp,#0]  @%r215
	ldr r0,[fp,#-800]
	ldr r1,[fp,#-808]
	ldr r2,[fp,#-824]
	ldr r3,[fp,#-840]
	vldr.32 s0,[fp,#-852]
	vldr.32 s1,[fp,#-856]
	vldr.32 s2,[fp,#-872]
	vldr.32 s3,[fp,#-876]
	vldr.32 s4,[fp,#-880]
	vldr.32 s5,[fp,#-884]
	vldr.32 s6,[fp,#-888]
	vldr.32 s7,[fp,#-892]
	vldr.32 s8,[fp,#-900]
	vldr.32 s9,[fp,#-908]
	vldr.32 s10,[fp,#-912]
	vmov.f32 s11,s18
	vmov.f32 s12,s17
	vmov.f32 s13,s16
	vmov.f32 s31,s15
	vmov.f32 s15,s14
	vmov.f32 s14,s31
	bl params_f40_i24
	add sp,sp,#176
	vmov.f32 s31,s0
	vpop.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	pop {r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s19,s31
	vstr.32 s19,[fp,#-20]
	mov r8,#0
	add r7,r8,r8,lsl #1
	mov r8,r7
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	str r9,[fp,#-800]
	mov r8,#1
	add r6,r8,r8,lsl #1
	mov r8,r6
	movw r6,#64740
	movt r6,#65535  @ -796
	add r5,fp,r6
	add r9,r5,r8,lsl #2
	str r9,[fp,#-824]
	mov r8,#2
	add r5,r8,r8,lsl #1
	mov r8,r5
	movw r5,#64740
	movt r5,#65535  @ -796
	add r4,fp,r5
	add r9,r4,r8,lsl #2
	str r9,[fp,#-832]
	mov r8,#3
	add r4,r8,r8,lsl #1
	mov r8,r4
	movw r4,#64740
	movt r4,#65535  @ -796
	add r3,fp,r4
	add r9,r3,r8,lsl #2
	str r9,[fp,#-856]
	mov r8,#4
	add r3,r8,r8,lsl #1
	mov r8,r3
	movw r3,#64740
	movt r3,#65535  @ -796
	add r2,fp,r3
	add r9,r2,r8,lsl #2
	str r9,[fp,#-912]
	mov r8,#5
	add r2,r8,r8,lsl #1
	mov r8,r2
	movw r2,#64740
	movt r2,#65535  @ -796
	add r1,fp,r2
	add r9,r1,r8,lsl #2
	str r9,[fp,#-852]
	mov r8,#6
	add r1,r8,r8,lsl #1
	mov r8,r1
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r9,r0,r8,lsl #2
	str r9,[fp,#-908]
	mov r8,#7
	add r0,r8,r8,lsl #1
	mov r8,r0
	movw r0,#64740
	movt r0,#65535  @ -796
	add r7,fp,r0
	add r9,r7,r8,lsl #2
	str r9,[fp,#-808]
	mov r8,#8
	add r7,r8,r8,lsl #1
	mov r8,r7
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	str r9,[fp,#-848]
	mov r8,#9
	add r6,r8,r8,lsl #1
	mov r8,r6
	movw r6,#64740
	movt r6,#65535  @ -796
	add r5,fp,r6
	add r9,r5,r8,lsl #2
	str r9,[fp,#-904]
	mov r8,#10
	add r5,r8,r8,lsl #1
	mov r8,r5
	movw r5,#64740
	movt r5,#65535  @ -796
	add r4,fp,r5
	add r9,r4,r8,lsl #2
	str r9,[fp,#-900]
	mov r8,#11
	add r4,r8,r8,lsl #1
	mov r8,r4
	movw r4,#64740
	movt r4,#65535  @ -796
	add r3,fp,r4
	add r9,r3,r8,lsl #2
	str r9,[fp,#-844]
	mov r8,#12
	add r3,r8,r8,lsl #1
	mov r8,r3
	movw r3,#64740
	movt r3,#65535  @ -796
	add r2,fp,r3
	add r9,r2,r8,lsl #2
	str r9,[fp,#-896]
	mov r8,#13
	add r2,r8,r8,lsl #1
	mov r8,r2
	movw r2,#64740
	movt r2,#65535  @ -796
	add r1,fp,r2
	add r9,r1,r8,lsl #2
	str r9,[fp,#-892]
	mov r8,#14
	add r1,r8,r8,lsl #1
	mov r8,r1
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r9,r0,r8,lsl #2
	str r9,[fp,#-840]
	mov r8,#15
	add r0,r8,r8,lsl #1
	mov r8,r0
	movw r0,#64740
	movt r0,#65535  @ -796
	add r7,fp,r0
	add r9,r7,r8,lsl #2
	str r9,[fp,#-820]
	mov r8,#16
	add r7,r8,r8,lsl #1
	mov r8,r7
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	str r9,[fp,#-828]
	mov r8,#17
	add r6,r8,r8,lsl #1
	mov r8,r6
	movw r6,#64740
	movt r6,#65535  @ -796
	add r5,fp,r6
	add r9,r5,r8,lsl #2
	str r9,[fp,#-888]
	mov r8,#18
	add r5,r8,r8,lsl #1
	mov r8,r5
	movw r5,#64740
	movt r5,#65535  @ -796
	add r4,fp,r5
	add r9,r4,r8,lsl #2
	str r9,[fp,#-884]
	mov r8,#19
	add r4,r8,r8,lsl #1
	mov r8,r4
	movw r4,#64740
	movt r4,#65535  @ -796
	add r3,fp,r4
	add r9,r3,r8,lsl #2
	str r9,[fp,#-812]
	mov r8,#20
	add r3,r8,r8,lsl #1
	mov r8,r3
	movw r3,#64740
	movt r3,#65535  @ -796
	add r2,fp,r3
	add r9,r2,r8,lsl #2
	str r9,[fp,#-880]
	mov r8,#21
	add r2,r8,r8,lsl #1
	mov r8,r2
	movw r2,#64740
	movt r2,#65535  @ -796
	add r1,fp,r2
	add r9,r1,r8,lsl #2
	str r9,[fp,#-876]
	mov r8,#22
	add r1,r8,r8,lsl #1
	mov r8,r1
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r9,r0,r8,lsl #2
	str r9,[fp,#-804]
	mov r8,#23
	add r0,r8,r8,lsl #1
	mov r8,r0
	movw r0,#64740
	movt r0,#65535  @ -796
	add r7,fp,r0
	add r9,r7,r8,lsl #2
	str r9,[fp,#-836]
	mov r8,#24
	add r7,r8,r8,lsl #1
	mov r8,r7
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	str r9,[fp,#-872]
	mov r8,#25
	add r6,r8,r8,lsl #1
	mov r8,r6
	movw r6,#64740
	movt r6,#65535  @ -796
	add r5,fp,r6
	add r9,r5,r8,lsl #2
	str r9,[fp,#-868]
	mov r8,#26
	add r5,r8,r8,lsl #1
	mov r8,r5
	movw r5,#64740
	movt r5,#65535  @ -796
	add r4,fp,r5
	add r9,r4,r8,lsl #2
	str r9,[fp,#-816]
	mov r8,#27
	add r4,r8,r8,lsl #1
	mov r8,r4
	movw r4,#64740
	movt r4,#65535  @ -796
	add r3,fp,r4
	add r9,r3,r8,lsl #2
	str r9,[fp,#-864]
	mov r8,#28
	add r3,r8,r8,lsl #1
	mov r8,r3
	movw r3,#64740
	movt r3,#65535  @ -796
	add r2,fp,r3
	add r9,r2,r8,lsl #2
	str r9,[fp,#-860]
	mov r8,#29
	add r2,r8,r8,lsl #1
	mov r8,r2
	movw r2,#64740
	movt r2,#65535  @ -796
	add r1,fp,r2
	add r9,r1,r8,lsl #2
	str r9,[fp,#-916]
	mov r8,#30
	add r1,r8,r8,lsl #1
	mov r8,r1
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r9,r0,r8,lsl #2
	str r9,[fp,#-920]
	mov r8,#31
	add r0,r8,r8,lsl #1
	mov r8,r0
	movw r0,#64740
	movt r0,#65535  @ -796
	add r7,fp,r0
	add r9,r7,r8,lsl #2
	str r9,[fp,#-924]
	mov r8,#32
	add r7,r8,r8,lsl #1
	mov r8,r7
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	str r9,[fp,#-928]
	mov r8,#33
	add r6,r8,r8,lsl #1
	mov r8,r6
	movw r6,#64740
	movt r6,#65535  @ -796
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#34
	add r5,r8,r8,lsl #1
	mov r8,r5
	movw r5,#64740
	movt r5,#65535  @ -796
	add r4,fp,r5
	add r5,r4,r8,lsl #2
	mov r8,#35
	add r4,r8,r8,lsl #1
	mov r8,r4
	movw r4,#64740
	movt r4,#65535  @ -796
	add r3,fp,r4
	add r4,r3,r8,lsl #2
	mov r8,#36
	add r3,r8,r8,lsl #1
	mov r8,r3
	movw r3,#64740
	movt r3,#65535  @ -796
	add r2,fp,r3
	add r3,r2,r8,lsl #2
	mov r8,#37
	add r2,r8,r8,lsl #1
	mov r8,r2
	movw r2,#64740
	movt r2,#65535  @ -796
	add r1,fp,r2
	add r2,r1,r8,lsl #2
	mov r8,#38
	add r1,r8,r8,lsl #1
	mov r8,r1
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r1,r0,r8,lsl #2
	mov r8,#39
	add r0,r8,r8,lsl #1
	mov r8,r0
	movw r0,#64740
	movt r0,#65535  @ -796
	add r7,fp,r0
	add r0,r7,r8,lsl #2
	@%s531 = call float @params_fa40(ptr %r451,ptr %r453,ptr %r455,ptr %r457,ptr %r459,ptr %r461,ptr %r463,ptr %r465,ptr %r467,ptr %r469,ptr %r471,ptr %r473,ptr %r475,ptr %r477,ptr %r479,ptr %r481,ptr %r483,ptr %r485,ptr %r487,ptr %r489,ptr %r491,ptr %r493,ptr %r495,ptr %r497,ptr %r499,ptr %r501,ptr %r503,ptr %r505,ptr %r507,ptr %r509,ptr %r511,ptr %r513,ptr %r515,ptr %r517,ptr %r519,ptr %r521,ptr %r523,ptr %r525,ptr %r527,ptr %r529)
	push {r0,r1,r2,r3}
	sub sp,sp,#144
	str r0,[sp,#140]  @%r529
	str r1,[sp,#136]  @%r527
	str r2,[sp,#132]  @%r525
	str r3,[sp,#128]  @%r523
	str r4,[sp,#124]  @%r521
	str r5,[sp,#120]  @%r519
	str r6,[sp,#116]  @%r517
	ldr r9,[fp,#-928]
	str r9,[sp,#112]  @%r515
	ldr r9,[fp,#-924]
	str r9,[sp,#108]  @%r513
	ldr r9,[fp,#-920]
	str r9,[sp,#104]  @%r511
	ldr r9,[fp,#-916]
	str r9,[sp,#100]  @%r509
	ldr r9,[fp,#-860]
	str r9,[sp,#96]  @%r507
	ldr r9,[fp,#-864]
	str r9,[sp,#92]  @%r505
	ldr r9,[fp,#-816]
	str r9,[sp,#88]  @%r503
	ldr r9,[fp,#-868]
	str r9,[sp,#84]  @%r501
	ldr r9,[fp,#-872]
	str r9,[sp,#80]  @%r499
	ldr r9,[fp,#-836]
	str r9,[sp,#76]  @%r497
	ldr r9,[fp,#-804]
	str r9,[sp,#72]  @%r495
	ldr r9,[fp,#-876]
	str r9,[sp,#68]  @%r493
	ldr r9,[fp,#-880]
	str r9,[sp,#64]  @%r491
	ldr r9,[fp,#-812]
	str r9,[sp,#60]  @%r489
	ldr r9,[fp,#-884]
	str r9,[sp,#56]  @%r487
	ldr r9,[fp,#-888]
	str r9,[sp,#52]  @%r485
	ldr r9,[fp,#-828]
	str r9,[sp,#48]  @%r483
	ldr r9,[fp,#-820]
	str r9,[sp,#44]  @%r481
	ldr r9,[fp,#-840]
	str r9,[sp,#40]  @%r479
	ldr r9,[fp,#-892]
	str r9,[sp,#36]  @%r477
	ldr r9,[fp,#-896]
	str r9,[sp,#32]  @%r475
	ldr r9,[fp,#-844]
	str r9,[sp,#28]  @%r473
	ldr r9,[fp,#-900]
	str r9,[sp,#24]  @%r471
	ldr r9,[fp,#-904]
	str r9,[sp,#20]  @%r469
	ldr r9,[fp,#-848]
	str r9,[sp,#16]  @%r467
	ldr r9,[fp,#-808]
	str r9,[sp,#12]  @%r465
	ldr r9,[fp,#-908]
	str r9,[sp,#8]  @%r463
	ldr r9,[fp,#-852]
	str r9,[sp,#4]  @%r461
	ldr r9,[fp,#-912]
	str r9,[sp,#0]  @%r459
	ldr r0,[fp,#-800]
	ldr r1,[fp,#-824]
	ldr r2,[fp,#-832]
	ldr r3,[fp,#-856]
	bl params_fa40
	add sp,sp,#144
	vmov.f32 s31,s0
	pop {r0,r1,r2,r3}
	vmov.f32 s29,s31
	vstr.32 s29,[fp,#-16]
	mov r8,#0
	bl .LPIC6
.LPIC5:
	.word k
.LPIC6:
	ldr r7,.LPIC5
	ldr r6,[r7]
	add r7,r8,r8,lsl #1
	mov r8,r7
	add r8,r8,r6
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s29,[r7]
	mov r8,#0
	add r7,r8,r8,lsl #1
	mov r8,r7
	movw r7,#65220
	movt r7,#65535  @ -316
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	str r9,[fp,#-800]
	mov r8,#1
	ldr r6,.LPIC5
	ldr r5,[r6]
	add r6,r8,r8,lsl #1
	mov r8,r6
	add r8,r8,r5
	movw r6,#65220
	movt r6,#65535  @ -316
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	ldr r9,[r6]
	str r9,[fp,#-856]
	mov r6,#1
	add r5,r6,r6,lsl #1
	mov r6,r5
	movw r5,#64740
	movt r5,#65535  @ -796
	add r4,fp,r5
	add r9,r4,r6,lsl #2
	str r9,[fp,#-844]
	mov r6,#2
	ldr r4,.LPIC5
	ldr r3,[r4]
	add r4,r6,r6,lsl #1
	mov r6,r4
	add r6,r6,r3
	movw r4,#64740
	movt r4,#65535  @ -796
	add r3,fp,r4
	add r4,r3,r6,lsl #2
	vldr.32 s28,[r4]
	mov r6,#2
	ldr r4,.LPIC5
	ldr r3,[r4]
	add r4,r6,r6,lsl #1
	mov r6,r4
	add r6,r6,r3
	movw r4,#65220
	movt r4,#65535  @ -316
	add r3,fp,r4
	add r4,r3,r6,lsl #2
	ldr r9,[r4]
	str r9,[fp,#-864]
	mov r4,#3
	ldr r3,.LPIC5
	ldr r2,[r3]
	add r3,r4,r4,lsl #1
	mov r4,r3
	add r4,r4,r2
	movw r3,#64740
	movt r3,#65535  @ -796
	add r2,fp,r3
	add r3,r2,r4,lsl #2
	vldr.32 s27,[r3]
	mov r4,#4
	ldr r3,.LPIC5
	ldr r2,[r3]
	add r3,r4,r4,lsl #1
	mov r4,r3
	add r4,r4,r2
	movw r3,#64740
	movt r3,#65535  @ -796
	add r2,fp,r3
	add r3,r2,r4,lsl #2
	vldr.32 s26,[r3]
	mov r4,#5
	add r3,r4,r4,lsl #1
	mov r4,r3
	movw r3,#64740
	movt r3,#65535  @ -796
	add r2,fp,r3
	add r9,r2,r4,lsl #2
	str r9,[fp,#-920]
	mov r4,#3
	add r2,r4,r4,lsl #1
	mov r4,r2
	movw r2,#65220
	movt r2,#65535  @ -316
	add r1,fp,r2
	add r9,r1,r4,lsl #2
	str r9,[fp,#-928]
	mov r4,#4
	ldr r1,.LPIC5
	ldr r0,[r1]
	add r1,r4,r4,lsl #1
	mov r4,r1
	add r4,r4,r0
	movw r1,#65220
	movt r1,#65535  @ -316
	add r0,fp,r1
	add r1,r0,r4,lsl #2
	ldr r9,[r1]
	str r9,[fp,#-916]
	mov r1,#5
	ldr r0,.LPIC5
	ldr r7,[r0]
	add r0,r1,r1,lsl #1
	mov r1,r0
	add r1,r1,r7
	movw r7,#65220
	movt r7,#65535  @ -316
	add r0,fp,r7
	add r7,r0,r1,lsl #2
	ldr r9,[r7]
	str r9,[fp,#-824]
	mov r7,#6
	add r0,r7,r7,lsl #1
	mov r7,r0
	movw r0,#64740
	movt r0,#65535  @ -796
	add r8,fp,r0
	add r9,r8,r7,lsl #2
	str r9,[fp,#-860]
	mov r8,#6
	add r7,r8,r8,lsl #1
	mov r8,r7
	movw r7,#65220
	movt r7,#65535  @ -316
	add r5,fp,r7
	add r9,r5,r8,lsl #2
	str r9,[fp,#-832]
	mov r8,#7
	add r5,r8,r8,lsl #1
	mov r8,r5
	movw r5,#65220
	movt r5,#65535  @ -316
	add r6,fp,r5
	add r9,r6,r8,lsl #2
	str r9,[fp,#-912]
	mov r8,#8
	ldr r6,.LPIC5
	ldr r3,[r6]
	add r6,r8,r8,lsl #1
	mov r8,r6
	add r8,r8,r3
	movw r6,#65220
	movt r6,#65535  @ -316
	add r3,fp,r6
	add r6,r3,r8,lsl #2
	ldr r9,[r6]
	str r9,[fp,#-908]
	mov r6,#7
	add r3,r6,r6,lsl #1
	mov r6,r3
	movw r3,#64740
	movt r3,#65535  @ -796
	add r2,fp,r3
	add r9,r2,r6,lsl #2
	str r9,[fp,#-900]
	mov r6,#8
	add r2,r6,r6,lsl #1
	mov r6,r2
	movw r2,#64740
	movt r2,#65535  @ -796
	add r4,fp,r2
	add r9,r4,r6,lsl #2
	str r9,[fp,#-852]
	mov r6,#9
	ldr r4,.LPIC5
	ldr r1,[r4]
	add r4,r6,r6,lsl #1
	mov r6,r4
	add r6,r6,r1
	movw r4,#64740
	movt r4,#65535  @ -796
	add r1,fp,r4
	add r4,r1,r6,lsl #2
	vldr.32 s25,[r4]
	mov r6,#10
	ldr r4,.LPIC5
	ldr r1,[r4]
	add r4,r6,r6,lsl #1
	mov r6,r4
	add r6,r6,r1
	movw r4,#64740
	movt r4,#65535  @ -796
	add r1,fp,r4
	add r4,r1,r6,lsl #2
	vldr.32 s24,[r4]
	mov r6,#11
	ldr r4,.LPIC5
	ldr r1,[r4]
	add r4,r6,r6,lsl #1
	mov r6,r4
	add r6,r6,r1
	movw r4,#64740
	movt r4,#65535  @ -796
	add r1,fp,r4
	add r4,r1,r6,lsl #2
	vldr.32 s23,[r4]
	mov r6,#12
	add r4,r6,r6,lsl #1
	mov r6,r4
	movw r4,#64740
	movt r4,#65535  @ -796
	add r1,fp,r4
	add r9,r1,r6,lsl #2
	str r9,[fp,#-808]
	mov r6,#9
	ldr r1,.LPIC5
	ldr r0,[r1]
	add r1,r6,r6,lsl #1
	mov r6,r1
	add r6,r6,r0
	movw r1,#65220
	movt r1,#65535  @ -316
	add r0,fp,r1
	add r1,r0,r6,lsl #2
	ldr r9,[r1]
	str r9,[fp,#-904]
	mov r1,#13
	ldr r0,.LPIC5
	ldr r7,[r0]
	add r0,r1,r1,lsl #1
	mov r1,r0
	add r1,r1,r7
	movw r7,#64740
	movt r7,#65535  @ -796
	add r0,fp,r7
	add r7,r0,r1,lsl #2
	vldr.32 s22,[r7]
	mov r7,#14
	ldr r1,.LPIC5
	ldr r0,[r1]
	add r1,r7,r7,lsl #1
	mov r7,r1
	add r7,r7,r0
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r1,r0,r7,lsl #2
	vldr.32 s21,[r1]
	mov r7,#15
	ldr r1,.LPIC5
	ldr r0,[r1]
	add r1,r7,r7,lsl #1
	mov r7,r1
	add r7,r7,r0
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r1,r0,r7,lsl #2
	vldr.32 s20,[r1]
	mov r7,#10
	add r1,r7,r7,lsl #1
	mov r7,r1
	movw r1,#65220
	movt r1,#65535  @ -316
	add r0,fp,r1
	add r9,r0,r7,lsl #2
	str r9,[fp,#-848]
	mov r7,#16
	add r0,r7,r7,lsl #1
	mov r7,r0
	movw r0,#64740
	movt r0,#65535  @ -796
	add r5,fp,r0
	add r9,r5,r7,lsl #2
	str r9,[fp,#-896]
	mov r7,#11
	add r5,r7,r7,lsl #1
	mov r7,r5
	movw r5,#65220
	movt r5,#65535  @ -316
	add r8,fp,r5
	add r9,r8,r7,lsl #2
	str r9,[fp,#-840]
	mov r8,#12
	add r7,r8,r8,lsl #1
	mov r8,r7
	movw r7,#65220
	movt r7,#65535  @ -316
	add r3,fp,r7
	add r9,r3,r8,lsl #2
	str r9,[fp,#-884]
	mov r8,#17
	add r3,r8,r8,lsl #1
	mov r8,r3
	movw r3,#64740
	movt r3,#65535  @ -796
	add r2,fp,r3
	add r9,r2,r8,lsl #2
	str r9,[fp,#-816]
	mov r8,#18
	ldr r2,.LPIC5
	ldr r4,[r2]
	add r2,r8,r8,lsl #1
	mov r8,r2
	add r8,r8,r4
	movw r4,#64740
	movt r4,#65535  @ -796
	add r2,fp,r4
	add r4,r2,r8,lsl #2
	vldr.32 s19,[r4]
	mov r8,#19
	ldr r4,.LPIC5
	ldr r2,[r4]
	add r4,r8,r8,lsl #1
	mov r8,r4
	add r8,r8,r2
	movw r4,#64740
	movt r4,#65535  @ -796
	add r2,fp,r4
	add r4,r2,r8,lsl #2
	vldr.32 s18,[r4]
	mov r8,#13
	add r4,r8,r8,lsl #1
	mov r8,r4
	movw r4,#65220
	movt r4,#65535  @ -316
	add r2,fp,r4
	add r9,r2,r8,lsl #2
	str r9,[fp,#-892]
	mov r8,#14
	ldr r2,.LPIC5
	ldr r6,[r2]
	add r2,r8,r8,lsl #1
	mov r8,r2
	add r8,r8,r6
	movw r6,#65220
	movt r6,#65535  @ -316
	add r2,fp,r6
	add r6,r2,r8,lsl #2
	ldr r9,[r6]
	str r9,[fp,#-820]
	mov r6,#20
	add r2,r6,r6,lsl #1
	mov r6,r2
	movw r2,#64740
	movt r2,#65535  @ -796
	add r1,fp,r2
	add r9,r1,r6,lsl #2
	str r9,[fp,#-888]
	mov r6,#21
	add r1,r6,r6,lsl #1
	mov r6,r1
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r9,r0,r6,lsl #2
	str r9,[fp,#-828]
	mov r6,#22
	ldr r0,.LPIC5
	ldr r5,[r0]
	add r0,r6,r6,lsl #1
	mov r6,r0
	add r6,r6,r5
	movw r5,#64740
	movt r5,#65535  @ -796
	add r0,fp,r5
	add r5,r0,r6,lsl #2
	vldr.32 s17,[r5]
	mov r6,#23
	ldr r5,.LPIC5
	ldr r0,[r5]
	add r5,r6,r6,lsl #1
	mov r6,r5
	add r6,r6,r0
	movw r5,#64740
	movt r5,#65535  @ -796
	add r0,fp,r5
	add r5,r0,r6,lsl #2
	vldr.32 s16,[r5]
	mov r6,#15
	add r5,r6,r6,lsl #1
	mov r6,r5
	movw r5,#65220
	movt r5,#65535  @ -316
	add r0,fp,r5
	add r9,r0,r6,lsl #2
	str r9,[fp,#-812]
	mov r6,#16
	add r0,r6,r6,lsl #1
	mov r6,r0
	movw r0,#65220
	movt r0,#65535  @ -316
	add r7,fp,r0
	add r9,r7,r6,lsl #2
	str r9,[fp,#-876]
	mov r7,#17
	ldr r6,.LPIC5
	ldr r3,[r6]
	add r6,r7,r7,lsl #1
	mov r7,r6
	add r7,r7,r3
	movw r6,#65220
	movt r6,#65535  @ -316
	add r3,fp,r6
	add r6,r3,r7,lsl #2
	ldr r9,[r6]
	str r9,[fp,#-868]
	mov r6,#18
	ldr r3,.LPIC5
	ldr r4,[r3]
	add r3,r6,r6,lsl #1
	mov r6,r3
	add r6,r6,r4
	movw r4,#65220
	movt r4,#65535  @ -316
	add r3,fp,r4
	add r4,r3,r6,lsl #2
	ldr r9,[r4]
	str r9,[fp,#-880]
	mov r4,#24
	ldr r3,.LPIC5
	ldr r8,[r3]
	add r3,r4,r4,lsl #1
	mov r4,r3
	add r4,r4,r8
	movw r8,#64740
	movt r8,#65535  @ -796
	add r3,fp,r8
	add r8,r3,r4,lsl #2
	vldr.32 s15,[r8]
	mov r8,#25
	ldr r4,.LPIC5
	ldr r3,[r4]
	add r4,r8,r8,lsl #1
	mov r8,r4
	add r8,r8,r3
	movw r4,#64740
	movt r4,#65535  @ -796
	add r3,fp,r4
	add r4,r3,r8,lsl #2
	vldr.32 s14,[r4]
	mov r8,#19
	add r4,r8,r8,lsl #1
	mov r8,r4
	movw r4,#65220
	movt r4,#65535  @ -316
	add r3,fp,r4
	add r9,r3,r8,lsl #2
	str r9,[fp,#-804]
	mov r8,#20
	ldr r3,.LPIC5
	ldr r2,[r3]
	add r3,r8,r8,lsl #1
	mov r8,r3
	add r8,r8,r2
	movw r3,#65220
	movt r3,#65535  @ -316
	add r2,fp,r3
	add r3,r2,r8,lsl #2
	ldr r9,[r3]
	str r9,[fp,#-872]
	mov r3,#26
	add r2,r3,r3,lsl #1
	mov r3,r2
	movw r2,#64740
	movt r2,#65535  @ -796
	add r1,fp,r2
	add r9,r1,r3,lsl #2
	str r9,[fp,#-836]
	mov r3,#21
	ldr r1,.LPIC5
	ldr r5,[r1]
	add r1,r3,r3,lsl #1
	mov r3,r1
	add r3,r3,r5
	movw r5,#65220
	movt r5,#65535  @ -316
	add r1,fp,r5
	add r5,r1,r3,lsl #2
	ldr r9,[r5]
	str r9,[fp,#-924]
	mov r5,#22
	add r1,r5,r5,lsl #1
	mov r5,r1
	movw r1,#65220
	movt r1,#65535  @ -316
	add r0,fp,r1
	add r9,r0,r5,lsl #2
	str r9,[fp,#-932]
	mov r5,#23
	add r0,r5,r5,lsl #1
	mov r5,r0
	movw r0,#65220
	movt r0,#65535  @ -316
	add r7,fp,r0
	add r9,r7,r5,lsl #2
	str r9,[fp,#-936]
	mov r7,#27
	ldr r5,.LPIC5
	ldr r6,[r5]
	add r5,r7,r7,lsl #1
	mov r7,r5
	add r7,r7,r6
	movw r6,#64740
	movt r6,#65535  @ -796
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	vldr.32 s13,[r6]
	mov r7,#28
	ldr r6,.LPIC5
	ldr r5,[r6]
	add r6,r7,r7,lsl #1
	mov r7,r6
	add r7,r7,r5
	movw r6,#64740
	movt r6,#65535  @ -796
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	vldr.32 s12,[r6]
	mov r7,#29
	add r6,r7,r7,lsl #1
	mov r7,r6
	movw r6,#64740
	movt r6,#65535  @ -796
	add r5,fp,r6
	add r9,r5,r7,lsl #2
	str r9,[fp,#-940]
	mov r7,#0
	ldr r5,.LPIC5
	ldr r4,[r5]
	add r5,r7,r7,lsl #1
	mov r7,r5
	add r7,r7,r4
	movw r5,#65220
	movt r5,#65535  @ -316
	add r4,fp,r5
	add r5,r4,r7,lsl #2
	ldr r7,[r5]
	mov r5,#1
	add r4,r5,r5,lsl #1
	mov r5,r4
	movw r4,#65220
	movt r4,#65535  @ -316
	add r8,fp,r4
	add r4,r8,r5,lsl #2
	mov r8,#30
	add r5,r8,r8,lsl #1
	mov r8,r5
	movw r5,#64740
	movt r5,#65535  @ -796
	add r2,fp,r5
	add r5,r2,r8,lsl #2
	mov r8,#31
	bl .LPIC8
.LPIC7:
	.word k
.LPIC8:
	ldr r2,.LPIC7
	ldr r3,[r2]
	add r2,r8,r8,lsl #1
	mov r8,r2
	add r8,r8,r3
	movw r3,#64740
	movt r3,#65535  @ -796
	add r2,fp,r3
	add r3,r2,r8,lsl #2
	vldr.32 s11,[r3]
	mov r8,#2
	ldr r3,.LPIC7
	ldr r2,[r3]
	add r3,r8,r8,lsl #1
	mov r8,r3
	add r8,r8,r2
	movw r3,#65220
	movt r3,#65535  @ -316
	add r2,fp,r3
	add r3,r2,r8,lsl #2
	ldr r8,[r3]
	mov r3,#32
	ldr r2,.LPIC7
	ldr r1,[r2]
	add r2,r3,r3,lsl #1
	mov r3,r2
	add r3,r3,r1
	movw r2,#64740
	movt r2,#65535  @ -796
	add r1,fp,r2
	add r2,r1,r3,lsl #2
	vldr.32 s10,[r2]
	mov r3,#33
	add r2,r3,r3,lsl #1
	mov r3,r2
	movw r2,#64740
	movt r2,#65535  @ -796
	add r1,fp,r2
	add r2,r1,r3,lsl #2
	mov r3,#34
	add r1,r3,r3,lsl #1
	mov r3,r1
	movw r1,#64740
	movt r1,#65535  @ -796
	add r0,fp,r1
	add r1,r0,r3,lsl #2
	mov r3,#35
	ldr r0,.LPIC7
	ldr r6,[r0]
	add r0,r3,r3,lsl #1
	mov r3,r0
	add r3,r3,r6
	movw r6,#64740
	movt r6,#65535  @ -796
	add r0,fp,r6
	add r6,r0,r3,lsl #2
	vldr.32 s9,[r6]
	mov r6,#3
	ldr r3,.LPIC7
	ldr r0,[r3]
	add r3,r6,r6,lsl #1
	mov r6,r3
	add r6,r6,r0
	movw r3,#65220
	movt r3,#65535  @ -316
	add r0,fp,r3
	add r3,r0,r6,lsl #2
	ldr r6,[r3]
	@%r730 = call i32 @params_mix(float %s536,ptr %r537,i32 %r541,ptr %r543,float %s548,i32 %r551,float %s556,float %s560,ptr %r561,ptr %r563,i32 %r567,i32 %r571,ptr %r573,ptr %r575,ptr %r577,i32 %r581,ptr %r583,ptr %r585,float %s590,float %s594,float %s598,ptr %r599,i32 %r603,float %s608,float %s612,float %s616,ptr %r617,ptr %r619,ptr %r621,ptr %r623,ptr %r625,float %s630,float %s634,ptr %r635,i32 %r639,ptr %r641,ptr %r643,float %s648,float %s652,ptr %r653,ptr %r655,i32 %r659,i32 %r663,float %s668,float %s672,ptr %r673,i32 %r677,ptr %r679,i32 %r683,ptr %r685,ptr %r687,float %s692,float %s696,ptr %r697,i32 %r701,ptr %r703,ptr %r705,float %s710,i32 %r713,float %s718,ptr %r719,ptr %r721,float %s726,i32 %r729)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2}
	vpush.64 {d4,d5,d6,d7}
	sub sp,sp,#176
	str r6,[sp,#172]  @%r729
	vstr.32 s9,[sp,#168]  @%s726
	str r1,[sp,#164]  @%r721
	str r2,[sp,#160]  @%r719
	vstr.32 s10,[sp,#156]  @%s718
	str r8,[sp,#152]  @%r713
	vstr.32 s11,[sp,#148]  @%s710
	str r5,[sp,#144]  @%r705
	str r4,[sp,#140]  @%r703
	str r7,[sp,#136]  @%r701
	ldr r9,[fp,#-940]
	str r9,[sp,#132]  @%r697
	vstr.32 s12,[sp,#128]  @%s696
	vstr.32 s13,[sp,#124]  @%s692
	ldr r9,[fp,#-936]
	str r9,[sp,#120]  @%r687
	ldr r9,[fp,#-932]
	str r9,[sp,#116]  @%r685
	ldr r9,[fp,#-924]
	str r9,[sp,#112]  @%r683
	ldr r9,[fp,#-836]
	str r9,[sp,#108]  @%r679
	ldr r9,[fp,#-872]
	str r9,[sp,#104]  @%r677
	ldr r9,[fp,#-804]
	str r9,[sp,#100]  @%r673
	ldr r9,[fp,#-880]
	str r9,[sp,#96]  @%r663
	ldr r9,[fp,#-868]
	str r9,[sp,#92]  @%r659
	ldr r9,[fp,#-876]
	str r9,[sp,#88]  @%r655
	ldr r9,[fp,#-812]
	str r9,[sp,#84]  @%r653
	ldr r9,[fp,#-828]
	str r9,[sp,#80]  @%r643
	ldr r9,[fp,#-888]
	str r9,[sp,#76]  @%r641
	ldr r9,[fp,#-820]
	str r9,[sp,#72]  @%r639
	ldr r9,[fp,#-892]
	str r9,[sp,#68]  @%r635
	ldr r9,[fp,#-816]
	str r9,[sp,#64]  @%r625
	ldr r9,[fp,#-884]
	str r9,[sp,#60]  @%r623
	ldr r9,[fp,#-840]
	str r9,[sp,#56]  @%r621
	ldr r9,[fp,#-896]
	str r9,[sp,#52]  @%r619
	ldr r9,[fp,#-848]
	str r9,[sp,#48]  @%r617
	ldr r9,[fp,#-904]
	str r9,[sp,#44]  @%r603
	ldr r9,[fp,#-808]
	str r9,[sp,#40]  @%r599
	ldr r9,[fp,#-852]
	str r9,[sp,#36]  @%r585
	ldr r9,[fp,#-900]
	str r9,[sp,#32]  @%r583
	ldr r9,[fp,#-908]
	str r9,[sp,#28]  @%r581
	ldr r9,[fp,#-912]
	str r9,[sp,#24]  @%r577
	ldr r9,[fp,#-832]
	str r9,[sp,#20]  @%r575
	ldr r9,[fp,#-860]
	str r9,[sp,#16]  @%r573
	ldr r9,[fp,#-824]
	str r9,[sp,#12]  @%r571
	ldr r9,[fp,#-916]
	str r9,[sp,#8]  @%r567
	ldr r9,[fp,#-928]
	str r9,[sp,#4]  @%r563
	ldr r9,[fp,#-920]
	str r9,[sp,#0]  @%r561
	ldr r0,[fp,#-800]
	ldr r1,[fp,#-856]
	ldr r2,[fp,#-844]
	ldr r3,[fp,#-864]
	vmov.f32 s0,s29
	vmov.f32 s1,s28
	vmov.f32 s2,s27
	vmov.f32 s3,s26
	vmov.f32 s4,s25
	vmov.f32 s5,s24
	vmov.f32 s6,s23
	vmov.f32 s7,s22
	vmov.f32 s8,s21
	vmov.f32 s9,s20
	vmov.f32 s10,s19
	vmov.f32 s11,s18
	vmov.f32 s12,s17
	vmov.f32 s13,s16
	vmov.f32 s31,s15
	vmov.f32 s15,s14
	vmov.f32 s14,s31
	bl params_mix
	add sp,sp,#176
	mov r3,r0
	vpop.64 {d4,d5,d6,d7}
	pop {r0,r1,r2}
	add sp,sp,#4 @stack align 8bytes
	str r3,[fp,#-12]
	vldr.32 s29,[fp,#-24]
	@call void @putfloat(float %s732)
	vmov.f32 s0,s29
	bl putfloat
	mov r8,#10
	@call void @putch(i32 %r732)
	mov r0,r8
	bl putch
	vldr.32 s29,[fp,#-20]
	@call void @putfloat(float %s734)
	vmov.f32 s0,s29
	bl putfloat
	mov r8,#10
	@call void @putch(i32 %r734)
	mov r0,r8
	bl putch
	vldr.32 s29,[fp,#-16]
	@call void @putfloat(float %s736)
	vmov.f32 s0,s29
	bl putfloat
	mov r8,#10
	@call void @putch(i32 %r736)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r737)
	mov r0,r8
	bl putint
	mov r8,#10
	@call void @putch(i32 %r738)
	mov r0,r8
	bl putch
	mov r8,#0
	mov r0,r8
	mov r9,#940
	add sp,sp,r9
	vpop.64 {d8,d9,d10,d11,d12,d13,d14,d15}
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL6:
	ldr r8,[fp,#-28]
	add r7,r8,r8,lsl #1
	mov r8,r7
	movw r7,#65220
	movt r7,#65535  @ -316
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	@%r25 = call i32 @getarray(ptr %r24)
	mov r0,r7
	bl getarray
	mov r8,r0
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-28]
	bl .mainL5
.mainL3:
	ldr r8,[fp,#-28]
	add r7,r8,r8,lsl #1
	mov r8,r7
	movw r7,#64740
	movt r7,#65535  @ -796
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	@%r13 = call i32 @getfarray(ptr %r12)
	mov r0,r7
	bl getfarray
	mov r8,r0
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-28]
	bl .mainL2
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
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	add r2,r0,r3,lsl #2
	vldr.32 s29,[r2]
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-60]
	add r2,r9,r3,lsl #2
	vldr.32 s28,[r2]
	vadd.f32 s27,s29,s28
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-56]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s28,s27,s29
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-52]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s27,s28,s29
	mvn r3,#47
	add r2,fp,r3
	vstr.32 s27,[r2]
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	add r2,r8,r3,lsl #2
	vldr.32 s29,[r2]
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	add r2,r7,r3,lsl #2
	vldr.32 s28,[r2]
	vadd.f32 s27,s29,s28
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	add r2,r6,r3,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s28,s27,s29
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	add r2,r5,r3,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s27,s28,s29
	mov r3,#1
	mvn r2,#47
	add r0,fp,r2
	add r2,r0,r3,lsl #2
	vstr.32 s27,[r2]
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-184]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-180]
	add r2,r9,r3,lsl #2
	vldr.32 s28,[r2]
	vadd.f32 s27,s29,s28
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-176]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s28,s27,s29
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-172]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s27,s28,s29
	mov r3,#2
	mvn r2,#47
	add r0,fp,r2
	add r2,r0,r3,lsl #2
	vstr.32 s27,[r2]
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-64]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-68]
	add r2,r9,r3,lsl #2
	vldr.32 s28,[r2]
	vadd.f32 s27,s29,s28
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-72]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s28,s27,s29
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-76]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s27,s28,s29
	mov r3,#3
	mvn r2,#47
	add r0,fp,r2
	add r2,r0,r3,lsl #2
	vstr.32 s27,[r2]
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-80]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-84]
	add r2,r9,r3,lsl #2
	vldr.32 s28,[r2]
	vadd.f32 s27,s29,s28
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-88]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s28,s27,s29
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-92]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s27,s28,s29
	mov r3,#4
	mvn r2,#47
	add r0,fp,r2
	add r2,r0,r3,lsl #2
	vstr.32 s27,[r2]
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-96]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-100]
	add r2,r9,r3,lsl #2
	vldr.32 s28,[r2]
	vadd.f32 s27,s29,s28
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-104]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s28,s27,s29
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-108]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s27,s28,s29
	mov r3,#5
	mvn r2,#47
	add r0,fp,r2
	add r2,r0,r3,lsl #2
	vstr.32 s27,[r2]
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-112]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-116]
	add r2,r9,r3,lsl #2
	vldr.32 s28,[r2]
	vadd.f32 s27,s29,s28
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-120]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s28,s27,s29
	ldr r3,.LPIC7
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-124]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s27,s28,s29
	mov r3,#6
	mvn r2,#47
	add r0,fp,r2
	add r2,r0,r3,lsl #2
	vstr.32 s27,[r2]
	bl .LPIC10
.LPIC9:
	.word k
.LPIC10:
	ldr r3,.LPIC9
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-128]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	ldr r3,.LPIC9
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-132]
	add r2,r9,r3,lsl #2
	vldr.32 s28,[r2]
	vadd.f32 s27,s29,s28
	ldr r3,.LPIC9
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-136]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s28,s27,s29
	ldr r3,.LPIC9
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-140]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s27,s28,s29
	mov r3,#7
	mvn r2,#47
	add r0,fp,r2
	add r2,r0,r3,lsl #2
	vstr.32 s27,[r2]
	ldr r3,.LPIC9
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-144]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	ldr r3,.LPIC9
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-148]
	add r2,r9,r3,lsl #2
	vldr.32 s28,[r2]
	vadd.f32 s27,s29,s28
	ldr r3,.LPIC9
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-152]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s28,s27,s29
	ldr r3,.LPIC9
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-156]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s27,s28,s29
	mov r3,#8
	mvn r2,#47
	add r0,fp,r2
	add r2,r0,r3,lsl #2
	vstr.32 s27,[r2]
	ldr r3,.LPIC9
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-160]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	ldr r3,.LPIC9
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-164]
	add r2,r9,r3,lsl #2
	vldr.32 s28,[r2]
	vadd.f32 s27,s29,s28
	ldr r3,.LPIC9
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-168]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s28,s27,s29
	ldr r3,.LPIC9
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-188]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	vadd.f32 s27,s28,s29
	mov r3,#9
	mvn r2,#47
	add r0,fp,r2
	add r2,r0,r3,lsl #2
	vstr.32 s27,[r2]
	ldr r3,.LPIC9
	ldr r2,[r3]
	mov r3,r2
	ldr r9,[fp,#-188]
	add r2,r9,r3,lsl #2
	vldr.32 s29,[r2]
	mov r3,#0
	vmov s28,r3
	vcvt.f32.s32 s28,s28
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	ite ne
	movne r2, #1
	moveq r2, #0
	uxtb r2, r2
	mov r3,#0
	cmp r2,r3
	ite ne
	movne r3, #1
	moveq r3, #0
	uxtb r3, r3
	mov r2,#0
	str r2,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r2,#0
	str r2,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	vmov s29,r3
	vcvt.f32.s32 s29,s29
	vcmp.f32 s29,s27
	vmrs APSR_nzcv, FPSCR
	ite ne
	movne r2, #1
	moveq r2, #0
	uxtb r2, r2
	mov r3,#0
	str r3,[fp,#-8]
	vldr.32 s29,[fp,#-8]
	mov r3,#0
	str r3,[fp,#-8]
	vldr.32 s28,[fp,#-8]
	vadd.f32 s27,s29,s28
	vmov s29,r2
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
	mov r3,r9
	ldr r9,[fp,#-168]
	mov r2,r9
	ldr r9,[fp,#-188]
	mov r0,r9
	mvn r4,#47
	add r8,fp,r4
	@%s266 = call float @params_fa40(ptr %r225,ptr %r226,ptr %r227,ptr %r228,ptr %r229,ptr %r230,ptr %r231,ptr %r232,ptr %r233,ptr %r234,ptr %r235,ptr %r236,ptr %r237,ptr %r238,ptr %r239,ptr %r240,ptr %r241,ptr %r242,ptr %r243,ptr %r244,ptr %r245,ptr %r246,ptr %r247,ptr %r248,ptr %r249,ptr %r250,ptr %r251,ptr %r252,ptr %r253,ptr %r254,ptr %r255,ptr %r256,ptr %r257,ptr %r258,ptr %r259,ptr %r260,ptr %r261,ptr %r262,ptr %r263,ptr %r264)
	push {r0,r2,r3}
	sub sp,sp,#144
	str r8,[sp,#140]  @%r264
	str r0,[sp,#136]  @%r263
	str r2,[sp,#132]  @%r262
	str r3,[sp,#128]  @%r261
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
	mov r8,#10
	mvn r7,#47
	add r6,fp,r7
	@call void @putfarray(i32 %r220,ptr %r221)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r6
	bl putfarray
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC9
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
params_mix:@r4 r5 r6 r7 r8 r9 r10 d8 d9 d10 d11 d12 d13 d14 d15 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	vpush.64 {d8,d9,d10,d11,d12,d13,d14,d15}
	add fp,sp,#4
	mov r9,#396
	sub sp,sp,r9
.params_mixL0:
	mov r9,r1
	str r9,[fp,#-248]
	mov r9,r3
	str r9,[fp,#-244]
	mov r9,r2
	str r9,[fp,#-240]
	mov r9,r0
	str r9,[fp,#-236]
	ldr r9,[fp,#268]
	str r9,[fp,#-260]
	vldr.32 s25,[fp,#264]
	ldr r9,[fp,#260]
	str r9,[fp,#-368]
	ldr r9,[fp,#256]
	str r9,[fp,#-364]
	vldr.32 s26,[fp,#252]
	ldr r9,[fp,#248]
	str r9,[fp,#-256]
	vldr.32 s27,[fp,#244]
	ldr r9,[fp,#240]
	str r9,[fp,#-360]
	ldr r9,[fp,#236]
	str r9,[fp,#-356]
	ldr r9,[fp,#232]
	str r9,[fp,#-252]
	ldr r9,[fp,#228]
	str r9,[fp,#-352]
	vldr.32 s28,[fp,#224]
	vldr.32 s29,[fp,#220]
	ldr r9,[fp,#216]
	str r9,[fp,#-348]
	ldr r9,[fp,#212]
	str r9,[fp,#-344]
	ldr r1,[fp,#208]
	ldr r9,[fp,#204]
	str r9,[fp,#-340]
	ldr r3,[fp,#200]
	ldr r9,[fp,#196]
	str r9,[fp,#-336]
	ldr r2,[fp,#192]
	ldr r0,[fp,#188]
	ldr r9,[fp,#184]
	str r9,[fp,#-332]
	ldr r9,[fp,#180]
	str r9,[fp,#-328]
	ldr r9,[fp,#176]
	str r9,[fp,#-324]
	ldr r9,[fp,#172]
	str r9,[fp,#-320]
	ldr r4,[fp,#168]
	ldr r9,[fp,#164]
	str r9,[fp,#-316]
	ldr r9,[fp,#160]
	str r9,[fp,#-312]
	ldr r9,[fp,#156]
	str r9,[fp,#-308]
	ldr r9,[fp,#152]
	str r9,[fp,#-304]
	ldr r9,[fp,#148]
	str r9,[fp,#-300]
	ldr r9,[fp,#144]
	str r9,[fp,#-296]
	ldr r5,[fp,#140]
	ldr r9,[fp,#136]
	str r9,[fp,#-292]
	ldr r9,[fp,#132]
	str r9,[fp,#-288]
	ldr r9,[fp,#128]
	str r9,[fp,#-284]
	ldr r6,[fp,#124]
	ldr r9,[fp,#120]
	str r9,[fp,#-280]
	ldr r9,[fp,#116]
	str r9,[fp,#-276]
	ldr r9,[fp,#112]
	str r9,[fp,#-272]
	ldr r7,[fp,#108]
	ldr r8,[fp,#104]
	ldr r9,[fp,#100]
	str r9,[fp,#-268]
	ldr r9,[fp,#96]
	str r9,[fp,#-264]
	vstr.32 s0,[fp,#-96]
	ldr r9,[fp,#-248]
	str r9,[fp,#-100]
	vstr.32 s1,[fp,#-104]
	ldr r9,[fp,#-244]
	str r9,[fp,#-108]
	vstr.32 s2,[fp,#-112]
	vstr.32 s3,[fp,#-116]
	str r8,[fp,#-120]
	str r7,[fp,#-124]
	str r6,[fp,#-128]
	vstr.32 s4,[fp,#-132]
	vstr.32 s5,[fp,#-136]
	vstr.32 s6,[fp,#-140]
	str r5,[fp,#-144]
	vstr.32 s7,[fp,#-148]
	vstr.32 s8,[fp,#-152]
	vstr.32 s9,[fp,#-156]
	vstr.32 s10,[fp,#-160]
	vstr.32 s11,[fp,#-164]
	str r4,[fp,#-168]
	vstr.32 s12,[fp,#-172]
	vstr.32 s13,[fp,#-176]
	str r0,[fp,#-180]
	str r2,[fp,#-184]
	vstr.32 s14,[fp,#-188]
	vstr.32 s15,[fp,#-192]
	str r3,[fp,#-196]
	str r1,[fp,#-200]
	vstr.32 s29,[fp,#-204]
	vstr.32 s28,[fp,#-208]
	ldr r9,[fp,#-252]
	str r9,[fp,#-212]
	vstr.32 s27,[fp,#-216]
	ldr r9,[fp,#-256]
	str r9,[fp,#-220]
	vstr.32 s26,[fp,#-224]
	vstr.32 s25,[fp,#-228]
	ldr r9,[fp,#-260]
	str r9,[fp,#-232]
.params_mixL1:
	mvn r8,#91
	add r7,fp,r8
	@call void @memset(i32 %r393,i32 0,i32 40)
	push {r0,r2}
	mov r0,r7
	mov r1,#0
	mov r2,#40
	bl memset
	pop {r0,r2}
	vldr.32 s29,[fp,#-96]
	bl .LPIC12
.LPIC11:
	.word k
.LPIC12:
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-240]
	add r7,r9,r8,lsl #2
	vldr.32 s28,[r7]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-104]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-112]
	vadd.f32 s27,s28,s29
	mvn r8,#91
	add r7,fp,r8
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-116]
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-264]
	add r7,r9,r8,lsl #2
	vldr.32 s28,[r7]
	vadd.f32 s27,s29,s28
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-272]
	add r7,r9,r8,lsl #2
	vldr.32 s29,[r7]
	vadd.f32 s28,s27,s29
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-284]
	add r7,r9,r8,lsl #2
	vldr.32 s29,[r7]
	vadd.f32 s27,s28,s29
	mov r8,#1
	mvn r7,#91
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-288]
	add r7,r9,r8,lsl #2
	vldr.32 s29,[r7]
	vldr.32 s28,[fp,#-132]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-136]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-140]
	vadd.f32 s27,s28,s29
	mov r8,#2
	mvn r7,#91
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-292]
	add r7,r9,r8,lsl #2
	vldr.32 s29,[r7]
	vldr.32 s28,[fp,#-148]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-152]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-156]
	vadd.f32 s27,s28,s29
	mov r8,#3
	mvn r7,#91
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-300]
	add r7,r9,r8,lsl #2
	vldr.32 s29,[r7]
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-312]
	add r7,r9,r8,lsl #2
	vldr.32 s28,[r7]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-160]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-164]
	vadd.f32 s27,s28,s29
	mov r8,#4
	mvn r7,#91
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-320]
	add r7,r9,r8,lsl #2
	vldr.32 s29,[r7]
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-324]
	add r7,r9,r8,lsl #2
	vldr.32 s28,[r7]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-172]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-176]
	vadd.f32 s27,s28,s29
	mov r8,#5
	mvn r7,#91
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-188]
	vldr.32 s28,[fp,#-192]
	vadd.f32 s27,s29,s28
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-340]
	add r7,r9,r8,lsl #2
	vldr.32 s29,[r7]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-204]
	vadd.f32 s27,s28,s29
	mov r8,#6
	mvn r7,#91
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-208]
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-352]
	add r7,r9,r8,lsl #2
	vldr.32 s28,[r7]
	vadd.f32 s27,s29,s28
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-360]
	add r7,r9,r8,lsl #2
	vldr.32 s29,[r7]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-216]
	vadd.f32 s27,s28,s29
	mov r8,#7
	mvn r7,#91
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-224]
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-364]
	add r7,r9,r8,lsl #2
	vldr.32 s28,[r7]
	vadd.f32 s27,s29,s28
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-368]
	add r7,r9,r8,lsl #2
	vldr.32 s29,[r7]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-228]
	vadd.f32 s27,s28,s29
	mov r8,#8
	mvn r7,#91
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	mvn r8,#51
	add r7,fp,r8
	@call void @memset(i32 %r476,i32 0,i32 40)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	mov r0,r7
	mov r1,#0
	mov r2,#40
	bl memset
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-236]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	ldr r7,[fp,#-100]
	add r6,r8,r7
	ldr r8,[fp,#-108]
	add r7,r6,r8
	mvn r8,#51
	add r6,fp,r8
	str r7,[r6]
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-268]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	ldr r7,[fp,#-120]
	add r6,r8,r7
	ldr r8,[fp,#-124]
	add r7,r6,r8
	mov r8,#1
	mvn r6,#51
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-276]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	ldr r7,.LPIC11
	ldr r6,[r7]
	mov r7,r6
	ldr r9,[fp,#-280]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r8,[fp,#-128]
	add r7,r6,r8
	mov r8,#2
	mvn r6,#51
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	ldr r8,[fp,#-144]
	ldr r7,.LPIC11
	ldr r6,[r7]
	mov r7,r6
	ldr r9,[fp,#-296]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-304]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	add r7,r6,r8
	mov r8,#3
	mvn r6,#51
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-308]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	ldr r7,.LPIC11
	ldr r6,[r7]
	mov r7,r6
	ldr r9,[fp,#-316]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r8,[fp,#-168]
	add r7,r6,r8
	mov r8,#4
	mvn r6,#51
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-328]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	ldr r7,.LPIC11
	ldr r6,[r7]
	mov r7,r6
	ldr r9,[fp,#-332]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r8,[fp,#-180]
	add r7,r6,r8
	mov r8,#5
	mvn r6,#51
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	ldr r8,[fp,#-184]
	ldr r7,.LPIC11
	ldr r6,[r7]
	mov r7,r6
	ldr r9,[fp,#-336]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r8,[fp,#-196]
	add r7,r6,r8
	mov r8,#6
	mvn r6,#51
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	ldr r8,[fp,#-200]
	ldr r7,.LPIC11
	ldr r6,[r7]
	mov r7,r6
	ldr r9,[fp,#-344]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r8,.LPIC11
	ldr r7,[r8]
	mov r8,r7
	ldr r9,[fp,#-348]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	add r7,r6,r8
	mov r8,#7
	mvn r6,#51
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	ldr r8,[fp,#-212]
	ldr r7,.LPIC11
	ldr r6,[r7]
	mov r7,r6
	ldr r9,[fp,#-356]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r8,[fp,#-220]
	add r7,r6,r8
	ldr r8,[fp,#-232]
	add r6,r7,r8
	mov r8,#8
	mvn r7,#51
	add r5,fp,r7
	add r7,r5,r8,lsl #2
	str r6,[r7]
	ldr r8,[fp,#-232]
	mov r7,#0
	cmp r8,r7
	bne .params_mixL2
.params_mixL3:
	vldr.32 s29,[fp,#-96]
	mvn r8,#51
	add r9,fp,r8
	str r9,[fp,#-248]
	ldr r9,[fp,#-100]
	str r9,[fp,#-244]
	mvn r6,#91
	add r9,fp,r6
	str r9,[fp,#-252]
	vldr.32 s28,[fp,#-104]
	ldr r9,[fp,#-108]
	str r9,[fp,#-256]
	vldr.32 s27,[fp,#-112]
	vldr.32 s26,[fp,#-116]
	ldr r9,[fp,#-264]
	mov r10,r9
	str r10,[fp,#-260]
	ldr r9,[fp,#-268]
	mov r10,r9
	str r10,[fp,#-240]
	ldr r9,[fp,#-120]
	str r9,[fp,#-236]
	ldr r9,[fp,#-124]
	str r9,[fp,#-264]
	ldr r9,[fp,#-272]
	mov r10,r9
	str r10,[fp,#-268]
	ldr r9,[fp,#-276]
	mov r10,r9
	str r10,[fp,#-272]
	ldr r9,[fp,#-280]
	mov r10,r9
	str r10,[fp,#-276]
	ldr r9,[fp,#-128]
	str r9,[fp,#-280]
	ldr r9,[fp,#-284]
	mov r10,r9
	str r10,[fp,#-372]
	ldr r9,[fp,#-288]
	mov r10,r9
	str r10,[fp,#-284]
	vldr.32 s25,[fp,#-132]
	vldr.32 s24,[fp,#-136]
	vldr.32 s23,[fp,#-140]
	ldr r9,[fp,#-292]
	mov r10,r9
	str r10,[fp,#-288]
	ldr r9,[fp,#-144]
	str r9,[fp,#-292]
	vldr.32 s22,[fp,#-148]
	vldr.32 s21,[fp,#-152]
	vldr.32 s20,[fp,#-156]
	ldr r9,[fp,#-296]
	mov r10,r9
	str r10,[fp,#-376]
	ldr r9,[fp,#-300]
	mov r10,r9
	str r10,[fp,#-296]
	ldr r9,[fp,#-304]
	mov r10,r9
	str r10,[fp,#-300]
	ldr r9,[fp,#-308]
	mov r10,r9
	str r10,[fp,#-304]
	ldr r9,[fp,#-312]
	mov r10,r9
	str r10,[fp,#-308]
	vldr.32 s19,[fp,#-160]
	vldr.32 s18,[fp,#-164]
	ldr r9,[fp,#-316]
	mov r10,r9
	str r10,[fp,#-312]
	ldr r9,[fp,#-168]
	str r9,[fp,#-316]
	ldr r9,[fp,#-320]
	mov r10,r9
	str r10,[fp,#-380]
	ldr r9,[fp,#-324]
	mov r10,r9
	str r10,[fp,#-320]
	vldr.32 s17,[fp,#-172]
	vldr.32 s16,[fp,#-176]
	ldr r9,[fp,#-328]
	mov r10,r9
	str r10,[fp,#-324]
	ldr r9,[fp,#-332]
	mov r10,r9
	str r10,[fp,#-328]
	ldr r9,[fp,#-180]
	str r9,[fp,#-332]
	ldr r9,[fp,#-184]
	str r9,[fp,#-384]
	vldr.32 s15,[fp,#-188]
	vldr.32 s14,[fp,#-192]
	ldr r9,[fp,#-336]
	mov r10,r9
	str r10,[fp,#-388]
	ldr r9,[fp,#-196]
	str r9,[fp,#-336]
	ldr r9,[fp,#-340]
	mov r10,r9
	str r10,[fp,#-392]
	ldr r9,[fp,#-200]
	str r9,[fp,#-340]
	ldr r9,[fp,#-344]
	mov r10,r9
	str r10,[fp,#-396]
	ldr r9,[fp,#-348]
	mov r10,r9
	str r10,[fp,#-344]
	vldr.32 s13,[fp,#-204]
	vldr.32 s12,[fp,#-208]
	ldr r9,[fp,#-352]
	mov r0,r9
	ldr r7,[fp,#-212]
	ldr r9,[fp,#-356]
	mov r8,r9
	ldr r9,[fp,#-360]
	mov r5,r9
	vldr.32 s11,[fp,#-216]
	ldr r6,[fp,#-220]
	vldr.32 s10,[fp,#-224]
	ldr r9,[fp,#-364]
	mov r4,r9
	ldr r9,[fp,#-368]
	mov r3,r9
	ldr r2,[fp,#-232]
	vmov s9,r2
	vcvt.f32.s32 s9,s9
	vldr.32 s8,[fp,#-228]
	vcvt.s32.f32 s31,s8
	vmov r2,s31
	@%r392 = call i32 @params_mix(float %s327,ptr %r327,i32 %r328,ptr %r329,float %s331,i32 %r331,float %s333,float %s334,ptr %r334,ptr %r335,i32 %r336,i32 %r337,ptr %r338,ptr %r339,ptr %r340,i32 %r341,ptr %r342,ptr %r343,float %s345,float %s346,float %s347,ptr %r347,i32 %r348,float %s350,float %s351,float %s352,ptr %r352,ptr %r353,ptr %r354,ptr %r355,ptr %r356,float %s358,float %s359,ptr %r359,i32 %r360,ptr %r361,ptr %r362,float %s364,float %s365,ptr %r365,ptr %r366,i32 %r367,i32 %r368,float %s370,float %s371,ptr %r371,i32 %r372,ptr %r373,i32 %r374,ptr %r375,ptr %r376,float %s378,float %s379,ptr %r379,i32 %r380,ptr %r381,ptr %r382,float %s384,i32 %r384,float %s386,ptr %r386,ptr %r387,float %s390,i32 %r391)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r2,r3}
	vpush.64 {d4,d5,d6,d7}
	sub sp,sp,#176
	str r2,[sp,#172]  @%r391
	vstr.32 s9,[sp,#168]  @%s390
	str r3,[sp,#164]  @%r387
	str r4,[sp,#160]  @%r386
	vstr.32 s10,[sp,#156]  @%s386
	str r6,[sp,#152]  @%r384
	vstr.32 s11,[sp,#148]  @%s384
	str r5,[sp,#144]  @%r382
	str r8,[sp,#140]  @%r381
	str r7,[sp,#136]  @%r380
	str r0,[sp,#132]  @%r379
	vstr.32 s12,[sp,#128]  @%s379
	vstr.32 s13,[sp,#124]  @%s378
	ldr r9,[fp,#-344]
	str r9,[sp,#120]  @%r376
	ldr r9,[fp,#-396]
	str r9,[sp,#116]  @%r375
	ldr r9,[fp,#-340]
	str r9,[sp,#112]  @%r374
	ldr r9,[fp,#-392]
	str r9,[sp,#108]  @%r373
	ldr r9,[fp,#-336]
	str r9,[sp,#104]  @%r372
	ldr r9,[fp,#-388]
	str r9,[sp,#100]  @%r371
	ldr r9,[fp,#-384]
	str r9,[sp,#96]  @%r368
	ldr r9,[fp,#-332]
	str r9,[sp,#92]  @%r367
	ldr r9,[fp,#-328]
	str r9,[sp,#88]  @%r366
	ldr r9,[fp,#-324]
	str r9,[sp,#84]  @%r365
	ldr r9,[fp,#-320]
	str r9,[sp,#80]  @%r362
	ldr r9,[fp,#-380]
	str r9,[sp,#76]  @%r361
	ldr r9,[fp,#-316]
	str r9,[sp,#72]  @%r360
	ldr r9,[fp,#-312]
	str r9,[sp,#68]  @%r359
	ldr r9,[fp,#-308]
	str r9,[sp,#64]  @%r356
	ldr r9,[fp,#-304]
	str r9,[sp,#60]  @%r355
	ldr r9,[fp,#-300]
	str r9,[sp,#56]  @%r354
	ldr r9,[fp,#-296]
	str r9,[sp,#52]  @%r353
	ldr r9,[fp,#-376]
	str r9,[sp,#48]  @%r352
	ldr r9,[fp,#-292]
	str r9,[sp,#44]  @%r348
	ldr r9,[fp,#-288]
	str r9,[sp,#40]  @%r347
	ldr r9,[fp,#-284]
	str r9,[sp,#36]  @%r343
	ldr r9,[fp,#-372]
	str r9,[sp,#32]  @%r342
	ldr r9,[fp,#-280]
	str r9,[sp,#28]  @%r341
	ldr r9,[fp,#-276]
	str r9,[sp,#24]  @%r340
	ldr r9,[fp,#-272]
	str r9,[sp,#20]  @%r339
	ldr r9,[fp,#-268]
	str r9,[sp,#16]  @%r338
	ldr r9,[fp,#-264]
	str r9,[sp,#12]  @%r337
	ldr r9,[fp,#-236]
	str r9,[sp,#8]  @%r336
	ldr r9,[fp,#-240]
	str r9,[sp,#4]  @%r335
	ldr r9,[fp,#-260]
	str r9,[sp,#0]  @%r334
	ldr r0,[fp,#-248]
	ldr r1,[fp,#-244]
	ldr r2,[fp,#-252]
	ldr r3,[fp,#-256]
	vmov.f32 s0,s29
	vmov.f32 s1,s28
	vmov.f32 s2,s27
	vmov.f32 s3,s26
	vmov.f32 s4,s25
	vmov.f32 s5,s24
	vmov.f32 s6,s23
	vmov.f32 s7,s22
	vmov.f32 s8,s21
	vmov.f32 s9,s20
	vmov.f32 s10,s19
	vmov.f32 s11,s18
	vmov.f32 s12,s17
	vmov.f32 s13,s16
	vmov.f32 s31,s15
	vmov.f32 s15,s14
	vmov.f32 s14,s31
	bl params_mix
	add sp,sp,#176
	mov r1,r0
	vpop.64 {d4,d5,d6,d7}
	pop {r0,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	mov r0,r1
	mov r9,#396
	add sp,sp,r9
	vpop.64 {d8,d9,d10,d11,d12,d13,d14,d15}
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.params_mixL2:
	mov r8,#10
	mvn r7,#91
	add r6,fp,r7
	@call void @putfarray(i32 %r292,ptr %r293)
	mov r0,r8
	mov r1,r6
	bl putfarray
	mov r8,#10
	mvn r7,#51
	add r6,fp,r7
	@call void @putarray(i32 %r294,ptr %r295)
	mov r0,r8
	mov r1,r6
	bl putarray
	mov r8,#0
	str r8,[fp,#-12]
.params_mixL5:
	ldr r8,[fp,#-12]
	mov r7,#10
	cmp r8,r7
	blt .params_mixL6
.params_mixL7:
	bl .LPIC14
.LPIC13:
	.word k
.LPIC14:
	ldr r8,.LPIC13
	ldr r7,[r8]
	mov r8,r7
	mvn r7,#51
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	mov r7,#8
	mov r6,r7
	mvn r7,#91
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	vldr.32 s29,[r7]
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vmul.f32 s27,s28,s29
	vcvt.s32.f32 s31,s27
	vmov r8,s31
	mov r0,r8
	mov r9,#396
	add sp,sp,r9
	vpop.64 {d8,d9,d10,d11,d12,d13,d14,d15}
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.params_mixL6:
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#51
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	mov r6,r8
	mvn r8,#91
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	vldr.32 s29,[r8]
	vmov s28,r7
	vcvt.f32.s32 s28,s28
	vsub.f32 s27,s28,s29
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#51
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	vcvt.s32.f32 s31,s27
	vmov r7,s31
	str r7,[r8]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .params_mixL5
params_f40_i24:@r4 r5 r6 r7 r8 r9 r10 d8 d9 d10 d11 d12 d13 d14 d15 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	vpush.64 {d8,d9,d10,d11,d12,d13,d14,d15}
	add fp,sp,#4
	mov r9,#444
	sub sp,sp,r9
.params_f40_i24L0:
	vmov s30,s6
	vstr.32 s30,[fp,#-440]
	vmov s30,s7
	vstr.32 s30,[fp,#-432]
	vmov s30,s8
	vstr.32 s30,[fp,#-424]
	vmov s30,s9
	vstr.32 s30,[fp,#-420]
	vmov s30,s10
	vstr.32 s30,[fp,#-416]
	vmov s30,s11
	vstr.32 s30,[fp,#-412]
	vmov s30,s12
	vstr.32 s30,[fp,#-408]
	vmov s30,s13
	vstr.32 s30,[fp,#-404]
	vmov s30,s14
	vstr.32 s30,[fp,#-388]
	vmov s30,s15
	vstr.32 s30,[fp,#-384]
	mov r9,r0
	str r9,[fp,#-356]
	mov r9,r1
	str r9,[fp,#-352]
	mov r9,r2
	str r9,[fp,#-348]
	mov r9,r3
	str r9,[fp,#-344]
	vldr.32 s6,[fp,#268]
	ldr r9,[fp,#264]
	str r9,[fp,#-436]
	vldr.32 s7,[fp,#260]
	ldr r9,[fp,#256]
	str r9,[fp,#-428]
	vldr.32 s8,[fp,#252]
	vldr.32 s9,[fp,#248]
	vldr.32 s10,[fp,#244]
	vldr.32 s11,[fp,#240]
	vldr.32 s12,[fp,#236]
	vldr.32 s13,[fp,#232]
	ldr r9,[fp,#228]
	str r9,[fp,#-400]
	ldr r9,[fp,#224]
	str r9,[fp,#-396]
	ldr r9,[fp,#220]
	str r9,[fp,#-392]
	vldr.32 s14,[fp,#216]
	vldr.32 s15,[fp,#212]
	vldr.32 s16,[fp,#208]
	vldr.32 s17,[fp,#204]
	ldr r9,[fp,#200]
	str r9,[fp,#-380]
	ldr r9,[fp,#196]
	str r9,[fp,#-376]
	vldr.32 s18,[fp,#192]
	ldr r9,[fp,#188]
	str r9,[fp,#-372]
	vldr.32 s19,[fp,#184]
	vldr.32 s20,[fp,#180]
	vldr.32 s21,[fp,#176]
	ldr r9,[fp,#172]
	str r9,[fp,#-368]
	ldr r9,[fp,#168]
	str r9,[fp,#-364]
	vldr.32 s22,[fp,#164]
	vldr.32 s23,[fp,#160]
	vldr.32 s24,[fp,#156]
	vldr.32 s25,[fp,#152]
	ldr r9,[fp,#148]
	str r9,[fp,#-360]
	vldr.32 s26,[fp,#144]
	ldr r0,[fp,#140]
	vldr.32 s27,[fp,#136]
	vldr.32 s28,[fp,#132]
	vldr.32 s29,[fp,#128]
	ldr r1,[fp,#124]
	ldr r2,[fp,#120]
	ldr r3,[fp,#116]
	ldr r4,[fp,#112]
	ldr r5,[fp,#108]
	ldr r6,[fp,#104]
	ldr r7,[fp,#100]
	ldr r8,[fp,#96]
	ldr r9,[fp,#-356]
	str r9,[fp,#-88]
	ldr r9,[fp,#-352]
	str r9,[fp,#-92]
	ldr r9,[fp,#-348]
	str r9,[fp,#-96]
	vstr.32 s0,[fp,#-100]
	ldr r9,[fp,#-344]
	str r9,[fp,#-104]
	str r8,[fp,#-108]
	str r7,[fp,#-112]
	vstr.32 s1,[fp,#-116]
	vstr.32 s2,[fp,#-120]
	vstr.32 s3,[fp,#-124]
	str r6,[fp,#-128]
	vstr.32 s4,[fp,#-132]
	vstr.32 s5,[fp,#-136]
	str r5,[fp,#-140]
	vldr.32 s30,[fp,#-440]
	vstr.32 s30,[fp,#-144]
	str r4,[fp,#-148]
	vldr.32 s30,[fp,#-432]
	vstr.32 s30,[fp,#-152]
	vldr.32 s30,[fp,#-424]
	vstr.32 s30,[fp,#-156]
	vldr.32 s30,[fp,#-420]
	vstr.32 s30,[fp,#-160]
	vldr.32 s30,[fp,#-416]
	vstr.32 s30,[fp,#-164]
	vldr.32 s30,[fp,#-412]
	vstr.32 s30,[fp,#-168]
	vldr.32 s30,[fp,#-408]
	vstr.32 s30,[fp,#-172]
	str r3,[fp,#-176]
	vldr.32 s30,[fp,#-404]
	vstr.32 s30,[fp,#-180]
	str r2,[fp,#-184]
	str r1,[fp,#-188]
	vldr.32 s30,[fp,#-388]
	vstr.32 s30,[fp,#-192]
	vldr.32 s30,[fp,#-384]
	vstr.32 s30,[fp,#-196]
	vstr.32 s29,[fp,#-200]
	vstr.32 s28,[fp,#-204]
	vstr.32 s27,[fp,#-208]
	str r0,[fp,#-212]
	vstr.32 s26,[fp,#-216]
	ldr r9,[fp,#-360]
	str r9,[fp,#-220]
	vstr.32 s25,[fp,#-224]
	vstr.32 s24,[fp,#-228]
	vstr.32 s23,[fp,#-232]
	vstr.32 s22,[fp,#-236]
	ldr r9,[fp,#-364]
	str r9,[fp,#-240]
	ldr r9,[fp,#-368]
	str r9,[fp,#-244]
	vstr.32 s21,[fp,#-248]
	vstr.32 s20,[fp,#-252]
	vstr.32 s19,[fp,#-256]
	ldr r9,[fp,#-372]
	str r9,[fp,#-260]
	vstr.32 s18,[fp,#-264]
	ldr r9,[fp,#-376]
	str r9,[fp,#-268]
	ldr r9,[fp,#-380]
	str r9,[fp,#-272]
	vstr.32 s17,[fp,#-276]
	vstr.32 s16,[fp,#-280]
	vstr.32 s15,[fp,#-284]
	vstr.32 s14,[fp,#-288]
	ldr r9,[fp,#-392]
	str r9,[fp,#-292]
	ldr r9,[fp,#-396]
	str r9,[fp,#-296]
	ldr r9,[fp,#-400]
	str r9,[fp,#-300]
	vstr.32 s13,[fp,#-304]
	vstr.32 s12,[fp,#-308]
	vstr.32 s11,[fp,#-312]
	vstr.32 s10,[fp,#-316]
	vstr.32 s9,[fp,#-320]
	vstr.32 s8,[fp,#-324]
	ldr r9,[fp,#-428]
	str r9,[fp,#-328]
	vstr.32 s7,[fp,#-332]
	ldr r9,[fp,#-436]
	str r9,[fp,#-336]
	vstr.32 s6,[fp,#-340]
.params_f40_i24L1:
	ldr r8,[fp,#-88]
	mov r7,#0
	cmp r8,r7
	bne .params_f40_i24L2
.params_f40_i24L3:
	ldr r9,[fp,#-104]
	str r9,[fp,#-356]
	ldr r9,[fp,#-92]
	str r9,[fp,#-352]
	ldr r9,[fp,#-96]
	str r9,[fp,#-348]
	vldr.32 s30,[fp,#-100]
	vstr.32 s30,[fp,#-408]
	ldr r9,[fp,#-104]
	str r9,[fp,#-344]
	ldr r9,[fp,#-108]
	str r9,[fp,#-440]
	ldr r9,[fp,#-112]
	str r9,[fp,#-432]
	vldr.32 s30,[fp,#-116]
	vstr.32 s30,[fp,#-404]
	vldr.32 s30,[fp,#-120]
	vstr.32 s30,[fp,#-364]
	vldr.32 s30,[fp,#-124]
	vstr.32 s30,[fp,#-368]
	ldr r9,[fp,#-128]
	str r9,[fp,#-424]
	vldr.32 s30,[fp,#-132]
	vstr.32 s30,[fp,#-372]
	vldr.32 s30,[fp,#-136]
	vstr.32 s30,[fp,#-376]
	ldr r9,[fp,#-140]
	str r9,[fp,#-420]
	vldr.32 s30,[fp,#-144]
	vstr.32 s30,[fp,#-380]
	ldr r9,[fp,#-148]
	str r9,[fp,#-416]
	vldr.32 s30,[fp,#-152]
	vstr.32 s30,[fp,#-392]
	vldr.32 s30,[fp,#-156]
	vstr.32 s30,[fp,#-400]
	vldr.32 s30,[fp,#-160]
	vstr.32 s30,[fp,#-436]
	vldr.32 s30,[fp,#-164]
	vstr.32 s30,[fp,#-444]
	vldr.32 s18,[fp,#-168]
	vldr.32 s17,[fp,#-172]
	ldr r9,[fp,#-176]
	str r9,[fp,#-412]
	vldr.32 s16,[fp,#-180]
	ldr r9,[fp,#-184]
	str r9,[fp,#-388]
	ldr r9,[fp,#-188]
	str r9,[fp,#-384]
	vldr.32 s15,[fp,#-192]
	vldr.32 s14,[fp,#-196]
	vldr.32 s13,[fp,#-200]
	vldr.32 s12,[fp,#-204]
	vldr.32 s11,[fp,#-208]
	ldr r9,[fp,#-212]
	str r9,[fp,#-360]
	vldr.32 s10,[fp,#-216]
	ldr r9,[fp,#-220]
	str r9,[fp,#-396]
	vldr.32 s9,[fp,#-224]
	vldr.32 s8,[fp,#-228]
	vldr.32 s7,[fp,#-232]
	vldr.32 s6,[fp,#-236]
	ldr r9,[fp,#-240]
	str r9,[fp,#-428]
	ldr r2,[fp,#-244]
	vldr.32 s5,[fp,#-248]
	vldr.32 s4,[fp,#-252]
	vldr.32 s3,[fp,#-256]
	ldr r1,[fp,#-260]
	vldr.32 s2,[fp,#-264]
	ldr r0,[fp,#-268]
	ldr r8,[fp,#-272]
	vldr.32 s1,[fp,#-276]
	vldr.32 s0,[fp,#-280]
	vldr.32 s29,[fp,#-284]
	vldr.32 s28,[fp,#-288]
	ldr r7,[fp,#-292]
	ldr r6,[fp,#-296]
	ldr r5,[fp,#-300]
	vldr.32 s27,[fp,#-304]
	vldr.32 s26,[fp,#-308]
	vldr.32 s25,[fp,#-312]
	vldr.32 s24,[fp,#-316]
	vldr.32 s23,[fp,#-320]
	vldr.32 s22,[fp,#-324]
	ldr r4,[fp,#-328]
	vldr.32 s21,[fp,#-332]
	ldr r3,[fp,#-336]
	vldr.32 s20,[fp,#-340]
	@%s357 = call float @params_f40_i24(i32 %r292,i32 %r293,i32 %r294,float %s296,i32 %r296,i32 %r297,i32 %r298,float %s300,float %s301,float %s302,i32 %r302,float %s304,float %s305,i32 %r305,float %s307,i32 %r307,float %s309,float %s310,float %s311,float %s312,float %s313,float %s314,i32 %r314,float %s316,i32 %r316,i32 %r317,float %s319,float %s320,float %s321,float %s322,float %s323,i32 %r323,float %s325,i32 %r325,float %s327,float %s328,float %s329,float %s330,i32 %r330,i32 %r331,float %s333,float %s334,float %s335,i32 %r335,float %s337,i32 %r337,i32 %r338,float %s340,float %s341,float %s342,float %s343,i32 %r343,i32 %r344,i32 %r345,float %s347,float %s348,float %s349,float %s350,float %s351,float %s352,i32 %r352,float %s354,i32 %r354,float %s356)
	push {r0,r1,r2,r3}
	vpush.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	sub sp,sp,#176
	vstr.32 s20,[sp,#172]  @%s356
	str r3,[sp,#168]  @%r354
	vstr.32 s21,[sp,#164]  @%s354
	str r4,[sp,#160]  @%r352
	vstr.32 s22,[sp,#156]  @%s352
	vstr.32 s23,[sp,#152]  @%s351
	vstr.32 s24,[sp,#148]  @%s350
	vstr.32 s25,[sp,#144]  @%s349
	vstr.32 s26,[sp,#140]  @%s348
	vstr.32 s27,[sp,#136]  @%s347
	str r5,[sp,#132]  @%r345
	str r6,[sp,#128]  @%r344
	str r7,[sp,#124]  @%r343
	vstr.32 s28,[sp,#120]  @%s343
	vstr.32 s29,[sp,#116]  @%s342
	vstr.32 s0,[sp,#112]  @%s341
	vstr.32 s1,[sp,#108]  @%s340
	str r8,[sp,#104]  @%r338
	str r0,[sp,#100]  @%r337
	vstr.32 s2,[sp,#96]  @%s337
	str r1,[sp,#92]  @%r335
	vstr.32 s3,[sp,#88]  @%s335
	vstr.32 s4,[sp,#84]  @%s334
	vstr.32 s5,[sp,#80]  @%s333
	str r2,[sp,#76]  @%r331
	ldr r9,[fp,#-428]
	str r9,[sp,#72]  @%r330
	vstr.32 s6,[sp,#68]  @%s330
	vstr.32 s7,[sp,#64]  @%s329
	vstr.32 s8,[sp,#60]  @%s328
	vstr.32 s9,[sp,#56]  @%s327
	ldr r9,[fp,#-396]
	str r9,[sp,#52]  @%r325
	vstr.32 s10,[sp,#48]  @%s325
	ldr r9,[fp,#-360]
	str r9,[sp,#44]  @%r323
	vstr.32 s11,[sp,#40]  @%s323
	vstr.32 s12,[sp,#36]  @%s322
	vstr.32 s13,[sp,#32]  @%s321
	ldr r9,[fp,#-384]
	str r9,[sp,#28]  @%r317
	ldr r9,[fp,#-388]
	str r9,[sp,#24]  @%r316
	ldr r9,[fp,#-412]
	str r9,[sp,#20]  @%r314
	ldr r9,[fp,#-416]
	str r9,[sp,#16]  @%r307
	ldr r9,[fp,#-420]
	str r9,[sp,#12]  @%r305
	ldr r9,[fp,#-424]
	str r9,[sp,#8]  @%r302
	ldr r9,[fp,#-432]
	str r9,[sp,#4]  @%r298
	ldr r9,[fp,#-440]
	str r9,[sp,#0]  @%r297
	ldr r0,[fp,#-356]
	ldr r1,[fp,#-352]
	ldr r2,[fp,#-348]
	ldr r3,[fp,#-344]
	vldr.32 s0,[fp,#-408]
	vldr.32 s1,[fp,#-404]
	vldr.32 s2,[fp,#-364]
	vldr.32 s3,[fp,#-368]
	vldr.32 s4,[fp,#-372]
	vldr.32 s5,[fp,#-376]
	vldr.32 s6,[fp,#-380]
	vldr.32 s7,[fp,#-392]
	vldr.32 s8,[fp,#-400]
	vldr.32 s9,[fp,#-436]
	vldr.32 s10,[fp,#-444]
	vmov.f32 s11,s18
	vmov.f32 s12,s17
	vmov.f32 s13,s16
	vmov.f32 s31,s15
	vmov.f32 s15,s14
	vmov.f32 s14,s31
	bl params_f40_i24
	add sp,sp,#176
	vmov.f32 s31,s0
	vpop.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	pop {r0,r1,r2,r3}
	vmov.f32 s19,s31
	vmov.f32 s0,s19
	mov r9,#444
	add sp,sp,r9
	vpop.64 {d8,d9,d10,d11,d12,d13,d14,d15}
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.params_f40_i24L2:
	mvn r8,#83
	add r7,fp,r8
	@call void @memset(i32 %r357,i32 0,i32 40)
	mov r0,r7
	mov r1,#0
	mov r2,#40
	bl memset
	vldr.32 s29,[fp,#-256]
	vldr.32 s28,[fp,#-160]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-332]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-132]
	vadd.f32 s27,s28,s29
	mvn r8,#83
	add r7,fp,r8
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-100]
	vldr.32 s28,[fp,#-232]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-172]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-124]
	vadd.f32 s27,s28,s29
	mov r8,#1
	mvn r7,#83
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-116]
	vldr.32 s28,[fp,#-204]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-252]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-164]
	vadd.f32 s27,s28,s29
	mov r8,#2
	mvn r7,#83
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-156]
	vldr.32 s28,[fp,#-284]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-248]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-120]
	vadd.f32 s27,s28,s29
	mov r8,#3
	mvn r7,#83
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-228]
	vldr.32 s28,[fp,#-324]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-304]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-308]
	vadd.f32 s27,s28,s29
	mov r8,#4
	mvn r7,#83
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-192]
	vldr.32 s28,[fp,#-224]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-312]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-200]
	vadd.f32 s27,s28,s29
	mov r8,#5
	mvn r7,#83
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-280]
	vldr.32 s28,[fp,#-208]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-316]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-276]
	vadd.f32 s27,s28,s29
	mov r8,#6
	mvn r7,#83
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-136]
	vldr.32 s28,[fp,#-288]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-152]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-264]
	vadd.f32 s27,s28,s29
	mov r8,#7
	mvn r7,#83
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-180]
	vldr.32 s28,[fp,#-196]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-236]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-340]
	vadd.f32 s27,s28,s29
	mov r8,#8
	mvn r7,#83
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-320]
	vldr.32 s28,[fp,#-144]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-168]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-216]
	vadd.f32 s27,s28,s29
	mov r8,#9
	mvn r7,#83
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	mvn r8,#43
	add r7,fp,r8
	@call void @memset(i32 %r399,i32 0,i32 32)
	mov r0,r7
	mov r1,#0
	mov r2,#32
	bl memset
	ldr r8,[fp,#-140]
	ldr r7,[fp,#-104]
	add r6,r8,r7
	ldr r8,[fp,#-92]
	add r7,r6,r8
	mvn r8,#43
	add r6,fp,r8
	str r7,[r6]
	ldr r8,[fp,#-292]
	ldr r7,[fp,#-108]
	add r6,r8,r7
	ldr r8,[fp,#-112]
	add r7,r6,r8
	mov r8,#1
	mvn r6,#43
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	ldr r8,[fp,#-96]
	ldr r7,[fp,#-176]
	add r6,r8,r7
	ldr r8,[fp,#-212]
	add r7,r6,r8
	mov r8,#2
	mvn r6,#43
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	ldr r8,[fp,#-244]
	ldr r7,[fp,#-184]
	add r6,r8,r7
	ldr r8,[fp,#-268]
	add r7,r6,r8
	mov r8,#3
	mvn r6,#43
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	ldr r8,[fp,#-260]
	ldr r7,[fp,#-188]
	add r6,r8,r7
	ldr r8,[fp,#-336]
	add r7,r6,r8
	mov r8,#4
	mvn r6,#43
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	ldr r8,[fp,#-328]
	ldr r7,[fp,#-272]
	add r6,r8,r7
	ldr r8,[fp,#-220]
	add r7,r6,r8
	mov r8,#5
	mvn r6,#43
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	ldr r8,[fp,#-240]
	ldr r7,[fp,#-148]
	add r6,r8,r7
	ldr r8,[fp,#-300]
	add r7,r6,r8
	mov r8,#6
	mvn r6,#43
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	ldr r8,[fp,#-296]
	ldr r7,[fp,#-128]
	add r6,r8,r7
	ldr r8,[fp,#-88]
	add r7,r6,r8
	mov r8,#7
	mvn r6,#43
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	mov r8,#10
	mvn r7,#83
	add r6,fp,r7
	@call void @putfarray(i32 %r263,ptr %r264)
	mov r0,r8
	mov r1,r6
	bl putfarray
	mov r8,#8
	mvn r7,#43
	add r6,fp,r7
	@call void @putarray(i32 %r265,ptr %r266)
	mov r0,r8
	mov r1,r6
	bl putarray
	mov r8,#0
	str r8,[fp,#-12]
.params_f40_i24L5:
	ldr r8,[fp,#-12]
	mov r7,#8
	cmp r8,r7
	blt .params_f40_i24L6
.params_f40_i24L7:
	bl .LPIC16
.LPIC15:
	.word k
.LPIC16:
	ldr r8,.LPIC15
	ldr r7,[r8]
	mov r8,r7
	mvn r7,#43
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	vmov s29,r8
	vcvt.f32.s32 s29,s29
	vmov.f32 s0,s29
	mov r9,#444
	add sp,sp,r9
	vpop.64 {d8,d9,d10,d11,d12,d13,d14,d15}
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.params_f40_i24L6:
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#43
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	mov r6,r8
	mvn r8,#83
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	vldr.32 s29,[r8]
	vmov s28,r7
	vcvt.f32.s32 s28,s28
	vsub.f32 s27,s28,s29
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#43
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	vcvt.s32.f32 s31,s27
	vmov r7,s31
	str r7,[r8]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .params_f40_i24L5
params_f40:@r6 r7 r8 d8 d9 d10 d11 d12 d13 d14 d15 
	push {fp,lr}
	push {r6,r7,r8}
	vpush.64 {d8,d9,d10,d11,d12,d13,d14,d15}
	add fp,sp,#4
	mov r9,#256
	sub sp,sp,r9
.params_f40L0:
	vmov s30,s7
	vstr.32 s30,[fp,#-244]
	vmov s30,s8
	vstr.32 s30,[fp,#-240]
	vmov s30,s9
	vstr.32 s30,[fp,#-236]
	vmov s30,s10
	vstr.32 s30,[fp,#-232]
	vmov s30,s11
	vstr.32 s30,[fp,#-228]
	vmov s30,s12
	vstr.32 s30,[fp,#-224]
	vmov s30,s13
	vstr.32 s30,[fp,#-220]
	vmov s30,s14
	vstr.32 s30,[fp,#-216]
	vmov s30,s15
	vstr.32 s30,[fp,#-212]
	vldr.32 s30,[fp,#172]
	vstr.32 s30,[fp,#-248]
	vldr.32 s7,[fp,#168]
	vldr.32 s8,[fp,#164]
	vldr.32 s9,[fp,#160]
	vldr.32 s10,[fp,#156]
	vldr.32 s11,[fp,#152]
	vldr.32 s12,[fp,#148]
	vldr.32 s13,[fp,#144]
	vldr.32 s14,[fp,#140]
	vldr.32 s15,[fp,#136]
	vldr.32 s16,[fp,#132]
	vldr.32 s17,[fp,#128]
	vldr.32 s18,[fp,#124]
	vldr.32 s19,[fp,#120]
	vldr.32 s20,[fp,#116]
	vldr.32 s21,[fp,#112]
	vldr.32 s22,[fp,#108]
	vldr.32 s23,[fp,#104]
	vldr.32 s24,[fp,#100]
	vldr.32 s25,[fp,#96]
	vldr.32 s26,[fp,#92]
	vldr.32 s27,[fp,#88]
	vldr.32 s28,[fp,#84]
	vldr.32 s29,[fp,#80]
	vstr.32 s0,[fp,#-52]
	vstr.32 s1,[fp,#-56]
	vstr.32 s2,[fp,#-60]
	vstr.32 s3,[fp,#-64]
	vstr.32 s4,[fp,#-68]
	vstr.32 s5,[fp,#-72]
	vstr.32 s6,[fp,#-76]
	vldr.32 s30,[fp,#-244]
	vstr.32 s30,[fp,#-80]
	vldr.32 s30,[fp,#-240]
	vstr.32 s30,[fp,#-84]
	vldr.32 s30,[fp,#-236]
	vstr.32 s30,[fp,#-88]
	vldr.32 s30,[fp,#-232]
	vstr.32 s30,[fp,#-92]
	vldr.32 s30,[fp,#-228]
	vstr.32 s30,[fp,#-96]
	vldr.32 s30,[fp,#-224]
	vstr.32 s30,[fp,#-100]
	vldr.32 s30,[fp,#-220]
	vstr.32 s30,[fp,#-104]
	vldr.32 s30,[fp,#-216]
	vstr.32 s30,[fp,#-108]
	vldr.32 s30,[fp,#-212]
	vstr.32 s30,[fp,#-112]
	vstr.32 s29,[fp,#-116]
	vstr.32 s28,[fp,#-120]
	vstr.32 s27,[fp,#-124]
	vstr.32 s26,[fp,#-128]
	vstr.32 s25,[fp,#-132]
	vstr.32 s24,[fp,#-136]
	vstr.32 s23,[fp,#-140]
	vstr.32 s22,[fp,#-144]
	vstr.32 s21,[fp,#-148]
	vstr.32 s20,[fp,#-152]
	vstr.32 s19,[fp,#-156]
	vstr.32 s18,[fp,#-160]
	vstr.32 s17,[fp,#-164]
	vstr.32 s16,[fp,#-168]
	vstr.32 s15,[fp,#-172]
	vstr.32 s14,[fp,#-176]
	vstr.32 s13,[fp,#-180]
	vstr.32 s12,[fp,#-184]
	vstr.32 s11,[fp,#-188]
	vstr.32 s10,[fp,#-192]
	vstr.32 s9,[fp,#-196]
	vstr.32 s8,[fp,#-200]
	vstr.32 s7,[fp,#-204]
	vldr.32 s30,[fp,#-248]
	vstr.32 s30,[fp,#-208]
.params_f40L1:
	vldr.32 s29,[fp,#-208]
	mov r8,#0
	vmov s28,r8
	vcvt.f32.s32 s28,s28
	vcmp.f32 s29,s28
	vmrs APSR_nzcv, FPSCR
	bne .params_f40L2
.params_f40L3:
	vldr.32 s30,[fp,#-56]
	vstr.32 s30,[fp,#-244]
	vldr.32 s30,[fp,#-60]
	vstr.32 s30,[fp,#-240]
	vldr.32 s30,[fp,#-64]
	vstr.32 s30,[fp,#-236]
	vldr.32 s30,[fp,#-68]
	vstr.32 s30,[fp,#-232]
	vldr.32 s30,[fp,#-72]
	vstr.32 s30,[fp,#-228]
	vldr.32 s30,[fp,#-76]
	vstr.32 s30,[fp,#-224]
	vldr.32 s30,[fp,#-80]
	vstr.32 s30,[fp,#-220]
	vldr.32 s30,[fp,#-84]
	vstr.32 s30,[fp,#-216]
	vldr.32 s30,[fp,#-88]
	vstr.32 s30,[fp,#-212]
	vldr.32 s30,[fp,#-92]
	vstr.32 s30,[fp,#-248]
	vldr.32 s30,[fp,#-96]
	vstr.32 s30,[fp,#-252]
	vldr.32 s30,[fp,#-100]
	vstr.32 s30,[fp,#-256]
	vldr.32 s17,[fp,#-104]
	vldr.32 s16,[fp,#-108]
	vldr.32 s15,[fp,#-112]
	vldr.32 s14,[fp,#-116]
	vldr.32 s13,[fp,#-120]
	vldr.32 s12,[fp,#-124]
	vldr.32 s11,[fp,#-128]
	vldr.32 s10,[fp,#-132]
	vldr.32 s9,[fp,#-136]
	vldr.32 s8,[fp,#-140]
	vldr.32 s7,[fp,#-144]
	vldr.32 s6,[fp,#-148]
	vldr.32 s5,[fp,#-152]
	vldr.32 s4,[fp,#-156]
	vldr.32 s3,[fp,#-160]
	vldr.32 s2,[fp,#-164]
	vldr.32 s1,[fp,#-168]
	vldr.32 s0,[fp,#-172]
	vldr.32 s29,[fp,#-176]
	vldr.32 s28,[fp,#-180]
	vldr.32 s27,[fp,#-184]
	vldr.32 s26,[fp,#-188]
	vldr.32 s25,[fp,#-192]
	vldr.32 s24,[fp,#-196]
	vldr.32 s23,[fp,#-200]
	vldr.32 s22,[fp,#-204]
	vldr.32 s21,[fp,#-208]
	vldr.32 s20,[fp,#-52]
	vldr.32 s19,[fp,#-56]
	vadd.f32 s18,s20,s19
	vldr.32 s20,[fp,#-60]
	vadd.f32 s19,s18,s20
	@%s217 = call float @params_f40(float %s173,float %s174,float %s175,float %s176,float %s177,float %s178,float %s179,float %s180,float %s181,float %s182,float %s183,float %s184,float %s185,float %s186,float %s187,float %s188,float %s189,float %s190,float %s191,float %s192,float %s193,float %s194,float %s195,float %s196,float %s197,float %s198,float %s199,float %s200,float %s201,float %s202,float %s203,float %s204,float %s205,float %s206,float %s207,float %s208,float %s209,float %s210,float %s211,float %s216)
	sub sp,sp,#4 @stack align 8bytes
	vpush.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	sub sp,sp,#96
	vstr.32 s19,[sp,#92]  @%s216
	vstr.32 s21,[sp,#88]  @%s211
	vstr.32 s22,[sp,#84]  @%s210
	vstr.32 s23,[sp,#80]  @%s209
	vstr.32 s24,[sp,#76]  @%s208
	vstr.32 s25,[sp,#72]  @%s207
	vstr.32 s26,[sp,#68]  @%s206
	vstr.32 s27,[sp,#64]  @%s205
	vstr.32 s28,[sp,#60]  @%s204
	vstr.32 s29,[sp,#56]  @%s203
	vstr.32 s0,[sp,#52]  @%s202
	vstr.32 s1,[sp,#48]  @%s201
	vstr.32 s2,[sp,#44]  @%s200
	vstr.32 s3,[sp,#40]  @%s199
	vstr.32 s4,[sp,#36]  @%s198
	vstr.32 s5,[sp,#32]  @%s197
	vstr.32 s6,[sp,#28]  @%s196
	vstr.32 s7,[sp,#24]  @%s195
	vstr.32 s8,[sp,#20]  @%s194
	vstr.32 s9,[sp,#16]  @%s193
	vstr.32 s10,[sp,#12]  @%s192
	vstr.32 s11,[sp,#8]  @%s191
	vstr.32 s12,[sp,#4]  @%s190
	vstr.32 s13,[sp,#0]  @%s189
	vldr.32 s0,[fp,#-244]
	vldr.32 s1,[fp,#-240]
	vldr.32 s2,[fp,#-236]
	vldr.32 s3,[fp,#-232]
	vldr.32 s4,[fp,#-228]
	vldr.32 s5,[fp,#-224]
	vldr.32 s6,[fp,#-220]
	vldr.32 s7,[fp,#-216]
	vldr.32 s8,[fp,#-212]
	vldr.32 s9,[fp,#-248]
	vldr.32 s10,[fp,#-252]
	vldr.32 s11,[fp,#-256]
	vmov.f32 s12,s17
	vmov.f32 s13,s16
	vmov.f32 s31,s15
	vmov.f32 s15,s14
	vmov.f32 s14,s31
	bl params_f40
	add sp,sp,#96
	vmov.f32 s31,s0
	vpop.64 {d0,d1,d2,d3,d4,d5,d6,d7}
	add sp,sp,#4 @stack align 8bytes
	vmov.f32 s20,s31
	vmov.f32 s0,s20
	mov r9,#256
	add sp,sp,r9
	vpop.64 {d8,d9,d10,d11,d12,d13,d14,d15}
	pop {r6,r7,r8}
	pop {fp,pc}
.params_f40L2:
	mvn r8,#47
	add r7,fp,r8
	@call void @memset(i32 %r217,i32 0,i32 40)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#40
	bl memset
	add sp,sp,#4 @stack align 8bytes
	vldr.32 s29,[fp,#-52]
	vldr.32 s28,[fp,#-56]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-60]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-64]
	vadd.f32 s27,s28,s29
	mvn r8,#47
	add r7,fp,r8
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-68]
	vldr.32 s28,[fp,#-72]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-76]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-80]
	vadd.f32 s27,s28,s29
	mov r8,#1
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-84]
	vldr.32 s28,[fp,#-88]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-92]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-96]
	vadd.f32 s27,s28,s29
	mov r8,#2
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-100]
	vldr.32 s28,[fp,#-104]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-108]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-112]
	vadd.f32 s27,s28,s29
	mov r8,#3
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-116]
	vldr.32 s28,[fp,#-120]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-124]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-128]
	vadd.f32 s27,s28,s29
	mov r8,#4
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-132]
	vldr.32 s28,[fp,#-136]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-140]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-144]
	vadd.f32 s27,s28,s29
	mov r8,#5
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-148]
	vldr.32 s28,[fp,#-152]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-156]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-160]
	vadd.f32 s27,s28,s29
	mov r8,#6
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-164]
	vldr.32 s28,[fp,#-168]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-172]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-176]
	vadd.f32 s27,s28,s29
	mov r8,#7
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-180]
	vldr.32 s28,[fp,#-184]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-188]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-192]
	vadd.f32 s27,s28,s29
	mov r8,#8
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	vldr.32 s29,[fp,#-196]
	vldr.32 s28,[fp,#-200]
	vadd.f32 s27,s29,s28
	vldr.32 s29,[fp,#-204]
	vadd.f32 s28,s27,s29
	vldr.32 s29,[fp,#-208]
	vadd.f32 s27,s28,s29
	mov r8,#9
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vstr.32 s27,[r7]
	mov r8,#10
	mvn r7,#47
	add r6,fp,r7
	@call void @putfarray(i32 %r167,ptr %r168)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r6
	bl putfarray
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC15
	ldr r7,[r8]
	mov r8,r7
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	vldr.32 s29,[r7]
	vmov.f32 s0,s29
	mov r9,#256
	add sp,sp,r9
	vpop.64 {d8,d9,d10,d11,d12,d13,d14,d15}
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
