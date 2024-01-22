.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
lengthOfLastWord:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.lengthOfLastWordL0:
.lengthOfLastWordL1:
	cmp r1,#0
	beq .lengthOfLastWordL2
.lengthOfLastWordL3:
	sub r8,r1,#1
	mvn r7,#0
	cmp r8,r7
	bgt .lengthOfLastWordL8
.lengthOfLastWordL23:
	mov r7,r8
.lengthOfLastWordL7:
	mvn r6,#0
	cmp r7,r6
	beq .lengthOfLastWordL12
.lengthOfLastWordL13:
	mvn r6,#0
	cmp r7,r6
	bgt .lengthOfLastWordL21
.lengthOfLastWordL28:
	mov r6,r7
.lengthOfLastWordL17:
	sub r5,r7,r6
	mov r0,r5
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.lengthOfLastWordL21:
	mov r5,r7
.lengthOfLastWordL15:
	mov r4,r5
	add r3,r0,r4,lsl #2
	ldr r4,[r3]
	cmp r4,#0
	beq .lengthOfLastWordL18
.lengthOfLastWordL19:
	sub r4,r5,#1
.lengthOfLastWordL16:
	mvn r3,#0
	cmp r4,r3
	bgt .lengthOfLastWordL27
.lengthOfLastWordL29:
	mov r6,r4
	bl .lengthOfLastWordL17
.lengthOfLastWordL27:
	mov r5,r4
	bl .lengthOfLastWordL15
.lengthOfLastWordL18:
	sub r6,r1,r5
	sub r5,r6,#1
	sub r6,r1,#1
	sub r4,r6,r7
	sub r6,r5,r4
	mov r0,r6
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.lengthOfLastWordL12:
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.lengthOfLastWordL8:
	mov r6,r8
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	cmp r6,#0
	beq .lengthOfLastWordL20
.lengthOfLastWordL25:
	mov r7,r8
	bl .lengthOfLastWordL7
.lengthOfLastWordL20:
	mov r6,r8
.lengthOfLastWordL5:
	sub r8,r6,#1
.lengthOfLastWordL6:
	mvn r5,#0
	cmp r8,r5
	bgt .lengthOfLastWordL10
.lengthOfLastWordL24:
	mov r7,r8
	bl .lengthOfLastWordL7
.lengthOfLastWordL10:
	mov r5,r8
	add r4,r0,r5,lsl #2
	ldr r5,[r4]
	cmp r5,#0
	beq .lengthOfLastWordL22
.lengthOfLastWordL26:
	mov r7,r8
	bl .lengthOfLastWordL7
.lengthOfLastWordL22:
	mov r6,r8
	bl .lengthOfLastWordL5
.lengthOfLastWordL2:
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#48
.mainL0:
.mainL1:
	mvn r8,#47
	add r7,fp,r8
	mvn r8,#3
	str r8,[r7]
	mov r8,#1
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#2
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#9
	str r8,[r7]
	mov r8,#3
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mvn r8,#1
	str r8,[r7]
	mov r8,#4
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#0
	str r8,[r7]
	mov r8,#5
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#6
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mvn r8,#5
	str r8,[r7]
	mov r8,#7
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mov r8,#8
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#7
	str r8,[r7]
	mov r8,#9
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#8
	str r8,[r7]
	mvn r8,#47
	add r7,fp,r8
	@%r39 = call i32 @lengthOfLastWord(ptr %r37,i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#10
	bl lengthOfLastWord
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#48
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
