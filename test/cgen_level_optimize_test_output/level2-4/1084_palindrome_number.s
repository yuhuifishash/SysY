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
	@%r6 = call i32 @palindrome(i32 1221)
	movw r0,#1221
	movt r0,#0  @ 1221
	bl palindrome
	mov r8,r0
	cmp r8,#1
	beq .mainL2
.mainL3:
	@call void @putint(i32 0)
	mov r0,#0
	bl putint
.mainL4:
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	mov r0,#0
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
.mainL2:
	@call void @putint(i32 1221)
	movw r0,#1221
	movt r0,#0  @ 1221
	bl putint
	bl .mainL4
palindrome:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.palindromeL0:
.palindromeL1:
.palindromeL11:
	mov r8,#0
	mov r7,r0
.palindromeL3:
	movw r6,#26215
	movt r6,#26214  @ 1717986919
	smmul r6,r7,r6
	asr r5,r7,#31
	rsb r6,r5,r6,asr #2
	mov r5,#10
	mul r6,r6,r5
	sub r5,r7,r6
	mov r6,r8
	mvn r4,#23
	add r3,fp,r4
	add r4,r3,r6,lsl #2
	str r5,[r4]
	movw r6,#26215
	movt r6,#26214  @ 1717986919
	smmul r6,r7,r6
	asr r5,r7,#31
	rsb r4,r5,r6,asr #2
	add r6,r8,#1
.palindromeL4:
	cmp r6,#4
	blt .palindromeL12
.palindromeL5:
	mvn r5,#23
	add r3,fp,r5
	ldr r5,[r3]
	mov r3,#3
	mvn r2,#23
	add r1,fp,r2
	add r2,r1,r3,lsl #2
	ldr r3,[r2]
	cmp r5,r3
	beq .palindromeL9
.palindromeL7:
	mov r5,#0
.palindromeL8:
	mov r0,r5
	add sp,sp,#24
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.palindromeL9:
	mov r3,#1
	mvn r2,#23
	add r1,fp,r2
	add r2,r1,r3,lsl #2
	ldr r3,[r2]
	mov r2,#2
	mvn r1,#23
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	ldr r2,[r1]
	cmp r3,r2
	bne .palindromeL7
.palindromeL6:
	mov r5,#1
	bl .palindromeL8
.palindromeL12:
	mov r8,r6
	mov r7,r4
	bl .palindromeL3
	.section	.note.GNU-stack,"",%progbits
