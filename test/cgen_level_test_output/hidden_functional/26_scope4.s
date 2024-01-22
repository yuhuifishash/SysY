.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a:
	.word  0
sum:
	.word  0
count:
	.word  0
.text
.global main
.LPIC0:
	.word  a
.LPIC1:
	.word  count
.LPIC2:
	.word  sum
getA:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.getAL0:
.getAL1:
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,.LPIC1
	str r6,[r8]
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
f1:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.f1L0:
	str r0,[fp,#-16]
.f1L1:
	ldr r8,.LPIC2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	add r6,r7,r8
	ldr r8,.LPIC2
	str r6,[r8]
	@%r5 = call i32 @getA()
	sub sp,sp,#4 @stack align 8bytes
	bl getA
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-16]
	ldr r8,.LPIC2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	add r6,r7,r8
	ldr r8,.LPIC2
	str r6,[r8]
	mov r8,#1
	cmp r8,#0
	bne .f1L2
.f1L3:
	ldr r8,.LPIC2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	add r6,r7,r8
	ldr r8,.LPIC2
	str r6,[r8]
	ldr r8,.LPIC2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	add r6,r7,r8
	ldr r8,.LPIC2
	str r6,[r8]
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.f1L2:
	@%r12 = call i32 @getA()
	sub sp,sp,#4 @stack align 8bytes
	bl getA
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-12]
	ldr r8,.LPIC2
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	add r6,r7,r8
	ldr r8,.LPIC2
	str r6,[r8]
	bl .f1L3
f2:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.f2L0:
.f2L1:
	ldr r8,.LPIC2
	ldr r7,[r8]
	ldr r8,.LPIC0
	ldr r6,[r8]
	add r8,r7,r6
	ldr r7,.LPIC2
	str r8,[r7]
	@%r4 = call i32 @getA()
	bl getA
	mov r8,r0
	str r8,[fp,#-12]
	ldr r8,.LPIC2
	ldr r7,[r8]
	ldr r8,.LPIC0
	ldr r6,[r8]
	add r8,r7,r6
	ldr r7,.LPIC2
	str r8,[r7]
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
f3:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.f3L0:
.f3L1:
	@%r1 = call i32 @getA()
	sub sp,sp,#4 @stack align 8bytes
	bl getA
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-16]
	ldr r8,.LPIC2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	add r6,r7,r8
	ldr r8,.LPIC2
	str r6,[r8]
	@%r5 = call i32 @getA()
	sub sp,sp,#4 @stack align 8bytes
	bl getA
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-16]
	ldr r8,.LPIC2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	add r6,r7,r8
	ldr r8,.LPIC2
	str r6,[r8]
	@%r10 = call i32 @getA()
	sub sp,sp,#4 @stack align 8bytes
	bl getA
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-12]
	ldr r8,.LPIC2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	add r6,r7,r8
	ldr r8,.LPIC2
	str r6,[r8]
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#36
.mainL0:
.mainL1:
	mov r8,#0
	ldr r7,.LPIC2
	str r8,[r7]
	@%r1 = call i32 @getA()
	bl getA
	mov r8,r0
	ldr r7,.LPIC0
	str r8,[r7]
	ldr r8,.LPIC2
	ldr r7,[r8]
	ldr r8,.LPIC0
	ldr r6,[r8]
	add r8,r7,r6
	ldr r7,.LPIC2
	str r8,[r7]
	@%r6 = call i32 @getA()
	bl getA
	mov r8,r0
	str r8,[fp,#-36]
	ldr r8,[fp,#-36]
	@call void @f1(i32 %r7)
	mov r0,r8
	bl f1
	@call void @f2()
	bl f2
	@call void @f3()
	bl f3
	ldr r8,[fp,#-36]
	@call void @f1(i32 %r8)
	mov r0,r8
	bl f1
	@call void @f2()
	bl f2
	@call void @f3()
	bl f3
	@%r10 = call i32 @getA()
	bl getA
	mov r8,r0
	str r8,[fp,#-32]
	ldr r8,[fp,#-36]
	@call void @f1(i32 %r11)
	mov r0,r8
	bl f1
	@call void @f2()
	bl f2
	@call void @f3()
	bl f3
	@%r13 = call i32 @getA()
	bl getA
	mov r8,r0
	str r8,[fp,#-28]
	@%r15 = call i32 @getA()
	bl getA
	mov r8,r0
	str r8,[fp,#-24]
	ldr r8,[fp,#-24]
	@call void @f1(i32 %r16)
	mov r0,r8
	bl f1
	@call void @f2()
	bl f2
	@call void @f3()
	bl f3
	@%r18 = call i32 @getA()
	bl getA
	mov r8,r0
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	@call void @f1(i32 %r19)
	mov r0,r8
	bl f1
	@call void @f2()
	bl f2
	@call void @f3()
	bl f3
	@%r20 = call i32 @getA()
	bl getA
	mov r8,r0
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	@call void @f1(i32 %r21)
	mov r0,r8
	bl f1
	@call void @f2()
	bl f2
	@call void @f3()
	bl f3
	ldr r8,[fp,#-36]
	@call void @f1(i32 %r22)
	mov r0,r8
	bl f1
	@call void @f2()
	bl f2
	@call void @f3()
	bl f3
.mainL2:
	mov r8,#1
	cmp r8,#0
	bne .mainL3
.mainL4:
	ldr r8,.LPIC2
	ldr r7,[r8]
	@call void @putint(i32 %r56)
	mov r0,r7
	bl putint
	mov r8,#0
	mov r0,r8
	add sp,sp,#36
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL3:
.mainL5:
	mov r8,#1
	cmp r8,#0
	bne .mainL6
.mainL7:
	bl .mainL4
.mainL6:
	mov r8,#0
	str r8,[fp,#-16]
.mainL8:
	ldr r8,[fp,#-16]
	mov r7,#3
	cmp r8,r7
	blt .mainL9
.mainL10:
	bl .mainL7
.mainL9:
.mainL11:
	mov r8,#1
	cmp r8,#0
	bne .mainL12
.mainL13:
	ldr r8,[fp,#-16]
	mov r7,#1
	cmp r8,r7
	beq .mainL17
.mainL18:
	ldr r8,[fp,#-36]
	@call void @f1(i32 %r51)
	mov r0,r8
	bl f1
	@call void @f2()
	bl f2
	@call void @f3()
	bl f3
.mainL19:
	@%r52 = call i32 @getA()
	bl getA
	mov r8,r0
	str r8,[fp,#-36]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL8
.mainL17:
	@%r46 = call i32 @getA()
	bl getA
	mov r8,r0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @f1(i32 %r47)
	mov r0,r8
	bl f1
	@call void @f2()
	bl f2
	@call void @f3()
	bl f3
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .mainL8
.mainL12:
	mov r8,#1
	cmp r8,#0
	bne .mainL14
.mainL15:
	@%r39 = call i32 @getA()
	bl getA
	mov r8,r0
	str r8,[fp,#-36]
	bl .mainL11
.mainL14:
	ldr r8,[fp,#-36]
	@call void @f1(i32 %r38)
	mov r0,r8
	bl f1
	@call void @f2()
	bl f2
	@call void @f3()
	bl f3
	bl .mainL13
	.section	.note.GNU-stack,"",%progbits
