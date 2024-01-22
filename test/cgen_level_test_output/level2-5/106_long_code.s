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
.QuickSortL4:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .QuickSortL5
.QuickSortL6:
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
	@%r101 = call i32 @QuickSort(ptr %r98,i32 %r99,i32 %r100)
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
	@%r108 = call i32 @QuickSort(ptr %r105,i32 %r106,i32 %r107)
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
.QuickSortL7:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .QuickSortL10
.QuickSortL9:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .QuickSortL12
.QuickSortL13:
.QuickSortL14:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .QuickSortL17
.QuickSortL16:
	ldr r8,[fp,#-24]
	ldr r7,[fp,#-20]
	cmp r8,r7
	blt .QuickSortL19
.QuickSortL20:
	bl .QuickSortL4
.QuickSortL19:
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
	bl .QuickSortL20
.QuickSortL17:
	ldr r8,[fp,#-24]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	cmp r7,r8
	bge .QuickSortL16
.QuickSortL15:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .QuickSortL14
.QuickSortL12:
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
	bl .QuickSortL13
.QuickSortL10:
	ldr r8,[fp,#-20]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	mov r6,#1
	sub r5,r8,r6
	cmp r7,r5
	ble .QuickSortL9
.QuickSortL8:
	ldr r8,[fp,#-20]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-20]
	bl .QuickSortL7
insertsort:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.insertsortL0:
.insertsortL1:
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#1
	str r8,[fp,#-20]
.insertsortL2:
	ldr r8,[fp,#-20]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .insertsortL3
.insertsortL4:
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.insertsortL3:
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-20]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-20]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
.insertsortL5:
	ldr r8,[fp,#-12]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bgt .insertsortL8
.insertsortL7:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	mov r6,#1
	add r5,r7,r6
	mov r7,r5
	add r6,r0,r7,lsl #2
	str r8,[r6]
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	bl .insertsortL2
.insertsortL8:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	mov r6,r7
	add r7,r0,r6,lsl #2
	ldr r6,[r7]
	cmp r8,r6
	bge .insertsortL7
.insertsortL6:
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	mov r6,#1
	add r5,r8,r6
	mov r8,r5
	add r6,r0,r8,lsl #2
	str r7,[r6]
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
	bl .insertsortL5
bubblesort:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.bubblesortL0:
.bubblesortL1:
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-20]
.bubblesortL2:
	ldr r8,[fp,#-20]
	ldr r7,.LPIC0
	ldr r6,[r7]
	mov r7,#1
	sub r5,r6,r7
	cmp r8,r5
	blt .bubblesortL3
.bubblesortL4:
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.bubblesortL3:
	mov r8,#0
	str r8,[fp,#-16]
.bubblesortL5:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC0
	ldr r6,[r7]
	ldr r7,[fp,#-20]
	sub r5,r6,r7
	mov r7,#1
	sub r6,r5,r7
	cmp r8,r6
	blt .bubblesortL6
.bubblesortL7:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
	bl .bubblesortL2
.bubblesortL6:
	ldr r8,[fp,#-16]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	mov r6,#1
	add r5,r8,r6
	mov r8,r5
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	cmp r7,r8
	bgt .bubblesortL8
.bubblesortL9:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .bubblesortL5
.bubblesortL8:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	mov r8,r6
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	str r8,[fp,#-12]
	ldr r8,[fp,#-16]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	mov r6,#1
	add r5,r8,r6
	mov r8,r5
	add r6,r0,r8,lsl #2
	str r7,[r6]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-16]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	bl .bubblesortL9
getMid:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.getMidL0:
.getMidL1:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#2
	@%r5 = call i32 @__modsi3(i32 %r3,i32 %r4)
	push {r0}
	mov r0,r7
	mov r1,r8
	bl __modsi3
	mov r6,r0
	pop {r0}
	mov r8,#0
	cmp r6,r8
	beq .getMidL2
.getMidL3:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#2
	@%r26 = call i32 @__aeabi_idiv(i32 %r24,i32 %r25)
	push {r0}
	mov r0,r7
	mov r1,r8
	bl __aeabi_idiv
	mov r6,r0
	pop {r0}
	str r6,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.getMidL2:
	ldr r8,.LPIC0
	ldr r7,[r8]
	mov r8,#2
	@%r12 = call i32 @__aeabi_idiv(i32 %r10,i32 %r11)
	push {r0}
	mov r0,r7
	mov r1,r8
	bl __aeabi_idiv
	mov r6,r0
	pop {r0}
	str r6,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	mov r6,#1
	sub r5,r8,r6
	mov r8,r5
	add r6,r0,r8,lsl #2
	ldr r8,[r6]
	add r6,r7,r8
	mov r8,#2
	@%r23 = call i32 @__aeabi_idiv(i32 %r21,i32 %r22)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	mov r1,r8
	bl __aeabi_idiv
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r7
	add sp,sp,#12
	pop {r5,r6,r7,r8}
	pop {fp,pc}
getMost:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	movw r9,#4024
	movt r9,#0  @ 4024
	sub sp,sp,r9
.getMostL0:
.getMostL1:
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-24]
.getMostL2:
	ldr r8,[fp,#-24]
	mov r7,#1000
	cmp r8,r7
	blt .getMostL3
.getMostL4:
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-20]
.getMostL5:
	ldr r8,[fp,#-24]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .getMostL6
.getMostL7:
	ldr r8,[fp,#-16]
	mov r0,r8
	movw r9,#4024
	movt r9,#0  @ 4024
	add sp,sp,r9
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.getMostL6:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-24]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,r8
	movw r8,#61512
	movt r8,#65535  @ -4024
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	mov r8,#1
	add r6,r7,r8
	ldr r8,[fp,#-12]
	mov r7,r8
	movw r8,#61512
	movt r8,#65535  @ -4024
	add r5,fp,r8
	add r8,r5,r7,lsl #2
	str r6,[r8]
	ldr r8,[fp,#-12]
	mov r7,r8
	movw r8,#61512
	movt r8,#65535  @ -4024
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-20]
	cmp r7,r8
	bgt .getMostL8
.getMostL9:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .getMostL5
.getMostL8:
	ldr r8,[fp,#-12]
	mov r7,r8
	movw r8,#61512
	movt r8,#65535  @ -4024
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-20]
	ldr r8,[fp,#-12]
	str r8,[fp,#-16]
	bl .getMostL9
.getMostL3:
	mov r8,#0
	ldr r7,[fp,#-24]
	mov r6,r7
	movw r7,#61512
	movt r7,#65535  @ -4024
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
	bl .getMostL2
arrCopy:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.arrCopyL0:
.arrCopyL1:
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-12]
.arrCopyL2:
	ldr r8,[fp,#-12]
	bl .LPIC2
.LPIC1:
	.word n
.LPIC2:
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .arrCopyL3
.arrCopyL4:
	mov r8,#0
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.arrCopyL3:
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-12]
	mov r6,r8
	add r8,r1,r6,lsl #2
	str r7,[r8]
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .arrCopyL2
revert:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.revertL0:
.revertL1:
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
.revertL2:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	cmp r8,r7
	blt .revertL3
.revertL4:
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r6,r7,r8}
	pop {fp,pc}
.revertL3:
	ldr r8,[fp,#-16]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-20]
	ldr r8,[fp,#-12]
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-16]
	mov r6,r8
	add r8,r0,r6,lsl #2
	str r7,[r8]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-12]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	ldr r8,[fp,#-12]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-12]
	bl .revertL2
calSum:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#20
.calSumL0:
	str r1,[fp,#-20]
.calSumL1:
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-12]
.calSumL2:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .calSumL3
.calSumL4:
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.calSumL3:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	mov r6,r7
	add r7,r0,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	str r7,[fp,#-16]
	ldr r8,[fp,#-12]
	ldr r7,[fp,#-20]
	@%r21 = call i32 @__modsi3(i32 %r19,i32 %r20)
	push {r0}
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	pop {r0}
	ldr r8,[fp,#-20]
	mov r7,#1
	sub r5,r8,r7
	cmp r6,r5
	bne .calSumL5
.calSumL6:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	str r8,[fp,#-16]
.calSumL7:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .calSumL2
.calSumL5:
	mov r8,#0
	ldr r7,[fp,#-12]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	bl .calSumL7
avgPooling:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#24
.avgPoolingL0:
	str r1,[fp,#-24]
.avgPoolingL1:
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-12]
.avgPoolingL2:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .avgPoolingL3
.avgPoolingL4:
	ldr r8,.LPIC1
	ldr r7,[r8]
	ldr r8,[fp,#-24]
	sub r6,r7,r8
	mov r8,#1
	add r7,r6,r8
	str r7,[fp,#-16]
.avgPoolingL11:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .avgPoolingL12
.avgPoolingL13:
	mov r8,#0
	mov r0,r8
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.avgPoolingL12:
	mov r8,#0
	ldr r7,[fp,#-16]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .avgPoolingL11
.avgPoolingL3:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-24]
	mov r6,#1
	sub r5,r7,r6
	cmp r8,r5
	blt .avgPoolingL5
.avgPoolingL6:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-24]
	mov r6,#1
	sub r5,r7,r6
	cmp r8,r5
	beq .avgPoolingL8
.avgPoolingL9:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	mov r6,r7
	add r7,r0,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	ldr r8,[fp,#-12]
	sub r6,r7,r8
	str r6,[fp,#-20]
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-24]
	sub r6,r8,r7
	mov r8,#1
	add r7,r6,r8
	mov r8,r7
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	str r8,[fp,#-12]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	@%r59 = call i32 @__aeabi_idiv(i32 %r57,i32 %r58)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-24]
	sub r5,r8,r7
	mov r8,#1
	add r7,r5,r8
	mov r8,r7
	add r7,r0,r8,lsl #2
	str r6,[r7]
.avgPoolingL10:
.avgPoolingL7:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
	bl .avgPoolingL2
.avgPoolingL8:
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-12]
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-24]
	@%r40 = call i32 @__aeabi_idiv(i32 %r38,i32 %r39)
	sub sp,sp,#4 @stack align 8bytes
	push {r0}
	mov r0,r8
	mov r1,r7
	bl __aeabi_idiv
	mov r6,r0
	pop {r0}
	add sp,sp,#4 @stack align 8bytes
	mov r8,#0
	mov r7,r8
	add r8,r0,r7,lsl #2
	str r6,[r8]
	bl .avgPoolingL10
.avgPoolingL5:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	mov r6,r7
	add r7,r0,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	str r7,[fp,#-20]
	bl .avgPoolingL7
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	mov r9,#272
	sub sp,sp,r9
.mainL0:
.mainL1:
	mov r8,#32
	ldr r7,.LPIC1
	str r8,[r7]
	mov r8,#7
	mov r7,#0
	mov r6,r7
	movw r7,#65264
	movt r7,#65535  @ -272
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#23
	mov r7,#1
	mov r6,r7
	movw r7,#65264
	movt r7,#65535  @ -272
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#89
	mov r7,#2
	mov r6,r7
	movw r7,#65264
	movt r7,#65535  @ -272
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#26
	mov r7,#3
	mov r6,r7
	movw r7,#65264
	movt r7,#65535  @ -272
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	movw r8,#282
	movt r8,#0  @ 282
	mov r7,r8
	mov r8,#4
	mov r6,r8
	movw r8,#65264
	movt r8,#65535  @ -272
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	str r7,[r8]
	mov r8,#254
	mov r7,#5
	mov r6,r7
	movw r7,#65264
	movt r7,#65535  @ -272
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#27
	mov r7,#6
	mov r6,r7
	movw r7,#65264
	movt r7,#65535  @ -272
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#5
	mov r7,#7
	mov r6,r7
	movw r7,#65264
	movt r7,#65535  @ -272
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#83
	mov r7,#8
	mov r6,r7
	movw r7,#65264
	movt r7,#65535  @ -272
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	movw r8,#273
	movt r8,#0  @ 273
	mov r7,r8
	mov r8,#9
	mov r6,r8
	movw r8,#65264
	movt r8,#65535  @ -272
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	str r7,[r8]
	movw r8,#574
	movt r8,#0  @ 574
	mov r7,r8
	mov r8,#10
	mov r6,r8
	movw r8,#65264
	movt r8,#65535  @ -272
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	str r7,[r8]
	movw r8,#905
	movt r8,#0  @ 905
	mov r7,r8
	mov r8,#11
	mov r6,r8
	movw r8,#65264
	movt r8,#65535  @ -272
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	str r7,[r8]
	movw r8,#354
	movt r8,#0  @ 354
	mov r7,r8
	mov r8,#12
	mov r6,r8
	movw r8,#65264
	movt r8,#65535  @ -272
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	str r7,[r8]
	movw r8,#657
	movt r8,#0  @ 657
	mov r7,r8
	mov r8,#13
	mov r6,r8
	movw r8,#65264
	movt r8,#65535  @ -272
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	str r7,[r8]
	movw r8,#935
	movt r8,#0  @ 935
	mov r7,r8
	mov r8,#14
	mov r6,r8
	movw r8,#65264
	movt r8,#65535  @ -272
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	str r7,[r8]
	mov r8,#264
	mov r7,#15
	mov r6,r7
	movw r7,#65264
	movt r7,#65535  @ -272
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	movw r8,#639
	movt r8,#0  @ 639
	mov r7,r8
	mov r8,#16
	mov r6,r8
	movw r8,#65264
	movt r8,#65535  @ -272
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	str r7,[r8]
	movw r8,#459
	movt r8,#0  @ 459
	mov r7,r8
	mov r8,#17
	mov r6,r8
	movw r8,#65264
	movt r8,#65535  @ -272
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	str r7,[r8]
	mov r8,#29
	mov r7,#18
	mov r6,r7
	movw r7,#65264
	movt r7,#65535  @ -272
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#68
	mov r7,#19
	mov r6,r7
	movw r7,#65264
	movt r7,#65535  @ -272
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	movw r8,#929
	movt r8,#0  @ 929
	mov r7,r8
	mov r8,#20
	mov r6,r8
	movw r8,#65264
	movt r8,#65535  @ -272
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	str r7,[r8]
	mov r8,#756
	mov r7,#21
	mov r6,r7
	movw r7,#65264
	movt r7,#65535  @ -272
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#452
	mov r7,#22
	mov r6,r7
	movw r7,#65264
	movt r7,#65535  @ -272
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	movw r8,#279
	movt r8,#0  @ 279
	mov r7,r8
	mov r8,#23
	mov r6,r8
	movw r8,#65264
	movt r8,#65535  @ -272
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	str r7,[r8]
	mov r8,#58
	mov r7,#24
	mov r6,r7
	movw r7,#65264
	movt r7,#65535  @ -272
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#87
	mov r7,#25
	mov r6,r7
	movw r7,#65264
	movt r7,#65535  @ -272
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#96
	mov r7,#26
	mov r6,r7
	movw r7,#65264
	movt r7,#65535  @ -272
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#36
	mov r7,#27
	mov r6,r7
	movw r7,#65264
	movt r7,#65535  @ -272
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#39
	mov r7,#28
	mov r6,r7
	movw r7,#65264
	movt r7,#65535  @ -272
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#28
	mov r7,#29
	mov r6,r7
	movw r7,#65264
	movt r7,#65535  @ -272
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	mov r8,#1
	mov r7,#30
	mov r6,r7
	movw r7,#65264
	movt r7,#65535  @ -272
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	movw r8,#290
	movt r8,#0  @ 290
	mov r7,r8
	mov r8,#31
	mov r6,r8
	movw r8,#65264
	movt r8,#65535  @ -272
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	str r7,[r8]
	mov r8,#0
	str r8,[fp,#-16]
	movw r8,#65264
	movt r8,#65535  @ -272
	add r7,fp,r8
	mvn r8,#143
	add r6,fp,r8
	@%r103 = call i32 @arrCopy(ptr %r101,ptr %r102)
	mov r0,r7
	mov r1,r6
	bl arrCopy
	mov r8,r0
	str r8,[fp,#-16]
	mvn r8,#143
	add r7,fp,r8
	@%r105 = call i32 @revert(ptr %r104)
	mov r0,r7
	bl revert
	mov r8,r0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#0
	str r8,[fp,#-12]
.mainL2:
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL3
.mainL4:
	mvn r8,#143
	add r7,fp,r8
	@%r122 = call i32 @bubblesort(ptr %r121)
	mov r0,r7
	bl bubblesort
	mov r8,r0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
.mainL5:
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL6
.mainL7:
	mvn r8,#143
	add r7,fp,r8
	@%r137 = call i32 @getMid(ptr %r136)
	mov r0,r7
	bl getMid
	mov r8,r0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r138)
	mov r0,r8
	bl putint
	mvn r8,#143
	add r7,fp,r8
	@%r140 = call i32 @getMost(ptr %r139)
	mov r0,r7
	bl getMost
	mov r8,r0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r141)
	mov r0,r8
	bl putint
	movw r8,#65264
	movt r8,#65535  @ -272
	add r7,fp,r8
	mvn r8,#143
	add r6,fp,r8
	@%r144 = call i32 @arrCopy(ptr %r142,ptr %r143)
	mov r0,r7
	mov r1,r6
	bl arrCopy
	mov r8,r0
	str r8,[fp,#-16]
	mvn r8,#143
	add r7,fp,r8
	@%r146 = call i32 @bubblesort(ptr %r145)
	mov r0,r7
	bl bubblesort
	mov r8,r0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
.mainL8:
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL9
.mainL10:
	movw r8,#65264
	movt r8,#65535  @ -272
	add r7,fp,r8
	mvn r8,#143
	add r6,fp,r8
	@%r162 = call i32 @arrCopy(ptr %r160,ptr %r161)
	mov r0,r7
	mov r1,r6
	bl arrCopy
	mov r8,r0
	str r8,[fp,#-16]
	mvn r8,#143
	add r7,fp,r8
	@%r164 = call i32 @insertsort(ptr %r163)
	mov r0,r7
	bl insertsort
	mov r8,r0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
.mainL11:
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL12
.mainL13:
	movw r8,#65264
	movt r8,#65535  @ -272
	add r7,fp,r8
	mvn r8,#143
	add r6,fp,r8
	@%r180 = call i32 @arrCopy(ptr %r178,ptr %r179)
	mov r0,r7
	mov r1,r6
	bl arrCopy
	mov r8,r0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	mov r8,#31
	str r8,[fp,#-16]
	mvn r8,#143
	add r7,fp,r8
	ldr r8,[fp,#-12]
	ldr r6,[fp,#-16]
	@%r186 = call i32 @QuickSort(ptr %r183,i32 %r184,i32 %r185)
	mov r0,r7
	mov r1,r8
	mov r2,r6
	bl QuickSort
	mov r5,r0
	str r5,[fp,#-16]
.mainL14:
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL15
.mainL16:
	movw r8,#65264
	movt r8,#65535  @ -272
	add r7,fp,r8
	mvn r8,#143
	add r6,fp,r8
	@%r201 = call i32 @arrCopy(ptr %r199,ptr %r200)
	mov r0,r7
	mov r1,r6
	bl arrCopy
	mov r8,r0
	str r8,[fp,#-16]
	mvn r8,#143
	add r7,fp,r8
	mov r8,#4
	@%r204 = call i32 @calSum(ptr %r202,i32 %r203)
	mov r0,r7
	mov r1,r8
	bl calSum
	mov r6,r0
	str r6,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
.mainL17:
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL18
.mainL19:
	movw r8,#65264
	movt r8,#65535  @ -272
	add r7,fp,r8
	mvn r8,#143
	add r6,fp,r8
	@%r220 = call i32 @arrCopy(ptr %r218,ptr %r219)
	mov r0,r7
	mov r1,r6
	bl arrCopy
	mov r8,r0
	str r8,[fp,#-16]
	mvn r8,#143
	add r7,fp,r8
	mov r8,#3
	@%r223 = call i32 @avgPooling(ptr %r221,i32 %r222)
	mov r0,r7
	mov r1,r8
	bl avgPooling
	mov r6,r0
	str r6,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
.mainL20:
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL21
.mainL22:
	mov r8,#0
	mov r0,r8
	mov r9,#272
	add sp,sp,r9
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL21:
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#143
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r233)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL20
.mainL18:
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#143
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r214)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL17
.mainL15:
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#143
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r195)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL14
.mainL12:
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#143
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r174)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL11
.mainL9:
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#143
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r156)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL8
.mainL6:
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#143
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r132)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL5
.mainL3:
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#143
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r117)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL2
	.section	.note.GNU-stack,"",%progbits
