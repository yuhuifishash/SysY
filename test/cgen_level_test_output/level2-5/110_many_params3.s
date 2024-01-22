.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	mov r9,#232
	sub sp,sp,r9
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-136]
	mov r8,#0
	str r8,[fp,#-132]
	mov r8,#0
	str r8,[fp,#-128]
	mov r8,#0
	str r8,[fp,#-124]
	mov r8,#0
	str r8,[fp,#-120]
	mov r8,#0
	str r8,[fp,#-116]
	mov r8,#0
	str r8,[fp,#-112]
	mov r8,#0
	str r8,[fp,#-108]
	mov r8,#0
	str r8,[fp,#-104]
	mov r8,#0
	str r8,[fp,#-100]
	mov r8,#0
	str r8,[fp,#-96]
	mov r8,#0
	str r8,[fp,#-92]
	mov r8,#0
	str r8,[fp,#-88]
	mov r8,#0
	str r8,[fp,#-84]
	mov r8,#0
	str r8,[fp,#-80]
	mov r8,#0
	str r8,[fp,#-76]
	mov r8,#0
	str r8,[fp,#-72]
	mov r8,#0
	str r8,[fp,#-68]
	mov r8,#0
	str r8,[fp,#-64]
	mov r8,#0
	str r8,[fp,#-60]
	mov r8,#0
	str r8,[fp,#-56]
	mov r8,#0
	str r8,[fp,#-52]
	mov r8,#0
	str r8,[fp,#-48]
	mov r8,#0
	str r8,[fp,#-44]
	mov r8,#0
	str r8,[fp,#-40]
	mov r8,#0
	str r8,[fp,#-36]
	mov r8,#0
	str r8,[fp,#-32]
	mov r8,#0
	str r8,[fp,#-28]
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-136]
	mov r8,#1
	str r8,[fp,#-132]
	mov r8,#2
	str r8,[fp,#-128]
	mov r8,#3
	str r8,[fp,#-124]
	mov r8,#4
	str r8,[fp,#-120]
	mov r8,#5
	str r8,[fp,#-116]
	mov r8,#6
	str r8,[fp,#-112]
	mov r8,#7
	str r8,[fp,#-108]
	mov r8,#8
	str r8,[fp,#-104]
	mov r8,#9
	str r8,[fp,#-100]
	mov r8,#0
	str r8,[fp,#-96]
	mov r8,#1
	str r8,[fp,#-92]
	mov r8,#2
	str r8,[fp,#-88]
	mov r8,#3
	str r8,[fp,#-84]
	mov r8,#4
	str r8,[fp,#-80]
	mov r8,#5
	str r8,[fp,#-76]
	mov r8,#6
	str r8,[fp,#-72]
	mov r8,#7
	str r8,[fp,#-68]
	mov r8,#8
	str r8,[fp,#-64]
	mov r8,#9
	str r8,[fp,#-60]
	mov r8,#0
	str r8,[fp,#-56]
	mov r8,#1
	str r8,[fp,#-52]
	mov r8,#2
	str r8,[fp,#-48]
	mov r8,#3
	str r8,[fp,#-44]
	mov r8,#4
	str r8,[fp,#-40]
	mov r8,#5
	str r8,[fp,#-36]
	mov r8,#6
	str r8,[fp,#-32]
	mov r8,#7
	str r8,[fp,#-28]
	mov r8,#8
	str r8,[fp,#-24]
	mov r8,#9
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#1
	str r8,[fp,#-12]
	ldr r8,[fp,#-136]
	ldr r7,[fp,#-132]
	ldr r6,[fp,#-128]
	ldr r5,[fp,#-124]
	ldr r4,[fp,#-120]
	ldr r3,[fp,#-116]
	ldr r2,[fp,#-112]
	ldr r1,[fp,#-108]
	@%r104 = call i32 @testParam8(i32 %r96,i32 %r97,i32 %r98,i32 %r99,i32 %r100,i32 %r101,i32 %r102,i32 %r103)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	sub sp,sp,#16
	str r1,[sp,#12]  @%r103
	str r2,[sp,#8]  @%r102
	str r3,[sp,#4]  @%r101
	str r4,[sp,#0]  @%r100
	mov r0,r8
	mov r1,r7
	mov r2,r6
	mov r3,r5
	bl testParam8
	add sp,sp,#16
	str r0,[fp,#-140]
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	ldr r9,[fp,#-132]
	str r9,[fp,#-144]
	ldr r9,[fp,#-128]
	str r9,[fp,#-148]
	ldr r9,[fp,#-124]
	str r9,[fp,#-152]
	ldr r9,[fp,#-120]
	str r9,[fp,#-156]
	ldr r9,[fp,#-116]
	str r9,[fp,#-160]
	ldr r9,[fp,#-112]
	str r9,[fp,#-164]
	ldr r2,[fp,#-108]
	ldr r1,[fp,#-104]
	ldr r0,[fp,#-100]
	ldr r8,[fp,#-96]
	ldr r7,[fp,#-92]
	ldr r6,[fp,#-88]
	ldr r5,[fp,#-84]
	ldr r4,[fp,#-80]
	ldr r3,[fp,#-76]
	@%r120 = call i32 @testParam16(i32 %r104,i32 %r105,i32 %r106,i32 %r107,i32 %r108,i32 %r109,i32 %r110,i32 %r111,i32 %r112,i32 %r113,i32 %r114,i32 %r115,i32 %r116,i32 %r117,i32 %r118,i32 %r119)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	sub sp,sp,#48
	str r3,[sp,#44]  @%r119
	str r4,[sp,#40]  @%r118
	str r5,[sp,#36]  @%r117
	str r6,[sp,#32]  @%r116
	str r7,[sp,#28]  @%r115
	str r8,[sp,#24]  @%r114
	str r0,[sp,#20]  @%r113
	str r1,[sp,#16]  @%r112
	str r2,[sp,#12]  @%r111
	ldr r9,[fp,#-164]
	str r9,[sp,#8]  @%r110
	ldr r9,[fp,#-160]
	str r9,[sp,#4]  @%r109
	ldr r9,[fp,#-156]
	str r9,[sp,#0]  @%r108
	ldr r0,[fp,#-140]
	ldr r1,[fp,#-144]
	ldr r2,[fp,#-148]
	ldr r3,[fp,#-152]
	bl testParam16
	add sp,sp,#48
	str r0,[fp,#-168]
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	ldr r9,[fp,#-132]
	str r9,[fp,#-140]
	ldr r9,[fp,#-128]
	str r9,[fp,#-148]
	ldr r9,[fp,#-124]
	str r9,[fp,#-164]
	ldr r9,[fp,#-120]
	str r9,[fp,#-160]
	ldr r9,[fp,#-116]
	str r9,[fp,#-144]
	ldr r9,[fp,#-112]
	str r9,[fp,#-156]
	ldr r9,[fp,#-108]
	str r9,[fp,#-152]
	ldr r9,[fp,#-104]
	str r9,[fp,#-172]
	ldr r9,[fp,#-100]
	str r9,[fp,#-176]
	ldr r9,[fp,#-96]
	str r9,[fp,#-180]
	ldr r9,[fp,#-92]
	str r9,[fp,#-184]
	ldr r9,[fp,#-88]
	str r9,[fp,#-188]
	ldr r9,[fp,#-84]
	str r9,[fp,#-192]
	ldr r9,[fp,#-80]
	str r9,[fp,#-196]
	ldr r9,[fp,#-76]
	str r9,[fp,#-200]
	ldr r9,[fp,#-72]
	str r9,[fp,#-204]
	ldr r9,[fp,#-68]
	str r9,[fp,#-208]
	ldr r9,[fp,#-64]
	str r9,[fp,#-212]
	ldr r9,[fp,#-60]
	str r9,[fp,#-216]
	ldr r9,[fp,#-56]
	str r9,[fp,#-220]
	ldr r9,[fp,#-52]
	str r9,[fp,#-224]
	ldr r9,[fp,#-48]
	str r9,[fp,#-228]
	ldr r9,[fp,#-44]
	str r9,[fp,#-232]
	ldr r3,[fp,#-40]
	ldr r2,[fp,#-36]
	ldr r1,[fp,#-32]
	ldr r0,[fp,#-28]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	ldr r6,[fp,#-16]
	ldr r5,[fp,#-12]
	@%r152 = call i32 @testParam32(i32 %r120,i32 %r121,i32 %r122,i32 %r123,i32 %r124,i32 %r125,i32 %r126,i32 %r127,i32 %r128,i32 %r129,i32 %r130,i32 %r131,i32 %r132,i32 %r133,i32 %r134,i32 %r135,i32 %r136,i32 %r137,i32 %r138,i32 %r139,i32 %r140,i32 %r141,i32 %r142,i32 %r143,i32 %r144,i32 %r145,i32 %r146,i32 %r147,i32 %r148,i32 %r149,i32 %r150,i32 %r151)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	sub sp,sp,#112
	str r5,[sp,#108]  @%r151
	str r6,[sp,#104]  @%r150
	str r7,[sp,#100]  @%r149
	str r8,[sp,#96]  @%r148
	str r0,[sp,#92]  @%r147
	str r1,[sp,#88]  @%r146
	str r2,[sp,#84]  @%r145
	str r3,[sp,#80]  @%r144
	ldr r9,[fp,#-232]
	str r9,[sp,#76]  @%r143
	ldr r9,[fp,#-228]
	str r9,[sp,#72]  @%r142
	ldr r9,[fp,#-224]
	str r9,[sp,#68]  @%r141
	ldr r9,[fp,#-220]
	str r9,[sp,#64]  @%r140
	ldr r9,[fp,#-216]
	str r9,[sp,#60]  @%r139
	ldr r9,[fp,#-212]
	str r9,[sp,#56]  @%r138
	ldr r9,[fp,#-208]
	str r9,[sp,#52]  @%r137
	ldr r9,[fp,#-204]
	str r9,[sp,#48]  @%r136
	ldr r9,[fp,#-200]
	str r9,[sp,#44]  @%r135
	ldr r9,[fp,#-196]
	str r9,[sp,#40]  @%r134
	ldr r9,[fp,#-192]
	str r9,[sp,#36]  @%r133
	ldr r9,[fp,#-188]
	str r9,[sp,#32]  @%r132
	ldr r9,[fp,#-184]
	str r9,[sp,#28]  @%r131
	ldr r9,[fp,#-180]
	str r9,[sp,#24]  @%r130
	ldr r9,[fp,#-176]
	str r9,[sp,#20]  @%r129
	ldr r9,[fp,#-172]
	str r9,[sp,#16]  @%r128
	ldr r9,[fp,#-152]
	str r9,[sp,#12]  @%r127
	ldr r9,[fp,#-156]
	str r9,[sp,#8]  @%r126
	ldr r9,[fp,#-144]
	str r9,[sp,#4]  @%r125
	ldr r9,[fp,#-160]
	str r9,[sp,#0]  @%r124
	ldr r0,[fp,#-168]
	ldr r1,[fp,#-140]
	ldr r2,[fp,#-148]
	ldr r3,[fp,#-164]
	bl testParam32
	add sp,sp,#112
	mov r4,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	str r4,[fp,#-136]
	ldr r8,[fp,#-136]
	@call void @putint(i32 %r153)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	mov r9,#232
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
testParam32:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	mov r9,#228
	sub sp,sp,r9
.testParam32L0:
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
.testParam32L1:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	ldr r6,[fp,#-20]
	mul r5,r7,r6
	add r7,r8,r5
	ldr r8,[fp,#-24]
	add r6,r7,r8
	ldr r8,[fp,#-28]
	add r7,r6,r8
	ldr r8,[fp,#-32]
	add r6,r7,r8
	ldr r8,[fp,#-36]
	add r7,r6,r8
	ldr r8,[fp,#-40]
	add r6,r7,r8
	ldr r8,[fp,#-44]
	add r7,r6,r8
	ldr r8,[fp,#-48]
	add r6,r7,r8
	ldr r8,[fp,#-52]
	add r7,r6,r8
	ldr r8,[fp,#-56]
	add r6,r7,r8
	ldr r8,[fp,#-60]
	sub r7,r6,r8
	ldr r8,[fp,#-64]
	sub r6,r7,r8
	ldr r8,[fp,#-68]
	sub r7,r6,r8
	ldr r8,[fp,#-72]
	sub r6,r7,r8
	ldr r8,[fp,#-76]
	sub r7,r6,r8
	ldr r8,[fp,#-80]
	sub r6,r7,r8
	ldr r8,[fp,#-84]
	sub r7,r6,r8
	ldr r8,[fp,#-88]
	sub r6,r7,r8
	ldr r8,[fp,#-92]
	sub r7,r6,r8
	ldr r8,[fp,#-96]
	sub r6,r7,r8
	ldr r8,[fp,#-100]
	add r7,r6,r8
	ldr r8,[fp,#-104]
	add r6,r7,r8
	ldr r8,[fp,#-108]
	add r7,r6,r8
	ldr r8,[fp,#-112]
	add r6,r7,r8
	ldr r8,[fp,#-116]
	add r7,r6,r8
	ldr r8,[fp,#-120]
	add r6,r7,r8
	ldr r8,[fp,#-124]
	add r7,r6,r8
	ldr r8,[fp,#-128]
	add r6,r7,r8
	ldr r8,[fp,#-132]
	add r7,r6,r8
	ldr r8,[fp,#-136]
	add r6,r7,r8
	mov r0,r6
	mov r9,#228
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
testParam16:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#100
.testParam16L0:
	mov r9,r0
	str r9,[fp,#-88]
	mov r9,r1
	str r9,[fp,#-84]
	mov r9,r2
	str r9,[fp,#-80]
	mov r9,r3
	str r9,[fp,#-76]
	ldr r9,[fp,#76]
	str r9,[fp,#-100]
	ldr r9,[fp,#72]
	str r9,[fp,#-96]
	ldr r9,[fp,#68]
	str r9,[fp,#-92]
	ldr r0,[fp,#64]
	ldr r1,[fp,#60]
	ldr r2,[fp,#56]
	ldr r3,[fp,#52]
	ldr r4,[fp,#48]
	ldr r5,[fp,#44]
	ldr r6,[fp,#40]
	ldr r7,[fp,#36]
	ldr r8,[fp,#32]
	ldr r9,[fp,#-88]
	str r9,[fp,#-12]
	ldr r9,[fp,#-84]
	str r9,[fp,#-16]
	ldr r9,[fp,#-80]
	str r9,[fp,#-20]
	ldr r9,[fp,#-76]
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
	ldr r9,[fp,#-92]
	str r9,[fp,#-64]
	ldr r9,[fp,#-96]
	str r9,[fp,#-68]
	ldr r9,[fp,#-100]
	str r9,[fp,#-72]
.testParam16L1:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	add r6,r8,r7
	ldr r8,[fp,#-20]
	add r7,r6,r8
	ldr r8,[fp,#-24]
	add r6,r7,r8
	ldr r8,[fp,#-28]
	sub r7,r6,r8
	ldr r8,[fp,#-32]
	add r6,r7,r8
	ldr r8,[fp,#-36]
	add r7,r6,r8
	ldr r8,[fp,#-40]
	add r6,r7,r8
	ldr r8,[fp,#-44]
	sub r7,r6,r8
	ldr r8,[fp,#-48]
	add r6,r7,r8
	ldr r8,[fp,#-52]
	sub r7,r6,r8
	ldr r8,[fp,#-56]
	add r6,r7,r8
	ldr r8,[fp,#-60]
	add r7,r6,r8
	ldr r8,[fp,#-64]
	add r6,r7,r8
	ldr r8,[fp,#-68]
	add r7,r6,r8
	ldr r8,[fp,#-72]
	add r6,r7,r8
	mov r0,r6
	add sp,sp,#100
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
testParam8:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#40
.testParam8L0:
	ldr r5,[fp,#32]
	ldr r6,[fp,#28]
	ldr r7,[fp,#24]
	ldr r8,[fp,#20]
	str r0,[fp,#-12]
	str r1,[fp,#-16]
	str r2,[fp,#-20]
	str r3,[fp,#-24]
	str r8,[fp,#-28]
	str r7,[fp,#-32]
	str r6,[fp,#-36]
	str r5,[fp,#-40]
.testParam8L1:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	sub r6,r8,r7
	ldr r8,[fp,#-20]
	add r7,r6,r8
	ldr r8,[fp,#-24]
	sub r6,r7,r8
	ldr r8,[fp,#-28]
	sub r7,r6,r8
	ldr r8,[fp,#-32]
	sub r6,r7,r8
	ldr r8,[fp,#-36]
	add r7,r6,r8
	ldr r8,[fp,#-40]
	add r6,r7,r8
	mov r0,r6
	add sp,sp,#40
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
