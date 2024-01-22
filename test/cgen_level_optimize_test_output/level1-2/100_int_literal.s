.arch armv7-a
.fpu vfpv3-d16
.arm
.data
s:
	.word  0
.text
.global main
.LPIC0:
	.word  s
get_ans_se:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.get_ans_seL0:
.get_ans_seL1:
	cmp r1,r2
	beq .get_ans_seL2
.get_ans_seL4:
	mov r8,#0
.get_ans_seL3:
	lsl r7,r0,#1
	add r6,r7,r8
	ldr r7,.LPIC0
	ldr r5,[r7]
	add r7,r5,r6
	ldr r5,.LPIC0
	str r7,[r5]
	mov r0,r6
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
.get_ans_seL2:
	mov r8,#1
	bl .get_ans_seL3
main:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
.mainL2:
.mainL4:
.mainL5:
.mainL6:
.mainL3:
.mainL7:
.mainL9:
.mainL10:
.mainL11:
.mainL8:
.mainL12:
.mainL14:
.mainL15:
.mainL16:
.mainL13:
.mainL17:
.mainL19:
.mainL21:
.mainL18:
.mainL22:
.mainL24:
.mainL26:
.mainL23:
.mainL27:
.mainL29:
.mainL30:
.mainL31:
.mainL28:
.mainL32:
.mainL34:
.mainL36:
.mainL33:
.mainL37:
.mainL39:
.mainL41:
.mainL38:
.mainL42:
.mainL44:
.mainL46:
.mainL43:
.mainL47:
.mainL49:
.mainL51:
.mainL48:
.mainL52:
.mainL54:
.mainL55:
.mainL56:
.mainL53:
.mainL57:
.mainL59:
.mainL60:
.mainL61:
	ldr r8,.LPIC0
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC0
	str r8,[r7]
.mainL58:
.mainL62:
.mainL64:
.mainL65:
.mainL66:
	ldr r8,.LPIC0
	ldr r7,[r8]
	add r8,r7,#3
	ldr r7,.LPIC0
	str r8,[r7]
.mainL63:
.mainL67:
.mainL69:
.mainL70:
.mainL71:
	ldr r8,.LPIC0
	ldr r7,[r8]
	add r8,r7,#7
	ldr r7,.LPIC0
	str r8,[r7]
.mainL68:
.mainL72:
.mainL74:
.mainL76:
	ldr r8,.LPIC0
	ldr r7,[r8]
	add r8,r7,#14
	ldr r7,.LPIC0
	str r8,[r7]
.mainL73:
.mainL77:
.mainL79:
.mainL81:
	ldr r8,.LPIC0
	ldr r7,[r8]
	add r8,r7,#28
	ldr r7,.LPIC0
	str r8,[r7]
.mainL78:
.mainL82:
.mainL84:
.mainL85:
.mainL86:
	ldr r8,.LPIC0
	ldr r7,[r8]
	add r8,r7,#57
	ldr r7,.LPIC0
	str r8,[r7]
.mainL83:
.mainL87:
.mainL89:
.mainL91:
	ldr r8,.LPIC0
	ldr r7,[r8]
	add r8,r7,#114
	ldr r7,.LPIC0
	str r8,[r7]
.mainL88:
.mainL92:
.mainL94:
.mainL96:
	ldr r8,.LPIC0
	ldr r7,[r8]
	add r8,r7,#0
	ldr r7,.LPIC0
	str r8,[r7]
.mainL93:
.mainL97:
.mainL99:
.mainL101:
	ldr r8,.LPIC0
	ldr r7,[r8]
	add r8,r7,#0
	ldr r7,.LPIC0
	str r8,[r7]
.mainL98:
.mainL102:
.mainL104:
.mainL106:
	ldr r8,.LPIC0
	ldr r7,[r8]
	add r8,r7,#0
	ldr r7,.LPIC0
	str r8,[r7]
.mainL103:
.mainL107:
.mainL109:
.mainL110:
.mainL111:
	ldr r8,.LPIC0
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC0
	str r8,[r7]
.mainL108:
	mov r0,#230
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
get_ans:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.get_ansL0:
.get_ansL1:
	cmp r1,r2
	beq .get_ansL2
.get_ansL4:
	mov r8,#0
.get_ansL3:
	lsl r7,r0,#1
	add r6,r7,r8
	mov r0,r6
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.get_ansL2:
	mov r8,#1
	bl .get_ansL3
	.section	.note.GNU-stack,"",%progbits
