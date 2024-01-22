.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#48
.mainL0:
.mainL1:
	mvn r8,#47
	add r7,fp,r8
	mov r8,#3
	str r8,[r7]
	mov r8,#1
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#2
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#9
	str r8,[r7]
	mov r8,#3
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#0
	str r8,[r7]
	mov r8,#4
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#0
	str r8,[r7]
	mov r8,#5
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#6
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#7
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mov r8,#8
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#7
	str r8,[r7]
	mov r8,#9
	mvn r7,#47
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#8
	str r8,[r7]
	mvn r8,#47
	add r7,fp,r8
	@%r40 = call i32 @removeElement(ptr %r37,i32 10,i32 3)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#10
	mov r2,#3
	bl removeElement
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#48
	pop {r6,r7,r8}
	pop {fp,pc}
removeElement:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.removeElementL0:
.removeElementL1:
	cmp r1,#0
	bgt .removeElementL9
.removeElementL11:
	mov r8,r1
.removeElementL5:
	mov r0,r8
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.removeElementL9:
	mov r7,#0
	mov r6,r1
.removeElementL3:
	mov r5,r7
	add r4,r0,r5,lsl #2
	ldr r5,[r4]
	cmp r5,r2
	beq .removeElementL6
.removeElementL7:
	add r5,r7,#1
	mov r4,r5
	mov r5,r6
.removeElementL8:
.removeElementL4:
	cmp r4,r5
	blt .removeElementL10
.removeElementL12:
	mov r8,r5
	bl .removeElementL5
.removeElementL10:
	mov r7,r4
	mov r6,r5
	bl .removeElementL3
.removeElementL6:
	sub r8,r6,#1
	mov r6,r8
	add r3,r0,r6,lsl #2
	ldr r6,[r3]
	mov r3,r7
	add r1,r0,r3,lsl #2
	str r6,[r1]
	mov r4,r7
	mov r5,r8
	bl .removeElementL8
	.section	.note.GNU-stack,"",%progbits
