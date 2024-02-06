.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a1:
	.word  1
a2:
	.word  2
a3:
	.word  3
a4:
	.word  4
a5:
	.word  5
a6:
	.word  6
a7:
	.word  7
a8:
	.word  8
a9:
	.word  9
a10:
	.word  10
a11:
	.word  11
a12:
	.word  12
a13:
	.word  13
a14:
	.word  14
a15:
	.word  15
a16:
	.word  16
a17:
	.word  1
a18:
	.word  2
a19:
	.word  3
a20:
	.word  4
a21:
	.word  5
a22:
	.word  6
a23:
	.word  7
a24:
	.word  8
a25:
	.word  9
a26:
	.word  10
a27:
	.word  11
a28:
	.word  12
a29:
	.word  13
a30:
	.word  14
a31:
	.word  15
a32:
	.word  16
.text
.global main
.LPIC0:
	.word  a1
.LPIC1:
	.word  a10
.LPIC2:
	.word  a11
.LPIC3:
	.word  a12
.LPIC4:
	.word  a13
.LPIC5:
	.word  a14
.LPIC6:
	.word  a15
.LPIC7:
	.word  a16
.LPIC8:
	.word  a17
.LPIC9:
	.word  a18
.LPIC10:
	.word  a19
.LPIC11:
	.word  a2
.LPIC12:
	.word  a20
.LPIC13:
	.word  a21
.LPIC14:
	.word  a22
.LPIC15:
	.word  a23
.LPIC16:
	.word  a24
.LPIC17:
	.word  a25
.LPIC18:
	.word  a26
.LPIC19:
	.word  a27
.LPIC20:
	.word  a28
.LPIC21:
	.word  a29
.LPIC22:
	.word  a3
.LPIC23:
	.word  a30
.LPIC24:
	.word  a31
.LPIC25:
	.word  a32
.LPIC26:
	.word  a4
.LPIC27:
	.word  a5
.LPIC28:
	.word  a6
.LPIC29:
	.word  a7
.LPIC30:
	.word  a8
.LPIC31:
	.word  a9
func:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	mov r9,#164
	sub sp,sp,r9
