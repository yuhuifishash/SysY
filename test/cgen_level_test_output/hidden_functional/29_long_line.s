.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
fib:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	movw r9,#5064
	movt r9,#0  @ 5064
	sub sp,sp,r9
.fibL0:
	movw r8,#61024
	movt r8,#65535  @ -4512
	mov r7,r8
	str r0,[fp,r7]
.fibL1:
	movw r7,#61024
	movt r7,#65535  @ -4512
	mov r8,r7
	ldr r7,[fp,r8]
	mov r8,#2
	cmp r7,r8
	ble .fibL2
.fibL3:
	mov r8,#0
	movw r7,#61028
	movt r7,#65535  @ -4508
	mov r6,r7
	str r8,[fp,r6]
	mov r8,#0
	movw r7,#61032
	movt r7,#65535  @ -4504
	mov r6,r7
	str r8,[fp,r6]
	mov r8,#0
	movw r7,#61036
	movt r7,#65535  @ -4500
	mov r6,r7
	str r8,[fp,r6]
	mov r8,#0
	movw r7,#61040
	movt r7,#65535  @ -4496
	mov r6,r7
	str r8,[fp,r6]
	mov r8,#0
	movw r7,#61044
	movt r7,#65535  @ -4492
	mov r6,r7
	str r8,[fp,r6]
	mov r8,#0
	movw r7,#61048
	movt r7,#65535  @ -4488
	mov r6,r7
	str r8,[fp,r6]
	mov r8,#0
	movw r7,#61052
	movt r7,#65535  @ -4484
	mov r6,r7
	str r8,[fp,r6]
	mov r8,#0
	movw r7,#61056
	movt r7,#65535  @ -4480
	mov r6,r7
	str r8,[fp,r6]
	mov r8,#0
	movw r7,#61060
	movt r7,#65535  @ -4476
	mov r6,r7
	str r8,[fp,r6]
	mov r8,#0
	movw r7,#61064
	movt r7,#65535  @ -4472
	mov r6,r7
	str r8,[fp,r6]
	mov r8,#0
	movw r7,#61068
	movt r7,#65535  @ -4468
	mov r6,r7
	str r8,[fp,r6]
	mov r8,#0
	movw r7,#61072
	movt r7,#65535  @ -4464
	mov r6,r7
	str r8,[fp,r6]
	mov r8,#0
	movw r7,#61076
	movt r7,#65535  @ -4460
	mov r6,r7
	str r8,[fp,r6]
	mov r8,#0
	movw r7,#61080
	movt r7,#65535  @ -4456
	mov r6,r7
	str r8,[fp,r6]
	mov r8,#0
	movw r7,#61084
	movt r7,#65535  @ -4452
	mov r6,r7
	str r8,[fp,r6]
	mov r8,#0
	movw r7,#61088
	movt r7,#65535  @ -4448
	mov r6,r7
	str r8,[fp,r6]
	mov r8,#0
	movw r7,#61092
	movt r7,#65535  @ -4444
	mov r6,r7
	str r8,[fp,r6]
	mov r8,#0
	movw r7,#61096
	movt r7,#65535  @ -4440
	mov r6,r7
	str r8,[fp,r6]
	mov r8,#0
	movw r7,#61100
	movt r7,#65535  @ -4436
	mov r6,r7
	str r8,[fp,r6]
	mov r8,#1
	movw r7,#61104
	movt r7,#65535  @ -4432
	mov r6,r7
	str r8,[fp,r6]
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r7,r8
	ldr r8,[fp,r7]
	mov r7,#2
	@%r50 = call i32 @__modsi3(i32 %r48,i32 %r49)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r7
	bl __modsi3
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61040
	movt r8,#65535  @ -4496
	mov r7,r8
	str r6,[fp,r7]
	movw r9,#61040
	movt r9,#65535  @ -4496
	movw r10,#61020
	movt r10,#65535  @ -4516
	str r9,[fp,r10]
	movw r10,#61020
	movt r10,#65535  @ -4516
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r6,[fp,r8]
	mov r8,#0
	cmp r6,r8
	blt .fibL4
.fibL5:
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r9,r8
	movw r10,#61016
	movt r10,#65535  @ -4520
	str r9,[fp,r10]
	movw r10,#61016
	movt r10,#65535  @ -4520
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r5,#2
	@%r60 = call i32 @__aeabi_idiv(i32 %r58,i32 %r59)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r4,r0
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r5,r8
	str r4,[fp,r5]
	movw r5,#61104
	movt r5,#65535  @ -4432
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	@%r63 = call i32 @__modsi3(i32 %r61,i32 %r62)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	mov r1,r8
	bl __modsi3
	mov r4,r0
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61044
	movt r8,#65535  @ -4492
	mov r5,r8
	str r4,[fp,r5]
	movw r9,#61044
	movt r9,#65535  @ -4492
	movw r10,#61012
	movt r10,#65535  @ -4524
	str r9,[fp,r10]
	movw r10,#61012
	movt r10,#65535  @ -4524
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r4,[fp,r8]
	mov r8,#0
	cmp r4,r8
	blt .fibL6
.fibL7:
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r9,r8
	movw r10,#61008
	movt r10,#65535  @ -4528
	str r9,[fp,r10]
	movw r10,#61008
	movt r10,#65535  @ -4528
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r3,#2
	@%r73 = call i32 @__aeabi_idiv(i32 %r71,i32 %r72)
	push {r3}
	mov r0,r8
	mov r1,r3
	bl __aeabi_idiv
	mov r2,r0
	pop {r3}
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r3,r8
	str r2,[fp,r3]
	movw r3,#61104
	movt r3,#65535  @ -4432
	mov r8,r3
	ldr r3,[fp,r8]
	mov r8,#2
	@%r76 = call i32 @__modsi3(i32 %r74,i32 %r75)
	push {r3}
	mov r0,r3
	mov r1,r8
	bl __modsi3
	mov r2,r0
	pop {r3}
	movw r8,#61048
	movt r8,#65535  @ -4488
	mov r3,r8
	str r2,[fp,r3]
	movw r9,#61048
	movt r9,#65535  @ -4488
	movw r10,#61004
	movt r10,#65535  @ -4532
	str r9,[fp,r10]
	movw r10,#61004
	movt r10,#65535  @ -4532
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r2,[fp,r8]
	mov r8,#0
	cmp r2,r8
	blt .fibL8
.fibL9:
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r9,r8
	movw r10,#61000
	movt r10,#65535  @ -4536
	str r9,[fp,r10]
	movw r10,#61000
	movt r10,#65535  @ -4536
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r1,#2
	@%r86 = call i32 @__aeabi_idiv(i32 %r84,i32 %r85)
	push {r1,r2,r3}
	mov r0,r8
	bl __aeabi_idiv
	pop {r1,r2,r3}
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r1,r8
	str r0,[fp,r1]
	movw r1,#61104
	movt r1,#65535  @ -4432
	mov r8,r1
	ldr r1,[fp,r8]
	mov r8,#2
	@%r89 = call i32 @__modsi3(i32 %r87,i32 %r88)
	push {r1,r2,r3}
	mov r0,r1
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61052
	movt r8,#65535  @ -4484
	mov r1,r8
	str r0,[fp,r1]
	movw r9,#61052
	movt r9,#65535  @ -4484
	movw r10,#60996
	movt r10,#65535  @ -4540
	str r9,[fp,r10]
	movw r10,#60996
	movt r10,#65535  @ -4540
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL10
.fibL11:
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r9,r8
	movw r10,#60992
	movt r10,#65535  @ -4544
	str r9,[fp,r10]
	movw r10,#60992
	movt r10,#65535  @ -4544
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r99 = call i32 @__aeabi_idiv(i32 %r97,i32 %r98)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r6,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r0,r8
	str r6,[fp,r0]
	movw r6,#61104
	movt r6,#65535  @ -4432
	mov r8,r6
	ldr r6,[fp,r8]
	mov r8,#2
	@%r102 = call i32 @__modsi3(i32 %r100,i32 %r101)
	push {r1,r2,r3}
	mov r0,r6
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61056
	movt r8,#65535  @ -4480
	mov r6,r8
	str r0,[fp,r6]
	movw r9,#61056
	movt r9,#65535  @ -4480
	movw r10,#60988
	movt r10,#65535  @ -4548
	str r9,[fp,r10]
	movw r10,#60988
	movt r10,#65535  @ -4548
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL12
.fibL13:
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r9,r8
	movw r10,#60984
	movt r10,#65535  @ -4552
	str r9,[fp,r10]
	movw r10,#60984
	movt r10,#65535  @ -4552
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r112 = call i32 @__aeabi_idiv(i32 %r110,i32 %r111)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r4,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r0,r8
	str r4,[fp,r0]
	movw r4,#61104
	movt r4,#65535  @ -4432
	mov r8,r4
	ldr r4,[fp,r8]
	mov r8,#2
	@%r115 = call i32 @__modsi3(i32 %r113,i32 %r114)
	push {r1,r2,r3}
	mov r0,r4
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61060
	movt r8,#65535  @ -4476
	mov r4,r8
	str r0,[fp,r4]
	movw r9,#61060
	movt r9,#65535  @ -4476
	movw r10,#60980
	movt r10,#65535  @ -4556
	str r9,[fp,r10]
	movw r10,#60980
	movt r10,#65535  @ -4556
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL14
.fibL15:
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r9,r8
	movw r10,#60976
	movt r10,#65535  @ -4560
	str r9,[fp,r10]
	movw r10,#60976
	movt r10,#65535  @ -4560
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r125 = call i32 @__aeabi_idiv(i32 %r123,i32 %r124)
	push {r0,r1,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r2,r0
	pop {r0,r1,r3}
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r0,r8
	str r2,[fp,r0]
	movw r2,#61104
	movt r2,#65535  @ -4432
	mov r8,r2
	ldr r2,[fp,r8]
	mov r8,#2
	@%r128 = call i32 @__modsi3(i32 %r126,i32 %r127)
	push {r1,r2,r3}
	mov r0,r2
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61064
	movt r8,#65535  @ -4472
	mov r2,r8
	str r0,[fp,r2]
	movw r9,#61064
	movt r9,#65535  @ -4472
	movw r10,#60972
	movt r10,#65535  @ -4564
	str r9,[fp,r10]
	movw r10,#60972
	movt r10,#65535  @ -4564
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL16
.fibL17:
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r9,r8
	movw r10,#60968
	movt r10,#65535  @ -4568
	str r9,[fp,r10]
	movw r10,#60968
	movt r10,#65535  @ -4568
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r138 = call i32 @__aeabi_idiv(i32 %r136,i32 %r137)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r7,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r0,r8
	str r7,[fp,r0]
	movw r7,#61104
	movt r7,#65535  @ -4432
	mov r8,r7
	ldr r7,[fp,r8]
	mov r8,#2
	@%r141 = call i32 @__modsi3(i32 %r139,i32 %r140)
	push {r1,r2,r3}
	mov r0,r7
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61068
	movt r8,#65535  @ -4468
	mov r7,r8
	str r0,[fp,r7]
	movw r9,#61068
	movt r9,#65535  @ -4468
	movw r10,#60964
	movt r10,#65535  @ -4572
	str r9,[fp,r10]
	movw r10,#60964
	movt r10,#65535  @ -4572
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL18
.fibL19:
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r9,r8
	movw r10,#60960
	movt r10,#65535  @ -4576
	str r9,[fp,r10]
	movw r10,#60960
	movt r10,#65535  @ -4576
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r151 = call i32 @__aeabi_idiv(i32 %r149,i32 %r150)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r5,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r0,r8
	str r5,[fp,r0]
	movw r5,#61104
	movt r5,#65535  @ -4432
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	@%r154 = call i32 @__modsi3(i32 %r152,i32 %r153)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61072
	movt r8,#65535  @ -4464
	mov r5,r8
	str r0,[fp,r5]
	movw r9,#61072
	movt r9,#65535  @ -4464
	movw r10,#60956
	movt r10,#65535  @ -4580
	str r9,[fp,r10]
	movw r10,#60956
	movt r10,#65535  @ -4580
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL20
.fibL21:
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r9,r8
	movw r10,#60952
	movt r10,#65535  @ -4584
	str r9,[fp,r10]
	movw r10,#60952
	movt r10,#65535  @ -4584
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r164 = call i32 @__aeabi_idiv(i32 %r162,i32 %r163)
	push {r0,r1,r2}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r3,r0
	pop {r0,r1,r2}
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r0,r8
	str r3,[fp,r0]
	movw r3,#61104
	movt r3,#65535  @ -4432
	mov r8,r3
	ldr r3,[fp,r8]
	mov r8,#2
	@%r167 = call i32 @__modsi3(i32 %r165,i32 %r166)
	push {r1,r2,r3}
	mov r0,r3
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61076
	movt r8,#65535  @ -4460
	mov r3,r8
	str r0,[fp,r3]
	movw r9,#61076
	movt r9,#65535  @ -4460
	movw r10,#60948
	movt r10,#65535  @ -4588
	str r9,[fp,r10]
	movw r10,#60948
	movt r10,#65535  @ -4588
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL22
.fibL23:
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r9,r8
	movw r10,#60944
	movt r10,#65535  @ -4592
	str r9,[fp,r10]
	movw r10,#60944
	movt r10,#65535  @ -4592
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r177 = call i32 @__aeabi_idiv(i32 %r175,i32 %r176)
	push {r0,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r1,r0
	pop {r0,r2,r3}
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r0,r8
	str r1,[fp,r0]
	movw r1,#61104
	movt r1,#65535  @ -4432
	mov r8,r1
	ldr r1,[fp,r8]
	mov r8,#2
	@%r180 = call i32 @__modsi3(i32 %r178,i32 %r179)
	push {r1,r2,r3}
	mov r0,r1
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61080
	movt r8,#65535  @ -4456
	mov r1,r8
	str r0,[fp,r1]
	movw r9,#61080
	movt r9,#65535  @ -4456
	movw r10,#60940
	movt r10,#65535  @ -4596
	str r9,[fp,r10]
	movw r10,#60940
	movt r10,#65535  @ -4596
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL24
.fibL25:
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r9,r8
	movw r10,#60936
	movt r10,#65535  @ -4600
	str r9,[fp,r10]
	movw r10,#60936
	movt r10,#65535  @ -4600
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r190 = call i32 @__aeabi_idiv(i32 %r188,i32 %r189)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r6,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r0,r8
	str r6,[fp,r0]
	movw r6,#61104
	movt r6,#65535  @ -4432
	mov r8,r6
	ldr r6,[fp,r8]
	mov r8,#2
	@%r193 = call i32 @__modsi3(i32 %r191,i32 %r192)
	push {r1,r2,r3}
	mov r0,r6
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61084
	movt r8,#65535  @ -4452
	mov r6,r8
	str r0,[fp,r6]
	movw r9,#61084
	movt r9,#65535  @ -4452
	movw r10,#60932
	movt r10,#65535  @ -4604
	str r9,[fp,r10]
	movw r10,#60932
	movt r10,#65535  @ -4604
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL26
.fibL27:
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r9,r8
	movw r10,#60928
	movt r10,#65535  @ -4608
	str r9,[fp,r10]
	movw r10,#60928
	movt r10,#65535  @ -4608
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r203 = call i32 @__aeabi_idiv(i32 %r201,i32 %r202)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r4,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r0,r8
	str r4,[fp,r0]
	movw r4,#61104
	movt r4,#65535  @ -4432
	mov r8,r4
	ldr r4,[fp,r8]
	mov r8,#2
	@%r206 = call i32 @__modsi3(i32 %r204,i32 %r205)
	push {r1,r2,r3}
	mov r0,r4
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61088
	movt r8,#65535  @ -4448
	mov r4,r8
	str r0,[fp,r4]
	movw r9,#61088
	movt r9,#65535  @ -4448
	movw r10,#60924
	movt r10,#65535  @ -4612
	str r9,[fp,r10]
	movw r10,#60924
	movt r10,#65535  @ -4612
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL28
.fibL29:
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r9,r8
	movw r10,#60920
	movt r10,#65535  @ -4616
	str r9,[fp,r10]
	movw r10,#60920
	movt r10,#65535  @ -4616
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r216 = call i32 @__aeabi_idiv(i32 %r214,i32 %r215)
	push {r0,r1,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r2,r0
	pop {r0,r1,r3}
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r0,r8
	str r2,[fp,r0]
	movw r2,#61104
	movt r2,#65535  @ -4432
	mov r8,r2
	ldr r2,[fp,r8]
	mov r8,#2
	@%r219 = call i32 @__modsi3(i32 %r217,i32 %r218)
	push {r1,r2,r3}
	mov r0,r2
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61092
	movt r8,#65535  @ -4444
	mov r2,r8
	str r0,[fp,r2]
	movw r9,#61092
	movt r9,#65535  @ -4444
	movw r10,#60916
	movt r10,#65535  @ -4620
	str r9,[fp,r10]
	movw r10,#60916
	movt r10,#65535  @ -4620
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL30
.fibL31:
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r9,r8
	movw r10,#60912
	movt r10,#65535  @ -4624
	str r9,[fp,r10]
	movw r10,#60912
	movt r10,#65535  @ -4624
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r229 = call i32 @__aeabi_idiv(i32 %r227,i32 %r228)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r7,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r0,r8
	str r7,[fp,r0]
	movw r7,#61104
	movt r7,#65535  @ -4432
	mov r8,r7
	ldr r7,[fp,r8]
	mov r8,#2
	@%r232 = call i32 @__modsi3(i32 %r230,i32 %r231)
	push {r1,r2,r3}
	mov r0,r7
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61096
	movt r8,#65535  @ -4440
	mov r7,r8
	str r0,[fp,r7]
	movw r9,#61096
	movt r9,#65535  @ -4440
	movw r10,#60908
	movt r10,#65535  @ -4628
	str r9,[fp,r10]
	movw r10,#60908
	movt r10,#65535  @ -4628
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL32
.fibL33:
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r9,r8
	movw r10,#60904
	movt r10,#65535  @ -4632
	str r9,[fp,r10]
	movw r10,#60904
	movt r10,#65535  @ -4632
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r242 = call i32 @__aeabi_idiv(i32 %r240,i32 %r241)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r5,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r0,r8
	str r5,[fp,r0]
	movw r5,#61104
	movt r5,#65535  @ -4432
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	@%r245 = call i32 @__modsi3(i32 %r243,i32 %r244)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61100
	movt r8,#65535  @ -4436
	mov r5,r8
	str r0,[fp,r5]
	movw r9,#61100
	movt r9,#65535  @ -4436
	movw r10,#60900
	movt r10,#65535  @ -4636
	str r9,[fp,r10]
	movw r10,#60900
	movt r10,#65535  @ -4636
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL34
.fibL35:
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r9,r8
	movw r10,#60896
	movt r10,#65535  @ -4640
	str r9,[fp,r10]
	movw r10,#60896
	movt r10,#65535  @ -4640
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r255 = call i32 @__aeabi_idiv(i32 %r253,i32 %r254)
	push {r0,r1,r2}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r3,r0
	pop {r0,r1,r2}
	movw r8,#61104
	movt r8,#65535  @ -4432
	mov r0,r8
	str r3,[fp,r0]
	mov r8,#0
	movw r3,#61108
	movt r3,#65535  @ -4428
	mov r0,r3
	str r8,[fp,r0]
	mov r8,#0
	movw r3,#61112
	movt r3,#65535  @ -4424
	mov r0,r3
	str r8,[fp,r0]
	mov r8,#0
	movw r3,#61116
	movt r3,#65535  @ -4420
	mov r0,r3
	str r8,[fp,r0]
	mov r8,#0
	movw r3,#61120
	movt r3,#65535  @ -4416
	mov r0,r3
	str r8,[fp,r0]
	mov r8,#0
	movw r3,#61124
	movt r3,#65535  @ -4412
	mov r0,r3
	str r8,[fp,r0]
	mov r8,#0
	movw r3,#61128
	movt r3,#65535  @ -4408
	mov r0,r3
	str r8,[fp,r0]
	mov r8,#0
	movw r3,#61132
	movt r3,#65535  @ -4404
	mov r0,r3
	str r8,[fp,r0]
	mov r8,#0
	movw r3,#61136
	movt r3,#65535  @ -4400
	mov r0,r3
	str r8,[fp,r0]
	mov r8,#0
	movw r3,#61140
	movt r3,#65535  @ -4396
	mov r0,r3
	str r8,[fp,r0]
	mov r8,#0
	movw r3,#61144
	movt r3,#65535  @ -4392
	mov r0,r3
	str r8,[fp,r0]
	mov r8,#0
	movw r3,#61148
	movt r3,#65535  @ -4388
	mov r0,r3
	str r8,[fp,r0]
	mov r8,#0
	movw r3,#61152
	movt r3,#65535  @ -4384
	mov r0,r3
	str r8,[fp,r0]
	mov r8,#0
	movw r3,#61156
	movt r3,#65535  @ -4380
	mov r0,r3
	str r8,[fp,r0]
	mov r8,#0
	movw r3,#61160
	movt r3,#65535  @ -4376
	mov r0,r3
	str r8,[fp,r0]
	mov r8,#0
	movw r3,#61164
	movt r3,#65535  @ -4372
	mov r0,r3
	str r8,[fp,r0]
	mov r8,#0
	movw r3,#61168
	movt r3,#65535  @ -4368
	mov r0,r3
	str r8,[fp,r0]
	movw r8,#61040
	movt r8,#65535  @ -4496
	mov r3,r8
	ldr r8,[fp,r3]
	cmp r8,#0
	beq .fibL36
.fibL37:
	mov r8,#0
	movw r3,#61108
	movt r3,#65535  @ -4428
	mov r0,r3
	str r8,[fp,r0]
.fibL38:
	movw r8,#61044
	movt r8,#65535  @ -4492
	mov r3,r8
	ldr r8,[fp,r3]
	cmp r8,#0
	beq .fibL39
.fibL40:
	mov r8,#0
	movw r3,#61112
	movt r3,#65535  @ -4424
	mov r0,r3
	str r8,[fp,r0]
.fibL41:
	movw r8,#61048
	movt r8,#65535  @ -4488
	mov r3,r8
	ldr r8,[fp,r3]
	cmp r8,#0
	beq .fibL42
.fibL43:
	mov r8,#0
	movw r3,#61116
	movt r3,#65535  @ -4420
	mov r0,r3
	str r8,[fp,r0]
.fibL44:
	movw r8,#61052
	movt r8,#65535  @ -4484
	mov r3,r8
	ldr r8,[fp,r3]
	cmp r8,#0
	beq .fibL45
.fibL46:
	mov r8,#0
	movw r3,#61120
	movt r3,#65535  @ -4416
	mov r0,r3
	str r8,[fp,r0]
.fibL47:
	movw r8,#61056
	movt r8,#65535  @ -4480
	mov r3,r8
	ldr r8,[fp,r3]
	cmp r8,#0
	beq .fibL48
.fibL49:
	mov r8,#0
	movw r3,#61124
	movt r3,#65535  @ -4412
	mov r0,r3
	str r8,[fp,r0]
.fibL50:
	movw r8,#61060
	movt r8,#65535  @ -4476
	mov r3,r8
	ldr r8,[fp,r3]
	cmp r8,#0
	beq .fibL51
.fibL52:
	mov r8,#0
	movw r3,#61128
	movt r3,#65535  @ -4408
	mov r0,r3
	str r8,[fp,r0]
.fibL53:
	movw r8,#61064
	movt r8,#65535  @ -4472
	mov r3,r8
	ldr r8,[fp,r3]
	cmp r8,#0
	beq .fibL54
.fibL55:
	mov r8,#0
	movw r3,#61132
	movt r3,#65535  @ -4404
	mov r0,r3
	str r8,[fp,r0]
.fibL56:
	movw r8,#61068
	movt r8,#65535  @ -4468
	mov r3,r8
	ldr r8,[fp,r3]
	cmp r8,#0
	beq .fibL57
.fibL58:
	mov r8,#0
	movw r3,#61136
	movt r3,#65535  @ -4400
	mov r0,r3
	str r8,[fp,r0]
.fibL59:
	movw r8,#61072
	movt r8,#65535  @ -4464
	mov r3,r8
	ldr r8,[fp,r3]
	cmp r8,#0
	beq .fibL60
.fibL61:
	mov r8,#0
	movw r3,#61140
	movt r3,#65535  @ -4396
	mov r0,r3
	str r8,[fp,r0]
.fibL62:
	movw r8,#61076
	movt r8,#65535  @ -4460
	mov r3,r8
	ldr r8,[fp,r3]
	cmp r8,#0
	beq .fibL63
.fibL64:
	mov r8,#0
	movw r3,#61144
	movt r3,#65535  @ -4392
	mov r0,r3
	str r8,[fp,r0]
.fibL65:
	movw r8,#61080
	movt r8,#65535  @ -4456
	mov r3,r8
	ldr r8,[fp,r3]
	cmp r8,#0
	beq .fibL66
.fibL67:
	mov r8,#0
	movw r3,#61148
	movt r3,#65535  @ -4388
	mov r0,r3
	str r8,[fp,r0]
.fibL68:
	movw r8,#61084
	movt r8,#65535  @ -4452
	mov r3,r8
	ldr r8,[fp,r3]
	cmp r8,#0
	beq .fibL69
.fibL70:
	mov r8,#0
	movw r3,#61152
	movt r3,#65535  @ -4384
	mov r0,r3
	str r8,[fp,r0]
.fibL71:
	movw r8,#61088
	movt r8,#65535  @ -4448
	mov r3,r8
	ldr r8,[fp,r3]
	cmp r8,#0
	beq .fibL72
.fibL73:
	mov r8,#0
	movw r3,#61156
	movt r3,#65535  @ -4380
	mov r0,r3
	str r8,[fp,r0]
.fibL74:
	movw r8,#61092
	movt r8,#65535  @ -4444
	mov r3,r8
	ldr r8,[fp,r3]
	cmp r8,#0
	beq .fibL75
.fibL76:
	mov r8,#0
	movw r3,#61160
	movt r3,#65535  @ -4376
	mov r0,r3
	str r8,[fp,r0]
.fibL77:
	movw r8,#61096
	movt r8,#65535  @ -4440
	mov r3,r8
	ldr r8,[fp,r3]
	cmp r8,#0
	beq .fibL78
.fibL79:
	mov r8,#0
	movw r3,#61164
	movt r3,#65535  @ -4372
	mov r0,r3
	str r8,[fp,r0]
.fibL80:
	movw r8,#61100
	movt r8,#65535  @ -4436
	mov r3,r8
	ldr r8,[fp,r3]
	cmp r8,#0
	beq .fibL81
.fibL82:
	mov r8,#0
	movw r3,#61168
	movt r3,#65535  @ -4368
	mov r0,r3
	str r8,[fp,r0]
.fibL83:
	mov r8,#0
	movw r3,#61036
	movt r3,#65535  @ -4500
	mov r0,r3
	str r8,[fp,r0]
	movw r8,#61036
	movt r8,#65535  @ -4500
	mov r3,r8
	ldr r0,[fp,r3]
	mov r3,#2
	mul r2,r0,r3
	movw r3,#61168
	movt r3,#65535  @ -4368
	mov r8,r3
	ldr r3,[fp,r8]
	add r8,r2,r3
	movw r3,#61036
	movt r3,#65535  @ -4500
	mov r2,r3
	str r8,[fp,r2]
	movw r8,#61036
	movt r8,#65535  @ -4500
	mov r3,r8
	ldr r2,[fp,r3]
	mov r3,#2
	mul r0,r2,r3
	movw r3,#61164
	movt r3,#65535  @ -4372
	mov r8,r3
	ldr r3,[fp,r8]
	add r8,r0,r3
	movw r3,#61036
	movt r3,#65535  @ -4500
	mov r2,r3
	str r8,[fp,r2]
	movw r8,#61036
	movt r8,#65535  @ -4500
	mov r3,r8
	ldr r2,[fp,r3]
	mov r3,#2
	mul r0,r2,r3
	movw r3,#61160
	movt r3,#65535  @ -4376
	mov r8,r3
	ldr r3,[fp,r8]
	add r8,r0,r3
	movw r3,#61036
	movt r3,#65535  @ -4500
	mov r2,r3
	str r8,[fp,r2]
	movw r8,#61036
	movt r8,#65535  @ -4500
	mov r3,r8
	ldr r2,[fp,r3]
	mov r3,#2
	mul r0,r2,r3
	movw r3,#61156
	movt r3,#65535  @ -4380
	mov r8,r3
	ldr r3,[fp,r8]
	add r8,r0,r3
	movw r3,#61036
	movt r3,#65535  @ -4500
	mov r2,r3
	str r8,[fp,r2]
	movw r8,#61036
	movt r8,#65535  @ -4500
	mov r3,r8
	ldr r2,[fp,r3]
	mov r3,#2
	mul r0,r2,r3
	movw r3,#61152
	movt r3,#65535  @ -4384
	mov r8,r3
	ldr r3,[fp,r8]
	add r8,r0,r3
	movw r3,#61036
	movt r3,#65535  @ -4500
	mov r2,r3
	str r8,[fp,r2]
	movw r8,#61036
	movt r8,#65535  @ -4500
	mov r3,r8
	ldr r2,[fp,r3]
	mov r3,#2
	mul r0,r2,r3
	movw r3,#61148
	movt r3,#65535  @ -4388
	mov r8,r3
	ldr r3,[fp,r8]
	add r8,r0,r3
	movw r3,#61036
	movt r3,#65535  @ -4500
	mov r2,r3
	str r8,[fp,r2]
	movw r8,#61036
	movt r8,#65535  @ -4500
	mov r3,r8
	ldr r2,[fp,r3]
	mov r3,#2
	mul r0,r2,r3
	movw r3,#61144
	movt r3,#65535  @ -4392
	mov r8,r3
	ldr r3,[fp,r8]
	add r8,r0,r3
	movw r3,#61036
	movt r3,#65535  @ -4500
	mov r2,r3
	str r8,[fp,r2]
	movw r8,#61036
	movt r8,#65535  @ -4500
	mov r3,r8
	ldr r2,[fp,r3]
	mov r3,#2
	mul r0,r2,r3
	movw r3,#61140
	movt r3,#65535  @ -4396
	mov r8,r3
	ldr r3,[fp,r8]
	add r8,r0,r3
	movw r3,#61036
	movt r3,#65535  @ -4500
	mov r2,r3
	str r8,[fp,r2]
	movw r8,#61036
	movt r8,#65535  @ -4500
	mov r3,r8
	ldr r2,[fp,r3]
	mov r3,#2
	mul r0,r2,r3
	movw r3,#61136
	movt r3,#65535  @ -4400
	mov r8,r3
	ldr r3,[fp,r8]
	add r8,r0,r3
	movw r3,#61036
	movt r3,#65535  @ -4500
	mov r2,r3
	str r8,[fp,r2]
	movw r8,#61036
	movt r8,#65535  @ -4500
	mov r3,r8
	ldr r2,[fp,r3]
	mov r3,#2
	mul r0,r2,r3
	movw r3,#61132
	movt r3,#65535  @ -4404
	mov r8,r3
	ldr r3,[fp,r8]
	add r8,r0,r3
	movw r3,#61036
	movt r3,#65535  @ -4500
	mov r2,r3
	str r8,[fp,r2]
	movw r8,#61036
	movt r8,#65535  @ -4500
	mov r3,r8
	ldr r2,[fp,r3]
	mov r3,#2
	mul r0,r2,r3
	movw r3,#61128
	movt r3,#65535  @ -4408
	mov r8,r3
	ldr r3,[fp,r8]
	add r8,r0,r3
	movw r3,#61036
	movt r3,#65535  @ -4500
	mov r2,r3
	str r8,[fp,r2]
	movw r8,#61036
	movt r8,#65535  @ -4500
	mov r3,r8
	ldr r2,[fp,r3]
	mov r3,#2
	mul r0,r2,r3
	movw r3,#61124
	movt r3,#65535  @ -4412
	mov r8,r3
	ldr r3,[fp,r8]
	add r8,r0,r3
	movw r3,#61036
	movt r3,#65535  @ -4500
	mov r2,r3
	str r8,[fp,r2]
	movw r8,#61036
	movt r8,#65535  @ -4500
	mov r3,r8
	ldr r2,[fp,r3]
	mov r3,#2
	mul r0,r2,r3
	movw r3,#61120
	movt r3,#65535  @ -4416
	mov r8,r3
	ldr r3,[fp,r8]
	add r8,r0,r3
	movw r3,#61036
	movt r3,#65535  @ -4500
	mov r2,r3
	str r8,[fp,r2]
	movw r8,#61036
	movt r8,#65535  @ -4500
	mov r3,r8
	ldr r2,[fp,r3]
	mov r3,#2
	mul r0,r2,r3
	movw r3,#61116
	movt r3,#65535  @ -4420
	mov r8,r3
	ldr r3,[fp,r8]
	add r8,r0,r3
	movw r3,#61036
	movt r3,#65535  @ -4500
	mov r2,r3
	str r8,[fp,r2]
	movw r8,#61036
	movt r8,#65535  @ -4500
	mov r3,r8
	ldr r2,[fp,r3]
	mov r3,#2
	mul r0,r2,r3
	movw r3,#61112
	movt r3,#65535  @ -4424
	mov r8,r3
	ldr r3,[fp,r8]
	add r8,r0,r3
	movw r3,#61036
	movt r3,#65535  @ -4500
	mov r2,r3
	str r8,[fp,r2]
	movw r8,#61036
	movt r8,#65535  @ -4500
	mov r3,r8
	ldr r2,[fp,r3]
	mov r3,#2
	mul r0,r2,r3
	movw r3,#61108
	movt r3,#65535  @ -4428
	mov r8,r3
	ldr r3,[fp,r8]
	add r8,r0,r3
	movw r3,#61036
	movt r3,#65535  @ -4500
	mov r2,r3
	str r8,[fp,r2]
	mov r8,#0
	movw r3,#61172
	movt r3,#65535  @ -4364
	mov r2,r3
	str r8,[fp,r2]
	mov r8,#0
	movw r3,#61176
	movt r3,#65535  @ -4360
	mov r2,r3
	str r8,[fp,r2]
	mov r8,#0
	movw r3,#61180
	movt r3,#65535  @ -4356
	mov r2,r3
	str r8,[fp,r2]
	mov r8,#0
	movw r3,#61184
	movt r3,#65535  @ -4352
	mov r2,r3
	str r8,[fp,r2]
	mov r8,#0
	movw r3,#61188
	movt r3,#65535  @ -4348
	mov r2,r3
	str r8,[fp,r2]
	mov r8,#0
	movw r3,#61192
	movt r3,#65535  @ -4344
	mov r2,r3
	str r8,[fp,r2]
	mov r8,#0
	movw r3,#61196
	movt r3,#65535  @ -4340
	mov r2,r3
	str r8,[fp,r2]
	mov r8,#0
	movw r3,#61200
	movt r3,#65535  @ -4336
	mov r2,r3
	str r8,[fp,r2]
	mov r8,#0
	movw r3,#61204
	movt r3,#65535  @ -4332
	mov r2,r3
	str r8,[fp,r2]
	mov r8,#0
	movw r3,#61208
	movt r3,#65535  @ -4328
	mov r2,r3
	str r8,[fp,r2]
	mov r8,#0
	movw r3,#61212
	movt r3,#65535  @ -4324
	mov r2,r3
	str r8,[fp,r2]
	mov r8,#0
	movw r3,#61216
	movt r3,#65535  @ -4320
	mov r2,r3
	str r8,[fp,r2]
	mov r8,#0
	movw r3,#61220
	movt r3,#65535  @ -4316
	mov r2,r3
	str r8,[fp,r2]
	mov r8,#0
	movw r3,#61224
	movt r3,#65535  @ -4312
	mov r2,r3
	str r8,[fp,r2]
	mov r8,#0
	movw r3,#61228
	movt r3,#65535  @ -4308
	mov r2,r3
	str r8,[fp,r2]
	mov r8,#0
	movw r3,#61232
	movt r3,#65535  @ -4304
	mov r2,r3
	str r8,[fp,r2]
	mov r8,#0
	movw r3,#61236
	movt r3,#65535  @ -4300
	mov r2,r3
	str r8,[fp,r2]
	movw r8,#61036
	movt r8,#65535  @ -4500
	mov r3,r8
	ldr r8,[fp,r3]
	movw r3,#61240
	movt r3,#65535  @ -4296
	mov r2,r3
	str r8,[fp,r2]
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r3,r8
	ldr r8,[fp,r3]
	mov r3,#2
	@%r503 = call i32 @__modsi3(i32 %r501,i32 %r502)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r3
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61176
	movt r8,#65535  @ -4360
	mov r3,r8
	str r2,[fp,r3]
	movw r9,#61176
	movt r9,#65535  @ -4360
	movw r10,#60892
	movt r10,#65535  @ -4644
	str r9,[fp,r10]
	movw r10,#60892
	movt r10,#65535  @ -4644
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r2,[fp,r8]
	mov r8,#0
	cmp r2,r8
	blt .fibL84
.fibL85:
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r9,r8
	movw r10,#60888
	movt r10,#65535  @ -4648
	str r9,[fp,r10]
	movw r10,#60888
	movt r10,#65535  @ -4648
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r513 = call i32 @__aeabi_idiv(i32 %r511,i32 %r512)
	push {r0,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r1,r0
	pop {r0,r2,r3}
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r0,r8
	str r1,[fp,r0]
	movw r1,#61240
	movt r1,#65535  @ -4296
	mov r8,r1
	ldr r1,[fp,r8]
	mov r8,#2
	@%r516 = call i32 @__modsi3(i32 %r514,i32 %r515)
	push {r1,r2,r3}
	mov r0,r1
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61180
	movt r8,#65535  @ -4356
	mov r1,r8
	str r0,[fp,r1]
	movw r9,#61180
	movt r9,#65535  @ -4356
	movw r10,#60884
	movt r10,#65535  @ -4652
	str r9,[fp,r10]
	movw r10,#60884
	movt r10,#65535  @ -4652
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL86
.fibL87:
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r9,r8
	movw r10,#60880
	movt r10,#65535  @ -4656
	str r9,[fp,r10]
	movw r10,#60880
	movt r10,#65535  @ -4656
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r526 = call i32 @__aeabi_idiv(i32 %r524,i32 %r525)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r6,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r0,r8
	str r6,[fp,r0]
	movw r6,#61240
	movt r6,#65535  @ -4296
	mov r8,r6
	ldr r6,[fp,r8]
	mov r8,#2
	@%r529 = call i32 @__modsi3(i32 %r527,i32 %r528)
	push {r1,r2,r3}
	mov r0,r6
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61184
	movt r8,#65535  @ -4352
	mov r6,r8
	str r0,[fp,r6]
	movw r9,#61184
	movt r9,#65535  @ -4352
	movw r10,#60876
	movt r10,#65535  @ -4660
	str r9,[fp,r10]
	movw r10,#60876
	movt r10,#65535  @ -4660
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL88
.fibL89:
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r9,r8
	movw r10,#60872
	movt r10,#65535  @ -4664
	str r9,[fp,r10]
	movw r10,#60872
	movt r10,#65535  @ -4664
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r539 = call i32 @__aeabi_idiv(i32 %r537,i32 %r538)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r4,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r0,r8
	str r4,[fp,r0]
	movw r4,#61240
	movt r4,#65535  @ -4296
	mov r8,r4
	ldr r4,[fp,r8]
	mov r8,#2
	@%r542 = call i32 @__modsi3(i32 %r540,i32 %r541)
	push {r1,r2,r3}
	mov r0,r4
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61188
	movt r8,#65535  @ -4348
	mov r4,r8
	str r0,[fp,r4]
	movw r9,#61188
	movt r9,#65535  @ -4348
	movw r10,#60868
	movt r10,#65535  @ -4668
	str r9,[fp,r10]
	movw r10,#60868
	movt r10,#65535  @ -4668
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL90
.fibL91:
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r9,r8
	movw r10,#60864
	movt r10,#65535  @ -4672
	str r9,[fp,r10]
	movw r10,#60864
	movt r10,#65535  @ -4672
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r552 = call i32 @__aeabi_idiv(i32 %r550,i32 %r551)
	push {r0,r1,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r2,r0
	pop {r0,r1,r3}
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r0,r8
	str r2,[fp,r0]
	movw r2,#61240
	movt r2,#65535  @ -4296
	mov r8,r2
	ldr r2,[fp,r8]
	mov r8,#2
	@%r555 = call i32 @__modsi3(i32 %r553,i32 %r554)
	push {r1,r2,r3}
	mov r0,r2
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61192
	movt r8,#65535  @ -4344
	mov r2,r8
	str r0,[fp,r2]
	movw r9,#61192
	movt r9,#65535  @ -4344
	movw r10,#60860
	movt r10,#65535  @ -4676
	str r9,[fp,r10]
	movw r10,#60860
	movt r10,#65535  @ -4676
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL92
.fibL93:
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r9,r8
	movw r10,#60856
	movt r10,#65535  @ -4680
	str r9,[fp,r10]
	movw r10,#60856
	movt r10,#65535  @ -4680
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r565 = call i32 @__aeabi_idiv(i32 %r563,i32 %r564)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r7,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r0,r8
	str r7,[fp,r0]
	movw r7,#61240
	movt r7,#65535  @ -4296
	mov r8,r7
	ldr r7,[fp,r8]
	mov r8,#2
	@%r568 = call i32 @__modsi3(i32 %r566,i32 %r567)
	push {r1,r2,r3}
	mov r0,r7
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61196
	movt r8,#65535  @ -4340
	mov r7,r8
	str r0,[fp,r7]
	movw r9,#61196
	movt r9,#65535  @ -4340
	movw r10,#60852
	movt r10,#65535  @ -4684
	str r9,[fp,r10]
	movw r10,#60852
	movt r10,#65535  @ -4684
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL94
.fibL95:
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r9,r8
	movw r10,#60848
	movt r10,#65535  @ -4688
	str r9,[fp,r10]
	movw r10,#60848
	movt r10,#65535  @ -4688
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r578 = call i32 @__aeabi_idiv(i32 %r576,i32 %r577)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r5,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r0,r8
	str r5,[fp,r0]
	movw r5,#61240
	movt r5,#65535  @ -4296
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	@%r581 = call i32 @__modsi3(i32 %r579,i32 %r580)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61200
	movt r8,#65535  @ -4336
	mov r5,r8
	str r0,[fp,r5]
	movw r9,#61200
	movt r9,#65535  @ -4336
	movw r10,#60844
	movt r10,#65535  @ -4692
	str r9,[fp,r10]
	movw r10,#60844
	movt r10,#65535  @ -4692
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL96
.fibL97:
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r9,r8
	movw r10,#60840
	movt r10,#65535  @ -4696
	str r9,[fp,r10]
	movw r10,#60840
	movt r10,#65535  @ -4696
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r591 = call i32 @__aeabi_idiv(i32 %r589,i32 %r590)
	push {r0,r1,r2}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r3,r0
	pop {r0,r1,r2}
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r0,r8
	str r3,[fp,r0]
	movw r3,#61240
	movt r3,#65535  @ -4296
	mov r8,r3
	ldr r3,[fp,r8]
	mov r8,#2
	@%r594 = call i32 @__modsi3(i32 %r592,i32 %r593)
	push {r1,r2,r3}
	mov r0,r3
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61204
	movt r8,#65535  @ -4332
	mov r3,r8
	str r0,[fp,r3]
	movw r9,#61204
	movt r9,#65535  @ -4332
	movw r10,#60836
	movt r10,#65535  @ -4700
	str r9,[fp,r10]
	movw r10,#60836
	movt r10,#65535  @ -4700
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL98
.fibL99:
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r9,r8
	movw r10,#60832
	movt r10,#65535  @ -4704
	str r9,[fp,r10]
	movw r10,#60832
	movt r10,#65535  @ -4704
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r604 = call i32 @__aeabi_idiv(i32 %r602,i32 %r603)
	push {r0,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r1,r0
	pop {r0,r2,r3}
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r0,r8
	str r1,[fp,r0]
	movw r1,#61240
	movt r1,#65535  @ -4296
	mov r8,r1
	ldr r1,[fp,r8]
	mov r8,#2
	@%r607 = call i32 @__modsi3(i32 %r605,i32 %r606)
	push {r1,r2,r3}
	mov r0,r1
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61208
	movt r8,#65535  @ -4328
	mov r1,r8
	str r0,[fp,r1]
	movw r9,#61208
	movt r9,#65535  @ -4328
	movw r10,#60828
	movt r10,#65535  @ -4708
	str r9,[fp,r10]
	movw r10,#60828
	movt r10,#65535  @ -4708
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL100
.fibL101:
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r9,r8
	movw r10,#60824
	movt r10,#65535  @ -4712
	str r9,[fp,r10]
	movw r10,#60824
	movt r10,#65535  @ -4712
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r617 = call i32 @__aeabi_idiv(i32 %r615,i32 %r616)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r6,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r0,r8
	str r6,[fp,r0]
	movw r6,#61240
	movt r6,#65535  @ -4296
	mov r8,r6
	ldr r6,[fp,r8]
	mov r8,#2
	@%r620 = call i32 @__modsi3(i32 %r618,i32 %r619)
	push {r1,r2,r3}
	mov r0,r6
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61212
	movt r8,#65535  @ -4324
	mov r6,r8
	str r0,[fp,r6]
	movw r9,#61212
	movt r9,#65535  @ -4324
	movw r10,#60820
	movt r10,#65535  @ -4716
	str r9,[fp,r10]
	movw r10,#60820
	movt r10,#65535  @ -4716
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL102
.fibL103:
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r9,r8
	movw r10,#60816
	movt r10,#65535  @ -4720
	str r9,[fp,r10]
	movw r10,#60816
	movt r10,#65535  @ -4720
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r630 = call i32 @__aeabi_idiv(i32 %r628,i32 %r629)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r4,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r0,r8
	str r4,[fp,r0]
	movw r4,#61240
	movt r4,#65535  @ -4296
	mov r8,r4
	ldr r4,[fp,r8]
	mov r8,#2
	@%r633 = call i32 @__modsi3(i32 %r631,i32 %r632)
	push {r1,r2,r3}
	mov r0,r4
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61216
	movt r8,#65535  @ -4320
	mov r4,r8
	str r0,[fp,r4]
	movw r9,#61216
	movt r9,#65535  @ -4320
	movw r10,#60812
	movt r10,#65535  @ -4724
	str r9,[fp,r10]
	movw r10,#60812
	movt r10,#65535  @ -4724
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL104
.fibL105:
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r9,r8
	movw r10,#60808
	movt r10,#65535  @ -4728
	str r9,[fp,r10]
	movw r10,#60808
	movt r10,#65535  @ -4728
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r643 = call i32 @__aeabi_idiv(i32 %r641,i32 %r642)
	push {r0,r1,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r2,r0
	pop {r0,r1,r3}
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r0,r8
	str r2,[fp,r0]
	movw r2,#61240
	movt r2,#65535  @ -4296
	mov r8,r2
	ldr r2,[fp,r8]
	mov r8,#2
	@%r646 = call i32 @__modsi3(i32 %r644,i32 %r645)
	push {r1,r2,r3}
	mov r0,r2
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61220
	movt r8,#65535  @ -4316
	mov r2,r8
	str r0,[fp,r2]
	movw r9,#61220
	movt r9,#65535  @ -4316
	movw r10,#60804
	movt r10,#65535  @ -4732
	str r9,[fp,r10]
	movw r10,#60804
	movt r10,#65535  @ -4732
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL106
.fibL107:
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r9,r8
	movw r10,#60800
	movt r10,#65535  @ -4736
	str r9,[fp,r10]
	movw r10,#60800
	movt r10,#65535  @ -4736
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r656 = call i32 @__aeabi_idiv(i32 %r654,i32 %r655)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r7,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r0,r8
	str r7,[fp,r0]
	movw r7,#61240
	movt r7,#65535  @ -4296
	mov r8,r7
	ldr r7,[fp,r8]
	mov r8,#2
	@%r659 = call i32 @__modsi3(i32 %r657,i32 %r658)
	push {r1,r2,r3}
	mov r0,r7
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61224
	movt r8,#65535  @ -4312
	mov r7,r8
	str r0,[fp,r7]
	movw r9,#61224
	movt r9,#65535  @ -4312
	movw r10,#60796
	movt r10,#65535  @ -4740
	str r9,[fp,r10]
	movw r10,#60796
	movt r10,#65535  @ -4740
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL108
.fibL109:
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r9,r8
	movw r10,#60792
	movt r10,#65535  @ -4744
	str r9,[fp,r10]
	movw r10,#60792
	movt r10,#65535  @ -4744
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r669 = call i32 @__aeabi_idiv(i32 %r667,i32 %r668)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r5,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r0,r8
	str r5,[fp,r0]
	movw r5,#61240
	movt r5,#65535  @ -4296
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	@%r672 = call i32 @__modsi3(i32 %r670,i32 %r671)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61228
	movt r8,#65535  @ -4308
	mov r5,r8
	str r0,[fp,r5]
	movw r9,#61228
	movt r9,#65535  @ -4308
	movw r10,#60788
	movt r10,#65535  @ -4748
	str r9,[fp,r10]
	movw r10,#60788
	movt r10,#65535  @ -4748
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL110
.fibL111:
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r9,r8
	movw r10,#60784
	movt r10,#65535  @ -4752
	str r9,[fp,r10]
	movw r10,#60784
	movt r10,#65535  @ -4752
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r682 = call i32 @__aeabi_idiv(i32 %r680,i32 %r681)
	push {r0,r1,r2}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r3,r0
	pop {r0,r1,r2}
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r0,r8
	str r3,[fp,r0]
	movw r3,#61240
	movt r3,#65535  @ -4296
	mov r8,r3
	ldr r3,[fp,r8]
	mov r8,#2
	@%r685 = call i32 @__modsi3(i32 %r683,i32 %r684)
	push {r1,r2,r3}
	mov r0,r3
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61232
	movt r8,#65535  @ -4304
	mov r3,r8
	str r0,[fp,r3]
	movw r9,#61232
	movt r9,#65535  @ -4304
	movw r10,#60780
	movt r10,#65535  @ -4756
	str r9,[fp,r10]
	movw r10,#60780
	movt r10,#65535  @ -4756
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL112
.fibL113:
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r9,r8
	movw r10,#60776
	movt r10,#65535  @ -4760
	str r9,[fp,r10]
	movw r10,#60776
	movt r10,#65535  @ -4760
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r695 = call i32 @__aeabi_idiv(i32 %r693,i32 %r694)
	push {r0,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r1,r0
	pop {r0,r2,r3}
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r0,r8
	str r1,[fp,r0]
	movw r1,#61240
	movt r1,#65535  @ -4296
	mov r8,r1
	ldr r1,[fp,r8]
	mov r8,#2
	@%r698 = call i32 @__modsi3(i32 %r696,i32 %r697)
	push {r1,r2,r3}
	mov r0,r1
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61236
	movt r8,#65535  @ -4300
	mov r1,r8
	str r0,[fp,r1]
	movw r9,#61236
	movt r9,#65535  @ -4300
	movw r10,#60772
	movt r10,#65535  @ -4764
	str r9,[fp,r10]
	movw r10,#60772
	movt r10,#65535  @ -4764
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL114
.fibL115:
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r9,r8
	movw r10,#60768
	movt r10,#65535  @ -4768
	str r9,[fp,r10]
	movw r10,#60768
	movt r10,#65535  @ -4768
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r708 = call i32 @__aeabi_idiv(i32 %r706,i32 %r707)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r6,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61240
	movt r8,#65535  @ -4296
	mov r0,r8
	str r6,[fp,r0]
	mov r8,#0
	movw r6,#61244
	movt r6,#65535  @ -4292
	mov r0,r6
	str r8,[fp,r0]
	mov r8,#0
	movw r6,#61248
	movt r6,#65535  @ -4288
	mov r0,r6
	str r8,[fp,r0]
	mov r8,#0
	movw r6,#61252
	movt r6,#65535  @ -4284
	mov r0,r6
	str r8,[fp,r0]
	mov r8,#0
	movw r6,#61256
	movt r6,#65535  @ -4280
	mov r0,r6
	str r8,[fp,r0]
	mov r8,#0
	movw r6,#61260
	movt r6,#65535  @ -4276
	mov r0,r6
	str r8,[fp,r0]
	mov r8,#0
	movw r6,#61264
	movt r6,#65535  @ -4272
	mov r0,r6
	str r8,[fp,r0]
	mov r8,#0
	movw r6,#61268
	movt r6,#65535  @ -4268
	mov r0,r6
	str r8,[fp,r0]
	mov r8,#0
	movw r6,#61272
	movt r6,#65535  @ -4264
	mov r0,r6
	str r8,[fp,r0]
	mov r8,#0
	movw r6,#61276
	movt r6,#65535  @ -4260
	mov r0,r6
	str r8,[fp,r0]
	mov r8,#0
	movw r6,#61280
	movt r6,#65535  @ -4256
	mov r0,r6
	str r8,[fp,r0]
	mov r8,#0
	movw r6,#61284
	movt r6,#65535  @ -4252
	mov r0,r6
	str r8,[fp,r0]
	mov r8,#0
	movw r6,#61288
	movt r6,#65535  @ -4248
	mov r0,r6
	str r8,[fp,r0]
	mov r8,#0
	movw r6,#61292
	movt r6,#65535  @ -4244
	mov r0,r6
	str r8,[fp,r0]
	mov r8,#0
	movw r6,#61296
	movt r6,#65535  @ -4240
	mov r0,r6
	str r8,[fp,r0]
	mov r8,#0
	movw r6,#61300
	movt r6,#65535  @ -4236
	mov r0,r6
	str r8,[fp,r0]
	mov r8,#0
	movw r6,#61304
	movt r6,#65535  @ -4232
	mov r0,r6
	str r8,[fp,r0]
	mov r8,#1
	movw r6,#61308
	movt r6,#65535  @ -4228
	mov r0,r6
	str r8,[fp,r0]
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r6,r8
	ldr r8,[fp,r6]
	mov r6,#2
	@%r745 = call i32 @__modsi3(i32 %r743,i32 %r744)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r6
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61244
	movt r8,#65535  @ -4292
	mov r6,r8
	str r0,[fp,r6]
	movw r9,#61244
	movt r9,#65535  @ -4292
	movw r10,#60764
	movt r10,#65535  @ -4772
	str r9,[fp,r10]
	movw r10,#60764
	movt r10,#65535  @ -4772
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL116
.fibL117:
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r9,r8
	movw r10,#60760
	movt r10,#65535  @ -4776
	str r9,[fp,r10]
	movw r10,#60760
	movt r10,#65535  @ -4776
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r755 = call i32 @__aeabi_idiv(i32 %r753,i32 %r754)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r4,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r0,r8
	str r4,[fp,r0]
	movw r4,#61308
	movt r4,#65535  @ -4228
	mov r8,r4
	ldr r4,[fp,r8]
	mov r8,#2
	@%r758 = call i32 @__modsi3(i32 %r756,i32 %r757)
	push {r1,r2,r3}
	mov r0,r4
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61248
	movt r8,#65535  @ -4288
	mov r4,r8
	str r0,[fp,r4]
	movw r9,#61248
	movt r9,#65535  @ -4288
	movw r10,#60756
	movt r10,#65535  @ -4780
	str r9,[fp,r10]
	movw r10,#60756
	movt r10,#65535  @ -4780
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL118
.fibL119:
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r9,r8
	movw r10,#60752
	movt r10,#65535  @ -4784
	str r9,[fp,r10]
	movw r10,#60752
	movt r10,#65535  @ -4784
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r768 = call i32 @__aeabi_idiv(i32 %r766,i32 %r767)
	push {r0,r1,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r2,r0
	pop {r0,r1,r3}
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r0,r8
	str r2,[fp,r0]
	movw r2,#61308
	movt r2,#65535  @ -4228
	mov r8,r2
	ldr r2,[fp,r8]
	mov r8,#2
	@%r771 = call i32 @__modsi3(i32 %r769,i32 %r770)
	push {r1,r2,r3}
	mov r0,r2
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61252
	movt r8,#65535  @ -4284
	mov r2,r8
	str r0,[fp,r2]
	movw r9,#61252
	movt r9,#65535  @ -4284
	movw r10,#60748
	movt r10,#65535  @ -4788
	str r9,[fp,r10]
	movw r10,#60748
	movt r10,#65535  @ -4788
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL120
.fibL121:
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r9,r8
	movw r10,#60744
	movt r10,#65535  @ -4792
	str r9,[fp,r10]
	movw r10,#60744
	movt r10,#65535  @ -4792
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r781 = call i32 @__aeabi_idiv(i32 %r779,i32 %r780)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r7,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r0,r8
	str r7,[fp,r0]
	movw r7,#61308
	movt r7,#65535  @ -4228
	mov r8,r7
	ldr r7,[fp,r8]
	mov r8,#2
	@%r784 = call i32 @__modsi3(i32 %r782,i32 %r783)
	push {r1,r2,r3}
	mov r0,r7
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61256
	movt r8,#65535  @ -4280
	mov r7,r8
	str r0,[fp,r7]
	movw r9,#61256
	movt r9,#65535  @ -4280
	movw r10,#60740
	movt r10,#65535  @ -4796
	str r9,[fp,r10]
	movw r10,#60740
	movt r10,#65535  @ -4796
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL122
.fibL123:
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r9,r8
	movw r10,#60736
	movt r10,#65535  @ -4800
	str r9,[fp,r10]
	movw r10,#60736
	movt r10,#65535  @ -4800
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r794 = call i32 @__aeabi_idiv(i32 %r792,i32 %r793)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r5,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r0,r8
	str r5,[fp,r0]
	movw r5,#61308
	movt r5,#65535  @ -4228
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	@%r797 = call i32 @__modsi3(i32 %r795,i32 %r796)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61260
	movt r8,#65535  @ -4276
	mov r5,r8
	str r0,[fp,r5]
	movw r9,#61260
	movt r9,#65535  @ -4276
	movw r10,#60732
	movt r10,#65535  @ -4804
	str r9,[fp,r10]
	movw r10,#60732
	movt r10,#65535  @ -4804
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL124
.fibL125:
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r9,r8
	movw r10,#60728
	movt r10,#65535  @ -4808
	str r9,[fp,r10]
	movw r10,#60728
	movt r10,#65535  @ -4808
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r807 = call i32 @__aeabi_idiv(i32 %r805,i32 %r806)
	push {r0,r1,r2}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r3,r0
	pop {r0,r1,r2}
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r0,r8
	str r3,[fp,r0]
	movw r3,#61308
	movt r3,#65535  @ -4228
	mov r8,r3
	ldr r3,[fp,r8]
	mov r8,#2
	@%r810 = call i32 @__modsi3(i32 %r808,i32 %r809)
	push {r1,r2,r3}
	mov r0,r3
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61264
	movt r8,#65535  @ -4272
	mov r3,r8
	str r0,[fp,r3]
	movw r9,#61264
	movt r9,#65535  @ -4272
	movw r10,#60724
	movt r10,#65535  @ -4812
	str r9,[fp,r10]
	movw r10,#60724
	movt r10,#65535  @ -4812
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL126
.fibL127:
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r9,r8
	movw r10,#60720
	movt r10,#65535  @ -4816
	str r9,[fp,r10]
	movw r10,#60720
	movt r10,#65535  @ -4816
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r820 = call i32 @__aeabi_idiv(i32 %r818,i32 %r819)
	push {r0,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r1,r0
	pop {r0,r2,r3}
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r0,r8
	str r1,[fp,r0]
	movw r1,#61308
	movt r1,#65535  @ -4228
	mov r8,r1
	ldr r1,[fp,r8]
	mov r8,#2
	@%r823 = call i32 @__modsi3(i32 %r821,i32 %r822)
	push {r1,r2,r3}
	mov r0,r1
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61268
	movt r8,#65535  @ -4268
	mov r1,r8
	str r0,[fp,r1]
	movw r9,#61268
	movt r9,#65535  @ -4268
	movw r10,#60716
	movt r10,#65535  @ -4820
	str r9,[fp,r10]
	movw r10,#60716
	movt r10,#65535  @ -4820
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL128
.fibL129:
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r9,r8
	movw r10,#60712
	movt r10,#65535  @ -4824
	str r9,[fp,r10]
	movw r10,#60712
	movt r10,#65535  @ -4824
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r833 = call i32 @__aeabi_idiv(i32 %r831,i32 %r832)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r6,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r0,r8
	str r6,[fp,r0]
	movw r6,#61308
	movt r6,#65535  @ -4228
	mov r8,r6
	ldr r6,[fp,r8]
	mov r8,#2
	@%r836 = call i32 @__modsi3(i32 %r834,i32 %r835)
	push {r1,r2,r3}
	mov r0,r6
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61272
	movt r8,#65535  @ -4264
	mov r6,r8
	str r0,[fp,r6]
	movw r9,#61272
	movt r9,#65535  @ -4264
	movw r10,#60708
	movt r10,#65535  @ -4828
	str r9,[fp,r10]
	movw r10,#60708
	movt r10,#65535  @ -4828
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL130
.fibL131:
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r9,r8
	movw r10,#60704
	movt r10,#65535  @ -4832
	str r9,[fp,r10]
	movw r10,#60704
	movt r10,#65535  @ -4832
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r846 = call i32 @__aeabi_idiv(i32 %r844,i32 %r845)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r4,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r0,r8
	str r4,[fp,r0]
	movw r4,#61308
	movt r4,#65535  @ -4228
	mov r8,r4
	ldr r4,[fp,r8]
	mov r8,#2
	@%r849 = call i32 @__modsi3(i32 %r847,i32 %r848)
	push {r1,r2,r3}
	mov r0,r4
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61276
	movt r8,#65535  @ -4260
	mov r4,r8
	str r0,[fp,r4]
	movw r9,#61276
	movt r9,#65535  @ -4260
	movw r10,#60700
	movt r10,#65535  @ -4836
	str r9,[fp,r10]
	movw r10,#60700
	movt r10,#65535  @ -4836
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL132
.fibL133:
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r9,r8
	movw r10,#60696
	movt r10,#65535  @ -4840
	str r9,[fp,r10]
	movw r10,#60696
	movt r10,#65535  @ -4840
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r859 = call i32 @__aeabi_idiv(i32 %r857,i32 %r858)
	push {r0,r1,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r2,r0
	pop {r0,r1,r3}
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r0,r8
	str r2,[fp,r0]
	movw r2,#61308
	movt r2,#65535  @ -4228
	mov r8,r2
	ldr r2,[fp,r8]
	mov r8,#2
	@%r862 = call i32 @__modsi3(i32 %r860,i32 %r861)
	push {r1,r2,r3}
	mov r0,r2
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61280
	movt r8,#65535  @ -4256
	mov r2,r8
	str r0,[fp,r2]
	movw r9,#61280
	movt r9,#65535  @ -4256
	movw r10,#60692
	movt r10,#65535  @ -4844
	str r9,[fp,r10]
	movw r10,#60692
	movt r10,#65535  @ -4844
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL134
.fibL135:
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r9,r8
	movw r10,#60688
	movt r10,#65535  @ -4848
	str r9,[fp,r10]
	movw r10,#60688
	movt r10,#65535  @ -4848
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r872 = call i32 @__aeabi_idiv(i32 %r870,i32 %r871)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r7,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r0,r8
	str r7,[fp,r0]
	movw r7,#61308
	movt r7,#65535  @ -4228
	mov r8,r7
	ldr r7,[fp,r8]
	mov r8,#2
	@%r875 = call i32 @__modsi3(i32 %r873,i32 %r874)
	push {r1,r2,r3}
	mov r0,r7
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61284
	movt r8,#65535  @ -4252
	mov r7,r8
	str r0,[fp,r7]
	movw r9,#61284
	movt r9,#65535  @ -4252
	movw r10,#60684
	movt r10,#65535  @ -4852
	str r9,[fp,r10]
	movw r10,#60684
	movt r10,#65535  @ -4852
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL136
.fibL137:
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r9,r8
	movw r10,#60680
	movt r10,#65535  @ -4856
	str r9,[fp,r10]
	movw r10,#60680
	movt r10,#65535  @ -4856
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r885 = call i32 @__aeabi_idiv(i32 %r883,i32 %r884)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r5,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r0,r8
	str r5,[fp,r0]
	movw r5,#61308
	movt r5,#65535  @ -4228
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	@%r888 = call i32 @__modsi3(i32 %r886,i32 %r887)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61288
	movt r8,#65535  @ -4248
	mov r5,r8
	str r0,[fp,r5]
	movw r9,#61288
	movt r9,#65535  @ -4248
	movw r10,#60676
	movt r10,#65535  @ -4860
	str r9,[fp,r10]
	movw r10,#60676
	movt r10,#65535  @ -4860
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL138
.fibL139:
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r9,r8
	movw r10,#60672
	movt r10,#65535  @ -4864
	str r9,[fp,r10]
	movw r10,#60672
	movt r10,#65535  @ -4864
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r898 = call i32 @__aeabi_idiv(i32 %r896,i32 %r897)
	push {r0,r1,r2}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r3,r0
	pop {r0,r1,r2}
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r0,r8
	str r3,[fp,r0]
	movw r3,#61308
	movt r3,#65535  @ -4228
	mov r8,r3
	ldr r3,[fp,r8]
	mov r8,#2
	@%r901 = call i32 @__modsi3(i32 %r899,i32 %r900)
	push {r1,r2,r3}
	mov r0,r3
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61292
	movt r8,#65535  @ -4244
	mov r3,r8
	str r0,[fp,r3]
	movw r9,#61292
	movt r9,#65535  @ -4244
	movw r10,#60668
	movt r10,#65535  @ -4868
	str r9,[fp,r10]
	movw r10,#60668
	movt r10,#65535  @ -4868
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL140
.fibL141:
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r9,r8
	movw r10,#60664
	movt r10,#65535  @ -4872
	str r9,[fp,r10]
	movw r10,#60664
	movt r10,#65535  @ -4872
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r911 = call i32 @__aeabi_idiv(i32 %r909,i32 %r910)
	push {r0,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r1,r0
	pop {r0,r2,r3}
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r0,r8
	str r1,[fp,r0]
	movw r1,#61308
	movt r1,#65535  @ -4228
	mov r8,r1
	ldr r1,[fp,r8]
	mov r8,#2
	@%r914 = call i32 @__modsi3(i32 %r912,i32 %r913)
	push {r1,r2,r3}
	mov r0,r1
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61296
	movt r8,#65535  @ -4240
	mov r1,r8
	str r0,[fp,r1]
	movw r9,#61296
	movt r9,#65535  @ -4240
	movw r10,#60660
	movt r10,#65535  @ -4876
	str r9,[fp,r10]
	movw r10,#60660
	movt r10,#65535  @ -4876
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL142
.fibL143:
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r9,r8
	movw r10,#60656
	movt r10,#65535  @ -4880
	str r9,[fp,r10]
	movw r10,#60656
	movt r10,#65535  @ -4880
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r924 = call i32 @__aeabi_idiv(i32 %r922,i32 %r923)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r6,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r0,r8
	str r6,[fp,r0]
	movw r6,#61308
	movt r6,#65535  @ -4228
	mov r8,r6
	ldr r6,[fp,r8]
	mov r8,#2
	@%r927 = call i32 @__modsi3(i32 %r925,i32 %r926)
	push {r1,r2,r3}
	mov r0,r6
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61300
	movt r8,#65535  @ -4236
	mov r6,r8
	str r0,[fp,r6]
	movw r9,#61300
	movt r9,#65535  @ -4236
	movw r10,#60652
	movt r10,#65535  @ -4884
	str r9,[fp,r10]
	movw r10,#60652
	movt r10,#65535  @ -4884
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL144
.fibL145:
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r9,r8
	movw r10,#60648
	movt r10,#65535  @ -4888
	str r9,[fp,r10]
	movw r10,#60648
	movt r10,#65535  @ -4888
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r937 = call i32 @__aeabi_idiv(i32 %r935,i32 %r936)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r4,r0
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r0,r8
	str r4,[fp,r0]
	movw r4,#61308
	movt r4,#65535  @ -4228
	mov r8,r4
	ldr r4,[fp,r8]
	mov r8,#2
	@%r940 = call i32 @__modsi3(i32 %r938,i32 %r939)
	push {r1,r2,r3}
	mov r0,r4
	mov r1,r8
	bl __modsi3
	pop {r1,r2,r3}
	movw r8,#61304
	movt r8,#65535  @ -4232
	mov r4,r8
	str r0,[fp,r4]
	movw r9,#61304
	movt r9,#65535  @ -4232
	movw r10,#60644
	movt r10,#65535  @ -4892
	str r9,[fp,r10]
	movw r10,#60644
	movt r10,#65535  @ -4892
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	mov r8,#0
	cmp r0,r8
	blt .fibL146
.fibL147:
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r9,r8
	movw r10,#60640
	movt r10,#65535  @ -4896
	str r9,[fp,r10]
	movw r10,#60640
	movt r10,#65535  @ -4896
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	mov r0,#2
	@%r950 = call i32 @__aeabi_idiv(i32 %r948,i32 %r949)
	push {r0,r1,r3}
	mov r1,r0
	mov r0,r8
	bl __aeabi_idiv
	mov r2,r0
	pop {r0,r1,r3}
	movw r8,#61308
	movt r8,#65535  @ -4228
	mov r0,r8
	str r2,[fp,r0]
	mov r8,#0
	movw r2,#61312
	movt r2,#65535  @ -4224
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61316
	movt r2,#65535  @ -4220
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61320
	movt r2,#65535  @ -4216
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61324
	movt r2,#65535  @ -4212
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61328
	movt r2,#65535  @ -4208
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61332
	movt r2,#65535  @ -4204
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61336
	movt r2,#65535  @ -4200
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61340
	movt r2,#65535  @ -4196
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61344
	movt r2,#65535  @ -4192
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61348
	movt r2,#65535  @ -4188
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61352
	movt r2,#65535  @ -4184
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61356
	movt r2,#65535  @ -4180
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61360
	movt r2,#65535  @ -4176
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61364
	movt r2,#65535  @ -4172
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61368
	movt r2,#65535  @ -4168
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61372
	movt r2,#65535  @ -4164
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61376
	movt r2,#65535  @ -4160
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61380
	movt r2,#65535  @ -4156
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61384
	movt r2,#65535  @ -4152
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61388
	movt r2,#65535  @ -4148
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61392
	movt r2,#65535  @ -4144
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61396
	movt r2,#65535  @ -4140
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61400
	movt r2,#65535  @ -4136
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61404
	movt r2,#65535  @ -4132
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61408
	movt r2,#65535  @ -4128
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61412
	movt r2,#65535  @ -4124
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61416
	movt r2,#65535  @ -4120
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61420
	movt r2,#65535  @ -4116
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61424
	movt r2,#65535  @ -4112
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61428
	movt r2,#65535  @ -4108
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61432
	movt r2,#65535  @ -4104
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r2,#61436
	movt r2,#65535  @ -4100
	mov r0,r2
	str r8,[fp,r0]
	mov r8,#0
	movw r9,#61440
	movt r9,#65535  @ -4096
	str r8,[fp,r9]
	movw r8,#61176
	movt r8,#65535  @ -4360
	mov r2,r8
	ldr r0,[fp,r2]
	cmp r0,#0
	beq .fibL151
.fibL148:
	mov r2,#1
	movw r9,#61440
	movt r9,#65535  @ -4096
	str r2,[fp,r9]
.fibL150:
	mov r2,#0
	str r2,[fp,#-4092]
	movw r9,#61176
	movt r9,#65535  @ -4360
	movw r10,#60636
	movt r10,#65535  @ -4900
	str r9,[fp,r10]
	movw r10,#60636
	movt r10,#65535  @ -4900
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	cmp r0,#0
	bne .fibL156
.fibL154:
	mov r8,#0
	str r8,[fp,#-4092]
.fibL155:
	mov r8,#0
	str r8,[fp,#-4088]
	ldr r8,[fp,#-4092]
	cmp r8,#0
	beq .fibL158
.fibL159:
	mov r8,#0
	str r8,[fp,#-4088]
.fibL160:
	movw r10,#61440
	movt r10,#65535  @ -4096
	ldr r8,[fp,r10]
	cmp r8,#0
	bne .fibL164
.fibL162:
	mov r8,#0
	movw r0,#61436
	movt r0,#65535  @ -4100
	mov r1,r0
	str r8,[fp,r1]
.fibL163:
	mov r8,#0
	str r8,[fp,#-4084]
	movw r8,#61436
	movt r8,#65535  @ -4100
	mov r0,r8
	ldr r1,[fp,r0]
	cmp r1,#0
	beq .fibL169
.fibL166:
	mov r1,#1
	str r1,[fp,#-4084]
.fibL168:
	mov r1,#0
	str r1,[fp,#-4080]
	movw r1,#61436
	movt r1,#65535  @ -4100
	mov r8,r1
	ldr r1,[fp,r8]
	cmp r1,#0
	bne .fibL174
.fibL172:
	mov r8,#0
	str r8,[fp,#-4080]
.fibL173:
	mov r8,#0
	str r8,[fp,#-4076]
	ldr r8,[fp,#-4080]
	cmp r8,#0
	beq .fibL176
.fibL177:
	mov r8,#0
	str r8,[fp,#-4076]
.fibL178:
	ldr r8,[fp,#-4084]
	cmp r8,#0
	bne .fibL182
.fibL180:
	mov r8,#0
	movw r1,#61372
	movt r1,#65535  @ -4164
	mov r0,r1
	str r8,[fp,r0]
.fibL181:
	mov r8,#0
	str r8,[fp,#-4072]
	movw r8,#61176
	movt r8,#65535  @ -4360
	mov r1,r8
	ldr r0,[fp,r1]
	cmp r0,#0
	bne .fibL187
.fibL185:
	mov r1,#0
	str r1,[fp,#-4072]
.fibL186:
	mov r1,#0
	str r1,[fp,#-4068]
	movw r9,#61436
	movt r9,#65535  @ -4100
	movw r10,#60632
	movt r10,#65535  @ -4904
	str r9,[fp,r10]
	movw r10,#60632
	movt r10,#65535  @ -4904
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	cmp r0,#0
	bne .fibL192
.fibL190:
	mov r8,#0
	str r8,[fp,#-4068]
.fibL191:
	ldr r8,[fp,#-4072]
	cmp r8,#0
	beq .fibL197
.fibL194:
	mov r8,#1
	movw r0,#61312
	movt r0,#65535  @ -4224
	mov r7,r0
	str r8,[fp,r7]
.fibL196:
	mov r8,#0
	str r8,[fp,#-4064]
	mov r8,#0
	str r8,[fp,#-4060]
	movw r8,#61180
	movt r8,#65535  @ -4356
	mov r9,r8
	movw r10,#60628
	movt r10,#65535  @ -4908
	str r9,[fp,r10]
	movw r10,#60628
	movt r10,#65535  @ -4908
	ldr r9,[fp,r10]
	ldr r0,[fp,r9]
	cmp r0,#0
	beq .fibL202
.fibL199:
	mov r6,#1
	str r6,[fp,#-4060]
.fibL201:
	mov r6,#0
	str r6,[fp,#-4056]
	movw r9,#61180
	movt r9,#65535  @ -4356
	movw r10,#60624
	movt r10,#65535  @ -4912
	str r9,[fp,r10]
	movw r10,#60624
	movt r10,#65535  @ -4912
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	cmp r0,#0
	bne .fibL207
.fibL205:
	mov r8,#0
	str r8,[fp,#-4056]
.fibL206:
	mov r8,#0
	str r8,[fp,#-4052]
	ldr r8,[fp,#-4056]
	cmp r8,#0
	beq .fibL209
.fibL210:
	mov r8,#0
	str r8,[fp,#-4052]
.fibL211:
	ldr r8,[fp,#-4060]
	cmp r8,#0
	bne .fibL215
.fibL213:
	mov r8,#0
	str r8,[fp,#-4064]
.fibL214:
	mov r8,#0
	str r8,[fp,#-4048]
	ldr r8,[fp,#-4064]
	cmp r8,#0
	beq .fibL220
.fibL217:
	mov r8,#1
	str r8,[fp,#-4048]
.fibL219:
	mov r8,#0
	str r8,[fp,#-4044]
	ldr r8,[fp,#-4064]
	cmp r8,#0
	bne .fibL225
.fibL223:
	mov r8,#0
	str r8,[fp,#-4044]
.fibL224:
	mov r8,#0
	str r8,[fp,#-4040]
	ldr r8,[fp,#-4044]
	cmp r8,#0
	beq .fibL227
.fibL228:
	mov r8,#0
	str r8,[fp,#-4040]
.fibL229:
	ldr r8,[fp,#-4048]
	cmp r8,#0
	bne .fibL233
.fibL231:
	mov r8,#0
	movw r0,#61376
	movt r0,#65535  @ -4160
	mov r5,r0
	str r8,[fp,r5]
.fibL232:
	mov r8,#0
	str r8,[fp,#-4036]
	movw r9,#61180
	movt r9,#65535  @ -4356
	movw r10,#60620
	movt r10,#65535  @ -4916
	str r9,[fp,r10]
	movw r10,#60620
	movt r10,#65535  @ -4916
	ldr r9,[fp,r10]
	mov r0,r9
	ldr r5,[fp,r0]
	cmp r5,#0
	bne .fibL238
.fibL236:
	mov r5,#0
	str r5,[fp,#-4036]
.fibL237:
	mov r5,#0
	str r5,[fp,#-4032]
	ldr r5,[fp,#-4064]
	cmp r5,#0
	bne .fibL243
.fibL241:
	mov r5,#0
	str r5,[fp,#-4032]
.fibL242:
	ldr r5,[fp,#-4036]
	cmp r5,#0
	beq .fibL248
.fibL245:
	mov r5,#1
	movw r0,#61316
	movt r0,#65535  @ -4220
	mov r4,r0
	str r5,[fp,r4]
.fibL247:
	mov r5,#0
	str r5,[fp,#-4028]
	mov r5,#0
	str r5,[fp,#-4024]
	movw r5,#61184
	movt r5,#65535  @ -4352
	mov r9,r5
	movw r10,#60616
	movt r10,#65535  @ -4920
	str r9,[fp,r10]
	movw r10,#60616
	movt r10,#65535  @ -4920
	ldr r9,[fp,r10]
	ldr r0,[fp,r9]
	cmp r0,#0
	beq .fibL253
.fibL250:
	mov r3,#1
	str r3,[fp,#-4024]
.fibL252:
	mov r3,#0
	str r3,[fp,#-4020]
	movw r9,#61184
	movt r9,#65535  @ -4352
	movw r10,#60612
	movt r10,#65535  @ -4924
	str r9,[fp,r10]
	movw r10,#60612
	movt r10,#65535  @ -4924
	ldr r9,[fp,r10]
	mov r5,r9
	ldr r0,[fp,r5]
	cmp r0,#0
	bne .fibL258
.fibL256:
	mov r5,#0
	str r5,[fp,#-4020]
.fibL257:
	mov r5,#0
	str r5,[fp,#-4016]
	ldr r5,[fp,#-4020]
	cmp r5,#0
	beq .fibL260
.fibL261:
	mov r5,#0
	str r5,[fp,#-4016]
.fibL262:
	ldr r5,[fp,#-4024]
	cmp r5,#0
	bne .fibL266
.fibL264:
	mov r5,#0
	str r5,[fp,#-4028]
.fibL265:
	mov r5,#0
	str r5,[fp,#-4012]
	ldr r5,[fp,#-4028]
	cmp r5,#0
	beq .fibL271
.fibL268:
	mov r5,#1
	str r5,[fp,#-4012]
.fibL270:
	mov r5,#0
	str r5,[fp,#-4008]
	ldr r5,[fp,#-4028]
	cmp r5,#0
	bne .fibL276
.fibL274:
	mov r5,#0
	str r5,[fp,#-4008]
.fibL275:
	mov r5,#0
	str r5,[fp,#-4004]
	ldr r5,[fp,#-4008]
	cmp r5,#0
	beq .fibL278
.fibL279:
	mov r5,#0
	str r5,[fp,#-4004]
.fibL280:
	ldr r5,[fp,#-4012]
	cmp r5,#0
	bne .fibL284
.fibL282:
	mov r5,#0
	movw r0,#61380
	movt r0,#65535  @ -4156
	mov r2,r0
	str r5,[fp,r2]
.fibL283:
	mov r5,#0
	str r5,[fp,#-4000]
	movw r9,#61184
	movt r9,#65535  @ -4352
	movw r10,#60608
	movt r10,#65535  @ -4928
	str r9,[fp,r10]
	movw r10,#60608
	movt r10,#65535  @ -4928
	ldr r9,[fp,r10]
	mov r0,r9
	ldr r2,[fp,r0]
	cmp r2,#0
	bne .fibL289
.fibL287:
	mov r2,#0
	str r2,[fp,#-4000]
.fibL288:
	mov r2,#0
	str r2,[fp,#-3996]
	ldr r2,[fp,#-4028]
	cmp r2,#0
	bne .fibL294
.fibL292:
	mov r2,#0
	str r2,[fp,#-3996]
.fibL293:
	ldr r2,[fp,#-4000]
	cmp r2,#0
	beq .fibL299
.fibL296:
	mov r2,#1
	movw r0,#61320
	movt r0,#65535  @ -4216
	mov r1,r0
	str r2,[fp,r1]
.fibL298:
	mov r2,#0
	str r2,[fp,#-3992]
	mov r2,#0
	str r2,[fp,#-3988]
	movw r2,#61188
	movt r2,#65535  @ -4348
	mov r9,r2
	movw r10,#60604
	movt r10,#65535  @ -4932
	str r9,[fp,r10]
	movw r10,#60604
	movt r10,#65535  @ -4932
	ldr r9,[fp,r10]
	ldr r0,[fp,r9]
	cmp r0,#0
	beq .fibL304
.fibL301:
	mov r7,#1
	str r7,[fp,#-3988]
.fibL303:
	mov r7,#0
	str r7,[fp,#-3984]
	movw r9,#61188
	movt r9,#65535  @ -4348
	movw r10,#60600
	movt r10,#65535  @ -4936
	str r9,[fp,r10]
	movw r10,#60600
	movt r10,#65535  @ -4936
	ldr r9,[fp,r10]
	mov r2,r9
	ldr r0,[fp,r2]
	cmp r0,#0
	bne .fibL309
.fibL307:
	mov r2,#0
	str r2,[fp,#-3984]
.fibL308:
	mov r2,#0
	str r2,[fp,#-3980]
	ldr r2,[fp,#-3984]
	cmp r2,#0
	beq .fibL311
.fibL312:
	mov r2,#0
	str r2,[fp,#-3980]
.fibL313:
	ldr r2,[fp,#-3988]
	cmp r2,#0
	bne .fibL317
.fibL315:
	mov r2,#0
	str r2,[fp,#-3992]
.fibL316:
	mov r2,#0
	str r2,[fp,#-3976]
	ldr r2,[fp,#-3992]
	cmp r2,#0
	beq .fibL322
.fibL319:
	mov r2,#1
	str r2,[fp,#-3976]
.fibL321:
	mov r2,#0
	str r2,[fp,#-3972]
	ldr r2,[fp,#-3992]
	cmp r2,#0
	bne .fibL327
.fibL325:
	mov r2,#0
	str r2,[fp,#-3972]
.fibL326:
	mov r2,#0
	str r2,[fp,#-3968]
	ldr r2,[fp,#-3972]
	cmp r2,#0
	beq .fibL329
.fibL330:
	mov r2,#0
	str r2,[fp,#-3968]
.fibL331:
	ldr r2,[fp,#-3976]
	cmp r2,#0
	bne .fibL335
.fibL333:
	mov r2,#0
	movw r0,#61384
	movt r0,#65535  @ -4152
	mov r6,r0
	str r2,[fp,r6]
.fibL334:
	mov r6,#0
	str r6,[fp,#-3964]
	movw r9,#61188
	movt r9,#65535  @ -4348
	movw r10,#60596
	movt r10,#65535  @ -4940
	str r9,[fp,r10]
	movw r10,#60596
	movt r10,#65535  @ -4940
	ldr r9,[fp,r10]
	mov r0,r9
	ldr r2,[fp,r0]
	cmp r2,#0
	bne .fibL340
.fibL338:
	mov r2,#0
	str r2,[fp,#-3964]
.fibL339:
	mov r2,#0
	str r2,[fp,#-3960]
	ldr r2,[fp,#-3992]
	cmp r2,#0
	bne .fibL345
.fibL343:
	mov r2,#0
	str r2,[fp,#-3960]
.fibL344:
	ldr r2,[fp,#-3964]
	cmp r2,#0
	beq .fibL350
.fibL347:
	mov r2,#1
	movw r0,#61324
	movt r0,#65535  @ -4212
	mov r8,r0
	str r2,[fp,r8]
.fibL349:
	mov r8,#0
	str r8,[fp,#-3956]
	mov r8,#0
	str r8,[fp,#-3952]
	movw r8,#61192
	movt r8,#65535  @ -4344
	mov r9,r8
	movw r10,#60592
	movt r10,#65535  @ -4944
	str r9,[fp,r10]
	movw r10,#60592
	movt r10,#65535  @ -4944
	ldr r9,[fp,r10]
	ldr r0,[fp,r9]
	cmp r0,#0
	beq .fibL355
.fibL352:
	mov r4,#1
	str r4,[fp,#-3952]
.fibL354:
	mov r4,#0
	str r4,[fp,#-3948]
	movw r9,#61192
	movt r9,#65535  @ -4344
	movw r10,#60588
	movt r10,#65535  @ -4948
	str r9,[fp,r10]
	movw r10,#60588
	movt r10,#65535  @ -4948
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	cmp r0,#0
	bne .fibL360
.fibL358:
	mov r8,#0
	str r8,[fp,#-3948]
.fibL359:
	mov r8,#0
	str r8,[fp,#-3944]
	ldr r8,[fp,#-3948]
	cmp r8,#0
	beq .fibL362
.fibL363:
	mov r8,#0
	str r8,[fp,#-3944]
.fibL364:
	ldr r8,[fp,#-3952]
	cmp r8,#0
	bne .fibL368
.fibL366:
	mov r8,#0
	str r8,[fp,#-3956]
.fibL367:
	mov r8,#0
	str r8,[fp,#-3940]
	ldr r8,[fp,#-3956]
	cmp r8,#0
	beq .fibL373
.fibL370:
	mov r8,#1
	str r8,[fp,#-3940]
.fibL372:
	mov r8,#0
	str r8,[fp,#-3936]
	ldr r8,[fp,#-3956]
	cmp r8,#0
	bne .fibL378
.fibL376:
	mov r8,#0
	str r8,[fp,#-3936]
.fibL377:
	mov r8,#0
	str r8,[fp,#-3932]
	ldr r8,[fp,#-3936]
	cmp r8,#0
	beq .fibL380
.fibL381:
	mov r8,#0
	str r8,[fp,#-3932]
.fibL382:
	ldr r8,[fp,#-3940]
	cmp r8,#0
	bne .fibL386
.fibL384:
	mov r8,#0
	movw r0,#61388
	movt r0,#65535  @ -4148
	mov r3,r0
	str r8,[fp,r3]
.fibL385:
	mov r8,#0
	str r8,[fp,#-3928]
	movw r9,#61192
	movt r9,#65535  @ -4344
	movw r10,#60584
	movt r10,#65535  @ -4952
	str r9,[fp,r10]
	movw r10,#60584
	movt r10,#65535  @ -4952
	ldr r9,[fp,r10]
	mov r0,r9
	ldr r3,[fp,r0]
	cmp r3,#0
	bne .fibL391
.fibL389:
	mov r3,#0
	str r3,[fp,#-3928]
.fibL390:
	mov r3,#0
	str r3,[fp,#-3924]
	ldr r3,[fp,#-3956]
	cmp r3,#0
	bne .fibL396
.fibL394:
	mov r3,#0
	str r3,[fp,#-3924]
.fibL395:
	ldr r3,[fp,#-3928]
	cmp r3,#0
	beq .fibL401
.fibL398:
	mov r3,#1
	movw r0,#61328
	movt r0,#65535  @ -4208
	mov r5,r0
	str r3,[fp,r5]
.fibL400:
	mov r5,#0
	str r5,[fp,#-3920]
	mov r5,#0
	str r5,[fp,#-3916]
	movw r5,#61196
	movt r5,#65535  @ -4340
	mov r9,r5
	movw r10,#60580
	movt r10,#65535  @ -4956
	str r9,[fp,r10]
	movw r10,#60580
	movt r10,#65535  @ -4956
	ldr r9,[fp,r10]
	ldr r0,[fp,r9]
	cmp r0,#0
	beq .fibL406
.fibL403:
	mov r1,#1
	str r1,[fp,#-3916]
.fibL405:
	mov r1,#0
	str r1,[fp,#-3912]
	movw r9,#61196
	movt r9,#65535  @ -4340
	movw r10,#60576
	movt r10,#65535  @ -4960
	str r9,[fp,r10]
	movw r10,#60576
	movt r10,#65535  @ -4960
	ldr r9,[fp,r10]
	mov r5,r9
	ldr r0,[fp,r5]
	cmp r0,#0
	bne .fibL411
.fibL409:
	mov r5,#0
	str r5,[fp,#-3912]
.fibL410:
	mov r5,#0
	str r5,[fp,#-3908]
	ldr r5,[fp,#-3912]
	cmp r5,#0
	beq .fibL413
.fibL414:
	mov r5,#0
	str r5,[fp,#-3908]
.fibL415:
	ldr r5,[fp,#-3916]
	cmp r5,#0
	bne .fibL419
.fibL417:
	mov r5,#0
	str r5,[fp,#-3920]
.fibL418:
	mov r5,#0
	str r5,[fp,#-3904]
	ldr r5,[fp,#-3920]
	cmp r5,#0
	beq .fibL424
.fibL421:
	mov r5,#1
	str r5,[fp,#-3904]
.fibL423:
	mov r5,#0
	str r5,[fp,#-3900]
	ldr r5,[fp,#-3920]
	cmp r5,#0
	bne .fibL429
.fibL427:
	mov r5,#0
	str r5,[fp,#-3900]
.fibL428:
	mov r5,#0
	str r5,[fp,#-3896]
	ldr r5,[fp,#-3900]
	cmp r5,#0
	beq .fibL431
.fibL432:
	mov r5,#0
	str r5,[fp,#-3896]
.fibL433:
	ldr r5,[fp,#-3904]
	cmp r5,#0
	bne .fibL437
.fibL435:
	mov r5,#0
	movw r0,#61392
	movt r0,#65535  @ -4144
	mov r7,r0
	str r5,[fp,r7]
.fibL436:
	mov r7,#0
	str r7,[fp,#-3892]
	movw r9,#61196
	movt r9,#65535  @ -4340
	movw r10,#60572
	movt r10,#65535  @ -4964
	str r9,[fp,r10]
	movw r10,#60572
	movt r10,#65535  @ -4964
	ldr r9,[fp,r10]
	mov r0,r9
	ldr r5,[fp,r0]
	cmp r5,#0
	bne .fibL442
.fibL440:
	mov r5,#0
	str r5,[fp,#-3892]
.fibL441:
	mov r5,#0
	str r5,[fp,#-3888]
	ldr r5,[fp,#-3920]
	cmp r5,#0
	bne .fibL447
.fibL445:
	mov r5,#0
	str r5,[fp,#-3888]
.fibL446:
	ldr r5,[fp,#-3892]
	cmp r5,#0
	beq .fibL452
.fibL449:
	mov r5,#1
	movw r0,#61332
	movt r0,#65535  @ -4204
	mov r6,r0
	str r5,[fp,r6]
.fibL451:
	mov r6,#0
	str r6,[fp,#-3884]
	mov r6,#0
	str r6,[fp,#-3880]
	movw r6,#61200
	movt r6,#65535  @ -4336
	mov r9,r6
	movw r10,#60568
	movt r10,#65535  @ -4968
	str r9,[fp,r10]
	movw r10,#60568
	movt r10,#65535  @ -4968
	ldr r9,[fp,r10]
	ldr r0,[fp,r9]
	cmp r0,#0
	beq .fibL457
.fibL454:
	mov r2,#1
	str r2,[fp,#-3880]
.fibL456:
	mov r2,#0
	str r2,[fp,#-3876]
	movw r9,#61200
	movt r9,#65535  @ -4336
	movw r10,#60564
	movt r10,#65535  @ -4972
	str r9,[fp,r10]
	movw r10,#60564
	movt r10,#65535  @ -4972
	ldr r9,[fp,r10]
	mov r6,r9
	ldr r0,[fp,r6]
	cmp r0,#0
	bne .fibL462
.fibL460:
	mov r6,#0
	str r6,[fp,#-3876]
.fibL461:
	mov r6,#0
	str r6,[fp,#-3872]
	ldr r6,[fp,#-3876]
	cmp r6,#0
	beq .fibL464
.fibL465:
	mov r6,#0
	str r6,[fp,#-3872]
.fibL466:
	ldr r6,[fp,#-3880]
	cmp r6,#0
	bne .fibL470
.fibL468:
	mov r6,#0
	str r6,[fp,#-3884]
.fibL469:
	mov r6,#0
	str r6,[fp,#-3868]
	ldr r6,[fp,#-3884]
	cmp r6,#0
	beq .fibL475
.fibL472:
	mov r6,#1
	str r6,[fp,#-3868]
.fibL474:
	mov r6,#0
	str r6,[fp,#-3864]
	ldr r6,[fp,#-3884]
	cmp r6,#0
	bne .fibL480
.fibL478:
	mov r6,#0
	str r6,[fp,#-3864]
.fibL479:
	mov r6,#0
	str r6,[fp,#-3860]
	ldr r6,[fp,#-3864]
	cmp r6,#0
	beq .fibL482
.fibL483:
	mov r6,#0
	str r6,[fp,#-3860]
.fibL484:
	ldr r6,[fp,#-3868]
	cmp r6,#0
	bne .fibL488
.fibL486:
	mov r6,#0
	movw r0,#61396
	movt r0,#65535  @ -4140
	mov r4,r0
	str r6,[fp,r4]
.fibL487:
	mov r6,#0
	str r6,[fp,#-3856]
	movw r9,#61200
	movt r9,#65535  @ -4336
	movw r10,#60560
	movt r10,#65535  @ -4976
	str r9,[fp,r10]
	movw r10,#60560
	movt r10,#65535  @ -4976
	ldr r9,[fp,r10]
	mov r0,r9
	ldr r4,[fp,r0]
	cmp r4,#0
	bne .fibL493
.fibL491:
	mov r4,#0
	str r4,[fp,#-3856]
.fibL492:
	mov r4,#0
	str r4,[fp,#-3852]
	ldr r4,[fp,#-3884]
	cmp r4,#0
	bne .fibL498
.fibL496:
	mov r4,#0
	str r4,[fp,#-3852]
.fibL497:
	ldr r4,[fp,#-3856]
	cmp r4,#0
	beq .fibL503
.fibL500:
	mov r4,#1
	movw r0,#61336
	movt r0,#65535  @ -4200
	mov r8,r0
	str r4,[fp,r8]
.fibL502:
	mov r8,#0
	str r8,[fp,#-3848]
	mov r8,#0
	str r8,[fp,#-3844]
	movw r8,#61204
	movt r8,#65535  @ -4332
	mov r9,r8
	movw r10,#60556
	movt r10,#65535  @ -4980
	str r9,[fp,r10]
	movw r10,#60556
	movt r10,#65535  @ -4980
	ldr r9,[fp,r10]
	ldr r0,[fp,r9]
	cmp r0,#0
	beq .fibL508
.fibL505:
	mov r3,#1
	str r3,[fp,#-3844]
.fibL507:
	mov r3,#0
	str r3,[fp,#-3840]
	movw r9,#61204
	movt r9,#65535  @ -4332
	movw r10,#60552
	movt r10,#65535  @ -4984
	str r9,[fp,r10]
	movw r10,#60552
	movt r10,#65535  @ -4984
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	cmp r0,#0
	bne .fibL513
.fibL511:
	mov r8,#0
	str r8,[fp,#-3840]
.fibL512:
	mov r8,#0
	str r8,[fp,#-3836]
	ldr r8,[fp,#-3840]
	cmp r8,#0
	beq .fibL515
.fibL516:
	mov r8,#0
	str r8,[fp,#-3836]
.fibL517:
	ldr r8,[fp,#-3844]
	cmp r8,#0
	bne .fibL521
.fibL519:
	mov r8,#0
	str r8,[fp,#-3848]
.fibL520:
	mov r8,#0
	str r8,[fp,#-3832]
	ldr r8,[fp,#-3848]
	cmp r8,#0
	beq .fibL526
.fibL523:
	mov r8,#1
	str r8,[fp,#-3832]
.fibL525:
	mov r8,#0
	str r8,[fp,#-3828]
	ldr r8,[fp,#-3848]
	cmp r8,#0
	bne .fibL531
.fibL529:
	mov r8,#0
	str r8,[fp,#-3828]
.fibL530:
	mov r8,#0
	str r8,[fp,#-3824]
	ldr r8,[fp,#-3828]
	cmp r8,#0
	beq .fibL533
.fibL534:
	mov r8,#0
	str r8,[fp,#-3824]
.fibL535:
	ldr r8,[fp,#-3832]
	cmp r8,#0
	bne .fibL539
.fibL537:
	mov r8,#0
	movw r0,#61400
	movt r0,#65535  @ -4136
	mov r1,r0
	str r8,[fp,r1]
.fibL538:
	mov r8,#0
	str r8,[fp,#-3820]
	movw r9,#61204
	movt r9,#65535  @ -4332
	movw r10,#60548
	movt r10,#65535  @ -4988
	str r9,[fp,r10]
	movw r10,#60548
	movt r10,#65535  @ -4988
	ldr r9,[fp,r10]
	mov r0,r9
	ldr r1,[fp,r0]
	cmp r1,#0
	bne .fibL544
.fibL542:
	mov r1,#0
	str r1,[fp,#-3820]
.fibL543:
	mov r1,#0
	str r1,[fp,#-3816]
	ldr r1,[fp,#-3848]
	cmp r1,#0
	bne .fibL549
.fibL547:
	mov r1,#0
	str r1,[fp,#-3816]
.fibL548:
	ldr r1,[fp,#-3820]
	cmp r1,#0
	beq .fibL554
.fibL551:
	mov r1,#1
	movw r0,#61340
	movt r0,#65535  @ -4196
	mov r7,r0
	str r1,[fp,r7]
.fibL553:
	mov r7,#0
	str r7,[fp,#-3812]
	mov r7,#0
	str r7,[fp,#-3808]
	movw r7,#61208
	movt r7,#65535  @ -4328
	mov r9,r7
	movw r10,#60544
	movt r10,#65535  @ -4992
	str r9,[fp,r10]
	movw r10,#60544
	movt r10,#65535  @ -4992
	ldr r9,[fp,r10]
	ldr r0,[fp,r9]
	cmp r0,#0
	beq .fibL559
.fibL556:
	mov r5,#1
	str r5,[fp,#-3808]
.fibL558:
	mov r5,#0
	str r5,[fp,#-3804]
	movw r9,#61208
	movt r9,#65535  @ -4328
	movw r10,#60540
	movt r10,#65535  @ -4996
	str r9,[fp,r10]
	movw r10,#60540
	movt r10,#65535  @ -4996
	ldr r9,[fp,r10]
	mov r7,r9
	ldr r0,[fp,r7]
	cmp r0,#0
	bne .fibL564
.fibL562:
	mov r7,#0
	str r7,[fp,#-3804]
.fibL563:
	mov r7,#0
	str r7,[fp,#-3800]
	ldr r7,[fp,#-3804]
	cmp r7,#0
	beq .fibL566
.fibL567:
	mov r7,#0
	str r7,[fp,#-3800]
.fibL568:
	ldr r7,[fp,#-3808]
	cmp r7,#0
	bne .fibL572
.fibL570:
	mov r7,#0
	str r7,[fp,#-3812]
.fibL571:
	mov r7,#0
	str r7,[fp,#-3796]
	ldr r7,[fp,#-3812]
	cmp r7,#0
	beq .fibL577
.fibL574:
	mov r7,#1
	str r7,[fp,#-3796]
.fibL576:
	mov r7,#0
	str r7,[fp,#-3792]
	ldr r7,[fp,#-3812]
	cmp r7,#0
	bne .fibL582
.fibL580:
	mov r7,#0
	str r7,[fp,#-3792]
.fibL581:
	mov r7,#0
	str r7,[fp,#-3788]
	ldr r7,[fp,#-3792]
	cmp r7,#0
	beq .fibL584
.fibL585:
	mov r7,#0
	str r7,[fp,#-3788]
.fibL586:
	ldr r7,[fp,#-3796]
	cmp r7,#0
	bne .fibL590
.fibL588:
	mov r7,#0
	movw r0,#61404
	movt r0,#65535  @ -4132
	mov r2,r0
	str r7,[fp,r2]
.fibL589:
	mov r7,#0
	str r7,[fp,#-3784]
	movw r9,#61208
	movt r9,#65535  @ -4328
	movw r10,#60536
	movt r10,#65535  @ -5000
	str r9,[fp,r10]
	movw r10,#60536
	movt r10,#65535  @ -5000
	ldr r9,[fp,r10]
	mov r0,r9
	ldr r2,[fp,r0]
	cmp r2,#0
	bne .fibL595
.fibL593:
	mov r2,#0
	str r2,[fp,#-3784]
.fibL594:
	mov r2,#0
	str r2,[fp,#-3780]
	ldr r2,[fp,#-3812]
	cmp r2,#0
	bne .fibL600
.fibL598:
	mov r2,#0
	str r2,[fp,#-3780]
.fibL599:
	ldr r2,[fp,#-3784]
	cmp r2,#0
	beq .fibL605
.fibL602:
	mov r2,#1
	movw r0,#61344
	movt r0,#65535  @ -4192
	mov r6,r0
	str r2,[fp,r6]
.fibL604:
	mov r6,#0
	str r6,[fp,#-3776]
	mov r6,#0
	str r6,[fp,#-3772]
	movw r6,#61212
	movt r6,#65535  @ -4324
	mov r9,r6
	movw r10,#60532
	movt r10,#65535  @ -5004
	str r9,[fp,r10]
	movw r10,#60532
	movt r10,#65535  @ -5004
	ldr r9,[fp,r10]
	ldr r0,[fp,r9]
	cmp r0,#0
	beq .fibL610
.fibL607:
	mov r4,#1
	str r4,[fp,#-3772]
.fibL609:
	mov r4,#0
	str r4,[fp,#-3768]
	movw r9,#61212
	movt r9,#65535  @ -4324
	movw r10,#60528
	movt r10,#65535  @ -5008
	str r9,[fp,r10]
	movw r10,#60528
	movt r10,#65535  @ -5008
	ldr r9,[fp,r10]
	mov r6,r9
	ldr r0,[fp,r6]
	cmp r0,#0
	bne .fibL615
.fibL613:
	mov r6,#0
	str r6,[fp,#-3768]
.fibL614:
	mov r6,#0
	str r6,[fp,#-3764]
	ldr r6,[fp,#-3768]
	cmp r6,#0
	beq .fibL617
.fibL618:
	mov r6,#0
	str r6,[fp,#-3764]
.fibL619:
	ldr r6,[fp,#-3772]
	cmp r6,#0
	bne .fibL623
.fibL621:
	mov r6,#0
	str r6,[fp,#-3776]
.fibL622:
	mov r6,#0
	str r6,[fp,#-3760]
	ldr r6,[fp,#-3776]
	cmp r6,#0
	beq .fibL628
.fibL625:
	mov r6,#1
	str r6,[fp,#-3760]
.fibL627:
	mov r6,#0
	str r6,[fp,#-3756]
	ldr r6,[fp,#-3776]
	cmp r6,#0
	bne .fibL633
.fibL631:
	mov r6,#0
	str r6,[fp,#-3756]
.fibL632:
	mov r6,#0
	str r6,[fp,#-3752]
	ldr r6,[fp,#-3756]
	cmp r6,#0
	beq .fibL635
.fibL636:
	mov r6,#0
	str r6,[fp,#-3752]
.fibL637:
	ldr r6,[fp,#-3760]
	cmp r6,#0
	bne .fibL641
.fibL639:
	mov r6,#0
	movw r0,#61408
	movt r0,#65535  @ -4128
	mov r3,r0
	str r6,[fp,r3]
.fibL640:
	mov r6,#0
	str r6,[fp,#-3748]
	movw r9,#61212
	movt r9,#65535  @ -4324
	movw r10,#60524
	movt r10,#65535  @ -5012
	str r9,[fp,r10]
	movw r10,#60524
	movt r10,#65535  @ -5012
	ldr r9,[fp,r10]
	mov r0,r9
	ldr r3,[fp,r0]
	cmp r3,#0
	bne .fibL646
.fibL644:
	mov r3,#0
	str r3,[fp,#-3748]
.fibL645:
	mov r3,#0
	str r3,[fp,#-3744]
	ldr r3,[fp,#-3776]
	cmp r3,#0
	bne .fibL651
.fibL649:
	mov r3,#0
	str r3,[fp,#-3744]
.fibL650:
	ldr r3,[fp,#-3748]
	cmp r3,#0
	beq .fibL656
.fibL653:
	mov r3,#1
	movw r0,#61348
	movt r0,#65535  @ -4188
	mov r8,r0
	str r3,[fp,r8]
.fibL655:
	mov r8,#0
	str r8,[fp,#-3740]
	mov r8,#0
	str r8,[fp,#-3736]
	movw r8,#61216
	movt r8,#65535  @ -4320
	mov r9,r8
	movw r10,#60520
	movt r10,#65535  @ -5016
	str r9,[fp,r10]
	movw r10,#60520
	movt r10,#65535  @ -5016
	ldr r9,[fp,r10]
	ldr r0,[fp,r9]
	cmp r0,#0
	beq .fibL661
.fibL658:
	mov r1,#1
	str r1,[fp,#-3736]
.fibL660:
	mov r1,#0
	str r1,[fp,#-3732]
	movw r9,#61216
	movt r9,#65535  @ -4320
	movw r10,#60516
	movt r10,#65535  @ -5020
	str r9,[fp,r10]
	movw r10,#60516
	movt r10,#65535  @ -5020
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	cmp r0,#0
	bne .fibL666
.fibL664:
	mov r8,#0
	str r8,[fp,#-3732]
.fibL665:
	mov r8,#0
	str r8,[fp,#-3728]
	ldr r8,[fp,#-3732]
	cmp r8,#0
	beq .fibL668
.fibL669:
	mov r8,#0
	str r8,[fp,#-3728]
.fibL670:
	ldr r8,[fp,#-3736]
	cmp r8,#0
	bne .fibL674
.fibL672:
	mov r8,#0
	str r8,[fp,#-3740]
.fibL673:
	mov r8,#0
	str r8,[fp,#-3724]
	ldr r8,[fp,#-3740]
	cmp r8,#0
	beq .fibL679
.fibL676:
	mov r8,#1
	str r8,[fp,#-3724]
.fibL678:
	mov r8,#0
	str r8,[fp,#-3720]
	ldr r8,[fp,#-3740]
	cmp r8,#0
	bne .fibL684
.fibL682:
	mov r8,#0
	str r8,[fp,#-3720]
.fibL683:
	mov r8,#0
	str r8,[fp,#-3716]
	ldr r8,[fp,#-3720]
	cmp r8,#0
	beq .fibL686
.fibL687:
	mov r8,#0
	str r8,[fp,#-3716]
.fibL688:
	ldr r8,[fp,#-3724]
	cmp r8,#0
	bne .fibL692
.fibL690:
	mov r8,#0
	movw r0,#61412
	movt r0,#65535  @ -4124
	mov r5,r0
	str r8,[fp,r5]
.fibL691:
	mov r8,#0
	str r8,[fp,#-3712]
	movw r9,#61216
	movt r9,#65535  @ -4320
	movw r10,#60512
	movt r10,#65535  @ -5024
	str r9,[fp,r10]
	movw r10,#60512
	movt r10,#65535  @ -5024
	ldr r9,[fp,r10]
	mov r0,r9
	ldr r5,[fp,r0]
	cmp r5,#0
	bne .fibL697
.fibL695:
	mov r5,#0
	str r5,[fp,#-3712]
.fibL696:
	mov r5,#0
	str r5,[fp,#-3708]
	ldr r5,[fp,#-3740]
	cmp r5,#0
	bne .fibL702
.fibL700:
	mov r5,#0
	str r5,[fp,#-3708]
.fibL701:
	ldr r5,[fp,#-3712]
	cmp r5,#0
	beq .fibL707
.fibL704:
	mov r5,#1
	movw r0,#61352
	movt r0,#65535  @ -4184
	mov r7,r0
	str r5,[fp,r7]
.fibL706:
	mov r7,#0
	str r7,[fp,#-3704]
	mov r7,#0
	str r7,[fp,#-3700]
	movw r7,#61220
	movt r7,#65535  @ -4316
	mov r9,r7
	movw r10,#60508
	movt r10,#65535  @ -5028
	str r9,[fp,r10]
	movw r10,#60508
	movt r10,#65535  @ -5028
	ldr r9,[fp,r10]
	ldr r0,[fp,r9]
	cmp r0,#0
	beq .fibL712
.fibL709:
	mov r2,#1
	str r2,[fp,#-3700]
.fibL711:
	mov r2,#0
	str r2,[fp,#-3696]
	movw r9,#61220
	movt r9,#65535  @ -4316
	movw r10,#60504
	movt r10,#65535  @ -5032
	str r9,[fp,r10]
	movw r10,#60504
	movt r10,#65535  @ -5032
	ldr r9,[fp,r10]
	mov r7,r9
	ldr r0,[fp,r7]
	cmp r0,#0
	bne .fibL717
.fibL715:
	mov r7,#0
	str r7,[fp,#-3696]
.fibL716:
	mov r7,#0
	str r7,[fp,#-3692]
	ldr r7,[fp,#-3696]
	cmp r7,#0
	beq .fibL719
.fibL720:
	mov r7,#0
	str r7,[fp,#-3692]
.fibL721:
	ldr r7,[fp,#-3700]
	cmp r7,#0
	bne .fibL725
.fibL723:
	mov r7,#0
	str r7,[fp,#-3704]
.fibL724:
	mov r7,#0
	str r7,[fp,#-3688]
	ldr r7,[fp,#-3704]
	cmp r7,#0
	beq .fibL730
.fibL727:
	mov r7,#1
	str r7,[fp,#-3688]
.fibL729:
	mov r7,#0
	str r7,[fp,#-3684]
	ldr r7,[fp,#-3704]
	cmp r7,#0
	bne .fibL735
.fibL733:
	mov r7,#0
	str r7,[fp,#-3684]
.fibL734:
	mov r7,#0
	str r7,[fp,#-3680]
	ldr r7,[fp,#-3684]
	cmp r7,#0
	beq .fibL737
.fibL738:
	mov r7,#0
	str r7,[fp,#-3680]
.fibL739:
	ldr r7,[fp,#-3688]
	cmp r7,#0
	bne .fibL743
.fibL741:
	mov r7,#0
	movw r0,#61416
	movt r0,#65535  @ -4120
	mov r4,r0
	str r7,[fp,r4]
.fibL742:
	mov r7,#0
	str r7,[fp,#-3676]
	movw r9,#61220
	movt r9,#65535  @ -4316
	movw r10,#60500
	movt r10,#65535  @ -5036
	str r9,[fp,r10]
	movw r10,#60500
	movt r10,#65535  @ -5036
	ldr r9,[fp,r10]
	mov r0,r9
	ldr r4,[fp,r0]
	cmp r4,#0
	bne .fibL748
.fibL746:
	mov r4,#0
	str r4,[fp,#-3676]
.fibL747:
	mov r4,#0
	str r4,[fp,#-3672]
	ldr r4,[fp,#-3704]
	cmp r4,#0
	bne .fibL753
.fibL751:
	mov r4,#0
	str r4,[fp,#-3672]
.fibL752:
	ldr r4,[fp,#-3676]
	cmp r4,#0
	beq .fibL758
.fibL755:
	mov r4,#1
	movw r0,#61356
	movt r0,#65535  @ -4180
	mov r6,r0
	str r4,[fp,r6]
.fibL757:
	mov r6,#0
	str r6,[fp,#-3668]
	mov r6,#0
	str r6,[fp,#-3664]
	movw r6,#61224
	movt r6,#65535  @ -4312
	mov r9,r6
	movw r10,#60496
	movt r10,#65535  @ -5040
	str r9,[fp,r10]
	movw r10,#60496
	movt r10,#65535  @ -5040
	ldr r9,[fp,r10]
	ldr r0,[fp,r9]
	cmp r0,#0
	beq .fibL763
.fibL760:
	mov r3,#1
	str r3,[fp,#-3664]
.fibL762:
	mov r3,#0
	str r3,[fp,#-3660]
	movw r9,#61224
	movt r9,#65535  @ -4312
	movw r10,#60492
	movt r10,#65535  @ -5044
	str r9,[fp,r10]
	movw r10,#60492
	movt r10,#65535  @ -5044
	ldr r9,[fp,r10]
	mov r6,r9
	ldr r0,[fp,r6]
	cmp r0,#0
	bne .fibL768
.fibL766:
	mov r6,#0
	str r6,[fp,#-3660]
.fibL767:
	mov r6,#0
	str r6,[fp,#-3656]
	ldr r6,[fp,#-3660]
	cmp r6,#0
	beq .fibL770
.fibL771:
	mov r6,#0
	str r6,[fp,#-3656]
.fibL772:
	ldr r6,[fp,#-3664]
	cmp r6,#0
	bne .fibL776
.fibL774:
	mov r6,#0
	str r6,[fp,#-3668]
.fibL775:
	mov r6,#0
	str r6,[fp,#-3652]
	ldr r6,[fp,#-3668]
	cmp r6,#0
	beq .fibL781
.fibL778:
	mov r6,#1
	str r6,[fp,#-3652]
.fibL780:
	mov r6,#0
	str r6,[fp,#-3648]
	ldr r6,[fp,#-3668]
	cmp r6,#0
	bne .fibL786
.fibL784:
	mov r6,#0
	str r6,[fp,#-3648]
.fibL785:
	mov r6,#0
	str r6,[fp,#-3644]
	ldr r6,[fp,#-3648]
	cmp r6,#0
	beq .fibL788
.fibL789:
	mov r6,#0
	str r6,[fp,#-3644]
.fibL790:
	ldr r6,[fp,#-3652]
	cmp r6,#0
	bne .fibL794
.fibL792:
	mov r6,#0
	movw r0,#61420
	movt r0,#65535  @ -4116
	mov r1,r0
	str r6,[fp,r1]
.fibL793:
	mov r6,#0
	str r6,[fp,#-3640]
	movw r9,#61224
	movt r9,#65535  @ -4312
	movw r10,#60488
	movt r10,#65535  @ -5048
	str r9,[fp,r10]
	movw r10,#60488
	movt r10,#65535  @ -5048
	ldr r9,[fp,r10]
	mov r0,r9
	ldr r1,[fp,r0]
	cmp r1,#0
	bne .fibL799
.fibL797:
	mov r1,#0
	str r1,[fp,#-3640]
.fibL798:
	mov r1,#0
	str r1,[fp,#-3636]
	ldr r1,[fp,#-3668]
	cmp r1,#0
	bne .fibL804
.fibL802:
	mov r1,#0
	str r1,[fp,#-3636]
.fibL803:
	ldr r1,[fp,#-3640]
	cmp r1,#0
	beq .fibL809
.fibL806:
	mov r1,#1
	movw r0,#61360
	movt r0,#65535  @ -4176
	mov r8,r0
	str r1,[fp,r8]
.fibL808:
	mov r8,#0
	str r8,[fp,#-3632]
	mov r8,#0
	str r8,[fp,#-3628]
	movw r8,#61228
	movt r8,#65535  @ -4308
	mov r9,r8
	movw r10,#60484
	movt r10,#65535  @ -5052
	str r9,[fp,r10]
	movw r10,#60484
	movt r10,#65535  @ -5052
	ldr r9,[fp,r10]
	ldr r0,[fp,r9]
	cmp r0,#0
	beq .fibL814
.fibL811:
	mov r5,#1
	str r5,[fp,#-3628]
.fibL813:
	mov r5,#0
	str r5,[fp,#-3624]
	movw r9,#61228
	movt r9,#65535  @ -4308
	movw r10,#60480
	movt r10,#65535  @ -5056
	str r9,[fp,r10]
	movw r10,#60480
	movt r10,#65535  @ -5056
	ldr r9,[fp,r10]
	mov r8,r9
	ldr r0,[fp,r8]
	cmp r0,#0
	bne .fibL819
.fibL817:
	mov r8,#0
	str r8,[fp,#-3624]
.fibL818:
	mov r8,#0
	str r8,[fp,#-3620]
	ldr r8,[fp,#-3624]
	cmp r8,#0
	beq .fibL821
.fibL822:
	mov r8,#0
	str r8,[fp,#-3620]
.fibL823:
	ldr r8,[fp,#-3628]
	cmp r8,#0
	bne .fibL827
.fibL825:
	mov r8,#0
	str r8,[fp,#-3632]
.fibL826:
	mov r8,#0
	str r8,[fp,#-3616]
	ldr r8,[fp,#-3632]
	cmp r8,#0
	beq .fibL832
.fibL829:
	mov r8,#1
	str r8,[fp,#-3616]
.fibL831:
	mov r8,#0
	str r8,[fp,#-3612]
	ldr r8,[fp,#-3632]
	cmp r8,#0
	bne .fibL837
.fibL835:
	mov r8,#0
	str r8,[fp,#-3612]
.fibL836:
	mov r8,#0
	str r8,[fp,#-3608]
	ldr r8,[fp,#-3612]
	cmp r8,#0
	beq .fibL839
.fibL840:
	mov r8,#0
	str r8,[fp,#-3608]
.fibL841:
	ldr r8,[fp,#-3616]
	cmp r8,#0
	bne .fibL845
.fibL843:
	mov r8,#0
	movw r0,#61424
	movt r0,#65535  @ -4112
	mov r2,r0
	str r8,[fp,r2]
.fibL844:
	mov r8,#0
	str r8,[fp,#-3604]
	movw r9,#61228
	movt r9,#65535  @ -4308
	movw r10,#60476
	movt r10,#65535  @ -5060
	str r9,[fp,r10]
	movw r10,#60476
	movt r10,#65535  @ -5060
	ldr r9,[fp,r10]
	mov r0,r9
	ldr r2,[fp,r0]
	cmp r2,#0
	bne .fibL850
.fibL848:
	mov r2,#0
	str r2,[fp,#-3604]
.fibL849:
	mov r2,#0
	str r2,[fp,#-3600]
	ldr r2,[fp,#-3632]
	cmp r2,#0
	bne .fibL855
.fibL853:
	mov r2,#0
	str r2,[fp,#-3600]
.fibL854:
	ldr r2,[fp,#-3604]
	cmp r2,#0
	beq .fibL860
.fibL857:
	mov r2,#1
	movw r0,#61364
	movt r0,#65535  @ -4172
	mov r7,r0
	str r2,[fp,r7]
.fibL859:
	mov r7,#0
	str r7,[fp,#-3596]
	mov r7,#0
	str r7,[fp,#-3592]
	movw r7,#61232
	movt r7,#65535  @ -4304
	mov r9,r7
	movw r10,#60472
	movt r10,#65535  @ -5064
	str r9,[fp,r10]
	movw r10,#60472
	movt r10,#65535  @ -5064
	ldr r9,[fp,r10]
	ldr r0,[fp,r9]
	cmp r0,#0
	beq .fibL865
.fibL862:
	mov r4,#1
	str r4,[fp,#-3592]
.fibL864:
	mov r4,#0
	str r4,[fp,#-3588]
	movw r4,#61232
	movt r4,#65535  @ -4304
	mov r7,r4
	ldr r0,[fp,r7]
	cmp r0,#0
	bne .fibL870
.fibL868:
	mov r7,#0
	str r7,[fp,#-3588]
.fibL869:
	mov r7,#0
	str r7,[fp,#-3584]
	ldr r7,[fp,#-3588]
	cmp r7,#0
	beq .fibL872
.fibL873:
	mov r7,#0
	str r7,[fp,#-3584]
.fibL874:
	ldr r7,[fp,#-3592]
	cmp r7,#0
	bne .fibL878
.fibL876:
	mov r7,#0
	str r7,[fp,#-3596]
.fibL877:
	mov r7,#0
	str r7,[fp,#-3580]
	ldr r7,[fp,#-3596]
	cmp r7,#0
	beq .fibL883
.fibL880:
	mov r7,#1
	str r7,[fp,#-3580]
.fibL882:
	mov r7,#0
	str r7,[fp,#-3576]
	ldr r7,[fp,#-3596]
	cmp r7,#0
	bne .fibL888
.fibL886:
	mov r7,#0
	str r7,[fp,#-3576]
.fibL887:
	mov r7,#0
	str r7,[fp,#-3572]
	ldr r7,[fp,#-3576]
	cmp r7,#0
	beq .fibL890
.fibL891:
	mov r7,#0
	str r7,[fp,#-3572]
.fibL892:
	ldr r7,[fp,#-3580]
	cmp r7,#0
	bne .fibL896
.fibL894:
	mov r7,#0
	movw r0,#61428
	movt r0,#65535  @ -4108
	mov r3,r0
	str r7,[fp,r3]
.fibL895:
	mov r7,#0
	str r7,[fp,#-3568]
	movw r7,#61232
	movt r7,#65535  @ -4304
	mov r0,r7
	ldr r3,[fp,r0]
	cmp r3,#0
	bne .fibL901
.fibL899:
	mov r3,#0
	str r3,[fp,#-3568]
.fibL900:
	mov r3,#0
	str r3,[fp,#-3564]
	ldr r3,[fp,#-3596]
	cmp r3,#0
	bne .fibL906
.fibL904:
	mov r3,#0
	str r3,[fp,#-3564]
.fibL905:
	ldr r3,[fp,#-3568]
	cmp r3,#0
	beq .fibL911
.fibL908:
	mov r3,#1
	movw r0,#61368
	movt r0,#65535  @ -4168
	mov r6,r0
	str r3,[fp,r6]
.fibL910:
	mov r6,#0
	str r6,[fp,#-3560]
	mov r6,#0
	str r6,[fp,#-3556]
	movw r6,#61236
	movt r6,#65535  @ -4300
	mov r3,r6
	ldr r0,[fp,r3]
	cmp r0,#0
	beq .fibL916
.fibL913:
	mov r1,#1
	str r1,[fp,#-3556]
.fibL915:
	mov r1,#0
	str r1,[fp,#-3552]
	movw r1,#61236
	movt r1,#65535  @ -4300
	mov r6,r1
	ldr r0,[fp,r6]
	cmp r0,#0
	bne .fibL921
.fibL919:
	mov r6,#0
	str r6,[fp,#-3552]
.fibL920:
	mov r6,#0
	str r6,[fp,#-3548]
	ldr r6,[fp,#-3552]
	cmp r6,#0
	beq .fibL923
.fibL924:
	mov r6,#0
	str r6,[fp,#-3548]
.fibL925:
	ldr r6,[fp,#-3556]
	cmp r6,#0
	bne .fibL929
.fibL927:
	mov r6,#0
	str r6,[fp,#-3560]
.fibL928:
	mov r6,#0
	str r6,[fp,#-3544]
	ldr r6,[fp,#-3560]
	cmp r6,#0
	beq .fibL934
.fibL931:
	mov r6,#1
	str r6,[fp,#-3544]
.fibL933:
	mov r6,#0
	str r6,[fp,#-3540]
	ldr r6,[fp,#-3560]
	cmp r6,#0
	bne .fibL939
.fibL937:
	mov r6,#0
	str r6,[fp,#-3540]
.fibL938:
	mov r6,#0
	str r6,[fp,#-3536]
	ldr r6,[fp,#-3540]
	cmp r6,#0
	beq .fibL941
.fibL942:
	mov r6,#0
	str r6,[fp,#-3536]
.fibL943:
	ldr r6,[fp,#-3544]
	cmp r6,#0
	bne .fibL947
.fibL945:
	mov r6,#0
	movw r0,#61432
	movt r0,#65535  @ -4104
	mov r5,r0
	str r6,[fp,r5]
.fibL946:
	mov r6,#0
	str r6,[fp,#-3532]
	movw r6,#61236
	movt r6,#65535  @ -4300
	mov r0,r6
	ldr r5,[fp,r0]
	cmp r5,#0
	bne .fibL952
.fibL950:
	mov r5,#0
	str r5,[fp,#-3532]
.fibL951:
	mov r5,#0
	str r5,[fp,#-3528]
	ldr r5,[fp,#-3560]
	cmp r5,#0
	bne .fibL957
.fibL955:
	mov r5,#0
	str r5,[fp,#-3528]
.fibL956:
	ldr r5,[fp,#-3532]
	cmp r5,#0
	beq .fibL962
.fibL959:
	mov r5,#1
	movw r0,#61172
	movt r0,#65535  @ -4364
	mov r8,r0
	str r5,[fp,r8]
.fibL961:
	mov r8,#0
	movw r5,#61032
	movt r5,#65535  @ -4504
	mov r0,r5
	str r8,[fp,r0]
	movw r8,#61032
	movt r8,#65535  @ -4504
	mov r5,r8
	ldr r0,[fp,r5]
	mov r5,#2
	mul r2,r0,r5
	movw r5,#61432
	movt r5,#65535  @ -4104
	mov r8,r5
	ldr r5,[fp,r8]
	add r8,r2,r5
	movw r5,#61032
	movt r5,#65535  @ -4504
	mov r2,r5
	str r8,[fp,r2]
	movw r8,#61032
	movt r8,#65535  @ -4504
	mov r5,r8
	ldr r2,[fp,r5]
	mov r5,#2
	mul r0,r2,r5
	movw r5,#61428
	movt r5,#65535  @ -4108
	mov r8,r5
	ldr r5,[fp,r8]
	add r8,r0,r5
	movw r5,#61032
	movt r5,#65535  @ -4504
	mov r2,r5
	str r8,[fp,r2]
	movw r8,#61032
	movt r8,#65535  @ -4504
	mov r5,r8
	ldr r2,[fp,r5]
	mov r5,#2
	mul r0,r2,r5
	movw r5,#61424
	movt r5,#65535  @ -4112
	mov r8,r5
	ldr r5,[fp,r8]
	add r8,r0,r5
	movw r5,#61032
	movt r5,#65535  @ -4504
	mov r2,r5
	str r8,[fp,r2]
	movw r8,#61032
	movt r8,#65535  @ -4504
	mov r5,r8
	ldr r2,[fp,r5]
	mov r5,#2
	mul r0,r2,r5
	movw r5,#61420
	movt r5,#65535  @ -4116
	mov r8,r5
	ldr r5,[fp,r8]
	add r8,r0,r5
	movw r5,#61032
	movt r5,#65535  @ -4504
	mov r2,r5
	str r8,[fp,r2]
	movw r8,#61032
	movt r8,#65535  @ -4504
	mov r5,r8
	ldr r2,[fp,r5]
	mov r5,#2
	mul r0,r2,r5
	movw r5,#61416
	movt r5,#65535  @ -4120
	mov r8,r5
	ldr r5,[fp,r8]
	add r8,r0,r5
	movw r5,#61032
	movt r5,#65535  @ -4504
	mov r2,r5
	str r8,[fp,r2]
	movw r8,#61032
	movt r8,#65535  @ -4504
	mov r5,r8
	ldr r2,[fp,r5]
	mov r5,#2
	mul r0,r2,r5
	movw r5,#61412
	movt r5,#65535  @ -4124
	mov r8,r5
	ldr r5,[fp,r8]
	add r8,r0,r5
	movw r5,#61032
	movt r5,#65535  @ -4504
	mov r2,r5
	str r8,[fp,r2]
	movw r8,#61032
	movt r8,#65535  @ -4504
	mov r5,r8
	ldr r2,[fp,r5]
	mov r5,#2
	mul r0,r2,r5
	movw r5,#61408
	movt r5,#65535  @ -4128
	mov r8,r5
	ldr r5,[fp,r8]
	add r8,r0,r5
	movw r5,#61032
	movt r5,#65535  @ -4504
	mov r2,r5
	str r8,[fp,r2]
	movw r8,#61032
	movt r8,#65535  @ -4504
	mov r5,r8
	ldr r2,[fp,r5]
	mov r5,#2
	mul r0,r2,r5
	movw r5,#61404
	movt r5,#65535  @ -4132
	mov r8,r5
	ldr r5,[fp,r8]
	add r8,r0,r5
	movw r5,#61032
	movt r5,#65535  @ -4504
	mov r2,r5
	str r8,[fp,r2]
	movw r8,#61032
	movt r8,#65535  @ -4504
	mov r5,r8
	ldr r2,[fp,r5]
	mov r5,#2
	mul r0,r2,r5
	movw r5,#61400
	movt r5,#65535  @ -4136
	mov r8,r5
	ldr r5,[fp,r8]
	add r8,r0,r5
	movw r5,#61032
	movt r5,#65535  @ -4504
	mov r2,r5
	str r8,[fp,r2]
	movw r8,#61032
	movt r8,#65535  @ -4504
	mov r5,r8
	ldr r2,[fp,r5]
	mov r5,#2
	mul r0,r2,r5
	movw r5,#61396
	movt r5,#65535  @ -4140
	mov r8,r5
	ldr r5,[fp,r8]
	add r8,r0,r5
	movw r5,#61032
	movt r5,#65535  @ -4504
	mov r2,r5
	str r8,[fp,r2]
	movw r8,#61032
	movt r8,#65535  @ -4504
	mov r5,r8
	ldr r2,[fp,r5]
	mov r5,#2
	mul r0,r2,r5
	movw r5,#61392
	movt r5,#65535  @ -4144
	mov r8,r5
	ldr r5,[fp,r8]
	add r8,r0,r5
	movw r5,#61032
	movt r5,#65535  @ -4504
	mov r2,r5
	str r8,[fp,r2]
	movw r8,#61032
	movt r8,#65535  @ -4504
	mov r5,r8
	ldr r2,[fp,r5]
	mov r5,#2
	mul r0,r2,r5
	movw r5,#61388
	movt r5,#65535  @ -4148
	mov r8,r5
	ldr r5,[fp,r8]
	add r8,r0,r5
	movw r5,#61032
	movt r5,#65535  @ -4504
	mov r2,r5
	str r8,[fp,r2]
	movw r8,#61032
	movt r8,#65535  @ -4504
	mov r5,r8
	ldr r2,[fp,r5]
	mov r5,#2
	mul r0,r2,r5
	movw r5,#61384
	movt r5,#65535  @ -4152
	mov r8,r5
	ldr r5,[fp,r8]
	add r8,r0,r5
	movw r5,#61032
	movt r5,#65535  @ -4504
	mov r2,r5
	str r8,[fp,r2]
	movw r8,#61032
	movt r8,#65535  @ -4504
	mov r5,r8
	ldr r2,[fp,r5]
	mov r5,#2
	mul r0,r2,r5
	movw r5,#61380
	movt r5,#65535  @ -4156
	mov r8,r5
	ldr r5,[fp,r8]
	add r8,r0,r5
	movw r5,#61032
	movt r5,#65535  @ -4504
	mov r2,r5
	str r8,[fp,r2]
	movw r8,#61032
	movt r8,#65535  @ -4504
	mov r5,r8
	ldr r2,[fp,r5]
	mov r5,#2
	mul r0,r2,r5
	movw r5,#61376
	movt r5,#65535  @ -4160
	mov r8,r5
	ldr r5,[fp,r8]
	add r8,r0,r5
	movw r5,#61032
	movt r5,#65535  @ -4504
	mov r2,r5
	str r8,[fp,r2]
	movw r8,#61032
	movt r8,#65535  @ -4504
	mov r5,r8
	ldr r2,[fp,r5]
	mov r5,#2
	mul r0,r2,r5
	movw r5,#61372
	movt r5,#65535  @ -4164
	mov r8,r5
	ldr r5,[fp,r8]
	add r8,r0,r5
	movw r5,#61032
	movt r5,#65535  @ -4504
	mov r2,r5
	str r8,[fp,r2]
	mov r8,#0
	str r8,[fp,#-3524]
	mov r8,#0
	str r8,[fp,#-3520]
	mov r8,#0
	str r8,[fp,#-3516]
	mov r8,#0
	str r8,[fp,#-3512]
	mov r8,#0
	str r8,[fp,#-3508]
	mov r8,#0
	str r8,[fp,#-3504]
	mov r8,#0
	str r8,[fp,#-3500]
	mov r8,#0
	str r8,[fp,#-3496]
	mov r8,#0
	str r8,[fp,#-3492]
	mov r8,#0
	str r8,[fp,#-3488]
	mov r8,#0
	str r8,[fp,#-3484]
	mov r8,#0
	str r8,[fp,#-3480]
	mov r8,#0
	str r8,[fp,#-3476]
	mov r8,#0
	str r8,[fp,#-3472]
	mov r8,#0
	str r8,[fp,#-3468]
	mov r8,#0
	str r8,[fp,#-3464]
	mov r8,#0
	str r8,[fp,#-3460]
	movw r8,#61024
	movt r8,#65535  @ -4512
	mov r5,r8
	ldr r2,[fp,r5]
	str r2,[fp,#-3456]
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r2908 = call i32 @__modsi3(i32 %r2906,i32 %r2907)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-3520]
	ldr r5,[fp,#-3520]
	mov r2,#0
	cmp r5,r2
	blt .fibL964
.fibL965:
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r2918 = call i32 @__aeabi_idiv(i32 %r2916,i32 %r2917)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-3456]
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r2921 = call i32 @__modsi3(i32 %r2919,i32 %r2920)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-3516]
	ldr r5,[fp,#-3516]
	mov r2,#0
	cmp r5,r2
	blt .fibL966
.fibL967:
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r2931 = call i32 @__aeabi_idiv(i32 %r2929,i32 %r2930)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-3456]
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r2934 = call i32 @__modsi3(i32 %r2932,i32 %r2933)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-3512]
	ldr r5,[fp,#-3512]
	mov r2,#0
	cmp r5,r2
	blt .fibL968
.fibL969:
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r2944 = call i32 @__aeabi_idiv(i32 %r2942,i32 %r2943)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-3456]
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r2947 = call i32 @__modsi3(i32 %r2945,i32 %r2946)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-3508]
	ldr r5,[fp,#-3508]
	mov r2,#0
	cmp r5,r2
	blt .fibL970
.fibL971:
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r2957 = call i32 @__aeabi_idiv(i32 %r2955,i32 %r2956)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-3456]
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r2960 = call i32 @__modsi3(i32 %r2958,i32 %r2959)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-3504]
	ldr r5,[fp,#-3504]
	mov r2,#0
	cmp r5,r2
	blt .fibL972
.fibL973:
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r2970 = call i32 @__aeabi_idiv(i32 %r2968,i32 %r2969)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-3456]
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r2973 = call i32 @__modsi3(i32 %r2971,i32 %r2972)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-3500]
	ldr r5,[fp,#-3500]
	mov r2,#0
	cmp r5,r2
	blt .fibL974
.fibL975:
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r2983 = call i32 @__aeabi_idiv(i32 %r2981,i32 %r2982)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-3456]
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r2986 = call i32 @__modsi3(i32 %r2984,i32 %r2985)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-3496]
	ldr r5,[fp,#-3496]
	mov r2,#0
	cmp r5,r2
	blt .fibL976
.fibL977:
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r2996 = call i32 @__aeabi_idiv(i32 %r2994,i32 %r2995)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-3456]
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r2999 = call i32 @__modsi3(i32 %r2997,i32 %r2998)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-3492]
	ldr r5,[fp,#-3492]
	mov r2,#0
	cmp r5,r2
	blt .fibL978
.fibL979:
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r3009 = call i32 @__aeabi_idiv(i32 %r3007,i32 %r3008)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-3456]
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r3012 = call i32 @__modsi3(i32 %r3010,i32 %r3011)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-3488]
	ldr r5,[fp,#-3488]
	mov r2,#0
	cmp r5,r2
	blt .fibL980
.fibL981:
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r3022 = call i32 @__aeabi_idiv(i32 %r3020,i32 %r3021)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-3456]
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r3025 = call i32 @__modsi3(i32 %r3023,i32 %r3024)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-3484]
	ldr r5,[fp,#-3484]
	mov r2,#0
	cmp r5,r2
	blt .fibL982
.fibL983:
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r3035 = call i32 @__aeabi_idiv(i32 %r3033,i32 %r3034)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-3456]
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r3038 = call i32 @__modsi3(i32 %r3036,i32 %r3037)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-3480]
	ldr r5,[fp,#-3480]
	mov r2,#0
	cmp r5,r2
	blt .fibL984
.fibL985:
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r3048 = call i32 @__aeabi_idiv(i32 %r3046,i32 %r3047)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-3456]
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r3051 = call i32 @__modsi3(i32 %r3049,i32 %r3050)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-3476]
	ldr r5,[fp,#-3476]
	mov r2,#0
	cmp r5,r2
	blt .fibL986
.fibL987:
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r3061 = call i32 @__aeabi_idiv(i32 %r3059,i32 %r3060)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-3456]
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r3064 = call i32 @__modsi3(i32 %r3062,i32 %r3063)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-3472]
	ldr r5,[fp,#-3472]
	mov r2,#0
	cmp r5,r2
	blt .fibL988
.fibL989:
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r3074 = call i32 @__aeabi_idiv(i32 %r3072,i32 %r3073)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-3456]
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r3077 = call i32 @__modsi3(i32 %r3075,i32 %r3076)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-3468]
	ldr r5,[fp,#-3468]
	mov r2,#0
	cmp r5,r2
	blt .fibL990
.fibL991:
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r3087 = call i32 @__aeabi_idiv(i32 %r3085,i32 %r3086)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-3456]
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r3090 = call i32 @__modsi3(i32 %r3088,i32 %r3089)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-3464]
	ldr r5,[fp,#-3464]
	mov r2,#0
	cmp r5,r2
	blt .fibL992
.fibL993:
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r3100 = call i32 @__aeabi_idiv(i32 %r3098,i32 %r3099)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-3456]
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r3103 = call i32 @__modsi3(i32 %r3101,i32 %r3102)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-3460]
	ldr r5,[fp,#-3460]
	mov r2,#0
	cmp r5,r2
	blt .fibL994
.fibL995:
	ldr r5,[fp,#-3456]
	mov r2,#2
	@%r3113 = call i32 @__aeabi_idiv(i32 %r3111,i32 %r3112)
	push {r1,r2,r3}
	mov r0,r5
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-3456]
	mov r5,#0
	str r5,[fp,#-3452]
	mov r5,#0
	str r5,[fp,#-3448]
	mov r5,#0
	str r5,[fp,#-3444]
	mov r5,#0
	str r5,[fp,#-3440]
	mov r5,#0
	str r5,[fp,#-3436]
	mov r5,#0
	str r5,[fp,#-3432]
	mov r5,#0
	str r5,[fp,#-3428]
	mov r5,#0
	str r5,[fp,#-3424]
	mov r5,#0
	str r5,[fp,#-3420]
	mov r5,#0
	str r5,[fp,#-3416]
	mov r5,#0
	str r5,[fp,#-3412]
	mov r5,#0
	str r5,[fp,#-3408]
	mov r5,#0
	str r5,[fp,#-3404]
	mov r5,#0
	str r5,[fp,#-3400]
	mov r5,#0
	str r5,[fp,#-3396]
	mov r5,#0
	str r5,[fp,#-3392]
	movw r5,#61032
	movt r5,#65535  @ -4504
	mov r8,r5
	ldr r5,[fp,r8]
	str r5,[fp,#-3388]
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3150 = call i32 @__modsi3(i32 %r3148,i32 %r3149)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3452]
	ldr r8,[fp,#-3452]
	mov r5,#0
	cmp r8,r5
	blt .fibL996
.fibL997:
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3160 = call i32 @__aeabi_idiv(i32 %r3158,i32 %r3159)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3388]
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3163 = call i32 @__modsi3(i32 %r3161,i32 %r3162)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3448]
	ldr r8,[fp,#-3448]
	mov r5,#0
	cmp r8,r5
	blt .fibL998
.fibL999:
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3173 = call i32 @__aeabi_idiv(i32 %r3171,i32 %r3172)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3388]
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3176 = call i32 @__modsi3(i32 %r3174,i32 %r3175)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3444]
	ldr r8,[fp,#-3444]
	mov r5,#0
	cmp r8,r5
	blt .fibL1000
.fibL1001:
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3186 = call i32 @__aeabi_idiv(i32 %r3184,i32 %r3185)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3388]
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3189 = call i32 @__modsi3(i32 %r3187,i32 %r3188)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3440]
	ldr r8,[fp,#-3440]
	mov r5,#0
	cmp r8,r5
	blt .fibL1002
.fibL1003:
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3199 = call i32 @__aeabi_idiv(i32 %r3197,i32 %r3198)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3388]
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3202 = call i32 @__modsi3(i32 %r3200,i32 %r3201)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3436]
	ldr r8,[fp,#-3436]
	mov r5,#0
	cmp r8,r5
	blt .fibL1004
.fibL1005:
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3212 = call i32 @__aeabi_idiv(i32 %r3210,i32 %r3211)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3388]
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3215 = call i32 @__modsi3(i32 %r3213,i32 %r3214)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3432]
	ldr r8,[fp,#-3432]
	mov r5,#0
	cmp r8,r5
	blt .fibL1006
.fibL1007:
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3225 = call i32 @__aeabi_idiv(i32 %r3223,i32 %r3224)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3388]
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3228 = call i32 @__modsi3(i32 %r3226,i32 %r3227)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3428]
	ldr r8,[fp,#-3428]
	mov r5,#0
	cmp r8,r5
	blt .fibL1008
.fibL1009:
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3238 = call i32 @__aeabi_idiv(i32 %r3236,i32 %r3237)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3388]
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3241 = call i32 @__modsi3(i32 %r3239,i32 %r3240)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3424]
	ldr r8,[fp,#-3424]
	mov r5,#0
	cmp r8,r5
	blt .fibL1010
.fibL1011:
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3251 = call i32 @__aeabi_idiv(i32 %r3249,i32 %r3250)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3388]
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3254 = call i32 @__modsi3(i32 %r3252,i32 %r3253)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3420]
	ldr r8,[fp,#-3420]
	mov r5,#0
	cmp r8,r5
	blt .fibL1012
.fibL1013:
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3264 = call i32 @__aeabi_idiv(i32 %r3262,i32 %r3263)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3388]
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3267 = call i32 @__modsi3(i32 %r3265,i32 %r3266)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3416]
	ldr r8,[fp,#-3416]
	mov r5,#0
	cmp r8,r5
	blt .fibL1014
.fibL1015:
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3277 = call i32 @__aeabi_idiv(i32 %r3275,i32 %r3276)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3388]
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3280 = call i32 @__modsi3(i32 %r3278,i32 %r3279)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3412]
	ldr r8,[fp,#-3412]
	mov r5,#0
	cmp r8,r5
	blt .fibL1016
.fibL1017:
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3290 = call i32 @__aeabi_idiv(i32 %r3288,i32 %r3289)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3388]
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3293 = call i32 @__modsi3(i32 %r3291,i32 %r3292)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3408]
	ldr r8,[fp,#-3408]
	mov r5,#0
	cmp r8,r5
	blt .fibL1018
.fibL1019:
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3303 = call i32 @__aeabi_idiv(i32 %r3301,i32 %r3302)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3388]
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3306 = call i32 @__modsi3(i32 %r3304,i32 %r3305)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3404]
	ldr r8,[fp,#-3404]
	mov r5,#0
	cmp r8,r5
	blt .fibL1020
.fibL1021:
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3316 = call i32 @__aeabi_idiv(i32 %r3314,i32 %r3315)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3388]
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3319 = call i32 @__modsi3(i32 %r3317,i32 %r3318)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3400]
	ldr r8,[fp,#-3400]
	mov r5,#0
	cmp r8,r5
	blt .fibL1022
.fibL1023:
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3329 = call i32 @__aeabi_idiv(i32 %r3327,i32 %r3328)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3388]
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3332 = call i32 @__modsi3(i32 %r3330,i32 %r3331)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3396]
	ldr r8,[fp,#-3396]
	mov r5,#0
	cmp r8,r5
	blt .fibL1024
.fibL1025:
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3342 = call i32 @__aeabi_idiv(i32 %r3340,i32 %r3341)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3388]
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3345 = call i32 @__modsi3(i32 %r3343,i32 %r3344)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3392]
	ldr r8,[fp,#-3392]
	mov r5,#0
	cmp r8,r5
	blt .fibL1026
.fibL1027:
	ldr r8,[fp,#-3388]
	mov r5,#2
	@%r3355 = call i32 @__aeabi_idiv(i32 %r3353,i32 %r3354)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-3388]
	mov r8,#0
	str r8,[fp,#-3384]
	mov r8,#0
	str r8,[fp,#-3380]
	mov r8,#0
	str r8,[fp,#-3376]
	mov r8,#0
	str r8,[fp,#-3372]
	mov r8,#0
	str r8,[fp,#-3368]
	mov r8,#0
	str r8,[fp,#-3364]
	mov r8,#0
	str r8,[fp,#-3360]
	mov r8,#0
	str r8,[fp,#-3356]
	mov r8,#0
	str r8,[fp,#-3352]
	mov r8,#0
	str r8,[fp,#-3348]
	mov r8,#0
	str r8,[fp,#-3344]
	mov r8,#0
	str r8,[fp,#-3340]
	mov r8,#0
	str r8,[fp,#-3336]
	mov r8,#0
	str r8,[fp,#-3332]
	mov r8,#0
	str r8,[fp,#-3328]
	mov r8,#0
	str r8,[fp,#-3324]
	mov r8,#0
	str r8,[fp,#-3320]
	mov r8,#0
	str r8,[fp,#-3316]
	mov r8,#0
	str r8,[fp,#-3312]
	mov r8,#0
	str r8,[fp,#-3308]
	mov r8,#0
	str r8,[fp,#-3304]
	mov r8,#0
	str r8,[fp,#-3300]
	mov r8,#0
	str r8,[fp,#-3296]
	mov r8,#0
	str r8,[fp,#-3292]
	mov r8,#0
	str r8,[fp,#-3288]
	mov r8,#0
	str r8,[fp,#-3284]
	mov r8,#0
	str r8,[fp,#-3280]
	mov r8,#0
	str r8,[fp,#-3276]
	mov r8,#0
	str r8,[fp,#-3272]
	mov r8,#0
	str r8,[fp,#-3268]
	mov r8,#0
	str r8,[fp,#-3264]
	mov r8,#0
	str r8,[fp,#-3260]
	mov r8,#0
	str r8,[fp,#-3256]
	ldr r8,[fp,#-3520]
	cmp r8,#0
	beq .fibL1031
.fibL1028:
	mov r8,#1
	str r8,[fp,#-3256]
.fibL1030:
	mov r8,#0
	str r8,[fp,#-3252]
	ldr r8,[fp,#-3520]
	cmp r8,#0
	bne .fibL1036
.fibL1034:
	mov r8,#0
	str r8,[fp,#-3252]
.fibL1035:
	mov r8,#0
	str r8,[fp,#-3248]
	ldr r8,[fp,#-3252]
	cmp r8,#0
	beq .fibL1038
.fibL1039:
	mov r8,#0
	str r8,[fp,#-3248]
.fibL1040:
	ldr r8,[fp,#-3256]
	cmp r8,#0
	bne .fibL1044
.fibL1042:
	mov r8,#0
	str r8,[fp,#-3260]
.fibL1043:
	mov r8,#0
	str r8,[fp,#-3244]
	ldr r8,[fp,#-3260]
	cmp r8,#0
	beq .fibL1049
.fibL1046:
	mov r8,#1
	str r8,[fp,#-3244]
.fibL1048:
	mov r8,#0
	str r8,[fp,#-3240]
	ldr r8,[fp,#-3260]
	cmp r8,#0
	bne .fibL1054
.fibL1052:
	mov r8,#0
	str r8,[fp,#-3240]
.fibL1053:
	mov r8,#0
	str r8,[fp,#-3236]
	ldr r8,[fp,#-3240]
	cmp r8,#0
	beq .fibL1056
.fibL1057:
	mov r8,#0
	str r8,[fp,#-3236]
.fibL1058:
	ldr r8,[fp,#-3244]
	cmp r8,#0
	bne .fibL1062
.fibL1060:
	mov r8,#0
	str r8,[fp,#-3324]
.fibL1061:
	mov r8,#0
	str r8,[fp,#-3232]
	ldr r8,[fp,#-3520]
	cmp r8,#0
	bne .fibL1067
.fibL1065:
	mov r8,#0
	str r8,[fp,#-3232]
.fibL1066:
	mov r8,#0
	str r8,[fp,#-3228]
	ldr r8,[fp,#-3260]
	cmp r8,#0
	bne .fibL1072
.fibL1070:
	mov r8,#0
	str r8,[fp,#-3228]
.fibL1071:
	ldr r8,[fp,#-3232]
	cmp r8,#0
	beq .fibL1077
.fibL1074:
	mov r8,#1
	str r8,[fp,#-3384]
.fibL1076:
	mov r8,#0
	str r8,[fp,#-3224]
	mov r8,#0
	str r8,[fp,#-3220]
	ldr r8,[fp,#-3516]
	cmp r8,#0
	beq .fibL1082
.fibL1079:
	mov r8,#1
	str r8,[fp,#-3220]
.fibL1081:
	mov r8,#0
	str r8,[fp,#-3216]
	ldr r8,[fp,#-3516]
	cmp r8,#0
	bne .fibL1087
.fibL1085:
	mov r8,#0
	str r8,[fp,#-3216]
.fibL1086:
	mov r8,#0
	str r8,[fp,#-3212]
	ldr r8,[fp,#-3216]
	cmp r8,#0
	beq .fibL1089
.fibL1090:
	mov r8,#0
	str r8,[fp,#-3212]
.fibL1091:
	ldr r8,[fp,#-3220]
	cmp r8,#0
	bne .fibL1095
.fibL1093:
	mov r8,#0
	str r8,[fp,#-3224]
.fibL1094:
	mov r8,#0
	str r8,[fp,#-3208]
	ldr r8,[fp,#-3224]
	cmp r8,#0
	beq .fibL1100
.fibL1097:
	mov r8,#1
	str r8,[fp,#-3208]
.fibL1099:
	mov r8,#0
	str r8,[fp,#-3204]
	ldr r8,[fp,#-3224]
	cmp r8,#0
	bne .fibL1105
.fibL1103:
	mov r8,#0
	str r8,[fp,#-3204]
.fibL1104:
	mov r8,#0
	str r8,[fp,#-3200]
	ldr r8,[fp,#-3204]
	cmp r8,#0
	beq .fibL1107
.fibL1108:
	mov r8,#0
	str r8,[fp,#-3200]
.fibL1109:
	ldr r8,[fp,#-3208]
	cmp r8,#0
	bne .fibL1113
.fibL1111:
	mov r8,#0
	str r8,[fp,#-3320]
.fibL1112:
	mov r8,#0
	str r8,[fp,#-3196]
	ldr r8,[fp,#-3516]
	cmp r8,#0
	bne .fibL1118
.fibL1116:
	mov r8,#0
	str r8,[fp,#-3196]
.fibL1117:
	mov r8,#0
	str r8,[fp,#-3192]
	ldr r8,[fp,#-3224]
	cmp r8,#0
	bne .fibL1123
.fibL1121:
	mov r8,#0
	str r8,[fp,#-3192]
.fibL1122:
	ldr r8,[fp,#-3196]
	cmp r8,#0
	beq .fibL1128
.fibL1125:
	mov r8,#1
	str r8,[fp,#-3380]
.fibL1127:
	mov r8,#0
	str r8,[fp,#-3188]
	mov r8,#0
	str r8,[fp,#-3184]
	ldr r8,[fp,#-3512]
	cmp r8,#0
	beq .fibL1133
.fibL1130:
	mov r8,#1
	str r8,[fp,#-3184]
.fibL1132:
	mov r8,#0
	str r8,[fp,#-3180]
	ldr r8,[fp,#-3512]
	cmp r8,#0
	bne .fibL1138
.fibL1136:
	mov r8,#0
	str r8,[fp,#-3180]
.fibL1137:
	mov r8,#0
	str r8,[fp,#-3176]
	ldr r8,[fp,#-3180]
	cmp r8,#0
	beq .fibL1140
.fibL1141:
	mov r8,#0
	str r8,[fp,#-3176]
.fibL1142:
	ldr r8,[fp,#-3184]
	cmp r8,#0
	bne .fibL1146
.fibL1144:
	mov r8,#0
	str r8,[fp,#-3188]
.fibL1145:
	mov r8,#0
	str r8,[fp,#-3172]
	ldr r8,[fp,#-3188]
	cmp r8,#0
	beq .fibL1151
.fibL1148:
	mov r8,#1
	str r8,[fp,#-3172]
.fibL1150:
	mov r8,#0
	str r8,[fp,#-3168]
	ldr r8,[fp,#-3188]
	cmp r8,#0
	bne .fibL1156
.fibL1154:
	mov r8,#0
	str r8,[fp,#-3168]
.fibL1155:
	mov r8,#0
	str r8,[fp,#-3164]
	ldr r8,[fp,#-3168]
	cmp r8,#0
	beq .fibL1158
.fibL1159:
	mov r8,#0
	str r8,[fp,#-3164]
.fibL1160:
	ldr r8,[fp,#-3172]
	cmp r8,#0
	bne .fibL1164
.fibL1162:
	mov r8,#0
	str r8,[fp,#-3316]
.fibL1163:
	mov r8,#0
	str r8,[fp,#-3160]
	ldr r8,[fp,#-3512]
	cmp r8,#0
	bne .fibL1169
.fibL1167:
	mov r8,#0
	str r8,[fp,#-3160]
.fibL1168:
	mov r8,#0
	str r8,[fp,#-3156]
	ldr r8,[fp,#-3188]
	cmp r8,#0
	bne .fibL1174
.fibL1172:
	mov r8,#0
	str r8,[fp,#-3156]
.fibL1173:
	ldr r8,[fp,#-3160]
	cmp r8,#0
	beq .fibL1179
.fibL1176:
	mov r8,#1
	str r8,[fp,#-3376]
.fibL1178:
	mov r8,#0
	str r8,[fp,#-3152]
	mov r8,#0
	str r8,[fp,#-3148]
	ldr r8,[fp,#-3508]
	cmp r8,#0
	beq .fibL1184
.fibL1181:
	mov r8,#1
	str r8,[fp,#-3148]
.fibL1183:
	mov r8,#0
	str r8,[fp,#-3144]
	ldr r8,[fp,#-3508]
	cmp r8,#0
	bne .fibL1189
.fibL1187:
	mov r8,#0
	str r8,[fp,#-3144]
.fibL1188:
	mov r8,#0
	str r8,[fp,#-3140]
	ldr r8,[fp,#-3144]
	cmp r8,#0
	beq .fibL1191
.fibL1192:
	mov r8,#0
	str r8,[fp,#-3140]
.fibL1193:
	ldr r8,[fp,#-3148]
	cmp r8,#0
	bne .fibL1197
.fibL1195:
	mov r8,#0
	str r8,[fp,#-3152]
.fibL1196:
	mov r8,#0
	str r8,[fp,#-3136]
	ldr r8,[fp,#-3152]
	cmp r8,#0
	beq .fibL1202
.fibL1199:
	mov r8,#1
	str r8,[fp,#-3136]
.fibL1201:
	mov r8,#0
	str r8,[fp,#-3132]
	ldr r8,[fp,#-3152]
	cmp r8,#0
	bne .fibL1207
.fibL1205:
	mov r8,#0
	str r8,[fp,#-3132]
.fibL1206:
	mov r8,#0
	str r8,[fp,#-3128]
	ldr r8,[fp,#-3132]
	cmp r8,#0
	beq .fibL1209
.fibL1210:
	mov r8,#0
	str r8,[fp,#-3128]
.fibL1211:
	ldr r8,[fp,#-3136]
	cmp r8,#0
	bne .fibL1215
.fibL1213:
	mov r8,#0
	str r8,[fp,#-3312]
.fibL1214:
	mov r8,#0
	str r8,[fp,#-3124]
	ldr r8,[fp,#-3508]
	cmp r8,#0
	bne .fibL1220
.fibL1218:
	mov r8,#0
	str r8,[fp,#-3124]
.fibL1219:
	mov r8,#0
	str r8,[fp,#-3120]
	ldr r8,[fp,#-3152]
	cmp r8,#0
	bne .fibL1225
.fibL1223:
	mov r8,#0
	str r8,[fp,#-3120]
.fibL1224:
	ldr r8,[fp,#-3124]
	cmp r8,#0
	beq .fibL1230
.fibL1227:
	mov r8,#1
	str r8,[fp,#-3372]
.fibL1229:
	mov r8,#0
	str r8,[fp,#-3116]
	mov r8,#0
	str r8,[fp,#-3112]
	ldr r8,[fp,#-3504]
	cmp r8,#0
	beq .fibL1235
.fibL1232:
	mov r8,#1
	str r8,[fp,#-3112]
.fibL1234:
	mov r8,#0
	str r8,[fp,#-3108]
	ldr r8,[fp,#-3504]
	cmp r8,#0
	bne .fibL1240
.fibL1238:
	mov r8,#0
	str r8,[fp,#-3108]
.fibL1239:
	mov r8,#0
	str r8,[fp,#-3104]
	ldr r8,[fp,#-3108]
	cmp r8,#0
	beq .fibL1242
.fibL1243:
	mov r8,#0
	str r8,[fp,#-3104]
.fibL1244:
	ldr r8,[fp,#-3112]
	cmp r8,#0
	bne .fibL1248
.fibL1246:
	mov r8,#0
	str r8,[fp,#-3116]
.fibL1247:
	mov r8,#0
	str r8,[fp,#-3100]
	ldr r8,[fp,#-3116]
	cmp r8,#0
	beq .fibL1253
.fibL1250:
	mov r8,#1
	str r8,[fp,#-3100]
.fibL1252:
	mov r8,#0
	str r8,[fp,#-3096]
	ldr r8,[fp,#-3116]
	cmp r8,#0
	bne .fibL1258
.fibL1256:
	mov r8,#0
	str r8,[fp,#-3096]
.fibL1257:
	mov r8,#0
	str r8,[fp,#-3092]
	ldr r8,[fp,#-3096]
	cmp r8,#0
	beq .fibL1260
.fibL1261:
	mov r8,#0
	str r8,[fp,#-3092]
.fibL1262:
	ldr r8,[fp,#-3100]
	cmp r8,#0
	bne .fibL1266
.fibL1264:
	mov r8,#0
	str r8,[fp,#-3308]
.fibL1265:
	mov r8,#0
	str r8,[fp,#-3088]
	ldr r8,[fp,#-3504]
	cmp r8,#0
	bne .fibL1271
.fibL1269:
	mov r8,#0
	str r8,[fp,#-3088]
.fibL1270:
	mov r8,#0
	str r8,[fp,#-3084]
	ldr r8,[fp,#-3116]
	cmp r8,#0
	bne .fibL1276
.fibL1274:
	mov r8,#0
	str r8,[fp,#-3084]
.fibL1275:
	ldr r8,[fp,#-3088]
	cmp r8,#0
	beq .fibL1281
.fibL1278:
	mov r8,#1
	str r8,[fp,#-3368]
.fibL1280:
	mov r8,#0
	str r8,[fp,#-3080]
	mov r8,#0
	str r8,[fp,#-3076]
	ldr r8,[fp,#-3500]
	cmp r8,#0
	beq .fibL1286
.fibL1283:
	mov r8,#1
	str r8,[fp,#-3076]
.fibL1285:
	mov r8,#0
	str r8,[fp,#-3072]
	ldr r8,[fp,#-3500]
	cmp r8,#0
	bne .fibL1291
.fibL1289:
	mov r8,#0
	str r8,[fp,#-3072]
.fibL1290:
	mov r8,#0
	str r8,[fp,#-3068]
	ldr r8,[fp,#-3072]
	cmp r8,#0
	beq .fibL1293
.fibL1294:
	mov r8,#0
	str r8,[fp,#-3068]
.fibL1295:
	ldr r8,[fp,#-3076]
	cmp r8,#0
	bne .fibL1299
.fibL1297:
	mov r8,#0
	str r8,[fp,#-3080]
.fibL1298:
	mov r8,#0
	str r8,[fp,#-3064]
	ldr r8,[fp,#-3080]
	cmp r8,#0
	beq .fibL1304
.fibL1301:
	mov r8,#1
	str r8,[fp,#-3064]
.fibL1303:
	mov r8,#0
	str r8,[fp,#-3060]
	ldr r8,[fp,#-3080]
	cmp r8,#0
	bne .fibL1309
.fibL1307:
	mov r8,#0
	str r8,[fp,#-3060]
.fibL1308:
	mov r8,#0
	str r8,[fp,#-3056]
	ldr r8,[fp,#-3060]
	cmp r8,#0
	beq .fibL1311
.fibL1312:
	mov r8,#0
	str r8,[fp,#-3056]
.fibL1313:
	ldr r8,[fp,#-3064]
	cmp r8,#0
	bne .fibL1317
.fibL1315:
	mov r8,#0
	str r8,[fp,#-3304]
.fibL1316:
	mov r8,#0
	str r8,[fp,#-3052]
	ldr r8,[fp,#-3500]
	cmp r8,#0
	bne .fibL1322
.fibL1320:
	mov r8,#0
	str r8,[fp,#-3052]
.fibL1321:
	mov r8,#0
	str r8,[fp,#-3048]
	ldr r8,[fp,#-3080]
	cmp r8,#0
	bne .fibL1327
.fibL1325:
	mov r8,#0
	str r8,[fp,#-3048]
.fibL1326:
	ldr r8,[fp,#-3052]
	cmp r8,#0
	beq .fibL1332
.fibL1329:
	mov r8,#1
	str r8,[fp,#-3364]
.fibL1331:
	mov r8,#0
	str r8,[fp,#-3044]
	mov r8,#0
	str r8,[fp,#-3040]
	ldr r8,[fp,#-3496]
	cmp r8,#0
	beq .fibL1337
.fibL1334:
	mov r8,#1
	str r8,[fp,#-3040]
.fibL1336:
	mov r8,#0
	str r8,[fp,#-3036]
	ldr r8,[fp,#-3496]
	cmp r8,#0
	bne .fibL1342
.fibL1340:
	mov r8,#0
	str r8,[fp,#-3036]
.fibL1341:
	mov r8,#0
	str r8,[fp,#-3032]
	ldr r8,[fp,#-3036]
	cmp r8,#0
	beq .fibL1344
.fibL1345:
	mov r8,#0
	str r8,[fp,#-3032]
.fibL1346:
	ldr r8,[fp,#-3040]
	cmp r8,#0
	bne .fibL1350
.fibL1348:
	mov r8,#0
	str r8,[fp,#-3044]
.fibL1349:
	mov r8,#0
	str r8,[fp,#-3028]
	ldr r8,[fp,#-3044]
	cmp r8,#0
	beq .fibL1355
.fibL1352:
	mov r8,#1
	str r8,[fp,#-3028]
.fibL1354:
	mov r8,#0
	str r8,[fp,#-3024]
	ldr r8,[fp,#-3044]
	cmp r8,#0
	bne .fibL1360
.fibL1358:
	mov r8,#0
	str r8,[fp,#-3024]
.fibL1359:
	mov r8,#0
	str r8,[fp,#-3020]
	ldr r8,[fp,#-3024]
	cmp r8,#0
	beq .fibL1362
.fibL1363:
	mov r8,#0
	str r8,[fp,#-3020]
.fibL1364:
	ldr r8,[fp,#-3028]
	cmp r8,#0
	bne .fibL1368
.fibL1366:
	mov r8,#0
	str r8,[fp,#-3300]
.fibL1367:
	mov r8,#0
	str r8,[fp,#-3016]
	ldr r8,[fp,#-3496]
	cmp r8,#0
	bne .fibL1373
.fibL1371:
	mov r8,#0
	str r8,[fp,#-3016]
.fibL1372:
	mov r8,#0
	str r8,[fp,#-3012]
	ldr r8,[fp,#-3044]
	cmp r8,#0
	bne .fibL1378
.fibL1376:
	mov r8,#0
	str r8,[fp,#-3012]
.fibL1377:
	ldr r8,[fp,#-3016]
	cmp r8,#0
	beq .fibL1383
.fibL1380:
	mov r8,#1
	str r8,[fp,#-3360]
.fibL1382:
	mov r8,#0
	str r8,[fp,#-3008]
	mov r8,#0
	str r8,[fp,#-3004]
	ldr r8,[fp,#-3492]
	cmp r8,#0
	beq .fibL1388
.fibL1385:
	mov r8,#1
	str r8,[fp,#-3004]
.fibL1387:
	mov r8,#0
	str r8,[fp,#-3000]
	ldr r8,[fp,#-3492]
	cmp r8,#0
	bne .fibL1393
.fibL1391:
	mov r8,#0
	str r8,[fp,#-3000]
.fibL1392:
	mov r8,#0
	str r8,[fp,#-2996]
	ldr r8,[fp,#-3000]
	cmp r8,#0
	beq .fibL1395
.fibL1396:
	mov r8,#0
	str r8,[fp,#-2996]
.fibL1397:
	ldr r8,[fp,#-3004]
	cmp r8,#0
	bne .fibL1401
.fibL1399:
	mov r8,#0
	str r8,[fp,#-3008]
.fibL1400:
	mov r8,#0
	str r8,[fp,#-2992]
	ldr r8,[fp,#-3008]
	cmp r8,#0
	beq .fibL1406
.fibL1403:
	mov r8,#1
	str r8,[fp,#-2992]
.fibL1405:
	mov r8,#0
	str r8,[fp,#-2988]
	ldr r8,[fp,#-3008]
	cmp r8,#0
	bne .fibL1411
.fibL1409:
	mov r8,#0
	str r8,[fp,#-2988]
.fibL1410:
	mov r8,#0
	str r8,[fp,#-2984]
	ldr r8,[fp,#-2988]
	cmp r8,#0
	beq .fibL1413
.fibL1414:
	mov r8,#0
	str r8,[fp,#-2984]
.fibL1415:
	ldr r8,[fp,#-2992]
	cmp r8,#0
	bne .fibL1419
.fibL1417:
	mov r8,#0
	str r8,[fp,#-3296]
.fibL1418:
	mov r8,#0
	str r8,[fp,#-2980]
	ldr r8,[fp,#-3492]
	cmp r8,#0
	bne .fibL1424
.fibL1422:
	mov r8,#0
	str r8,[fp,#-2980]
.fibL1423:
	mov r8,#0
	str r8,[fp,#-2976]
	ldr r8,[fp,#-3008]
	cmp r8,#0
	bne .fibL1429
.fibL1427:
	mov r8,#0
	str r8,[fp,#-2976]
.fibL1428:
	ldr r8,[fp,#-2980]
	cmp r8,#0
	beq .fibL1434
.fibL1431:
	mov r8,#1
	str r8,[fp,#-3356]
.fibL1433:
	mov r8,#0
	str r8,[fp,#-2972]
	mov r8,#0
	str r8,[fp,#-2968]
	ldr r8,[fp,#-3488]
	cmp r8,#0
	beq .fibL1439
.fibL1436:
	mov r8,#1
	str r8,[fp,#-2968]
.fibL1438:
	mov r8,#0
	str r8,[fp,#-2964]
	ldr r8,[fp,#-3488]
	cmp r8,#0
	bne .fibL1444
.fibL1442:
	mov r8,#0
	str r8,[fp,#-2964]
.fibL1443:
	mov r8,#0
	str r8,[fp,#-2960]
	ldr r8,[fp,#-2964]
	cmp r8,#0
	beq .fibL1446
.fibL1447:
	mov r8,#0
	str r8,[fp,#-2960]
.fibL1448:
	ldr r8,[fp,#-2968]
	cmp r8,#0
	bne .fibL1452
.fibL1450:
	mov r8,#0
	str r8,[fp,#-2972]
.fibL1451:
	mov r8,#0
	str r8,[fp,#-2956]
	ldr r8,[fp,#-2972]
	cmp r8,#0
	beq .fibL1457
.fibL1454:
	mov r8,#1
	str r8,[fp,#-2956]
.fibL1456:
	mov r8,#0
	str r8,[fp,#-2952]
	ldr r8,[fp,#-2972]
	cmp r8,#0
	bne .fibL1462
.fibL1460:
	mov r8,#0
	str r8,[fp,#-2952]
.fibL1461:
	mov r8,#0
	str r8,[fp,#-2948]
	ldr r8,[fp,#-2952]
	cmp r8,#0
	beq .fibL1464
.fibL1465:
	mov r8,#0
	str r8,[fp,#-2948]
.fibL1466:
	ldr r8,[fp,#-2956]
	cmp r8,#0
	bne .fibL1470
.fibL1468:
	mov r8,#0
	str r8,[fp,#-3292]
.fibL1469:
	mov r8,#0
	str r8,[fp,#-2944]
	ldr r8,[fp,#-3488]
	cmp r8,#0
	bne .fibL1475
.fibL1473:
	mov r8,#0
	str r8,[fp,#-2944]
.fibL1474:
	mov r8,#0
	str r8,[fp,#-2940]
	ldr r8,[fp,#-2972]
	cmp r8,#0
	bne .fibL1480
.fibL1478:
	mov r8,#0
	str r8,[fp,#-2940]
.fibL1479:
	ldr r8,[fp,#-2944]
	cmp r8,#0
	beq .fibL1485
.fibL1482:
	mov r8,#1
	str r8,[fp,#-3352]
.fibL1484:
	mov r8,#0
	str r8,[fp,#-2936]
	mov r8,#0
	str r8,[fp,#-2932]
	ldr r8,[fp,#-3484]
	cmp r8,#0
	beq .fibL1490
.fibL1487:
	mov r8,#1
	str r8,[fp,#-2932]
.fibL1489:
	mov r8,#0
	str r8,[fp,#-2928]
	ldr r8,[fp,#-3484]
	cmp r8,#0
	bne .fibL1495
.fibL1493:
	mov r8,#0
	str r8,[fp,#-2928]
.fibL1494:
	mov r8,#0
	str r8,[fp,#-2924]
	ldr r8,[fp,#-2928]
	cmp r8,#0
	beq .fibL1497
.fibL1498:
	mov r8,#0
	str r8,[fp,#-2924]
.fibL1499:
	ldr r8,[fp,#-2932]
	cmp r8,#0
	bne .fibL1503
.fibL1501:
	mov r8,#0
	str r8,[fp,#-2936]
.fibL1502:
	mov r8,#0
	str r8,[fp,#-2920]
	ldr r8,[fp,#-2936]
	cmp r8,#0
	beq .fibL1508
.fibL1505:
	mov r8,#1
	str r8,[fp,#-2920]
.fibL1507:
	mov r8,#0
	str r8,[fp,#-2916]
	ldr r8,[fp,#-2936]
	cmp r8,#0
	bne .fibL1513
.fibL1511:
	mov r8,#0
	str r8,[fp,#-2916]
.fibL1512:
	mov r8,#0
	str r8,[fp,#-2912]
	ldr r8,[fp,#-2916]
	cmp r8,#0
	beq .fibL1515
.fibL1516:
	mov r8,#0
	str r8,[fp,#-2912]
.fibL1517:
	ldr r8,[fp,#-2920]
	cmp r8,#0
	bne .fibL1521
.fibL1519:
	mov r8,#0
	str r8,[fp,#-3288]
.fibL1520:
	mov r8,#0
	str r8,[fp,#-2908]
	ldr r8,[fp,#-3484]
	cmp r8,#0
	bne .fibL1526
.fibL1524:
	mov r8,#0
	str r8,[fp,#-2908]
.fibL1525:
	mov r8,#0
	str r8,[fp,#-2904]
	ldr r8,[fp,#-2936]
	cmp r8,#0
	bne .fibL1531
.fibL1529:
	mov r8,#0
	str r8,[fp,#-2904]
.fibL1530:
	ldr r8,[fp,#-2908]
	cmp r8,#0
	beq .fibL1536
.fibL1533:
	mov r8,#1
	str r8,[fp,#-3348]
.fibL1535:
	mov r8,#0
	str r8,[fp,#-2900]
	mov r8,#0
	str r8,[fp,#-2896]
	ldr r8,[fp,#-3480]
	cmp r8,#0
	beq .fibL1541
.fibL1538:
	mov r8,#1
	str r8,[fp,#-2896]
.fibL1540:
	mov r8,#0
	str r8,[fp,#-2892]
	ldr r8,[fp,#-3480]
	cmp r8,#0
	bne .fibL1546
.fibL1544:
	mov r8,#0
	str r8,[fp,#-2892]
.fibL1545:
	mov r8,#0
	str r8,[fp,#-2888]
	ldr r8,[fp,#-2892]
	cmp r8,#0
	beq .fibL1548
.fibL1549:
	mov r8,#0
	str r8,[fp,#-2888]
.fibL1550:
	ldr r8,[fp,#-2896]
	cmp r8,#0
	bne .fibL1554
.fibL1552:
	mov r8,#0
	str r8,[fp,#-2900]
.fibL1553:
	mov r8,#0
	str r8,[fp,#-2884]
	ldr r8,[fp,#-2900]
	cmp r8,#0
	beq .fibL1559
.fibL1556:
	mov r8,#1
	str r8,[fp,#-2884]
.fibL1558:
	mov r8,#0
	str r8,[fp,#-2880]
	ldr r8,[fp,#-2900]
	cmp r8,#0
	bne .fibL1564
.fibL1562:
	mov r8,#0
	str r8,[fp,#-2880]
.fibL1563:
	mov r8,#0
	str r8,[fp,#-2876]
	ldr r8,[fp,#-2880]
	cmp r8,#0
	beq .fibL1566
.fibL1567:
	mov r8,#0
	str r8,[fp,#-2876]
.fibL1568:
	ldr r8,[fp,#-2884]
	cmp r8,#0
	bne .fibL1572
.fibL1570:
	mov r8,#0
	str r8,[fp,#-3284]
.fibL1571:
	mov r8,#0
	str r8,[fp,#-2872]
	ldr r8,[fp,#-3480]
	cmp r8,#0
	bne .fibL1577
.fibL1575:
	mov r8,#0
	str r8,[fp,#-2872]
.fibL1576:
	mov r8,#0
	str r8,[fp,#-2868]
	ldr r8,[fp,#-2900]
	cmp r8,#0
	bne .fibL1582
.fibL1580:
	mov r8,#0
	str r8,[fp,#-2868]
.fibL1581:
	ldr r8,[fp,#-2872]
	cmp r8,#0
	beq .fibL1587
.fibL1584:
	mov r8,#1
	str r8,[fp,#-3344]
.fibL1586:
	mov r8,#0
	str r8,[fp,#-2864]
	mov r8,#0
	str r8,[fp,#-2860]
	ldr r8,[fp,#-3476]
	cmp r8,#0
	beq .fibL1592
.fibL1589:
	mov r8,#1
	str r8,[fp,#-2860]
.fibL1591:
	mov r8,#0
	str r8,[fp,#-2856]
	ldr r8,[fp,#-3476]
	cmp r8,#0
	bne .fibL1597
.fibL1595:
	mov r8,#0
	str r8,[fp,#-2856]
.fibL1596:
	mov r8,#0
	str r8,[fp,#-2852]
	ldr r8,[fp,#-2856]
	cmp r8,#0
	beq .fibL1599
.fibL1600:
	mov r8,#0
	str r8,[fp,#-2852]
.fibL1601:
	ldr r8,[fp,#-2860]
	cmp r8,#0
	bne .fibL1605
.fibL1603:
	mov r8,#0
	str r8,[fp,#-2864]
.fibL1604:
	mov r8,#0
	str r8,[fp,#-2848]
	ldr r8,[fp,#-2864]
	cmp r8,#0
	beq .fibL1610
.fibL1607:
	mov r8,#1
	str r8,[fp,#-2848]
.fibL1609:
	mov r8,#0
	str r8,[fp,#-2844]
	ldr r8,[fp,#-2864]
	cmp r8,#0
	bne .fibL1615
.fibL1613:
	mov r8,#0
	str r8,[fp,#-2844]
.fibL1614:
	mov r8,#0
	str r8,[fp,#-2840]
	ldr r8,[fp,#-2844]
	cmp r8,#0
	beq .fibL1617
.fibL1618:
	mov r8,#0
	str r8,[fp,#-2840]
.fibL1619:
	ldr r8,[fp,#-2848]
	cmp r8,#0
	bne .fibL1623
.fibL1621:
	mov r8,#0
	str r8,[fp,#-3280]
.fibL1622:
	mov r8,#0
	str r8,[fp,#-2836]
	ldr r8,[fp,#-3476]
	cmp r8,#0
	bne .fibL1628
.fibL1626:
	mov r8,#0
	str r8,[fp,#-2836]
.fibL1627:
	mov r8,#0
	str r8,[fp,#-2832]
	ldr r8,[fp,#-2864]
	cmp r8,#0
	bne .fibL1633
.fibL1631:
	mov r8,#0
	str r8,[fp,#-2832]
.fibL1632:
	ldr r8,[fp,#-2836]
	cmp r8,#0
	beq .fibL1638
.fibL1635:
	mov r8,#1
	str r8,[fp,#-3340]
.fibL1637:
	mov r8,#0
	str r8,[fp,#-2828]
	mov r8,#0
	str r8,[fp,#-2824]
	ldr r8,[fp,#-3472]
	cmp r8,#0
	beq .fibL1643
.fibL1640:
	mov r8,#1
	str r8,[fp,#-2824]
.fibL1642:
	mov r8,#0
	str r8,[fp,#-2820]
	ldr r8,[fp,#-3472]
	cmp r8,#0
	bne .fibL1648
.fibL1646:
	mov r8,#0
	str r8,[fp,#-2820]
.fibL1647:
	mov r8,#0
	str r8,[fp,#-2816]
	ldr r8,[fp,#-2820]
	cmp r8,#0
	beq .fibL1650
.fibL1651:
	mov r8,#0
	str r8,[fp,#-2816]
.fibL1652:
	ldr r8,[fp,#-2824]
	cmp r8,#0
	bne .fibL1656
.fibL1654:
	mov r8,#0
	str r8,[fp,#-2828]
.fibL1655:
	mov r8,#0
	str r8,[fp,#-2812]
	ldr r8,[fp,#-2828]
	cmp r8,#0
	beq .fibL1661
.fibL1658:
	mov r8,#1
	str r8,[fp,#-2812]
.fibL1660:
	mov r8,#0
	str r8,[fp,#-2808]
	ldr r8,[fp,#-2828]
	cmp r8,#0
	bne .fibL1666
.fibL1664:
	mov r8,#0
	str r8,[fp,#-2808]
.fibL1665:
	mov r8,#0
	str r8,[fp,#-2804]
	ldr r8,[fp,#-2808]
	cmp r8,#0
	beq .fibL1668
.fibL1669:
	mov r8,#0
	str r8,[fp,#-2804]
.fibL1670:
	ldr r8,[fp,#-2812]
	cmp r8,#0
	bne .fibL1674
.fibL1672:
	mov r8,#0
	str r8,[fp,#-3276]
.fibL1673:
	mov r8,#0
	str r8,[fp,#-2800]
	ldr r8,[fp,#-3472]
	cmp r8,#0
	bne .fibL1679
.fibL1677:
	mov r8,#0
	str r8,[fp,#-2800]
.fibL1678:
	mov r8,#0
	str r8,[fp,#-2796]
	ldr r8,[fp,#-2828]
	cmp r8,#0
	bne .fibL1684
.fibL1682:
	mov r8,#0
	str r8,[fp,#-2796]
.fibL1683:
	ldr r8,[fp,#-2800]
	cmp r8,#0
	beq .fibL1689
.fibL1686:
	mov r8,#1
	str r8,[fp,#-3336]
.fibL1688:
	mov r8,#0
	str r8,[fp,#-2792]
	mov r8,#0
	str r8,[fp,#-2788]
	ldr r8,[fp,#-3468]
	cmp r8,#0
	beq .fibL1694
.fibL1691:
	mov r8,#1
	str r8,[fp,#-2788]
.fibL1693:
	mov r8,#0
	str r8,[fp,#-2784]
	ldr r8,[fp,#-3468]
	cmp r8,#0
	bne .fibL1699
.fibL1697:
	mov r8,#0
	str r8,[fp,#-2784]
.fibL1698:
	mov r8,#0
	str r8,[fp,#-2780]
	ldr r8,[fp,#-2784]
	cmp r8,#0
	beq .fibL1701
.fibL1702:
	mov r8,#0
	str r8,[fp,#-2780]
.fibL1703:
	ldr r8,[fp,#-2788]
	cmp r8,#0
	bne .fibL1707
.fibL1705:
	mov r8,#0
	str r8,[fp,#-2792]
.fibL1706:
	mov r8,#0
	str r8,[fp,#-2776]
	ldr r8,[fp,#-2792]
	cmp r8,#0
	beq .fibL1712
.fibL1709:
	mov r8,#1
	str r8,[fp,#-2776]
.fibL1711:
	mov r8,#0
	str r8,[fp,#-2772]
	ldr r8,[fp,#-2792]
	cmp r8,#0
	bne .fibL1717
.fibL1715:
	mov r8,#0
	str r8,[fp,#-2772]
.fibL1716:
	mov r8,#0
	str r8,[fp,#-2768]
	ldr r8,[fp,#-2772]
	cmp r8,#0
	beq .fibL1719
.fibL1720:
	mov r8,#0
	str r8,[fp,#-2768]
.fibL1721:
	ldr r8,[fp,#-2776]
	cmp r8,#0
	bne .fibL1725
.fibL1723:
	mov r8,#0
	str r8,[fp,#-3272]
.fibL1724:
	mov r8,#0
	str r8,[fp,#-2764]
	ldr r8,[fp,#-3468]
	cmp r8,#0
	bne .fibL1730
.fibL1728:
	mov r8,#0
	str r8,[fp,#-2764]
.fibL1729:
	mov r8,#0
	str r8,[fp,#-2760]
	ldr r8,[fp,#-2792]
	cmp r8,#0
	bne .fibL1735
.fibL1733:
	mov r8,#0
	str r8,[fp,#-2760]
.fibL1734:
	ldr r8,[fp,#-2764]
	cmp r8,#0
	beq .fibL1740
.fibL1737:
	mov r8,#1
	str r8,[fp,#-3332]
.fibL1739:
	mov r8,#0
	str r8,[fp,#-2756]
	mov r8,#0
	str r8,[fp,#-2752]
	ldr r8,[fp,#-3464]
	cmp r8,#0
	beq .fibL1745
.fibL1742:
	mov r8,#1
	str r8,[fp,#-2752]
.fibL1744:
	mov r8,#0
	str r8,[fp,#-2748]
	ldr r8,[fp,#-3464]
	cmp r8,#0
	bne .fibL1750
.fibL1748:
	mov r8,#0
	str r8,[fp,#-2748]
.fibL1749:
	mov r8,#0
	str r8,[fp,#-2744]
	ldr r8,[fp,#-2748]
	cmp r8,#0
	beq .fibL1752
.fibL1753:
	mov r8,#0
	str r8,[fp,#-2744]
.fibL1754:
	ldr r8,[fp,#-2752]
	cmp r8,#0
	bne .fibL1758
.fibL1756:
	mov r8,#0
	str r8,[fp,#-2756]
.fibL1757:
	mov r8,#0
	str r8,[fp,#-2740]
	ldr r8,[fp,#-2756]
	cmp r8,#0
	beq .fibL1763
.fibL1760:
	mov r8,#1
	str r8,[fp,#-2740]
.fibL1762:
	mov r8,#0
	str r8,[fp,#-2736]
	ldr r8,[fp,#-2756]
	cmp r8,#0
	bne .fibL1768
.fibL1766:
	mov r8,#0
	str r8,[fp,#-2736]
.fibL1767:
	mov r8,#0
	str r8,[fp,#-2732]
	ldr r8,[fp,#-2736]
	cmp r8,#0
	beq .fibL1770
.fibL1771:
	mov r8,#0
	str r8,[fp,#-2732]
.fibL1772:
	ldr r8,[fp,#-2740]
	cmp r8,#0
	bne .fibL1776
.fibL1774:
	mov r8,#0
	str r8,[fp,#-3268]
.fibL1775:
	mov r8,#0
	str r8,[fp,#-2728]
	ldr r8,[fp,#-3464]
	cmp r8,#0
	bne .fibL1781
.fibL1779:
	mov r8,#0
	str r8,[fp,#-2728]
.fibL1780:
	mov r8,#0
	str r8,[fp,#-2724]
	ldr r8,[fp,#-2756]
	cmp r8,#0
	bne .fibL1786
.fibL1784:
	mov r8,#0
	str r8,[fp,#-2724]
.fibL1785:
	ldr r8,[fp,#-2728]
	cmp r8,#0
	beq .fibL1791
.fibL1788:
	mov r8,#1
	str r8,[fp,#-3328]
.fibL1790:
	mov r8,#0
	str r8,[fp,#-2720]
	mov r8,#0
	str r8,[fp,#-2716]
	ldr r8,[fp,#-3460]
	cmp r8,#0
	beq .fibL1796
.fibL1793:
	mov r8,#1
	str r8,[fp,#-2716]
.fibL1795:
	mov r8,#0
	str r8,[fp,#-2712]
	ldr r8,[fp,#-3460]
	cmp r8,#0
	bne .fibL1801
.fibL1799:
	mov r8,#0
	str r8,[fp,#-2712]
.fibL1800:
	mov r8,#0
	str r8,[fp,#-2708]
	ldr r8,[fp,#-2712]
	cmp r8,#0
	beq .fibL1803
.fibL1804:
	mov r8,#0
	str r8,[fp,#-2708]
.fibL1805:
	ldr r8,[fp,#-2716]
	cmp r8,#0
	bne .fibL1809
.fibL1807:
	mov r8,#0
	str r8,[fp,#-2720]
.fibL1808:
	mov r8,#0
	str r8,[fp,#-2704]
	ldr r8,[fp,#-2720]
	cmp r8,#0
	beq .fibL1814
.fibL1811:
	mov r8,#1
	str r8,[fp,#-2704]
.fibL1813:
	mov r8,#0
	str r8,[fp,#-2700]
	ldr r8,[fp,#-2720]
	cmp r8,#0
	bne .fibL1819
.fibL1817:
	mov r8,#0
	str r8,[fp,#-2700]
.fibL1818:
	mov r8,#0
	str r8,[fp,#-2696]
	ldr r8,[fp,#-2700]
	cmp r8,#0
	beq .fibL1821
.fibL1822:
	mov r8,#0
	str r8,[fp,#-2696]
.fibL1823:
	ldr r8,[fp,#-2704]
	cmp r8,#0
	bne .fibL1827
.fibL1825:
	mov r8,#0
	str r8,[fp,#-3264]
.fibL1826:
	mov r8,#0
	str r8,[fp,#-2692]
	ldr r8,[fp,#-3460]
	cmp r8,#0
	bne .fibL1832
.fibL1830:
	mov r8,#0
	str r8,[fp,#-2692]
.fibL1831:
	mov r8,#0
	str r8,[fp,#-2688]
	ldr r8,[fp,#-2720]
	cmp r8,#0
	bne .fibL1837
.fibL1835:
	mov r8,#0
	str r8,[fp,#-2688]
.fibL1836:
	ldr r8,[fp,#-2692]
	cmp r8,#0
	beq .fibL1842
.fibL1839:
	mov r8,#1
	str r8,[fp,#-3524]
.fibL1841:
	mov r8,#0
	movw r5,#61028
	movt r5,#65535  @ -4508
	mov r2,r5
	str r8,[fp,r2]
	movw r8,#61028
	movt r8,#65535  @ -4508
	mov r5,r8
	ldr r8,[fp,r5]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-3264]
	add r5,r2,r8
	movw r8,#61028
	movt r8,#65535  @ -4508
	mov r2,r8
	str r5,[fp,r2]
	movw r5,#61028
	movt r5,#65535  @ -4508
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	mul r2,r5,r8
	ldr r8,[fp,#-3268]
	add r5,r2,r8
	movw r8,#61028
	movt r8,#65535  @ -4508
	mov r2,r8
	str r5,[fp,r2]
	movw r5,#61028
	movt r5,#65535  @ -4508
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	mul r2,r5,r8
	ldr r8,[fp,#-3272]
	add r5,r2,r8
	movw r8,#61028
	movt r8,#65535  @ -4508
	mov r2,r8
	str r5,[fp,r2]
	movw r5,#61028
	movt r5,#65535  @ -4508
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	mul r2,r5,r8
	ldr r8,[fp,#-3276]
	add r5,r2,r8
	movw r8,#61028
	movt r8,#65535  @ -4508
	mov r2,r8
	str r5,[fp,r2]
	movw r5,#61028
	movt r5,#65535  @ -4508
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	mul r2,r5,r8
	ldr r8,[fp,#-3280]
	add r5,r2,r8
	movw r8,#61028
	movt r8,#65535  @ -4508
	mov r2,r8
	str r5,[fp,r2]
	movw r5,#61028
	movt r5,#65535  @ -4508
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	mul r2,r5,r8
	ldr r8,[fp,#-3284]
	add r5,r2,r8
	movw r8,#61028
	movt r8,#65535  @ -4508
	mov r2,r8
	str r5,[fp,r2]
	movw r5,#61028
	movt r5,#65535  @ -4508
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	mul r2,r5,r8
	ldr r8,[fp,#-3288]
	add r5,r2,r8
	movw r8,#61028
	movt r8,#65535  @ -4508
	mov r2,r8
	str r5,[fp,r2]
	movw r5,#61028
	movt r5,#65535  @ -4508
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	mul r2,r5,r8
	ldr r8,[fp,#-3292]
	add r5,r2,r8
	movw r8,#61028
	movt r8,#65535  @ -4508
	mov r2,r8
	str r5,[fp,r2]
	movw r5,#61028
	movt r5,#65535  @ -4508
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	mul r2,r5,r8
	ldr r8,[fp,#-3296]
	add r5,r2,r8
	movw r8,#61028
	movt r8,#65535  @ -4508
	mov r2,r8
	str r5,[fp,r2]
	movw r5,#61028
	movt r5,#65535  @ -4508
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	mul r2,r5,r8
	ldr r8,[fp,#-3300]
	add r5,r2,r8
	movw r8,#61028
	movt r8,#65535  @ -4508
	mov r2,r8
	str r5,[fp,r2]
	movw r5,#61028
	movt r5,#65535  @ -4508
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	mul r2,r5,r8
	ldr r8,[fp,#-3304]
	add r5,r2,r8
	movw r8,#61028
	movt r8,#65535  @ -4508
	mov r2,r8
	str r5,[fp,r2]
	movw r5,#61028
	movt r5,#65535  @ -4508
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	mul r2,r5,r8
	ldr r8,[fp,#-3308]
	add r5,r2,r8
	movw r8,#61028
	movt r8,#65535  @ -4508
	mov r2,r8
	str r5,[fp,r2]
	movw r5,#61028
	movt r5,#65535  @ -4508
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	mul r2,r5,r8
	ldr r8,[fp,#-3312]
	add r5,r2,r8
	movw r8,#61028
	movt r8,#65535  @ -4508
	mov r2,r8
	str r5,[fp,r2]
	movw r5,#61028
	movt r5,#65535  @ -4508
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	mul r2,r5,r8
	ldr r8,[fp,#-3316]
	add r5,r2,r8
	movw r8,#61028
	movt r8,#65535  @ -4508
	mov r2,r8
	str r5,[fp,r2]
	movw r5,#61028
	movt r5,#65535  @ -4508
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	mul r2,r5,r8
	ldr r8,[fp,#-3320]
	add r5,r2,r8
	movw r8,#61028
	movt r8,#65535  @ -4508
	mov r2,r8
	str r5,[fp,r2]
	movw r5,#61028
	movt r5,#65535  @ -4508
	mov r8,r5
	ldr r5,[fp,r8]
	mov r8,#2
	mul r2,r5,r8
	ldr r8,[fp,#-3324]
	add r5,r2,r8
	movw r8,#61028
	movt r8,#65535  @ -4508
	mov r2,r8
	str r5,[fp,r2]
	movw r5,#61028
	movt r5,#65535  @ -4508
	mov r8,r5
	ldr r2,[fp,r8]
	@%r5277 = call i32 @fib(i32 %r5276)
	push {r1,r2,r3}
	mov r0,r2
	bl fib
	mov r8,r0
	pop {r1,r2,r3}
	str r8,[fp,#-2684]
	mov r8,#0
	str r8,[fp,#-2680]
	mov r8,#0
	str r8,[fp,#-2676]
	mov r8,#0
	str r8,[fp,#-2672]
	mov r8,#0
	str r8,[fp,#-2668]
	mov r8,#0
	str r8,[fp,#-2664]
	mov r8,#0
	str r8,[fp,#-2660]
	mov r8,#0
	str r8,[fp,#-2656]
	mov r8,#0
	str r8,[fp,#-2652]
	mov r8,#0
	str r8,[fp,#-2648]
	mov r8,#0
	str r8,[fp,#-2644]
	mov r8,#0
	str r8,[fp,#-2640]
	mov r8,#0
	str r8,[fp,#-2636]
	mov r8,#0
	str r8,[fp,#-2632]
	mov r8,#0
	str r8,[fp,#-2628]
	mov r8,#0
	str r8,[fp,#-2624]
	mov r8,#0
	str r8,[fp,#-2620]
	mov r8,#0
	str r8,[fp,#-2616]
	mov r8,#0
	str r8,[fp,#-2612]
	mov r8,#0
	str r8,[fp,#-2608]
	mov r8,#2
	str r8,[fp,#-2604]
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5320 = call i32 @__modsi3(i32 %r5318,i32 %r5319)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2668]
	ldr r8,[fp,#-2668]
	mov r2,#0
	cmp r8,r2
	blt .fibL1844
.fibL1845:
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5330 = call i32 @__aeabi_idiv(i32 %r5328,i32 %r5329)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2604]
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5333 = call i32 @__modsi3(i32 %r5331,i32 %r5332)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2664]
	ldr r8,[fp,#-2664]
	mov r2,#0
	cmp r8,r2
	blt .fibL1846
.fibL1847:
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5343 = call i32 @__aeabi_idiv(i32 %r5341,i32 %r5342)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2604]
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5346 = call i32 @__modsi3(i32 %r5344,i32 %r5345)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2660]
	ldr r8,[fp,#-2660]
	mov r2,#0
	cmp r8,r2
	blt .fibL1848
.fibL1849:
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5356 = call i32 @__aeabi_idiv(i32 %r5354,i32 %r5355)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2604]
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5359 = call i32 @__modsi3(i32 %r5357,i32 %r5358)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2656]
	ldr r8,[fp,#-2656]
	mov r2,#0
	cmp r8,r2
	blt .fibL1850
.fibL1851:
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5369 = call i32 @__aeabi_idiv(i32 %r5367,i32 %r5368)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2604]
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5372 = call i32 @__modsi3(i32 %r5370,i32 %r5371)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2652]
	ldr r8,[fp,#-2652]
	mov r2,#0
	cmp r8,r2
	blt .fibL1852
.fibL1853:
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5382 = call i32 @__aeabi_idiv(i32 %r5380,i32 %r5381)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2604]
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5385 = call i32 @__modsi3(i32 %r5383,i32 %r5384)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2648]
	ldr r8,[fp,#-2648]
	mov r2,#0
	cmp r8,r2
	blt .fibL1854
.fibL1855:
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5395 = call i32 @__aeabi_idiv(i32 %r5393,i32 %r5394)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2604]
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5398 = call i32 @__modsi3(i32 %r5396,i32 %r5397)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2644]
	ldr r8,[fp,#-2644]
	mov r2,#0
	cmp r8,r2
	blt .fibL1856
.fibL1857:
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5408 = call i32 @__aeabi_idiv(i32 %r5406,i32 %r5407)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2604]
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5411 = call i32 @__modsi3(i32 %r5409,i32 %r5410)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2640]
	ldr r8,[fp,#-2640]
	mov r2,#0
	cmp r8,r2
	blt .fibL1858
.fibL1859:
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5421 = call i32 @__aeabi_idiv(i32 %r5419,i32 %r5420)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2604]
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5424 = call i32 @__modsi3(i32 %r5422,i32 %r5423)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2636]
	ldr r8,[fp,#-2636]
	mov r2,#0
	cmp r8,r2
	blt .fibL1860
.fibL1861:
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5434 = call i32 @__aeabi_idiv(i32 %r5432,i32 %r5433)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2604]
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5437 = call i32 @__modsi3(i32 %r5435,i32 %r5436)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2632]
	ldr r8,[fp,#-2632]
	mov r2,#0
	cmp r8,r2
	blt .fibL1862
.fibL1863:
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5447 = call i32 @__aeabi_idiv(i32 %r5445,i32 %r5446)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2604]
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5450 = call i32 @__modsi3(i32 %r5448,i32 %r5449)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2628]
	ldr r8,[fp,#-2628]
	mov r2,#0
	cmp r8,r2
	blt .fibL1864
.fibL1865:
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5460 = call i32 @__aeabi_idiv(i32 %r5458,i32 %r5459)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2604]
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5463 = call i32 @__modsi3(i32 %r5461,i32 %r5462)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2624]
	ldr r8,[fp,#-2624]
	mov r2,#0
	cmp r8,r2
	blt .fibL1866
.fibL1867:
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5473 = call i32 @__aeabi_idiv(i32 %r5471,i32 %r5472)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2604]
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5476 = call i32 @__modsi3(i32 %r5474,i32 %r5475)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2620]
	ldr r8,[fp,#-2620]
	mov r2,#0
	cmp r8,r2
	blt .fibL1868
.fibL1869:
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5486 = call i32 @__aeabi_idiv(i32 %r5484,i32 %r5485)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2604]
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5489 = call i32 @__modsi3(i32 %r5487,i32 %r5488)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2616]
	ldr r8,[fp,#-2616]
	mov r2,#0
	cmp r8,r2
	blt .fibL1870
.fibL1871:
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5499 = call i32 @__aeabi_idiv(i32 %r5497,i32 %r5498)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2604]
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5502 = call i32 @__modsi3(i32 %r5500,i32 %r5501)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2612]
	ldr r8,[fp,#-2612]
	mov r2,#0
	cmp r8,r2
	blt .fibL1872
.fibL1873:
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5512 = call i32 @__aeabi_idiv(i32 %r5510,i32 %r5511)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2604]
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5515 = call i32 @__modsi3(i32 %r5513,i32 %r5514)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2608]
	ldr r8,[fp,#-2608]
	mov r2,#0
	cmp r8,r2
	blt .fibL1874
.fibL1875:
	ldr r8,[fp,#-2604]
	mov r2,#2
	@%r5525 = call i32 @__aeabi_idiv(i32 %r5523,i32 %r5524)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2604]
	mov r8,#0
	str r8,[fp,#-2600]
	mov r8,#0
	str r8,[fp,#-2596]
	mov r8,#0
	str r8,[fp,#-2592]
	mov r8,#0
	str r8,[fp,#-2588]
	mov r8,#0
	str r8,[fp,#-2584]
	mov r8,#0
	str r8,[fp,#-2580]
	mov r8,#0
	str r8,[fp,#-2576]
	mov r8,#0
	str r8,[fp,#-2572]
	mov r8,#0
	str r8,[fp,#-2568]
	mov r8,#0
	str r8,[fp,#-2564]
	mov r8,#0
	str r8,[fp,#-2560]
	mov r8,#0
	str r8,[fp,#-2556]
	mov r8,#0
	str r8,[fp,#-2552]
	mov r8,#0
	str r8,[fp,#-2548]
	mov r8,#0
	str r8,[fp,#-2544]
	mov r8,#0
	str r8,[fp,#-2540]
	ldr r8,[fp,#-2668]
	cmp r8,#0
	beq .fibL1876
.fibL1877:
	mov r8,#0
	str r8,[fp,#-2600]
.fibL1878:
	ldr r8,[fp,#-2664]
	cmp r8,#0
	beq .fibL1879
.fibL1880:
	mov r8,#0
	str r8,[fp,#-2596]
.fibL1881:
	ldr r8,[fp,#-2660]
	cmp r8,#0
	beq .fibL1882
.fibL1883:
	mov r8,#0
	str r8,[fp,#-2592]
.fibL1884:
	ldr r8,[fp,#-2656]
	cmp r8,#0
	beq .fibL1885
.fibL1886:
	mov r8,#0
	str r8,[fp,#-2588]
.fibL1887:
	ldr r8,[fp,#-2652]
	cmp r8,#0
	beq .fibL1888
.fibL1889:
	mov r8,#0
	str r8,[fp,#-2584]
.fibL1890:
	ldr r8,[fp,#-2648]
	cmp r8,#0
	beq .fibL1891
.fibL1892:
	mov r8,#0
	str r8,[fp,#-2580]
.fibL1893:
	ldr r8,[fp,#-2644]
	cmp r8,#0
	beq .fibL1894
.fibL1895:
	mov r8,#0
	str r8,[fp,#-2576]
.fibL1896:
	ldr r8,[fp,#-2640]
	cmp r8,#0
	beq .fibL1897
.fibL1898:
	mov r8,#0
	str r8,[fp,#-2572]
.fibL1899:
	ldr r8,[fp,#-2636]
	cmp r8,#0
	beq .fibL1900
.fibL1901:
	mov r8,#0
	str r8,[fp,#-2568]
.fibL1902:
	ldr r8,[fp,#-2632]
	cmp r8,#0
	beq .fibL1903
.fibL1904:
	mov r8,#0
	str r8,[fp,#-2564]
.fibL1905:
	ldr r8,[fp,#-2628]
	cmp r8,#0
	beq .fibL1906
.fibL1907:
	mov r8,#0
	str r8,[fp,#-2560]
.fibL1908:
	ldr r8,[fp,#-2624]
	cmp r8,#0
	beq .fibL1909
.fibL1910:
	mov r8,#0
	str r8,[fp,#-2556]
.fibL1911:
	ldr r8,[fp,#-2620]
	cmp r8,#0
	beq .fibL1912
.fibL1913:
	mov r8,#0
	str r8,[fp,#-2552]
.fibL1914:
	ldr r8,[fp,#-2616]
	cmp r8,#0
	beq .fibL1915
.fibL1916:
	mov r8,#0
	str r8,[fp,#-2548]
.fibL1917:
	ldr r8,[fp,#-2612]
	cmp r8,#0
	beq .fibL1918
.fibL1919:
	mov r8,#0
	str r8,[fp,#-2544]
.fibL1920:
	ldr r8,[fp,#-2608]
	cmp r8,#0
	beq .fibL1921
.fibL1922:
	mov r8,#0
	str r8,[fp,#-2540]
.fibL1923:
	mov r8,#0
	str r8,[fp,#-2672]
	ldr r8,[fp,#-2672]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2540]
	add r2,r0,r8
	str r2,[fp,#-2672]
	ldr r8,[fp,#-2672]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2544]
	add r2,r0,r8
	str r2,[fp,#-2672]
	ldr r8,[fp,#-2672]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2548]
	add r2,r0,r8
	str r2,[fp,#-2672]
	ldr r8,[fp,#-2672]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2552]
	add r2,r0,r8
	str r2,[fp,#-2672]
	ldr r8,[fp,#-2672]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2556]
	add r2,r0,r8
	str r2,[fp,#-2672]
	ldr r8,[fp,#-2672]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2560]
	add r2,r0,r8
	str r2,[fp,#-2672]
	ldr r8,[fp,#-2672]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2564]
	add r2,r0,r8
	str r2,[fp,#-2672]
	ldr r8,[fp,#-2672]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2568]
	add r2,r0,r8
	str r2,[fp,#-2672]
	ldr r8,[fp,#-2672]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2572]
	add r2,r0,r8
	str r2,[fp,#-2672]
	ldr r8,[fp,#-2672]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2576]
	add r2,r0,r8
	str r2,[fp,#-2672]
	ldr r8,[fp,#-2672]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2580]
	add r2,r0,r8
	str r2,[fp,#-2672]
	ldr r8,[fp,#-2672]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2584]
	add r2,r0,r8
	str r2,[fp,#-2672]
	ldr r8,[fp,#-2672]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2588]
	add r2,r0,r8
	str r2,[fp,#-2672]
	ldr r8,[fp,#-2672]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2592]
	add r2,r0,r8
	str r2,[fp,#-2672]
	ldr r8,[fp,#-2672]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2596]
	add r2,r0,r8
	str r2,[fp,#-2672]
	ldr r8,[fp,#-2672]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2600]
	add r2,r0,r8
	str r2,[fp,#-2672]
	mov r8,#0
	str r8,[fp,#-2536]
	mov r8,#0
	str r8,[fp,#-2532]
	mov r8,#0
	str r8,[fp,#-2528]
	mov r8,#0
	str r8,[fp,#-2524]
	mov r8,#0
	str r8,[fp,#-2520]
	mov r8,#0
	str r8,[fp,#-2516]
	mov r8,#0
	str r8,[fp,#-2512]
	mov r8,#0
	str r8,[fp,#-2508]
	mov r8,#0
	str r8,[fp,#-2504]
	mov r8,#0
	str r8,[fp,#-2500]
	mov r8,#0
	str r8,[fp,#-2496]
	mov r8,#0
	str r8,[fp,#-2492]
	mov r8,#0
	str r8,[fp,#-2488]
	mov r8,#0
	str r8,[fp,#-2484]
	mov r8,#0
	str r8,[fp,#-2480]
	mov r8,#0
	str r8,[fp,#-2476]
	mov r8,#0
	str r8,[fp,#-2472]
	ldr r8,[fp,#-2672]
	str r8,[fp,#-2468]
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5773 = call i32 @__modsi3(i32 %r5771,i32 %r5772)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2532]
	ldr r8,[fp,#-2532]
	mov r2,#0
	cmp r8,r2
	blt .fibL1924
.fibL1925:
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5783 = call i32 @__aeabi_idiv(i32 %r5781,i32 %r5782)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2468]
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5786 = call i32 @__modsi3(i32 %r5784,i32 %r5785)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2528]
	ldr r8,[fp,#-2528]
	mov r2,#0
	cmp r8,r2
	blt .fibL1926
.fibL1927:
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5796 = call i32 @__aeabi_idiv(i32 %r5794,i32 %r5795)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2468]
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5799 = call i32 @__modsi3(i32 %r5797,i32 %r5798)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2524]
	ldr r8,[fp,#-2524]
	mov r2,#0
	cmp r8,r2
	blt .fibL1928
.fibL1929:
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5809 = call i32 @__aeabi_idiv(i32 %r5807,i32 %r5808)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2468]
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5812 = call i32 @__modsi3(i32 %r5810,i32 %r5811)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2520]
	ldr r8,[fp,#-2520]
	mov r2,#0
	cmp r8,r2
	blt .fibL1930
.fibL1931:
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5822 = call i32 @__aeabi_idiv(i32 %r5820,i32 %r5821)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2468]
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5825 = call i32 @__modsi3(i32 %r5823,i32 %r5824)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2516]
	ldr r8,[fp,#-2516]
	mov r2,#0
	cmp r8,r2
	blt .fibL1932
.fibL1933:
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5835 = call i32 @__aeabi_idiv(i32 %r5833,i32 %r5834)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2468]
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5838 = call i32 @__modsi3(i32 %r5836,i32 %r5837)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2512]
	ldr r8,[fp,#-2512]
	mov r2,#0
	cmp r8,r2
	blt .fibL1934
.fibL1935:
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5848 = call i32 @__aeabi_idiv(i32 %r5846,i32 %r5847)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2468]
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5851 = call i32 @__modsi3(i32 %r5849,i32 %r5850)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2508]
	ldr r8,[fp,#-2508]
	mov r2,#0
	cmp r8,r2
	blt .fibL1936
.fibL1937:
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5861 = call i32 @__aeabi_idiv(i32 %r5859,i32 %r5860)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2468]
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5864 = call i32 @__modsi3(i32 %r5862,i32 %r5863)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2504]
	ldr r8,[fp,#-2504]
	mov r2,#0
	cmp r8,r2
	blt .fibL1938
.fibL1939:
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5874 = call i32 @__aeabi_idiv(i32 %r5872,i32 %r5873)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2468]
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5877 = call i32 @__modsi3(i32 %r5875,i32 %r5876)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2500]
	ldr r8,[fp,#-2500]
	mov r2,#0
	cmp r8,r2
	blt .fibL1940
.fibL1941:
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5887 = call i32 @__aeabi_idiv(i32 %r5885,i32 %r5886)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2468]
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5890 = call i32 @__modsi3(i32 %r5888,i32 %r5889)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2496]
	ldr r8,[fp,#-2496]
	mov r2,#0
	cmp r8,r2
	blt .fibL1942
.fibL1943:
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5900 = call i32 @__aeabi_idiv(i32 %r5898,i32 %r5899)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2468]
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5903 = call i32 @__modsi3(i32 %r5901,i32 %r5902)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2492]
	ldr r8,[fp,#-2492]
	mov r2,#0
	cmp r8,r2
	blt .fibL1944
.fibL1945:
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5913 = call i32 @__aeabi_idiv(i32 %r5911,i32 %r5912)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2468]
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5916 = call i32 @__modsi3(i32 %r5914,i32 %r5915)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2488]
	ldr r8,[fp,#-2488]
	mov r2,#0
	cmp r8,r2
	blt .fibL1946
.fibL1947:
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5926 = call i32 @__aeabi_idiv(i32 %r5924,i32 %r5925)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2468]
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5929 = call i32 @__modsi3(i32 %r5927,i32 %r5928)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2484]
	ldr r8,[fp,#-2484]
	mov r2,#0
	cmp r8,r2
	blt .fibL1948
.fibL1949:
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5939 = call i32 @__aeabi_idiv(i32 %r5937,i32 %r5938)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2468]
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5942 = call i32 @__modsi3(i32 %r5940,i32 %r5941)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2480]
	ldr r8,[fp,#-2480]
	mov r2,#0
	cmp r8,r2
	blt .fibL1950
.fibL1951:
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5952 = call i32 @__aeabi_idiv(i32 %r5950,i32 %r5951)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2468]
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5955 = call i32 @__modsi3(i32 %r5953,i32 %r5954)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2476]
	ldr r8,[fp,#-2476]
	mov r2,#0
	cmp r8,r2
	blt .fibL1952
.fibL1953:
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5965 = call i32 @__aeabi_idiv(i32 %r5963,i32 %r5964)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2468]
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5968 = call i32 @__modsi3(i32 %r5966,i32 %r5967)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2472]
	ldr r8,[fp,#-2472]
	mov r2,#0
	cmp r8,r2
	blt .fibL1954
.fibL1955:
	ldr r8,[fp,#-2468]
	mov r2,#2
	@%r5978 = call i32 @__aeabi_idiv(i32 %r5976,i32 %r5977)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2468]
	mov r8,#0
	str r8,[fp,#-2464]
	mov r8,#0
	str r8,[fp,#-2460]
	mov r8,#0
	str r8,[fp,#-2456]
	mov r8,#0
	str r8,[fp,#-2452]
	mov r8,#0
	str r8,[fp,#-2448]
	mov r8,#0
	str r8,[fp,#-2444]
	mov r8,#0
	str r8,[fp,#-2440]
	mov r8,#0
	str r8,[fp,#-2436]
	mov r8,#0
	str r8,[fp,#-2432]
	mov r8,#0
	str r8,[fp,#-2428]
	mov r8,#0
	str r8,[fp,#-2424]
	mov r8,#0
	str r8,[fp,#-2420]
	mov r8,#0
	str r8,[fp,#-2416]
	mov r8,#0
	str r8,[fp,#-2412]
	mov r8,#0
	str r8,[fp,#-2408]
	mov r8,#0
	str r8,[fp,#-2404]
	mov r8,#1
	str r8,[fp,#-2400]
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6015 = call i32 @__modsi3(i32 %r6013,i32 %r6014)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2464]
	ldr r8,[fp,#-2464]
	mov r2,#0
	cmp r8,r2
	blt .fibL1956
.fibL1957:
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6025 = call i32 @__aeabi_idiv(i32 %r6023,i32 %r6024)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2400]
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6028 = call i32 @__modsi3(i32 %r6026,i32 %r6027)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2460]
	ldr r8,[fp,#-2460]
	mov r2,#0
	cmp r8,r2
	blt .fibL1958
.fibL1959:
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6038 = call i32 @__aeabi_idiv(i32 %r6036,i32 %r6037)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2400]
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6041 = call i32 @__modsi3(i32 %r6039,i32 %r6040)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2456]
	ldr r8,[fp,#-2456]
	mov r2,#0
	cmp r8,r2
	blt .fibL1960
.fibL1961:
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6051 = call i32 @__aeabi_idiv(i32 %r6049,i32 %r6050)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2400]
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6054 = call i32 @__modsi3(i32 %r6052,i32 %r6053)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2452]
	ldr r8,[fp,#-2452]
	mov r2,#0
	cmp r8,r2
	blt .fibL1962
.fibL1963:
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6064 = call i32 @__aeabi_idiv(i32 %r6062,i32 %r6063)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2400]
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6067 = call i32 @__modsi3(i32 %r6065,i32 %r6066)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2448]
	ldr r8,[fp,#-2448]
	mov r2,#0
	cmp r8,r2
	blt .fibL1964
.fibL1965:
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6077 = call i32 @__aeabi_idiv(i32 %r6075,i32 %r6076)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2400]
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6080 = call i32 @__modsi3(i32 %r6078,i32 %r6079)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2444]
	ldr r8,[fp,#-2444]
	mov r2,#0
	cmp r8,r2
	blt .fibL1966
.fibL1967:
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6090 = call i32 @__aeabi_idiv(i32 %r6088,i32 %r6089)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2400]
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6093 = call i32 @__modsi3(i32 %r6091,i32 %r6092)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2440]
	ldr r8,[fp,#-2440]
	mov r2,#0
	cmp r8,r2
	blt .fibL1968
.fibL1969:
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6103 = call i32 @__aeabi_idiv(i32 %r6101,i32 %r6102)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2400]
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6106 = call i32 @__modsi3(i32 %r6104,i32 %r6105)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2436]
	ldr r8,[fp,#-2436]
	mov r2,#0
	cmp r8,r2
	blt .fibL1970
.fibL1971:
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6116 = call i32 @__aeabi_idiv(i32 %r6114,i32 %r6115)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2400]
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6119 = call i32 @__modsi3(i32 %r6117,i32 %r6118)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2432]
	ldr r8,[fp,#-2432]
	mov r2,#0
	cmp r8,r2
	blt .fibL1972
.fibL1973:
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6129 = call i32 @__aeabi_idiv(i32 %r6127,i32 %r6128)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2400]
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6132 = call i32 @__modsi3(i32 %r6130,i32 %r6131)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2428]
	ldr r8,[fp,#-2428]
	mov r2,#0
	cmp r8,r2
	blt .fibL1974
.fibL1975:
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6142 = call i32 @__aeabi_idiv(i32 %r6140,i32 %r6141)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2400]
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6145 = call i32 @__modsi3(i32 %r6143,i32 %r6144)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2424]
	ldr r8,[fp,#-2424]
	mov r2,#0
	cmp r8,r2
	blt .fibL1976
.fibL1977:
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6155 = call i32 @__aeabi_idiv(i32 %r6153,i32 %r6154)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2400]
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6158 = call i32 @__modsi3(i32 %r6156,i32 %r6157)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2420]
	ldr r8,[fp,#-2420]
	mov r2,#0
	cmp r8,r2
	blt .fibL1978
.fibL1979:
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6168 = call i32 @__aeabi_idiv(i32 %r6166,i32 %r6167)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2400]
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6171 = call i32 @__modsi3(i32 %r6169,i32 %r6170)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2416]
	ldr r8,[fp,#-2416]
	mov r2,#0
	cmp r8,r2
	blt .fibL1980
.fibL1981:
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6181 = call i32 @__aeabi_idiv(i32 %r6179,i32 %r6180)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2400]
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6184 = call i32 @__modsi3(i32 %r6182,i32 %r6183)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2412]
	ldr r8,[fp,#-2412]
	mov r2,#0
	cmp r8,r2
	blt .fibL1982
.fibL1983:
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6194 = call i32 @__aeabi_idiv(i32 %r6192,i32 %r6193)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2400]
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6197 = call i32 @__modsi3(i32 %r6195,i32 %r6196)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2408]
	ldr r8,[fp,#-2408]
	mov r2,#0
	cmp r8,r2
	blt .fibL1984
.fibL1985:
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6207 = call i32 @__aeabi_idiv(i32 %r6205,i32 %r6206)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2400]
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6210 = call i32 @__modsi3(i32 %r6208,i32 %r6209)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __modsi3
	pop {r1,r2,r3}
	str r0,[fp,#-2404]
	ldr r8,[fp,#-2404]
	mov r2,#0
	cmp r8,r2
	blt .fibL1986
.fibL1987:
	ldr r8,[fp,#-2400]
	mov r2,#2
	@%r6220 = call i32 @__aeabi_idiv(i32 %r6218,i32 %r6219)
	push {r1,r2,r3}
	mov r0,r8
	mov r1,r2
	bl __aeabi_idiv
	pop {r1,r2,r3}
	str r0,[fp,#-2400]
	mov r8,#0
	str r8,[fp,#-2396]
	mov r8,#0
	str r8,[fp,#-2392]
	mov r8,#0
	str r8,[fp,#-2388]
	mov r8,#0
	str r8,[fp,#-2384]
	mov r8,#0
	str r8,[fp,#-2380]
	mov r8,#0
	str r8,[fp,#-2376]
	mov r8,#0
	str r8,[fp,#-2372]
	mov r8,#0
	str r8,[fp,#-2368]
	mov r8,#0
	str r8,[fp,#-2364]
	mov r8,#0
	str r8,[fp,#-2360]
	mov r8,#0
	str r8,[fp,#-2356]
	mov r8,#0
	str r8,[fp,#-2352]
	mov r8,#0
	str r8,[fp,#-2348]
	mov r8,#0
	str r8,[fp,#-2344]
	mov r8,#0
	str r8,[fp,#-2340]
	mov r8,#0
	str r8,[fp,#-2336]
	mov r8,#0
	str r8,[fp,#-2332]
	mov r8,#0
	str r8,[fp,#-2328]
	mov r8,#0
	str r8,[fp,#-2324]
	mov r8,#0
	str r8,[fp,#-2320]
	mov r8,#0
	str r8,[fp,#-2316]
	mov r8,#0
	str r8,[fp,#-2312]
	mov r8,#0
	str r8,[fp,#-2308]
	mov r8,#0
	str r8,[fp,#-2304]
	mov r8,#0
	str r8,[fp,#-2300]
	mov r8,#0
	str r8,[fp,#-2296]
	mov r8,#0
	str r8,[fp,#-2292]
	mov r8,#0
	str r8,[fp,#-2288]
	mov r8,#0
	str r8,[fp,#-2284]
	mov r8,#0
	str r8,[fp,#-2280]
	mov r8,#0
	str r8,[fp,#-2276]
	mov r8,#0
	str r8,[fp,#-2272]
	mov r8,#0
	str r8,[fp,#-2268]
	ldr r8,[fp,#-2532]
	cmp r8,#0
	beq .fibL1991
.fibL1988:
	mov r8,#1
	str r8,[fp,#-2268]
.fibL1990:
	mov r8,#0
	str r8,[fp,#-2264]
	ldr r8,[fp,#-2532]
	cmp r8,#0
	bne .fibL1996
.fibL1994:
	mov r8,#0
	str r8,[fp,#-2264]
.fibL1995:
	mov r8,#0
	str r8,[fp,#-2260]
	ldr r8,[fp,#-2264]
	cmp r8,#0
	beq .fibL1998
.fibL1999:
	mov r8,#0
	str r8,[fp,#-2260]
.fibL2000:
	ldr r8,[fp,#-2268]
	cmp r8,#0
	bne .fibL2004
.fibL2002:
	mov r8,#0
	str r8,[fp,#-2272]
.fibL2003:
	mov r8,#0
	str r8,[fp,#-2256]
	ldr r8,[fp,#-2272]
	cmp r8,#0
	beq .fibL2009
.fibL2006:
	mov r8,#1
	str r8,[fp,#-2256]
.fibL2008:
	mov r8,#0
	str r8,[fp,#-2252]
	ldr r8,[fp,#-2272]
	cmp r8,#0
	bne .fibL2014
.fibL2012:
	mov r8,#0
	str r8,[fp,#-2252]
.fibL2013:
	mov r8,#0
	str r8,[fp,#-2248]
	ldr r8,[fp,#-2252]
	cmp r8,#0
	beq .fibL2016
.fibL2017:
	mov r8,#0
	str r8,[fp,#-2248]
.fibL2018:
	ldr r8,[fp,#-2256]
	cmp r8,#0
	bne .fibL2022
.fibL2020:
	mov r8,#0
	str r8,[fp,#-2336]
.fibL2021:
	mov r8,#0
	str r8,[fp,#-2244]
	ldr r8,[fp,#-2532]
	cmp r8,#0
	bne .fibL2027
.fibL2025:
	mov r8,#0
	str r8,[fp,#-2244]
.fibL2026:
	mov r8,#0
	str r8,[fp,#-2240]
	ldr r8,[fp,#-2272]
	cmp r8,#0
	bne .fibL2032
.fibL2030:
	mov r8,#0
	str r8,[fp,#-2240]
.fibL2031:
	ldr r8,[fp,#-2244]
	cmp r8,#0
	beq .fibL2037
.fibL2034:
	mov r8,#1
	str r8,[fp,#-2396]
.fibL2036:
	mov r8,#0
	str r8,[fp,#-2236]
	mov r8,#0
	str r8,[fp,#-2232]
	ldr r8,[fp,#-2528]
	cmp r8,#0
	beq .fibL2042
.fibL2039:
	mov r8,#1
	str r8,[fp,#-2232]
.fibL2041:
	mov r8,#0
	str r8,[fp,#-2228]
	ldr r8,[fp,#-2528]
	cmp r8,#0
	bne .fibL2047
.fibL2045:
	mov r8,#0
	str r8,[fp,#-2228]
.fibL2046:
	mov r8,#0
	str r8,[fp,#-2224]
	ldr r8,[fp,#-2228]
	cmp r8,#0
	beq .fibL2049
.fibL2050:
	mov r8,#0
	str r8,[fp,#-2224]
.fibL2051:
	ldr r8,[fp,#-2232]
	cmp r8,#0
	bne .fibL2055
.fibL2053:
	mov r8,#0
	str r8,[fp,#-2236]
.fibL2054:
	mov r8,#0
	str r8,[fp,#-2220]
	ldr r8,[fp,#-2236]
	cmp r8,#0
	beq .fibL2060
.fibL2057:
	mov r8,#1
	str r8,[fp,#-2220]
.fibL2059:
	mov r8,#0
	str r8,[fp,#-2216]
	ldr r8,[fp,#-2236]
	cmp r8,#0
	bne .fibL2065
.fibL2063:
	mov r8,#0
	str r8,[fp,#-2216]
.fibL2064:
	mov r8,#0
	str r8,[fp,#-2212]
	ldr r8,[fp,#-2216]
	cmp r8,#0
	beq .fibL2067
.fibL2068:
	mov r8,#0
	str r8,[fp,#-2212]
.fibL2069:
	ldr r8,[fp,#-2220]
	cmp r8,#0
	bne .fibL2073
.fibL2071:
	mov r8,#0
	str r8,[fp,#-2332]
.fibL2072:
	mov r8,#0
	str r8,[fp,#-2208]
	ldr r8,[fp,#-2528]
	cmp r8,#0
	bne .fibL2078
.fibL2076:
	mov r8,#0
	str r8,[fp,#-2208]
.fibL2077:
	mov r8,#0
	str r8,[fp,#-2204]
	ldr r8,[fp,#-2236]
	cmp r8,#0
	bne .fibL2083
.fibL2081:
	mov r8,#0
	str r8,[fp,#-2204]
.fibL2082:
	ldr r8,[fp,#-2208]
	cmp r8,#0
	beq .fibL2088
.fibL2085:
	mov r8,#1
	str r8,[fp,#-2392]
.fibL2087:
	mov r8,#0
	str r8,[fp,#-2200]
	mov r8,#0
	str r8,[fp,#-2196]
	ldr r8,[fp,#-2524]
	cmp r8,#0
	beq .fibL2093
.fibL2090:
	mov r8,#1
	str r8,[fp,#-2196]
.fibL2092:
	mov r8,#0
	str r8,[fp,#-2192]
	ldr r8,[fp,#-2524]
	cmp r8,#0
	bne .fibL2098
.fibL2096:
	mov r8,#0
	str r8,[fp,#-2192]
.fibL2097:
	mov r8,#0
	str r8,[fp,#-2188]
	ldr r8,[fp,#-2192]
	cmp r8,#0
	beq .fibL2100
.fibL2101:
	mov r8,#0
	str r8,[fp,#-2188]
.fibL2102:
	ldr r8,[fp,#-2196]
	cmp r8,#0
	bne .fibL2106
.fibL2104:
	mov r8,#0
	str r8,[fp,#-2200]
.fibL2105:
	mov r8,#0
	str r8,[fp,#-2184]
	ldr r8,[fp,#-2200]
	cmp r8,#0
	beq .fibL2111
.fibL2108:
	mov r8,#1
	str r8,[fp,#-2184]
.fibL2110:
	mov r8,#0
	str r8,[fp,#-2180]
	ldr r8,[fp,#-2200]
	cmp r8,#0
	bne .fibL2116
.fibL2114:
	mov r8,#0
	str r8,[fp,#-2180]
.fibL2115:
	mov r8,#0
	str r8,[fp,#-2176]
	ldr r8,[fp,#-2180]
	cmp r8,#0
	beq .fibL2118
.fibL2119:
	mov r8,#0
	str r8,[fp,#-2176]
.fibL2120:
	ldr r8,[fp,#-2184]
	cmp r8,#0
	bne .fibL2124
.fibL2122:
	mov r8,#0
	str r8,[fp,#-2328]
.fibL2123:
	mov r8,#0
	str r8,[fp,#-2172]
	ldr r8,[fp,#-2524]
	cmp r8,#0
	bne .fibL2129
.fibL2127:
	mov r8,#0
	str r8,[fp,#-2172]
.fibL2128:
	mov r8,#0
	str r8,[fp,#-2168]
	ldr r8,[fp,#-2200]
	cmp r8,#0
	bne .fibL2134
.fibL2132:
	mov r8,#0
	str r8,[fp,#-2168]
.fibL2133:
	ldr r8,[fp,#-2172]
	cmp r8,#0
	beq .fibL2139
.fibL2136:
	mov r8,#1
	str r8,[fp,#-2388]
.fibL2138:
	mov r8,#0
	str r8,[fp,#-2164]
	mov r8,#0
	str r8,[fp,#-2160]
	ldr r8,[fp,#-2520]
	cmp r8,#0
	beq .fibL2144
.fibL2141:
	mov r8,#1
	str r8,[fp,#-2160]
.fibL2143:
	mov r8,#0
	str r8,[fp,#-2156]
	ldr r8,[fp,#-2520]
	cmp r8,#0
	bne .fibL2149
.fibL2147:
	mov r8,#0
	str r8,[fp,#-2156]
.fibL2148:
	mov r8,#0
	str r8,[fp,#-2152]
	ldr r8,[fp,#-2156]
	cmp r8,#0
	beq .fibL2151
.fibL2152:
	mov r8,#0
	str r8,[fp,#-2152]
.fibL2153:
	ldr r8,[fp,#-2160]
	cmp r8,#0
	bne .fibL2157
.fibL2155:
	mov r8,#0
	str r8,[fp,#-2164]
.fibL2156:
	mov r8,#0
	str r8,[fp,#-2148]
	ldr r8,[fp,#-2164]
	cmp r8,#0
	beq .fibL2162
.fibL2159:
	mov r8,#1
	str r8,[fp,#-2148]
.fibL2161:
	mov r8,#0
	str r8,[fp,#-2144]
	ldr r8,[fp,#-2164]
	cmp r8,#0
	bne .fibL2167
.fibL2165:
	mov r8,#0
	str r8,[fp,#-2144]
.fibL2166:
	mov r8,#0
	str r8,[fp,#-2140]
	ldr r8,[fp,#-2144]
	cmp r8,#0
	beq .fibL2169
.fibL2170:
	mov r8,#0
	str r8,[fp,#-2140]
.fibL2171:
	ldr r8,[fp,#-2148]
	cmp r8,#0
	bne .fibL2175
.fibL2173:
	mov r8,#0
	str r8,[fp,#-2324]
.fibL2174:
	mov r8,#0
	str r8,[fp,#-2136]
	ldr r8,[fp,#-2520]
	cmp r8,#0
	bne .fibL2180
.fibL2178:
	mov r8,#0
	str r8,[fp,#-2136]
.fibL2179:
	mov r8,#0
	str r8,[fp,#-2132]
	ldr r8,[fp,#-2164]
	cmp r8,#0
	bne .fibL2185
.fibL2183:
	mov r8,#0
	str r8,[fp,#-2132]
.fibL2184:
	ldr r8,[fp,#-2136]
	cmp r8,#0
	beq .fibL2190
.fibL2187:
	mov r8,#1
	str r8,[fp,#-2384]
.fibL2189:
	mov r8,#0
	str r8,[fp,#-2128]
	mov r8,#0
	str r8,[fp,#-2124]
	ldr r8,[fp,#-2516]
	cmp r8,#0
	beq .fibL2195
.fibL2192:
	mov r8,#1
	str r8,[fp,#-2124]
.fibL2194:
	mov r8,#0
	str r8,[fp,#-2120]
	ldr r8,[fp,#-2516]
	cmp r8,#0
	bne .fibL2200
.fibL2198:
	mov r8,#0
	str r8,[fp,#-2120]
.fibL2199:
	mov r8,#0
	str r8,[fp,#-2116]
	ldr r8,[fp,#-2120]
	cmp r8,#0
	beq .fibL2202
.fibL2203:
	mov r8,#0
	str r8,[fp,#-2116]
.fibL2204:
	ldr r8,[fp,#-2124]
	cmp r8,#0
	bne .fibL2208
.fibL2206:
	mov r8,#0
	str r8,[fp,#-2128]
.fibL2207:
	mov r8,#0
	str r8,[fp,#-2112]
	ldr r8,[fp,#-2128]
	cmp r8,#0
	beq .fibL2213
.fibL2210:
	mov r8,#1
	str r8,[fp,#-2112]
.fibL2212:
	mov r8,#0
	str r8,[fp,#-2108]
	ldr r8,[fp,#-2128]
	cmp r8,#0
	bne .fibL2218
.fibL2216:
	mov r8,#0
	str r8,[fp,#-2108]
.fibL2217:
	mov r8,#0
	str r8,[fp,#-2104]
	ldr r8,[fp,#-2108]
	cmp r8,#0
	beq .fibL2220
.fibL2221:
	mov r8,#0
	str r8,[fp,#-2104]
.fibL2222:
	ldr r8,[fp,#-2112]
	cmp r8,#0
	bne .fibL2226
.fibL2224:
	mov r8,#0
	str r8,[fp,#-2320]
.fibL2225:
	mov r8,#0
	str r8,[fp,#-2100]
	ldr r8,[fp,#-2516]
	cmp r8,#0
	bne .fibL2231
.fibL2229:
	mov r8,#0
	str r8,[fp,#-2100]
.fibL2230:
	mov r8,#0
	str r8,[fp,#-2096]
	ldr r8,[fp,#-2128]
	cmp r8,#0
	bne .fibL2236
.fibL2234:
	mov r8,#0
	str r8,[fp,#-2096]
.fibL2235:
	ldr r8,[fp,#-2100]
	cmp r8,#0
	beq .fibL2241
.fibL2238:
	mov r8,#1
	str r8,[fp,#-2380]
.fibL2240:
	mov r8,#0
	str r8,[fp,#-2092]
	mov r8,#0
	str r8,[fp,#-2088]
	ldr r8,[fp,#-2512]
	cmp r8,#0
	beq .fibL2246
.fibL2243:
	mov r8,#1
	str r8,[fp,#-2088]
.fibL2245:
	mov r8,#0
	str r8,[fp,#-2084]
	ldr r8,[fp,#-2512]
	cmp r8,#0
	bne .fibL2251
.fibL2249:
	mov r8,#0
	str r8,[fp,#-2084]
.fibL2250:
	mov r8,#0
	str r8,[fp,#-2080]
	ldr r8,[fp,#-2084]
	cmp r8,#0
	beq .fibL2253
.fibL2254:
	mov r8,#0
	str r8,[fp,#-2080]
.fibL2255:
	ldr r8,[fp,#-2088]
	cmp r8,#0
	bne .fibL2259
.fibL2257:
	mov r8,#0
	str r8,[fp,#-2092]
.fibL2258:
	mov r8,#0
	str r8,[fp,#-2076]
	ldr r8,[fp,#-2092]
	cmp r8,#0
	beq .fibL2264
.fibL2261:
	mov r8,#1
	str r8,[fp,#-2076]
.fibL2263:
	mov r8,#0
	str r8,[fp,#-2072]
	ldr r8,[fp,#-2092]
	cmp r8,#0
	bne .fibL2269
.fibL2267:
	mov r8,#0
	str r8,[fp,#-2072]
.fibL2268:
	mov r8,#0
	str r8,[fp,#-2068]
	ldr r8,[fp,#-2072]
	cmp r8,#0
	beq .fibL2271
.fibL2272:
	mov r8,#0
	str r8,[fp,#-2068]
.fibL2273:
	ldr r8,[fp,#-2076]
	cmp r8,#0
	bne .fibL2277
.fibL2275:
	mov r8,#0
	str r8,[fp,#-2316]
.fibL2276:
	mov r8,#0
	str r8,[fp,#-2064]
	ldr r8,[fp,#-2512]
	cmp r8,#0
	bne .fibL2282
.fibL2280:
	mov r8,#0
	str r8,[fp,#-2064]
.fibL2281:
	mov r8,#0
	str r8,[fp,#-2060]
	ldr r8,[fp,#-2092]
	cmp r8,#0
	bne .fibL2287
.fibL2285:
	mov r8,#0
	str r8,[fp,#-2060]
.fibL2286:
	ldr r8,[fp,#-2064]
	cmp r8,#0
	beq .fibL2292
.fibL2289:
	mov r8,#1
	str r8,[fp,#-2376]
.fibL2291:
	mov r8,#0
	str r8,[fp,#-2056]
	mov r8,#0
	str r8,[fp,#-2052]
	ldr r8,[fp,#-2508]
	cmp r8,#0
	beq .fibL2297
.fibL2294:
	mov r8,#1
	str r8,[fp,#-2052]
.fibL2296:
	mov r8,#0
	str r8,[fp,#-2048]
	ldr r8,[fp,#-2508]
	cmp r8,#0
	bne .fibL2302
.fibL2300:
	mov r8,#0
	str r8,[fp,#-2048]
.fibL2301:
	mov r8,#0
	str r8,[fp,#-2044]
	ldr r8,[fp,#-2048]
	cmp r8,#0
	beq .fibL2304
.fibL2305:
	mov r8,#0
	str r8,[fp,#-2044]
.fibL2306:
	ldr r8,[fp,#-2052]
	cmp r8,#0
	bne .fibL2310
.fibL2308:
	mov r8,#0
	str r8,[fp,#-2056]
.fibL2309:
	mov r8,#0
	str r8,[fp,#-2040]
	ldr r8,[fp,#-2056]
	cmp r8,#0
	beq .fibL2315
.fibL2312:
	mov r8,#1
	str r8,[fp,#-2040]
.fibL2314:
	mov r8,#0
	str r8,[fp,#-2036]
	ldr r8,[fp,#-2056]
	cmp r8,#0
	bne .fibL2320
.fibL2318:
	mov r8,#0
	str r8,[fp,#-2036]
.fibL2319:
	mov r8,#0
	str r8,[fp,#-2032]
	ldr r8,[fp,#-2036]
	cmp r8,#0
	beq .fibL2322
.fibL2323:
	mov r8,#0
	str r8,[fp,#-2032]
.fibL2324:
	ldr r8,[fp,#-2040]
	cmp r8,#0
	bne .fibL2328
.fibL2326:
	mov r8,#0
	str r8,[fp,#-2312]
.fibL2327:
	mov r8,#0
	str r8,[fp,#-2028]
	ldr r8,[fp,#-2508]
	cmp r8,#0
	bne .fibL2333
.fibL2331:
	mov r8,#0
	str r8,[fp,#-2028]
.fibL2332:
	mov r8,#0
	str r8,[fp,#-2024]
	ldr r8,[fp,#-2056]
	cmp r8,#0
	bne .fibL2338
.fibL2336:
	mov r8,#0
	str r8,[fp,#-2024]
.fibL2337:
	ldr r8,[fp,#-2028]
	cmp r8,#0
	beq .fibL2343
.fibL2340:
	mov r8,#1
	str r8,[fp,#-2372]
.fibL2342:
	mov r8,#0
	str r8,[fp,#-2020]
	mov r8,#0
	str r8,[fp,#-2016]
	ldr r8,[fp,#-2504]
	cmp r8,#0
	beq .fibL2348
.fibL2345:
	mov r8,#1
	str r8,[fp,#-2016]
.fibL2347:
	mov r8,#0
	str r8,[fp,#-2012]
	ldr r8,[fp,#-2504]
	cmp r8,#0
	bne .fibL2353
.fibL2351:
	mov r8,#0
	str r8,[fp,#-2012]
.fibL2352:
	mov r8,#0
	str r8,[fp,#-2008]
	ldr r8,[fp,#-2012]
	cmp r8,#0
	beq .fibL2355
.fibL2356:
	mov r8,#0
	str r8,[fp,#-2008]
.fibL2357:
	ldr r8,[fp,#-2016]
	cmp r8,#0
	bne .fibL2361
.fibL2359:
	mov r8,#0
	str r8,[fp,#-2020]
.fibL2360:
	mov r8,#0
	str r8,[fp,#-2004]
	ldr r8,[fp,#-2020]
	cmp r8,#0
	beq .fibL2366
.fibL2363:
	mov r8,#1
	str r8,[fp,#-2004]
.fibL2365:
	mov r8,#0
	str r8,[fp,#-2000]
	ldr r8,[fp,#-2020]
	cmp r8,#0
	bne .fibL2371
.fibL2369:
	mov r8,#0
	str r8,[fp,#-2000]
.fibL2370:
	mov r8,#0
	str r8,[fp,#-1996]
	ldr r8,[fp,#-2000]
	cmp r8,#0
	beq .fibL2373
.fibL2374:
	mov r8,#0
	str r8,[fp,#-1996]
.fibL2375:
	ldr r8,[fp,#-2004]
	cmp r8,#0
	bne .fibL2379
.fibL2377:
	mov r8,#0
	str r8,[fp,#-2308]
.fibL2378:
	mov r8,#0
	str r8,[fp,#-1992]
	ldr r8,[fp,#-2504]
	cmp r8,#0
	bne .fibL2384
.fibL2382:
	mov r8,#0
	str r8,[fp,#-1992]
.fibL2383:
	mov r8,#0
	str r8,[fp,#-1988]
	ldr r8,[fp,#-2020]
	cmp r8,#0
	bne .fibL2389
.fibL2387:
	mov r8,#0
	str r8,[fp,#-1988]
.fibL2388:
	ldr r8,[fp,#-1992]
	cmp r8,#0
	beq .fibL2394
.fibL2391:
	mov r8,#1
	str r8,[fp,#-2368]
.fibL2393:
	mov r8,#0
	str r8,[fp,#-1984]
	mov r8,#0
	str r8,[fp,#-1980]
	ldr r8,[fp,#-2500]
	cmp r8,#0
	beq .fibL2399
.fibL2396:
	mov r8,#1
	str r8,[fp,#-1980]
.fibL2398:
	mov r8,#0
	str r8,[fp,#-1976]
	ldr r8,[fp,#-2500]
	cmp r8,#0
	bne .fibL2404
.fibL2402:
	mov r8,#0
	str r8,[fp,#-1976]
.fibL2403:
	mov r8,#0
	str r8,[fp,#-1972]
	ldr r8,[fp,#-1976]
	cmp r8,#0
	beq .fibL2406
.fibL2407:
	mov r8,#0
	str r8,[fp,#-1972]
.fibL2408:
	ldr r8,[fp,#-1980]
	cmp r8,#0
	bne .fibL2412
.fibL2410:
	mov r8,#0
	str r8,[fp,#-1984]
.fibL2411:
	mov r8,#0
	str r8,[fp,#-1968]
	ldr r8,[fp,#-1984]
	cmp r8,#0
	beq .fibL2417
.fibL2414:
	mov r8,#1
	str r8,[fp,#-1968]
.fibL2416:
	mov r8,#0
	str r8,[fp,#-1964]
	ldr r8,[fp,#-1984]
	cmp r8,#0
	bne .fibL2422
.fibL2420:
	mov r8,#0
	str r8,[fp,#-1964]
.fibL2421:
	mov r8,#0
	str r8,[fp,#-1960]
	ldr r8,[fp,#-1964]
	cmp r8,#0
	beq .fibL2424
.fibL2425:
	mov r8,#0
	str r8,[fp,#-1960]
.fibL2426:
	ldr r8,[fp,#-1968]
	cmp r8,#0
	bne .fibL2430
.fibL2428:
	mov r8,#0
	str r8,[fp,#-2304]
.fibL2429:
	mov r8,#0
	str r8,[fp,#-1956]
	ldr r8,[fp,#-2500]
	cmp r8,#0
	bne .fibL2435
.fibL2433:
	mov r8,#0
	str r8,[fp,#-1956]
.fibL2434:
	mov r8,#0
	str r8,[fp,#-1952]
	ldr r8,[fp,#-1984]
	cmp r8,#0
	bne .fibL2440
.fibL2438:
	mov r8,#0
	str r8,[fp,#-1952]
.fibL2439:
	ldr r8,[fp,#-1956]
	cmp r8,#0
	beq .fibL2445
.fibL2442:
	mov r8,#1
	str r8,[fp,#-2364]
.fibL2444:
	mov r8,#0
	str r8,[fp,#-1948]
	mov r8,#0
	str r8,[fp,#-1944]
	ldr r8,[fp,#-2496]
	cmp r8,#0
	beq .fibL2450
.fibL2447:
	mov r8,#1
	str r8,[fp,#-1944]
.fibL2449:
	mov r8,#0
	str r8,[fp,#-1940]
	ldr r8,[fp,#-2496]
	cmp r8,#0
	bne .fibL2455
.fibL2453:
	mov r8,#0
	str r8,[fp,#-1940]
.fibL2454:
	mov r8,#0
	str r8,[fp,#-1936]
	ldr r8,[fp,#-1940]
	cmp r8,#0
	beq .fibL2457
.fibL2458:
	mov r8,#0
	str r8,[fp,#-1936]
.fibL2459:
	ldr r8,[fp,#-1944]
	cmp r8,#0
	bne .fibL2463
.fibL2461:
	mov r8,#0
	str r8,[fp,#-1948]
.fibL2462:
	mov r8,#0
	str r8,[fp,#-1932]
	ldr r8,[fp,#-1948]
	cmp r8,#0
	beq .fibL2468
.fibL2465:
	mov r8,#1
	str r8,[fp,#-1932]
.fibL2467:
	mov r8,#0
	str r8,[fp,#-1928]
	ldr r8,[fp,#-1948]
	cmp r8,#0
	bne .fibL2473
.fibL2471:
	mov r8,#0
	str r8,[fp,#-1928]
.fibL2472:
	mov r8,#0
	str r8,[fp,#-1924]
	ldr r8,[fp,#-1928]
	cmp r8,#0
	beq .fibL2475
.fibL2476:
	mov r8,#0
	str r8,[fp,#-1924]
.fibL2477:
	ldr r8,[fp,#-1932]
	cmp r8,#0
	bne .fibL2481
.fibL2479:
	mov r8,#0
	str r8,[fp,#-2300]
.fibL2480:
	mov r8,#0
	str r8,[fp,#-1920]
	ldr r8,[fp,#-2496]
	cmp r8,#0
	bne .fibL2486
.fibL2484:
	mov r8,#0
	str r8,[fp,#-1920]
.fibL2485:
	mov r8,#0
	str r8,[fp,#-1916]
	ldr r8,[fp,#-1948]
	cmp r8,#0
	bne .fibL2491
.fibL2489:
	mov r8,#0
	str r8,[fp,#-1916]
.fibL2490:
	ldr r8,[fp,#-1920]
	cmp r8,#0
	beq .fibL2496
.fibL2493:
	mov r8,#1
	str r8,[fp,#-2360]
.fibL2495:
	mov r8,#0
	str r8,[fp,#-1912]
	mov r8,#0
	str r8,[fp,#-1908]
	ldr r8,[fp,#-2492]
	cmp r8,#0
	beq .fibL2501
.fibL2498:
	mov r8,#1
	str r8,[fp,#-1908]
.fibL2500:
	mov r8,#0
	str r8,[fp,#-1904]
	ldr r8,[fp,#-2492]
	cmp r8,#0
	bne .fibL2506
.fibL2504:
	mov r8,#0
	str r8,[fp,#-1904]
.fibL2505:
	mov r8,#0
	str r8,[fp,#-1900]
	ldr r8,[fp,#-1904]
	cmp r8,#0
	beq .fibL2508
.fibL2509:
	mov r8,#0
	str r8,[fp,#-1900]
.fibL2510:
	ldr r8,[fp,#-1908]
	cmp r8,#0
	bne .fibL2514
.fibL2512:
	mov r8,#0
	str r8,[fp,#-1912]
.fibL2513:
	mov r8,#0
	str r8,[fp,#-1896]
	ldr r8,[fp,#-1912]
	cmp r8,#0
	beq .fibL2519
.fibL2516:
	mov r8,#1
	str r8,[fp,#-1896]
.fibL2518:
	mov r8,#0
	str r8,[fp,#-1892]
	ldr r8,[fp,#-1912]
	cmp r8,#0
	bne .fibL2524
.fibL2522:
	mov r8,#0
	str r8,[fp,#-1892]
.fibL2523:
	mov r8,#0
	str r8,[fp,#-1888]
	ldr r8,[fp,#-1892]
	cmp r8,#0
	beq .fibL2526
.fibL2527:
	mov r8,#0
	str r8,[fp,#-1888]
.fibL2528:
	ldr r8,[fp,#-1896]
	cmp r8,#0
	bne .fibL2532
.fibL2530:
	mov r8,#0
	str r8,[fp,#-2296]
.fibL2531:
	mov r8,#0
	str r8,[fp,#-1884]
	ldr r8,[fp,#-2492]
	cmp r8,#0
	bne .fibL2537
.fibL2535:
	mov r8,#0
	str r8,[fp,#-1884]
.fibL2536:
	mov r8,#0
	str r8,[fp,#-1880]
	ldr r8,[fp,#-1912]
	cmp r8,#0
	bne .fibL2542
.fibL2540:
	mov r8,#0
	str r8,[fp,#-1880]
.fibL2541:
	ldr r8,[fp,#-1884]
	cmp r8,#0
	beq .fibL2547
.fibL2544:
	mov r8,#1
	str r8,[fp,#-2356]
.fibL2546:
	mov r8,#0
	str r8,[fp,#-1876]
	mov r8,#0
	str r8,[fp,#-1872]
	ldr r8,[fp,#-2488]
	cmp r8,#0
	beq .fibL2552
.fibL2549:
	mov r8,#1
	str r8,[fp,#-1872]
.fibL2551:
	mov r8,#0
	str r8,[fp,#-1868]
	ldr r8,[fp,#-2488]
	cmp r8,#0
	bne .fibL2557
.fibL2555:
	mov r8,#0
	str r8,[fp,#-1868]
.fibL2556:
	mov r8,#0
	str r8,[fp,#-1864]
	ldr r8,[fp,#-1868]
	cmp r8,#0
	beq .fibL2559
.fibL2560:
	mov r8,#0
	str r8,[fp,#-1864]
.fibL2561:
	ldr r8,[fp,#-1872]
	cmp r8,#0
	bne .fibL2565
.fibL2563:
	mov r8,#0
	str r8,[fp,#-1876]
.fibL2564:
	mov r8,#0
	str r8,[fp,#-1860]
	ldr r8,[fp,#-1876]
	cmp r8,#0
	beq .fibL2570
.fibL2567:
	mov r8,#1
	str r8,[fp,#-1860]
.fibL2569:
	mov r8,#0
	str r8,[fp,#-1856]
	ldr r8,[fp,#-1876]
	cmp r8,#0
	bne .fibL2575
.fibL2573:
	mov r8,#0
	str r8,[fp,#-1856]
.fibL2574:
	mov r8,#0
	str r8,[fp,#-1852]
	ldr r8,[fp,#-1856]
	cmp r8,#0
	beq .fibL2577
.fibL2578:
	mov r8,#0
	str r8,[fp,#-1852]
.fibL2579:
	ldr r8,[fp,#-1860]
	cmp r8,#0
	bne .fibL2583
.fibL2581:
	mov r8,#0
	str r8,[fp,#-2292]
.fibL2582:
	mov r8,#0
	str r8,[fp,#-1848]
	ldr r8,[fp,#-2488]
	cmp r8,#0
	bne .fibL2588
.fibL2586:
	mov r8,#0
	str r8,[fp,#-1848]
.fibL2587:
	mov r8,#0
	str r8,[fp,#-1844]
	ldr r8,[fp,#-1876]
	cmp r8,#0
	bne .fibL2593
.fibL2591:
	mov r8,#0
	str r8,[fp,#-1844]
.fibL2592:
	ldr r8,[fp,#-1848]
	cmp r8,#0
	beq .fibL2598
.fibL2595:
	mov r8,#1
	str r8,[fp,#-2352]
.fibL2597:
	mov r8,#0
	str r8,[fp,#-1840]
	mov r8,#0
	str r8,[fp,#-1836]
	ldr r8,[fp,#-2484]
	cmp r8,#0
	beq .fibL2603
.fibL2600:
	mov r8,#1
	str r8,[fp,#-1836]
.fibL2602:
	mov r8,#0
	str r8,[fp,#-1832]
	ldr r8,[fp,#-2484]
	cmp r8,#0
	bne .fibL2608
.fibL2606:
	mov r8,#0
	str r8,[fp,#-1832]
.fibL2607:
	mov r8,#0
	str r8,[fp,#-1828]
	ldr r8,[fp,#-1832]
	cmp r8,#0
	beq .fibL2610
.fibL2611:
	mov r8,#0
	str r8,[fp,#-1828]
.fibL2612:
	ldr r8,[fp,#-1836]
	cmp r8,#0
	bne .fibL2616
.fibL2614:
	mov r8,#0
	str r8,[fp,#-1840]
.fibL2615:
	mov r8,#0
	str r8,[fp,#-1824]
	ldr r8,[fp,#-1840]
	cmp r8,#0
	beq .fibL2621
.fibL2618:
	mov r8,#1
	str r8,[fp,#-1824]
.fibL2620:
	mov r8,#0
	str r8,[fp,#-1820]
	ldr r8,[fp,#-1840]
	cmp r8,#0
	bne .fibL2626
.fibL2624:
	mov r8,#0
	str r8,[fp,#-1820]
.fibL2625:
	mov r8,#0
	str r8,[fp,#-1816]
	ldr r8,[fp,#-1820]
	cmp r8,#0
	beq .fibL2628
.fibL2629:
	mov r8,#0
	str r8,[fp,#-1816]
.fibL2630:
	ldr r8,[fp,#-1824]
	cmp r8,#0
	bne .fibL2634
.fibL2632:
	mov r8,#0
	str r8,[fp,#-2288]
.fibL2633:
	mov r8,#0
	str r8,[fp,#-1812]
	ldr r8,[fp,#-2484]
	cmp r8,#0
	bne .fibL2639
.fibL2637:
	mov r8,#0
	str r8,[fp,#-1812]
.fibL2638:
	mov r8,#0
	str r8,[fp,#-1808]
	ldr r8,[fp,#-1840]
	cmp r8,#0
	bne .fibL2644
.fibL2642:
	mov r8,#0
	str r8,[fp,#-1808]
.fibL2643:
	ldr r8,[fp,#-1812]
	cmp r8,#0
	beq .fibL2649
.fibL2646:
	mov r8,#1
	str r8,[fp,#-2348]
.fibL2648:
	mov r8,#0
	str r8,[fp,#-1804]
	mov r8,#0
	str r8,[fp,#-1800]
	ldr r8,[fp,#-2480]
	cmp r8,#0
	beq .fibL2654
.fibL2651:
	mov r8,#1
	str r8,[fp,#-1800]
.fibL2653:
	mov r8,#0
	str r8,[fp,#-1796]
	ldr r8,[fp,#-2480]
	cmp r8,#0
	bne .fibL2659
.fibL2657:
	mov r8,#0
	str r8,[fp,#-1796]
.fibL2658:
	mov r8,#0
	str r8,[fp,#-1792]
	ldr r8,[fp,#-1796]
	cmp r8,#0
	beq .fibL2661
.fibL2662:
	mov r8,#0
	str r8,[fp,#-1792]
.fibL2663:
	ldr r8,[fp,#-1800]
	cmp r8,#0
	bne .fibL2667
.fibL2665:
	mov r8,#0
	str r8,[fp,#-1804]
.fibL2666:
	mov r8,#0
	str r8,[fp,#-1788]
	ldr r8,[fp,#-1804]
	cmp r8,#0
	beq .fibL2672
.fibL2669:
	mov r8,#1
	str r8,[fp,#-1788]
.fibL2671:
	mov r8,#0
	str r8,[fp,#-1784]
	ldr r8,[fp,#-1804]
	cmp r8,#0
	bne .fibL2677
.fibL2675:
	mov r8,#0
	str r8,[fp,#-1784]
.fibL2676:
	mov r8,#0
	str r8,[fp,#-1780]
	ldr r8,[fp,#-1784]
	cmp r8,#0
	beq .fibL2679
.fibL2680:
	mov r8,#0
	str r8,[fp,#-1780]
.fibL2681:
	ldr r8,[fp,#-1788]
	cmp r8,#0
	bne .fibL2685
.fibL2683:
	mov r8,#0
	str r8,[fp,#-2284]
.fibL2684:
	mov r8,#0
	str r8,[fp,#-1776]
	ldr r8,[fp,#-2480]
	cmp r8,#0
	bne .fibL2690
.fibL2688:
	mov r8,#0
	str r8,[fp,#-1776]
.fibL2689:
	mov r8,#0
	str r8,[fp,#-1772]
	ldr r8,[fp,#-1804]
	cmp r8,#0
	bne .fibL2695
.fibL2693:
	mov r8,#0
	str r8,[fp,#-1772]
.fibL2694:
	ldr r8,[fp,#-1776]
	cmp r8,#0
	beq .fibL2700
.fibL2697:
	mov r8,#1
	str r8,[fp,#-2344]
.fibL2699:
	mov r8,#0
	str r8,[fp,#-1768]
	mov r8,#0
	str r8,[fp,#-1764]
	ldr r8,[fp,#-2476]
	cmp r8,#0
	beq .fibL2705
.fibL2702:
	mov r8,#1
	str r8,[fp,#-1764]
.fibL2704:
	mov r8,#0
	str r8,[fp,#-1760]
	ldr r8,[fp,#-2476]
	cmp r8,#0
	bne .fibL2710
.fibL2708:
	mov r8,#0
	str r8,[fp,#-1760]
.fibL2709:
	mov r8,#0
	str r8,[fp,#-1756]
	ldr r8,[fp,#-1760]
	cmp r8,#0
	beq .fibL2712
.fibL2713:
	mov r8,#0
	str r8,[fp,#-1756]
.fibL2714:
	ldr r8,[fp,#-1764]
	cmp r8,#0
	bne .fibL2718
.fibL2716:
	mov r8,#0
	str r8,[fp,#-1768]
.fibL2717:
	mov r8,#0
	str r8,[fp,#-1752]
	ldr r8,[fp,#-1768]
	cmp r8,#0
	beq .fibL2723
.fibL2720:
	mov r8,#1
	str r8,[fp,#-1752]
.fibL2722:
	mov r8,#0
	str r8,[fp,#-1748]
	ldr r8,[fp,#-1768]
	cmp r8,#0
	bne .fibL2728
.fibL2726:
	mov r8,#0
	str r8,[fp,#-1748]
.fibL2727:
	mov r8,#0
	str r8,[fp,#-1744]
	ldr r8,[fp,#-1748]
	cmp r8,#0
	beq .fibL2730
.fibL2731:
	mov r8,#0
	str r8,[fp,#-1744]
.fibL2732:
	ldr r8,[fp,#-1752]
	cmp r8,#0
	bne .fibL2736
.fibL2734:
	mov r8,#0
	str r8,[fp,#-2280]
.fibL2735:
	mov r8,#0
	str r8,[fp,#-1740]
	ldr r8,[fp,#-2476]
	cmp r8,#0
	bne .fibL2741
.fibL2739:
	mov r8,#0
	str r8,[fp,#-1740]
.fibL2740:
	mov r8,#0
	str r8,[fp,#-1736]
	ldr r8,[fp,#-1768]
	cmp r8,#0
	bne .fibL2746
.fibL2744:
	mov r8,#0
	str r8,[fp,#-1736]
.fibL2745:
	ldr r8,[fp,#-1740]
	cmp r8,#0
	beq .fibL2751
.fibL2748:
	mov r8,#1
	str r8,[fp,#-2340]
.fibL2750:
	mov r8,#0
	str r8,[fp,#-1732]
	mov r8,#0
	str r8,[fp,#-1728]
	ldr r8,[fp,#-2472]
	cmp r8,#0
	beq .fibL2756
.fibL2753:
	mov r8,#1
	str r8,[fp,#-1728]
.fibL2755:
	mov r8,#0
	str r8,[fp,#-1724]
	ldr r8,[fp,#-2472]
	cmp r8,#0
	bne .fibL2761
.fibL2759:
	mov r8,#0
	str r8,[fp,#-1724]
.fibL2760:
	mov r8,#0
	str r8,[fp,#-1720]
	ldr r8,[fp,#-1724]
	cmp r8,#0
	beq .fibL2763
.fibL2764:
	mov r8,#0
	str r8,[fp,#-1720]
.fibL2765:
	ldr r8,[fp,#-1728]
	cmp r8,#0
	bne .fibL2769
.fibL2767:
	mov r8,#0
	str r8,[fp,#-1732]
.fibL2768:
	mov r8,#0
	str r8,[fp,#-1716]
	ldr r8,[fp,#-1732]
	cmp r8,#0
	beq .fibL2774
.fibL2771:
	mov r8,#1
	str r8,[fp,#-1716]
.fibL2773:
	mov r8,#0
	str r8,[fp,#-1712]
	ldr r8,[fp,#-1732]
	cmp r8,#0
	bne .fibL2779
.fibL2777:
	mov r8,#0
	str r8,[fp,#-1712]
.fibL2778:
	mov r8,#0
	str r8,[fp,#-1708]
	ldr r8,[fp,#-1712]
	cmp r8,#0
	beq .fibL2781
.fibL2782:
	mov r8,#0
	str r8,[fp,#-1708]
.fibL2783:
	ldr r8,[fp,#-1716]
	cmp r8,#0
	bne .fibL2787
.fibL2785:
	mov r8,#0
	str r8,[fp,#-2276]
.fibL2786:
	mov r8,#0
	str r8,[fp,#-1704]
	ldr r8,[fp,#-2472]
	cmp r8,#0
	bne .fibL2792
.fibL2790:
	mov r8,#0
	str r8,[fp,#-1704]
.fibL2791:
	mov r8,#0
	str r8,[fp,#-1700]
	ldr r8,[fp,#-1732]
	cmp r8,#0
	bne .fibL2797
.fibL2795:
	mov r8,#0
	str r8,[fp,#-1700]
.fibL2796:
	ldr r8,[fp,#-1704]
	cmp r8,#0
	beq .fibL2802
.fibL2799:
	mov r8,#1
	str r8,[fp,#-2536]
.fibL2801:
	mov r8,#0
	str r8,[fp,#-2676]
	ldr r8,[fp,#-2676]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2276]
	add r2,r0,r8
	str r2,[fp,#-2676]
	ldr r8,[fp,#-2676]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2280]
	add r2,r0,r8
	str r2,[fp,#-2676]
	ldr r8,[fp,#-2676]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2284]
	add r2,r0,r8
	str r2,[fp,#-2676]
	ldr r8,[fp,#-2676]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2288]
	add r2,r0,r8
	str r2,[fp,#-2676]
	ldr r8,[fp,#-2676]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2292]
	add r2,r0,r8
	str r2,[fp,#-2676]
	ldr r8,[fp,#-2676]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2296]
	add r2,r0,r8
	str r2,[fp,#-2676]
	ldr r8,[fp,#-2676]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2300]
	add r2,r0,r8
	str r2,[fp,#-2676]
	ldr r8,[fp,#-2676]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2304]
	add r2,r0,r8
	str r2,[fp,#-2676]
	ldr r8,[fp,#-2676]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2308]
	add r2,r0,r8
	str r2,[fp,#-2676]
	ldr r8,[fp,#-2676]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2312]
	add r2,r0,r8
	str r2,[fp,#-2676]
	ldr r8,[fp,#-2676]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2316]
	add r2,r0,r8
	str r2,[fp,#-2676]
	ldr r8,[fp,#-2676]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2320]
	add r2,r0,r8
	str r2,[fp,#-2676]
	ldr r8,[fp,#-2676]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2324]
	add r2,r0,r8
	str r2,[fp,#-2676]
	ldr r8,[fp,#-2676]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2328]
	add r2,r0,r8
	str r2,[fp,#-2676]
	ldr r8,[fp,#-2676]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2332]
	add r2,r0,r8
	str r2,[fp,#-2676]
	ldr r8,[fp,#-2676]
	mov r2,#2
	mul r0,r8,r2
	ldr r8,[fp,#-2336]
	add r2,r0,r8
	str r2,[fp,#-2676]
	mov r8,#0
	str r8,[fp,#-1696]
	mov r8,#0
	str r8,[fp,#-1692]
	mov r8,#0
	str r8,[fp,#-1688]
	mov r8,#0
	str r8,[fp,#-1684]
	mov r8,#0
	str r8,[fp,#-1680]
	mov r8,#0
	str r8,[fp,#-1676]
	mov r8,#0
	str r8,[fp,#-1672]
	mov r8,#0
	str r8,[fp,#-1668]
	mov r8,#0
	str r8,[fp,#-1664]
	mov r8,#0
	str r8,[fp,#-1660]
	mov r8,#0
	str r8,[fp,#-1656]
	mov r8,#0
	str r8,[fp,#-1652]
	mov r8,#0
	str r8,[fp,#-1648]
	mov r8,#0
	str r8,[fp,#-1644]
	mov r8,#0
	str r8,[fp,#-1640]
	mov r8,#0
	str r8,[fp,#-1636]
	mov r8,#0
	str r8,[fp,#-1632]
	movw r8,#61024
	movt r8,#65535  @ -4512
	mov r5,r8
	ldr r8,[fp,r5]
	str r8,[fp,#-1628]
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8178 = call i32 @__modsi3(i32 %r8176,i32 %r8177)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1692]
	ldr r8,[fp,#-1692]
	mov r5,#0
	cmp r8,r5
	blt .fibL2804
.fibL2805:
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8188 = call i32 @__aeabi_idiv(i32 %r8186,i32 %r8187)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1628]
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8191 = call i32 @__modsi3(i32 %r8189,i32 %r8190)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1688]
	ldr r8,[fp,#-1688]
	mov r5,#0
	cmp r8,r5
	blt .fibL2806
.fibL2807:
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8201 = call i32 @__aeabi_idiv(i32 %r8199,i32 %r8200)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1628]
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8204 = call i32 @__modsi3(i32 %r8202,i32 %r8203)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1684]
	ldr r8,[fp,#-1684]
	mov r5,#0
	cmp r8,r5
	blt .fibL2808
.fibL2809:
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8214 = call i32 @__aeabi_idiv(i32 %r8212,i32 %r8213)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1628]
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8217 = call i32 @__modsi3(i32 %r8215,i32 %r8216)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1680]
	ldr r8,[fp,#-1680]
	mov r5,#0
	cmp r8,r5
	blt .fibL2810
.fibL2811:
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8227 = call i32 @__aeabi_idiv(i32 %r8225,i32 %r8226)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1628]
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8230 = call i32 @__modsi3(i32 %r8228,i32 %r8229)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1676]
	ldr r8,[fp,#-1676]
	mov r5,#0
	cmp r8,r5
	blt .fibL2812
.fibL2813:
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8240 = call i32 @__aeabi_idiv(i32 %r8238,i32 %r8239)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1628]
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8243 = call i32 @__modsi3(i32 %r8241,i32 %r8242)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1672]
	ldr r8,[fp,#-1672]
	mov r5,#0
	cmp r8,r5
	blt .fibL2814
.fibL2815:
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8253 = call i32 @__aeabi_idiv(i32 %r8251,i32 %r8252)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1628]
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8256 = call i32 @__modsi3(i32 %r8254,i32 %r8255)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1668]
	ldr r8,[fp,#-1668]
	mov r5,#0
	cmp r8,r5
	blt .fibL2816
.fibL2817:
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8266 = call i32 @__aeabi_idiv(i32 %r8264,i32 %r8265)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1628]
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8269 = call i32 @__modsi3(i32 %r8267,i32 %r8268)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1664]
	ldr r8,[fp,#-1664]
	mov r5,#0
	cmp r8,r5
	blt .fibL2818
.fibL2819:
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8279 = call i32 @__aeabi_idiv(i32 %r8277,i32 %r8278)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1628]
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8282 = call i32 @__modsi3(i32 %r8280,i32 %r8281)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1660]
	ldr r8,[fp,#-1660]
	mov r5,#0
	cmp r8,r5
	blt .fibL2820
.fibL2821:
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8292 = call i32 @__aeabi_idiv(i32 %r8290,i32 %r8291)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1628]
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8295 = call i32 @__modsi3(i32 %r8293,i32 %r8294)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1656]
	ldr r8,[fp,#-1656]
	mov r5,#0
	cmp r8,r5
	blt .fibL2822
.fibL2823:
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8305 = call i32 @__aeabi_idiv(i32 %r8303,i32 %r8304)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1628]
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8308 = call i32 @__modsi3(i32 %r8306,i32 %r8307)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1652]
	ldr r8,[fp,#-1652]
	mov r5,#0
	cmp r8,r5
	blt .fibL2824
.fibL2825:
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8318 = call i32 @__aeabi_idiv(i32 %r8316,i32 %r8317)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1628]
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8321 = call i32 @__modsi3(i32 %r8319,i32 %r8320)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1648]
	ldr r8,[fp,#-1648]
	mov r5,#0
	cmp r8,r5
	blt .fibL2826
.fibL2827:
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8331 = call i32 @__aeabi_idiv(i32 %r8329,i32 %r8330)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1628]
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8334 = call i32 @__modsi3(i32 %r8332,i32 %r8333)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1644]
	ldr r8,[fp,#-1644]
	mov r5,#0
	cmp r8,r5
	blt .fibL2828
.fibL2829:
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8344 = call i32 @__aeabi_idiv(i32 %r8342,i32 %r8343)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1628]
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8347 = call i32 @__modsi3(i32 %r8345,i32 %r8346)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1640]
	ldr r8,[fp,#-1640]
	mov r5,#0
	cmp r8,r5
	blt .fibL2830
.fibL2831:
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8357 = call i32 @__aeabi_idiv(i32 %r8355,i32 %r8356)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1628]
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8360 = call i32 @__modsi3(i32 %r8358,i32 %r8359)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1636]
	ldr r8,[fp,#-1636]
	mov r5,#0
	cmp r8,r5
	blt .fibL2832
.fibL2833:
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8370 = call i32 @__aeabi_idiv(i32 %r8368,i32 %r8369)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1628]
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8373 = call i32 @__modsi3(i32 %r8371,i32 %r8372)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1632]
	ldr r8,[fp,#-1632]
	mov r5,#0
	cmp r8,r5
	blt .fibL2834
.fibL2835:
	ldr r8,[fp,#-1628]
	mov r5,#2
	@%r8383 = call i32 @__aeabi_idiv(i32 %r8381,i32 %r8382)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1628]
	mov r8,#0
	str r8,[fp,#-1624]
	mov r8,#0
	str r8,[fp,#-1620]
	mov r8,#0
	str r8,[fp,#-1616]
	mov r8,#0
	str r8,[fp,#-1612]
	mov r8,#0
	str r8,[fp,#-1608]
	mov r8,#0
	str r8,[fp,#-1604]
	mov r8,#0
	str r8,[fp,#-1600]
	mov r8,#0
	str r8,[fp,#-1596]
	mov r8,#0
	str r8,[fp,#-1592]
	mov r8,#0
	str r8,[fp,#-1588]
	mov r8,#0
	str r8,[fp,#-1584]
	mov r8,#0
	str r8,[fp,#-1580]
	mov r8,#0
	str r8,[fp,#-1576]
	mov r8,#0
	str r8,[fp,#-1572]
	mov r8,#0
	str r8,[fp,#-1568]
	mov r8,#0
	str r8,[fp,#-1564]
	ldr r8,[fp,#-2676]
	str r8,[fp,#-1560]
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8420 = call i32 @__modsi3(i32 %r8418,i32 %r8419)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1624]
	ldr r8,[fp,#-1624]
	mov r5,#0
	cmp r8,r5
	blt .fibL2836
.fibL2837:
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8430 = call i32 @__aeabi_idiv(i32 %r8428,i32 %r8429)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1560]
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8433 = call i32 @__modsi3(i32 %r8431,i32 %r8432)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1620]
	ldr r8,[fp,#-1620]
	mov r5,#0
	cmp r8,r5
	blt .fibL2838
.fibL2839:
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8443 = call i32 @__aeabi_idiv(i32 %r8441,i32 %r8442)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1560]
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8446 = call i32 @__modsi3(i32 %r8444,i32 %r8445)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1616]
	ldr r8,[fp,#-1616]
	mov r5,#0
	cmp r8,r5
	blt .fibL2840
.fibL2841:
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8456 = call i32 @__aeabi_idiv(i32 %r8454,i32 %r8455)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1560]
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8459 = call i32 @__modsi3(i32 %r8457,i32 %r8458)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1612]
	ldr r8,[fp,#-1612]
	mov r5,#0
	cmp r8,r5
	blt .fibL2842
.fibL2843:
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8469 = call i32 @__aeabi_idiv(i32 %r8467,i32 %r8468)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1560]
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8472 = call i32 @__modsi3(i32 %r8470,i32 %r8471)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1608]
	ldr r8,[fp,#-1608]
	mov r5,#0
	cmp r8,r5
	blt .fibL2844
.fibL2845:
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8482 = call i32 @__aeabi_idiv(i32 %r8480,i32 %r8481)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1560]
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8485 = call i32 @__modsi3(i32 %r8483,i32 %r8484)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1604]
	ldr r8,[fp,#-1604]
	mov r5,#0
	cmp r8,r5
	blt .fibL2846
.fibL2847:
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8495 = call i32 @__aeabi_idiv(i32 %r8493,i32 %r8494)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1560]
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8498 = call i32 @__modsi3(i32 %r8496,i32 %r8497)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1600]
	ldr r8,[fp,#-1600]
	mov r5,#0
	cmp r8,r5
	blt .fibL2848
.fibL2849:
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8508 = call i32 @__aeabi_idiv(i32 %r8506,i32 %r8507)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1560]
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8511 = call i32 @__modsi3(i32 %r8509,i32 %r8510)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1596]
	ldr r8,[fp,#-1596]
	mov r5,#0
	cmp r8,r5
	blt .fibL2850
.fibL2851:
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8521 = call i32 @__aeabi_idiv(i32 %r8519,i32 %r8520)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1560]
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8524 = call i32 @__modsi3(i32 %r8522,i32 %r8523)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1592]
	ldr r8,[fp,#-1592]
	mov r5,#0
	cmp r8,r5
	blt .fibL2852
.fibL2853:
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8534 = call i32 @__aeabi_idiv(i32 %r8532,i32 %r8533)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1560]
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8537 = call i32 @__modsi3(i32 %r8535,i32 %r8536)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1588]
	ldr r8,[fp,#-1588]
	mov r5,#0
	cmp r8,r5
	blt .fibL2854
.fibL2855:
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8547 = call i32 @__aeabi_idiv(i32 %r8545,i32 %r8546)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1560]
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8550 = call i32 @__modsi3(i32 %r8548,i32 %r8549)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1584]
	ldr r8,[fp,#-1584]
	mov r5,#0
	cmp r8,r5
	blt .fibL2856
.fibL2857:
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8560 = call i32 @__aeabi_idiv(i32 %r8558,i32 %r8559)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1560]
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8563 = call i32 @__modsi3(i32 %r8561,i32 %r8562)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1580]
	ldr r8,[fp,#-1580]
	mov r5,#0
	cmp r8,r5
	blt .fibL2858
.fibL2859:
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8573 = call i32 @__aeabi_idiv(i32 %r8571,i32 %r8572)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1560]
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8576 = call i32 @__modsi3(i32 %r8574,i32 %r8575)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1576]
	ldr r8,[fp,#-1576]
	mov r5,#0
	cmp r8,r5
	blt .fibL2860
.fibL2861:
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8586 = call i32 @__aeabi_idiv(i32 %r8584,i32 %r8585)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1560]
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8589 = call i32 @__modsi3(i32 %r8587,i32 %r8588)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1572]
	ldr r8,[fp,#-1572]
	mov r5,#0
	cmp r8,r5
	blt .fibL2862
.fibL2863:
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8599 = call i32 @__aeabi_idiv(i32 %r8597,i32 %r8598)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1560]
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8602 = call i32 @__modsi3(i32 %r8600,i32 %r8601)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1568]
	ldr r8,[fp,#-1568]
	mov r5,#0
	cmp r8,r5
	blt .fibL2864
.fibL2865:
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8612 = call i32 @__aeabi_idiv(i32 %r8610,i32 %r8611)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1560]
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8615 = call i32 @__modsi3(i32 %r8613,i32 %r8614)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1564]
	ldr r8,[fp,#-1564]
	mov r5,#0
	cmp r8,r5
	blt .fibL2866
.fibL2867:
	ldr r8,[fp,#-1560]
	mov r5,#2
	@%r8625 = call i32 @__aeabi_idiv(i32 %r8623,i32 %r8624)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-1560]
	mov r8,#0
	str r8,[fp,#-1556]
	mov r8,#0
	str r8,[fp,#-1552]
	mov r8,#0
	str r8,[fp,#-1548]
	mov r8,#0
	str r8,[fp,#-1544]
	mov r8,#0
	str r8,[fp,#-1540]
	mov r8,#0
	str r8,[fp,#-1536]
	mov r8,#0
	str r8,[fp,#-1532]
	mov r8,#0
	str r8,[fp,#-1528]
	mov r8,#0
	str r8,[fp,#-1524]
	mov r8,#0
	str r8,[fp,#-1520]
	mov r8,#0
	str r8,[fp,#-1516]
	mov r8,#0
	str r8,[fp,#-1512]
	mov r8,#0
	str r8,[fp,#-1508]
	mov r8,#0
	str r8,[fp,#-1504]
	mov r8,#0
	str r8,[fp,#-1500]
	mov r8,#0
	str r8,[fp,#-1496]
	mov r8,#0
	str r8,[fp,#-1492]
	mov r8,#0
	str r8,[fp,#-1488]
	mov r8,#0
	str r8,[fp,#-1484]
	mov r8,#0
	str r8,[fp,#-1480]
	mov r8,#0
	str r8,[fp,#-1476]
	mov r8,#0
	str r8,[fp,#-1472]
	mov r8,#0
	str r8,[fp,#-1468]
	mov r8,#0
	str r8,[fp,#-1464]
	mov r8,#0
	str r8,[fp,#-1460]
	mov r8,#0
	str r8,[fp,#-1456]
	mov r8,#0
	str r8,[fp,#-1452]
	mov r8,#0
	str r8,[fp,#-1448]
	mov r8,#0
	str r8,[fp,#-1444]
	mov r8,#0
	str r8,[fp,#-1440]
	mov r8,#0
	str r8,[fp,#-1436]
	mov r8,#0
	str r8,[fp,#-1432]
	mov r8,#0
	str r8,[fp,#-1428]
	ldr r8,[fp,#-1692]
	cmp r8,#0
	beq .fibL2871
.fibL2868:
	mov r8,#1
	str r8,[fp,#-1428]
.fibL2870:
	mov r8,#0
	str r8,[fp,#-1424]
	ldr r8,[fp,#-1692]
	cmp r8,#0
	bne .fibL2876
.fibL2874:
	mov r8,#0
	str r8,[fp,#-1424]
.fibL2875:
	mov r8,#0
	str r8,[fp,#-1420]
	ldr r8,[fp,#-1424]
	cmp r8,#0
	beq .fibL2878
.fibL2879:
	mov r8,#0
	str r8,[fp,#-1420]
.fibL2880:
	ldr r8,[fp,#-1428]
	cmp r8,#0
	bne .fibL2884
.fibL2882:
	mov r8,#0
	str r8,[fp,#-1432]
.fibL2883:
	mov r8,#0
	str r8,[fp,#-1416]
	ldr r8,[fp,#-1432]
	cmp r8,#0
	beq .fibL2889
.fibL2886:
	mov r8,#1
	str r8,[fp,#-1416]
.fibL2888:
	mov r8,#0
	str r8,[fp,#-1412]
	ldr r8,[fp,#-1432]
	cmp r8,#0
	bne .fibL2894
.fibL2892:
	mov r8,#0
	str r8,[fp,#-1412]
.fibL2893:
	mov r8,#0
	str r8,[fp,#-1408]
	ldr r8,[fp,#-1412]
	cmp r8,#0
	beq .fibL2896
.fibL2897:
	mov r8,#0
	str r8,[fp,#-1408]
.fibL2898:
	ldr r8,[fp,#-1416]
	cmp r8,#0
	bne .fibL2902
.fibL2900:
	mov r8,#0
	str r8,[fp,#-1496]
.fibL2901:
	mov r8,#0
	str r8,[fp,#-1404]
	ldr r8,[fp,#-1692]
	cmp r8,#0
	bne .fibL2907
.fibL2905:
	mov r8,#0
	str r8,[fp,#-1404]
.fibL2906:
	mov r8,#0
	str r8,[fp,#-1400]
	ldr r8,[fp,#-1432]
	cmp r8,#0
	bne .fibL2912
.fibL2910:
	mov r8,#0
	str r8,[fp,#-1400]
.fibL2911:
	ldr r8,[fp,#-1404]
	cmp r8,#0
	beq .fibL2917
.fibL2914:
	mov r8,#1
	str r8,[fp,#-1556]
.fibL2916:
	mov r8,#0
	str r8,[fp,#-1396]
	mov r8,#0
	str r8,[fp,#-1392]
	ldr r8,[fp,#-1688]
	cmp r8,#0
	beq .fibL2922
.fibL2919:
	mov r8,#1
	str r8,[fp,#-1392]
.fibL2921:
	mov r8,#0
	str r8,[fp,#-1388]
	ldr r8,[fp,#-1688]
	cmp r8,#0
	bne .fibL2927
.fibL2925:
	mov r8,#0
	str r8,[fp,#-1388]
.fibL2926:
	mov r8,#0
	str r8,[fp,#-1384]
	ldr r8,[fp,#-1388]
	cmp r8,#0
	beq .fibL2929
.fibL2930:
	mov r8,#0
	str r8,[fp,#-1384]
.fibL2931:
	ldr r8,[fp,#-1392]
	cmp r8,#0
	bne .fibL2935
.fibL2933:
	mov r8,#0
	str r8,[fp,#-1396]
.fibL2934:
	mov r8,#0
	str r8,[fp,#-1380]
	ldr r8,[fp,#-1396]
	cmp r8,#0
	beq .fibL2940
.fibL2937:
	mov r8,#1
	str r8,[fp,#-1380]
.fibL2939:
	mov r8,#0
	str r8,[fp,#-1376]
	ldr r8,[fp,#-1396]
	cmp r8,#0
	bne .fibL2945
.fibL2943:
	mov r8,#0
	str r8,[fp,#-1376]
.fibL2944:
	mov r8,#0
	str r8,[fp,#-1372]
	ldr r8,[fp,#-1376]
	cmp r8,#0
	beq .fibL2947
.fibL2948:
	mov r8,#0
	str r8,[fp,#-1372]
.fibL2949:
	ldr r8,[fp,#-1380]
	cmp r8,#0
	bne .fibL2953
.fibL2951:
	mov r8,#0
	str r8,[fp,#-1492]
.fibL2952:
	mov r8,#0
	str r8,[fp,#-1368]
	ldr r8,[fp,#-1688]
	cmp r8,#0
	bne .fibL2958
.fibL2956:
	mov r8,#0
	str r8,[fp,#-1368]
.fibL2957:
	mov r8,#0
	str r8,[fp,#-1364]
	ldr r8,[fp,#-1396]
	cmp r8,#0
	bne .fibL2963
.fibL2961:
	mov r8,#0
	str r8,[fp,#-1364]
.fibL2962:
	ldr r8,[fp,#-1368]
	cmp r8,#0
	beq .fibL2968
.fibL2965:
	mov r8,#1
	str r8,[fp,#-1552]
.fibL2967:
	mov r8,#0
	str r8,[fp,#-1360]
	mov r8,#0
	str r8,[fp,#-1356]
	ldr r8,[fp,#-1684]
	cmp r8,#0
	beq .fibL2973
.fibL2970:
	mov r8,#1
	str r8,[fp,#-1356]
.fibL2972:
	mov r8,#0
	str r8,[fp,#-1352]
	ldr r8,[fp,#-1684]
	cmp r8,#0
	bne .fibL2978
.fibL2976:
	mov r8,#0
	str r8,[fp,#-1352]
.fibL2977:
	mov r8,#0
	str r8,[fp,#-1348]
	ldr r8,[fp,#-1352]
	cmp r8,#0
	beq .fibL2980
.fibL2981:
	mov r8,#0
	str r8,[fp,#-1348]
.fibL2982:
	ldr r8,[fp,#-1356]
	cmp r8,#0
	bne .fibL2986
.fibL2984:
	mov r8,#0
	str r8,[fp,#-1360]
.fibL2985:
	mov r8,#0
	str r8,[fp,#-1344]
	ldr r8,[fp,#-1360]
	cmp r8,#0
	beq .fibL2991
.fibL2988:
	mov r8,#1
	str r8,[fp,#-1344]
.fibL2990:
	mov r8,#0
	str r8,[fp,#-1340]
	ldr r8,[fp,#-1360]
	cmp r8,#0
	bne .fibL2996
.fibL2994:
	mov r8,#0
	str r8,[fp,#-1340]
.fibL2995:
	mov r8,#0
	str r8,[fp,#-1336]
	ldr r8,[fp,#-1340]
	cmp r8,#0
	beq .fibL2998
.fibL2999:
	mov r8,#0
	str r8,[fp,#-1336]
.fibL3000:
	ldr r8,[fp,#-1344]
	cmp r8,#0
	bne .fibL3004
.fibL3002:
	mov r8,#0
	str r8,[fp,#-1488]
.fibL3003:
	mov r8,#0
	str r8,[fp,#-1332]
	ldr r8,[fp,#-1684]
	cmp r8,#0
	bne .fibL3009
.fibL3007:
	mov r8,#0
	str r8,[fp,#-1332]
.fibL3008:
	mov r8,#0
	str r8,[fp,#-1328]
	ldr r8,[fp,#-1360]
	cmp r8,#0
	bne .fibL3014
.fibL3012:
	mov r8,#0
	str r8,[fp,#-1328]
.fibL3013:
	ldr r8,[fp,#-1332]
	cmp r8,#0
	beq .fibL3019
.fibL3016:
	mov r8,#1
	str r8,[fp,#-1548]
.fibL3018:
	mov r8,#0
	str r8,[fp,#-1324]
	mov r8,#0
	str r8,[fp,#-1320]
	ldr r8,[fp,#-1680]
	cmp r8,#0
	beq .fibL3024
.fibL3021:
	mov r8,#1
	str r8,[fp,#-1320]
.fibL3023:
	mov r8,#0
	str r8,[fp,#-1316]
	ldr r8,[fp,#-1680]
	cmp r8,#0
	bne .fibL3029
.fibL3027:
	mov r8,#0
	str r8,[fp,#-1316]
.fibL3028:
	mov r8,#0
	str r8,[fp,#-1312]
	ldr r8,[fp,#-1316]
	cmp r8,#0
	beq .fibL3031
.fibL3032:
	mov r8,#0
	str r8,[fp,#-1312]
.fibL3033:
	ldr r8,[fp,#-1320]
	cmp r8,#0
	bne .fibL3037
.fibL3035:
	mov r8,#0
	str r8,[fp,#-1324]
.fibL3036:
	mov r8,#0
	str r8,[fp,#-1308]
	ldr r8,[fp,#-1324]
	cmp r8,#0
	beq .fibL3042
.fibL3039:
	mov r8,#1
	str r8,[fp,#-1308]
.fibL3041:
	mov r8,#0
	str r8,[fp,#-1304]
	ldr r8,[fp,#-1324]
	cmp r8,#0
	bne .fibL3047
.fibL3045:
	mov r8,#0
	str r8,[fp,#-1304]
.fibL3046:
	mov r8,#0
	str r8,[fp,#-1300]
	ldr r8,[fp,#-1304]
	cmp r8,#0
	beq .fibL3049
.fibL3050:
	mov r8,#0
	str r8,[fp,#-1300]
.fibL3051:
	ldr r8,[fp,#-1308]
	cmp r8,#0
	bne .fibL3055
.fibL3053:
	mov r8,#0
	str r8,[fp,#-1484]
.fibL3054:
	mov r8,#0
	str r8,[fp,#-1296]
	ldr r8,[fp,#-1680]
	cmp r8,#0
	bne .fibL3060
.fibL3058:
	mov r8,#0
	str r8,[fp,#-1296]
.fibL3059:
	mov r8,#0
	str r8,[fp,#-1292]
	ldr r8,[fp,#-1324]
	cmp r8,#0
	bne .fibL3065
.fibL3063:
	mov r8,#0
	str r8,[fp,#-1292]
.fibL3064:
	ldr r8,[fp,#-1296]
	cmp r8,#0
	beq .fibL3070
.fibL3067:
	mov r8,#1
	str r8,[fp,#-1544]
.fibL3069:
	mov r8,#0
	str r8,[fp,#-1288]
	mov r8,#0
	str r8,[fp,#-1284]
	ldr r8,[fp,#-1676]
	cmp r8,#0
	beq .fibL3075
.fibL3072:
	mov r8,#1
	str r8,[fp,#-1284]
.fibL3074:
	mov r8,#0
	str r8,[fp,#-1280]
	ldr r8,[fp,#-1676]
	cmp r8,#0
	bne .fibL3080
.fibL3078:
	mov r8,#0
	str r8,[fp,#-1280]
.fibL3079:
	mov r8,#0
	str r8,[fp,#-1276]
	ldr r8,[fp,#-1280]
	cmp r8,#0
	beq .fibL3082
.fibL3083:
	mov r8,#0
	str r8,[fp,#-1276]
.fibL3084:
	ldr r8,[fp,#-1284]
	cmp r8,#0
	bne .fibL3088
.fibL3086:
	mov r8,#0
	str r8,[fp,#-1288]
.fibL3087:
	mov r8,#0
	str r8,[fp,#-1272]
	ldr r8,[fp,#-1288]
	cmp r8,#0
	beq .fibL3093
.fibL3090:
	mov r8,#1
	str r8,[fp,#-1272]
.fibL3092:
	mov r8,#0
	str r8,[fp,#-1268]
	ldr r8,[fp,#-1288]
	cmp r8,#0
	bne .fibL3098
.fibL3096:
	mov r8,#0
	str r8,[fp,#-1268]
.fibL3097:
	mov r8,#0
	str r8,[fp,#-1264]
	ldr r8,[fp,#-1268]
	cmp r8,#0
	beq .fibL3100
.fibL3101:
	mov r8,#0
	str r8,[fp,#-1264]
.fibL3102:
	ldr r8,[fp,#-1272]
	cmp r8,#0
	bne .fibL3106
.fibL3104:
	mov r8,#0
	str r8,[fp,#-1480]
.fibL3105:
	mov r8,#0
	str r8,[fp,#-1260]
	ldr r8,[fp,#-1676]
	cmp r8,#0
	bne .fibL3111
.fibL3109:
	mov r8,#0
	str r8,[fp,#-1260]
.fibL3110:
	mov r8,#0
	str r8,[fp,#-1256]
	ldr r8,[fp,#-1288]
	cmp r8,#0
	bne .fibL3116
.fibL3114:
	mov r8,#0
	str r8,[fp,#-1256]
.fibL3115:
	ldr r8,[fp,#-1260]
	cmp r8,#0
	beq .fibL3121
.fibL3118:
	mov r8,#1
	str r8,[fp,#-1540]
.fibL3120:
	mov r8,#0
	str r8,[fp,#-1252]
	mov r8,#0
	str r8,[fp,#-1248]
	ldr r8,[fp,#-1672]
	cmp r8,#0
	beq .fibL3126
.fibL3123:
	mov r8,#1
	str r8,[fp,#-1248]
.fibL3125:
	mov r8,#0
	str r8,[fp,#-1244]
	ldr r8,[fp,#-1672]
	cmp r8,#0
	bne .fibL3131
.fibL3129:
	mov r8,#0
	str r8,[fp,#-1244]
.fibL3130:
	mov r8,#0
	str r8,[fp,#-1240]
	ldr r8,[fp,#-1244]
	cmp r8,#0
	beq .fibL3133
.fibL3134:
	mov r8,#0
	str r8,[fp,#-1240]
.fibL3135:
	ldr r8,[fp,#-1248]
	cmp r8,#0
	bne .fibL3139
.fibL3137:
	mov r8,#0
	str r8,[fp,#-1252]
.fibL3138:
	mov r8,#0
	str r8,[fp,#-1236]
	ldr r8,[fp,#-1252]
	cmp r8,#0
	beq .fibL3144
.fibL3141:
	mov r8,#1
	str r8,[fp,#-1236]
.fibL3143:
	mov r8,#0
	str r8,[fp,#-1232]
	ldr r8,[fp,#-1252]
	cmp r8,#0
	bne .fibL3149
.fibL3147:
	mov r8,#0
	str r8,[fp,#-1232]
.fibL3148:
	mov r8,#0
	str r8,[fp,#-1228]
	ldr r8,[fp,#-1232]
	cmp r8,#0
	beq .fibL3151
.fibL3152:
	mov r8,#0
	str r8,[fp,#-1228]
.fibL3153:
	ldr r8,[fp,#-1236]
	cmp r8,#0
	bne .fibL3157
.fibL3155:
	mov r8,#0
	str r8,[fp,#-1476]
.fibL3156:
	mov r8,#0
	str r8,[fp,#-1224]
	ldr r8,[fp,#-1672]
	cmp r8,#0
	bne .fibL3162
.fibL3160:
	mov r8,#0
	str r8,[fp,#-1224]
.fibL3161:
	mov r8,#0
	str r8,[fp,#-1220]
	ldr r8,[fp,#-1252]
	cmp r8,#0
	bne .fibL3167
.fibL3165:
	mov r8,#0
	str r8,[fp,#-1220]
.fibL3166:
	ldr r8,[fp,#-1224]
	cmp r8,#0
	beq .fibL3172
.fibL3169:
	mov r8,#1
	str r8,[fp,#-1536]
.fibL3171:
	mov r8,#0
	str r8,[fp,#-1216]
	mov r8,#0
	str r8,[fp,#-1212]
	ldr r8,[fp,#-1668]
	cmp r8,#0
	beq .fibL3177
.fibL3174:
	mov r8,#1
	str r8,[fp,#-1212]
.fibL3176:
	mov r8,#0
	str r8,[fp,#-1208]
	ldr r8,[fp,#-1668]
	cmp r8,#0
	bne .fibL3182
.fibL3180:
	mov r8,#0
	str r8,[fp,#-1208]
.fibL3181:
	mov r8,#0
	str r8,[fp,#-1204]
	ldr r8,[fp,#-1208]
	cmp r8,#0
	beq .fibL3184
.fibL3185:
	mov r8,#0
	str r8,[fp,#-1204]
.fibL3186:
	ldr r8,[fp,#-1212]
	cmp r8,#0
	bne .fibL3190
.fibL3188:
	mov r8,#0
	str r8,[fp,#-1216]
.fibL3189:
	mov r8,#0
	str r8,[fp,#-1200]
	ldr r8,[fp,#-1216]
	cmp r8,#0
	beq .fibL3195
.fibL3192:
	mov r8,#1
	str r8,[fp,#-1200]
.fibL3194:
	mov r8,#0
	str r8,[fp,#-1196]
	ldr r8,[fp,#-1216]
	cmp r8,#0
	bne .fibL3200
.fibL3198:
	mov r8,#0
	str r8,[fp,#-1196]
.fibL3199:
	mov r8,#0
	str r8,[fp,#-1192]
	ldr r8,[fp,#-1196]
	cmp r8,#0
	beq .fibL3202
.fibL3203:
	mov r8,#0
	str r8,[fp,#-1192]
.fibL3204:
	ldr r8,[fp,#-1200]
	cmp r8,#0
	bne .fibL3208
.fibL3206:
	mov r8,#0
	str r8,[fp,#-1472]
.fibL3207:
	mov r8,#0
	str r8,[fp,#-1188]
	ldr r8,[fp,#-1668]
	cmp r8,#0
	bne .fibL3213
.fibL3211:
	mov r8,#0
	str r8,[fp,#-1188]
.fibL3212:
	mov r8,#0
	str r8,[fp,#-1184]
	ldr r8,[fp,#-1216]
	cmp r8,#0
	bne .fibL3218
.fibL3216:
	mov r8,#0
	str r8,[fp,#-1184]
.fibL3217:
	ldr r8,[fp,#-1188]
	cmp r8,#0
	beq .fibL3223
.fibL3220:
	mov r8,#1
	str r8,[fp,#-1532]
.fibL3222:
	mov r8,#0
	str r8,[fp,#-1180]
	mov r8,#0
	str r8,[fp,#-1176]
	ldr r8,[fp,#-1664]
	cmp r8,#0
	beq .fibL3228
.fibL3225:
	mov r8,#1
	str r8,[fp,#-1176]
.fibL3227:
	mov r8,#0
	str r8,[fp,#-1172]
	ldr r8,[fp,#-1664]
	cmp r8,#0
	bne .fibL3233
.fibL3231:
	mov r8,#0
	str r8,[fp,#-1172]
.fibL3232:
	mov r8,#0
	str r8,[fp,#-1168]
	ldr r8,[fp,#-1172]
	cmp r8,#0
	beq .fibL3235
.fibL3236:
	mov r8,#0
	str r8,[fp,#-1168]
.fibL3237:
	ldr r8,[fp,#-1176]
	cmp r8,#0
	bne .fibL3241
.fibL3239:
	mov r8,#0
	str r8,[fp,#-1180]
.fibL3240:
	mov r8,#0
	str r8,[fp,#-1164]
	ldr r8,[fp,#-1180]
	cmp r8,#0
	beq .fibL3246
.fibL3243:
	mov r8,#1
	str r8,[fp,#-1164]
.fibL3245:
	mov r8,#0
	str r8,[fp,#-1160]
	ldr r8,[fp,#-1180]
	cmp r8,#0
	bne .fibL3251
.fibL3249:
	mov r8,#0
	str r8,[fp,#-1160]
.fibL3250:
	mov r8,#0
	str r8,[fp,#-1156]
	ldr r8,[fp,#-1160]
	cmp r8,#0
	beq .fibL3253
.fibL3254:
	mov r8,#0
	str r8,[fp,#-1156]
.fibL3255:
	ldr r8,[fp,#-1164]
	cmp r8,#0
	bne .fibL3259
.fibL3257:
	mov r8,#0
	str r8,[fp,#-1468]
.fibL3258:
	mov r8,#0
	str r8,[fp,#-1152]
	ldr r8,[fp,#-1664]
	cmp r8,#0
	bne .fibL3264
.fibL3262:
	mov r8,#0
	str r8,[fp,#-1152]
.fibL3263:
	mov r8,#0
	str r8,[fp,#-1148]
	ldr r8,[fp,#-1180]
	cmp r8,#0
	bne .fibL3269
.fibL3267:
	mov r8,#0
	str r8,[fp,#-1148]
.fibL3268:
	ldr r8,[fp,#-1152]
	cmp r8,#0
	beq .fibL3274
.fibL3271:
	mov r8,#1
	str r8,[fp,#-1528]
.fibL3273:
	mov r8,#0
	str r8,[fp,#-1144]
	mov r8,#0
	str r8,[fp,#-1140]
	ldr r8,[fp,#-1660]
	cmp r8,#0
	beq .fibL3279
.fibL3276:
	mov r8,#1
	str r8,[fp,#-1140]
.fibL3278:
	mov r8,#0
	str r8,[fp,#-1136]
	ldr r8,[fp,#-1660]
	cmp r8,#0
	bne .fibL3284
.fibL3282:
	mov r8,#0
	str r8,[fp,#-1136]
.fibL3283:
	mov r8,#0
	str r8,[fp,#-1132]
	ldr r8,[fp,#-1136]
	cmp r8,#0
	beq .fibL3286
.fibL3287:
	mov r8,#0
	str r8,[fp,#-1132]
.fibL3288:
	ldr r8,[fp,#-1140]
	cmp r8,#0
	bne .fibL3292
.fibL3290:
	mov r8,#0
	str r8,[fp,#-1144]
.fibL3291:
	mov r8,#0
	str r8,[fp,#-1128]
	ldr r8,[fp,#-1144]
	cmp r8,#0
	beq .fibL3297
.fibL3294:
	mov r8,#1
	str r8,[fp,#-1128]
.fibL3296:
	mov r8,#0
	str r8,[fp,#-1124]
	ldr r8,[fp,#-1144]
	cmp r8,#0
	bne .fibL3302
.fibL3300:
	mov r8,#0
	str r8,[fp,#-1124]
.fibL3301:
	mov r8,#0
	str r8,[fp,#-1120]
	ldr r8,[fp,#-1124]
	cmp r8,#0
	beq .fibL3304
.fibL3305:
	mov r8,#0
	str r8,[fp,#-1120]
.fibL3306:
	ldr r8,[fp,#-1128]
	cmp r8,#0
	bne .fibL3310
.fibL3308:
	mov r8,#0
	str r8,[fp,#-1464]
.fibL3309:
	mov r8,#0
	str r8,[fp,#-1116]
	ldr r8,[fp,#-1660]
	cmp r8,#0
	bne .fibL3315
.fibL3313:
	mov r8,#0
	str r8,[fp,#-1116]
.fibL3314:
	mov r8,#0
	str r8,[fp,#-1112]
	ldr r8,[fp,#-1144]
	cmp r8,#0
	bne .fibL3320
.fibL3318:
	mov r8,#0
	str r8,[fp,#-1112]
.fibL3319:
	ldr r8,[fp,#-1116]
	cmp r8,#0
	beq .fibL3325
.fibL3322:
	mov r8,#1
	str r8,[fp,#-1524]
.fibL3324:
	mov r8,#0
	str r8,[fp,#-1108]
	mov r8,#0
	str r8,[fp,#-1104]
	ldr r8,[fp,#-1656]
	cmp r8,#0
	beq .fibL3330
.fibL3327:
	mov r8,#1
	str r8,[fp,#-1104]
.fibL3329:
	mov r8,#0
	str r8,[fp,#-1100]
	ldr r8,[fp,#-1656]
	cmp r8,#0
	bne .fibL3335
.fibL3333:
	mov r8,#0
	str r8,[fp,#-1100]
.fibL3334:
	mov r8,#0
	str r8,[fp,#-1096]
	ldr r8,[fp,#-1100]
	cmp r8,#0
	beq .fibL3337
.fibL3338:
	mov r8,#0
	str r8,[fp,#-1096]
.fibL3339:
	ldr r8,[fp,#-1104]
	cmp r8,#0
	bne .fibL3343
.fibL3341:
	mov r8,#0
	str r8,[fp,#-1108]
.fibL3342:
	mov r8,#0
	str r8,[fp,#-1092]
	ldr r8,[fp,#-1108]
	cmp r8,#0
	beq .fibL3348
.fibL3345:
	mov r8,#1
	str r8,[fp,#-1092]
.fibL3347:
	mov r8,#0
	str r8,[fp,#-1088]
	ldr r8,[fp,#-1108]
	cmp r8,#0
	bne .fibL3353
.fibL3351:
	mov r8,#0
	str r8,[fp,#-1088]
.fibL3352:
	mov r8,#0
	str r8,[fp,#-1084]
	ldr r8,[fp,#-1088]
	cmp r8,#0
	beq .fibL3355
.fibL3356:
	mov r8,#0
	str r8,[fp,#-1084]
.fibL3357:
	ldr r8,[fp,#-1092]
	cmp r8,#0
	bne .fibL3361
.fibL3359:
	mov r8,#0
	str r8,[fp,#-1460]
.fibL3360:
	mov r8,#0
	str r8,[fp,#-1080]
	ldr r8,[fp,#-1656]
	cmp r8,#0
	bne .fibL3366
.fibL3364:
	mov r8,#0
	str r8,[fp,#-1080]
.fibL3365:
	mov r8,#0
	str r8,[fp,#-1076]
	ldr r8,[fp,#-1108]
	cmp r8,#0
	bne .fibL3371
.fibL3369:
	mov r8,#0
	str r8,[fp,#-1076]
.fibL3370:
	ldr r8,[fp,#-1080]
	cmp r8,#0
	beq .fibL3376
.fibL3373:
	mov r8,#1
	str r8,[fp,#-1520]
.fibL3375:
	mov r8,#0
	str r8,[fp,#-1072]
	mov r8,#0
	str r8,[fp,#-1068]
	ldr r8,[fp,#-1652]
	cmp r8,#0
	beq .fibL3381
.fibL3378:
	mov r8,#1
	str r8,[fp,#-1068]
.fibL3380:
	mov r8,#0
	str r8,[fp,#-1064]
	ldr r8,[fp,#-1652]
	cmp r8,#0
	bne .fibL3386
.fibL3384:
	mov r8,#0
	str r8,[fp,#-1064]
.fibL3385:
	mov r8,#0
	str r8,[fp,#-1060]
	ldr r8,[fp,#-1064]
	cmp r8,#0
	beq .fibL3388
.fibL3389:
	mov r8,#0
	str r8,[fp,#-1060]
.fibL3390:
	ldr r8,[fp,#-1068]
	cmp r8,#0
	bne .fibL3394
.fibL3392:
	mov r8,#0
	str r8,[fp,#-1072]
.fibL3393:
	mov r8,#0
	str r8,[fp,#-1056]
	ldr r8,[fp,#-1072]
	cmp r8,#0
	beq .fibL3399
.fibL3396:
	mov r8,#1
	str r8,[fp,#-1056]
.fibL3398:
	mov r8,#0
	str r8,[fp,#-1052]
	ldr r8,[fp,#-1072]
	cmp r8,#0
	bne .fibL3404
.fibL3402:
	mov r8,#0
	str r8,[fp,#-1052]
.fibL3403:
	mov r8,#0
	str r8,[fp,#-1048]
	ldr r8,[fp,#-1052]
	cmp r8,#0
	beq .fibL3406
.fibL3407:
	mov r8,#0
	str r8,[fp,#-1048]
.fibL3408:
	ldr r8,[fp,#-1056]
	cmp r8,#0
	bne .fibL3412
.fibL3410:
	mov r8,#0
	str r8,[fp,#-1456]
.fibL3411:
	mov r8,#0
	str r8,[fp,#-1044]
	ldr r8,[fp,#-1652]
	cmp r8,#0
	bne .fibL3417
.fibL3415:
	mov r8,#0
	str r8,[fp,#-1044]
.fibL3416:
	mov r8,#0
	str r8,[fp,#-1040]
	ldr r8,[fp,#-1072]
	cmp r8,#0
	bne .fibL3422
.fibL3420:
	mov r8,#0
	str r8,[fp,#-1040]
.fibL3421:
	ldr r8,[fp,#-1044]
	cmp r8,#0
	beq .fibL3427
.fibL3424:
	mov r8,#1
	str r8,[fp,#-1516]
.fibL3426:
	mov r8,#0
	str r8,[fp,#-1036]
	mov r8,#0
	str r8,[fp,#-1032]
	ldr r8,[fp,#-1648]
	cmp r8,#0
	beq .fibL3432
.fibL3429:
	mov r8,#1
	str r8,[fp,#-1032]
.fibL3431:
	mov r8,#0
	str r8,[fp,#-1028]
	ldr r8,[fp,#-1648]
	cmp r8,#0
	bne .fibL3437
.fibL3435:
	mov r8,#0
	str r8,[fp,#-1028]
.fibL3436:
	mov r8,#0
	str r8,[fp,#-1024]
	ldr r8,[fp,#-1028]
	cmp r8,#0
	beq .fibL3439
.fibL3440:
	mov r8,#0
	str r8,[fp,#-1024]
.fibL3441:
	ldr r8,[fp,#-1032]
	cmp r8,#0
	bne .fibL3445
.fibL3443:
	mov r8,#0
	str r8,[fp,#-1036]
.fibL3444:
	mov r8,#0
	str r8,[fp,#-1020]
	ldr r8,[fp,#-1036]
	cmp r8,#0
	beq .fibL3450
.fibL3447:
	mov r8,#1
	str r8,[fp,#-1020]
.fibL3449:
	mov r8,#0
	str r8,[fp,#-1016]
	ldr r8,[fp,#-1036]
	cmp r8,#0
	bne .fibL3455
.fibL3453:
	mov r8,#0
	str r8,[fp,#-1016]
.fibL3454:
	mov r8,#0
	str r8,[fp,#-1012]
	ldr r8,[fp,#-1016]
	cmp r8,#0
	beq .fibL3457
.fibL3458:
	mov r8,#0
	str r8,[fp,#-1012]
.fibL3459:
	ldr r8,[fp,#-1020]
	cmp r8,#0
	bne .fibL3463
.fibL3461:
	mov r8,#0
	str r8,[fp,#-1452]
.fibL3462:
	mov r8,#0
	str r8,[fp,#-1008]
	ldr r8,[fp,#-1648]
	cmp r8,#0
	bne .fibL3468
.fibL3466:
	mov r8,#0
	str r8,[fp,#-1008]
.fibL3467:
	mov r8,#0
	str r8,[fp,#-1004]
	ldr r8,[fp,#-1036]
	cmp r8,#0
	bne .fibL3473
.fibL3471:
	mov r8,#0
	str r8,[fp,#-1004]
.fibL3472:
	ldr r8,[fp,#-1008]
	cmp r8,#0
	beq .fibL3478
.fibL3475:
	mov r8,#1
	str r8,[fp,#-1512]
.fibL3477:
	mov r8,#0
	str r8,[fp,#-1000]
	mov r8,#0
	str r8,[fp,#-996]
	ldr r8,[fp,#-1644]
	cmp r8,#0
	beq .fibL3483
.fibL3480:
	mov r8,#1
	str r8,[fp,#-996]
.fibL3482:
	mov r8,#0
	str r8,[fp,#-992]
	ldr r8,[fp,#-1644]
	cmp r8,#0
	bne .fibL3488
.fibL3486:
	mov r8,#0
	str r8,[fp,#-992]
.fibL3487:
	mov r8,#0
	str r8,[fp,#-988]
	ldr r8,[fp,#-992]
	cmp r8,#0
	beq .fibL3490
.fibL3491:
	mov r8,#0
	str r8,[fp,#-988]
.fibL3492:
	ldr r8,[fp,#-996]
	cmp r8,#0
	bne .fibL3496
.fibL3494:
	mov r8,#0
	str r8,[fp,#-1000]
.fibL3495:
	mov r8,#0
	str r8,[fp,#-984]
	ldr r8,[fp,#-1000]
	cmp r8,#0
	beq .fibL3501
.fibL3498:
	mov r8,#1
	str r8,[fp,#-984]
.fibL3500:
	mov r8,#0
	str r8,[fp,#-980]
	ldr r8,[fp,#-1000]
	cmp r8,#0
	bne .fibL3506
.fibL3504:
	mov r8,#0
	str r8,[fp,#-980]
.fibL3505:
	mov r8,#0
	str r8,[fp,#-976]
	ldr r8,[fp,#-980]
	cmp r8,#0
	beq .fibL3508
.fibL3509:
	mov r8,#0
	str r8,[fp,#-976]
.fibL3510:
	ldr r8,[fp,#-984]
	cmp r8,#0
	bne .fibL3514
.fibL3512:
	mov r8,#0
	str r8,[fp,#-1448]
.fibL3513:
	mov r8,#0
	str r8,[fp,#-972]
	ldr r8,[fp,#-1644]
	cmp r8,#0
	bne .fibL3519
.fibL3517:
	mov r8,#0
	str r8,[fp,#-972]
.fibL3518:
	mov r8,#0
	str r8,[fp,#-968]
	ldr r8,[fp,#-1000]
	cmp r8,#0
	bne .fibL3524
.fibL3522:
	mov r8,#0
	str r8,[fp,#-968]
.fibL3523:
	ldr r8,[fp,#-972]
	cmp r8,#0
	beq .fibL3529
.fibL3526:
	mov r8,#1
	str r8,[fp,#-1508]
.fibL3528:
	mov r8,#0
	str r8,[fp,#-964]
	mov r8,#0
	str r8,[fp,#-960]
	ldr r8,[fp,#-1640]
	cmp r8,#0
	beq .fibL3534
.fibL3531:
	mov r8,#1
	str r8,[fp,#-960]
.fibL3533:
	mov r8,#0
	str r8,[fp,#-956]
	ldr r8,[fp,#-1640]
	cmp r8,#0
	bne .fibL3539
.fibL3537:
	mov r8,#0
	str r8,[fp,#-956]
.fibL3538:
	mov r8,#0
	str r8,[fp,#-952]
	ldr r8,[fp,#-956]
	cmp r8,#0
	beq .fibL3541
.fibL3542:
	mov r8,#0
	str r8,[fp,#-952]
.fibL3543:
	ldr r8,[fp,#-960]
	cmp r8,#0
	bne .fibL3547
.fibL3545:
	mov r8,#0
	str r8,[fp,#-964]
.fibL3546:
	mov r8,#0
	str r8,[fp,#-948]
	ldr r8,[fp,#-964]
	cmp r8,#0
	beq .fibL3552
.fibL3549:
	mov r8,#1
	str r8,[fp,#-948]
.fibL3551:
	mov r8,#0
	str r8,[fp,#-944]
	ldr r8,[fp,#-964]
	cmp r8,#0
	bne .fibL3557
.fibL3555:
	mov r8,#0
	str r8,[fp,#-944]
.fibL3556:
	mov r8,#0
	str r8,[fp,#-940]
	ldr r8,[fp,#-944]
	cmp r8,#0
	beq .fibL3559
.fibL3560:
	mov r8,#0
	str r8,[fp,#-940]
.fibL3561:
	ldr r8,[fp,#-948]
	cmp r8,#0
	bne .fibL3565
.fibL3563:
	mov r8,#0
	str r8,[fp,#-1444]
.fibL3564:
	mov r8,#0
	str r8,[fp,#-936]
	ldr r8,[fp,#-1640]
	cmp r8,#0
	bne .fibL3570
.fibL3568:
	mov r8,#0
	str r8,[fp,#-936]
.fibL3569:
	mov r8,#0
	str r8,[fp,#-932]
	ldr r8,[fp,#-964]
	cmp r8,#0
	bne .fibL3575
.fibL3573:
	mov r8,#0
	str r8,[fp,#-932]
.fibL3574:
	ldr r8,[fp,#-936]
	cmp r8,#0
	beq .fibL3580
.fibL3577:
	mov r8,#1
	str r8,[fp,#-1504]
.fibL3579:
	mov r8,#0
	str r8,[fp,#-928]
	mov r8,#0
	str r8,[fp,#-924]
	ldr r8,[fp,#-1636]
	cmp r8,#0
	beq .fibL3585
.fibL3582:
	mov r8,#1
	str r8,[fp,#-924]
.fibL3584:
	mov r8,#0
	str r8,[fp,#-920]
	ldr r8,[fp,#-1636]
	cmp r8,#0
	bne .fibL3590
.fibL3588:
	mov r8,#0
	str r8,[fp,#-920]
.fibL3589:
	mov r8,#0
	str r8,[fp,#-916]
	ldr r8,[fp,#-920]
	cmp r8,#0
	beq .fibL3592
.fibL3593:
	mov r8,#0
	str r8,[fp,#-916]
.fibL3594:
	ldr r8,[fp,#-924]
	cmp r8,#0
	bne .fibL3598
.fibL3596:
	mov r8,#0
	str r8,[fp,#-928]
.fibL3597:
	mov r8,#0
	str r8,[fp,#-912]
	ldr r8,[fp,#-928]
	cmp r8,#0
	beq .fibL3603
.fibL3600:
	mov r8,#1
	str r8,[fp,#-912]
.fibL3602:
	mov r8,#0
	str r8,[fp,#-908]
	ldr r8,[fp,#-928]
	cmp r8,#0
	bne .fibL3608
.fibL3606:
	mov r8,#0
	str r8,[fp,#-908]
.fibL3607:
	mov r8,#0
	str r8,[fp,#-904]
	ldr r8,[fp,#-908]
	cmp r8,#0
	beq .fibL3610
.fibL3611:
	mov r8,#0
	str r8,[fp,#-904]
.fibL3612:
	ldr r8,[fp,#-912]
	cmp r8,#0
	bne .fibL3616
.fibL3614:
	mov r8,#0
	str r8,[fp,#-1440]
.fibL3615:
	mov r8,#0
	str r8,[fp,#-900]
	ldr r8,[fp,#-1636]
	cmp r8,#0
	bne .fibL3621
.fibL3619:
	mov r8,#0
	str r8,[fp,#-900]
.fibL3620:
	mov r8,#0
	str r8,[fp,#-896]
	ldr r8,[fp,#-928]
	cmp r8,#0
	bne .fibL3626
.fibL3624:
	mov r8,#0
	str r8,[fp,#-896]
.fibL3625:
	ldr r8,[fp,#-900]
	cmp r8,#0
	beq .fibL3631
.fibL3628:
	mov r8,#1
	str r8,[fp,#-1500]
.fibL3630:
	mov r8,#0
	str r8,[fp,#-892]
	mov r8,#0
	str r8,[fp,#-888]
	ldr r8,[fp,#-1632]
	cmp r8,#0
	beq .fibL3636
.fibL3633:
	mov r8,#1
	str r8,[fp,#-888]
.fibL3635:
	mov r8,#0
	str r8,[fp,#-884]
	ldr r8,[fp,#-1632]
	cmp r8,#0
	bne .fibL3641
.fibL3639:
	mov r8,#0
	str r8,[fp,#-884]
.fibL3640:
	mov r8,#0
	str r8,[fp,#-880]
	ldr r8,[fp,#-884]
	cmp r8,#0
	beq .fibL3643
.fibL3644:
	mov r8,#0
	str r8,[fp,#-880]
.fibL3645:
	ldr r8,[fp,#-888]
	cmp r8,#0
	bne .fibL3649
.fibL3647:
	mov r8,#0
	str r8,[fp,#-892]
.fibL3648:
	mov r8,#0
	str r8,[fp,#-876]
	ldr r8,[fp,#-892]
	cmp r8,#0
	beq .fibL3654
.fibL3651:
	mov r8,#1
	str r8,[fp,#-876]
.fibL3653:
	mov r8,#0
	str r8,[fp,#-872]
	ldr r8,[fp,#-892]
	cmp r8,#0
	bne .fibL3659
.fibL3657:
	mov r8,#0
	str r8,[fp,#-872]
.fibL3658:
	mov r8,#0
	str r8,[fp,#-868]
	ldr r8,[fp,#-872]
	cmp r8,#0
	beq .fibL3661
.fibL3662:
	mov r8,#0
	str r8,[fp,#-868]
.fibL3663:
	ldr r8,[fp,#-876]
	cmp r8,#0
	bne .fibL3667
.fibL3665:
	mov r8,#0
	str r8,[fp,#-1436]
.fibL3666:
	mov r8,#0
	str r8,[fp,#-864]
	ldr r8,[fp,#-1632]
	cmp r8,#0
	bne .fibL3672
.fibL3670:
	mov r8,#0
	str r8,[fp,#-864]
.fibL3671:
	mov r8,#0
	str r8,[fp,#-860]
	ldr r8,[fp,#-892]
	cmp r8,#0
	bne .fibL3677
.fibL3675:
	mov r8,#0
	str r8,[fp,#-860]
.fibL3676:
	ldr r8,[fp,#-864]
	cmp r8,#0
	beq .fibL3682
.fibL3679:
	mov r8,#1
	str r8,[fp,#-1696]
.fibL3681:
	mov r8,#0
	str r8,[fp,#-2680]
	ldr r8,[fp,#-2680]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-1436]
	add r5,r2,r8
	str r5,[fp,#-2680]
	ldr r8,[fp,#-2680]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-1440]
	add r5,r2,r8
	str r5,[fp,#-2680]
	ldr r8,[fp,#-2680]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-1444]
	add r5,r2,r8
	str r5,[fp,#-2680]
	ldr r8,[fp,#-2680]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-1448]
	add r5,r2,r8
	str r5,[fp,#-2680]
	ldr r8,[fp,#-2680]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-1452]
	add r5,r2,r8
	str r5,[fp,#-2680]
	ldr r8,[fp,#-2680]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-1456]
	add r5,r2,r8
	str r5,[fp,#-2680]
	ldr r8,[fp,#-2680]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-1460]
	add r5,r2,r8
	str r5,[fp,#-2680]
	ldr r8,[fp,#-2680]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-1464]
	add r5,r2,r8
	str r5,[fp,#-2680]
	ldr r8,[fp,#-2680]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-1468]
	add r5,r2,r8
	str r5,[fp,#-2680]
	ldr r8,[fp,#-2680]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-1472]
	add r5,r2,r8
	str r5,[fp,#-2680]
	ldr r8,[fp,#-2680]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-1476]
	add r5,r2,r8
	str r5,[fp,#-2680]
	ldr r8,[fp,#-2680]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-1480]
	add r5,r2,r8
	str r5,[fp,#-2680]
	ldr r8,[fp,#-2680]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-1484]
	add r5,r2,r8
	str r5,[fp,#-2680]
	ldr r8,[fp,#-2680]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-1488]
	add r5,r2,r8
	str r5,[fp,#-2680]
	ldr r8,[fp,#-2680]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-1492]
	add r5,r2,r8
	str r5,[fp,#-2680]
	ldr r8,[fp,#-2680]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-1496]
	add r5,r2,r8
	str r5,[fp,#-2680]
	ldr r8,[fp,#-2680]
	@%r10547 = call i32 @fib(i32 %r10546)
	push {r1,r2,r3}
	mov r0,r8
	bl fib
	mov r5,r0
	pop {r1,r2,r3}
	str r5,[fp,#-856]
	mov r8,#0
	str r8,[fp,#-852]
	mov r8,#0
	str r8,[fp,#-848]
	mov r8,#0
	str r8,[fp,#-844]
	mov r8,#0
	str r8,[fp,#-840]
	mov r8,#0
	str r8,[fp,#-836]
	mov r8,#0
	str r8,[fp,#-832]
	mov r8,#0
	str r8,[fp,#-828]
	mov r8,#0
	str r8,[fp,#-824]
	mov r8,#0
	str r8,[fp,#-820]
	mov r8,#0
	str r8,[fp,#-816]
	mov r8,#0
	str r8,[fp,#-812]
	mov r8,#0
	str r8,[fp,#-808]
	mov r8,#0
	str r8,[fp,#-804]
	mov r8,#0
	str r8,[fp,#-800]
	mov r8,#0
	str r8,[fp,#-796]
	mov r8,#0
	str r8,[fp,#-792]
	mov r8,#0
	str r8,[fp,#-788]
	mov r8,#0
	str r8,[fp,#-784]
	ldr r8,[fp,#-2684]
	str r8,[fp,#-780]
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10588 = call i32 @__modsi3(i32 %r10586,i32 %r10587)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-844]
	ldr r8,[fp,#-844]
	mov r5,#0
	cmp r8,r5
	blt .fibL3684
.fibL3685:
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10598 = call i32 @__aeabi_idiv(i32 %r10596,i32 %r10597)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-780]
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10601 = call i32 @__modsi3(i32 %r10599,i32 %r10600)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-840]
	ldr r8,[fp,#-840]
	mov r5,#0
	cmp r8,r5
	blt .fibL3686
.fibL3687:
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10611 = call i32 @__aeabi_idiv(i32 %r10609,i32 %r10610)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-780]
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10614 = call i32 @__modsi3(i32 %r10612,i32 %r10613)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-836]
	ldr r8,[fp,#-836]
	mov r5,#0
	cmp r8,r5
	blt .fibL3688
.fibL3689:
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10624 = call i32 @__aeabi_idiv(i32 %r10622,i32 %r10623)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-780]
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10627 = call i32 @__modsi3(i32 %r10625,i32 %r10626)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-832]
	ldr r8,[fp,#-832]
	mov r5,#0
	cmp r8,r5
	blt .fibL3690
.fibL3691:
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10637 = call i32 @__aeabi_idiv(i32 %r10635,i32 %r10636)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-780]
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10640 = call i32 @__modsi3(i32 %r10638,i32 %r10639)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-828]
	ldr r8,[fp,#-828]
	mov r5,#0
	cmp r8,r5
	blt .fibL3692
.fibL3693:
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10650 = call i32 @__aeabi_idiv(i32 %r10648,i32 %r10649)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-780]
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10653 = call i32 @__modsi3(i32 %r10651,i32 %r10652)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-824]
	ldr r8,[fp,#-824]
	mov r5,#0
	cmp r8,r5
	blt .fibL3694
.fibL3695:
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10663 = call i32 @__aeabi_idiv(i32 %r10661,i32 %r10662)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-780]
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10666 = call i32 @__modsi3(i32 %r10664,i32 %r10665)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-820]
	ldr r8,[fp,#-820]
	mov r5,#0
	cmp r8,r5
	blt .fibL3696
.fibL3697:
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10676 = call i32 @__aeabi_idiv(i32 %r10674,i32 %r10675)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-780]
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10679 = call i32 @__modsi3(i32 %r10677,i32 %r10678)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-816]
	ldr r8,[fp,#-816]
	mov r5,#0
	cmp r8,r5
	blt .fibL3698
.fibL3699:
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10689 = call i32 @__aeabi_idiv(i32 %r10687,i32 %r10688)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-780]
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10692 = call i32 @__modsi3(i32 %r10690,i32 %r10691)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-812]
	ldr r8,[fp,#-812]
	mov r5,#0
	cmp r8,r5
	blt .fibL3700
.fibL3701:
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10702 = call i32 @__aeabi_idiv(i32 %r10700,i32 %r10701)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-780]
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10705 = call i32 @__modsi3(i32 %r10703,i32 %r10704)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-808]
	ldr r8,[fp,#-808]
	mov r5,#0
	cmp r8,r5
	blt .fibL3702
.fibL3703:
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10715 = call i32 @__aeabi_idiv(i32 %r10713,i32 %r10714)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-780]
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10718 = call i32 @__modsi3(i32 %r10716,i32 %r10717)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-804]
	ldr r8,[fp,#-804]
	mov r5,#0
	cmp r8,r5
	blt .fibL3704
.fibL3705:
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10728 = call i32 @__aeabi_idiv(i32 %r10726,i32 %r10727)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-780]
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10731 = call i32 @__modsi3(i32 %r10729,i32 %r10730)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-800]
	ldr r8,[fp,#-800]
	mov r5,#0
	cmp r8,r5
	blt .fibL3706
.fibL3707:
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10741 = call i32 @__aeabi_idiv(i32 %r10739,i32 %r10740)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-780]
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10744 = call i32 @__modsi3(i32 %r10742,i32 %r10743)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-796]
	ldr r8,[fp,#-796]
	mov r5,#0
	cmp r8,r5
	blt .fibL3708
.fibL3709:
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10754 = call i32 @__aeabi_idiv(i32 %r10752,i32 %r10753)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-780]
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10757 = call i32 @__modsi3(i32 %r10755,i32 %r10756)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-792]
	ldr r8,[fp,#-792]
	mov r5,#0
	cmp r8,r5
	blt .fibL3710
.fibL3711:
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10767 = call i32 @__aeabi_idiv(i32 %r10765,i32 %r10766)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-780]
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10770 = call i32 @__modsi3(i32 %r10768,i32 %r10769)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-788]
	ldr r8,[fp,#-788]
	mov r5,#0
	cmp r8,r5
	blt .fibL3712
.fibL3713:
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10780 = call i32 @__aeabi_idiv(i32 %r10778,i32 %r10779)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-780]
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10783 = call i32 @__modsi3(i32 %r10781,i32 %r10782)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-784]
	ldr r8,[fp,#-784]
	mov r5,#0
	cmp r8,r5
	blt .fibL3714
.fibL3715:
	ldr r8,[fp,#-780]
	mov r5,#2
	@%r10793 = call i32 @__aeabi_idiv(i32 %r10791,i32 %r10792)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-780]
	mov r8,#0
	str r8,[fp,#-776]
	mov r8,#0
	str r8,[fp,#-772]
	mov r8,#0
	str r8,[fp,#-768]
	mov r8,#0
	str r8,[fp,#-764]
	mov r8,#0
	str r8,[fp,#-760]
	mov r8,#0
	str r8,[fp,#-756]
	mov r8,#0
	str r8,[fp,#-752]
	mov r8,#0
	str r8,[fp,#-748]
	mov r8,#0
	str r8,[fp,#-744]
	mov r8,#0
	str r8,[fp,#-740]
	mov r8,#0
	str r8,[fp,#-736]
	mov r8,#0
	str r8,[fp,#-732]
	mov r8,#0
	str r8,[fp,#-728]
	mov r8,#0
	str r8,[fp,#-724]
	mov r8,#0
	str r8,[fp,#-720]
	mov r8,#0
	str r8,[fp,#-716]
	ldr r8,[fp,#-856]
	str r8,[fp,#-712]
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10830 = call i32 @__modsi3(i32 %r10828,i32 %r10829)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-776]
	ldr r8,[fp,#-776]
	mov r5,#0
	cmp r8,r5
	blt .fibL3716
.fibL3717:
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10840 = call i32 @__aeabi_idiv(i32 %r10838,i32 %r10839)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-712]
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10843 = call i32 @__modsi3(i32 %r10841,i32 %r10842)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-772]
	ldr r8,[fp,#-772]
	mov r5,#0
	cmp r8,r5
	blt .fibL3718
.fibL3719:
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10853 = call i32 @__aeabi_idiv(i32 %r10851,i32 %r10852)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-712]
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10856 = call i32 @__modsi3(i32 %r10854,i32 %r10855)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-768]
	ldr r8,[fp,#-768]
	mov r5,#0
	cmp r8,r5
	blt .fibL3720
.fibL3721:
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10866 = call i32 @__aeabi_idiv(i32 %r10864,i32 %r10865)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-712]
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10869 = call i32 @__modsi3(i32 %r10867,i32 %r10868)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-764]
	ldr r8,[fp,#-764]
	mov r5,#0
	cmp r8,r5
	blt .fibL3722
.fibL3723:
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10879 = call i32 @__aeabi_idiv(i32 %r10877,i32 %r10878)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-712]
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10882 = call i32 @__modsi3(i32 %r10880,i32 %r10881)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-760]
	ldr r8,[fp,#-760]
	mov r5,#0
	cmp r8,r5
	blt .fibL3724
.fibL3725:
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10892 = call i32 @__aeabi_idiv(i32 %r10890,i32 %r10891)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-712]
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10895 = call i32 @__modsi3(i32 %r10893,i32 %r10894)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-756]
	ldr r8,[fp,#-756]
	mov r5,#0
	cmp r8,r5
	blt .fibL3726
.fibL3727:
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10905 = call i32 @__aeabi_idiv(i32 %r10903,i32 %r10904)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-712]
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10908 = call i32 @__modsi3(i32 %r10906,i32 %r10907)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-752]
	ldr r8,[fp,#-752]
	mov r5,#0
	cmp r8,r5
	blt .fibL3728
.fibL3729:
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10918 = call i32 @__aeabi_idiv(i32 %r10916,i32 %r10917)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-712]
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10921 = call i32 @__modsi3(i32 %r10919,i32 %r10920)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-748]
	ldr r8,[fp,#-748]
	mov r5,#0
	cmp r8,r5
	blt .fibL3730
.fibL3731:
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10931 = call i32 @__aeabi_idiv(i32 %r10929,i32 %r10930)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-712]
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10934 = call i32 @__modsi3(i32 %r10932,i32 %r10933)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-744]
	ldr r8,[fp,#-744]
	mov r5,#0
	cmp r8,r5
	blt .fibL3732
.fibL3733:
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10944 = call i32 @__aeabi_idiv(i32 %r10942,i32 %r10943)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-712]
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10947 = call i32 @__modsi3(i32 %r10945,i32 %r10946)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-740]
	ldr r8,[fp,#-740]
	mov r5,#0
	cmp r8,r5
	blt .fibL3734
.fibL3735:
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10957 = call i32 @__aeabi_idiv(i32 %r10955,i32 %r10956)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-712]
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10960 = call i32 @__modsi3(i32 %r10958,i32 %r10959)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-736]
	ldr r8,[fp,#-736]
	mov r5,#0
	cmp r8,r5
	blt .fibL3736
.fibL3737:
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10970 = call i32 @__aeabi_idiv(i32 %r10968,i32 %r10969)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-712]
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10973 = call i32 @__modsi3(i32 %r10971,i32 %r10972)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-732]
	ldr r8,[fp,#-732]
	mov r5,#0
	cmp r8,r5
	blt .fibL3738
.fibL3739:
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10983 = call i32 @__aeabi_idiv(i32 %r10981,i32 %r10982)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-712]
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10986 = call i32 @__modsi3(i32 %r10984,i32 %r10985)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-728]
	ldr r8,[fp,#-728]
	mov r5,#0
	cmp r8,r5
	blt .fibL3740
.fibL3741:
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10996 = call i32 @__aeabi_idiv(i32 %r10994,i32 %r10995)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-712]
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r10999 = call i32 @__modsi3(i32 %r10997,i32 %r10998)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-724]
	ldr r8,[fp,#-724]
	mov r5,#0
	cmp r8,r5
	blt .fibL3742
.fibL3743:
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r11009 = call i32 @__aeabi_idiv(i32 %r11007,i32 %r11008)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-712]
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r11012 = call i32 @__modsi3(i32 %r11010,i32 %r11011)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-720]
	ldr r8,[fp,#-720]
	mov r5,#0
	cmp r8,r5
	blt .fibL3744
.fibL3745:
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r11022 = call i32 @__aeabi_idiv(i32 %r11020,i32 %r11021)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-712]
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r11025 = call i32 @__modsi3(i32 %r11023,i32 %r11024)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __modsi3
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-716]
	ldr r8,[fp,#-716]
	mov r5,#0
	cmp r8,r5
	blt .fibL3746
.fibL3747:
	ldr r8,[fp,#-712]
	mov r5,#2
	@%r11035 = call i32 @__aeabi_idiv(i32 %r11033,i32 %r11034)
	sub sp,sp,#4 @stack align 8bytes
	push {r1,r3}
	mov r0,r8
	mov r1,r5
	bl __aeabi_idiv
	mov r2,r0
	pop {r1,r3}
	add sp,sp,#4 @stack align 8bytes
	str r2,[fp,#-712]
	mov r8,#0
	str r8,[fp,#-708]
	mov r8,#0
	str r8,[fp,#-704]
	mov r8,#0
	str r8,[fp,#-700]
	mov r8,#0
	str r8,[fp,#-696]
	mov r8,#0
	str r8,[fp,#-692]
	mov r8,#0
	str r8,[fp,#-688]
	mov r8,#0
	str r8,[fp,#-684]
	mov r8,#0
	str r8,[fp,#-680]
	mov r8,#0
	str r8,[fp,#-676]
	mov r8,#0
	str r8,[fp,#-672]
	mov r8,#0
	str r8,[fp,#-668]
	mov r8,#0
	str r8,[fp,#-664]
	mov r8,#0
	str r8,[fp,#-660]
	mov r8,#0
	str r8,[fp,#-656]
	mov r8,#0
	str r8,[fp,#-652]
	mov r8,#0
	str r8,[fp,#-648]
	mov r8,#0
	str r8,[fp,#-644]
	mov r8,#0
	str r8,[fp,#-640]
	mov r8,#0
	str r8,[fp,#-636]
	mov r8,#0
	str r8,[fp,#-632]
	mov r8,#0
	str r8,[fp,#-628]
	mov r8,#0
	str r8,[fp,#-624]
	mov r8,#0
	str r8,[fp,#-620]
	mov r8,#0
	str r8,[fp,#-616]
	mov r8,#0
	str r8,[fp,#-612]
	mov r8,#0
	str r8,[fp,#-608]
	mov r8,#0
	str r8,[fp,#-604]
	mov r8,#0
	str r8,[fp,#-600]
	mov r8,#0
	str r8,[fp,#-596]
	mov r8,#0
	str r8,[fp,#-592]
	mov r8,#0
	str r8,[fp,#-588]
	mov r8,#0
	str r8,[fp,#-584]
	mov r8,#0
	str r8,[fp,#-580]
	ldr r8,[fp,#-844]
	cmp r8,#0
	beq .fibL3751
.fibL3748:
	mov r8,#1
	str r8,[fp,#-580]
.fibL3750:
	mov r8,#0
	str r8,[fp,#-576]
	ldr r8,[fp,#-844]
	cmp r8,#0
	bne .fibL3756
.fibL3754:
	mov r8,#0
	str r8,[fp,#-576]
.fibL3755:
	mov r8,#0
	str r8,[fp,#-572]
	ldr r8,[fp,#-576]
	cmp r8,#0
	beq .fibL3758
.fibL3759:
	mov r8,#0
	str r8,[fp,#-572]
.fibL3760:
	ldr r8,[fp,#-580]
	cmp r8,#0
	bne .fibL3764
.fibL3762:
	mov r8,#0
	str r8,[fp,#-584]
.fibL3763:
	mov r8,#0
	str r8,[fp,#-568]
	ldr r8,[fp,#-584]
	cmp r8,#0
	beq .fibL3769
.fibL3766:
	mov r8,#1
	str r8,[fp,#-568]
.fibL3768:
	mov r8,#0
	str r8,[fp,#-564]
	ldr r8,[fp,#-584]
	cmp r8,#0
	bne .fibL3774
.fibL3772:
	mov r8,#0
	str r8,[fp,#-564]
.fibL3773:
	mov r8,#0
	str r8,[fp,#-560]
	ldr r8,[fp,#-564]
	cmp r8,#0
	beq .fibL3776
.fibL3777:
	mov r8,#0
	str r8,[fp,#-560]
.fibL3778:
	ldr r8,[fp,#-568]
	cmp r8,#0
	bne .fibL3782
.fibL3780:
	mov r8,#0
	str r8,[fp,#-648]
.fibL3781:
	mov r8,#0
	str r8,[fp,#-556]
	ldr r8,[fp,#-844]
	cmp r8,#0
	bne .fibL3787
.fibL3785:
	mov r8,#0
	str r8,[fp,#-556]
.fibL3786:
	mov r8,#0
	str r8,[fp,#-552]
	ldr r8,[fp,#-584]
	cmp r8,#0
	bne .fibL3792
.fibL3790:
	mov r8,#0
	str r8,[fp,#-552]
.fibL3791:
	ldr r8,[fp,#-556]
	cmp r8,#0
	beq .fibL3797
.fibL3794:
	mov r8,#1
	str r8,[fp,#-708]
.fibL3796:
	mov r8,#0
	str r8,[fp,#-548]
	mov r8,#0
	str r8,[fp,#-544]
	ldr r8,[fp,#-840]
	cmp r8,#0
	beq .fibL3802
.fibL3799:
	mov r8,#1
	str r8,[fp,#-544]
.fibL3801:
	mov r8,#0
	str r8,[fp,#-540]
	ldr r8,[fp,#-840]
	cmp r8,#0
	bne .fibL3807
.fibL3805:
	mov r8,#0
	str r8,[fp,#-540]
.fibL3806:
	mov r8,#0
	str r8,[fp,#-536]
	ldr r8,[fp,#-540]
	cmp r8,#0
	beq .fibL3809
.fibL3810:
	mov r8,#0
	str r8,[fp,#-536]
.fibL3811:
	ldr r8,[fp,#-544]
	cmp r8,#0
	bne .fibL3815
.fibL3813:
	mov r8,#0
	str r8,[fp,#-548]
.fibL3814:
	mov r8,#0
	str r8,[fp,#-532]
	ldr r8,[fp,#-548]
	cmp r8,#0
	beq .fibL3820
.fibL3817:
	mov r8,#1
	str r8,[fp,#-532]
.fibL3819:
	mov r8,#0
	str r8,[fp,#-528]
	ldr r8,[fp,#-548]
	cmp r8,#0
	bne .fibL3825
.fibL3823:
	mov r8,#0
	str r8,[fp,#-528]
.fibL3824:
	mov r8,#0
	str r8,[fp,#-524]
	ldr r8,[fp,#-528]
	cmp r8,#0
	beq .fibL3827
.fibL3828:
	mov r8,#0
	str r8,[fp,#-524]
.fibL3829:
	ldr r8,[fp,#-532]
	cmp r8,#0
	bne .fibL3833
.fibL3831:
	mov r8,#0
	str r8,[fp,#-644]
.fibL3832:
	mov r8,#0
	str r8,[fp,#-520]
	ldr r8,[fp,#-840]
	cmp r8,#0
	bne .fibL3838
.fibL3836:
	mov r8,#0
	str r8,[fp,#-520]
.fibL3837:
	mov r8,#0
	str r8,[fp,#-516]
	ldr r8,[fp,#-548]
	cmp r8,#0
	bne .fibL3843
.fibL3841:
	mov r8,#0
	str r8,[fp,#-516]
.fibL3842:
	ldr r8,[fp,#-520]
	cmp r8,#0
	beq .fibL3848
.fibL3845:
	mov r8,#1
	str r8,[fp,#-704]
.fibL3847:
	mov r8,#0
	str r8,[fp,#-512]
	mov r8,#0
	str r8,[fp,#-508]
	ldr r8,[fp,#-836]
	cmp r8,#0
	beq .fibL3853
.fibL3850:
	mov r8,#1
	str r8,[fp,#-508]
.fibL3852:
	mov r8,#0
	str r8,[fp,#-504]
	ldr r8,[fp,#-836]
	cmp r8,#0
	bne .fibL3858
.fibL3856:
	mov r8,#0
	str r8,[fp,#-504]
.fibL3857:
	mov r8,#0
	str r8,[fp,#-500]
	ldr r8,[fp,#-504]
	cmp r8,#0
	beq .fibL3860
.fibL3861:
	mov r8,#0
	str r8,[fp,#-500]
.fibL3862:
	ldr r8,[fp,#-508]
	cmp r8,#0
	bne .fibL3866
.fibL3864:
	mov r8,#0
	str r8,[fp,#-512]
.fibL3865:
	mov r8,#0
	str r8,[fp,#-496]
	ldr r8,[fp,#-512]
	cmp r8,#0
	beq .fibL3871
.fibL3868:
	mov r8,#1
	str r8,[fp,#-496]
.fibL3870:
	mov r8,#0
	str r8,[fp,#-492]
	ldr r8,[fp,#-512]
	cmp r8,#0
	bne .fibL3876
.fibL3874:
	mov r8,#0
	str r8,[fp,#-492]
.fibL3875:
	mov r8,#0
	str r8,[fp,#-488]
	ldr r8,[fp,#-492]
	cmp r8,#0
	beq .fibL3878
.fibL3879:
	mov r8,#0
	str r8,[fp,#-488]
.fibL3880:
	ldr r8,[fp,#-496]
	cmp r8,#0
	bne .fibL3884
.fibL3882:
	mov r8,#0
	str r8,[fp,#-640]
.fibL3883:
	mov r8,#0
	str r8,[fp,#-484]
	ldr r8,[fp,#-836]
	cmp r8,#0
	bne .fibL3889
.fibL3887:
	mov r8,#0
	str r8,[fp,#-484]
.fibL3888:
	mov r8,#0
	str r8,[fp,#-480]
	ldr r8,[fp,#-512]
	cmp r8,#0
	bne .fibL3894
.fibL3892:
	mov r8,#0
	str r8,[fp,#-480]
.fibL3893:
	ldr r8,[fp,#-484]
	cmp r8,#0
	beq .fibL3899
.fibL3896:
	mov r8,#1
	str r8,[fp,#-700]
.fibL3898:
	mov r8,#0
	str r8,[fp,#-476]
	mov r8,#0
	str r8,[fp,#-472]
	ldr r8,[fp,#-832]
	cmp r8,#0
	beq .fibL3904
.fibL3901:
	mov r8,#1
	str r8,[fp,#-472]
.fibL3903:
	mov r8,#0
	str r8,[fp,#-468]
	ldr r8,[fp,#-832]
	cmp r8,#0
	bne .fibL3909
.fibL3907:
	mov r8,#0
	str r8,[fp,#-468]
.fibL3908:
	mov r8,#0
	str r8,[fp,#-464]
	ldr r8,[fp,#-468]
	cmp r8,#0
	beq .fibL3911
.fibL3912:
	mov r8,#0
	str r8,[fp,#-464]
.fibL3913:
	ldr r8,[fp,#-472]
	cmp r8,#0
	bne .fibL3917
.fibL3915:
	mov r8,#0
	str r8,[fp,#-476]
.fibL3916:
	mov r8,#0
	str r8,[fp,#-460]
	ldr r8,[fp,#-476]
	cmp r8,#0
	beq .fibL3922
.fibL3919:
	mov r8,#1
	str r8,[fp,#-460]
.fibL3921:
	mov r8,#0
	str r8,[fp,#-456]
	ldr r8,[fp,#-476]
	cmp r8,#0
	bne .fibL3927
.fibL3925:
	mov r8,#0
	str r8,[fp,#-456]
.fibL3926:
	mov r8,#0
	str r8,[fp,#-452]
	ldr r8,[fp,#-456]
	cmp r8,#0
	beq .fibL3929
.fibL3930:
	mov r8,#0
	str r8,[fp,#-452]
.fibL3931:
	ldr r8,[fp,#-460]
	cmp r8,#0
	bne .fibL3935
.fibL3933:
	mov r8,#0
	str r8,[fp,#-636]
.fibL3934:
	mov r8,#0
	str r8,[fp,#-448]
	ldr r8,[fp,#-832]
	cmp r8,#0
	bne .fibL3940
.fibL3938:
	mov r8,#0
	str r8,[fp,#-448]
.fibL3939:
	mov r8,#0
	str r8,[fp,#-444]
	ldr r8,[fp,#-476]
	cmp r8,#0
	bne .fibL3945
.fibL3943:
	mov r8,#0
	str r8,[fp,#-444]
.fibL3944:
	ldr r8,[fp,#-448]
	cmp r8,#0
	beq .fibL3950
.fibL3947:
	mov r8,#1
	str r8,[fp,#-696]
.fibL3949:
	mov r8,#0
	str r8,[fp,#-440]
	mov r8,#0
	str r8,[fp,#-436]
	ldr r8,[fp,#-828]
	cmp r8,#0
	beq .fibL3955
.fibL3952:
	mov r8,#1
	str r8,[fp,#-436]
.fibL3954:
	mov r8,#0
	str r8,[fp,#-432]
	ldr r8,[fp,#-828]
	cmp r8,#0
	bne .fibL3960
.fibL3958:
	mov r8,#0
	str r8,[fp,#-432]
.fibL3959:
	mov r8,#0
	str r8,[fp,#-428]
	ldr r8,[fp,#-432]
	cmp r8,#0
	beq .fibL3962
.fibL3963:
	mov r8,#0
	str r8,[fp,#-428]
.fibL3964:
	ldr r8,[fp,#-436]
	cmp r8,#0
	bne .fibL3968
.fibL3966:
	mov r8,#0
	str r8,[fp,#-440]
.fibL3967:
	mov r8,#0
	str r8,[fp,#-424]
	ldr r8,[fp,#-440]
	cmp r8,#0
	beq .fibL3973
.fibL3970:
	mov r8,#1
	str r8,[fp,#-424]
.fibL3972:
	mov r8,#0
	str r8,[fp,#-420]
	ldr r8,[fp,#-440]
	cmp r8,#0
	bne .fibL3978
.fibL3976:
	mov r8,#0
	str r8,[fp,#-420]
.fibL3977:
	mov r8,#0
	str r8,[fp,#-416]
	ldr r8,[fp,#-420]
	cmp r8,#0
	beq .fibL3980
.fibL3981:
	mov r8,#0
	str r8,[fp,#-416]
.fibL3982:
	ldr r8,[fp,#-424]
	cmp r8,#0
	bne .fibL3986
.fibL3984:
	mov r8,#0
	str r8,[fp,#-632]
.fibL3985:
	mov r8,#0
	str r8,[fp,#-412]
	ldr r8,[fp,#-828]
	cmp r8,#0
	bne .fibL3991
.fibL3989:
	mov r8,#0
	str r8,[fp,#-412]
.fibL3990:
	mov r8,#0
	str r8,[fp,#-408]
	ldr r8,[fp,#-440]
	cmp r8,#0
	bne .fibL3996
.fibL3994:
	mov r8,#0
	str r8,[fp,#-408]
.fibL3995:
	ldr r8,[fp,#-412]
	cmp r8,#0
	beq .fibL4001
.fibL3998:
	mov r8,#1
	str r8,[fp,#-692]
.fibL4000:
	mov r8,#0
	str r8,[fp,#-404]
	mov r8,#0
	str r8,[fp,#-400]
	ldr r8,[fp,#-824]
	cmp r8,#0
	beq .fibL4006
.fibL4003:
	mov r8,#1
	str r8,[fp,#-400]
.fibL4005:
	mov r8,#0
	str r8,[fp,#-396]
	ldr r8,[fp,#-824]
	cmp r8,#0
	bne .fibL4011
.fibL4009:
	mov r8,#0
	str r8,[fp,#-396]
.fibL4010:
	mov r8,#0
	str r8,[fp,#-392]
	ldr r8,[fp,#-396]
	cmp r8,#0
	beq .fibL4013
.fibL4014:
	mov r8,#0
	str r8,[fp,#-392]
.fibL4015:
	ldr r8,[fp,#-400]
	cmp r8,#0
	bne .fibL4019
.fibL4017:
	mov r8,#0
	str r8,[fp,#-404]
.fibL4018:
	mov r8,#0
	str r8,[fp,#-388]
	ldr r8,[fp,#-404]
	cmp r8,#0
	beq .fibL4024
.fibL4021:
	mov r8,#1
	str r8,[fp,#-388]
.fibL4023:
	mov r8,#0
	str r8,[fp,#-384]
	ldr r8,[fp,#-404]
	cmp r8,#0
	bne .fibL4029
.fibL4027:
	mov r8,#0
	str r8,[fp,#-384]
.fibL4028:
	mov r8,#0
	str r8,[fp,#-380]
	ldr r8,[fp,#-384]
	cmp r8,#0
	beq .fibL4031
.fibL4032:
	mov r8,#0
	str r8,[fp,#-380]
.fibL4033:
	ldr r8,[fp,#-388]
	cmp r8,#0
	bne .fibL4037
.fibL4035:
	mov r8,#0
	str r8,[fp,#-628]
.fibL4036:
	mov r8,#0
	str r8,[fp,#-376]
	ldr r8,[fp,#-824]
	cmp r8,#0
	bne .fibL4042
.fibL4040:
	mov r8,#0
	str r8,[fp,#-376]
.fibL4041:
	mov r8,#0
	str r8,[fp,#-372]
	ldr r8,[fp,#-404]
	cmp r8,#0
	bne .fibL4047
.fibL4045:
	mov r8,#0
	str r8,[fp,#-372]
.fibL4046:
	ldr r8,[fp,#-376]
	cmp r8,#0
	beq .fibL4052
.fibL4049:
	mov r8,#1
	str r8,[fp,#-688]
.fibL4051:
	mov r8,#0
	str r8,[fp,#-368]
	mov r8,#0
	str r8,[fp,#-364]
	ldr r8,[fp,#-820]
	cmp r8,#0
	beq .fibL4057
.fibL4054:
	mov r8,#1
	str r8,[fp,#-364]
.fibL4056:
	mov r8,#0
	str r8,[fp,#-360]
	ldr r8,[fp,#-820]
	cmp r8,#0
	bne .fibL4062
.fibL4060:
	mov r8,#0
	str r8,[fp,#-360]
.fibL4061:
	mov r8,#0
	str r8,[fp,#-356]
	ldr r8,[fp,#-360]
	cmp r8,#0
	beq .fibL4064
.fibL4065:
	mov r8,#0
	str r8,[fp,#-356]
.fibL4066:
	ldr r8,[fp,#-364]
	cmp r8,#0
	bne .fibL4070
.fibL4068:
	mov r8,#0
	str r8,[fp,#-368]
.fibL4069:
	mov r8,#0
	str r8,[fp,#-352]
	ldr r8,[fp,#-368]
	cmp r8,#0
	beq .fibL4075
.fibL4072:
	mov r8,#1
	str r8,[fp,#-352]
.fibL4074:
	mov r8,#0
	str r8,[fp,#-348]
	ldr r8,[fp,#-368]
	cmp r8,#0
	bne .fibL4080
.fibL4078:
	mov r8,#0
	str r8,[fp,#-348]
.fibL4079:
	mov r8,#0
	str r8,[fp,#-344]
	ldr r8,[fp,#-348]
	cmp r8,#0
	beq .fibL4082
.fibL4083:
	mov r8,#0
	str r8,[fp,#-344]
.fibL4084:
	ldr r8,[fp,#-352]
	cmp r8,#0
	bne .fibL4088
.fibL4086:
	mov r8,#0
	str r8,[fp,#-624]
.fibL4087:
	mov r8,#0
	str r8,[fp,#-340]
	ldr r8,[fp,#-820]
	cmp r8,#0
	bne .fibL4093
.fibL4091:
	mov r8,#0
	str r8,[fp,#-340]
.fibL4092:
	mov r8,#0
	str r8,[fp,#-336]
	ldr r8,[fp,#-368]
	cmp r8,#0
	bne .fibL4098
.fibL4096:
	mov r8,#0
	str r8,[fp,#-336]
.fibL4097:
	ldr r8,[fp,#-340]
	cmp r8,#0
	beq .fibL4103
.fibL4100:
	mov r8,#1
	str r8,[fp,#-684]
.fibL4102:
	mov r8,#0
	str r8,[fp,#-332]
	mov r8,#0
	str r8,[fp,#-328]
	ldr r8,[fp,#-816]
	cmp r8,#0
	beq .fibL4108
.fibL4105:
	mov r8,#1
	str r8,[fp,#-328]
.fibL4107:
	mov r8,#0
	str r8,[fp,#-324]
	ldr r8,[fp,#-816]
	cmp r8,#0
	bne .fibL4113
.fibL4111:
	mov r8,#0
	str r8,[fp,#-324]
.fibL4112:
	mov r8,#0
	str r8,[fp,#-320]
	ldr r8,[fp,#-324]
	cmp r8,#0
	beq .fibL4115
.fibL4116:
	mov r8,#0
	str r8,[fp,#-320]
.fibL4117:
	ldr r8,[fp,#-328]
	cmp r8,#0
	bne .fibL4121
.fibL4119:
	mov r8,#0
	str r8,[fp,#-332]
.fibL4120:
	mov r8,#0
	str r8,[fp,#-316]
	ldr r8,[fp,#-332]
	cmp r8,#0
	beq .fibL4126
.fibL4123:
	mov r8,#1
	str r8,[fp,#-316]
.fibL4125:
	mov r8,#0
	str r8,[fp,#-312]
	ldr r8,[fp,#-332]
	cmp r8,#0
	bne .fibL4131
.fibL4129:
	mov r8,#0
	str r8,[fp,#-312]
.fibL4130:
	mov r8,#0
	str r8,[fp,#-308]
	ldr r8,[fp,#-312]
	cmp r8,#0
	beq .fibL4133
.fibL4134:
	mov r8,#0
	str r8,[fp,#-308]
.fibL4135:
	ldr r8,[fp,#-316]
	cmp r8,#0
	bne .fibL4139
.fibL4137:
	mov r8,#0
	str r8,[fp,#-620]
.fibL4138:
	mov r8,#0
	str r8,[fp,#-304]
	ldr r8,[fp,#-816]
	cmp r8,#0
	bne .fibL4144
.fibL4142:
	mov r8,#0
	str r8,[fp,#-304]
.fibL4143:
	mov r8,#0
	str r8,[fp,#-300]
	ldr r8,[fp,#-332]
	cmp r8,#0
	bne .fibL4149
.fibL4147:
	mov r8,#0
	str r8,[fp,#-300]
.fibL4148:
	ldr r8,[fp,#-304]
	cmp r8,#0
	beq .fibL4154
.fibL4151:
	mov r8,#1
	str r8,[fp,#-680]
.fibL4153:
	mov r8,#0
	str r8,[fp,#-296]
	mov r8,#0
	str r8,[fp,#-292]
	ldr r8,[fp,#-812]
	cmp r8,#0
	beq .fibL4159
.fibL4156:
	mov r8,#1
	str r8,[fp,#-292]
.fibL4158:
	mov r8,#0
	str r8,[fp,#-288]
	ldr r8,[fp,#-812]
	cmp r8,#0
	bne .fibL4164
.fibL4162:
	mov r8,#0
	str r8,[fp,#-288]
.fibL4163:
	mov r8,#0
	str r8,[fp,#-284]
	ldr r8,[fp,#-288]
	cmp r8,#0
	beq .fibL4166
.fibL4167:
	mov r8,#0
	str r8,[fp,#-284]
.fibL4168:
	ldr r8,[fp,#-292]
	cmp r8,#0
	bne .fibL4172
.fibL4170:
	mov r8,#0
	str r8,[fp,#-296]
.fibL4171:
	mov r8,#0
	str r8,[fp,#-280]
	ldr r8,[fp,#-296]
	cmp r8,#0
	beq .fibL4177
.fibL4174:
	mov r8,#1
	str r8,[fp,#-280]
.fibL4176:
	mov r8,#0
	str r8,[fp,#-276]
	ldr r8,[fp,#-296]
	cmp r8,#0
	bne .fibL4182
.fibL4180:
	mov r8,#0
	str r8,[fp,#-276]
.fibL4181:
	mov r8,#0
	str r8,[fp,#-272]
	ldr r8,[fp,#-276]
	cmp r8,#0
	beq .fibL4184
.fibL4185:
	mov r8,#0
	str r8,[fp,#-272]
.fibL4186:
	ldr r8,[fp,#-280]
	cmp r8,#0
	bne .fibL4190
.fibL4188:
	mov r8,#0
	str r8,[fp,#-616]
.fibL4189:
	mov r8,#0
	str r8,[fp,#-268]
	ldr r8,[fp,#-812]
	cmp r8,#0
	bne .fibL4195
.fibL4193:
	mov r8,#0
	str r8,[fp,#-268]
.fibL4194:
	mov r8,#0
	str r8,[fp,#-264]
	ldr r8,[fp,#-296]
	cmp r8,#0
	bne .fibL4200
.fibL4198:
	mov r8,#0
	str r8,[fp,#-264]
.fibL4199:
	ldr r8,[fp,#-268]
	cmp r8,#0
	beq .fibL4205
.fibL4202:
	mov r8,#1
	str r8,[fp,#-676]
.fibL4204:
	mov r8,#0
	str r8,[fp,#-260]
	mov r8,#0
	str r8,[fp,#-256]
	ldr r8,[fp,#-808]
	cmp r8,#0
	beq .fibL4210
.fibL4207:
	mov r8,#1
	str r8,[fp,#-256]
.fibL4209:
	mov r8,#0
	str r8,[fp,#-252]
	ldr r8,[fp,#-808]
	cmp r8,#0
	bne .fibL4215
.fibL4213:
	mov r8,#0
	str r8,[fp,#-252]
.fibL4214:
	mov r8,#0
	str r8,[fp,#-248]
	ldr r8,[fp,#-252]
	cmp r8,#0
	beq .fibL4217
.fibL4218:
	mov r8,#0
	str r8,[fp,#-248]
.fibL4219:
	ldr r8,[fp,#-256]
	cmp r8,#0
	bne .fibL4223
.fibL4221:
	mov r8,#0
	str r8,[fp,#-260]
.fibL4222:
	mov r8,#0
	str r8,[fp,#-244]
	ldr r8,[fp,#-260]
	cmp r8,#0
	beq .fibL4228
.fibL4225:
	mov r8,#1
	str r8,[fp,#-244]
.fibL4227:
	mov r8,#0
	str r8,[fp,#-240]
	ldr r8,[fp,#-260]
	cmp r8,#0
	bne .fibL4233
.fibL4231:
	mov r8,#0
	str r8,[fp,#-240]
.fibL4232:
	mov r8,#0
	str r8,[fp,#-236]
	ldr r8,[fp,#-240]
	cmp r8,#0
	beq .fibL4235
.fibL4236:
	mov r8,#0
	str r8,[fp,#-236]
.fibL4237:
	ldr r8,[fp,#-244]
	cmp r8,#0
	bne .fibL4241
.fibL4239:
	mov r8,#0
	str r8,[fp,#-612]
.fibL4240:
	mov r8,#0
	str r8,[fp,#-232]
	ldr r8,[fp,#-808]
	cmp r8,#0
	bne .fibL4246
.fibL4244:
	mov r8,#0
	str r8,[fp,#-232]
.fibL4245:
	mov r8,#0
	str r8,[fp,#-228]
	ldr r8,[fp,#-260]
	cmp r8,#0
	bne .fibL4251
.fibL4249:
	mov r8,#0
	str r8,[fp,#-228]
.fibL4250:
	ldr r8,[fp,#-232]
	cmp r8,#0
	beq .fibL4256
.fibL4253:
	mov r8,#1
	str r8,[fp,#-672]
.fibL4255:
	mov r8,#0
	str r8,[fp,#-224]
	mov r8,#0
	str r8,[fp,#-220]
	ldr r8,[fp,#-804]
	cmp r8,#0
	beq .fibL4261
.fibL4258:
	mov r8,#1
	str r8,[fp,#-220]
.fibL4260:
	mov r8,#0
	str r8,[fp,#-216]
	ldr r8,[fp,#-804]
	cmp r8,#0
	bne .fibL4266
.fibL4264:
	mov r8,#0
	str r8,[fp,#-216]
.fibL4265:
	mov r8,#0
	str r8,[fp,#-212]
	ldr r8,[fp,#-216]
	cmp r8,#0
	beq .fibL4268
.fibL4269:
	mov r8,#0
	str r8,[fp,#-212]
.fibL4270:
	ldr r8,[fp,#-220]
	cmp r8,#0
	bne .fibL4274
.fibL4272:
	mov r8,#0
	str r8,[fp,#-224]
.fibL4273:
	mov r8,#0
	str r8,[fp,#-208]
	ldr r8,[fp,#-224]
	cmp r8,#0
	beq .fibL4279
.fibL4276:
	mov r8,#1
	str r8,[fp,#-208]
.fibL4278:
	mov r8,#0
	str r8,[fp,#-204]
	ldr r8,[fp,#-224]
	cmp r8,#0
	bne .fibL4284
.fibL4282:
	mov r8,#0
	str r8,[fp,#-204]
.fibL4283:
	mov r8,#0
	str r8,[fp,#-200]
	ldr r8,[fp,#-204]
	cmp r8,#0
	beq .fibL4286
.fibL4287:
	mov r8,#0
	str r8,[fp,#-200]
.fibL4288:
	ldr r8,[fp,#-208]
	cmp r8,#0
	bne .fibL4292
.fibL4290:
	mov r8,#0
	str r8,[fp,#-608]
.fibL4291:
	mov r8,#0
	str r8,[fp,#-196]
	ldr r8,[fp,#-804]
	cmp r8,#0
	bne .fibL4297
.fibL4295:
	mov r8,#0
	str r8,[fp,#-196]
.fibL4296:
	mov r8,#0
	str r8,[fp,#-192]
	ldr r8,[fp,#-224]
	cmp r8,#0
	bne .fibL4302
.fibL4300:
	mov r8,#0
	str r8,[fp,#-192]
.fibL4301:
	ldr r8,[fp,#-196]
	cmp r8,#0
	beq .fibL4307
.fibL4304:
	mov r8,#1
	str r8,[fp,#-668]
.fibL4306:
	mov r8,#0
	str r8,[fp,#-188]
	mov r8,#0
	str r8,[fp,#-184]
	ldr r8,[fp,#-800]
	cmp r8,#0
	beq .fibL4312
.fibL4309:
	mov r8,#1
	str r8,[fp,#-184]
.fibL4311:
	mov r8,#0
	str r8,[fp,#-180]
	ldr r8,[fp,#-800]
	cmp r8,#0
	bne .fibL4317
.fibL4315:
	mov r8,#0
	str r8,[fp,#-180]
.fibL4316:
	mov r8,#0
	str r8,[fp,#-176]
	ldr r8,[fp,#-180]
	cmp r8,#0
	beq .fibL4319
.fibL4320:
	mov r8,#0
	str r8,[fp,#-176]
.fibL4321:
	ldr r8,[fp,#-184]
	cmp r8,#0
	bne .fibL4325
.fibL4323:
	mov r8,#0
	str r8,[fp,#-188]
.fibL4324:
	mov r8,#0
	str r8,[fp,#-172]
	ldr r8,[fp,#-188]
	cmp r8,#0
	beq .fibL4330
.fibL4327:
	mov r8,#1
	str r8,[fp,#-172]
.fibL4329:
	mov r8,#0
	str r8,[fp,#-168]
	ldr r8,[fp,#-188]
	cmp r8,#0
	bne .fibL4335
.fibL4333:
	mov r8,#0
	str r8,[fp,#-168]
.fibL4334:
	mov r8,#0
	str r8,[fp,#-164]
	ldr r8,[fp,#-168]
	cmp r8,#0
	beq .fibL4337
.fibL4338:
	mov r8,#0
	str r8,[fp,#-164]
.fibL4339:
	ldr r8,[fp,#-172]
	cmp r8,#0
	bne .fibL4343
.fibL4341:
	mov r8,#0
	str r8,[fp,#-604]
.fibL4342:
	mov r8,#0
	str r8,[fp,#-160]
	ldr r8,[fp,#-800]
	cmp r8,#0
	bne .fibL4348
.fibL4346:
	mov r8,#0
	str r8,[fp,#-160]
.fibL4347:
	mov r8,#0
	str r8,[fp,#-156]
	ldr r8,[fp,#-188]
	cmp r8,#0
	bne .fibL4353
.fibL4351:
	mov r8,#0
	str r8,[fp,#-156]
.fibL4352:
	ldr r8,[fp,#-160]
	cmp r8,#0
	beq .fibL4358
.fibL4355:
	mov r8,#1
	str r8,[fp,#-664]
.fibL4357:
	mov r8,#0
	str r8,[fp,#-152]
	mov r8,#0
	str r8,[fp,#-148]
	ldr r8,[fp,#-796]
	cmp r8,#0
	beq .fibL4363
.fibL4360:
	mov r8,#1
	str r8,[fp,#-148]
.fibL4362:
	mov r8,#0
	str r8,[fp,#-144]
	ldr r8,[fp,#-796]
	cmp r8,#0
	bne .fibL4368
.fibL4366:
	mov r8,#0
	str r8,[fp,#-144]
.fibL4367:
	mov r8,#0
	str r8,[fp,#-140]
	ldr r8,[fp,#-144]
	cmp r8,#0
	beq .fibL4370
.fibL4371:
	mov r8,#0
	str r8,[fp,#-140]
.fibL4372:
	ldr r8,[fp,#-148]
	cmp r8,#0
	bne .fibL4376
.fibL4374:
	mov r8,#0
	str r8,[fp,#-152]
.fibL4375:
	mov r8,#0
	str r8,[fp,#-136]
	ldr r8,[fp,#-152]
	cmp r8,#0
	beq .fibL4381
.fibL4378:
	mov r8,#1
	str r8,[fp,#-136]
.fibL4380:
	mov r8,#0
	str r8,[fp,#-132]
	ldr r8,[fp,#-152]
	cmp r8,#0
	bne .fibL4386
.fibL4384:
	mov r8,#0
	str r8,[fp,#-132]
.fibL4385:
	mov r8,#0
	str r8,[fp,#-128]
	ldr r8,[fp,#-132]
	cmp r8,#0
	beq .fibL4388
.fibL4389:
	mov r8,#0
	str r8,[fp,#-128]
.fibL4390:
	ldr r8,[fp,#-136]
	cmp r8,#0
	bne .fibL4394
.fibL4392:
	mov r8,#0
	str r8,[fp,#-600]
.fibL4393:
	mov r8,#0
	str r8,[fp,#-124]
	ldr r8,[fp,#-796]
	cmp r8,#0
	bne .fibL4399
.fibL4397:
	mov r8,#0
	str r8,[fp,#-124]
.fibL4398:
	mov r8,#0
	str r8,[fp,#-120]
	ldr r8,[fp,#-152]
	cmp r8,#0
	bne .fibL4404
.fibL4402:
	mov r8,#0
	str r8,[fp,#-120]
.fibL4403:
	ldr r8,[fp,#-124]
	cmp r8,#0
	beq .fibL4409
.fibL4406:
	mov r8,#1
	str r8,[fp,#-660]
.fibL4408:
	mov r8,#0
	str r8,[fp,#-116]
	mov r8,#0
	str r8,[fp,#-112]
	ldr r8,[fp,#-792]
	cmp r8,#0
	beq .fibL4414
.fibL4411:
	mov r8,#1
	str r8,[fp,#-112]
.fibL4413:
	mov r8,#0
	str r8,[fp,#-108]
	ldr r8,[fp,#-792]
	cmp r8,#0
	bne .fibL4419
.fibL4417:
	mov r8,#0
	str r8,[fp,#-108]
.fibL4418:
	mov r8,#0
	str r8,[fp,#-104]
	ldr r8,[fp,#-108]
	cmp r8,#0
	beq .fibL4421
.fibL4422:
	mov r8,#0
	str r8,[fp,#-104]
.fibL4423:
	ldr r8,[fp,#-112]
	cmp r8,#0
	bne .fibL4427
.fibL4425:
	mov r8,#0
	str r8,[fp,#-116]
.fibL4426:
	mov r8,#0
	str r8,[fp,#-100]
	ldr r8,[fp,#-116]
	cmp r8,#0
	beq .fibL4432
.fibL4429:
	mov r8,#1
	str r8,[fp,#-100]
.fibL4431:
	mov r8,#0
	str r8,[fp,#-96]
	ldr r8,[fp,#-116]
	cmp r8,#0
	bne .fibL4437
.fibL4435:
	mov r8,#0
	str r8,[fp,#-96]
.fibL4436:
	mov r8,#0
	str r8,[fp,#-92]
	ldr r8,[fp,#-96]
	cmp r8,#0
	beq .fibL4439
.fibL4440:
	mov r8,#0
	str r8,[fp,#-92]
.fibL4441:
	ldr r8,[fp,#-100]
	cmp r8,#0
	bne .fibL4445
.fibL4443:
	mov r8,#0
	str r8,[fp,#-596]
.fibL4444:
	mov r8,#0
	str r8,[fp,#-88]
	ldr r8,[fp,#-792]
	cmp r8,#0
	bne .fibL4450
.fibL4448:
	mov r8,#0
	str r8,[fp,#-88]
.fibL4449:
	mov r8,#0
	str r8,[fp,#-84]
	ldr r8,[fp,#-116]
	cmp r8,#0
	bne .fibL4455
.fibL4453:
	mov r8,#0
	str r8,[fp,#-84]
.fibL4454:
	ldr r8,[fp,#-88]
	cmp r8,#0
	beq .fibL4460
.fibL4457:
	mov r8,#1
	str r8,[fp,#-656]
.fibL4459:
	mov r8,#0
	str r8,[fp,#-80]
	mov r8,#0
	str r8,[fp,#-76]
	ldr r8,[fp,#-788]
	cmp r8,#0
	beq .fibL4465
.fibL4462:
	mov r8,#1
	str r8,[fp,#-76]
.fibL4464:
	mov r8,#0
	str r8,[fp,#-72]
	ldr r8,[fp,#-788]
	cmp r8,#0
	bne .fibL4470
.fibL4468:
	mov r8,#0
	str r8,[fp,#-72]
.fibL4469:
	mov r8,#0
	str r8,[fp,#-68]
	ldr r8,[fp,#-72]
	cmp r8,#0
	beq .fibL4472
.fibL4473:
	mov r8,#0
	str r8,[fp,#-68]
.fibL4474:
	ldr r8,[fp,#-76]
	cmp r8,#0
	bne .fibL4478
.fibL4476:
	mov r8,#0
	str r8,[fp,#-80]
.fibL4477:
	mov r8,#0
	str r8,[fp,#-64]
	ldr r8,[fp,#-80]
	cmp r8,#0
	beq .fibL4483
.fibL4480:
	mov r8,#1
	str r8,[fp,#-64]
.fibL4482:
	mov r8,#0
	str r8,[fp,#-60]
	ldr r8,[fp,#-80]
	cmp r8,#0
	bne .fibL4488
.fibL4486:
	mov r8,#0
	str r8,[fp,#-60]
.fibL4487:
	mov r8,#0
	str r8,[fp,#-56]
	ldr r8,[fp,#-60]
	cmp r8,#0
	beq .fibL4490
.fibL4491:
	mov r8,#0
	str r8,[fp,#-56]
.fibL4492:
	ldr r8,[fp,#-64]
	cmp r8,#0
	bne .fibL4496
.fibL4494:
	mov r8,#0
	str r8,[fp,#-592]
.fibL4495:
	mov r8,#0
	str r8,[fp,#-52]
	ldr r8,[fp,#-788]
	cmp r8,#0
	bne .fibL4501
.fibL4499:
	mov r8,#0
	str r8,[fp,#-52]
.fibL4500:
	mov r8,#0
	str r8,[fp,#-48]
	ldr r8,[fp,#-80]
	cmp r8,#0
	bne .fibL4506
.fibL4504:
	mov r8,#0
	str r8,[fp,#-48]
.fibL4505:
	ldr r8,[fp,#-52]
	cmp r8,#0
	beq .fibL4511
.fibL4508:
	mov r8,#1
	str r8,[fp,#-652]
.fibL4510:
	mov r8,#0
	str r8,[fp,#-44]
	mov r8,#0
	str r8,[fp,#-40]
	ldr r8,[fp,#-784]
	cmp r8,#0
	beq .fibL4516
.fibL4513:
	mov r8,#1
	str r8,[fp,#-40]
.fibL4515:
	mov r8,#0
	str r8,[fp,#-36]
	ldr r8,[fp,#-784]
	cmp r8,#0
	bne .fibL4521
.fibL4519:
	mov r8,#0
	str r8,[fp,#-36]
.fibL4520:
	mov r8,#0
	str r8,[fp,#-32]
	ldr r8,[fp,#-36]
	cmp r8,#0
	beq .fibL4523
.fibL4524:
	mov r8,#0
	str r8,[fp,#-32]
.fibL4525:
	ldr r8,[fp,#-40]
	cmp r8,#0
	bne .fibL4529
.fibL4527:
	mov r8,#0
	str r8,[fp,#-44]
.fibL4528:
	mov r8,#0
	str r8,[fp,#-28]
	ldr r8,[fp,#-44]
	cmp r8,#0
	beq .fibL4534
.fibL4531:
	mov r8,#1
	str r8,[fp,#-28]
.fibL4533:
	mov r8,#0
	str r8,[fp,#-24]
	ldr r8,[fp,#-44]
	cmp r8,#0
	bne .fibL4539
.fibL4537:
	mov r8,#0
	str r8,[fp,#-24]
.fibL4538:
	mov r8,#0
	str r8,[fp,#-20]
	ldr r8,[fp,#-24]
	cmp r8,#0
	beq .fibL4541
.fibL4542:
	mov r8,#0
	str r8,[fp,#-20]
.fibL4543:
	ldr r8,[fp,#-28]
	cmp r8,#0
	bne .fibL4547
.fibL4545:
	mov r8,#0
	str r8,[fp,#-588]
.fibL4546:
	mov r8,#0
	str r8,[fp,#-16]
	ldr r8,[fp,#-784]
	cmp r8,#0
	bne .fibL4552
.fibL4550:
	mov r8,#0
	str r8,[fp,#-16]
.fibL4551:
	mov r8,#0
	str r8,[fp,#-12]
	ldr r8,[fp,#-44]
	cmp r8,#0
	bne .fibL4557
.fibL4555:
	mov r8,#0
	str r8,[fp,#-12]
.fibL4556:
	ldr r8,[fp,#-16]
	cmp r8,#0
	beq .fibL4562
.fibL4559:
	mov r8,#1
	str r8,[fp,#-848]
.fibL4561:
	mov r8,#0
	str r8,[fp,#-852]
	ldr r8,[fp,#-852]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-588]
	add r5,r2,r8
	str r5,[fp,#-852]
	ldr r8,[fp,#-852]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-592]
	add r5,r2,r8
	str r5,[fp,#-852]
	ldr r8,[fp,#-852]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-596]
	add r5,r2,r8
	str r5,[fp,#-852]
	ldr r8,[fp,#-852]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-600]
	add r5,r2,r8
	str r5,[fp,#-852]
	ldr r8,[fp,#-852]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-604]
	add r5,r2,r8
	str r5,[fp,#-852]
	ldr r8,[fp,#-852]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-608]
	add r5,r2,r8
	str r5,[fp,#-852]
	ldr r8,[fp,#-852]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-612]
	add r5,r2,r8
	str r5,[fp,#-852]
	ldr r8,[fp,#-852]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-616]
	add r5,r2,r8
	str r5,[fp,#-852]
	ldr r8,[fp,#-852]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-620]
	add r5,r2,r8
	str r5,[fp,#-852]
	ldr r8,[fp,#-852]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-624]
	add r5,r2,r8
	str r5,[fp,#-852]
	ldr r8,[fp,#-852]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-628]
	add r5,r2,r8
	str r5,[fp,#-852]
	ldr r8,[fp,#-852]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-632]
	add r5,r2,r8
	str r5,[fp,#-852]
	ldr r8,[fp,#-852]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-636]
	add r5,r2,r8
	str r5,[fp,#-852]
	ldr r8,[fp,#-852]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-640]
	add r5,r2,r8
	str r5,[fp,#-852]
	ldr r8,[fp,#-852]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-644]
	add r5,r2,r8
	str r5,[fp,#-852]
	ldr r8,[fp,#-852]
	mov r5,#2
	mul r2,r8,r5
	ldr r8,[fp,#-648]
	add r5,r2,r8
	str r5,[fp,#-852]
	ldr r8,[fp,#-852]
	mov r0,r8
	movw r9,#5064
	movt r9,#0  @ 5064
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.fibL4562:
	ldr r8,[fp,#-12]
	cmp r8,#0
	bne .fibL4559
.fibL4560:
	mov r8,#0
	str r8,[fp,#-848]
	bl .fibL4561
.fibL4557:
	ldr r8,[fp,#-652]
	cmp r8,#0
	beq .fibL4555
.fibL4554:
	mov r8,#1
	str r8,[fp,#-12]
	bl .fibL4556
.fibL4552:
	ldr r8,[fp,#-716]
	cmp r8,#0
	beq .fibL4550
.fibL4549:
	mov r8,#1
	str r8,[fp,#-16]
	bl .fibL4551
.fibL4547:
	ldr r8,[fp,#-20]
	cmp r8,#0
	beq .fibL4545
.fibL4544:
	mov r8,#1
	str r8,[fp,#-588]
	bl .fibL4546
.fibL4541:
	mov r8,#1
	str r8,[fp,#-20]
	bl .fibL4543
.fibL4539:
	ldr r8,[fp,#-652]
	cmp r8,#0
	beq .fibL4537
.fibL4536:
	mov r8,#1
	str r8,[fp,#-24]
	bl .fibL4538
.fibL4534:
	ldr r8,[fp,#-652]
	cmp r8,#0
	bne .fibL4531
.fibL4532:
	mov r8,#0
	str r8,[fp,#-28]
	bl .fibL4533
.fibL4529:
	ldr r8,[fp,#-32]
	cmp r8,#0
	beq .fibL4527
.fibL4526:
	mov r8,#1
	str r8,[fp,#-44]
	bl .fibL4528
.fibL4523:
	mov r8,#1
	str r8,[fp,#-32]
	bl .fibL4525
.fibL4521:
	ldr r8,[fp,#-716]
	cmp r8,#0
	beq .fibL4519
.fibL4518:
	mov r8,#1
	str r8,[fp,#-36]
	bl .fibL4520
.fibL4516:
	ldr r8,[fp,#-716]
	cmp r8,#0
	bne .fibL4513
.fibL4514:
	mov r8,#0
	str r8,[fp,#-40]
	bl .fibL4515
.fibL4511:
	ldr r8,[fp,#-48]
	cmp r8,#0
	bne .fibL4508
.fibL4509:
	mov r8,#0
	str r8,[fp,#-652]
	bl .fibL4510
.fibL4506:
	ldr r8,[fp,#-656]
	cmp r8,#0
	beq .fibL4504
.fibL4503:
	mov r8,#1
	str r8,[fp,#-48]
	bl .fibL4505
.fibL4501:
	ldr r8,[fp,#-720]
	cmp r8,#0
	beq .fibL4499
.fibL4498:
	mov r8,#1
	str r8,[fp,#-52]
	bl .fibL4500
.fibL4496:
	ldr r8,[fp,#-56]
	cmp r8,#0
	beq .fibL4494
.fibL4493:
	mov r8,#1
	str r8,[fp,#-592]
	bl .fibL4495
.fibL4490:
	mov r8,#1
	str r8,[fp,#-56]
	bl .fibL4492
.fibL4488:
	ldr r8,[fp,#-656]
	cmp r8,#0
	beq .fibL4486
.fibL4485:
	mov r8,#1
	str r8,[fp,#-60]
	bl .fibL4487
.fibL4483:
	ldr r8,[fp,#-656]
	cmp r8,#0
	bne .fibL4480
.fibL4481:
	mov r8,#0
	str r8,[fp,#-64]
	bl .fibL4482
.fibL4478:
	ldr r8,[fp,#-68]
	cmp r8,#0
	beq .fibL4476
.fibL4475:
	mov r8,#1
	str r8,[fp,#-80]
	bl .fibL4477
.fibL4472:
	mov r8,#1
	str r8,[fp,#-68]
	bl .fibL4474
.fibL4470:
	ldr r8,[fp,#-720]
	cmp r8,#0
	beq .fibL4468
.fibL4467:
	mov r8,#1
	str r8,[fp,#-72]
	bl .fibL4469
.fibL4465:
	ldr r8,[fp,#-720]
	cmp r8,#0
	bne .fibL4462
.fibL4463:
	mov r8,#0
	str r8,[fp,#-76]
	bl .fibL4464
.fibL4460:
	ldr r8,[fp,#-84]
	cmp r8,#0
	bne .fibL4457
.fibL4458:
	mov r8,#0
	str r8,[fp,#-656]
	bl .fibL4459
.fibL4455:
	ldr r8,[fp,#-660]
	cmp r8,#0
	beq .fibL4453
.fibL4452:
	mov r8,#1
	str r8,[fp,#-84]
	bl .fibL4454
.fibL4450:
	ldr r8,[fp,#-724]
	cmp r8,#0
	beq .fibL4448
.fibL4447:
	mov r8,#1
	str r8,[fp,#-88]
	bl .fibL4449
.fibL4445:
	ldr r8,[fp,#-92]
	cmp r8,#0
	beq .fibL4443
.fibL4442:
	mov r8,#1
	str r8,[fp,#-596]
	bl .fibL4444
.fibL4439:
	mov r8,#1
	str r8,[fp,#-92]
	bl .fibL4441
.fibL4437:
	ldr r8,[fp,#-660]
	cmp r8,#0
	beq .fibL4435
.fibL4434:
	mov r8,#1
	str r8,[fp,#-96]
	bl .fibL4436
.fibL4432:
	ldr r8,[fp,#-660]
	cmp r8,#0
	bne .fibL4429
.fibL4430:
	mov r8,#0
	str r8,[fp,#-100]
	bl .fibL4431
.fibL4427:
	ldr r8,[fp,#-104]
	cmp r8,#0
	beq .fibL4425
.fibL4424:
	mov r8,#1
	str r8,[fp,#-116]
	bl .fibL4426
.fibL4421:
	mov r8,#1
	str r8,[fp,#-104]
	bl .fibL4423
.fibL4419:
	ldr r8,[fp,#-724]
	cmp r8,#0
	beq .fibL4417
.fibL4416:
	mov r8,#1
	str r8,[fp,#-108]
	bl .fibL4418
.fibL4414:
	ldr r8,[fp,#-724]
	cmp r8,#0
	bne .fibL4411
.fibL4412:
	mov r8,#0
	str r8,[fp,#-112]
	bl .fibL4413
.fibL4409:
	ldr r8,[fp,#-120]
	cmp r8,#0
	bne .fibL4406
.fibL4407:
	mov r8,#0
	str r8,[fp,#-660]
	bl .fibL4408
.fibL4404:
	ldr r8,[fp,#-664]
	cmp r8,#0
	beq .fibL4402
.fibL4401:
	mov r8,#1
	str r8,[fp,#-120]
	bl .fibL4403
.fibL4399:
	ldr r8,[fp,#-728]
	cmp r8,#0
	beq .fibL4397
.fibL4396:
	mov r8,#1
	str r8,[fp,#-124]
	bl .fibL4398
.fibL4394:
	ldr r8,[fp,#-128]
	cmp r8,#0
	beq .fibL4392
.fibL4391:
	mov r8,#1
	str r8,[fp,#-600]
	bl .fibL4393
.fibL4388:
	mov r8,#1
	str r8,[fp,#-128]
	bl .fibL4390
.fibL4386:
	ldr r8,[fp,#-664]
	cmp r8,#0
	beq .fibL4384
.fibL4383:
	mov r8,#1
	str r8,[fp,#-132]
	bl .fibL4385
.fibL4381:
	ldr r8,[fp,#-664]
	cmp r8,#0
	bne .fibL4378
.fibL4379:
	mov r8,#0
	str r8,[fp,#-136]
	bl .fibL4380
.fibL4376:
	ldr r8,[fp,#-140]
	cmp r8,#0
	beq .fibL4374
.fibL4373:
	mov r8,#1
	str r8,[fp,#-152]
	bl .fibL4375
.fibL4370:
	mov r8,#1
	str r8,[fp,#-140]
	bl .fibL4372
.fibL4368:
	ldr r8,[fp,#-728]
	cmp r8,#0
	beq .fibL4366
.fibL4365:
	mov r8,#1
	str r8,[fp,#-144]
	bl .fibL4367
.fibL4363:
	ldr r8,[fp,#-728]
	cmp r8,#0
	bne .fibL4360
.fibL4361:
	mov r8,#0
	str r8,[fp,#-148]
	bl .fibL4362
.fibL4358:
	ldr r8,[fp,#-156]
	cmp r8,#0
	bne .fibL4355
.fibL4356:
	mov r8,#0
	str r8,[fp,#-664]
	bl .fibL4357
.fibL4353:
	ldr r8,[fp,#-668]
	cmp r8,#0
	beq .fibL4351
.fibL4350:
	mov r8,#1
	str r8,[fp,#-156]
	bl .fibL4352
.fibL4348:
	ldr r8,[fp,#-732]
	cmp r8,#0
	beq .fibL4346
.fibL4345:
	mov r8,#1
	str r8,[fp,#-160]
	bl .fibL4347
.fibL4343:
	ldr r8,[fp,#-164]
	cmp r8,#0
	beq .fibL4341
.fibL4340:
	mov r8,#1
	str r8,[fp,#-604]
	bl .fibL4342
.fibL4337:
	mov r8,#1
	str r8,[fp,#-164]
	bl .fibL4339
.fibL4335:
	ldr r8,[fp,#-668]
	cmp r8,#0
	beq .fibL4333
.fibL4332:
	mov r8,#1
	str r8,[fp,#-168]
	bl .fibL4334
.fibL4330:
	ldr r8,[fp,#-668]
	cmp r8,#0
	bne .fibL4327
.fibL4328:
	mov r8,#0
	str r8,[fp,#-172]
	bl .fibL4329
.fibL4325:
	ldr r8,[fp,#-176]
	cmp r8,#0
	beq .fibL4323
.fibL4322:
	mov r8,#1
	str r8,[fp,#-188]
	bl .fibL4324
.fibL4319:
	mov r8,#1
	str r8,[fp,#-176]
	bl .fibL4321
.fibL4317:
	ldr r8,[fp,#-732]
	cmp r8,#0
	beq .fibL4315
.fibL4314:
	mov r8,#1
	str r8,[fp,#-180]
	bl .fibL4316
.fibL4312:
	ldr r8,[fp,#-732]
	cmp r8,#0
	bne .fibL4309
.fibL4310:
	mov r8,#0
	str r8,[fp,#-184]
	bl .fibL4311
.fibL4307:
	ldr r8,[fp,#-192]
	cmp r8,#0
	bne .fibL4304
.fibL4305:
	mov r8,#0
	str r8,[fp,#-668]
	bl .fibL4306
.fibL4302:
	ldr r8,[fp,#-672]
	cmp r8,#0
	beq .fibL4300
.fibL4299:
	mov r8,#1
	str r8,[fp,#-192]
	bl .fibL4301
.fibL4297:
	ldr r8,[fp,#-736]
	cmp r8,#0
	beq .fibL4295
.fibL4294:
	mov r8,#1
	str r8,[fp,#-196]
	bl .fibL4296
.fibL4292:
	ldr r8,[fp,#-200]
	cmp r8,#0
	beq .fibL4290
.fibL4289:
	mov r8,#1
	str r8,[fp,#-608]
	bl .fibL4291
.fibL4286:
	mov r8,#1
	str r8,[fp,#-200]
	bl .fibL4288
.fibL4284:
	ldr r8,[fp,#-672]
	cmp r8,#0
	beq .fibL4282
.fibL4281:
	mov r8,#1
	str r8,[fp,#-204]
	bl .fibL4283
.fibL4279:
	ldr r8,[fp,#-672]
	cmp r8,#0
	bne .fibL4276
.fibL4277:
	mov r8,#0
	str r8,[fp,#-208]
	bl .fibL4278
.fibL4274:
	ldr r8,[fp,#-212]
	cmp r8,#0
	beq .fibL4272
.fibL4271:
	mov r8,#1
	str r8,[fp,#-224]
	bl .fibL4273
.fibL4268:
	mov r8,#1
	str r8,[fp,#-212]
	bl .fibL4270
.fibL4266:
	ldr r8,[fp,#-736]
	cmp r8,#0
	beq .fibL4264
.fibL4263:
	mov r8,#1
	str r8,[fp,#-216]
	bl .fibL4265
.fibL4261:
	ldr r8,[fp,#-736]
	cmp r8,#0
	bne .fibL4258
.fibL4259:
	mov r8,#0
	str r8,[fp,#-220]
	bl .fibL4260
.fibL4256:
	ldr r8,[fp,#-228]
	cmp r8,#0
	bne .fibL4253
.fibL4254:
	mov r8,#0
	str r8,[fp,#-672]
	bl .fibL4255
.fibL4251:
	ldr r8,[fp,#-676]
	cmp r8,#0
	beq .fibL4249
.fibL4248:
	mov r8,#1
	str r8,[fp,#-228]
	bl .fibL4250
.fibL4246:
	ldr r8,[fp,#-740]
	cmp r8,#0
	beq .fibL4244
.fibL4243:
	mov r8,#1
	str r8,[fp,#-232]
	bl .fibL4245
.fibL4241:
	ldr r8,[fp,#-236]
	cmp r8,#0
	beq .fibL4239
.fibL4238:
	mov r8,#1
	str r8,[fp,#-612]
	bl .fibL4240
.fibL4235:
	mov r8,#1
	str r8,[fp,#-236]
	bl .fibL4237
.fibL4233:
	ldr r8,[fp,#-676]
	cmp r8,#0
	beq .fibL4231
.fibL4230:
	mov r8,#1
	str r8,[fp,#-240]
	bl .fibL4232
.fibL4228:
	ldr r8,[fp,#-676]
	cmp r8,#0
	bne .fibL4225
.fibL4226:
	mov r8,#0
	str r8,[fp,#-244]
	bl .fibL4227
.fibL4223:
	ldr r8,[fp,#-248]
	cmp r8,#0
	beq .fibL4221
.fibL4220:
	mov r8,#1
	str r8,[fp,#-260]
	bl .fibL4222
.fibL4217:
	mov r8,#1
	str r8,[fp,#-248]
	bl .fibL4219
.fibL4215:
	ldr r8,[fp,#-740]
	cmp r8,#0
	beq .fibL4213
.fibL4212:
	mov r8,#1
	str r8,[fp,#-252]
	bl .fibL4214
.fibL4210:
	ldr r8,[fp,#-740]
	cmp r8,#0
	bne .fibL4207
.fibL4208:
	mov r8,#0
	str r8,[fp,#-256]
	bl .fibL4209
.fibL4205:
	ldr r8,[fp,#-264]
	cmp r8,#0
	bne .fibL4202
.fibL4203:
	mov r8,#0
	str r8,[fp,#-676]
	bl .fibL4204
.fibL4200:
	ldr r8,[fp,#-680]
	cmp r8,#0
	beq .fibL4198
.fibL4197:
	mov r8,#1
	str r8,[fp,#-264]
	bl .fibL4199
.fibL4195:
	ldr r8,[fp,#-744]
	cmp r8,#0
	beq .fibL4193
.fibL4192:
	mov r8,#1
	str r8,[fp,#-268]
	bl .fibL4194
.fibL4190:
	ldr r8,[fp,#-272]
	cmp r8,#0
	beq .fibL4188
.fibL4187:
	mov r8,#1
	str r8,[fp,#-616]
	bl .fibL4189
.fibL4184:
	mov r8,#1
	str r8,[fp,#-272]
	bl .fibL4186
.fibL4182:
	ldr r8,[fp,#-680]
	cmp r8,#0
	beq .fibL4180
.fibL4179:
	mov r8,#1
	str r8,[fp,#-276]
	bl .fibL4181
.fibL4177:
	ldr r8,[fp,#-680]
	cmp r8,#0
	bne .fibL4174
.fibL4175:
	mov r8,#0
	str r8,[fp,#-280]
	bl .fibL4176
.fibL4172:
	ldr r8,[fp,#-284]
	cmp r8,#0
	beq .fibL4170
.fibL4169:
	mov r8,#1
	str r8,[fp,#-296]
	bl .fibL4171
.fibL4166:
	mov r8,#1
	str r8,[fp,#-284]
	bl .fibL4168
.fibL4164:
	ldr r8,[fp,#-744]
	cmp r8,#0
	beq .fibL4162
.fibL4161:
	mov r8,#1
	str r8,[fp,#-288]
	bl .fibL4163
.fibL4159:
	ldr r8,[fp,#-744]
	cmp r8,#0
	bne .fibL4156
.fibL4157:
	mov r8,#0
	str r8,[fp,#-292]
	bl .fibL4158
.fibL4154:
	ldr r8,[fp,#-300]
	cmp r8,#0
	bne .fibL4151
.fibL4152:
	mov r8,#0
	str r8,[fp,#-680]
	bl .fibL4153
.fibL4149:
	ldr r8,[fp,#-684]
	cmp r8,#0
	beq .fibL4147
.fibL4146:
	mov r8,#1
	str r8,[fp,#-300]
	bl .fibL4148
.fibL4144:
	ldr r8,[fp,#-748]
	cmp r8,#0
	beq .fibL4142
.fibL4141:
	mov r8,#1
	str r8,[fp,#-304]
	bl .fibL4143
.fibL4139:
	ldr r8,[fp,#-308]
	cmp r8,#0
	beq .fibL4137
.fibL4136:
	mov r8,#1
	str r8,[fp,#-620]
	bl .fibL4138
.fibL4133:
	mov r8,#1
	str r8,[fp,#-308]
	bl .fibL4135
.fibL4131:
	ldr r8,[fp,#-684]
	cmp r8,#0
	beq .fibL4129
.fibL4128:
	mov r8,#1
	str r8,[fp,#-312]
	bl .fibL4130
.fibL4126:
	ldr r8,[fp,#-684]
	cmp r8,#0
	bne .fibL4123
.fibL4124:
	mov r8,#0
	str r8,[fp,#-316]
	bl .fibL4125
.fibL4121:
	ldr r8,[fp,#-320]
	cmp r8,#0
	beq .fibL4119
.fibL4118:
	mov r8,#1
	str r8,[fp,#-332]
	bl .fibL4120
.fibL4115:
	mov r8,#1
	str r8,[fp,#-320]
	bl .fibL4117
.fibL4113:
	ldr r8,[fp,#-748]
	cmp r8,#0
	beq .fibL4111
.fibL4110:
	mov r8,#1
	str r8,[fp,#-324]
	bl .fibL4112
.fibL4108:
	ldr r8,[fp,#-748]
	cmp r8,#0
	bne .fibL4105
.fibL4106:
	mov r8,#0
	str r8,[fp,#-328]
	bl .fibL4107
.fibL4103:
	ldr r8,[fp,#-336]
	cmp r8,#0
	bne .fibL4100
.fibL4101:
	mov r8,#0
	str r8,[fp,#-684]
	bl .fibL4102
.fibL4098:
	ldr r8,[fp,#-688]
	cmp r8,#0
	beq .fibL4096
.fibL4095:
	mov r8,#1
	str r8,[fp,#-336]
	bl .fibL4097
.fibL4093:
	ldr r8,[fp,#-752]
	cmp r8,#0
	beq .fibL4091
.fibL4090:
	mov r8,#1
	str r8,[fp,#-340]
	bl .fibL4092
.fibL4088:
	ldr r8,[fp,#-344]
	cmp r8,#0
	beq .fibL4086
.fibL4085:
	mov r8,#1
	str r8,[fp,#-624]
	bl .fibL4087
.fibL4082:
	mov r8,#1
	str r8,[fp,#-344]
	bl .fibL4084
.fibL4080:
	ldr r8,[fp,#-688]
	cmp r8,#0
	beq .fibL4078
.fibL4077:
	mov r8,#1
	str r8,[fp,#-348]
	bl .fibL4079
.fibL4075:
	ldr r8,[fp,#-688]
	cmp r8,#0
	bne .fibL4072
.fibL4073:
	mov r8,#0
	str r8,[fp,#-352]
	bl .fibL4074
.fibL4070:
	ldr r8,[fp,#-356]
	cmp r8,#0
	beq .fibL4068
.fibL4067:
	mov r8,#1
	str r8,[fp,#-368]
	bl .fibL4069
.fibL4064:
	mov r8,#1
	str r8,[fp,#-356]
	bl .fibL4066
.fibL4062:
	ldr r8,[fp,#-752]
	cmp r8,#0
	beq .fibL4060
.fibL4059:
	mov r8,#1
	str r8,[fp,#-360]
	bl .fibL4061
.fibL4057:
	ldr r8,[fp,#-752]
	cmp r8,#0
	bne .fibL4054
.fibL4055:
	mov r8,#0
	str r8,[fp,#-364]
	bl .fibL4056
.fibL4052:
	ldr r8,[fp,#-372]
	cmp r8,#0
	bne .fibL4049
.fibL4050:
	mov r8,#0
	str r8,[fp,#-688]
	bl .fibL4051
.fibL4047:
	ldr r8,[fp,#-692]
	cmp r8,#0
	beq .fibL4045
.fibL4044:
	mov r8,#1
	str r8,[fp,#-372]
	bl .fibL4046
.fibL4042:
	ldr r8,[fp,#-756]
	cmp r8,#0
	beq .fibL4040
.fibL4039:
	mov r8,#1
	str r8,[fp,#-376]
	bl .fibL4041
.fibL4037:
	ldr r8,[fp,#-380]
	cmp r8,#0
	beq .fibL4035
.fibL4034:
	mov r8,#1
	str r8,[fp,#-628]
	bl .fibL4036
.fibL4031:
	mov r8,#1
	str r8,[fp,#-380]
	bl .fibL4033
.fibL4029:
	ldr r8,[fp,#-692]
	cmp r8,#0
	beq .fibL4027
.fibL4026:
	mov r8,#1
	str r8,[fp,#-384]
	bl .fibL4028
.fibL4024:
	ldr r8,[fp,#-692]
	cmp r8,#0
	bne .fibL4021
.fibL4022:
	mov r8,#0
	str r8,[fp,#-388]
	bl .fibL4023
.fibL4019:
	ldr r8,[fp,#-392]
	cmp r8,#0
	beq .fibL4017
.fibL4016:
	mov r8,#1
	str r8,[fp,#-404]
	bl .fibL4018
.fibL4013:
	mov r8,#1
	str r8,[fp,#-392]
	bl .fibL4015
.fibL4011:
	ldr r8,[fp,#-756]
	cmp r8,#0
	beq .fibL4009
.fibL4008:
	mov r8,#1
	str r8,[fp,#-396]
	bl .fibL4010
.fibL4006:
	ldr r8,[fp,#-756]
	cmp r8,#0
	bne .fibL4003
.fibL4004:
	mov r8,#0
	str r8,[fp,#-400]
	bl .fibL4005
.fibL4001:
	ldr r8,[fp,#-408]
	cmp r8,#0
	bne .fibL3998
.fibL3999:
	mov r8,#0
	str r8,[fp,#-692]
	bl .fibL4000
.fibL3996:
	ldr r8,[fp,#-696]
	cmp r8,#0
	beq .fibL3994
.fibL3993:
	mov r8,#1
	str r8,[fp,#-408]
	bl .fibL3995
.fibL3991:
	ldr r8,[fp,#-760]
	cmp r8,#0
	beq .fibL3989
.fibL3988:
	mov r8,#1
	str r8,[fp,#-412]
	bl .fibL3990
.fibL3986:
	ldr r8,[fp,#-416]
	cmp r8,#0
	beq .fibL3984
.fibL3983:
	mov r8,#1
	str r8,[fp,#-632]
	bl .fibL3985
.fibL3980:
	mov r8,#1
	str r8,[fp,#-416]
	bl .fibL3982
.fibL3978:
	ldr r8,[fp,#-696]
	cmp r8,#0
	beq .fibL3976
.fibL3975:
	mov r8,#1
	str r8,[fp,#-420]
	bl .fibL3977
.fibL3973:
	ldr r8,[fp,#-696]
	cmp r8,#0
	bne .fibL3970
.fibL3971:
	mov r8,#0
	str r8,[fp,#-424]
	bl .fibL3972
.fibL3968:
	ldr r8,[fp,#-428]
	cmp r8,#0
	beq .fibL3966
.fibL3965:
	mov r8,#1
	str r8,[fp,#-440]
	bl .fibL3967
.fibL3962:
	mov r8,#1
	str r8,[fp,#-428]
	bl .fibL3964
.fibL3960:
	ldr r8,[fp,#-760]
	cmp r8,#0
	beq .fibL3958
.fibL3957:
	mov r8,#1
	str r8,[fp,#-432]
	bl .fibL3959
.fibL3955:
	ldr r8,[fp,#-760]
	cmp r8,#0
	bne .fibL3952
.fibL3953:
	mov r8,#0
	str r8,[fp,#-436]
	bl .fibL3954
.fibL3950:
	ldr r8,[fp,#-444]
	cmp r8,#0
	bne .fibL3947
.fibL3948:
	mov r8,#0
	str r8,[fp,#-696]
	bl .fibL3949
.fibL3945:
	ldr r8,[fp,#-700]
	cmp r8,#0
	beq .fibL3943
.fibL3942:
	mov r8,#1
	str r8,[fp,#-444]
	bl .fibL3944
.fibL3940:
	ldr r8,[fp,#-764]
	cmp r8,#0
	beq .fibL3938
.fibL3937:
	mov r8,#1
	str r8,[fp,#-448]
	bl .fibL3939
.fibL3935:
	ldr r8,[fp,#-452]
	cmp r8,#0
	beq .fibL3933
.fibL3932:
	mov r8,#1
	str r8,[fp,#-636]
	bl .fibL3934
.fibL3929:
	mov r8,#1
	str r8,[fp,#-452]
	bl .fibL3931
.fibL3927:
	ldr r8,[fp,#-700]
	cmp r8,#0
	beq .fibL3925
.fibL3924:
	mov r8,#1
	str r8,[fp,#-456]
	bl .fibL3926
.fibL3922:
	ldr r8,[fp,#-700]
	cmp r8,#0
	bne .fibL3919
.fibL3920:
	mov r8,#0
	str r8,[fp,#-460]
	bl .fibL3921
.fibL3917:
	ldr r8,[fp,#-464]
	cmp r8,#0
	beq .fibL3915
.fibL3914:
	mov r8,#1
	str r8,[fp,#-476]
	bl .fibL3916
.fibL3911:
	mov r8,#1
	str r8,[fp,#-464]
	bl .fibL3913
.fibL3909:
	ldr r8,[fp,#-764]
	cmp r8,#0
	beq .fibL3907
.fibL3906:
	mov r8,#1
	str r8,[fp,#-468]
	bl .fibL3908
.fibL3904:
	ldr r8,[fp,#-764]
	cmp r8,#0
	bne .fibL3901
.fibL3902:
	mov r8,#0
	str r8,[fp,#-472]
	bl .fibL3903
.fibL3899:
	ldr r8,[fp,#-480]
	cmp r8,#0
	bne .fibL3896
.fibL3897:
	mov r8,#0
	str r8,[fp,#-700]
	bl .fibL3898
.fibL3894:
	ldr r8,[fp,#-704]
	cmp r8,#0
	beq .fibL3892
.fibL3891:
	mov r8,#1
	str r8,[fp,#-480]
	bl .fibL3893
.fibL3889:
	ldr r8,[fp,#-768]
	cmp r8,#0
	beq .fibL3887
.fibL3886:
	mov r8,#1
	str r8,[fp,#-484]
	bl .fibL3888
.fibL3884:
	ldr r8,[fp,#-488]
	cmp r8,#0
	beq .fibL3882
.fibL3881:
	mov r8,#1
	str r8,[fp,#-640]
	bl .fibL3883
.fibL3878:
	mov r8,#1
	str r8,[fp,#-488]
	bl .fibL3880
.fibL3876:
	ldr r8,[fp,#-704]
	cmp r8,#0
	beq .fibL3874
.fibL3873:
	mov r8,#1
	str r8,[fp,#-492]
	bl .fibL3875
.fibL3871:
	ldr r8,[fp,#-704]
	cmp r8,#0
	bne .fibL3868
.fibL3869:
	mov r8,#0
	str r8,[fp,#-496]
	bl .fibL3870
.fibL3866:
	ldr r8,[fp,#-500]
	cmp r8,#0
	beq .fibL3864
.fibL3863:
	mov r8,#1
	str r8,[fp,#-512]
	bl .fibL3865
.fibL3860:
	mov r8,#1
	str r8,[fp,#-500]
	bl .fibL3862
.fibL3858:
	ldr r8,[fp,#-768]
	cmp r8,#0
	beq .fibL3856
.fibL3855:
	mov r8,#1
	str r8,[fp,#-504]
	bl .fibL3857
.fibL3853:
	ldr r8,[fp,#-768]
	cmp r8,#0
	bne .fibL3850
.fibL3851:
	mov r8,#0
	str r8,[fp,#-508]
	bl .fibL3852
.fibL3848:
	ldr r8,[fp,#-516]
	cmp r8,#0
	bne .fibL3845
.fibL3846:
	mov r8,#0
	str r8,[fp,#-704]
	bl .fibL3847
.fibL3843:
	ldr r8,[fp,#-708]
	cmp r8,#0
	beq .fibL3841
.fibL3840:
	mov r8,#1
	str r8,[fp,#-516]
	bl .fibL3842
.fibL3838:
	ldr r8,[fp,#-772]
	cmp r8,#0
	beq .fibL3836
.fibL3835:
	mov r8,#1
	str r8,[fp,#-520]
	bl .fibL3837
.fibL3833:
	ldr r8,[fp,#-524]
	cmp r8,#0
	beq .fibL3831
.fibL3830:
	mov r8,#1
	str r8,[fp,#-644]
	bl .fibL3832
.fibL3827:
	mov r8,#1
	str r8,[fp,#-524]
	bl .fibL3829
.fibL3825:
	ldr r8,[fp,#-708]
	cmp r8,#0
	beq .fibL3823
.fibL3822:
	mov r8,#1
	str r8,[fp,#-528]
	bl .fibL3824
.fibL3820:
	ldr r8,[fp,#-708]
	cmp r8,#0
	bne .fibL3817
.fibL3818:
	mov r8,#0
	str r8,[fp,#-532]
	bl .fibL3819
.fibL3815:
	ldr r8,[fp,#-536]
	cmp r8,#0
	beq .fibL3813
.fibL3812:
	mov r8,#1
	str r8,[fp,#-548]
	bl .fibL3814
.fibL3809:
	mov r8,#1
	str r8,[fp,#-536]
	bl .fibL3811
.fibL3807:
	ldr r8,[fp,#-772]
	cmp r8,#0
	beq .fibL3805
.fibL3804:
	mov r8,#1
	str r8,[fp,#-540]
	bl .fibL3806
.fibL3802:
	ldr r8,[fp,#-772]
	cmp r8,#0
	bne .fibL3799
.fibL3800:
	mov r8,#0
	str r8,[fp,#-544]
	bl .fibL3801
.fibL3797:
	ldr r8,[fp,#-552]
	cmp r8,#0
	bne .fibL3794
.fibL3795:
	mov r8,#0
	str r8,[fp,#-708]
	bl .fibL3796
.fibL3792:
	mov r8,#0
	cmp r8,#0
	beq .fibL3790
.fibL3789:
	mov r8,#1
	str r8,[fp,#-552]
	bl .fibL3791
.fibL3787:
	ldr r8,[fp,#-776]
	cmp r8,#0
	beq .fibL3785
.fibL3784:
	mov r8,#1
	str r8,[fp,#-556]
	bl .fibL3786
.fibL3782:
	ldr r8,[fp,#-560]
	cmp r8,#0
	beq .fibL3780
.fibL3779:
	mov r8,#1
	str r8,[fp,#-648]
	bl .fibL3781
.fibL3776:
	mov r8,#1
	str r8,[fp,#-560]
	bl .fibL3778
.fibL3774:
	mov r8,#0
	cmp r8,#0
	beq .fibL3772
.fibL3771:
	mov r8,#1
	str r8,[fp,#-564]
	bl .fibL3773
.fibL3769:
	mov r8,#0
	cmp r8,#0
	bne .fibL3766
.fibL3767:
	mov r8,#0
	str r8,[fp,#-568]
	bl .fibL3768
.fibL3764:
	ldr r8,[fp,#-572]
	cmp r8,#0
	beq .fibL3762
.fibL3761:
	mov r8,#1
	str r8,[fp,#-584]
	bl .fibL3763
.fibL3758:
	mov r8,#1
	str r8,[fp,#-572]
	bl .fibL3760
.fibL3756:
	ldr r8,[fp,#-776]
	cmp r8,#0
	beq .fibL3754
.fibL3753:
	mov r8,#1
	str r8,[fp,#-576]
	bl .fibL3755
.fibL3751:
	ldr r8,[fp,#-776]
	cmp r8,#0
	bne .fibL3748
.fibL3749:
	mov r8,#0
	str r8,[fp,#-580]
	bl .fibL3750
.fibL3746:
	ldr r8,[fp,#-716]
	rsb r5,r8,#0
	str r5,[fp,#-716]
	bl .fibL3747
.fibL3744:
	ldr r8,[fp,#-720]
	rsb r5,r8,#0
	str r5,[fp,#-720]
	bl .fibL3745
.fibL3742:
	ldr r8,[fp,#-724]
	rsb r5,r8,#0
	str r5,[fp,#-724]
	bl .fibL3743
.fibL3740:
	ldr r8,[fp,#-728]
	rsb r5,r8,#0
	str r5,[fp,#-728]
	bl .fibL3741
.fibL3738:
	ldr r8,[fp,#-732]
	rsb r5,r8,#0
	str r5,[fp,#-732]
	bl .fibL3739
.fibL3736:
	ldr r8,[fp,#-736]
	rsb r5,r8,#0
	str r5,[fp,#-736]
	bl .fibL3737
.fibL3734:
	ldr r8,[fp,#-740]
	rsb r5,r8,#0
	str r5,[fp,#-740]
	bl .fibL3735
.fibL3732:
	ldr r8,[fp,#-744]
	rsb r5,r8,#0
	str r5,[fp,#-744]
	bl .fibL3733
.fibL3730:
	ldr r8,[fp,#-748]
	rsb r5,r8,#0
	str r5,[fp,#-748]
	bl .fibL3731
.fibL3728:
	ldr r8,[fp,#-752]
	rsb r5,r8,#0
	str r5,[fp,#-752]
	bl .fibL3729
.fibL3726:
	ldr r8,[fp,#-756]
	rsb r5,r8,#0
	str r5,[fp,#-756]
	bl .fibL3727
.fibL3724:
	ldr r8,[fp,#-760]
	rsb r5,r8,#0
	str r5,[fp,#-760]
	bl .fibL3725
.fibL3722:
	ldr r8,[fp,#-764]
	rsb r5,r8,#0
	str r5,[fp,#-764]
	bl .fibL3723
.fibL3720:
	ldr r8,[fp,#-768]
	rsb r5,r8,#0
	str r5,[fp,#-768]
	bl .fibL3721
.fibL3718:
	ldr r8,[fp,#-772]
	rsb r5,r8,#0
	str r5,[fp,#-772]
	bl .fibL3719
.fibL3716:
	ldr r8,[fp,#-776]
	rsb r5,r8,#0
	str r5,[fp,#-776]
	bl .fibL3717
.fibL3714:
	ldr r8,[fp,#-784]
	rsb r5,r8,#0
	str r5,[fp,#-784]
	bl .fibL3715
.fibL3712:
	ldr r8,[fp,#-788]
	rsb r5,r8,#0
	str r5,[fp,#-788]
	bl .fibL3713
.fibL3710:
	ldr r8,[fp,#-792]
	rsb r5,r8,#0
	str r5,[fp,#-792]
	bl .fibL3711
.fibL3708:
	ldr r8,[fp,#-796]
	rsb r5,r8,#0
	str r5,[fp,#-796]
	bl .fibL3709
.fibL3706:
	ldr r8,[fp,#-800]
	rsb r5,r8,#0
	str r5,[fp,#-800]
	bl .fibL3707
.fibL3704:
	ldr r8,[fp,#-804]
	rsb r5,r8,#0
	str r5,[fp,#-804]
	bl .fibL3705
.fibL3702:
	ldr r8,[fp,#-808]
	rsb r5,r8,#0
	str r5,[fp,#-808]
	bl .fibL3703
.fibL3700:
	ldr r8,[fp,#-812]
	rsb r5,r8,#0
	str r5,[fp,#-812]
	bl .fibL3701
.fibL3698:
	ldr r8,[fp,#-816]
	rsb r5,r8,#0
	str r5,[fp,#-816]
	bl .fibL3699
.fibL3696:
	ldr r8,[fp,#-820]
	rsb r5,r8,#0
	str r5,[fp,#-820]
	bl .fibL3697
.fibL3694:
	ldr r8,[fp,#-824]
	rsb r5,r8,#0
	str r5,[fp,#-824]
	bl .fibL3695
.fibL3692:
	ldr r8,[fp,#-828]
	rsb r5,r8,#0
	str r5,[fp,#-828]
	bl .fibL3693
.fibL3690:
	ldr r8,[fp,#-832]
	rsb r5,r8,#0
	str r5,[fp,#-832]
	bl .fibL3691
.fibL3688:
	ldr r8,[fp,#-836]
	rsb r5,r8,#0
	str r5,[fp,#-836]
	bl .fibL3689
.fibL3686:
	ldr r8,[fp,#-840]
	rsb r5,r8,#0
	str r5,[fp,#-840]
	bl .fibL3687
.fibL3684:
	ldr r8,[fp,#-844]
	rsb r5,r8,#0
	str r5,[fp,#-844]
	bl .fibL3685
.fibL3682:
	ldr r8,[fp,#-860]
	cmp r8,#0
	bne .fibL3679
.fibL3680:
	mov r8,#0
	str r8,[fp,#-1696]
	bl .fibL3681
.fibL3677:
	ldr r8,[fp,#-1500]
	cmp r8,#0
	beq .fibL3675
.fibL3674:
	mov r8,#1
	str r8,[fp,#-860]
	bl .fibL3676
.fibL3672:
	ldr r8,[fp,#-1564]
	cmp r8,#0
	beq .fibL3670
.fibL3669:
	mov r8,#1
	str r8,[fp,#-864]
	bl .fibL3671
.fibL3667:
	ldr r8,[fp,#-868]
	cmp r8,#0
	beq .fibL3665
.fibL3664:
	mov r8,#1
	str r8,[fp,#-1436]
	bl .fibL3666
.fibL3661:
	mov r8,#1
	str r8,[fp,#-868]
	bl .fibL3663
.fibL3659:
	ldr r8,[fp,#-1500]
	cmp r8,#0
	beq .fibL3657
.fibL3656:
	mov r8,#1
	str r8,[fp,#-872]
	bl .fibL3658
.fibL3654:
	ldr r8,[fp,#-1500]
	cmp r8,#0
	bne .fibL3651
.fibL3652:
	mov r8,#0
	str r8,[fp,#-876]
	bl .fibL3653
.fibL3649:
	ldr r8,[fp,#-880]
	cmp r8,#0
	beq .fibL3647
.fibL3646:
	mov r8,#1
	str r8,[fp,#-892]
	bl .fibL3648
.fibL3643:
	mov r8,#1
	str r8,[fp,#-880]
	bl .fibL3645
.fibL3641:
	ldr r8,[fp,#-1564]
	cmp r8,#0
	beq .fibL3639
.fibL3638:
	mov r8,#1
	str r8,[fp,#-884]
	bl .fibL3640
.fibL3636:
	ldr r8,[fp,#-1564]
	cmp r8,#0
	bne .fibL3633
.fibL3634:
	mov r8,#0
	str r8,[fp,#-888]
	bl .fibL3635
.fibL3631:
	ldr r8,[fp,#-896]
	cmp r8,#0
	bne .fibL3628
.fibL3629:
	mov r8,#0
	str r8,[fp,#-1500]
	bl .fibL3630
.fibL3626:
	ldr r8,[fp,#-1504]
	cmp r8,#0
	beq .fibL3624
.fibL3623:
	mov r8,#1
	str r8,[fp,#-896]
	bl .fibL3625
.fibL3621:
	ldr r8,[fp,#-1568]
	cmp r8,#0
	beq .fibL3619
.fibL3618:
	mov r8,#1
	str r8,[fp,#-900]
	bl .fibL3620
.fibL3616:
	ldr r8,[fp,#-904]
	cmp r8,#0
	beq .fibL3614
.fibL3613:
	mov r8,#1
	str r8,[fp,#-1440]
	bl .fibL3615
.fibL3610:
	mov r8,#1
	str r8,[fp,#-904]
	bl .fibL3612
.fibL3608:
	ldr r8,[fp,#-1504]
	cmp r8,#0
	beq .fibL3606
.fibL3605:
	mov r8,#1
	str r8,[fp,#-908]
	bl .fibL3607
.fibL3603:
	ldr r8,[fp,#-1504]
	cmp r8,#0
	bne .fibL3600
.fibL3601:
	mov r8,#0
	str r8,[fp,#-912]
	bl .fibL3602
.fibL3598:
	ldr r8,[fp,#-916]
	cmp r8,#0
	beq .fibL3596
.fibL3595:
	mov r8,#1
	str r8,[fp,#-928]
	bl .fibL3597
.fibL3592:
	mov r8,#1
	str r8,[fp,#-916]
	bl .fibL3594
.fibL3590:
	ldr r8,[fp,#-1568]
	cmp r8,#0
	beq .fibL3588
.fibL3587:
	mov r8,#1
	str r8,[fp,#-920]
	bl .fibL3589
.fibL3585:
	ldr r8,[fp,#-1568]
	cmp r8,#0
	bne .fibL3582
.fibL3583:
	mov r8,#0
	str r8,[fp,#-924]
	bl .fibL3584
.fibL3580:
	ldr r8,[fp,#-932]
	cmp r8,#0
	bne .fibL3577
.fibL3578:
	mov r8,#0
	str r8,[fp,#-1504]
	bl .fibL3579
.fibL3575:
	ldr r8,[fp,#-1508]
	cmp r8,#0
	beq .fibL3573
.fibL3572:
	mov r8,#1
	str r8,[fp,#-932]
	bl .fibL3574
.fibL3570:
	ldr r8,[fp,#-1572]
	cmp r8,#0
	beq .fibL3568
.fibL3567:
	mov r8,#1
	str r8,[fp,#-936]
	bl .fibL3569
.fibL3565:
	ldr r8,[fp,#-940]
	cmp r8,#0
	beq .fibL3563
.fibL3562:
	mov r8,#1
	str r8,[fp,#-1444]
	bl .fibL3564
.fibL3559:
	mov r8,#1
	str r8,[fp,#-940]
	bl .fibL3561
.fibL3557:
	ldr r8,[fp,#-1508]
	cmp r8,#0
	beq .fibL3555
.fibL3554:
	mov r8,#1
	str r8,[fp,#-944]
	bl .fibL3556
.fibL3552:
	ldr r8,[fp,#-1508]
	cmp r8,#0
	bne .fibL3549
.fibL3550:
	mov r8,#0
	str r8,[fp,#-948]
	bl .fibL3551
.fibL3547:
	ldr r8,[fp,#-952]
	cmp r8,#0
	beq .fibL3545
.fibL3544:
	mov r8,#1
	str r8,[fp,#-964]
	bl .fibL3546
.fibL3541:
	mov r8,#1
	str r8,[fp,#-952]
	bl .fibL3543
.fibL3539:
	ldr r8,[fp,#-1572]
	cmp r8,#0
	beq .fibL3537
.fibL3536:
	mov r8,#1
	str r8,[fp,#-956]
	bl .fibL3538
.fibL3534:
	ldr r8,[fp,#-1572]
	cmp r8,#0
	bne .fibL3531
.fibL3532:
	mov r8,#0
	str r8,[fp,#-960]
	bl .fibL3533
.fibL3529:
	ldr r8,[fp,#-968]
	cmp r8,#0
	bne .fibL3526
.fibL3527:
	mov r8,#0
	str r8,[fp,#-1508]
	bl .fibL3528
.fibL3524:
	ldr r8,[fp,#-1512]
	cmp r8,#0
	beq .fibL3522
.fibL3521:
	mov r8,#1
	str r8,[fp,#-968]
	bl .fibL3523
.fibL3519:
	ldr r8,[fp,#-1576]
	cmp r8,#0
	beq .fibL3517
.fibL3516:
	mov r8,#1
	str r8,[fp,#-972]
	bl .fibL3518
.fibL3514:
	ldr r8,[fp,#-976]
	cmp r8,#0
	beq .fibL3512
.fibL3511:
	mov r8,#1
	str r8,[fp,#-1448]
	bl .fibL3513
.fibL3508:
	mov r8,#1
	str r8,[fp,#-976]
	bl .fibL3510
.fibL3506:
	ldr r8,[fp,#-1512]
	cmp r8,#0
	beq .fibL3504
.fibL3503:
	mov r8,#1
	str r8,[fp,#-980]
	bl .fibL3505
.fibL3501:
	ldr r8,[fp,#-1512]
	cmp r8,#0
	bne .fibL3498
.fibL3499:
	mov r8,#0
	str r8,[fp,#-984]
	bl .fibL3500
.fibL3496:
	ldr r8,[fp,#-988]
	cmp r8,#0
	beq .fibL3494
.fibL3493:
	mov r8,#1
	str r8,[fp,#-1000]
	bl .fibL3495
.fibL3490:
	mov r8,#1
	str r8,[fp,#-988]
	bl .fibL3492
.fibL3488:
	ldr r8,[fp,#-1576]
	cmp r8,#0
	beq .fibL3486
.fibL3485:
	mov r8,#1
	str r8,[fp,#-992]
	bl .fibL3487
.fibL3483:
	ldr r8,[fp,#-1576]
	cmp r8,#0
	bne .fibL3480
.fibL3481:
	mov r8,#0
	str r8,[fp,#-996]
	bl .fibL3482
.fibL3478:
	ldr r8,[fp,#-1004]
	cmp r8,#0
	bne .fibL3475
.fibL3476:
	mov r8,#0
	str r8,[fp,#-1512]
	bl .fibL3477
.fibL3473:
	ldr r8,[fp,#-1516]
	cmp r8,#0
	beq .fibL3471
.fibL3470:
	mov r8,#1
	str r8,[fp,#-1004]
	bl .fibL3472
.fibL3468:
	ldr r8,[fp,#-1580]
	cmp r8,#0
	beq .fibL3466
.fibL3465:
	mov r8,#1
	str r8,[fp,#-1008]
	bl .fibL3467
.fibL3463:
	ldr r8,[fp,#-1012]
	cmp r8,#0
	beq .fibL3461
.fibL3460:
	mov r8,#1
	str r8,[fp,#-1452]
	bl .fibL3462
.fibL3457:
	mov r8,#1
	str r8,[fp,#-1012]
	bl .fibL3459
.fibL3455:
	ldr r8,[fp,#-1516]
	cmp r8,#0
	beq .fibL3453
.fibL3452:
	mov r8,#1
	str r8,[fp,#-1016]
	bl .fibL3454
.fibL3450:
	ldr r8,[fp,#-1516]
	cmp r8,#0
	bne .fibL3447
.fibL3448:
	mov r8,#0
	str r8,[fp,#-1020]
	bl .fibL3449
.fibL3445:
	ldr r8,[fp,#-1024]
	cmp r8,#0
	beq .fibL3443
.fibL3442:
	mov r8,#1
	str r8,[fp,#-1036]
	bl .fibL3444
.fibL3439:
	mov r8,#1
	str r8,[fp,#-1024]
	bl .fibL3441
.fibL3437:
	ldr r8,[fp,#-1580]
	cmp r8,#0
	beq .fibL3435
.fibL3434:
	mov r8,#1
	str r8,[fp,#-1028]
	bl .fibL3436
.fibL3432:
	ldr r8,[fp,#-1580]
	cmp r8,#0
	bne .fibL3429
.fibL3430:
	mov r8,#0
	str r8,[fp,#-1032]
	bl .fibL3431
.fibL3427:
	ldr r8,[fp,#-1040]
	cmp r8,#0
	bne .fibL3424
.fibL3425:
	mov r8,#0
	str r8,[fp,#-1516]
	bl .fibL3426
.fibL3422:
	ldr r8,[fp,#-1520]
	cmp r8,#0
	beq .fibL3420
.fibL3419:
	mov r8,#1
	str r8,[fp,#-1040]
	bl .fibL3421
.fibL3417:
	ldr r8,[fp,#-1584]
	cmp r8,#0
	beq .fibL3415
.fibL3414:
	mov r8,#1
	str r8,[fp,#-1044]
	bl .fibL3416
.fibL3412:
	ldr r8,[fp,#-1048]
	cmp r8,#0
	beq .fibL3410
.fibL3409:
	mov r8,#1
	str r8,[fp,#-1456]
	bl .fibL3411
.fibL3406:
	mov r8,#1
	str r8,[fp,#-1048]
	bl .fibL3408
.fibL3404:
	ldr r8,[fp,#-1520]
	cmp r8,#0
	beq .fibL3402
.fibL3401:
	mov r8,#1
	str r8,[fp,#-1052]
	bl .fibL3403
.fibL3399:
	ldr r8,[fp,#-1520]
	cmp r8,#0
	bne .fibL3396
.fibL3397:
	mov r8,#0
	str r8,[fp,#-1056]
	bl .fibL3398
.fibL3394:
	ldr r8,[fp,#-1060]
	cmp r8,#0
	beq .fibL3392
.fibL3391:
	mov r8,#1
	str r8,[fp,#-1072]
	bl .fibL3393
.fibL3388:
	mov r8,#1
	str r8,[fp,#-1060]
	bl .fibL3390
.fibL3386:
	ldr r8,[fp,#-1584]
	cmp r8,#0
	beq .fibL3384
.fibL3383:
	mov r8,#1
	str r8,[fp,#-1064]
	bl .fibL3385
.fibL3381:
	ldr r8,[fp,#-1584]
	cmp r8,#0
	bne .fibL3378
.fibL3379:
	mov r8,#0
	str r8,[fp,#-1068]
	bl .fibL3380
.fibL3376:
	ldr r8,[fp,#-1076]
	cmp r8,#0
	bne .fibL3373
.fibL3374:
	mov r8,#0
	str r8,[fp,#-1520]
	bl .fibL3375
.fibL3371:
	ldr r8,[fp,#-1524]
	cmp r8,#0
	beq .fibL3369
.fibL3368:
	mov r8,#1
	str r8,[fp,#-1076]
	bl .fibL3370
.fibL3366:
	ldr r8,[fp,#-1588]
	cmp r8,#0
	beq .fibL3364
.fibL3363:
	mov r8,#1
	str r8,[fp,#-1080]
	bl .fibL3365
.fibL3361:
	ldr r8,[fp,#-1084]
	cmp r8,#0
	beq .fibL3359
.fibL3358:
	mov r8,#1
	str r8,[fp,#-1460]
	bl .fibL3360
.fibL3355:
	mov r8,#1
	str r8,[fp,#-1084]
	bl .fibL3357
.fibL3353:
	ldr r8,[fp,#-1524]
	cmp r8,#0
	beq .fibL3351
.fibL3350:
	mov r8,#1
	str r8,[fp,#-1088]
	bl .fibL3352
.fibL3348:
	ldr r8,[fp,#-1524]
	cmp r8,#0
	bne .fibL3345
.fibL3346:
	mov r8,#0
	str r8,[fp,#-1092]
	bl .fibL3347
.fibL3343:
	ldr r8,[fp,#-1096]
	cmp r8,#0
	beq .fibL3341
.fibL3340:
	mov r8,#1
	str r8,[fp,#-1108]
	bl .fibL3342
.fibL3337:
	mov r8,#1
	str r8,[fp,#-1096]
	bl .fibL3339
.fibL3335:
	ldr r8,[fp,#-1588]
	cmp r8,#0
	beq .fibL3333
.fibL3332:
	mov r8,#1
	str r8,[fp,#-1100]
	bl .fibL3334
.fibL3330:
	ldr r8,[fp,#-1588]
	cmp r8,#0
	bne .fibL3327
.fibL3328:
	mov r8,#0
	str r8,[fp,#-1104]
	bl .fibL3329
.fibL3325:
	ldr r8,[fp,#-1112]
	cmp r8,#0
	bne .fibL3322
.fibL3323:
	mov r8,#0
	str r8,[fp,#-1524]
	bl .fibL3324
.fibL3320:
	ldr r8,[fp,#-1528]
	cmp r8,#0
	beq .fibL3318
.fibL3317:
	mov r8,#1
	str r8,[fp,#-1112]
	bl .fibL3319
.fibL3315:
	ldr r8,[fp,#-1592]
	cmp r8,#0
	beq .fibL3313
.fibL3312:
	mov r8,#1
	str r8,[fp,#-1116]
	bl .fibL3314
.fibL3310:
	ldr r8,[fp,#-1120]
	cmp r8,#0
	beq .fibL3308
.fibL3307:
	mov r8,#1
	str r8,[fp,#-1464]
	bl .fibL3309
.fibL3304:
	mov r8,#1
	str r8,[fp,#-1120]
	bl .fibL3306
.fibL3302:
	ldr r8,[fp,#-1528]
	cmp r8,#0
	beq .fibL3300
.fibL3299:
	mov r8,#1
	str r8,[fp,#-1124]
	bl .fibL3301
.fibL3297:
	ldr r8,[fp,#-1528]
	cmp r8,#0
	bne .fibL3294
.fibL3295:
	mov r8,#0
	str r8,[fp,#-1128]
	bl .fibL3296
.fibL3292:
	ldr r8,[fp,#-1132]
	cmp r8,#0
	beq .fibL3290
.fibL3289:
	mov r8,#1
	str r8,[fp,#-1144]
	bl .fibL3291
.fibL3286:
	mov r8,#1
	str r8,[fp,#-1132]
	bl .fibL3288
.fibL3284:
	ldr r8,[fp,#-1592]
	cmp r8,#0
	beq .fibL3282
.fibL3281:
	mov r8,#1
	str r8,[fp,#-1136]
	bl .fibL3283
.fibL3279:
	ldr r8,[fp,#-1592]
	cmp r8,#0
	bne .fibL3276
.fibL3277:
	mov r8,#0
	str r8,[fp,#-1140]
	bl .fibL3278
.fibL3274:
	ldr r8,[fp,#-1148]
	cmp r8,#0
	bne .fibL3271
.fibL3272:
	mov r8,#0
	str r8,[fp,#-1528]
	bl .fibL3273
.fibL3269:
	ldr r8,[fp,#-1532]
	cmp r8,#0
	beq .fibL3267
.fibL3266:
	mov r8,#1
	str r8,[fp,#-1148]
	bl .fibL3268
.fibL3264:
	ldr r8,[fp,#-1596]
	cmp r8,#0
	beq .fibL3262
.fibL3261:
	mov r8,#1
	str r8,[fp,#-1152]
	bl .fibL3263
.fibL3259:
	ldr r8,[fp,#-1156]
	cmp r8,#0
	beq .fibL3257
.fibL3256:
	mov r8,#1
	str r8,[fp,#-1468]
	bl .fibL3258
.fibL3253:
	mov r8,#1
	str r8,[fp,#-1156]
	bl .fibL3255
.fibL3251:
	ldr r8,[fp,#-1532]
	cmp r8,#0
	beq .fibL3249
.fibL3248:
	mov r8,#1
	str r8,[fp,#-1160]
	bl .fibL3250
.fibL3246:
	ldr r8,[fp,#-1532]
	cmp r8,#0
	bne .fibL3243
.fibL3244:
	mov r8,#0
	str r8,[fp,#-1164]
	bl .fibL3245
.fibL3241:
	ldr r8,[fp,#-1168]
	cmp r8,#0
	beq .fibL3239
.fibL3238:
	mov r8,#1
	str r8,[fp,#-1180]
	bl .fibL3240
.fibL3235:
	mov r8,#1
	str r8,[fp,#-1168]
	bl .fibL3237
.fibL3233:
	ldr r8,[fp,#-1596]
	cmp r8,#0
	beq .fibL3231
.fibL3230:
	mov r8,#1
	str r8,[fp,#-1172]
	bl .fibL3232
.fibL3228:
	ldr r8,[fp,#-1596]
	cmp r8,#0
	bne .fibL3225
.fibL3226:
	mov r8,#0
	str r8,[fp,#-1176]
	bl .fibL3227
.fibL3223:
	ldr r8,[fp,#-1184]
	cmp r8,#0
	bne .fibL3220
.fibL3221:
	mov r8,#0
	str r8,[fp,#-1532]
	bl .fibL3222
.fibL3218:
	ldr r8,[fp,#-1536]
	cmp r8,#0
	beq .fibL3216
.fibL3215:
	mov r8,#1
	str r8,[fp,#-1184]
	bl .fibL3217
.fibL3213:
	ldr r8,[fp,#-1600]
	cmp r8,#0
	beq .fibL3211
.fibL3210:
	mov r8,#1
	str r8,[fp,#-1188]
	bl .fibL3212
.fibL3208:
	ldr r8,[fp,#-1192]
	cmp r8,#0
	beq .fibL3206
.fibL3205:
	mov r8,#1
	str r8,[fp,#-1472]
	bl .fibL3207
.fibL3202:
	mov r8,#1
	str r8,[fp,#-1192]
	bl .fibL3204
.fibL3200:
	ldr r8,[fp,#-1536]
	cmp r8,#0
	beq .fibL3198
.fibL3197:
	mov r8,#1
	str r8,[fp,#-1196]
	bl .fibL3199
.fibL3195:
	ldr r8,[fp,#-1536]
	cmp r8,#0
	bne .fibL3192
.fibL3193:
	mov r8,#0
	str r8,[fp,#-1200]
	bl .fibL3194
.fibL3190:
	ldr r8,[fp,#-1204]
	cmp r8,#0
	beq .fibL3188
.fibL3187:
	mov r8,#1
	str r8,[fp,#-1216]
	bl .fibL3189
.fibL3184:
	mov r8,#1
	str r8,[fp,#-1204]
	bl .fibL3186
.fibL3182:
	ldr r8,[fp,#-1600]
	cmp r8,#0
	beq .fibL3180
.fibL3179:
	mov r8,#1
	str r8,[fp,#-1208]
	bl .fibL3181
.fibL3177:
	ldr r8,[fp,#-1600]
	cmp r8,#0
	bne .fibL3174
.fibL3175:
	mov r8,#0
	str r8,[fp,#-1212]
	bl .fibL3176
.fibL3172:
	ldr r8,[fp,#-1220]
	cmp r8,#0
	bne .fibL3169
.fibL3170:
	mov r8,#0
	str r8,[fp,#-1536]
	bl .fibL3171
.fibL3167:
	ldr r8,[fp,#-1540]
	cmp r8,#0
	beq .fibL3165
.fibL3164:
	mov r8,#1
	str r8,[fp,#-1220]
	bl .fibL3166
.fibL3162:
	ldr r8,[fp,#-1604]
	cmp r8,#0
	beq .fibL3160
.fibL3159:
	mov r8,#1
	str r8,[fp,#-1224]
	bl .fibL3161
.fibL3157:
	ldr r8,[fp,#-1228]
	cmp r8,#0
	beq .fibL3155
.fibL3154:
	mov r8,#1
	str r8,[fp,#-1476]
	bl .fibL3156
.fibL3151:
	mov r8,#1
	str r8,[fp,#-1228]
	bl .fibL3153
.fibL3149:
	ldr r8,[fp,#-1540]
	cmp r8,#0
	beq .fibL3147
.fibL3146:
	mov r8,#1
	str r8,[fp,#-1232]
	bl .fibL3148
.fibL3144:
	ldr r8,[fp,#-1540]
	cmp r8,#0
	bne .fibL3141
.fibL3142:
	mov r8,#0
	str r8,[fp,#-1236]
	bl .fibL3143
.fibL3139:
	ldr r8,[fp,#-1240]
	cmp r8,#0
	beq .fibL3137
.fibL3136:
	mov r8,#1
	str r8,[fp,#-1252]
	bl .fibL3138
.fibL3133:
	mov r8,#1
	str r8,[fp,#-1240]
	bl .fibL3135
.fibL3131:
	ldr r8,[fp,#-1604]
	cmp r8,#0
	beq .fibL3129
.fibL3128:
	mov r8,#1
	str r8,[fp,#-1244]
	bl .fibL3130
.fibL3126:
	ldr r8,[fp,#-1604]
	cmp r8,#0
	bne .fibL3123
.fibL3124:
	mov r8,#0
	str r8,[fp,#-1248]
	bl .fibL3125
.fibL3121:
	ldr r8,[fp,#-1256]
	cmp r8,#0
	bne .fibL3118
.fibL3119:
	mov r8,#0
	str r8,[fp,#-1540]
	bl .fibL3120
.fibL3116:
	ldr r8,[fp,#-1544]
	cmp r8,#0
	beq .fibL3114
.fibL3113:
	mov r8,#1
	str r8,[fp,#-1256]
	bl .fibL3115
.fibL3111:
	ldr r8,[fp,#-1608]
	cmp r8,#0
	beq .fibL3109
.fibL3108:
	mov r8,#1
	str r8,[fp,#-1260]
	bl .fibL3110
.fibL3106:
	ldr r8,[fp,#-1264]
	cmp r8,#0
	beq .fibL3104
.fibL3103:
	mov r8,#1
	str r8,[fp,#-1480]
	bl .fibL3105
.fibL3100:
	mov r8,#1
	str r8,[fp,#-1264]
	bl .fibL3102
.fibL3098:
	ldr r8,[fp,#-1544]
	cmp r8,#0
	beq .fibL3096
.fibL3095:
	mov r8,#1
	str r8,[fp,#-1268]
	bl .fibL3097
.fibL3093:
	ldr r8,[fp,#-1544]
	cmp r8,#0
	bne .fibL3090
.fibL3091:
	mov r8,#0
	str r8,[fp,#-1272]
	bl .fibL3092
.fibL3088:
	ldr r8,[fp,#-1276]
	cmp r8,#0
	beq .fibL3086
.fibL3085:
	mov r8,#1
	str r8,[fp,#-1288]
	bl .fibL3087
.fibL3082:
	mov r8,#1
	str r8,[fp,#-1276]
	bl .fibL3084
.fibL3080:
	ldr r8,[fp,#-1608]
	cmp r8,#0
	beq .fibL3078
.fibL3077:
	mov r8,#1
	str r8,[fp,#-1280]
	bl .fibL3079
.fibL3075:
	ldr r8,[fp,#-1608]
	cmp r8,#0
	bne .fibL3072
.fibL3073:
	mov r8,#0
	str r8,[fp,#-1284]
	bl .fibL3074
.fibL3070:
	ldr r8,[fp,#-1292]
	cmp r8,#0
	bne .fibL3067
.fibL3068:
	mov r8,#0
	str r8,[fp,#-1544]
	bl .fibL3069
.fibL3065:
	ldr r8,[fp,#-1548]
	cmp r8,#0
	beq .fibL3063
.fibL3062:
	mov r8,#1
	str r8,[fp,#-1292]
	bl .fibL3064
.fibL3060:
	ldr r8,[fp,#-1612]
	cmp r8,#0
	beq .fibL3058
.fibL3057:
	mov r8,#1
	str r8,[fp,#-1296]
	bl .fibL3059
.fibL3055:
	ldr r8,[fp,#-1300]
	cmp r8,#0
	beq .fibL3053
.fibL3052:
	mov r8,#1
	str r8,[fp,#-1484]
	bl .fibL3054
.fibL3049:
	mov r8,#1
	str r8,[fp,#-1300]
	bl .fibL3051
.fibL3047:
	ldr r8,[fp,#-1548]
	cmp r8,#0
	beq .fibL3045
.fibL3044:
	mov r8,#1
	str r8,[fp,#-1304]
	bl .fibL3046
.fibL3042:
	ldr r8,[fp,#-1548]
	cmp r8,#0
	bne .fibL3039
.fibL3040:
	mov r8,#0
	str r8,[fp,#-1308]
	bl .fibL3041
.fibL3037:
	ldr r8,[fp,#-1312]
	cmp r8,#0
	beq .fibL3035
.fibL3034:
	mov r8,#1
	str r8,[fp,#-1324]
	bl .fibL3036
.fibL3031:
	mov r8,#1
	str r8,[fp,#-1312]
	bl .fibL3033
.fibL3029:
	ldr r8,[fp,#-1612]
	cmp r8,#0
	beq .fibL3027
.fibL3026:
	mov r8,#1
	str r8,[fp,#-1316]
	bl .fibL3028
.fibL3024:
	ldr r8,[fp,#-1612]
	cmp r8,#0
	bne .fibL3021
.fibL3022:
	mov r8,#0
	str r8,[fp,#-1320]
	bl .fibL3023
.fibL3019:
	ldr r8,[fp,#-1328]
	cmp r8,#0
	bne .fibL3016
.fibL3017:
	mov r8,#0
	str r8,[fp,#-1548]
	bl .fibL3018
.fibL3014:
	ldr r8,[fp,#-1552]
	cmp r8,#0
	beq .fibL3012
.fibL3011:
	mov r8,#1
	str r8,[fp,#-1328]
	bl .fibL3013
.fibL3009:
	ldr r8,[fp,#-1616]
	cmp r8,#0
	beq .fibL3007
.fibL3006:
	mov r8,#1
	str r8,[fp,#-1332]
	bl .fibL3008
.fibL3004:
	ldr r8,[fp,#-1336]
	cmp r8,#0
	beq .fibL3002
.fibL3001:
	mov r8,#1
	str r8,[fp,#-1488]
	bl .fibL3003
.fibL2998:
	mov r8,#1
	str r8,[fp,#-1336]
	bl .fibL3000
.fibL2996:
	ldr r8,[fp,#-1552]
	cmp r8,#0
	beq .fibL2994
.fibL2993:
	mov r8,#1
	str r8,[fp,#-1340]
	bl .fibL2995
.fibL2991:
	ldr r8,[fp,#-1552]
	cmp r8,#0
	bne .fibL2988
.fibL2989:
	mov r8,#0
	str r8,[fp,#-1344]
	bl .fibL2990
.fibL2986:
	ldr r8,[fp,#-1348]
	cmp r8,#0
	beq .fibL2984
.fibL2983:
	mov r8,#1
	str r8,[fp,#-1360]
	bl .fibL2985
.fibL2980:
	mov r8,#1
	str r8,[fp,#-1348]
	bl .fibL2982
.fibL2978:
	ldr r8,[fp,#-1616]
	cmp r8,#0
	beq .fibL2976
.fibL2975:
	mov r8,#1
	str r8,[fp,#-1352]
	bl .fibL2977
.fibL2973:
	ldr r8,[fp,#-1616]
	cmp r8,#0
	bne .fibL2970
.fibL2971:
	mov r8,#0
	str r8,[fp,#-1356]
	bl .fibL2972
.fibL2968:
	ldr r8,[fp,#-1364]
	cmp r8,#0
	bne .fibL2965
.fibL2966:
	mov r8,#0
	str r8,[fp,#-1552]
	bl .fibL2967
.fibL2963:
	ldr r8,[fp,#-1556]
	cmp r8,#0
	beq .fibL2961
.fibL2960:
	mov r8,#1
	str r8,[fp,#-1364]
	bl .fibL2962
.fibL2958:
	ldr r8,[fp,#-1620]
	cmp r8,#0
	beq .fibL2956
.fibL2955:
	mov r8,#1
	str r8,[fp,#-1368]
	bl .fibL2957
.fibL2953:
	ldr r8,[fp,#-1372]
	cmp r8,#0
	beq .fibL2951
.fibL2950:
	mov r8,#1
	str r8,[fp,#-1492]
	bl .fibL2952
.fibL2947:
	mov r8,#1
	str r8,[fp,#-1372]
	bl .fibL2949
.fibL2945:
	ldr r8,[fp,#-1556]
	cmp r8,#0
	beq .fibL2943
.fibL2942:
	mov r8,#1
	str r8,[fp,#-1376]
	bl .fibL2944
.fibL2940:
	ldr r8,[fp,#-1556]
	cmp r8,#0
	bne .fibL2937
.fibL2938:
	mov r8,#0
	str r8,[fp,#-1380]
	bl .fibL2939
.fibL2935:
	ldr r8,[fp,#-1384]
	cmp r8,#0
	beq .fibL2933
.fibL2932:
	mov r8,#1
	str r8,[fp,#-1396]
	bl .fibL2934
.fibL2929:
	mov r8,#1
	str r8,[fp,#-1384]
	bl .fibL2931
.fibL2927:
	ldr r8,[fp,#-1620]
	cmp r8,#0
	beq .fibL2925
.fibL2924:
	mov r8,#1
	str r8,[fp,#-1388]
	bl .fibL2926
.fibL2922:
	ldr r8,[fp,#-1620]
	cmp r8,#0
	bne .fibL2919
.fibL2920:
	mov r8,#0
	str r8,[fp,#-1392]
	bl .fibL2921
.fibL2917:
	ldr r8,[fp,#-1400]
	cmp r8,#0
	bne .fibL2914
.fibL2915:
	mov r8,#0
	str r8,[fp,#-1556]
	bl .fibL2916
.fibL2912:
	mov r8,#0
	cmp r8,#0
	beq .fibL2910
.fibL2909:
	mov r8,#1
	str r8,[fp,#-1400]
	bl .fibL2911
.fibL2907:
	ldr r8,[fp,#-1624]
	cmp r8,#0
	beq .fibL2905
.fibL2904:
	mov r8,#1
	str r8,[fp,#-1404]
	bl .fibL2906
.fibL2902:
	ldr r8,[fp,#-1408]
	cmp r8,#0
	beq .fibL2900
.fibL2899:
	mov r8,#1
	str r8,[fp,#-1496]
	bl .fibL2901
.fibL2896:
	mov r8,#1
	str r8,[fp,#-1408]
	bl .fibL2898
.fibL2894:
	mov r8,#0
	cmp r8,#0
	beq .fibL2892
.fibL2891:
	mov r8,#1
	str r8,[fp,#-1412]
	bl .fibL2893
.fibL2889:
	mov r8,#0
	cmp r8,#0
	bne .fibL2886
.fibL2887:
	mov r8,#0
	str r8,[fp,#-1416]
	bl .fibL2888
.fibL2884:
	ldr r8,[fp,#-1420]
	cmp r8,#0
	beq .fibL2882
.fibL2881:
	mov r8,#1
	str r8,[fp,#-1432]
	bl .fibL2883
.fibL2878:
	mov r8,#1
	str r8,[fp,#-1420]
	bl .fibL2880
.fibL2876:
	ldr r8,[fp,#-1624]
	cmp r8,#0
	beq .fibL2874
.fibL2873:
	mov r8,#1
	str r8,[fp,#-1424]
	bl .fibL2875
.fibL2871:
	ldr r8,[fp,#-1624]
	cmp r8,#0
	bne .fibL2868
.fibL2869:
	mov r8,#0
	str r8,[fp,#-1428]
	bl .fibL2870
.fibL2866:
	ldr r8,[fp,#-1564]
	rsb r5,r8,#0
	str r5,[fp,#-1564]
	bl .fibL2867
.fibL2864:
	ldr r8,[fp,#-1568]
	rsb r5,r8,#0
	str r5,[fp,#-1568]
	bl .fibL2865
.fibL2862:
	ldr r8,[fp,#-1572]
	rsb r5,r8,#0
	str r5,[fp,#-1572]
	bl .fibL2863
.fibL2860:
	ldr r8,[fp,#-1576]
	rsb r5,r8,#0
	str r5,[fp,#-1576]
	bl .fibL2861
.fibL2858:
	ldr r8,[fp,#-1580]
	rsb r5,r8,#0
	str r5,[fp,#-1580]
	bl .fibL2859
.fibL2856:
	ldr r8,[fp,#-1584]
	rsb r5,r8,#0
	str r5,[fp,#-1584]
	bl .fibL2857
.fibL2854:
	ldr r8,[fp,#-1588]
	rsb r5,r8,#0
	str r5,[fp,#-1588]
	bl .fibL2855
.fibL2852:
	ldr r8,[fp,#-1592]
	rsb r5,r8,#0
	str r5,[fp,#-1592]
	bl .fibL2853
.fibL2850:
	ldr r8,[fp,#-1596]
	rsb r5,r8,#0
	str r5,[fp,#-1596]
	bl .fibL2851
.fibL2848:
	ldr r8,[fp,#-1600]
	rsb r5,r8,#0
	str r5,[fp,#-1600]
	bl .fibL2849
.fibL2846:
	ldr r8,[fp,#-1604]
	rsb r5,r8,#0
	str r5,[fp,#-1604]
	bl .fibL2847
.fibL2844:
	ldr r8,[fp,#-1608]
	rsb r5,r8,#0
	str r5,[fp,#-1608]
	bl .fibL2845
.fibL2842:
	ldr r8,[fp,#-1612]
	rsb r5,r8,#0
	str r5,[fp,#-1612]
	bl .fibL2843
.fibL2840:
	ldr r8,[fp,#-1616]
	rsb r5,r8,#0
	str r5,[fp,#-1616]
	bl .fibL2841
.fibL2838:
	ldr r8,[fp,#-1620]
	rsb r5,r8,#0
	str r5,[fp,#-1620]
	bl .fibL2839
.fibL2836:
	ldr r8,[fp,#-1624]
	rsb r5,r8,#0
	str r5,[fp,#-1624]
	bl .fibL2837
.fibL2834:
	ldr r8,[fp,#-1632]
	rsb r5,r8,#0
	str r5,[fp,#-1632]
	bl .fibL2835
.fibL2832:
	ldr r8,[fp,#-1636]
	rsb r5,r8,#0
	str r5,[fp,#-1636]
	bl .fibL2833
.fibL2830:
	ldr r8,[fp,#-1640]
	rsb r5,r8,#0
	str r5,[fp,#-1640]
	bl .fibL2831
.fibL2828:
	ldr r8,[fp,#-1644]
	rsb r5,r8,#0
	str r5,[fp,#-1644]
	bl .fibL2829
.fibL2826:
	ldr r8,[fp,#-1648]
	rsb r5,r8,#0
	str r5,[fp,#-1648]
	bl .fibL2827
.fibL2824:
	ldr r8,[fp,#-1652]
	rsb r5,r8,#0
	str r5,[fp,#-1652]
	bl .fibL2825
.fibL2822:
	ldr r8,[fp,#-1656]
	rsb r5,r8,#0
	str r5,[fp,#-1656]
	bl .fibL2823
.fibL2820:
	ldr r8,[fp,#-1660]
	rsb r5,r8,#0
	str r5,[fp,#-1660]
	bl .fibL2821
.fibL2818:
	ldr r8,[fp,#-1664]
	rsb r5,r8,#0
	str r5,[fp,#-1664]
	bl .fibL2819
.fibL2816:
	ldr r8,[fp,#-1668]
	rsb r5,r8,#0
	str r5,[fp,#-1668]
	bl .fibL2817
.fibL2814:
	ldr r8,[fp,#-1672]
	rsb r5,r8,#0
	str r5,[fp,#-1672]
	bl .fibL2815
.fibL2812:
	ldr r8,[fp,#-1676]
	rsb r5,r8,#0
	str r5,[fp,#-1676]
	bl .fibL2813
.fibL2810:
	ldr r8,[fp,#-1680]
	rsb r5,r8,#0
	str r5,[fp,#-1680]
	bl .fibL2811
.fibL2808:
	ldr r8,[fp,#-1684]
	rsb r5,r8,#0
	str r5,[fp,#-1684]
	bl .fibL2809
.fibL2806:
	ldr r8,[fp,#-1688]
	rsb r5,r8,#0
	str r5,[fp,#-1688]
	bl .fibL2807
.fibL2804:
	ldr r8,[fp,#-1692]
	rsb r5,r8,#0
	str r5,[fp,#-1692]
	bl .fibL2805
.fibL2802:
	ldr r8,[fp,#-1700]
	cmp r8,#0
	bne .fibL2799
.fibL2800:
	mov r8,#0
	str r8,[fp,#-2536]
	bl .fibL2801
.fibL2797:
	ldr r8,[fp,#-2340]
	cmp r8,#0
	beq .fibL2795
.fibL2794:
	mov r8,#1
	str r8,[fp,#-1700]
	bl .fibL2796
.fibL2792:
	ldr r8,[fp,#-2404]
	cmp r8,#0
	beq .fibL2790
.fibL2789:
	mov r8,#1
	str r8,[fp,#-1704]
	bl .fibL2791
.fibL2787:
	ldr r8,[fp,#-1708]
	cmp r8,#0
	beq .fibL2785
.fibL2784:
	mov r8,#1
	str r8,[fp,#-2276]
	bl .fibL2786
.fibL2781:
	mov r8,#1
	str r8,[fp,#-1708]
	bl .fibL2783
.fibL2779:
	ldr r8,[fp,#-2340]
	cmp r8,#0
	beq .fibL2777
.fibL2776:
	mov r8,#1
	str r8,[fp,#-1712]
	bl .fibL2778
.fibL2774:
	ldr r8,[fp,#-2340]
	cmp r8,#0
	bne .fibL2771
.fibL2772:
	mov r8,#0
	str r8,[fp,#-1716]
	bl .fibL2773
.fibL2769:
	ldr r8,[fp,#-1720]
	cmp r8,#0
	beq .fibL2767
.fibL2766:
	mov r8,#1
	str r8,[fp,#-1732]
	bl .fibL2768
.fibL2763:
	mov r8,#1
	str r8,[fp,#-1720]
	bl .fibL2765
.fibL2761:
	ldr r8,[fp,#-2404]
	cmp r8,#0
	beq .fibL2759
.fibL2758:
	mov r8,#1
	str r8,[fp,#-1724]
	bl .fibL2760
.fibL2756:
	ldr r8,[fp,#-2404]
	cmp r8,#0
	bne .fibL2753
.fibL2754:
	mov r8,#0
	str r8,[fp,#-1728]
	bl .fibL2755
.fibL2751:
	ldr r8,[fp,#-1736]
	cmp r8,#0
	bne .fibL2748
.fibL2749:
	mov r8,#0
	str r8,[fp,#-2340]
	bl .fibL2750
.fibL2746:
	ldr r8,[fp,#-2344]
	cmp r8,#0
	beq .fibL2744
.fibL2743:
	mov r8,#1
	str r8,[fp,#-1736]
	bl .fibL2745
.fibL2741:
	ldr r8,[fp,#-2408]
	cmp r8,#0
	beq .fibL2739
.fibL2738:
	mov r8,#1
	str r8,[fp,#-1740]
	bl .fibL2740
.fibL2736:
	ldr r8,[fp,#-1744]
	cmp r8,#0
	beq .fibL2734
.fibL2733:
	mov r8,#1
	str r8,[fp,#-2280]
	bl .fibL2735
.fibL2730:
	mov r8,#1
	str r8,[fp,#-1744]
	bl .fibL2732
.fibL2728:
	ldr r8,[fp,#-2344]
	cmp r8,#0
	beq .fibL2726
.fibL2725:
	mov r8,#1
	str r8,[fp,#-1748]
	bl .fibL2727
.fibL2723:
	ldr r8,[fp,#-2344]
	cmp r8,#0
	bne .fibL2720
.fibL2721:
	mov r8,#0
	str r8,[fp,#-1752]
	bl .fibL2722
.fibL2718:
	ldr r8,[fp,#-1756]
	cmp r8,#0
	beq .fibL2716
.fibL2715:
	mov r8,#1
	str r8,[fp,#-1768]
	bl .fibL2717
.fibL2712:
	mov r8,#1
	str r8,[fp,#-1756]
	bl .fibL2714
.fibL2710:
	ldr r8,[fp,#-2408]
	cmp r8,#0
	beq .fibL2708
.fibL2707:
	mov r8,#1
	str r8,[fp,#-1760]
	bl .fibL2709
.fibL2705:
	ldr r8,[fp,#-2408]
	cmp r8,#0
	bne .fibL2702
.fibL2703:
	mov r8,#0
	str r8,[fp,#-1764]
	bl .fibL2704
.fibL2700:
	ldr r8,[fp,#-1772]
	cmp r8,#0
	bne .fibL2697
.fibL2698:
	mov r8,#0
	str r8,[fp,#-2344]
	bl .fibL2699
.fibL2695:
	ldr r8,[fp,#-2348]
	cmp r8,#0
	beq .fibL2693
.fibL2692:
	mov r8,#1
	str r8,[fp,#-1772]
	bl .fibL2694
.fibL2690:
	ldr r8,[fp,#-2412]
	cmp r8,#0
	beq .fibL2688
.fibL2687:
	mov r8,#1
	str r8,[fp,#-1776]
	bl .fibL2689
.fibL2685:
	ldr r8,[fp,#-1780]
	cmp r8,#0
	beq .fibL2683
.fibL2682:
	mov r8,#1
	str r8,[fp,#-2284]
	bl .fibL2684
.fibL2679:
	mov r8,#1
	str r8,[fp,#-1780]
	bl .fibL2681
.fibL2677:
	ldr r8,[fp,#-2348]
	cmp r8,#0
	beq .fibL2675
.fibL2674:
	mov r8,#1
	str r8,[fp,#-1784]
	bl .fibL2676
.fibL2672:
	ldr r8,[fp,#-2348]
	cmp r8,#0
	bne .fibL2669
.fibL2670:
	mov r8,#0
	str r8,[fp,#-1788]
	bl .fibL2671
.fibL2667:
	ldr r8,[fp,#-1792]
	cmp r8,#0
	beq .fibL2665
.fibL2664:
	mov r8,#1
	str r8,[fp,#-1804]
	bl .fibL2666
.fibL2661:
	mov r8,#1
	str r8,[fp,#-1792]
	bl .fibL2663
.fibL2659:
	ldr r8,[fp,#-2412]
	cmp r8,#0
	beq .fibL2657
.fibL2656:
	mov r8,#1
	str r8,[fp,#-1796]
	bl .fibL2658
.fibL2654:
	ldr r8,[fp,#-2412]
	cmp r8,#0
	bne .fibL2651
.fibL2652:
	mov r8,#0
	str r8,[fp,#-1800]
	bl .fibL2653
.fibL2649:
	ldr r8,[fp,#-1808]
	cmp r8,#0
	bne .fibL2646
.fibL2647:
	mov r8,#0
	str r8,[fp,#-2348]
	bl .fibL2648
.fibL2644:
	ldr r8,[fp,#-2352]
	cmp r8,#0
	beq .fibL2642
.fibL2641:
	mov r8,#1
	str r8,[fp,#-1808]
	bl .fibL2643
.fibL2639:
	ldr r8,[fp,#-2416]
	cmp r8,#0
	beq .fibL2637
.fibL2636:
	mov r8,#1
	str r8,[fp,#-1812]
	bl .fibL2638
.fibL2634:
	ldr r8,[fp,#-1816]
	cmp r8,#0
	beq .fibL2632
.fibL2631:
	mov r8,#1
	str r8,[fp,#-2288]
	bl .fibL2633
.fibL2628:
	mov r8,#1
	str r8,[fp,#-1816]
	bl .fibL2630
.fibL2626:
	ldr r8,[fp,#-2352]
	cmp r8,#0
	beq .fibL2624
.fibL2623:
	mov r8,#1
	str r8,[fp,#-1820]
	bl .fibL2625
.fibL2621:
	ldr r8,[fp,#-2352]
	cmp r8,#0
	bne .fibL2618
.fibL2619:
	mov r8,#0
	str r8,[fp,#-1824]
	bl .fibL2620
.fibL2616:
	ldr r8,[fp,#-1828]
	cmp r8,#0
	beq .fibL2614
.fibL2613:
	mov r8,#1
	str r8,[fp,#-1840]
	bl .fibL2615
.fibL2610:
	mov r8,#1
	str r8,[fp,#-1828]
	bl .fibL2612
.fibL2608:
	ldr r8,[fp,#-2416]
	cmp r8,#0
	beq .fibL2606
.fibL2605:
	mov r8,#1
	str r8,[fp,#-1832]
	bl .fibL2607
.fibL2603:
	ldr r8,[fp,#-2416]
	cmp r8,#0
	bne .fibL2600
.fibL2601:
	mov r8,#0
	str r8,[fp,#-1836]
	bl .fibL2602
.fibL2598:
	ldr r8,[fp,#-1844]
	cmp r8,#0
	bne .fibL2595
.fibL2596:
	mov r8,#0
	str r8,[fp,#-2352]
	bl .fibL2597
.fibL2593:
	ldr r8,[fp,#-2356]
	cmp r8,#0
	beq .fibL2591
.fibL2590:
	mov r8,#1
	str r8,[fp,#-1844]
	bl .fibL2592
.fibL2588:
	ldr r8,[fp,#-2420]
	cmp r8,#0
	beq .fibL2586
.fibL2585:
	mov r8,#1
	str r8,[fp,#-1848]
	bl .fibL2587
.fibL2583:
	ldr r8,[fp,#-1852]
	cmp r8,#0
	beq .fibL2581
.fibL2580:
	mov r8,#1
	str r8,[fp,#-2292]
	bl .fibL2582
.fibL2577:
	mov r8,#1
	str r8,[fp,#-1852]
	bl .fibL2579
.fibL2575:
	ldr r8,[fp,#-2356]
	cmp r8,#0
	beq .fibL2573
.fibL2572:
	mov r8,#1
	str r8,[fp,#-1856]
	bl .fibL2574
.fibL2570:
	ldr r8,[fp,#-2356]
	cmp r8,#0
	bne .fibL2567
.fibL2568:
	mov r8,#0
	str r8,[fp,#-1860]
	bl .fibL2569
.fibL2565:
	ldr r8,[fp,#-1864]
	cmp r8,#0
	beq .fibL2563
.fibL2562:
	mov r8,#1
	str r8,[fp,#-1876]
	bl .fibL2564
.fibL2559:
	mov r8,#1
	str r8,[fp,#-1864]
	bl .fibL2561
.fibL2557:
	ldr r8,[fp,#-2420]
	cmp r8,#0
	beq .fibL2555
.fibL2554:
	mov r8,#1
	str r8,[fp,#-1868]
	bl .fibL2556
.fibL2552:
	ldr r8,[fp,#-2420]
	cmp r8,#0
	bne .fibL2549
.fibL2550:
	mov r8,#0
	str r8,[fp,#-1872]
	bl .fibL2551
.fibL2547:
	ldr r8,[fp,#-1880]
	cmp r8,#0
	bne .fibL2544
.fibL2545:
	mov r8,#0
	str r8,[fp,#-2356]
	bl .fibL2546
.fibL2542:
	ldr r8,[fp,#-2360]
	cmp r8,#0
	beq .fibL2540
.fibL2539:
	mov r8,#1
	str r8,[fp,#-1880]
	bl .fibL2541
.fibL2537:
	ldr r8,[fp,#-2424]
	cmp r8,#0
	beq .fibL2535
.fibL2534:
	mov r8,#1
	str r8,[fp,#-1884]
	bl .fibL2536
.fibL2532:
	ldr r8,[fp,#-1888]
	cmp r8,#0
	beq .fibL2530
.fibL2529:
	mov r8,#1
	str r8,[fp,#-2296]
	bl .fibL2531
.fibL2526:
	mov r8,#1
	str r8,[fp,#-1888]
	bl .fibL2528
.fibL2524:
	ldr r8,[fp,#-2360]
	cmp r8,#0
	beq .fibL2522
.fibL2521:
	mov r8,#1
	str r8,[fp,#-1892]
	bl .fibL2523
.fibL2519:
	ldr r8,[fp,#-2360]
	cmp r8,#0
	bne .fibL2516
.fibL2517:
	mov r8,#0
	str r8,[fp,#-1896]
	bl .fibL2518
.fibL2514:
	ldr r8,[fp,#-1900]
	cmp r8,#0
	beq .fibL2512
.fibL2511:
	mov r8,#1
	str r8,[fp,#-1912]
	bl .fibL2513
.fibL2508:
	mov r8,#1
	str r8,[fp,#-1900]
	bl .fibL2510
.fibL2506:
	ldr r8,[fp,#-2424]
	cmp r8,#0
	beq .fibL2504
.fibL2503:
	mov r8,#1
	str r8,[fp,#-1904]
	bl .fibL2505
.fibL2501:
	ldr r8,[fp,#-2424]
	cmp r8,#0
	bne .fibL2498
.fibL2499:
	mov r8,#0
	str r8,[fp,#-1908]
	bl .fibL2500
.fibL2496:
	ldr r8,[fp,#-1916]
	cmp r8,#0
	bne .fibL2493
.fibL2494:
	mov r8,#0
	str r8,[fp,#-2360]
	bl .fibL2495
.fibL2491:
	ldr r8,[fp,#-2364]
	cmp r8,#0
	beq .fibL2489
.fibL2488:
	mov r8,#1
	str r8,[fp,#-1916]
	bl .fibL2490
.fibL2486:
	ldr r8,[fp,#-2428]
	cmp r8,#0
	beq .fibL2484
.fibL2483:
	mov r8,#1
	str r8,[fp,#-1920]
	bl .fibL2485
.fibL2481:
	ldr r8,[fp,#-1924]
	cmp r8,#0
	beq .fibL2479
.fibL2478:
	mov r8,#1
	str r8,[fp,#-2300]
	bl .fibL2480
.fibL2475:
	mov r8,#1
	str r8,[fp,#-1924]
	bl .fibL2477
.fibL2473:
	ldr r8,[fp,#-2364]
	cmp r8,#0
	beq .fibL2471
.fibL2470:
	mov r8,#1
	str r8,[fp,#-1928]
	bl .fibL2472
.fibL2468:
	ldr r8,[fp,#-2364]
	cmp r8,#0
	bne .fibL2465
.fibL2466:
	mov r8,#0
	str r8,[fp,#-1932]
	bl .fibL2467
.fibL2463:
	ldr r8,[fp,#-1936]
	cmp r8,#0
	beq .fibL2461
.fibL2460:
	mov r8,#1
	str r8,[fp,#-1948]
	bl .fibL2462
.fibL2457:
	mov r8,#1
	str r8,[fp,#-1936]
	bl .fibL2459
.fibL2455:
	ldr r8,[fp,#-2428]
	cmp r8,#0
	beq .fibL2453
.fibL2452:
	mov r8,#1
	str r8,[fp,#-1940]
	bl .fibL2454
.fibL2450:
	ldr r8,[fp,#-2428]
	cmp r8,#0
	bne .fibL2447
.fibL2448:
	mov r8,#0
	str r8,[fp,#-1944]
	bl .fibL2449
.fibL2445:
	ldr r8,[fp,#-1952]
	cmp r8,#0
	bne .fibL2442
.fibL2443:
	mov r8,#0
	str r8,[fp,#-2364]
	bl .fibL2444
.fibL2440:
	ldr r8,[fp,#-2368]
	cmp r8,#0
	beq .fibL2438
.fibL2437:
	mov r8,#1
	str r8,[fp,#-1952]
	bl .fibL2439
.fibL2435:
	ldr r8,[fp,#-2432]
	cmp r8,#0
	beq .fibL2433
.fibL2432:
	mov r8,#1
	str r8,[fp,#-1956]
	bl .fibL2434
.fibL2430:
	ldr r8,[fp,#-1960]
	cmp r8,#0
	beq .fibL2428
.fibL2427:
	mov r8,#1
	str r8,[fp,#-2304]
	bl .fibL2429
.fibL2424:
	mov r8,#1
	str r8,[fp,#-1960]
	bl .fibL2426
.fibL2422:
	ldr r8,[fp,#-2368]
	cmp r8,#0
	beq .fibL2420
.fibL2419:
	mov r8,#1
	str r8,[fp,#-1964]
	bl .fibL2421
.fibL2417:
	ldr r8,[fp,#-2368]
	cmp r8,#0
	bne .fibL2414
.fibL2415:
	mov r8,#0
	str r8,[fp,#-1968]
	bl .fibL2416
.fibL2412:
	ldr r8,[fp,#-1972]
	cmp r8,#0
	beq .fibL2410
.fibL2409:
	mov r8,#1
	str r8,[fp,#-1984]
	bl .fibL2411
.fibL2406:
	mov r8,#1
	str r8,[fp,#-1972]
	bl .fibL2408
.fibL2404:
	ldr r8,[fp,#-2432]
	cmp r8,#0
	beq .fibL2402
.fibL2401:
	mov r8,#1
	str r8,[fp,#-1976]
	bl .fibL2403
.fibL2399:
	ldr r8,[fp,#-2432]
	cmp r8,#0
	bne .fibL2396
.fibL2397:
	mov r8,#0
	str r8,[fp,#-1980]
	bl .fibL2398
.fibL2394:
	ldr r8,[fp,#-1988]
	cmp r8,#0
	bne .fibL2391
.fibL2392:
	mov r8,#0
	str r8,[fp,#-2368]
	bl .fibL2393
.fibL2389:
	ldr r8,[fp,#-2372]
	cmp r8,#0
	beq .fibL2387
.fibL2386:
	mov r8,#1
	str r8,[fp,#-1988]
	bl .fibL2388
.fibL2384:
	ldr r8,[fp,#-2436]
	cmp r8,#0
	beq .fibL2382
.fibL2381:
	mov r8,#1
	str r8,[fp,#-1992]
	bl .fibL2383
.fibL2379:
	ldr r8,[fp,#-1996]
	cmp r8,#0
	beq .fibL2377
.fibL2376:
	mov r8,#1
	str r8,[fp,#-2308]
	bl .fibL2378
.fibL2373:
	mov r8,#1
	str r8,[fp,#-1996]
	bl .fibL2375
.fibL2371:
	ldr r8,[fp,#-2372]
	cmp r8,#0
	beq .fibL2369
.fibL2368:
	mov r8,#1
	str r8,[fp,#-2000]
	bl .fibL2370
.fibL2366:
	ldr r8,[fp,#-2372]
	cmp r8,#0
	bne .fibL2363
.fibL2364:
	mov r8,#0
	str r8,[fp,#-2004]
	bl .fibL2365
.fibL2361:
	ldr r8,[fp,#-2008]
	cmp r8,#0
	beq .fibL2359
.fibL2358:
	mov r8,#1
	str r8,[fp,#-2020]
	bl .fibL2360
.fibL2355:
	mov r8,#1
	str r8,[fp,#-2008]
	bl .fibL2357
.fibL2353:
	ldr r8,[fp,#-2436]
	cmp r8,#0
	beq .fibL2351
.fibL2350:
	mov r8,#1
	str r8,[fp,#-2012]
	bl .fibL2352
.fibL2348:
	ldr r8,[fp,#-2436]
	cmp r8,#0
	bne .fibL2345
.fibL2346:
	mov r8,#0
	str r8,[fp,#-2016]
	bl .fibL2347
.fibL2343:
	ldr r8,[fp,#-2024]
	cmp r8,#0
	bne .fibL2340
.fibL2341:
	mov r8,#0
	str r8,[fp,#-2372]
	bl .fibL2342
.fibL2338:
	ldr r8,[fp,#-2376]
	cmp r8,#0
	beq .fibL2336
.fibL2335:
	mov r8,#1
	str r8,[fp,#-2024]
	bl .fibL2337
.fibL2333:
	ldr r8,[fp,#-2440]
	cmp r8,#0
	beq .fibL2331
.fibL2330:
	mov r8,#1
	str r8,[fp,#-2028]
	bl .fibL2332
.fibL2328:
	ldr r8,[fp,#-2032]
	cmp r8,#0
	beq .fibL2326
.fibL2325:
	mov r8,#1
	str r8,[fp,#-2312]
	bl .fibL2327
.fibL2322:
	mov r8,#1
	str r8,[fp,#-2032]
	bl .fibL2324
.fibL2320:
	ldr r8,[fp,#-2376]
	cmp r8,#0
	beq .fibL2318
.fibL2317:
	mov r8,#1
	str r8,[fp,#-2036]
	bl .fibL2319
.fibL2315:
	ldr r8,[fp,#-2376]
	cmp r8,#0
	bne .fibL2312
.fibL2313:
	mov r8,#0
	str r8,[fp,#-2040]
	bl .fibL2314
.fibL2310:
	ldr r8,[fp,#-2044]
	cmp r8,#0
	beq .fibL2308
.fibL2307:
	mov r8,#1
	str r8,[fp,#-2056]
	bl .fibL2309
.fibL2304:
	mov r8,#1
	str r8,[fp,#-2044]
	bl .fibL2306
.fibL2302:
	ldr r8,[fp,#-2440]
	cmp r8,#0
	beq .fibL2300
.fibL2299:
	mov r8,#1
	str r8,[fp,#-2048]
	bl .fibL2301
.fibL2297:
	ldr r8,[fp,#-2440]
	cmp r8,#0
	bne .fibL2294
.fibL2295:
	mov r8,#0
	str r8,[fp,#-2052]
	bl .fibL2296
.fibL2292:
	ldr r8,[fp,#-2060]
	cmp r8,#0
	bne .fibL2289
.fibL2290:
	mov r8,#0
	str r8,[fp,#-2376]
	bl .fibL2291
.fibL2287:
	ldr r8,[fp,#-2380]
	cmp r8,#0
	beq .fibL2285
.fibL2284:
	mov r8,#1
	str r8,[fp,#-2060]
	bl .fibL2286
.fibL2282:
	ldr r8,[fp,#-2444]
	cmp r8,#0
	beq .fibL2280
.fibL2279:
	mov r8,#1
	str r8,[fp,#-2064]
	bl .fibL2281
.fibL2277:
	ldr r8,[fp,#-2068]
	cmp r8,#0
	beq .fibL2275
.fibL2274:
	mov r8,#1
	str r8,[fp,#-2316]
	bl .fibL2276
.fibL2271:
	mov r8,#1
	str r8,[fp,#-2068]
	bl .fibL2273
.fibL2269:
	ldr r8,[fp,#-2380]
	cmp r8,#0
	beq .fibL2267
.fibL2266:
	mov r8,#1
	str r8,[fp,#-2072]
	bl .fibL2268
.fibL2264:
	ldr r8,[fp,#-2380]
	cmp r8,#0
	bne .fibL2261
.fibL2262:
	mov r8,#0
	str r8,[fp,#-2076]
	bl .fibL2263
.fibL2259:
	ldr r8,[fp,#-2080]
	cmp r8,#0
	beq .fibL2257
.fibL2256:
	mov r8,#1
	str r8,[fp,#-2092]
	bl .fibL2258
.fibL2253:
	mov r8,#1
	str r8,[fp,#-2080]
	bl .fibL2255
.fibL2251:
	ldr r8,[fp,#-2444]
	cmp r8,#0
	beq .fibL2249
.fibL2248:
	mov r8,#1
	str r8,[fp,#-2084]
	bl .fibL2250
.fibL2246:
	ldr r8,[fp,#-2444]
	cmp r8,#0
	bne .fibL2243
.fibL2244:
	mov r8,#0
	str r8,[fp,#-2088]
	bl .fibL2245
.fibL2241:
	ldr r8,[fp,#-2096]
	cmp r8,#0
	bne .fibL2238
.fibL2239:
	mov r8,#0
	str r8,[fp,#-2380]
	bl .fibL2240
.fibL2236:
	ldr r8,[fp,#-2384]
	cmp r8,#0
	beq .fibL2234
.fibL2233:
	mov r8,#1
	str r8,[fp,#-2096]
	bl .fibL2235
.fibL2231:
	ldr r8,[fp,#-2448]
	cmp r8,#0
	beq .fibL2229
.fibL2228:
	mov r8,#1
	str r8,[fp,#-2100]
	bl .fibL2230
.fibL2226:
	ldr r8,[fp,#-2104]
	cmp r8,#0
	beq .fibL2224
.fibL2223:
	mov r8,#1
	str r8,[fp,#-2320]
	bl .fibL2225
.fibL2220:
	mov r8,#1
	str r8,[fp,#-2104]
	bl .fibL2222
.fibL2218:
	ldr r8,[fp,#-2384]
	cmp r8,#0
	beq .fibL2216
.fibL2215:
	mov r8,#1
	str r8,[fp,#-2108]
	bl .fibL2217
.fibL2213:
	ldr r8,[fp,#-2384]
	cmp r8,#0
	bne .fibL2210
.fibL2211:
	mov r8,#0
	str r8,[fp,#-2112]
	bl .fibL2212
.fibL2208:
	ldr r8,[fp,#-2116]
	cmp r8,#0
	beq .fibL2206
.fibL2205:
	mov r8,#1
	str r8,[fp,#-2128]
	bl .fibL2207
.fibL2202:
	mov r8,#1
	str r8,[fp,#-2116]
	bl .fibL2204
.fibL2200:
	ldr r8,[fp,#-2448]
	cmp r8,#0
	beq .fibL2198
.fibL2197:
	mov r8,#1
	str r8,[fp,#-2120]
	bl .fibL2199
.fibL2195:
	ldr r8,[fp,#-2448]
	cmp r8,#0
	bne .fibL2192
.fibL2193:
	mov r8,#0
	str r8,[fp,#-2124]
	bl .fibL2194
.fibL2190:
	ldr r8,[fp,#-2132]
	cmp r8,#0
	bne .fibL2187
.fibL2188:
	mov r8,#0
	str r8,[fp,#-2384]
	bl .fibL2189
.fibL2185:
	ldr r8,[fp,#-2388]
	cmp r8,#0
	beq .fibL2183
.fibL2182:
	mov r8,#1
	str r8,[fp,#-2132]
	bl .fibL2184
.fibL2180:
	ldr r8,[fp,#-2452]
	cmp r8,#0
	beq .fibL2178
.fibL2177:
	mov r8,#1
	str r8,[fp,#-2136]
	bl .fibL2179
.fibL2175:
	ldr r8,[fp,#-2140]
	cmp r8,#0
	beq .fibL2173
.fibL2172:
	mov r8,#1
	str r8,[fp,#-2324]
	bl .fibL2174
.fibL2169:
	mov r8,#1
	str r8,[fp,#-2140]
	bl .fibL2171
.fibL2167:
	ldr r8,[fp,#-2388]
	cmp r8,#0
	beq .fibL2165
.fibL2164:
	mov r8,#1
	str r8,[fp,#-2144]
	bl .fibL2166
.fibL2162:
	ldr r8,[fp,#-2388]
	cmp r8,#0
	bne .fibL2159
.fibL2160:
	mov r8,#0
	str r8,[fp,#-2148]
	bl .fibL2161
.fibL2157:
	ldr r8,[fp,#-2152]
	cmp r8,#0
	beq .fibL2155
.fibL2154:
	mov r8,#1
	str r8,[fp,#-2164]
	bl .fibL2156
.fibL2151:
	mov r8,#1
	str r8,[fp,#-2152]
	bl .fibL2153
.fibL2149:
	ldr r8,[fp,#-2452]
	cmp r8,#0
	beq .fibL2147
.fibL2146:
	mov r8,#1
	str r8,[fp,#-2156]
	bl .fibL2148
.fibL2144:
	ldr r8,[fp,#-2452]
	cmp r8,#0
	bne .fibL2141
.fibL2142:
	mov r8,#0
	str r8,[fp,#-2160]
	bl .fibL2143
.fibL2139:
	ldr r8,[fp,#-2168]
	cmp r8,#0
	bne .fibL2136
.fibL2137:
	mov r8,#0
	str r8,[fp,#-2388]
	bl .fibL2138
.fibL2134:
	ldr r8,[fp,#-2392]
	cmp r8,#0
	beq .fibL2132
.fibL2131:
	mov r8,#1
	str r8,[fp,#-2168]
	bl .fibL2133
.fibL2129:
	ldr r8,[fp,#-2456]
	cmp r8,#0
	beq .fibL2127
.fibL2126:
	mov r8,#1
	str r8,[fp,#-2172]
	bl .fibL2128
.fibL2124:
	ldr r8,[fp,#-2176]
	cmp r8,#0
	beq .fibL2122
.fibL2121:
	mov r8,#1
	str r8,[fp,#-2328]
	bl .fibL2123
.fibL2118:
	mov r8,#1
	str r8,[fp,#-2176]
	bl .fibL2120
.fibL2116:
	ldr r8,[fp,#-2392]
	cmp r8,#0
	beq .fibL2114
.fibL2113:
	mov r8,#1
	str r8,[fp,#-2180]
	bl .fibL2115
.fibL2111:
	ldr r8,[fp,#-2392]
	cmp r8,#0
	bne .fibL2108
.fibL2109:
	mov r8,#0
	str r8,[fp,#-2184]
	bl .fibL2110
.fibL2106:
	ldr r8,[fp,#-2188]
	cmp r8,#0
	beq .fibL2104
.fibL2103:
	mov r8,#1
	str r8,[fp,#-2200]
	bl .fibL2105
.fibL2100:
	mov r8,#1
	str r8,[fp,#-2188]
	bl .fibL2102
.fibL2098:
	ldr r8,[fp,#-2456]
	cmp r8,#0
	beq .fibL2096
.fibL2095:
	mov r8,#1
	str r8,[fp,#-2192]
	bl .fibL2097
.fibL2093:
	ldr r8,[fp,#-2456]
	cmp r8,#0
	bne .fibL2090
.fibL2091:
	mov r8,#0
	str r8,[fp,#-2196]
	bl .fibL2092
.fibL2088:
	ldr r8,[fp,#-2204]
	cmp r8,#0
	bne .fibL2085
.fibL2086:
	mov r8,#0
	str r8,[fp,#-2392]
	bl .fibL2087
.fibL2083:
	ldr r8,[fp,#-2396]
	cmp r8,#0
	beq .fibL2081
.fibL2080:
	mov r8,#1
	str r8,[fp,#-2204]
	bl .fibL2082
.fibL2078:
	ldr r8,[fp,#-2460]
	cmp r8,#0
	beq .fibL2076
.fibL2075:
	mov r8,#1
	str r8,[fp,#-2208]
	bl .fibL2077
.fibL2073:
	ldr r8,[fp,#-2212]
	cmp r8,#0
	beq .fibL2071
.fibL2070:
	mov r8,#1
	str r8,[fp,#-2332]
	bl .fibL2072
.fibL2067:
	mov r8,#1
	str r8,[fp,#-2212]
	bl .fibL2069
.fibL2065:
	ldr r8,[fp,#-2396]
	cmp r8,#0
	beq .fibL2063
.fibL2062:
	mov r8,#1
	str r8,[fp,#-2216]
	bl .fibL2064
.fibL2060:
	ldr r8,[fp,#-2396]
	cmp r8,#0
	bne .fibL2057
.fibL2058:
	mov r8,#0
	str r8,[fp,#-2220]
	bl .fibL2059
.fibL2055:
	ldr r8,[fp,#-2224]
	cmp r8,#0
	beq .fibL2053
.fibL2052:
	mov r8,#1
	str r8,[fp,#-2236]
	bl .fibL2054
.fibL2049:
	mov r8,#1
	str r8,[fp,#-2224]
	bl .fibL2051
.fibL2047:
	ldr r8,[fp,#-2460]
	cmp r8,#0
	beq .fibL2045
.fibL2044:
	mov r8,#1
	str r8,[fp,#-2228]
	bl .fibL2046
.fibL2042:
	ldr r8,[fp,#-2460]
	cmp r8,#0
	bne .fibL2039
.fibL2040:
	mov r8,#0
	str r8,[fp,#-2232]
	bl .fibL2041
.fibL2037:
	ldr r8,[fp,#-2240]
	cmp r8,#0
	bne .fibL2034
.fibL2035:
	mov r8,#0
	str r8,[fp,#-2396]
	bl .fibL2036
.fibL2032:
	mov r8,#0
	cmp r8,#0
	beq .fibL2030
.fibL2029:
	mov r8,#1
	str r8,[fp,#-2240]
	bl .fibL2031
.fibL2027:
	ldr r8,[fp,#-2464]
	cmp r8,#0
	beq .fibL2025
.fibL2024:
	mov r8,#1
	str r8,[fp,#-2244]
	bl .fibL2026
.fibL2022:
	ldr r8,[fp,#-2248]
	cmp r8,#0
	beq .fibL2020
.fibL2019:
	mov r8,#1
	str r8,[fp,#-2336]
	bl .fibL2021
.fibL2016:
	mov r8,#1
	str r8,[fp,#-2248]
	bl .fibL2018
.fibL2014:
	mov r8,#0
	cmp r8,#0
	beq .fibL2012
.fibL2011:
	mov r8,#1
	str r8,[fp,#-2252]
	bl .fibL2013
.fibL2009:
	mov r8,#0
	cmp r8,#0
	bne .fibL2006
.fibL2007:
	mov r8,#0
	str r8,[fp,#-2256]
	bl .fibL2008
.fibL2004:
	ldr r8,[fp,#-2260]
	cmp r8,#0
	beq .fibL2002
.fibL2001:
	mov r8,#1
	str r8,[fp,#-2272]
	bl .fibL2003
.fibL1998:
	mov r8,#1
	str r8,[fp,#-2260]
	bl .fibL2000
.fibL1996:
	ldr r8,[fp,#-2464]
	cmp r8,#0
	beq .fibL1994
.fibL1993:
	mov r8,#1
	str r8,[fp,#-2264]
	bl .fibL1995
.fibL1991:
	ldr r8,[fp,#-2464]
	cmp r8,#0
	bne .fibL1988
.fibL1989:
	mov r8,#0
	str r8,[fp,#-2268]
	bl .fibL1990
.fibL1986:
	ldr r8,[fp,#-2404]
	rsb r5,r8,#0
	str r5,[fp,#-2404]
	bl .fibL1987
.fibL1984:
	ldr r8,[fp,#-2408]
	rsb r5,r8,#0
	str r5,[fp,#-2408]
	bl .fibL1985
.fibL1982:
	ldr r8,[fp,#-2412]
	rsb r5,r8,#0
	str r5,[fp,#-2412]
	bl .fibL1983
.fibL1980:
	ldr r8,[fp,#-2416]
	rsb r5,r8,#0
	str r5,[fp,#-2416]
	bl .fibL1981
.fibL1978:
	ldr r8,[fp,#-2420]
	rsb r5,r8,#0
	str r5,[fp,#-2420]
	bl .fibL1979
.fibL1976:
	ldr r8,[fp,#-2424]
	rsb r5,r8,#0
	str r5,[fp,#-2424]
	bl .fibL1977
.fibL1974:
	ldr r8,[fp,#-2428]
	rsb r5,r8,#0
	str r5,[fp,#-2428]
	bl .fibL1975
.fibL1972:
	ldr r8,[fp,#-2432]
	rsb r5,r8,#0
	str r5,[fp,#-2432]
	bl .fibL1973
.fibL1970:
	ldr r8,[fp,#-2436]
	rsb r5,r8,#0
	str r5,[fp,#-2436]
	bl .fibL1971
.fibL1968:
	ldr r8,[fp,#-2440]
	rsb r5,r8,#0
	str r5,[fp,#-2440]
	bl .fibL1969
.fibL1966:
	ldr r8,[fp,#-2444]
	rsb r5,r8,#0
	str r5,[fp,#-2444]
	bl .fibL1967
.fibL1964:
	ldr r8,[fp,#-2448]
	rsb r5,r8,#0
	str r5,[fp,#-2448]
	bl .fibL1965
.fibL1962:
	ldr r8,[fp,#-2452]
	rsb r5,r8,#0
	str r5,[fp,#-2452]
	bl .fibL1963
.fibL1960:
	ldr r8,[fp,#-2456]
	rsb r5,r8,#0
	str r5,[fp,#-2456]
	bl .fibL1961
.fibL1958:
	ldr r8,[fp,#-2460]
	rsb r5,r8,#0
	str r5,[fp,#-2460]
	bl .fibL1959
.fibL1956:
	ldr r8,[fp,#-2464]
	rsb r5,r8,#0
	str r5,[fp,#-2464]
	bl .fibL1957
.fibL1954:
	ldr r8,[fp,#-2472]
	rsb r5,r8,#0
	str r5,[fp,#-2472]
	bl .fibL1955
.fibL1952:
	ldr r8,[fp,#-2476]
	rsb r5,r8,#0
	str r5,[fp,#-2476]
	bl .fibL1953
.fibL1950:
	ldr r8,[fp,#-2480]
	rsb r5,r8,#0
	str r5,[fp,#-2480]
	bl .fibL1951
.fibL1948:
	ldr r8,[fp,#-2484]
	rsb r5,r8,#0
	str r5,[fp,#-2484]
	bl .fibL1949
.fibL1946:
	ldr r8,[fp,#-2488]
	rsb r5,r8,#0
	str r5,[fp,#-2488]
	bl .fibL1947
.fibL1944:
	ldr r8,[fp,#-2492]
	rsb r5,r8,#0
	str r5,[fp,#-2492]
	bl .fibL1945
.fibL1942:
	ldr r8,[fp,#-2496]
	rsb r5,r8,#0
	str r5,[fp,#-2496]
	bl .fibL1943
.fibL1940:
	ldr r8,[fp,#-2500]
	rsb r5,r8,#0
	str r5,[fp,#-2500]
	bl .fibL1941
.fibL1938:
	ldr r8,[fp,#-2504]
	rsb r5,r8,#0
	str r5,[fp,#-2504]
	bl .fibL1939
.fibL1936:
	ldr r8,[fp,#-2508]
	rsb r5,r8,#0
	str r5,[fp,#-2508]
	bl .fibL1937
.fibL1934:
	ldr r8,[fp,#-2512]
	rsb r5,r8,#0
	str r5,[fp,#-2512]
	bl .fibL1935
.fibL1932:
	ldr r8,[fp,#-2516]
	rsb r5,r8,#0
	str r5,[fp,#-2516]
	bl .fibL1933
.fibL1930:
	ldr r8,[fp,#-2520]
	rsb r5,r8,#0
	str r5,[fp,#-2520]
	bl .fibL1931
.fibL1928:
	ldr r8,[fp,#-2524]
	rsb r5,r8,#0
	str r5,[fp,#-2524]
	bl .fibL1929
.fibL1926:
	ldr r8,[fp,#-2528]
	rsb r5,r8,#0
	str r5,[fp,#-2528]
	bl .fibL1927
.fibL1924:
	ldr r8,[fp,#-2532]
	rsb r5,r8,#0
	str r5,[fp,#-2532]
	bl .fibL1925
.fibL1921:
	mov r8,#1
	str r8,[fp,#-2540]
	bl .fibL1923
.fibL1918:
	mov r8,#1
	str r8,[fp,#-2544]
	bl .fibL1920
.fibL1915:
	mov r8,#1
	str r8,[fp,#-2548]
	bl .fibL1917
.fibL1912:
	mov r8,#1
	str r8,[fp,#-2552]
	bl .fibL1914
.fibL1909:
	mov r8,#1
	str r8,[fp,#-2556]
	bl .fibL1911
.fibL1906:
	mov r8,#1
	str r8,[fp,#-2560]
	bl .fibL1908
.fibL1903:
	mov r8,#1
	str r8,[fp,#-2564]
	bl .fibL1905
.fibL1900:
	mov r8,#1
	str r8,[fp,#-2568]
	bl .fibL1902
.fibL1897:
	mov r8,#1
	str r8,[fp,#-2572]
	bl .fibL1899
.fibL1894:
	mov r8,#1
	str r8,[fp,#-2576]
	bl .fibL1896
.fibL1891:
	mov r8,#1
	str r8,[fp,#-2580]
	bl .fibL1893
.fibL1888:
	mov r8,#1
	str r8,[fp,#-2584]
	bl .fibL1890
.fibL1885:
	mov r8,#1
	str r8,[fp,#-2588]
	bl .fibL1887
.fibL1882:
	mov r8,#1
	str r8,[fp,#-2592]
	bl .fibL1884
.fibL1879:
	mov r8,#1
	str r8,[fp,#-2596]
	bl .fibL1881
.fibL1876:
	mov r8,#1
	str r8,[fp,#-2600]
	bl .fibL1878
.fibL1874:
	ldr r8,[fp,#-2608]
	rsb r5,r8,#0
	str r5,[fp,#-2608]
	bl .fibL1875
.fibL1872:
	ldr r8,[fp,#-2612]
	rsb r5,r8,#0
	str r5,[fp,#-2612]
	bl .fibL1873
.fibL1870:
	ldr r8,[fp,#-2616]
	rsb r5,r8,#0
	str r5,[fp,#-2616]
	bl .fibL1871
.fibL1868:
	ldr r8,[fp,#-2620]
	rsb r5,r8,#0
	str r5,[fp,#-2620]
	bl .fibL1869
.fibL1866:
	ldr r8,[fp,#-2624]
	rsb r5,r8,#0
	str r5,[fp,#-2624]
	bl .fibL1867
.fibL1864:
	ldr r8,[fp,#-2628]
	rsb r5,r8,#0
	str r5,[fp,#-2628]
	bl .fibL1865
.fibL1862:
	ldr r8,[fp,#-2632]
	rsb r5,r8,#0
	str r5,[fp,#-2632]
	bl .fibL1863
.fibL1860:
	ldr r8,[fp,#-2636]
	rsb r5,r8,#0
	str r5,[fp,#-2636]
	bl .fibL1861
.fibL1858:
	ldr r8,[fp,#-2640]
	rsb r5,r8,#0
	str r5,[fp,#-2640]
	bl .fibL1859
.fibL1856:
	ldr r8,[fp,#-2644]
	rsb r5,r8,#0
	str r5,[fp,#-2644]
	bl .fibL1857
.fibL1854:
	ldr r8,[fp,#-2648]
	rsb r5,r8,#0
	str r5,[fp,#-2648]
	bl .fibL1855
.fibL1852:
	ldr r8,[fp,#-2652]
	rsb r5,r8,#0
	str r5,[fp,#-2652]
	bl .fibL1853
.fibL1850:
	ldr r8,[fp,#-2656]
	rsb r5,r8,#0
	str r5,[fp,#-2656]
	bl .fibL1851
.fibL1848:
	ldr r8,[fp,#-2660]
	rsb r5,r8,#0
	str r5,[fp,#-2660]
	bl .fibL1849
.fibL1846:
	ldr r8,[fp,#-2664]
	rsb r5,r8,#0
	str r5,[fp,#-2664]
	bl .fibL1847
.fibL1844:
	ldr r8,[fp,#-2668]
	rsb r5,r8,#0
	str r5,[fp,#-2668]
	bl .fibL1845
.fibL1842:
	ldr r8,[fp,#-2688]
	cmp r8,#0
	bne .fibL1839
.fibL1840:
	mov r8,#0
	str r8,[fp,#-3524]
	bl .fibL1841
.fibL1837:
	ldr r8,[fp,#-3328]
	cmp r8,#0
	beq .fibL1835
.fibL1834:
	mov r8,#1
	str r8,[fp,#-2688]
	bl .fibL1836
.fibL1832:
	ldr r8,[fp,#-3392]
	cmp r8,#0
	beq .fibL1830
.fibL1829:
	mov r8,#1
	str r8,[fp,#-2692]
	bl .fibL1831
.fibL1827:
	ldr r8,[fp,#-2696]
	cmp r8,#0
	beq .fibL1825
.fibL1824:
	mov r8,#1
	str r8,[fp,#-3264]
	bl .fibL1826
.fibL1821:
	mov r8,#1
	str r8,[fp,#-2696]
	bl .fibL1823
.fibL1819:
	ldr r8,[fp,#-3328]
	cmp r8,#0
	beq .fibL1817
.fibL1816:
	mov r8,#1
	str r8,[fp,#-2700]
	bl .fibL1818
.fibL1814:
	ldr r8,[fp,#-3328]
	cmp r8,#0
	bne .fibL1811
.fibL1812:
	mov r8,#0
	str r8,[fp,#-2704]
	bl .fibL1813
.fibL1809:
	ldr r8,[fp,#-2708]
	cmp r8,#0
	beq .fibL1807
.fibL1806:
	mov r8,#1
	str r8,[fp,#-2720]
	bl .fibL1808
.fibL1803:
	mov r8,#1
	str r8,[fp,#-2708]
	bl .fibL1805
.fibL1801:
	ldr r8,[fp,#-3392]
	cmp r8,#0
	beq .fibL1799
.fibL1798:
	mov r8,#1
	str r8,[fp,#-2712]
	bl .fibL1800
.fibL1796:
	ldr r8,[fp,#-3392]
	cmp r8,#0
	bne .fibL1793
.fibL1794:
	mov r8,#0
	str r8,[fp,#-2716]
	bl .fibL1795
.fibL1791:
	ldr r8,[fp,#-2724]
	cmp r8,#0
	bne .fibL1788
.fibL1789:
	mov r8,#0
	str r8,[fp,#-3328]
	bl .fibL1790
.fibL1786:
	ldr r8,[fp,#-3332]
	cmp r8,#0
	beq .fibL1784
.fibL1783:
	mov r8,#1
	str r8,[fp,#-2724]
	bl .fibL1785
.fibL1781:
	ldr r8,[fp,#-3396]
	cmp r8,#0
	beq .fibL1779
.fibL1778:
	mov r8,#1
	str r8,[fp,#-2728]
	bl .fibL1780
.fibL1776:
	ldr r8,[fp,#-2732]
	cmp r8,#0
	beq .fibL1774
.fibL1773:
	mov r8,#1
	str r8,[fp,#-3268]
	bl .fibL1775
.fibL1770:
	mov r8,#1
	str r8,[fp,#-2732]
	bl .fibL1772
.fibL1768:
	ldr r8,[fp,#-3332]
	cmp r8,#0
	beq .fibL1766
.fibL1765:
	mov r8,#1
	str r8,[fp,#-2736]
	bl .fibL1767
.fibL1763:
	ldr r8,[fp,#-3332]
	cmp r8,#0
	bne .fibL1760
.fibL1761:
	mov r8,#0
	str r8,[fp,#-2740]
	bl .fibL1762
.fibL1758:
	ldr r8,[fp,#-2744]
	cmp r8,#0
	beq .fibL1756
.fibL1755:
	mov r8,#1
	str r8,[fp,#-2756]
	bl .fibL1757
.fibL1752:
	mov r8,#1
	str r8,[fp,#-2744]
	bl .fibL1754
.fibL1750:
	ldr r8,[fp,#-3396]
	cmp r8,#0
	beq .fibL1748
.fibL1747:
	mov r8,#1
	str r8,[fp,#-2748]
	bl .fibL1749
.fibL1745:
	ldr r8,[fp,#-3396]
	cmp r8,#0
	bne .fibL1742
.fibL1743:
	mov r8,#0
	str r8,[fp,#-2752]
	bl .fibL1744
.fibL1740:
	ldr r8,[fp,#-2760]
	cmp r8,#0
	bne .fibL1737
.fibL1738:
	mov r8,#0
	str r8,[fp,#-3332]
	bl .fibL1739
.fibL1735:
	ldr r8,[fp,#-3336]
	cmp r8,#0
	beq .fibL1733
.fibL1732:
	mov r8,#1
	str r8,[fp,#-2760]
	bl .fibL1734
.fibL1730:
	ldr r8,[fp,#-3400]
	cmp r8,#0
	beq .fibL1728
.fibL1727:
	mov r8,#1
	str r8,[fp,#-2764]
	bl .fibL1729
.fibL1725:
	ldr r8,[fp,#-2768]
	cmp r8,#0
	beq .fibL1723
.fibL1722:
	mov r8,#1
	str r8,[fp,#-3272]
	bl .fibL1724
.fibL1719:
	mov r8,#1
	str r8,[fp,#-2768]
	bl .fibL1721
.fibL1717:
	ldr r8,[fp,#-3336]
	cmp r8,#0
	beq .fibL1715
.fibL1714:
	mov r8,#1
	str r8,[fp,#-2772]
	bl .fibL1716
.fibL1712:
	ldr r8,[fp,#-3336]
	cmp r8,#0
	bne .fibL1709
.fibL1710:
	mov r8,#0
	str r8,[fp,#-2776]
	bl .fibL1711
.fibL1707:
	ldr r8,[fp,#-2780]
	cmp r8,#0
	beq .fibL1705
.fibL1704:
	mov r8,#1
	str r8,[fp,#-2792]
	bl .fibL1706
.fibL1701:
	mov r8,#1
	str r8,[fp,#-2780]
	bl .fibL1703
.fibL1699:
	ldr r8,[fp,#-3400]
	cmp r8,#0
	beq .fibL1697
.fibL1696:
	mov r8,#1
	str r8,[fp,#-2784]
	bl .fibL1698
.fibL1694:
	ldr r8,[fp,#-3400]
	cmp r8,#0
	bne .fibL1691
.fibL1692:
	mov r8,#0
	str r8,[fp,#-2788]
	bl .fibL1693
.fibL1689:
	ldr r8,[fp,#-2796]
	cmp r8,#0
	bne .fibL1686
.fibL1687:
	mov r8,#0
	str r8,[fp,#-3336]
	bl .fibL1688
.fibL1684:
	ldr r8,[fp,#-3340]
	cmp r8,#0
	beq .fibL1682
.fibL1681:
	mov r8,#1
	str r8,[fp,#-2796]
	bl .fibL1683
.fibL1679:
	ldr r8,[fp,#-3404]
	cmp r8,#0
	beq .fibL1677
.fibL1676:
	mov r8,#1
	str r8,[fp,#-2800]
	bl .fibL1678
.fibL1674:
	ldr r8,[fp,#-2804]
	cmp r8,#0
	beq .fibL1672
.fibL1671:
	mov r8,#1
	str r8,[fp,#-3276]
	bl .fibL1673
.fibL1668:
	mov r8,#1
	str r8,[fp,#-2804]
	bl .fibL1670
.fibL1666:
	ldr r8,[fp,#-3340]
	cmp r8,#0
	beq .fibL1664
.fibL1663:
	mov r8,#1
	str r8,[fp,#-2808]
	bl .fibL1665
.fibL1661:
	ldr r8,[fp,#-3340]
	cmp r8,#0
	bne .fibL1658
.fibL1659:
	mov r8,#0
	str r8,[fp,#-2812]
	bl .fibL1660
.fibL1656:
	ldr r8,[fp,#-2816]
	cmp r8,#0
	beq .fibL1654
.fibL1653:
	mov r8,#1
	str r8,[fp,#-2828]
	bl .fibL1655
.fibL1650:
	mov r8,#1
	str r8,[fp,#-2816]
	bl .fibL1652
.fibL1648:
	ldr r8,[fp,#-3404]
	cmp r8,#0
	beq .fibL1646
.fibL1645:
	mov r8,#1
	str r8,[fp,#-2820]
	bl .fibL1647
.fibL1643:
	ldr r8,[fp,#-3404]
	cmp r8,#0
	bne .fibL1640
.fibL1641:
	mov r8,#0
	str r8,[fp,#-2824]
	bl .fibL1642
.fibL1638:
	ldr r8,[fp,#-2832]
	cmp r8,#0
	bne .fibL1635
.fibL1636:
	mov r8,#0
	str r8,[fp,#-3340]
	bl .fibL1637
.fibL1633:
	ldr r8,[fp,#-3344]
	cmp r8,#0
	beq .fibL1631
.fibL1630:
	mov r8,#1
	str r8,[fp,#-2832]
	bl .fibL1632
.fibL1628:
	ldr r8,[fp,#-3408]
	cmp r8,#0
	beq .fibL1626
.fibL1625:
	mov r8,#1
	str r8,[fp,#-2836]
	bl .fibL1627
.fibL1623:
	ldr r8,[fp,#-2840]
	cmp r8,#0
	beq .fibL1621
.fibL1620:
	mov r8,#1
	str r8,[fp,#-3280]
	bl .fibL1622
.fibL1617:
	mov r8,#1
	str r8,[fp,#-2840]
	bl .fibL1619
.fibL1615:
	ldr r8,[fp,#-3344]
	cmp r8,#0
	beq .fibL1613
.fibL1612:
	mov r8,#1
	str r8,[fp,#-2844]
	bl .fibL1614
.fibL1610:
	ldr r8,[fp,#-3344]
	cmp r8,#0
	bne .fibL1607
.fibL1608:
	mov r8,#0
	str r8,[fp,#-2848]
	bl .fibL1609
.fibL1605:
	ldr r8,[fp,#-2852]
	cmp r8,#0
	beq .fibL1603
.fibL1602:
	mov r8,#1
	str r8,[fp,#-2864]
	bl .fibL1604
.fibL1599:
	mov r8,#1
	str r8,[fp,#-2852]
	bl .fibL1601
.fibL1597:
	ldr r8,[fp,#-3408]
	cmp r8,#0
	beq .fibL1595
.fibL1594:
	mov r8,#1
	str r8,[fp,#-2856]
	bl .fibL1596
.fibL1592:
	ldr r8,[fp,#-3408]
	cmp r8,#0
	bne .fibL1589
.fibL1590:
	mov r8,#0
	str r8,[fp,#-2860]
	bl .fibL1591
.fibL1587:
	ldr r8,[fp,#-2868]
	cmp r8,#0
	bne .fibL1584
.fibL1585:
	mov r8,#0
	str r8,[fp,#-3344]
	bl .fibL1586
.fibL1582:
	ldr r8,[fp,#-3348]
	cmp r8,#0
	beq .fibL1580
.fibL1579:
	mov r8,#1
	str r8,[fp,#-2868]
	bl .fibL1581
.fibL1577:
	ldr r8,[fp,#-3412]
	cmp r8,#0
	beq .fibL1575
.fibL1574:
	mov r8,#1
	str r8,[fp,#-2872]
	bl .fibL1576
.fibL1572:
	ldr r8,[fp,#-2876]
	cmp r8,#0
	beq .fibL1570
.fibL1569:
	mov r8,#1
	str r8,[fp,#-3284]
	bl .fibL1571
.fibL1566:
	mov r8,#1
	str r8,[fp,#-2876]
	bl .fibL1568
.fibL1564:
	ldr r8,[fp,#-3348]
	cmp r8,#0
	beq .fibL1562
.fibL1561:
	mov r8,#1
	str r8,[fp,#-2880]
	bl .fibL1563
.fibL1559:
	ldr r8,[fp,#-3348]
	cmp r8,#0
	bne .fibL1556
.fibL1557:
	mov r8,#0
	str r8,[fp,#-2884]
	bl .fibL1558
.fibL1554:
	ldr r8,[fp,#-2888]
	cmp r8,#0
	beq .fibL1552
.fibL1551:
	mov r8,#1
	str r8,[fp,#-2900]
	bl .fibL1553
.fibL1548:
	mov r8,#1
	str r8,[fp,#-2888]
	bl .fibL1550
.fibL1546:
	ldr r8,[fp,#-3412]
	cmp r8,#0
	beq .fibL1544
.fibL1543:
	mov r8,#1
	str r8,[fp,#-2892]
	bl .fibL1545
.fibL1541:
	ldr r8,[fp,#-3412]
	cmp r8,#0
	bne .fibL1538
.fibL1539:
	mov r8,#0
	str r8,[fp,#-2896]
	bl .fibL1540
.fibL1536:
	ldr r8,[fp,#-2904]
	cmp r8,#0
	bne .fibL1533
.fibL1534:
	mov r8,#0
	str r8,[fp,#-3348]
	bl .fibL1535
.fibL1531:
	ldr r8,[fp,#-3352]
	cmp r8,#0
	beq .fibL1529
.fibL1528:
	mov r8,#1
	str r8,[fp,#-2904]
	bl .fibL1530
.fibL1526:
	ldr r8,[fp,#-3416]
	cmp r8,#0
	beq .fibL1524
.fibL1523:
	mov r8,#1
	str r8,[fp,#-2908]
	bl .fibL1525
.fibL1521:
	ldr r8,[fp,#-2912]
	cmp r8,#0
	beq .fibL1519
.fibL1518:
	mov r8,#1
	str r8,[fp,#-3288]
	bl .fibL1520
.fibL1515:
	mov r8,#1
	str r8,[fp,#-2912]
	bl .fibL1517
.fibL1513:
	ldr r8,[fp,#-3352]
	cmp r8,#0
	beq .fibL1511
.fibL1510:
	mov r8,#1
	str r8,[fp,#-2916]
	bl .fibL1512
.fibL1508:
	ldr r8,[fp,#-3352]
	cmp r8,#0
	bne .fibL1505
.fibL1506:
	mov r8,#0
	str r8,[fp,#-2920]
	bl .fibL1507
.fibL1503:
	ldr r8,[fp,#-2924]
	cmp r8,#0
	beq .fibL1501
.fibL1500:
	mov r8,#1
	str r8,[fp,#-2936]
	bl .fibL1502
.fibL1497:
	mov r8,#1
	str r8,[fp,#-2924]
	bl .fibL1499
.fibL1495:
	ldr r8,[fp,#-3416]
	cmp r8,#0
	beq .fibL1493
.fibL1492:
	mov r8,#1
	str r8,[fp,#-2928]
	bl .fibL1494
.fibL1490:
	ldr r8,[fp,#-3416]
	cmp r8,#0
	bne .fibL1487
.fibL1488:
	mov r8,#0
	str r8,[fp,#-2932]
	bl .fibL1489
.fibL1485:
	ldr r8,[fp,#-2940]
	cmp r8,#0
	bne .fibL1482
.fibL1483:
	mov r8,#0
	str r8,[fp,#-3352]
	bl .fibL1484
.fibL1480:
	ldr r8,[fp,#-3356]
	cmp r8,#0
	beq .fibL1478
.fibL1477:
	mov r8,#1
	str r8,[fp,#-2940]
	bl .fibL1479
.fibL1475:
	ldr r8,[fp,#-3420]
	cmp r8,#0
	beq .fibL1473
.fibL1472:
	mov r8,#1
	str r8,[fp,#-2944]
	bl .fibL1474
.fibL1470:
	ldr r8,[fp,#-2948]
	cmp r8,#0
	beq .fibL1468
.fibL1467:
	mov r8,#1
	str r8,[fp,#-3292]
	bl .fibL1469
.fibL1464:
	mov r8,#1
	str r8,[fp,#-2948]
	bl .fibL1466
.fibL1462:
	ldr r8,[fp,#-3356]
	cmp r8,#0
	beq .fibL1460
.fibL1459:
	mov r8,#1
	str r8,[fp,#-2952]
	bl .fibL1461
.fibL1457:
	ldr r8,[fp,#-3356]
	cmp r8,#0
	bne .fibL1454
.fibL1455:
	mov r8,#0
	str r8,[fp,#-2956]
	bl .fibL1456
.fibL1452:
	ldr r8,[fp,#-2960]
	cmp r8,#0
	beq .fibL1450
.fibL1449:
	mov r8,#1
	str r8,[fp,#-2972]
	bl .fibL1451
.fibL1446:
	mov r8,#1
	str r8,[fp,#-2960]
	bl .fibL1448
.fibL1444:
	ldr r8,[fp,#-3420]
	cmp r8,#0
	beq .fibL1442
.fibL1441:
	mov r8,#1
	str r8,[fp,#-2964]
	bl .fibL1443
.fibL1439:
	ldr r8,[fp,#-3420]
	cmp r8,#0
	bne .fibL1436
.fibL1437:
	mov r8,#0
	str r8,[fp,#-2968]
	bl .fibL1438
.fibL1434:
	ldr r8,[fp,#-2976]
	cmp r8,#0
	bne .fibL1431
.fibL1432:
	mov r8,#0
	str r8,[fp,#-3356]
	bl .fibL1433
.fibL1429:
	ldr r8,[fp,#-3360]
	cmp r8,#0
	beq .fibL1427
.fibL1426:
	mov r8,#1
	str r8,[fp,#-2976]
	bl .fibL1428
.fibL1424:
	ldr r8,[fp,#-3424]
	cmp r8,#0
	beq .fibL1422
.fibL1421:
	mov r8,#1
	str r8,[fp,#-2980]
	bl .fibL1423
.fibL1419:
	ldr r8,[fp,#-2984]
	cmp r8,#0
	beq .fibL1417
.fibL1416:
	mov r8,#1
	str r8,[fp,#-3296]
	bl .fibL1418
.fibL1413:
	mov r8,#1
	str r8,[fp,#-2984]
	bl .fibL1415
.fibL1411:
	ldr r8,[fp,#-3360]
	cmp r8,#0
	beq .fibL1409
.fibL1408:
	mov r8,#1
	str r8,[fp,#-2988]
	bl .fibL1410
.fibL1406:
	ldr r8,[fp,#-3360]
	cmp r8,#0
	bne .fibL1403
.fibL1404:
	mov r8,#0
	str r8,[fp,#-2992]
	bl .fibL1405
.fibL1401:
	ldr r8,[fp,#-2996]
	cmp r8,#0
	beq .fibL1399
.fibL1398:
	mov r8,#1
	str r8,[fp,#-3008]
	bl .fibL1400
.fibL1395:
	mov r8,#1
	str r8,[fp,#-2996]
	bl .fibL1397
.fibL1393:
	ldr r8,[fp,#-3424]
	cmp r8,#0
	beq .fibL1391
.fibL1390:
	mov r8,#1
	str r8,[fp,#-3000]
	bl .fibL1392
.fibL1388:
	ldr r8,[fp,#-3424]
	cmp r8,#0
	bne .fibL1385
.fibL1386:
	mov r8,#0
	str r8,[fp,#-3004]
	bl .fibL1387
.fibL1383:
	ldr r8,[fp,#-3012]
	cmp r8,#0
	bne .fibL1380
.fibL1381:
	mov r8,#0
	str r8,[fp,#-3360]
	bl .fibL1382
.fibL1378:
	ldr r8,[fp,#-3364]
	cmp r8,#0
	beq .fibL1376
.fibL1375:
	mov r8,#1
	str r8,[fp,#-3012]
	bl .fibL1377
.fibL1373:
	ldr r8,[fp,#-3428]
	cmp r8,#0
	beq .fibL1371
.fibL1370:
	mov r8,#1
	str r8,[fp,#-3016]
	bl .fibL1372
.fibL1368:
	ldr r8,[fp,#-3020]
	cmp r8,#0
	beq .fibL1366
.fibL1365:
	mov r8,#1
	str r8,[fp,#-3300]
	bl .fibL1367
.fibL1362:
	mov r8,#1
	str r8,[fp,#-3020]
	bl .fibL1364
.fibL1360:
	ldr r8,[fp,#-3364]
	cmp r8,#0
	beq .fibL1358
.fibL1357:
	mov r8,#1
	str r8,[fp,#-3024]
	bl .fibL1359
.fibL1355:
	ldr r8,[fp,#-3364]
	cmp r8,#0
	bne .fibL1352
.fibL1353:
	mov r8,#0
	str r8,[fp,#-3028]
	bl .fibL1354
.fibL1350:
	ldr r8,[fp,#-3032]
	cmp r8,#0
	beq .fibL1348
.fibL1347:
	mov r8,#1
	str r8,[fp,#-3044]
	bl .fibL1349
.fibL1344:
	mov r8,#1
	str r8,[fp,#-3032]
	bl .fibL1346
.fibL1342:
	ldr r8,[fp,#-3428]
	cmp r8,#0
	beq .fibL1340
.fibL1339:
	mov r8,#1
	str r8,[fp,#-3036]
	bl .fibL1341
.fibL1337:
	ldr r8,[fp,#-3428]
	cmp r8,#0
	bne .fibL1334
.fibL1335:
	mov r8,#0
	str r8,[fp,#-3040]
	bl .fibL1336
.fibL1332:
	ldr r8,[fp,#-3048]
	cmp r8,#0
	bne .fibL1329
.fibL1330:
	mov r8,#0
	str r8,[fp,#-3364]
	bl .fibL1331
.fibL1327:
	ldr r8,[fp,#-3368]
	cmp r8,#0
	beq .fibL1325
.fibL1324:
	mov r8,#1
	str r8,[fp,#-3048]
	bl .fibL1326
.fibL1322:
	ldr r8,[fp,#-3432]
	cmp r8,#0
	beq .fibL1320
.fibL1319:
	mov r8,#1
	str r8,[fp,#-3052]
	bl .fibL1321
.fibL1317:
	ldr r8,[fp,#-3056]
	cmp r8,#0
	beq .fibL1315
.fibL1314:
	mov r8,#1
	str r8,[fp,#-3304]
	bl .fibL1316
.fibL1311:
	mov r8,#1
	str r8,[fp,#-3056]
	bl .fibL1313
.fibL1309:
	ldr r8,[fp,#-3368]
	cmp r8,#0
	beq .fibL1307
.fibL1306:
	mov r8,#1
	str r8,[fp,#-3060]
	bl .fibL1308
.fibL1304:
	ldr r8,[fp,#-3368]
	cmp r8,#0
	bne .fibL1301
.fibL1302:
	mov r8,#0
	str r8,[fp,#-3064]
	bl .fibL1303
.fibL1299:
	ldr r8,[fp,#-3068]
	cmp r8,#0
	beq .fibL1297
.fibL1296:
	mov r8,#1
	str r8,[fp,#-3080]
	bl .fibL1298
.fibL1293:
	mov r8,#1
	str r8,[fp,#-3068]
	bl .fibL1295
.fibL1291:
	ldr r8,[fp,#-3432]
	cmp r8,#0
	beq .fibL1289
.fibL1288:
	mov r8,#1
	str r8,[fp,#-3072]
	bl .fibL1290
.fibL1286:
	ldr r8,[fp,#-3432]
	cmp r8,#0
	bne .fibL1283
.fibL1284:
	mov r8,#0
	str r8,[fp,#-3076]
	bl .fibL1285
.fibL1281:
	ldr r8,[fp,#-3084]
	cmp r8,#0
	bne .fibL1278
.fibL1279:
	mov r8,#0
	str r8,[fp,#-3368]
	bl .fibL1280
.fibL1276:
	ldr r8,[fp,#-3372]
	cmp r8,#0
	beq .fibL1274
.fibL1273:
	mov r8,#1
	str r8,[fp,#-3084]
	bl .fibL1275
.fibL1271:
	ldr r8,[fp,#-3436]
	cmp r8,#0
	beq .fibL1269
.fibL1268:
	mov r8,#1
	str r8,[fp,#-3088]
	bl .fibL1270
.fibL1266:
	ldr r8,[fp,#-3092]
	cmp r8,#0
	beq .fibL1264
.fibL1263:
	mov r8,#1
	str r8,[fp,#-3308]
	bl .fibL1265
.fibL1260:
	mov r8,#1
	str r8,[fp,#-3092]
	bl .fibL1262
.fibL1258:
	ldr r8,[fp,#-3372]
	cmp r8,#0
	beq .fibL1256
.fibL1255:
	mov r8,#1
	str r8,[fp,#-3096]
	bl .fibL1257
.fibL1253:
	ldr r8,[fp,#-3372]
	cmp r8,#0
	bne .fibL1250
.fibL1251:
	mov r8,#0
	str r8,[fp,#-3100]
	bl .fibL1252
.fibL1248:
	ldr r8,[fp,#-3104]
	cmp r8,#0
	beq .fibL1246
.fibL1245:
	mov r8,#1
	str r8,[fp,#-3116]
	bl .fibL1247
.fibL1242:
	mov r8,#1
	str r8,[fp,#-3104]
	bl .fibL1244
.fibL1240:
	ldr r8,[fp,#-3436]
	cmp r8,#0
	beq .fibL1238
.fibL1237:
	mov r8,#1
	str r8,[fp,#-3108]
	bl .fibL1239
.fibL1235:
	ldr r8,[fp,#-3436]
	cmp r8,#0
	bne .fibL1232
.fibL1233:
	mov r8,#0
	str r8,[fp,#-3112]
	bl .fibL1234
.fibL1230:
	ldr r8,[fp,#-3120]
	cmp r8,#0
	bne .fibL1227
.fibL1228:
	mov r8,#0
	str r8,[fp,#-3372]
	bl .fibL1229
.fibL1225:
	ldr r8,[fp,#-3376]
	cmp r8,#0
	beq .fibL1223
.fibL1222:
	mov r8,#1
	str r8,[fp,#-3120]
	bl .fibL1224
.fibL1220:
	ldr r8,[fp,#-3440]
	cmp r8,#0
	beq .fibL1218
.fibL1217:
	mov r8,#1
	str r8,[fp,#-3124]
	bl .fibL1219
.fibL1215:
	ldr r8,[fp,#-3128]
	cmp r8,#0
	beq .fibL1213
.fibL1212:
	mov r8,#1
	str r8,[fp,#-3312]
	bl .fibL1214
.fibL1209:
	mov r8,#1
	str r8,[fp,#-3128]
	bl .fibL1211
.fibL1207:
	ldr r8,[fp,#-3376]
	cmp r8,#0
	beq .fibL1205
.fibL1204:
	mov r8,#1
	str r8,[fp,#-3132]
	bl .fibL1206
.fibL1202:
	ldr r8,[fp,#-3376]
	cmp r8,#0
	bne .fibL1199
.fibL1200:
	mov r8,#0
	str r8,[fp,#-3136]
	bl .fibL1201
.fibL1197:
	ldr r8,[fp,#-3140]
	cmp r8,#0
	beq .fibL1195
.fibL1194:
	mov r8,#1
	str r8,[fp,#-3152]
	bl .fibL1196
.fibL1191:
	mov r8,#1
	str r8,[fp,#-3140]
	bl .fibL1193
.fibL1189:
	ldr r8,[fp,#-3440]
	cmp r8,#0
	beq .fibL1187
.fibL1186:
	mov r8,#1
	str r8,[fp,#-3144]
	bl .fibL1188
.fibL1184:
	ldr r8,[fp,#-3440]
	cmp r8,#0
	bne .fibL1181
.fibL1182:
	mov r8,#0
	str r8,[fp,#-3148]
	bl .fibL1183
.fibL1179:
	ldr r8,[fp,#-3156]
	cmp r8,#0
	bne .fibL1176
.fibL1177:
	mov r8,#0
	str r8,[fp,#-3376]
	bl .fibL1178
.fibL1174:
	ldr r8,[fp,#-3380]
	cmp r8,#0
	beq .fibL1172
.fibL1171:
	mov r8,#1
	str r8,[fp,#-3156]
	bl .fibL1173
.fibL1169:
	ldr r8,[fp,#-3444]
	cmp r8,#0
	beq .fibL1167
.fibL1166:
	mov r8,#1
	str r8,[fp,#-3160]
	bl .fibL1168
.fibL1164:
	ldr r8,[fp,#-3164]
	cmp r8,#0
	beq .fibL1162
.fibL1161:
	mov r8,#1
	str r8,[fp,#-3316]
	bl .fibL1163
.fibL1158:
	mov r8,#1
	str r8,[fp,#-3164]
	bl .fibL1160
.fibL1156:
	ldr r8,[fp,#-3380]
	cmp r8,#0
	beq .fibL1154
.fibL1153:
	mov r8,#1
	str r8,[fp,#-3168]
	bl .fibL1155
.fibL1151:
	ldr r8,[fp,#-3380]
	cmp r8,#0
	bne .fibL1148
.fibL1149:
	mov r8,#0
	str r8,[fp,#-3172]
	bl .fibL1150
.fibL1146:
	ldr r8,[fp,#-3176]
	cmp r8,#0
	beq .fibL1144
.fibL1143:
	mov r8,#1
	str r8,[fp,#-3188]
	bl .fibL1145
.fibL1140:
	mov r8,#1
	str r8,[fp,#-3176]
	bl .fibL1142
.fibL1138:
	ldr r8,[fp,#-3444]
	cmp r8,#0
	beq .fibL1136
.fibL1135:
	mov r8,#1
	str r8,[fp,#-3180]
	bl .fibL1137
.fibL1133:
	ldr r8,[fp,#-3444]
	cmp r8,#0
	bne .fibL1130
.fibL1131:
	mov r8,#0
	str r8,[fp,#-3184]
	bl .fibL1132
.fibL1128:
	ldr r8,[fp,#-3192]
	cmp r8,#0
	bne .fibL1125
.fibL1126:
	mov r8,#0
	str r8,[fp,#-3380]
	bl .fibL1127
.fibL1123:
	ldr r8,[fp,#-3384]
	cmp r8,#0
	beq .fibL1121
.fibL1120:
	mov r8,#1
	str r8,[fp,#-3192]
	bl .fibL1122
.fibL1118:
	ldr r8,[fp,#-3448]
	cmp r8,#0
	beq .fibL1116
.fibL1115:
	mov r8,#1
	str r8,[fp,#-3196]
	bl .fibL1117
.fibL1113:
	ldr r8,[fp,#-3200]
	cmp r8,#0
	beq .fibL1111
.fibL1110:
	mov r8,#1
	str r8,[fp,#-3320]
	bl .fibL1112
.fibL1107:
	mov r8,#1
	str r8,[fp,#-3200]
	bl .fibL1109
.fibL1105:
	ldr r8,[fp,#-3384]
	cmp r8,#0
	beq .fibL1103
.fibL1102:
	mov r8,#1
	str r8,[fp,#-3204]
	bl .fibL1104
.fibL1100:
	ldr r8,[fp,#-3384]
	cmp r8,#0
	bne .fibL1097
.fibL1098:
	mov r8,#0
	str r8,[fp,#-3208]
	bl .fibL1099
.fibL1095:
	ldr r8,[fp,#-3212]
	cmp r8,#0
	beq .fibL1093
.fibL1092:
	mov r8,#1
	str r8,[fp,#-3224]
	bl .fibL1094
.fibL1089:
	mov r8,#1
	str r8,[fp,#-3212]
	bl .fibL1091
.fibL1087:
	ldr r8,[fp,#-3448]
	cmp r8,#0
	beq .fibL1085
.fibL1084:
	mov r8,#1
	str r8,[fp,#-3216]
	bl .fibL1086
.fibL1082:
	ldr r8,[fp,#-3448]
	cmp r8,#0
	bne .fibL1079
.fibL1080:
	mov r8,#0
	str r8,[fp,#-3220]
	bl .fibL1081
.fibL1077:
	ldr r8,[fp,#-3228]
	cmp r8,#0
	bne .fibL1074
.fibL1075:
	mov r8,#0
	str r8,[fp,#-3384]
	bl .fibL1076
.fibL1072:
	mov r8,#0
	cmp r8,#0
	beq .fibL1070
.fibL1069:
	mov r8,#1
	str r8,[fp,#-3228]
	bl .fibL1071
.fibL1067:
	ldr r8,[fp,#-3452]
	cmp r8,#0
	beq .fibL1065
.fibL1064:
	mov r8,#1
	str r8,[fp,#-3232]
	bl .fibL1066
.fibL1062:
	ldr r8,[fp,#-3236]
	cmp r8,#0
	beq .fibL1060
.fibL1059:
	mov r8,#1
	str r8,[fp,#-3324]
	bl .fibL1061
.fibL1056:
	mov r8,#1
	str r8,[fp,#-3236]
	bl .fibL1058
.fibL1054:
	mov r8,#0
	cmp r8,#0
	beq .fibL1052
.fibL1051:
	mov r8,#1
	str r8,[fp,#-3240]
	bl .fibL1053
.fibL1049:
	mov r8,#0
	cmp r8,#0
	bne .fibL1046
.fibL1047:
	mov r8,#0
	str r8,[fp,#-3244]
	bl .fibL1048
.fibL1044:
	ldr r8,[fp,#-3248]
	cmp r8,#0
	beq .fibL1042
.fibL1041:
	mov r8,#1
	str r8,[fp,#-3260]
	bl .fibL1043
.fibL1038:
	mov r8,#1
	str r8,[fp,#-3248]
	bl .fibL1040
.fibL1036:
	ldr r8,[fp,#-3452]
	cmp r8,#0
	beq .fibL1034
.fibL1033:
	mov r8,#1
	str r8,[fp,#-3252]
	bl .fibL1035
.fibL1031:
	ldr r8,[fp,#-3452]
	cmp r8,#0
	bne .fibL1028
.fibL1029:
	mov r8,#0
	str r8,[fp,#-3256]
	bl .fibL1030
.fibL1026:
	ldr r8,[fp,#-3392]
	rsb r5,r8,#0
	str r5,[fp,#-3392]
	bl .fibL1027
.fibL1024:
	ldr r8,[fp,#-3396]
	rsb r5,r8,#0
	str r5,[fp,#-3396]
	bl .fibL1025
.fibL1022:
	ldr r8,[fp,#-3400]
	rsb r5,r8,#0
	str r5,[fp,#-3400]
	bl .fibL1023
.fibL1020:
	ldr r8,[fp,#-3404]
	rsb r5,r8,#0
	str r5,[fp,#-3404]
	bl .fibL1021
.fibL1018:
	ldr r8,[fp,#-3408]
	rsb r5,r8,#0
	str r5,[fp,#-3408]
	bl .fibL1019
.fibL1016:
	ldr r8,[fp,#-3412]
	rsb r5,r8,#0
	str r5,[fp,#-3412]
	bl .fibL1017
.fibL1014:
	ldr r8,[fp,#-3416]
	rsb r5,r8,#0
	str r5,[fp,#-3416]
	bl .fibL1015
.fibL1012:
	ldr r8,[fp,#-3420]
	rsb r5,r8,#0
	str r5,[fp,#-3420]
	bl .fibL1013
.fibL1010:
	ldr r8,[fp,#-3424]
	rsb r5,r8,#0
	str r5,[fp,#-3424]
	bl .fibL1011
.fibL1008:
	ldr r8,[fp,#-3428]
	rsb r5,r8,#0
	str r5,[fp,#-3428]
	bl .fibL1009
.fibL1006:
	ldr r8,[fp,#-3432]
	rsb r5,r8,#0
	str r5,[fp,#-3432]
	bl .fibL1007
.fibL1004:
	ldr r8,[fp,#-3436]
	rsb r5,r8,#0
	str r5,[fp,#-3436]
	bl .fibL1005
.fibL1002:
	ldr r8,[fp,#-3440]
	rsb r5,r8,#0
	str r5,[fp,#-3440]
	bl .fibL1003
.fibL1000:
	ldr r8,[fp,#-3444]
	rsb r5,r8,#0
	str r5,[fp,#-3444]
	bl .fibL1001
.fibL998:
	ldr r8,[fp,#-3448]
	rsb r5,r8,#0
	str r5,[fp,#-3448]
	bl .fibL999
.fibL996:
	ldr r8,[fp,#-3452]
	rsb r5,r8,#0
	str r5,[fp,#-3452]
	bl .fibL997
.fibL994:
	ldr r8,[fp,#-3460]
	rsb r5,r8,#0
	str r5,[fp,#-3460]
	bl .fibL995
.fibL992:
	ldr r8,[fp,#-3464]
	rsb r5,r8,#0
	str r5,[fp,#-3464]
	bl .fibL993
.fibL990:
	ldr r8,[fp,#-3468]
	rsb r5,r8,#0
	str r5,[fp,#-3468]
	bl .fibL991
.fibL988:
	ldr r8,[fp,#-3472]
	rsb r5,r8,#0
	str r5,[fp,#-3472]
	bl .fibL989
.fibL986:
	ldr r8,[fp,#-3476]
	rsb r5,r8,#0
	str r5,[fp,#-3476]
	bl .fibL987
.fibL984:
	ldr r8,[fp,#-3480]
	rsb r5,r8,#0
	str r5,[fp,#-3480]
	bl .fibL985
.fibL982:
	ldr r8,[fp,#-3484]
	rsb r5,r8,#0
	str r5,[fp,#-3484]
	bl .fibL983
.fibL980:
	ldr r8,[fp,#-3488]
	rsb r5,r8,#0
	str r5,[fp,#-3488]
	bl .fibL981
.fibL978:
	ldr r8,[fp,#-3492]
	rsb r5,r8,#0
	str r5,[fp,#-3492]
	bl .fibL979
.fibL976:
	ldr r8,[fp,#-3496]
	rsb r5,r8,#0
	str r5,[fp,#-3496]
	bl .fibL977
.fibL974:
	ldr r8,[fp,#-3500]
	rsb r5,r8,#0
	str r5,[fp,#-3500]
	bl .fibL975
.fibL972:
	ldr r8,[fp,#-3504]
	rsb r5,r8,#0
	str r5,[fp,#-3504]
	bl .fibL973
.fibL970:
	ldr r8,[fp,#-3508]
	rsb r5,r8,#0
	str r5,[fp,#-3508]
	bl .fibL971
.fibL968:
	ldr r8,[fp,#-3512]
	rsb r5,r8,#0
	str r5,[fp,#-3512]
	bl .fibL969
.fibL966:
	ldr r8,[fp,#-3516]
	rsb r5,r8,#0
	str r5,[fp,#-3516]
	bl .fibL967
.fibL964:
	ldr r8,[fp,#-3520]
	rsb r5,r8,#0
	str r5,[fp,#-3520]
	bl .fibL965
.fibL962:
	ldr r8,[fp,#-3528]
	cmp r8,#0
	bne .fibL959
.fibL960:
	mov r8,#0
	movw r5,#61172
	movt r5,#65535  @ -4364
	mov r2,r5
	str r8,[fp,r2]
	bl .fibL961
.fibL957:
	movw r8,#61368
	movt r8,#65535  @ -4168
	mov r5,r8
	ldr r8,[fp,r5]
	cmp r8,#0
	beq .fibL955
.fibL954:
	mov r8,#1
	str r8,[fp,#-3528]
	bl .fibL956
.fibL952:
	movw r5,#61304
	movt r5,#65535  @ -4232
	mov r6,r5
	ldr r8,[fp,r6]
	cmp r8,#0
	beq .fibL950
.fibL949:
	mov r8,#1
	str r8,[fp,#-3532]
	bl .fibL951
.fibL947:
	ldr r8,[fp,#-3536]
	cmp r8,#0
	beq .fibL945
.fibL944:
	mov r8,#1
	movw r6,#61432
	movt r6,#65535  @ -4104
	mov r5,r6
	str r8,[fp,r5]
	bl .fibL946
.fibL941:
	mov r8,#1
	str r8,[fp,#-3536]
	bl .fibL943
.fibL939:
	movw r8,#61368
	movt r8,#65535  @ -4168
	mov r6,r8
	ldr r8,[fp,r6]
	cmp r8,#0
	beq .fibL937
.fibL936:
	mov r8,#1
	str r8,[fp,#-3540]
	bl .fibL938
.fibL934:
	movw r6,#61368
	movt r6,#65535  @ -4168
	mov r8,r6
	ldr r6,[fp,r8]
	cmp r6,#0
	bne .fibL931
.fibL932:
	mov r6,#0
	str r6,[fp,#-3544]
	bl .fibL933
.fibL929:
	ldr r6,[fp,#-3548]
	cmp r6,#0
	beq .fibL927
.fibL926:
	mov r6,#1
	str r6,[fp,#-3560]
	bl .fibL928
.fibL923:
	mov r6,#1
	str r6,[fp,#-3548]
	bl .fibL925
.fibL921:
	movw r8,#61304
	movt r8,#65535  @ -4232
	mov r6,r8
	ldr r8,[fp,r6]
	cmp r8,#0
	beq .fibL919
.fibL918:
	mov r8,#1
	str r8,[fp,#-3552]
	bl .fibL920
.fibL916:
	movw r6,#61304
	movt r6,#65535  @ -4232
	mov r1,r6
	ldr r8,[fp,r1]
	cmp r8,#0
	bne .fibL913
.fibL914:
	mov r8,#0
	str r8,[fp,#-3556]
	bl .fibL915
.fibL911:
	ldr r8,[fp,#-3564]
	cmp r8,#0
	bne .fibL908
.fibL909:
	mov r8,#0
	movw r3,#61368
	movt r3,#65535  @ -4168
	mov r6,r3
	str r8,[fp,r6]
	bl .fibL910
.fibL906:
	movw r8,#61364
	movt r8,#65535  @ -4172
	mov r6,r8
	ldr r8,[fp,r6]
	cmp r8,#0
	beq .fibL904
.fibL903:
	mov r8,#1
	str r8,[fp,#-3564]
	bl .fibL905
.fibL901:
	movw r6,#61300
	movt r6,#65535  @ -4236
	mov r7,r6
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL899
.fibL898:
	mov r8,#1
	str r8,[fp,#-3568]
	bl .fibL900
.fibL896:
	ldr r8,[fp,#-3572]
	cmp r8,#0
	beq .fibL894
.fibL893:
	mov r8,#1
	movw r7,#61428
	movt r7,#65535  @ -4108
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL895
.fibL890:
	mov r8,#1
	str r8,[fp,#-3572]
	bl .fibL892
.fibL888:
	movw r8,#61364
	movt r8,#65535  @ -4172
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL886
.fibL885:
	mov r8,#1
	str r8,[fp,#-3576]
	bl .fibL887
.fibL883:
	movw r7,#61364
	movt r7,#65535  @ -4172
	mov r8,r7
	ldr r7,[fp,r8]
	cmp r7,#0
	bne .fibL880
.fibL881:
	mov r7,#0
	str r7,[fp,#-3580]
	bl .fibL882
.fibL878:
	ldr r7,[fp,#-3584]
	cmp r7,#0
	beq .fibL876
.fibL875:
	mov r7,#1
	str r7,[fp,#-3596]
	bl .fibL877
.fibL872:
	mov r7,#1
	str r7,[fp,#-3584]
	bl .fibL874
.fibL870:
	movw r8,#61300
	movt r8,#65535  @ -4236
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL868
.fibL867:
	mov r8,#1
	str r8,[fp,#-3588]
	bl .fibL869
.fibL865:
	movw r7,#61300
	movt r7,#65535  @ -4236
	mov r4,r7
	ldr r8,[fp,r4]
	cmp r8,#0
	bne .fibL862
.fibL863:
	mov r8,#0
	str r8,[fp,#-3592]
	bl .fibL864
.fibL860:
	ldr r8,[fp,#-3600]
	cmp r8,#0
	bne .fibL857
.fibL858:
	mov r8,#0
	movw r9,#61364
	movt r9,#65535  @ -4172
	movw r10,#60472
	movt r10,#65535  @ -5064
	str r9,[fp,r10]
	movw r10,#60472
	movt r10,#65535  @ -5064
	ldr r9,[fp,r10]
	mov r7,r9
	str r8,[fp,r7]
	bl .fibL859
.fibL855:
	movw r8,#61360
	movt r8,#65535  @ -4176
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL853
.fibL852:
	mov r8,#1
	str r8,[fp,#-3600]
	bl .fibL854
.fibL850:
	movw r7,#61296
	movt r7,#65535  @ -4240
	mov r9,r7
	movw r10,#60476
	movt r10,#65535  @ -5060
	str r9,[fp,r10]
	movw r10,#60476
	movt r10,#65535  @ -5060
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	beq .fibL848
.fibL847:
	mov r8,#1
	str r8,[fp,#-3604]
	bl .fibL849
.fibL845:
	ldr r8,[fp,#-3608]
	cmp r8,#0
	beq .fibL843
.fibL842:
	mov r8,#1
	movw r7,#61424
	movt r7,#65535  @ -4112
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL844
.fibL839:
	mov r8,#1
	str r8,[fp,#-3608]
	bl .fibL841
.fibL837:
	movw r8,#61360
	movt r8,#65535  @ -4176
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL835
.fibL834:
	mov r8,#1
	str r8,[fp,#-3612]
	bl .fibL836
.fibL832:
	movw r7,#61360
	movt r7,#65535  @ -4176
	mov r8,r7
	ldr r7,[fp,r8]
	cmp r7,#0
	bne .fibL829
.fibL830:
	mov r7,#0
	str r7,[fp,#-3616]
	bl .fibL831
.fibL827:
	ldr r7,[fp,#-3620]
	cmp r7,#0
	beq .fibL825
.fibL824:
	mov r7,#1
	str r7,[fp,#-3632]
	bl .fibL826
.fibL821:
	mov r7,#1
	str r7,[fp,#-3620]
	bl .fibL823
.fibL819:
	movw r8,#61296
	movt r8,#65535  @ -4240
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL817
.fibL816:
	mov r8,#1
	str r8,[fp,#-3624]
	bl .fibL818
.fibL814:
	movw r7,#61296
	movt r7,#65535  @ -4240
	mov r9,r7
	movw r10,#60480
	movt r10,#65535  @ -5056
	str r9,[fp,r10]
	movw r10,#60480
	movt r10,#65535  @ -5056
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	bne .fibL811
.fibL812:
	mov r8,#0
	str r8,[fp,#-3628]
	bl .fibL813
.fibL809:
	ldr r8,[fp,#-3636]
	cmp r8,#0
	bne .fibL806
.fibL807:
	mov r8,#0
	movw r9,#61360
	movt r9,#65535  @ -4176
	movw r10,#60484
	movt r10,#65535  @ -5052
	str r9,[fp,r10]
	movw r10,#60484
	movt r10,#65535  @ -5052
	ldr r9,[fp,r10]
	mov r7,r9
	str r8,[fp,r7]
	bl .fibL808
.fibL804:
	movw r8,#61356
	movt r8,#65535  @ -4180
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL802
.fibL801:
	mov r8,#1
	str r8,[fp,#-3636]
	bl .fibL803
.fibL799:
	movw r7,#61292
	movt r7,#65535  @ -4244
	mov r9,r7
	movw r10,#60488
	movt r10,#65535  @ -5048
	str r9,[fp,r10]
	movw r10,#60488
	movt r10,#65535  @ -5048
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	beq .fibL797
.fibL796:
	mov r8,#1
	str r8,[fp,#-3640]
	bl .fibL798
.fibL794:
	ldr r8,[fp,#-3644]
	cmp r8,#0
	beq .fibL792
.fibL791:
	mov r8,#1
	movw r7,#61420
	movt r7,#65535  @ -4116
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL793
.fibL788:
	mov r8,#1
	str r8,[fp,#-3644]
	bl .fibL790
.fibL786:
	movw r8,#61356
	movt r8,#65535  @ -4180
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL784
.fibL783:
	mov r8,#1
	str r8,[fp,#-3648]
	bl .fibL785
.fibL781:
	movw r7,#61356
	movt r7,#65535  @ -4180
	mov r8,r7
	ldr r7,[fp,r8]
	cmp r7,#0
	bne .fibL778
.fibL779:
	mov r7,#0
	str r7,[fp,#-3652]
	bl .fibL780
.fibL776:
	ldr r7,[fp,#-3656]
	cmp r7,#0
	beq .fibL774
.fibL773:
	mov r7,#1
	str r7,[fp,#-3668]
	bl .fibL775
.fibL770:
	mov r7,#1
	str r7,[fp,#-3656]
	bl .fibL772
.fibL768:
	movw r8,#61292
	movt r8,#65535  @ -4244
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL766
.fibL765:
	mov r8,#1
	str r8,[fp,#-3660]
	bl .fibL767
.fibL763:
	movw r7,#61292
	movt r7,#65535  @ -4244
	mov r9,r7
	movw r10,#60492
	movt r10,#65535  @ -5044
	str r9,[fp,r10]
	movw r10,#60492
	movt r10,#65535  @ -5044
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	bne .fibL760
.fibL761:
	mov r8,#0
	str r8,[fp,#-3664]
	bl .fibL762
.fibL758:
	ldr r8,[fp,#-3672]
	cmp r8,#0
	bne .fibL755
.fibL756:
	mov r8,#0
	movw r9,#61356
	movt r9,#65535  @ -4180
	movw r10,#60496
	movt r10,#65535  @ -5040
	str r9,[fp,r10]
	movw r10,#60496
	movt r10,#65535  @ -5040
	ldr r9,[fp,r10]
	mov r7,r9
	str r8,[fp,r7]
	bl .fibL757
.fibL753:
	movw r8,#61352
	movt r8,#65535  @ -4184
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL751
.fibL750:
	mov r8,#1
	str r8,[fp,#-3672]
	bl .fibL752
.fibL748:
	movw r7,#61288
	movt r7,#65535  @ -4248
	mov r9,r7
	movw r10,#60500
	movt r10,#65535  @ -5036
	str r9,[fp,r10]
	movw r10,#60500
	movt r10,#65535  @ -5036
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	beq .fibL746
.fibL745:
	mov r8,#1
	str r8,[fp,#-3676]
	bl .fibL747
.fibL743:
	ldr r8,[fp,#-3680]
	cmp r8,#0
	beq .fibL741
.fibL740:
	mov r8,#1
	movw r7,#61416
	movt r7,#65535  @ -4120
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL742
.fibL737:
	mov r8,#1
	str r8,[fp,#-3680]
	bl .fibL739
.fibL735:
	movw r8,#61352
	movt r8,#65535  @ -4184
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL733
.fibL732:
	mov r8,#1
	str r8,[fp,#-3684]
	bl .fibL734
.fibL730:
	movw r7,#61352
	movt r7,#65535  @ -4184
	mov r8,r7
	ldr r7,[fp,r8]
	cmp r7,#0
	bne .fibL727
.fibL728:
	mov r7,#0
	str r7,[fp,#-3688]
	bl .fibL729
.fibL725:
	ldr r7,[fp,#-3692]
	cmp r7,#0
	beq .fibL723
.fibL722:
	mov r7,#1
	str r7,[fp,#-3704]
	bl .fibL724
.fibL719:
	mov r7,#1
	str r7,[fp,#-3692]
	bl .fibL721
.fibL717:
	movw r8,#61288
	movt r8,#65535  @ -4248
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL715
.fibL714:
	mov r8,#1
	str r8,[fp,#-3696]
	bl .fibL716
.fibL712:
	movw r7,#61288
	movt r7,#65535  @ -4248
	mov r9,r7
	movw r10,#60504
	movt r10,#65535  @ -5032
	str r9,[fp,r10]
	movw r10,#60504
	movt r10,#65535  @ -5032
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	bne .fibL709
.fibL710:
	mov r8,#0
	str r8,[fp,#-3700]
	bl .fibL711
.fibL707:
	ldr r8,[fp,#-3708]
	cmp r8,#0
	bne .fibL704
.fibL705:
	mov r8,#0
	movw r9,#61352
	movt r9,#65535  @ -4184
	movw r10,#60508
	movt r10,#65535  @ -5028
	str r9,[fp,r10]
	movw r10,#60508
	movt r10,#65535  @ -5028
	ldr r9,[fp,r10]
	mov r7,r9
	str r8,[fp,r7]
	bl .fibL706
.fibL702:
	movw r8,#61348
	movt r8,#65535  @ -4188
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL700
.fibL699:
	mov r8,#1
	str r8,[fp,#-3708]
	bl .fibL701
.fibL697:
	movw r7,#61284
	movt r7,#65535  @ -4252
	mov r9,r7
	movw r10,#60512
	movt r10,#65535  @ -5024
	str r9,[fp,r10]
	movw r10,#60512
	movt r10,#65535  @ -5024
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	beq .fibL695
.fibL694:
	mov r8,#1
	str r8,[fp,#-3712]
	bl .fibL696
.fibL692:
	ldr r8,[fp,#-3716]
	cmp r8,#0
	beq .fibL690
.fibL689:
	mov r8,#1
	movw r7,#61412
	movt r7,#65535  @ -4124
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL691
.fibL686:
	mov r8,#1
	str r8,[fp,#-3716]
	bl .fibL688
.fibL684:
	movw r8,#61348
	movt r8,#65535  @ -4188
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL682
.fibL681:
	mov r8,#1
	str r8,[fp,#-3720]
	bl .fibL683
.fibL679:
	movw r7,#61348
	movt r7,#65535  @ -4188
	mov r8,r7
	ldr r7,[fp,r8]
	cmp r7,#0
	bne .fibL676
.fibL677:
	mov r7,#0
	str r7,[fp,#-3724]
	bl .fibL678
.fibL674:
	ldr r7,[fp,#-3728]
	cmp r7,#0
	beq .fibL672
.fibL671:
	mov r7,#1
	str r7,[fp,#-3740]
	bl .fibL673
.fibL668:
	mov r7,#1
	str r7,[fp,#-3728]
	bl .fibL670
.fibL666:
	movw r8,#61284
	movt r8,#65535  @ -4252
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL664
.fibL663:
	mov r8,#1
	str r8,[fp,#-3732]
	bl .fibL665
.fibL661:
	movw r7,#61284
	movt r7,#65535  @ -4252
	mov r9,r7
	movw r10,#60516
	movt r10,#65535  @ -5020
	str r9,[fp,r10]
	movw r10,#60516
	movt r10,#65535  @ -5020
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	bne .fibL658
.fibL659:
	mov r8,#0
	str r8,[fp,#-3736]
	bl .fibL660
.fibL656:
	ldr r8,[fp,#-3744]
	cmp r8,#0
	bne .fibL653
.fibL654:
	mov r8,#0
	movw r9,#61348
	movt r9,#65535  @ -4188
	movw r10,#60520
	movt r10,#65535  @ -5016
	str r9,[fp,r10]
	movw r10,#60520
	movt r10,#65535  @ -5016
	ldr r9,[fp,r10]
	mov r7,r9
	str r8,[fp,r7]
	bl .fibL655
.fibL651:
	movw r8,#61344
	movt r8,#65535  @ -4192
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL649
.fibL648:
	mov r8,#1
	str r8,[fp,#-3744]
	bl .fibL650
.fibL646:
	movw r7,#61280
	movt r7,#65535  @ -4256
	mov r9,r7
	movw r10,#60524
	movt r10,#65535  @ -5012
	str r9,[fp,r10]
	movw r10,#60524
	movt r10,#65535  @ -5012
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	beq .fibL644
.fibL643:
	mov r8,#1
	str r8,[fp,#-3748]
	bl .fibL645
.fibL641:
	ldr r8,[fp,#-3752]
	cmp r8,#0
	beq .fibL639
.fibL638:
	mov r8,#1
	movw r7,#61408
	movt r7,#65535  @ -4128
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL640
.fibL635:
	mov r8,#1
	str r8,[fp,#-3752]
	bl .fibL637
.fibL633:
	movw r8,#61344
	movt r8,#65535  @ -4192
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL631
.fibL630:
	mov r8,#1
	str r8,[fp,#-3756]
	bl .fibL632
.fibL628:
	movw r7,#61344
	movt r7,#65535  @ -4192
	mov r8,r7
	ldr r7,[fp,r8]
	cmp r7,#0
	bne .fibL625
.fibL626:
	mov r7,#0
	str r7,[fp,#-3760]
	bl .fibL627
.fibL623:
	ldr r7,[fp,#-3764]
	cmp r7,#0
	beq .fibL621
.fibL620:
	mov r7,#1
	str r7,[fp,#-3776]
	bl .fibL622
.fibL617:
	mov r7,#1
	str r7,[fp,#-3764]
	bl .fibL619
.fibL615:
	movw r8,#61280
	movt r8,#65535  @ -4256
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL613
.fibL612:
	mov r8,#1
	str r8,[fp,#-3768]
	bl .fibL614
.fibL610:
	movw r7,#61280
	movt r7,#65535  @ -4256
	mov r9,r7
	movw r10,#60528
	movt r10,#65535  @ -5008
	str r9,[fp,r10]
	movw r10,#60528
	movt r10,#65535  @ -5008
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	bne .fibL607
.fibL608:
	mov r8,#0
	str r8,[fp,#-3772]
	bl .fibL609
.fibL605:
	ldr r8,[fp,#-3780]
	cmp r8,#0
	bne .fibL602
.fibL603:
	mov r8,#0
	movw r9,#61344
	movt r9,#65535  @ -4192
	movw r10,#60532
	movt r10,#65535  @ -5004
	str r9,[fp,r10]
	movw r10,#60532
	movt r10,#65535  @ -5004
	ldr r9,[fp,r10]
	mov r7,r9
	str r8,[fp,r7]
	bl .fibL604
.fibL600:
	movw r8,#61340
	movt r8,#65535  @ -4196
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL598
.fibL597:
	mov r8,#1
	str r8,[fp,#-3780]
	bl .fibL599
.fibL595:
	movw r7,#61276
	movt r7,#65535  @ -4260
	mov r9,r7
	movw r10,#60536
	movt r10,#65535  @ -5000
	str r9,[fp,r10]
	movw r10,#60536
	movt r10,#65535  @ -5000
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	beq .fibL593
.fibL592:
	mov r8,#1
	str r8,[fp,#-3784]
	bl .fibL594
.fibL590:
	ldr r8,[fp,#-3788]
	cmp r8,#0
	beq .fibL588
.fibL587:
	mov r8,#1
	movw r7,#61404
	movt r7,#65535  @ -4132
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL589
.fibL584:
	mov r8,#1
	str r8,[fp,#-3788]
	bl .fibL586
.fibL582:
	movw r8,#61340
	movt r8,#65535  @ -4196
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL580
.fibL579:
	mov r8,#1
	str r8,[fp,#-3792]
	bl .fibL581
.fibL577:
	movw r7,#61340
	movt r7,#65535  @ -4196
	mov r8,r7
	ldr r7,[fp,r8]
	cmp r7,#0
	bne .fibL574
.fibL575:
	mov r7,#0
	str r7,[fp,#-3796]
	bl .fibL576
.fibL572:
	ldr r7,[fp,#-3800]
	cmp r7,#0
	beq .fibL570
.fibL569:
	mov r7,#1
	str r7,[fp,#-3812]
	bl .fibL571
.fibL566:
	mov r7,#1
	str r7,[fp,#-3800]
	bl .fibL568
.fibL564:
	movw r8,#61276
	movt r8,#65535  @ -4260
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL562
.fibL561:
	mov r8,#1
	str r8,[fp,#-3804]
	bl .fibL563
.fibL559:
	movw r7,#61276
	movt r7,#65535  @ -4260
	mov r9,r7
	movw r10,#60540
	movt r10,#65535  @ -4996
	str r9,[fp,r10]
	movw r10,#60540
	movt r10,#65535  @ -4996
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	bne .fibL556
.fibL557:
	mov r8,#0
	str r8,[fp,#-3808]
	bl .fibL558
.fibL554:
	ldr r8,[fp,#-3816]
	cmp r8,#0
	bne .fibL551
.fibL552:
	mov r8,#0
	movw r9,#61340
	movt r9,#65535  @ -4196
	movw r10,#60544
	movt r10,#65535  @ -4992
	str r9,[fp,r10]
	movw r10,#60544
	movt r10,#65535  @ -4992
	ldr r9,[fp,r10]
	mov r7,r9
	str r8,[fp,r7]
	bl .fibL553
.fibL549:
	movw r8,#61336
	movt r8,#65535  @ -4200
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL547
.fibL546:
	mov r8,#1
	str r8,[fp,#-3816]
	bl .fibL548
.fibL544:
	movw r7,#61272
	movt r7,#65535  @ -4264
	mov r9,r7
	movw r10,#60548
	movt r10,#65535  @ -4988
	str r9,[fp,r10]
	movw r10,#60548
	movt r10,#65535  @ -4988
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	beq .fibL542
.fibL541:
	mov r8,#1
	str r8,[fp,#-3820]
	bl .fibL543
.fibL539:
	ldr r8,[fp,#-3824]
	cmp r8,#0
	beq .fibL537
.fibL536:
	mov r8,#1
	movw r7,#61400
	movt r7,#65535  @ -4136
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL538
.fibL533:
	mov r8,#1
	str r8,[fp,#-3824]
	bl .fibL535
.fibL531:
	movw r8,#61336
	movt r8,#65535  @ -4200
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL529
.fibL528:
	mov r8,#1
	str r8,[fp,#-3828]
	bl .fibL530
.fibL526:
	movw r7,#61336
	movt r7,#65535  @ -4200
	mov r8,r7
	ldr r7,[fp,r8]
	cmp r7,#0
	bne .fibL523
.fibL524:
	mov r7,#0
	str r7,[fp,#-3832]
	bl .fibL525
.fibL521:
	ldr r7,[fp,#-3836]
	cmp r7,#0
	beq .fibL519
.fibL518:
	mov r7,#1
	str r7,[fp,#-3848]
	bl .fibL520
.fibL515:
	mov r7,#1
	str r7,[fp,#-3836]
	bl .fibL517
.fibL513:
	movw r8,#61272
	movt r8,#65535  @ -4264
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL511
.fibL510:
	mov r8,#1
	str r8,[fp,#-3840]
	bl .fibL512
.fibL508:
	movw r7,#61272
	movt r7,#65535  @ -4264
	mov r9,r7
	movw r10,#60552
	movt r10,#65535  @ -4984
	str r9,[fp,r10]
	movw r10,#60552
	movt r10,#65535  @ -4984
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	bne .fibL505
.fibL506:
	mov r8,#0
	str r8,[fp,#-3844]
	bl .fibL507
.fibL503:
	ldr r8,[fp,#-3852]
	cmp r8,#0
	bne .fibL500
.fibL501:
	mov r8,#0
	movw r9,#61336
	movt r9,#65535  @ -4200
	movw r10,#60556
	movt r10,#65535  @ -4980
	str r9,[fp,r10]
	movw r10,#60556
	movt r10,#65535  @ -4980
	ldr r9,[fp,r10]
	mov r7,r9
	str r8,[fp,r7]
	bl .fibL502
.fibL498:
	movw r8,#61332
	movt r8,#65535  @ -4204
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL496
.fibL495:
	mov r8,#1
	str r8,[fp,#-3852]
	bl .fibL497
.fibL493:
	movw r7,#61268
	movt r7,#65535  @ -4268
	mov r9,r7
	movw r10,#60560
	movt r10,#65535  @ -4976
	str r9,[fp,r10]
	movw r10,#60560
	movt r10,#65535  @ -4976
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	beq .fibL491
.fibL490:
	mov r8,#1
	str r8,[fp,#-3856]
	bl .fibL492
.fibL488:
	ldr r8,[fp,#-3860]
	cmp r8,#0
	beq .fibL486
.fibL485:
	mov r8,#1
	movw r7,#61396
	movt r7,#65535  @ -4140
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL487
.fibL482:
	mov r8,#1
	str r8,[fp,#-3860]
	bl .fibL484
.fibL480:
	movw r8,#61332
	movt r8,#65535  @ -4204
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL478
.fibL477:
	mov r8,#1
	str r8,[fp,#-3864]
	bl .fibL479
.fibL475:
	movw r7,#61332
	movt r7,#65535  @ -4204
	mov r8,r7
	ldr r7,[fp,r8]
	cmp r7,#0
	bne .fibL472
.fibL473:
	mov r7,#0
	str r7,[fp,#-3868]
	bl .fibL474
.fibL470:
	ldr r7,[fp,#-3872]
	cmp r7,#0
	beq .fibL468
.fibL467:
	mov r7,#1
	str r7,[fp,#-3884]
	bl .fibL469
.fibL464:
	mov r7,#1
	str r7,[fp,#-3872]
	bl .fibL466
.fibL462:
	movw r8,#61268
	movt r8,#65535  @ -4268
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL460
.fibL459:
	mov r8,#1
	str r8,[fp,#-3876]
	bl .fibL461
.fibL457:
	movw r7,#61268
	movt r7,#65535  @ -4268
	mov r9,r7
	movw r10,#60564
	movt r10,#65535  @ -4972
	str r9,[fp,r10]
	movw r10,#60564
	movt r10,#65535  @ -4972
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	bne .fibL454
.fibL455:
	mov r8,#0
	str r8,[fp,#-3880]
	bl .fibL456
.fibL452:
	ldr r8,[fp,#-3888]
	cmp r8,#0
	bne .fibL449
.fibL450:
	mov r8,#0
	movw r9,#61332
	movt r9,#65535  @ -4204
	movw r10,#60568
	movt r10,#65535  @ -4968
	str r9,[fp,r10]
	movw r10,#60568
	movt r10,#65535  @ -4968
	ldr r9,[fp,r10]
	mov r7,r9
	str r8,[fp,r7]
	bl .fibL451
.fibL447:
	movw r8,#61328
	movt r8,#65535  @ -4208
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL445
.fibL444:
	mov r8,#1
	str r8,[fp,#-3888]
	bl .fibL446
.fibL442:
	movw r7,#61264
	movt r7,#65535  @ -4272
	mov r9,r7
	movw r10,#60572
	movt r10,#65535  @ -4964
	str r9,[fp,r10]
	movw r10,#60572
	movt r10,#65535  @ -4964
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	beq .fibL440
.fibL439:
	mov r8,#1
	str r8,[fp,#-3892]
	bl .fibL441
.fibL437:
	ldr r8,[fp,#-3896]
	cmp r8,#0
	beq .fibL435
.fibL434:
	mov r8,#1
	movw r7,#61392
	movt r7,#65535  @ -4144
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL436
.fibL431:
	mov r8,#1
	str r8,[fp,#-3896]
	bl .fibL433
.fibL429:
	movw r8,#61328
	movt r8,#65535  @ -4208
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL427
.fibL426:
	mov r8,#1
	str r8,[fp,#-3900]
	bl .fibL428
.fibL424:
	movw r7,#61328
	movt r7,#65535  @ -4208
	mov r8,r7
	ldr r7,[fp,r8]
	cmp r7,#0
	bne .fibL421
.fibL422:
	mov r7,#0
	str r7,[fp,#-3904]
	bl .fibL423
.fibL419:
	ldr r7,[fp,#-3908]
	cmp r7,#0
	beq .fibL417
.fibL416:
	mov r7,#1
	str r7,[fp,#-3920]
	bl .fibL418
.fibL413:
	mov r7,#1
	str r7,[fp,#-3908]
	bl .fibL415
.fibL411:
	movw r8,#61264
	movt r8,#65535  @ -4272
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL409
.fibL408:
	mov r8,#1
	str r8,[fp,#-3912]
	bl .fibL410
.fibL406:
	movw r7,#61264
	movt r7,#65535  @ -4272
	mov r9,r7
	movw r10,#60576
	movt r10,#65535  @ -4960
	str r9,[fp,r10]
	movw r10,#60576
	movt r10,#65535  @ -4960
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	bne .fibL403
.fibL404:
	mov r8,#0
	str r8,[fp,#-3916]
	bl .fibL405
.fibL401:
	ldr r8,[fp,#-3924]
	cmp r8,#0
	bne .fibL398
.fibL399:
	mov r8,#0
	movw r9,#61328
	movt r9,#65535  @ -4208
	movw r10,#60580
	movt r10,#65535  @ -4956
	str r9,[fp,r10]
	movw r10,#60580
	movt r10,#65535  @ -4956
	ldr r9,[fp,r10]
	mov r7,r9
	str r8,[fp,r7]
	bl .fibL400
.fibL396:
	movw r8,#61324
	movt r8,#65535  @ -4212
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL394
.fibL393:
	mov r8,#1
	str r8,[fp,#-3924]
	bl .fibL395
.fibL391:
	movw r7,#61260
	movt r7,#65535  @ -4276
	mov r9,r7
	movw r10,#60584
	movt r10,#65535  @ -4952
	str r9,[fp,r10]
	movw r10,#60584
	movt r10,#65535  @ -4952
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	beq .fibL389
.fibL388:
	mov r8,#1
	str r8,[fp,#-3928]
	bl .fibL390
.fibL386:
	ldr r8,[fp,#-3932]
	cmp r8,#0
	beq .fibL384
.fibL383:
	mov r8,#1
	movw r7,#61388
	movt r7,#65535  @ -4148
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL385
.fibL380:
	mov r8,#1
	str r8,[fp,#-3932]
	bl .fibL382
.fibL378:
	movw r8,#61324
	movt r8,#65535  @ -4212
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL376
.fibL375:
	mov r8,#1
	str r8,[fp,#-3936]
	bl .fibL377
.fibL373:
	movw r7,#61324
	movt r7,#65535  @ -4212
	mov r8,r7
	ldr r7,[fp,r8]
	cmp r7,#0
	bne .fibL370
.fibL371:
	mov r7,#0
	str r7,[fp,#-3940]
	bl .fibL372
.fibL368:
	ldr r7,[fp,#-3944]
	cmp r7,#0
	beq .fibL366
.fibL365:
	mov r7,#1
	str r7,[fp,#-3956]
	bl .fibL367
.fibL362:
	mov r7,#1
	str r7,[fp,#-3944]
	bl .fibL364
.fibL360:
	movw r8,#61260
	movt r8,#65535  @ -4276
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL358
.fibL357:
	mov r8,#1
	str r8,[fp,#-3948]
	bl .fibL359
.fibL355:
	movw r7,#61260
	movt r7,#65535  @ -4276
	mov r9,r7
	movw r10,#60588
	movt r10,#65535  @ -4948
	str r9,[fp,r10]
	movw r10,#60588
	movt r10,#65535  @ -4948
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	bne .fibL352
.fibL353:
	mov r8,#0
	str r8,[fp,#-3952]
	bl .fibL354
.fibL350:
	ldr r8,[fp,#-3960]
	cmp r8,#0
	bne .fibL347
.fibL348:
	mov r8,#0
	movw r9,#61324
	movt r9,#65535  @ -4212
	movw r10,#60592
	movt r10,#65535  @ -4944
	str r9,[fp,r10]
	movw r10,#60592
	movt r10,#65535  @ -4944
	ldr r9,[fp,r10]
	mov r7,r9
	str r8,[fp,r7]
	bl .fibL349
.fibL345:
	movw r8,#61320
	movt r8,#65535  @ -4216
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL343
.fibL342:
	mov r8,#1
	str r8,[fp,#-3960]
	bl .fibL344
.fibL340:
	movw r7,#61256
	movt r7,#65535  @ -4280
	mov r9,r7
	movw r10,#60596
	movt r10,#65535  @ -4940
	str r9,[fp,r10]
	movw r10,#60596
	movt r10,#65535  @ -4940
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	beq .fibL338
.fibL337:
	mov r8,#1
	str r8,[fp,#-3964]
	bl .fibL339
.fibL335:
	ldr r8,[fp,#-3968]
	cmp r8,#0
	beq .fibL333
.fibL332:
	mov r8,#1
	movw r7,#61384
	movt r7,#65535  @ -4152
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL334
.fibL329:
	mov r8,#1
	str r8,[fp,#-3968]
	bl .fibL331
.fibL327:
	movw r8,#61320
	movt r8,#65535  @ -4216
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL325
.fibL324:
	mov r8,#1
	str r8,[fp,#-3972]
	bl .fibL326
.fibL322:
	movw r7,#61320
	movt r7,#65535  @ -4216
	mov r8,r7
	ldr r7,[fp,r8]
	cmp r7,#0
	bne .fibL319
.fibL320:
	mov r7,#0
	str r7,[fp,#-3976]
	bl .fibL321
.fibL317:
	ldr r7,[fp,#-3980]
	cmp r7,#0
	beq .fibL315
.fibL314:
	mov r7,#1
	str r7,[fp,#-3992]
	bl .fibL316
.fibL311:
	mov r7,#1
	str r7,[fp,#-3980]
	bl .fibL313
.fibL309:
	movw r8,#61256
	movt r8,#65535  @ -4280
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL307
.fibL306:
	mov r8,#1
	str r8,[fp,#-3984]
	bl .fibL308
.fibL304:
	movw r7,#61256
	movt r7,#65535  @ -4280
	mov r9,r7
	movw r10,#60600
	movt r10,#65535  @ -4936
	str r9,[fp,r10]
	movw r10,#60600
	movt r10,#65535  @ -4936
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	bne .fibL301
.fibL302:
	mov r8,#0
	str r8,[fp,#-3988]
	bl .fibL303
.fibL299:
	ldr r8,[fp,#-3996]
	cmp r8,#0
	bne .fibL296
.fibL297:
	mov r8,#0
	movw r9,#61320
	movt r9,#65535  @ -4216
	movw r10,#60604
	movt r10,#65535  @ -4932
	str r9,[fp,r10]
	movw r10,#60604
	movt r10,#65535  @ -4932
	ldr r9,[fp,r10]
	mov r7,r9
	str r8,[fp,r7]
	bl .fibL298
.fibL294:
	movw r8,#61316
	movt r8,#65535  @ -4220
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL292
.fibL291:
	mov r8,#1
	str r8,[fp,#-3996]
	bl .fibL293
.fibL289:
	movw r7,#61252
	movt r7,#65535  @ -4284
	mov r9,r7
	movw r10,#60608
	movt r10,#65535  @ -4928
	str r9,[fp,r10]
	movw r10,#60608
	movt r10,#65535  @ -4928
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	beq .fibL287
.fibL286:
	mov r8,#1
	str r8,[fp,#-4000]
	bl .fibL288
.fibL284:
	ldr r8,[fp,#-4004]
	cmp r8,#0
	beq .fibL282
.fibL281:
	mov r8,#1
	movw r7,#61380
	movt r7,#65535  @ -4156
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL283
.fibL278:
	mov r8,#1
	str r8,[fp,#-4004]
	bl .fibL280
.fibL276:
	movw r8,#61316
	movt r8,#65535  @ -4220
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL274
.fibL273:
	mov r8,#1
	str r8,[fp,#-4008]
	bl .fibL275
.fibL271:
	movw r7,#61316
	movt r7,#65535  @ -4220
	mov r8,r7
	ldr r7,[fp,r8]
	cmp r7,#0
	bne .fibL268
.fibL269:
	mov r7,#0
	str r7,[fp,#-4012]
	bl .fibL270
.fibL266:
	ldr r7,[fp,#-4016]
	cmp r7,#0
	beq .fibL264
.fibL263:
	mov r7,#1
	str r7,[fp,#-4028]
	bl .fibL265
.fibL260:
	mov r7,#1
	str r7,[fp,#-4016]
	bl .fibL262
.fibL258:
	movw r8,#61252
	movt r8,#65535  @ -4284
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL256
.fibL255:
	mov r8,#1
	str r8,[fp,#-4020]
	bl .fibL257
.fibL253:
	movw r7,#61252
	movt r7,#65535  @ -4284
	mov r9,r7
	movw r10,#60612
	movt r10,#65535  @ -4924
	str r9,[fp,r10]
	movw r10,#60612
	movt r10,#65535  @ -4924
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	bne .fibL250
.fibL251:
	mov r8,#0
	str r8,[fp,#-4024]
	bl .fibL252
.fibL248:
	ldr r8,[fp,#-4032]
	cmp r8,#0
	bne .fibL245
.fibL246:
	mov r8,#0
	movw r9,#61316
	movt r9,#65535  @ -4220
	movw r10,#60616
	movt r10,#65535  @ -4920
	str r9,[fp,r10]
	movw r10,#60616
	movt r10,#65535  @ -4920
	ldr r9,[fp,r10]
	mov r7,r9
	str r8,[fp,r7]
	bl .fibL247
.fibL243:
	movw r8,#61312
	movt r8,#65535  @ -4224
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL241
.fibL240:
	mov r8,#1
	str r8,[fp,#-4032]
	bl .fibL242
.fibL238:
	movw r7,#61248
	movt r7,#65535  @ -4288
	mov r9,r7
	movw r10,#60620
	movt r10,#65535  @ -4916
	str r9,[fp,r10]
	movw r10,#60620
	movt r10,#65535  @ -4916
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	beq .fibL236
.fibL235:
	mov r8,#1
	str r8,[fp,#-4036]
	bl .fibL237
.fibL233:
	ldr r8,[fp,#-4040]
	cmp r8,#0
	beq .fibL231
.fibL230:
	mov r8,#1
	movw r7,#61376
	movt r7,#65535  @ -4160
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL232
.fibL227:
	mov r8,#1
	str r8,[fp,#-4040]
	bl .fibL229
.fibL225:
	movw r8,#61312
	movt r8,#65535  @ -4224
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL223
.fibL222:
	mov r8,#1
	str r8,[fp,#-4044]
	bl .fibL224
.fibL220:
	movw r7,#61312
	movt r7,#65535  @ -4224
	mov r8,r7
	ldr r7,[fp,r8]
	cmp r7,#0
	bne .fibL217
.fibL218:
	mov r7,#0
	str r7,[fp,#-4048]
	bl .fibL219
.fibL215:
	ldr r7,[fp,#-4052]
	cmp r7,#0
	beq .fibL213
.fibL212:
	mov r7,#1
	str r7,[fp,#-4064]
	bl .fibL214
.fibL209:
	mov r7,#1
	str r7,[fp,#-4052]
	bl .fibL211
.fibL207:
	movw r8,#61248
	movt r8,#65535  @ -4288
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL205
.fibL204:
	mov r8,#1
	str r8,[fp,#-4056]
	bl .fibL206
.fibL202:
	movw r7,#61248
	movt r7,#65535  @ -4288
	mov r9,r7
	movw r10,#60624
	movt r10,#65535  @ -4912
	str r9,[fp,r10]
	movw r10,#60624
	movt r10,#65535  @ -4912
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	bne .fibL199
.fibL200:
	mov r8,#0
	str r8,[fp,#-4060]
	bl .fibL201
.fibL197:
	ldr r8,[fp,#-4068]
	cmp r8,#0
	bne .fibL194
.fibL195:
	mov r8,#0
	movw r9,#61312
	movt r9,#65535  @ -4224
	movw r10,#60628
	movt r10,#65535  @ -4908
	str r9,[fp,r10]
	movw r10,#60628
	movt r10,#65535  @ -4908
	ldr r9,[fp,r10]
	mov r7,r9
	str r8,[fp,r7]
	bl .fibL196
.fibL192:
	mov r8,#0
	cmp r8,#0
	beq .fibL190
.fibL189:
	mov r8,#1
	str r8,[fp,#-4068]
	bl .fibL191
.fibL187:
	movw r8,#61244
	movt r8,#65535  @ -4292
	mov r9,r8
	movw r10,#60632
	movt r10,#65535  @ -4904
	str r9,[fp,r10]
	movw r10,#60632
	movt r10,#65535  @ -4904
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	beq .fibL185
.fibL184:
	mov r8,#1
	str r8,[fp,#-4072]
	bl .fibL186
.fibL182:
	ldr r8,[fp,#-4076]
	cmp r8,#0
	beq .fibL180
.fibL179:
	mov r8,#1
	movw r7,#61372
	movt r7,#65535  @ -4164
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL181
.fibL176:
	mov r8,#1
	str r8,[fp,#-4076]
	bl .fibL178
.fibL174:
	mov r8,#0
	cmp r8,#0
	beq .fibL172
.fibL171:
	mov r8,#1
	str r8,[fp,#-4080]
	bl .fibL173
.fibL169:
	mov r8,#0
	cmp r8,#0
	bne .fibL166
.fibL167:
	mov r8,#0
	str r8,[fp,#-4084]
	bl .fibL168
.fibL164:
	ldr r8,[fp,#-4088]
	cmp r8,#0
	beq .fibL162
.fibL161:
	mov r8,#1
	movw r7,#61436
	movt r7,#65535  @ -4100
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL163
.fibL158:
	mov r8,#1
	str r8,[fp,#-4088]
	bl .fibL160
.fibL156:
	movw r8,#61244
	movt r8,#65535  @ -4292
	mov r7,r8
	ldr r8,[fp,r7]
	cmp r8,#0
	beq .fibL154
.fibL153:
	mov r8,#1
	str r8,[fp,#-4092]
	bl .fibL155
.fibL151:
	movw r7,#61244
	movt r7,#65535  @ -4292
	mov r9,r7
	movw r10,#60636
	movt r10,#65535  @ -4900
	str r9,[fp,r10]
	movw r10,#60636
	movt r10,#65535  @ -4900
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	cmp r8,#0
	bne .fibL148
.fibL149:
	mov r8,#0
	movw r9,#61440
	movt r9,#65535  @ -4096
	str r8,[fp,r9]
	bl .fibL150
.fibL146:
	movw r8,#61304
	movt r8,#65535  @ -4232
	mov r9,r8
	movw r10,#60644
	movt r10,#65535  @ -4892
	str r9,[fp,r10]
	movw r10,#60644
	movt r10,#65535  @ -4892
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61304
	movt r9,#65535  @ -4232
	movw r10,#60640
	movt r10,#65535  @ -4896
	str r9,[fp,r10]
	movw r10,#60640
	movt r10,#65535  @ -4896
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL147
.fibL144:
	movw r8,#61300
	movt r8,#65535  @ -4236
	mov r9,r8
	movw r10,#60652
	movt r10,#65535  @ -4884
	str r9,[fp,r10]
	movw r10,#60652
	movt r10,#65535  @ -4884
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61300
	movt r9,#65535  @ -4236
	movw r10,#60648
	movt r10,#65535  @ -4888
	str r9,[fp,r10]
	movw r10,#60648
	movt r10,#65535  @ -4888
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL145
.fibL142:
	movw r8,#61296
	movt r8,#65535  @ -4240
	mov r9,r8
	movw r10,#60660
	movt r10,#65535  @ -4876
	str r9,[fp,r10]
	movw r10,#60660
	movt r10,#65535  @ -4876
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61296
	movt r9,#65535  @ -4240
	movw r10,#60656
	movt r10,#65535  @ -4880
	str r9,[fp,r10]
	movw r10,#60656
	movt r10,#65535  @ -4880
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL143
.fibL140:
	movw r8,#61292
	movt r8,#65535  @ -4244
	mov r9,r8
	movw r10,#60668
	movt r10,#65535  @ -4868
	str r9,[fp,r10]
	movw r10,#60668
	movt r10,#65535  @ -4868
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61292
	movt r9,#65535  @ -4244
	movw r10,#60664
	movt r10,#65535  @ -4872
	str r9,[fp,r10]
	movw r10,#60664
	movt r10,#65535  @ -4872
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL141
.fibL138:
	movw r8,#61288
	movt r8,#65535  @ -4248
	mov r9,r8
	movw r10,#60676
	movt r10,#65535  @ -4860
	str r9,[fp,r10]
	movw r10,#60676
	movt r10,#65535  @ -4860
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61288
	movt r9,#65535  @ -4248
	movw r10,#60672
	movt r10,#65535  @ -4864
	str r9,[fp,r10]
	movw r10,#60672
	movt r10,#65535  @ -4864
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL139
.fibL136:
	movw r8,#61284
	movt r8,#65535  @ -4252
	mov r9,r8
	movw r10,#60684
	movt r10,#65535  @ -4852
	str r9,[fp,r10]
	movw r10,#60684
	movt r10,#65535  @ -4852
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61284
	movt r9,#65535  @ -4252
	movw r10,#60680
	movt r10,#65535  @ -4856
	str r9,[fp,r10]
	movw r10,#60680
	movt r10,#65535  @ -4856
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL137
.fibL134:
	movw r8,#61280
	movt r8,#65535  @ -4256
	mov r9,r8
	movw r10,#60692
	movt r10,#65535  @ -4844
	str r9,[fp,r10]
	movw r10,#60692
	movt r10,#65535  @ -4844
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61280
	movt r9,#65535  @ -4256
	movw r10,#60688
	movt r10,#65535  @ -4848
	str r9,[fp,r10]
	movw r10,#60688
	movt r10,#65535  @ -4848
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL135
.fibL132:
	movw r8,#61276
	movt r8,#65535  @ -4260
	mov r9,r8
	movw r10,#60700
	movt r10,#65535  @ -4836
	str r9,[fp,r10]
	movw r10,#60700
	movt r10,#65535  @ -4836
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61276
	movt r9,#65535  @ -4260
	movw r10,#60696
	movt r10,#65535  @ -4840
	str r9,[fp,r10]
	movw r10,#60696
	movt r10,#65535  @ -4840
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL133
.fibL130:
	movw r8,#61272
	movt r8,#65535  @ -4264
	mov r9,r8
	movw r10,#60708
	movt r10,#65535  @ -4828
	str r9,[fp,r10]
	movw r10,#60708
	movt r10,#65535  @ -4828
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61272
	movt r9,#65535  @ -4264
	movw r10,#60704
	movt r10,#65535  @ -4832
	str r9,[fp,r10]
	movw r10,#60704
	movt r10,#65535  @ -4832
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL131
.fibL128:
	movw r8,#61268
	movt r8,#65535  @ -4268
	mov r9,r8
	movw r10,#60716
	movt r10,#65535  @ -4820
	str r9,[fp,r10]
	movw r10,#60716
	movt r10,#65535  @ -4820
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61268
	movt r9,#65535  @ -4268
	movw r10,#60712
	movt r10,#65535  @ -4824
	str r9,[fp,r10]
	movw r10,#60712
	movt r10,#65535  @ -4824
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL129
.fibL126:
	movw r8,#61264
	movt r8,#65535  @ -4272
	mov r9,r8
	movw r10,#60724
	movt r10,#65535  @ -4812
	str r9,[fp,r10]
	movw r10,#60724
	movt r10,#65535  @ -4812
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61264
	movt r9,#65535  @ -4272
	movw r10,#60720
	movt r10,#65535  @ -4816
	str r9,[fp,r10]
	movw r10,#60720
	movt r10,#65535  @ -4816
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL127
.fibL124:
	movw r8,#61260
	movt r8,#65535  @ -4276
	mov r9,r8
	movw r10,#60732
	movt r10,#65535  @ -4804
	str r9,[fp,r10]
	movw r10,#60732
	movt r10,#65535  @ -4804
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61260
	movt r9,#65535  @ -4276
	movw r10,#60728
	movt r10,#65535  @ -4808
	str r9,[fp,r10]
	movw r10,#60728
	movt r10,#65535  @ -4808
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL125
.fibL122:
	movw r8,#61256
	movt r8,#65535  @ -4280
	mov r9,r8
	movw r10,#60740
	movt r10,#65535  @ -4796
	str r9,[fp,r10]
	movw r10,#60740
	movt r10,#65535  @ -4796
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61256
	movt r9,#65535  @ -4280
	movw r10,#60736
	movt r10,#65535  @ -4800
	str r9,[fp,r10]
	movw r10,#60736
	movt r10,#65535  @ -4800
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL123
.fibL120:
	movw r8,#61252
	movt r8,#65535  @ -4284
	mov r9,r8
	movw r10,#60748
	movt r10,#65535  @ -4788
	str r9,[fp,r10]
	movw r10,#60748
	movt r10,#65535  @ -4788
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61252
	movt r9,#65535  @ -4284
	movw r10,#60744
	movt r10,#65535  @ -4792
	str r9,[fp,r10]
	movw r10,#60744
	movt r10,#65535  @ -4792
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL121
.fibL118:
	movw r8,#61248
	movt r8,#65535  @ -4288
	mov r9,r8
	movw r10,#60756
	movt r10,#65535  @ -4780
	str r9,[fp,r10]
	movw r10,#60756
	movt r10,#65535  @ -4780
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61248
	movt r9,#65535  @ -4288
	movw r10,#60752
	movt r10,#65535  @ -4784
	str r9,[fp,r10]
	movw r10,#60752
	movt r10,#65535  @ -4784
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL119
.fibL116:
	movw r8,#61244
	movt r8,#65535  @ -4292
	mov r9,r8
	movw r10,#60764
	movt r10,#65535  @ -4772
	str r9,[fp,r10]
	movw r10,#60764
	movt r10,#65535  @ -4772
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61244
	movt r9,#65535  @ -4292
	movw r10,#60760
	movt r10,#65535  @ -4776
	str r9,[fp,r10]
	movw r10,#60760
	movt r10,#65535  @ -4776
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL117
.fibL114:
	movw r8,#61236
	movt r8,#65535  @ -4300
	mov r9,r8
	movw r10,#60772
	movt r10,#65535  @ -4764
	str r9,[fp,r10]
	movw r10,#60772
	movt r10,#65535  @ -4764
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61236
	movt r9,#65535  @ -4300
	movw r10,#60768
	movt r10,#65535  @ -4768
	str r9,[fp,r10]
	movw r10,#60768
	movt r10,#65535  @ -4768
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL115
.fibL112:
	movw r8,#61232
	movt r8,#65535  @ -4304
	mov r9,r8
	movw r10,#60780
	movt r10,#65535  @ -4756
	str r9,[fp,r10]
	movw r10,#60780
	movt r10,#65535  @ -4756
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61232
	movt r9,#65535  @ -4304
	movw r10,#60776
	movt r10,#65535  @ -4760
	str r9,[fp,r10]
	movw r10,#60776
	movt r10,#65535  @ -4760
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL113
.fibL110:
	movw r8,#61228
	movt r8,#65535  @ -4308
	mov r9,r8
	movw r10,#60788
	movt r10,#65535  @ -4748
	str r9,[fp,r10]
	movw r10,#60788
	movt r10,#65535  @ -4748
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61228
	movt r9,#65535  @ -4308
	movw r10,#60784
	movt r10,#65535  @ -4752
	str r9,[fp,r10]
	movw r10,#60784
	movt r10,#65535  @ -4752
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL111
.fibL108:
	movw r8,#61224
	movt r8,#65535  @ -4312
	mov r9,r8
	movw r10,#60796
	movt r10,#65535  @ -4740
	str r9,[fp,r10]
	movw r10,#60796
	movt r10,#65535  @ -4740
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61224
	movt r9,#65535  @ -4312
	movw r10,#60792
	movt r10,#65535  @ -4744
	str r9,[fp,r10]
	movw r10,#60792
	movt r10,#65535  @ -4744
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL109
.fibL106:
	movw r8,#61220
	movt r8,#65535  @ -4316
	mov r9,r8
	movw r10,#60804
	movt r10,#65535  @ -4732
	str r9,[fp,r10]
	movw r10,#60804
	movt r10,#65535  @ -4732
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61220
	movt r9,#65535  @ -4316
	movw r10,#60800
	movt r10,#65535  @ -4736
	str r9,[fp,r10]
	movw r10,#60800
	movt r10,#65535  @ -4736
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL107
.fibL104:
	movw r8,#61216
	movt r8,#65535  @ -4320
	mov r9,r8
	movw r10,#60812
	movt r10,#65535  @ -4724
	str r9,[fp,r10]
	movw r10,#60812
	movt r10,#65535  @ -4724
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61216
	movt r9,#65535  @ -4320
	movw r10,#60808
	movt r10,#65535  @ -4728
	str r9,[fp,r10]
	movw r10,#60808
	movt r10,#65535  @ -4728
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL105
.fibL102:
	movw r8,#61212
	movt r8,#65535  @ -4324
	mov r9,r8
	movw r10,#60820
	movt r10,#65535  @ -4716
	str r9,[fp,r10]
	movw r10,#60820
	movt r10,#65535  @ -4716
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61212
	movt r9,#65535  @ -4324
	movw r10,#60816
	movt r10,#65535  @ -4720
	str r9,[fp,r10]
	movw r10,#60816
	movt r10,#65535  @ -4720
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL103
.fibL100:
	movw r8,#61208
	movt r8,#65535  @ -4328
	mov r9,r8
	movw r10,#60828
	movt r10,#65535  @ -4708
	str r9,[fp,r10]
	movw r10,#60828
	movt r10,#65535  @ -4708
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61208
	movt r9,#65535  @ -4328
	movw r10,#60824
	movt r10,#65535  @ -4712
	str r9,[fp,r10]
	movw r10,#60824
	movt r10,#65535  @ -4712
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL101
.fibL98:
	movw r8,#61204
	movt r8,#65535  @ -4332
	mov r9,r8
	movw r10,#60836
	movt r10,#65535  @ -4700
	str r9,[fp,r10]
	movw r10,#60836
	movt r10,#65535  @ -4700
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61204
	movt r9,#65535  @ -4332
	movw r10,#60832
	movt r10,#65535  @ -4704
	str r9,[fp,r10]
	movw r10,#60832
	movt r10,#65535  @ -4704
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL99
.fibL96:
	movw r8,#61200
	movt r8,#65535  @ -4336
	mov r9,r8
	movw r10,#60844
	movt r10,#65535  @ -4692
	str r9,[fp,r10]
	movw r10,#60844
	movt r10,#65535  @ -4692
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61200
	movt r9,#65535  @ -4336
	movw r10,#60840
	movt r10,#65535  @ -4696
	str r9,[fp,r10]
	movw r10,#60840
	movt r10,#65535  @ -4696
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL97
.fibL94:
	movw r8,#61196
	movt r8,#65535  @ -4340
	mov r9,r8
	movw r10,#60852
	movt r10,#65535  @ -4684
	str r9,[fp,r10]
	movw r10,#60852
	movt r10,#65535  @ -4684
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61196
	movt r9,#65535  @ -4340
	movw r10,#60848
	movt r10,#65535  @ -4688
	str r9,[fp,r10]
	movw r10,#60848
	movt r10,#65535  @ -4688
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL95
.fibL92:
	movw r8,#61192
	movt r8,#65535  @ -4344
	mov r9,r8
	movw r10,#60860
	movt r10,#65535  @ -4676
	str r9,[fp,r10]
	movw r10,#60860
	movt r10,#65535  @ -4676
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61192
	movt r9,#65535  @ -4344
	movw r10,#60856
	movt r10,#65535  @ -4680
	str r9,[fp,r10]
	movw r10,#60856
	movt r10,#65535  @ -4680
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL93
.fibL90:
	movw r8,#61188
	movt r8,#65535  @ -4348
	mov r9,r8
	movw r10,#60868
	movt r10,#65535  @ -4668
	str r9,[fp,r10]
	movw r10,#60868
	movt r10,#65535  @ -4668
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61188
	movt r9,#65535  @ -4348
	movw r10,#60864
	movt r10,#65535  @ -4672
	str r9,[fp,r10]
	movw r10,#60864
	movt r10,#65535  @ -4672
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL91
.fibL88:
	movw r8,#61184
	movt r8,#65535  @ -4352
	mov r9,r8
	movw r10,#60876
	movt r10,#65535  @ -4660
	str r9,[fp,r10]
	movw r10,#60876
	movt r10,#65535  @ -4660
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61184
	movt r9,#65535  @ -4352
	movw r10,#60872
	movt r10,#65535  @ -4664
	str r9,[fp,r10]
	movw r10,#60872
	movt r10,#65535  @ -4664
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL89
.fibL86:
	movw r8,#61180
	movt r8,#65535  @ -4356
	mov r9,r8
	movw r10,#60884
	movt r10,#65535  @ -4652
	str r9,[fp,r10]
	movw r10,#60884
	movt r10,#65535  @ -4652
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61180
	movt r9,#65535  @ -4356
	movw r10,#60880
	movt r10,#65535  @ -4656
	str r9,[fp,r10]
	movw r10,#60880
	movt r10,#65535  @ -4656
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL87
.fibL84:
	movw r8,#61176
	movt r8,#65535  @ -4360
	mov r9,r8
	movw r10,#60892
	movt r10,#65535  @ -4644
	str r9,[fp,r10]
	movw r10,#60892
	movt r10,#65535  @ -4644
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61176
	movt r9,#65535  @ -4360
	movw r10,#60888
	movt r10,#65535  @ -4648
	str r9,[fp,r10]
	movw r10,#60888
	movt r10,#65535  @ -4648
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL85
.fibL81:
	mov r8,#1
	movw r7,#61168
	movt r7,#65535  @ -4368
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL83
.fibL78:
	mov r8,#1
	movw r7,#61164
	movt r7,#65535  @ -4372
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL80
.fibL75:
	mov r8,#1
	movw r7,#61160
	movt r7,#65535  @ -4376
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL77
.fibL72:
	mov r8,#1
	movw r7,#61156
	movt r7,#65535  @ -4380
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL74
.fibL69:
	mov r8,#1
	movw r7,#61152
	movt r7,#65535  @ -4384
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL71
.fibL66:
	mov r8,#1
	movw r7,#61148
	movt r7,#65535  @ -4388
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL68
.fibL63:
	mov r8,#1
	movw r7,#61144
	movt r7,#65535  @ -4392
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL65
.fibL60:
	mov r8,#1
	movw r7,#61140
	movt r7,#65535  @ -4396
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL62
.fibL57:
	mov r8,#1
	movw r7,#61136
	movt r7,#65535  @ -4400
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL59
.fibL54:
	mov r8,#1
	movw r7,#61132
	movt r7,#65535  @ -4404
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL56
.fibL51:
	mov r8,#1
	movw r7,#61128
	movt r7,#65535  @ -4408
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL53
.fibL48:
	mov r8,#1
	movw r7,#61124
	movt r7,#65535  @ -4412
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL50
.fibL45:
	mov r8,#1
	movw r7,#61120
	movt r7,#65535  @ -4416
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL47
.fibL42:
	mov r8,#1
	movw r7,#61116
	movt r7,#65535  @ -4420
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL44
.fibL39:
	mov r8,#1
	movw r7,#61112
	movt r7,#65535  @ -4424
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL41
.fibL36:
	mov r8,#1
	movw r7,#61108
	movt r7,#65535  @ -4428
	mov r6,r7
	str r8,[fp,r6]
	bl .fibL38
.fibL34:
	movw r8,#61100
	movt r8,#65535  @ -4436
	mov r9,r8
	movw r10,#60900
	movt r10,#65535  @ -4636
	str r9,[fp,r10]
	movw r10,#60900
	movt r10,#65535  @ -4636
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61100
	movt r9,#65535  @ -4436
	movw r10,#60896
	movt r10,#65535  @ -4640
	str r9,[fp,r10]
	movw r10,#60896
	movt r10,#65535  @ -4640
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL35
.fibL32:
	movw r8,#61096
	movt r8,#65535  @ -4440
	mov r9,r8
	movw r10,#60908
	movt r10,#65535  @ -4628
	str r9,[fp,r10]
	movw r10,#60908
	movt r10,#65535  @ -4628
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61096
	movt r9,#65535  @ -4440
	movw r10,#60904
	movt r10,#65535  @ -4632
	str r9,[fp,r10]
	movw r10,#60904
	movt r10,#65535  @ -4632
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL33
.fibL30:
	movw r8,#61092
	movt r8,#65535  @ -4444
	mov r9,r8
	movw r10,#60916
	movt r10,#65535  @ -4620
	str r9,[fp,r10]
	movw r10,#60916
	movt r10,#65535  @ -4620
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61092
	movt r9,#65535  @ -4444
	movw r10,#60912
	movt r10,#65535  @ -4624
	str r9,[fp,r10]
	movw r10,#60912
	movt r10,#65535  @ -4624
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL31
.fibL28:
	movw r8,#61088
	movt r8,#65535  @ -4448
	mov r9,r8
	movw r10,#60924
	movt r10,#65535  @ -4612
	str r9,[fp,r10]
	movw r10,#60924
	movt r10,#65535  @ -4612
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61088
	movt r9,#65535  @ -4448
	movw r10,#60920
	movt r10,#65535  @ -4616
	str r9,[fp,r10]
	movw r10,#60920
	movt r10,#65535  @ -4616
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL29
.fibL26:
	movw r8,#61084
	movt r8,#65535  @ -4452
	mov r9,r8
	movw r10,#60932
	movt r10,#65535  @ -4604
	str r9,[fp,r10]
	movw r10,#60932
	movt r10,#65535  @ -4604
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61084
	movt r9,#65535  @ -4452
	movw r10,#60928
	movt r10,#65535  @ -4608
	str r9,[fp,r10]
	movw r10,#60928
	movt r10,#65535  @ -4608
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL27
.fibL24:
	movw r8,#61080
	movt r8,#65535  @ -4456
	mov r9,r8
	movw r10,#60940
	movt r10,#65535  @ -4596
	str r9,[fp,r10]
	movw r10,#60940
	movt r10,#65535  @ -4596
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61080
	movt r9,#65535  @ -4456
	movw r10,#60936
	movt r10,#65535  @ -4600
	str r9,[fp,r10]
	movw r10,#60936
	movt r10,#65535  @ -4600
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL25
.fibL22:
	movw r8,#61076
	movt r8,#65535  @ -4460
	mov r9,r8
	movw r10,#60948
	movt r10,#65535  @ -4588
	str r9,[fp,r10]
	movw r10,#60948
	movt r10,#65535  @ -4588
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61076
	movt r9,#65535  @ -4460
	movw r10,#60944
	movt r10,#65535  @ -4592
	str r9,[fp,r10]
	movw r10,#60944
	movt r10,#65535  @ -4592
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL23
.fibL20:
	movw r8,#61072
	movt r8,#65535  @ -4464
	mov r9,r8
	movw r10,#60956
	movt r10,#65535  @ -4580
	str r9,[fp,r10]
	movw r10,#60956
	movt r10,#65535  @ -4580
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61072
	movt r9,#65535  @ -4464
	movw r10,#60952
	movt r10,#65535  @ -4584
	str r9,[fp,r10]
	movw r10,#60952
	movt r10,#65535  @ -4584
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL21
.fibL18:
	movw r8,#61068
	movt r8,#65535  @ -4468
	mov r9,r8
	movw r10,#60964
	movt r10,#65535  @ -4572
	str r9,[fp,r10]
	movw r10,#60964
	movt r10,#65535  @ -4572
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61068
	movt r9,#65535  @ -4468
	movw r10,#60960
	movt r10,#65535  @ -4576
	str r9,[fp,r10]
	movw r10,#60960
	movt r10,#65535  @ -4576
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL19
.fibL16:
	movw r8,#61064
	movt r8,#65535  @ -4472
	mov r9,r8
	movw r10,#60972
	movt r10,#65535  @ -4564
	str r9,[fp,r10]
	movw r10,#60972
	movt r10,#65535  @ -4564
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61064
	movt r9,#65535  @ -4472
	movw r10,#60968
	movt r10,#65535  @ -4568
	str r9,[fp,r10]
	movw r10,#60968
	movt r10,#65535  @ -4568
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL17
.fibL14:
	movw r8,#61060
	movt r8,#65535  @ -4476
	mov r9,r8
	movw r10,#60980
	movt r10,#65535  @ -4556
	str r9,[fp,r10]
	movw r10,#60980
	movt r10,#65535  @ -4556
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61060
	movt r9,#65535  @ -4476
	movw r10,#60976
	movt r10,#65535  @ -4560
	str r9,[fp,r10]
	movw r10,#60976
	movt r10,#65535  @ -4560
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL15
.fibL12:
	movw r8,#61056
	movt r8,#65535  @ -4480
	mov r9,r8
	movw r10,#60988
	movt r10,#65535  @ -4548
	str r9,[fp,r10]
	movw r10,#60988
	movt r10,#65535  @ -4548
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61056
	movt r9,#65535  @ -4480
	movw r10,#60984
	movt r10,#65535  @ -4552
	str r9,[fp,r10]
	movw r10,#60984
	movt r10,#65535  @ -4552
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL13
.fibL10:
	movw r8,#61052
	movt r8,#65535  @ -4484
	mov r9,r8
	movw r10,#60996
	movt r10,#65535  @ -4540
	str r9,[fp,r10]
	movw r10,#60996
	movt r10,#65535  @ -4540
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61052
	movt r9,#65535  @ -4484
	movw r10,#60992
	movt r10,#65535  @ -4544
	str r9,[fp,r10]
	movw r10,#60992
	movt r10,#65535  @ -4544
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL11
.fibL8:
	movw r8,#61048
	movt r8,#65535  @ -4488
	mov r9,r8
	movw r10,#61004
	movt r10,#65535  @ -4532
	str r9,[fp,r10]
	movw r10,#61004
	movt r10,#65535  @ -4532
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61048
	movt r9,#65535  @ -4488
	movw r10,#61000
	movt r10,#65535  @ -4536
	str r9,[fp,r10]
	movw r10,#61000
	movt r10,#65535  @ -4536
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL9
.fibL6:
	movw r8,#61044
	movt r8,#65535  @ -4492
	mov r9,r8
	movw r10,#61012
	movt r10,#65535  @ -4524
	str r9,[fp,r10]
	movw r10,#61012
	movt r10,#65535  @ -4524
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61044
	movt r9,#65535  @ -4492
	movw r10,#61008
	movt r10,#65535  @ -4528
	str r9,[fp,r10]
	movw r10,#61008
	movt r10,#65535  @ -4528
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL7
.fibL4:
	movw r8,#61040
	movt r8,#65535  @ -4496
	mov r9,r8
	movw r10,#61020
	movt r10,#65535  @ -4516
	str r9,[fp,r10]
	movw r10,#61020
	movt r10,#65535  @ -4516
	ldr r9,[fp,r10]
	ldr r8,[fp,r9]
	rsb r7,r8,#0
	movw r9,#61040
	movt r9,#65535  @ -4496
	movw r10,#61016
	movt r10,#65535  @ -4520
	str r9,[fp,r10]
	movw r10,#61016
	movt r10,#65535  @ -4520
	ldr r9,[fp,r10]
	mov r8,r9
	str r7,[fp,r8]
	bl .fibL5
.fibL2:
	mov r8,#1
	mov r0,r8
	movw r9,#5064
	movt r9,#0  @ 5064
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#12
.mainL0:
.mainL1:
	mov r8,#1
	str r8,[fp,#-12]
.mainL2:
	ldr r8,[fp,#-12]
	mov r7,#20
	cmp r8,r7
	ble .mainL3
.mainL4:
	mov r8,#0
	mov r0,r8
	add sp,sp,#12
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL3:
	mov r8,#102
	@call void @putch(i32 %r7)
	mov r0,r8
	bl putch
	mov r8,#105
	@call void @putch(i32 %r8)
	mov r0,r8
	bl putch
	mov r8,#98
	@call void @putch(i32 %r9)
	mov r0,r8
	bl putch
	mov r8,#40
	@call void @putch(i32 %r10)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-12]
	@call void @putint(i32 %r11)
	mov r0,r8
	bl putint
	mov r8,#41
	@call void @putch(i32 %r12)
	mov r0,r8
	bl putch
	mov r8,#32
	@call void @putch(i32 %r13)
	mov r0,r8
	bl putch
	mov r8,#61
	@call void @putch(i32 %r14)
	mov r0,r8
	bl putch
	mov r8,#32
	@call void @putch(i32 %r15)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-12]
	@%r17 = call i32 @fib(i32 %r16)
	mov r0,r8
	bl fib
	mov r7,r0
	@call void @putint(i32 %r17)
	mov r0,r7
	bl putint
	mov r8,#10
	@call void @putch(i32 %r18)
	mov r0,r8
	bl putch
	ldr r8,[fp,#-12]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-12]
	bl .mainL2
	.section	.note.GNU-stack,"",%progbits
