.arch armv7-a
.fpu vfpv3-d16
.arm
.data
N:
	.word  10000
.text
.global main
.LPIC0:
	.word  N
long_array:@r4 r5 r6 r7 r8 r9 r10 
	push {fp,lr}
	push {r4,r5,r6,r7,r8,r9,r10}
	add fp,sp,#4
	movw r9,#54508
	movt r9,#1  @ 120044
	sub sp,sp,r9
.long_arrayL0:
	mov r9,r0
	movw r10,#11060
	movt r10,#65534  @ -120012
	str r9,[fp,r10]
.long_arrayL1:
.long_arrayL38:
	mov r9,#0
	movw r10,#11040
	movt r10,#65534  @ -120032
	str r9,[fp,r10]
.long_arrayL3:
	movw r10,#11040
	movt r10,#65534  @ -120032
	ldr r9,[fp,r10]
	movw r10,#11040
	movt r10,#65534  @ -120032
	ldr r10,[fp,r10]
	mul r7,r9,r10
	movw r6,#26215
	movt r6,#26214  @ 1717986919
	smmul r6,r7,r6
	asr r5,r7,#31
	rsb r6,r5,r6,asr #2
	mov r5,#10
	mul r6,r6,r5
	sub r5,r7,r6
	movw r10,#11040
	movt r10,#65534  @ -120032
	ldr r9,[fp,r10]
	mov r7,r9
	movw r6,#11064
	movt r6,#65534  @ -120008
	add r4,fp,r6
	add r6,r4,r7,lsl #2
	str r5,[r6]
	movw r10,#11040
	movt r10,#65534  @ -120032
	ldr r9,[fp,r10]
	add r10,r9,#1
	movw r9,#11056
	movt r9,#65534  @ -120016
	str r10,[fp,r9]
.long_arrayL4:
	movw r6,#10000
	movt r6,#0  @ 10000
	movw r10,#11056
	movt r10,#65534  @ -120016
	ldr r9,[fp,r10]
	cmp r9,r6
	blt .long_arrayL44
.long_arrayL5:
.long_arrayL39:
	mov r9,#0
	movw r10,#11044
	movt r10,#65534  @ -120028
	str r9,[fp,r10]
.long_arrayL7:
	movw r10,#11044
	movt r10,#65534  @ -120028
	ldr r9,[fp,r10]
	mov r5,r9
	movw r4,#11064
	movt r4,#65534  @ -120008
	add r3,fp,r4
	add r4,r3,r5,lsl #2
	ldr r5,[r4]
	mul r4,r5,r5
	movw r5,#26215
	movt r5,#26214  @ 1717986919
	smmul r5,r4,r5
	asr r3,r4,#31
	rsb r5,r3,r5,asr #2
	mov r3,#10
	mul r5,r5,r3
	sub r3,r4,r5
	movw r10,#11044
	movt r10,#65534  @ -120028
	ldr r9,[fp,r10]
	mov r5,r9
	movw r4,#51064
	movt r4,#65534  @ -80008
	add r2,fp,r4
	add r4,r2,r5,lsl #2
	str r3,[r4]
	movw r10,#11044
	movt r10,#65534  @ -120028
	ldr r9,[fp,r10]
	add r10,r9,#1
	movw r9,#11052
	movt r9,#65534  @ -120020
	str r10,[fp,r9]
.long_arrayL8:
	movw r4,#10000
	movt r4,#0  @ 10000
	movw r10,#11052
	movt r10,#65534  @ -120020
	ldr r9,[fp,r10]
	cmp r9,r4
	blt .long_arrayL45
.long_arrayL9:
.long_arrayL40:
	mov r9,#0
	movw r10,#11032
	movt r10,#65534  @ -120040
	str r9,[fp,r10]
