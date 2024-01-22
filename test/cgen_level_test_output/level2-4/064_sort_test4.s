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
select_sort:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#28
.select_sortL0:
	str r1,[fp,#-28]
.select_sortL1:
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-24]
.select_sortL2:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-28]
	mov r6,#1
	sub r5,r7,r6
	cmp r8,r5
	blt .select_sortL3
.select_sortL4:
	mov r8,#0
	mov r0,r8
	add sp,sp,#28
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.select_sortL3:
	ldr r8,[fp,#-24]
	str r8,[fp,#-16]
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.select_sortL5:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-28]
	cmp r8,r7
	blt .select_sortL6
.select_sortL7:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-24]
	cmp r8,r7
	bne .select_sortL10
.select_sortL11:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .select_sortL2
.select_sortL10:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-24]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	mov r6,r8
	add r8,r0,r6,lsl #2
	str r7,[r8]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-24]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	bl .select_sortL11
.select_sortL6:
	ldr r8,[fp,#-16]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-20]
	mov r6,r8
	add r8,r0,r6,lsl #2
	ldr r6,[r8]
	cmp r7,r6
	bgt .select_sortL8
.select_sortL9:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	bl .select_sortL5
.select_sortL8:
	ldr r8,[fp,#-20]
	str r8,[fp,#-16]
	bl .select_sortL9
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
	mov r8,#0
	str r8,[fp,#-16]
	mvn r8,#55
	add r7,fp,r8
	ldr r8,.LPIC0
	ldr r6,[r8]
	@%r37 = call i32 @select_sort(ptr %r35,i32 %r36)
	mov r0,r7
	mov r1,r6
	bl select_sort
	mov r8,r0
	str r8,[fp,#-16]
.mainL2:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
.mainL4:
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
	@call void @putint(i32 %r48)
	mov r0,r8
	bl putint
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putch(i32 %r50)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL2
	.section	.note.GNU-stack,"",%progbits
