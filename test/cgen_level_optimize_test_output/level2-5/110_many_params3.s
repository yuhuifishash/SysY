.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r104 = call i32 @testParam8(i32 0,i32 1,i32 2,i32 3,i32 4,i32 5,i32 6,i32 7)
	sub sp,sp,#16
	mov r9,#7
	str r9,[sp,#12]  @7
	mov r9,#6
	str r9,[sp,#8]  @6
	mov r9,#5
	str r9,[sp,#4]  @5
	mov r9,#4
	str r9,[sp,#0]  @4
	mov r0,#0
	mov r1,#1
	mov r2,#2
	mov r3,#3
	bl testParam8
	add sp,sp,#16
	mov r8,r0
	@%r120 = call i32 @testParam16(i32 %r104,i32 1,i32 2,i32 3,i32 4,i32 5,i32 6,i32 7,i32 8,i32 9,i32 0,i32 1,i32 2,i32 3,i32 4,i32 5)
	sub sp,sp,#48
	mov r9,#5
	str r9,[sp,#44]  @5
	mov r9,#4
	str r9,[sp,#40]  @4
	mov r9,#3
	str r9,[sp,#36]  @3
	mov r9,#2
	str r9,[sp,#32]  @2
	mov r9,#1
	str r9,[sp,#28]  @1
	mov r9,#0
	str r9,[sp,#24]  @0
	mov r9,#9
	str r9,[sp,#20]  @9
	mov r9,#8
	str r9,[sp,#16]  @8
	mov r9,#7
	str r9,[sp,#12]  @7
	mov r9,#6
	str r9,[sp,#8]  @6
	mov r9,#5
	str r9,[sp,#4]  @5
	mov r9,#4
	str r9,[sp,#0]  @4
	mov r0,r8
	mov r1,#1
	mov r2,#2
	mov r3,#3
	bl testParam16
	add sp,sp,#48
	mov r7,r0
	@%r152 = call i32 @testParam32(i32 %r120,i32 1,i32 2,i32 3,i32 4,i32 5,i32 6,i32 7,i32 8,i32 9,i32 0,i32 1,i32 2,i32 3,i32 4,i32 5,i32 6,i32 7,i32 8,i32 9,i32 0,i32 1,i32 2,i32 3,i32 4,i32 5,i32 6,i32 7,i32 8,i32 9,i32 0,i32 1)
	sub sp,sp,#112
	mov r9,#1
	str r9,[sp,#108]  @1
	mov r9,#0
	str r9,[sp,#104]  @0
	mov r9,#9
	str r9,[sp,#100]  @9
	mov r9,#8
	str r9,[sp,#96]  @8
	mov r9,#7
	str r9,[sp,#92]  @7
	mov r9,#6
	str r9,[sp,#88]  @6
	mov r9,#5
	str r9,[sp,#84]  @5
	mov r9,#4
	str r9,[sp,#80]  @4
	mov r9,#3
	str r9,[sp,#76]  @3
	mov r9,#2
	str r9,[sp,#72]  @2
	mov r9,#1
	str r9,[sp,#68]  @1
	mov r9,#0
	str r9,[sp,#64]  @0
	mov r9,#9
	str r9,[sp,#60]  @9
	mov r9,#8
	str r9,[sp,#56]  @8
	mov r9,#7
	str r9,[sp,#52]  @7
	mov r9,#6
	str r9,[sp,#48]  @6
	mov r9,#5
	str r9,[sp,#44]  @5
	mov r9,#4
	str r9,[sp,#40]  @4
	mov r9,#3
	str r9,[sp,#36]  @3
	mov r9,#2
	str r9,[sp,#32]  @2
	mov r9,#1
	str r9,[sp,#28]  @1
	mov r9,#0
	str r9,[sp,#24]  @0
	mov r9,#9
	str r9,[sp,#20]  @9
	mov r9,#8
	str r9,[sp,#16]  @8
	mov r9,#7
	str r9,[sp,#12]  @7
	mov r9,#6
	str r9,[sp,#8]  @6
	mov r9,#5
	str r9,[sp,#4]  @5
	mov r9,#4
	str r9,[sp,#0]  @4
	mov r0,r7
	mov r1,#1
	mov r2,#2
	mov r3,#3
	bl testParam32
	add sp,sp,#112
	mov r8,r0
	@call void @putint(i32 %r152)
	mov r0,r8
	bl putint
	mov r0,#0
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
testParam32:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#108
.testParam32L0:
	mov r9,r2
	str r9,[fp,#-24]
	mov r9,r1
	str r9,[fp,#-20]
	mov r9,r0
	str r9,[fp,#-16]
	mov r9,r3
	str r9,[fp,#-12]
	ldr r9,[fp,#140]
	str r9,[fp,#-100]
	ldr r9,[fp,#136]
	str r9,[fp,#-96]
	ldr r9,[fp,#132]
	str r9,[fp,#-92]
	ldr r9,[fp,#128]
	str r9,[fp,#-88]
	ldr r9,[fp,#124]
	str r9,[fp,#-84]
	ldr r9,[fp,#120]
	str r9,[fp,#-80]
	ldr r9,[fp,#116]
	str r9,[fp,#-76]
	ldr r9,[fp,#112]
	str r9,[fp,#-72]
	ldr r9,[fp,#108]
	str r9,[fp,#-68]
	ldr r9,[fp,#104]
	str r9,[fp,#-64]
	ldr r9,[fp,#100]
	str r9,[fp,#-60]
	ldr r9,[fp,#96]
	str r9,[fp,#-56]
	ldr r9,[fp,#92]
	str r9,[fp,#-52]
	ldr r9,[fp,#88]
	str r9,[fp,#-48]
	ldr r9,[fp,#84]
	str r9,[fp,#-44]
	ldr r9,[fp,#80]
	str r9,[fp,#-40]
	ldr r9,[fp,#76]
	str r9,[fp,#-36]
	ldr r9,[fp,#72]
	str r9,[fp,#-32]
	ldr r9,[fp,#68]
	str r9,[fp,#-28]
	ldr r9,[fp,#64]
	str r9,[fp,#-104]
	ldr r9,[fp,#60]
	str r9,[fp,#-108]
	ldr r0,[fp,#56]
	ldr r3,[fp,#52]
	ldr r4,[fp,#48]
	ldr r5,[fp,#44]
	ldr r6,[fp,#40]
	ldr r7,[fp,#36]
	ldr r8,[fp,#32]
.testParam32L1:
	ldr r9,[fp,#-20]
	ldr r10,[fp,#-24]
	mul r2,r9,r10
	ldr r9,[fp,#-16]
	add r1,r9,r2
	ldr r9,[fp,#-12]
	add r2,r1,r9
	add r1,r2,r8
	add r8,r1,r7
	add r7,r8,r6
	add r8,r7,r5
	add r7,r8,r4
	add r8,r7,r3
	add r7,r8,r0
	ldr r9,[fp,#-108]
	add r8,r7,r9
	ldr r9,[fp,#-104]
	sub r7,r8,r9
	ldr r9,[fp,#-28]
	sub r8,r7,r9
	ldr r9,[fp,#-32]
	sub r7,r8,r9
	ldr r9,[fp,#-36]
	sub r8,r7,r9
	ldr r9,[fp,#-40]
	sub r7,r8,r9
	ldr r9,[fp,#-44]
	sub r8,r7,r9
	ldr r9,[fp,#-48]
	sub r7,r8,r9
	ldr r9,[fp,#-52]
	sub r8,r7,r9
	ldr r9,[fp,#-56]
	sub r7,r8,r9
	ldr r9,[fp,#-60]
	sub r8,r7,r9
	ldr r9,[fp,#-64]
	add r7,r8,r9
	ldr r9,[fp,#-68]
	add r8,r7,r9
	ldr r9,[fp,#-72]
	add r7,r8,r9
	ldr r9,[fp,#-76]
	add r8,r7,r9
	ldr r9,[fp,#-80]
	add r7,r8,r9
	ldr r9,[fp,#-84]
	add r8,r7,r9
	ldr r9,[fp,#-88]
	add r7,r8,r9
	ldr r9,[fp,#-92]
	add r8,r7,r9
	ldr r9,[fp,#-96]
	add r7,r8,r9
	ldr r9,[fp,#-100]
	add r8,r7,r9
	mov r0,r8
	add sp,sp,#108
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
testParam16:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#44
.testParam16L0:
	mov r9,r1
	str r9,[fp,#-24]
	mov r9,r0
	str r9,[fp,#-20]
	mov r9,r2
	str r9,[fp,#-16]
	mov r9,r3
	str r9,[fp,#-12]
	ldr r9,[fp,#76]
	str r9,[fp,#-36]
	ldr r9,[fp,#72]
	str r9,[fp,#-32]
	ldr r9,[fp,#68]
	str r9,[fp,#-28]
	ldr r9,[fp,#64]
	str r9,[fp,#-40]
	ldr r9,[fp,#60]
	str r9,[fp,#-44]
	ldr r2,[fp,#56]
	ldr r3,[fp,#52]
	ldr r4,[fp,#48]
	ldr r5,[fp,#44]
	ldr r6,[fp,#40]
	ldr r7,[fp,#36]
	ldr r8,[fp,#32]
.testParam16L1:
	ldr r9,[fp,#-20]
	ldr r10,[fp,#-24]
	add r1,r9,r10
	ldr r9,[fp,#-16]
	add r0,r1,r9
	ldr r9,[fp,#-12]
	add r1,r0,r9
	sub r0,r1,r8
	add r8,r0,r7
	add r7,r8,r6
	add r8,r7,r5
	sub r7,r8,r4
	add r8,r7,r3
	sub r7,r8,r2
	ldr r9,[fp,#-44]
	add r8,r7,r9
	ldr r9,[fp,#-40]
	add r7,r8,r9
	ldr r9,[fp,#-28]
	add r8,r7,r9
	ldr r9,[fp,#-32]
	add r7,r8,r9
	ldr r9,[fp,#-36]
	add r8,r7,r9
	mov r0,r8
	add sp,sp,#44
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
testParam8:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.testParam8L0:
	ldr r5,[fp,#36]
	ldr r6,[fp,#32]
	ldr r7,[fp,#28]
	ldr r8,[fp,#24]
.testParam8L1:
	sub r4,r0,r1
	add r1,r4,r2
	sub r4,r1,r3
	sub r3,r4,r8
	sub r8,r3,r7
	add r7,r8,r6
	add r8,r7,r5
	mov r0,r8
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
