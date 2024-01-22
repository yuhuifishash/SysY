.arch armv7-a
.fpu vfpv3-d16
.arm
.data
N:
	.word  10000
.text
.global main
.LPIC0:
	.word  N
long_array:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	movw r9,#54492
	movt r9,#1  @ 120028
	sub sp,sp,r9
.long_arrayL0:
	movw r8,#11044
	movt r8,#65534  @ -120028
	mov r7,r8
	str r0,[fp,r7]
.long_arrayL1:
	mov r8,#0
	str r8,[fp,#-24]
.long_arrayL2:
	ldr r8,[fp,#-24]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .long_arrayL3
.long_arrayL4:
	mov r8,#0
	str r8,[fp,#-24]
.long_arrayL5:
	ldr r8,[fp,#-24]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .long_arrayL6
.long_arrayL7:
	mov r8,#0
	str r8,[fp,#-24]
.long_arrayL8:
	ldr r8,[fp,#-24]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .long_arrayL9
.long_arrayL10:
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-24]
.long_arrayL11:
	ldr r8,[fp,#-24]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .long_arrayL12
.long_arrayL13:
	ldr r8,[fp,#-20]
	mov r0,r8
	movw r9,#54492
	movt r9,#1  @ 120028
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.long_arrayL12:
	ldr r8,[fp,#-24]
	mov r7,#10
	cmp r8,r7
	blt .long_arrayL14
.long_arrayL15:
	ldr r8,[fp,#-24]
	mov r7,#20
	cmp r8,r7
	blt .long_arrayL17
.long_arrayL18:
	ldr r8,[fp,#-24]
	mov r7,#30
	cmp r8,r7
	blt .long_arrayL23
.long_arrayL24:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	mov r6,r7
	movw r7,#25512
	movt r7,#65535  @ -40024
	add r5,fp,r7
	add r4,r5,r6,lsl #2
	ldr r6,[r4]
	movw r5,#11044
	movt r5,#65534  @ -120028
	mov r7,r5
	ldr r5,[fp,r7]
	mul r7,r6,r5
	add r6,r8,r7
	movw r8,#34452
	movt r8,#1  @ 99988
	mov r7,r8
	@%r168 = call i32 @__modsi3(i32 %r166,i32 %r167)
	mov r0,r6
	mov r1,r7
	bl __modsi3
	mov r8,r0
	str r8,[fp,#-20]
.long_arrayL25:
.long_arrayL19:
.long_arrayL16:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .long_arrayL11
.long_arrayL23:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#2
	@%r122 = call i32 @__aeabi_idiv(i32 %r120,i32 %r121)
	mov r0,r7
	mov r1,r8
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-12]
.long_arrayL26:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .long_arrayL27
.long_arrayL28:
	ldr r8,[fp,#-20]
	@call void @putint(i32 %r159)
	mov r0,r8
	bl putint
	bl .long_arrayL25
.long_arrayL27:
	ldr r8,[fp,#-12]
	movw r7,#2233
	movt r7,#0  @ 2233
	mov r6,r7
	cmp r8,r6
	bgt .long_arrayL29
.long_arrayL30:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	mov r6,r7
	movw r7,#11048
	movt r7,#65534  @ -120024
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	ldr r8,[fp,#-12]
	mov r6,r8
	movw r8,#25512
	movt r8,#65535  @ -40024
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	movw r7,#13333
	movt r7,#0  @ 13333
	mov r6,r7
	@%r155 = call i32 @__modsi3(i32 %r153,i32 %r154)
	mov r0,r8
	mov r1,r6
	bl __modsi3
	mov r7,r0
	str r7,[fp,#-20]
	ldr r8,[fp,#-12]
	mov r7,#2
	add r6,r8,r7
	str r6,[fp,#-12]
.long_arrayL31:
	bl .long_arrayL26
.long_arrayL29:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	mov r6,r7
	movw r7,#51048
	movt r7,#65534  @ -80024
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	ldr r8,[fp,#-12]
	mov r6,r8
	movw r8,#11048
	movt r8,#65534  @ -120024
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	ldr r6,[r8]
	sub r8,r7,r6
	str r8,[fp,#-20]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .long_arrayL31
.long_arrayL17:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#2
	@%r95 = call i32 @__aeabi_idiv(i32 %r93,i32 %r94)
	mov r0,r7
	mov r1,r8
	bl __aeabi_idiv
	mov r6,r0
	str r6,[fp,#-16]
.long_arrayL20:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .long_arrayL21
.long_arrayL22:
	ldr r8,[fp,#-20]
	@call void @putint(i32 %r113)
	mov r0,r8
	bl putint
	bl .long_arrayL19
.long_arrayL21:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	mov r6,r7
	movw r7,#25512
	movt r7,#65535  @ -40024
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	ldr r8,[fp,#-16]
	mov r6,r8
	movw r8,#11048
	movt r8,#65534  @ -120024
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	ldr r6,[r8]
	sub r8,r7,r6
	str r8,[fp,#-20]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .long_arrayL20
.long_arrayL14:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	mov r6,r7
	movw r7,#25512
	movt r7,#65535  @ -40024
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	movw r8,#1333
	movt r8,#0  @ 1333
	mov r6,r8
	@%r85 = call i32 @__modsi3(i32 %r83,i32 %r84)
	mov r0,r7
	mov r1,r6
	bl __modsi3
	mov r8,r0
	str r8,[fp,#-20]
	ldr r8,[fp,#-20]
	@call void @putint(i32 %r86)
	mov r0,r8
	bl putint
	bl .long_arrayL16
.long_arrayL9:
	ldr r8,[fp,#-24]
	mov r7,r8
	movw r8,#51048
	movt r8,#65534  @ -80024
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-24]
	mov r6,r8
	movw r8,#51048
	movt r8,#65534  @ -80024
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	ldr r6,[r8]
	mul r8,r7,r6
	mov r7,#100
	@%r56 = call i32 @__modsi3(i32 %r54,i32 %r55)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	ldr r8,[fp,#-24]
	mov r7,r8
	movw r8,#11048
	movt r8,#65534  @ -120024
	add r5,fp,r8
	add r8,r5,r7,lsl #2
	ldr r7,[r8]
	add r8,r6,r7
	ldr r7,[fp,#-24]
	mov r6,r7
	movw r7,#25512
	movt r7,#65535  @ -40024
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .long_arrayL8
.long_arrayL6:
	ldr r8,[fp,#-24]
	mov r7,r8
	movw r8,#11048
	movt r8,#65534  @ -120024
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-24]
	mov r6,r8
	movw r8,#11048
	movt r8,#65534  @ -120024
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	ldr r6,[r8]
	mul r8,r7,r6
	mov r7,#10
	@%r36 = call i32 @__modsi3(i32 %r34,i32 %r35)
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	ldr r8,[fp,#-24]
	mov r7,r8
	movw r8,#51048
	movt r8,#65534  @ -80024
	add r5,fp,r8
	add r8,r5,r7,lsl #2
	str r6,[r8]
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .long_arrayL5
.long_arrayL3:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-24]
	mul r6,r8,r7
	mov r8,#10
	@%r16 = call i32 @__modsi3(i32 %r14,i32 %r15)
	mov r0,r6
	mov r1,r8
	bl __modsi3
	mov r7,r0
	ldr r8,[fp,#-24]
	mov r6,r8
	movw r8,#11048
	movt r8,#65534  @ -120024
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	str r7,[r8]
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .long_arrayL2
main:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	mov r8,#9
	@%r1 = call i32 @long_array(i32 %r0)
	mov r0,r8
	bl long_array
	mov r7,r0
	mov r0,r7
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
