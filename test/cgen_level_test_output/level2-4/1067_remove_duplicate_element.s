.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#56
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-56]
	mov r8,#3
	mov r7,#0
	mov r6,r7
	mvn r7,#51
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#3
	mov r7,#1
	mov r6,r7
	mvn r7,#51
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#9
	mov r7,#2
	mov r6,r7
	mvn r7,#51
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	mov r7,#3
	mov r6,r7
	mvn r7,#51
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	mov r7,#4
	mov r6,r7
	mvn r7,#51
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#1
	mov r7,#5
	mov r6,r7
	mvn r7,#51
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#1
	mov r7,#6
	mov r6,r7
	mvn r7,#51
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#5
	mov r7,#7
	mov r6,r7
	mvn r7,#51
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#7
	mov r7,#8
	mov r6,r7
	mvn r7,#51
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#8
	mov r7,#9
	mov r6,r7
	mvn r7,#51
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#10
	str r8,[fp,#-56]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#3
	str r8,[fp,#-12]
	mvn r8,#51
	add r7,fp,r8
	ldr r8,[fp,#-56]
	ldr r6,[fp,#-12]
	@%r40 = call i32 @removeElement(ptr %r37,i32 %r38,i32 %r39)
	mov r0,r7
	mov r1,r8
	mov r2,r6
	bl removeElement
	mov r5,r0
	str r5,[fp,#-56]
	ldr r8,[fp,#-56]
	mov r0,r8
	add sp,sp,#56
	pop {r5,r6,r7,r8}
	pop {fp,pc}
removeElement:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.removeElementL0:
	str r1,[fp,#-16]
	str r2,[fp,#-20]
.removeElementL1:
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-12]
.removeElementL2:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	blt .removeElementL3
.removeElementL4:
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#20
	pop {r6,r7,r8}
	pop {fp,pc}
.removeElementL3:
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-20]
	cmp r7,r8
	beq .removeElementL5
.removeElementL6:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.removeElementL7:
	bl .removeElementL2
.removeElementL5:
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	mov r8,r6
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	ldr r7,[fp,#-12]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-16]
	bl .removeElementL7
	.section	.note.GNU-stack,"",%progbits
