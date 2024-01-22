.arch armv7-a
.fpu vfpv3-d16
.arm
.data
a:
	.word  0
sum:
	.word  0
count:
	.word  0
.text
.global main
.LPIC0:
	.word  a
.LPIC1:
	.word  count
.LPIC2:
	.word  sum
getA:@r7 r8 
	push {fp,lr}
	push {r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.getAL0:
.getAL1:
	ldr r8,.LPIC1
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC1
	str r8,[r7]
	ldr r8,.LPIC1
	ldr r7,[r8]
	mov r0,r7
	add sp,sp,#8
	pop {r7,r8}
	pop {fp,pc}
f1:@r5 r6 r7 r8 
	push {fp,lr}
	push {r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.f1L0:
.f1L1:
	ldr r8,.LPIC2
	ldr r7,[r8]
	add r8,r7,r0
	ldr r7,.LPIC2
	str r8,[r7]
.f1L4:
.f1L6:
	ldr r8,.LPIC1
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC1
	str r8,[r7]
	ldr r8,.LPIC1
	ldr r7,[r8]
.f1L5:
	ldr r8,.LPIC2
	ldr r6,[r8]
	add r8,r6,r7
	ldr r6,.LPIC2
	str r8,[r6]
.f1L2:
.f1L7:
.f1L9:
	ldr r8,.LPIC1
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC1
	str r8,[r6]
	ldr r8,.LPIC1
	ldr r6,[r8]
.f1L8:
	ldr r8,.LPIC2
	ldr r5,[r8]
	add r8,r5,r6
	ldr r6,.LPIC2
	str r8,[r6]
.f1L3:
	ldr r8,.LPIC2
	ldr r6,[r8]
	add r8,r6,r7
	ldr r6,.LPIC2
	str r8,[r6]
	ldr r8,.LPIC2
	ldr r6,[r8]
	add r8,r6,r7
	ldr r7,.LPIC2
	str r8,[r7]
	add sp,sp,#8
	pop {r5,r6,r7,r8}
	pop {fp,pc}
f2:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.f2L0:
.f2L1:
	ldr r8,.LPIC2
	ldr r7,[r8]
	ldr r8,.LPIC0
	ldr r6,[r8]
	add r8,r7,r6
	ldr r7,.LPIC2
	str r8,[r7]
.f2L2:
.f2L4:
	ldr r8,.LPIC1
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC1
	str r8,[r7]
.f2L3:
	ldr r8,.LPIC2
	ldr r7,[r8]
	ldr r8,.LPIC0
	ldr r6,[r8]
	add r8,r7,r6
	ldr r7,.LPIC2
	str r8,[r7]
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
f3:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.f3L0:
.f3L1:
.f3L2:
.f3L4:
	ldr r8,.LPIC1
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC1
	str r8,[r7]
	ldr r8,.LPIC1
	ldr r7,[r8]
.f3L3:
	ldr r8,.LPIC2
	ldr r6,[r8]
	add r8,r6,r7
	ldr r7,.LPIC2
	str r8,[r7]
.f3L5:
.f3L7:
	ldr r8,.LPIC1
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC1
	str r8,[r7]
	ldr r8,.LPIC1
	ldr r7,[r8]
.f3L6:
	ldr r8,.LPIC2
	ldr r6,[r8]
	add r8,r6,r7
	ldr r6,.LPIC2
	str r8,[r6]
.f3L8:
.f3L10:
	ldr r8,.LPIC1
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC1
	str r8,[r6]
.f3L9:
	ldr r8,.LPIC2
	ldr r6,[r8]
	add r8,r6,r7
	ldr r7,.LPIC2
	str r8,[r7]
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	mov r8,#0
	ldr r7,.LPIC2
	str r8,[r7]
.mainL28:
.mainL30:
	ldr r8,.LPIC1
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC1
	str r8,[r7]
	ldr r8,.LPIC1
	ldr r7,[r8]
.mainL29:
	ldr r8,.LPIC0
	str r7,[r8]
	ldr r8,.LPIC2
	ldr r7,[r8]
	ldr r8,.LPIC0
	ldr r6,[r8]
	add r8,r7,r6
	ldr r7,.LPIC2
	str r8,[r7]
.mainL49:
.mainL51:
	ldr r8,.LPIC1
	ldr r7,[r8]
	add r8,r7,#1
	ldr r7,.LPIC1
	str r8,[r7]
	ldr r8,.LPIC1
	ldr r7,[r8]
.mainL50:
	@call void @f1(i32 %r112)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl f1
	add sp,sp,#4 @stack align 8bytes
.mainL82:
.mainL84:
	ldr r8,.LPIC2
	ldr r6,[r8]
	ldr r8,.LPIC0
	ldr r5,[r8]
	add r8,r6,r5
	ldr r6,.LPIC2
	str r8,[r6]
.mainL85:
.mainL87:
	ldr r8,.LPIC1
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC1
	str r8,[r6]
.mainL86:
	ldr r8,.LPIC2
	ldr r6,[r8]
	ldr r8,.LPIC0
	ldr r5,[r8]
	add r8,r6,r5
	ldr r6,.LPIC2
	str r8,[r6]
.mainL83:
.mainL100:
.mainL102:
.mainL103:
.mainL105:
	ldr r8,.LPIC1
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC1
	str r8,[r6]
	ldr r8,.LPIC1
	ldr r6,[r8]
.mainL104:
	ldr r8,.LPIC2
	ldr r5,[r8]
	add r8,r5,r6
	ldr r6,.LPIC2
	str r8,[r6]
.mainL106:
.mainL108:
	ldr r8,.LPIC1
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC1
	str r8,[r6]
	ldr r8,.LPIC1
	ldr r6,[r8]
.mainL107:
	ldr r8,.LPIC2
	ldr r5,[r8]
	add r8,r5,r6
	ldr r5,.LPIC2
	str r8,[r5]
.mainL109:
.mainL111:
	ldr r8,.LPIC1
	ldr r5,[r8]
	add r8,r5,#1
	ldr r5,.LPIC1
	str r8,[r5]
.mainL110:
	ldr r8,.LPIC2
	ldr r5,[r8]
	add r8,r5,r6
	ldr r6,.LPIC2
	str r8,[r6]
.mainL101:
	@call void @f1(i32 %r112)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl f1
	add sp,sp,#4 @stack align 8bytes
.mainL112:
.mainL114:
	ldr r8,.LPIC2
	ldr r6,[r8]
	ldr r8,.LPIC0
	ldr r5,[r8]
	add r8,r6,r5
	ldr r6,.LPIC2
	str r8,[r6]
.mainL115:
.mainL117:
	ldr r8,.LPIC1
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC1
	str r8,[r6]
.mainL116:
	ldr r8,.LPIC2
	ldr r6,[r8]
	ldr r8,.LPIC0
	ldr r5,[r8]
	add r8,r6,r5
	ldr r6,.LPIC2
	str r8,[r6]
.mainL113:
.mainL118:
.mainL120:
.mainL121:
.mainL123:
	ldr r8,.LPIC1
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC1
	str r8,[r6]
	ldr r8,.LPIC1
	ldr r6,[r8]
.mainL122:
	ldr r8,.LPIC2
	ldr r5,[r8]
	add r8,r5,r6
	ldr r6,.LPIC2
	str r8,[r6]
.mainL124:
.mainL126:
	ldr r8,.LPIC1
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC1
	str r8,[r6]
	ldr r8,.LPIC1
	ldr r6,[r8]
.mainL125:
	ldr r8,.LPIC2
	ldr r5,[r8]
	add r8,r5,r6
	ldr r5,.LPIC2
	str r8,[r5]
.mainL127:
.mainL129:
	ldr r8,.LPIC1
	ldr r5,[r8]
	add r8,r5,#1
	ldr r5,.LPIC1
	str r8,[r5]
.mainL128:
	ldr r8,.LPIC2
	ldr r5,[r8]
	add r8,r5,r6
	ldr r6,.LPIC2
	str r8,[r6]
.mainL119:
.mainL130:
.mainL132:
	ldr r8,.LPIC1
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC1
	str r8,[r6]
.mainL131:
	@call void @f1(i32 %r112)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl f1
	add sp,sp,#4 @stack align 8bytes
.mainL133:
.mainL135:
	ldr r8,.LPIC2
	ldr r6,[r8]
	ldr r8,.LPIC0
	ldr r5,[r8]
	add r8,r6,r5
	ldr r6,.LPIC2
	str r8,[r6]
.mainL136:
.mainL138:
	ldr r8,.LPIC1
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC1
	str r8,[r6]
.mainL137:
	ldr r8,.LPIC2
	ldr r6,[r8]
	ldr r8,.LPIC0
	ldr r5,[r8]
	add r8,r6,r5
	ldr r6,.LPIC2
	str r8,[r6]
.mainL134:
.mainL139:
.mainL141:
.mainL142:
.mainL144:
	ldr r8,.LPIC1
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC1
	str r8,[r6]
	ldr r8,.LPIC1
	ldr r6,[r8]
.mainL143:
	ldr r8,.LPIC2
	ldr r5,[r8]
	add r8,r5,r6
	ldr r6,.LPIC2
	str r8,[r6]
.mainL145:
.mainL147:
	ldr r8,.LPIC1
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC1
	str r8,[r6]
	ldr r8,.LPIC1
	ldr r6,[r8]
.mainL146:
	ldr r8,.LPIC2
	ldr r5,[r8]
	add r8,r5,r6
	ldr r5,.LPIC2
	str r8,[r5]
.mainL148:
.mainL150:
	ldr r8,.LPIC1
	ldr r5,[r8]
	add r8,r5,#1
	bl .LPIC4
.LPIC3:
	.word count
.LPIC4:
	ldr r5,.LPIC3
	str r8,[r5]
.mainL149:
	bl .LPIC6
.LPIC5:
	.word sum
.LPIC6:
	ldr r8,.LPIC5
	ldr r5,[r8]
	add r8,r5,r6
	ldr r6,.LPIC5
	str r8,[r6]
.mainL140:
.mainL151:
.mainL153:
	ldr r8,.LPIC3
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC3
	str r8,[r6]
.mainL152:
.mainL154:
.mainL156:
	ldr r8,.LPIC3
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC3
	str r8,[r6]
	ldr r8,.LPIC3
	ldr r6,[r8]
.mainL155:
	@call void @f1(i32 %r269)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl f1
	add sp,sp,#4 @stack align 8bytes
.mainL157:
.mainL159:
	ldr r8,.LPIC5
	ldr r6,[r8]
	bl .LPIC8
.LPIC7:
	.word a
.LPIC8:
	ldr r8,.LPIC7
	ldr r5,[r8]
	add r8,r6,r5
	ldr r6,.LPIC5
	str r8,[r6]
.mainL160:
.mainL162:
	ldr r8,.LPIC3
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC3
	str r8,[r6]
.mainL161:
	ldr r8,.LPIC5
	ldr r6,[r8]
	ldr r8,.LPIC7
	ldr r5,[r8]
	add r8,r6,r5
	ldr r6,.LPIC5
	str r8,[r6]
.mainL158:
.mainL163:
.mainL165:
.mainL166:
.mainL168:
	ldr r8,.LPIC3
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC3
	str r8,[r6]
	ldr r8,.LPIC3
	ldr r6,[r8]
.mainL167:
	ldr r8,.LPIC5
	ldr r5,[r8]
	add r8,r5,r6
	ldr r6,.LPIC5
	str r8,[r6]
.mainL169:
.mainL171:
	ldr r8,.LPIC3
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC3
	str r8,[r6]
	ldr r8,.LPIC3
	ldr r6,[r8]
.mainL170:
	ldr r8,.LPIC5
	ldr r5,[r8]
	add r8,r5,r6
	ldr r5,.LPIC5
	str r8,[r5]
.mainL172:
.mainL174:
	ldr r8,.LPIC3
	ldr r5,[r8]
	add r8,r5,#1
	ldr r5,.LPIC3
	str r8,[r5]
.mainL173:
	ldr r8,.LPIC5
	ldr r5,[r8]
	add r8,r5,r6
	ldr r6,.LPIC5
	str r8,[r6]
.mainL164:
.mainL175:
.mainL177:
	ldr r8,.LPIC3
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC3
	str r8,[r6]
	ldr r8,.LPIC3
	ldr r6,[r8]
.mainL176:
	@call void @f1(i32 %r300)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl f1
	add sp,sp,#4 @stack align 8bytes
.mainL178:
.mainL180:
	ldr r8,.LPIC5
	ldr r6,[r8]
	ldr r8,.LPIC7
	ldr r5,[r8]
	add r8,r6,r5
	ldr r6,.LPIC5
	str r8,[r6]
.mainL181:
.mainL183:
	ldr r8,.LPIC3
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC3
	str r8,[r6]
.mainL182:
	ldr r8,.LPIC5
	ldr r6,[r8]
	ldr r8,.LPIC7
	ldr r5,[r8]
	add r8,r6,r5
	ldr r6,.LPIC5
	str r8,[r6]
.mainL179:
.mainL184:
.mainL186:
.mainL187:
.mainL189:
	ldr r8,.LPIC3
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC3
	str r8,[r6]
	ldr r8,.LPIC3
	ldr r6,[r8]
.mainL188:
	ldr r8,.LPIC5
	ldr r5,[r8]
	add r8,r5,r6
	ldr r6,.LPIC5
	str r8,[r6]
.mainL190:
.mainL192:
	ldr r8,.LPIC3
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC3
	str r8,[r6]
	ldr r8,.LPIC3
	ldr r6,[r8]
.mainL191:
	ldr r8,.LPIC5
	ldr r5,[r8]
	add r8,r5,r6
	ldr r5,.LPIC5
	str r8,[r5]
.mainL193:
.mainL195:
	ldr r8,.LPIC3
	ldr r5,[r8]
	add r8,r5,#1
	ldr r5,.LPIC3
	str r8,[r5]
.mainL194:
	ldr r8,.LPIC5
	ldr r5,[r8]
	add r8,r5,r6
	ldr r6,.LPIC5
	str r8,[r6]
.mainL185:
.mainL196:
.mainL198:
	ldr r8,.LPIC3
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC3
	str r8,[r6]
	ldr r8,.LPIC3
	ldr r6,[r8]
.mainL197:
	@call void @f1(i32 %r331)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl f1
	add sp,sp,#4 @stack align 8bytes
.mainL199:
.mainL201:
	ldr r8,.LPIC5
	ldr r6,[r8]
	ldr r8,.LPIC7
	ldr r5,[r8]
	add r8,r6,r5
	ldr r6,.LPIC5
	str r8,[r6]
.mainL202:
.mainL204:
	ldr r8,.LPIC3
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC3
	str r8,[r6]
.mainL203:
	ldr r8,.LPIC5
	ldr r6,[r8]
	ldr r8,.LPIC7
	ldr r5,[r8]
	add r8,r6,r5
	ldr r6,.LPIC5
	str r8,[r6]
.mainL200:
.mainL205:
.mainL207:
.mainL208:
.mainL210:
	ldr r8,.LPIC3
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC3
	str r8,[r6]
	ldr r8,.LPIC3
	ldr r6,[r8]
.mainL209:
	ldr r8,.LPIC5
	ldr r5,[r8]
	add r8,r5,r6
	ldr r6,.LPIC5
	str r8,[r6]
.mainL211:
.mainL213:
	ldr r8,.LPIC3
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC3
	str r8,[r6]
	ldr r8,.LPIC3
	ldr r6,[r8]
.mainL212:
	ldr r8,.LPIC5
	ldr r5,[r8]
	add r8,r5,r6
	ldr r5,.LPIC5
	str r8,[r5]
.mainL214:
.mainL216:
	ldr r8,.LPIC3
	ldr r5,[r8]
	add r8,r5,#1
	ldr r5,.LPIC3
	str r8,[r5]
.mainL215:
	ldr r8,.LPIC5
	ldr r5,[r8]
	add r8,r5,r6
	ldr r6,.LPIC5
	str r8,[r6]
.mainL206:
	@call void @f1(i32 %r112)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl f1
	add sp,sp,#4 @stack align 8bytes
.mainL217:
.mainL219:
	ldr r8,.LPIC5
	ldr r6,[r8]
	ldr r8,.LPIC7
	ldr r5,[r8]
	add r8,r6,r5
	ldr r6,.LPIC5
	str r8,[r6]
.mainL220:
.mainL222:
	ldr r8,.LPIC3
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC3
	str r8,[r6]
.mainL221:
	ldr r8,.LPIC5
	ldr r6,[r8]
	ldr r8,.LPIC7
	ldr r5,[r8]
	add r8,r6,r5
	ldr r6,.LPIC5
	str r8,[r6]
.mainL218:
.mainL223:
.mainL225:
.mainL226:
.mainL228:
	ldr r8,.LPIC3
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC3
	str r8,[r6]
	ldr r8,.LPIC3
	ldr r6,[r8]
.mainL227:
	ldr r8,.LPIC5
	ldr r5,[r8]
	add r8,r5,r6
	ldr r6,.LPIC5
	str r8,[r6]
.mainL229:
.mainL231:
	ldr r8,.LPIC3
	ldr r6,[r8]
	add r8,r6,#1
	ldr r6,.LPIC3
	str r8,[r6]
	ldr r8,.LPIC3
	ldr r6,[r8]
.mainL230:
	ldr r8,.LPIC5
	ldr r5,[r8]
	add r8,r5,r6
	ldr r5,.LPIC5
	str r8,[r5]
.mainL232:
.mainL234:
	ldr r8,.LPIC3
	ldr r5,[r8]
	add r8,r5,#1
	ldr r5,.LPIC3
	str r8,[r5]
.mainL233:
	ldr r8,.LPIC5
	ldr r5,[r8]
	add r8,r5,r6
	ldr r6,.LPIC5
	str r8,[r6]
.mainL224:
.mainL3:
.mainL7:
.mainL235:
	mov r8,#0
	mov r6,r7
.mainL11:
.mainL15:
.mainL18:
	@call void @f1(i32 %r76)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl f1
	add sp,sp,#4 @stack align 8bytes
.mainL31:
.mainL33:
	ldr r7,.LPIC5
	ldr r5,[r7]
	ldr r7,.LPIC7
	ldr r4,[r7]
	add r7,r5,r4
	ldr r5,.LPIC5
	str r7,[r5]
.mainL34:
.mainL36:
	ldr r7,.LPIC3
	ldr r5,[r7]
	add r7,r5,#1
	ldr r5,.LPIC3
	str r7,[r5]
.mainL35:
	ldr r7,.LPIC5
	ldr r5,[r7]
	ldr r7,.LPIC7
	ldr r4,[r7]
	add r7,r5,r4
	ldr r5,.LPIC5
	str r7,[r5]
.mainL32:
.mainL52:
.mainL54:
.mainL55:
.mainL57:
	ldr r7,.LPIC3
	ldr r5,[r7]
	add r7,r5,#1
	ldr r5,.LPIC3
	str r7,[r5]
	ldr r7,.LPIC3
	ldr r5,[r7]
.mainL56:
	ldr r7,.LPIC5
	ldr r4,[r7]
	add r7,r4,r5
	ldr r5,.LPIC5
	str r7,[r5]
.mainL58:
.mainL60:
	ldr r7,.LPIC3
	ldr r5,[r7]
	add r7,r5,#1
	ldr r5,.LPIC3
	str r7,[r5]
	ldr r7,.LPIC3
	ldr r5,[r7]
.mainL59:
	ldr r7,.LPIC5
	ldr r4,[r7]
	add r7,r4,r5
	bl .LPIC10
.LPIC9:
	.word sum
.LPIC10:
	ldr r4,.LPIC9
	str r7,[r4]
.mainL61:
.mainL63:
	bl .LPIC12
.LPIC11:
	.word count
.LPIC12:
	ldr r7,.LPIC11
	ldr r4,[r7]
	add r7,r4,#1
	ldr r4,.LPIC11
	str r7,[r4]
.mainL62:
	ldr r7,.LPIC9
	ldr r4,[r7]
	add r7,r4,r5
	ldr r5,.LPIC9
	str r7,[r5]
.mainL53:
.mainL17:
	cmp r8,#1
	beq .mainL21
.mainL22:
	@call void @f1(i32 %r76)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r6
	bl f1
	add sp,sp,#4 @stack align 8bytes
.mainL40:
.mainL42:
	ldr r7,.LPIC9
	ldr r5,[r7]
	ldr r7,.LPIC7
	ldr r4,[r7]
	add r7,r5,r4
	ldr r5,.LPIC9
	str r7,[r5]
.mainL43:
.mainL45:
	ldr r7,.LPIC11
	ldr r5,[r7]
	add r7,r5,#1
	ldr r5,.LPIC11
	str r7,[r5]
.mainL44:
	ldr r7,.LPIC9
	ldr r5,[r7]
	bl .LPIC14
.LPIC13:
	.word a
.LPIC14:
	ldr r7,.LPIC13
	ldr r4,[r7]
	add r7,r5,r4
	ldr r5,.LPIC9
	str r7,[r5]
.mainL41:
.mainL70:
.mainL72:
.mainL73:
.mainL75:
	ldr r7,.LPIC11
	ldr r5,[r7]
	add r7,r5,#1
	ldr r5,.LPIC11
	str r7,[r5]
	ldr r7,.LPIC11
	ldr r5,[r7]
.mainL74:
	ldr r7,.LPIC9
	ldr r4,[r7]
	add r7,r4,r5
	ldr r5,.LPIC9
	str r7,[r5]
.mainL76:
.mainL78:
	ldr r7,.LPIC11
	ldr r5,[r7]
	add r7,r5,#1
	ldr r5,.LPIC11
	str r7,[r5]
	ldr r7,.LPIC11
	ldr r5,[r7]
.mainL77:
	ldr r7,.LPIC9
	ldr r4,[r7]
	add r7,r4,r5
	ldr r4,.LPIC9
	str r7,[r4]
.mainL79:
.mainL81:
	ldr r7,.LPIC11
	ldr r4,[r7]
	add r7,r4,#1
	ldr r4,.LPIC11
	str r7,[r4]
.mainL80:
	ldr r7,.LPIC9
	ldr r4,[r7]
	add r7,r4,r5
	ldr r5,.LPIC9
	str r7,[r5]
.mainL71:
.mainL23:
.mainL46:
.mainL48:
	ldr r7,.LPIC11
	ldr r5,[r7]
	add r7,r5,#1
	ldr r5,.LPIC11
	str r7,[r5]
	ldr r7,.LPIC11
	ldr r5,[r7]
.mainL47:
	add r7,r8,#1
	mov r4,r7
	mov r7,r5
.mainL12:
	cmp r4,#3
	blt .mainL236
.mainL13:
.mainL9:
.mainL5:
	ldr r5,.LPIC9
	ldr r3,[r5]
	@call void @putint(i32 %r67)
	push {r3}
	mov r0,r3
	bl putint
	pop {r3}
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL236:
	mov r8,r4
	mov r6,r7
	bl .mainL11
.mainL21:
.mainL37:
.mainL39:
	ldr r5,.LPIC11
	ldr r3,[r5]
	add r5,r3,#1
	ldr r3,.LPIC11
	str r5,[r3]
	ldr r5,.LPIC11
	ldr r3,[r5]
.mainL38:
	@call void @f1(i32 %r96)
	push {r3}
	mov r0,r3
	bl f1
	pop {r3}
.mainL64:
.mainL66:
	ldr r5,.LPIC9
	ldr r3,[r5]
	ldr r5,.LPIC13
	ldr r2,[r5]
	add r5,r3,r2
	ldr r3,.LPIC9
	str r5,[r3]
.mainL67:
.mainL69:
	ldr r5,.LPIC11
	ldr r3,[r5]
	add r5,r3,#1
	ldr r3,.LPIC11
	str r5,[r3]
.mainL68:
	ldr r5,.LPIC9
	ldr r3,[r5]
	ldr r5,.LPIC13
	ldr r2,[r5]
	add r5,r3,r2
	ldr r3,.LPIC9
	str r5,[r3]
.mainL65:
.mainL88:
.mainL90:
.mainL91:
.mainL93:
	ldr r5,.LPIC11
	ldr r3,[r5]
	add r5,r3,#1
	ldr r3,.LPIC11
	str r5,[r3]
	ldr r5,.LPIC11
	ldr r3,[r5]
.mainL92:
	ldr r5,.LPIC9
	ldr r2,[r5]
	add r5,r2,r3
	ldr r3,.LPIC9
	str r5,[r3]
.mainL94:
.mainL96:
	ldr r5,.LPIC11
	ldr r3,[r5]
	add r5,r3,#1
	ldr r3,.LPIC11
	str r5,[r3]
	ldr r5,.LPIC11
	ldr r3,[r5]
.mainL95:
	ldr r5,.LPIC9
	ldr r2,[r5]
	add r5,r2,r3
	ldr r2,.LPIC9
	str r5,[r2]
.mainL97:
.mainL99:
	ldr r5,.LPIC11
	ldr r2,[r5]
	add r5,r2,#1
	ldr r2,.LPIC11
	str r5,[r2]
.mainL98:
	ldr r5,.LPIC9
	ldr r2,[r5]
	add r5,r2,r3
	ldr r3,.LPIC9
	str r5,[r3]
.mainL89:
	add r5,r8,#1
	mov r4,r5
	mov r7,r6
	bl .mainL12
	.section	.note.GNU-stack,"",%progbits
