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
QuickSort:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#28
.QuickSortL0:
	mov r9,r1
	str r9,[fp,#-16]
	mov r9,r2
	str r9,[fp,#-12]
.QuickSortL1:
	ldr r9,[fp,#-16]
	ldr r10,[fp,#-12]
	cmp r9,r10
	blt .QuickSortL2
.QuickSortL3:
	mov r0,#0
	add sp,sp,#28
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.QuickSortL2:
	ldr r9,[fp,#-16]
	mov r8,r9
	add r7,r0,r8,lsl #2
	ldr r9,[r7]
	str r9,[fp,#-24]
	ldr r9,[fp,#-16]
	ldr r10,[fp,#-12]
	cmp r9,r10
	blt .QuickSortL28
.QuickSortL32:
	ldr r9,[fp,#-16]
	mov r10,r9
	str r10,[fp,#-20]
.QuickSortL7:
	ldr r9,[fp,#-20]
	mov r6,r9
	add r5,r0,r6,lsl #2
	ldr r9,[fp,#-24]
	str r9,[r5]
	ldr r9,[fp,#-20]
	sub r6,r9,#1
	mov r5,r0
	@%r138 = call i32 @QuickSort(ptr %r135,i32 %r1,i32 %r134)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2}
	mov r0,r5
	ldr r1,[fp,#-16]
	mov r2,r6
	bl QuickSort
	mov r4,r0
	pop {r0,r1,r2}
	add sp,sp,#4 @stack align 8bytes
	ldr r9,[fp,#-20]
	add r6,r9,#1
	@%r145 = call i32 @QuickSort(ptr %r135,i32 %r141,i32 %r2)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2}
	mov r0,r5
	mov r1,r6
	ldr r2,[fp,#-12]
	bl QuickSort
	mov r4,r0
	pop {r0,r1,r2}
	add sp,sp,#4 @stack align 8bytes
	bl .QuickSortL3
.QuickSortL28:
	ldr r9,[fp,#-12]
	mov r10,r9
	str r10,[fp,#-28]
	ldr r9,[fp,#-16]
	mov r5,r9
.QuickSortL5:
	ldr r9,[fp,#-28]
	cmp r5,r9
	blt .QuickSortL12
.QuickSortL35:
	ldr r9,[fp,#-28]
	mov r4,r9
.QuickSortL11:
	cmp r5,r4
	blt .QuickSortL16
.QuickSortL39:
	mov r3,r5
.QuickSortL17:
	cmp r3,r4
	blt .QuickSortL22
.QuickSortL41:
	mov r2,r3
.QuickSortL21:
	cmp r2,r4
	blt .QuickSortL26
.QuickSortL45:
	mov r1,r4
.QuickSortL27:
.QuickSortL6:
	cmp r2,r1
	blt .QuickSortL31
.QuickSortL33:
	mov r9,r2
	str r9,[fp,#-20]
	bl .QuickSortL7
.QuickSortL31:
	mov r9,r1
	str r9,[fp,#-28]
	mov r5,r2
	bl .QuickSortL5
.QuickSortL26:
	mov r7,r2
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r8,r4
	add r6,r0,r8,lsl #2
	str r7,[r6]
	sub r8,r4,#1
	mov r1,r8
	bl .QuickSortL27
.QuickSortL22:
	mov r8,r3
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	ldr r9,[fp,#-24]
	cmp r8,r9
	blt .QuickSortL30
.QuickSortL43:
	mov r2,r3
	bl .QuickSortL21
.QuickSortL30:
	mov r8,r3
.QuickSortL19:
	add r7,r8,#1
.QuickSortL20:
	cmp r7,r4
	blt .QuickSortL24
.QuickSortL42:
	mov r2,r7
	bl .QuickSortL21
.QuickSortL24:
	mov r6,r7
	add r1,r0,r6,lsl #2
	ldr r6,[r1]
	ldr r9,[fp,#-24]
	cmp r6,r9
	blt .QuickSortL40
.QuickSortL44:
	mov r2,r7
	bl .QuickSortL21
.QuickSortL40:
	mov r8,r7
	bl .QuickSortL19
.QuickSortL16:
	mov r8,r4
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	mov r7,r5
	add r6,r0,r7,lsl #2
	str r8,[r6]
	add r8,r5,#1
	mov r3,r8
	bl .QuickSortL17
.QuickSortL12:
	ldr r9,[fp,#-28]
	mov r8,r9
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	ldr r9,[fp,#-24]
	sub r7,r9,#1
	cmp r8,r7
	bgt .QuickSortL29
.QuickSortL37:
	ldr r9,[fp,#-28]
	mov r4,r9
	bl .QuickSortL11
.QuickSortL29:
	ldr r9,[fp,#-28]
	mov r8,r9
.QuickSortL9:
	sub r7,r8,#1
.QuickSortL10:
	cmp r5,r7
	blt .QuickSortL14
.QuickSortL36:
	mov r4,r7
	bl .QuickSortL11
.QuickSortL14:
	mov r6,r7
	add r3,r0,r6,lsl #2
	ldr r6,[r3]
	ldr r9,[fp,#-24]
	sub r3,r9,#1
	cmp r6,r3
	bgt .QuickSortL34
.QuickSortL38:
	mov r4,r7
	bl .QuickSortL11
.QuickSortL34:
	mov r8,r7
	bl .QuickSortL9
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#48
.mainL0:
.mainL1:
	mov r8,#10
	ldr r7,.LPIC0
	str r8,[r7]
	mvn r8,#47
	add r7,fp,r8
	mov r8,#4
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
	mov r8,#2
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
	mov r8,#6
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
	@%r41 = call i32 @QuickSort(ptr %r38,i32 0,i32 9)
	mov r0,r7
	mov r1,#0
	mov r2,#9
	bl QuickSort
	mov r8,r0
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL6
.mainL5:
	mov r0,#0
	add sp,sp,#48
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL6:
	mov r7,r8
.mainL3:
	mov r8,r7
	mvn r6,#47
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	ldr r8,[r6]
	@call void @putint(i32 %r51)
	mov r0,r8
	bl putint
	@call void @putch(i32 10)
	mov r0,#10
	bl putch
	add r8,r7,#1
.mainL4:
	ldr r6,.LPIC0
	ldr r5,[r6]
	cmp r8,r5
	bge .mainL5
.mainL7:
	mov r7,r8
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
