.arch armv7-a
.fpu vfpv3-d16
.arm
.data
ascii_0:
	.word  48
.text
.global main
.LPIC0:
	.word  ascii_0
my_getint:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.my_getintL0:
.my_getintL1:
.my_getintL23:
.my_getintL3:
	@%r6 = call i32 @getch()
	bl getch
	mov r8,r0
	sub r7,r8,#48
	cmp r7,#0
	blt .my_getintL6
.my_getintL9:
	cmp r7,#9
	bgt .my_getintL6
.my_getintL7:
.my_getintL5:
.my_getintL24:
	mov r8,r7
.my_getintL14:
	@%r27 = call i32 @getch()
	bl getch
	mov r7,r0
	sub r6,r7,#48
	cmp r6,#0
	bge .my_getintL20
.my_getintL18:
.my_getintL16:
	mov r0,r8
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.my_getintL20:
	cmp r6,#9
	bgt .my_getintL18
.my_getintL17:
	mov r7,#10
	mul r5,r8,r7
	add r7,r5,r6
.my_getintL19:
.my_getintL15:
	mov r8,r7
	bl .my_getintL14
.my_getintL6:
.my_getintL4:
	bl .my_getintL3
my_putint:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#72
.my_putintL0:
.my_putintL1:
	cmp r0,#0
	bgt .my_putintL10
.my_putintL13:
	mov r8,#0
.my_putintL5:
	cmp r8,#0
	bgt .my_putintL11
.my_putintL9:
	add sp,sp,#72
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.my_putintL11:
	mov r7,r8
.my_putintL7:
	sub r6,r7,#1
	mov r5,r6
	mvn r4,#71
	add r3,fp,r4
	add r4,r3,r5,lsl #2
	ldr r5,[r4]
	@call void @putch(i32 %r38)
	push {r0}
	mov r0,r5
	bl putch
	pop {r0}
.my_putintL8:
	cmp r6,#0
	ble .my_putintL9
.my_putintL15:
	mov r7,r6
	bl .my_putintL7
.my_putintL10:
	mov r7,#0
	mov r6,r0
.my_putintL3:
	movw r5,#26215
	movt r5,#26214  @ 1717986919
	smmul r5,r6,r5
	asr r4,r6,#31
	rsb r5,r4,r5,asr #2
	mov r4,#10
	mul r5,r5,r4
	sub r4,r6,r5
	add r5,r4,#48
	mov r4,r7
	mvn r3,#71
	add r2,fp,r3
	add r3,r2,r4,lsl #2
	str r5,[r3]
	movw r5,#26215
	movt r5,#26214  @ 1717986919
	smmul r5,r6,r5
	asr r4,r6,#31
	rsb r3,r4,r5,asr #2
	add r5,r7,#1
.my_putintL4:
	cmp r3,#0
	bgt .my_putintL12
.my_putintL14:
	mov r8,r5
	bl .my_putintL5
.my_putintL12:
	mov r7,r5
	mov r6,r3
	bl .my_putintL3
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r1 = call i32 @my_getint()
	sub sp,sp,#4 @stack align 8bytes
	bl my_getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#0
	bgt .mainL6
.mainL5:
	mov r0,#0
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL6:
	mov r7,r8
.mainL3:
	@%r8 = call i32 @my_getint()
	sub sp,sp,#4 @stack align 8bytes
	bl my_getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @my_putint(i32 %r8)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl my_putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	sub r8,r7,#1
.mainL4:
	cmp r8,#0
	ble .mainL5
.mainL7:
	mov r7,r8
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
