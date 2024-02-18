.arch armv7-a
.fpu vfpv3-d16
.arm
.data
s:
	.word  0
.text
.global main
.LPIC0:
	.word  s
get_ans_se:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.get_ans_seL0:
	str r0,[fp,#-16]
	str r1,[fp,#-20]
	str r2,[fp,#-24]
.get_ans_seL1:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	cmp r8,r7
	beq .get_ans_seL2
.get_ans_seL3:
	ldr r8,[fp,#-16]
	mov r7,#2
	mul r6,r8,r7
	str r6,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	add r6,r8,r7
	str r6,[fp,#-16]
	ldr r8,.LPIC0
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	add r6,r7,r8
	ldr r8,.LPIC0
	str r6,[r8]
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#24
	pop {r6,r7,r8}
	pop {fp,pc}
.get_ans_seL2:
	mov r8,#1
	str r8,[fp,#-12]
	bl .get_ans_seL3
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#44
.mainL0:
.mainL1:
	mov r8,#-2147483648
	rsb r7,r8,#0
	str r7,[fp,#-44]
	mov r8,#-2147483648
	str r8,[fp,#-40]
	mov r8,#-2147483648
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-36]
	mvn r8,#-2147483648
	mov r7,r8
	str r7,[fp,#-32]
	mvn r8,#-2147483648
	mov r7,r8
	mov r8,#1
	sub r6,r7,r8
	str r6,[fp,#-28]
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	ldr r7,[fp,#-44]
	ldr r6,[fp,#-40]
	@%r26 = call i32 @get_ans(i32 %r23,i32 %r24,i32 %r25)
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl get_ans
	mov r5,r0
	str r5,[fp,#-24]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-44]
	mov r6,#1
	add r5,r7,r6
	ldr r7,[fp,#-36]
	@%r32 = call i32 @get_ans(i32 %r27,i32 %r30,i32 %r31)
	mov r0,r8
	mov r1,r5
	mov r2,r7
	bl get_ans
	mov r6,r0
	str r6,[fp,#-24]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-44]
	ldr r6,[fp,#-32]
	rsb r5,r6,#0
	mov r6,#1
	sub r4,r5,r6
	@%r39 = call i32 @get_ans(i32 %r33,i32 %r34,i32 %r38)
	mov r0,r8
	mov r1,r7
	mov r2,r4
	bl get_ans
	mov r6,r0
	str r6,[fp,#-24]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-44]
	ldr r6,[fp,#-28]
	mov r5,#1
	add r4,r6,r5
	@%r45 = call i32 @get_ans(i32 %r40,i32 %r41,i32 %r44)
	mov r0,r8
	mov r1,r7
	mov r2,r4
	bl get_ans
	mov r6,r0
	str r6,[fp,#-24]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-40]
	mov r6,#2
	@%r49 = call i32 @__aeabi_idiv(i32 %r47,i32 %r48)
	mov r0,r7
	mov r1,r6
	bl __aeabi_idiv
	mov r5,r0
	ldr r7,[fp,#-36]
	mov r6,#2
	@%r52 = call i32 @__aeabi_idiv(i32 %r50,i32 %r51)
	mov r0,r7
	mov r1,r6
	bl __aeabi_idiv
	mov r4,r0
	@%r53 = call i32 @get_ans(i32 %r46,i32 %r49,i32 %r52)
	mov r0,r8
	mov r1,r5
	mov r2,r4
	bl get_ans
	mov r7,r0
	str r7,[fp,#-24]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-40]
	ldr r6,[fp,#-32]
	rsb r5,r6,#0
	mov r6,#1
	sub r4,r5,r6
	@%r60 = call i32 @get_ans(i32 %r54,i32 %r55,i32 %r59)
	mov r0,r8
	mov r1,r7
	mov r2,r4
	bl get_ans
	mov r6,r0
	str r6,[fp,#-24]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-40]
	ldr r6,[fp,#-28]
	mov r5,#1
	add r4,r6,r5
	@%r66 = call i32 @get_ans(i32 %r61,i32 %r62,i32 %r65)
	mov r0,r8
	mov r1,r7
	mov r2,r4
	bl get_ans
	mov r6,r0
	str r6,[fp,#-24]
	mov r8,#0
	ldr r7,[fp,#-36]
	ldr r6,[fp,#-32]
	@%r70 = call i32 @get_ans(i32 %r67,i32 %r68,i32 %r69)
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl get_ans
	mov r5,r0
	str r5,[fp,#-20]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-36]
	ldr r6,[fp,#-28]
	@%r74 = call i32 @get_ans(i32 %r71,i32 %r72,i32 %r73)
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl get_ans
	mov r5,r0
	str r5,[fp,#-20]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-32]
	ldr r6,[fp,#-28]
	@%r78 = call i32 @get_ans(i32 %r75,i32 %r76,i32 %r77)
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl get_ans
	mov r5,r0
	str r5,[fp,#-20]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-44]
	mov r6,#2
	@%r82 = call i32 @__aeabi_idiv(i32 %r80,i32 %r81)
	mov r0,r7
	mov r1,r6
	bl __aeabi_idiv
	mov r5,r0
	ldr r7,[fp,#-40]
	mov r6,#2
	@%r85 = call i32 @__aeabi_idiv(i32 %r83,i32 %r84)
	mov r0,r7
	mov r1,r6
	bl __aeabi_idiv
	mov r4,r0
	@%r86 = call i32 @get_ans(i32 %r79,i32 %r82,i32 %r85)
	mov r0,r8
	mov r1,r5
	mov r2,r4
	bl get_ans
	mov r7,r0
	str r7,[fp,#-20]
	mov r8,#0
	ldr r7,[fp,#-44]
	ldr r6,[fp,#-40]
	@%r90 = call i32 @get_ans_se(i32 %r87,i32 %r88,i32 %r89)
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl get_ans_se
	mov r5,r0
	str r5,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-44]
	mov r6,#1
	add r5,r7,r6
	ldr r7,[fp,#-36]
	@%r96 = call i32 @get_ans_se(i32 %r91,i32 %r94,i32 %r95)
	mov r0,r8
	mov r1,r5
	mov r2,r7
	bl get_ans_se
	mov r6,r0
	str r6,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-44]
	ldr r6,[fp,#-32]
	rsb r5,r6,#0
	mov r6,#1
	sub r4,r5,r6
	@%r103 = call i32 @get_ans_se(i32 %r97,i32 %r98,i32 %r102)
	mov r0,r8
	mov r1,r7
	mov r2,r4
	bl get_ans_se
	mov r6,r0
	str r6,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-44]
	ldr r6,[fp,#-28]
	mov r5,#1
	add r4,r6,r5
	@%r109 = call i32 @get_ans_se(i32 %r104,i32 %r105,i32 %r108)
	mov r0,r8
	mov r1,r7
	mov r2,r4
	bl get_ans_se
	mov r6,r0
	str r6,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-40]
	mov r6,#2
	@%r113 = call i32 @__aeabi_idiv(i32 %r111,i32 %r112)
	mov r0,r7
	mov r1,r6
	bl __aeabi_idiv
	mov r5,r0
	ldr r7,[fp,#-36]
	mov r6,#2
	@%r116 = call i32 @__aeabi_idiv(i32 %r114,i32 %r115)
	mov r0,r7
	mov r1,r6
	bl __aeabi_idiv
	mov r4,r0
	@%r117 = call i32 @get_ans_se(i32 %r110,i32 %r113,i32 %r116)
	mov r0,r8
	mov r1,r5
	mov r2,r4
	bl get_ans_se
	mov r7,r0
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-40]
	ldr r6,[fp,#-32]
	rsb r5,r6,#0
	mov r6,#1
	sub r4,r5,r6
	@%r124 = call i32 @get_ans_se(i32 %r118,i32 %r119,i32 %r123)
	mov r0,r8
	mov r1,r7
	mov r2,r4
	bl get_ans_se
	mov r6,r0
	str r6,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-40]
	ldr r6,[fp,#-28]
	mov r5,#1
	add r4,r6,r5
	@%r130 = call i32 @get_ans_se(i32 %r125,i32 %r126,i32 %r129)
	mov r0,r8
	mov r1,r7
	mov r2,r4
	bl get_ans_se
	mov r6,r0
	str r6,[fp,#-16]
	mov r8,#0
	ldr r7,[fp,#-36]
	ldr r6,[fp,#-32]
	@%r134 = call i32 @get_ans_se(i32 %r131,i32 %r132,i32 %r133)
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl get_ans_se
	mov r5,r0
	str r5,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-36]
	ldr r6,[fp,#-28]
	@%r138 = call i32 @get_ans_se(i32 %r135,i32 %r136,i32 %r137)
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl get_ans_se
	mov r5,r0
	str r5,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-32]
	ldr r6,[fp,#-28]
	@%r142 = call i32 @get_ans_se(i32 %r139,i32 %r140,i32 %r141)
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl get_ans_se
	mov r5,r0
	str r5,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-44]
	mov r6,#2
	@%r146 = call i32 @__aeabi_idiv(i32 %r144,i32 %r145)
	mov r0,r7
	mov r1,r6
	bl __aeabi_idiv
	mov r5,r0
	ldr r7,[fp,#-40]
	mov r6,#2
	@%r149 = call i32 @__aeabi_idiv(i32 %r147,i32 %r148)
	mov r0,r7
	mov r1,r6
	bl __aeabi_idiv
	mov r4,r0
	@%r150 = call i32 @get_ans_se(i32 %r143,i32 %r146,i32 %r149)
	mov r0,r8
	mov r1,r5
	mov r2,r4
	bl get_ans_se
	mov r7,r0
	str r7,[fp,#-12]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	add r6,r8,r7
	ldr r8,[fp,#-16]
	add r7,r6,r8
	ldr r8,[fp,#-12]
	add r6,r7,r8
	mov r0,r6
	add sp,sp,#44
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
get_ans:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.get_ansL0:
	str r0,[fp,#-16]
	str r1,[fp,#-20]
	str r2,[fp,#-24]
.get_ansL1:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	cmp r8,r7
	beq .get_ansL2
.get_ansL3:
	ldr r8,[fp,#-16]
	mov r7,#2
	mul r6,r8,r7
	str r6,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	add r6,r8,r7
	str r6,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#24
	pop {r6,r7,r8}
	pop {fp,pc}
.get_ansL2:
	mov r8,#1
	str r8,[fp,#-12]
	bl .get_ansL3
	.section	.note.GNU-stack,"",%progbits
