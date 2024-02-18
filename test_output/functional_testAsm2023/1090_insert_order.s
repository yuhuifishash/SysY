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
insert:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.insertL0:
	str r1,[fp,#-20]
.insertL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	mov r6,r7
	add r7,r0,r6,lsl #2
	ldr r6,[r7]
	cmp r8,r6
	bgt .insertL6
.insertL5:
	ldr r8,.LPIC0
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	bgt .insertL11
.insertL13:
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r6,r7,r8}
	pop {fp,pc}
.insertL11:
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	mov r8,r6
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	ldr r7,[fp,#-12]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
.insertL12:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	bgt .insertL11
	ble .insertL13
.insertL6:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	bge .insertL5
.insertL3:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.insertL4:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	mov r6,r7
	add r7,r0,r6,lsl #2
	ldr r6,[r7]
	cmp r8,r6
	ble .insertL5
.insertL8:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .insertL3
	bge .insertL5
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#60
.mainL0:
.mainL1:
	mov r8,#10
	ldr r7,.LPIC0
	str r8,[r7]
	mov r8,#1
	mov r7,#0
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#3
	mov r7,#1
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#4
	mov r7,#2
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#7
	mov r7,#3
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#8
	mov r7,#4
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#11
	mov r7,#5
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#13
	mov r7,#6
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#18
	mov r7,#7
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#56
	mov r7,#8
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#78
	mov r7,#9
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-12]
	@%r37 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-16]
	mvn r8,#59
	add r7,fp,r8
	ldr r8,[fp,#-16]
	@%r40 = call i32 @insert(ptr %r38,i32 %r39)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r8
	bl insert
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	str r6,[fp,#-16]
	ldr r8,[fp,#-12]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
.mainL5:
	mov r8,#0
	mov r0,r8
	add sp,sp,#60
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#59
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r49)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putch(i32 %r51)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.mainL4:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
	bge .mainL5
	.section	.note.GNU-stack,"",%progbits
