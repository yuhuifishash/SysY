.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
func1:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.func1L0:
.func1L5:
	mov r8,r1
	mov r7,r0
	mov r6,r2
.func1L1:
	cmp r6,#0
	beq .func1L2
.func1L3:
	sub r5,r8,r6
	mov r8,r5
	mov r6,#0
	bl .func1L1
.func1L2:
	mul r6,r7,r8
	mov r0,r6
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
func2:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.func2L0:
.func2L5:
	mov r8,r1
	mov r7,r0
.func2L1:
	cmp r8,#0
	bne .func2L2
.func2L3:
	mov r0,r7
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.func2L2:
	@%r8 = call i32 @__modsi3(i32 %r12,i32 %r13)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r8
	bl __modsi3
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r7,r6
	bl .func2L1
func3:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.func3L0:
.func3L5:
	mov r8,r0
	mov r7,r1
.func3L1:
	cmp r7,#0
	beq .func3L2
.func3L3:
	add r6,r8,r7
	mov r8,r6
	mov r7,#0
	bl .func3L1
.func3L2:
	add r7,r8,#1
	mov r0,r7
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
func4:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.func4L0:
.func4L1:
	cmp r0,#0
	bne .func4L2
.func4L3:
	mov r0,r2
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.func4L2:
	mov r0,r1
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
func5:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.func5L0:
.func5L1:
	rsb r8,r0,#0
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
func6:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.func6L0:
.func6L1:
	cmp r0,#0
	bne .func6L5
.func6L3:
	mov r0,#0
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.func6L5:
	cmp r1,#0
	beq .func6L3
.func6L2:
	mov r0,#1
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
func7:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.func7L0:
.func7L1:
	cmp r0,#0
	beq .func7L2
