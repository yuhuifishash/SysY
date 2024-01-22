.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r6 = call i32 @climbStairs(i32 5)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#5
	bl climbStairs
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
climbStairs:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#48
.climbStairsL0:
.climbStairsL1:
	cmp r0,#4
	blt .climbStairsL2
.climbStairsL3:
	mvn r8,#47
	add r7,fp,r8
	mov r8,#0
	str r8,[r7]
	mov r8,#1
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#2
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	add r8,r0,#1
	cmp r8,#3
	bgt .climbStairsL8
.climbStairsL7:
	mov r8,r0
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	mov r0,r8
	add sp,sp,#48
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.climbStairsL8:
	add r8,r0,#1
	mov r7,#3
.climbStairsL5:
	sub r6,r7,#1
	mov r5,r6
	mvn r6,#47
	add r4,fp,r6
	add r6,r4,r5,lsl #2
	ldr r5,[r6]
	sub r6,r7,#2
	mov r4,r6
	mvn r6,#47
	add r3,fp,r6
	add r6,r3,r4,lsl #2
	ldr r4,[r6]
	add r6,r5,r4
	mov r5,r7
	mvn r4,#47
	add r3,fp,r4
	add r4,r3,r5,lsl #2
	str r6,[r4]
	add r6,r7,#1
.climbStairsL6:
	cmp r6,r8
	bge .climbStairsL7
.climbStairsL9:
	mov r7,r6
	bl .climbStairsL5
.climbStairsL2:
	add sp,sp,#48
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
