.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
maxArea:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#28
.maxAreaL0:
	str r1,[fp,#-28]
.maxAreaL1:
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-24]
	ldr r8,[fp,#-28]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#1
	rsb r7,r8,#0
	str r7,[fp,#-16]
.maxAreaL2:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .maxAreaL3
.maxAreaL4:
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#28
	pop {r6,r7,r8}
	pop {fp,pc}
.maxAreaL3:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-24]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-20]
	mov r6,r8
	add r8,r0,r6,lsl #2
	ldr r6,[r8]
	cmp r7,r6
	blt .maxAreaL5
.maxAreaL6:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	sub r6,r8,r7
	ldr r8,[fp,#-20]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mul r8,r6,r7
	str r8,[fp,#-12]
.maxAreaL7:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	bgt .maxAreaL8
.maxAreaL9:
	ldr r8,[fp,#-24]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-20]
	mov r6,r8
	add r8,r0,r6,lsl #2
	ldr r6,[r8]
	cmp r7,r6
	bgt .maxAreaL10
.maxAreaL11:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
.maxAreaL12:
	bl .maxAreaL2
.maxAreaL10:
	ldr r8,[fp,#-20]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-20]
	bl .maxAreaL12
.maxAreaL8:
	ldr r8,[fp,#-12]
	str r8,[fp,#-16]
	bl .maxAreaL9
.maxAreaL5:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	sub r6,r8,r7
	ldr r8,[fp,#-24]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mul r8,r6,r7
	str r8,[fp,#-12]
	bl .maxAreaL7
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#52
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-52]
	mov r8,#3
	mov r7,#0
	mov r6,r7
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
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
	mov r8,#0
	mov r7,#3
	mov r6,r7
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
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
	mov r8,#1
	mov r7,#6
	mov r6,r7
	mvn r7,#47
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
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
	@%r36 = call i32 @maxArea(ptr %r34,i32 %r35)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r8
	bl maxArea
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	str r6,[fp,#-52]
	ldr r8,[fp,#-52]
	mov r0,r8
	add sp,sp,#52
	pop {r5,r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
