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
	mov r9,#160
	sub sp,sp,r9
.mainL0:
.mainL1:
.mainL63:
	mov r9,#0
	str r9,[fp,#-12]
	mov r9,#0
	str r9,[fp,#-16]
.mainL3:
.mainL62:
	mov r9,#0
	str r9,[fp,#-20]
	ldr r9,[fp,#-16]
	mov r10,r9
	str r10,[fp,#-24]
.mainL7:
.mainL72:
	mov r9,#0
	str r9,[fp,#-28]
	ldr r9,[fp,#-24]
	mov r10,r9
	str r10,[fp,#-32]
.mainL11:
.mainL73:
	mov r9,#0
	str r9,[fp,#-36]
	ldr r9,[fp,#-32]
	mov r10,r9
	str r10,[fp,#-40]
.mainL15:
.mainL74:
	mov r9,#0
	str r9,[fp,#-44]
	ldr r9,[fp,#-40]
	mov r10,r9
	str r10,[fp,#-52]
.mainL19:
.mainL71:
	mov r9,#0
	str r9,[fp,#-48]
	ldr r9,[fp,#-52]
	mov r10,r9
	str r10,[fp,#-60]
.mainL23:
.mainL64:
	mov r9,#0
	str r9,[fp,#-56]
	ldr r9,[fp,#-60]
	mov r10,r9
	str r10,[fp,#-68]
.mainL27:
.mainL65:
	mov r9,#0
	str r9,[fp,#-64]
	ldr r9,[fp,#-68]
	mov r10,r9
	str r10,[fp,#-76]
.mainL31:
.mainL75:
	mov r9,#0
	str r9,[fp,#-72]
	ldr r9,[fp,#-76]
	mov r10,r9
	str r10,[fp,#-84]
.mainL35:
.mainL69:
	mov r9,#0
	str r9,[fp,#-80]
	ldr r9,[fp,#-84]
	mov r10,r9
	str r10,[fp,#-88]
.mainL39:
.mainL70:
	mov r9,#0
	str r9,[fp,#-92]
	ldr r9,[fp,#-88]
	mov r10,r9
	str r10,[fp,#-96]
.mainL43:
.mainL66:
	mov r9,#0
	str r9,[fp,#-100]
	ldr r9,[fp,#-96]
	mov r10,r9
	str r10,[fp,#-104]
.mainL47:
.mainL67:
	mov r9,#0
	str r9,[fp,#-108]
	ldr r9,[fp,#-104]
	mov r10,r9
	str r10,[fp,#-112]
.mainL51:
.mainL68:
	mov r9,#0
	str r9,[fp,#-116]
	ldr r9,[fp,#-112]
	mov r10,r9
	str r10,[fp,#-120]
.mainL55:
.mainL76:
	mov r9,#0
	str r9,[fp,#-124]
	ldr r9,[fp,#-120]
	mov r10,r9
	str r10,[fp,#-128]
.mainL59:
	ldr r9,[fp,#-128]
	add r6,r9,#3
	movw r3,#1313
	movt r3,#33588  @ -2093742815
	smmul r3,r6,r3
	asr r4,r6,#31
	add r3,r6,r3
	rsb r3,r4,r3,asr #9
	movw r4,#999
	movt r4,#0  @ 999
	mul r3,r3,r4
	sub r4,r6,r3
	ldr r9,[fp,#-124]
	add r10,r9,#3
	str r10,[fp,#-132]
.mainL60:
	ldr r9,[fp,#-132]
	cmp r9,#6
	blt .mainL91
.mainL61:
	ldr r9,[fp,#-116]
	add r10,r9,#1
	str r10,[fp,#-136]
.mainL56:
	ldr r9,[fp,#-136]
	cmp r9,#3
	blt .mainL90
.mainL57:
	ldr r9,[fp,#-108]
	add r10,r9,#2
	str r10,[fp,#-140]
.mainL52:
	ldr r9,[fp,#-140]
	cmp r9,#5
	blt .mainL89
.mainL53:
	ldr r9,[fp,#-100]
	add r10,r9,#2
	str r10,[fp,#-144]
.mainL48:
	ldr r9,[fp,#-144]
	cmp r9,#7
	blt .mainL88
.mainL49:
	ldr r9,[fp,#-92]
	add r10,r9,#2
	str r10,[fp,#-148]
.mainL44:
	ldr r9,[fp,#-148]
	cmp r9,#6
	blt .mainL87
.mainL45:
	ldr r9,[fp,#-80]
	add r10,r9,#1
	str r10,[fp,#-152]
.mainL40:
	ldr r9,[fp,#-152]
	cmp r9,#3
	blt .mainL86
.mainL41:
	ldr r9,[fp,#-72]
	add r10,r9,#1
	str r10,[fp,#-156]
.mainL36:
	ldr r9,[fp,#-156]
	cmp r9,#5
	blt .mainL85
.mainL37:
	ldr r9,[fp,#-64]
	add r10,r9,#1
	str r10,[fp,#-160]
.mainL32:
	ldr r9,[fp,#-160]
	cmp r9,#5
	blt .mainL84
.mainL33:
	ldr r9,[fp,#-56]
	add r6,r9,#1
.mainL28:
	cmp r6,#6
	blt .mainL83
.mainL29:
	ldr r9,[fp,#-48]
	add r3,r9,#1
.mainL24:
	cmp r3,#4
	blt .mainL82
.mainL25:
	ldr r9,[fp,#-44]
	add r1,r9,#1
.mainL20:
	cmp r1,#5
	blt .mainL81
.mainL21:
	ldr r9,[fp,#-36]
	add r2,r9,#1
.mainL16:
	cmp r2,#3
	blt .mainL80
.mainL17:
	ldr r9,[fp,#-28]
	add r7,r9,#1
.mainL12:
	cmp r7,#5
	blt .mainL79
.mainL13:
	ldr r9,[fp,#-20]
	add r0,r9,#1
.mainL8:
	cmp r0,#4
	blt .mainL78
.mainL9:
	ldr r9,[fp,#-12]
	add r8,r9,#1
.mainL4:
	cmp r8,#3
	blt .mainL77
.mainL5:
	mov r0,r4
	mov r9,#160
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL77:
	mov r9,r8
	str r9,[fp,#-12]
	mov r9,r4
	str r9,[fp,#-16]
	bl .mainL3
.mainL78:
	mov r9,r0
	str r9,[fp,#-20]
	mov r9,r4
	str r9,[fp,#-24]
	bl .mainL7
.mainL79:
	mov r9,r7
	str r9,[fp,#-28]
	mov r9,r4
	str r9,[fp,#-32]
	bl .mainL11
.mainL80:
	mov r9,r2
	str r9,[fp,#-36]
	mov r9,r4
	str r9,[fp,#-40]
	bl .mainL15
.mainL81:
	mov r9,r1
	str r9,[fp,#-44]
	mov r9,r4
	str r9,[fp,#-52]
	bl .mainL19
.mainL82:
	mov r9,r3
	str r9,[fp,#-48]
	mov r9,r4
	str r9,[fp,#-60]
	bl .mainL23
.mainL83:
	mov r9,r6
	str r9,[fp,#-56]
	mov r9,r4
	str r9,[fp,#-68]
	bl .mainL27
.mainL84:
	ldr r9,[fp,#-160]
	mov r10,r9
	str r10,[fp,#-64]
	mov r9,r4
	str r9,[fp,#-76]
	bl .mainL31
.mainL85:
	ldr r9,[fp,#-156]
	mov r10,r9
	str r10,[fp,#-72]
	mov r9,r4
	str r9,[fp,#-84]
	bl .mainL35
.mainL86:
	ldr r9,[fp,#-152]
	mov r10,r9
	str r10,[fp,#-80]
	mov r9,r4
	str r9,[fp,#-88]
	bl .mainL39
.mainL87:
	ldr r9,[fp,#-148]
	mov r10,r9
	str r10,[fp,#-92]
	mov r9,r4
	str r9,[fp,#-96]
	bl .mainL43
.mainL88:
	ldr r9,[fp,#-144]
	mov r10,r9
	str r10,[fp,#-100]
	mov r9,r4
	str r9,[fp,#-104]
	bl .mainL47
.mainL89:
	ldr r9,[fp,#-140]
	mov r10,r9
	str r10,[fp,#-108]
	mov r9,r4
	str r9,[fp,#-112]
	bl .mainL51
.mainL90:
	ldr r9,[fp,#-136]
	mov r10,r9
	str r10,[fp,#-116]
	mov r9,r4
	str r9,[fp,#-120]
	bl .mainL55
.mainL91:
	ldr r9,[fp,#-132]
	mov r10,r9
	str r10,[fp,#-124]
	mov r9,r4
	str r9,[fp,#-128]
	bl .mainL59
	.section	.note.GNU-stack,"",%progbits