.func7L3:
	mov r0,#0
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.func7L2:
	mov r0,#1
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	mov r9,#152
	sub sp,sp,r9
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	str r0,[fp,#-84]
	add sp,sp,#4 @stack align 8bytes
	@%r3 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	str r0,[fp,#-56]
	add sp,sp,#4 @stack align 8bytes
	@%r5 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	str r0,[fp,#-64]
	add sp,sp,#4 @stack align 8bytes
	@%r7 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	str r0,[fp,#-68]
	add sp,sp,#4 @stack align 8bytes
.mainL76:
	mov r4,#0
.mainL3:
	@%r16 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r3,r0
	add sp,sp,#4 @stack align 8bytes
	mov r2,r4
	mvn r1,#47
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	str r3,[r1]
	add r3,r4,#1
.mainL4:
	cmp r3,#10
	blt .mainL77
.mainL5:
.mainL6:
.mainL8:
	ldr r9,[fp,#-84]
	cmp r9,#0
	beq .mainL9
.mainL10:
	mov r9,#0
	str r9,[fp,#-76]
.mainL7:
.mainL11:
.mainL13:
	ldr r9,[fp,#-56]
	rsb r10,r9,#0
	str r10,[fp,#-52]
.mainL12:
.mainL14:
.mainL16:
	ldr r9,[fp,#-76]
	cmp r9,#0
	bne .mainL19
.mainL18:
	mov r9,#0
	str r9,[fp,#-80]
.mainL15:
	@%r34 = call i32 @func2(i32 %r32,i32 %r5)
	push {r0,r2,r3}
	ldr r0,[fp,#-80]
	ldr r1,[fp,#-64]
	bl func2
	mov r1,r0
	pop {r0,r2,r3}
	@%r36 = call i32 @func3(i32 %r34,i32 %r7)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r1
	ldr r1,[fp,#-68]
	bl func3
	mov r7,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
.mainL20:
.mainL22:
	rsb r9,r7,#0
	str r9,[fp,#-60]
.mainL21:
	mvn r7,#47
	add r1,fp,r7
	ldr r9,[r1]
	str r9,[fp,#-88]
	mov r1,#1
	mvn r6,#47
	add r5,fp,r6
	add r6,r5,r1,lsl #2
	ldr r9,[r6]
	str r9,[fp,#-92]
.mainL23:
.mainL25:
	ldr r9,[fp,#-92]
	rsb r10,r9,#0
	str r10,[fp,#-72]
.mainL24:
	mov r1,#2
	mvn r6,#47
	add r2,fp,r6
	add r6,r2,r1,lsl #2
	ldr r9,[r6]
	str r9,[fp,#-96]
	mov r6,#3
	mvn r1,#47
	add r0,fp,r1
	add r1,r0,r6,lsl #2
	ldr r9,[r1]
	str r9,[fp,#-100]
.mainL26:
.mainL28:
	ldr r9,[fp,#-100]
	cmp r9,#0
	beq .mainL29
.mainL30:
	mov r9,#0
	str r9,[fp,#-104]
.mainL27:
.mainL31:
.mainL33:
	ldr r9,[fp,#-96]
	cmp r9,#0
	bne .mainL36
.mainL35:
	mov r9,#0
	str r9,[fp,#-108]
.mainL32:
	mov r8,#4
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r8,lsl #2
	ldr r9,[r7]
	str r9,[fp,#-112]
	mov r7,#5
	mvn r5,#47
	add r2,fp,r5
	add r5,r2,r7,lsl #2
	ldr r9,[r5]
	str r9,[fp,#-116]
.mainL37:
.mainL39:
	ldr r9,[fp,#-116]
	cmp r9,#0
	beq .mainL40
.mainL41:
	mov r9,#0
	str r9,[fp,#-124]
.mainL38:
	@%r60 = call i32 @func2(i32 %r55,i32 %r59)
	push {r0,r1,r3}
	ldr r0,[fp,#-112]
	ldr r1,[fp,#-124]
	bl func2
	mov r2,r0
	pop {r0,r1,r3}
.mainL42:
.mainL44:
	ldr r9,[fp,#-72]
	cmp r9,#0
	bne .mainL45
.mainL46:
	mov r9,r2
	str r9,[fp,#-128]
.mainL43:
	mov r2,#6
	mvn r1,#47
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	ldr r9,[r1]
	str r9,[fp,#-132]
	@%r65 = call i32 @func3(i32 %r61,i32 %r64)
	push {r0,r2,r3}
	ldr r0,[fp,#-128]
	ldr r1,[fp,#-132]
	bl func3
	mov r1,r0
	pop {r0,r2,r3}
	mov r0,#7
	mvn r8,#47
	add r7,fp,r8
	add r8,r7,r0,lsl #2
	ldr r9,[r8]
	str r9,[fp,#-136]
	@%r69 = call i32 @func2(i32 %r65,i32 %r68)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r1
	ldr r1,[fp,#-136]
	bl func2
	str r0,[fp,#-120]
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	mov r1,#8
	mvn r0,#47
	add r8,fp,r0
	add r0,r8,r1,lsl #2
	ldr r9,[r0]
	str r9,[fp,#-140]
	mov r1,#9
	mvn r0,#47
	add r5,fp,r0
	add r0,r5,r1,lsl #2
	ldr r9,[r0]
	str r9,[fp,#-144]
.mainL47:
.mainL49:
	ldr r9,[fp,#-144]
	cmp r9,#0
	beq .mainL50
.mainL51:
	mov r9,#0
	str r9,[fp,#-148]
.mainL48:
	@%r77 = call i32 @func3(i32 %r72,i32 %r76)
	push {r1,r2,r3}
	ldr r0,[fp,#-140]
	ldr r1,[fp,#-148]
	bl func3
	pop {r1,r2,r3}
	@%r79 = call i32 @func1(i32 %r69,i32 %r77,i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	ldr r0,[fp,#-120]
	ldr r2,[fp,#-84]
	bl func1
	mov r6,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
.mainL52:
.mainL54:
	ldr r9,[fp,#-60]
	cmp r9,#0
	bne .mainL55
.mainL56:
	mov r9,r6
	str r9,[fp,#-152]
.mainL53:
.mainL57:
.mainL59:
	ldr r9,[fp,#-64]
	cmp r9,#0
	beq .mainL60
.mainL61:
	mov r6,#0
.mainL58:
	@%r85 = call i32 @func3(i32 %r83,i32 %r7)
	push {r0,r1,r3}
	mov r0,r6
	ldr r1,[fp,#-68]
	bl func3
	mov r2,r0
	pop {r0,r1,r3}
	@%r86 = call i32 @func2(i32 %r3,i32 %r85)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	ldr r0,[fp,#-56]
	mov r1,r2
	bl func2
	mov r7,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@%r87 = call i32 @func3(i32 %r80,i32 %r86)
	push {r0,r1,r3}
	ldr r0,[fp,#-152]
	mov r1,r7
	bl func3
	mov r2,r0
	pop {r0,r1,r3}
	@%r94 = call i32 @func1(i32 %r87,i32 %r40,i32 %r43)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r2
	ldr r1,[fp,#-88]
	ldr r2,[fp,#-92]
	bl func1
	mov r7,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@%r98 = call i32 @func2(i32 %r94,i32 %r47)
	push {r0,r1,r3}
	mov r0,r7
	ldr r1,[fp,#-96]
	bl func2
	mov r2,r0
	pop {r0,r1,r3}
.mainL62:
.mainL64:
	ldr r9,[fp,#-116]
	rsb r7,r9,#0
.mainL63:
	@%r109 = call i32 @func3(i32 %r55,i32 %r148)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	ldr r0,[fp,#-112]
	mov r1,r7
	bl func3
	mov r8,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
.mainL65:
.mainL67:
	ldr r9,[fp,#-132]
	rsb r7,r9,#0
.mainL66:
	@%r114 = call i32 @func2(i32 %r109,i32 %r149)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r8
	mov r1,r7
	bl func2
	mov r5,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
.mainL68:
.mainL70:
	ldr r9,[fp,#-140]
	cmp r9,#0
	beq .mainL71
.mainL72:
	mov r8,#0
.mainL69:
	@%r122 = call i32 @func1(i32 %r114,i32 %r68,i32 %r121)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r5
	ldr r1,[fp,#-136]
	mov r2,r8
	bl func1
	mov r7,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
.mainL73:
.mainL75:
	ldr r9,[fp,#-144]
	rsb r1,r9,#0
.mainL74:
	@%r127 = call i32 @func2(i32 %r122,i32 %r151)
	push {r1,r2,r3}
	mov r0,r7
	bl func2
	pop {r1,r2,r3}
	@%r129 = call i32 @func3(i32 %r127,i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	ldr r1,[fp,#-84]
	bl func3
	mov r7,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@%r130 = call i32 @func1(i32 %r98,i32 %r50,i32 %r129)
	push {r0,r2,r3}
	mov r0,r2
	ldr r1,[fp,#-100]
	mov r2,r7
	bl func1
	mov r1,r0
	pop {r0,r2,r3}
	mov r0,r1
	mov r9,#152
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL71:
	mov r8,#1
	bl .mainL69
.mainL60:
	mov r6,#1
	bl .mainL58
.mainL55:
	ldr r9,[fp,#-88]
	mov r10,r9
	str r10,[fp,#-152]
	bl .mainL53
.mainL50:
	mov r9,#1
	str r9,[fp,#-148]
	bl .mainL48
.mainL45:
	ldr r9,[fp,#-108]
	mov r10,r9
	str r10,[fp,#-128]
	bl .mainL43
.mainL40:
	mov r9,#1
	str r9,[fp,#-124]
	bl .mainL38
.mainL36:
	ldr r9,[fp,#-104]
	cmp r9,#0
	beq .mainL35
.mainL34:
	mov r9,#1
	str r9,[fp,#-108]
	bl .mainL32
.mainL29:
	mov r9,#1
	str r9,[fp,#-104]
	bl .mainL27
.mainL19:
	ldr r9,[fp,#-52]
	cmp r9,#0
	beq .mainL18
.mainL17:
	mov r9,#1
	str r9,[fp,#-80]
	bl .mainL15
.mainL9:
	mov r9,#1
	str r9,[fp,#-76]
	bl .mainL7
.mainL77:
	mov r4,r3
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