.funcL0:
	str r0,[fp,#-160]
	str r1,[fp,#-164]
.funcL1:
	mov r8,#0
	str r8,[fp,#-156]
	ldr r8,[fp,#-160]
	ldr r7,[fp,#-164]
	add r6,r8,r7
	str r6,[fp,#-156]
	mov r8,#0
	str r8,[fp,#-152]
	mov r8,#0
	str r8,[fp,#-148]
	mov r8,#0
	str r8,[fp,#-144]
	mov r8,#0
	str r8,[fp,#-140]
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
	@%r81 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-152]
	@%r82 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-148]
	@%r83 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-144]
	@%r84 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-140]
	mov r8,#1
	ldr r7,[fp,#-152]
	add r6,r8,r7
	ldr r8,.LPIC0
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-136]
	mov r8,#2
	ldr r7,[fp,#-148]
	add r6,r8,r7
	ldr r8,.LPIC11
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-132]
	mov r8,#3
	ldr r7,[fp,#-144]
	add r6,r8,r7
	ldr r8,.LPIC22
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-128]
	mov r8,#4
	ldr r7,[fp,#-140]
	add r6,r8,r7
	ldr r8,.LPIC26
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-124]
	mov r8,#1
	ldr r7,[fp,#-136]
	add r6,r8,r7
	ldr r8,.LPIC27
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-120]
	mov r8,#2
	ldr r7,[fp,#-132]
	add r6,r8,r7
	ldr r8,.LPIC28
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-116]
	mov r8,#3
	ldr r7,[fp,#-128]
	add r6,r8,r7
	ldr r8,.LPIC29
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-112]
	mov r8,#4
	ldr r7,[fp,#-124]
	add r6,r8,r7
	ldr r8,.LPIC30
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-108]
	mov r8,#1
	ldr r7,[fp,#-120]
	add r6,r8,r7
	ldr r8,.LPIC31
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-104]
	mov r8,#2
	ldr r7,[fp,#-116]
	add r6,r8,r7
	ldr r8,.LPIC1
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-100]
	mov r8,#3
	ldr r7,[fp,#-112]
	add r6,r8,r7
	ldr r8,.LPIC2
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-96]
	mov r8,#4
	ldr r7,[fp,#-108]
	add r6,r8,r7
	ldr r8,.LPIC3
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-92]
	mov r8,#1
	ldr r7,[fp,#-104]
	add r6,r8,r7
	ldr r8,.LPIC4
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-88]
	mov r8,#2
	ldr r7,[fp,#-100]
	add r6,r8,r7
	ldr r8,.LPIC5
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-84]
	mov r8,#3
	ldr r7,[fp,#-96]
	add r6,r8,r7
	ldr r8,.LPIC6
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-80]
	mov r8,#4
	ldr r7,[fp,#-92]
	add r6,r8,r7
	ldr r8,.LPIC7
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-76]
	mov r8,#1
	ldr r7,[fp,#-88]
	add r6,r8,r7
	ldr r8,.LPIC8
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-72]
	mov r8,#2
	ldr r7,[fp,#-84]
	add r6,r8,r7
	ldr r8,.LPIC9
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-68]
	mov r8,#3
	ldr r7,[fp,#-80]
	add r6,r8,r7
	ldr r8,.LPIC10
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-64]
	mov r8,#4
	ldr r7,[fp,#-76]
	add r6,r8,r7
	ldr r8,.LPIC12
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-60]
	mov r8,#1
	ldr r7,[fp,#-72]
	add r6,r8,r7
	ldr r8,.LPIC13
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-56]
	mov r8,#2
	ldr r7,[fp,#-68]
	add r6,r8,r7
	ldr r8,.LPIC14
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-52]
	mov r8,#3
	ldr r7,[fp,#-64]
	add r6,r8,r7
	ldr r8,.LPIC15
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-48]
	mov r8,#4
	ldr r7,[fp,#-60]
	add r6,r8,r7
	ldr r8,.LPIC16
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-44]
	mov r8,#1
	ldr r7,[fp,#-56]
	add r6,r8,r7
	ldr r8,.LPIC17
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-40]
	mov r8,#2
	ldr r7,[fp,#-52]
	add r6,r8,r7
	ldr r8,.LPIC18
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-36]
	mov r8,#3
	ldr r7,[fp,#-48]
	add r6,r8,r7
	ldr r8,.LPIC19
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-32]
	mov r8,#4
	ldr r7,[fp,#-44]
	add r6,r8,r7
	ldr r8,.LPIC20
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-28]
	mov r8,#1
	ldr r7,[fp,#-40]
	add r6,r8,r7
	ldr r8,.LPIC21
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-24]
	mov r8,#2
	ldr r7,[fp,#-36]
	add r6,r8,r7
	ldr r8,.LPIC23
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-20]
	mov r8,#3
	ldr r7,[fp,#-32]
	add r6,r8,r7
	ldr r8,.LPIC24
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-16]
	mov r8,#4
	ldr r7,[fp,#-28]
	add r6,r8,r7
	ldr r8,.LPIC25
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-12]
	ldr r8,[fp,#-160]
	ldr r7,[fp,#-164]
	sub r6,r8,r7
	mov r8,#10
	add r7,r6,r8
	str r7,[fp,#-156]
	mov r8,#1
	ldr r7,[fp,#-40]
	add r6,r8,r7
	ldr r8,.LPIC21
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-24]
	mov r8,#2
	ldr r7,[fp,#-36]
	add r6,r8,r7
	ldr r8,.LPIC23
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-20]
	mov r8,#3
	ldr r7,[fp,#-32]
	add r6,r8,r7
	ldr r8,.LPIC24
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-16]
	mov r8,#4
	ldr r7,[fp,#-28]
	add r6,r8,r7
	ldr r8,.LPIC25
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-12]
	mov r8,#1
	ldr r7,[fp,#-56]
	add r6,r8,r7
	bl .LPIC33
.LPIC32:
	.word a25
.LPIC33:
	ldr r8,.LPIC32
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-40]
	mov r8,#2
	ldr r7,[fp,#-52]
	add r6,r8,r7
	bl .LPIC35
.LPIC34:
	.word a26
.LPIC35:
	ldr r8,.LPIC34
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-36]
	mov r8,#3
	ldr r7,[fp,#-48]
	add r6,r8,r7
	bl .LPIC37
.LPIC36:
	.word a27
.LPIC37:
	ldr r8,.LPIC36
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-32]
	mov r8,#4
	ldr r7,[fp,#-44]
	add r6,r8,r7
	bl .LPIC39
.LPIC38:
	.word a28
.LPIC39:
	ldr r8,.LPIC38
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-28]
	mov r8,#1
	ldr r7,[fp,#-72]
	add r6,r8,r7
	bl .LPIC41
.LPIC40:
	.word a21
.LPIC41:
	ldr r8,.LPIC40
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-56]
	mov r8,#2
	ldr r7,[fp,#-68]
	add r6,r8,r7
	bl .LPIC43
.LPIC42:
	.word a22
.LPIC43:
	ldr r8,.LPIC42
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-52]
	mov r8,#3
	ldr r7,[fp,#-64]
	add r6,r8,r7
	bl .LPIC45
.LPIC44:
	.word a23
.LPIC45:
	ldr r8,.LPIC44
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-48]
	mov r8,#4
	ldr r7,[fp,#-60]
	add r6,r8,r7
	bl .LPIC47
.LPIC46:
	.word a24
.LPIC47:
	ldr r8,.LPIC46
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-44]
	mov r8,#1
	ldr r7,[fp,#-88]
	add r6,r8,r7
	bl .LPIC49
.LPIC48:
	.word a17
.LPIC49:
	ldr r8,.LPIC48
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-72]
	mov r8,#2
	ldr r7,[fp,#-84]
	add r6,r8,r7
	bl .LPIC51
.LPIC50:
	.word a18
.LPIC51:
	ldr r8,.LPIC50
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-68]
	mov r8,#3
	ldr r7,[fp,#-80]
	add r6,r8,r7
	bl .LPIC53
.LPIC52:
	.word a19
.LPIC53:
	ldr r8,.LPIC52
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-64]
	mov r8,#4
	ldr r7,[fp,#-76]
	add r6,r8,r7
	bl .LPIC55
.LPIC54:
	.word a20
.LPIC55:
	ldr r8,.LPIC54
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-60]
	mov r8,#1
	ldr r7,[fp,#-104]
	add r6,r8,r7
	bl .LPIC57
.LPIC56:
	.word a13
.LPIC57:
	ldr r8,.LPIC56
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-88]
	mov r8,#2
	ldr r7,[fp,#-100]
	add r6,r8,r7
	bl .LPIC59
.LPIC58:
	.word a14
.LPIC59:
	ldr r8,.LPIC58
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-84]
	mov r8,#3
	ldr r7,[fp,#-96]
	add r6,r8,r7
	bl .LPIC61
.LPIC60:
	.word a15
.LPIC61:
	ldr r8,.LPIC60
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-80]
	mov r8,#4
	ldr r7,[fp,#-92]
	add r6,r8,r7
	bl .LPIC63
.LPIC62:
	.word a16
.LPIC63:
	ldr r8,.LPIC62
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-76]
	mov r8,#1
	ldr r7,[fp,#-120]
	add r6,r8,r7
	bl .LPIC65
.LPIC64:
	.word a9
.LPIC65:
	ldr r8,.LPIC64
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-104]
	mov r8,#2
	ldr r7,[fp,#-116]
	add r6,r8,r7
	bl .LPIC67
.LPIC66:
	.word a10
.LPIC67:
	ldr r8,.LPIC66
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-100]
	mov r8,#3
	ldr r7,[fp,#-112]
	add r6,r8,r7
	bl .LPIC69
.LPIC68:
	.word a11
.LPIC69:
	ldr r8,.LPIC68
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-96]
	mov r8,#4
	ldr r7,[fp,#-108]
	add r6,r8,r7
	bl .LPIC71
.LPIC70:
	.word a12
.LPIC71:
	ldr r8,.LPIC70
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-92]
	mov r8,#1
	ldr r7,[fp,#-136]
	add r6,r8,r7
	bl .LPIC73
.LPIC72:
	.word a5
.LPIC73:
	ldr r8,.LPIC72
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-120]
	mov r8,#2
	ldr r7,[fp,#-132]
	add r6,r8,r7
	bl .LPIC75
.LPIC74:
	.word a6
.LPIC75:
	ldr r8,.LPIC74
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-116]
	mov r8,#3
	ldr r7,[fp,#-128]
	add r6,r8,r7
	bl .LPIC77
.LPIC76:
	.word a7
.LPIC77:
	ldr r8,.LPIC76
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-112]
	mov r8,#4
	ldr r7,[fp,#-124]
	add r6,r8,r7
	bl .LPIC79
.LPIC78:
	.word a8
.LPIC79:
	ldr r8,.LPIC78
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-108]
	mov r8,#1
	ldr r7,[fp,#-152]
	add r6,r8,r7
	bl .LPIC81
.LPIC80:
	.word a1
.LPIC81:
	ldr r8,.LPIC80
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-136]
	mov r8,#2
	ldr r7,[fp,#-148]
	add r6,r8,r7
	bl .LPIC83
.LPIC82:
	.word a2
.LPIC83:
	ldr r8,.LPIC82
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-132]
	mov r8,#3
	ldr r7,[fp,#-144]
	add r6,r8,r7
	bl .LPIC85
.LPIC84:
	.word a3
.LPIC85:
	ldr r8,.LPIC84
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-128]
	mov r8,#4
	ldr r7,[fp,#-140]
	add r6,r8,r7
	bl .LPIC87
.LPIC86:
	.word a4
.LPIC87:
	ldr r8,.LPIC86
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-124]
	mov r8,#1
	ldr r7,[fp,#-152]
	add r6,r8,r7
	ldr r8,.LPIC80
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-136]
	mov r8,#2
	ldr r7,[fp,#-148]
	add r6,r8,r7
	ldr r8,.LPIC82
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-132]
	mov r8,#3
	ldr r7,[fp,#-144]
	add r6,r8,r7
	ldr r8,.LPIC84
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-128]
	mov r8,#4
	ldr r7,[fp,#-140]
	add r6,r8,r7
	ldr r8,.LPIC86
	ldr r7,[r8]
	add r8,r6,r7
	str r8,[fp,#-124]
	ldr r8,[fp,#-156]
	ldr r7,[fp,#-152]
	add r6,r8,r7
	ldr r8,[fp,#-148]
	add r7,r6,r8
	ldr r8,[fp,#-144]
	add r6,r7,r8
	ldr r8,[fp,#-140]
	add r7,r6,r8
	ldr r8,[fp,#-136]
	sub r6,r7,r8
	ldr r8,[fp,#-132]
	sub r7,r6,r8
	ldr r8,[fp,#-128]
	sub r6,r7,r8
	ldr r8,[fp,#-124]
	sub r7,r6,r8
	ldr r8,[fp,#-120]
	add r6,r7,r8
	ldr r8,[fp,#-116]
	add r7,r6,r8
	ldr r8,[fp,#-112]
	add r6,r7,r8
	ldr r8,[fp,#-108]
	add r7,r6,r8
	ldr r8,[fp,#-104]
	sub r6,r7,r8
	ldr r8,[fp,#-100]
	sub r7,r6,r8
	ldr r8,[fp,#-96]
	sub r6,r7,r8
	ldr r8,[fp,#-92]
	sub r7,r6,r8
	ldr r8,[fp,#-88]
	add r6,r7,r8
	ldr r8,[fp,#-84]
	add r7,r6,r8
	ldr r8,[fp,#-80]
	add r6,r7,r8
	ldr r8,[fp,#-76]
	add r7,r6,r8
	ldr r8,[fp,#-72]
	sub r6,r7,r8
	ldr r8,[fp,#-68]
	sub r7,r6,r8
	ldr r8,[fp,#-64]
	sub r6,r7,r8
	ldr r8,[fp,#-60]
	sub r7,r6,r8
	ldr r8,[fp,#-56]
	add r6,r7,r8
	ldr r8,[fp,#-52]
	add r7,r6,r8
	ldr r8,[fp,#-48]
	add r6,r7,r8
	ldr r8,[fp,#-44]
	add r7,r6,r8
	ldr r8,[fp,#-40]
	sub r6,r7,r8
	ldr r8,[fp,#-36]
	sub r7,r6,r8
	ldr r8,[fp,#-32]
	sub r6,r7,r8
	ldr r8,[fp,#-28]
	sub r7,r6,r8
	ldr r8,[fp,#-24]
	add r6,r7,r8
	ldr r8,[fp,#-20]
	add r7,r6,r8
	ldr r8,[fp,#-16]
	add r6,r7,r8
	ldr r8,[fp,#-12]
	add r7,r6,r8
	ldr r8,.LPIC80
	ldr r6,[r8]
	add r8,r7,r6
	ldr r7,.LPIC82
	ldr r6,[r7]
	sub r7,r8,r6
	ldr r8,.LPIC84
	ldr r6,[r8]
	add r8,r7,r6
	ldr r7,.LPIC86
	ldr r6,[r7]
	sub r7,r8,r6
	ldr r8,.LPIC72
	ldr r6,[r8]
	add r8,r7,r6
	ldr r7,.LPIC74
	ldr r6,[r7]
	sub r7,r8,r6
	ldr r8,.LPIC76
	ldr r6,[r8]
	add r8,r7,r6
	ldr r7,.LPIC78
	ldr r6,[r7]
	sub r7,r8,r6
	ldr r8,.LPIC64
	ldr r6,[r8]
	add r8,r7,r6
	ldr r7,.LPIC66
	ldr r6,[r7]
	sub r7,r8,r6
	ldr r8,.LPIC68
	ldr r6,[r8]
	add r8,r7,r6
	ldr r7,.LPIC70
	ldr r6,[r7]
	sub r7,r8,r6
	ldr r8,.LPIC56
	ldr r6,[r8]
	add r8,r7,r6
	ldr r7,.LPIC58
	ldr r6,[r7]
	sub r7,r8,r6
	ldr r8,.LPIC60
	ldr r6,[r8]
	add r8,r7,r6
	ldr r7,.LPIC62
	ldr r6,[r7]
	sub r7,r8,r6
	ldr r8,.LPIC48
	ldr r6,[r8]
	add r8,r7,r6
	ldr r7,.LPIC50
	ldr r6,[r7]
	sub r7,r8,r6
	ldr r8,.LPIC52
	ldr r6,[r8]
	add r8,r7,r6
	ldr r7,.LPIC54
	ldr r6,[r7]
	sub r7,r8,r6
	ldr r8,.LPIC40
	ldr r6,[r8]
	add r8,r7,r6
	ldr r7,.LPIC42
	ldr r6,[r7]
	sub r7,r8,r6
	ldr r8,.LPIC44
	ldr r6,[r8]
	add r8,r7,r6
	ldr r7,.LPIC46
	ldr r6,[r7]
	sub r7,r8,r6
	bl .LPIC89
.LPIC88:
	.word a25
.LPIC89:
	ldr r8,.LPIC88
	ldr r6,[r8]
	add r8,r7,r6
	bl .LPIC91
.LPIC90:
	.word a26
.LPIC91:
	ldr r7,.LPIC90
	ldr r6,[r7]
	sub r7,r8,r6
	bl .LPIC93
.LPIC92:
	.word a27
.LPIC93:
	ldr r8,.LPIC92
	ldr r6,[r8]
	add r8,r7,r6
	bl .LPIC95
.LPIC94:
	.word a28
.LPIC95:
	ldr r7,.LPIC94
	ldr r6,[r7]
	sub r7,r8,r6
	bl .LPIC97
.LPIC96:
	.word a29
.LPIC97:
	ldr r8,.LPIC96
	ldr r6,[r8]
	add r8,r7,r6
	bl .LPIC99
.LPIC98:
	.word a30
.LPIC99:
	ldr r7,.LPIC98
	ldr r6,[r7]
	sub r7,r8,r6
	bl .LPIC101
.LPIC100:
	.word a31
.LPIC101:
	ldr r8,.LPIC100
	ldr r6,[r8]
	add r8,r7,r6
	bl .LPIC103
.LPIC102:
	.word a32
.LPIC103:
	ldr r7,.LPIC102
	ldr r6,[r7]
	sub r7,r8,r6
	mov r0,r7
	mov r9,#164
	add sp,sp,r9
	pop {r6,r7,r8}
	pop {fp,pc}
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	@%r4 = call i32 @getint()
	bl getint
	mov r8,r0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#2
	mov r6,#9
	mul r5,r7,r6
	add r7,r8,r5
	str r7,[fp,#-12]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	@%r12 = call i32 @func(i32 %r10,i32 %r11)
	mov r0,r8
	mov r1,r7
	bl func
	mov r6,r0
	str r6,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r13)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
