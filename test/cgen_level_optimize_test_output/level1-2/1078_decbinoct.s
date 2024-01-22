.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
dec2bin:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.dec2binL0:
.dec2binL1:
	cmp r0,#0
	bne .dec2binL6
.dec2binL8:
	mov r8,#0
.dec2binL5:
	mov r0,r8
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.dec2binL6:
	mov r7,r0
	mov r6,#1
	mov r5,#0
.dec2binL3:
	cmp r7,#0
	and r4,r7,#1
	it lt
	rsblt r4,r4,#0
	mul r3,r6,r4
	add r4,r3,r5
	mov r3,#10
	mul r2,r6,r3
	add r3,r7,r7,lsr #31
	asr r1,r3,#1
.dec2binL4:
	cmp r1,#0
	bne .dec2binL7
.dec2binL9:
	mov r8,r4
	bl .dec2binL5
.dec2binL7:
	mov r7,r1
	mov r6,r2
	mov r5,r4
	bl .dec2binL3
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r6 = call i32 @dec2bin(i32 400)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#400
	bl dec2bin
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r6)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r0,#0
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
