.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
max_sum_nonadjacent:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#76
.max_sum_nonadjacentL0:
.max_sum_nonadjacentL1:
	mvn r8,#71
	add r7,fp,r8
	@call void @memset(i32 %r62,i32 0,i32 64)
	push {r0,r1}
	mov r0,r7
	mov r1,#0
	mov r2,#64
	bl memset
	pop {r0,r1}
	mov r8,r0
	ldr r7,[r8]
	mvn r6,#71
	add r5,fp,r6
	str r7,[r5]
	ldr r7,[r8]
	mov r8,#1
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
.max_sum_nonadjacentL6:
.max_sum_nonadjacentL8:
	cmp r7,r8
	beq .max_sum_nonadjacentL9
.max_sum_nonadjacentL10:
	cmp r7,r8
	bgt .max_sum_nonadjacentL11
.max_sum_nonadjacentL12:
	mov r9,r8
	str r9,[fp,#-76]
.max_sum_nonadjacentL7:
	mov r8,#1
	mvn r5,#71
	add r4,fp,r5
	add r5,r4,r8,lsl #2
	ldr r9,[fp,#-76]
	str r9,[r5]
	cmp r1,#2
	bgt .max_sum_nonadjacentL20
.max_sum_nonadjacentL5:
	sub r8,r1,#1
	mov r5,r8
	mvn r8,#71
	add r4,fp,r8
	add r8,r4,r5,lsl #2
	ldr r5,[r8]
	mov r0,r5
	add sp,sp,#76
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.max_sum_nonadjacentL20:
	mov r8,#2
.max_sum_nonadjacentL3:
	sub r5,r8,#2
	mov r4,r5
	mvn r5,#71
	add r3,fp,r5
	add r5,r3,r4,lsl #2
	ldr r4,[r5]
	mov r5,r8
	add r3,r0,r5,lsl #2
	ldr r5,[r3]
	add r3,r4,r5
	sub r5,r8,#1
	mov r4,r5
	mvn r5,#71
	add r2,fp,r5
	add r5,r2,r4,lsl #2
	ldr r4,[r5]
.max_sum_nonadjacentL13:
.max_sum_nonadjacentL15:
	cmp r3,r4
	beq .max_sum_nonadjacentL16
.max_sum_nonadjacentL17:
	cmp r3,r4
	bgt .max_sum_nonadjacentL18
.max_sum_nonadjacentL19:
	mov r5,r4
.max_sum_nonadjacentL14:
	mov r4,r8
	mvn r2,#71
	add r6,fp,r2
	add r2,r6,r4,lsl #2
	str r5,[r2]
	add r6,r8,#1
.max_sum_nonadjacentL4:
	cmp r6,r1
	bge .max_sum_nonadjacentL5
.max_sum_nonadjacentL21:
	mov r8,r6
	bl .max_sum_nonadjacentL3
.max_sum_nonadjacentL18:
	mov r5,r3
	bl .max_sum_nonadjacentL14
.max_sum_nonadjacentL16:
	mov r5,r3
	bl .max_sum_nonadjacentL14
.max_sum_nonadjacentL11:
	mov r9,r7
	str r9,[fp,#-76]
	bl .max_sum_nonadjacentL7
.max_sum_nonadjacentL9:
	mov r9,r7
	str r9,[fp,#-76]
	bl .max_sum_nonadjacentL7
longest_common_subseq:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	movw r9,#1044
	movt r9,#0  @ 1044
	sub sp,sp,r9
.longest_common_subseqL0:
	mov r9,r2
	str r9,[fp,#-1044]
	mov r9,r1
	str r9,[fp,#-1040]
	mov r9,r0
	str r9,[fp,#-1036]
.longest_common_subseqL1:
	movw r8,#64504
	movt r8,#65535  @ -1032
	add r7,fp,r8
	@call void @memset(i32 %r101,i32 0,i32 1024)
	push {r0,r1,r2,r3}
	mov r0,r7
	mov r1,#0
	mov r2,#1024
	bl memset
	pop {r0,r1,r2,r3}
	ldr r9,[fp,#-1040]
	cmp r9,#1
	bge .longest_common_subseqL21
.longest_common_subseqL5:
	ldr r9,[fp,#-1040]
	lsl r8,r9,#4
	mov r7,r8
	add r7,r7,r3
	movw r8,#64504
	movt r8,#65535  @ -1032
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	mov r0,r7
	movw r9,#1044
	movt r9,#0  @ 1044
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.longest_common_subseqL21:
	mov r8,#1
.longest_common_subseqL3:
	cmp r3,#1
	bge .longest_common_subseqL20
.longest_common_subseqL9:
	add r7,r8,#1
.longest_common_subseqL4:
	ldr r9,[fp,#-1040]
	cmp r7,r9
	bgt .longest_common_subseqL5
.longest_common_subseqL22:
	mov r8,r7
	bl .longest_common_subseqL3
.longest_common_subseqL20:
	sub r7,r8,#1
	mov r6,r7
	ldr r9,[fp,#-1036]
	add r7,r9,r6,lsl #2
	mov r6,#1
.longest_common_subseqL7:
	ldr r5,[r7]
	sub r4,r6,#1
	mov r0,r4
	ldr r9,[fp,#-1044]
	add r4,r9,r0,lsl #2
	ldr r0,[r4]
	cmp r5,r0
	beq .longest_common_subseqL10
.longest_common_subseqL11:
	sub r5,r8,#1
	lsl r4,r5,#4
	mov r5,r4
	add r5,r5,r6
	movw r4,#64504
	movt r4,#65535  @ -1032
	add r0,fp,r4
	add r4,r0,r5,lsl #2
	ldr r5,[r4]
	sub r4,r6,#1
	lsl r0,r8,#4
	mov r1,r0
	add r1,r1,r4
	movw r4,#64504
	movt r4,#65535  @ -1032
	add r0,fp,r4
	add r4,r0,r1,lsl #2
	ldr r1,[r4]
.longest_common_subseqL13:
.longest_common_subseqL15:
	cmp r5,r1
	beq .longest_common_subseqL16
.longest_common_subseqL17:
	cmp r5,r1
	bgt .longest_common_subseqL18
.longest_common_subseqL19:
	mov r4,r1
.longest_common_subseqL14:
	lsl r1,r8,#4
	mov r0,r1
	add r0,r0,r6
	movw r1,#64504
	movt r1,#65535  @ -1032
	add r2,fp,r1
	add r1,r2,r0,lsl #2
	str r4,[r1]
.longest_common_subseqL12:
	add r2,r6,#1
.longest_common_subseqL8:
	cmp r2,r3
	bgt .longest_common_subseqL9
.longest_common_subseqL23:
	mov r6,r2
	bl .longest_common_subseqL7
.longest_common_subseqL18:
	mov r4,r5
	bl .longest_common_subseqL14
.longest_common_subseqL16:
	mov r4,r5
	bl .longest_common_subseqL14
.longest_common_subseqL10:
	sub r5,r8,#1
	sub r4,r6,#1
	lsl r2,r5,#4
	mov r5,r2
	add r5,r5,r4
	movw r4,#64504
	movt r4,#65535  @ -1032
	add r2,fp,r4
	add r4,r2,r5,lsl #2
	ldr r5,[r4]
	add r4,r5,#1
	lsl r5,r8,#4
	mov r2,r5
	add r2,r2,r6
	movw r5,#64504
	movt r5,#65535  @ -1032
	add r1,fp,r5
	add r5,r1,r2,lsl #2
	str r4,[r5]
	bl .longest_common_subseqL12
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#120
.mainL0:
.mainL1:
	mvn r8,#119
	add r7,fp,r8
	@call void @memset(i32 %r73,i32 0,i32 60)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#60
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mvn r8,#119
	add r7,fp,r8
	mov r8,#8
	str r8,[r7]
	mov r8,#1
	mvn r7,#119
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#7
	str r8,[r7]
	mov r8,#2
	mvn r7,#119
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#3
	mvn r7,#119
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#4
	mvn r7,#119
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#5
	mvn r7,#119
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#7
	str r8,[r7]
	mov r8,#6
	mvn r7,#119
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#0
	str r8,[r7]
	mov r8,#7
	mvn r7,#119
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#8
	mvn r7,#119
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#9
	str r8,[r7]
	mov r8,#9
	mvn r7,#119
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#10
	mvn r7,#119
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#11
	mvn r7,#119
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#8
	str r8,[r7]
	mov r8,#12
	mvn r7,#119
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#13
	mvn r7,#119
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#7
	str r8,[r7]
	mov r8,#14
	mvn r7,#119
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#0
	str r8,[r7]
	mvn r8,#59
	add r7,fp,r8
	@call void @memset(i32 %r150,i32 0,i32 52)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#52
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mvn r8,#59
	add r7,fp,r8
	mov r8,#3
	str r8,[r7]
	mov r8,#1
	mvn r7,#59
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#9
	str r8,[r7]
	mov r8,#2
	mvn r7,#59
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#7
	str r8,[r7]
	mov r8,#3
	mvn r7,#59
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#4
	mvn r7,#59
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#5
	mvn r7,#59
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#2
	str r8,[r7]
	mov r8,#6
	mvn r7,#59
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#4
	str r8,[r7]
	mov r8,#7
	mvn r7,#59
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#3
	str r8,[r7]
	mov r8,#8
	mvn r7,#59
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#6
	str r8,[r7]
	mov r8,#9
	mvn r7,#59
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#8
	str r8,[r7]
	mov r8,#10
	mvn r7,#59
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#0
	str r8,[r7]
	mov r8,#11
	mvn r7,#59
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#12
	mvn r7,#59
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mvn r8,#119
	add r7,fp,r8
	@%r64 = call i32 @max_sum_nonadjacent(ptr %r62,i32 15)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#15
	bl max_sum_nonadjacent
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r64)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mvn r8,#59
	add r6,fp,r8
	@%r70 = call i32 @longest_common_subseq(ptr %r62,i32 15,ptr %r68,i32 13)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#15
	mov r2,r6
	mov r3,#13
	bl longest_common_subseq
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r70)
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
	add sp,sp,#120
	pop {r6,r7,r8}
	pop {fp,pc}
MAX:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.MAXL0:
.MAXL1:
	cmp r0,r1
	beq .MAXL2
.MAXL3:
	cmp r0,r1
	bgt .MAXL5
.MAXL6:
	mov r0,r1
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.MAXL5:
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
.MAXL2:
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
