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
	sub sp,sp,#20
.func1L0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
	str r2,[fp,#-20]
.func1L1:
	ldr r8,[fp,#-20]
	mov r7,#0
	cmp r8,r7
	beq .func1L2
.func1L3:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	ldr r6,[fp,#-20]
	sub r5,r7,r6
	mov r7,#0
	@%r19 = call i32 @func1(i32 %r14,i32 %r17,i32 %r18)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r5
	mov r2,r7
	bl func1
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r6
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.func1L2:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	mul r6,r8,r7
	mov r0,r6
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
func2:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.func2L0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
.func2L1:
	ldr r8,[fp,#-16]
	cmp r8,#0
	bne .func2L2
.func2L3:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.func2L2:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	@%r8 = call i32 @__modsi3(i32 %r6,i32 %r7)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	@%r10 = call i32 @func2(i32 %r8,i32 %r9)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,r8
	bl func2
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r7
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
func3:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.func3L0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
.func3L1:
	ldr r8,[fp,#-16]
	mov r7,#0
	cmp r8,r7
	beq .func3L2
.func3L3:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	add r6,r8,r7
	mov r8,#0
	@%r16 = call i32 @func3(i32 %r14,i32 %r15)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,r8
	bl func3
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r7
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.func3L2:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	mov r0,r6
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
func4:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.func4L0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
	str r2,[fp,#-20]
.func4L1:
	ldr r8,[fp,#-12]
	cmp r8,#0
	bne .func4L2
.func4L3:
	ldr r8,[fp,#-20]
	mov r0,r8
	add sp,sp,#20
	pop {r7,r8}
	pop {fp,pc}
.func4L2:
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#20
	pop {r7,r8}
	pop {fp,pc}
func5:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.func5L0:
	str r0,[fp,#-12]
.func5L1:
	ldr r8,[fp,#-12]
	rsb r7,r8,#0
	mov r0,r7
	add sp,sp,#12
	pop {r7,r8}
	pop {fp,pc}
func6:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.func6L0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
.func6L1:
	ldr r8,[fp,#-12]
	cmp r8,#0
	bne .func6L5
.func6L3:
	mov r8,#0
	mov r0,r8
	add sp,sp,#16
	pop {r7,r8}
	pop {fp,pc}
.func6L5:
	ldr r8,[fp,#-16]
	cmp r8,#0
	beq .func6L3
.func6L2:
	mov r8,#1
	mov r0,r8
	add sp,sp,#16
	pop {r7,r8}
	pop {fp,pc}
func7:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.func7L0:
	str r0,[fp,#-12]
.func7L1:
	ldr r8,[fp,#-12]
	cmp r8,#0
	beq .func7L2
.func7L3:
	mov r8,#0
	mov r0,r8
	add sp,sp,#12
	pop {r7,r8}
	pop {fp,pc}
.func7L2:
	mov r8,#1
	mov r0,r8
	add sp,sp,#12
	pop {r7,r8}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#72
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-72]
	@%r3 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-68]
	@%r5 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-64]
	@%r7 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-60]
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#10
	cmp r8,r7
	blt .mainL3
.mainL5:
	ldr r8,[fp,#-72]
	@%r29 = call i32 @func7(i32 %r28)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl func7
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-68]
	@%r31 = call i32 @func5(i32 %r30)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl func5
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	@%r32 = call i32 @func6(i32 %r29,i32 %r31)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r6
	bl func6
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,[fp,#-64]
	@%r34 = call i32 @func2(i32 %r32,i32 %r33)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl func2
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-60]
	@%r36 = call i32 @func3(i32 %r34,i32 %r35)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,r8
	bl func3
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	@%r37 = call i32 @func5(i32 %r36)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl func5
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#0
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	ldr r6,[r7]
	mov r7,#1
	mov r5,r7
	mvn r7,#55
	add r4,fp,r7
	add r7,r4,r5,lsl #2
	ldr r5,[r7]
	@%r44 = call i32 @func5(i32 %r43)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	bl func5
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	mov r5,#2
	mov r4,r5
	mvn r5,#55
	add r3,fp,r5
	add r5,r3,r4,lsl #2
	ldr r4,[r5]
	mov r5,#3
	mov r3,r5
	mvn r5,#55
	add r2,fp,r5
	add r5,r2,r3,lsl #2
	ldr r3,[r5]
	@%r51 = call i32 @func7(i32 %r50)
	push {r3}
	mov r0,r3
	bl func7
	mov r5,r0
	pop {r3}
	@%r52 = call i32 @func6(i32 %r47,i32 %r51)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r4
	mov r1,r5
	bl func6
	mov r3,r0
	add sp,sp,#4 @stack align 8bytes
	mov r5,#4
	mov r4,r5
	mvn r5,#55
	add r2,fp,r5
	add r5,r2,r4,lsl #2
	ldr r4,[r5]
	mov r5,#5
	mov r2,r5
	mvn r5,#55
	add r1,fp,r5
	add r5,r1,r2,lsl #2
	ldr r2,[r5]
	@%r59 = call i32 @func7(i32 %r58)
	sub sp,sp,#4 @stack align 8bytes
	push {r2,r3}
	mov r0,r2
	bl func7
	mov r5,r0
	pop {r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@%r60 = call i32 @func2(i32 %r55,i32 %r59)
	push {r3}
	mov r0,r4
	mov r1,r5
	bl func2
	mov r2,r0
	pop {r3}
	@%r61 = call i32 @func4(i32 %r44,i32 %r52,i32 %r60)
	sub sp,sp,#4 @stack align 8bytes
	push {r2,r3}
	mov r0,r7
	mov r1,r3
	bl func4
	mov r5,r0
	pop {r2,r3}
	add sp,sp,#4 @stack align 8bytes
	mov r7,#6
	mov r4,r7
	mvn r7,#55
	add r3,fp,r7
	add r7,r3,r4,lsl #2
	ldr r4,[r7]
	@%r65 = call i32 @func3(i32 %r61,i32 %r64)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	mov r1,r4
	bl func3
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	mov r5,#7
	mov r4,r5
	mvn r5,#55
	add r3,fp,r5
	add r5,r3,r4,lsl #2
	ldr r4,[r5]
	@%r69 = call i32 @func2(i32 %r65,i32 %r68)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r4
	bl func2
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#8
	mov r4,r7
	mvn r7,#55
	add r3,fp,r7
	add r7,r3,r4,lsl #2
	ldr r4,[r7]
	mov r7,#9
	mov r3,r7
	mvn r7,#55
	add r2,fp,r7
	add r7,r2,r3,lsl #2
	ldr r3,[r7]
	@%r76 = call i32 @func7(i32 %r75)
	push {r3}
	mov r0,r3
	bl func7
	mov r7,r0
	pop {r3}
	@%r77 = call i32 @func3(i32 %r72,i32 %r76)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r4
	mov r1,r7
	bl func3
	mov r3,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,[fp,#-72]
	@%r79 = call i32 @func1(i32 %r69,i32 %r77,i32 %r78)
	push {r3}
	mov r0,r5
	mov r1,r3
	mov r2,r7
	bl func1
	mov r4,r0
	pop {r3}
	@%r80 = call i32 @func4(i32 %r37,i32 %r40,i32 %r79)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r6
	mov r2,r4
	bl func4
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-68]
	ldr r6,[fp,#-64]
	@%r83 = call i32 @func7(i32 %r82)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl func7
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r6,[fp,#-60]
	@%r85 = call i32 @func3(i32 %r83,i32 %r84)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	mov r1,r6
	bl func3
	mov r4,r0
	add sp,sp,#4 @stack align 8bytes
	@%r86 = call i32 @func2(i32 %r81,i32 %r85)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r4
	bl func2
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	@%r87 = call i32 @func3(i32 %r80,i32 %r86)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r6
	bl func3
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#0
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	ldr r6,[r7]
	mov r7,#1
	mov r5,r7
	mvn r7,#55
	add r4,fp,r7
	add r7,r4,r5,lsl #2
	ldr r5,[r7]
	@%r94 = call i32 @func1(i32 %r87,i32 %r90,i32 %r93)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r6
	mov r2,r5
	bl func1
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	mov r8,#2
	mov r6,r8
	mvn r8,#55
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	ldr r6,[r8]
	@%r98 = call i32 @func2(i32 %r94,i32 %r97)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r6
	bl func2
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#3
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	ldr r6,[r7]
	mov r7,#4
	mov r5,r7
	mvn r7,#55
	add r4,fp,r7
	add r7,r4,r5,lsl #2
	ldr r5,[r7]
	mov r7,#5
	mov r4,r7
	mvn r7,#55
	add r3,fp,r7
	add r7,r3,r4,lsl #2
	ldr r4,[r7]
	@%r108 = call i32 @func5(i32 %r107)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r4
	bl func5
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	@%r109 = call i32 @func3(i32 %r104,i32 %r108)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	mov r1,r7
	bl func3
	mov r4,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#6
	mov r5,r7
	mvn r7,#55
	add r3,fp,r7
	add r7,r3,r5,lsl #2
	ldr r5,[r7]
	@%r113 = call i32 @func5(i32 %r112)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	bl func5
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	@%r114 = call i32 @func2(i32 %r109,i32 %r113)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r4
	mov r1,r7
	bl func2
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#7
	mov r4,r7
	mvn r7,#55
	add r3,fp,r7
	add r7,r3,r4,lsl #2
	ldr r4,[r7]
	mov r7,#8
	mov r3,r7
	mvn r7,#55
	add r2,fp,r7
	add r7,r2,r3,lsl #2
	ldr r3,[r7]
	@%r121 = call i32 @func7(i32 %r120)
	push {r3}
	mov r0,r3
	bl func7
	mov r7,r0
	pop {r3}
	@%r122 = call i32 @func1(i32 %r114,i32 %r117,i32 %r121)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	mov r1,r4
	mov r2,r7
	bl func1
	mov r3,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#9
	mov r5,r7
	mvn r7,#55
	add r4,fp,r7
	add r7,r4,r5,lsl #2
	ldr r5,[r7]
	@%r126 = call i32 @func5(i32 %r125)
	push {r3}
	mov r0,r5
	bl func5
	mov r7,r0
	pop {r3}
	@%r127 = call i32 @func2(i32 %r122,i32 %r126)
	push {r3}
	mov r0,r3
	mov r1,r7
	bl func2
	mov r5,r0
	pop {r3}
	ldr r7,[fp,#-72]
	@%r129 = call i32 @func3(i32 %r127,i32 %r128)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	mov r1,r7
	bl func3
	mov r4,r0
	add sp,sp,#4 @stack align 8bytes
	@%r130 = call i32 @func1(i32 %r98,i32 %r101,i32 %r129)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r6
	mov r2,r4
	bl func1
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#72
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	@%r16 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,[fp,#-16]
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL4:
	ldr r8,[fp,#-16]
	mov r7,#10
	cmp r8,r7
	blt .mainL3
	bge .mainL5
	.section	.note.GNU-stack,"",%progbits
