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
	blt .QuickSortL29
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
.QuickSortL29:
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
	blt .QuickSortL28
.QuickSortL43:
	mov r2,r3
	bl .QuickSortL21
.QuickSortL28:
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
	bgt .QuickSortL30
.QuickSortL37:
	ldr r9,[fp,#-28]
	mov r4,r9
	bl .QuickSortL11
.QuickSortL30:
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
insertsort:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.insertsortL0:
.insertsortL1:
	ldr r8,.LPIC0
	ldr r7,[r8]
	cmp r7,#1
	bgt .insertsortL14
.insertsortL5:
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.insertsortL14:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#1
.insertsortL3:
	mov r6,r8
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	sub r5,r8,#1
	mvn r4,#0
	cmp r5,r4
	bgt .insertsortL10
.insertsortL18:
	mov r4,r5
.insertsortL9:
	add r3,r4,#1
	mov r2,r3
	add r3,r0,r2,lsl #2
	str r6,[r3]
	add r3,r8,#1
.insertsortL4:
	cmp r3,r7
	bge .insertsortL5
.insertsortL16:
	mov r8,r3
	bl .insertsortL3
.insertsortL10:
	mov r3,r5
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	cmp r6,r3
	blt .insertsortL15
.insertsortL20:
	mov r4,r5
	bl .insertsortL9
.insertsortL15:
	mov r3,r5
.insertsortL7:
	mov r5,r3
	add r2,r0,r5,lsl #2
	ldr r5,[r2]
	add r2,r3,#1
	mov r1,r2
	add r2,r0,r1,lsl #2
	str r5,[r2]
	sub r5,r3,#1
.insertsortL8:
	mvn r2,#0
	cmp r5,r2
	bgt .insertsortL12
.insertsortL19:
	mov r4,r5
	bl .insertsortL9
.insertsortL12:
	mov r2,r5
	add r1,r0,r2,lsl #2
	ldr r2,[r1]
	cmp r6,r2
	blt .insertsortL17
.insertsortL21:
	mov r4,r5
	bl .insertsortL9
.insertsortL17:
	mov r3,r5
	bl .insertsortL7
bubblesort:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#12
.bubblesortL0:
.bubblesortL1:
	ldr r8,.LPIC0
	ldr r7,[r8]
	sub r8,r7,#1
	cmp r8,#0
	bgt .bubblesortL13
.bubblesortL5:
	mov r0,#0
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.bubblesortL13:
	ldr r8,.LPIC0
	ldr r7,[r8]
	sub r9,r7,#1
	str r9,[fp,#-12]
	mov r6,#0
.bubblesortL3:
	sub r5,r7,r6
	sub r4,r5,#1
	cmp r4,#0
	bgt .bubblesortL12
.bubblesortL9:
	add r5,r6,#1
.bubblesortL4:
	ldr r9,[fp,#-12]
	cmp r5,r9
	bge .bubblesortL5
.bubblesortL14:
	mov r6,r5
	bl .bubblesortL3
.bubblesortL12:
	ldr r5,.LPIC0
	ldr r4,[r5]
	sub r5,r4,r6
	sub r4,r5,#1
	mov r5,#0
.bubblesortL7:
	mov r3,r5
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	add r2,r5,#1
	mov r1,r2
	add r2,r0,r1,lsl #2
	ldr r1,[r2]
	cmp r3,r1
	bgt .bubblesortL10
.bubblesortL11:
	add r3,r5,#1
.bubblesortL8:
	cmp r3,r4
	bge .bubblesortL9
.bubblesortL15:
	mov r5,r3
	bl .bubblesortL7
.bubblesortL10:
	add r3,r5,#1
	mov r2,r3
	add r3,r0,r2,lsl #2
	ldr r2,[r3]
	mov r1,r5
	add r8,r0,r1,lsl #2
	ldr r1,[r8]
	str r1,[r3]
	str r2,[r8]
	bl .bubblesortL11
getMid:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.getMidL0:
.getMidL1:
	ldr r8,.LPIC0
	ldr r7,[r8]
	cmp r7,#0
	and r8,r7,#1
	it lt
	rsblt r8,r8,#0
	cmp r8,#0
	beq .getMidL2
.getMidL3:
	ldr r8,.LPIC0
	ldr r7,[r8]
	add r8,r7,r7,lsr #31
	asr r7,r8,#1
	mov r8,r7
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	mov r0,r8
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.getMidL2:
	ldr r8,.LPIC0
	ldr r7,[r8]
	add r8,r7,r7,lsr #31
	asr r7,r8,#1
	mov r8,r7
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	sub r6,r7,#1
	mov r7,r6
	add r6,r0,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	add r8,r6,r6,lsr #31
	asr r7,r8,#1
	mov r0,r7
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
getMost:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	movw r9,#4024
	movt r9,#0  @ 4024
	sub sp,sp,r9
.getMostL0:
	mov r9,r0
	str r9,[fp,#-4012]
.getMostL1:
.getMostL13:
	mov r9,#0
	str r9,[fp,#-4024]
.getMostL3:
	ldr r9,[fp,#-4024]
	mov r7,r9
	movw r6,#61528
	movt r6,#65535  @ -4008
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	mov r7,#0
	str r7,[r6]
	ldr r9,[fp,#-4024]
	add r7,r9,#1
.getMostL4:
	cmp r7,#1000
	blt .getMostL14
.getMostL5:
	ldr r6,.LPIC0
	ldr r5,[r6]
	cmp r5,#0
	bgt .getMostL12
.getMostL16:
	mov r9,#0
	str r9,[fp,#-4016]
.getMostL9:
	ldr r9,[fp,#-4016]
	mov r0,r9
	movw r9,#4024
	movt r9,#0  @ 4024
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.getMostL12:
	ldr r5,.LPIC0
	ldr r9,[r5]
	str r9,[fp,#-4020]
	mov r5,#0
	mov r3,#0
	mov r2,#0
.getMostL7:
	mov r1,r2
	ldr r9,[fp,#-4012]
	add r0,r9,r1,lsl #2
	ldr r1,[r0]
	mov r0,r1
	movw r6,#61528
	movt r6,#65535  @ -4008
	add r4,fp,r6
	add r6,r4,r0,lsl #2
	ldr r4,[r6]
	add r0,r4,#1
	str r0,[r6]
	ldr r4,[r6]
	cmp r4,r3
	bgt .getMostL10
.getMostL18:
	mov r6,r5
	mov r4,r3
.getMostL11:
	add r0,r2,#1
.getMostL8:
	ldr r9,[fp,#-4020]
	cmp r0,r9
	blt .getMostL15
.getMostL17:
	mov r9,r6
	str r9,[fp,#-4016]
	bl .getMostL9
.getMostL15:
	mov r5,r6
	mov r3,r4
	mov r2,r0
	bl .getMostL7
.getMostL10:
	mov r8,r1
	movw r5,#61528
	movt r5,#65535  @ -4008
	add r3,fp,r5
	add r5,r3,r8,lsl #2
	ldr r8,[r5]
	mov r6,r1
	mov r4,r8
	bl .getMostL11
.getMostL14:
	mov r9,r7
	str r9,[fp,#-4024]
	bl .getMostL3
arrCopy:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.arrCopyL0:
.arrCopyL1:
	ldr r8,.LPIC0
	ldr r7,[r8]
	cmp r7,#0
	bgt .arrCopyL6
.arrCopyL5:
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.arrCopyL6:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#0
.arrCopyL3:
	mov r6,r8
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	mov r5,r8
	add r4,r1,r5,lsl #2
	str r6,[r4]
	add r6,r8,#1
.arrCopyL4:
	cmp r6,r7
	bge .arrCopyL5
.arrCopyL7:
	mov r8,r6
	bl .arrCopyL3
revert:@
	push {fp,lr}
	add fp,sp,#4
	sub sp,sp,#8
.revertL0:
.revertL1:
.revertL5:
	mov r0,#0
	add sp,sp,#8
	pop {fp,pc}
calSum:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#12
.calSumL0:
	mov r9,r1
	str r9,[fp,#-12]
.calSumL1:
	ldr r8,.LPIC0
	ldr r7,[r8]
	cmp r7,#0
	bgt .calSumL9
.calSumL5:
	mov r0,#0
	add sp,sp,#12
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.calSumL9:
	ldr r9,[fp,#-12]
	sub r8,r9,#1
	ldr r7,.LPIC0
	ldr r6,[r7]
	mov r7,#0
	mov r5,#0
.calSumL3:
	mov r4,r7
	add r3,r0,r4,lsl #2
	ldr r4,[r3]
	add r3,r5,r4
	@%r21 = call i32 @__modsi3(i32 %r44,i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r3}
	mov r0,r7
	ldr r1,[fp,#-12]
	bl __modsi3
	mov r4,r0
	pop {r0,r1,r3}
	add sp,sp,#4 @stack align 8bytes
	cmp r4,r8
	bne .calSumL6
.calSumL7:
	mov r4,r7
	add r2,r0,r4,lsl #2
	str r3,[r2]
	mov r4,#0
.calSumL8:
	add r2,r7,#1
.calSumL4:
	cmp r2,r6
	bge .calSumL5
.calSumL10:
	mov r7,r2
	mov r5,r4
	bl .calSumL3
.calSumL6:
	mov r5,r7
	add r2,r0,r5,lsl #2
	mov r5,#0
	str r5,[r2]
	mov r4,r3
	bl .calSumL8
avgPooling:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#28
.avgPoolingL0:
	mov r9,r0
	str r9,[fp,#-28]
	mov r9,r1
	str r9,[fp,#-24]
.avgPoolingL1:
	bl .LPIC2
.LPIC1:
	.word n
.LPIC2:
	ldr r8,.LPIC1
	ldr r7,[r8]
	cmp r7,#0
	bgt .avgPoolingL16
.avgPoolingL5:
	ldr r8,.LPIC1
	ldr r7,[r8]
	ldr r9,[fp,#-24]
	sub r8,r7,r9
	add r6,r8,#1
	cmp r6,r7
	blt .avgPoolingL17
.avgPoolingL15:
	mov r0,#0
	add sp,sp,#28
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.avgPoolingL17:
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r8,r6
.avgPoolingL13:
	mov r6,r8
	ldr r9,[fp,#-28]
	add r5,r9,r6,lsl #2
	mov r6,#0
	str r6,[r5]
	add r6,r8,#1
.avgPoolingL14:
	cmp r6,r7
	bge .avgPoolingL15
.avgPoolingL19:
	mov r8,r6
	bl .avgPoolingL13
.avgPoolingL16:
	ldr r9,[fp,#-24]
	sub r10,r9,#1
	str r10,[fp,#-12]
	ldr r7,.LPIC1
	ldr r9,[r7]
	str r9,[fp,#-16]
	mov r9,#0
	str r9,[fp,#-20]
	mov r5,#0
	mov r4,#0
.avgPoolingL3:
	ldr r9,[fp,#-12]
	cmp r5,r9
	blt .avgPoolingL6
.avgPoolingL7:
	ldr r9,[fp,#-24]
	sub r3,r9,#1
	cmp r5,r3
	beq .avgPoolingL9
.avgPoolingL10:
	mov r3,r5
	ldr r9,[fp,#-28]
	add r2,r9,r3,lsl #2
	ldr r3,[r2]
	add r2,r4,r3
	ldr r9,[fp,#-20]
	sub r3,r2,r9
	ldr r9,[fp,#-24]
	sub r2,r5,r9
	add r8,r2,#1
	mov r2,r8
	ldr r9,[fp,#-28]
	add r8,r9,r2,lsl #2
	ldr r2,[r8]
	@%r59 = call i32 @__aeabi_idiv(i32 %r49,i32 %r1)
	push {r0,r1,r2,r3}
	mov r0,r3
	ldr r1,[fp,#-24]
	bl __aeabi_idiv
	mov r8,r0
	pop {r0,r1,r2,r3}
	ldr r9,[fp,#-24]
	sub r6,r5,r9
	add r7,r6,#1
	mov r6,r7
	ldr r9,[fp,#-28]
	add r7,r9,r6,lsl #2
	str r8,[r7]
	mov r8,r2
	mov r7,r3
.avgPoolingL11:
	mov r6,r8
	mov r3,r7
.avgPoolingL8:
	add r2,r5,#1
.avgPoolingL4:
	ldr r9,[fp,#-16]
	cmp r2,r9
	bge .avgPoolingL5
.avgPoolingL18:
	mov r9,r6
	str r9,[fp,#-20]
	mov r5,r2
	mov r4,r3
	bl .avgPoolingL3
.avgPoolingL9:
	ldr r9,[fp,#-28]
	mov r2,r9
	ldr r1,[r2]
	@%r40 = call i32 @__aeabi_idiv(i32 %r105,i32 %r1)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r2,r3}
	mov r0,r4
	ldr r1,[fp,#-24]
	bl __aeabi_idiv
	pop {r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	str r0,[r2]
	mov r8,r1
	mov r7,r4
	bl .avgPoolingL11
.avgPoolingL6:
	mov r8,r5
	ldr r9,[fp,#-28]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	add r7,r4,r8
	ldr r9,[fp,#-20]
	mov r6,r9
	mov r3,r7
	bl .avgPoolingL8
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	mov r9,#292
	sub sp,sp,r9
.mainL0:
.mainL1:
	mov r8,#32
	ldr r7,.LPIC1
	str r8,[r7]
	movw r8,#65272
	movt r8,#65535  @ -264
	add r7,fp,r8
	mov r8,#7
	str r8,[r7]
	mov r8,#1
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#23
	str r8,[r7]
	mov r8,#2
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#89
	str r8,[r7]
	mov r8,#3
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#26
	str r8,[r7]
	mov r8,#4
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	movw r8,#282
	movt r8,#0  @ 282
	str r8,[r7]
	mov r8,#5
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#254
	str r8,[r7]
	mov r8,#6
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#27
	str r8,[r7]
	mov r8,#7
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#5
	str r8,[r7]
	mov r8,#8
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#83
	str r8,[r7]
	mov r8,#9
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	movw r8,#273
	movt r8,#0  @ 273
	str r8,[r7]
	mov r8,#10
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	movw r8,#574
	movt r8,#0  @ 574
	str r8,[r7]
	mov r8,#11
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	movw r8,#905
	movt r8,#0  @ 905
	str r8,[r7]
	mov r8,#12
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	movw r8,#354
	movt r8,#0  @ 354
	str r8,[r7]
	mov r8,#13
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	movw r8,#657
	movt r8,#0  @ 657
	str r8,[r7]
	mov r8,#14
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	movw r8,#935
	movt r8,#0  @ 935
	str r8,[r7]
	mov r8,#15
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#264
	str r8,[r7]
	mov r8,#16
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	movw r8,#639
	movt r8,#0  @ 639
	str r8,[r7]
	mov r8,#17
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	movw r8,#459
	movt r8,#0  @ 459
	str r8,[r7]
	mov r8,#18
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#29
	str r8,[r7]
	mov r8,#19
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#68
	str r8,[r7]
	mov r8,#20
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	movw r8,#929
	movt r8,#0  @ 929
	str r8,[r7]
	mov r8,#21
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#756
	str r8,[r7]
	mov r8,#22
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#452
	str r8,[r7]
	mov r8,#23
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	movw r8,#279
	movt r8,#0  @ 279
	str r8,[r7]
	mov r8,#24
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#58
	str r8,[r7]
	mov r8,#25
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#87
	str r8,[r7]
	mov r8,#26
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#96
	str r8,[r7]
	mov r8,#27
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#36
	str r8,[r7]
	mov r8,#28
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#39
	str r8,[r7]
	mov r8,#29
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#28
	str r8,[r7]
	mov r8,#30
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	mov r8,#1
	str r8,[r7]
	mov r8,#31
	movw r7,#65272
	movt r7,#65535  @ -264
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	movw r8,#290
	movt r8,#0  @ 290
	str r8,[r7]
	movw r8,#65272
	movt r8,#65535  @ -264
	add r7,fp,r8
	mvn r8,#135
	add r6,fp,r8
	@%r103 = call i32 @arrCopy(ptr %r101,ptr %r102)
	mov r0,r7
	mov r1,r6
	bl arrCopy
	mov r8,r0
.mainL30:
.mainL32:
.mainL33:
.mainL31:
.mainL37:
	mov r9,#0
	str r9,[fp,#-268]
.mainL3:
	ldr r9,[fp,#-268]
	mov r7,r9
	mvn r6,#135
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	ldr r7,[r6]
	@call void @putint(i32 %r116)
	mov r0,r7
	bl putint
	ldr r9,[fp,#-268]
	add r10,r9,#1
	str r10,[fp,#-272]
.mainL4:
	ldr r9,[fp,#-272]
	cmp r9,#32
	blt .mainL41
.mainL5:
	mvn r6,#135
	add r5,fp,r6
	@%r127 = call i32 @bubblesort(ptr %r126)
	mov r0,r5
	bl bubblesort
	mov r6,r0
.mainL38:
	mov r9,#0
	str r9,[fp,#-276]
.mainL7:
	ldr r9,[fp,#-276]
	mov r5,r9
	mvn r4,#135
	add r3,fp,r4
	add r4,r3,r5,lsl #2
	ldr r5,[r4]
	@call void @putint(i32 %r136)
	mov r0,r5
	bl putint
	ldr r9,[fp,#-276]
	add r10,r9,#1
	str r10,[fp,#-280]
.mainL8:
	ldr r9,[fp,#-280]
	cmp r9,#32
	blt .mainL42
.mainL9:
	mvn r4,#135
	add r3,fp,r4
	@%r147 = call i32 @getMid(ptr %r146)
	sub sp,sp,#4 @stack align 8bytes
	push {r3}
	mov r0,r3
	bl getMid
	mov r4,r0
	pop {r3}
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r147)
	sub sp,sp,#4 @stack align 8bytes
	push {r3}
	mov r0,r4
	bl putint
	pop {r3}
	add sp,sp,#4 @stack align 8bytes
	@%r150 = call i32 @getMost(ptr %r146)
	sub sp,sp,#4 @stack align 8bytes
	push {r3}
	mov r0,r3
	bl getMost
	mov r4,r0
	pop {r3}
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r150)
	sub sp,sp,#4 @stack align 8bytes
	push {r3}
	mov r0,r4
	bl putint
	pop {r3}
	add sp,sp,#4 @stack align 8bytes
	movw r4,#65272
	movt r4,#65535  @ -264
	add r2,fp,r4
	@%r154 = call i32 @arrCopy(ptr %r152,ptr %r146)
	push {r2,r3}
	mov r0,r2
	mov r1,r3
	bl arrCopy
	mov r4,r0
	pop {r2,r3}
	@%r156 = call i32 @bubblesort(ptr %r146)
	sub sp,sp,#4 @stack align 8bytes
	push {r3}
	mov r0,r3
	bl bubblesort
	mov r4,r0
	pop {r3}
	add sp,sp,#4 @stack align 8bytes
.mainL39:
	mov r9,#0
	str r9,[fp,#-284]
.mainL11:
	ldr r9,[fp,#-284]
	mov r3,r9
	mvn r2,#135
	add r1,fp,r2
	add r2,r1,r3,lsl #2
	ldr r3,[r2]
	@call void @putint(i32 %r165)
	sub sp,sp,#4 @stack align 8bytes
	push {r3}
	mov r0,r3
	bl putint
	pop {r3}
	add sp,sp,#4 @stack align 8bytes
	ldr r9,[fp,#-284]
	add r10,r9,#1
	str r10,[fp,#-288]
.mainL12:
	ldr r9,[fp,#-288]
	cmp r9,#32
	blt .mainL43
.mainL13:
	movw r2,#65272
	movt r2,#65535  @ -264
	add r1,fp,r2
	mvn r2,#135
	add r0,fp,r2
	@%r177 = call i32 @arrCopy(ptr %r175,ptr %r176)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r3}
	mov r10,r1
	mov r1,r0
	mov r0,r10
	bl arrCopy
	mov r2,r0
	pop {r0,r1,r3}
	add sp,sp,#4 @stack align 8bytes
	@%r179 = call i32 @insertsort(ptr %r176)
	push {r0,r3}
	bl insertsort
	mov r2,r0
	pop {r0,r3}
.mainL34:
	mov r9,#0
	str r9,[fp,#-292]
.mainL15:
	ldr r9,[fp,#-292]
	mov r1,r9
	mvn r0,#135
	add r8,fp,r0
	add r0,r8,r1,lsl #2
	ldr r8,[r0]
	@call void @putint(i32 %r188)
	push {r2,r3}
	mov r0,r8
	bl putint
	pop {r2,r3}
	ldr r9,[fp,#-292]
	add r8,r9,#1
.mainL16:
	cmp r8,#32
	blt .mainL44
.mainL17:
	movw r1,#65272
	movt r1,#65535  @ -264
	add r0,fp,r1
	mvn r1,#135
	add r7,fp,r1
	@%r200 = call i32 @arrCopy(ptr %r198,ptr %r199)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r2,r3}
	mov r1,r7
	bl arrCopy
	mov r1,r0
	pop {r0,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@%r206 = call i32 @QuickSort(ptr %r199,i32 0,i32 31)
	push {r2,r3}
	mov r0,r7
	mov r1,#0
	mov r2,#31
	bl QuickSort
	mov r1,r0
	pop {r2,r3}
.mainL35:
	mov r7,#0
.mainL19:
	mov r1,r7
	mvn r0,#135
	add r6,fp,r0
	add r0,r6,r1,lsl #2
	ldr r6,[r0]
	@call void @putint(i32 %r214)
	push {r2,r3}
	mov r0,r6
	bl putint
	pop {r2,r3}
	add r6,r7,#1
.mainL20:
	cmp r6,#32
	blt .mainL45
.mainL21:
	movw r1,#65272
	movt r1,#65535  @ -264
	add r0,fp,r1
	mvn r1,#135
	add r5,fp,r1
	@%r226 = call i32 @arrCopy(ptr %r224,ptr %r225)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r2,r3}
	mov r1,r5
	bl arrCopy
	mov r1,r0
	pop {r0,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@%r229 = call i32 @calSum(ptr %r225,i32 4)
	push {r2,r3}
	mov r0,r5
	mov r1,#4
	bl calSum
	mov r1,r0
	pop {r2,r3}
.mainL36:
	mov r5,#0
.mainL23:
	mov r1,r5
	mvn r0,#135
	add r4,fp,r0
	add r0,r4,r1,lsl #2
	ldr r4,[r0]
	@call void @putint(i32 %r238)
	push {r2,r3}
	mov r0,r4
	bl putint
	pop {r2,r3}
	add r4,r5,#1
.mainL24:
	cmp r4,#32
	blt .mainL46
.mainL25:
	movw r1,#65272
	movt r1,#65535  @ -264
	add r0,fp,r1
	mvn r1,#135
	add r3,fp,r1
	@%r250 = call i32 @arrCopy(ptr %r248,ptr %r249)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r2,r3}
	mov r1,r3
	bl arrCopy
	mov r1,r0
	pop {r0,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	@%r253 = call i32 @avgPooling(ptr %r249,i32 3)
	push {r2,r3}
	mov r0,r3
	mov r1,#3
	bl avgPooling
	mov r1,r0
	pop {r2,r3}
.mainL40:
	mov r3,#0
.mainL27:
	mov r1,r3
	mvn r0,#135
	add r2,fp,r0
	add r0,r2,r1,lsl #2
	ldr r2,[r0]
	@call void @putint(i32 %r262)
	push {r2,r3}
	mov r0,r2
	bl putint
	pop {r2,r3}
	add r2,r3,#1
.mainL28:
	cmp r2,#32
	blt .mainL47
.mainL29:
	mov r0,#0
	mov r9,#292
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL47:
	mov r3,r2
	bl .mainL27
.mainL46:
	mov r5,r4
	bl .mainL23
.mainL45:
	mov r7,r6
	bl .mainL19
.mainL44:
	mov r9,r8
	str r9,[fp,#-292]
	bl .mainL15
.mainL43:
	ldr r9,[fp,#-288]
	mov r10,r9
	str r10,[fp,#-284]
	bl .mainL11
.mainL42:
	ldr r9,[fp,#-280]
	mov r10,r9
	str r10,[fp,#-276]
	bl .mainL7
.mainL41:
	ldr r9,[fp,#-272]
	mov r10,r9
	str r10,[fp,#-268]
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
