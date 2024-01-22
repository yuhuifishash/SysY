.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
maxSubArray:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#16
.maxSubArrayL0:
	mov r9,r0
	str r9,[fp,#-16]
.maxSubArrayL1:
	cmp r1,#0
	beq .maxSubArrayL2
.maxSubArrayL3:
	cmp r1,#1
	beq .maxSubArrayL4
.maxSubArrayL5:
	ldr r9,[fp,#-16]
	mov r8,r9
	ldr r7,[r8]
	cmp r1,#1
	bgt .maxSubArrayL14
.maxSubArrayL16:
	mov r9,r7
	str r9,[fp,#-12]
.maxSubArrayL9:
	ldr r9,[fp,#-12]
	mov r0,r9
	add sp,sp,#16
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.maxSubArrayL14:
	mov r6,#1
	mov r5,r7
	mov r4,r7
.maxSubArrayL7:
	cmp r4,#0
	blt .maxSubArrayL10
.maxSubArrayL18:
	mov r7,r4
.maxSubArrayL11:
	mov r3,r6
	ldr r9,[fp,#-16]
	add r2,r9,r3,lsl #2
	ldr r3,[r2]
	add r2,r7,r3
	cmp r5,r2
	blt .maxSubArrayL12
.maxSubArrayL19:
	mov r3,r5
.maxSubArrayL13:
	add r8,r6,#1
.maxSubArrayL8:
	cmp r8,r1
	blt .maxSubArrayL15
.maxSubArrayL17:
	mov r9,r3
	str r9,[fp,#-12]
	bl .maxSubArrayL9
.maxSubArrayL15:
	mov r6,r8
	mov r5,r3
	mov r4,r2
	bl .maxSubArrayL7
.maxSubArrayL12:
	mov r3,r2
	bl .maxSubArrayL13
.maxSubArrayL10:
	mov r7,#0
	bl .maxSubArrayL11
.maxSubArrayL4:
	ldr r9,[fp,#-16]
	mov r8,r9
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#16
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.maxSubArrayL2:
	mov r0,#0
	add sp,sp,#16
	pop {r4,r5,r6,r7,r8,r9,r10}
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
	@%r39 = call i32 @maxSubArray(ptr %r37,i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#10
	bl maxSubArray
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#48
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
