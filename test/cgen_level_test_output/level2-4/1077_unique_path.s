.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#3
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-12]
	@%r7 = call i32 @uniquePaths(i32 %r5,i32 %r6)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl uniquePaths
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	str r6,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
uniquePaths:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#60
.uniquePathsL0:
	str r0,[fp,#-56]
	str r1,[fp,#-60]
.uniquePathsL1:
	ldr r8,[fp,#-56]
	mov r7,#1
	cmp r8,r7
	beq .uniquePathsL2
.uniquePathsL4:
	ldr r8,[fp,#-60]
	mov r7,#1
	cmp r8,r7
	beq .uniquePathsL2
.uniquePathsL3:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-16]
.uniquePathsL6:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-56]
	cmp r8,r7
	blt .uniquePathsL7
.uniquePathsL8:
	mov r8,#0
	str r8,[fp,#-16]
.uniquePathsL9:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-60]
	cmp r8,r7
	blt .uniquePathsL10
.uniquePathsL11:
	ldr r8,[fp,#-56]
	mov r7,#2
	sub r6,r8,r7
	str r6,[fp,#-16]
.uniquePathsL12:
	ldr r8,[fp,#-16]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bgt .uniquePathsL13
.uniquePathsL14:
	mov r8,#0
	mov r7,r8
	mvn r8,#51
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#60
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.uniquePathsL13:
	ldr r8,[fp,#-60]
	mov r7,#2
	sub r6,r8,r7
	str r6,[fp,#-12]
.uniquePathsL15:
	ldr r8,[fp,#-12]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bgt .uniquePathsL16
.uniquePathsL17:
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-16]
	bl .uniquePathsL12
.uniquePathsL16:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	mov r8,#3
	mul r7,r6,r8
	ldr r8,[fp,#-12]
	add r6,r7,r8
	mov r8,r6
	mvn r7,#51
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	ldr r7,[fp,#-16]
	mov r6,#3
	mul r5,r7,r6
	ldr r7,[fp,#-12]
	add r6,r5,r7
	mov r7,#1
	add r5,r6,r7
	mov r7,r5
	mvn r6,#51
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	ldr r8,[fp,#-16]
	mov r7,#3
	mul r5,r8,r7
	ldr r8,[fp,#-12]
	add r7,r5,r8
	mov r8,r7
	mvn r7,#51
	add r5,fp,r7
	add r7,r5,r8,lsl #2
	str r6,[r7]
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
	bl .uniquePathsL15
.uniquePathsL10:
	mov r8,#1
	ldr r7,[fp,#-56]
	mov r6,#1
	sub r5,r7,r6
	mov r7,#3
	mul r6,r5,r7
	ldr r7,[fp,#-16]
	add r5,r6,r7
	mov r7,r5
	mvn r6,#51
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .uniquePathsL9
.uniquePathsL7:
	mov r8,#1
	ldr r7,[fp,#-16]
	mov r6,#3
	mul r5,r7,r6
	ldr r7,[fp,#-60]
	add r6,r5,r7
	mov r7,#1
	sub r5,r6,r7
	mov r7,r5
	mvn r6,#51
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .uniquePathsL6
.uniquePathsL2:
	mov r8,#1
	mov r0,r8
	add sp,sp,#60
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
