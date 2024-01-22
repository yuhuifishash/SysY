.arch armv7-a
.fpu vfpv3-d16
.arm
.data
N:
	.word  0
.text
.global main
.LPIC0:
	.word  N
insert:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.insertL0:
.insertL1:
	mov r8,r0
	ldr r7,[r8]
	cmp r1,r7
	bgt .insertL6
.insertL17:
	mov r8,#0
.insertL5:
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r6,r8
	bgt .insertL15
.insertL13:
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.insertL15:
	mov r7,r8
	add r5,r0,r7,lsl #2
	mov r7,r6
.insertL11:
	sub r6,r7,#1
	mov r4,r6
	add r3,r0,r4,lsl #2
	ldr r4,[r3]
	mov r3,r7
	add r2,r0,r3,lsl #2
	str r4,[r2]
	str r1,[r5]
.insertL12:
	cmp r6,r8
	ble .insertL13
.insertL21:
	mov r7,r6
	bl .insertL11
.insertL6:
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r6,#0
	bgt .insertL14
.insertL19:
	mov r8,#0
	bl .insertL5
.insertL14:
	mov r7,#0
.insertL3:
	add r6,r7,#1
.insertL4:
	mov r5,r6
	add r4,r0,r5,lsl #2
	ldr r5,[r4]
	cmp r1,r5
	bgt .insertL8
.insertL18:
	mov r8,r6
	bl .insertL5
.insertL8:
	ldr r5,.LPIC0
	ldr r4,[r5]
	cmp r6,r4
	blt .insertL16
.insertL20:
	mov r8,r6
	bl .insertL5
.insertL16:
	mov r7,r6
	bl .insertL3
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#52
.mainL0:
.mainL1:
	mov r8,#10
	ldr r7,.LPIC0
	str r8,[r7]
	mvn r8,#51
	add r7,fp,r8
	mov r8,#1
	str r8,[r7]
	mov r8,#1
	mvn r7,#51
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#2
	mvn r7,#51
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#3
	mvn r7,#51
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#7
	str r8,[r7]
	mov r8,#4
	mvn r7,#51
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#8
	str r8,[r7]
	mov r8,#5
	mvn r7,#51
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#11
	str r8,[r7]
	mov r8,#6
	mvn r7,#51
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#13
	str r8,[r7]
	mov r8,#7
	mvn r7,#51
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#18
	str r8,[r7]
	mov r8,#8
	mvn r7,#51
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#56
	str r8,[r7]
	mov r8,#9
	mvn r7,#51
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#78
	str r8,[r7]
	@%r37 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mvn r7,#51
	add r6,fp,r7
	@%r40 = call i32 @insert(ptr %r38,i32 %r37)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,r8
	bl insert
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC0
	ldr r7,[r8]
	cmp r7,#0
	bgt .mainL6
.mainL5:
	mov r0,#0
	add sp,sp,#52
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL6:
	mov r8,#0
.mainL3:
	mov r7,r8
	mvn r6,#51
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	ldr r7,[r6]
	@call void @putint(i32 %r48)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	add r7,r8,#1
.mainL4:
	ldr r6,.LPIC0
	ldr r5,[r6]
	cmp r7,r5
	bge .mainL5
.mainL7:
	mov r8,r7
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
