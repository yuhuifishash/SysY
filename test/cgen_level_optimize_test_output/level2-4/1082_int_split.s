.arch armv7-a
.fpu vfpv3-d16
.arm
.data
N:
	.word  0
newline:
	.word  0
.text
.global main
.LPIC0:
	.word  N
.LPIC1:
	.word  newline
split:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.splitL0:
.splitL1:
	ldr r8,.LPIC0
	ldr r7,[r8]
	sub r8,r7,#1
	mvn r7,#0
	cmp r8,r7
	bne .splitL6
.splitL5:
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.splitL6:
	mov r7,r8
	mov r8,r0
.splitL3:
	movw r6,#26215
	movt r6,#26214  @ 1717986919
	smmul r6,r8,r6
	asr r5,r8,#31
	rsb r6,r5,r6,asr #2
	mov r5,#10
	mul r6,r6,r5
	sub r5,r8,r6
	mov r6,r7
	add r4,r1,r6,lsl #2
	str r5,[r4]
	movw r6,#26215
	movt r6,#26214  @ 1717986919
	smmul r6,r8,r6
	asr r5,r8,#31
	rsb r4,r5,r6,asr #2
	sub r6,r7,#1
.splitL4:
	mvn r5,#0
	cmp r6,r5
	beq .splitL5
.splitL7:
	mov r7,r6
	mov r8,r4
	bl .splitL3
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.mainL0:
.mainL1:
	mov r8,#4
	ldr r7,.LPIC0
	str r8,[r7]
	mov r8,#10
	ldr r7,.LPIC1
	str r8,[r7]
	mvn r8,#23
	add r7,fp,r8
	@%r10 = call i32 @split(i32 1478,ptr %r9)
	movw r0,#1478
	movt r0,#0  @ 1478
	mov r1,r7
	bl split
	mov r8,r0
.mainL6:
	mov r8,#0
.mainL3:
	mov r7,r8
	mvn r6,#23
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	ldr r7,[r6]
	@call void @putint(i32 %r21)
	mov r0,r7
	bl putint
	ldr r7,.LPIC1
	ldr r6,[r7]
	@call void @putch(i32 %r23)
	mov r0,r6
	bl putch
	add r7,r8,#1
.mainL4:
	cmp r7,#4
	blt .mainL7
.mainL5:
	mov r0,#0
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL7:
	mov r8,r7
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
