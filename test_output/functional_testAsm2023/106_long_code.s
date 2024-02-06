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
	ldr r8,[fp,#-20]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .insertsortL3
.insertsortL5:
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
	ldr r8,[fp,#-12]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bgt .insertsortL10
.insertsortL9:
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
.insertsortL4:
	ldr r8,[fp,#-20]
	ldr r7,.LPIC0
	ldr r6,[r7]
	cmp r8,r6
	blt .insertsortL3
	bge .insertsortL5
.insertsortL10:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	mov r6,r7
	add r7,r0,r6,lsl #2
	ldr r6,[r7]
	cmp r8,r6
	bge .insertsortL9
.insertsortL7:
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
.insertsortL8:
	ldr r8,[fp,#-12]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	ble .insertsortL9
.insertsortL12:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	mov r6,r7
	add r7,r0,r6,lsl #2
	ldr r6,[r7]
	cmp r8,r6
	blt .insertsortL7
	bge .insertsortL9
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
	ldr r8,[fp,#-20]
	ldr r7,.LPIC0
	ldr r6,[r7]
	mov r7,#1
	sub r5,r6,r7
	cmp r8,r5
	blt .bubblesortL3
.bubblesortL5:
	mov r8,#0
	mov r0,r8
	add sp,sp,#20
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.bubblesortL3:
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,.LPIC0
	ldr r6,[r7]
	ldr r7,[fp,#-20]
	sub r5,r6,r7
	mov r7,#1
	sub r6,r5,r7
	cmp r8,r6
	blt .bubblesortL7
.bubblesortL9:
	ldr r8,[fp,#-20]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-20]
.bubblesortL4:
	ldr r8,[fp,#-20]
	ldr r7,.LPIC0
	ldr r6,[r7]
	mov r7,#1
	sub r5,r6,r7
	cmp r8,r5
	blt .bubblesortL3
	bge .bubblesortL5
.bubblesortL7:
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
	bgt .bubblesortL10
.bubblesortL11:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.bubblesortL8:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC0
	ldr r6,[r7]
	ldr r7,[fp,#-20]
	sub r5,r6,r7
	mov r7,#1
	sub r6,r5,r7
	cmp r8,r6
	blt .bubblesortL7
	bge .bubblesortL9
.bubblesortL10:
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
	bl .bubblesortL11
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
	bl .LPIC2
.LPIC1:
	.word n
.LPIC2:
	ldr r8,.LPIC1
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
	ldr r8,[fp,#-24]
	mov r7,#1000
	cmp r8,r7
	blt .getMostL3
.getMostL5:
	mov r8,#0
	str r8,[fp,#-24]
	mov r8,#0
	str r8,[fp,#-20]
	mov r8,#0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-20]
	ldr r8,[fp,#-24]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .getMostL7
.getMostL9:
	ldr r8,[fp,#-16]
	mov r0,r8
	movw r9,#4024
	movt r9,#0  @ 4024
	add sp,sp,r9
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.getMostL7:
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
	bgt .getMostL10
.getMostL11:
	ldr r8,[fp,#-24]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-24]
.getMostL8:
	ldr r8,[fp,#-24]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .getMostL7
	bge .getMostL9
.getMostL10:
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
	bl .getMostL11
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
.getMostL4:
	ldr r8,[fp,#-24]
	mov r7,#1000
	cmp r8,r7
	blt .getMostL3
	bge .getMostL5
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
	ldr r8,[fp,#-12]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .arrCopyL3
.arrCopyL5:
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
.arrCopyL4:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .arrCopyL3
	bge .arrCopyL5
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
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	cmp r8,r7
	blt .revertL3
.revertL5:
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
.revertL4:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	cmp r8,r7
	blt .revertL3
	bge .revertL5
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
	ldr r8,[fp,#-12]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .calSumL3
.calSumL5:
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
	bne .calSumL6
.calSumL7:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-12]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	mov r8,#0
	str r8,[fp,#-16]
.calSumL8:
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.calSumL4:
	ldr r8,[fp,#-12]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .calSumL3
	bge .calSumL5
.calSumL6:
	mov r8,#0
	ldr r7,[fp,#-12]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	bl .calSumL8
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
	ldr r8,[fp,#-16]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .avgPoolingL3
.avgPoolingL5:
	ldr r8,.LPIC1
	ldr r7,[r8]
	ldr r8,[fp,#-24]
	sub r6,r7,r8
	mov r8,#1
	add r7,r6,r8
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .avgPoolingL13
.avgPoolingL15:
	mov r8,#0
	mov r0,r8
	add sp,sp,#24
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.avgPoolingL13:
	mov r8,#0
	ldr r7,[fp,#-16]
	mov r6,r7
	add r7,r0,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.avgPoolingL14:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .avgPoolingL13
	bge .avgPoolingL15
.avgPoolingL3:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-24]
	mov r6,#1
	sub r5,r7,r6
	cmp r8,r5
	blt .avgPoolingL6
.avgPoolingL7:
	ldr r8,[fp,#-16]
	ldr r7,[fp,#-24]
	mov r6,#1
	sub r5,r7,r6
	cmp r8,r5
	beq .avgPoolingL9
.avgPoolingL10:
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
.avgPoolingL11:
.avgPoolingL8:
	ldr r8,[fp,#-16]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-16]
.avgPoolingL4:
	ldr r8,[fp,#-16]
	ldr r7,.LPIC1
	ldr r6,[r7]
	cmp r8,r6
	blt .avgPoolingL3
	bge .avgPoolingL5
.avgPoolingL9:
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
	bl .avgPoolingL11
.avgPoolingL6:
	ldr r8,[fp,#-20]
	ldr r7,[fp,#-16]
	mov r6,r7
	add r7,r0,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	str r7,[fp,#-20]
	bl .avgPoolingL8
main:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	mov r9,#272
	sub sp,sp,r9
.mainL0:
.mainL1:
	mov r8,#32
	bl .LPIC4
.LPIC3:
	.word n
.LPIC4:
	ldr r7,.LPIC3
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
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL3
.mainL5:
	mvn r8,#143
	add r7,fp,r8
	@%r127 = call i32 @bubblesort(ptr %r126)
	mov r0,r7
	bl bubblesort
	mov r8,r0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL7
.mainL9:
	mvn r8,#143
	add r7,fp,r8
	@%r147 = call i32 @getMid(ptr %r146)
	mov r0,r7
	bl getMid
	mov r8,r0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r148)
	mov r0,r8
	bl putint
	mvn r8,#143
	add r7,fp,r8
	@%r150 = call i32 @getMost(ptr %r149)
	mov r0,r7
	bl getMost
	mov r8,r0
	str r8,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r151)
	mov r0,r8
	bl putint
	movw r8,#65264
	movt r8,#65535  @ -272
	add r7,fp,r8
	mvn r8,#143
	add r6,fp,r8
	@%r154 = call i32 @arrCopy(ptr %r152,ptr %r153)
	mov r0,r7
	mov r1,r6
	bl arrCopy
	mov r8,r0
	str r8,[fp,#-16]
	mvn r8,#143
	add r7,fp,r8
	@%r156 = call i32 @bubblesort(ptr %r155)
	mov r0,r7
	bl bubblesort
	mov r8,r0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL11
.mainL13:
	movw r8,#65264
	movt r8,#65535  @ -272
	add r7,fp,r8
	mvn r8,#143
	add r6,fp,r8
	@%r177 = call i32 @arrCopy(ptr %r175,ptr %r176)
	mov r0,r7
	mov r1,r6
	bl arrCopy
	mov r8,r0
	str r8,[fp,#-16]
	mvn r8,#143
	add r7,fp,r8
	@%r179 = call i32 @insertsort(ptr %r178)
	mov r0,r7
	bl insertsort
	mov r8,r0
	str r8,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL15
.mainL17:
	movw r8,#65264
	movt r8,#65535  @ -272
	add r7,fp,r8
	mvn r8,#143
	add r6,fp,r8
	@%r200 = call i32 @arrCopy(ptr %r198,ptr %r199)
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
	@%r206 = call i32 @QuickSort(ptr %r203,i32 %r204,i32 %r205)
	mov r0,r7
	mov r1,r8
	mov r2,r6
	bl QuickSort
	mov r5,r0
	str r5,[fp,#-16]
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL19
.mainL21:
	movw r8,#65264
	movt r8,#65535  @ -272
	add r7,fp,r8
	mvn r8,#143
	add r6,fp,r8
	@%r226 = call i32 @arrCopy(ptr %r224,ptr %r225)
	mov r0,r7
	mov r1,r6
	bl arrCopy
	mov r8,r0
	str r8,[fp,#-16]
	mvn r8,#143
	add r7,fp,r8
	mov r8,#4
	@%r229 = call i32 @calSum(ptr %r227,i32 %r228)
	mov r0,r7
	mov r1,r8
	bl calSum
	mov r6,r0
	str r6,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL23
.mainL25:
	movw r8,#65264
	movt r8,#65535  @ -272
	add r7,fp,r8
	mvn r8,#143
	add r6,fp,r8
	@%r250 = call i32 @arrCopy(ptr %r248,ptr %r249)
	mov r0,r7
	mov r1,r6
	bl arrCopy
	mov r8,r0
	str r8,[fp,#-16]
	mvn r8,#143
	add r7,fp,r8
	mov r8,#3
	@%r253 = call i32 @avgPooling(ptr %r251,i32 %r252)
	mov r0,r7
	mov r1,r8
	bl avgPooling
	mov r6,r0
	str r6,[fp,#-16]
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL27
.mainL29:
	mov r8,#0
	mov r0,r8
	mov r9,#272
	add sp,sp,r9
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.mainL27:
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#143
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r263)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.mainL28:
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL27
	bge .mainL29
.mainL23:
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#143
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r239)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.mainL24:
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL23
	bge .mainL25
.mainL19:
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#143
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r215)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.mainL20:
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL19
	bge .mainL21
.mainL15:
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#143
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r189)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.mainL16:
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL15
	bge .mainL17
.mainL11:
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#143
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r166)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.mainL12:
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL11
	bge .mainL13
.mainL7:
	ldr r8,[fp,#-12]
	mov r7,r8
	mvn r8,#143
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-16]
	ldr r8,[fp,#-16]
	@call void @putint(i32 %r137)
	mov r0,r8
	bl putint
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
.mainL8:
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL7
	bge .mainL9
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
.mainL4:
	ldr r8,[fp,#-12]
	mov r7,#32
	cmp r8,r7
	blt .mainL3
	bge .mainL5
	.section	.note.GNU-stack,"",%progbits
