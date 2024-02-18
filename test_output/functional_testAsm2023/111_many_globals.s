.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a0:
	.word  0
a1:
	.word  0
a2:
	.word  0
a3:
	.word  0
a4:
	.word  0
a5:
	.word  0
a6:
	.word  0
a7:
	.word  0
a8:
	.word  0
a9:
	.word  0
a10:
	.word  0
a11:
	.word  0
a12:
	.word  0
a13:
	.word  0
a14:
	.word  0
a15:
	.word  0
a16:
	.word  0
a17:
	.word  0
a18:
	.word  0
a19:
	.word  0
a20:
	.word  0
a21:
	.word  0
a22:
	.word  0
a23:
	.word  0
a24:
	.word  0
a25:
	.word  0
a26:
	.word  0
a27:
	.word  0
a28:
	.word  0
a29:
	.word  0
a30:
	.word  0
a31:
	.word  0
a32:
	.word  0
a33:
	.word  0
a34:
	.word  0
a35:
	.word  0
a36:
	.word  0
a37:
	.word  0
a38:
	.word  0
a39:
	.word  0
.text
.global main
.LPIC0:
	.word  a0
.LPIC1:
	.word  a1
.LPIC2:
	.word  a10
.LPIC3:
	.word  a11
.LPIC4:
	.word  a12
.LPIC5:
	.word  a13
.LPIC6:
	.word  a14
.LPIC7:
	.word  a15
.LPIC8:
	.word  a16
.LPIC9:
	.word  a17
.LPIC10:
	.word  a18
.LPIC11:
	.word  a19
.LPIC12:
	.word  a2
.LPIC13:
	.word  a20
.LPIC14:
	.word  a21
.LPIC15:
	.word  a22
.LPIC16:
	.word  a23
.LPIC17:
	.word  a24
.LPIC18:
	.word  a25
.LPIC19:
	.word  a26
.LPIC20:
	.word  a27
.LPIC21:
	.word  a28
.LPIC22:
	.word  a29
.LPIC23:
	.word  a3
.LPIC24:
	.word  a30
.LPIC25:
	.word  a31
.LPIC26:
	.word  a32
.LPIC27:
	.word  a33
.LPIC28:
	.word  a34
.LPIC29:
	.word  a35
.LPIC30:
	.word  a36
.LPIC31:
	.word  a37
.LPIC32:
	.word  a38
.LPIC33:
	.word  a39
.LPIC34:
	.word  a4
.LPIC35:
	.word  a5
.LPIC36:
	.word  a6
.LPIC37:
	.word  a7
.LPIC38:
	.word  a8
