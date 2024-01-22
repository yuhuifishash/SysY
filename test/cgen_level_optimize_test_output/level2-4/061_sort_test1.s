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
	@%r35 = call i32 @bubblesort(ptr %r34)
	mov r0,r7
	bl bubblesort
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
bubblesort:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#12
.bubblesortL0:
.bubblesortL1:
	ldr r8,.LPIC0
	ldr r7,[r8]
	sub r8,r7,#1
	cmp r8,#0
	bgt .bubblesortL12
.bubblesortL5:
	mov r0,#0
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.bubblesortL12:
	ldr r8,.LPIC0
	ldr r7,[r8]
	sub r9,r7,#1
	str r9,[fp,#-12]
	mov r6,#0
.bubblesortL3:
	sub r5,r7,r6
	sub r4,r5,#1
	cmp r4,#0
	bgt .bubblesortL13
.bubblesortL9:
	add r5,r6,#1
.bubblesortL4:
	ldr r9,[fp,#-12]
	cmp r5,r9
	bge .bubblesortL5
.bubblesortL14:
	mov r6,r5
	bl .bubblesortL3
.bubblesortL13:
	ldr r5,.LPIC0
	ldr r4,[r5]
	sub r5,r4,r6
	sub r4,r5,#1
	mov r5,#0
.bubblesortL7:
	mov r3,r5
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	add r2,r5,#1
	mov r1,r2
	add r2,r0,r1,lsl #2
	ldr r1,[r2]
	cmp r3,r1
	bgt .bubblesortL10
.bubblesortL11:
	add r3,r5,#1
.bubblesortL8:
	cmp r3,r4
	bge .bubblesortL9
.bubblesortL15:
	mov r5,r3
	bl .bubblesortL7
.bubblesortL10:
	add r3,r5,#1
	mov r2,r3
	add r3,r0,r2,lsl #2
	ldr r2,[r3]
	mov r1,r5
	add r8,r0,r1,lsl #2
	ldr r1,[r8]
	str r1,[r3]
	str r2,[r8]
	bl .bubblesortL11
	.section	.note.GNU-stack,"",%progbits
