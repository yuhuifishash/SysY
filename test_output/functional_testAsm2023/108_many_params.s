.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
param32_rec:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	mov r9,#232
	sub sp,sp,r9
.param32_recL0:
	mov r9,r0
	str r9,[fp,#-152]
	mov r9,r1
	str r9,[fp,#-148]
	mov r9,r2
	str r9,[fp,#-144]
	mov r9,r3
	str r9,[fp,#-140]
	ldr r9,[fp,#140]
	str r9,[fp,#-228]
	ldr r9,[fp,#136]
	str r9,[fp,#-224]
	ldr r9,[fp,#132]
	str r9,[fp,#-220]
	ldr r9,[fp,#128]
	str r9,[fp,#-216]
	ldr r9,[fp,#124]
	str r9,[fp,#-212]
	ldr r9,[fp,#120]
	str r9,[fp,#-208]
	ldr r9,[fp,#116]
	str r9,[fp,#-204]
	ldr r9,[fp,#112]
	str r9,[fp,#-200]
	ldr r9,[fp,#108]
	str r9,[fp,#-196]
	ldr r9,[fp,#104]
	str r9,[fp,#-192]
	ldr r9,[fp,#100]
	str r9,[fp,#-188]
	ldr r9,[fp,#96]
	str r9,[fp,#-184]
	ldr r9,[fp,#92]
	str r9,[fp,#-180]
	ldr r9,[fp,#88]
	str r9,[fp,#-176]
	ldr r9,[fp,#84]
	str r9,[fp,#-172]
	ldr r9,[fp,#80]
	str r9,[fp,#-168]
	ldr r9,[fp,#76]
	str r9,[fp,#-164]
	ldr r9,[fp,#72]
	str r9,[fp,#-160]
	ldr r9,[fp,#68]
	str r9,[fp,#-156]
	ldr r0,[fp,#64]
	ldr r1,[fp,#60]
	ldr r2,[fp,#56]
	ldr r3,[fp,#52]
	ldr r4,[fp,#48]
	ldr r5,[fp,#44]
	ldr r6,[fp,#40]
	ldr r7,[fp,#36]
	ldr r8,[fp,#32]
	ldr r9,[fp,#-152]
	str r9,[fp,#-12]
	ldr r9,[fp,#-148]
	str r9,[fp,#-16]
	ldr r9,[fp,#-144]
	str r9,[fp,#-20]
	ldr r9,[fp,#-140]
	str r9,[fp,#-24]
	str r8,[fp,#-28]
	str r7,[fp,#-32]
	str r6,[fp,#-36]
	str r5,[fp,#-40]
	str r4,[fp,#-44]
	str r3,[fp,#-48]
	str r2,[fp,#-52]
	str r1,[fp,#-56]
	str r0,[fp,#-60]
	ldr r9,[fp,#-156]
	str r9,[fp,#-64]
	ldr r9,[fp,#-160]
	str r9,[fp,#-68]
	ldr r9,[fp,#-164]
	str r9,[fp,#-72]
	ldr r9,[fp,#-168]
	str r9,[fp,#-76]
	ldr r9,[fp,#-172]
	str r9,[fp,#-80]
	ldr r9,[fp,#-176]
	str r9,[fp,#-84]
	ldr r9,[fp,#-180]
	str r9,[fp,#-88]
	ldr r9,[fp,#-184]
	str r9,[fp,#-92]
	ldr r9,[fp,#-188]
	str r9,[fp,#-96]
	ldr r9,[fp,#-192]
	str r9,[fp,#-100]
	ldr r9,[fp,#-196]
	str r9,[fp,#-104]
	ldr r9,[fp,#-200]
	str r9,[fp,#-108]
	ldr r9,[fp,#-204]
	str r9,[fp,#-112]
	ldr r9,[fp,#-208]
	str r9,[fp,#-116]
	ldr r9,[fp,#-212]
	str r9,[fp,#-120]
	ldr r9,[fp,#-216]
	str r9,[fp,#-124]
	ldr r9,[fp,#-220]
	str r9,[fp,#-128]
	ldr r9,[fp,#-224]
	str r9,[fp,#-132]
	ldr r9,[fp,#-228]
	str r9,[fp,#-136]
.param32_recL1:
	ldr r8,[fp,#-12]
	mov r7,#0
	cmp r8,r7
	beq .param32_recL2
.param32_recL3:
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r9,r8,r7
	str r9,[fp,#-152]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	add r5,r8,r7
	movw r8,#1
	movt r8,#15232  @ 998244353
	mov r7,r8
	@%r77 = call i32 @__modsi3(i32 %r75,i32 %r76)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	mov r1,r7
	bl __modsi3
	str r0,[fp,#-148]
	add sp,sp,#4 @stack align 8bytes
	ldr r9,[fp,#-24]
	str r9,[fp,#-144]
	ldr r9,[fp,#-28]
	str r9,[fp,#-140]
	ldr r9,[fp,#-32]
	str r9,[fp,#-156]
	ldr r9,[fp,#-36]
	str r9,[fp,#-160]
	ldr r9,[fp,#-40]
	str r9,[fp,#-164]
	ldr r9,[fp,#-44]
	str r9,[fp,#-168]
	ldr r9,[fp,#-48]
	str r9,[fp,#-172]
	ldr r9,[fp,#-52]
	str r9,[fp,#-176]
	ldr r9,[fp,#-56]
	str r9,[fp,#-180]
	ldr r9,[fp,#-60]
	str r9,[fp,#-184]
	ldr r9,[fp,#-64]
	str r9,[fp,#-188]
	ldr r9,[fp,#-68]
	str r9,[fp,#-192]
	ldr r9,[fp,#-72]
	str r9,[fp,#-196]
	ldr r9,[fp,#-76]
	str r9,[fp,#-200]
	ldr r9,[fp,#-80]
	str r9,[fp,#-204]
	ldr r9,[fp,#-84]
	str r9,[fp,#-208]
	ldr r9,[fp,#-88]
	str r9,[fp,#-212]
	ldr r9,[fp,#-92]
	str r9,[fp,#-216]
	ldr r9,[fp,#-96]
	str r9,[fp,#-220]
	ldr r9,[fp,#-100]
	str r9,[fp,#-224]
	ldr r9,[fp,#-104]
	str r9,[fp,#-228]
	ldr r9,[fp,#-108]
	str r9,[fp,#-232]
	ldr r2,[fp,#-112]
	ldr r1,[fp,#-116]
	ldr r0,[fp,#-120]
	ldr r6,[fp,#-124]
	ldr r8,[fp,#-128]
	ldr r7,[fp,#-132]
	ldr r5,[fp,#-136]
	mov r4,#0
	@%r108 = call i32 @param32_rec(i32 %r72,i32 %r77,i32 %r78,i32 %r79,i32 %r80,i32 %r81,i32 %r82,i32 %r83,i32 %r84,i32 %r85,i32 %r86,i32 %r87,i32 %r88,i32 %r89,i32 %r90,i32 %r91,i32 %r92,i32 %r93,i32 %r94,i32 %r95,i32 %r96,i32 %r97,i32 %r98,i32 %r99,i32 %r100,i32 %r101,i32 %r102,i32 %r103,i32 %r104,i32 %r105,i32 %r106,i32 %r107)
	push {r0,r1,r2}
	sub sp,sp,#112
	str r4,[sp,#108]  @%r107
	str r5,[sp,#104]  @%r106
	str r7,[sp,#100]  @%r105
	str r8,[sp,#96]  @%r104
	str r6,[sp,#92]  @%r103
	str r0,[sp,#88]  @%r102
	str r1,[sp,#84]  @%r101
	str r2,[sp,#80]  @%r100
	ldr r9,[fp,#-232]
	str r9,[sp,#76]  @%r99
	ldr r9,[fp,#-228]
	str r9,[sp,#72]  @%r98
	ldr r9,[fp,#-224]
	str r9,[sp,#68]  @%r97
	ldr r9,[fp,#-220]
	str r9,[sp,#64]  @%r96
	ldr r9,[fp,#-216]
	str r9,[sp,#60]  @%r95
	ldr r9,[fp,#-212]
	str r9,[sp,#56]  @%r94
	ldr r9,[fp,#-208]
	str r9,[sp,#52]  @%r93
	ldr r9,[fp,#-204]
	str r9,[sp,#48]  @%r92
	ldr r9,[fp,#-200]
	str r9,[sp,#44]  @%r91
	ldr r9,[fp,#-196]
	str r9,[sp,#40]  @%r90
	ldr r9,[fp,#-192]
	str r9,[sp,#36]  @%r89
	ldr r9,[fp,#-188]
	str r9,[sp,#32]  @%r88
	ldr r9,[fp,#-184]
	str r9,[sp,#28]  @%r87
	ldr r9,[fp,#-180]
	str r9,[sp,#24]  @%r86
	ldr r9,[fp,#-176]
	str r9,[sp,#20]  @%r85
	ldr r9,[fp,#-172]
	str r9,[sp,#16]  @%r84
	ldr r9,[fp,#-168]
	str r9,[sp,#12]  @%r83
	ldr r9,[fp,#-164]
	str r9,[sp,#8]  @%r82
	ldr r9,[fp,#-160]
	str r9,[sp,#4]  @%r81
	ldr r9,[fp,#-156]
	str r9,[sp,#0]  @%r80
	ldr r0,[fp,#-152]
	ldr r1,[fp,#-148]
	ldr r2,[fp,#-144]
	ldr r3,[fp,#-140]
	bl param32_rec
	add sp,sp,#112
	mov r3,r0
	pop {r0,r1,r2}
	mov r0,r3
	mov r9,#232
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.param32_recL2:
	ldr r8,[fp,#-16]
	mov r0,r8
	mov r9,#232
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
param32_arr:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#116
.param32_arrL0:
	mov r9,r3
	str r9,[fp,#-116]
	ldr r9,[fp,#140]
	str r9,[fp,#-104]
	ldr r9,[fp,#136]
	str r9,[fp,#-100]
	ldr r9,[fp,#132]
	str r9,[fp,#-96]
	ldr r9,[fp,#128]
	str r9,[fp,#-92]
	ldr r9,[fp,#124]
	str r9,[fp,#-88]
	ldr r9,[fp,#120]
	str r9,[fp,#-84]
	ldr r9,[fp,#116]
	str r9,[fp,#-80]
	ldr r9,[fp,#112]
	str r9,[fp,#-76]
	ldr r9,[fp,#108]
	str r9,[fp,#-72]
	ldr r9,[fp,#104]
	str r9,[fp,#-68]
	ldr r9,[fp,#100]
	str r9,[fp,#-64]
	ldr r9,[fp,#96]
	str r9,[fp,#-60]
	ldr r9,[fp,#92]
	str r9,[fp,#-56]
	ldr r9,[fp,#88]
	str r9,[fp,#-52]
	ldr r9,[fp,#84]
	str r9,[fp,#-48]
	ldr r9,[fp,#80]
	str r9,[fp,#-44]
	ldr r9,[fp,#76]
	str r9,[fp,#-40]
	ldr r9,[fp,#72]
	str r9,[fp,#-36]
	ldr r9,[fp,#68]
	str r9,[fp,#-32]
	ldr r9,[fp,#64]
	str r9,[fp,#-28]
	ldr r9,[fp,#60]
	str r9,[fp,#-24]
	ldr r9,[fp,#56]
	str r9,[fp,#-20]
	ldr r9,[fp,#52]
	str r9,[fp,#-16]
	ldr r9,[fp,#48]
	str r9,[fp,#-108]
	ldr r9,[fp,#44]
	str r9,[fp,#-112]
	ldr r6,[fp,#40]
	ldr r7,[fp,#36]
	ldr r8,[fp,#32]
.param32_arrL1:
	mov r4,#0
	mov r5,r4
	add r4,r0,r5,lsl #2
	ldr r5,[r4]
	mov r4,#1
	mov r3,r4
	add r4,r0,r3,lsl #2
	ldr r3,[r4]
	add r4,r5,r3
	str r4,[fp,#-12]
	ldr r5,[fp,#-12]
	mov r4,#0
	mov r3,r4
	add r4,r1,r3,lsl #2
	ldr r3,[r4]
	add r4,r5,r3
	mov r5,#1
	mov r3,r5
	add r5,r1,r3,lsl #2
	ldr r3,[r5]
	add r5,r4,r3
	str r5,[fp,#-12]
	ldr r5,[fp,#-12]
	mov r4,#0
	mov r3,r4
	add r4,r2,r3,lsl #2
	ldr r3,[r4]
	add r4,r5,r3
	mov r5,#1
	mov r3,r5
	add r5,r2,r3,lsl #2
	ldr r3,[r5]
	add r5,r4,r3
	str r5,[fp,#-12]
	ldr r5,[fp,#-12]
	mov r4,#0
	mov r3,r4
	ldr r9,[fp,#-116]
	add r4,r9,r3,lsl #2
	ldr r3,[r4]
	add r4,r5,r3
	mov r5,#1
	mov r3,r5
	ldr r9,[fp,#-116]
	add r5,r9,r3,lsl #2
	ldr r3,[r5]
	add r5,r4,r3
	str r5,[fp,#-12]
	ldr r5,[fp,#-12]
	mov r4,#0
	mov r3,r4
	add r4,r8,r3,lsl #2
	ldr r3,[r4]
	add r4,r5,r3
	mov r5,#1
	mov r3,r5
	add r5,r8,r3,lsl #2
	ldr r8,[r5]
	add r5,r4,r8
	str r5,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r5,#0
	mov r4,r5
	add r5,r7,r4,lsl #2
	ldr r4,[r5]
	add r5,r8,r4
	mov r8,#1
	mov r4,r8
	add r8,r7,r4,lsl #2
	ldr r7,[r8]
	add r8,r5,r7
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r5,r7
	add r7,r6,r5,lsl #2
	ldr r5,[r7]
	add r7,r8,r5
	mov r8,#1
	mov r5,r8
	add r8,r6,r5,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-112]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-112]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-108]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-108]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-16]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-16]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-20]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-20]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-24]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-24]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-28]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-28]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-32]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-32]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-36]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-36]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-40]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-40]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-44]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-44]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-48]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-48]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-52]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-52]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-56]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-56]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-60]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-60]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-64]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-64]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-68]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-68]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-72]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-72]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-76]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-76]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-80]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-80]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-84]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-84]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-88]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-88]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-92]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-92]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-96]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-96]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-100]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-100]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#0
	mov r6,r7
	ldr r9,[fp,#-104]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,#1
	mov r6,r8
	ldr r9,[fp,#-104]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#116
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	mov r9,#368
	sub sp,sp,r9
.mainL0:
.mainL1:
	movw r8,#65268
	movt r8,#65535  @ -268
	add r7,fp,r8
	@call void @memset(i32 %r125,i32 0,i32 256)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#256
	bl memset
	add sp,sp,#4 @stack align 8bytes
	@%r1 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	str r0,[fp,#-272]
	add sp,sp,#4 @stack align 8bytes
	@%r2 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	str r0,[fp,#-276]
	add sp,sp,#4 @stack align 8bytes
	@%r3 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	str r0,[fp,#-280]
	add sp,sp,#4 @stack align 8bytes
	@%r4 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	str r0,[fp,#-284]
	add sp,sp,#4 @stack align 8bytes
	@%r5 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	str r0,[fp,#-288]
	add sp,sp,#4 @stack align 8bytes
	@%r6 = call i32 @getint()
	push {r3}
	bl getint
	str r0,[fp,#-292]
	pop {r3}
	@%r7 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	push {r2,r3}
	bl getint
	str r0,[fp,#-296]
	pop {r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@%r8 = call i32 @getint()
	push {r1,r2,r3}
	bl getint
	str r0,[fp,#-300]
	pop {r1,r2,r3}
	@%r9 = call i32 @getint()
	push {r1,r2,r3}
	bl getint
	pop {r1,r2,r3}
	@%r10 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	bl getint
	mov r8,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@%r11 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	bl getint
	mov r7,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@%r12 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	bl getint
	mov r6,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@%r13 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	bl getint
	mov r5,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@%r14 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	bl getint
	mov r4,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@%r15 = call i32 @getint()
	push {r0,r1,r2}
	bl getint
	mov r3,r0
	pop {r0,r1,r2}
	@%r16 = call i32 @getint()
	push {r0,r1,r3}
	bl getint
	mov r2,r0
	pop {r0,r1,r3}
	@%r17 = call i32 @param16(i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7,i32 %r8,i32 %r9,i32 %r10,i32 %r11,i32 %r12,i32 %r13,i32 %r14,i32 %r15,i32 %r16)
	push {r0,r2,r3}
	sub sp,sp,#48
	str r2,[sp,#44]  @%r16
	str r3,[sp,#40]  @%r15
	str r4,[sp,#36]  @%r14
	str r5,[sp,#32]  @%r13
	str r6,[sp,#28]  @%r12
	str r7,[sp,#24]  @%r11
	str r8,[sp,#20]  @%r10
	str r0,[sp,#16]  @%r9
	ldr r9,[fp,#-300]
	str r9,[sp,#12]  @%r8
	ldr r9,[fp,#-296]
	str r9,[sp,#8]  @%r7
	ldr r9,[fp,#-292]
	str r9,[sp,#4]  @%r6
	ldr r9,[fp,#-288]
	str r9,[sp,#0]  @%r5
	ldr r0,[fp,#-272]
	ldr r1,[fp,#-276]
	ldr r2,[fp,#-280]
	ldr r3,[fp,#-284]
	bl param16
	add sp,sp,#48
	mov r1,r0
	pop {r0,r2,r3}
	movw r8,#65268
	movt r8,#65535  @ -268
	add r7,fp,r8
	str r1,[r7]
	movw r8,#8848
	movt r8,#0  @ 8848
	mov r7,r8
	mov r8,#1
	movw r6,#65268
	movt r6,#65535  @ -268
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	mov r8,#1
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL3
.mainL5:
	mov r8,#0
	lsl r7,r8,#1
	mov r8,r7
	movw r7,#65268
	movt r7,#65535  @ -268
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	str r9,[fp,#-272]
	mov r8,#1
	lsl r6,r8,#1
	mov r8,r6
	movw r6,#65268
	movt r6,#65535  @ -268
	add r5,fp,r6
	add r9,r5,r8,lsl #2
	str r9,[fp,#-280]
	mov r8,#2
	lsl r5,r8,#1
	mov r8,r5
	movw r5,#65268
	movt r5,#65535  @ -268
	add r4,fp,r5
	add r9,r4,r8,lsl #2
	str r9,[fp,#-296]
	mov r8,#3
	lsl r4,r8,#1
	mov r8,r4
	movw r4,#65268
	movt r4,#65535  @ -268
	add r3,fp,r4
	add r9,r3,r8,lsl #2
	str r9,[fp,#-300]
	mov r8,#4
	lsl r3,r8,#1
	mov r8,r3
	movw r3,#65268
	movt r3,#65535  @ -268
	add r2,fp,r3
	add r9,r2,r8,lsl #2
	str r9,[fp,#-292]
	mov r8,#5
	lsl r2,r8,#1
	mov r8,r2
	movw r2,#65268
	movt r2,#65535  @ -268
	add r1,fp,r2
	add r9,r1,r8,lsl #2
	str r9,[fp,#-276]
	mov r8,#6
	lsl r1,r8,#1
	mov r8,r1
	movw r1,#65268
	movt r1,#65535  @ -268
	add r0,fp,r1
	add r9,r0,r8,lsl #2
	str r9,[fp,#-288]
	mov r8,#7
	lsl r0,r8,#1
	mov r8,r0
	movw r0,#65268
	movt r0,#65535  @ -268
	add r7,fp,r0
	add r9,r7,r8,lsl #2
	str r9,[fp,#-284]
	mov r8,#8
	lsl r7,r8,#1
	mov r8,r7
	movw r7,#65268
	movt r7,#65535  @ -268
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	str r9,[fp,#-304]
	mov r8,#9
	lsl r6,r8,#1
	mov r8,r6
	movw r6,#65268
	movt r6,#65535  @ -268
	add r5,fp,r6
	add r9,r5,r8,lsl #2
	str r9,[fp,#-308]
	mov r8,#10
	lsl r5,r8,#1
	mov r8,r5
	movw r5,#65268
	movt r5,#65535  @ -268
	add r4,fp,r5
	add r9,r4,r8,lsl #2
	str r9,[fp,#-312]
	mov r8,#11
	lsl r4,r8,#1
	mov r8,r4
	movw r4,#65268
	movt r4,#65535  @ -268
	add r3,fp,r4
	add r9,r3,r8,lsl #2
	str r9,[fp,#-316]
	mov r8,#12
	lsl r3,r8,#1
	mov r8,r3
	movw r3,#65268
	movt r3,#65535  @ -268
	add r2,fp,r3
	add r9,r2,r8,lsl #2
	str r9,[fp,#-320]
	mov r8,#13
	lsl r2,r8,#1
	mov r8,r2
	movw r2,#65268
	movt r2,#65535  @ -268
	add r1,fp,r2
	add r9,r1,r8,lsl #2
	str r9,[fp,#-324]
	mov r8,#14
	lsl r1,r8,#1
	mov r8,r1
	movw r1,#65268
	movt r1,#65535  @ -268
	add r0,fp,r1
	add r9,r0,r8,lsl #2
	str r9,[fp,#-328]
	mov r8,#15
	lsl r0,r8,#1
	mov r8,r0
	movw r0,#65268
	movt r0,#65535  @ -268
	add r7,fp,r0
	add r9,r7,r8,lsl #2
	str r9,[fp,#-332]
	mov r8,#16
	lsl r7,r8,#1
	mov r8,r7
	movw r7,#65268
	movt r7,#65535  @ -268
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	str r9,[fp,#-336]
	mov r8,#17
	lsl r6,r8,#1
	mov r8,r6
	movw r6,#65268
	movt r6,#65535  @ -268
	add r5,fp,r6
	add r9,r5,r8,lsl #2
	str r9,[fp,#-340]
	mov r8,#18
	lsl r5,r8,#1
	mov r8,r5
	movw r5,#65268
	movt r5,#65535  @ -268
	add r4,fp,r5
	add r9,r4,r8,lsl #2
	str r9,[fp,#-344]
	mov r8,#19
	lsl r4,r8,#1
	mov r8,r4
	movw r4,#65268
	movt r4,#65535  @ -268
	add r3,fp,r4
	add r9,r3,r8,lsl #2
	str r9,[fp,#-348]
	mov r8,#20
	lsl r3,r8,#1
	mov r8,r3
	movw r3,#65268
	movt r3,#65535  @ -268
	add r2,fp,r3
	add r9,r2,r8,lsl #2
	str r9,[fp,#-352]
	mov r8,#21
	lsl r2,r8,#1
	mov r8,r2
	movw r2,#65268
	movt r2,#65535  @ -268
	add r1,fp,r2
	add r9,r1,r8,lsl #2
	str r9,[fp,#-356]
	mov r8,#22
	lsl r1,r8,#1
	mov r8,r1
	movw r1,#65268
	movt r1,#65535  @ -268
	add r0,fp,r1
	add r9,r0,r8,lsl #2
	str r9,[fp,#-360]
	mov r8,#23
	lsl r0,r8,#1
	mov r8,r0
	movw r0,#65268
	movt r0,#65535  @ -268
	add r7,fp,r0
	add r9,r7,r8,lsl #2
	str r9,[fp,#-364]
	mov r8,#24
	lsl r7,r8,#1
	mov r8,r7
	movw r7,#65268
	movt r7,#65535  @ -268
	add r6,fp,r7
	add r9,r6,r8,lsl #2
	str r9,[fp,#-368]
	mov r8,#25
	lsl r6,r8,#1
	mov r8,r6
	movw r6,#65268
	movt r6,#65535  @ -268
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	mov r8,#26
	lsl r5,r8,#1
	mov r8,r5
	movw r5,#65268
	movt r5,#65535  @ -268
	add r4,fp,r5
	add r5,r4,r8,lsl #2
	mov r8,#27
	lsl r4,r8,#1
	mov r8,r4
	movw r4,#65268
	movt r4,#65535  @ -268
	add r3,fp,r4
	add r4,r3,r8,lsl #2
	mov r8,#28
	lsl r3,r8,#1
	mov r8,r3
	movw r3,#65268
	movt r3,#65535  @ -268
	add r2,fp,r3
	add r3,r2,r8,lsl #2
	mov r8,#29
	lsl r2,r8,#1
	mov r8,r2
	movw r2,#65268
	movt r2,#65535  @ -268
	add r1,fp,r2
	add r2,r1,r8,lsl #2
	mov r8,#30
	lsl r1,r8,#1
	mov r8,r1
	movw r1,#65268
	movt r1,#65535  @ -268
	add r0,fp,r1
	add r1,r0,r8,lsl #2
	mov r8,#31
	lsl r0,r8,#1
	mov r8,r0
	movw r0,#65268
	movt r0,#65535  @ -268
	add r7,fp,r0
	add r0,r7,r8,lsl #2
	@%r122 = call i32 @param32_arr(ptr %r59,ptr %r61,ptr %r63,ptr %r65,ptr %r67,ptr %r69,ptr %r71,ptr %r73,ptr %r75,ptr %r77,ptr %r79,ptr %r81,ptr %r83,ptr %r85,ptr %r87,ptr %r89,ptr %r91,ptr %r93,ptr %r95,ptr %r97,ptr %r99,ptr %r101,ptr %r103,ptr %r105,ptr %r107,ptr %r109,ptr %r111,ptr %r113,ptr %r115,ptr %r117,ptr %r119,ptr %r121)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	sub sp,sp,#112
	str r0,[sp,#108]  @%r121
	str r1,[sp,#104]  @%r119
	str r2,[sp,#100]  @%r117
	str r3,[sp,#96]  @%r115
	str r4,[sp,#92]  @%r113
	str r5,[sp,#88]  @%r111
	str r6,[sp,#84]  @%r109
	ldr r9,[fp,#-368]
	str r9,[sp,#80]  @%r107
	ldr r9,[fp,#-364]
	str r9,[sp,#76]  @%r105
	ldr r9,[fp,#-360]
	str r9,[sp,#72]  @%r103
	ldr r9,[fp,#-356]
	str r9,[sp,#68]  @%r101
	ldr r9,[fp,#-352]
	str r9,[sp,#64]  @%r99
	ldr r9,[fp,#-348]
	str r9,[sp,#60]  @%r97
	ldr r9,[fp,#-344]
	str r9,[sp,#56]  @%r95
	ldr r9,[fp,#-340]
	str r9,[sp,#52]  @%r93
	ldr r9,[fp,#-336]
	str r9,[sp,#48]  @%r91
	ldr r9,[fp,#-332]
	str r9,[sp,#44]  @%r89
	ldr r9,[fp,#-328]
	str r9,[sp,#40]  @%r87
	ldr r9,[fp,#-324]
	str r9,[sp,#36]  @%r85
	ldr r9,[fp,#-320]
	str r9,[sp,#32]  @%r83
	ldr r9,[fp,#-316]
	str r9,[sp,#28]  @%r81
	ldr r9,[fp,#-312]
	str r9,[sp,#24]  @%r79
	ldr r9,[fp,#-308]
	str r9,[sp,#20]  @%r77
	ldr r9,[fp,#-304]
	str r9,[sp,#16]  @%r75
	ldr r9,[fp,#-284]
	str r9,[sp,#12]  @%r73
	ldr r9,[fp,#-288]
	str r9,[sp,#8]  @%r71
	ldr r9,[fp,#-276]
	str r9,[sp,#4]  @%r69
	ldr r9,[fp,#-292]
	str r9,[sp,#0]  @%r67
	ldr r0,[fp,#-272]
	ldr r1,[fp,#-280]
	ldr r2,[fp,#-296]
	ldr r3,[fp,#-300]
	bl param32_arr
	add sp,sp,#112
	mov r8,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r122)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r123)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	mov r9,#368
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL3:
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	mov r8,#1
	lsl r7,r6,#1
	mov r6,r7
	add r6,r6,r8
	movw r8,#65268
	movt r8,#65535  @ -268
	add r7,fp,r8
	add r8,r7,r6,lsl #2
	ldr r7,[r8]
	mov r8,#1
	sub r6,r7,r8
	ldr r8,[fp,#-12]
	mov r7,#0
	lsl r5,r8,#1
	mov r8,r5
	add r8,r8,r7
	movw r7,#65268
	movt r7,#65535  @ -268
	add r5,fp,r7
	add r7,r5,r8,lsl #2
	str r6,[r7]
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	mov r8,#0
	lsl r7,r6,#1
	mov r6,r7
	add r6,r6,r8
	movw r8,#65268
	movt r8,#65535  @ -268
	add r7,fp,r8
	add r8,r7,r6,lsl #2
	ldr r7,[r8]
	mov r8,#2
	sub r6,r7,r8
	ldr r8,[fp,#-12]
	mov r7,#1
	lsl r5,r8,#1
	mov r8,r5
	add r8,r8,r7
	movw r7,#65268
	movt r7,#65535  @ -268
	add r5,fp,r7
	add r7,r5,r8,lsl #2
	str r6,[r7]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.mainL4:
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL3
	bge .mainL5
param16:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	mov r9,#232
	sub sp,sp,r9
.param16L0:
	mov r9,r0
	str r9,[fp,#-152]
	mov r9,r1
	str r9,[fp,#-148]
	mov r9,r2
	str r9,[fp,#-144]
	mov r9,r3
	str r9,[fp,#-140]
	ldr r9,[fp,#76]
	str r9,[fp,#-164]
	ldr r9,[fp,#72]
	str r9,[fp,#-160]
	ldr r9,[fp,#68]
	str r9,[fp,#-156]
	ldr r0,[fp,#64]
	ldr r1,[fp,#60]
	ldr r2,[fp,#56]
	ldr r3,[fp,#52]
	ldr r4,[fp,#48]
	ldr r5,[fp,#44]
	ldr r6,[fp,#40]
	ldr r7,[fp,#36]
	ldr r8,[fp,#32]
	ldr r9,[fp,#-152]
	str r9,[fp,#-76]
	ldr r9,[fp,#-148]
	str r9,[fp,#-80]
	ldr r9,[fp,#-144]
	str r9,[fp,#-84]
	ldr r9,[fp,#-140]
	str r9,[fp,#-88]
	str r8,[fp,#-92]
	str r7,[fp,#-96]
	str r6,[fp,#-100]
	str r5,[fp,#-104]
	str r4,[fp,#-108]
	str r3,[fp,#-112]
	str r2,[fp,#-116]
	str r1,[fp,#-120]
	str r0,[fp,#-124]
	ldr r9,[fp,#-156]
	str r9,[fp,#-128]
	ldr r9,[fp,#-160]
	str r9,[fp,#-132]
	ldr r9,[fp,#-164]
	str r9,[fp,#-136]
.param16L1:
	mvn r8,#71
	add r7,fp,r8
	@call void @memset(i32 %r132,i32 0,i32 64)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#64
	bl memset
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-76]
	mvn r7,#71
	add r6,fp,r7
	str r8,[r6]
	ldr r8,[fp,#-80]
	mov r7,#1
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-84]
	mov r7,#2
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-88]
	mov r7,#3
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-92]
	mov r7,#4
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-96]
	mov r7,#5
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-100]
	mov r7,#6
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-104]
	mov r7,#7
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-108]
	mov r7,#8
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-112]
	mov r7,#9
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-116]
	mov r7,#10
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-120]
	mov r7,#11
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-124]
	mov r7,#12
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-128]
	mov r7,#13
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-132]
	mov r7,#14
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-136]
	mov r7,#15
	mvn r6,#71
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mvn r8,#71
	add r7,fp,r8
	mov r8,#16
	@call void @sort(ptr %r65,i32 %r66)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r8
	bl sort
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r7,r8
	mvn r8,#71
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r9,[r8]
	str r9,[fp,#-152]
	mov r8,#1
	mov r6,r8
	mvn r8,#71
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	ldr r9,[r8]
	str r9,[fp,#-148]
	mov r8,#2
	mov r5,r8
	mvn r8,#71
	add r4,fp,r8
	add r8,r4,r5,lsl #2
	ldr r9,[r8]
	str r9,[fp,#-144]
	mov r8,#3
	mov r4,r8
	mvn r8,#71
	add r3,fp,r8
	add r8,r3,r4,lsl #2
	ldr r9,[r8]
	str r9,[fp,#-140]
	mov r8,#4
	mov r3,r8
	mvn r8,#71
	add r2,fp,r8
	add r8,r2,r3,lsl #2
	ldr r9,[r8]
	str r9,[fp,#-156]
	mov r8,#5
	mov r2,r8
	mvn r8,#71
	add r1,fp,r8
	add r8,r1,r2,lsl #2
	ldr r9,[r8]
	str r9,[fp,#-160]
	mov r8,#6
	mov r1,r8
	mvn r8,#71
	add r0,fp,r8
	add r8,r0,r1,lsl #2
	ldr r9,[r8]
	str r9,[fp,#-164]
	mov r8,#7
	mov r0,r8
	mvn r8,#71
	add r7,fp,r8
	add r8,r7,r0,lsl #2
	ldr r9,[r8]
	str r9,[fp,#-168]
	mov r8,#8
	mov r0,r8
	mvn r8,#71
	add r6,fp,r8
	add r8,r6,r0,lsl #2
	ldr r9,[r8]
	str r9,[fp,#-172]
	mov r8,#9
	mov r0,r8
	mvn r8,#71
	add r5,fp,r8
	add r8,r5,r0,lsl #2
	ldr r9,[r8]
	str r9,[fp,#-176]
	mov r8,#10
	mov r0,r8
	mvn r8,#71
	add r4,fp,r8
	add r8,r4,r0,lsl #2
	ldr r9,[r8]
	str r9,[fp,#-180]
	mov r8,#11
	mov r0,r8
	mvn r8,#71
	add r3,fp,r8
	add r8,r3,r0,lsl #2
	ldr r9,[r8]
	str r9,[fp,#-184]
	mov r8,#12
	mov r0,r8
	mvn r8,#71
	add r2,fp,r8
	add r8,r2,r0,lsl #2
	ldr r9,[r8]
	str r9,[fp,#-188]
	mov r8,#13
	mov r0,r8
	mvn r8,#71
	add r1,fp,r8
	add r8,r1,r0,lsl #2
	ldr r9,[r8]
	str r9,[fp,#-192]
	mov r8,#14
	mov r0,r8
	mvn r8,#71
	add r7,fp,r8
	add r8,r7,r0,lsl #2
	ldr r9,[r8]
	str r9,[fp,#-196]
	mov r8,#15
	mov r0,r8
	mvn r8,#71
	add r6,fp,r8
	add r8,r6,r0,lsl #2
	ldr r9,[r8]
	str r9,[fp,#-200]
	ldr r9,[fp,#-76]
	str r9,[fp,#-204]
	ldr r9,[fp,#-80]
	str r9,[fp,#-208]
	ldr r9,[fp,#-84]
	str r9,[fp,#-212]
	ldr r9,[fp,#-88]
	str r9,[fp,#-216]
	ldr r9,[fp,#-92]
	str r9,[fp,#-220]
	ldr r9,[fp,#-96]
	str r9,[fp,#-224]
	ldr r9,[fp,#-100]
	str r9,[fp,#-228]
	ldr r9,[fp,#-104]
	str r9,[fp,#-232]
	ldr r6,[fp,#-108]
	ldr r8,[fp,#-112]
	ldr r0,[fp,#-116]
	ldr r5,[fp,#-120]
	ldr r4,[fp,#-124]
	ldr r3,[fp,#-128]
	ldr r2,[fp,#-132]
	ldr r1,[fp,#-136]
	@%r131 = call i32 @param32_rec(i32 %r69,i32 %r72,i32 %r75,i32 %r78,i32 %r81,i32 %r84,i32 %r87,i32 %r90,i32 %r93,i32 %r96,i32 %r99,i32 %r102,i32 %r105,i32 %r108,i32 %r111,i32 %r114,i32 %r115,i32 %r116,i32 %r117,i32 %r118,i32 %r119,i32 %r120,i32 %r121,i32 %r122,i32 %r123,i32 %r124,i32 %r125,i32 %r126,i32 %r127,i32 %r128,i32 %r129,i32 %r130)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	sub sp,sp,#112
	str r1,[sp,#108]  @%r130
	str r2,[sp,#104]  @%r129
	str r3,[sp,#100]  @%r128
	str r4,[sp,#96]  @%r127
	str r5,[sp,#92]  @%r126
	str r0,[sp,#88]  @%r125
	str r8,[sp,#84]  @%r124
	str r6,[sp,#80]  @%r123
	ldr r9,[fp,#-232]
	str r9,[sp,#76]  @%r122
	ldr r9,[fp,#-228]
	str r9,[sp,#72]  @%r121
	ldr r9,[fp,#-224]
	str r9,[sp,#68]  @%r120
	ldr r9,[fp,#-220]
	str r9,[sp,#64]  @%r119
	ldr r9,[fp,#-216]
	str r9,[sp,#60]  @%r118
	ldr r9,[fp,#-212]
	str r9,[sp,#56]  @%r117
	ldr r9,[fp,#-208]
	str r9,[sp,#52]  @%r116
	ldr r9,[fp,#-204]
	str r9,[sp,#48]  @%r115
	ldr r9,[fp,#-200]
	str r9,[sp,#44]  @%r114
	ldr r9,[fp,#-196]
	str r9,[sp,#40]  @%r111
	ldr r9,[fp,#-192]
	str r9,[sp,#36]  @%r108
	ldr r9,[fp,#-188]
	str r9,[sp,#32]  @%r105
	ldr r9,[fp,#-184]
	str r9,[sp,#28]  @%r102
	ldr r9,[fp,#-180]
	str r9,[sp,#24]  @%r99
	ldr r9,[fp,#-176]
	str r9,[sp,#20]  @%r96
	ldr r9,[fp,#-172]
	str r9,[sp,#16]  @%r93
	ldr r9,[fp,#-168]
	str r9,[sp,#12]  @%r90
	ldr r9,[fp,#-164]
	str r9,[sp,#8]  @%r87
	ldr r9,[fp,#-160]
	str r9,[sp,#4]  @%r84
	ldr r9,[fp,#-156]
	str r9,[sp,#0]  @%r81
	ldr r0,[fp,#-152]
	ldr r1,[fp,#-148]
	ldr r2,[fp,#-144]
	ldr r3,[fp,#-140]
	bl param32_rec
	add sp,sp,#112
	mov r7,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r9,#232
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
sort:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.sortL0:
	str r1,[fp,#-24]
.sortL1:
	mov r8,#0
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	mov r6,#1
	sub r5,r7,r6
	cmp r8,r5
	blt .sortL3
.sortL5:
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.sortL3:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-24]
	cmp r8,r7
	blt .sortL7
.sortL9:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.sortL4:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	mov r6,#1
	sub r5,r7,r6
	cmp r8,r5
	blt .sortL3
	bge .sortL5
.sortL7:
	ldr r8,[fp,#-20]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	mov r6,r8
	add r8,r0,r6,lsl #2
	ldr r6,[r8]
	cmp r7,r6
	blt .sortL10
.sortL11:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.sortL8:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-24]
	cmp r8,r7
	blt .sortL7
	bge .sortL9
.sortL10:
	ldr r8,[fp,#-20]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-20]
	mov r6,r8
	add r8,r0,r6,lsl #2
	str r7,[r8]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	bl .sortL11
	.section	.note.GNU-stack,"",%progbits
