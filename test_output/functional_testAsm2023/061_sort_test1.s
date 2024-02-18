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
	sub sp,sp,#56
.mainL0:
.mainL1:
	mov r8,#10
	ldr r7,.LPIC0
	str r8,[r7]
	mov r8,#4
	mov r7,#0
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#3
	mov r7,#1
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#9
	mov r7,#2
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#2
	mov r7,#3
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	mov r7,#4
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#1
	mov r7,#5
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#6
	mov r7,#6
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#5
	mov r7,#7
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#7
	mov r7,#8
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#8
	mov r7,#9
	mov r6,r7
	mvn r7,#55
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	str r8,[fp,#-16]
	mvn r8,#55
	add r7,fp,r8
	@%r35 = call i32 @bubblesort(ptr %r34)
	mov r0,r7
	bl bubblesort
	mov r8,r0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
.mainL5:
	mov r8,#0
	mov r0,r8
	add sp,sp,#56
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,r8
	mvn r8,#55
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r46)
	mov r0,r8
	bl putint
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putch(i32 %r48)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.mainL4:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
	bge .mainL5
bubblesort:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.bubblesortL0:
.bubblesortL1:
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	ldr r7,.LPIC0
	ldr r6,[r7]
	mov r7,#1
	sub r5,r6,r7
	cmp r8,r5
	blt .bubblesortL3
.bubblesortL5:
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.bubblesortL3:
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,.LPIC0
	ldr r6,[r7]
	ldr r7,[fp,#-20]
	sub r5,r6,r7
	mov r7,#1
	sub r6,r5,r7
	cmp r8,r6
	blt .bubblesortL7
.bubblesortL9:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.bubblesortL4:
	ldr r8,[fp,#-20]
	ldr r7,.LPIC0
	ldr r6,[r7]
	mov r7,#1
	sub r5,r6,r7
	cmp r8,r5
	blt .bubblesortL3
	bge .bubblesortL5
.bubblesortL7:
	ldr r8,[fp,#-16]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	mov r6,#1
	add r5,r8,r6
	mov r8,r5
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	cmp r7,r8
	bgt .bubblesortL10
.bubblesortL11:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.bubblesortL8:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC0
	ldr r6,[r7]
	ldr r7,[fp,#-20]
	sub r5,r6,r7
	mov r7,#1
	sub r6,r5,r7
	cmp r8,r6
	blt .bubblesortL7
	bge .bubblesortL9
.bubblesortL10:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	mov r8,r6
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	mov r6,#1
	add r5,r8,r6
	mov r8,r5
	add r6,r0,r8,lsl #2
	str r7,[r6]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	bl .bubblesortL11
	.section	.note.GNU-stack,"",%progbits
