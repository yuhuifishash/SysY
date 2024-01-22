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
select_sort:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#12
.select_sortL0:
.select_sortL1:
	sub r8,r1,#1
	cmp r8,#0
	bgt .select_sortL14
.select_sortL5:
	mov r0,#0
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.select_sortL14:
	sub r9,r1,#1
	str r9,[fp,#-12]
	mov r7,#0
.select_sortL3:
	add r6,r7,#1
	cmp r6,r1
	blt .select_sortL15
.select_sortL18:
	mov r5,r7
.select_sortL9:
	cmp r5,r7
	bne .select_sortL12
.select_sortL13:
	add r4,r7,#1
.select_sortL4:
	ldr r9,[fp,#-12]
	cmp r4,r9
	bge .select_sortL5
.select_sortL16:
	mov r7,r4
	bl .select_sortL3
.select_sortL12:
	mov r4,r5
	add r3,r0,r4,lsl #2
	ldr r4,[r3]
	mov r2,r7
	add r8,r0,r2,lsl #2
	ldr r2,[r8]
	str r2,[r3]
	str r4,[r8]
	bl .select_sortL13
.select_sortL15:
	mov r8,r7
	mov r4,r6
.select_sortL7:
	mov r6,r8
	add r3,r0,r6,lsl #2
	ldr r6,[r3]
	mov r3,r4
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	cmp r6,r3
	bgt .select_sortL10
.select_sortL20:
	mov r6,r8
.select_sortL11:
	add r3,r4,#1
.select_sortL8:
	cmp r3,r1
	blt .select_sortL17
.select_sortL19:
	mov r5,r6
	bl .select_sortL9
.select_sortL17:
	mov r8,r6
	mov r4,r3
	bl .select_sortL7
.select_sortL10:
	mov r6,r4
	bl .select_sortL11
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
	ldr r8,.LPIC0
	ldr r6,[r8]
	@%r37 = call i32 @select_sort(ptr %r35,i32 %r36)
	mov r0,r7
	mov r1,r6
	bl select_sort
	mov r8,r0
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
	@call void @putint(i32 %r47)
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
