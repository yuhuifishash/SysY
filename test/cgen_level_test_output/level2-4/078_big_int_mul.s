.arch armv7-a
.fpu vfpv3-d16
.arm
.data
len:
	.word  20
.text
.global main
.LPIC0:
	.word  len
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	mov r9,#556
	sub sp,sp,r9
.mainL0:
.mainL1:
	mov r8,#0
	str r8,[fp,#-556]
	mov r8,#0
	str r8,[fp,#-552]
	mov r8,#0
	str r8,[fp,#-548]
	mov r8,#0
	str r8,[fp,#-544]
	mov r8,#0
	str r8,[fp,#-540]
	movw r8,#65000
	movt r8,#65535  @ -536
	add r7,fp,r8
	@call void @memset(i32 %r240,i32 0,i32 80)
	mov r0,r7
	mov r1,#0
	mov r2,#80
	bl memset
	mov r8,#1
	movw r7,#65000
	movt r7,#65535  @ -536
	add r6,fp,r7
	str r8,[r6]
	mov r8,#2
	mov r7,#1
	movw r6,#65000
	movt r6,#65535  @ -536
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#2
	movw r6,#65000
	movt r6,#65535  @ -536
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#3
	movw r6,#65000
	movt r6,#65535  @ -536
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#5
	mov r7,#4
	movw r6,#65000
	movt r6,#65535  @ -536
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#6
	mov r7,#5
	movw r6,#65000
	movt r6,#65535  @ -536
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#7
	mov r7,#6
	movw r6,#65000
	movt r6,#65535  @ -536
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#8
	mov r7,#7
	movw r6,#65000
	movt r6,#65535  @ -536
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#9
	mov r7,#8
	movw r6,#65000
	movt r6,#65535  @ -536
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#0
	mov r7,#9
	movw r6,#65000
	movt r6,#65535  @ -536
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#10
	movw r6,#65000
	movt r6,#65535  @ -536
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	mov r7,#11
	movw r6,#65000
	movt r6,#65535  @ -536
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#12
	movw r6,#65000
	movt r6,#65535  @ -536
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#13
	movw r6,#65000
	movt r6,#65535  @ -536
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#5
	mov r7,#14
	movw r6,#65000
	movt r6,#65535  @ -536
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#6
	mov r7,#15
	movw r6,#65000
	movt r6,#65535  @ -536
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#7
	mov r7,#16
	movw r6,#65000
	movt r6,#65535  @ -536
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#8
	mov r7,#17
	movw r6,#65000
	movt r6,#65535  @ -536
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#9
	mov r7,#18
	movw r6,#65000
	movt r6,#65535  @ -536
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#0
	mov r7,#19
	movw r6,#65000
	movt r6,#65535  @ -536
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	movw r8,#65080
	movt r8,#65535  @ -456
	add r7,fp,r8
	@call void @memset(i32 %r322,i32 0,i32 80)
	mov r0,r7
	mov r1,#0
	mov r2,#80
	bl memset
	mov r8,#2
	movw r7,#65080
	movt r7,#65535  @ -456
	add r6,fp,r7
	str r8,[r6]
	mov r8,#3
	mov r7,#1
	movw r6,#65080
	movt r6,#65535  @ -456
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#2
	movw r6,#65080
	movt r6,#65535  @ -456
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	mov r7,#3
	movw r6,#65080
	movt r6,#65535  @ -456
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#5
	mov r7,#4
	movw r6,#65080
	movt r6,#65535  @ -456
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#7
	mov r7,#5
	movw r6,#65080
	movt r6,#65535  @ -456
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#9
	mov r7,#6
	movw r6,#65080
	movt r6,#65535  @ -456
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#9
	mov r7,#7
	movw r6,#65080
	movt r6,#65535  @ -456
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#0
	mov r7,#8
	movw r6,#65080
	movt r6,#65535  @ -456
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#9
	movw r6,#65080
	movt r6,#65535  @ -456
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#9
	mov r7,#10
	movw r6,#65080
	movt r6,#65535  @ -456
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#8
	mov r7,#11
	movw r6,#65080
	movt r6,#65535  @ -456
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#7
	mov r7,#12
	movw r6,#65080
	movt r6,#65535  @ -456
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#6
	mov r7,#13
	movw r6,#65080
	movt r6,#65535  @ -456
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#4
	mov r7,#14
	movw r6,#65080
	movt r6,#65535  @ -456
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#3
	mov r7,#15
	movw r6,#65080
	movt r6,#65535  @ -456
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	mov r7,#16
	movw r6,#65080
	movt r6,#65535  @ -456
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#1
	mov r7,#17
	movw r6,#65080
	movt r6,#65535  @ -456
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	mov r7,#18
	movw r6,#65080
	movt r6,#65535  @ -456
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	mov r8,#2
	mov r7,#19
	movw r6,#65080
	movt r6,#65535  @ -456
	add r5,fp,r6
	add r6,r5,r7,lsl #2
	str r8,[r6]
	ldr r8,.LPIC0
	ldr r7,[r8]
	str r7,[fp,#-376]
	ldr r8,.LPIC0
	ldr r7,[r8]
	str r7,[fp,#-372]
	mvn r8,#167
	add r7,fp,r8
	@call void @memset(i32 %r406,i32 0,i32 160)
	mov r0,r7
	mov r1,#0
	mov r2,#160
	bl memset
	mov r8,#0
	str r8,[fp,#-556]
.mainL2:
	ldr r8,[fp,#-556]
	ldr r7,[fp,#-376]
	cmp r8,r7
	blt .mainL3
.mainL4:
	mov r8,#0
	str r8,[fp,#-556]
.mainL5:
	ldr r8,[fp,#-556]
	ldr r7,[fp,#-372]
	cmp r8,r7
	blt .mainL6
.mainL7:
	ldr r8,[fp,#-376]
	ldr r7,[fp,#-372]
	add r6,r8,r7
	mov r8,#1
	sub r7,r6,r8
	str r7,[fp,#-544]
	mov r8,#0
	str r8,[fp,#-556]
.mainL8:
	ldr r8,[fp,#-556]
	ldr r7,[fp,#-544]
	cmp r8,r7
	ble .mainL9
.mainL10:
	mov r8,#0
	str r8,[fp,#-540]
	ldr r8,[fp,#-372]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-556]
.mainL11:
	ldr r8,[fp,#-556]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bgt .mainL12
.mainL13:
	mov r8,#0
	mov r7,r8
	mvn r8,#167
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	mov r8,#0
	cmp r7,r8
	bne .mainL20
.mainL21:
	mov r8,#1
	str r8,[fp,#-556]
.mainL22:
	ldr r8,[fp,#-556]
	ldr r7,[fp,#-376]
	ldr r6,[fp,#-372]
	add r5,r7,r6
	mov r7,#1
	sub r6,r5,r7
	cmp r8,r6
	ble .mainL23
.mainL24:
	mov r8,#0
	mov r0,r8
	mov r9,#556
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL23:
	ldr r8,[fp,#-556]
	mov r7,r8
	mvn r8,#167
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	@call void @putint(i32 %r235)
	mov r0,r7
	bl putint
	ldr r8,[fp,#-556]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-556]
	bl .mainL22
.mainL20:
	mov r8,#0
	mov r7,r8
	mvn r8,#167
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	@call void @putint(i32 %r222)
	mov r0,r7
	bl putint
	bl .mainL21
.mainL12:
	ldr r8,[fp,#-556]
	mov r7,r8
	movw r8,#65268
	movt r8,#65535  @ -268
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	str r7,[fp,#-548]
	ldr r8,[fp,#-376]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-552]
.mainL14:
	ldr r8,[fp,#-552]
	mov r7,#1
	rsb r6,r7,#0
	cmp r8,r6
	bgt .mainL15
.mainL16:
	ldr r8,[fp,#-544]
	ldr r7,[fp,#-376]
	add r6,r8,r7
	mov r8,#1
	sub r7,r6,r8
	str r7,[fp,#-544]
	ldr r8,[fp,#-556]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-556]
	bl .mainL11
.mainL15:
	ldr r8,[fp,#-544]
	mov r7,r8
	mvn r8,#167
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-548]
	ldr r6,[fp,#-552]
	mov r5,r6
	movw r6,#65168
	movt r6,#65535  @ -368
	add r4,fp,r6
	add r6,r4,r5,lsl #2
	ldr r5,[r6]
	mul r6,r8,r5
	add r8,r7,r6
	str r8,[fp,#-540]
	ldr r8,[fp,#-540]
	mov r7,#10
	cmp r8,r7
	bge .mainL17
.mainL18:
	ldr r8,[fp,#-540]
	ldr r7,[fp,#-544]
	mov r6,r7
	mvn r7,#167
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
.mainL19:
	ldr r8,[fp,#-552]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-552]
	ldr r8,[fp,#-544]
	mov r7,#1
	sub r6,r8,r7
	str r6,[fp,#-544]
	bl .mainL14
.mainL17:
	ldr r8,[fp,#-540]
	ldr r7,[fp,#-544]
	mov r6,r7
	mvn r7,#167
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-544]
	mov r7,#1
	sub r6,r8,r7
	mov r8,r6
	mvn r7,#167
	add r6,fp,r7
	add r7,r6,r8,lsl #2
	ldr r8,[r7]
	ldr r7,[fp,#-540]
	mov r6,#10
	@%r190 = call i32 @__aeabi_idiv(i32 %r188,i32 %r189)
	mov r0,r7
	mov r1,r6
	bl __aeabi_idiv
	mov r5,r0
	add r7,r8,r5
	ldr r8,[fp,#-544]
	mov r6,#1
	sub r5,r8,r6
	mov r8,r5
	mvn r6,#167
	add r5,fp,r6
	add r6,r5,r8,lsl #2
	str r7,[r6]
	bl .mainL19
.mainL9:
	mov r8,#0
	ldr r7,[fp,#-556]
	mov r6,r7
	mvn r7,#167
	add r5,fp,r7
	add r7,r5,r6,lsl #2
	str r8,[r7]
	ldr r8,[fp,#-556]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-556]
	bl .mainL8
.mainL6:
	ldr r8,[fp,#-556]
	mov r7,r8
	movw r8,#65080
	movt r8,#65535  @ -456
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-556]
	mov r6,r8
	movw r8,#65268
	movt r8,#65535  @ -268
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	str r7,[r8]
	ldr r8,[fp,#-556]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-556]
	bl .mainL5
.mainL3:
	ldr r8,[fp,#-556]
	mov r7,r8
	movw r8,#65000
	movt r8,#65535  @ -536
	add r6,fp,r8
	add r8,r6,r7,lsl #2
	ldr r7,[r8]
	ldr r8,[fp,#-556]
	mov r6,r8
	movw r8,#65168
	movt r8,#65535  @ -368
	add r5,fp,r8
	add r8,r5,r6,lsl #2
	str r7,[r8]
	ldr r8,[fp,#-556]
	mov r7,#1
	add r6,r8,r7
	str r6,[fp,#-556]
	bl .mainL2
	.section	.note.GNU-stack,"",%progbits
