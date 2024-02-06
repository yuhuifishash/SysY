.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#72
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-72]
	mov r8,#0
	str r8,[fp,#-68]
	ldr r8,[fp,#-68]
	mov r7,#3
	cmp r8,r7
	blt .mainL3
.mainL5:
	ldr r8,[fp,#-72]
	mov r0,r8
	add sp,sp,#72
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL3:
	mov r8,#0
	str r8,[fp,#-64]
	ldr r8,[fp,#-64]
	mov r7,#4
	cmp r8,r7
	blt .mainL7
.mainL9:
	ldr r8,[fp,#-68]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-68]
.mainL4:
	ldr r8,[fp,#-68]
	mov r7,#3
	cmp r8,r7
	blt .mainL3
	bge .mainL5
.mainL7:
	mov r8,#0
	str r8,[fp,#-60]
	ldr r8,[fp,#-60]
	mov r7,#5
	cmp r8,r7
	blt .mainL11
.mainL13:
	ldr r8,[fp,#-64]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-64]
.mainL8:
	ldr r8,[fp,#-64]
	mov r7,#4
	cmp r8,r7
	blt .mainL7
	bge .mainL9
.mainL11:
	mov r8,#0
	str r8,[fp,#-56]
	ldr r8,[fp,#-56]
	mov r7,#3
	cmp r8,r7
	blt .mainL15
.mainL17:
	ldr r8,[fp,#-60]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-60]
.mainL12:
	ldr r8,[fp,#-60]
	mov r7,#5
	cmp r8,r7
	blt .mainL11
	bge .mainL13
.mainL15:
	mov r8,#0
	str r8,[fp,#-52]
	ldr r8,[fp,#-52]
	mov r7,#5
	cmp r8,r7
	blt .mainL19
.mainL21:
	ldr r8,[fp,#-56]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-56]
.mainL16:
	ldr r8,[fp,#-56]
	mov r7,#3
	cmp r8,r7
	blt .mainL15
	bge .mainL17
.mainL19:
	mov r8,#0
	str r8,[fp,#-48]
	ldr r8,[fp,#-48]
	mov r7,#4
	cmp r8,r7
	blt .mainL23
.mainL25:
	ldr r8,[fp,#-52]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-52]
.mainL20:
	ldr r8,[fp,#-52]
	mov r7,#5
	cmp r8,r7
	blt .mainL19
	bge .mainL21
.mainL23:
	mov r8,#0
	str r8,[fp,#-44]
	ldr r8,[fp,#-44]
	mov r7,#6
	cmp r8,r7
	blt .mainL27
.mainL29:
	ldr r8,[fp,#-48]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-48]
.mainL24:
	ldr r8,[fp,#-48]
	mov r7,#4
	cmp r8,r7
	blt .mainL23
	bge .mainL25
.mainL27:
	mov r8,#0
	str r8,[fp,#-40]
	ldr r8,[fp,#-40]
	mov r7,#5
	cmp r8,r7
	blt .mainL31
.mainL33:
	ldr r8,[fp,#-44]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-44]
.mainL28:
	ldr r8,[fp,#-44]
	mov r7,#6
	cmp r8,r7
	blt .mainL27
	bge .mainL29
.mainL31:
	mov r8,#0
	str r8,[fp,#-36]
	ldr r8,[fp,#-36]
	mov r7,#5
	cmp r8,r7
	blt .mainL35
.mainL37:
	ldr r8,[fp,#-40]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-40]
.mainL32:
	ldr r8,[fp,#-40]
	mov r7,#5
	cmp r8,r7
	blt .mainL31
	bge .mainL33
.mainL35:
	mov r8,#0
	str r8,[fp,#-32]
	ldr r8,[fp,#-32]
	mov r7,#3
	cmp r8,r7
	blt .mainL39
.mainL41:
	ldr r8,[fp,#-36]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-36]
.mainL36:
	ldr r8,[fp,#-36]
	mov r7,#5
	cmp r8,r7
	blt .mainL35
	bge .mainL37
.mainL39:
	mov r8,#0
	str r8,[fp,#-28]
	ldr r8,[fp,#-28]
	mov r7,#6
	cmp r8,r7
	blt .mainL43
.mainL45:
	ldr r8,[fp,#-32]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-32]
.mainL40:
	ldr r8,[fp,#-32]
	mov r7,#3
	cmp r8,r7
	blt .mainL39
	bge .mainL41
.mainL43:
	mov r8,#0
	str r8,[fp,#-24]
	ldr r8,[fp,#-24]
	mov r7,#7
	cmp r8,r7
	blt .mainL47
.mainL49:
	ldr r8,[fp,#-28]
	mov r7,#2
	add r6,r8,r7
	str r6,[fp,#-28]
.mainL44:
	ldr r8,[fp,#-28]
	mov r7,#6
	cmp r8,r7
	blt .mainL43
	bge .mainL45
.mainL47:
	mov r8,#0
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	mov r7,#5
	cmp r8,r7
	blt .mainL51
.mainL53:
	ldr r8,[fp,#-24]
	mov r7,#2
	add r6,r8,r7
	str r6,[fp,#-24]
.mainL48:
	ldr r8,[fp,#-24]
	mov r7,#7
	cmp r8,r7
	blt .mainL47
	bge .mainL49
.mainL51:
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#3
	cmp r8,r7
	blt .mainL55
.mainL57:
	ldr r8,[fp,#-20]
	mov r7,#2
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL52:
	ldr r8,[fp,#-20]
	mov r7,#5
	cmp r8,r7
	blt .mainL51
	bge .mainL53
.mainL55:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#6
	cmp r8,r7
	blt .mainL59
.mainL61:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL56:
	ldr r8,[fp,#-16]
	mov r7,#3
	cmp r8,r7
	blt .mainL55
	bge .mainL57
.mainL59:
	ldr r8,[fp,#-72]
	mov r7,#3
	add r6,r8,r7
	movw r8,#999
	movt r8,#0  @ 999
	mov r7,r8
	@%r111 = call i32 @__modsi3(i32 %r109,i32 %r110)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,r7
	bl __modsi3
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-72]
	ldr r8,[fp,#-12]
	mov r7,#3
	add r6,r8,r7
	str r6,[fp,#-12]
.mainL60:
	ldr r8,[fp,#-12]
	mov r7,#6
	cmp r8,r7
	blt .mainL59
	bge .mainL61
	.section	.note.GNU-stack,"",%progbits
