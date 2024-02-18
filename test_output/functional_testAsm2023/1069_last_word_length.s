.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
lengthOfLastWord:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.lengthOfLastWordL0:
	str r1,[fp,#-20]
.lengthOfLastWordL1:
	ldr r8,[fp,#-20]
	mov r7,#0
	cmp r8,r7
	beq .lengthOfLastWordL2
.lengthOfLastWordL3:
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-20]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bgt .lengthOfLastWordL8
.lengthOfLastWordL7:
	ldr r8,[fp,#-16]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	beq .lengthOfLastWordL12
.lengthOfLastWordL13:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bgt .lengthOfLastWordL15
.lengthOfLastWordL17:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	sub r6,r8,r7
	mov r0,r6
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.lengthOfLastWordL15:
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r8,#0
	cmp r7,r8
	beq .lengthOfLastWordL18
.lengthOfLastWordL19:
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
.lengthOfLastWordL16:
	ldr r8,[fp,#-12]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bgt .lengthOfLastWordL15
	ble .lengthOfLastWordL17
.lengthOfLastWordL18:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-12]
	sub r6,r8,r7
	mov r8,#1
	sub r7,r6,r8
	ldr r8,[fp,#-20]
	mov r6,#1
	sub r5,r8,r6
	ldr r8,[fp,#-16]
	sub r6,r5,r8
	sub r8,r7,r6
	mov r0,r8
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.lengthOfLastWordL12:
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.lengthOfLastWordL8:
	ldr r8,[fp,#-16]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r8,#0
	cmp r7,r8
	bne .lengthOfLastWordL7
.lengthOfLastWordL5:
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-16]
.lengthOfLastWordL6:
	ldr r8,[fp,#-16]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	ble .lengthOfLastWordL7
.lengthOfLastWordL10:
	ldr r8,[fp,#-16]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r8,#0
	cmp r7,r8
	beq .lengthOfLastWordL5
	bne .lengthOfLastWordL7
.lengthOfLastWordL2:
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#52
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-52]
	mov r8,#4
	rsb r7,r8,#0
	mov r8,#0
	mov r6,r8
	mvn r8,#47
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	str r7,[r8]
	mov r8,#3
	mov r7,#1
	mov r6,r7
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#9
	mov r7,#2
	mov r6,r7
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#2
	rsb r7,r8,#0
	mov r8,#3
	mov r6,r8
	mvn r8,#47
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	str r7,[r8]
	mov r8,#0
	mov r7,#4
	mov r6,r7
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#1
	mov r7,#5
	mov r6,r7
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#6
	rsb r7,r8,#0
	mov r8,#6
	mov r6,r8
	mvn r8,#47
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	str r7,[r8]
	mov r8,#5
	mov r7,#7
	mov r6,r7
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#7
	mov r7,#8
	mov r6,r7
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#8
	mov r7,#9
	mov r6,r7
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#10
	str r8,[fp,#-52]
	mvn r8,#47
	add r7,fp,r8
	ldr r8,[fp,#-52]
	@%r39 = call i32 @lengthOfLastWord(ptr %r37,i32 %r38)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r8
	bl lengthOfLastWord
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	str r6,[fp,#-52]
	ldr r8,[fp,#-52]
	mov r0,r8
	add sp,sp,#52
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
