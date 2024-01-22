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
	@%r7 = call i32 @uniquePaths(i32 3,i32 3)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#3
	mov r1,#3
	bl uniquePaths
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
uniquePaths:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#56
.uniquePathsL0:
	mov r9,r1
	str r9,[fp,#-52]
	mov r9,r0
	str r9,[fp,#-48]
.uniquePathsL1:
	ldr r9,[fp,#-48]
	cmp r9,#1
	beq .uniquePathsL2
.uniquePathsL4:
	ldr r9,[fp,#-52]
	cmp r9,#1
	beq .uniquePathsL2
.uniquePathsL3:
	ldr r9,[fp,#-48]
	cmp r9,#0
	bgt .uniquePathsL22
.uniquePathsL9:
	ldr r9,[fp,#-52]
	cmp r9,#0
	bgt .uniquePathsL23
.uniquePathsL13:
	ldr r9,[fp,#-48]
	sub r8,r9,#2
	mvn r7,#0
	cmp r8,r7
	bgt .uniquePathsL24
.uniquePathsL17:
	mvn r7,#43
	add r6,fp,r7
	ldr r7,[r6]
	mov r0,r7
	add sp,sp,#56
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.uniquePathsL24:
	ldr r9,[fp,#-52]
	sub r10,r9,#2
	str r10,[fp,#-56]
	mov r6,r8
.uniquePathsL15:
	mvn r8,#0
	ldr r9,[fp,#-56]
	cmp r9,r8
	bgt .uniquePathsL25
.uniquePathsL21:
	sub r8,r6,#1
.uniquePathsL16:
	mvn r5,#0
	cmp r8,r5
	ble .uniquePathsL17
.uniquePathsL28:
	mov r6,r8
	bl .uniquePathsL15
.uniquePathsL25:
	add r8,r6,#1
	add r5,r8,r8,lsl #1
	add r8,r6,r6,lsl #1
	ldr r9,[fp,#-56]
	mov r4,r9
.uniquePathsL19:
	add r3,r5,r4
	mov r2,r3
	mvn r3,#43
	add r0,fp,r3
	add r3,r0,r2,lsl #2
	ldr r2,[r3]
	add r3,r8,r4
	add r0,r3,#1
	mov r1,r0
	mvn r0,#43
	add r7,fp,r0
	add r0,r7,r1,lsl #2
	ldr r7,[r0]
	add r1,r2,r7
	mov r7,r3
	mvn r3,#43
	add r2,fp,r3
	add r3,r2,r7,lsl #2
	str r1,[r3]
	sub r7,r4,#1
.uniquePathsL20:
	mvn r3,#0
	cmp r7,r3
	ble .uniquePathsL21
.uniquePathsL29:
	mov r4,r7
	bl .uniquePathsL19
.uniquePathsL23:
	ldr r9,[fp,#-48]
	sub r8,r9,#1
	add r7,r8,r8,lsl #1
	mov r8,#0
.uniquePathsL11:
	add r6,r7,r8
	mov r5,r6
	mvn r6,#43
	add r4,fp,r6
	add r6,r4,r5,lsl #2
	mov r5,#1
	str r5,[r6]
	add r6,r8,#1
.uniquePathsL12:
	ldr r9,[fp,#-52]
	cmp r6,r9
	bge .uniquePathsL13
.uniquePathsL27:
	mov r8,r6
	bl .uniquePathsL11
.uniquePathsL22:
	mov r8,#0
.uniquePathsL7:
	add r7,r8,r8,lsl #1
	ldr r9,[fp,#-52]
	add r6,r7,r9
	sub r7,r6,#1
	mov r6,r7
	mvn r7,#43
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	mov r6,#1
	str r6,[r7]
	add r7,r8,#1
.uniquePathsL8:
	ldr r9,[fp,#-48]
	cmp r7,r9
	bge .uniquePathsL9
.uniquePathsL26:
	mov r8,r7
	bl .uniquePathsL7
.uniquePathsL2:
	mov r0,#1
	add sp,sp,#56
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
