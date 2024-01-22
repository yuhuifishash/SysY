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
.mainL2:
	ldr r8,[fp,#-16]
	mov r7,#10
	cmp r8,r7
	blt .mainL3
.mainL4:
	ldr r8,[fp,#-72]
	@%r24 = call i32 @func7(i32 %r23)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl func7
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-68]
	@%r26 = call i32 @func5(i32 %r25)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl func5
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	@%r27 = call i32 @func6(i32 %r24,i32 %r26)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r6
	bl func6
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,[fp,#-64]
	@%r29 = call i32 @func2(i32 %r27,i32 %r28)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl func2
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-60]
	@%r31 = call i32 @func3(i32 %r29,i32 %r30)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,r8
	bl func3
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	@%r32 = call i32 @func5(i32 %r31)
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
	@%r39 = call i32 @func5(i32 %r38)
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
	@%r46 = call i32 @func7(i32 %r45)
	push {r3}
	mov r0,r3
	bl func7
	mov r5,r0
	pop {r3}
	@%r47 = call i32 @func6(i32 %r42,i32 %r46)
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
	@%r54 = call i32 @func7(i32 %r53)
	sub sp,sp,#4 @stack align 8bytes
	push {r2,r3}
	mov r0,r2
	bl func7
	mov r5,r0
	pop {r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@%r55 = call i32 @func2(i32 %r50,i32 %r54)
	push {r3}
	mov r0,r4
	mov r1,r5
	bl func2
	mov r2,r0
	pop {r3}
	@%r56 = call i32 @func4(i32 %r39,i32 %r47,i32 %r55)
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
	@%r60 = call i32 @func3(i32 %r56,i32 %r59)
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
	@%r64 = call i32 @func2(i32 %r60,i32 %r63)
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
	@%r71 = call i32 @func7(i32 %r70)
	push {r3}
	mov r0,r3
	bl func7
	mov r7,r0
	pop {r3}
	@%r72 = call i32 @func3(i32 %r67,i32 %r71)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r4
	mov r1,r7
	bl func3
	mov r3,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,[fp,#-72]
	@%r74 = call i32 @func1(i32 %r64,i32 %r72,i32 %r73)
	push {r3}
	mov r0,r5
	mov r1,r3
	mov r2,r7
	bl func1
	mov r4,r0
	pop {r3}
	@%r75 = call i32 @func4(i32 %r32,i32 %r35,i32 %r74)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r6
	mov r2,r4
	bl func4
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-68]
	ldr r6,[fp,#-64]
	@%r78 = call i32 @func7(i32 %r77)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl func7
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r6,[fp,#-60]
	@%r80 = call i32 @func3(i32 %r78,i32 %r79)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	mov r1,r6
	bl func3
	mov r4,r0
	add sp,sp,#4 @stack align 8bytes
	@%r81 = call i32 @func2(i32 %r76,i32 %r80)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r4
	bl func2
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	@%r82 = call i32 @func3(i32 %r75,i32 %r81)
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
	@%r89 = call i32 @func1(i32 %r82,i32 %r85,i32 %r88)
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
	@%r93 = call i32 @func2(i32 %r89,i32 %r92)
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
	@%r103 = call i32 @func5(i32 %r102)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r4
	bl func5
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	@%r104 = call i32 @func3(i32 %r99,i32 %r103)
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
	@%r108 = call i32 @func5(i32 %r107)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	bl func5
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	@%r109 = call i32 @func2(i32 %r104,i32 %r108)
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
	@%r116 = call i32 @func7(i32 %r115)
	push {r3}
	mov r0,r3
	bl func7
	mov r7,r0
	pop {r3}
	@%r117 = call i32 @func1(i32 %r109,i32 %r112,i32 %r116)
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
	@%r121 = call i32 @func5(i32 %r120)
	push {r3}
	mov r0,r5
	bl func5
	mov r7,r0
	pop {r3}
	@%r122 = call i32 @func2(i32 %r117,i32 %r121)
	push {r3}
	mov r0,r3
	mov r1,r7
	bl func2
	mov r5,r0
	pop {r3}
	ldr r7,[fp,#-72]
	@%r124 = call i32 @func3(i32 %r122,i32 %r123)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	mov r1,r7
	bl func3
	mov r4,r0
	add sp,sp,#4 @stack align 8bytes
	@%r125 = call i32 @func1(i32 %r93,i32 %r96,i32 %r124)
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
	bl .mainL2
	.section	.note.GNU-stack,"",%progbits
