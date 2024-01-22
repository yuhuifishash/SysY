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
counting_sort:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#64
.counting_sortL0:
	mov r9,r0
	str r9,[fp,#-60]
	mov r9,r2
	str r9,[fp,#-56]
	mov r9,r1
	str r9,[fp,#-52]
.counting_sortL1:
.counting_sortL18:
	mov r9,#0
	str r9,[fp,#-64]
.counting_sortL3:
	ldr r9,[fp,#-64]
	mov r7,r9
	mvn r6,#47
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	mov r7,#0
	str r7,[r6]
	ldr r9,[fp,#-64]
	add r7,r9,#1
.counting_sortL4:
	cmp r7,#10
	blt .counting_sortL22
.counting_sortL5:
	ldr r9,[fp,#-56]
	cmp r9,#0
	bgt .counting_sortL19
.counting_sortL9:
.counting_sortL20:
	mov r6,#1
.counting_sortL11:
	mov r5,r6
	mvn r4,#47
	add r3,fp,r4
	add r4,r3,r5,lsl #2
	ldr r5,[r4]
	sub r3,r6,#1
	mov r1,r3
	mvn r3,#47
	add r2,fp,r3
	add r3,r2,r1,lsl #2
	ldr r2,[r3]
	add r3,r5,r2
	str r3,[r4]
	add r5,r6,#1
.counting_sortL12:
	cmp r5,#10
	blt .counting_sortL24
.counting_sortL13:
	ldr r9,[fp,#-56]
	cmp r9,#0
	bgt .counting_sortL21
.counting_sortL17:
	mov r0,#0
	add sp,sp,#64
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.counting_sortL21:
	ldr r9,[fp,#-56]
	mov r4,r9
.counting_sortL15:
	sub r3,r4,#1
	mov r2,r3
	ldr r9,[fp,#-60]
	add r1,r9,r2,lsl #2
	ldr r2,[r1]
	mov r0,r2
	mvn r2,#47
	add r8,fp,r2
	add r2,r8,r0,lsl #2
	ldr r8,[r2]
	sub r0,r8,#1
	str r0,[r2]
	ldr r8,[r1]
	mov r2,r8
	mvn r1,#47
	add r0,fp,r1
	add r1,r0,r2,lsl #2
	ldr r2,[r1]
	mov r1,r2
	ldr r9,[fp,#-52]
	add r2,r9,r1,lsl #2
	str r8,[r2]
.counting_sortL16:
	cmp r3,#0
	ble .counting_sortL17
.counting_sortL25:
	mov r4,r3
	bl .counting_sortL15
.counting_sortL24:
	mov r6,r5
	bl .counting_sortL11
.counting_sortL19:
	mov r8,#0
.counting_sortL7:
	mov r6,r8
	ldr r9,[fp,#-60]
	add r5,r9,r6,lsl #2
	ldr r6,[r5]
	mov r5,r6
	mvn r6,#47
	add r4,fp,r6
	add r6,r4,r5,lsl #2
	ldr r5,[r6]
	add r4,r5,#1
	str r4,[r6]
	add r6,r8,#1
.counting_sortL8:
	ldr r9,[fp,#-56]
	cmp r6,r9
	bge .counting_sortL9
.counting_sortL23:
	mov r8,r6
	bl .counting_sortL7
.counting_sortL22:
	mov r9,r7
	str r9,[fp,#-64]
	bl .counting_sortL3
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#88
.mainL0:
.mainL1:
	mov r8,#10
	ldr r7,.LPIC0
	str r8,[r7]
	mvn r8,#87
	add r7,fp,r8
	mov r8,#4
	str r8,[r7]
	mov r8,#1
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#2
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#9
	str r8,[r7]
	mov r8,#3
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#4
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#0
	str r8,[r7]
	mov r8,#5
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#6
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#6
	str r8,[r7]
	mov r8,#7
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mov r8,#8
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#7
	str r8,[r7]
	mov r8,#9
	mvn r7,#87
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#8
	str r8,[r7]
	mvn r8,#87
	add r7,fp,r8
	mvn r8,#47
	add r6,fp,r8
	ldr r8,.LPIC0
	ldr r5,[r8]
	@%r39 = call i32 @counting_sort(ptr %r36,ptr %r37,i32 %r38)
	mov r0,r7
	mov r1,r6
	mov r2,r5
	bl counting_sort
	mov r8,r0
	cmp r8,r5
	blt .mainL6
.mainL5:
	mov r0,#0
	add sp,sp,#88
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
	@call void @putint(i32 %r49)
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
