.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
maxArea:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#12
.maxAreaL0:
.maxAreaL1:
	sub r8,r1,#1
	cmp r8,#0
	bgt .maxAreaL14
.maxAreaL16:
	mvn r7,#0
	mov r9,r7
	str r9,[fp,#-12]
.maxAreaL5:
	ldr r9,[fp,#-12]
	mov r0,r9
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.maxAreaL14:
	mvn r7,#0
	mov r5,r7
	mov r7,r8
	mov r8,#0
.maxAreaL3:
	mov r4,r8
	add r3,r0,r4,lsl #2
	ldr r4,[r3]
	mov r3,r7
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	cmp r4,r3
	blt .maxAreaL6
.maxAreaL7:
	sub r4,r7,r8
	mov r3,r7
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mul r2,r4,r3
	mov r4,r2
.maxAreaL8:
	cmp r4,r5
	bgt .maxAreaL9
.maxAreaL18:
	mov r3,r5
.maxAreaL10:
	mov r2,r8
	add r1,r0,r2,lsl #2
	ldr r2,[r1]
	mov r1,r7
	add r6,r0,r1,lsl #2
	ldr r1,[r6]
	cmp r2,r1
	bgt .maxAreaL11
.maxAreaL12:
	add r6,r8,#1
	mov r2,r7
	mov r1,r6
.maxAreaL13:
.maxAreaL4:
	cmp r1,r2
	blt .maxAreaL15
.maxAreaL17:
	mov r9,r3
	str r9,[fp,#-12]
	bl .maxAreaL5
.maxAreaL15:
	mov r5,r3
	mov r7,r2
	mov r8,r1
	bl .maxAreaL3
.maxAreaL11:
	sub r6,r7,#1
	mov r2,r6
	mov r1,r8
	bl .maxAreaL13
.maxAreaL9:
	mov r3,r4
	bl .maxAreaL10
.maxAreaL6:
	sub r6,r7,r8
	mov r3,r8
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	mul r2,r6,r3
	mov r4,r2
	bl .maxAreaL8
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#48
.mainL0:
.mainL1:
	mvn r8,#47
	add r7,fp,r8
	mov r8,#3
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
	mov r8,#0
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
	mov r8,#1
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
	@%r36 = call i32 @maxArea(ptr %r34,i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#10
	bl maxArea
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#48
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
