.arch armv7-a
.fpu vfpv3-d16
.arm
.data
array:
	.space  440
n:
	.word  0
.text
.global main
.LPIC0:
	.word  array
.LPIC1:
	.word  n
init:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.initL0:
	str r0,[fp,#-16]
.initL1:
	mov r8,#1
	str r8,[fp,#-12]
.initL2:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	ldr r6,[fp,#-16]
	mul r5,r7,r6
	mov r7,#1
	add r6,r5,r7
	cmp r8,r6
	ble .initL3
.initL4:
	add sp,sp,#16
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.initL3:
	mov r8,#1
	rsb r7,r8,#0
	ldr r8,[fp,#-12]
	mov r6,r8
	ldr r8,.LPIC0
	add r5,r8,r6,lsl #2
	str r7,[r5]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .initL2
findfa:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.findfaL0:
	str r0,[fp,#-12]
.findfaL1:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	ldr r7,[fp,#-12]
	cmp r8,r7
	beq .findfaL2
.findfaL3:
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	@%r13 = call i32 @findfa(i32 %r12)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl findfa
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-12]
	mov r6,r8
	ldr r8,.LPIC0
	add r5,r8,r6,lsl #2
	str r7,[r5]
	ldr r8,[fp,#-12]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r0,r8
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.findfaL2:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
mmerge:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.mmergeL0:
	str r0,[fp,#-20]
	str r1,[fp,#-24]
.mmergeL1:
	ldr r8,[fp,#-20]
	@%r6 = call i32 @findfa(i32 %r5)
	mov r0,r8
	bl findfa
	mov r7,r0
	str r7,[fp,#-16]
	ldr r8,[fp,#-24]
	@%r9 = call i32 @findfa(i32 %r8)
	mov r0,r8
	bl findfa
	mov r7,r0
	str r7,[fp,#-12]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	cmp r8,r7
	bne .mmergeL2
.mmergeL3:
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mmergeL2:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	str r8,[r5]
	bl .mmergeL3
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#44
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-44]
	mov r8,#0
	str r8,[fp,#-40]
	mov r8,#0
	str r8,[fp,#-36]
	mov r8,#0
	str r8,[fp,#-32]
	mov r8,#1
	str r8,[fp,#-44]
.mainL2:
	ldr r8,[fp,#-44]
	cmp r8,#0
	bne .mainL3
.mainL4:
	mov r8,#0
	mov r0,r8
	add sp,sp,#44
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	ldr r8,[fp,#-44]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-44]
	mov r8,#4
	ldr r7,.LPIC1
	str r8,[r7]
	mov r8,#10
	str r8,[fp,#-40]
	mov r8,#0
	str r8,[fp,#-28]
	mov r8,#0
	str r8,[fp,#-24]
	ldr r8,.LPIC1
	ldr r7,[r8]
	@call void @init(i32 %r20)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl init
	add sp,sp,#4 @stack align 8bytes
	ldr r8,.LPIC1
	ldr r7,[r8]
	ldr r8,.LPIC1
	ldr r6,[r8]
	mul r8,r7,r6
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL5:
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-40]
	cmp r8,r7
	blt .mainL6
.mainL7:
	ldr r8,[fp,#-24]
	cmp r8,#0
	beq .mainL36
.mainL37:
	bl .mainL2
.mainL36:
	mov r8,#1
	rsb r7,r8,#0
	@call void @putint(i32 %r201)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r202)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	bl .mainL37
.mainL6:
	@%r32 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-36]
	@%r33 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	str r8,[fp,#-32]
	ldr r8,[fp,#-24]
	cmp r8,#0
	beq .mainL8
.mainL9:
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-28]
	bl .mainL5
.mainL8:
	ldr r8,.LPIC1
	ldr r7,[r8]
	ldr r8,[fp,#-36]
	mov r6,#1
	sub r5,r8,r6
	mul r8,r7,r5
	ldr r7,[fp,#-32]
	add r6,r8,r7
	str r6,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-16]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-36]
	mov r7,#1
	cmp r8,r7
	beq .mainL10
.mainL11:
	ldr r8,[fp,#-36]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	beq .mainL12
.mainL13:
	ldr r8,[fp,#-32]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL16
.mainL15:
	ldr r8,[fp,#-32]
	mov r7,#1
	cmp r8,r7
	bgt .mainL20
.mainL19:
	ldr r8,[fp,#-36]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL24
.mainL23:
	ldr r8,[fp,#-36]
	mov r7,#1
	cmp r8,r7
	bgt .mainL28
.mainL27:
	mov r8,#0
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bne .mainL34
.mainL31:
	bl .mainL9
.mainL34:
	ldr r8,[fp,#-20]
	mov r7,r8
	ldr r8,.LPIC0
	add r6,r8,r7,lsl #2
	ldr r8,[r6]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	beq .mainL31
.mainL32:
	mov r8,#0
	@%r177 = call i32 @findfa(i32 %r176)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl findfa
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-20]
	@%r179 = call i32 @findfa(i32 %r178)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl findfa
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r7,r6
	bne .mainL31
.mainL30:
	mov r8,#1
	str r8,[fp,#-24]
	ldr r8,[fp,#-28]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r191)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r192)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	bl .mainL31
.mainL28:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC1
	ldr r6,[r7]
	sub r7,r8,r6
	mov r8,r7
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	beq .mainL27
.mainL26:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-16]
	ldr r6,.LPIC1
	ldr r5,[r6]
	sub r6,r7,r5
	@call void @mmerge(i32 %r153,i32 %r156)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r6
	bl mmerge
	add sp,sp,#4 @stack align 8bytes
	bl .mainL27
.mainL24:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC1
	ldr r6,[r7]
	add r7,r8,r6
	mov r8,r7
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	beq .mainL23
.mainL22:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-16]
	ldr r6,.LPIC1
	ldr r5,[r6]
	add r6,r7,r5
	@call void @mmerge(i32 %r131,i32 %r134)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r6
	bl mmerge
	add sp,sp,#4 @stack align 8bytes
	bl .mainL23
.mainL20:
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	mov r8,r6
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	beq .mainL19
.mainL18:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-16]
	mov r6,#1
	sub r5,r7,r6
	@call void @mmerge(i32 %r109,i32 %r112)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r5
	bl mmerge
	add sp,sp,#4 @stack align 8bytes
	bl .mainL19
.mainL16:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	mov r8,r6
	ldr r7,.LPIC0
	add r6,r7,r8,lsl #2
	ldr r8,[r6]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	beq .mainL15
.mainL14:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-16]
	mov r6,#1
	add r5,r7,r6
	@call void @mmerge(i32 %r87,i32 %r90)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r5
	bl mmerge
	add sp,sp,#4 @stack align 8bytes
	bl .mainL15
.mainL12:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-20]
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-20]
	@call void @mmerge(i32 %r67,i32 %r68)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl mmerge
	add sp,sp,#4 @stack align 8bytes
	bl .mainL13
.mainL10:
	mov r8,#0
	mov r7,#0
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	str r8,[r5]
	ldr r8,[fp,#-16]
	mov r7,#0
	@call void @mmerge(i32 %r57,i32 %r58)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl mmerge
	add sp,sp,#4 @stack align 8bytes
	bl .mainL11
	.section	.note.GNU-stack,"",%progbits
