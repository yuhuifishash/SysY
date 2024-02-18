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
	sub sp,sp,#16
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#5
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@%r6 = call i32 @climbStairs(i32 %r5)
	mov r0,r8
	bl climbStairs
	mov r7,r0
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#16
	pop {r7,r8}
	pop {fp,pc}
climbStairs:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#56
.climbStairsL0:
	str r0,[fp,#-56]
.climbStairsL1:
	ldr r8,[fp,#-56]
	mov r7,#4
	cmp r8,r7
	blt .climbStairsL2
.climbStairsL3:
	mov r8,#0
	mov r7,#0
	mov r6,r7
	mvn r7,#51
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#1
	mov r7,#1
	mov r6,r7
	mvn r7,#51
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#2
	mov r7,#2
	mov r6,r7
	mvn r7,#51
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#3
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-56]
	mov r6,#1
	add r5,r7,r6
	cmp r8,r5
	blt .climbStairsL5
.climbStairsL7:
	ldr r8,[fp,#-56]
	mov r7,r8
	mvn r8,#51
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#56
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.climbStairsL5:
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	mov r8,r6
	mvn r7,#51
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	ldr r7,[fp,#-12]
	mov r6,#2
	sub r5,r7,r6
	mov r7,r5
	mvn r6,#51
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#51
	add r5,fp,r8
	add r8,r5,r7,lsl #2
	str r6,[r8]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.climbStairsL6:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-56]
	mov r6,#1
	add r5,r7,r6
	cmp r8,r5
	blt .climbStairsL5
	bge .climbStairsL7
.climbStairsL2:
	ldr r8,[fp,#-56]
	mov r0,r8
	add sp,sp,#56
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
