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
counting_sort:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#64
.counting_sortL0:
	str r2,[fp,#-64]
.counting_sortL1:
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-12]
	mov r7,#10
	cmp r8,r7
	blt .counting_sortL3
.counting_sortL5:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-64]
	cmp r8,r7
	blt .counting_sortL7
.counting_sortL9:
	mov r8,#1
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#10
	cmp r8,r7
	blt .counting_sortL11
.counting_sortL13:
	ldr r8,[fp,#-64]
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	mov r7,#0
	cmp r8,r7
	bgt .counting_sortL15
.counting_sortL17:
	mov r8,#0
	mov r0,r8
	add sp,sp,#64
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.counting_sortL15:
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	mov r8,r6
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	mov r7,r8
	mvn r8,#59
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	mov r8,#1
	sub r6,r7,r8
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r5,r8,r7
	mov r8,r5
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	mov r7,r8
	mvn r8,#59
	add r5,fp,r8
	add r8,r5,r7,lsl #2
	str r6,[r8]
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	mov r8,r6
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	ldr r7,[fp,#-16]
	mov r6,#1
	sub r5,r7,r6
	mov r7,r5
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	ldr r6,[r7]
	mov r7,r6
	add r6,r1,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-16]
.counting_sortL16:
	ldr r8,[fp,#-16]
	mov r7,#0
	cmp r8,r7
	bgt .counting_sortL15
	ble .counting_sortL17
.counting_sortL11:
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#59
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	mov r6,#1
	sub r5,r8,r6
	mov r8,r5
	mvn r6,#59
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	ldr r8,[r6]
	add r6,r7,r8
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#59
	add r5,fp,r8
	add r8,r5,r7,lsl #2
	str r6,[r8]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.counting_sortL12:
	ldr r8,[fp,#-12]
	mov r7,#10
	cmp r8,r7
	blt .counting_sortL11
	bge .counting_sortL13
.counting_sortL7:
	ldr r8,[fp,#-20]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r8,r7
	mvn r7,#59
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	mov r7,#1
	add r6,r8,r7
	ldr r8,[fp,#-20]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r8,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r8,lsl #2
	str r6,[r7]
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.counting_sortL8:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-64]
	cmp r8,r7
	blt .counting_sortL7
	bge .counting_sortL9
.counting_sortL3:
	mov r8,#0
	ldr r7,[fp,#-12]
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.counting_sortL4:
	ldr r8,[fp,#-12]
	mov r7,#10
	cmp r8,r7
	blt .counting_sortL3
	bge .counting_sortL5
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#96
.mainL0:
.mainL1:
	mov r8,#10
	ldr r7,.LPIC0
	str r8,[r7]
	mov r8,#4
	mov r7,#0
	mov r6,r7
	mvn r7,#95
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#3
	mov r7,#1
	mov r6,r7
	mvn r7,#95
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#9
	mov r7,#2
	mov r6,r7
	mvn r7,#95
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#2
	mov r7,#3
	mov r6,r7
	mvn r7,#95
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	mov r7,#4
	mov r6,r7
	mvn r7,#95
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#1
	mov r7,#5
	mov r6,r7
	mvn r7,#95
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#6
	mov r7,#6
	mov r6,r7
	mvn r7,#95
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#5
	mov r7,#7
	mov r6,r7
	mvn r7,#95
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#7
	mov r7,#8
	mov r6,r7
	mvn r7,#95
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#8
	mov r7,#9
	mov r6,r7
	mvn r7,#95
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	str r8,[fp,#-56]
	mov r8,#0
	str r8,[fp,#-56]
	mvn r8,#95
	add r7,fp,r8
	mvn r8,#51
	add r6,fp,r8
	ldr r8,.LPIC0
	ldr r5,[r8]
	@%r39 = call i32 @counting_sort(ptr %r36,ptr %r37,i32 %r38)
	mov r0,r7
	mov r1,r6
	mov r2,r5
	bl counting_sort
	mov r8,r0
	str r8,[fp,#-56]
	ldr r8,[fp,#-56]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
.mainL5:
	mov r8,#0
	mov r0,r8
	add sp,sp,#96
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-56]
	mov r7,r8
	mvn r8,#51
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r50)
	mov r0,r8
	bl putint
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putch(i32 %r52)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-56]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-56]
.mainL4:
	ldr r8,[fp,#-56]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
	bge .mainL5
	.section	.note.GNU-stack,"",%progbits
