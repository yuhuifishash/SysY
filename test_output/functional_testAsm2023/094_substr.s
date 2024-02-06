.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
max_sum_nonadjacent:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#80
.max_sum_nonadjacentL0:
	str r1,[fp,#-80]
.max_sum_nonadjacentL1:
	mvn r8,#75
	add r7,fp,r8
	@call void @memset(i32 %r55,i32 0,i32 64)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	mov r0,r7
	mov r1,#0
	mov r2,#64
	bl memset
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r8,#0
	mov r6,r8
	mvn r8,#75
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	str r7,[r8]
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r8,#1
	mov r6,r8
	add r8,r0,r6,lsl #2
	ldr r6,[r8]
	@%r15 = call i32 @MAX(i32 %r11,i32 %r14)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	mov r0,r7
	mov r1,r6
	bl MAX
	mov r8,r0
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	mov r7,#1
	mov r6,r7
	mvn r7,#75
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#2
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-80]
	cmp r8,r7
	blt .max_sum_nonadjacentL3
.max_sum_nonadjacentL5:
	ldr r8,[fp,#-80]
	mov r7,#1
	sub r6,r8,r7
	mov r8,r6
	mvn r7,#75
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	mov r0,r8
	add sp,sp,#80
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.max_sum_nonadjacentL3:
	ldr r8,[fp,#-12]
	mov r7,#2
	sub r6,r8,r7
	mov r8,r6
	mvn r7,#75
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	ldr r7,[fp,#-12]
	mov r6,r7
	add r7,r0,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	ldr r8,[fp,#-12]
	mov r6,#1
	sub r5,r8,r6
	mov r8,r5
	mvn r6,#75
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	ldr r8,[r6]
	@%r39 = call i32 @MAX(i32 %r33,i32 %r38)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	mov r0,r7
	mov r1,r8
	bl MAX
	mov r6,r0
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#75
	add r5,fp,r8
	add r8,r5,r7,lsl #2
	str r6,[r8]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.max_sum_nonadjacentL4:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-80]
	cmp r8,r7
	blt .max_sum_nonadjacentL3
	bge .max_sum_nonadjacentL5
longest_common_subseq:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	movw r9,#1048
	movt r9,#0  @ 1048
	sub sp,sp,r9
.longest_common_subseqL0:
	str r1,[fp,#-1044]
	str r3,[fp,#-1048]
.longest_common_subseqL1:
	movw r8,#64496
	movt r8,#65535  @ -1040
	add r7,fp,r8
	@call void @memset(i32 %r85,i32 0,i32 1024)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r2}
	mov r0,r7
	mov r1,#0
	mov r2,#1024
	bl memset
	pop {r0,r2}
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#1
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-1044]
	cmp r8,r7
	ble .longest_common_subseqL3
.longest_common_subseqL5:
	ldr r8,[fp,#-1044]
	ldr r7,[fp,#-1048]
	lsl r6,r8,#4
	mov r8,r6
	add r8,r8,r7
	movw r7,#64496
	movt r7,#65535  @ -1040
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	mov r0,r8
	movw r9,#1048
	movt r9,#0  @ 1048
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.longest_common_subseqL3:
	mov r8,#1
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-1048]
	cmp r8,r7
	ble .longest_common_subseqL7
.longest_common_subseqL9:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.longest_common_subseqL4:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-1044]
	cmp r8,r7
	ble .longest_common_subseqL3
	bgt .longest_common_subseqL5
.longest_common_subseqL7:
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	mov r8,r6
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	ldr r7,[fp,#-12]
	mov r6,#1
	sub r5,r7,r6
	mov r7,r5
	add r6,r2,r7,lsl #2
	ldr r7,[r6]
	cmp r8,r7
	beq .longest_common_subseqL10
.longest_common_subseqL11:
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	ldr r8,[fp,#-12]
	lsl r7,r6,#4
	mov r6,r7
	add r6,r6,r8
	movw r8,#64496
	movt r8,#65535  @ -1040
	add r7,fp,r8
	add r8,r7,r6,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	ldr r6,[fp,#-12]
	mov r5,#1
	sub r4,r6,r5
	lsl r6,r8,#4
	mov r8,r6
	add r8,r8,r4
	movw r6,#64496
	movt r6,#65535  @ -1040
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	ldr r8,[r6]
	@%r61 = call i32 @MAX(i32 %r54,i32 %r60)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r2}
	mov r0,r7
	mov r1,r8
	bl MAX
	mov r6,r0
	pop {r0,r2}
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	lsl r5,r8,#4
	mov r8,r5
	add r8,r8,r7
	movw r7,#64496
	movt r7,#65535  @ -1040
	add r5,fp,r7
	add r7,r5,r8,lsl #2
	str r6,[r7]
.longest_common_subseqL12:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.longest_common_subseqL8:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-1048]
	cmp r8,r7
	ble .longest_common_subseqL7
	bgt .longest_common_subseqL9
.longest_common_subseqL10:
	ldr r8,[fp,#-16]
	mov r7,#1
	sub r6,r8,r7
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r5,r8,r7
	lsl r8,r6,#4
	mov r7,r8
	add r7,r7,r5
	movw r8,#64496
	movt r8,#65535  @ -1040
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	lsl r5,r8,#4
	mov r8,r5
	add r8,r8,r7
	movw r7,#64496
	movt r7,#65535  @ -1040
	add r5,fp,r7
	add r7,r5,r8,lsl #2
	str r6,[r7]
	bl .longest_common_subseqL12
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	mov r9,#128
	sub sp,sp,r9
.mainL0:
.mainL1:
	mvn r8,#127
	add r7,fp,r8
	@call void @memset(i32 %r73,i32 0,i32 60)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#60
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mov r8,#8
	mvn r7,#127
	add r6,fp,r7
	str r8,[r6]
	mov r8,#7
	mov r7,#1
	mvn r6,#127
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#2
	mvn r6,#127
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#3
	mvn r6,#127
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	mov r7,#4
	mvn r6,#127
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#7
	mov r7,#5
	mvn r6,#127
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#0
	mov r7,#6
	mvn r6,#127
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#7
	mvn r6,#127
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#9
	mov r7,#8
	mvn r6,#127
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#9
	mvn r6,#127
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#10
	mvn r6,#127
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#8
	mov r7,#11
	mvn r6,#127
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#12
	mvn r6,#127
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#7
	mov r7,#13
	mvn r6,#127
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#0
	mov r7,#14
	mvn r6,#127
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mvn r8,#67
	add r7,fp,r8
	@call void @memset(i32 %r135,i32 0,i32 52)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,#0
	mov r2,#52
	bl memset
	add sp,sp,#4 @stack align 8bytes
	mov r8,#3
	mvn r7,#67
	add r6,fp,r7
	str r8,[r6]
	mov r8,#9
	mov r7,#1
	mvn r6,#67
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#7
	mov r7,#2
	mvn r6,#67
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#3
	mvn r6,#67
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#4
	mvn r6,#67
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	mov r7,#5
	mvn r6,#67
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#6
	mvn r6,#67
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#7
	mvn r6,#67
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#6
	mov r7,#8
	mvn r6,#67
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#8
	mov r7,#9
	mvn r6,#67
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#0
	mov r7,#10
	mvn r6,#67
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#11
	mvn r6,#67
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#5
	mov r7,#12
	mvn r6,#67
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mvn r8,#127
	add r7,fp,r8
	mov r8,#15
	@%r64 = call i32 @max_sum_nonadjacent(ptr %r62,i32 %r63)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r8
	bl max_sum_nonadjacent
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r64)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r65)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mvn r8,#127
	add r7,fp,r8
	mov r8,#15
	mvn r6,#67
	add r5,fp,r6
	mov r6,#13
	@%r70 = call i32 @longest_common_subseq(ptr %r66,i32 %r67,ptr %r68,i32 %r69)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	mov r1,r8
	mov r2,r5
	mov r3,r6
	bl longest_common_subseq
	mov r4,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r70)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r4
	bl putint
	add sp,sp,#4 @stack align 8bytes
	mov r8,#10
	@call void @putch(i32 %r71)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putch
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r0,r8
	mov r9,#128
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
MAX:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#16
.MAXL0:
	str r0,[fp,#-12]
	str r1,[fp,#-16]
.MAXL1:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	beq .MAXL2
.MAXL3:
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	cmp r8,r7
	bgt .MAXL5
.MAXL6:
	ldr r8,[fp,#-16]
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.MAXL5:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
.MAXL2:
	ldr r8,[fp,#-12]
	mov r0,r8
	add sp,sp,#16
	pop {r6,r7,r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