.LPIC39:
	.word  a9
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
	add r6,r8,r7
	ldr r8,[fp,#-20]
	add r7,r6,r8
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
	mov r0,r6
	add sp,sp,#40
	pop {r5,r6,r7,r8}
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
	sub r6,r7,r8
	ldr r8,[fp,#-28]
	sub r7,r6,r8
	ldr r8,[fp,#-32]
	sub r6,r7,r8
	ldr r8,[fp,#-36]
	sub r7,r6,r8
	ldr r8,[fp,#-40]
	sub r6,r7,r8
	ldr r8,[fp,#-44]
	add r7,r6,r8
	ldr r8,[fp,#-48]
	add r6,r7,r8
	ldr r8,[fp,#-52]
	add r7,r6,r8
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
	add r6,r8,r7
	ldr r8,[fp,#-20]
	add r7,r6,r8
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
	add r7,r6,r8
	ldr r8,[fp,#-64]
	add r6,r7,r8
	ldr r8,[fp,#-68]
	add r7,r6,r8
	ldr r8,[fp,#-72]
	add r6,r7,r8
	ldr r8,[fp,#-76]
	add r7,r6,r8
	ldr r8,[fp,#-80]
	add r6,r7,r8
	ldr r8,[fp,#-84]
	sub r7,r6,r8
	ldr r8,[fp,#-88]
	sub r6,r7,r8
	ldr r8,[fp,#-92]
	sub r7,r6,r8
	ldr r8,[fp,#-96]
	sub r6,r7,r8
	ldr r8,[fp,#-100]
	sub r7,r6,r8
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
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#104
.mainL0:
.mainL1:
	mov r8,#0
	ldr r7,.LPIC0
	str r8,[r7]
	mov r8,#1
	ldr r7,.LPIC1
	str r8,[r7]
	mov r8,#2
	ldr r7,.LPIC12
	str r8,[r7]
	mov r8,#3
	ldr r7,.LPIC23
	str r8,[r7]
	mov r8,#4
	ldr r7,.LPIC34
	str r8,[r7]
	mov r8,#5
	ldr r7,.LPIC35
	str r8,[r7]
	mov r8,#6
	ldr r7,.LPIC36
	str r8,[r7]
	mov r8,#7
	ldr r7,.LPIC37
	str r8,[r7]
	mov r8,#8
	ldr r7,.LPIC38
	str r8,[r7]
	mov r8,#9
	ldr r7,.LPIC39
	str r8,[r7]
	mov r8,#0
	bl .LPIC41
.LPIC40:
	.word a10
.LPIC41:
	ldr r7,.LPIC40
	str r8,[r7]
	mov r8,#1
	bl .LPIC43
.LPIC42:
	.word a11
.LPIC43:
	ldr r7,.LPIC42
	str r8,[r7]
	mov r8,#2
	bl .LPIC45
.LPIC44:
	.word a12
.LPIC45:
	ldr r7,.LPIC44
	str r8,[r7]
	mov r8,#3
	bl .LPIC47
.LPIC46:
	.word a13
.LPIC47:
	ldr r7,.LPIC46
	str r8,[r7]
	mov r8,#4
	bl .LPIC49
.LPIC48:
	.word a14
.LPIC49:
	ldr r7,.LPIC48
	str r8,[r7]
	mov r8,#5
	bl .LPIC51
.LPIC50:
	.word a15
.LPIC51:
	ldr r7,.LPIC50
	str r8,[r7]
	mov r8,#6
	bl .LPIC53
.LPIC52:
	.word a16
.LPIC53:
	ldr r7,.LPIC52
	str r8,[r7]
	mov r8,#7
	bl .LPIC55
.LPIC54:
	.word a17
.LPIC55:
	ldr r7,.LPIC54
	str r8,[r7]
	mov r8,#8
	bl .LPIC57
.LPIC56:
	.word a18
.LPIC57:
	ldr r7,.LPIC56
	str r8,[r7]
	mov r8,#9
	bl .LPIC59
.LPIC58:
	.word a19
.LPIC59:
	ldr r7,.LPIC58
	str r8,[r7]
	mov r8,#0
	bl .LPIC61
.LPIC60:
	.word a20
.LPIC61:
	ldr r7,.LPIC60
	str r8,[r7]
	mov r8,#1
	bl .LPIC63
.LPIC62:
	.word a21
.LPIC63:
	ldr r7,.LPIC62
	str r8,[r7]
	mov r8,#2
	bl .LPIC65
.LPIC64:
	.word a22
.LPIC65:
	ldr r7,.LPIC64
	str r8,[r7]
	mov r8,#3
	bl .LPIC67
.LPIC66:
	.word a23
.LPIC67:
	ldr r7,.LPIC66
	str r8,[r7]
	mov r8,#4
	bl .LPIC69
.LPIC68:
	.word a24
.LPIC69:
	ldr r7,.LPIC68
	str r8,[r7]
	mov r8,#5
	bl .LPIC71
.LPIC70:
	.word a25
.LPIC71:
	ldr r7,.LPIC70
	str r8,[r7]
	mov r8,#6
	bl .LPIC73
.LPIC72:
	.word a26
.LPIC73:
	ldr r7,.LPIC72
	str r8,[r7]
	mov r8,#7
	bl .LPIC75
.LPIC74:
	.word a27
.LPIC75:
	ldr r7,.LPIC74
	str r8,[r7]
	mov r8,#8
	bl .LPIC77
.LPIC76:
	.word a28
.LPIC77:
	ldr r7,.LPIC76
	str r8,[r7]
	mov r8,#9
	bl .LPIC79
.LPIC78:
	.word a29
.LPIC79:
	ldr r7,.LPIC78
	str r8,[r7]
	mov r8,#0
	bl .LPIC81
.LPIC80:
	.word a30
.LPIC81:
	ldr r7,.LPIC80
	str r8,[r7]
	mov r8,#1
	bl .LPIC83
.LPIC82:
	.word a31
.LPIC83:
	ldr r7,.LPIC82
	str r8,[r7]
	mov r8,#4
	bl .LPIC85
.LPIC84:
	.word a32
.LPIC85:
	ldr r7,.LPIC84
	str r8,[r7]
	mov r8,#5
	bl .LPIC87
.LPIC86:
	.word a33
.LPIC87:
	ldr r7,.LPIC86
	str r8,[r7]
	mov r8,#6
	bl .LPIC89
.LPIC88:
	.word a34
.LPIC89:
	ldr r7,.LPIC88
	str r8,[r7]
	mov r8,#7
	bl .LPIC91
.LPIC90:
	.word a35
.LPIC91:
	ldr r7,.LPIC90
	str r8,[r7]
	mov r8,#8
	bl .LPIC93
.LPIC92:
	.word a36
.LPIC93:
	ldr r7,.LPIC92
	str r8,[r7]
	mov r8,#9
	bl .LPIC95
.LPIC94:
	.word a37
.LPIC95:
	ldr r7,.LPIC94
	str r8,[r7]
	mov r8,#0
	bl .LPIC97
.LPIC96:
	.word a38
.LPIC97:
	ldr r7,.LPIC96
	str r8,[r7]
	mov r8,#1
	bl .LPIC99
.LPIC98:
	.word a39
.LPIC99:
	ldr r7,.LPIC98
	str r8,[r7]
	bl .LPIC101
.LPIC100:
	.word a0
.LPIC101:
	ldr r8,.LPIC100
	ldr r7,[r8]
	bl .LPIC103
.LPIC102:
	.word a1
.LPIC103:
	ldr r8,.LPIC102
	ldr r6,[r8]
	bl .LPIC105
.LPIC104:
	.word a2
.LPIC105:
	ldr r8,.LPIC104
	ldr r5,[r8]
	bl .LPIC107
.LPIC106:
	.word a3
.LPIC107:
	ldr r8,.LPIC106
	ldr r4,[r8]
	bl .LPIC109
.LPIC108:
	.word a4
.LPIC109:
	ldr r8,.LPIC108
	ldr r3,[r8]
	bl .LPIC111
.LPIC110:
	.word a5
.LPIC111:
	ldr r8,.LPIC110
	ldr r2,[r8]
	bl .LPIC113
.LPIC112:
	.word a6
.LPIC113:
	ldr r8,.LPIC112
	ldr r1,[r8]
	bl .LPIC115
.LPIC114:
	.word a7
.LPIC115:
	ldr r8,.LPIC114
	ldr r0,[r8]
	@%r48 = call i32 @testParam8(i32 %r40,i32 %r41,i32 %r42,i32 %r43,i32 %r44,i32 %r45,i32 %r46,i32 %r47)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	sub sp,sp,#16
	str r0,[sp,#12]  @%r47
	str r1,[sp,#8]  @%r46
	str r2,[sp,#4]  @%r45
	str r3,[sp,#0]  @%r44
	mov r0,r7
	mov r1,r6
	mov r2,r5
	mov r3,r4
	bl testParam8
	add sp,sp,#16
	mov r8,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC100
	str r8,[r7]
	ldr r8,.LPIC100
	ldr r7,[r8]
	@call void @putint(i32 %r49)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putint
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC84
	ldr r9,[r8]
	str r9,[fp,#-12]
	ldr r8,.LPIC86
	ldr r9,[r8]
	str r9,[fp,#-16]
	ldr r8,.LPIC88
	ldr r9,[r8]
	str r9,[fp,#-20]
	ldr r8,.LPIC90
	ldr r9,[r8]
	str r9,[fp,#-24]
	ldr r8,.LPIC92
	ldr r9,[r8]
	str r9,[fp,#-28]
	ldr r8,.LPIC94
	ldr r9,[r8]
	str r9,[fp,#-32]
	ldr r8,.LPIC96
	ldr r9,[r8]
	str r9,[fp,#-36]
	ldr r8,.LPIC98
	ldr r9,[r8]
	str r9,[fp,#-40]
	bl .LPIC117
.LPIC116:
	.word a8
.LPIC117:
	ldr r8,.LPIC116
	ldr r7,[r8]
	bl .LPIC119
.LPIC118:
	.word a9
.LPIC119:
	ldr r8,.LPIC118
	ldr r6,[r8]
	ldr r8,.LPIC40
	ldr r5,[r8]
	ldr r8,.LPIC42
	ldr r4,[r8]
	ldr r8,.LPIC44
	ldr r3,[r8]
	ldr r8,.LPIC46
	ldr r2,[r8]
	ldr r8,.LPIC48
	ldr r1,[r8]
	ldr r8,.LPIC50
	ldr r0,[r8]
	@%r66 = call i32 @testParam16(i32 %r50,i32 %r51,i32 %r52,i32 %r53,i32 %r54,i32 %r55,i32 %r56,i32 %r57,i32 %r58,i32 %r59,i32 %r60,i32 %r61,i32 %r62,i32 %r63,i32 %r64,i32 %r65)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	sub sp,sp,#48
	str r0,[sp,#44]  @%r65
	str r1,[sp,#40]  @%r64
	str r2,[sp,#36]  @%r63
	str r3,[sp,#32]  @%r62
	str r4,[sp,#28]  @%r61
	str r5,[sp,#24]  @%r60
	str r6,[sp,#20]  @%r59
	str r7,[sp,#16]  @%r58
	ldr r9,[fp,#-40]
	str r9,[sp,#12]  @%r57
	ldr r9,[fp,#-36]
	str r9,[sp,#8]  @%r56
	ldr r9,[fp,#-32]
	str r9,[sp,#4]  @%r55
	ldr r9,[fp,#-28]
	str r9,[sp,#0]  @%r54
	ldr r0,[fp,#-12]
	ldr r1,[fp,#-16]
	ldr r2,[fp,#-20]
	ldr r3,[fp,#-24]
	bl testParam16
	add sp,sp,#48
	mov r8,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC100
	str r8,[r7]
	ldr r8,.LPIC100
	ldr r7,[r8]
	@call void @putint(i32 %r67)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putint
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC100
	ldr r9,[r8]
	str r9,[fp,#-12]
	ldr r8,.LPIC102
	ldr r9,[r8]
	str r9,[fp,#-20]
	ldr r8,.LPIC104
	ldr r9,[r8]
	str r9,[fp,#-36]
	ldr r8,.LPIC106
	ldr r9,[r8]
	str r9,[fp,#-40]
	ldr r8,.LPIC108
	ldr r9,[r8]
	str r9,[fp,#-32]
	ldr r8,.LPIC110
	ldr r9,[r8]
	str r9,[fp,#-16]
	ldr r8,.LPIC112
	ldr r9,[r8]
	str r9,[fp,#-28]
	ldr r8,.LPIC114
	ldr r9,[r8]
	str r9,[fp,#-24]
	ldr r8,.LPIC116
	ldr r9,[r8]
	str r9,[fp,#-44]
	ldr r8,.LPIC118
	ldr r9,[r8]
	str r9,[fp,#-48]
	ldr r8,.LPIC40
	ldr r9,[r8]
	str r9,[fp,#-52]
	ldr r8,.LPIC42
	ldr r9,[r8]
	str r9,[fp,#-56]
	ldr r8,.LPIC44
	ldr r9,[r8]
	str r9,[fp,#-60]
	ldr r8,.LPIC46
	ldr r9,[r8]
	str r9,[fp,#-64]
	ldr r8,.LPIC48
	ldr r9,[r8]
	str r9,[fp,#-68]
	ldr r8,.LPIC50
	ldr r9,[r8]
	str r9,[fp,#-72]
	ldr r8,.LPIC52
	ldr r9,[r8]
	str r9,[fp,#-76]
	ldr r8,.LPIC54
	ldr r9,[r8]
	str r9,[fp,#-80]
	ldr r8,.LPIC56
	ldr r9,[r8]
	str r9,[fp,#-84]
	ldr r8,.LPIC58
	ldr r9,[r8]
	str r9,[fp,#-88]
	ldr r8,.LPIC60
	ldr r9,[r8]
	str r9,[fp,#-92]
	ldr r8,.LPIC62
	ldr r9,[r8]
	str r9,[fp,#-96]
	ldr r8,.LPIC64
	ldr r9,[r8]
	str r9,[fp,#-100]
	ldr r8,.LPIC66
	ldr r9,[r8]
	str r9,[fp,#-104]
	ldr r8,.LPIC68
	ldr r7,[r8]
	ldr r8,.LPIC70
	ldr r6,[r8]
	ldr r8,.LPIC72
	ldr r5,[r8]
	ldr r8,.LPIC74
	ldr r4,[r8]
	ldr r8,.LPIC76
	ldr r3,[r8]
	ldr r8,.LPIC78
	ldr r2,[r8]
	ldr r8,.LPIC80
	ldr r1,[r8]
	ldr r8,.LPIC82
	ldr r0,[r8]
	@%r100 = call i32 @testParam32(i32 %r68,i32 %r69,i32 %r70,i32 %r71,i32 %r72,i32 %r73,i32 %r74,i32 %r75,i32 %r76,i32 %r77,i32 %r78,i32 %r79,i32 %r80,i32 %r81,i32 %r82,i32 %r83,i32 %r84,i32 %r85,i32 %r86,i32 %r87,i32 %r88,i32 %r89,i32 %r90,i32 %r91,i32 %r92,i32 %r93,i32 %r94,i32 %r95,i32 %r96,i32 %r97,i32 %r98,i32 %r99)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	sub sp,sp,#112
	str r0,[sp,#108]  @%r99
	str r1,[sp,#104]  @%r98
	str r2,[sp,#100]  @%r97
	str r3,[sp,#96]  @%r96
	str r4,[sp,#92]  @%r95
	str r5,[sp,#88]  @%r94
	str r6,[sp,#84]  @%r93
	str r7,[sp,#80]  @%r92
	ldr r9,[fp,#-104]
	str r9,[sp,#76]  @%r91
	ldr r9,[fp,#-100]
	str r9,[sp,#72]  @%r90
	ldr r9,[fp,#-96]
	str r9,[sp,#68]  @%r89
	ldr r9,[fp,#-92]
	str r9,[sp,#64]  @%r88
	ldr r9,[fp,#-88]
	str r9,[sp,#60]  @%r87
	ldr r9,[fp,#-84]
	str r9,[sp,#56]  @%r86
	ldr r9,[fp,#-80]
	str r9,[sp,#52]  @%r85
	ldr r9,[fp,#-76]
	str r9,[sp,#48]  @%r84
	ldr r9,[fp,#-72]
	str r9,[sp,#44]  @%r83
	ldr r9,[fp,#-68]
	str r9,[sp,#40]  @%r82
	ldr r9,[fp,#-64]
	str r9,[sp,#36]  @%r81
	ldr r9,[fp,#-60]
	str r9,[sp,#32]  @%r80
	ldr r9,[fp,#-56]
	str r9,[sp,#28]  @%r79
	ldr r9,[fp,#-52]
	str r9,[sp,#24]  @%r78
	ldr r9,[fp,#-48]
	str r9,[sp,#20]  @%r77
	ldr r9,[fp,#-44]
	str r9,[sp,#16]  @%r76
	ldr r9,[fp,#-24]
	str r9,[sp,#12]  @%r75
	ldr r9,[fp,#-28]
	str r9,[sp,#8]  @%r74
	ldr r9,[fp,#-16]
	str r9,[sp,#4]  @%r73
	ldr r9,[fp,#-32]
	str r9,[sp,#0]  @%r72
	ldr r0,[fp,#-12]
	ldr r1,[fp,#-20]
	ldr r2,[fp,#-36]
	ldr r3,[fp,#-40]
	bl testParam32
	add sp,sp,#112
	mov r8,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC100
	str r8,[r7]
	ldr r8,.LPIC100
	ldr r7,[r8]
	@call void @putint(i32 %r101)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	add sp,sp,#104
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
