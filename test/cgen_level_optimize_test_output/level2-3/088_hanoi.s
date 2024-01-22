.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
move:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.moveL0:
.moveL1:
	@call void @putint(i32 %r0)
	push {r0,r1}
	bl putint
	pop {r0,r1}
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	push {r1}
	mov r0,#32
	bl putch
	pop {r1}
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	push {r1}
	mov r0,r1
	bl putint
	pop {r1}
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 44)
	mov r0,#44
	bl putch
	@call void @putch(i32 32)
	mov r0,#32
	bl putch
	add sp,sp,#8
	pop {fp,pc}
hanoi:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.hanoiL0:
.hanoiL1:
	cmp r0,#1
	beq .hanoiL2
.hanoiL3:
	sub r8,r0,#1
	@call void @hanoi(i32 %r17,i32 %r1,i32 %r3,i32 %r2)
	push {r1,r2,r3}
	mov r0,r8
	mov r10,r3
	mov r3,r2
	mov r2,r10
	bl hanoi
	pop {r1,r2,r3}
.hanoiL8:
.hanoiL10:
	@call void @putint(i32 %r1)
	push {r1,r2,r3}
	mov r0,r1
	bl putint
	pop {r1,r2,r3}
	@call void @putch(i32 32)
	push {r1,r2,r3}
	mov r0,#32
	bl putch
	pop {r1,r2,r3}
	@call void @putint(i32 %r3)
	push {r1,r2,r3}
	mov r0,r3
	bl putint
	pop {r1,r2,r3}
	@call void @putch(i32 44)
	push {r1,r2,r3}
	mov r0,#44
	bl putch
	pop {r1,r2,r3}
	@call void @putch(i32 32)
	push {r1,r2,r3}
	mov r0,#32
	bl putch
	pop {r1,r2,r3}
.hanoiL9:
	@call void @hanoi(i32 %r17,i32 %r2,i32 %r1,i32 %r3)
	push {r1,r2,r3}
	mov r0,r8
	mov r10,r2
	mov r2,r1
	mov r1,r10
	bl hanoi
	pop {r1,r2,r3}
.hanoiL4:
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.hanoiL2:
.hanoiL5:
.hanoiL7:
	@call void @putint(i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r1
	bl putint
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	push {r3}
	mov r0,#32
	bl putch
	pop {r3}
	@call void @putint(i32 %r3)
	push {r3}
	mov r0,r3
	bl putint
	pop {r3}
	@call void @putch(i32 44)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#44
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#32
	bl putch
	add sp,sp,#4 @stack align 8bytes
.hanoiL6:
	bl .hanoiL4
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r1 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
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
	@%r7 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @hanoi(i32 %r7,i32 1,i32 2,i32 3)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,#1
	mov r2,#2
	mov r3,#3
	bl hanoi
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
