.arch armv7-a
.fpu vfpv3-d16
.arm
.data
.text
.global main
main:@r4 r5 r6 r7 r8 
	push {fp,lr}
	push {r4,r5,r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
	@%r6 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r8,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r8,#0
	bgt .mainL501
.mainL5:
	mov r0,#0
	add sp,sp,#8
	pop {r4,r5,r6,r7,r8}
	pop {fp,pc}
.mainL501:
	mov r7,#0
.mainL3:
	@%r15 = call i32 @getint()
	sub sp,sp,#4 @stack align 8bytes
	bl getint
	mov r6,r0
	add sp,sp,#4 @stack align 8bytes
	cmp r6,#0
	bgt .mainL9
.mainL7:
	mov r5,#100
.mainL8:
	@call void @putint(i32 %r1618)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r5
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	add r4,r7,#1
.mainL4:
	cmp r4,r8
	bge .mainL5
.mainL502:
	mov r7,r4
	bl .mainL3
.mainL9:
	cmp r6,#100
	bge .mainL7
.mainL6:
	cmp r6,#0
	bgt .mainL14
.mainL12:
	mov r4,#99
.mainL13:
	mov r5,r4
	bl .mainL8
.mainL14:
	cmp r6,#99
	bge .mainL12
.mainL11:
	cmp r6,#0
	bgt .mainL19
.mainL17:
	mov r5,#98
.mainL18:
	mov r4,r5
	bl .mainL13
.mainL19:
	cmp r6,#98
	bge .mainL17
.mainL16:
	cmp r6,#0
	bgt .mainL24
.mainL22:
	mov r4,#97
.mainL23:
	mov r5,r4
	bl .mainL18
.mainL24:
	cmp r6,#97
	bge .mainL22
.mainL21:
	cmp r6,#0
	bgt .mainL29
.mainL27:
	mov r5,#96
.mainL28:
	mov r4,r5
	bl .mainL23
.mainL29:
	cmp r6,#96
	bge .mainL27
.mainL26:
	cmp r6,#0
	bgt .mainL34
.mainL32:
	mov r4,#95
.mainL33:
	mov r5,r4
	bl .mainL28
.mainL34:
	cmp r6,#95
	bge .mainL32
.mainL31:
	cmp r6,#0
	bgt .mainL39
.mainL37:
	mov r5,#94
.mainL38:
	mov r4,r5
	bl .mainL33
.mainL39:
	cmp r6,#94
	bge .mainL37
.mainL36:
	cmp r6,#0
	bgt .mainL44
.mainL42:
	mov r4,#93
.mainL43:
	mov r5,r4
	bl .mainL38
.mainL44:
	cmp r6,#93
	bge .mainL42
.mainL41:
	cmp r6,#0
	bgt .mainL49
.mainL47:
	mov r5,#92
.mainL48:
	mov r4,r5
	bl .mainL43
.mainL49:
	cmp r6,#92
	bge .mainL47
.mainL46:
	cmp r6,#0
	bgt .mainL54
.mainL52:
	mov r4,#91
.mainL53:
	mov r5,r4
	bl .mainL48
.mainL54:
	cmp r6,#91
	bge .mainL52
.mainL51:
	cmp r6,#0
	bgt .mainL59
.mainL57:
	mov r5,#90
.mainL58:
	mov r4,r5
	bl .mainL53
.mainL59:
	cmp r6,#90
	bge .mainL57
.mainL56:
	cmp r6,#0
	bgt .mainL64
.mainL62:
	mov r4,#89
.mainL63:
	mov r5,r4
	bl .mainL58
.mainL64:
	cmp r6,#89
	bge .mainL62
.mainL61:
	cmp r6,#0
	bgt .mainL69
.mainL67:
	mov r5,#88
.mainL68:
	mov r4,r5
	bl .mainL63
.mainL69:
	cmp r6,#88
	bge .mainL67
.mainL66:
	cmp r6,#0
	bgt .mainL74
.mainL72:
	mov r4,#87
.mainL73:
	mov r5,r4
	bl .mainL68
.mainL74:
	cmp r6,#87
	bge .mainL72
.mainL71:
	cmp r6,#0
	bgt .mainL79
.mainL77:
	mov r5,#86
.mainL78:
	mov r4,r5
	bl .mainL73
.mainL79:
	cmp r6,#86
	bge .mainL77
.mainL76:
	cmp r6,#0
	bgt .mainL84
.mainL82:
	mov r4,#85
.mainL83:
	mov r5,r4
	bl .mainL78
.mainL84:
	cmp r6,#85
	bge .mainL82
.mainL81:
	cmp r6,#0
	bgt .mainL89
.mainL87:
	mov r5,#84
.mainL88:
	mov r4,r5
	bl .mainL83
.mainL89:
	cmp r6,#84
	bge .mainL87
.mainL86:
	cmp r6,#0
	bgt .mainL94
.mainL92:
	mov r4,#83
.mainL93:
	mov r5,r4
	bl .mainL88
.mainL94:
	cmp r6,#83
	bge .mainL92
.mainL91:
	cmp r6,#0
	bgt .mainL99
.mainL97:
	mov r5,#82
.mainL98:
	mov r4,r5
	bl .mainL93
.mainL99:
	cmp r6,#82
	bge .mainL97
.mainL96:
	cmp r6,#0
	bgt .mainL104
.mainL102:
	mov r4,#81
.mainL103:
	mov r5,r4
	bl .mainL98
.mainL104:
	cmp r6,#81
	bge .mainL102
.mainL101:
	cmp r6,#0
	bgt .mainL109
.mainL107:
	mov r5,#80
.mainL108:
	mov r4,r5
	bl .mainL103
.mainL109:
	cmp r6,#80
	bge .mainL107
.mainL106:
	cmp r6,#0
	bgt .mainL114
.mainL112:
	mov r4,#79
.mainL113:
	mov r5,r4
	bl .mainL108
.mainL114:
	cmp r6,#79
	bge .mainL112
.mainL111:
	cmp r6,#0
	bgt .mainL119
.mainL117:
	mov r5,#78
.mainL118:
	mov r4,r5
	bl .mainL113
.mainL119:
	cmp r6,#78
	bge .mainL117
.mainL116:
	cmp r6,#0
	bgt .mainL124
.mainL122:
	mov r4,#77
.mainL123:
	mov r5,r4
	bl .mainL118
.mainL124:
	cmp r6,#77
	bge .mainL122
.mainL121:
	cmp r6,#0
	bgt .mainL129
.mainL127:
	mov r5,#76
.mainL128:
	mov r4,r5
	bl .mainL123
.mainL129:
	cmp r6,#76
	bge .mainL127
.mainL126:
	cmp r6,#0
	bgt .mainL134
.mainL132:
	mov r4,#75
.mainL133:
	mov r5,r4
	bl .mainL128
.mainL134:
	cmp r6,#75
	bge .mainL132
.mainL131:
	cmp r6,#0
	bgt .mainL139
.mainL137:
	mov r5,#74
.mainL138:
	mov r4,r5
	bl .mainL133
.mainL139:
	cmp r6,#74
	bge .mainL137
.mainL136:
	cmp r6,#0
	bgt .mainL144
.mainL142:
	mov r4,#73
.mainL143:
	mov r5,r4
	bl .mainL138
.mainL144:
	cmp r6,#73
	bge .mainL142
.mainL141:
	cmp r6,#0
	bgt .mainL149
.mainL147:
	mov r5,#72
.mainL148:
	mov r4,r5
	bl .mainL143
.mainL149:
	cmp r6,#72
	bge .mainL147
.mainL146:
	cmp r6,#0
	bgt .mainL154
.mainL152:
	mov r4,#71
.mainL153:
	mov r5,r4
	bl .mainL148
.mainL154:
	cmp r6,#71
	bge .mainL152
.mainL151:
	cmp r6,#0
	bgt .mainL159
.mainL157:
	mov r5,#70
.mainL158:
	mov r4,r5
	bl .mainL153
.mainL159:
	cmp r6,#70
	bge .mainL157
.mainL156:
	cmp r6,#0
	bgt .mainL164
.mainL162:
	mov r4,#69
.mainL163:
	mov r5,r4
	bl .mainL158
.mainL164:
	cmp r6,#69
	bge .mainL162
.mainL161:
	cmp r6,#0
	bgt .mainL169
.mainL167:
	mov r5,#68
.mainL168:
	mov r4,r5
	bl .mainL163
.mainL169:
	cmp r6,#68
	bge .mainL167
.mainL166:
	cmp r6,#0
	bgt .mainL174
.mainL172:
	mov r4,#67
.mainL173:
	mov r5,r4
	bl .mainL168
.mainL174:
	cmp r6,#67
	bge .mainL172
.mainL171:
	cmp r6,#0
	bgt .mainL179
.mainL177:
	mov r5,#66
.mainL178:
	mov r4,r5
	bl .mainL173
.mainL179:
	cmp r6,#66
	bge .mainL177
.mainL176:
	cmp r6,#0
	bgt .mainL184
.mainL182:
	mov r4,#65
.mainL183:
	mov r5,r4
	bl .mainL178
.mainL184:
	cmp r6,#65
	bge .mainL182
.mainL181:
	cmp r6,#0
	bgt .mainL189
.mainL187:
	mov r5,#64
.mainL188:
	mov r4,r5
	bl .mainL183
.mainL189:
	cmp r6,#64
	bge .mainL187
.mainL186:
	cmp r6,#0
	bgt .mainL194
.mainL192:
	mov r4,#63
.mainL193:
	mov r5,r4
	bl .mainL188
.mainL194:
	cmp r6,#63
	bge .mainL192
.mainL191:
	cmp r6,#0
	bgt .mainL199
.mainL197:
	mov r5,#62
.mainL198:
	mov r4,r5
	bl .mainL193
.mainL199:
	cmp r6,#62
	bge .mainL197
.mainL196:
	cmp r6,#0
	bgt .mainL204
.mainL202:
	mov r4,#61
.mainL203:
	mov r5,r4
	bl .mainL198
.mainL204:
	cmp r6,#61
	bge .mainL202
.mainL201:
	cmp r6,#0
	bgt .mainL209
.mainL207:
	mov r5,#60
.mainL208:
	mov r4,r5
	bl .mainL203
.mainL209:
	cmp r6,#60
	bge .mainL207
.mainL206:
	cmp r6,#0
	bgt .mainL214
.mainL212:
	mov r4,#59
.mainL213:
	mov r5,r4
	bl .mainL208
.mainL214:
	cmp r6,#59
	bge .mainL212
.mainL211:
	cmp r6,#0
	bgt .mainL219
.mainL217:
	mov r5,#58
.mainL218:
	mov r4,r5
	bl .mainL213
.mainL219:
	cmp r6,#58
	bge .mainL217
.mainL216:
	cmp r6,#0
	bgt .mainL224
.mainL222:
	mov r4,#57
.mainL223:
	mov r5,r4
	bl .mainL218
.mainL224:
	cmp r6,#57
	bge .mainL222
.mainL221:
	cmp r6,#0
	bgt .mainL229
.mainL227:
	mov r5,#56
.mainL228:
	mov r4,r5
	bl .mainL223
.mainL229:
	cmp r6,#56
	bge .mainL227
.mainL226:
	cmp r6,#0
	bgt .mainL234
.mainL232:
	mov r4,#55
.mainL233:
	mov r5,r4
	bl .mainL228
.mainL234:
	cmp r6,#55
	bge .mainL232
.mainL231:
	cmp r6,#0
	bgt .mainL239
.mainL237:
	mov r5,#54
.mainL238:
	mov r4,r5
	bl .mainL233
.mainL239:
	cmp r6,#54
	bge .mainL237
.mainL236:
	cmp r6,#0
	bgt .mainL244
.mainL242:
	mov r4,#53
.mainL243:
	mov r5,r4
	bl .mainL238
.mainL244:
	cmp r6,#53
	bge .mainL242
.mainL241:
	cmp r6,#0
	bgt .mainL249
.mainL247:
	mov r5,#52
.mainL248:
	mov r4,r5
	bl .mainL243
.mainL249:
	cmp r6,#52
	bge .mainL247
.mainL246:
	cmp r6,#0
	bgt .mainL254
.mainL252:
	mov r4,#51
.mainL253:
	mov r5,r4
	bl .mainL248
.mainL254:
	cmp r6,#51
	bge .mainL252
.mainL251:
	cmp r6,#0
	bgt .mainL259
.mainL257:
	mov r5,#50
.mainL258:
	mov r4,r5
	bl .mainL253
.mainL259:
	cmp r6,#50
	bge .mainL257
.mainL256:
	cmp r6,#0
	bgt .mainL264
.mainL262:
	mov r4,#49
.mainL263:
	mov r5,r4
	bl .mainL258
.mainL264:
	cmp r6,#49
	bge .mainL262
.mainL261:
	cmp r6,#0
	bgt .mainL269
.mainL267:
	mov r5,#48
.mainL268:
	mov r4,r5
	bl .mainL263
.mainL269:
	cmp r6,#48
	bge .mainL267
.mainL266:
	cmp r6,#0
	bgt .mainL274
.mainL272:
	mov r4,#47
.mainL273:
	mov r5,r4
	bl .mainL268
.mainL274:
	cmp r6,#47
	bge .mainL272
.mainL271:
	cmp r6,#0
	bgt .mainL279
.mainL277:
	mov r5,#46
.mainL278:
	mov r4,r5
	bl .mainL273
.mainL279:
	cmp r6,#46
	bge .mainL277
.mainL276:
	cmp r6,#0
	bgt .mainL284
.mainL282:
	mov r4,#45
.mainL283:
	mov r5,r4
	bl .mainL278
.mainL284:
	cmp r6,#45
	bge .mainL282
.mainL281:
	cmp r6,#0
	bgt .mainL289
.mainL287:
	mov r5,#44
.mainL288:
	mov r4,r5
	bl .mainL283
.mainL289:
	cmp r6,#44
	bge .mainL287
.mainL286:
	cmp r6,#0
	bgt .mainL294
.mainL292:
	mov r4,#43
.mainL293:
	mov r5,r4
	bl .mainL288
.mainL294:
	cmp r6,#43
	bge .mainL292
.mainL291:
	cmp r6,#0
	bgt .mainL299
.mainL297:
	mov r5,#42
.mainL298:
	mov r4,r5
	bl .mainL293
.mainL299:
	cmp r6,#42
	bge .mainL297
.mainL296:
	cmp r6,#0
	bgt .mainL304
.mainL302:
	mov r4,#41
.mainL303:
	mov r5,r4
	bl .mainL298
.mainL304:
	cmp r6,#41
	bge .mainL302
.mainL301:
	cmp r6,#0
	bgt .mainL309
.mainL307:
	mov r5,#40
.mainL308:
	mov r4,r5
	bl .mainL303
.mainL309:
	cmp r6,#40
	bge .mainL307
.mainL306:
	cmp r6,#0
	bgt .mainL314
.mainL312:
	mov r4,#39
.mainL313:
	mov r5,r4
	bl .mainL308
.mainL314:
	cmp r6,#39
	bge .mainL312
.mainL311:
	cmp r6,#0
	bgt .mainL319
.mainL317:
	mov r5,#38
.mainL318:
	mov r4,r5
	bl .mainL313
.mainL319:
	cmp r6,#38
	bge .mainL317
.mainL316:
	cmp r6,#0
	bgt .mainL324
.mainL322:
	mov r4,#37
.mainL323:
	mov r5,r4
	bl .mainL318
.mainL324:
	cmp r6,#37
	bge .mainL322
.mainL321:
	cmp r6,#0
	bgt .mainL329
.mainL327:
	mov r5,#36
.mainL328:
	mov r4,r5
	bl .mainL323
.mainL329:
	cmp r6,#36
	bge .mainL327
.mainL326:
	cmp r6,#0
	bgt .mainL334
.mainL332:
	mov r4,#35
.mainL333:
	mov r5,r4
	bl .mainL328
.mainL334:
	cmp r6,#35
	bge .mainL332
.mainL331:
	cmp r6,#0
	bgt .mainL339
.mainL337:
	mov r5,#34
.mainL338:
	mov r4,r5
	bl .mainL333
.mainL339:
	cmp r6,#34
	bge .mainL337
.mainL336:
	cmp r6,#0
	bgt .mainL344
.mainL342:
	mov r4,#33
.mainL343:
	mov r5,r4
	bl .mainL338
.mainL344:
	cmp r6,#33
	bge .mainL342
.mainL341:
	cmp r6,#0
	bgt .mainL349
.mainL347:
	mov r5,#32
.mainL348:
	mov r4,r5
	bl .mainL343
.mainL349:
	cmp r6,#32
	bge .mainL347
.mainL346:
	cmp r6,#0
	bgt .mainL354
.mainL352:
	mov r4,#31
.mainL353:
	mov r5,r4
	bl .mainL348
.mainL354:
	cmp r6,#31
	bge .mainL352
.mainL351:
	cmp r6,#0
	bgt .mainL359
.mainL357:
	mov r5,#30
.mainL358:
	mov r4,r5
	bl .mainL353
.mainL359:
	cmp r6,#30
	bge .mainL357
.mainL356:
	cmp r6,#0
	bgt .mainL364
.mainL362:
	mov r4,#29
.mainL363:
	mov r5,r4
	bl .mainL358
.mainL364:
	cmp r6,#29
	bge .mainL362
.mainL361:
	cmp r6,#0
	bgt .mainL369
.mainL367:
	mov r5,#28
.mainL368:
	mov r4,r5
	bl .mainL363
.mainL369:
	cmp r6,#28
	bge .mainL367
.mainL366:
	cmp r6,#0
	bgt .mainL374
.mainL372:
	mov r4,#27
.mainL373:
	mov r5,r4
	bl .mainL368
.mainL374:
	cmp r6,#27
	bge .mainL372
.mainL371:
	cmp r6,#0
	bgt .mainL379
.mainL377:
	mov r5,#26
.mainL378:
	mov r4,r5
	bl .mainL373
.mainL379:
	cmp r6,#26
	bge .mainL377
.mainL376:
	cmp r6,#0
	bgt .mainL384
.mainL382:
	mov r4,#25
.mainL383:
	mov r5,r4
	bl .mainL378
.mainL384:
	cmp r6,#25
	bge .mainL382
.mainL381:
	cmp r6,#0
	bgt .mainL389
.mainL387:
	mov r5,#24
.mainL388:
	mov r4,r5
	bl .mainL383
.mainL389:
	cmp r6,#24
	bge .mainL387
.mainL386:
	cmp r6,#0
	bgt .mainL394
.mainL392:
	mov r4,#23
.mainL393:
	mov r5,r4
	bl .mainL388
.mainL394:
	cmp r6,#23
	bge .mainL392
.mainL391:
	cmp r6,#0
	bgt .mainL399
.mainL397:
	mov r5,#22
.mainL398:
	mov r4,r5
	bl .mainL393
.mainL399:
	cmp r6,#22
	bge .mainL397
.mainL396:
	cmp r6,#0
	bgt .mainL404
.mainL402:
	mov r4,#21
.mainL403:
	mov r5,r4
	bl .mainL398
.mainL404:
	cmp r6,#21
	bge .mainL402
.mainL401:
	cmp r6,#0
	bgt .mainL409
.mainL407:
	mov r5,#20
.mainL408:
	mov r4,r5
	bl .mainL403
.mainL409:
	cmp r6,#20
	bge .mainL407
.mainL406:
	cmp r6,#0
	bgt .mainL414
.mainL412:
	mov r4,#19
.mainL413:
	mov r5,r4
	bl .mainL408
.mainL414:
	cmp r6,#19
	bge .mainL412
.mainL411:
	cmp r6,#0
	bgt .mainL419
.mainL417:
	mov r5,#18
.mainL418:
	mov r4,r5
	bl .mainL413
.mainL419:
	cmp r6,#18
	bge .mainL417
.mainL416:
	cmp r6,#0
	bgt .mainL424
.mainL422:
	mov r4,#17
.mainL423:
	mov r5,r4
	bl .mainL418
.mainL424:
	cmp r6,#17
	bge .mainL422
.mainL421:
	cmp r6,#0
	bgt .mainL429
.mainL427:
	mov r5,#16
.mainL428:
	mov r4,r5
	bl .mainL423
.mainL429:
	cmp r6,#16
	bge .mainL427
.mainL426:
	cmp r6,#0
	bgt .mainL434
.mainL432:
	mov r4,#15
.mainL433:
	mov r5,r4
	bl .mainL428
.mainL434:
	cmp r6,#15
	bge .mainL432
.mainL431:
	cmp r6,#0
	bgt .mainL439
.mainL437:
	mov r5,#14
.mainL438:
	mov r4,r5
	bl .mainL433
.mainL439:
	cmp r6,#14
	bge .mainL437
.mainL436:
	cmp r6,#0
	bgt .mainL444
.mainL442:
	mov r4,#13
.mainL443:
	mov r5,r4
	bl .mainL438
.mainL444:
	cmp r6,#13
	bge .mainL442
.mainL441:
	cmp r6,#0
	bgt .mainL449
.mainL447:
	mov r5,#12
.mainL448:
	mov r4,r5
	bl .mainL443
.mainL449:
	cmp r6,#12
	bge .mainL447
.mainL446:
	cmp r6,#0
	bgt .mainL454
.mainL452:
	mov r4,#11
.mainL453:
	mov r5,r4
	bl .mainL448
.mainL454:
	cmp r6,#11
	bge .mainL452
.mainL451:
	cmp r6,#0
	bgt .mainL459
.mainL457:
	mov r5,#10
.mainL458:
	mov r4,r5
	bl .mainL453
.mainL459:
	cmp r6,#10
	bge .mainL457
.mainL456:
	cmp r6,#0
	bgt .mainL464
.mainL462:
	mov r4,#9
.mainL463:
	mov r5,r4
	bl .mainL458
.mainL464:
	cmp r6,#9
	bge .mainL462
.mainL461:
	cmp r6,#0
	bgt .mainL469
.mainL467:
	mov r5,#8
.mainL468:
	mov r4,r5
	bl .mainL463
.mainL469:
	cmp r6,#8
	bge .mainL467
.mainL466:
	cmp r6,#0
	bgt .mainL474
.mainL472:
	mov r4,#7
.mainL473:
	mov r5,r4
	bl .mainL468
.mainL474:
	cmp r6,#7
	bge .mainL472
.mainL471:
	cmp r6,#0
	bgt .mainL479
.mainL477:
	mov r5,#6
.mainL478:
	mov r4,r5
	bl .mainL473
.mainL479:
	cmp r6,#6
	bge .mainL477
.mainL476:
	cmp r6,#0
	bgt .mainL484
.mainL482:
	mov r4,#5
.mainL483:
	mov r5,r4
	bl .mainL478
.mainL484:
	cmp r6,#5
	bge .mainL482
.mainL481:
	cmp r6,#0
	bgt .mainL489
.mainL487:
	mov r5,#4
.mainL488:
	mov r4,r5
	bl .mainL483
.mainL489:
	cmp r6,#4
	bge .mainL487
.mainL486:
	cmp r6,#0
	bgt .mainL494
.mainL492:
	mov r4,#3
.mainL493:
	mov r5,r4
	bl .mainL488
.mainL494:
	cmp r6,#3
	bge .mainL492
.mainL491:
	cmp r6,#0
	bgt .mainL499
.mainL497:
	mov r5,#2
.mainL498:
	mov r4,r5
	bl .mainL493
.mainL499:
	cmp r6,#2
	bge .mainL497
.mainL496:
	mov r5,#1
	bl .mainL498
	.section	.note.GNU-stack,"",%progbits
