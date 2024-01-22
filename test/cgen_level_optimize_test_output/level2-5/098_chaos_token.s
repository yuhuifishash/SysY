.arch armv7-a
.fpu vfpv3-d16
.arm
.data
__HELLO:
	.word  87
	.word  101
	.word  108
	.word  99
	.word  111
	.word  109
	.word  101
	.word  32
	.word  116
	.word  111
	.word  32
	.word  116
	.word  104
	.word  101
	.word  32
	.word  74
	.word  97
	.word  112
	.word  97
	.word  114
	.word  105
	.word  32
	.word  80
	.word  97
	.word  114
	.word  107
	.word  33
	.word  10
	.space  288
N4__mE___:
	.word  83
	.word  97
	.word  97
	.word  98
	.word  97
	.word  114
	.word  117
	.space  172
	.word  75
	.word  97
	.word  98
	.word  97
	.word  110
	.space  180
	.word  72
	.word  97
	.word  115
	.word  104
	.word  105
	.word  98
	.word  105
	.word  114
	.word  111
	.word  107
	.word  111
	.word  117
	.space  152
	.word  65
	.word  114
	.word  97
	.word  105
	.word  103
	.word  117
	.word  109
	.word  97
	.space  168
	.word  72
	.word  117
	.word  110
	.word  98
	.word  111
	.word  114
	.word  117
	.word  116
	.word  111
	.word  32
	.word  80
	.word  101
	.word  110
	.word  103
	.word  105
	.word  110
	.space  136
	.word  84
	.word  97
	.word  105
	.word  114
	.word  105
	.word  107
	.word  117
	.word  32
	.word  79
	.word  111
	.word  107
	.word  97
	.word  109
	.word  105
	.space  144
saY_HeI10_To:
	.word  32
	.word  115
	.word  97
	.word  121
	.word  115
	.word  32
	.word  104
	.word  101
	.word  108
	.word  108
	.word  111
	.word  32
	.word  116
	.word  111
	.word  32
	.space  100
RET:
	.word  10
	.space  16
.text
.global main
.LPIC0:
	.word  N4__mE___
.LPIC1:
	.word  RET
.LPIC2:
	.word  __HELLO
.LPIC3:
	.word  saY_HeI10_To
putstr:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.putstrL0:
.putstrL1:
	mov r8,r0
	ldr r7,[r8]
	cmp r7,#0
	bne .putstrL6
.putstrL8:
	mov r8,#0
.putstrL5:
	mov r0,r8
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.putstrL6:
	mov r7,#0
.putstrL3:
	mov r6,r7
	add r5,r0,r6,lsl #2
	ldr r6,[r5]
	@call void @putch(i32 %r10)
	push {r0}
	mov r0,r6
	bl putch
	pop {r0}
	add r6,r7,#1
.putstrL4:
	mov r5,r6
	add r4,r0,r5,lsl #2
	ldr r5,[r4]
	cmp r5,#0
	bne .putstrL7
.putstrL9:
	mov r8,r6
	bl .putstrL5
.putstrL7:
	mov r7,r6
	bl .putstrL3
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	ldr r8,.LPIC2
	@%r1 = call i32 @putstr(ptr %r0)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putstr
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
.mainL11:
	mov r8,#0
.mainL3:
	movw r7,#43691
	movt r7,#10922  @ 715827883
	smmul r7,r8,r7
	asr r6,r8,#31
	rsb r5,r6,r7
	movw r7,#43691
	movt r7,#10922  @ 715827883
	smmul r7,r8,r7
	asr r6,r8,#31
	rsb r7,r6,r7
	mov r6,#6
	mul r7,r7,r6
	sub r6,r8,r7
	cmp r5,r6
	bne .mainL6
.mainL7:
	add r7,r8,r8,lsl #4
	add r4,r7,#23
	rsbs r7,r4,#0
	and r3,r4,#31
	and r7,r7,#31
	it pl
	rsbpl r3,r7,#0
	cmp r3,#0
	beq .mainL8
.mainL9:
.mainL4:
	mov r8,r3
	bl .mainL3
.mainL8:
.mainL5:
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL6:
	mov r7,#50
	mul r7,r5,r7
	mov r5,r7
	ldr r7,.LPIC0
	add r4,r7,r5,lsl #2
	@%r21 = call i32 @putstr(ptr %r20)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r4
	bl putstr
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC3
	@%r23 = call i32 @putstr(ptr %r22)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putstr
	mov r5,r0
	add sp,sp,#4 @stack align 8bytes
	mov r7,#50
	mul r7,r6,r7
	mov r6,r7
	ldr r7,.LPIC0
	add r5,r7,r6,lsl #2
	@%r26 = call i32 @putstr(ptr %r25)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	bl putstr
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	ldr r7,.LPIC1
	@%r28 = call i32 @putstr(ptr %r27)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putstr
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	bl .mainL7
	.section	.note.GNU-stack,"",%progbits