.long_arrayL11:
	movw r10,#11032
	movt r10,#65534  @ -120040
	ldr r9,[fp,r10]
	mov r3,r9
	movw r2,#51064
	movt r2,#65534  @ -80008
	add r1,fp,r2
	add r2,r1,r3,lsl #2
	ldr r3,[r2]
	mul r2,r3,r3
	movw r3,#34079
	movt r3,#20971  @ 1374389535
	smmul r3,r2,r3
	asr r1,r2,#31
	rsb r3,r1,r3,asr #5
	mov r1,#100
	mul r3,r3,r1
	sub r1,r2,r3
	movw r10,#11032
	movt r10,#65534  @ -120040
	ldr r9,[fp,r10]
	mov r3,r9
	movw r2,#11064
	movt r2,#65534  @ -120008
	add r0,fp,r2
	add r2,r0,r3,lsl #2
	ldr r3,[r2]
	add r2,r1,r3
	movw r10,#11032
	movt r10,#65534  @ -120040
	ldr r9,[fp,r10]
	mov r3,r9
	movw r1,#25528
	movt r1,#65535  @ -40008
	add r0,fp,r1
	add r1,r0,r3,lsl #2
	str r2,[r1]
	movw r10,#11032
	movt r10,#65534  @ -120040
	ldr r9,[fp,r10]
	add r10,r9,#1
	movw r9,#11048
	movt r9,#65534  @ -120024
	str r10,[fp,r9]
.long_arrayL12:
	movw r2,#10000
	movt r2,#0  @ 10000
	movw r10,#11048
	movt r10,#65534  @ -120024
	ldr r9,[fp,r10]
	cmp r9,r2
	blt .long_arrayL46
.long_arrayL13:
.long_arrayL41:
	mov r2,#0
	mov r1,#0
.long_arrayL15:
	cmp r1,#10
	blt .long_arrayL18
.long_arrayL19:
	cmp r1,#20
	blt .long_arrayL21
.long_arrayL22:
	cmp r1,#30
	blt .long_arrayL28
.long_arrayL29:
	mov r0,r1
	movw r7,#25528
	movt r7,#65535  @ -40008
	add r5,fp,r7
	add r7,r5,r0,lsl #2
	ldr r5,[r7]
	movw r10,#11060
	movt r10,#65534  @ -120012
	ldr r9,[fp,r10]
	mul r7,r5,r9
	add r5,r2,r7
	movw r7,#27117
	movt r7,#21477  @ 1407543789
	smmul r7,r5,r7
	asr r0,r5,#31
	rsb r7,r0,r7,asr #15
	movw r0,#34452
	movt r0,#1  @ 99988
	mul r7,r7,r0
	sub r0,r5,r7
	mov r7,r0
.long_arrayL30:
	mov r9,r7
	movw r10,#11028
	movt r10,#65534  @ -120044
	str r9,[fp,r10]
.long_arrayL23:
	movw r10,#11028
	movt r10,#65534  @ -120044
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#11036
	movt r9,#65534  @ -120036
	str r10,[fp,r9]
.long_arrayL20:
	add r3,r1,#1
.long_arrayL16:
	movw r6,#10000
	movt r6,#0  @ 10000
	cmp r3,r6
	blt .long_arrayL47
.long_arrayL17:
	movw r10,#11036
	movt r10,#65534  @ -120036
	ldr r9,[fp,r10]
	mov r0,r9
	movw r9,#54508
	movt r9,#1  @ 120044
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.long_arrayL47:
	movw r10,#11036
	movt r10,#65534  @ -120036
	ldr r9,[fp,r10]
	mov r2,r9
	mov r1,r3
	bl .long_arrayL15
.long_arrayL28:
.long_arrayL43:
	movw r8,#5000
	movt r8,#0  @ 5000
	mov r6,r8
	mov r8,r2
.long_arrayL32:
	movw r3,#2233
	movt r3,#0  @ 2233
	cmp r6,r3
	bgt .long_arrayL35
.long_arrayL36:
	mov r3,r1
	movw r0,#11064
	movt r0,#65534  @ -120008
	add r4,fp,r0
	add r0,r4,r3,lsl #2
	ldr r4,[r0]
	add r3,r8,r4
	mov r4,r6
	movw r0,#25528
	movt r0,#65535  @ -40008
	add r5,fp,r0
	add r0,r5,r4,lsl #2
	ldr r5,[r0]
	add r4,r3,r5
	movw r5,#19047
	movt r5,#5033  @ 329861735
	smmul r5,r4,r5
	asr r3,r4,#31
	rsb r5,r3,r5,asr #10
	movw r3,#13333
	movt r3,#0  @ 13333
	mul r5,r5,r3
	sub r3,r4,r5
	add r5,r6,#2
	mov r4,r5
	mov r5,r3
