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
QuickSort:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#32
.QuickSortL0:
	str r1,[fp,#-28]
	str r2,[fp,#-32]
.QuickSortL1:
	ldr r8,[fp,#-28]
	ldr r7,[fp,#-32]
	cmp r8,r7
	blt .QuickSortL2
.QuickSortL3:
	mov r8,#0
	mov r0,r8
	add sp,sp,#32
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.QuickSortL2:
	mov r8,#0
	str r8,[fp,#-24]
	ldr r8,[fp,#-28]
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	ldr r8,[fp,#-32]
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-28]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-16]
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .QuickSortL5
.QuickSortL7:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-24]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-24]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
	mov r8,r0
	ldr r7,[fp,#-28]
	ldr r6,[fp,#-12]
	@%r138 = call i32 @QuickSort(ptr %r135,i32 %r136,i32 %r137)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl QuickSort
	mov r5,r0
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	str r5,[fp,#-12]
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	mov r8,r0
	ldr r7,[fp,#-12]
	ldr r6,[fp,#-32]
	@%r145 = call i32 @QuickSort(ptr %r142,i32 %r143,i32 %r144)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	mov r0,r8
	mov r1,r7
	mov r2,r6
	bl QuickSort
	mov r5,r0
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	str r5,[fp,#-12]
	bl .QuickSortL3
.QuickSortL5:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .QuickSortL12
.QuickSortL11:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .QuickSortL16
.QuickSortL17:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .QuickSortL22
.QuickSortL21:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .QuickSortL26
.QuickSortL27:
.QuickSortL6:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .QuickSortL5
	bge .QuickSortL7
.QuickSortL26:
	ldr r8,[fp,#-24]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-20]
	mov r6,r8
	add r8,r0,r6,lsl #2
	str r7,[r8]
	ldr r8,[fp,#-20]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-20]
	bl .QuickSortL27
.QuickSortL22:
	ldr r8,[fp,#-24]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	cmp r7,r8
	bge .QuickSortL21
.QuickSortL19:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
.QuickSortL20:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	cmp r8,r7
	bge .QuickSortL21
.QuickSortL24:
	ldr r8,[fp,#-24]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	cmp r7,r8
	blt .QuickSortL19
	bge .QuickSortL21
.QuickSortL16:
	ldr r8,[fp,#-20]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-24]
	mov r6,r8
	add r8,r0,r6,lsl #2
	str r7,[r8]
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .QuickSortL17
.QuickSortL12:
	ldr r8,[fp,#-20]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	mov r6,#1
	sub r5,r8,r6
	cmp r7,r5
	ble .QuickSortL11
.QuickSortL9:
	ldr r8,[fp,#-20]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-20]
.QuickSortL10:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	cmp r8,r7
	bge .QuickSortL11
.QuickSortL14:
	ldr r8,[fp,#-20]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	mov r6,#1
	sub r5,r8,r6
	cmp r7,r5
	bgt .QuickSortL9
	ble .QuickSortL11
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#60
.mainL0:
.mainL1:
	mov r8,#10
	ldr r7,.LPIC0
	str r8,[r7]
	mov r8,#4
	mov r7,#0
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#3
	mov r7,#1
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#9
	mov r7,#2
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#2
	mov r7,#3
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	mov r7,#4
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#1
	mov r7,#5
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#6
	mov r7,#6
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#5
	mov r7,#7
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#7
	mov r7,#8
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#8
	mov r7,#9
	mov r6,r7
	mvn r7,#59
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#9
	str r8,[fp,#-16]
	mvn r8,#59
	add r7,fp,r8
	ldr r8,[fp,#-20]
	ldr r6,[fp,#-16]
	@%r41 = call i32 @QuickSort(ptr %r38,i32 %r39,i32 %r40)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r8
	mov r2,r6
	bl QuickSort
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	str r5,[fp,#-20]
	ldr r8,[fp,#-20]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
.mainL5:
	mov r8,#0
	mov r0,r8
	add sp,sp,#60
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL3:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-20]
	mov r7,r8
	mvn r8,#59
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r52)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	@call void @putch(i32 %r54)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.mainL4:
	ldr r8,[fp,#-20]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .mainL3
	bge .mainL5
	.section	.note.GNU-stack,"",%progbits
