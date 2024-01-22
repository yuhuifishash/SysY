.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
maxSubArray:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.maxSubArrayL0:
	str r1,[fp,#-24]
.maxSubArrayL1:
	ldr r8,[fp,#-24]
	mov r7,#0
	cmp r8,r7
	beq .maxSubArrayL2
.maxSubArrayL3:
	ldr r8,[fp,#-24]
	mov r7,#1
	cmp r8,r7
	beq .maxSubArrayL4
.maxSubArrayL5:
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-20]
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#1
	str r8,[fp,#-12]
.maxSubArrayL6:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-24]
	cmp r8,r7
	blt .maxSubArrayL7
.maxSubArrayL8:
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#24
	pop {r6,r7,r8}
	pop {fp,pc}
.maxSubArrayL7:
	ldr r8,[fp,#-20]
	mov r7,#0
	cmp r8,r7
	blt .maxSubArrayL9
.maxSubArrayL10:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-12]
	mov r6,r7
	add r7,r0,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	str r7,[fp,#-20]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .maxSubArrayL11
.maxSubArrayL12:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .maxSubArrayL6
.maxSubArrayL11:
	ldr r8,[fp,#-20]
	str r8,[fp,#-16]
	bl .maxSubArrayL12
.maxSubArrayL9:
	mov r8,#0
	str r8,[fp,#-20]
	bl .maxSubArrayL10
.maxSubArrayL4:
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#24
	pop {r6,r7,r8}
	pop {fp,pc}
.maxSubArrayL2:
	mov r8,#0
	mov r0,r8
	add sp,sp,#24
	pop {r6,r7,r8}
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
	@%r39 = call i32 @maxSubArray(ptr %r37,i32 %r38)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r8
	bl maxSubArray
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	str r6,[fp,#-52]
	ldr r8,[fp,#-52]
	mov r0,r8
	add sp,sp,#52
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