.long_arrayL37:
.long_arrayL33:
	movw r3,#10000
	movt r3,#0  @ 10000
	cmp r4,r3
	blt .long_arrayL49
.long_arrayL34:
	@call void @putint(i32 %r224)
	push {r0,r1,r2,r3}
	mov r0,r5
	bl putint
	pop {r0,r1,r2,r3}
	mov r7,r5
	bl .long_arrayL30
.long_arrayL49:
	mov r6,r4
	mov r8,r5
	bl .long_arrayL32
.long_arrayL35:
	mov r7,r1
	movw r3,#51064
	movt r3,#65534  @ -80008
	add r0,fp,r3
	add r3,r0,r7,lsl #2
	ldr r7,[r3]
	add r3,r8,r7
	mov r8,r6
	movw r7,#11064
	movt r7,#65534  @ -120008
	add r0,fp,r7
	add r7,r0,r8,lsl #2
	ldr r8,[r7]
	sub r7,r3,r8
	add r8,r6,#1
	mov r4,r8
	mov r5,r7
	bl .long_arrayL37
.long_arrayL21:
.long_arrayL42:
	mov r8,r1
	movw r7,#25528
	movt r7,#65535  @ -40008
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	movw r8,#5000
	movt r8,#0  @ 5000
	mov r6,r8
	mov r8,r2
.long_arrayL25:
	ldr r5,[r7]
	add r4,r8,r5
	mov r5,r6
	movw r3,#11064
	movt r3,#65534  @ -120008
	add r0,fp,r3
	add r3,r0,r5,lsl #2
	ldr r5,[r3]
	sub r3,r4,r5
	add r5,r6,#1
.long_arrayL26:
	movw r4,#10000
	movt r4,#0  @ 10000
	cmp r5,r4
	blt .long_arrayL48
.long_arrayL27:
	@call void @putint(i32 %r124)
	push {r0,r1,r2,r3}
	mov r0,r3
	bl putint
	pop {r0,r1,r2,r3}
	mov r9,r3
	movw r10,#11028
	movt r10,#65534  @ -120044
	str r9,[fp,r10]
	bl .long_arrayL23
.long_arrayL48:
	mov r6,r5
	mov r8,r3
	bl .long_arrayL25
.long_arrayL18:
	mov r8,r1
	movw r7,#25528
	movt r7,#65535  @ -40008
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	add r7,r2,r8
	movw r8,#3835
	movt r8,#12586  @ 824839931
	smmul r8,r7,r8
	asr r6,r7,#31
	rsb r8,r6,r8,asr #8
	movw r6,#1333
	movt r6,#0  @ 1333
	mul r8,r8,r6
	sub r6,r7,r8
	@call void @putint(i32 %r100)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r3}
	mov r0,r6
	bl putint
	pop {r0,r1,r3}
	add sp,sp,#4 @stack align 8bytes
	mov r9,r6
	movw r10,#11036
	movt r10,#65534  @ -120036
	str r9,[fp,r10]
	bl .long_arrayL20
.long_arrayL46:
	movw r10,#11048
	movt r10,#65534  @ -120024
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#11032
	movt r9,#65534  @ -120040
	str r10,[fp,r9]
	bl .long_arrayL11
.long_arrayL45:
	movw r10,#11052
	movt r10,#65534  @ -120020
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#11044
	movt r9,#65534  @ -120028
	str r10,[fp,r9]
	bl .long_arrayL7
.long_arrayL44:
	movw r10,#11056
	movt r10,#65534  @ -120016
	ldr r9,[fp,r10]
	mov r10,r9
	movw r9,#11040
	movt r9,#65534  @ -120032
	str r10,[fp,r9]
	bl .long_arrayL3
main:@r8 
	push {fp,lr}
	push {r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r1 = call i32 @long_array(i32 9)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#9
	bl long_array
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	mov r0,r8
	add sp,sp,#8
	pop {r8}
	pop {fp,pc}
	.section	.note.GNU-stack,"",%progbits
