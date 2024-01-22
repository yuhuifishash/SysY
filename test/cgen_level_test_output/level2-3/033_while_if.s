.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
get_one:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#12
.get_oneL0:
	str r0,[fp,#-12]
.get_oneL1:
	mov r8,#1
	mov r0,r8
	add sp,sp,#12
	pop {r8}
	pop {fp,pc}
deepWhileBr:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#28
.deepWhileBrL0:
	str r0,[fp,#-24]
	str r1,[fp,#-28]
.deepWhileBrL1:
	mov r8,#0
	str r8,[fp,#-20]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-28]
	add r6,r8,r7
	str r6,[fp,#-20]
.deepWhileBrL2:
	ldr r8,[fp,#-20]
	mov r7,#75
	cmp r8,r7
	blt .deepWhileBrL3
.deepWhileBrL4:
	ldr r8,[fp,#-20]
	mov r0,r8
	add sp,sp,#28
	pop {r6,r7,r8}
	pop {fp,pc}
.deepWhileBrL3:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#42
	str r8,[fp,#-16]
	ldr r8,[fp,#-20]
	mov r7,#100
	cmp r8,r7
	blt .deepWhileBrL5
.deepWhileBrL6:
	bl .deepWhileBrL2
.deepWhileBrL5:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	add r6,r8,r7
	str r6,[fp,#-20]
	ldr r8,[fp,#-20]
	mov r7,#99
	cmp r8,r7
	bgt .deepWhileBrL7
.deepWhileBrL8:
	bl .deepWhileBrL6
.deepWhileBrL7:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,#2
	mul r6,r8,r7
	str r6,[fp,#-12]
	mov r8,#0
	@%r36 = call i32 @get_one(i32 %r35)
	mov r0,r8
	bl get_one
	mov r7,r0
	mov r8,#1
	cmp r7,r8
	beq .deepWhileBrL9
.deepWhileBrL10:
	bl .deepWhileBrL8
.deepWhileBrL9:
	ldr r8,[fp,#-12]
	mov r7,#2
	mul r6,r8,r7
	str r6,[fp,#-20]
	bl .deepWhileBrL10
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#2
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-12]
	@%r5 = call i32 @deepWhileBr(i32 %r3,i32 %r4)
	mov r0,r8
	mov r1,r7
	bl deepWhileBr
	mov r6,r0
	str r6,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r6)
	mov r0,r8
	bl putint
	mov r8,#0
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
