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
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r62 = call i32 @getint()
	bl getint
	mov r8,r0
	cmp r8,#5
	beq .mainL6
.mainL8:
	mov r7,r8
.mainL5:
	@call void @putint(i32 0)
	mov r0,#0
	bl putint
	@call void @putint(i32 1)
	mov r0,#1
	bl putint
	@call void @putint(i32 2)
	mov r0,#2
	bl putint
	@call void @putint(i32 3)
	mov r0,#3
	bl putint
	@call void @putint(i32 4)
	mov r0,#4
	bl putint
	@call void @putint(i32 5)
	mov r0,#5
	bl putint
	@call void @putint(i32 6)
	mov r0,#6
	bl putint
	@call void @putint(i32 7)
	mov r0,#7
	bl putint
	@call void @putint(i32 8)
	mov r0,#8
	bl putint
	@call void @putint(i32 9)
	mov r0,#9
	bl putint
	@call void @putint(i32 10)
	mov r0,#10
	bl putint
	@call void @putint(i32 11)
	mov r0,#11
	bl putint
	@call void @putint(i32 12)
	mov r0,#12
	bl putint
	@call void @putint(i32 13)
	mov r0,#13
	bl putint
	@call void @putint(i32 14)
	mov r0,#14
	bl putint
	@call void @putint(i32 15)
	mov r0,#15
	bl putint
	@call void @putint(i32 16)
	mov r0,#16
	bl putint
	@call void @putint(i32 17)
	mov r0,#17
	bl putint
	@call void @putint(i32 18)
	mov r0,#18
	bl putint
	@call void @putint(i32 19)
	mov r0,#19
	bl putint
	@call void @putint(i32 20)
	mov r0,#20
	bl putint
	@call void @putint(i32 21)
	mov r0,#21
	bl putint
	@call void @putint(i32 22)
	mov r0,#22
	bl putint
	@call void @putint(i32 23)
	mov r0,#23
	bl putint
	@call void @putint(i32 24)
	mov r0,#24
	bl putint
	@call void @putint(i32 25)
	mov r0,#25
	bl putint
	@call void @putint(i32 26)
	mov r0,#26
	bl putint
	@call void @putint(i32 27)
	mov r0,#27
	bl putint
	@call void @putint(i32 28)
	mov r0,#28
	bl putint
	@call void @putint(i32 29)
	mov r0,#29
	bl putint
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	@call void @putint(i32 %r204)
	mov r0,r7
	bl putint
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	mov r0,#25
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL6:
	mov r6,r8
.mainL3:
	add r8,r6,#1
.mainL4:
	cmp r8,#5
	beq .mainL7
.mainL9:
	mov r7,r8
	bl .mainL5
.mainL7:
	mov r6,r8
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
