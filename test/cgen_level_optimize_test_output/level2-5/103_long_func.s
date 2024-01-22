.arch armv7-a
.fpu vfpv3-d16
.arm
.data
SHIFT_TABLE:
	.word  1
	.word  2
	.word  4
	.word  8
	.word  16
	.word  32
	.word  64
	.word  128
	.word  256
	.word  512
	.word  1024
	.word  2048
	.word  4096
	.word  8192
	.word  16384
	.word  32768
.text
.global main
.LPIC0:
	.word  SHIFT_TABLE
long_func:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	mov r9,#300
	sub sp,sp,r9
.long_funcL0:
.long_funcL1:
.long_funcL5:
	@call void @putint(i32 1)
	mov r0,#1
	bl putint
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
.long_funcL870:
	mov r9,#1
	str r9,[fp,#-12]
	mov r9,#1
	str r9,[fp,#-40]
	mov r9,#2
	str r9,[fp,#-44]
.long_funcL217:
.long_funcL869:
	mov r9,#0
	str r9,[fp,#-68]
	mov r9,#1
	str r9,[fp,#-100]
	ldr r9,[fp,#-40]
	mov r10,r9
	str r10,[fp,#-104]
	mov r9,#0
	str r9,[fp,#-76]
.long_funcL221:
	ldr r9,[fp,#-104]
	cmp r9,#0
	ldr r9,[fp,#-104]
	and r1,r9,#1
	it lt
	rsblt r1,r1,#0
	cmp r1,#0
	bne .long_funcL226
.long_funcL938:
	ldr r9,[fp,#-76]
	mov r10,r9
	str r10,[fp,#-80]
.long_funcL225:
	ldr r9,[fp,#-104]
	ldr r10,[fp,#-104]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-16]
	ldr r9,[fp,#-100]
	ldr r10,[fp,#-100]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-20]
	ldr r9,[fp,#-68]
	add r10,r9,#1
	str r10,[fp,#-72]
.long_funcL222:
	ldr r9,[fp,#-72]
	cmp r9,#16
	blt .long_funcL937
.long_funcL223:
	ldr r9,[fp,#-80]
	cmp r9,#0
	bne .long_funcL228
.long_funcL940:
	ldr r9,[fp,#-12]
	mov r10,r9
	str r10,[fp,#-28]
	ldr r9,[fp,#-72]
	mov r10,r9
	str r10,[fp,#-24]
.long_funcL229:
	ldr r9,[fp,#-44]
	cmp r9,#0
	bne .long_funcL895
.long_funcL973:
	mov r9,#0
	str r9,[fp,#-36]
	ldr r9,[fp,#-24]
	mov r10,r9
	str r10,[fp,#-32]
.long_funcL327:
.long_funcL419:
.long_funcL424:
	movw r8,#32767
	movt r8,#0  @ 32767
	ldr r9,[fp,#-40]
	cmp r9,r8
	bgt .long_funcL427
.long_funcL428:
	mov r8,#1
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@%r1905 = call i32 @__aeabi_idiv(i32 %r4297,i32 %r1904)
	push {r0,r1,r2,r3}
	ldr r0,[fp,#-40]
	mov r1,r8
	bl __aeabi_idiv
	mov r7,r0
	pop {r0,r1,r2,r3}
	ldr r9,[fp,#-40]
	mov r10,r9
	str r10,[fp,#-48]
	mov r9,r7
	str r9,[fp,#-52]
.long_funcL429:
.long_funcL426:
.long_funcL420:
.long_funcL218:
	ldr r9,[fp,#-52]
	cmp r9,#0
	bgt .long_funcL936
.long_funcL219:
	@call void @putint(i32 %r4294)
	push {r0,r1,r2,r3}
	ldr r0,[fp,#-28]
	bl putint
	pop {r0,r1,r2,r3}
	@call void @putch(i32 10)
	push {r0,r1,r2,r3}
	mov r0,#10
	bl putch
	pop {r0,r1,r2,r3}
.long_funcL897:
	mov r9,#2
	str r9,[fp,#-56]
	ldr r9,[fp,#-48]
	mov r10,r9
	str r10,[fp,#-60]
	ldr r9,[fp,#-32]
	mov r10,r9
	str r10,[fp,#-64]
.long_funcL431:
	ldr r9,[fp,#-56]
	cmp r9,#0
	bgt .long_funcL887
.long_funcL1005:
	mov r9,#1
	str r9,[fp,#-84]
	ldr r9,[fp,#-60]
	mov r10,r9
	str r10,[fp,#-88]
	ldr r9,[fp,#-64]
	mov r10,r9
	str r10,[fp,#-92]
.long_funcL437:
	@call void @putint(i32 %r4172)
	push {r0,r1,r2,r3}
	ldr r0,[fp,#-84]
	bl putint
	pop {r0,r1,r2,r3}
	@call void @putch(i32 10)
	push {r0,r1,r2,r3}
	mov r0,#10
	bl putch
	pop {r0,r1,r2,r3}
	ldr r9,[fp,#-56]
	add r10,r9,#1
	str r10,[fp,#-96]
.long_funcL432:
	ldr r9,[fp,#-96]
	cmp r9,#16
	blt .long_funcL1003
.long_funcL433:
.long_funcL871:
	mov r9,#0
	str r9,[fp,#-108]
	ldr r9,[fp,#-88]
	mov r2,r9
	ldr r9,[fp,#-92]
	mov r1,r9
.long_funcL649:
	ldr r9,[fp,#-108]
	cmp r9,#0
	bgt .long_funcL872
.long_funcL1075:
	mov r7,#1
	mov r8,r2
	mov r6,r1
.long_funcL655:
	ldr r9,[fp,#-108]
	mov r5,r9
	ldr r4,.LPIC0
	add r3,r4,r5,lsl #2
	ldr r5,[r3]
	cmp r5,r7
	bne .long_funcL866
.long_funcL867:
	ldr r9,[fp,#-108]
	add r5,r9,#1
.long_funcL650:
	cmp r5,#16
	blt .long_funcL1073
.long_funcL651:
	mov r0,#0
	mov r9,#300
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.long_funcL1073:
	mov r9,r5
	str r9,[fp,#-108]
	mov r2,r8
	mov r1,r6
	bl .long_funcL649
.long_funcL866:
	mov r0,#1
	mov r9,#300
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.long_funcL872:
	mov r9,#1
	str r9,[fp,#-112]
	ldr r9,[fp,#-108]
	mov r10,r9
	str r10,[fp,#-120]
	mov r9,#2
	str r9,[fp,#-132]
.long_funcL653:
.long_funcL873:
	mov r9,#1
	str r9,[fp,#-156]
	ldr r9,[fp,#-120]
	mov r10,r9
	str r10,[fp,#-160]
	mov r9,#0
	str r9,[fp,#-116]
	mov r9,#0
	str r9,[fp,#-144]
.long_funcL657:
	ldr r9,[fp,#-160]
	cmp r9,#0
	ldr r9,[fp,#-160]
	and r0,r9,#1
	it lt
	rsblt r0,r0,#0
	cmp r0,#0
	bne .long_funcL662
.long_funcL1078:
	ldr r9,[fp,#-144]
	mov r10,r9
	str r10,[fp,#-148]
.long_funcL661:
	ldr r9,[fp,#-160]
	ldr r10,[fp,#-160]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-124]
	ldr r9,[fp,#-156]
	ldr r10,[fp,#-156]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-128]
	ldr r9,[fp,#-116]
	add r10,r9,#1
	str r10,[fp,#-140]
.long_funcL658:
	ldr r9,[fp,#-140]
	cmp r9,#16
	blt .long_funcL1077
.long_funcL659:
	ldr r9,[fp,#-148]
	cmp r9,#0
	bne .long_funcL664
.long_funcL1080:
	ldr r9,[fp,#-112]
	mov r10,r9
	str r10,[fp,#-152]
	ldr r9,[fp,#-140]
	mov r10,r9
	str r10,[fp,#-136]
.long_funcL665:
	ldr r9,[fp,#-132]
	cmp r9,#0
	bne .long_funcL911
.long_funcL1113:
	mov r0,#0
	ldr r9,[fp,#-136]
	mov r10,r9
	str r10,[fp,#-204]
.long_funcL763:
.long_funcL855:
.long_funcL860:
	movw r4,#32767
	movt r4,#0  @ 32767
	ldr r9,[fp,#-120]
	cmp r9,r4
	bgt .long_funcL863
.long_funcL864:
	mov r4,#1
	ldr r3,.LPIC0
	add r2,r3,r4,lsl #2
	ldr r4,[r2]
	@%r3831 = call i32 @__aeabi_idiv(i32 %r4013,i32 %r3830)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2}
	ldr r0,[fp,#-120]
	mov r1,r4
	bl __aeabi_idiv
	mov r3,r0
	pop {r0,r1,r2}
	add sp,sp,#4 @stack align 8bytes
	ldr r9,[fp,#-120]
	mov r4,r9
	mov r2,r3
.long_funcL865:
.long_funcL862:
.long_funcL856:
.long_funcL654:
	cmp r2,#0
	bgt .long_funcL1074
.long_funcL1076:
	ldr r9,[fp,#-152]
	mov r7,r9
	mov r8,r4
	ldr r9,[fp,#-204]
	mov r6,r9
	bl .long_funcL655
.long_funcL1074:
	ldr r9,[fp,#-152]
	mov r10,r9
	str r10,[fp,#-112]
	mov r9,r2
	str r9,[fp,#-120]
	mov r9,r0
	str r9,[fp,#-132]
	bl .long_funcL653
.long_funcL863:
	mov r8,#1
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@%r3815 = call i32 @__aeabi_idiv(i32 %r4013,i32 %r3814)
	push {r0,r1,r2,r3}
	ldr r0,[fp,#-120]
	mov r1,r8
	bl __aeabi_idiv
	mov r7,r0
	pop {r0,r1,r2,r3}
	add r8,r7,#65536
	mov r6,#15
	ldr r3,.LPIC0
	add r1,r3,r6,lsl #2
	ldr r6,[r1]
	sub r3,r8,r6
	mov r4,r7
	mov r2,r3
	bl .long_funcL865
.long_funcL911:
	mov r9,#0
	str r9,[fp,#-164]
	ldr r9,[fp,#-132]
	mov r10,r9
	str r10,[fp,#-180]
	ldr r9,[fp,#-132]
	mov r10,r9
	str r10,[fp,#-216]
.long_funcL761:
.long_funcL919:
	mov r9,#1
	str r9,[fp,#-208]
	ldr r9,[fp,#-180]
	mov r10,r9
	str r10,[fp,#-212]
	mov r9,#0
	str r9,[fp,#-168]
	mov r9,#0
	str r9,[fp,#-188]
.long_funcL765:
	ldr r9,[fp,#-212]
	cmp r9,#0
	ldr r9,[fp,#-212]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL770
.long_funcL1116:
	ldr r9,[fp,#-188]
	mov r10,r9
	str r10,[fp,#-192]
.long_funcL769:
	ldr r9,[fp,#-212]
	ldr r10,[fp,#-212]
	add r2,r9,r10,lsr #31
	asr r9,r2,#1
	str r9,[fp,#-172]
	ldr r9,[fp,#-208]
	ldr r10,[fp,#-208]
	add r2,r9,r10,lsr #31
	asr r9,r2,#1
	str r9,[fp,#-176]
	ldr r9,[fp,#-168]
	add r10,r9,#1
	str r10,[fp,#-196]
.long_funcL766:
	ldr r9,[fp,#-196]
	cmp r9,#16
	blt .long_funcL1115
.long_funcL767:
	ldr r9,[fp,#-192]
	cmp r9,#0
	bne .long_funcL772
.long_funcL1118:
	ldr r9,[fp,#-164]
	mov r10,r9
	str r10,[fp,#-200]
	ldr r9,[fp,#-196]
	mov r10,r9
	str r10,[fp,#-184]
.long_funcL773:
	ldr r9,[fp,#-216]
	cmp r9,#0
	bne .long_funcL903
.long_funcL1132:
	ldr r9,[fp,#-216]
	mov r10,r9
	str r10,[fp,#-224]
	ldr r9,[fp,#-184]
	mov r10,r9
	str r10,[fp,#-220]
.long_funcL811:
.long_funcL843:
.long_funcL848:
	movw r2,#32767
	movt r2,#0  @ 32767
	ldr r9,[fp,#-180]
	cmp r9,r2
	bgt .long_funcL851
.long_funcL852:
	mov r7,#1
	ldr r2,.LPIC0
	add r5,r2,r7,lsl #2
	ldr r7,[r5]
	@%r3780 = call i32 @__aeabi_idiv(i32 %r3919,i32 %r3779)
	push {r0,r1,r2,r3}
	ldr r0,[fp,#-180]
	mov r1,r7
	bl __aeabi_idiv
	mov r5,r0
	pop {r0,r1,r2,r3}
	mov r7,r5
.long_funcL853:
.long_funcL850:
.long_funcL844:
.long_funcL762:
	cmp r7,#0
	bne .long_funcL1112
.long_funcL1114:
	ldr r9,[fp,#-200]
	mov r0,r9
	ldr r9,[fp,#-220]
	mov r10,r9
	str r10,[fp,#-204]
	bl .long_funcL763
.long_funcL1112:
	ldr r9,[fp,#-200]
	mov r10,r9
	str r10,[fp,#-164]
	mov r9,r7
	str r9,[fp,#-180]
	ldr r9,[fp,#-224]
	mov r10,r9
	str r10,[fp,#-216]
	bl .long_funcL761
.long_funcL851:
	mov r5,#1
	ldr r2,.LPIC0
	add r0,r2,r5,lsl #2
	ldr r5,[r0]
	@%r3764 = call i32 @__aeabi_idiv(i32 %r3919,i32 %r3763)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r3}
	ldr r0,[fp,#-180]
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r0,r1,r3}
	add sp,sp,#4 @stack align 8bytes
	add r5,r2,#65536
	mov r2,#15
	ldr r0,.LPIC0
	add r4,r0,r2,lsl #2
	ldr r2,[r4]
	sub r4,r5,r2
	mov r7,r4
	bl .long_funcL853
.long_funcL903:
	mov r7,#1
	ldr r5,.LPIC0
	add r9,r5,r7,lsl #2
	str r9,[fp,#-204]
	ldr r9,[fp,#-216]
	mov r10,r9
	str r10,[fp,#-232]
	ldr r9,[fp,#-216]
	mov r10,r9
	str r10,[fp,#-240]
.long_funcL809:
.long_funcL925:
	ldr r9,[fp,#-232]
	mov r10,r9
	str r10,[fp,#-284]
	ldr r9,[fp,#-240]
	mov r10,r9
	str r10,[fp,#-268]
	mov r9,#0
	str r9,[fp,#-252]
	mov r9,#0
	str r9,[fp,#-272]
.long_funcL813:
	ldr r9,[fp,#-268]
	cmp r9,#0
	ldr r9,[fp,#-268]
	and r6,r9,#1
	it lt
	rsblt r6,r6,#0
	cmp r6,#0
	bne .long_funcL816
.long_funcL817:
	ldr r9,[fp,#-284]
	cmp r9,#0
	ldr r9,[fp,#-284]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL821
.long_funcL1136:
	ldr r9,[fp,#-272]
	mov r10,r9
	str r10,[fp,#-244]
.long_funcL822:
	ldr r9,[fp,#-244]
	mov r10,r9
	str r10,[fp,#-256]
.long_funcL818:
	ldr r9,[fp,#-268]
	ldr r10,[fp,#-268]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-228]
	ldr r9,[fp,#-284]
	ldr r10,[fp,#-284]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-236]
	ldr r9,[fp,#-252]
	add r10,r9,#1
	str r10,[fp,#-248]
.long_funcL814:
	ldr r9,[fp,#-248]
	cmp r9,#16
	blt .long_funcL1134
.long_funcL815:
.long_funcL926:
	ldr r9,[fp,#-232]
	mov r10,r9
	str r10,[fp,#-296]
	ldr r9,[fp,#-240]
	mov r10,r9
	str r10,[fp,#-300]
	mov r9,#0
	str r9,[fp,#-276]
	mov r9,#0
	str r9,[fp,#-288]
.long_funcL824:
	ldr r9,[fp,#-300]
	cmp r9,#0
	ldr r9,[fp,#-300]
	and r4,r9,#1
	it lt
	rsblt r4,r4,#0
	cmp r4,#0
	bne .long_funcL829
.long_funcL1138:
	ldr r9,[fp,#-288]
	mov r10,r9
	str r10,[fp,#-292]
.long_funcL828:
	ldr r9,[fp,#-300]
	ldr r10,[fp,#-300]
	add r4,r9,r10,lsr #31
	asr r9,r4,#1
	str r9,[fp,#-260]
	ldr r9,[fp,#-296]
	ldr r10,[fp,#-296]
	add r4,r9,r10,lsr #31
	asr r9,r4,#1
	str r9,[fp,#-264]
	ldr r9,[fp,#-276]
	add r10,r9,#1
	str r10,[fp,#-280]
.long_funcL825:
	ldr r9,[fp,#-280]
	cmp r9,#16
	blt .long_funcL1137
.long_funcL826:
.long_funcL832:
	ldr r9,[fp,#-204]
	ldr r0,[r9]
	ldr r9,[fp,#-292]
	mul r3,r9,r0
.long_funcL933:
	movw r0,#65535
	movt r0,#0  @ 65535
	mov r8,r0
	mov r0,r3
	mov r3,#0
	mov r4,#0
.long_funcL835:
	cmp r0,#0
	and r2,r0,#1
	it lt
	rsblt r2,r2,#0
	cmp r2,#0
	bne .long_funcL840
.long_funcL1141:
	mov r2,r4
.long_funcL839:
	add r1,r0,r0,lsr #31
	asr r6,r1,#1
	add r1,r8,r8,lsr #31
	asr r7,r1,#1
	add r1,r3,#1
.long_funcL836:
	cmp r1,#16
	blt .long_funcL1140
.long_funcL837:
.long_funcL833:
.long_funcL810:
	cmp r2,#0
	bne .long_funcL1131
.long_funcL1133:
	ldr r9,[fp,#-256]
	mov r10,r9
	str r10,[fp,#-224]
	mov r9,r1
	str r9,[fp,#-220]
	bl .long_funcL811
.long_funcL1131:
	mov r9,r2
	str r9,[fp,#-232]
	ldr r9,[fp,#-256]
	mov r10,r9
	str r10,[fp,#-240]
	bl .long_funcL809
.long_funcL1140:
	mov r8,r7
	mov r0,r6
	mov r3,r1
	mov r4,r2
	bl .long_funcL835
.long_funcL840:
	cmp r8,#0
	and r7,r8,#1
	it lt
	rsblt r7,r7,#0
	cmp r7,#0
	bne .long_funcL838
.long_funcL1142:
	mov r2,r4
	bl .long_funcL839
.long_funcL838:
	mov r7,r3
	bl .LPIC2
.LPIC1:
	.word SHIFT_TABLE
.LPIC2:
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	add r6,r4,r7
	mov r2,r6
	bl .long_funcL839
.long_funcL1137:
	ldr r9,[fp,#-264]
	mov r10,r9
	str r10,[fp,#-296]
	ldr r9,[fp,#-260]
	mov r10,r9
	str r10,[fp,#-300]
	ldr r9,[fp,#-280]
	mov r10,r9
	str r10,[fp,#-276]
	ldr r9,[fp,#-292]
	mov r10,r9
	str r10,[fp,#-288]
	bl .long_funcL824
.long_funcL829:
	ldr r9,[fp,#-296]
	cmp r9,#0
	ldr r9,[fp,#-296]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL827
.long_funcL1139:
	ldr r9,[fp,#-288]
	mov r10,r9
	str r10,[fp,#-292]
	bl .long_funcL828
.long_funcL827:
	ldr r9,[fp,#-276]
	mov r8,r9
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-288]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-292]
	bl .long_funcL828
.long_funcL1134:
	ldr r9,[fp,#-236]
	mov r10,r9
	str r10,[fp,#-284]
	ldr r9,[fp,#-228]
	mov r10,r9
	str r10,[fp,#-268]
	ldr r9,[fp,#-248]
	mov r10,r9
	str r10,[fp,#-252]
	ldr r9,[fp,#-256]
	mov r10,r9
	str r10,[fp,#-272]
	bl .long_funcL813
.long_funcL821:
	ldr r9,[fp,#-252]
	mov r8,r9
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-272]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-244]
	bl .long_funcL822
.long_funcL816:
	ldr r9,[fp,#-284]
	cmp r9,#0
	ldr r9,[fp,#-284]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	beq .long_funcL819
.long_funcL1135:
	ldr r9,[fp,#-272]
	mov r8,r9
.long_funcL820:
	mov r9,r8
	str r9,[fp,#-256]
	bl .long_funcL818
.long_funcL819:
	ldr r9,[fp,#-252]
	mov r7,r9
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	ldr r9,[fp,#-272]
	add r6,r9,r7
	mov r8,r6
	bl .long_funcL820
.long_funcL772:
	ldr r9,[fp,#-216]
	cmp r9,#0
	bne .long_funcL920
.long_funcL1120:
	ldr r9,[fp,#-164]
	mov r10,r9
	str r10,[fp,#-264]
	ldr r9,[fp,#-196]
	mov r10,r9
	str r10,[fp,#-296]
.long_funcL777:
	ldr r9,[fp,#-264]
	mov r10,r9
	str r10,[fp,#-200]
	ldr r9,[fp,#-296]
	mov r10,r9
	str r10,[fp,#-184]
	bl .long_funcL773
.long_funcL920:
	mov r6,#1
	ldr r5,.LPIC1
	add r9,r5,r6,lsl #2
	str r9,[fp,#-220]
	ldr r9,[fp,#-216]
	mov r10,r9
	str r10,[fp,#-224]
	ldr r9,[fp,#-164]
	mov r10,r9
	str r10,[fp,#-288]
.long_funcL775:
.long_funcL892:
	ldr r9,[fp,#-224]
	mov r10,r9
	str r10,[fp,#-232]
	ldr r9,[fp,#-288]
	mov r10,r9
	str r10,[fp,#-244]
	mov r9,#0
	str r9,[fp,#-292]
	mov r9,#0
	str r9,[fp,#-256]
.long_funcL779:
	ldr r9,[fp,#-244]
	cmp r9,#0
	ldr r9,[fp,#-244]
	and r4,r9,#1
	it lt
	rsblt r4,r4,#0
	cmp r4,#0
	bne .long_funcL782
.long_funcL783:
	ldr r9,[fp,#-232]
	cmp r9,#0
	ldr r9,[fp,#-232]
	and r6,r9,#1
	it lt
	rsblt r6,r6,#0
	cmp r6,#0
	bne .long_funcL787
.long_funcL1124:
	ldr r9,[fp,#-256]
	mov r10,r9
	str r10,[fp,#-300]
.long_funcL788:
	ldr r9,[fp,#-300]
	mov r10,r9
	str r10,[fp,#-236]
.long_funcL784:
	ldr r9,[fp,#-244]
	ldr r10,[fp,#-244]
	add r8,r9,r10,lsr #31
	asr r9,r8,#1
	str r9,[fp,#-260]
	ldr r9,[fp,#-232]
	ldr r10,[fp,#-232]
	add r8,r9,r10,lsr #31
	asr r9,r8,#1
	str r9,[fp,#-280]
	ldr r9,[fp,#-292]
	add r10,r9,#1
	str r10,[fp,#-276]
.long_funcL780:
	ldr r9,[fp,#-276]
	cmp r9,#16
	blt .long_funcL1122
.long_funcL781:
.long_funcL893:
	ldr r9,[fp,#-224]
	mov r10,r9
	str r10,[fp,#-284]
	ldr r9,[fp,#-288]
	mov r10,r9
	str r10,[fp,#-268]
	mov r9,#0
	str r9,[fp,#-272]
	mov r9,#0
	str r9,[fp,#-240]
.long_funcL790:
	ldr r9,[fp,#-268]
	cmp r9,#0
	ldr r9,[fp,#-268]
	and r1,r9,#1
	it lt
	rsblt r1,r1,#0
	cmp r1,#0
	bne .long_funcL795
.long_funcL1126:
	ldr r9,[fp,#-240]
	mov r10,r9
	str r10,[fp,#-204]
.long_funcL794:
	ldr r9,[fp,#-268]
	ldr r10,[fp,#-268]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-228]
	ldr r9,[fp,#-284]
	ldr r10,[fp,#-284]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-248]
	ldr r9,[fp,#-272]
	add r10,r9,#1
	str r10,[fp,#-252]
.long_funcL791:
	ldr r9,[fp,#-252]
	cmp r9,#16
	blt .long_funcL1125
.long_funcL792:
.long_funcL798:
	ldr r9,[fp,#-220]
	ldr r2,[r9]
	ldr r9,[fp,#-204]
	mul r0,r9,r2
.long_funcL902:
	movw r2,#65535
	movt r2,#0  @ 65535
	mov r6,r2
	mov r2,r0
	mov r0,#0
	mov r1,#0
.long_funcL801:
	cmp r2,#0
	and r3,r2,#1
	it lt
	rsblt r3,r3,#0
	cmp r3,#0
	bne .long_funcL806
.long_funcL1129:
	mov r8,r1
.long_funcL805:
	add r3,r2,r2,lsr #31
	asr r4,r3,#1
	add r3,r6,r6,lsr #31
	asr r5,r3,#1
	add r3,r0,#1
.long_funcL802:
	cmp r3,#16
	blt .long_funcL1128
.long_funcL803:
.long_funcL799:
.long_funcL776:
	cmp r8,#0
	bne .long_funcL1119
.long_funcL1121:
	ldr r9,[fp,#-236]
	mov r10,r9
	str r10,[fp,#-264]
	mov r9,r3
	str r9,[fp,#-296]
	bl .long_funcL777
.long_funcL1119:
	mov r9,r8
	str r9,[fp,#-224]
	ldr r9,[fp,#-236]
	mov r10,r9
	str r10,[fp,#-288]
	bl .long_funcL775
.long_funcL1128:
	mov r6,r5
	mov r2,r4
	mov r0,r3
	mov r1,r8
	bl .long_funcL801
.long_funcL806:
	cmp r6,#0
	and r7,r6,#1
	it lt
	rsblt r7,r7,#0
	cmp r7,#0
	bne .long_funcL804
.long_funcL1130:
	mov r8,r1
	bl .long_funcL805
.long_funcL804:
	mov r7,r0
	ldr r5,.LPIC1
	add r4,r5,r7,lsl #2
	ldr r7,[r4]
	add r5,r1,r7
	mov r8,r5
	bl .long_funcL805
.long_funcL1125:
	ldr r9,[fp,#-248]
	mov r10,r9
	str r10,[fp,#-284]
	ldr r9,[fp,#-228]
	mov r10,r9
	str r10,[fp,#-268]
	ldr r9,[fp,#-252]
	mov r10,r9
	str r10,[fp,#-272]
	ldr r9,[fp,#-204]
	mov r10,r9
	str r10,[fp,#-240]
	bl .long_funcL790
.long_funcL795:
	ldr r9,[fp,#-284]
	cmp r9,#0
	ldr r9,[fp,#-284]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL793
.long_funcL1127:
	ldr r9,[fp,#-240]
	mov r10,r9
	str r10,[fp,#-204]
	bl .long_funcL794
.long_funcL793:
	ldr r9,[fp,#-272]
	mov r8,r9
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-240]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-204]
	bl .long_funcL794
.long_funcL1122:
	ldr r9,[fp,#-280]
	mov r10,r9
	str r10,[fp,#-232]
	ldr r9,[fp,#-260]
	mov r10,r9
	str r10,[fp,#-244]
	ldr r9,[fp,#-276]
	mov r10,r9
	str r10,[fp,#-292]
	ldr r9,[fp,#-236]
	mov r10,r9
	str r10,[fp,#-256]
	bl .long_funcL779
.long_funcL787:
	ldr r9,[fp,#-292]
	mov r8,r9
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-256]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-300]
	bl .long_funcL788
.long_funcL782:
	ldr r9,[fp,#-232]
	cmp r9,#0
	ldr r9,[fp,#-232]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	beq .long_funcL785
.long_funcL1123:
	ldr r9,[fp,#-256]
	mov r8,r9
.long_funcL786:
	mov r9,r8
	str r9,[fp,#-236]
	bl .long_funcL784
.long_funcL785:
	ldr r9,[fp,#-292]
	mov r7,r9
	ldr r6,.LPIC1
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	ldr r9,[fp,#-256]
	add r6,r9,r7
	mov r8,r6
	bl .long_funcL786
.long_funcL1115:
	ldr r9,[fp,#-176]
	mov r10,r9
	str r10,[fp,#-208]
	ldr r9,[fp,#-172]
	mov r10,r9
	str r10,[fp,#-212]
	ldr r9,[fp,#-196]
	mov r10,r9
	str r10,[fp,#-168]
	ldr r9,[fp,#-192]
	mov r10,r9
	str r10,[fp,#-188]
	bl .long_funcL765
.long_funcL770:
	ldr r9,[fp,#-208]
	cmp r9,#0
	ldr r9,[fp,#-208]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL768
.long_funcL1117:
	ldr r9,[fp,#-188]
	mov r10,r9
	str r10,[fp,#-192]
	bl .long_funcL769
.long_funcL768:
	ldr r9,[fp,#-168]
	mov r8,r9
	ldr r7,.LPIC1
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-188]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-192]
	bl .long_funcL769
.long_funcL664:
	ldr r9,[fp,#-132]
	cmp r9,#0
	bne .long_funcL874
.long_funcL1082:
	mov r8,#0
	ldr r9,[fp,#-140]
	mov r7,r9
.long_funcL669:
	mov r9,r8
	str r9,[fp,#-152]
	mov r9,r7
	str r9,[fp,#-136]
	bl .long_funcL665
.long_funcL874:
	mov r9,#0
	str r9,[fp,#-184]
	ldr r9,[fp,#-132]
	mov r10,r9
	str r10,[fp,#-248]
	ldr r9,[fp,#-112]
	mov r10,r9
	str r10,[fp,#-260]
.long_funcL667:
.long_funcL904:
	mov r9,#1
	str r9,[fp,#-284]
	ldr r9,[fp,#-248]
	mov r10,r9
	str r10,[fp,#-280]
	mov r9,#0
	str r9,[fp,#-200]
	mov r9,#0
	str r9,[fp,#-252]
.long_funcL671:
	ldr r9,[fp,#-280]
	cmp r9,#0
	ldr r9,[fp,#-280]
	and r6,r9,#1
	it lt
	rsblt r6,r6,#0
	cmp r6,#0
	bne .long_funcL676
.long_funcL1085:
	ldr r9,[fp,#-252]
	mov r10,r9
	str r10,[fp,#-240]
.long_funcL675:
	ldr r9,[fp,#-280]
	ldr r10,[fp,#-280]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-264]
	ldr r9,[fp,#-284]
	ldr r10,[fp,#-284]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-296]
	ldr r9,[fp,#-200]
	add r10,r9,#1
	str r10,[fp,#-272]
.long_funcL672:
	ldr r9,[fp,#-272]
	cmp r9,#16
	blt .long_funcL1084
.long_funcL673:
	ldr r9,[fp,#-240]
	cmp r9,#0
	bne .long_funcL678
.long_funcL1087:
	ldr r9,[fp,#-184]
	mov r10,r9
	str r10,[fp,#-268]
	ldr r9,[fp,#-272]
	mov r10,r9
	str r10,[fp,#-228]
.long_funcL679:
	ldr r9,[fp,#-260]
	cmp r9,#0
	bne .long_funcL917
.long_funcL1101:
	ldr r9,[fp,#-260]
	mov r10,r9
	str r10,[fp,#-300]
	ldr r9,[fp,#-228]
	mov r10,r9
	str r10,[fp,#-276]
.long_funcL717:
.long_funcL749:
.long_funcL754:
	movw r1,#32767
	movt r1,#0  @ 32767
	ldr r9,[fp,#-248]
	cmp r9,r1
	bgt .long_funcL757
.long_funcL758:
	mov r5,#1
	bl .LPIC4
.LPIC3:
	.word SHIFT_TABLE
.LPIC4:
	ldr r1,.LPIC3
	add r3,r1,r5,lsl #2
	ldr r5,[r3]
	@%r3358 = call i32 @__aeabi_idiv(i32 %r3997,i32 %r3357)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2}
	ldr r0,[fp,#-248]
	mov r1,r5
	bl __aeabi_idiv
	mov r3,r0
	pop {r0,r1,r2}
	add sp,sp,#4 @stack align 8bytes
	mov r5,r3
.long_funcL759:
.long_funcL756:
.long_funcL750:
.long_funcL668:
	cmp r5,#0
	bne .long_funcL1081
.long_funcL1083:
	ldr r9,[fp,#-268]
	mov r8,r9
	ldr r9,[fp,#-276]
	mov r7,r9
	bl .long_funcL669
.long_funcL1081:
	ldr r9,[fp,#-268]
	mov r10,r9
	str r10,[fp,#-184]
	mov r9,r5
	str r9,[fp,#-248]
	ldr r9,[fp,#-300]
	mov r10,r9
	str r10,[fp,#-260]
	bl .long_funcL667
.long_funcL757:
	mov r8,#1
	ldr r7,.LPIC3
	add r3,r7,r8,lsl #2
	ldr r8,[r3]
	@%r3342 = call i32 @__aeabi_idiv(i32 %r3997,i32 %r3341)
	push {r0,r1,r2,r3}
	ldr r0,[fp,#-248]
	mov r1,r8
	bl __aeabi_idiv
	mov r7,r0
	pop {r0,r1,r2,r3}
	add r8,r7,#65536
	mov r7,#15
	ldr r3,.LPIC3
	add r1,r3,r7,lsl #2
	ldr r7,[r1]
	sub r3,r8,r7
	mov r5,r3
	bl .long_funcL759
.long_funcL917:
	mov r8,#1
	ldr r7,.LPIC3
	add r9,r7,r8,lsl #2
	str r9,[fp,#-204]
	ldr r9,[fp,#-260]
	mov r10,r9
	str r10,[fp,#-256]
	ldr r9,[fp,#-260]
	mov r10,r9
	str r10,[fp,#-292]
.long_funcL715:
.long_funcL914:
	ldr r9,[fp,#-256]
	mov r10,r9
	str r10,[fp,#-212]
	ldr r9,[fp,#-292]
	mov r10,r9
	str r10,[fp,#-196]
	mov r9,#0
	str r9,[fp,#-244]
	mov r9,#0
	str r9,[fp,#-188]
.long_funcL719:
	ldr r9,[fp,#-196]
	cmp r9,#0
	ldr r9,[fp,#-196]
	and r4,r9,#1
	it lt
	rsblt r4,r4,#0
	cmp r4,#0
	bne .long_funcL722
.long_funcL723:
	ldr r9,[fp,#-212]
	cmp r9,#0
	ldr r9,[fp,#-212]
	and r6,r9,#1
	it lt
	rsblt r6,r6,#0
	cmp r6,#0
	bne .long_funcL727
.long_funcL1105:
	ldr r9,[fp,#-188]
	mov r10,r9
	str r10,[fp,#-232]
.long_funcL728:
	ldr r9,[fp,#-232]
	mov r10,r9
	str r10,[fp,#-288]
.long_funcL724:
	ldr r9,[fp,#-196]
	ldr r10,[fp,#-196]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-236]
	ldr r9,[fp,#-212]
	ldr r10,[fp,#-212]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-224]
	ldr r9,[fp,#-244]
	add r10,r9,#1
	str r10,[fp,#-220]
.long_funcL720:
	ldr r9,[fp,#-220]
	cmp r9,#16
	blt .long_funcL1103
.long_funcL721:
.long_funcL915:
	ldr r9,[fp,#-256]
	mov r10,r9
	str r10,[fp,#-168]
	ldr r9,[fp,#-292]
	mov r10,r9
	str r10,[fp,#-180]
	mov r9,#0
	str r9,[fp,#-216]
	mov r9,#0
	str r9,[fp,#-192]
.long_funcL730:
	ldr r9,[fp,#-180]
	cmp r9,#0
	ldr r9,[fp,#-180]
	and r5,r9,#1
	it lt
	rsblt r5,r5,#0
	cmp r5,#0
	bne .long_funcL735
.long_funcL1107:
	ldr r9,[fp,#-192]
	mov r10,r9
	str r10,[fp,#-164]
.long_funcL734:
	ldr r9,[fp,#-180]
	ldr r10,[fp,#-180]
	add r4,r9,r10,lsr #31
	asr r9,r4,#1
	str r9,[fp,#-176]
	ldr r9,[fp,#-168]
	ldr r10,[fp,#-168]
	add r4,r9,r10,lsr #31
	asr r9,r4,#1
	str r9,[fp,#-172]
	ldr r9,[fp,#-216]
	add r10,r9,#1
	str r10,[fp,#-208]
.long_funcL731:
	ldr r9,[fp,#-208]
	cmp r9,#16
	blt .long_funcL1106
.long_funcL732:
.long_funcL738:
	ldr r9,[fp,#-204]
	ldr r1,[r9]
	ldr r9,[fp,#-164]
	mul r2,r9,r1
.long_funcL910:
	movw r1,#65535
	movt r1,#0  @ 65535
	mov r6,r1
	mov r1,r2
	mov r2,#0
	mov r4,#0
.long_funcL741:
	cmp r1,#0
	and r3,r1,#1
	it lt
	rsblt r3,r3,#0
	cmp r3,#0
	bne .long_funcL746
.long_funcL1110:
	mov r3,r4
.long_funcL745:
	add r0,r1,r1,lsr #31
	asr r5,r0,#1
	add r0,r6,r6,lsr #31
	asr r8,r0,#1
	add r0,r2,#1
.long_funcL742:
	cmp r0,#16
	blt .long_funcL1109
.long_funcL743:
.long_funcL739:
.long_funcL716:
	cmp r3,#0
	bne .long_funcL1100
.long_funcL1102:
	ldr r9,[fp,#-288]
	mov r10,r9
	str r10,[fp,#-300]
	mov r9,r0
	str r9,[fp,#-276]
	bl .long_funcL717
.long_funcL1100:
	mov r9,r3
	str r9,[fp,#-256]
	ldr r9,[fp,#-288]
	mov r10,r9
	str r10,[fp,#-292]
	bl .long_funcL715
.long_funcL1109:
	mov r6,r8
	mov r1,r5
	mov r2,r0
	mov r4,r3
	bl .long_funcL741
.long_funcL746:
	cmp r6,#0
	and r8,r6,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL744
.long_funcL1111:
	mov r3,r4
	bl .long_funcL745
.long_funcL744:
	mov r8,r2
	ldr r7,.LPIC3
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	add r7,r4,r8
	mov r3,r7
	bl .long_funcL745
.long_funcL1106:
	ldr r9,[fp,#-172]
	mov r10,r9
	str r10,[fp,#-168]
	ldr r9,[fp,#-176]
	mov r10,r9
	str r10,[fp,#-180]
	ldr r9,[fp,#-208]
	mov r10,r9
	str r10,[fp,#-216]
	ldr r9,[fp,#-164]
	mov r10,r9
	str r10,[fp,#-192]
	bl .long_funcL730
.long_funcL735:
	ldr r9,[fp,#-168]
	cmp r9,#0
	ldr r9,[fp,#-168]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL733
.long_funcL1108:
	ldr r9,[fp,#-192]
	mov r10,r9
	str r10,[fp,#-164]
	bl .long_funcL734
.long_funcL733:
	ldr r9,[fp,#-216]
	mov r8,r9
	ldr r7,.LPIC3
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-192]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-164]
	bl .long_funcL734
.long_funcL1103:
	ldr r9,[fp,#-224]
	mov r10,r9
	str r10,[fp,#-212]
	ldr r9,[fp,#-236]
	mov r10,r9
	str r10,[fp,#-196]
	ldr r9,[fp,#-220]
	mov r10,r9
	str r10,[fp,#-244]
	ldr r9,[fp,#-288]
	mov r10,r9
	str r10,[fp,#-188]
	bl .long_funcL719
.long_funcL727:
	ldr r9,[fp,#-244]
	mov r8,r9
	ldr r7,.LPIC3
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-188]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-232]
	bl .long_funcL728
.long_funcL722:
	ldr r9,[fp,#-212]
	cmp r9,#0
	ldr r9,[fp,#-212]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	beq .long_funcL725
.long_funcL1104:
	ldr r9,[fp,#-188]
	mov r8,r9
.long_funcL726:
	mov r9,r8
	str r9,[fp,#-288]
	bl .long_funcL724
.long_funcL725:
	ldr r9,[fp,#-244]
	mov r7,r9
	ldr r6,.LPIC3
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	ldr r9,[fp,#-188]
	add r6,r9,r7
	mov r8,r6
	bl .long_funcL726
.long_funcL678:
	ldr r9,[fp,#-260]
	cmp r9,#0
	bne .long_funcL905
.long_funcL1089:
	ldr r9,[fp,#-184]
	mov r10,r9
	str r10,[fp,#-276]
	ldr r9,[fp,#-272]
	mov r10,r9
	str r10,[fp,#-208]
.long_funcL683:
	ldr r9,[fp,#-276]
	mov r10,r9
	str r10,[fp,#-268]
	ldr r9,[fp,#-208]
	mov r10,r9
	str r10,[fp,#-228]
	bl .long_funcL679
.long_funcL905:
	mov r6,#1
	ldr r5,.LPIC3
	add r9,r5,r6,lsl #2
	str r9,[fp,#-136]
	ldr r9,[fp,#-260]
	mov r10,r9
	str r10,[fp,#-152]
	ldr r9,[fp,#-184]
	mov r10,r9
	str r10,[fp,#-176]
.long_funcL681:
.long_funcL922:
	ldr r9,[fp,#-152]
	mov r10,r9
	str r10,[fp,#-188]
	ldr r9,[fp,#-176]
	mov r10,r9
	str r10,[fp,#-236]
	mov r9,#0
	str r9,[fp,#-164]
	mov r9,#0
	str r9,[fp,#-220]
.long_funcL685:
	ldr r9,[fp,#-236]
	cmp r9,#0
	ldr r9,[fp,#-236]
	and r4,r9,#1
	it lt
	rsblt r4,r4,#0
	cmp r4,#0
	bne .long_funcL688
.long_funcL689:
	ldr r9,[fp,#-188]
	cmp r9,#0
	ldr r9,[fp,#-188]
	and r6,r9,#1
	it lt
	rsblt r6,r6,#0
	cmp r6,#0
	bne .long_funcL693
.long_funcL1093:
	ldr r9,[fp,#-220]
	mov r10,r9
	str r10,[fp,#-192]
.long_funcL694:
	ldr r9,[fp,#-192]
	mov r10,r9
	str r10,[fp,#-168]
.long_funcL690:
	ldr r9,[fp,#-236]
	ldr r10,[fp,#-236]
	add r8,r9,r10,lsr #31
	asr r9,r8,#1
	str r9,[fp,#-300]
	ldr r9,[fp,#-188]
	ldr r10,[fp,#-188]
	add r8,r9,r10,lsr #31
	asr r9,r8,#1
	str r9,[fp,#-172]
	ldr r9,[fp,#-164]
	add r10,r9,#1
	str r10,[fp,#-216]
.long_funcL686:
	ldr r9,[fp,#-216]
	cmp r9,#16
	blt .long_funcL1091
.long_funcL687:
.long_funcL923:
	ldr r9,[fp,#-152]
	mov r10,r9
	str r10,[fp,#-196]
	ldr r9,[fp,#-176]
	mov r10,r9
	str r10,[fp,#-244]
	mov r9,#0
	str r9,[fp,#-232]
	mov r9,#0
	str r9,[fp,#-204]
.long_funcL696:
	ldr r9,[fp,#-244]
	cmp r9,#0
	ldr r9,[fp,#-244]
	and r1,r9,#1
	it lt
	rsblt r1,r1,#0
	cmp r1,#0
	bne .long_funcL701
.long_funcL1095:
	ldr r9,[fp,#-204]
	mov r10,r9
	str r10,[fp,#-256]
.long_funcL700:
	ldr r9,[fp,#-244]
	ldr r10,[fp,#-244]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-180]
	ldr r9,[fp,#-196]
	ldr r10,[fp,#-196]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-224]
	ldr r9,[fp,#-232]
	add r10,r9,#1
	str r10,[fp,#-288]
.long_funcL697:
	ldr r9,[fp,#-288]
	cmp r9,#16
	blt .long_funcL1094
.long_funcL698:
.long_funcL704:
	ldr r9,[fp,#-136]
	ldr r2,[r9]
	ldr r9,[fp,#-256]
	mul r0,r9,r2
.long_funcL916:
	movw r2,#65535
	movt r2,#0  @ 65535
	mov r6,r2
	mov r2,r0
	mov r0,#0
	mov r1,#0
.long_funcL707:
	cmp r2,#0
	and r3,r2,#1
	it lt
	rsblt r3,r3,#0
	cmp r3,#0
	bne .long_funcL712
.long_funcL1098:
	mov r8,r1
.long_funcL711:
	add r3,r2,r2,lsr #31
	asr r4,r3,#1
	add r3,r6,r6,lsr #31
	asr r5,r3,#1
	add r3,r0,#1
.long_funcL708:
	cmp r3,#16
	blt .long_funcL1097
.long_funcL709:
.long_funcL705:
.long_funcL682:
	cmp r8,#0
	bne .long_funcL1088
.long_funcL1090:
	ldr r9,[fp,#-168]
	mov r10,r9
	str r10,[fp,#-276]
	mov r9,r3
	str r9,[fp,#-208]
	bl .long_funcL683
.long_funcL1088:
	mov r9,r8
	str r9,[fp,#-152]
	ldr r9,[fp,#-168]
	mov r10,r9
	str r10,[fp,#-176]
	bl .long_funcL681
.long_funcL1097:
	mov r6,r5
	mov r2,r4
	mov r0,r3
	mov r1,r8
	bl .long_funcL707
.long_funcL712:
	cmp r6,#0
	and r7,r6,#1
	it lt
	rsblt r7,r7,#0
	cmp r7,#0
	bne .long_funcL710
.long_funcL1099:
	mov r8,r1
	bl .long_funcL711
.long_funcL710:
	mov r7,r0
	ldr r5,.LPIC3
	add r4,r5,r7,lsl #2
	ldr r7,[r4]
	add r5,r1,r7
	mov r8,r5
	bl .long_funcL711
.long_funcL1094:
	ldr r9,[fp,#-224]
	mov r10,r9
	str r10,[fp,#-196]
	ldr r9,[fp,#-180]
	mov r10,r9
	str r10,[fp,#-244]
	ldr r9,[fp,#-288]
	mov r10,r9
	str r10,[fp,#-232]
	ldr r9,[fp,#-256]
	mov r10,r9
	str r10,[fp,#-204]
	bl .long_funcL696
.long_funcL701:
	ldr r9,[fp,#-196]
	cmp r9,#0
	ldr r9,[fp,#-196]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL699
.long_funcL1096:
	ldr r9,[fp,#-204]
	mov r10,r9
	str r10,[fp,#-256]
	bl .long_funcL700
.long_funcL699:
	ldr r9,[fp,#-232]
	mov r8,r9
	bl .LPIC6
.LPIC5:
	.word SHIFT_TABLE
.LPIC6:
	ldr r7,.LPIC5
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-204]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-256]
	bl .long_funcL700
.long_funcL1091:
	ldr r9,[fp,#-172]
	mov r10,r9
	str r10,[fp,#-188]
	ldr r9,[fp,#-300]
	mov r10,r9
	str r10,[fp,#-236]
	ldr r9,[fp,#-216]
	mov r10,r9
	str r10,[fp,#-164]
	ldr r9,[fp,#-168]
	mov r10,r9
	str r10,[fp,#-220]
	bl .long_funcL685
.long_funcL693:
	ldr r9,[fp,#-164]
	mov r8,r9
	ldr r7,.LPIC5
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-220]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-192]
	bl .long_funcL694
.long_funcL688:
	ldr r9,[fp,#-188]
	cmp r9,#0
	ldr r9,[fp,#-188]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	beq .long_funcL691
.long_funcL1092:
	ldr r9,[fp,#-220]
	mov r8,r9
.long_funcL692:
	mov r9,r8
	str r9,[fp,#-168]
	bl .long_funcL690
.long_funcL691:
	ldr r9,[fp,#-164]
	mov r7,r9
	ldr r6,.LPIC5
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	ldr r9,[fp,#-220]
	add r6,r9,r7
	mov r8,r6
	bl .long_funcL692
.long_funcL1084:
	ldr r9,[fp,#-296]
	mov r10,r9
	str r10,[fp,#-284]
	ldr r9,[fp,#-264]
	mov r10,r9
	str r10,[fp,#-280]
	ldr r9,[fp,#-272]
	mov r10,r9
	str r10,[fp,#-200]
	ldr r9,[fp,#-240]
	mov r10,r9
	str r10,[fp,#-252]
	bl .long_funcL671
.long_funcL676:
	ldr r9,[fp,#-284]
	cmp r9,#0
	ldr r9,[fp,#-284]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL674
.long_funcL1086:
	ldr r9,[fp,#-252]
	mov r10,r9
	str r10,[fp,#-240]
	bl .long_funcL675
.long_funcL674:
	ldr r9,[fp,#-200]
	mov r8,r9
	ldr r7,.LPIC5
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-252]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-240]
	bl .long_funcL675
.long_funcL1077:
	ldr r9,[fp,#-128]
	mov r10,r9
	str r10,[fp,#-156]
	ldr r9,[fp,#-124]
	mov r10,r9
	str r10,[fp,#-160]
	ldr r9,[fp,#-140]
	mov r10,r9
	str r10,[fp,#-116]
	ldr r9,[fp,#-148]
	mov r10,r9
	str r10,[fp,#-144]
	bl .long_funcL657
.long_funcL662:
	ldr r9,[fp,#-156]
	cmp r9,#0
	ldr r9,[fp,#-156]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL660
.long_funcL1079:
	ldr r9,[fp,#-144]
	mov r10,r9
	str r10,[fp,#-148]
	bl .long_funcL661
.long_funcL660:
	ldr r9,[fp,#-116]
	mov r8,r9
	ldr r7,.LPIC5
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-144]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-148]
	bl .long_funcL661
.long_funcL1003:
	ldr r9,[fp,#-96]
	mov r10,r9
	str r10,[fp,#-56]
	ldr r9,[fp,#-88]
	mov r10,r9
	str r10,[fp,#-60]
	ldr r9,[fp,#-92]
	mov r10,r9
	str r10,[fp,#-64]
	bl .long_funcL431
.long_funcL887:
	mov r9,#1
	str r9,[fp,#-268]
	ldr r9,[fp,#-56]
	mov r10,r9
	str r10,[fp,#-208]
	mov r9,#2
	str r9,[fp,#-224]
.long_funcL435:
.long_funcL876:
	mov r9,#1
	str r9,[fp,#-256]
	ldr r9,[fp,#-208]
	mov r10,r9
	str r10,[fp,#-196]
	mov r9,#0
	str r9,[fp,#-228]
	mov r9,#0
	str r9,[fp,#-288]
.long_funcL439:
	ldr r9,[fp,#-196]
	cmp r9,#0
	ldr r9,[fp,#-196]
	and r1,r9,#1
	it lt
	rsblt r1,r1,#0
	cmp r1,#0
	bne .long_funcL444
.long_funcL1008:
	ldr r9,[fp,#-288]
	mov r10,r9
	str r10,[fp,#-204]
.long_funcL443:
	ldr r9,[fp,#-196]
	ldr r10,[fp,#-196]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-212]
	ldr r9,[fp,#-256]
	ldr r10,[fp,#-256]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-292]
	ldr r9,[fp,#-228]
	add r10,r9,#1
	str r10,[fp,#-180]
.long_funcL440:
	ldr r9,[fp,#-180]
	cmp r9,#16
	blt .long_funcL1007
.long_funcL441:
	ldr r9,[fp,#-204]
	cmp r9,#0
	bne .long_funcL446
.long_funcL1010:
	ldr r9,[fp,#-268]
	mov r10,r9
	str r10,[fp,#-232]
	ldr r9,[fp,#-180]
	mov r10,r9
	str r10,[fp,#-276]
.long_funcL447:
	ldr r9,[fp,#-224]
	cmp r9,#0
	bne .long_funcL913
.long_funcL1043:
	mov r3,#0
	ldr r9,[fp,#-276]
	mov r10,r9
	str r10,[fp,#-236]
.long_funcL545:
.long_funcL637:
.long_funcL642:
	movw r6,#32767
	movt r6,#0  @ 32767
	ldr r9,[fp,#-208]
	cmp r9,r6
	bgt .long_funcL645
.long_funcL646:
	mov r6,#1
	ldr r0,.LPIC5
	add r2,r0,r6,lsl #2
	ldr r6,[r2]
	@%r2864 = call i32 @__aeabi_idiv(i32 %r4175,i32 %r2863)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r3}
	ldr r0,[fp,#-208]
	mov r1,r6
	bl __aeabi_idiv
	mov r2,r0
	pop {r0,r1,r3}
	add sp,sp,#4 @stack align 8bytes
	ldr r9,[fp,#-208]
	mov r6,r9
	mov r0,r2
.long_funcL647:
.long_funcL644:
.long_funcL638:
.long_funcL436:
	cmp r0,#0
	bgt .long_funcL1004
.long_funcL1006:
	ldr r9,[fp,#-232]
	mov r10,r9
	str r10,[fp,#-84]
	mov r9,r6
	str r9,[fp,#-88]
	ldr r9,[fp,#-236]
	mov r10,r9
	str r10,[fp,#-92]
	bl .long_funcL437
.long_funcL1004:
	ldr r9,[fp,#-232]
	mov r10,r9
	str r10,[fp,#-268]
	mov r9,r0
	str r9,[fp,#-208]
	mov r9,r3
	str r9,[fp,#-224]
	bl .long_funcL435
.long_funcL645:
	mov r2,#1
	ldr r1,.LPIC5
	add r8,r1,r2,lsl #2
	ldr r2,[r8]
	@%r2848 = call i32 @__aeabi_idiv(i32 %r4175,i32 %r2847)
	push {r0,r1,r2,r3}
	ldr r0,[fp,#-208]
	mov r1,r2
	bl __aeabi_idiv
	mov r8,r0
	pop {r0,r1,r2,r3}
	add r2,r8,#65536
	mov r1,#15
	ldr r5,.LPIC5
	add r4,r5,r1,lsl #2
	ldr r5,[r4]
	sub r4,r2,r5
	mov r6,r8
	mov r0,r4
	bl .long_funcL647
.long_funcL913:
	mov r9,#0
	str r9,[fp,#-244]
	ldr r9,[fp,#-224]
	mov r10,r9
	str r10,[fp,#-192]
	ldr r9,[fp,#-224]
	mov r10,r9
	str r10,[fp,#-264]
.long_funcL543:
.long_funcL912:
	mov r9,#1
	str r9,[fp,#-152]
	ldr r9,[fp,#-192]
	mov r10,r9
	str r10,[fp,#-296]
	mov r9,#0
	str r9,[fp,#-172]
	mov r9,#0
	str r9,[fp,#-220]
.long_funcL547:
	ldr r9,[fp,#-296]
	cmp r9,#0
	ldr r9,[fp,#-296]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL552
.long_funcL1046:
	ldr r9,[fp,#-220]
	mov r10,r9
	str r10,[fp,#-188]
.long_funcL551:
	ldr r9,[fp,#-296]
	ldr r10,[fp,#-296]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-300]
	ldr r9,[fp,#-152]
	ldr r10,[fp,#-152]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-216]
	ldr r9,[fp,#-172]
	add r10,r9,#1
	str r10,[fp,#-176]
.long_funcL548:
	ldr r9,[fp,#-176]
	cmp r9,#16
	blt .long_funcL1045
.long_funcL549:
	ldr r9,[fp,#-188]
	cmp r9,#0
	bne .long_funcL554
.long_funcL1048:
	ldr r9,[fp,#-244]
	mov r10,r9
	str r10,[fp,#-164]
	ldr r9,[fp,#-176]
	mov r10,r9
	str r10,[fp,#-168]
.long_funcL555:
	ldr r9,[fp,#-264]
	cmp r9,#0
	bne .long_funcL929
.long_funcL1062:
	ldr r9,[fp,#-264]
	mov r10,r9
	str r10,[fp,#-252]
	ldr r9,[fp,#-168]
	mov r10,r9
	str r10,[fp,#-272]
.long_funcL593:
.long_funcL625:
.long_funcL630:
	movw r1,#32767
	movt r1,#0  @ 32767
	ldr r9,[fp,#-192]
	cmp r9,r1
	bgt .long_funcL633
.long_funcL634:
	mov r6,#1
	ldr r1,.LPIC5
	add r7,r1,r6,lsl #2
	ldr r6,[r7]
	@%r2813 = call i32 @__aeabi_idiv(i32 %r4081,i32 %r2812)
	push {r0,r1,r2,r3}
	ldr r0,[fp,#-192]
	mov r1,r6
	bl __aeabi_idiv
	mov r7,r0
	pop {r0,r1,r2,r3}
	mov r6,r7
.long_funcL635:
.long_funcL632:
.long_funcL626:
.long_funcL544:
	cmp r6,#0
	bne .long_funcL1042
.long_funcL1044:
	ldr r9,[fp,#-164]
	mov r3,r9
	ldr r9,[fp,#-272]
	mov r10,r9
	str r10,[fp,#-236]
	bl .long_funcL545
.long_funcL1042:
	ldr r9,[fp,#-164]
	mov r10,r9
	str r10,[fp,#-244]
	mov r9,r6
	str r9,[fp,#-192]
	ldr r9,[fp,#-252]
	mov r10,r9
	str r10,[fp,#-264]
	bl .long_funcL543
.long_funcL633:
	mov r7,#1
	ldr r3,.LPIC5
	add r1,r3,r7,lsl #2
	ldr r7,[r1]
	@%r2797 = call i32 @__aeabi_idiv(i32 %r4081,i32 %r2796)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2}
	ldr r0,[fp,#-192]
	mov r1,r7
	bl __aeabi_idiv
	mov r3,r0
	pop {r0,r1,r2}
	add sp,sp,#4 @stack align 8bytes
	add r7,r3,#65536
	mov r3,#15
	ldr r1,.LPIC5
	add r4,r1,r3,lsl #2
	ldr r3,[r4]
	sub r4,r7,r3
	mov r6,r4
	bl .long_funcL635
.long_funcL929:
	mov r7,#1
	ldr r6,.LPIC5
	add r9,r6,r7,lsl #2
	str r9,[fp,#-136]
	ldr r9,[fp,#-264]
	mov r10,r9
	str r10,[fp,#-280]
	ldr r9,[fp,#-264]
	mov r10,r9
	str r10,[fp,#-240]
.long_funcL591:
.long_funcL930:
	ldr r9,[fp,#-280]
	mov r10,r9
	str r10,[fp,#-108]
	ldr r9,[fp,#-240]
	mov r10,r9
	str r10,[fp,#-144]
	mov r9,#0
	str r9,[fp,#-184]
	mov r9,#0
	str r9,[fp,#-156]
.long_funcL595:
	ldr r9,[fp,#-144]
	cmp r9,#0
	ldr r9,[fp,#-144]
	and r5,r9,#1
	it lt
	rsblt r5,r5,#0
	cmp r5,#0
	bne .long_funcL598
.long_funcL599:
	ldr r9,[fp,#-108]
	cmp r9,#0
	ldr r9,[fp,#-108]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL603
.long_funcL1066:
	ldr r9,[fp,#-156]
	mov r10,r9
	str r10,[fp,#-284]
.long_funcL604:
	ldr r9,[fp,#-284]
	mov r10,r9
	str r10,[fp,#-128]
.long_funcL600:
	ldr r9,[fp,#-144]
	ldr r10,[fp,#-144]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-248]
	ldr r9,[fp,#-108]
	ldr r10,[fp,#-108]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-200]
	ldr r9,[fp,#-184]
	add r10,r9,#1
	str r10,[fp,#-260]
.long_funcL596:
	ldr r9,[fp,#-260]
	cmp r9,#16
	blt .long_funcL1064
.long_funcL597:
.long_funcL888:
	ldr r9,[fp,#-280]
	mov r10,r9
	str r10,[fp,#-160]
	ldr r9,[fp,#-240]
	mov r10,r9
	str r10,[fp,#-148]
	mov r9,#0
	str r9,[fp,#-132]
	mov r9,#0
	str r9,[fp,#-120]
.long_funcL606:
	ldr r9,[fp,#-148]
	cmp r9,#0
	ldr r9,[fp,#-148]
	and r4,r9,#1
	it lt
	rsblt r4,r4,#0
	cmp r4,#0
	bne .long_funcL611
.long_funcL1068:
	ldr r9,[fp,#-120]
	mov r10,r9
	str r10,[fp,#-116]
.long_funcL610:
	ldr r9,[fp,#-148]
	ldr r10,[fp,#-148]
	add r4,r9,r10,lsr #31
	asr r9,r4,#1
	str r9,[fp,#-124]
	ldr r9,[fp,#-160]
	ldr r10,[fp,#-160]
	add r4,r9,r10,lsr #31
	asr r9,r4,#1
	str r9,[fp,#-140]
	ldr r9,[fp,#-132]
	add r10,r9,#1
	str r10,[fp,#-112]
.long_funcL607:
	ldr r9,[fp,#-112]
	cmp r9,#16
	blt .long_funcL1067
.long_funcL608:
.long_funcL614:
	ldr r9,[fp,#-136]
	ldr r1,[r9]
	ldr r9,[fp,#-116]
	mul r2,r9,r1
.long_funcL889:
	movw r1,#65535
	movt r1,#0  @ 65535
	mov r8,r1
	mov r1,r2
	mov r2,#0
	mov r4,#0
.long_funcL617:
	cmp r1,#0
	and r3,r1,#1
	it lt
	rsblt r3,r3,#0
	cmp r3,#0
	bne .long_funcL622
.long_funcL1071:
	mov r3,r4
.long_funcL621:
	add r0,r1,r1,lsr #31
	asr r5,r0,#1
	add r0,r8,r8,lsr #31
	asr r7,r0,#1
	add r0,r2,#1
.long_funcL618:
	cmp r0,#16
	blt .long_funcL1070
.long_funcL619:
.long_funcL615:
.long_funcL592:
	cmp r3,#0
	bne .long_funcL1061
.long_funcL1063:
	ldr r9,[fp,#-128]
	mov r10,r9
	str r10,[fp,#-252]
	mov r9,r0
	str r9,[fp,#-272]
	bl .long_funcL593
.long_funcL1061:
	mov r9,r3
	str r9,[fp,#-280]
	ldr r9,[fp,#-128]
	mov r10,r9
	str r10,[fp,#-240]
	bl .long_funcL591
.long_funcL1070:
	mov r8,r7
	mov r1,r5
	mov r2,r0
	mov r4,r3
	bl .long_funcL617
.long_funcL622:
	cmp r8,#0
	and r7,r8,#1
	it lt
	rsblt r7,r7,#0
	cmp r7,#0
	bne .long_funcL620
.long_funcL1072:
	mov r3,r4
	bl .long_funcL621
.long_funcL620:
	mov r7,r2
	bl .LPIC8
.LPIC7:
	.word SHIFT_TABLE
.LPIC8:
	ldr r6,.LPIC7
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	add r6,r4,r7
	mov r3,r6
	bl .long_funcL621
.long_funcL1067:
	ldr r9,[fp,#-140]
	mov r10,r9
	str r10,[fp,#-160]
	ldr r9,[fp,#-124]
	mov r10,r9
	str r10,[fp,#-148]
	ldr r9,[fp,#-112]
	mov r10,r9
	str r10,[fp,#-132]
	ldr r9,[fp,#-116]
	mov r10,r9
	str r10,[fp,#-120]
	bl .long_funcL606
.long_funcL611:
	ldr r9,[fp,#-160]
	cmp r9,#0
	ldr r9,[fp,#-160]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL609
.long_funcL1069:
	ldr r9,[fp,#-120]
	mov r10,r9
	str r10,[fp,#-116]
	bl .long_funcL610
.long_funcL609:
	ldr r9,[fp,#-132]
	mov r8,r9
	ldr r7,.LPIC7
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-120]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-116]
	bl .long_funcL610
.long_funcL1064:
	ldr r9,[fp,#-200]
	mov r10,r9
	str r10,[fp,#-108]
	ldr r9,[fp,#-248]
	mov r10,r9
	str r10,[fp,#-144]
	ldr r9,[fp,#-260]
	mov r10,r9
	str r10,[fp,#-184]
	ldr r9,[fp,#-128]
	mov r10,r9
	str r10,[fp,#-156]
	bl .long_funcL595
.long_funcL603:
	ldr r9,[fp,#-184]
	mov r8,r9
	ldr r7,.LPIC7
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-156]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-284]
	bl .long_funcL604
.long_funcL598:
	ldr r9,[fp,#-108]
	cmp r9,#0
	ldr r9,[fp,#-108]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	beq .long_funcL601
.long_funcL1065:
	ldr r9,[fp,#-156]
	mov r8,r9
.long_funcL602:
	mov r9,r8
	str r9,[fp,#-128]
	bl .long_funcL600
.long_funcL601:
	ldr r9,[fp,#-184]
	mov r7,r9
	ldr r6,.LPIC7
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	ldr r9,[fp,#-156]
	add r6,r9,r7
	mov r8,r6
	bl .long_funcL602
.long_funcL554:
	ldr r9,[fp,#-264]
	cmp r9,#0
	bne .long_funcL891
.long_funcL1050:
	ldr r9,[fp,#-244]
	mov r10,r9
	str r10,[fp,#-60]
	ldr r9,[fp,#-176]
	mov r10,r9
	str r10,[fp,#-236]
.long_funcL559:
	ldr r9,[fp,#-60]
	mov r10,r9
	str r10,[fp,#-164]
	ldr r9,[fp,#-236]
	mov r10,r9
	str r10,[fp,#-168]
	bl .long_funcL555
.long_funcL891:
	mov r6,#1
	ldr r5,.LPIC7
	add r9,r5,r6,lsl #2
	str r9,[fp,#-96]
	ldr r9,[fp,#-264]
	mov r10,r9
	str r10,[fp,#-64]
	ldr r9,[fp,#-244]
	mov r10,r9
	str r10,[fp,#-92]
.long_funcL557:
.long_funcL875:
	ldr r9,[fp,#-64]
	mov r10,r9
	str r10,[fp,#-200]
	ldr r9,[fp,#-92]
	mov r10,r9
	str r10,[fp,#-132]
	mov r9,#0
	str r9,[fp,#-140]
	mov r9,#0
	str r9,[fp,#-160]
.long_funcL561:
	ldr r9,[fp,#-132]
	cmp r9,#0
	ldr r9,[fp,#-132]
	and r4,r9,#1
	it lt
	rsblt r4,r4,#0
	cmp r4,#0
	bne .long_funcL564
.long_funcL565:
	ldr r9,[fp,#-200]
	cmp r9,#0
	ldr r9,[fp,#-200]
	and r6,r9,#1
	it lt
	rsblt r6,r6,#0
	cmp r6,#0
	bne .long_funcL569
.long_funcL1054:
	ldr r9,[fp,#-160]
	mov r10,r9
	str r10,[fp,#-252]
.long_funcL570:
	ldr r9,[fp,#-252]
	mov r10,r9
	str r10,[fp,#-124]
.long_funcL566:
	ldr r9,[fp,#-132]
	ldr r10,[fp,#-132]
	add r8,r9,r10,lsr #31
	asr r9,r8,#1
	str r9,[fp,#-88]
	ldr r9,[fp,#-200]
	ldr r10,[fp,#-200]
	add r8,r9,r10,lsr #31
	asr r9,r8,#1
	str r9,[fp,#-84]
	ldr r9,[fp,#-140]
	add r10,r9,#1
	str r10,[fp,#-272]
.long_funcL562:
	ldr r9,[fp,#-272]
	cmp r9,#16
	blt .long_funcL1052
.long_funcL563:
.long_funcL927:
	ldr r9,[fp,#-64]
	mov r10,r9
	str r10,[fp,#-284]
	ldr r9,[fp,#-92]
	mov r10,r9
	str r10,[fp,#-128]
	mov r9,#0
	str r9,[fp,#-148]
	mov r9,#0
	str r9,[fp,#-248]
.long_funcL572:
	ldr r9,[fp,#-128]
	cmp r9,#0
	ldr r9,[fp,#-128]
	and r1,r9,#1
	it lt
	rsblt r1,r1,#0
	cmp r1,#0
	bne .long_funcL577
.long_funcL1056:
	ldr r9,[fp,#-248]
	mov r10,r9
	str r10,[fp,#-260]
.long_funcL576:
	ldr r9,[fp,#-128]
	ldr r10,[fp,#-128]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-112]
	ldr r9,[fp,#-284]
	ldr r10,[fp,#-284]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-120]
	ldr r9,[fp,#-148]
	add r10,r9,#1
	str r10,[fp,#-116]
.long_funcL573:
	ldr r9,[fp,#-116]
	cmp r9,#16
	blt .long_funcL1055
.long_funcL574:
.long_funcL580:
	ldr r9,[fp,#-96]
	ldr r2,[r9]
	ldr r9,[fp,#-260]
	mul r0,r9,r2
.long_funcL928:
	movw r2,#65535
	movt r2,#0  @ 65535
	mov r6,r2
	mov r2,r0
	mov r0,#0
	mov r1,#0
.long_funcL583:
	cmp r2,#0
	and r3,r2,#1
	it lt
	rsblt r3,r3,#0
	cmp r3,#0
	bne .long_funcL588
.long_funcL1059:
	mov r8,r1
.long_funcL587:
	add r3,r2,r2,lsr #31
	asr r4,r3,#1
	add r3,r6,r6,lsr #31
	asr r5,r3,#1
	add r3,r0,#1
.long_funcL584:
	cmp r3,#16
	blt .long_funcL1058
.long_funcL585:
.long_funcL581:
.long_funcL558:
	cmp r8,#0
	bne .long_funcL1049
.long_funcL1051:
	ldr r9,[fp,#-124]
	mov r10,r9
	str r10,[fp,#-60]
	mov r9,r3
	str r9,[fp,#-236]
	bl .long_funcL559
.long_funcL1049:
	mov r9,r8
	str r9,[fp,#-64]
	ldr r9,[fp,#-124]
	mov r10,r9
	str r10,[fp,#-92]
	bl .long_funcL557
.long_funcL1058:
	mov r6,r5
	mov r2,r4
	mov r0,r3
	mov r1,r8
	bl .long_funcL583
.long_funcL588:
	cmp r6,#0
	and r7,r6,#1
	it lt
	rsblt r7,r7,#0
	cmp r7,#0
	bne .long_funcL586
.long_funcL1060:
	mov r8,r1
	bl .long_funcL587
.long_funcL586:
	mov r7,r0
	ldr r5,.LPIC7
	add r4,r5,r7,lsl #2
	ldr r7,[r4]
	add r5,r1,r7
	mov r8,r5
	bl .long_funcL587
.long_funcL1055:
	ldr r9,[fp,#-120]
	mov r10,r9
	str r10,[fp,#-284]
	ldr r9,[fp,#-112]
	mov r10,r9
	str r10,[fp,#-128]
	ldr r9,[fp,#-116]
	mov r10,r9
	str r10,[fp,#-148]
	ldr r9,[fp,#-260]
	mov r10,r9
	str r10,[fp,#-248]
	bl .long_funcL572
.long_funcL577:
	ldr r9,[fp,#-284]
	cmp r9,#0
	ldr r9,[fp,#-284]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL575
.long_funcL1057:
	ldr r9,[fp,#-248]
	mov r10,r9
	str r10,[fp,#-260]
	bl .long_funcL576
.long_funcL575:
	ldr r9,[fp,#-148]
	mov r8,r9
	ldr r7,.LPIC7
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-248]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-260]
	bl .long_funcL576
.long_funcL1052:
	ldr r9,[fp,#-84]
	mov r10,r9
	str r10,[fp,#-200]
	ldr r9,[fp,#-88]
	mov r10,r9
	str r10,[fp,#-132]
	ldr r9,[fp,#-272]
	mov r10,r9
	str r10,[fp,#-140]
	ldr r9,[fp,#-124]
	mov r10,r9
	str r10,[fp,#-160]
	bl .long_funcL561
.long_funcL569:
	ldr r9,[fp,#-140]
	mov r8,r9
	ldr r7,.LPIC7
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-160]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-252]
	bl .long_funcL570
.long_funcL564:
	ldr r9,[fp,#-200]
	cmp r9,#0
	ldr r9,[fp,#-200]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	beq .long_funcL567
.long_funcL1053:
	ldr r9,[fp,#-160]
	mov r8,r9
.long_funcL568:
	mov r9,r8
	str r9,[fp,#-124]
	bl .long_funcL566
.long_funcL567:
	ldr r9,[fp,#-140]
	mov r7,r9
	ldr r6,.LPIC7
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	ldr r9,[fp,#-160]
	add r6,r9,r7
	mov r8,r6
	bl .long_funcL568
.long_funcL1045:
	ldr r9,[fp,#-216]
	mov r10,r9
	str r10,[fp,#-152]
	ldr r9,[fp,#-300]
	mov r10,r9
	str r10,[fp,#-296]
	ldr r9,[fp,#-176]
	mov r10,r9
	str r10,[fp,#-172]
	ldr r9,[fp,#-188]
	mov r10,r9
	str r10,[fp,#-220]
	bl .long_funcL547
.long_funcL552:
	ldr r9,[fp,#-152]
	cmp r9,#0
	ldr r9,[fp,#-152]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL550
.long_funcL1047:
	ldr r9,[fp,#-220]
	mov r10,r9
	str r10,[fp,#-188]
	bl .long_funcL551
.long_funcL550:
	ldr r9,[fp,#-172]
	mov r8,r9
	ldr r7,.LPIC7
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-220]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-188]
	bl .long_funcL551
.long_funcL446:
	ldr r9,[fp,#-224]
	cmp r9,#0
	bne .long_funcL886
.long_funcL1012:
	mov r8,#0
	ldr r9,[fp,#-180]
	mov r7,r9
.long_funcL451:
	mov r9,r8
	str r9,[fp,#-232]
	mov r9,r7
	str r9,[fp,#-276]
	bl .long_funcL447
.long_funcL886:
	mov r9,#0
	str r9,[fp,#-156]
	ldr r9,[fp,#-224]
	mov r10,r9
	str r10,[fp,#-108]
	ldr r9,[fp,#-268]
	mov r10,r9
	str r10,[fp,#-116]
.long_funcL449:
.long_funcL883:
	mov r9,#1
	str r9,[fp,#-236]
	ldr r9,[fp,#-108]
	mov r10,r9
	str r10,[fp,#-112]
	mov r9,#0
	str r9,[fp,#-136]
	mov r9,#0
	str r9,[fp,#-240]
.long_funcL453:
	ldr r9,[fp,#-112]
	cmp r9,#0
	ldr r9,[fp,#-112]
	and r6,r9,#1
	it lt
	rsblt r6,r6,#0
	cmp r6,#0
	bne .long_funcL458
.long_funcL1015:
	ldr r9,[fp,#-240]
	mov r10,r9
	str r10,[fp,#-164]
.long_funcL457:
	ldr r9,[fp,#-112]
	ldr r10,[fp,#-112]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-184]
	ldr r9,[fp,#-236]
	ldr r10,[fp,#-236]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-144]
	ldr r9,[fp,#-136]
	add r10,r9,#1
	str r10,[fp,#-168]
.long_funcL454:
	ldr r9,[fp,#-168]
	cmp r9,#16
	blt .long_funcL1014
.long_funcL455:
	ldr r9,[fp,#-164]
	cmp r9,#0
	bne .long_funcL460
.long_funcL1017:
	ldr r9,[fp,#-156]
	mov r10,r9
	str r10,[fp,#-60]
	ldr r9,[fp,#-168]
	mov r10,r9
	str r10,[fp,#-280]
.long_funcL461:
	ldr r9,[fp,#-116]
	cmp r9,#0
	bne .long_funcL881
.long_funcL1031:
	ldr r9,[fp,#-116]
	mov r10,r9
	str r10,[fp,#-148]
	ldr r9,[fp,#-280]
	mov r10,r9
	str r10,[fp,#-248]
.long_funcL499:
.long_funcL531:
.long_funcL536:
	movw r1,#32767
	movt r1,#0  @ 32767
	ldr r9,[fp,#-108]
	cmp r9,r1
	bgt .long_funcL539
.long_funcL540:
	mov r5,#1
	bl .LPIC10
.LPIC9:
	.word SHIFT_TABLE
.LPIC10:
	ldr r1,.LPIC9
	add r3,r1,r5,lsl #2
	ldr r5,[r3]
	@%r2391 = call i32 @__aeabi_idiv(i32 %r4159,i32 %r2390)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2}
	ldr r0,[fp,#-108]
	mov r1,r5
	bl __aeabi_idiv
	mov r3,r0
	pop {r0,r1,r2}
	add sp,sp,#4 @stack align 8bytes
	mov r5,r3
.long_funcL541:
.long_funcL538:
.long_funcL532:
.long_funcL450:
	cmp r5,#0
	bne .long_funcL1011
.long_funcL1013:
	ldr r9,[fp,#-60]
	mov r8,r9
	ldr r9,[fp,#-248]
	mov r7,r9
	bl .long_funcL451
.long_funcL1011:
	ldr r9,[fp,#-60]
	mov r10,r9
	str r10,[fp,#-156]
	mov r9,r5
	str r9,[fp,#-108]
	ldr r9,[fp,#-148]
	mov r10,r9
	str r10,[fp,#-116]
	bl .long_funcL449
.long_funcL539:
	mov r8,#1
	ldr r7,.LPIC9
	add r3,r7,r8,lsl #2
	ldr r8,[r3]
	@%r2375 = call i32 @__aeabi_idiv(i32 %r4159,i32 %r2374)
	push {r0,r1,r2,r3}
	ldr r0,[fp,#-108]
	mov r1,r8
	bl __aeabi_idiv
	mov r7,r0
	pop {r0,r1,r2,r3}
	add r8,r7,#65536
	mov r7,#15
	ldr r3,.LPIC9
	add r1,r3,r7,lsl #2
	ldr r7,[r1]
	sub r3,r8,r7
	mov r5,r3
	bl .long_funcL541
.long_funcL881:
	mov r8,#1
	ldr r7,.LPIC9
	add r9,r7,r8,lsl #2
	str r9,[fp,#-120]
	ldr r9,[fp,#-116]
	mov r10,r9
	str r10,[fp,#-128]
	ldr r9,[fp,#-116]
	mov r10,r9
	str r10,[fp,#-84]
.long_funcL497:
.long_funcL879:
	ldr r9,[fp,#-128]
	mov r10,r9
	str r10,[fp,#-200]
	ldr r9,[fp,#-84]
	mov r10,r9
	str r10,[fp,#-140]
	mov r9,#0
	str r9,[fp,#-252]
	mov r9,#0
	str r9,[fp,#-132]
.long_funcL501:
	ldr r9,[fp,#-140]
	cmp r9,#0
	ldr r9,[fp,#-140]
	and r4,r9,#1
	it lt
	rsblt r4,r4,#0
	cmp r4,#0
	bne .long_funcL504
.long_funcL505:
	ldr r9,[fp,#-200]
	cmp r9,#0
	ldr r9,[fp,#-200]
	and r6,r9,#1
	it lt
	rsblt r6,r6,#0
	cmp r6,#0
	bne .long_funcL509
.long_funcL1035:
	ldr r9,[fp,#-132]
	mov r10,r9
	str r10,[fp,#-88]
.long_funcL510:
	ldr r9,[fp,#-88]
	mov r10,r9
	str r10,[fp,#-124]
.long_funcL506:
	ldr r9,[fp,#-140]
	ldr r10,[fp,#-140]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-284]
	ldr r9,[fp,#-200]
	ldr r10,[fp,#-200]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-260]
	ldr r9,[fp,#-252]
	add r10,r9,#1
	str r10,[fp,#-272]
.long_funcL502:
	ldr r9,[fp,#-272]
	cmp r9,#16
	blt .long_funcL1033
.long_funcL503:
.long_funcL880:
	ldr r9,[fp,#-128]
	mov r10,r9
	str r10,[fp,#-176]
	ldr r9,[fp,#-84]
	mov r10,r9
	str r10,[fp,#-220]
	mov r9,#0
	str r9,[fp,#-96]
	mov r9,#0
	str r9,[fp,#-216]
.long_funcL512:
	ldr r9,[fp,#-220]
	cmp r9,#0
	ldr r9,[fp,#-220]
	and r5,r9,#1
	it lt
	rsblt r5,r5,#0
	cmp r5,#0
	bne .long_funcL517
.long_funcL1037:
	ldr r9,[fp,#-216]
	mov r10,r9
	str r10,[fp,#-300]
.long_funcL516:
	ldr r9,[fp,#-220]
	ldr r10,[fp,#-220]
	add r4,r9,r10,lsr #31
	asr r9,r4,#1
	str r9,[fp,#-160]
	ldr r9,[fp,#-176]
	ldr r10,[fp,#-176]
	add r4,r9,r10,lsr #31
	asr r9,r4,#1
	str r9,[fp,#-92]
	ldr r9,[fp,#-96]
	add r10,r9,#1
	str r10,[fp,#-64]
.long_funcL513:
	ldr r9,[fp,#-64]
	cmp r9,#16
	blt .long_funcL1036
.long_funcL514:
.long_funcL520:
	ldr r9,[fp,#-120]
	ldr r1,[r9]
	ldr r9,[fp,#-300]
	mul r2,r9,r1
.long_funcL878:
	movw r1,#65535
	movt r1,#0  @ 65535
	mov r6,r1
	mov r1,r2
	mov r2,#0
	mov r4,#0
.long_funcL523:
	cmp r1,#0
	and r3,r1,#1
	it lt
	rsblt r3,r3,#0
	cmp r3,#0
	bne .long_funcL528
.long_funcL1040:
	mov r3,r4
.long_funcL527:
	add r0,r1,r1,lsr #31
	asr r5,r0,#1
	add r0,r6,r6,lsr #31
	asr r8,r0,#1
	add r0,r2,#1
.long_funcL524:
	cmp r0,#16
	blt .long_funcL1039
.long_funcL525:
.long_funcL521:
.long_funcL498:
	cmp r3,#0
	bne .long_funcL1030
.long_funcL1032:
	ldr r9,[fp,#-124]
	mov r10,r9
	str r10,[fp,#-148]
	mov r9,r0
	str r9,[fp,#-248]
	bl .long_funcL499
.long_funcL1030:
	mov r9,r3
	str r9,[fp,#-128]
	ldr r9,[fp,#-124]
	mov r10,r9
	str r10,[fp,#-84]
	bl .long_funcL497
.long_funcL1039:
	mov r6,r8
	mov r1,r5
	mov r2,r0
	mov r4,r3
	bl .long_funcL523
.long_funcL528:
	cmp r6,#0
	and r8,r6,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL526
.long_funcL1041:
	mov r3,r4
	bl .long_funcL527
.long_funcL526:
	mov r8,r2
	ldr r7,.LPIC9
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	add r7,r4,r8
	mov r3,r7
	bl .long_funcL527
.long_funcL1036:
	ldr r9,[fp,#-92]
	mov r10,r9
	str r10,[fp,#-176]
	ldr r9,[fp,#-160]
	mov r10,r9
	str r10,[fp,#-220]
	ldr r9,[fp,#-64]
	mov r10,r9
	str r10,[fp,#-96]
	ldr r9,[fp,#-300]
	mov r10,r9
	str r10,[fp,#-216]
	bl .long_funcL512
.long_funcL517:
	ldr r9,[fp,#-176]
	cmp r9,#0
	ldr r9,[fp,#-176]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL515
.long_funcL1038:
	ldr r9,[fp,#-216]
	mov r10,r9
	str r10,[fp,#-300]
	bl .long_funcL516
.long_funcL515:
	ldr r9,[fp,#-96]
	mov r8,r9
	ldr r7,.LPIC9
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-216]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-300]
	bl .long_funcL516
.long_funcL1033:
	ldr r9,[fp,#-260]
	mov r10,r9
	str r10,[fp,#-200]
	ldr r9,[fp,#-284]
	mov r10,r9
	str r10,[fp,#-140]
	ldr r9,[fp,#-272]
	mov r10,r9
	str r10,[fp,#-252]
	ldr r9,[fp,#-124]
	mov r10,r9
	str r10,[fp,#-132]
	bl .long_funcL501
.long_funcL509:
	ldr r9,[fp,#-252]
	mov r8,r9
	ldr r7,.LPIC9
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-132]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-88]
	bl .long_funcL510
.long_funcL504:
	ldr r9,[fp,#-200]
	cmp r9,#0
	ldr r9,[fp,#-200]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	beq .long_funcL507
.long_funcL1034:
	ldr r9,[fp,#-132]
	mov r8,r9
.long_funcL508:
	mov r9,r8
	str r9,[fp,#-124]
	bl .long_funcL506
.long_funcL507:
	ldr r9,[fp,#-252]
	mov r7,r9
	ldr r6,.LPIC9
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	ldr r9,[fp,#-132]
	add r6,r9,r7
	mov r8,r6
	bl .long_funcL508
.long_funcL460:
	ldr r9,[fp,#-116]
	cmp r9,#0
	bne .long_funcL884
.long_funcL1019:
	ldr r9,[fp,#-156]
	mov r10,r9
	str r10,[fp,#-244]
	ldr r9,[fp,#-168]
	mov r10,r9
	str r10,[fp,#-152]
.long_funcL465:
	ldr r9,[fp,#-244]
	mov r10,r9
	str r10,[fp,#-60]
	ldr r9,[fp,#-152]
	mov r10,r9
	str r10,[fp,#-280]
	bl .long_funcL461
.long_funcL884:
	mov r6,#1
	ldr r5,.LPIC9
	add r9,r5,r6,lsl #2
	str r9,[fp,#-296]
	ldr r9,[fp,#-116]
	mov r10,r9
	str r10,[fp,#-264]
	ldr r9,[fp,#-156]
	mov r10,r9
	str r10,[fp,#-172]
.long_funcL463:
.long_funcL885:
	ldr r9,[fp,#-264]
	mov r10,r9
	str r10,[fp,#-300]
	ldr r9,[fp,#-172]
	mov r10,r9
	str r10,[fp,#-64]
	mov r9,#0
	str r9,[fp,#-248]
	mov r9,#0
	str r9,[fp,#-216]
.long_funcL467:
	ldr r9,[fp,#-64]
	cmp r9,#0
	ldr r9,[fp,#-64]
	and r4,r9,#1
	it lt
	rsblt r4,r4,#0
	cmp r4,#0
	bne .long_funcL470
.long_funcL471:
	ldr r9,[fp,#-300]
	cmp r9,#0
	ldr r9,[fp,#-300]
	and r6,r9,#1
	it lt
	rsblt r6,r6,#0
	cmp r6,#0
	bne .long_funcL475
.long_funcL1023:
	ldr r9,[fp,#-216]
	mov r10,r9
	str r10,[fp,#-276]
.long_funcL476:
	ldr r9,[fp,#-276]
	mov r10,r9
	str r10,[fp,#-148]
.long_funcL472:
	ldr r9,[fp,#-64]
	ldr r10,[fp,#-64]
	add r8,r9,r10,lsr #31
	asr r9,r8,#1
	str r9,[fp,#-192]
	ldr r9,[fp,#-300]
	ldr r10,[fp,#-300]
	add r8,r9,r10,lsr #31
	asr r9,r8,#1
	str r9,[fp,#-188]
	ldr r9,[fp,#-248]
	add r10,r9,#1
	str r10,[fp,#-232]
.long_funcL468:
	ldr r9,[fp,#-232]
	cmp r9,#16
	blt .long_funcL1021
.long_funcL469:
.long_funcL882:
	ldr r9,[fp,#-264]
	mov r10,r9
	str r10,[fp,#-284]
	ldr r9,[fp,#-172]
	mov r10,r9
	str r10,[fp,#-272]
	mov r9,#0
	str r9,[fp,#-176]
	mov r9,#0
	str r9,[fp,#-96]
.long_funcL478:
	ldr r9,[fp,#-272]
	cmp r9,#0
	ldr r9,[fp,#-272]
	and r1,r9,#1
	it lt
	rsblt r1,r1,#0
	cmp r1,#0
	bne .long_funcL483
.long_funcL1025:
	ldr r9,[fp,#-96]
	mov r10,r9
	str r10,[fp,#-260]
.long_funcL482:
	ldr r9,[fp,#-272]
	ldr r10,[fp,#-272]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-92]
	ldr r9,[fp,#-284]
	ldr r10,[fp,#-284]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-160]
	ldr r9,[fp,#-176]
	add r10,r9,#1
	str r10,[fp,#-220]
.long_funcL479:
	ldr r9,[fp,#-220]
	cmp r9,#16
	blt .long_funcL1024
.long_funcL480:
.long_funcL486:
	ldr r9,[fp,#-296]
	ldr r2,[r9]
	ldr r9,[fp,#-260]
	mul r0,r9,r2
.long_funcL877:
	movw r2,#65535
	movt r2,#0  @ 65535
	mov r6,r2
	mov r2,r0
	mov r0,#0
	mov r1,#0
.long_funcL489:
	cmp r2,#0
	and r3,r2,#1
	it lt
	rsblt r3,r3,#0
	cmp r3,#0
	bne .long_funcL494
.long_funcL1028:
	mov r8,r1
.long_funcL493:
	add r3,r2,r2,lsr #31
	asr r4,r3,#1
	add r3,r6,r6,lsr #31
	asr r5,r3,#1
	add r3,r0,#1
.long_funcL490:
	cmp r3,#16
	blt .long_funcL1027
.long_funcL491:
.long_funcL487:
.long_funcL464:
	cmp r8,#0
	bne .long_funcL1018
.long_funcL1020:
	ldr r9,[fp,#-148]
	mov r10,r9
	str r10,[fp,#-244]
	mov r9,r3
	str r9,[fp,#-152]
	bl .long_funcL465
.long_funcL1018:
	mov r9,r8
	str r9,[fp,#-264]
	ldr r9,[fp,#-148]
	mov r10,r9
	str r10,[fp,#-172]
	bl .long_funcL463
.long_funcL1027:
	mov r6,r5
	mov r2,r4
	mov r0,r3
	mov r1,r8
	bl .long_funcL489
.long_funcL494:
	cmp r6,#0
	and r7,r6,#1
	it lt
	rsblt r7,r7,#0
	cmp r7,#0
	bne .long_funcL492
.long_funcL1029:
	mov r8,r1
	bl .long_funcL493
.long_funcL492:
	mov r7,r0
	ldr r5,.LPIC9
	add r4,r5,r7,lsl #2
	ldr r7,[r4]
	add r5,r1,r7
	mov r8,r5
	bl .long_funcL493
.long_funcL1024:
	ldr r9,[fp,#-160]
	mov r10,r9
	str r10,[fp,#-284]
	ldr r9,[fp,#-92]
	mov r10,r9
	str r10,[fp,#-272]
	ldr r9,[fp,#-220]
	mov r10,r9
	str r10,[fp,#-176]
	ldr r9,[fp,#-260]
	mov r10,r9
	str r10,[fp,#-96]
	bl .long_funcL478
.long_funcL483:
	ldr r9,[fp,#-284]
	cmp r9,#0
	ldr r9,[fp,#-284]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL481
.long_funcL1026:
	ldr r9,[fp,#-96]
	mov r10,r9
	str r10,[fp,#-260]
	bl .long_funcL482
.long_funcL481:
	ldr r9,[fp,#-176]
	mov r8,r9
	bl .LPIC12
.LPIC11:
	.word SHIFT_TABLE
.LPIC12:
	ldr r7,.LPIC11
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-96]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-260]
	bl .long_funcL482
.long_funcL1021:
	ldr r9,[fp,#-188]
	mov r10,r9
	str r10,[fp,#-300]
	ldr r9,[fp,#-192]
	mov r10,r9
	str r10,[fp,#-64]
	ldr r9,[fp,#-232]
	mov r10,r9
	str r10,[fp,#-248]
	ldr r9,[fp,#-148]
	mov r10,r9
	str r10,[fp,#-216]
	bl .long_funcL467
.long_funcL475:
	ldr r9,[fp,#-248]
	mov r8,r9
	ldr r7,.LPIC11
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-216]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-276]
	bl .long_funcL476
.long_funcL470:
	ldr r9,[fp,#-300]
	cmp r9,#0
	ldr r9,[fp,#-300]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	beq .long_funcL473
.long_funcL1022:
	ldr r9,[fp,#-216]
	mov r8,r9
.long_funcL474:
	mov r9,r8
	str r9,[fp,#-148]
	bl .long_funcL472
.long_funcL473:
	ldr r9,[fp,#-248]
	mov r7,r9
	ldr r6,.LPIC11
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	ldr r9,[fp,#-216]
	add r6,r9,r7
	mov r8,r6
	bl .long_funcL474
.long_funcL1014:
	ldr r9,[fp,#-144]
	mov r10,r9
	str r10,[fp,#-236]
	ldr r9,[fp,#-184]
	mov r10,r9
	str r10,[fp,#-112]
	ldr r9,[fp,#-168]
	mov r10,r9
	str r10,[fp,#-136]
	ldr r9,[fp,#-164]
	mov r10,r9
	str r10,[fp,#-240]
	bl .long_funcL453
.long_funcL458:
	ldr r9,[fp,#-236]
	cmp r9,#0
	ldr r9,[fp,#-236]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL456
.long_funcL1016:
	ldr r9,[fp,#-240]
	mov r10,r9
	str r10,[fp,#-164]
	bl .long_funcL457
.long_funcL456:
	ldr r9,[fp,#-136]
	mov r8,r9
	ldr r7,.LPIC11
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-240]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-164]
	bl .long_funcL457
.long_funcL1007:
	ldr r9,[fp,#-292]
	mov r10,r9
	str r10,[fp,#-256]
	ldr r9,[fp,#-212]
	mov r10,r9
	str r10,[fp,#-196]
	ldr r9,[fp,#-180]
	mov r10,r9
	str r10,[fp,#-228]
	ldr r9,[fp,#-204]
	mov r10,r9
	str r10,[fp,#-288]
	bl .long_funcL439
.long_funcL444:
	ldr r9,[fp,#-256]
	cmp r9,#0
	ldr r9,[fp,#-256]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL442
.long_funcL1009:
	ldr r9,[fp,#-288]
	mov r10,r9
	str r10,[fp,#-204]
	bl .long_funcL443
.long_funcL442:
	ldr r9,[fp,#-228]
	mov r8,r9
	ldr r7,.LPIC11
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-288]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-204]
	bl .long_funcL443
.long_funcL936:
	ldr r9,[fp,#-28]
	mov r10,r9
	str r10,[fp,#-12]
	ldr r9,[fp,#-52]
	mov r10,r9
	str r10,[fp,#-40]
	ldr r9,[fp,#-36]
	mov r10,r9
	str r10,[fp,#-44]
	bl .long_funcL217
.long_funcL427:
	mov r8,#1
	ldr r7,.LPIC11
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	@%r1889 = call i32 @__aeabi_idiv(i32 %r4297,i32 %r1888)
	push {r0,r1,r2,r3}
	ldr r0,[fp,#-40]
	mov r1,r8
	bl __aeabi_idiv
	mov r7,r0
	pop {r0,r1,r2,r3}
	add r8,r7,#65536
	mov r6,#15
	ldr r5,.LPIC11
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	sub r5,r8,r6
	mov r9,r7
	str r9,[fp,#-48]
	mov r9,r5
	str r9,[fp,#-52]
	bl .long_funcL429
.long_funcL895:
	mov r9,#0
	str r9,[fp,#-132]
	ldr r9,[fp,#-44]
	mov r10,r9
	str r10,[fp,#-200]
	ldr r9,[fp,#-44]
	mov r10,r9
	str r10,[fp,#-60]
.long_funcL325:
.long_funcL899:
	mov r9,#1
	str r9,[fp,#-244]
	ldr r9,[fp,#-200]
	mov r10,r9
	str r10,[fp,#-92]
	mov r9,#0
	str r9,[fp,#-252]
	mov r9,#0
	str r9,[fp,#-120]
.long_funcL329:
	ldr r9,[fp,#-92]
	cmp r9,#0
	ldr r9,[fp,#-92]
	and r1,r9,#1
	it lt
	rsblt r1,r1,#0
	cmp r1,#0
	bne .long_funcL334
.long_funcL976:
	ldr r9,[fp,#-120]
	mov r10,r9
	str r10,[fp,#-280]
.long_funcL333:
	ldr r9,[fp,#-92]
	ldr r10,[fp,#-92]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-88]
	ldr r9,[fp,#-244]
	ldr r10,[fp,#-244]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-124]
	ldr r9,[fp,#-252]
	add r10,r9,#1
	str r10,[fp,#-128]
.long_funcL330:
	ldr r9,[fp,#-128]
	cmp r9,#16
	blt .long_funcL975
.long_funcL331:
	ldr r9,[fp,#-280]
	cmp r9,#0
	bne .long_funcL336
.long_funcL978:
	ldr r9,[fp,#-132]
	mov r10,r9
	str r10,[fp,#-140]
	ldr r9,[fp,#-128]
	mov r10,r9
	str r10,[fp,#-84]
.long_funcL337:
	ldr r9,[fp,#-60]
	cmp r9,#0
	bne .long_funcL907
.long_funcL992:
	ldr r9,[fp,#-60]
	mov r10,r9
	str r10,[fp,#-220]
	ldr r9,[fp,#-84]
	mov r10,r9
	str r10,[fp,#-160]
.long_funcL375:
.long_funcL407:
.long_funcL412:
	movw r2,#32767
	movt r2,#0  @ 32767
	ldr r9,[fp,#-200]
	cmp r9,r2
	bgt .long_funcL415
.long_funcL416:
	mov r2,#1
	ldr r0,.LPIC11
	add r8,r0,r2,lsl #2
	ldr r2,[r8]
	@%r1854 = call i32 @__aeabi_idiv(i32 %r4227,i32 %r1853)
	push {r0,r1,r2,r3}
	ldr r0,[fp,#-200]
	mov r1,r2
	bl __aeabi_idiv
	mov r8,r0
	pop {r0,r1,r2,r3}
	mov r2,r8
.long_funcL417:
.long_funcL414:
.long_funcL408:
.long_funcL326:
	cmp r2,#0
	bne .long_funcL972
.long_funcL974:
	ldr r9,[fp,#-140]
	mov r10,r9
	str r10,[fp,#-36]
	ldr r9,[fp,#-160]
	mov r10,r9
	str r10,[fp,#-32]
	bl .long_funcL327
.long_funcL972:
	ldr r9,[fp,#-140]
	mov r10,r9
	str r10,[fp,#-132]
	mov r9,r2
	str r9,[fp,#-200]
	ldr r9,[fp,#-220]
	mov r10,r9
	str r10,[fp,#-60]
	bl .long_funcL325
.long_funcL415:
	mov r8,#1
	ldr r0,.LPIC11
	add r1,r0,r8,lsl #2
	ldr r8,[r1]
	@%r1838 = call i32 @__aeabi_idiv(i32 %r4227,i32 %r1837)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r2,r3}
	ldr r0,[fp,#-200]
	mov r1,r8
	bl __aeabi_idiv
	mov r1,r0
	pop {r0,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	add r8,r1,#65536
	mov r1,#15
	ldr r0,.LPIC11
	add r6,r0,r1,lsl #2
	ldr r1,[r6]
	sub r6,r8,r1
	mov r2,r6
	bl .long_funcL417
.long_funcL907:
	mov r8,#1
	ldr r6,.LPIC11
	add r9,r6,r8,lsl #2
	str r9,[fp,#-152]
	ldr r9,[fp,#-60]
	mov r10,r9
	str r10,[fp,#-96]
	ldr r9,[fp,#-60]
	mov r10,r9
	str r10,[fp,#-272]
.long_funcL373:
.long_funcL894:
	ldr r9,[fp,#-96]
	mov r10,r9
	str r10,[fp,#-248]
	ldr r9,[fp,#-272]
	mov r10,r9
	str r10,[fp,#-216]
	mov r9,#0
	str r9,[fp,#-192]
	mov r9,#0
	str r9,[fp,#-172]
.long_funcL377:
	ldr r9,[fp,#-216]
	cmp r9,#0
	ldr r9,[fp,#-216]
	and r3,r9,#1
	it lt
	rsblt r3,r3,#0
	cmp r3,#0
	bne .long_funcL380
.long_funcL381:
	ldr r9,[fp,#-248]
	cmp r9,#0
	ldr r9,[fp,#-248]
	and r4,r9,#1
	it lt
	rsblt r4,r4,#0
	cmp r4,#0
	bne .long_funcL385
.long_funcL996:
	ldr r9,[fp,#-172]
	mov r10,r9
	str r10,[fp,#-284]
.long_funcL386:
	ldr r9,[fp,#-284]
	mov r10,r9
	str r10,[fp,#-232]
.long_funcL382:
	ldr r9,[fp,#-216]
	ldr r10,[fp,#-216]
	add r7,r9,r10,lsr #31
	asr r9,r7,#1
	str r9,[fp,#-176]
	ldr r9,[fp,#-248]
	ldr r10,[fp,#-248]
	add r7,r9,r10,lsr #31
	asr r9,r7,#1
	str r9,[fp,#-260]
	ldr r9,[fp,#-192]
	add r10,r9,#1
	str r10,[fp,#-188]
.long_funcL378:
	ldr r9,[fp,#-188]
	cmp r9,#16
	blt .long_funcL994
.long_funcL379:
.long_funcL896:
	ldr r9,[fp,#-96]
	mov r10,r9
	str r10,[fp,#-144]
	ldr r9,[fp,#-272]
	mov r10,r9
	str r10,[fp,#-184]
	mov r9,#0
	str r9,[fp,#-300]
	mov r9,#0
	str r9,[fp,#-264]
.long_funcL388:
	ldr r9,[fp,#-184]
	cmp r9,#0
	ldr r9,[fp,#-184]
	and r2,r9,#1
	it lt
	rsblt r2,r2,#0
	cmp r2,#0
	bne .long_funcL393
.long_funcL998:
	ldr r9,[fp,#-264]
	mov r10,r9
	str r10,[fp,#-296]
.long_funcL392:
	ldr r9,[fp,#-184]
	ldr r10,[fp,#-184]
	add r2,r9,r10,lsr #31
	asr r9,r2,#1
	str r9,[fp,#-276]
	ldr r9,[fp,#-144]
	ldr r10,[fp,#-144]
	add r2,r9,r10,lsr #31
	asr r9,r2,#1
	str r9,[fp,#-148]
	ldr r9,[fp,#-300]
	add r10,r9,#1
	str r10,[fp,#-64]
.long_funcL389:
	ldr r9,[fp,#-64]
	cmp r9,#16
	blt .long_funcL997
.long_funcL390:
.long_funcL396:
	ldr r9,[fp,#-152]
	ldr r0,[r9]
	ldr r9,[fp,#-296]
	mul r5,r9,r0
.long_funcL900:
	movw r0,#65535
	movt r0,#0  @ 65535
	mov r4,r0
	mov r0,r5
	mov r5,#0
	mov r2,#0
.long_funcL399:
	cmp r0,#0
	and r1,r0,#1
	it lt
	rsblt r1,r1,#0
	cmp r1,#0
	bne .long_funcL404
.long_funcL1001:
	mov r7,r2
.long_funcL403:
	add r1,r0,r0,lsr #31
	asr r3,r1,#1
	add r1,r4,r4,lsr #31
	asr r8,r1,#1
	add r1,r5,#1
.long_funcL400:
	cmp r1,#16
	blt .long_funcL1000
.long_funcL401:
.long_funcL397:
.long_funcL374:
	cmp r7,#0
	bne .long_funcL991
.long_funcL993:
	ldr r9,[fp,#-232]
	mov r10,r9
	str r10,[fp,#-220]
	mov r9,r1
	str r9,[fp,#-160]
	bl .long_funcL375
.long_funcL991:
	mov r9,r7
	str r9,[fp,#-96]
	ldr r9,[fp,#-232]
	mov r10,r9
	str r10,[fp,#-272]
	bl .long_funcL373
.long_funcL1000:
	mov r4,r8
	mov r0,r3
	mov r5,r1
	mov r2,r7
	bl .long_funcL399
.long_funcL404:
	cmp r4,#0
	and r8,r4,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL402
.long_funcL1002:
	mov r7,r2
	bl .long_funcL403
.long_funcL402:
	mov r8,r5
	ldr r6,.LPIC11
	add r3,r6,r8,lsl #2
	ldr r8,[r3]
	add r6,r2,r8
	mov r7,r6
	bl .long_funcL403
.long_funcL997:
	ldr r9,[fp,#-148]
	mov r10,r9
	str r10,[fp,#-144]
	ldr r9,[fp,#-276]
	mov r10,r9
	str r10,[fp,#-184]
	ldr r9,[fp,#-64]
	mov r10,r9
	str r10,[fp,#-300]
	ldr r9,[fp,#-296]
	mov r10,r9
	str r10,[fp,#-264]
	bl .long_funcL388
.long_funcL393:
	ldr r9,[fp,#-144]
	cmp r9,#0
	ldr r9,[fp,#-144]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL391
.long_funcL999:
	ldr r9,[fp,#-264]
	mov r10,r9
	str r10,[fp,#-296]
	bl .long_funcL392
.long_funcL391:
	ldr r9,[fp,#-300]
	mov r8,r9
	ldr r7,.LPIC11
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-264]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-296]
	bl .long_funcL392
.long_funcL994:
	ldr r9,[fp,#-260]
	mov r10,r9
	str r10,[fp,#-248]
	ldr r9,[fp,#-176]
	mov r10,r9
	str r10,[fp,#-216]
	ldr r9,[fp,#-188]
	mov r10,r9
	str r10,[fp,#-192]
	ldr r9,[fp,#-232]
	mov r10,r9
	str r10,[fp,#-172]
	bl .long_funcL377
.long_funcL385:
	ldr r9,[fp,#-192]
	mov r8,r9
	bl .LPIC14
.LPIC13:
	.word SHIFT_TABLE
.LPIC14:
	ldr r7,.LPIC13
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-172]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-284]
	bl .long_funcL386
.long_funcL380:
	ldr r9,[fp,#-248]
	cmp r9,#0
	ldr r9,[fp,#-248]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	beq .long_funcL383
.long_funcL995:
	ldr r9,[fp,#-172]
	mov r8,r9
.long_funcL384:
	mov r9,r8
	str r9,[fp,#-232]
	bl .long_funcL382
.long_funcL383:
	ldr r9,[fp,#-192]
	mov r7,r9
	ldr r6,.LPIC13
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	ldr r9,[fp,#-172]
	add r6,r9,r7
	mov r8,r6
	bl .long_funcL384
.long_funcL336:
	ldr r9,[fp,#-60]
	cmp r9,#0
	bne .long_funcL909
.long_funcL980:
	ldr r9,[fp,#-132]
	mov r10,r9
	str r10,[fp,#-240]
	ldr r9,[fp,#-128]
	mov r10,r9
	str r10,[fp,#-236]
.long_funcL341:
	ldr r9,[fp,#-240]
	mov r10,r9
	str r10,[fp,#-140]
	ldr r9,[fp,#-236]
	mov r10,r9
	str r10,[fp,#-84]
	bl .long_funcL337
.long_funcL909:
	mov r6,#1
	ldr r5,.LPIC13
	add r9,r5,r6,lsl #2
	str r9,[fp,#-168]
	ldr r9,[fp,#-60]
	mov r10,r9
	str r10,[fp,#-156]
	ldr r9,[fp,#-132]
	mov r10,r9
	str r10,[fp,#-116]
.long_funcL339:
.long_funcL931:
	ldr r9,[fp,#-156]
	mov r10,r9
	str r10,[fp,#-208]
	ldr r9,[fp,#-116]
	mov r10,r9
	str r10,[fp,#-224]
	mov r9,#0
	str r9,[fp,#-292]
	mov r9,#0
	str r9,[fp,#-268]
.long_funcL343:
	ldr r9,[fp,#-224]
	cmp r9,#0
	ldr r9,[fp,#-224]
	and r4,r9,#1
	it lt
	rsblt r4,r4,#0
	cmp r4,#0
	bne .long_funcL346
.long_funcL347:
	ldr r9,[fp,#-208]
	cmp r9,#0
	ldr r9,[fp,#-208]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL351
.long_funcL984:
	ldr r9,[fp,#-268]
	mov r10,r9
	str r10,[fp,#-108]
.long_funcL352:
	ldr r9,[fp,#-108]
	mov r10,r9
	str r10,[fp,#-212]
.long_funcL348:
	ldr r9,[fp,#-224]
	ldr r10,[fp,#-224]
	add r7,r9,r10,lsr #31
	asr r9,r7,#1
	str r9,[fp,#-136]
	ldr r9,[fp,#-208]
	ldr r10,[fp,#-208]
	add r7,r9,r10,lsr #31
	asr r9,r7,#1
	str r9,[fp,#-164]
	ldr r9,[fp,#-292]
	add r10,r9,#1
	str r10,[fp,#-112]
.long_funcL344:
	ldr r9,[fp,#-112]
	cmp r9,#16
	blt .long_funcL982
.long_funcL345:
.long_funcL890:
	ldr r9,[fp,#-156]
	mov r10,r9
	str r10,[fp,#-228]
	ldr r9,[fp,#-116]
	mov r10,r9
	str r10,[fp,#-48]
	mov r9,#0
	str r9,[fp,#-56]
	mov r9,#0
	str r9,[fp,#-256]
.long_funcL354:
	ldr r9,[fp,#-48]
	cmp r9,#0
	ldr r9,[fp,#-48]
	and r1,r9,#1
	it lt
	rsblt r1,r1,#0
	cmp r1,#0
	bne .long_funcL359
.long_funcL986:
	ldr r9,[fp,#-256]
	mov r10,r9
	str r10,[fp,#-204]
.long_funcL358:
	ldr r9,[fp,#-48]
	ldr r10,[fp,#-48]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-180]
	ldr r9,[fp,#-228]
	ldr r10,[fp,#-228]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-288]
	ldr r9,[fp,#-56]
	add r10,r9,#1
	str r10,[fp,#-196]
.long_funcL355:
	ldr r9,[fp,#-196]
	cmp r9,#16
	blt .long_funcL985
.long_funcL356:
.long_funcL362:
	ldr r9,[fp,#-168]
	ldr r2,[r9]
	ldr r9,[fp,#-204]
	mul r0,r9,r2
.long_funcL901:
	movw r2,#65535
	movt r2,#0  @ 65535
	mov r8,r2
	mov r2,r0
	mov r0,#0
	mov r1,#0
.long_funcL365:
	cmp r2,#0
	and r3,r2,#1
	it lt
	rsblt r3,r3,#0
	cmp r3,#0
	bne .long_funcL370
.long_funcL989:
	mov r7,r1
.long_funcL369:
	add r3,r2,r2,lsr #31
	asr r4,r3,#1
	add r3,r8,r8,lsr #31
	asr r6,r3,#1
	add r3,r0,#1
.long_funcL366:
	cmp r3,#16
	blt .long_funcL988
.long_funcL367:
.long_funcL363:
.long_funcL340:
	cmp r7,#0
	bne .long_funcL979
.long_funcL981:
	ldr r9,[fp,#-212]
	mov r10,r9
	str r10,[fp,#-240]
	mov r9,r3
	str r9,[fp,#-236]
	bl .long_funcL341
.long_funcL979:
	mov r9,r7
	str r9,[fp,#-156]
	ldr r9,[fp,#-212]
	mov r10,r9
	str r10,[fp,#-116]
	bl .long_funcL339
.long_funcL988:
	mov r8,r6
	mov r2,r4
	mov r0,r3
	mov r1,r7
	bl .long_funcL365
.long_funcL370:
	cmp r8,#0
	and r6,r8,#1
	it lt
	rsblt r6,r6,#0
	cmp r6,#0
	bne .long_funcL368
.long_funcL990:
	mov r7,r1
	bl .long_funcL369
.long_funcL368:
	mov r6,r0
	ldr r5,.LPIC13
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	add r5,r1,r6
	mov r7,r5
	bl .long_funcL369
.long_funcL985:
	ldr r9,[fp,#-288]
	mov r10,r9
	str r10,[fp,#-228]
	ldr r9,[fp,#-180]
	mov r10,r9
	str r10,[fp,#-48]
	ldr r9,[fp,#-196]
	mov r10,r9
	str r10,[fp,#-56]
	ldr r9,[fp,#-204]
	mov r10,r9
	str r10,[fp,#-256]
	bl .long_funcL354
.long_funcL359:
	ldr r9,[fp,#-228]
	cmp r9,#0
	ldr r9,[fp,#-228]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL357
.long_funcL987:
	ldr r9,[fp,#-256]
	mov r10,r9
	str r10,[fp,#-204]
	bl .long_funcL358
.long_funcL357:
	ldr r9,[fp,#-56]
	mov r8,r9
	ldr r7,.LPIC13
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-256]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-204]
	bl .long_funcL358
.long_funcL982:
	ldr r9,[fp,#-164]
	mov r10,r9
	str r10,[fp,#-208]
	ldr r9,[fp,#-136]
	mov r10,r9
	str r10,[fp,#-224]
	ldr r9,[fp,#-112]
	mov r10,r9
	str r10,[fp,#-292]
	ldr r9,[fp,#-212]
	mov r10,r9
	str r10,[fp,#-268]
	bl .long_funcL343
.long_funcL351:
	ldr r9,[fp,#-292]
	mov r8,r9
	ldr r7,.LPIC13
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-268]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-108]
	bl .long_funcL352
.long_funcL346:
	ldr r9,[fp,#-208]
	cmp r9,#0
	ldr r9,[fp,#-208]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	beq .long_funcL349
.long_funcL983:
	ldr r9,[fp,#-268]
	mov r8,r9
.long_funcL350:
	mov r9,r8
	str r9,[fp,#-212]
	bl .long_funcL348
.long_funcL349:
	ldr r9,[fp,#-292]
	mov r7,r9
	ldr r6,.LPIC13
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	ldr r9,[fp,#-268]
	add r6,r9,r7
	mov r8,r6
	bl .long_funcL350
.long_funcL975:
	ldr r9,[fp,#-124]
	mov r10,r9
	str r10,[fp,#-244]
	ldr r9,[fp,#-88]
	mov r10,r9
	str r10,[fp,#-92]
	ldr r9,[fp,#-128]
	mov r10,r9
	str r10,[fp,#-252]
	ldr r9,[fp,#-280]
	mov r10,r9
	str r10,[fp,#-120]
	bl .long_funcL329
.long_funcL334:
	ldr r9,[fp,#-244]
	cmp r9,#0
	ldr r9,[fp,#-244]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL332
.long_funcL977:
	ldr r9,[fp,#-120]
	mov r10,r9
	str r10,[fp,#-280]
	bl .long_funcL333
.long_funcL332:
	ldr r9,[fp,#-252]
	mov r8,r9
	ldr r7,.LPIC13
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-120]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-280]
	bl .long_funcL333
.long_funcL228:
	ldr r9,[fp,#-44]
	cmp r9,#0
	bne .long_funcL868
.long_funcL942:
	mov r8,#0
	ldr r9,[fp,#-72]
	mov r7,r9
.long_funcL233:
	mov r9,r8
	str r9,[fp,#-28]
	mov r9,r7
	str r9,[fp,#-24]
	bl .long_funcL229
.long_funcL868:
	mov r9,#0
	str r9,[fp,#-52]
	ldr r9,[fp,#-44]
	mov r10,r9
	str r10,[fp,#-220]
	ldr r9,[fp,#-12]
	mov r10,r9
	str r10,[fp,#-144]
.long_funcL231:
.long_funcL898:
	mov r9,#1
	str r9,[fp,#-184]
	ldr r9,[fp,#-220]
	mov r10,r9
	str r10,[fp,#-176]
	mov r9,#0
	str r9,[fp,#-36]
	mov r9,#0
	str r9,[fp,#-276]
.long_funcL235:
	ldr r9,[fp,#-176]
	cmp r9,#0
	ldr r9,[fp,#-176]
	and r6,r9,#1
	it lt
	rsblt r6,r6,#0
	cmp r6,#0
	bne .long_funcL240
.long_funcL945:
	ldr r9,[fp,#-276]
	mov r10,r9
	str r10,[fp,#-296]
.long_funcL239:
	ldr r9,[fp,#-176]
	ldr r10,[fp,#-176]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-32]
	ldr r9,[fp,#-184]
	ldr r10,[fp,#-184]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-160]
	ldr r9,[fp,#-36]
	add r10,r9,#1
	str r10,[fp,#-64]
.long_funcL236:
	ldr r9,[fp,#-64]
	cmp r9,#16
	blt .long_funcL944
.long_funcL237:
	ldr r9,[fp,#-296]
	cmp r9,#0
	bne .long_funcL242
.long_funcL947:
	ldr r9,[fp,#-52]
	mov r10,r9
	str r10,[fp,#-264]
	ldr r9,[fp,#-64]
	mov r10,r9
	str r10,[fp,#-148]
.long_funcL243:
	ldr r9,[fp,#-144]
	cmp r9,#0
	bne .long_funcL921
.long_funcL961:
	ldr r9,[fp,#-144]
	mov r10,r9
	str r10,[fp,#-188]
	ldr r9,[fp,#-148]
	mov r10,r9
	str r10,[fp,#-260]
.long_funcL281:
.long_funcL313:
.long_funcL318:
	movw r5,#32767
	movt r5,#0  @ 32767
	ldr r9,[fp,#-220]
	cmp r9,r5
	bgt .long_funcL321
.long_funcL322:
	mov r6,#1
	ldr r5,.LPIC13
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	@%r1432 = call i32 @__aeabi_idiv(i32 %r4287,i32 %r1431)
	push {r0,r1,r2,r3}
	ldr r0,[fp,#-220]
	mov r1,r6
	bl __aeabi_idiv
	mov r5,r0
	pop {r0,r1,r2,r3}
	mov r6,r5
.long_funcL323:
.long_funcL320:
.long_funcL314:
.long_funcL232:
	cmp r6,#0
	bne .long_funcL941
.long_funcL943:
	ldr r9,[fp,#-264]
	mov r8,r9
	ldr r9,[fp,#-260]
	mov r7,r9
	bl .long_funcL233
.long_funcL941:
	ldr r9,[fp,#-264]
	mov r10,r9
	str r10,[fp,#-52]
	mov r9,r6
	str r9,[fp,#-220]
	ldr r9,[fp,#-188]
	mov r10,r9
	str r10,[fp,#-144]
	bl .long_funcL231
.long_funcL321:
	mov r8,#1
	ldr r7,.LPIC13
	add r5,r7,r8,lsl #2
	ldr r8,[r5]
	@%r1416 = call i32 @__aeabi_idiv(i32 %r4287,i32 %r1415)
	push {r0,r1,r2,r3}
	ldr r0,[fp,#-220]
	mov r1,r8
	bl __aeabi_idiv
	mov r7,r0
	pop {r0,r1,r2,r3}
	add r8,r7,#65536
	mov r7,#15
	ldr r5,.LPIC13
	add r4,r5,r7,lsl #2
	ldr r7,[r4]
	sub r5,r8,r7
	mov r6,r5
	bl .long_funcL323
.long_funcL921:
	mov r8,#1
	ldr r7,.LPIC13
	add r9,r7,r8,lsl #2
	str r9,[fp,#-300]
	ldr r9,[fp,#-144]
	mov r10,r9
	str r10,[fp,#-284]
	ldr r9,[fp,#-144]
	mov r10,r9
	str r10,[fp,#-232]
.long_funcL279:
.long_funcL932:
	ldr r9,[fp,#-284]
	mov r10,r9
	str r10,[fp,#-180]
	ldr r9,[fp,#-232]
	mov r10,r9
	str r10,[fp,#-140]
	mov r9,#0
	str r9,[fp,#-248]
	mov r9,#0
	str r9,[fp,#-240]
.long_funcL283:
	ldr r9,[fp,#-140]
	cmp r9,#0
	ldr r9,[fp,#-140]
	and r1,r9,#1
	it lt
	rsblt r1,r1,#0
	cmp r1,#0
	bne .long_funcL286
.long_funcL287:
	ldr r9,[fp,#-180]
	cmp r9,#0
	ldr r9,[fp,#-180]
	and r2,r9,#1
	it lt
	rsblt r2,r2,#0
	cmp r2,#0
	bne .long_funcL291
.long_funcL965:
	ldr r9,[fp,#-240]
	mov r10,r9
	str r10,[fp,#-216]
.long_funcL292:
	ldr r9,[fp,#-216]
	mov r10,r9
	str r10,[fp,#-272]
.long_funcL288:
	ldr r9,[fp,#-140]
	ldr r10,[fp,#-140]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-172]
	ldr r9,[fp,#-180]
	ldr r10,[fp,#-180]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-152]
	ldr r9,[fp,#-248]
	add r10,r9,#1
	str r10,[fp,#-192]
.long_funcL284:
	ldr r9,[fp,#-192]
	cmp r9,#16
	blt .long_funcL963
.long_funcL285:
.long_funcL934:
	ldr r9,[fp,#-284]
	mov r10,r9
	str r10,[fp,#-48]
	ldr r9,[fp,#-232]
	mov r10,r9
	str r10,[fp,#-204]
	mov r9,#0
	str r9,[fp,#-236]
	mov r9,#0
	str r9,[fp,#-196]
.long_funcL294:
	ldr r9,[fp,#-204]
	cmp r9,#0
	ldr r9,[fp,#-204]
	and r6,r9,#1
	it lt
	rsblt r6,r6,#0
	cmp r6,#0
	bne .long_funcL299
.long_funcL967:
	ldr r9,[fp,#-196]
	mov r10,r9
	str r10,[fp,#-256]
.long_funcL298:
	ldr r9,[fp,#-204]
	ldr r10,[fp,#-204]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-96]
	ldr r9,[fp,#-48]
	ldr r10,[fp,#-48]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-84]
	ldr r9,[fp,#-236]
	add r10,r9,#1
	str r10,[fp,#-288]
.long_funcL295:
	ldr r9,[fp,#-288]
	cmp r9,#16
	blt .long_funcL966
.long_funcL296:
.long_funcL302:
	ldr r9,[fp,#-300]
	ldr r4,[r9]
	ldr r9,[fp,#-256]
	mul r3,r9,r4
.long_funcL935:
	movw r4,#65535
	movt r4,#0  @ 65535
	mov r2,r4
	mov r4,r3
	mov r3,#0
	mov r1,#0
.long_funcL305:
	cmp r4,#0
	and r5,r4,#1
	it lt
	rsblt r5,r5,#0
	cmp r5,#0
	bne .long_funcL310
.long_funcL970:
	mov r5,r1
.long_funcL309:
	add r0,r4,r4,lsr #31
	asr r6,r0,#1
	add r0,r2,r2,lsr #31
	asr r8,r0,#1
	add r0,r3,#1
.long_funcL306:
	cmp r0,#16
	blt .long_funcL969
.long_funcL307:
.long_funcL303:
.long_funcL280:
	cmp r5,#0
	bne .long_funcL960
.long_funcL962:
	ldr r9,[fp,#-272]
	mov r10,r9
	str r10,[fp,#-188]
	mov r9,r0
	str r9,[fp,#-260]
	bl .long_funcL281
.long_funcL960:
	mov r9,r5
	str r9,[fp,#-284]
	ldr r9,[fp,#-272]
	mov r10,r9
	str r10,[fp,#-232]
	bl .long_funcL279
.long_funcL969:
	mov r2,r8
	mov r4,r6
	mov r3,r0
	mov r1,r5
	bl .long_funcL305
.long_funcL310:
	cmp r2,#0
	and r8,r2,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL308
.long_funcL971:
	mov r5,r1
	bl .long_funcL309
.long_funcL308:
	mov r8,r3
	bl .LPIC16
.LPIC15:
	.word SHIFT_TABLE
.LPIC16:
	ldr r7,.LPIC15
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	add r7,r1,r8
	mov r5,r7
	bl .long_funcL309
.long_funcL966:
	ldr r9,[fp,#-84]
	mov r10,r9
	str r10,[fp,#-48]
	ldr r9,[fp,#-96]
	mov r10,r9
	str r10,[fp,#-204]
	ldr r9,[fp,#-288]
	mov r10,r9
	str r10,[fp,#-236]
	ldr r9,[fp,#-256]
	mov r10,r9
	str r10,[fp,#-196]
	bl .long_funcL294
.long_funcL299:
	ldr r9,[fp,#-48]
	cmp r9,#0
	ldr r9,[fp,#-48]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL297
.long_funcL968:
	ldr r9,[fp,#-196]
	mov r10,r9
	str r10,[fp,#-256]
	bl .long_funcL298
.long_funcL297:
	ldr r9,[fp,#-236]
	mov r8,r9
	ldr r7,.LPIC15
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-196]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-256]
	bl .long_funcL298
.long_funcL963:
	ldr r9,[fp,#-152]
	mov r10,r9
	str r10,[fp,#-180]
	ldr r9,[fp,#-172]
	mov r10,r9
	str r10,[fp,#-140]
	ldr r9,[fp,#-192]
	mov r10,r9
	str r10,[fp,#-248]
	ldr r9,[fp,#-272]
	mov r10,r9
	str r10,[fp,#-240]
	bl .long_funcL283
.long_funcL291:
	ldr r9,[fp,#-248]
	mov r8,r9
	ldr r7,.LPIC15
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-240]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-216]
	bl .long_funcL292
.long_funcL286:
	ldr r9,[fp,#-180]
	cmp r9,#0
	ldr r9,[fp,#-180]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	beq .long_funcL289
.long_funcL964:
	ldr r9,[fp,#-240]
	mov r8,r9
.long_funcL290:
	mov r9,r8
	str r9,[fp,#-272]
	bl .long_funcL288
.long_funcL289:
	ldr r9,[fp,#-248]
	mov r7,r9
	ldr r6,.LPIC15
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	ldr r9,[fp,#-240]
	add r6,r9,r7
	mov r8,r6
	bl .long_funcL290
.long_funcL242:
	ldr r9,[fp,#-144]
	cmp r9,#0
	bne .long_funcL924
.long_funcL949:
	ldr r9,[fp,#-52]
	mov r10,r9
	str r10,[fp,#-228]
	ldr r9,[fp,#-64]
	mov r10,r9
	str r10,[fp,#-164]
.long_funcL247:
	ldr r9,[fp,#-228]
	mov r10,r9
	str r10,[fp,#-264]
	ldr r9,[fp,#-164]
	mov r10,r9
	str r10,[fp,#-148]
	bl .long_funcL243
.long_funcL924:
	mov r6,#1
	ldr r5,.LPIC15
	add r9,r5,r6,lsl #2
	str r9,[fp,#-56]
	ldr r9,[fp,#-144]
	mov r10,r9
	str r10,[fp,#-136]
	ldr r9,[fp,#-52]
	mov r10,r9
	str r10,[fp,#-112]
.long_funcL245:
.long_funcL918:
	ldr r9,[fp,#-136]
	mov r10,r9
	str r10,[fp,#-120]
	ldr r9,[fp,#-112]
	mov r10,r9
	str r10,[fp,#-116]
	mov r9,#0
	str r9,[fp,#-156]
	mov r9,#0
	str r9,[fp,#-124]
.long_funcL249:
	ldr r9,[fp,#-116]
	cmp r9,#0
	ldr r9,[fp,#-116]
	and r4,r9,#1
	it lt
	rsblt r4,r4,#0
	cmp r4,#0
	bne .long_funcL252
.long_funcL253:
	ldr r9,[fp,#-120]
	cmp r9,#0
	ldr r9,[fp,#-120]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL257
.long_funcL953:
	ldr r9,[fp,#-124]
	mov r10,r9
	str r10,[fp,#-268]
.long_funcL258:
	ldr r9,[fp,#-268]
	mov r10,r9
	str r10,[fp,#-224]
.long_funcL254:
	ldr r9,[fp,#-116]
	ldr r10,[fp,#-116]
	add r7,r9,r10,lsr #31
	asr r9,r7,#1
	str r9,[fp,#-108]
	ldr r9,[fp,#-120]
	ldr r10,[fp,#-120]
	add r7,r9,r10,lsr #31
	asr r9,r7,#1
	str r9,[fp,#-212]
	ldr r9,[fp,#-156]
	add r10,r9,#1
	str r10,[fp,#-168]
.long_funcL250:
	ldr r9,[fp,#-168]
	cmp r9,#16
	blt .long_funcL951
.long_funcL251:
.long_funcL906:
	ldr r9,[fp,#-136]
	mov r10,r9
	str r10,[fp,#-252]
	ldr r9,[fp,#-112]
	mov r10,r9
	str r10,[fp,#-92]
	mov r9,#0
	str r9,[fp,#-88]
	mov r9,#0
	str r9,[fp,#-200]
.long_funcL260:
	ldr r9,[fp,#-92]
	cmp r9,#0
	ldr r9,[fp,#-92]
	and r1,r9,#1
	it lt
	rsblt r1,r1,#0
	cmp r1,#0
	bne .long_funcL265
.long_funcL955:
	ldr r9,[fp,#-200]
	mov r10,r9
	str r10,[fp,#-132]
.long_funcL264:
	ldr r9,[fp,#-92]
	ldr r10,[fp,#-92]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-292]
	ldr r9,[fp,#-252]
	ldr r10,[fp,#-252]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-208]
	ldr r9,[fp,#-88]
	add r10,r9,#1
	str r10,[fp,#-128]
.long_funcL261:
	ldr r9,[fp,#-128]
	cmp r9,#16
	blt .long_funcL954
.long_funcL262:
.long_funcL268:
	ldr r9,[fp,#-56]
	ldr r2,[r9]
	ldr r9,[fp,#-132]
	mul r0,r9,r2
.long_funcL908:
	movw r2,#65535
	movt r2,#0  @ 65535
	mov r8,r2
	mov r2,r0
	mov r0,#0
	mov r1,#0
.long_funcL271:
	cmp r2,#0
	and r3,r2,#1
	it lt
	rsblt r3,r3,#0
	cmp r3,#0
	bne .long_funcL276
.long_funcL958:
	mov r7,r1
.long_funcL275:
	add r3,r2,r2,lsr #31
	asr r4,r3,#1
	add r3,r8,r8,lsr #31
	asr r6,r3,#1
	add r3,r0,#1
.long_funcL272:
	cmp r3,#16
	blt .long_funcL957
.long_funcL273:
.long_funcL269:
.long_funcL246:
	cmp r7,#0
	bne .long_funcL948
.long_funcL950:
	ldr r9,[fp,#-224]
	mov r10,r9
	str r10,[fp,#-228]
	mov r9,r3
	str r9,[fp,#-164]
	bl .long_funcL247
.long_funcL948:
	mov r9,r7
	str r9,[fp,#-136]
	ldr r9,[fp,#-224]
	mov r10,r9
	str r10,[fp,#-112]
	bl .long_funcL245
.long_funcL957:
	mov r8,r6
	mov r2,r4
	mov r0,r3
	mov r1,r7
	bl .long_funcL271
.long_funcL276:
	cmp r8,#0
	and r6,r8,#1
	it lt
	rsblt r6,r6,#0
	cmp r6,#0
	bne .long_funcL274
.long_funcL959:
	mov r7,r1
	bl .long_funcL275
.long_funcL274:
	mov r6,r0
	ldr r5,.LPIC15
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	add r5,r1,r6
	mov r7,r5
	bl .long_funcL275
.long_funcL954:
	ldr r9,[fp,#-208]
	mov r10,r9
	str r10,[fp,#-252]
	ldr r9,[fp,#-292]
	mov r10,r9
	str r10,[fp,#-92]
	ldr r9,[fp,#-128]
	mov r10,r9
	str r10,[fp,#-88]
	ldr r9,[fp,#-132]
	mov r10,r9
	str r10,[fp,#-200]
	bl .long_funcL260
.long_funcL265:
	ldr r9,[fp,#-252]
	cmp r9,#0
	ldr r9,[fp,#-252]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL263
.long_funcL956:
	ldr r9,[fp,#-200]
	mov r10,r9
	str r10,[fp,#-132]
	bl .long_funcL264
.long_funcL263:
	ldr r9,[fp,#-88]
	mov r8,r9
	ldr r7,.LPIC15
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-200]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-132]
	bl .long_funcL264
.long_funcL951:
	ldr r9,[fp,#-212]
	mov r10,r9
	str r10,[fp,#-120]
	ldr r9,[fp,#-108]
	mov r10,r9
	str r10,[fp,#-116]
	ldr r9,[fp,#-168]
	mov r10,r9
	str r10,[fp,#-156]
	ldr r9,[fp,#-224]
	mov r10,r9
	str r10,[fp,#-124]
	bl .long_funcL249
.long_funcL257:
	ldr r9,[fp,#-156]
	mov r8,r9
	ldr r7,.LPIC15
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-124]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-268]
	bl .long_funcL258
.long_funcL252:
	ldr r9,[fp,#-120]
	cmp r9,#0
	ldr r9,[fp,#-120]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	beq .long_funcL255
.long_funcL952:
	ldr r9,[fp,#-124]
	mov r8,r9
.long_funcL256:
	mov r9,r8
	str r9,[fp,#-224]
	bl .long_funcL254
.long_funcL255:
	ldr r9,[fp,#-156]
	mov r7,r9
	ldr r6,.LPIC15
	add r5,r6,r7,lsl #2
	ldr r7,[r5]
	ldr r9,[fp,#-124]
	add r6,r9,r7
	mov r8,r6
	bl .long_funcL256
.long_funcL944:
	ldr r9,[fp,#-160]
	mov r10,r9
	str r10,[fp,#-184]
	ldr r9,[fp,#-32]
	mov r10,r9
	str r10,[fp,#-176]
	ldr r9,[fp,#-64]
	mov r10,r9
	str r10,[fp,#-36]
	ldr r9,[fp,#-296]
	mov r10,r9
	str r10,[fp,#-276]
	bl .long_funcL235
.long_funcL240:
	ldr r9,[fp,#-184]
	cmp r9,#0
	ldr r9,[fp,#-184]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL238
.long_funcL946:
	ldr r9,[fp,#-276]
	mov r10,r9
	str r10,[fp,#-296]
	bl .long_funcL239
.long_funcL238:
	ldr r9,[fp,#-36]
	mov r8,r9
	ldr r7,.LPIC15
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-276]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-296]
	bl .long_funcL239
.long_funcL937:
	ldr r9,[fp,#-72]
	mov r10,r9
	str r10,[fp,#-68]
	ldr r9,[fp,#-20]
	mov r10,r9
	str r10,[fp,#-100]
	ldr r9,[fp,#-16]
	mov r10,r9
	str r10,[fp,#-104]
	ldr r9,[fp,#-80]
	mov r10,r9
	str r10,[fp,#-76]
	bl .long_funcL221
.long_funcL226:
	ldr r9,[fp,#-100]
	cmp r9,#0
	ldr r9,[fp,#-100]
	and r8,r9,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	bne .long_funcL224
.long_funcL939:
	ldr r9,[fp,#-76]
	mov r10,r9
	str r10,[fp,#-80]
	bl .long_funcL225
.long_funcL224:
	ldr r9,[fp,#-68]
	mov r8,r9
	ldr r7,.LPIC15
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	ldr r9,[fp,#-76]
	add r7,r9,r8
	mov r9,r7
	str r9,[fp,#-80]
	bl .long_funcL225
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r0 = call i32 @long_func()
	sub sp,sp,#4 @stack align 8bytes
	bl long_func
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
