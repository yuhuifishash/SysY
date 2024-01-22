.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
sum:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	sub sp,sp,#56
.sumL0:
	mov r9,r2
	str r9,[fp,#-56]
	mov r9,r3
	str r9,[fp,#-12]
	ldr r9,[fp,#88]
	str r9,[fp,#-48]
	ldr r9,[fp,#84]
	str r9,[fp,#-44]
	ldr r9,[fp,#80]
	str r9,[fp,#-40]
	ldr r9,[fp,#76]
	str r9,[fp,#-36]
	ldr r9,[fp,#72]
	str r9,[fp,#-32]
	ldr r9,[fp,#68]
	str r9,[fp,#-28]
	ldr r9,[fp,#64]
	str r9,[fp,#-24]
	ldr r9,[fp,#60]
	str r9,[fp,#-20]
	ldr r9,[fp,#56]
	str r9,[fp,#-16]
	ldr r9,[fp,#52]
	str r9,[fp,#-52]
	ldr r4,[fp,#48]
	ldr r5,[fp,#44]
	ldr r6,[fp,#40]
	ldr r7,[fp,#36]
	ldr r8,[fp,#32]
.sumL1:
	mov r3,r0
	ldr r0,[r3]
	mov r3,#2
	add r2,r1,r3,lsl #2
	ldr r3,[r2]
	add r2,r0,r3
	mov r3,#1
	ldr r9,[fp,#-56]
	add r1,r9,r3,lsl #2
	ldr r3,[r1]
	add r1,r2,r3
	mov r3,#10
	ldr r9,[fp,#-12]
	add r2,r9,r3,lsl #2
	ldr r3,[r2]
	add r2,r1,r3
	mov r3,#6
	add r1,r8,r3,lsl #2
	ldr r8,[r1]
	add r3,r2,r8
	mov r8,#57
	add r2,r7,r8,lsl #2
	ldr r8,[r2]
	add r7,r3,r8
	mov r8,#14
	add r3,r6,r8,lsl #2
	ldr r8,[r3]
	add r6,r7,r8
	mov r8,#241
	add r7,r5,r8,lsl #2
	ldr r8,[r7]
	add r7,r6,r8
	mov r8,#56
	add r6,r4,r8,lsl #2
	ldr r8,[r6]
	add r6,r7,r8
	mov r8,#201
	ldr r9,[fp,#-52]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	add r7,r6,r8
	movw r8,#499
	movt r8,#0  @ 499
	mov r6,r8
	ldr r9,[fp,#-16]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	movw r7,#806
	movt r7,#0  @ 806
	mov r6,r7
	ldr r9,[fp,#-20]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	movw r8,#6600
	movt r8,#0  @ 6600
	mov r6,r8
	ldr r9,[fp,#-24]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	mov r7,#127
	ldr r9,[fp,#-28]
	add r6,r9,r7,lsl #2
	ldr r7,[r6]
	add r6,r8,r7
	mov r8,#31
	ldr r9,[fp,#-32]
	add r7,r9,r8,lsl #2
	ldr r8,[r7]
	add r7,r6,r8
	movw r8,#61668
	movt r8,#0  @ 61668
	mov r6,r8
	ldr r9,[fp,#-36]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	movw r7,#3989
	movt r7,#0  @ 3989
	mov r6,r7
	ldr r9,[fp,#-40]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	movw r8,#10483
	movt r8,#3  @ 207091
	mov r6,r8
	ldr r9,[fp,#-44]
	add r8,r9,r6,lsl #2
	ldr r6,[r8]
	add r8,r7,r6
	movw r7,#4864
	movt r7,#1  @ 70400
	mov r6,r7
	ldr r9,[fp,#-48]
	add r7,r9,r6,lsl #2
	ldr r6,[r7]
	add r7,r8,r6
	mov r0,r7
	add sp,sp,#56
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	movw r9,#356
	movt r9,#32  @ 2097508
	sub sp,sp,r9
.mainL0:
.mainL1:
	movw r8,#65528
	movt r8,#65503  @ -2097160
	add r7,fp,r8
	@call void @memset(i32 %r980,i32 0,i32 2097152)
	mov r0,r7
	mov r1,#0
	mov r2,#2097152
	bl memset
	movw r8,#65528
	movt r8,#65503  @ -2097160
	add r7,fp,r8
	mov r8,#0
	str r8,[r7]
.mainL79:
	mov r9,#0
	movw r10,#65516
	movt r10,#65503  @ -2097172
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65524
	movt r10,#65503  @ -2097164
	str r9,[fp,r10]
.mainL3:
.mainL78:
	movw r10,#65516
	movt r10,#65503  @ -2097172
	ldr r9,[fp,r10]
	lsl r6,r9,#18
	mov r5,r6
	movw r6,#65528
	movt r6,#65503  @ -2097160
	add r4,fp,r6
	add r9,r4,r5,lsl #2
	movw r10,#65520
	movt r10,#65503  @ -2097168
	str r9,[fp,r10]
	mov r9,#0
	movw r10,#65500
	movt r10,#65503  @ -2097188
	str r9,[fp,r10]
	movw r10,#65524
	movt r10,#65503  @ -2097164
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65508
	movt r9,#65503  @ -2097180
	str r10,[fp,r9]
.mainL7:
.mainL86:
	movw r10,#65500
	movt r10,#65503  @ -2097188
	ldr r9,[fp,r10]
	lsl r3,r9,#17
	mov r2,r3
	movw r10,#65520
	movt r10,#65503  @ -2097168
	ldr r9,[fp,r10]
	add r10,r9,r2,lsl #2
	movw r9,#65512
	movt r9,#65503  @ -2097176
	str r10,[fp,r9]
	mov r9,#0
	movw r10,#65488
	movt r10,#65503  @ -2097200
	str r9,[fp,r10]
	movw r10,#65508
	movt r10,#65503  @ -2097180
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65492
	movt r9,#65503  @ -2097196
	str r10,[fp,r9]
.mainL11:
.mainL83:
	movw r10,#65488
	movt r10,#65503  @ -2097200
	ldr r9,[fp,r10]
	lsl r0,r9,#16
	mov r7,r0
	movw r10,#65512
	movt r10,#65503  @ -2097176
	ldr r9,[fp,r10]
	add r10,r9,r7,lsl #2
	movw r9,#65504
	movt r9,#65503  @ -2097184
	str r10,[fp,r9]
	mov r9,#0
	movw r10,#65472
	movt r10,#65503  @ -2097216
	str r9,[fp,r10]
	movw r10,#65492
	movt r10,#65503  @ -2097196
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65480
	movt r9,#65503  @ -2097208
	str r10,[fp,r9]
.mainL15:
.mainL84:
	movw r10,#65472
	movt r10,#65503  @ -2097216
	ldr r9,[fp,r10]
	lsl r8,r9,#15
	mov r3,r8
	movw r10,#65504
	movt r10,#65503  @ -2097184
	ldr r9,[fp,r10]
	add r10,r9,r3,lsl #2
	movw r9,#65496
	movt r9,#65503  @ -2097192
	str r10,[fp,r9]
	mov r9,#0
	movw r10,#65456
	movt r10,#65503  @ -2097232
	str r9,[fp,r10]
	movw r10,#65480
	movt r10,#65503  @ -2097208
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65464
	movt r9,#65503  @ -2097224
	str r10,[fp,r9]
.mainL19:
.mainL85:
	movw r10,#65456
	movt r10,#65503  @ -2097232
	ldr r9,[fp,r10]
	lsl r0,r9,#14
	mov r5,r0
	movw r10,#65496
	movt r10,#65503  @ -2097192
	ldr r9,[fp,r10]
	add r10,r9,r5,lsl #2
	movw r9,#65484
	movt r9,#65503  @ -2097204
	str r10,[fp,r9]
	mov r9,#0
	movw r10,#65444
	movt r10,#65503  @ -2097244
	str r9,[fp,r10]
	movw r10,#65464
	movt r10,#65503  @ -2097224
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65452
	movt r9,#65503  @ -2097236
	str r10,[fp,r9]
.mainL23:
.mainL80:
	movw r10,#65444
	movt r10,#65503  @ -2097244
	ldr r9,[fp,r10]
	lsl r1,r9,#13
	mov r2,r1
	movw r10,#65484
	movt r10,#65503  @ -2097204
	ldr r9,[fp,r10]
	add r10,r9,r2,lsl #2
	movw r9,#65476
	movt r9,#65503  @ -2097212
	str r10,[fp,r9]
	mov r9,#0
	movw r10,#65432
	movt r10,#65503  @ -2097256
	str r9,[fp,r10]
	movw r10,#65452
	movt r10,#65503  @ -2097236
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65440
	movt r9,#65503  @ -2097248
	str r10,[fp,r9]
.mainL27:
.mainL81:
	movw r10,#65432
	movt r10,#65503  @ -2097256
	ldr r9,[fp,r10]
	lsl r6,r9,#12
	mov r1,r6
	movw r10,#65476
	movt r10,#65503  @ -2097212
	ldr r9,[fp,r10]
	add r10,r9,r1,lsl #2
	movw r9,#65468
	movt r9,#65503  @ -2097220
	str r10,[fp,r9]
	mov r9,#0
	movw r10,#65416
	movt r10,#65503  @ -2097272
	str r9,[fp,r10]
	movw r10,#65440
	movt r10,#65503  @ -2097248
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65428
	movt r9,#65503  @ -2097260
	str r10,[fp,r9]
.mainL31:
.mainL82:
	movw r10,#65416
	movt r10,#65503  @ -2097272
	ldr r9,[fp,r10]
	lsl r6,r9,#11
	mov r4,r6
	movw r10,#65468
	movt r10,#65503  @ -2097220
	ldr r9,[fp,r10]
	add r10,r9,r4,lsl #2
	movw r9,#65460
	movt r9,#65503  @ -2097228
	str r10,[fp,r9]
	mov r9,#0
	movw r10,#65404
	movt r10,#65503  @ -2097284
	str r9,[fp,r10]
	movw r10,#65428
	movt r10,#65503  @ -2097260
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65420
	movt r9,#65503  @ -2097268
	str r10,[fp,r9]
.mainL35:
.mainL87:
	movw r10,#65404
	movt r10,#65503  @ -2097284
	ldr r9,[fp,r10]
	lsl r3,r9,#10
	mov r8,r3
	movw r10,#65460
	movt r10,#65503  @ -2097228
	ldr r9,[fp,r10]
	add r10,r9,r8,lsl #2
	movw r9,#65448
	movt r9,#65503  @ -2097240
	str r10,[fp,r9]
	mov r9,#0
	movw r10,#65392
	movt r10,#65503  @ -2097296
	str r9,[fp,r10]
	movw r10,#65420
	movt r10,#65503  @ -2097268
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65408
	movt r9,#65503  @ -2097280
	str r10,[fp,r9]
.mainL39:
.mainL88:
	movw r10,#65392
	movt r10,#65503  @ -2097296
	ldr r9,[fp,r10]
	lsl r5,r9,#9
	mov r0,r5
	movw r10,#65448
	movt r10,#65503  @ -2097240
	ldr r9,[fp,r10]
	add r10,r9,r0,lsl #2
	movw r9,#65436
	movt r9,#65503  @ -2097252
	str r10,[fp,r9]
	mov r9,#0
	movw r10,#65380
	movt r10,#65503  @ -2097308
	str r9,[fp,r10]
	movw r10,#65408
	movt r10,#65503  @ -2097280
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65396
	movt r9,#65503  @ -2097292
	str r10,[fp,r9]
.mainL43:
.mainL89:
	movw r10,#65380
	movt r10,#65503  @ -2097308
	ldr r9,[fp,r10]
	lsl r2,r9,#8
	mov r7,r2
	movw r10,#65436
	movt r10,#65503  @ -2097252
	ldr r9,[fp,r10]
	add r10,r9,r7,lsl #2
	movw r9,#65424
	movt r9,#65503  @ -2097264
	str r10,[fp,r9]
	mov r9,#0
	movw r10,#65368
	movt r10,#65503  @ -2097320
	str r9,[fp,r10]
	movw r10,#65396
	movt r10,#65503  @ -2097292
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65384
	movt r9,#65503  @ -2097304
	str r10,[fp,r9]
.mainL47:
.mainL90:
	movw r10,#65368
	movt r10,#65503  @ -2097320
	ldr r9,[fp,r10]
	lsl r6,r9,#7
	mov r1,r6
	movw r10,#65424
	movt r10,#65503  @ -2097264
	ldr r9,[fp,r10]
	add r10,r9,r1,lsl #2
	movw r9,#65412
	movt r9,#65503  @ -2097276
	str r10,[fp,r9]
	mov r9,#0
	movw r10,#65348
	movt r10,#65503  @ -2097340
	str r9,[fp,r10]
	movw r10,#65384
	movt r10,#65503  @ -2097304
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65372
	movt r9,#65503  @ -2097316
	str r10,[fp,r9]
.mainL51:
.mainL91:
	movw r10,#65348
	movt r10,#65503  @ -2097340
	ldr r9,[fp,r10]
	lsl r3,r9,#6
	mov r4,r3
	movw r10,#65412
	movt r10,#65503  @ -2097276
	ldr r9,[fp,r10]
	add r10,r9,r4,lsl #2
	movw r9,#65400
	movt r9,#65503  @ -2097288
	str r10,[fp,r9]
	mov r9,#0
	movw r10,#65336
	movt r10,#65503  @ -2097352
	str r9,[fp,r10]
	movw r10,#65372
	movt r10,#65503  @ -2097316
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65360
	movt r9,#65503  @ -2097328
	str r10,[fp,r9]
.mainL55:
.mainL92:
	movw r10,#65336
	movt r10,#65503  @ -2097352
	ldr r9,[fp,r10]
	lsl r5,r9,#5
	mov r8,r5
	movw r10,#65400
	movt r10,#65503  @ -2097288
	ldr r9,[fp,r10]
	add r10,r9,r8,lsl #2
	movw r9,#65388
	movt r9,#65503  @ -2097300
	str r10,[fp,r9]
	mov r9,#0
	movw r10,#65328
	movt r10,#65503  @ -2097360
	str r9,[fp,r10]
	movw r10,#65360
	movt r10,#65503  @ -2097328
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65356
	movt r9,#65503  @ -2097332
	str r10,[fp,r9]
.mainL59:
.mainL93:
	movw r10,#65328
	movt r10,#65503  @ -2097360
	ldr r9,[fp,r10]
	lsl r2,r9,#4
	mov r0,r2
	movw r10,#65388
	movt r10,#65503  @ -2097300
	ldr r9,[fp,r10]
	add r10,r9,r0,lsl #2
	movw r9,#65376
	movt r9,#65503  @ -2097312
	str r10,[fp,r9]
	mov r9,#0
	movw r10,#65320
	movt r10,#65503  @ -2097368
	str r9,[fp,r10]
	movw r10,#65356
	movt r10,#65503  @ -2097332
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65344
	movt r9,#65503  @ -2097344
	str r10,[fp,r9]
.mainL63:
.mainL94:
	movw r10,#65320
	movt r10,#65503  @ -2097368
	ldr r9,[fp,r10]
	lsl r6,r9,#3
	mov r7,r6
	movw r10,#65376
	movt r10,#65503  @ -2097312
	ldr r9,[fp,r10]
	add r10,r9,r7,lsl #2
	movw r9,#65364
	movt r9,#65503  @ -2097324
	str r10,[fp,r9]
	mov r7,#0
	movw r10,#65344
	movt r10,#65503  @ -2097344
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65332
	movt r9,#65503  @ -2097356
	str r10,[fp,r9]
.mainL67:
.mainL95:
	lsl r3,r7,#2
	mov r5,r3
	movw r10,#65364
	movt r10,#65503  @ -2097324
	ldr r9,[fp,r10]
	add r10,r9,r5,lsl #2
	movw r9,#65352
	movt r9,#65503  @ -2097336
	str r10,[fp,r9]
	mov r5,#0
	movw r10,#65332
	movt r10,#65503  @ -2097356
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65324
	movt r9,#65503  @ -2097364
	str r10,[fp,r9]
.mainL71:
.mainL96:
	lsl r1,r5,#1
	mov r2,r1
	movw r10,#65352
	movt r10,#65503  @ -2097336
	ldr r9,[fp,r10]
	add r10,r9,r2,lsl #2
	movw r9,#65340
	movt r9,#65503  @ -2097348
	str r10,[fp,r9]
	mov r2,#0
	movw r10,#65324
	movt r10,#65503  @ -2097364
	ldr r9,[fp,r10]
	mov r1,r9
.mainL75:
	mov r4,r2
	movw r10,#65340
	movt r10,#65503  @ -2097348
	ldr r9,[fp,r10]
	add r6,r9,r4,lsl #2
	str r1,[r6]
	add r6,r1,#1
	add r4,r2,#1
.mainL76:
	cmp r4,#2
	blt .mainL115
.mainL77:
	add r8,r5,#1
.mainL72:
	cmp r8,#2
	blt .mainL114
.mainL73:
	add r3,r7,#1
.mainL68:
	cmp r3,#2
	blt .mainL113
.mainL69:
	movw r10,#65320
	movt r10,#65503  @ -2097368
	ldr r9,[fp,r10]
	add r10,r9,#1
	movw r9,#65316
	movt r9,#65503  @ -2097372
	str r10,[fp,r9]
.mainL64:
	movw r10,#65316
	movt r10,#65503  @ -2097372
	ldr r9,[fp,r10]
	cmp r9,#2
	blt .mainL112
.mainL65:
	movw r10,#65328
	movt r10,#65503  @ -2097360
	ldr r9,[fp,r10]
	add r10,r9,#1
	movw r9,#65312
	movt r9,#65503  @ -2097376
	str r10,[fp,r9]
.mainL60:
	movw r10,#65312
	movt r10,#65503  @ -2097376
	ldr r9,[fp,r10]
	cmp r9,#2
	blt .mainL111
.mainL61:
	movw r10,#65336
	movt r10,#65503  @ -2097352
	ldr r9,[fp,r10]
	add r10,r9,#1
	movw r9,#65308
	movt r9,#65503  @ -2097380
	str r10,[fp,r9]
.mainL56:
	movw r10,#65308
	movt r10,#65503  @ -2097380
	ldr r9,[fp,r10]
	cmp r9,#2
	blt .mainL110
.mainL57:
	movw r10,#65348
	movt r10,#65503  @ -2097340
	ldr r9,[fp,r10]
	add r10,r9,#1
	movw r9,#65304
	movt r9,#65503  @ -2097384
	str r10,[fp,r9]
.mainL52:
	movw r10,#65304
	movt r10,#65503  @ -2097384
	ldr r9,[fp,r10]
	cmp r9,#2
	blt .mainL109
.mainL53:
	movw r10,#65368
	movt r10,#65503  @ -2097320
	ldr r9,[fp,r10]
	add r10,r9,#1
	movw r9,#65300
	movt r9,#65503  @ -2097388
	str r10,[fp,r9]
.mainL48:
	movw r10,#65300
	movt r10,#65503  @ -2097388
	ldr r9,[fp,r10]
	cmp r9,#2
	blt .mainL108
.mainL49:
	movw r10,#65380
	movt r10,#65503  @ -2097308
	ldr r9,[fp,r10]
	add r10,r9,#1
	movw r9,#65296
	movt r9,#65503  @ -2097392
	str r10,[fp,r9]
.mainL44:
	movw r10,#65296
	movt r10,#65503  @ -2097392
	ldr r9,[fp,r10]
	cmp r9,#2
	blt .mainL107
.mainL45:
	movw r10,#65392
	movt r10,#65503  @ -2097296
	ldr r9,[fp,r10]
	add r10,r9,#1
	movw r9,#65292
	movt r9,#65503  @ -2097396
	str r10,[fp,r9]
.mainL40:
	movw r10,#65292
	movt r10,#65503  @ -2097396
	ldr r9,[fp,r10]
	cmp r9,#2
	blt .mainL106
.mainL41:
	movw r10,#65404
	movt r10,#65503  @ -2097284
	ldr r9,[fp,r10]
	add r10,r9,#1
	movw r9,#65288
	movt r9,#65503  @ -2097400
	str r10,[fp,r9]
.mainL36:
	movw r10,#65288
	movt r10,#65503  @ -2097400
	ldr r9,[fp,r10]
	cmp r9,#2
	blt .mainL105
.mainL37:
	movw r10,#65416
	movt r10,#65503  @ -2097272
	ldr r9,[fp,r10]
	add r10,r9,#1
	movw r9,#65284
	movt r9,#65503  @ -2097404
	str r10,[fp,r9]
.mainL32:
	movw r10,#65284
	movt r10,#65503  @ -2097404
	ldr r9,[fp,r10]
	cmp r9,#2
	blt .mainL104
.mainL33:
	movw r10,#65432
	movt r10,#65503  @ -2097256
	ldr r9,[fp,r10]
	add r10,r9,#1
	movw r9,#65280
	movt r9,#65503  @ -2097408
	str r10,[fp,r9]
.mainL28:
	movw r10,#65280
	movt r10,#65503  @ -2097408
	ldr r9,[fp,r10]
	cmp r9,#2
	blt .mainL103
.mainL29:
	movw r10,#65444
	movt r10,#65503  @ -2097244
	ldr r9,[fp,r10]
	add r10,r9,#1
	movw r9,#65276
	movt r9,#65503  @ -2097412
	str r10,[fp,r9]
.mainL24:
	movw r10,#65276
	movt r10,#65503  @ -2097412
	ldr r9,[fp,r10]
	cmp r9,#2
	blt .mainL102
.mainL25:
	movw r10,#65456
	movt r10,#65503  @ -2097232
	ldr r9,[fp,r10]
	add r10,r9,#1
	movw r9,#65272
	movt r9,#65503  @ -2097416
	str r10,[fp,r9]
.mainL20:
	movw r10,#65272
	movt r10,#65503  @ -2097416
	ldr r9,[fp,r10]
	cmp r9,#2
	blt .mainL101
.mainL21:
	movw r10,#65472
	movt r10,#65503  @ -2097216
	ldr r9,[fp,r10]
	add r10,r9,#1
	movw r9,#65268
	movt r9,#65503  @ -2097420
	str r10,[fp,r9]
.mainL16:
	movw r10,#65268
	movt r10,#65503  @ -2097420
	ldr r9,[fp,r10]
	cmp r9,#2
	blt .mainL100
.mainL17:
	movw r10,#65488
	movt r10,#65503  @ -2097200
	ldr r9,[fp,r10]
	add r10,r9,#1
	movw r9,#65264
	movt r9,#65503  @ -2097424
	str r10,[fp,r9]
.mainL12:
	movw r10,#65264
	movt r10,#65503  @ -2097424
	ldr r9,[fp,r10]
	cmp r9,#2
	blt .mainL99
.mainL13:
	movw r10,#65500
	movt r10,#65503  @ -2097188
	ldr r9,[fp,r10]
	add r10,r9,#1
	movw r9,#65260
	movt r9,#65503  @ -2097428
	str r10,[fp,r9]
.mainL8:
	movw r10,#65260
	movt r10,#65503  @ -2097428
	ldr r9,[fp,r10]
	cmp r9,#2
	blt .mainL98
.mainL9:
	movw r10,#65516
	movt r10,#65503  @ -2097172
	ldr r9,[fp,r10]
	add r10,r9,#1
	movw r9,#65256
	movt r9,#65503  @ -2097432
	str r10,[fp,r9]
.mainL4:
	movw r10,#65256
	movt r10,#65503  @ -2097432
	ldr r9,[fp,r10]
	cmp r9,#2
	blt .mainL97
.mainL5:
	movw r0,#65528
	movt r0,#65503  @ -2097160
	add r9,fp,r0
	movw r10,#65252
	movt r10,#65503  @ -2097436
	str r9,[fp,r10]
	movw r0,#65528
	movt r0,#65503  @ -2097160
	add r9,fp,r0
	movw r10,#65248
	movt r10,#65503  @ -2097440
	str r9,[fp,r10]
	movw r0,#65528
	movt r0,#65503  @ -2097160
	add r9,fp,r0
	movw r10,#65244
	movt r10,#65503  @ -2097444
	str r9,[fp,r10]
	movw r0,#65528
	movt r0,#65503  @ -2097160
	add r9,fp,r0
	movw r10,#65240
	movt r10,#65503  @ -2097448
	str r9,[fp,r10]
	movw r0,#65528
	movt r0,#65503  @ -2097160
	add r9,fp,r0
	movw r10,#65236
	movt r10,#65503  @ -2097452
	str r9,[fp,r10]
	movw r0,#65528
	movt r0,#65503  @ -2097160
	add r9,fp,r0
	movw r10,#65232
	movt r10,#65503  @ -2097456
	str r9,[fp,r10]
	movw r0,#65528
	movt r0,#65503  @ -2097160
	add r9,fp,r0
	movw r10,#65228
	movt r10,#65503  @ -2097460
	str r9,[fp,r10]
	movw r0,#65528
	movt r0,#65503  @ -2097160
	add r9,fp,r0
	movw r10,#65224
	movt r10,#65503  @ -2097464
	str r9,[fp,r10]
	movw r0,#65528
	movt r0,#65503  @ -2097160
	add r9,fp,r0
	movw r10,#65220
	movt r10,#65503  @ -2097468
	str r9,[fp,r10]
	movw r0,#65528
	movt r0,#65503  @ -2097160
	add r9,fp,r0
	movw r10,#65216
	movt r10,#65503  @ -2097472
	str r9,[fp,r10]
	movw r0,#65528
	movt r0,#65503  @ -2097160
	add r9,fp,r0
	movw r10,#65212
	movt r10,#65503  @ -2097476
	str r9,[fp,r10]
	movw r0,#65528
	movt r0,#65503  @ -2097160
	add r9,fp,r0
	movw r10,#65208
	movt r10,#65503  @ -2097480
	str r9,[fp,r10]
	movw r0,#65528
	movt r0,#65503  @ -2097160
	add r9,fp,r0
	movw r10,#65204
	movt r10,#65503  @ -2097484
	str r9,[fp,r10]
	movw r0,#65528
	movt r0,#65503  @ -2097160
	add r9,fp,r0
	movw r10,#65200
	movt r10,#65503  @ -2097488
	str r9,[fp,r10]
	movw r0,#65528
	movt r0,#65503  @ -2097160
	add r9,fp,r0
	movw r10,#65196
	movt r10,#65503  @ -2097492
	str r9,[fp,r10]
	movw r0,#65528
	movt r0,#65503  @ -2097160
	add r9,fp,r0
	movw r10,#65192
	movt r10,#65503  @ -2097496
	str r9,[fp,r10]
	movw r0,#65528
	movt r0,#65503  @ -2097160
	add r9,fp,r0
	movw r10,#65188
	movt r10,#65503  @ -2097500
	str r9,[fp,r10]
	movw r0,#65528
	movt r0,#65503  @ -2097160
	add r9,fp,r0
	movw r10,#65184
	movt r10,#65503  @ -2097504
	str r9,[fp,r10]
	movw r0,#65528
	movt r0,#65503  @ -2097160
	add r9,fp,r0
	movw r10,#65180
	movt r10,#65503  @ -2097508
	str r9,[fp,r10]
	@%r504 = call i32 @sum(ptr %r332,ptr %r350,ptr %r367,ptr %r383,ptr %r398,ptr %r412,ptr %r425,ptr %r437,ptr %r448,ptr %r458,ptr %r467,ptr %r475,ptr %r482,ptr %r488,ptr %r493,ptr %r497,ptr %r500,ptr %r502,ptr %r503)
	push {r1,r2,r3}
	sub sp,sp,#60
	movw r10,#65180
	movt r10,#65503  @ -2097508
	ldr r9,[fp,r10]
	str r9,[sp,#56]  @%r503
	movw r10,#65184
	movt r10,#65503  @ -2097504
	ldr r9,[fp,r10]
	str r9,[sp,#52]  @%r502
	movw r10,#65188
	movt r10,#65503  @ -2097500
	ldr r9,[fp,r10]
	str r9,[sp,#48]  @%r500
	movw r10,#65192
	movt r10,#65503  @ -2097496
	ldr r9,[fp,r10]
	str r9,[sp,#44]  @%r497
	movw r10,#65196
	movt r10,#65503  @ -2097492
	ldr r9,[fp,r10]
	str r9,[sp,#40]  @%r493
	movw r10,#65200
	movt r10,#65503  @ -2097488
	ldr r9,[fp,r10]
	str r9,[sp,#36]  @%r488
	movw r10,#65204
	movt r10,#65503  @ -2097484
	ldr r9,[fp,r10]
	str r9,[sp,#32]  @%r482
	movw r10,#65208
	movt r10,#65503  @ -2097480
	ldr r9,[fp,r10]
	str r9,[sp,#28]  @%r475
	movw r10,#65212
	movt r10,#65503  @ -2097476
	ldr r9,[fp,r10]
	str r9,[sp,#24]  @%r467
	movw r10,#65216
	movt r10,#65503  @ -2097472
	ldr r9,[fp,r10]
	str r9,[sp,#20]  @%r458
	movw r10,#65220
	movt r10,#65503  @ -2097468
	ldr r9,[fp,r10]
	str r9,[sp,#16]  @%r448
	movw r10,#65224
	movt r10,#65503  @ -2097464
	ldr r9,[fp,r10]
	str r9,[sp,#12]  @%r437
	movw r10,#65228
	movt r10,#65503  @ -2097460
	ldr r9,[fp,r10]
	str r9,[sp,#8]  @%r425
	movw r10,#65232
	movt r10,#65503  @ -2097456
	ldr r9,[fp,r10]
	str r9,[sp,#4]  @%r412
	movw r10,#65236
	movt r10,#65503  @ -2097452
	ldr r9,[fp,r10]
	str r9,[sp,#0]  @%r398
	movw r10,#65252
	movt r10,#65503  @ -2097436
	ldr r0,[fp,r10]
	movw r10,#65248
	movt r10,#65503  @ -2097440
	ldr r1,[fp,r10]
	movw r10,#65244
	movt r10,#65503  @ -2097444
	ldr r2,[fp,r10]
	movw r10,#65240
	movt r10,#65503  @ -2097448
	ldr r3,[fp,r10]
	bl sum
	add sp,sp,#60
	pop {r1,r2,r3}
	@call void @putint(i32 %r504)
	push {r0,r1,r2,r3}
	bl putint
	pop {r0,r1,r2,r3}
	mov r0,#0
	movw r9,#356
	movt r9,#32  @ 2097508
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.mainL97:
	movw r10,#65256
	movt r10,#65503  @ -2097432
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65516
	movt r9,#65503  @ -2097172
	str r10,[fp,r9]
	mov r9,r6
	movw r10,#65524
	movt r10,#65503  @ -2097164
	str r9,[fp,r10]
	bl .mainL3
.mainL98:
	movw r10,#65260
	movt r10,#65503  @ -2097428
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65500
	movt r9,#65503  @ -2097188
	str r10,[fp,r9]
	mov r9,r6
	movw r10,#65508
	movt r10,#65503  @ -2097180
	str r9,[fp,r10]
	bl .mainL7
.mainL99:
	movw r10,#65264
	movt r10,#65503  @ -2097424
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65488
	movt r9,#65503  @ -2097200
	str r10,[fp,r9]
	mov r9,r6
	movw r10,#65492
	movt r10,#65503  @ -2097196
	str r9,[fp,r10]
	bl .mainL11
.mainL100:
	movw r10,#65268
	movt r10,#65503  @ -2097420
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65472
	movt r9,#65503  @ -2097216
	str r10,[fp,r9]
	mov r9,r6
	movw r10,#65480
	movt r10,#65503  @ -2097208
	str r9,[fp,r10]
	bl .mainL15
.mainL101:
	movw r10,#65272
	movt r10,#65503  @ -2097416
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65456
	movt r9,#65503  @ -2097232
	str r10,[fp,r9]
	mov r9,r6
	movw r10,#65464
	movt r10,#65503  @ -2097224
	str r9,[fp,r10]
	bl .mainL19
.mainL102:
	movw r10,#65276
	movt r10,#65503  @ -2097412
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65444
	movt r9,#65503  @ -2097244
	str r10,[fp,r9]
	mov r9,r6
	movw r10,#65452
	movt r10,#65503  @ -2097236
	str r9,[fp,r10]
	bl .mainL23
.mainL103:
	movw r10,#65280
	movt r10,#65503  @ -2097408
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65432
	movt r9,#65503  @ -2097256
	str r10,[fp,r9]
	mov r9,r6
	movw r10,#65440
	movt r10,#65503  @ -2097248
	str r9,[fp,r10]
	bl .mainL27
.mainL104:
	movw r10,#65284
	movt r10,#65503  @ -2097404
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65416
	movt r9,#65503  @ -2097272
	str r10,[fp,r9]
	mov r9,r6
	movw r10,#65428
	movt r10,#65503  @ -2097260
	str r9,[fp,r10]
	bl .mainL31
.mainL105:
	movw r10,#65288
	movt r10,#65503  @ -2097400
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65404
	movt r9,#65503  @ -2097284
	str r10,[fp,r9]
	mov r9,r6
	movw r10,#65420
	movt r10,#65503  @ -2097268
	str r9,[fp,r10]
	bl .mainL35
.mainL106:
	movw r10,#65292
	movt r10,#65503  @ -2097396
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65392
	movt r9,#65503  @ -2097296
	str r10,[fp,r9]
	mov r9,r6
	movw r10,#65408
	movt r10,#65503  @ -2097280
	str r9,[fp,r10]
	bl .mainL39
.mainL107:
	movw r10,#65296
	movt r10,#65503  @ -2097392
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65380
	movt r9,#65503  @ -2097308
	str r10,[fp,r9]
	mov r9,r6
	movw r10,#65396
	movt r10,#65503  @ -2097292
	str r9,[fp,r10]
	bl .mainL43
.mainL108:
	movw r10,#65300
	movt r10,#65503  @ -2097388
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65368
	movt r9,#65503  @ -2097320
	str r10,[fp,r9]
	mov r9,r6
	movw r10,#65384
	movt r10,#65503  @ -2097304
	str r9,[fp,r10]
	bl .mainL47
.mainL109:
	movw r10,#65304
	movt r10,#65503  @ -2097384
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65348
	movt r9,#65503  @ -2097340
	str r10,[fp,r9]
	mov r9,r6
	movw r10,#65372
	movt r10,#65503  @ -2097316
	str r9,[fp,r10]
	bl .mainL51
.mainL110:
	movw r10,#65308
	movt r10,#65503  @ -2097380
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65336
	movt r9,#65503  @ -2097352
	str r10,[fp,r9]
	mov r9,r6
	movw r10,#65360
	movt r10,#65503  @ -2097328
	str r9,[fp,r10]
	bl .mainL55
.mainL111:
	movw r10,#65312
	movt r10,#65503  @ -2097376
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65328
	movt r9,#65503  @ -2097360
	str r10,[fp,r9]
	mov r9,r6
	movw r10,#65356
	movt r10,#65503  @ -2097332
	str r9,[fp,r10]
	bl .mainL59
.mainL112:
	movw r10,#65316
	movt r10,#65503  @ -2097372
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#65320
	movt r9,#65503  @ -2097368
	str r10,[fp,r9]
	mov r9,r6
	movw r10,#65344
	movt r10,#65503  @ -2097344
	str r9,[fp,r10]
	bl .mainL63
.mainL113:
	mov r7,r3
	mov r9,r6
	movw r10,#65332
	movt r10,#65503  @ -2097356
	str r9,[fp,r10]
	bl .mainL67
.mainL114:
	mov r5,r8
	mov r9,r6
	movw r10,#65324
	movt r10,#65503  @ -2097364
	str r9,[fp,r10]
	bl .mainL71
.mainL115:
	mov r2,r4
	mov r1,r6
	bl .mainL75
	.section	.note.GNU-stack,"",%progbits
