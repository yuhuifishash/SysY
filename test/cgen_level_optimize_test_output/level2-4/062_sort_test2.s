.arch armv7-a
.fpu vfpv3-d16
.arm
.data
n:
	.word  0
.text
.global main
.LPIC0:
	.word  n
insertsort:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.insertsortL0:
.insertsortL1:
	ldr r8,.LPIC0
	ldr r7,[r8]
	cmp r7,#1
	bgt .insertsortL14
.insertsortL5:
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.insertsortL14:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#1
.insertsortL3:
	mov r6,r8
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	sub r5,r8,#1
	mvn r4,#0
	cmp r5,r4
	bgt .insertsortL10
.insertsortL18:
	mov r4,r5
.insertsortL9:
	add r3,r4,#1
	mov r2,r3
	add r3,r0,r2,lsl #2
	str r6,[r3]
	add r3,r8,#1
.insertsortL4:
	cmp r3,r7
	bge .insertsortL5
.insertsortL16:
	mov r8,r3
	bl .insertsortL3
.insertsortL10:
	mov r3,r5
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	cmp r6,r3
	blt .insertsortL15
.insertsortL20:
	mov r4,r5
	bl .insertsortL9
.insertsortL15:
	mov r3,r5
.insertsortL7:
	mov r5,r3
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	add r2,r3,#1
	mov r1,r2
	add r2,r0,r1,lsl #2
	str r5,[r2]
	sub r5,r3,#1
.insertsortL8:
	mvn r2,#0
	cmp r5,r2
	bgt .insertsortL12
.insertsortL19:
	mov r4,r5
	bl .insertsortL9
.insertsortL12:
	mov r2,r5
	add r1,r0,r2,lsl #2
	ldr r2,[r1]
	cmp r6,r2
	blt .insertsortL17
.insertsortL21:
	mov r4,r5
	bl .insertsortL9
.insertsortL17:
	mov r3,r5
	bl .insertsortL7
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#48
.mainL0:
.mainL1:
	mov r8,#10
	ldr r7,.LPIC0
	str r8,[r7]
	mvn r8,#47
	add r7,fp,r8
	mov r8,#4
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
	mov r8,#2
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
	mov r8,#6
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
	@%r35 = call i32 @insertsort(ptr %r34)
	mov r0,r7
	bl insertsort
	mov r8,r0
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL6
.mainL5:
	mov r0,#0
	add sp,sp,#48
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL6:
	mov r7,r8
.mainL3:
	mov r8,r7
	mvn r6,#47
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r45)
	mov r0,r8
	bl putint
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	add r8,r7,#1
.mainL4:
	ldr r6,.LPIC0
	ldr r5,[r6]
	cmp r8,r5
	bge .mainL5
.mainL7:
	mov r7,r8
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
