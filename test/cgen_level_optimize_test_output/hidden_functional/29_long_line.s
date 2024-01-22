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
	mov r9,#2640
	sub sp,sp,r9
.fibL0:
	mov r9,r0
	str r9,[fp,#-824]
.fibL1:
	ldr r9,[fp,#-824]
	cmp r9,#2
	ble .fibL2
.fibL3:
.fibL5:
.fibL7:
.fibL9:
.fibL11:
.fibL13:
.fibL15:
.fibL17:
.fibL19:
.fibL21:
.fibL23:
.fibL25:
.fibL27:
.fibL29:
.fibL31:
.fibL33:
.fibL35:
.fibL37:
.fibL38:
.fibL39:
.fibL41:
.fibL42:
.fibL44:
.fibL45:
.fibL47:
.fibL48:
.fibL50:
.fibL51:
.fibL53:
.fibL54:
.fibL56:
.fibL57:
.fibL59:
.fibL60:
.fibL62:
.fibL63:
.fibL65:
.fibL66:
.fibL68:
.fibL69:
.fibL71:
.fibL72:
.fibL74:
.fibL75:
.fibL77:
.fibL78:
.fibL80:
.fibL81:
.fibL83:
.fibL85:
.fibL87:
.fibL89:
.fibL91:
.fibL93:
.fibL95:
.fibL97:
.fibL99:
.fibL101:
.fibL103:
.fibL105:
.fibL107:
.fibL109:
.fibL111:
.fibL113:
.fibL115:
.fibL117:
.fibL119:
.fibL121:
.fibL123:
.fibL125:
.fibL127:
.fibL129:
.fibL131:
.fibL133:
.fibL135:
.fibL137:
.fibL139:
.fibL141:
.fibL143:
.fibL145:
.fibL147:
.fibL151:
.fibL148:
.fibL150:
.fibL154:
.fibL155:
.fibL158:
.fibL160:
.fibL164:
.fibL161:
.fibL163:
.fibL166:
.fibL168:
.fibL174:
.fibL172:
.fibL173:
.fibL176:
.fibL178:
.fibL182:
.fibL179:
.fibL181:
.fibL185:
.fibL186:
.fibL192:
.fibL190:
.fibL191:
.fibL197:
.fibL195:
.fibL196:
.fibL199:
.fibL201:
.fibL207:
.fibL205:
.fibL206:
.fibL209:
.fibL211:
.fibL215:
.fibL212:
.fibL214:
.fibL217:
.fibL219:
.fibL225:
.fibL223:
.fibL224:
.fibL227:
.fibL229:
.fibL233:
.fibL230:
.fibL232:
.fibL238:
.fibL236:
.fibL237:
.fibL243:
.fibL241:
.fibL242:
.fibL248:
.fibL246:
.fibL247:
.fibL250:
.fibL252:
.fibL258:
.fibL256:
.fibL257:
.fibL260:
.fibL262:
.fibL266:
.fibL263:
.fibL265:
.fibL268:
.fibL270:
.fibL276:
.fibL274:
.fibL275:
.fibL278:
.fibL280:
.fibL284:
.fibL281:
.fibL283:
.fibL289:
.fibL287:
.fibL288:
.fibL294:
.fibL292:
.fibL293:
.fibL299:
.fibL297:
.fibL298:
.fibL301:
.fibL303:
.fibL309:
.fibL307:
.fibL308:
.fibL311:
.fibL313:
.fibL317:
.fibL314:
.fibL316:
.fibL319:
.fibL321:
.fibL327:
.fibL325:
.fibL326:
.fibL329:
.fibL331:
.fibL335:
.fibL332:
.fibL334:
.fibL340:
.fibL338:
.fibL339:
.fibL345:
.fibL343:
.fibL344:
.fibL350:
.fibL348:
.fibL349:
.fibL352:
.fibL354:
.fibL360:
.fibL358:
.fibL359:
.fibL362:
.fibL364:
.fibL368:
.fibL365:
.fibL367:
.fibL370:
.fibL372:
.fibL378:
.fibL376:
.fibL377:
.fibL380:
.fibL382:
.fibL386:
.fibL383:
.fibL385:
.fibL391:
.fibL389:
.fibL390:
.fibL396:
.fibL394:
.fibL395:
.fibL401:
.fibL399:
.fibL400:
.fibL403:
.fibL405:
.fibL411:
.fibL409:
.fibL410:
.fibL413:
.fibL415:
.fibL419:
.fibL416:
.fibL418:
.fibL421:
.fibL423:
.fibL429:
.fibL427:
.fibL428:
.fibL431:
.fibL433:
.fibL437:
.fibL434:
.fibL436:
.fibL442:
.fibL440:
.fibL441:
.fibL447:
.fibL445:
.fibL446:
.fibL452:
.fibL450:
.fibL451:
.fibL454:
.fibL456:
.fibL462:
.fibL460:
.fibL461:
.fibL464:
.fibL466:
.fibL470:
.fibL467:
.fibL469:
.fibL472:
.fibL474:
.fibL480:
.fibL478:
.fibL479:
.fibL482:
.fibL484:
.fibL488:
.fibL485:
.fibL487:
.fibL493:
.fibL491:
.fibL492:
.fibL498:
.fibL496:
.fibL497:
.fibL503:
.fibL501:
.fibL502:
.fibL505:
.fibL507:
.fibL513:
.fibL511:
.fibL512:
.fibL515:
.fibL517:
.fibL521:
.fibL518:
.fibL520:
.fibL523:
.fibL525:
.fibL531:
.fibL529:
.fibL530:
.fibL533:
.fibL535:
.fibL539:
.fibL536:
.fibL538:
.fibL544:
.fibL542:
.fibL543:
.fibL549:
.fibL547:
.fibL548:
.fibL554:
.fibL552:
.fibL553:
.fibL556:
.fibL558:
.fibL564:
.fibL562:
.fibL563:
.fibL566:
.fibL568:
.fibL572:
.fibL569:
.fibL571:
.fibL574:
.fibL576:
.fibL582:
.fibL580:
.fibL581:
.fibL584:
.fibL586:
.fibL590:
.fibL587:
.fibL589:
.fibL595:
.fibL593:
.fibL594:
.fibL600:
.fibL598:
.fibL599:
.fibL605:
.fibL603:
.fibL604:
.fibL607:
.fibL609:
.fibL615:
.fibL613:
.fibL614:
.fibL617:
.fibL619:
.fibL623:
.fibL620:
.fibL622:
.fibL625:
.fibL627:
.fibL633:
.fibL631:
.fibL632:
.fibL635:
.fibL637:
.fibL641:
.fibL638:
.fibL640:
.fibL646:
.fibL644:
.fibL645:
.fibL651:
.fibL649:
.fibL650:
.fibL656:
.fibL654:
.fibL655:
.fibL658:
.fibL660:
.fibL666:
.fibL664:
.fibL665:
.fibL668:
.fibL670:
.fibL674:
.fibL671:
.fibL673:
.fibL676:
.fibL678:
.fibL684:
.fibL682:
.fibL683:
.fibL686:
.fibL688:
.fibL692:
.fibL689:
.fibL691:
.fibL697:
.fibL695:
.fibL696:
.fibL702:
.fibL700:
.fibL701:
.fibL707:
.fibL705:
.fibL706:
.fibL709:
.fibL711:
.fibL717:
.fibL715:
.fibL716:
.fibL719:
.fibL721:
.fibL725:
.fibL722:
.fibL724:
.fibL727:
.fibL729:
.fibL735:
.fibL733:
.fibL734:
.fibL737:
.fibL739:
.fibL743:
.fibL740:
.fibL742:
.fibL748:
.fibL746:
.fibL747:
.fibL753:
.fibL751:
.fibL752:
.fibL758:
.fibL756:
.fibL757:
.fibL760:
.fibL762:
.fibL768:
.fibL766:
.fibL767:
.fibL770:
.fibL772:
.fibL776:
.fibL773:
.fibL775:
.fibL778:
.fibL780:
.fibL786:
.fibL784:
.fibL785:
.fibL788:
.fibL790:
.fibL794:
.fibL791:
.fibL793:
.fibL799:
.fibL797:
.fibL798:
.fibL804:
.fibL802:
.fibL803:
.fibL809:
.fibL807:
.fibL808:
.fibL811:
.fibL813:
.fibL819:
.fibL817:
.fibL818:
.fibL821:
.fibL823:
.fibL827:
.fibL824:
.fibL826:
.fibL829:
.fibL831:
.fibL837:
.fibL835:
.fibL836:
.fibL839:
.fibL841:
.fibL845:
.fibL842:
.fibL844:
.fibL850:
.fibL848:
.fibL849:
.fibL855:
.fibL853:
.fibL854:
.fibL860:
.fibL858:
.fibL859:
.fibL862:
.fibL864:
.fibL870:
.fibL868:
.fibL869:
.fibL872:
.fibL874:
.fibL878:
.fibL875:
.fibL877:
.fibL880:
.fibL882:
.fibL888:
.fibL886:
.fibL887:
.fibL890:
.fibL892:
.fibL896:
.fibL893:
.fibL895:
.fibL901:
.fibL899:
.fibL900:
.fibL906:
.fibL904:
.fibL905:
.fibL911:
.fibL909:
.fibL910:
.fibL913:
.fibL915:
.fibL921:
.fibL919:
.fibL920:
.fibL923:
.fibL925:
.fibL929:
.fibL926:
.fibL928:
.fibL931:
.fibL933:
.fibL939:
.fibL937:
.fibL938:
.fibL941:
.fibL943:
.fibL947:
.fibL944:
.fibL946:
.fibL952:
.fibL950:
.fibL951:
.fibL957:
.fibL955:
.fibL956:
.fibL962:
.fibL960:
.fibL961:
	ldr r9,[fp,#-824]
	cmp r9,#0
	ldr r9,[fp,#-824]
	and r10,r9,#1
	str r10,[fp,#-68]
	ldr r9,[fp,#-68]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-68]
	ldr r9,[fp,#-68]
	cmp r9,#0
	blt .fibL964
.fibL4564:
	ldr r9,[fp,#-68]
	mov r10,r9
	str r10,[fp,#-12]
.fibL965:
	ldr r9,[fp,#-824]
	ldr r10,[fp,#-824]
	add r6,r9,r10,lsr #31
	asr r9,r6,#1
	str r9,[fp,#-16]
	ldr r9,[fp,#-16]
	cmp r9,#0
	ldr r9,[fp,#-16]
	and r10,r9,#1
	str r10,[fp,#-80]
	ldr r9,[fp,#-80]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-80]
	ldr r9,[fp,#-80]
	cmp r9,#0
	blt .fibL966
.fibL4565:
	ldr r9,[fp,#-80]
	mov r10,r9
	str r10,[fp,#-20]
.fibL967:
	ldr r9,[fp,#-16]
	ldr r10,[fp,#-16]
	add r3,r9,r10,lsr #31
	asr r9,r3,#1
	str r9,[fp,#-24]
	ldr r9,[fp,#-24]
	cmp r9,#0
	ldr r9,[fp,#-24]
	and r10,r9,#1
	str r10,[fp,#-92]
	ldr r9,[fp,#-92]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-92]
	ldr r9,[fp,#-92]
	cmp r9,#0
	blt .fibL968
.fibL4566:
	ldr r9,[fp,#-92]
	mov r10,r9
	str r10,[fp,#-28]
.fibL969:
	ldr r9,[fp,#-24]
	ldr r10,[fp,#-24]
	add r7,r9,r10,lsr #31
	asr r9,r7,#1
	str r9,[fp,#-32]
	ldr r9,[fp,#-32]
	cmp r9,#0
	ldr r9,[fp,#-32]
	and r10,r9,#1
	str r10,[fp,#-104]
	ldr r9,[fp,#-104]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-104]
	ldr r9,[fp,#-104]
	cmp r9,#0
	blt .fibL970
.fibL4567:
	ldr r9,[fp,#-104]
	mov r10,r9
	str r10,[fp,#-36]
.fibL971:
	ldr r9,[fp,#-32]
	ldr r10,[fp,#-32]
	add r2,r9,r10,lsr #31
	asr r9,r2,#1
	str r9,[fp,#-40]
	ldr r9,[fp,#-40]
	cmp r9,#0
	ldr r9,[fp,#-40]
	and r10,r9,#1
	str r10,[fp,#-116]
	ldr r9,[fp,#-116]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-116]
	ldr r9,[fp,#-116]
	cmp r9,#0
	blt .fibL972
.fibL4568:
	ldr r9,[fp,#-116]
	mov r10,r9
	str r10,[fp,#-44]
.fibL973:
	ldr r9,[fp,#-40]
	ldr r10,[fp,#-40]
	add r4,r9,r10,lsr #31
	asr r9,r4,#1
	str r9,[fp,#-48]
	ldr r9,[fp,#-48]
	cmp r9,#0
	ldr r9,[fp,#-48]
	and r10,r9,#1
	str r10,[fp,#-128]
	ldr r9,[fp,#-128]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-128]
	ldr r9,[fp,#-128]
	cmp r9,#0
	blt .fibL974
.fibL4569:
	ldr r9,[fp,#-128]
	mov r10,r9
	str r10,[fp,#-52]
.fibL975:
	ldr r9,[fp,#-48]
	ldr r10,[fp,#-48]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-56]
	ldr r9,[fp,#-56]
	cmp r9,#0
	ldr r9,[fp,#-56]
	and r10,r9,#1
	str r10,[fp,#-140]
	ldr r9,[fp,#-140]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-140]
	ldr r9,[fp,#-140]
	cmp r9,#0
	blt .fibL976
.fibL4570:
	ldr r9,[fp,#-140]
	mov r10,r9
	str r10,[fp,#-60]
.fibL977:
	ldr r9,[fp,#-56]
	ldr r10,[fp,#-56]
	add r5,r9,r10,lsr #31
	asr r9,r5,#1
	str r9,[fp,#-64]
	ldr r9,[fp,#-64]
	cmp r9,#0
	ldr r9,[fp,#-64]
	and r10,r9,#1
	str r10,[fp,#-152]
	ldr r9,[fp,#-152]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-152]
	ldr r9,[fp,#-152]
	cmp r9,#0
	blt .fibL978
.fibL4571:
	ldr r9,[fp,#-152]
	mov r10,r9
	str r10,[fp,#-72]
.fibL979:
	ldr r9,[fp,#-64]
	ldr r10,[fp,#-64]
	add r8,r9,r10,lsr #31
	asr r9,r8,#1
	str r9,[fp,#-76]
	ldr r9,[fp,#-76]
	cmp r9,#0
	ldr r9,[fp,#-76]
	and r10,r9,#1
	str r10,[fp,#-160]
	ldr r9,[fp,#-160]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-160]
	ldr r9,[fp,#-160]
	cmp r9,#0
	blt .fibL980
.fibL4572:
	ldr r9,[fp,#-160]
	mov r10,r9
	str r10,[fp,#-84]
.fibL981:
	ldr r9,[fp,#-76]
	ldr r10,[fp,#-76]
	add r6,r9,r10,lsr #31
	asr r9,r6,#1
	str r9,[fp,#-88]
	ldr r9,[fp,#-88]
	cmp r9,#0
	ldr r9,[fp,#-88]
	and r10,r9,#1
	str r10,[fp,#-792]
	ldr r9,[fp,#-792]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-792]
	ldr r9,[fp,#-792]
	cmp r9,#0
	blt .fibL982
.fibL4573:
	ldr r9,[fp,#-792]
	mov r10,r9
	str r10,[fp,#-96]
.fibL983:
	ldr r9,[fp,#-88]
	ldr r10,[fp,#-88]
	add r3,r9,r10,lsr #31
	asr r9,r3,#1
	str r9,[fp,#-100]
	ldr r9,[fp,#-100]
	cmp r9,#0
	ldr r9,[fp,#-100]
	and r10,r9,#1
	str r10,[fp,#-800]
	ldr r9,[fp,#-800]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-800]
	ldr r9,[fp,#-800]
	cmp r9,#0
	blt .fibL984
.fibL4574:
	ldr r9,[fp,#-800]
	mov r10,r9
	str r10,[fp,#-108]
.fibL985:
	ldr r9,[fp,#-100]
	ldr r10,[fp,#-100]
	add r7,r9,r10,lsr #31
	asr r9,r7,#1
	str r9,[fp,#-112]
	ldr r9,[fp,#-112]
	cmp r9,#0
	ldr r9,[fp,#-112]
	and r10,r9,#1
	str r10,[fp,#-804]
	ldr r9,[fp,#-804]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-804]
	ldr r9,[fp,#-804]
	cmp r9,#0
	blt .fibL986
.fibL4575:
	ldr r9,[fp,#-804]
	mov r10,r9
	str r10,[fp,#-120]
.fibL987:
	ldr r9,[fp,#-112]
	ldr r10,[fp,#-112]
	add r2,r9,r10,lsr #31
	asr r9,r2,#1
	str r9,[fp,#-124]
	ldr r9,[fp,#-124]
	cmp r9,#0
	ldr r9,[fp,#-124]
	and r10,r9,#1
	str r10,[fp,#-808]
	ldr r9,[fp,#-808]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-808]
	ldr r9,[fp,#-808]
	cmp r9,#0
	blt .fibL988
.fibL4576:
	ldr r9,[fp,#-808]
	mov r10,r9
	str r10,[fp,#-132]
.fibL989:
	ldr r9,[fp,#-124]
	ldr r10,[fp,#-124]
	add r4,r9,r10,lsr #31
	asr r9,r4,#1
	str r9,[fp,#-136]
	ldr r9,[fp,#-136]
	cmp r9,#0
	ldr r9,[fp,#-136]
	and r10,r9,#1
	str r10,[fp,#-812]
	ldr r9,[fp,#-812]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-812]
	ldr r9,[fp,#-812]
	cmp r9,#0
	blt .fibL990
.fibL4577:
	ldr r9,[fp,#-812]
	mov r10,r9
	str r10,[fp,#-144]
.fibL991:
	ldr r9,[fp,#-136]
	ldr r10,[fp,#-136]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-148]
	ldr r9,[fp,#-148]
	cmp r9,#0
	ldr r9,[fp,#-148]
	and r10,r9,#1
	str r10,[fp,#-816]
	ldr r9,[fp,#-816]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-816]
	ldr r9,[fp,#-816]
	cmp r9,#0
	blt .fibL992
.fibL4578:
	ldr r9,[fp,#-816]
	mov r10,r9
	str r10,[fp,#-156]
.fibL993:
	ldr r9,[fp,#-148]
	ldr r10,[fp,#-148]
	add r5,r9,r10,lsr #31
	asr r8,r5,#1
	cmp r8,#0
	and r9,r8,#1
	str r9,[fp,#-820]
	ldr r9,[fp,#-820]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-820]
	ldr r9,[fp,#-820]
	cmp r9,#0
	blt .fibL994
.fibL4579:
	ldr r9,[fp,#-820]
	mov r10,r9
	str r10,[fp,#-164]
.fibL995:
.fibL997:
.fibL999:
.fibL1001:
.fibL1003:
.fibL1005:
.fibL1007:
.fibL1009:
.fibL1011:
.fibL1013:
.fibL1015:
.fibL1017:
.fibL1019:
.fibL1021:
.fibL1023:
.fibL1025:
.fibL1027:
	ldr r9,[fp,#-12]
	cmp r9,#0
	beq .fibL1031
.fibL1028:
.fibL1030:
	ldr r9,[fp,#-12]
	cmp r9,#0
	bne .fibL1036
.fibL1034:
	mov r9,#0
	str r9,[fp,#-168]
.fibL1035:
	ldr r9,[fp,#-168]
	cmp r9,#0
	beq .fibL1038
.fibL1039:
	mov r9,#0
	str r9,[fp,#-172]
.fibL1040:
.fibL1044:
	ldr r9,[fp,#-172]
	cmp r9,#0
	bne .fibL1041
.fibL1042:
	mov r9,#0
	str r9,[fp,#-176]
.fibL1043:
	ldr r9,[fp,#-176]
	cmp r9,#0
	beq .fibL1049
.fibL1046:
	mov r9,#1
	str r9,[fp,#-180]
.fibL1048:
	ldr r9,[fp,#-176]
	cmp r9,#0
	bne .fibL1054
.fibL1052:
.fibL1053:
.fibL1056:
.fibL1058:
	ldr r9,[fp,#-180]
	cmp r9,#0
	bne .fibL1062
.fibL1060:
	mov r9,#0
	str r9,[fp,#-184]
.fibL1061:
	ldr r9,[fp,#-12]
	cmp r9,#0
	bne .fibL1067
.fibL1065:
	mov r9,#0
	str r9,[fp,#-188]
.fibL1066:
	ldr r9,[fp,#-176]
	cmp r9,#0
	bne .fibL1072
.fibL1070:
.fibL1071:
	ldr r9,[fp,#-188]
	cmp r9,#0
	beq .fibL1077
.fibL1074:
	mov r9,#1
	str r9,[fp,#-192]
.fibL1076:
	ldr r9,[fp,#-20]
	cmp r9,#0
	beq .fibL1082
.fibL1079:
.fibL1081:
	ldr r9,[fp,#-20]
	cmp r9,#0
	bne .fibL1087
.fibL1085:
	mov r9,#0
	str r9,[fp,#-196]
.fibL1086:
	ldr r9,[fp,#-196]
	cmp r9,#0
	beq .fibL1089
.fibL1090:
	mov r9,#0
	str r9,[fp,#-200]
.fibL1091:
.fibL1095:
	ldr r9,[fp,#-200]
	cmp r9,#0
	bne .fibL1092
.fibL1093:
	mov r9,#0
	str r9,[fp,#-204]
.fibL1094:
	ldr r9,[fp,#-204]
	cmp r9,#0
	beq .fibL1100
.fibL1097:
	mov r9,#1
	str r9,[fp,#-208]
.fibL1099:
	ldr r9,[fp,#-204]
	cmp r9,#0
	bne .fibL1105
.fibL1103:
	mov r9,#0
	str r9,[fp,#-212]
.fibL1104:
	ldr r9,[fp,#-212]
	cmp r9,#0
	beq .fibL1107
.fibL1108:
	mov r9,#0
	str r9,[fp,#-216]
.fibL1109:
	ldr r9,[fp,#-208]
	cmp r9,#0
	bne .fibL1113
.fibL1111:
	mov r9,#0
	str r9,[fp,#-220]
.fibL1112:
	ldr r9,[fp,#-20]
	cmp r9,#0
	bne .fibL1118
.fibL1116:
	mov r9,#0
	str r9,[fp,#-224]
.fibL1117:
	ldr r9,[fp,#-204]
	cmp r9,#0
	bne .fibL1123
.fibL1121:
	mov r9,#0
	str r9,[fp,#-228]
.fibL1122:
	ldr r9,[fp,#-224]
	cmp r9,#0
	beq .fibL1128
.fibL1125:
	mov r9,#1
	str r9,[fp,#-232]
.fibL1127:
	ldr r9,[fp,#-28]
	cmp r9,#0
	beq .fibL1133
.fibL1130:
.fibL1132:
	ldr r9,[fp,#-28]
	cmp r9,#0
	bne .fibL1138
.fibL1136:
	mov r9,#0
	str r9,[fp,#-236]
.fibL1137:
	ldr r9,[fp,#-236]
	cmp r9,#0
	beq .fibL1140
.fibL1141:
	mov r9,#0
	str r9,[fp,#-240]
.fibL1142:
.fibL1146:
	ldr r9,[fp,#-240]
	cmp r9,#0
	bne .fibL1143
.fibL1144:
	mov r9,#0
	str r9,[fp,#-244]
.fibL1145:
	ldr r9,[fp,#-244]
	cmp r9,#0
	beq .fibL1151
.fibL1148:
	mov r9,#1
	str r9,[fp,#-248]
.fibL1150:
	ldr r9,[fp,#-244]
	cmp r9,#0
	bne .fibL1156
.fibL1154:
	mov r9,#0
	str r9,[fp,#-252]
.fibL1155:
	ldr r9,[fp,#-252]
	cmp r9,#0
	beq .fibL1158
.fibL1159:
	mov r9,#0
	str r9,[fp,#-256]
.fibL1160:
	ldr r9,[fp,#-248]
	cmp r9,#0
	bne .fibL1164
.fibL1162:
	mov r9,#0
	str r9,[fp,#-260]
.fibL1163:
	ldr r9,[fp,#-28]
	cmp r9,#0
	bne .fibL1169
.fibL1167:
	mov r9,#0
	str r9,[fp,#-264]
.fibL1168:
	ldr r9,[fp,#-244]
	cmp r9,#0
	bne .fibL1174
.fibL1172:
	mov r9,#0
	str r9,[fp,#-268]
.fibL1173:
	ldr r9,[fp,#-264]
	cmp r9,#0
	beq .fibL1179
.fibL1176:
	mov r9,#1
	str r9,[fp,#-272]
.fibL1178:
	ldr r9,[fp,#-36]
	cmp r9,#0
	beq .fibL1184
.fibL1181:
.fibL1183:
	ldr r9,[fp,#-36]
	cmp r9,#0
	bne .fibL1189
.fibL1187:
	mov r9,#0
	str r9,[fp,#-276]
.fibL1188:
	ldr r9,[fp,#-276]
	cmp r9,#0
	beq .fibL1191
.fibL1192:
	mov r9,#0
	str r9,[fp,#-280]
.fibL1193:
.fibL1197:
	ldr r9,[fp,#-280]
	cmp r9,#0
	bne .fibL1194
.fibL1195:
	mov r9,#0
	str r9,[fp,#-284]
.fibL1196:
	ldr r9,[fp,#-284]
	cmp r9,#0
	beq .fibL1202
.fibL1199:
	mov r9,#1
	str r9,[fp,#-288]
.fibL1201:
	ldr r9,[fp,#-284]
	cmp r9,#0
	bne .fibL1207
.fibL1205:
	mov r9,#0
	str r9,[fp,#-292]
.fibL1206:
	ldr r9,[fp,#-292]
	cmp r9,#0
	beq .fibL1209
.fibL1210:
	mov r9,#0
	str r9,[fp,#-296]
.fibL1211:
	ldr r9,[fp,#-288]
	cmp r9,#0
	bne .fibL1215
.fibL1213:
	mov r9,#0
	str r9,[fp,#-300]
.fibL1214:
	ldr r9,[fp,#-36]
	cmp r9,#0
	bne .fibL1220
.fibL1218:
	mov r9,#0
	str r9,[fp,#-304]
.fibL1219:
	ldr r9,[fp,#-284]
	cmp r9,#0
	bne .fibL1225
.fibL1223:
	mov r9,#0
	str r9,[fp,#-308]
.fibL1224:
	ldr r9,[fp,#-304]
	cmp r9,#0
	beq .fibL1230
.fibL1227:
	mov r9,#1
	str r9,[fp,#-312]
.fibL1229:
	ldr r9,[fp,#-44]
	cmp r9,#0
	beq .fibL1235
.fibL1232:
.fibL1234:
	ldr r9,[fp,#-44]
	cmp r9,#0
	bne .fibL1240
.fibL1238:
	mov r9,#0
	str r9,[fp,#-316]
.fibL1239:
	ldr r9,[fp,#-316]
	cmp r9,#0
	beq .fibL1242
.fibL1243:
	mov r9,#0
	str r9,[fp,#-320]
.fibL1244:
.fibL1248:
	ldr r9,[fp,#-320]
	cmp r9,#0
	bne .fibL1245
.fibL1246:
	mov r9,#0
	str r9,[fp,#-324]
.fibL1247:
	ldr r9,[fp,#-324]
	cmp r9,#0
	beq .fibL1253
.fibL1250:
	mov r9,#1
	str r9,[fp,#-328]
.fibL1252:
	ldr r9,[fp,#-324]
	cmp r9,#0
	bne .fibL1258
.fibL1256:
	mov r9,#0
	str r9,[fp,#-332]
.fibL1257:
	ldr r9,[fp,#-332]
	cmp r9,#0
	beq .fibL1260
.fibL1261:
	mov r9,#0
	str r9,[fp,#-336]
.fibL1262:
	ldr r9,[fp,#-328]
	cmp r9,#0
	bne .fibL1266
.fibL1264:
	mov r9,#0
	str r9,[fp,#-340]
.fibL1265:
	ldr r9,[fp,#-44]
	cmp r9,#0
	bne .fibL1271
.fibL1269:
	mov r9,#0
	str r9,[fp,#-344]
.fibL1270:
	ldr r9,[fp,#-324]
	cmp r9,#0
	bne .fibL1276
.fibL1274:
	mov r9,#0
	str r9,[fp,#-348]
.fibL1275:
	ldr r9,[fp,#-344]
	cmp r9,#0
	beq .fibL1281
.fibL1278:
	mov r9,#1
	str r9,[fp,#-352]
.fibL1280:
	ldr r9,[fp,#-52]
	cmp r9,#0
	beq .fibL1286
.fibL1283:
.fibL1285:
	ldr r9,[fp,#-52]
	cmp r9,#0
	bne .fibL1291
.fibL1289:
	mov r9,#0
	str r9,[fp,#-356]
.fibL1290:
	ldr r9,[fp,#-356]
	cmp r9,#0
	beq .fibL1293
.fibL1294:
	mov r9,#0
	str r9,[fp,#-360]
.fibL1295:
.fibL1299:
	ldr r9,[fp,#-360]
	cmp r9,#0
	bne .fibL1296
.fibL1297:
	mov r9,#0
	str r9,[fp,#-364]
.fibL1298:
	ldr r9,[fp,#-364]
	cmp r9,#0
	beq .fibL1304
.fibL1301:
	mov r9,#1
	str r9,[fp,#-368]
.fibL1303:
	ldr r9,[fp,#-364]
	cmp r9,#0
	bne .fibL1309
.fibL1307:
	mov r9,#0
	str r9,[fp,#-372]
.fibL1308:
	ldr r9,[fp,#-372]
	cmp r9,#0
	beq .fibL1311
.fibL1312:
	mov r9,#0
	str r9,[fp,#-376]
.fibL1313:
	ldr r9,[fp,#-368]
	cmp r9,#0
	bne .fibL1317
.fibL1315:
	mov r9,#0
	str r9,[fp,#-380]
.fibL1316:
	ldr r9,[fp,#-52]
	cmp r9,#0
	bne .fibL1322
.fibL1320:
	mov r9,#0
	str r9,[fp,#-384]
.fibL1321:
	ldr r9,[fp,#-364]
	cmp r9,#0
	bne .fibL1327
.fibL1325:
	mov r9,#0
	str r9,[fp,#-388]
.fibL1326:
	ldr r9,[fp,#-384]
	cmp r9,#0
	beq .fibL1332
.fibL1329:
	mov r9,#1
	str r9,[fp,#-392]
.fibL1331:
	ldr r9,[fp,#-60]
	cmp r9,#0
	beq .fibL1337
.fibL1334:
.fibL1336:
	ldr r9,[fp,#-60]
	cmp r9,#0
	bne .fibL1342
.fibL1340:
	mov r9,#0
	str r9,[fp,#-396]
.fibL1341:
	ldr r9,[fp,#-396]
	cmp r9,#0
	beq .fibL1344
.fibL1345:
	mov r9,#0
	str r9,[fp,#-400]
.fibL1346:
.fibL1350:
	ldr r9,[fp,#-400]
	cmp r9,#0
	bne .fibL1347
.fibL1348:
	mov r9,#0
	str r9,[fp,#-404]
.fibL1349:
	ldr r9,[fp,#-404]
	cmp r9,#0
	beq .fibL1355
.fibL1352:
	mov r9,#1
	str r9,[fp,#-408]
.fibL1354:
	ldr r9,[fp,#-404]
	cmp r9,#0
	bne .fibL1360
.fibL1358:
	mov r9,#0
	str r9,[fp,#-412]
.fibL1359:
	ldr r9,[fp,#-412]
	cmp r9,#0
	beq .fibL1362
.fibL1363:
	mov r9,#0
	str r9,[fp,#-416]
.fibL1364:
	ldr r9,[fp,#-408]
	cmp r9,#0
	bne .fibL1368
.fibL1366:
	mov r9,#0
	str r9,[fp,#-420]
.fibL1367:
	ldr r9,[fp,#-60]
	cmp r9,#0
	bne .fibL1373
.fibL1371:
	mov r9,#0
	str r9,[fp,#-424]
.fibL1372:
	ldr r9,[fp,#-404]
	cmp r9,#0
	bne .fibL1378
.fibL1376:
	mov r9,#0
	str r9,[fp,#-428]
.fibL1377:
	ldr r9,[fp,#-424]
	cmp r9,#0
	beq .fibL1383
.fibL1380:
	mov r9,#1
	str r9,[fp,#-432]
.fibL1382:
	ldr r9,[fp,#-72]
	cmp r9,#0
	beq .fibL1388
.fibL1385:
.fibL1387:
	ldr r9,[fp,#-72]
	cmp r9,#0
	bne .fibL1393
.fibL1391:
	mov r9,#0
	str r9,[fp,#-436]
.fibL1392:
	ldr r9,[fp,#-436]
	cmp r9,#0
	beq .fibL1395
.fibL1396:
	mov r9,#0
	str r9,[fp,#-440]
.fibL1397:
.fibL1401:
	ldr r9,[fp,#-440]
	cmp r9,#0
	bne .fibL1398
.fibL1399:
	mov r9,#0
	str r9,[fp,#-444]
.fibL1400:
	ldr r9,[fp,#-444]
	cmp r9,#0
	beq .fibL1406
.fibL1403:
	mov r9,#1
	str r9,[fp,#-448]
.fibL1405:
	ldr r9,[fp,#-444]
	cmp r9,#0
	bne .fibL1411
.fibL1409:
	mov r9,#0
	str r9,[fp,#-452]
.fibL1410:
	ldr r9,[fp,#-452]
	cmp r9,#0
	beq .fibL1413
.fibL1414:
	mov r9,#0
	str r9,[fp,#-456]
.fibL1415:
	ldr r9,[fp,#-448]
	cmp r9,#0
	bne .fibL1419
.fibL1417:
	mov r9,#0
	str r9,[fp,#-460]
.fibL1418:
	ldr r9,[fp,#-72]
	cmp r9,#0
	bne .fibL1424
.fibL1422:
	mov r9,#0
	str r9,[fp,#-464]
.fibL1423:
	ldr r9,[fp,#-444]
	cmp r9,#0
	bne .fibL1429
.fibL1427:
	mov r9,#0
	str r9,[fp,#-468]
.fibL1428:
	ldr r9,[fp,#-464]
	cmp r9,#0
	beq .fibL1434
.fibL1431:
	mov r9,#1
	str r9,[fp,#-472]
.fibL1433:
	ldr r9,[fp,#-84]
	cmp r9,#0
	beq .fibL1439
.fibL1436:
.fibL1438:
	ldr r9,[fp,#-84]
	cmp r9,#0
	bne .fibL1444
.fibL1442:
	mov r9,#0
	str r9,[fp,#-476]
.fibL1443:
	ldr r9,[fp,#-476]
	cmp r9,#0
	beq .fibL1446
.fibL1447:
	mov r9,#0
	str r9,[fp,#-480]
.fibL1448:
.fibL1452:
	ldr r9,[fp,#-480]
	cmp r9,#0
	bne .fibL1449
.fibL1450:
	mov r9,#0
	str r9,[fp,#-484]
.fibL1451:
	ldr r9,[fp,#-484]
	cmp r9,#0
	beq .fibL1457
.fibL1454:
	mov r9,#1
	str r9,[fp,#-488]
.fibL1456:
	ldr r9,[fp,#-484]
	cmp r9,#0
	bne .fibL1462
.fibL1460:
	mov r9,#0
	str r9,[fp,#-492]
.fibL1461:
	ldr r9,[fp,#-492]
	cmp r9,#0
	beq .fibL1464
.fibL1465:
	mov r9,#0
	str r9,[fp,#-496]
.fibL1466:
	ldr r9,[fp,#-488]
	cmp r9,#0
	bne .fibL1470
.fibL1468:
	mov r9,#0
	str r9,[fp,#-500]
.fibL1469:
	ldr r9,[fp,#-84]
	cmp r9,#0
	bne .fibL1475
.fibL1473:
	mov r9,#0
	str r9,[fp,#-504]
.fibL1474:
	ldr r9,[fp,#-484]
	cmp r9,#0
	bne .fibL1480
.fibL1478:
	mov r9,#0
	str r9,[fp,#-508]
.fibL1479:
	ldr r9,[fp,#-504]
	cmp r9,#0
	beq .fibL1485
.fibL1482:
	mov r9,#1
	str r9,[fp,#-512]
.fibL1484:
	ldr r9,[fp,#-96]
	cmp r9,#0
	beq .fibL1490
.fibL1487:
.fibL1489:
	ldr r9,[fp,#-96]
	cmp r9,#0
	bne .fibL1495
.fibL1493:
	mov r9,#0
	str r9,[fp,#-516]
.fibL1494:
	ldr r9,[fp,#-516]
	cmp r9,#0
	beq .fibL1497
.fibL1498:
	mov r9,#0
	str r9,[fp,#-520]
.fibL1499:
.fibL1503:
	ldr r9,[fp,#-520]
	cmp r9,#0
	bne .fibL1500
.fibL1501:
	mov r9,#0
	str r9,[fp,#-524]
.fibL1502:
	ldr r9,[fp,#-524]
	cmp r9,#0
	beq .fibL1508
.fibL1505:
	mov r9,#1
	str r9,[fp,#-528]
.fibL1507:
	ldr r9,[fp,#-524]
	cmp r9,#0
	bne .fibL1513
.fibL1511:
	mov r9,#0
	str r9,[fp,#-532]
.fibL1512:
	ldr r9,[fp,#-532]
	cmp r9,#0
	beq .fibL1515
.fibL1516:
	mov r9,#0
	str r9,[fp,#-536]
.fibL1517:
	ldr r9,[fp,#-528]
	cmp r9,#0
	bne .fibL1521
.fibL1519:
	mov r9,#0
	str r9,[fp,#-540]
.fibL1520:
	ldr r9,[fp,#-96]
	cmp r9,#0
	bne .fibL1526
.fibL1524:
	mov r9,#0
	str r9,[fp,#-544]
.fibL1525:
	ldr r9,[fp,#-524]
	cmp r9,#0
	bne .fibL1531
.fibL1529:
	mov r9,#0
	str r9,[fp,#-548]
.fibL1530:
	ldr r9,[fp,#-544]
	cmp r9,#0
	beq .fibL1536
.fibL1533:
	mov r9,#1
	str r9,[fp,#-552]
.fibL1535:
	ldr r9,[fp,#-108]
	cmp r9,#0
	beq .fibL1541
.fibL1538:
.fibL1540:
	ldr r9,[fp,#-108]
	cmp r9,#0
	bne .fibL1546
.fibL1544:
	mov r9,#0
	str r9,[fp,#-556]
.fibL1545:
	ldr r9,[fp,#-556]
	cmp r9,#0
	beq .fibL1548
.fibL1549:
	mov r9,#0
	str r9,[fp,#-560]
.fibL1550:
.fibL1554:
	ldr r9,[fp,#-560]
	cmp r9,#0
	bne .fibL1551
.fibL1552:
	mov r9,#0
	str r9,[fp,#-564]
.fibL1553:
	ldr r9,[fp,#-564]
	cmp r9,#0
	beq .fibL1559
.fibL1556:
	mov r9,#1
	str r9,[fp,#-568]
.fibL1558:
	ldr r9,[fp,#-564]
	cmp r9,#0
	bne .fibL1564
.fibL1562:
	mov r9,#0
	str r9,[fp,#-572]
.fibL1563:
	ldr r9,[fp,#-572]
	cmp r9,#0
	beq .fibL1566
.fibL1567:
	mov r9,#0
	str r9,[fp,#-576]
.fibL1568:
	ldr r9,[fp,#-568]
	cmp r9,#0
	bne .fibL1572
.fibL1570:
	mov r9,#0
	str r9,[fp,#-580]
.fibL1571:
	ldr r9,[fp,#-108]
	cmp r9,#0
	bne .fibL1577
.fibL1575:
	mov r9,#0
	str r9,[fp,#-584]
.fibL1576:
	ldr r9,[fp,#-564]
	cmp r9,#0
	bne .fibL1582
.fibL1580:
	mov r9,#0
	str r9,[fp,#-588]
.fibL1581:
	ldr r9,[fp,#-584]
	cmp r9,#0
	beq .fibL1587
.fibL1584:
	mov r9,#1
	str r9,[fp,#-592]
.fibL1586:
	ldr r9,[fp,#-120]
	cmp r9,#0
	beq .fibL1592
.fibL1589:
.fibL1591:
	ldr r9,[fp,#-120]
	cmp r9,#0
	bne .fibL1597
.fibL1595:
	mov r9,#0
	str r9,[fp,#-596]
.fibL1596:
	ldr r9,[fp,#-596]
	cmp r9,#0
	beq .fibL1599
.fibL1600:
	mov r9,#0
	str r9,[fp,#-600]
.fibL1601:
.fibL1605:
	ldr r9,[fp,#-600]
	cmp r9,#0
	bne .fibL1602
.fibL1603:
	mov r9,#0
	str r9,[fp,#-604]
.fibL1604:
	ldr r9,[fp,#-604]
	cmp r9,#0
	beq .fibL1610
.fibL1607:
	mov r9,#1
	str r9,[fp,#-608]
.fibL1609:
	ldr r9,[fp,#-604]
	cmp r9,#0
	bne .fibL1615
.fibL1613:
	mov r9,#0
	str r9,[fp,#-612]
.fibL1614:
	ldr r9,[fp,#-612]
	cmp r9,#0
	beq .fibL1617
.fibL1618:
	mov r9,#0
	str r9,[fp,#-616]
.fibL1619:
	ldr r9,[fp,#-608]
	cmp r9,#0
	bne .fibL1623
.fibL1621:
	mov r9,#0
	str r9,[fp,#-620]
.fibL1622:
	ldr r9,[fp,#-120]
	cmp r9,#0
	bne .fibL1628
.fibL1626:
	mov r9,#0
	str r9,[fp,#-624]
.fibL1627:
	ldr r9,[fp,#-604]
	cmp r9,#0
	bne .fibL1633
.fibL1631:
	mov r9,#0
	str r9,[fp,#-628]
.fibL1632:
	ldr r9,[fp,#-624]
	cmp r9,#0
	beq .fibL1638
.fibL1635:
	mov r9,#1
	str r9,[fp,#-632]
.fibL1637:
	ldr r9,[fp,#-132]
	cmp r9,#0
	beq .fibL1643
.fibL1640:
.fibL1642:
	ldr r9,[fp,#-132]
	cmp r9,#0
	bne .fibL1648
.fibL1646:
	mov r9,#0
	str r9,[fp,#-636]
.fibL1647:
	ldr r9,[fp,#-636]
	cmp r9,#0
	beq .fibL1650
.fibL1651:
	mov r9,#0
	str r9,[fp,#-640]
.fibL1652:
.fibL1656:
	ldr r9,[fp,#-640]
	cmp r9,#0
	bne .fibL1653
.fibL1654:
	mov r9,#0
	str r9,[fp,#-644]
.fibL1655:
	ldr r9,[fp,#-644]
	cmp r9,#0
	beq .fibL1661
.fibL1658:
	mov r9,#1
	str r9,[fp,#-648]
.fibL1660:
	ldr r9,[fp,#-644]
	cmp r9,#0
	bne .fibL1666
.fibL1664:
	mov r9,#0
	str r9,[fp,#-652]
.fibL1665:
	ldr r9,[fp,#-652]
	cmp r9,#0
	beq .fibL1668
.fibL1669:
	mov r9,#0
	str r9,[fp,#-656]
.fibL1670:
	ldr r9,[fp,#-648]
	cmp r9,#0
	bne .fibL1674
.fibL1672:
	mov r9,#0
	str r9,[fp,#-660]
.fibL1673:
	ldr r9,[fp,#-132]
	cmp r9,#0
	bne .fibL1679
.fibL1677:
	mov r9,#0
	str r9,[fp,#-664]
.fibL1678:
	ldr r9,[fp,#-644]
	cmp r9,#0
	bne .fibL1684
.fibL1682:
	mov r9,#0
	str r9,[fp,#-668]
.fibL1683:
	ldr r9,[fp,#-664]
	cmp r9,#0
	beq .fibL1689
.fibL1686:
	mov r9,#1
	str r9,[fp,#-672]
.fibL1688:
	ldr r9,[fp,#-144]
	cmp r9,#0
	beq .fibL1694
.fibL1691:
.fibL1693:
	ldr r9,[fp,#-144]
	cmp r9,#0
	bne .fibL1699
.fibL1697:
	mov r9,#0
	str r9,[fp,#-676]
.fibL1698:
	ldr r9,[fp,#-676]
	cmp r9,#0
	beq .fibL1701
.fibL1702:
	mov r9,#0
	str r9,[fp,#-680]
.fibL1703:
.fibL1707:
	ldr r9,[fp,#-680]
	cmp r9,#0
	bne .fibL1704
.fibL1705:
	mov r9,#0
	str r9,[fp,#-684]
.fibL1706:
	ldr r9,[fp,#-684]
	cmp r9,#0
	beq .fibL1712
.fibL1709:
	mov r9,#1
	str r9,[fp,#-688]
.fibL1711:
	ldr r9,[fp,#-684]
	cmp r9,#0
	bne .fibL1717
.fibL1715:
	mov r9,#0
	str r9,[fp,#-692]
.fibL1716:
	ldr r9,[fp,#-692]
	cmp r9,#0
	beq .fibL1719
.fibL1720:
	mov r9,#0
	str r9,[fp,#-696]
.fibL1721:
	ldr r9,[fp,#-688]
	cmp r9,#0
	bne .fibL1725
.fibL1723:
	mov r9,#0
	str r9,[fp,#-700]
.fibL1724:
	ldr r9,[fp,#-144]
	cmp r9,#0
	bne .fibL1730
.fibL1728:
	mov r9,#0
	str r9,[fp,#-704]
.fibL1729:
	ldr r9,[fp,#-684]
	cmp r9,#0
	bne .fibL1735
.fibL1733:
	mov r9,#0
	str r9,[fp,#-708]
.fibL1734:
	ldr r9,[fp,#-704]
	cmp r9,#0
	beq .fibL1740
.fibL1737:
	mov r9,#1
	str r9,[fp,#-712]
.fibL1739:
	ldr r9,[fp,#-156]
	cmp r9,#0
	beq .fibL1745
.fibL1742:
.fibL1744:
	ldr r9,[fp,#-156]
	cmp r9,#0
	bne .fibL1750
.fibL1748:
	mov r9,#0
	str r9,[fp,#-716]
.fibL1749:
	ldr r9,[fp,#-716]
	cmp r9,#0
	beq .fibL1752
.fibL1753:
	mov r9,#0
	str r9,[fp,#-720]
.fibL1754:
.fibL1758:
	ldr r9,[fp,#-720]
	cmp r9,#0
	bne .fibL1755
.fibL1756:
	mov r9,#0
	str r9,[fp,#-724]
.fibL1757:
	ldr r9,[fp,#-724]
	cmp r9,#0
	beq .fibL1763
.fibL1760:
	mov r9,#1
	str r9,[fp,#-728]
.fibL1762:
	ldr r9,[fp,#-724]
	cmp r9,#0
	bne .fibL1768
.fibL1766:
	mov r9,#0
	str r9,[fp,#-732]
.fibL1767:
	ldr r9,[fp,#-732]
	cmp r9,#0
	beq .fibL1770
.fibL1771:
	mov r9,#0
	str r9,[fp,#-736]
.fibL1772:
	ldr r9,[fp,#-728]
	cmp r9,#0
	bne .fibL1776
.fibL1774:
	mov r9,#0
	str r9,[fp,#-740]
.fibL1775:
	ldr r9,[fp,#-156]
	cmp r9,#0
	bne .fibL1781
.fibL1779:
	mov r9,#0
	str r9,[fp,#-744]
.fibL1780:
	ldr r9,[fp,#-724]
	cmp r9,#0
	bne .fibL1786
.fibL1784:
	mov r9,#0
	str r9,[fp,#-748]
.fibL1785:
	ldr r9,[fp,#-744]
	cmp r9,#0
	beq .fibL1791
.fibL1788:
	mov r9,#1
	str r9,[fp,#-752]
.fibL1790:
	ldr r9,[fp,#-164]
	cmp r9,#0
	beq .fibL1796
.fibL1793:
.fibL1795:
	ldr r9,[fp,#-164]
	cmp r9,#0
	bne .fibL1801
.fibL1799:
	mov r9,#0
	str r9,[fp,#-756]
.fibL1800:
	ldr r9,[fp,#-756]
	cmp r9,#0
	beq .fibL1803
.fibL1804:
	mov r9,#0
	str r9,[fp,#-760]
.fibL1805:
.fibL1809:
	ldr r9,[fp,#-760]
	cmp r9,#0
	bne .fibL1806
.fibL1807:
	mov r9,#0
	str r9,[fp,#-764]
.fibL1808:
	ldr r9,[fp,#-764]
	cmp r9,#0
	beq .fibL1814
.fibL1811:
	mov r9,#1
	str r9,[fp,#-768]
.fibL1813:
	ldr r9,[fp,#-764]
	cmp r9,#0
	bne .fibL1819
.fibL1817:
	mov r9,#0
	str r9,[fp,#-772]
.fibL1818:
	ldr r9,[fp,#-772]
	cmp r9,#0
	beq .fibL1821
.fibL1822:
	mov r9,#0
	str r9,[fp,#-776]
.fibL1823:
	ldr r9,[fp,#-768]
	cmp r9,#0
	bne .fibL1827
.fibL1825:
	mov r9,#0
	str r9,[fp,#-780]
.fibL1826:
	ldr r9,[fp,#-164]
	cmp r9,#0
	bne .fibL1832
.fibL1830:
	mov r9,#0
	str r9,[fp,#-784]
.fibL1831:
	ldr r9,[fp,#-764]
	cmp r9,#0
	bne .fibL1837
.fibL1835:
	mov r9,#0
	str r9,[fp,#-788]
.fibL1836:
	ldr r9,[fp,#-784]
	cmp r9,#0
	beq .fibL1842
.fibL1839:
.fibL1841:
	ldr r9,[fp,#-780]
	mov r8,r9
	lsl r6,r8,#1
	ldr r9,[fp,#-740]
	add r8,r6,r9
	lsl r6,r8,#1
	ldr r9,[fp,#-700]
	add r8,r6,r9
	lsl r6,r8,#1
	ldr r9,[fp,#-660]
	add r8,r6,r9
	lsl r6,r8,#1
	ldr r9,[fp,#-620]
	add r8,r6,r9
	lsl r6,r8,#1
	ldr r9,[fp,#-580]
	add r8,r6,r9
	lsl r6,r8,#1
	ldr r9,[fp,#-540]
	add r8,r6,r9
	lsl r6,r8,#1
	ldr r9,[fp,#-500]
	add r8,r6,r9
	lsl r6,r8,#1
	ldr r9,[fp,#-460]
	add r8,r6,r9
	lsl r6,r8,#1
	ldr r9,[fp,#-420]
	add r8,r6,r9
	lsl r6,r8,#1
	ldr r9,[fp,#-380]
	add r8,r6,r9
	lsl r6,r8,#1
	ldr r9,[fp,#-340]
	add r8,r6,r9
	lsl r6,r8,#1
	ldr r9,[fp,#-300]
	add r8,r6,r9
	lsl r6,r8,#1
	ldr r9,[fp,#-260]
	add r8,r6,r9
	lsl r6,r8,#1
	ldr r9,[fp,#-220]
	add r8,r6,r9
	lsl r6,r8,#1
	ldr r9,[fp,#-184]
	add r8,r6,r9
	@%r5277 = call i32 @fib(i32 %r5274)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r8
	bl fib
	str r0,[fp,#-796]
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
.fibL1845:
.fibL1847:
.fibL1849:
.fibL1851:
.fibL1853:
.fibL1855:
.fibL1857:
.fibL1859:
.fibL1861:
.fibL1863:
.fibL1865:
.fibL1867:
.fibL1869:
.fibL1871:
.fibL1873:
.fibL1875:
.fibL1876:
.fibL1878:
.fibL1880:
.fibL1881:
.fibL1882:
.fibL1884:
.fibL1885:
.fibL1887:
.fibL1888:
.fibL1890:
.fibL1891:
.fibL1893:
.fibL1894:
.fibL1896:
.fibL1897:
.fibL1899:
.fibL1900:
.fibL1902:
.fibL1903:
.fibL1905:
.fibL1906:
.fibL1908:
.fibL1909:
.fibL1911:
.fibL1912:
.fibL1914:
.fibL1915:
.fibL1917:
.fibL1918:
.fibL1920:
.fibL1921:
.fibL1923:
.fibL1925:
.fibL1927:
.fibL1929:
.fibL1931:
.fibL1933:
.fibL1935:
.fibL1937:
.fibL1939:
.fibL1941:
.fibL1943:
.fibL1945:
.fibL1947:
.fibL1949:
.fibL1951:
.fibL1953:
.fibL1955:
.fibL1957:
.fibL1959:
.fibL1961:
.fibL1963:
.fibL1965:
.fibL1967:
.fibL1969:
.fibL1971:
.fibL1973:
.fibL1975:
.fibL1977:
.fibL1979:
.fibL1981:
.fibL1983:
.fibL1985:
.fibL1987:
.fibL1988:
.fibL1990:
.fibL1996:
.fibL1993:
.fibL1995:
.fibL1999:
.fibL2000:
.fibL2004:
.fibL2002:
.fibL2003:
.fibL2009:
.fibL2007:
.fibL2008:
.fibL2012:
.fibL2013:
.fibL2016:
.fibL2018:
.fibL2020:
.fibL2021:
.fibL2027:
.fibL2024:
.fibL2026:
.fibL2030:
.fibL2031:
.fibL2034:
.fibL2036:
.fibL2042:
.fibL2040:
.fibL2041:
.fibL2045:
.fibL2046:
.fibL2049:
.fibL2051:
.fibL2053:
.fibL2054:
.fibL2060:
.fibL2057:
.fibL2059:
.fibL2063:
.fibL2064:
.fibL2067:
.fibL2069:
.fibL2073:
.fibL2070:
.fibL2072:
.fibL2076:
.fibL2077:
.fibL2081:
.fibL2082:
.fibL2088:
.fibL2086:
.fibL2087:
.fibL2090:
.fibL2092:
.fibL2098:
.fibL2096:
.fibL2097:
.fibL2100:
.fibL2102:
.fibL2106:
.fibL2103:
.fibL2105:
.fibL2108:
.fibL2110:
.fibL2116:
.fibL2114:
.fibL2115:
.fibL2118:
.fibL2120:
.fibL2124:
.fibL2121:
.fibL2123:
.fibL2129:
.fibL2127:
.fibL2128:
.fibL2134:
.fibL2132:
.fibL2133:
.fibL2139:
.fibL2137:
.fibL2138:
.fibL2141:
.fibL2143:
.fibL2149:
.fibL2147:
.fibL2148:
.fibL2151:
.fibL2153:
.fibL2157:
.fibL2154:
.fibL2156:
.fibL2159:
.fibL2161:
.fibL2167:
.fibL2165:
.fibL2166:
.fibL2169:
.fibL2171:
.fibL2175:
.fibL2172:
.fibL2174:
.fibL2180:
.fibL2178:
.fibL2179:
.fibL2185:
.fibL2183:
.fibL2184:
.fibL2190:
.fibL2188:
.fibL2189:
.fibL2192:
.fibL2194:
.fibL2200:
.fibL2198:
.fibL2199:
.fibL2202:
.fibL2204:
.fibL2208:
.fibL2205:
.fibL2207:
.fibL2210:
.fibL2212:
.fibL2218:
.fibL2216:
.fibL2217:
.fibL2220:
.fibL2222:
.fibL2226:
.fibL2223:
.fibL2225:
.fibL2231:
.fibL2229:
.fibL2230:
.fibL2236:
.fibL2234:
.fibL2235:
.fibL2241:
.fibL2239:
.fibL2240:
.fibL2243:
.fibL2245:
.fibL2251:
.fibL2249:
.fibL2250:
.fibL2253:
.fibL2255:
.fibL2259:
.fibL2256:
.fibL2258:
.fibL2261:
.fibL2263:
.fibL2269:
.fibL2267:
.fibL2268:
.fibL2271:
.fibL2273:
.fibL2277:
.fibL2274:
.fibL2276:
.fibL2282:
.fibL2280:
.fibL2281:
.fibL2287:
.fibL2285:
.fibL2286:
.fibL2292:
.fibL2290:
.fibL2291:
.fibL2294:
.fibL2296:
.fibL2302:
.fibL2300:
.fibL2301:
.fibL2304:
.fibL2306:
.fibL2310:
.fibL2307:
.fibL2309:
.fibL2312:
.fibL2314:
.fibL2320:
.fibL2318:
.fibL2319:
.fibL2322:
.fibL2324:
.fibL2328:
.fibL2325:
.fibL2327:
.fibL2333:
.fibL2331:
.fibL2332:
.fibL2338:
.fibL2336:
.fibL2337:
.fibL2343:
.fibL2341:
.fibL2342:
.fibL2345:
.fibL2347:
.fibL2353:
.fibL2351:
.fibL2352:
.fibL2355:
.fibL2357:
.fibL2361:
.fibL2358:
.fibL2360:
.fibL2363:
.fibL2365:
.fibL2371:
.fibL2369:
.fibL2370:
.fibL2373:
.fibL2375:
.fibL2379:
.fibL2376:
.fibL2378:
.fibL2384:
.fibL2382:
.fibL2383:
.fibL2389:
.fibL2387:
.fibL2388:
.fibL2394:
.fibL2392:
.fibL2393:
.fibL2396:
.fibL2398:
.fibL2404:
.fibL2402:
.fibL2403:
.fibL2406:
.fibL2408:
.fibL2412:
.fibL2409:
.fibL2411:
.fibL2414:
.fibL2416:
.fibL2422:
.fibL2420:
.fibL2421:
.fibL2424:
.fibL2426:
.fibL2430:
.fibL2427:
.fibL2429:
.fibL2435:
.fibL2433:
.fibL2434:
.fibL2440:
.fibL2438:
.fibL2439:
.fibL2445:
.fibL2443:
.fibL2444:
.fibL2447:
.fibL2449:
.fibL2455:
.fibL2453:
.fibL2454:
.fibL2457:
.fibL2459:
.fibL2463:
.fibL2460:
.fibL2462:
.fibL2465:
.fibL2467:
.fibL2473:
.fibL2471:
.fibL2472:
.fibL2475:
.fibL2477:
.fibL2481:
.fibL2478:
.fibL2480:
.fibL2486:
.fibL2484:
.fibL2485:
.fibL2491:
.fibL2489:
.fibL2490:
.fibL2496:
.fibL2494:
.fibL2495:
.fibL2498:
.fibL2500:
.fibL2506:
.fibL2504:
.fibL2505:
.fibL2508:
.fibL2510:
.fibL2514:
.fibL2511:
.fibL2513:
.fibL2516:
.fibL2518:
.fibL2524:
.fibL2522:
.fibL2523:
.fibL2526:
.fibL2528:
.fibL2532:
.fibL2529:
.fibL2531:
.fibL2537:
.fibL2535:
.fibL2536:
.fibL2542:
.fibL2540:
.fibL2541:
.fibL2547:
.fibL2545:
.fibL2546:
.fibL2549:
.fibL2551:
.fibL2557:
.fibL2555:
.fibL2556:
.fibL2559:
.fibL2561:
.fibL2565:
.fibL2562:
.fibL2564:
.fibL2567:
.fibL2569:
.fibL2575:
.fibL2573:
.fibL2574:
.fibL2577:
.fibL2579:
.fibL2583:
.fibL2580:
.fibL2582:
.fibL2588:
.fibL2586:
.fibL2587:
.fibL2593:
.fibL2591:
.fibL2592:
.fibL2598:
.fibL2596:
.fibL2597:
.fibL2600:
.fibL2602:
.fibL2608:
.fibL2606:
.fibL2607:
.fibL2610:
.fibL2612:
.fibL2616:
.fibL2613:
.fibL2615:
.fibL2618:
.fibL2620:
.fibL2626:
.fibL2624:
.fibL2625:
.fibL2628:
.fibL2630:
.fibL2634:
.fibL2631:
.fibL2633:
.fibL2639:
.fibL2637:
.fibL2638:
.fibL2644:
.fibL2642:
.fibL2643:
.fibL2649:
.fibL2647:
.fibL2648:
.fibL2651:
.fibL2653:
.fibL2659:
.fibL2657:
.fibL2658:
.fibL2661:
.fibL2663:
.fibL2667:
.fibL2664:
.fibL2666:
.fibL2669:
.fibL2671:
.fibL2677:
.fibL2675:
.fibL2676:
.fibL2679:
.fibL2681:
.fibL2685:
.fibL2682:
.fibL2684:
.fibL2690:
.fibL2688:
.fibL2689:
.fibL2695:
.fibL2693:
.fibL2694:
.fibL2700:
.fibL2698:
.fibL2699:
.fibL2702:
.fibL2704:
.fibL2710:
.fibL2708:
.fibL2709:
.fibL2712:
.fibL2714:
.fibL2718:
.fibL2715:
.fibL2717:
.fibL2720:
.fibL2722:
.fibL2728:
.fibL2726:
.fibL2727:
.fibL2730:
.fibL2732:
.fibL2736:
.fibL2733:
.fibL2735:
.fibL2741:
.fibL2739:
.fibL2740:
.fibL2746:
.fibL2744:
.fibL2745:
.fibL2751:
.fibL2749:
.fibL2750:
.fibL2753:
.fibL2755:
.fibL2761:
.fibL2759:
.fibL2760:
.fibL2763:
.fibL2765:
.fibL2769:
.fibL2766:
.fibL2768:
.fibL2771:
.fibL2773:
.fibL2779:
.fibL2777:
.fibL2778:
.fibL2781:
.fibL2783:
.fibL2787:
.fibL2784:
.fibL2786:
.fibL2792:
.fibL2790:
.fibL2791:
.fibL2797:
.fibL2795:
.fibL2796:
.fibL2802:
.fibL2800:
.fibL2801:
	ldr r9,[fp,#-824]
	cmp r9,#0
	ldr r9,[fp,#-824]
	and r10,r9,#1
	str r10,[fp,#-892]
	ldr r9,[fp,#-892]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-892]
	ldr r9,[fp,#-892]
	cmp r9,#0
	blt .fibL2804
.fibL4580:
	ldr r9,[fp,#-892]
	mov r10,r9
	str r10,[fp,#-828]
.fibL2805:
	ldr r9,[fp,#-824]
	ldr r10,[fp,#-824]
	add r3,r9,r10,lsr #31
	asr r9,r3,#1
	str r9,[fp,#-832]
	ldr r9,[fp,#-832]
	cmp r9,#0
	ldr r9,[fp,#-832]
	and r10,r9,#1
	str r10,[fp,#-904]
	ldr r9,[fp,#-904]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-904]
	ldr r9,[fp,#-904]
	cmp r9,#0
	blt .fibL2806
.fibL4581:
	ldr r9,[fp,#-904]
	mov r10,r9
	str r10,[fp,#-836]
.fibL2807:
	ldr r9,[fp,#-832]
	ldr r10,[fp,#-832]
	add r4,r9,r10,lsr #31
	asr r9,r4,#1
	str r9,[fp,#-840]
	ldr r9,[fp,#-840]
	cmp r9,#0
	ldr r9,[fp,#-840]
	and r10,r9,#1
	str r10,[fp,#-916]
	ldr r9,[fp,#-916]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-916]
	ldr r9,[fp,#-916]
	cmp r9,#0
	blt .fibL2808
.fibL4582:
	ldr r9,[fp,#-916]
	mov r10,r9
	str r10,[fp,#-844]
.fibL2809:
	ldr r9,[fp,#-840]
	ldr r10,[fp,#-840]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-848]
	ldr r9,[fp,#-848]
	cmp r9,#0
	ldr r9,[fp,#-848]
	and r10,r9,#1
	str r10,[fp,#-928]
	ldr r9,[fp,#-928]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-928]
	ldr r9,[fp,#-928]
	cmp r9,#0
	blt .fibL2810
.fibL4583:
	ldr r9,[fp,#-928]
	mov r10,r9
	str r10,[fp,#-852]
.fibL2811:
	ldr r9,[fp,#-848]
	ldr r10,[fp,#-848]
	add r2,r9,r10,lsr #31
	asr r9,r2,#1
	str r9,[fp,#-856]
	ldr r9,[fp,#-856]
	cmp r9,#0
	ldr r9,[fp,#-856]
	and r10,r9,#1
	str r10,[fp,#-940]
	ldr r9,[fp,#-940]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-940]
	ldr r9,[fp,#-940]
	cmp r9,#0
	blt .fibL2812
.fibL4584:
	ldr r9,[fp,#-940]
	mov r10,r9
	str r10,[fp,#-860]
.fibL2813:
	ldr r9,[fp,#-856]
	ldr r10,[fp,#-856]
	add r6,r9,r10,lsr #31
	asr r9,r6,#1
	str r9,[fp,#-864]
	ldr r9,[fp,#-864]
	cmp r9,#0
	ldr r9,[fp,#-864]
	and r10,r9,#1
	str r10,[fp,#-952]
	ldr r9,[fp,#-952]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-952]
	ldr r9,[fp,#-952]
	cmp r9,#0
	blt .fibL2814
.fibL4585:
	ldr r9,[fp,#-952]
	mov r10,r9
	str r10,[fp,#-868]
.fibL2815:
	ldr r9,[fp,#-864]
	ldr r10,[fp,#-864]
	add r5,r9,r10,lsr #31
	asr r9,r5,#1
	str r9,[fp,#-872]
	ldr r9,[fp,#-872]
	cmp r9,#0
	ldr r9,[fp,#-872]
	and r10,r9,#1
	str r10,[fp,#-964]
	ldr r9,[fp,#-964]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-964]
	ldr r9,[fp,#-964]
	cmp r9,#0
	blt .fibL2816
.fibL4586:
	ldr r9,[fp,#-964]
	mov r10,r9
	str r10,[fp,#-876]
.fibL2817:
	ldr r9,[fp,#-872]
	ldr r10,[fp,#-872]
	add r7,r9,r10,lsr #31
	asr r9,r7,#1
	str r9,[fp,#-880]
	ldr r9,[fp,#-880]
	cmp r9,#0
	ldr r9,[fp,#-880]
	and r10,r9,#1
	str r10,[fp,#-972]
	ldr r9,[fp,#-972]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-972]
	ldr r9,[fp,#-972]
	cmp r9,#0
	blt .fibL2818
.fibL4587:
	ldr r9,[fp,#-972]
	mov r10,r9
	str r10,[fp,#-884]
.fibL2819:
	ldr r9,[fp,#-880]
	ldr r10,[fp,#-880]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-888]
	ldr r9,[fp,#-888]
	cmp r9,#0
	ldr r9,[fp,#-888]
	and r10,r9,#1
	str r10,[fp,#-1380]
	ldr r9,[fp,#-1380]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1380]
	ldr r9,[fp,#-1380]
	cmp r9,#0
	blt .fibL2820
.fibL4588:
	ldr r9,[fp,#-1380]
	mov r10,r9
	str r10,[fp,#-896]
.fibL2821:
	ldr r9,[fp,#-888]
	ldr r10,[fp,#-888]
	add r8,r9,r10,lsr #31
	asr r9,r8,#1
	str r9,[fp,#-900]
	ldr r9,[fp,#-900]
	cmp r9,#0
	ldr r9,[fp,#-900]
	and r10,r9,#1
	str r10,[fp,#-1392]
	ldr r9,[fp,#-1392]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1392]
	ldr r9,[fp,#-1392]
	cmp r9,#0
	blt .fibL2822
.fibL4589:
	ldr r9,[fp,#-1392]
	mov r10,r9
	str r10,[fp,#-908]
.fibL2823:
	ldr r9,[fp,#-900]
	ldr r10,[fp,#-900]
	add r3,r9,r10,lsr #31
	asr r9,r3,#1
	str r9,[fp,#-912]
	ldr r9,[fp,#-912]
	cmp r9,#0
	ldr r9,[fp,#-912]
	and r10,r9,#1
	str r10,[fp,#-1420]
	ldr r9,[fp,#-1420]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1420]
	ldr r9,[fp,#-1420]
	cmp r9,#0
	blt .fibL2824
.fibL4590:
	ldr r9,[fp,#-1420]
	mov r10,r9
	str r10,[fp,#-920]
.fibL2825:
	ldr r9,[fp,#-912]
	ldr r10,[fp,#-912]
	add r4,r9,r10,lsr #31
	asr r9,r4,#1
	str r9,[fp,#-924]
	ldr r9,[fp,#-924]
	cmp r9,#0
	ldr r9,[fp,#-924]
	and r10,r9,#1
	str r10,[fp,#-1432]
	ldr r9,[fp,#-1432]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1432]
	ldr r9,[fp,#-1432]
	cmp r9,#0
	blt .fibL2826
.fibL4591:
	ldr r9,[fp,#-1432]
	mov r10,r9
	str r10,[fp,#-932]
.fibL2827:
	ldr r9,[fp,#-924]
	ldr r10,[fp,#-924]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-936]
	ldr r9,[fp,#-936]
	cmp r9,#0
	ldr r9,[fp,#-936]
	and r10,r9,#1
	str r10,[fp,#-1472]
	ldr r9,[fp,#-1472]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1472]
	ldr r9,[fp,#-1472]
	cmp r9,#0
	blt .fibL2828
.fibL4592:
	ldr r9,[fp,#-1472]
	mov r10,r9
	str r10,[fp,#-944]
.fibL2829:
	ldr r9,[fp,#-936]
	ldr r10,[fp,#-936]
	add r2,r9,r10,lsr #31
	asr r9,r2,#1
	str r9,[fp,#-948]
	ldr r9,[fp,#-948]
	cmp r9,#0
	ldr r9,[fp,#-948]
	and r10,r9,#1
	str r10,[fp,#-1500]
	ldr r9,[fp,#-1500]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1500]
	ldr r9,[fp,#-1500]
	cmp r9,#0
	blt .fibL2830
.fibL4593:
	ldr r9,[fp,#-1500]
	mov r10,r9
	str r10,[fp,#-956]
.fibL2831:
	ldr r9,[fp,#-948]
	ldr r10,[fp,#-948]
	add r6,r9,r10,lsr #31
	asr r9,r6,#1
	str r9,[fp,#-960]
	ldr r9,[fp,#-960]
	cmp r9,#0
	ldr r9,[fp,#-960]
	and r10,r9,#1
	str r10,[fp,#-1512]
	ldr r9,[fp,#-1512]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1512]
	ldr r9,[fp,#-1512]
	cmp r9,#0
	blt .fibL2832
.fibL4594:
	ldr r9,[fp,#-1512]
	mov r10,r9
	str r10,[fp,#-968]
.fibL2833:
	ldr r9,[fp,#-960]
	ldr r10,[fp,#-960]
	add r5,r9,r10,lsr #31
	asr r7,r5,#1
	cmp r7,#0
	and r9,r7,#1
	str r9,[fp,#-1552]
	ldr r9,[fp,#-1552]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1552]
	ldr r9,[fp,#-1552]
	cmp r9,#0
	blt .fibL2834
.fibL4595:
	ldr r9,[fp,#-1552]
	mov r10,r9
	str r10,[fp,#-976]
.fibL2835:
.fibL2837:
.fibL2839:
.fibL2841:
.fibL2843:
.fibL2845:
.fibL2847:
.fibL2849:
.fibL2851:
.fibL2853:
.fibL2855:
.fibL2857:
.fibL2859:
.fibL2861:
.fibL2863:
.fibL2865:
.fibL2867:
	ldr r9,[fp,#-828]
	cmp r9,#0
	beq .fibL2871
.fibL2868:
	mov r9,#1
	str r9,[fp,#-980]
.fibL2870:
	ldr r9,[fp,#-828]
	cmp r9,#0
	bne .fibL2876
.fibL2874:
.fibL2875:
.fibL2878:
.fibL2880:
	ldr r9,[fp,#-980]
	cmp r9,#0
	bne .fibL2884
.fibL2882:
	mov r9,#0
	str r9,[fp,#-984]
.fibL2883:
	ldr r9,[fp,#-984]
	cmp r9,#0
	beq .fibL2889
.fibL2886:
	mov r9,#1
	str r9,[fp,#-988]
.fibL2888:
	ldr r9,[fp,#-984]
	cmp r9,#0
	bne .fibL2894
.fibL2892:
.fibL2893:
.fibL2896:
.fibL2898:
	ldr r9,[fp,#-988]
	cmp r9,#0
	bne .fibL2902
.fibL2900:
	mov r9,#0
	str r9,[fp,#-992]
.fibL2901:
	ldr r9,[fp,#-828]
	cmp r9,#0
	bne .fibL2907
.fibL2905:
.fibL2906:
	ldr r9,[fp,#-984]
	cmp r9,#0
	bne .fibL2912
.fibL2910:
.fibL2911:
.fibL2917:
.fibL2915:
.fibL2916:
	ldr r9,[fp,#-836]
	cmp r9,#0
	beq .fibL2922
.fibL2919:
.fibL2921:
	ldr r9,[fp,#-836]
	cmp r9,#0
	bne .fibL2927
.fibL2925:
	mov r9,#0
	str r9,[fp,#-996]
.fibL2926:
	ldr r9,[fp,#-996]
	cmp r9,#0
	beq .fibL2929
.fibL2930:
	mov r9,#0
	str r9,[fp,#-1000]
.fibL2931:
.fibL2935:
	ldr r9,[fp,#-1000]
	cmp r9,#0
	bne .fibL2932
.fibL2933:
	mov r9,#0
	str r9,[fp,#-1004]
.fibL2934:
	ldr r9,[fp,#-1004]
	cmp r9,#0
	beq .fibL2940
.fibL2937:
	mov r9,#1
	str r9,[fp,#-1008]
.fibL2939:
	ldr r9,[fp,#-1004]
	cmp r9,#0
	bne .fibL2945
.fibL2943:
.fibL2944:
.fibL2947:
.fibL2949:
	ldr r9,[fp,#-1008]
	cmp r9,#0
	bne .fibL2953
.fibL2951:
	mov r9,#0
	str r9,[fp,#-1012]
.fibL2952:
	ldr r9,[fp,#-836]
	cmp r9,#0
	bne .fibL2958
.fibL2956:
	mov r9,#0
	str r9,[fp,#-1016]
.fibL2957:
	ldr r9,[fp,#-1004]
	cmp r9,#0
	bne .fibL2963
.fibL2961:
.fibL2962:
	ldr r9,[fp,#-1016]
	cmp r9,#0
	beq .fibL2968
.fibL2965:
	mov r9,#1
	str r9,[fp,#-1020]
.fibL2967:
	ldr r9,[fp,#-844]
	cmp r9,#0
	beq .fibL2973
.fibL2970:
.fibL2972:
	ldr r9,[fp,#-844]
	cmp r9,#0
	bne .fibL2978
.fibL2976:
	mov r9,#0
	str r9,[fp,#-1024]
.fibL2977:
	ldr r9,[fp,#-1024]
	cmp r9,#0
	beq .fibL2980
.fibL2981:
	mov r9,#0
	str r9,[fp,#-1028]
.fibL2982:
.fibL2986:
	ldr r9,[fp,#-1028]
	cmp r9,#0
	bne .fibL2983
.fibL2984:
	mov r9,#0
	str r9,[fp,#-1032]
.fibL2985:
	ldr r9,[fp,#-1032]
	cmp r9,#0
	beq .fibL2991
.fibL2988:
	mov r9,#1
	str r9,[fp,#-1036]
.fibL2990:
	ldr r9,[fp,#-1032]
	cmp r9,#0
	bne .fibL2996
.fibL2994:
	mov r9,#0
	str r9,[fp,#-1040]
.fibL2995:
	ldr r9,[fp,#-1040]
	cmp r9,#0
	beq .fibL2998
.fibL2999:
	mov r9,#0
	str r9,[fp,#-1044]
.fibL3000:
	ldr r9,[fp,#-1036]
	cmp r9,#0
	bne .fibL3004
.fibL3002:
	mov r9,#0
	str r9,[fp,#-1048]
.fibL3003:
	ldr r9,[fp,#-844]
	cmp r9,#0
	bne .fibL3009
.fibL3007:
	mov r9,#0
	str r9,[fp,#-1052]
.fibL3008:
	ldr r9,[fp,#-1032]
	cmp r9,#0
	bne .fibL3014
.fibL3012:
	mov r9,#0
	str r9,[fp,#-1056]
.fibL3013:
	ldr r9,[fp,#-1052]
	cmp r9,#0
	beq .fibL3019
.fibL3016:
	mov r9,#1
	str r9,[fp,#-1060]
.fibL3018:
	ldr r9,[fp,#-852]
	cmp r9,#0
	beq .fibL3024
.fibL3021:
.fibL3023:
	ldr r9,[fp,#-852]
	cmp r9,#0
	bne .fibL3029
.fibL3027:
	mov r9,#0
	str r9,[fp,#-1064]
.fibL3028:
	ldr r9,[fp,#-1064]
	cmp r9,#0
	beq .fibL3031
.fibL3032:
	mov r9,#0
	str r9,[fp,#-1068]
.fibL3033:
.fibL3037:
	ldr r9,[fp,#-1068]
	cmp r9,#0
	bne .fibL3034
.fibL3035:
	mov r9,#0
	str r9,[fp,#-1072]
.fibL3036:
	ldr r9,[fp,#-1072]
	cmp r9,#0
	beq .fibL3042
.fibL3039:
	mov r9,#1
	str r9,[fp,#-1076]
.fibL3041:
	ldr r9,[fp,#-1072]
	cmp r9,#0
	bne .fibL3047
.fibL3045:
	mov r9,#0
	str r9,[fp,#-1080]
.fibL3046:
	ldr r9,[fp,#-1080]
	cmp r9,#0
	beq .fibL3049
.fibL3050:
	mov r9,#0
	str r9,[fp,#-1084]
.fibL3051:
	ldr r9,[fp,#-1076]
	cmp r9,#0
	bne .fibL3055
.fibL3053:
	mov r9,#0
	str r9,[fp,#-1088]
.fibL3054:
	ldr r9,[fp,#-852]
	cmp r9,#0
	bne .fibL3060
.fibL3058:
	mov r9,#0
	str r9,[fp,#-1092]
.fibL3059:
	ldr r9,[fp,#-1072]
	cmp r9,#0
	bne .fibL3065
.fibL3063:
	mov r9,#0
	str r9,[fp,#-1096]
.fibL3064:
	ldr r9,[fp,#-1092]
	cmp r9,#0
	beq .fibL3070
.fibL3067:
	mov r9,#1
	str r9,[fp,#-1100]
.fibL3069:
	ldr r9,[fp,#-860]
	cmp r9,#0
	beq .fibL3075
.fibL3072:
.fibL3074:
	ldr r9,[fp,#-860]
	cmp r9,#0
	bne .fibL3080
.fibL3078:
	mov r9,#0
	str r9,[fp,#-1104]
.fibL3079:
	ldr r9,[fp,#-1104]
	cmp r9,#0
	beq .fibL3082
.fibL3083:
	mov r9,#0
	str r9,[fp,#-1108]
.fibL3084:
.fibL3088:
	ldr r9,[fp,#-1108]
	cmp r9,#0
	bne .fibL3085
.fibL3086:
	mov r9,#0
	str r9,[fp,#-1112]
.fibL3087:
	ldr r9,[fp,#-1112]
	cmp r9,#0
	beq .fibL3093
.fibL3090:
	mov r9,#1
	str r9,[fp,#-1116]
.fibL3092:
	ldr r9,[fp,#-1112]
	cmp r9,#0
	bne .fibL3098
.fibL3096:
	mov r9,#0
	str r9,[fp,#-1120]
.fibL3097:
	ldr r9,[fp,#-1120]
	cmp r9,#0
	beq .fibL3100
.fibL3101:
	mov r9,#0
	str r9,[fp,#-1124]
.fibL3102:
	ldr r9,[fp,#-1116]
	cmp r9,#0
	bne .fibL3106
.fibL3104:
	mov r9,#0
	str r9,[fp,#-1128]
.fibL3105:
	ldr r9,[fp,#-860]
	cmp r9,#0
	bne .fibL3111
.fibL3109:
	mov r9,#0
	str r9,[fp,#-1132]
.fibL3110:
	ldr r9,[fp,#-1112]
	cmp r9,#0
	bne .fibL3116
.fibL3114:
	mov r9,#0
	str r9,[fp,#-1136]
.fibL3115:
	ldr r9,[fp,#-1132]
	cmp r9,#0
	beq .fibL3121
.fibL3118:
	mov r9,#1
	str r9,[fp,#-1140]
.fibL3120:
	ldr r9,[fp,#-868]
	cmp r9,#0
	beq .fibL3126
.fibL3123:
.fibL3125:
	ldr r9,[fp,#-868]
	cmp r9,#0
	bne .fibL3131
.fibL3129:
	mov r9,#0
	str r9,[fp,#-1144]
.fibL3130:
	ldr r9,[fp,#-1144]
	cmp r9,#0
	beq .fibL3133
.fibL3134:
	mov r9,#0
	str r9,[fp,#-1148]
.fibL3135:
.fibL3139:
	ldr r9,[fp,#-1148]
	cmp r9,#0
	bne .fibL3136
.fibL3137:
	mov r9,#0
	str r9,[fp,#-1152]
.fibL3138:
	ldr r9,[fp,#-1152]
	cmp r9,#0
	beq .fibL3144
.fibL3141:
	mov r9,#1
	str r9,[fp,#-1156]
.fibL3143:
	ldr r9,[fp,#-1152]
	cmp r9,#0
	bne .fibL3149
.fibL3147:
	mov r9,#0
	str r9,[fp,#-1160]
.fibL3148:
	ldr r9,[fp,#-1160]
	cmp r9,#0
	beq .fibL3151
.fibL3152:
	mov r9,#0
	str r9,[fp,#-1164]
.fibL3153:
	ldr r9,[fp,#-1156]
	cmp r9,#0
	bne .fibL3157
.fibL3155:
	mov r9,#0
	str r9,[fp,#-1168]
.fibL3156:
	ldr r9,[fp,#-868]
	cmp r9,#0
	bne .fibL3162
.fibL3160:
	mov r9,#0
	str r9,[fp,#-1172]
.fibL3161:
	ldr r9,[fp,#-1152]
	cmp r9,#0
	bne .fibL3167
.fibL3165:
	mov r9,#0
	str r9,[fp,#-1176]
.fibL3166:
	ldr r9,[fp,#-1172]
	cmp r9,#0
	beq .fibL3172
.fibL3169:
	mov r9,#1
	str r9,[fp,#-1180]
.fibL3171:
	ldr r9,[fp,#-876]
	cmp r9,#0
	beq .fibL3177
.fibL3174:
.fibL3176:
	ldr r9,[fp,#-876]
	cmp r9,#0
	bne .fibL3182
.fibL3180:
	mov r9,#0
	str r9,[fp,#-1184]
.fibL3181:
	ldr r9,[fp,#-1184]
	cmp r9,#0
	beq .fibL3184
.fibL3185:
	mov r9,#0
	str r9,[fp,#-1188]
.fibL3186:
.fibL3190:
	ldr r9,[fp,#-1188]
	cmp r9,#0
	bne .fibL3187
.fibL3188:
	mov r9,#0
	str r9,[fp,#-1192]
.fibL3189:
	ldr r9,[fp,#-1192]
	cmp r9,#0
	beq .fibL3195
.fibL3192:
	mov r9,#1
	str r9,[fp,#-1196]
.fibL3194:
	ldr r9,[fp,#-1192]
	cmp r9,#0
	bne .fibL3200
.fibL3198:
	mov r9,#0
	str r9,[fp,#-1200]
.fibL3199:
	ldr r9,[fp,#-1200]
	cmp r9,#0
	beq .fibL3202
.fibL3203:
	mov r9,#0
	str r9,[fp,#-1204]
.fibL3204:
	ldr r9,[fp,#-1196]
	cmp r9,#0
	bne .fibL3208
.fibL3206:
	mov r9,#0
	str r9,[fp,#-1208]
.fibL3207:
	ldr r9,[fp,#-876]
	cmp r9,#0
	bne .fibL3213
.fibL3211:
	mov r9,#0
	str r9,[fp,#-1212]
.fibL3212:
	ldr r9,[fp,#-1192]
	cmp r9,#0
	bne .fibL3218
.fibL3216:
	mov r9,#0
	str r9,[fp,#-1216]
.fibL3217:
	ldr r9,[fp,#-1212]
	cmp r9,#0
	beq .fibL3223
.fibL3220:
	mov r9,#1
	str r9,[fp,#-1220]
.fibL3222:
	ldr r9,[fp,#-884]
	cmp r9,#0
	beq .fibL3228
.fibL3225:
.fibL3227:
	ldr r9,[fp,#-884]
	cmp r9,#0
	bne .fibL3233
.fibL3231:
	mov r9,#0
	str r9,[fp,#-1224]
.fibL3232:
	ldr r9,[fp,#-1224]
	cmp r9,#0
	beq .fibL3235
.fibL3236:
	mov r9,#0
	str r9,[fp,#-1228]
.fibL3237:
.fibL3241:
	ldr r9,[fp,#-1228]
	cmp r9,#0
	bne .fibL3238
.fibL3239:
	mov r9,#0
	str r9,[fp,#-1232]
.fibL3240:
	ldr r9,[fp,#-1232]
	cmp r9,#0
	beq .fibL3246
.fibL3243:
	mov r9,#1
	str r9,[fp,#-1236]
.fibL3245:
	ldr r9,[fp,#-1232]
	cmp r9,#0
	bne .fibL3251
.fibL3249:
	mov r9,#0
	str r9,[fp,#-1240]
.fibL3250:
	ldr r9,[fp,#-1240]
	cmp r9,#0
	beq .fibL3253
.fibL3254:
	mov r9,#0
	str r9,[fp,#-1244]
.fibL3255:
	ldr r9,[fp,#-1236]
	cmp r9,#0
	bne .fibL3259
.fibL3257:
	mov r9,#0
	str r9,[fp,#-1248]
.fibL3258:
	ldr r9,[fp,#-884]
	cmp r9,#0
	bne .fibL3264
.fibL3262:
	mov r9,#0
	str r9,[fp,#-1252]
.fibL3263:
	ldr r9,[fp,#-1232]
	cmp r9,#0
	bne .fibL3269
.fibL3267:
	mov r9,#0
	str r9,[fp,#-1256]
.fibL3268:
	ldr r9,[fp,#-1252]
	cmp r9,#0
	beq .fibL3274
.fibL3271:
	mov r9,#1
	str r9,[fp,#-1260]
.fibL3273:
	ldr r9,[fp,#-896]
	cmp r9,#0
	beq .fibL3279
.fibL3276:
.fibL3278:
	ldr r9,[fp,#-896]
	cmp r9,#0
	bne .fibL3284
.fibL3282:
	mov r9,#0
	str r9,[fp,#-1264]
.fibL3283:
	ldr r9,[fp,#-1264]
	cmp r9,#0
	beq .fibL3286
.fibL3287:
	mov r9,#0
	str r9,[fp,#-1268]
.fibL3288:
.fibL3292:
	ldr r9,[fp,#-1268]
	cmp r9,#0
	bne .fibL3289
.fibL3290:
	mov r9,#0
	str r9,[fp,#-1272]
.fibL3291:
	ldr r9,[fp,#-1272]
	cmp r9,#0
	beq .fibL3297
.fibL3294:
	mov r9,#1
	str r9,[fp,#-1276]
.fibL3296:
	ldr r9,[fp,#-1272]
	cmp r9,#0
	bne .fibL3302
.fibL3300:
	mov r9,#0
	str r9,[fp,#-1280]
.fibL3301:
	ldr r9,[fp,#-1280]
	cmp r9,#0
	beq .fibL3304
.fibL3305:
	mov r9,#0
	str r9,[fp,#-1284]
.fibL3306:
	ldr r9,[fp,#-1276]
	cmp r9,#0
	bne .fibL3310
.fibL3308:
	mov r9,#0
	str r9,[fp,#-1288]
.fibL3309:
	ldr r9,[fp,#-896]
	cmp r9,#0
	bne .fibL3315
.fibL3313:
	mov r9,#0
	str r9,[fp,#-1292]
.fibL3314:
	ldr r9,[fp,#-1272]
	cmp r9,#0
	bne .fibL3320
.fibL3318:
	mov r9,#0
	str r9,[fp,#-1296]
.fibL3319:
	ldr r9,[fp,#-1292]
	cmp r9,#0
	beq .fibL3325
.fibL3322:
	mov r9,#1
	str r9,[fp,#-1300]
.fibL3324:
	ldr r9,[fp,#-908]
	cmp r9,#0
	beq .fibL3330
.fibL3327:
.fibL3329:
	ldr r9,[fp,#-908]
	cmp r9,#0
	bne .fibL3335
.fibL3333:
	mov r9,#0
	str r9,[fp,#-1304]
.fibL3334:
	ldr r9,[fp,#-1304]
	cmp r9,#0
	beq .fibL3337
.fibL3338:
	mov r9,#0
	str r9,[fp,#-1308]
.fibL3339:
.fibL3343:
	ldr r9,[fp,#-1308]
	cmp r9,#0
	bne .fibL3340
.fibL3341:
	mov r9,#0
	str r9,[fp,#-1312]
.fibL3342:
	ldr r9,[fp,#-1312]
	cmp r9,#0
	beq .fibL3348
.fibL3345:
	mov r9,#1
	str r9,[fp,#-1316]
.fibL3347:
	ldr r9,[fp,#-1312]
	cmp r9,#0
	bne .fibL3353
.fibL3351:
	mov r9,#0
	str r9,[fp,#-1320]
.fibL3352:
	ldr r9,[fp,#-1320]
	cmp r9,#0
	beq .fibL3355
.fibL3356:
	mov r9,#0
	str r9,[fp,#-1324]
.fibL3357:
	ldr r9,[fp,#-1316]
	cmp r9,#0
	bne .fibL3361
.fibL3359:
	mov r9,#0
	str r9,[fp,#-1328]
.fibL3360:
	ldr r9,[fp,#-908]
	cmp r9,#0
	bne .fibL3366
.fibL3364:
	mov r9,#0
	str r9,[fp,#-1332]
.fibL3365:
	ldr r9,[fp,#-1312]
	cmp r9,#0
	bne .fibL3371
.fibL3369:
	mov r9,#0
	str r9,[fp,#-1336]
.fibL3370:
	ldr r9,[fp,#-1332]
	cmp r9,#0
	beq .fibL3376
.fibL3373:
	mov r9,#1
	str r9,[fp,#-1340]
.fibL3375:
	ldr r9,[fp,#-920]
	cmp r9,#0
	beq .fibL3381
.fibL3378:
.fibL3380:
	ldr r9,[fp,#-920]
	cmp r9,#0
	bne .fibL3386
.fibL3384:
	mov r9,#0
	str r9,[fp,#-1344]
.fibL3385:
	ldr r9,[fp,#-1344]
	cmp r9,#0
	beq .fibL3388
.fibL3389:
	mov r9,#0
	str r9,[fp,#-1348]
.fibL3390:
.fibL3394:
	ldr r9,[fp,#-1348]
	cmp r9,#0
	bne .fibL3391
.fibL3392:
	mov r9,#0
	str r9,[fp,#-1352]
.fibL3393:
	ldr r9,[fp,#-1352]
	cmp r9,#0
	beq .fibL3399
.fibL3396:
	mov r9,#1
	str r9,[fp,#-1356]
.fibL3398:
	ldr r9,[fp,#-1352]
	cmp r9,#0
	bne .fibL3404
.fibL3402:
	mov r9,#0
	str r9,[fp,#-1360]
.fibL3403:
	ldr r9,[fp,#-1360]
	cmp r9,#0
	beq .fibL3406
.fibL3407:
	mov r9,#0
	str r9,[fp,#-1364]
.fibL3408:
	ldr r9,[fp,#-1356]
	cmp r9,#0
	bne .fibL3412
.fibL3410:
	mov r9,#0
	str r9,[fp,#-1368]
.fibL3411:
	ldr r9,[fp,#-920]
	cmp r9,#0
	bne .fibL3417
.fibL3415:
	mov r9,#0
	str r9,[fp,#-1372]
.fibL3416:
	ldr r9,[fp,#-1352]
	cmp r9,#0
	bne .fibL3422
.fibL3420:
	mov r9,#0
	str r9,[fp,#-1376]
.fibL3421:
	ldr r9,[fp,#-1372]
	cmp r9,#0
	beq .fibL3427
.fibL3424:
	mov r9,#1
	str r9,[fp,#-1460]
.fibL3426:
	ldr r9,[fp,#-932]
	cmp r9,#0
	beq .fibL3432
.fibL3429:
.fibL3431:
	ldr r9,[fp,#-932]
	cmp r9,#0
	bne .fibL3437
.fibL3435:
	mov r9,#0
	str r9,[fp,#-1384]
.fibL3436:
	ldr r9,[fp,#-1384]
	cmp r9,#0
	beq .fibL3439
.fibL3440:
	mov r9,#0
	str r9,[fp,#-1388]
.fibL3441:
.fibL3445:
	ldr r9,[fp,#-1388]
	cmp r9,#0
	bne .fibL3442
.fibL3443:
	mov r9,#0
	str r9,[fp,#-1540]
.fibL3444:
	ldr r9,[fp,#-1540]
	cmp r9,#0
	beq .fibL3450
.fibL3447:
	mov r9,#1
	str r9,[fp,#-1396]
.fibL3449:
	ldr r9,[fp,#-1540]
	cmp r9,#0
	bne .fibL3455
.fibL3453:
	mov r9,#0
	str r9,[fp,#-1400]
.fibL3454:
	ldr r9,[fp,#-1400]
	cmp r9,#0
	beq .fibL3457
.fibL3458:
	mov r9,#0
	str r9,[fp,#-1404]
.fibL3459:
	ldr r9,[fp,#-1396]
	cmp r9,#0
	bne .fibL3463
.fibL3461:
	mov r9,#0
	str r9,[fp,#-1408]
.fibL3462:
	ldr r9,[fp,#-932]
	cmp r9,#0
	bne .fibL3468
.fibL3466:
	mov r9,#0
	str r9,[fp,#-1412]
.fibL3467:
	ldr r9,[fp,#-1540]
	cmp r9,#0
	bne .fibL3473
.fibL3471:
	mov r9,#0
	str r9,[fp,#-1416]
.fibL3472:
	ldr r9,[fp,#-1412]
	cmp r9,#0
	beq .fibL3478
.fibL3475:
	mov r9,#1
	str r9,[fp,#-1580]
.fibL3477:
	ldr r9,[fp,#-944]
	cmp r9,#0
	beq .fibL3483
.fibL3480:
.fibL3482:
	ldr r9,[fp,#-944]
	cmp r9,#0
	bne .fibL3488
.fibL3486:
	mov r9,#0
	str r9,[fp,#-1424]
.fibL3487:
	ldr r9,[fp,#-1424]
	cmp r9,#0
	beq .fibL3490
.fibL3491:
	mov r9,#0
	str r9,[fp,#-1428]
.fibL3492:
.fibL3496:
	ldr r9,[fp,#-1428]
	cmp r9,#0
	bne .fibL3493
.fibL3494:
	mov r9,#0
	str r9,[fp,#-1584]
.fibL3495:
	ldr r9,[fp,#-1584]
	cmp r9,#0
	beq .fibL3501
.fibL3498:
	mov r9,#1
	str r9,[fp,#-1436]
.fibL3500:
	ldr r9,[fp,#-1584]
	cmp r9,#0
	bne .fibL3506
.fibL3504:
	mov r9,#0
	str r9,[fp,#-1440]
.fibL3505:
	ldr r9,[fp,#-1440]
	cmp r9,#0
	beq .fibL3508
.fibL3509:
	mov r9,#0
	str r9,[fp,#-1444]
.fibL3510:
	ldr r9,[fp,#-1436]
	cmp r9,#0
	bne .fibL3514
.fibL3512:
	mov r9,#0
	str r9,[fp,#-1448]
.fibL3513:
	ldr r9,[fp,#-944]
	cmp r9,#0
	bne .fibL3519
.fibL3517:
	mov r9,#0
	str r9,[fp,#-1452]
.fibL3518:
	ldr r9,[fp,#-1584]
	cmp r9,#0
	bne .fibL3524
.fibL3522:
	mov r9,#0
	str r9,[fp,#-1456]
.fibL3523:
	ldr r9,[fp,#-1452]
	cmp r9,#0
	beq .fibL3529
.fibL3526:
	mov r9,#1
	str r9,[fp,#-1588]
.fibL3528:
	ldr r9,[fp,#-956]
	cmp r9,#0
	beq .fibL3534
.fibL3531:
.fibL3533:
	ldr r9,[fp,#-956]
	cmp r9,#0
	bne .fibL3539
.fibL3537:
	mov r9,#0
	str r9,[fp,#-1464]
.fibL3538:
	ldr r9,[fp,#-1464]
	cmp r9,#0
	beq .fibL3541
.fibL3542:
	mov r9,#0
	str r9,[fp,#-1468]
.fibL3543:
.fibL3547:
	ldr r9,[fp,#-1468]
	cmp r9,#0
	bne .fibL3544
.fibL3545:
	mov r9,#0
	str r9,[fp,#-1592]
.fibL3546:
	ldr r9,[fp,#-1592]
	cmp r9,#0
	beq .fibL3552
.fibL3549:
	mov r9,#1
	str r9,[fp,#-1476]
.fibL3551:
	ldr r9,[fp,#-1592]
	cmp r9,#0
	bne .fibL3557
.fibL3555:
	mov r9,#0
	str r9,[fp,#-1480]
.fibL3556:
	ldr r9,[fp,#-1480]
	cmp r9,#0
	beq .fibL3559
.fibL3560:
	mov r9,#0
	str r9,[fp,#-1484]
.fibL3561:
	ldr r9,[fp,#-1476]
	cmp r9,#0
	bne .fibL3565
.fibL3563:
	mov r9,#0
	str r9,[fp,#-1488]
.fibL3564:
	ldr r9,[fp,#-956]
	cmp r9,#0
	bne .fibL3570
.fibL3568:
	mov r9,#0
	str r9,[fp,#-1492]
.fibL3569:
	ldr r9,[fp,#-1592]
	cmp r9,#0
	bne .fibL3575
.fibL3573:
	mov r9,#0
	str r9,[fp,#-1496]
.fibL3574:
	ldr r9,[fp,#-1492]
	cmp r9,#0
	beq .fibL3580
.fibL3577:
	mov r9,#1
	str r9,[fp,#-1596]
.fibL3579:
	ldr r9,[fp,#-968]
	cmp r9,#0
	beq .fibL3585
.fibL3582:
.fibL3584:
	ldr r9,[fp,#-968]
	cmp r9,#0
	bne .fibL3590
.fibL3588:
	mov r9,#0
	str r9,[fp,#-1504]
.fibL3589:
	ldr r9,[fp,#-1504]
	cmp r9,#0
	beq .fibL3592
.fibL3593:
	mov r9,#0
	str r9,[fp,#-1508]
.fibL3594:
.fibL3598:
	ldr r9,[fp,#-1508]
	cmp r9,#0
	bne .fibL3595
.fibL3596:
	mov r9,#0
	str r9,[fp,#-1600]
.fibL3597:
	ldr r9,[fp,#-1600]
	cmp r9,#0
	beq .fibL3603
.fibL3600:
	mov r9,#1
	str r9,[fp,#-1516]
.fibL3602:
	ldr r9,[fp,#-1600]
	cmp r9,#0
	bne .fibL3608
.fibL3606:
	mov r9,#0
	str r9,[fp,#-1520]
.fibL3607:
	ldr r9,[fp,#-1520]
	cmp r9,#0
	beq .fibL3610
.fibL3611:
	mov r9,#0
	str r9,[fp,#-1524]
.fibL3612:
	ldr r9,[fp,#-1516]
	cmp r9,#0
	bne .fibL3616
.fibL3614:
	mov r9,#0
	str r9,[fp,#-1528]
.fibL3615:
	ldr r9,[fp,#-968]
	cmp r9,#0
	bne .fibL3621
.fibL3619:
	mov r9,#0
	str r9,[fp,#-1532]
.fibL3620:
	ldr r9,[fp,#-1600]
	cmp r9,#0
	bne .fibL3626
.fibL3624:
	mov r9,#0
	str r9,[fp,#-1536]
.fibL3625:
	ldr r9,[fp,#-1532]
	cmp r9,#0
	beq .fibL3631
.fibL3628:
	mov r9,#1
	str r9,[fp,#-1604]
.fibL3630:
	ldr r9,[fp,#-976]
	cmp r9,#0
	beq .fibL3636
.fibL3633:
.fibL3635:
	ldr r9,[fp,#-976]
	cmp r9,#0
	bne .fibL3641
.fibL3639:
	mov r9,#0
	str r9,[fp,#-1544]
.fibL3640:
	ldr r9,[fp,#-1544]
	cmp r9,#0
	beq .fibL3643
.fibL3644:
	mov r9,#0
	str r9,[fp,#-1548]
.fibL3645:
.fibL3649:
	ldr r9,[fp,#-1548]
	cmp r9,#0
	bne .fibL3646
.fibL3647:
	mov r9,#0
	str r9,[fp,#-1608]
.fibL3648:
	ldr r9,[fp,#-1608]
	cmp r9,#0
	beq .fibL3654
.fibL3651:
	mov r9,#1
	str r9,[fp,#-1556]
.fibL3653:
	ldr r9,[fp,#-1608]
	cmp r9,#0
	bne .fibL3659
.fibL3657:
	mov r9,#0
	str r9,[fp,#-1560]
.fibL3658:
	ldr r9,[fp,#-1560]
	cmp r9,#0
	beq .fibL3661
.fibL3662:
	mov r9,#0
	str r9,[fp,#-1564]
.fibL3663:
	ldr r9,[fp,#-1556]
	cmp r9,#0
	bne .fibL3667
.fibL3665:
	mov r9,#0
	str r9,[fp,#-1568]
.fibL3666:
	ldr r9,[fp,#-976]
	cmp r9,#0
	bne .fibL3672
.fibL3670:
	mov r9,#0
	str r9,[fp,#-1572]
.fibL3671:
	ldr r9,[fp,#-1608]
	cmp r9,#0
	bne .fibL3677
.fibL3675:
	mov r9,#0
	str r9,[fp,#-1576]
.fibL3676:
	ldr r9,[fp,#-1572]
	cmp r9,#0
	beq .fibL3682
.fibL3679:
.fibL3681:
	ldr r9,[fp,#-1568]
	mov r5,r9
	lsl r8,r5,#1
	ldr r9,[fp,#-1528]
	add r5,r8,r9
	lsl r8,r5,#1
	ldr r9,[fp,#-1488]
	add r5,r8,r9
	lsl r8,r5,#1
	ldr r9,[fp,#-1448]
	add r5,r8,r9
	lsl r8,r5,#1
	ldr r9,[fp,#-1408]
	add r5,r8,r9
	lsl r8,r5,#1
	ldr r9,[fp,#-1368]
	add r5,r8,r9
	lsl r8,r5,#1
	ldr r9,[fp,#-1328]
	add r5,r8,r9
	lsl r8,r5,#1
	ldr r9,[fp,#-1288]
	add r5,r8,r9
	lsl r8,r5,#1
	ldr r9,[fp,#-1248]
	add r5,r8,r9
	lsl r8,r5,#1
	ldr r9,[fp,#-1208]
	add r5,r8,r9
	lsl r8,r5,#1
	ldr r9,[fp,#-1168]
	add r5,r8,r9
	lsl r8,r5,#1
	ldr r9,[fp,#-1128]
	add r5,r8,r9
	lsl r8,r5,#1
	ldr r9,[fp,#-1088]
	add r5,r8,r9
	lsl r8,r5,#1
	ldr r9,[fp,#-1048]
	add r5,r8,r9
	lsl r8,r5,#1
	ldr r9,[fp,#-1012]
	add r5,r8,r9
	lsl r8,r5,#1
	ldr r9,[fp,#-992]
	add r5,r8,r9
	@%r10547 = call i32 @fib(i32 %r10544)
	sub sp,sp,#4 @stack align 8bytes
	push {r0,r1,r2,r3}
	mov r0,r5
	bl fib
	str r0,[fp,#-1612]
	pop {r0,r1,r2,r3}
	add sp,sp,#4 @stack align 8bytes
	ldr r9,[fp,#-796]
	cmp r9,#0
	ldr r9,[fp,#-796]
	and r10,r9,#1
	str r10,[fp,#-1680]
	ldr r9,[fp,#-1680]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1680]
	ldr r9,[fp,#-1680]
	cmp r9,#0
	blt .fibL3684
.fibL4596:
	ldr r9,[fp,#-1680]
	mov r10,r9
	str r10,[fp,#-1616]
.fibL3685:
	ldr r9,[fp,#-796]
	ldr r10,[fp,#-796]
	add r4,r9,r10,lsr #31
	asr r9,r4,#1
	str r9,[fp,#-1620]
	ldr r9,[fp,#-1620]
	cmp r9,#0
	ldr r9,[fp,#-1620]
	and r10,r9,#1
	str r10,[fp,#-1692]
	ldr r9,[fp,#-1692]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1692]
	ldr r9,[fp,#-1692]
	cmp r9,#0
	blt .fibL3686
.fibL4597:
	ldr r9,[fp,#-1692]
	mov r10,r9
	str r10,[fp,#-1624]
.fibL3687:
	ldr r9,[fp,#-1620]
	ldr r10,[fp,#-1620]
	add r2,r9,r10,lsr #31
	asr r9,r2,#1
	str r9,[fp,#-1628]
	ldr r9,[fp,#-1628]
	cmp r9,#0
	ldr r9,[fp,#-1628]
	and r10,r9,#1
	str r10,[fp,#-1704]
	ldr r9,[fp,#-1704]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1704]
	ldr r9,[fp,#-1704]
	cmp r9,#0
	blt .fibL3688
.fibL4598:
	ldr r9,[fp,#-1704]
	mov r10,r9
	str r10,[fp,#-1632]
.fibL3689:
	ldr r9,[fp,#-1628]
	ldr r10,[fp,#-1628]
	add r8,r9,r10,lsr #31
	asr r9,r8,#1
	str r9,[fp,#-1636]
	ldr r9,[fp,#-1636]
	cmp r9,#0
	ldr r9,[fp,#-1636]
	and r10,r9,#1
	str r10,[fp,#-1716]
	ldr r9,[fp,#-1716]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1716]
	ldr r9,[fp,#-1716]
	cmp r9,#0
	blt .fibL3690
.fibL4599:
	ldr r9,[fp,#-1716]
	mov r10,r9
	str r10,[fp,#-1640]
.fibL3691:
	ldr r9,[fp,#-1636]
	ldr r10,[fp,#-1636]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-1644]
	ldr r9,[fp,#-1644]
	cmp r9,#0
	ldr r9,[fp,#-1644]
	and r10,r9,#1
	str r10,[fp,#-1728]
	ldr r9,[fp,#-1728]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1728]
	ldr r9,[fp,#-1728]
	cmp r9,#0
	blt .fibL3692
.fibL4600:
	ldr r9,[fp,#-1728]
	mov r10,r9
	str r10,[fp,#-1648]
.fibL3693:
	ldr r9,[fp,#-1644]
	ldr r10,[fp,#-1644]
	add r3,r9,r10,lsr #31
	asr r9,r3,#1
	str r9,[fp,#-1652]
	ldr r9,[fp,#-1652]
	cmp r9,#0
	ldr r9,[fp,#-1652]
	and r10,r9,#1
	str r10,[fp,#-1740]
	ldr r9,[fp,#-1740]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1740]
	ldr r9,[fp,#-1740]
	cmp r9,#0
	blt .fibL3694
.fibL4601:
	ldr r9,[fp,#-1740]
	mov r10,r9
	str r10,[fp,#-1656]
.fibL3695:
	ldr r9,[fp,#-1652]
	ldr r10,[fp,#-1652]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-1660]
	ldr r9,[fp,#-1660]
	cmp r9,#0
	ldr r9,[fp,#-1660]
	and r10,r9,#1
	str r10,[fp,#-1752]
	ldr r9,[fp,#-1752]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1752]
	ldr r9,[fp,#-1752]
	cmp r9,#0
	blt .fibL3696
.fibL4602:
	ldr r9,[fp,#-1752]
	mov r10,r9
	str r10,[fp,#-1664]
.fibL3697:
	ldr r9,[fp,#-1660]
	ldr r10,[fp,#-1660]
	add r7,r9,r10,lsr #31
	asr r9,r7,#1
	str r9,[fp,#-1668]
	ldr r9,[fp,#-1668]
	cmp r9,#0
	ldr r9,[fp,#-1668]
	and r10,r9,#1
	str r10,[fp,#-1760]
	ldr r9,[fp,#-1760]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1760]
	ldr r9,[fp,#-1760]
	cmp r9,#0
	blt .fibL3698
.fibL4603:
	ldr r9,[fp,#-1760]
	mov r10,r9
	str r10,[fp,#-1672]
.fibL3699:
	ldr r9,[fp,#-1668]
	ldr r10,[fp,#-1668]
	add r6,r9,r10,lsr #31
	asr r9,r6,#1
	str r9,[fp,#-1676]
	ldr r9,[fp,#-1676]
	cmp r9,#0
	ldr r9,[fp,#-1676]
	and r10,r9,#1
	str r10,[fp,#-1768]
	ldr r9,[fp,#-1768]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1768]
	ldr r9,[fp,#-1768]
	cmp r9,#0
	blt .fibL3700
.fibL4604:
	ldr r9,[fp,#-1768]
	mov r10,r9
	str r10,[fp,#-1684]
.fibL3701:
	ldr r9,[fp,#-1676]
	ldr r10,[fp,#-1676]
	add r5,r9,r10,lsr #31
	asr r9,r5,#1
	str r9,[fp,#-1688]
	ldr r9,[fp,#-1688]
	cmp r9,#0
	ldr r9,[fp,#-1688]
	and r10,r9,#1
	str r10,[fp,#-1780]
	ldr r9,[fp,#-1780]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1780]
	ldr r9,[fp,#-1780]
	cmp r9,#0
	blt .fibL3702
.fibL4605:
	ldr r9,[fp,#-1780]
	mov r10,r9
	str r10,[fp,#-1696]
.fibL3703:
	ldr r9,[fp,#-1688]
	ldr r10,[fp,#-1688]
	add r4,r9,r10,lsr #31
	asr r9,r4,#1
	str r9,[fp,#-1700]
	ldr r9,[fp,#-1700]
	cmp r9,#0
	ldr r9,[fp,#-1700]
	and r10,r9,#1
	str r10,[fp,#-1792]
	ldr r9,[fp,#-1792]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1792]
	ldr r9,[fp,#-1792]
	cmp r9,#0
	blt .fibL3704
.fibL4606:
	ldr r9,[fp,#-1792]
	mov r10,r9
	str r10,[fp,#-1708]
.fibL3705:
	ldr r9,[fp,#-1700]
	ldr r10,[fp,#-1700]
	add r2,r9,r10,lsr #31
	asr r9,r2,#1
	str r9,[fp,#-1712]
	ldr r9,[fp,#-1712]
	cmp r9,#0
	ldr r9,[fp,#-1712]
	and r10,r9,#1
	str r10,[fp,#-1804]
	ldr r9,[fp,#-1804]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1804]
	ldr r9,[fp,#-1804]
	cmp r9,#0
	blt .fibL3706
.fibL4607:
	ldr r9,[fp,#-1804]
	mov r10,r9
	str r10,[fp,#-1720]
.fibL3707:
	ldr r9,[fp,#-1712]
	ldr r10,[fp,#-1712]
	add r8,r9,r10,lsr #31
	asr r9,r8,#1
	str r9,[fp,#-1724]
	ldr r9,[fp,#-1724]
	cmp r9,#0
	ldr r9,[fp,#-1724]
	and r10,r9,#1
	str r10,[fp,#-1816]
	ldr r9,[fp,#-1816]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1816]
	ldr r9,[fp,#-1816]
	cmp r9,#0
	blt .fibL3708
.fibL4608:
	ldr r9,[fp,#-1816]
	mov r10,r9
	str r10,[fp,#-1732]
.fibL3709:
	ldr r9,[fp,#-1724]
	ldr r10,[fp,#-1724]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-1736]
	ldr r9,[fp,#-1736]
	cmp r9,#0
	ldr r9,[fp,#-1736]
	and r10,r9,#1
	str r10,[fp,#-1828]
	ldr r9,[fp,#-1828]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1828]
	ldr r9,[fp,#-1828]
	cmp r9,#0
	blt .fibL3710
.fibL4609:
	ldr r9,[fp,#-1828]
	mov r10,r9
	str r10,[fp,#-1744]
.fibL3711:
	ldr r9,[fp,#-1736]
	ldr r10,[fp,#-1736]
	add r3,r9,r10,lsr #31
	asr r9,r3,#1
	str r9,[fp,#-1748]
	ldr r9,[fp,#-1748]
	cmp r9,#0
	ldr r9,[fp,#-1748]
	and r10,r9,#1
	str r10,[fp,#-1840]
	ldr r9,[fp,#-1840]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1840]
	ldr r9,[fp,#-1840]
	cmp r9,#0
	blt .fibL3712
.fibL4610:
	ldr r9,[fp,#-1840]
	mov r10,r9
	str r10,[fp,#-1756]
.fibL3713:
	ldr r9,[fp,#-1748]
	ldr r10,[fp,#-1748]
	add r1,r9,r10,lsr #31
	asr r7,r1,#1
	cmp r7,#0
	and r9,r7,#1
	str r9,[fp,#-1852]
	ldr r9,[fp,#-1852]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1852]
	ldr r9,[fp,#-1852]
	cmp r9,#0
	blt .fibL3714
.fibL4611:
	ldr r9,[fp,#-1852]
	mov r10,r9
	str r10,[fp,#-1764]
.fibL3715:
	ldr r9,[fp,#-1612]
	cmp r9,#0
	ldr r9,[fp,#-1612]
	and r10,r9,#1
	str r10,[fp,#-1864]
	ldr r9,[fp,#-1864]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1864]
	ldr r9,[fp,#-1864]
	cmp r9,#0
	blt .fibL3716
.fibL4612:
	ldr r9,[fp,#-1864]
	mov r10,r9
	str r10,[fp,#-1772]
.fibL3717:
	ldr r9,[fp,#-1612]
	ldr r10,[fp,#-1612]
	add r6,r9,r10,lsr #31
	asr r9,r6,#1
	str r9,[fp,#-1776]
	ldr r9,[fp,#-1776]
	cmp r9,#0
	ldr r9,[fp,#-1776]
	and r10,r9,#1
	str r10,[fp,#-1876]
	ldr r9,[fp,#-1876]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1876]
	ldr r9,[fp,#-1876]
	cmp r9,#0
	blt .fibL3718
.fibL4613:
	ldr r9,[fp,#-1876]
	mov r10,r9
	str r10,[fp,#-1784]
.fibL3719:
	ldr r9,[fp,#-1776]
	ldr r10,[fp,#-1776]
	add r5,r9,r10,lsr #31
	asr r9,r5,#1
	str r9,[fp,#-1788]
	ldr r9,[fp,#-1788]
	cmp r9,#0
	ldr r9,[fp,#-1788]
	and r10,r9,#1
	str r10,[fp,#-1888]
	ldr r9,[fp,#-1888]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1888]
	ldr r9,[fp,#-1888]
	cmp r9,#0
	blt .fibL3720
.fibL4614:
	ldr r9,[fp,#-1888]
	mov r10,r9
	str r10,[fp,#-1796]
.fibL3721:
	ldr r9,[fp,#-1788]
	ldr r10,[fp,#-1788]
	add r4,r9,r10,lsr #31
	asr r9,r4,#1
	str r9,[fp,#-1800]
	ldr r9,[fp,#-1800]
	cmp r9,#0
	ldr r9,[fp,#-1800]
	and r10,r9,#1
	str r10,[fp,#-1900]
	ldr r9,[fp,#-1900]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1900]
	ldr r9,[fp,#-1900]
	cmp r9,#0
	blt .fibL3722
.fibL4615:
	ldr r9,[fp,#-1900]
	mov r10,r9
	str r10,[fp,#-1808]
.fibL3723:
	ldr r9,[fp,#-1800]
	ldr r10,[fp,#-1800]
	add r2,r9,r10,lsr #31
	asr r9,r2,#1
	str r9,[fp,#-1812]
	ldr r9,[fp,#-1812]
	cmp r9,#0
	ldr r9,[fp,#-1812]
	and r10,r9,#1
	str r10,[fp,#-1912]
	ldr r9,[fp,#-1912]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1912]
	ldr r9,[fp,#-1912]
	cmp r9,#0
	blt .fibL3724
.fibL4616:
	ldr r9,[fp,#-1912]
	mov r10,r9
	str r10,[fp,#-1820]
.fibL3725:
	ldr r9,[fp,#-1812]
	ldr r10,[fp,#-1812]
	add r8,r9,r10,lsr #31
	asr r9,r8,#1
	str r9,[fp,#-1824]
	ldr r9,[fp,#-1824]
	cmp r9,#0
	ldr r9,[fp,#-1824]
	and r10,r9,#1
	str r10,[fp,#-1924]
	ldr r9,[fp,#-1924]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1924]
	ldr r9,[fp,#-1924]
	cmp r9,#0
	blt .fibL3726
.fibL4617:
	ldr r9,[fp,#-1924]
	mov r10,r9
	str r10,[fp,#-1832]
.fibL3727:
	ldr r9,[fp,#-1824]
	ldr r10,[fp,#-1824]
	add r0,r9,r10,lsr #31
	asr r9,r0,#1
	str r9,[fp,#-1836]
	ldr r9,[fp,#-1836]
	cmp r9,#0
	ldr r9,[fp,#-1836]
	and r10,r9,#1
	str r10,[fp,#-1936]
	ldr r9,[fp,#-1936]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1936]
	ldr r9,[fp,#-1936]
	cmp r9,#0
	blt .fibL3728
.fibL4618:
	ldr r9,[fp,#-1936]
	mov r10,r9
	str r10,[fp,#-1844]
.fibL3729:
	ldr r9,[fp,#-1836]
	ldr r10,[fp,#-1836]
	add r3,r9,r10,lsr #31
	asr r9,r3,#1
	str r9,[fp,#-1848]
	ldr r9,[fp,#-1848]
	cmp r9,#0
	ldr r9,[fp,#-1848]
	and r10,r9,#1
	str r10,[fp,#-1944]
	ldr r9,[fp,#-1944]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-1944]
	ldr r9,[fp,#-1944]
	cmp r9,#0
	blt .fibL3730
.fibL4619:
	ldr r9,[fp,#-1944]
	mov r10,r9
	str r10,[fp,#-1856]
.fibL3731:
	ldr r9,[fp,#-1848]
	ldr r10,[fp,#-1848]
	add r1,r9,r10,lsr #31
	asr r9,r1,#1
	str r9,[fp,#-1860]
	ldr r9,[fp,#-1860]
	cmp r9,#0
	ldr r9,[fp,#-1860]
	and r10,r9,#1
	str r10,[fp,#-2128]
	ldr r9,[fp,#-2128]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-2128]
	ldr r9,[fp,#-2128]
	cmp r9,#0
	blt .fibL3732
.fibL4620:
	ldr r9,[fp,#-2128]
	mov r10,r9
	str r10,[fp,#-1868]
.fibL3733:
	ldr r9,[fp,#-1860]
	ldr r10,[fp,#-1860]
	add r7,r9,r10,lsr #31
	asr r9,r7,#1
	str r9,[fp,#-1872]
	ldr r9,[fp,#-1872]
	cmp r9,#0
	ldr r9,[fp,#-1872]
	and r10,r9,#1
	str r10,[fp,#-2156]
	ldr r9,[fp,#-2156]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-2156]
	ldr r9,[fp,#-2156]
	cmp r9,#0
	blt .fibL3734
.fibL4621:
	ldr r9,[fp,#-2156]
	mov r10,r9
	str r10,[fp,#-1880]
.fibL3735:
	ldr r9,[fp,#-1872]
	ldr r10,[fp,#-1872]
	add r6,r9,r10,lsr #31
	asr r9,r6,#1
	str r9,[fp,#-1884]
	ldr r9,[fp,#-1884]
	cmp r9,#0
	ldr r9,[fp,#-1884]
	and r10,r9,#1
	str r10,[fp,#-2172]
	ldr r9,[fp,#-2172]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-2172]
	ldr r9,[fp,#-2172]
	cmp r9,#0
	blt .fibL3736
.fibL4622:
	ldr r9,[fp,#-2172]
	mov r10,r9
	str r10,[fp,#-1892]
.fibL3737:
	ldr r9,[fp,#-1884]
	ldr r10,[fp,#-1884]
	add r5,r9,r10,lsr #31
	asr r9,r5,#1
	str r9,[fp,#-1896]
	ldr r9,[fp,#-1896]
	cmp r9,#0
	ldr r9,[fp,#-1896]
	and r10,r9,#1
	str r10,[fp,#-2216]
	ldr r9,[fp,#-2216]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-2216]
	ldr r9,[fp,#-2216]
	cmp r9,#0
	blt .fibL3738
.fibL4623:
	ldr r9,[fp,#-2216]
	mov r10,r9
	str r10,[fp,#-1904]
.fibL3739:
	ldr r9,[fp,#-1896]
	ldr r10,[fp,#-1896]
	add r4,r9,r10,lsr #31
	asr r9,r4,#1
	str r9,[fp,#-1908]
	ldr r9,[fp,#-1908]
	cmp r9,#0
	ldr r9,[fp,#-1908]
	and r10,r9,#1
	str r10,[fp,#-2244]
	ldr r9,[fp,#-2244]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-2244]
	ldr r9,[fp,#-2244]
	cmp r9,#0
	blt .fibL3740
.fibL4624:
	ldr r9,[fp,#-2244]
	mov r10,r9
	str r10,[fp,#-1916]
.fibL3741:
	ldr r9,[fp,#-1908]
	ldr r10,[fp,#-1908]
	add r2,r9,r10,lsr #31
	asr r9,r2,#1
	str r9,[fp,#-1920]
	ldr r9,[fp,#-1920]
	cmp r9,#0
	ldr r9,[fp,#-1920]
	and r10,r9,#1
	str r10,[fp,#-2260]
	ldr r9,[fp,#-2260]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-2260]
	ldr r9,[fp,#-2260]
	cmp r9,#0
	blt .fibL3742
.fibL4625:
	ldr r9,[fp,#-2260]
	mov r10,r9
	str r10,[fp,#-1928]
.fibL3743:
	ldr r9,[fp,#-1920]
	ldr r10,[fp,#-1920]
	add r8,r9,r10,lsr #31
	asr r9,r8,#1
	str r9,[fp,#-1932]
	ldr r9,[fp,#-1932]
	cmp r9,#0
	ldr r9,[fp,#-1932]
	and r10,r9,#1
	str r10,[fp,#-2288]
	ldr r9,[fp,#-2288]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-2288]
	ldr r9,[fp,#-2288]
	cmp r9,#0
	blt .fibL3744
.fibL4626:
	ldr r9,[fp,#-2288]
	mov r10,r9
	str r10,[fp,#-1940]
.fibL3745:
	ldr r9,[fp,#-1932]
	ldr r10,[fp,#-1932]
	add r0,r9,r10,lsr #31
	asr r3,r0,#1
	cmp r3,#0
	and r9,r3,#1
	str r9,[fp,#-2304]
	ldr r9,[fp,#-2304]
	it lt
	rsblt r10,r9,#0
	it lt
	strlt r10,[fp,#-2304]
	ldr r9,[fp,#-2304]
	cmp r9,#0
	blt .fibL3746
.fibL4627:
	ldr r9,[fp,#-2304]
	mov r10,r9
	str r10,[fp,#-1948]
.fibL3747:
	ldr r9,[fp,#-1616]
	cmp r9,#0
	beq .fibL3751
.fibL3748:
	mov r9,#1
	str r9,[fp,#-1952]
.fibL3750:
	ldr r9,[fp,#-1616]
	cmp r9,#0
	bne .fibL3756
.fibL3754:
	mov r9,#0
	str r9,[fp,#-1956]
.fibL3755:
	ldr r9,[fp,#-1956]
	cmp r9,#0
	beq .fibL3758
.fibL3759:
	mov r9,#0
	str r9,[fp,#-1960]
.fibL3760:
	ldr r9,[fp,#-1952]
	cmp r9,#0
	bne .fibL3764
.fibL3762:
	mov r9,#0
	str r9,[fp,#-1964]
.fibL3763:
	ldr r9,[fp,#-1964]
	cmp r9,#0
	beq .fibL3769
.fibL3766:
	mov r9,#1
	str r9,[fp,#-1968]
.fibL3768:
	ldr r9,[fp,#-1964]
	cmp r9,#0
	bne .fibL3774
.fibL3772:
.fibL3773:
.fibL3776:
.fibL3778:
	ldr r9,[fp,#-1968]
	cmp r9,#0
	bne .fibL3782
.fibL3780:
	mov r9,#0
	str r9,[fp,#-1972]
.fibL3781:
	ldr r9,[fp,#-1616]
	cmp r9,#0
	bne .fibL3787
.fibL3785:
	mov r9,#0
	str r9,[fp,#-1976]
.fibL3786:
	ldr r9,[fp,#-1964]
	cmp r9,#0
	bne .fibL3792
.fibL3790:
.fibL3791:
	ldr r9,[fp,#-1976]
	cmp r9,#0
	beq .fibL3797
.fibL3794:
	mov r9,#1
	str r9,[fp,#-1980]
.fibL3796:
	ldr r9,[fp,#-1624]
	cmp r9,#0
	beq .fibL3802
.fibL3799:
	mov r9,#1
	str r9,[fp,#-1984]
.fibL3801:
	ldr r9,[fp,#-1624]
	cmp r9,#0
	bne .fibL3807
.fibL3805:
	mov r9,#0
	str r9,[fp,#-1988]
.fibL3806:
	ldr r9,[fp,#-1988]
	cmp r9,#0
	beq .fibL3809
.fibL3810:
	mov r9,#0
	str r9,[fp,#-1992]
.fibL3811:
	ldr r9,[fp,#-1984]
	cmp r9,#0
	bne .fibL3815
.fibL3813:
	mov r9,#0
	str r9,[fp,#-1996]
.fibL3814:
	ldr r9,[fp,#-1996]
	cmp r9,#0
	beq .fibL3820
.fibL3817:
	mov r9,#1
	str r9,[fp,#-2000]
.fibL3819:
	ldr r9,[fp,#-1996]
	cmp r9,#0
	bne .fibL3825
.fibL3823:
	mov r9,#0
	str r9,[fp,#-2004]
.fibL3824:
	ldr r9,[fp,#-2004]
	cmp r9,#0
	beq .fibL3827
.fibL3828:
	mov r9,#0
	str r9,[fp,#-2008]
.fibL3829:
	ldr r9,[fp,#-2000]
	cmp r9,#0
	bne .fibL3833
.fibL3831:
	mov r9,#0
	str r9,[fp,#-2012]
.fibL3832:
	ldr r9,[fp,#-1624]
	cmp r9,#0
	bne .fibL3838
.fibL3836:
	mov r9,#0
	str r9,[fp,#-2016]
.fibL3837:
	ldr r9,[fp,#-1996]
	cmp r9,#0
	bne .fibL3843
.fibL3841:
	mov r9,#0
	str r9,[fp,#-2020]
.fibL3842:
	ldr r9,[fp,#-2016]
	cmp r9,#0
	beq .fibL3848
.fibL3845:
	mov r9,#1
	str r9,[fp,#-2024]
.fibL3847:
	ldr r9,[fp,#-1632]
	cmp r9,#0
	beq .fibL3853
.fibL3850:
	mov r9,#1
	str r9,[fp,#-2028]
.fibL3852:
	ldr r9,[fp,#-1632]
	cmp r9,#0
	bne .fibL3858
.fibL3856:
	mov r9,#0
	str r9,[fp,#-2032]
.fibL3857:
	ldr r9,[fp,#-2032]
	cmp r9,#0
	beq .fibL3860
.fibL3861:
	mov r9,#0
	str r9,[fp,#-2036]
.fibL3862:
	ldr r9,[fp,#-2028]
	cmp r9,#0
	bne .fibL3866
.fibL3864:
	mov r9,#0
	str r9,[fp,#-2040]
.fibL3865:
	ldr r9,[fp,#-2040]
	cmp r9,#0
	beq .fibL3871
.fibL3868:
	mov r9,#1
	str r9,[fp,#-2044]
.fibL3870:
	ldr r9,[fp,#-2040]
	cmp r9,#0
	bne .fibL3876
.fibL3874:
	mov r9,#0
	str r9,[fp,#-2048]
.fibL3875:
	ldr r9,[fp,#-2048]
	cmp r9,#0
	beq .fibL3878
.fibL3879:
	mov r9,#0
	str r9,[fp,#-2052]
.fibL3880:
	ldr r9,[fp,#-2044]
	cmp r9,#0
	bne .fibL3884
.fibL3882:
	mov r9,#0
	str r9,[fp,#-2056]
.fibL3883:
	ldr r9,[fp,#-1632]
	cmp r9,#0
	bne .fibL3889
.fibL3887:
	mov r9,#0
	str r9,[fp,#-2060]
.fibL3888:
	ldr r9,[fp,#-2040]
	cmp r9,#0
	bne .fibL3894
.fibL3892:
	mov r9,#0
	str r9,[fp,#-2064]
.fibL3893:
	ldr r9,[fp,#-2060]
	cmp r9,#0
	beq .fibL3899
.fibL3896:
	mov r9,#1
	str r9,[fp,#-2068]
.fibL3898:
	ldr r9,[fp,#-1640]
	cmp r9,#0
	beq .fibL3904
.fibL3901:
	mov r9,#1
	str r9,[fp,#-2072]
.fibL3903:
	ldr r9,[fp,#-1640]
	cmp r9,#0
	bne .fibL3909
.fibL3907:
	mov r9,#0
	str r9,[fp,#-2076]
.fibL3908:
	ldr r9,[fp,#-2076]
	cmp r9,#0
	beq .fibL3911
.fibL3912:
	mov r9,#0
	str r9,[fp,#-2080]
.fibL3913:
	ldr r9,[fp,#-2072]
	cmp r9,#0
	bne .fibL3917
.fibL3915:
	mov r9,#0
	str r9,[fp,#-2084]
.fibL3916:
	ldr r9,[fp,#-2084]
	cmp r9,#0
	beq .fibL3922
.fibL3919:
	mov r9,#1
	str r9,[fp,#-2088]
.fibL3921:
	ldr r9,[fp,#-2084]
	cmp r9,#0
	bne .fibL3927
.fibL3925:
	mov r9,#0
	str r9,[fp,#-2092]
.fibL3926:
	ldr r9,[fp,#-2092]
	cmp r9,#0
	beq .fibL3929
.fibL3930:
	mov r9,#0
	str r9,[fp,#-2096]
.fibL3931:
	ldr r9,[fp,#-2088]
	cmp r9,#0
	bne .fibL3935
.fibL3933:
	mov r9,#0
	str r9,[fp,#-2100]
.fibL3934:
	ldr r9,[fp,#-1640]
	cmp r9,#0
	bne .fibL3940
.fibL3938:
	mov r9,#0
	str r9,[fp,#-2104]
.fibL3939:
	ldr r9,[fp,#-2084]
	cmp r9,#0
	bne .fibL3945
.fibL3943:
	mov r9,#0
	str r9,[fp,#-2108]
.fibL3944:
	ldr r9,[fp,#-2104]
	cmp r9,#0
	beq .fibL3950
.fibL3947:
	mov r9,#1
	str r9,[fp,#-2112]
.fibL3949:
	ldr r9,[fp,#-1648]
	cmp r9,#0
	beq .fibL3955
.fibL3952:
	mov r9,#1
	str r9,[fp,#-2116]
.fibL3954:
	ldr r9,[fp,#-1648]
	cmp r9,#0
	bne .fibL3960
.fibL3958:
	mov r9,#0
	str r9,[fp,#-2120]
.fibL3959:
	ldr r9,[fp,#-2120]
	cmp r9,#0
	beq .fibL3962
.fibL3963:
	mov r9,#0
	str r9,[fp,#-2124]
.fibL3964:
	ldr r9,[fp,#-2116]
	cmp r9,#0
	bne .fibL3968
.fibL3966:
	mov r9,#0
	str r9,[fp,#-2200]
.fibL3967:
	ldr r9,[fp,#-2200]
	cmp r9,#0
	beq .fibL3973
.fibL3970:
	mov r9,#1
	str r9,[fp,#-2132]
.fibL3972:
	ldr r9,[fp,#-2200]
	cmp r9,#0
	bne .fibL3978
.fibL3976:
	mov r9,#0
	str r9,[fp,#-2136]
.fibL3977:
	ldr r9,[fp,#-2136]
	cmp r9,#0
	beq .fibL3980
.fibL3981:
	mov r9,#0
	str r9,[fp,#-2140]
.fibL3982:
	ldr r9,[fp,#-2132]
	cmp r9,#0
	bne .fibL3986
.fibL3984:
	mov r9,#0
	str r9,[fp,#-2144]
.fibL3985:
	ldr r9,[fp,#-1648]
	cmp r9,#0
	bne .fibL3991
.fibL3989:
	mov r9,#0
	str r9,[fp,#-2148]
.fibL3990:
	ldr r9,[fp,#-2200]
	cmp r9,#0
	bne .fibL3996
.fibL3994:
	mov r9,#0
	str r9,[fp,#-2152]
.fibL3995:
	ldr r9,[fp,#-2148]
	cmp r9,#0
	beq .fibL4001
.fibL3998:
	mov r9,#1
	str r9,[fp,#-2332]
.fibL4000:
	ldr r9,[fp,#-1656]
	cmp r9,#0
	beq .fibL4006
.fibL4003:
	mov r9,#1
	str r9,[fp,#-2160]
.fibL4005:
	ldr r9,[fp,#-1656]
	cmp r9,#0
	bne .fibL4011
.fibL4009:
	mov r9,#0
	str r9,[fp,#-2164]
.fibL4010:
	ldr r9,[fp,#-2164]
	cmp r9,#0
	beq .fibL4013
.fibL4014:
	mov r9,#0
	str r9,[fp,#-2168]
.fibL4015:
	ldr r9,[fp,#-2160]
	cmp r9,#0
	bne .fibL4019
.fibL4017:
	mov r9,#0
	str r9,[fp,#-2348]
.fibL4018:
	ldr r9,[fp,#-2348]
	cmp r9,#0
	beq .fibL4024
.fibL4021:
	mov r9,#1
	str r9,[fp,#-2176]
.fibL4023:
	ldr r9,[fp,#-2348]
	cmp r9,#0
	bne .fibL4029
.fibL4027:
	mov r9,#0
	str r9,[fp,#-2180]
.fibL4028:
	ldr r9,[fp,#-2180]
	cmp r9,#0
	beq .fibL4031
.fibL4032:
	mov r9,#0
	str r9,[fp,#-2184]
.fibL4033:
	ldr r9,[fp,#-2176]
	cmp r9,#0
	bne .fibL4037
.fibL4035:
	mov r9,#0
	str r9,[fp,#-2188]
.fibL4036:
	ldr r9,[fp,#-1656]
	cmp r9,#0
	bne .fibL4042
.fibL4040:
	mov r9,#0
	str r9,[fp,#-2192]
.fibL4041:
	ldr r9,[fp,#-2348]
	cmp r9,#0
	bne .fibL4047
.fibL4045:
	mov r9,#0
	str r9,[fp,#-2196]
.fibL4046:
	ldr r9,[fp,#-2192]
	cmp r9,#0
	beq .fibL4052
.fibL4049:
	mov r9,#1
	str r9,[fp,#-2376]
.fibL4051:
	ldr r9,[fp,#-1664]
	cmp r9,#0
	beq .fibL4057
.fibL4054:
	mov r9,#1
	str r9,[fp,#-2204]
.fibL4056:
	ldr r9,[fp,#-1664]
	cmp r9,#0
	bne .fibL4062
.fibL4060:
	mov r9,#0
	str r9,[fp,#-2208]
.fibL4061:
	ldr r9,[fp,#-2208]
	cmp r9,#0
	beq .fibL4064
.fibL4065:
	mov r9,#0
	str r9,[fp,#-2212]
.fibL4066:
	ldr r9,[fp,#-2204]
	cmp r9,#0
	bne .fibL4070
.fibL4068:
	mov r9,#0
	str r9,[fp,#-2392]
.fibL4069:
	ldr r9,[fp,#-2392]
	cmp r9,#0
	beq .fibL4075
.fibL4072:
	mov r9,#1
	str r9,[fp,#-2220]
.fibL4074:
	ldr r9,[fp,#-2392]
	cmp r9,#0
	bne .fibL4080
.fibL4078:
	mov r9,#0
	str r9,[fp,#-2224]
.fibL4079:
	ldr r9,[fp,#-2224]
	cmp r9,#0
	beq .fibL4082
.fibL4083:
	mov r9,#0
	str r9,[fp,#-2228]
.fibL4084:
	ldr r9,[fp,#-2220]
	cmp r9,#0
	bne .fibL4088
.fibL4086:
	mov r9,#0
	str r9,[fp,#-2232]
.fibL4087:
	ldr r9,[fp,#-1664]
	cmp r9,#0
	bne .fibL4093
.fibL4091:
	mov r9,#0
	str r9,[fp,#-2236]
.fibL4092:
	ldr r9,[fp,#-2392]
	cmp r9,#0
	bne .fibL4098
.fibL4096:
	mov r9,#0
	str r9,[fp,#-2240]
.fibL4097:
	ldr r9,[fp,#-2236]
	cmp r9,#0
	beq .fibL4103
.fibL4100:
	mov r9,#1
	str r9,[fp,#-2412]
.fibL4102:
	ldr r9,[fp,#-1672]
	cmp r9,#0
	beq .fibL4108
.fibL4105:
	mov r9,#1
	str r9,[fp,#-2248]
.fibL4107:
	ldr r9,[fp,#-1672]
	cmp r9,#0
	bne .fibL4113
.fibL4111:
	mov r9,#0
	str r9,[fp,#-2252]
.fibL4112:
	ldr r9,[fp,#-2252]
	cmp r9,#0
	beq .fibL4115
.fibL4116:
	mov r9,#0
	str r9,[fp,#-2256]
.fibL4117:
	ldr r9,[fp,#-2248]
	cmp r9,#0
	bne .fibL4121
.fibL4119:
	mov r9,#0
	str r9,[fp,#-2424]
.fibL4120:
	ldr r9,[fp,#-2424]
	cmp r9,#0
	beq .fibL4126
.fibL4123:
	mov r9,#1
	str r9,[fp,#-2264]
.fibL4125:
	ldr r9,[fp,#-2424]
	cmp r9,#0
	bne .fibL4131
.fibL4129:
	mov r9,#0
	str r9,[fp,#-2268]
.fibL4130:
	ldr r9,[fp,#-2268]
	cmp r9,#0
	beq .fibL4133
.fibL4134:
	mov r9,#0
	str r9,[fp,#-2272]
.fibL4135:
	ldr r9,[fp,#-2264]
	cmp r9,#0
	bne .fibL4139
.fibL4137:
	mov r9,#0
	str r9,[fp,#-2276]
.fibL4138:
	ldr r9,[fp,#-1672]
	cmp r9,#0
	bne .fibL4144
.fibL4142:
	mov r9,#0
	str r9,[fp,#-2280]
.fibL4143:
	ldr r9,[fp,#-2424]
	cmp r9,#0
	bne .fibL4149
.fibL4147:
	mov r9,#0
	str r9,[fp,#-2284]
.fibL4148:
	ldr r9,[fp,#-2280]
	cmp r9,#0
	beq .fibL4154
.fibL4151:
	mov r9,#1
	str r9,[fp,#-2440]
.fibL4153:
	ldr r9,[fp,#-1684]
	cmp r9,#0
	beq .fibL4159
.fibL4156:
	mov r9,#1
	str r9,[fp,#-2292]
.fibL4158:
	ldr r9,[fp,#-1684]
	cmp r9,#0
	bne .fibL4164
.fibL4162:
	mov r9,#0
	str r9,[fp,#-2296]
.fibL4163:
	ldr r9,[fp,#-2296]
	cmp r9,#0
	beq .fibL4166
.fibL4167:
	mov r9,#0
	str r9,[fp,#-2300]
.fibL4168:
	ldr r9,[fp,#-2292]
	cmp r9,#0
	bne .fibL4172
.fibL4170:
	mov r9,#0
	str r9,[fp,#-2452]
.fibL4171:
	ldr r9,[fp,#-2452]
	cmp r9,#0
	beq .fibL4177
.fibL4174:
	mov r9,#1
	str r9,[fp,#-2308]
.fibL4176:
	ldr r9,[fp,#-2452]
	cmp r9,#0
	bne .fibL4182
.fibL4180:
	mov r9,#0
	str r9,[fp,#-2312]
.fibL4181:
	ldr r9,[fp,#-2312]
	cmp r9,#0
	beq .fibL4184
.fibL4185:
	mov r9,#0
	str r9,[fp,#-2316]
.fibL4186:
	ldr r9,[fp,#-2308]
	cmp r9,#0
	bne .fibL4190
.fibL4188:
	mov r9,#0
	str r9,[fp,#-2320]
.fibL4189:
	ldr r9,[fp,#-1684]
	cmp r9,#0
	bne .fibL4195
.fibL4193:
	mov r9,#0
	str r9,[fp,#-2324]
.fibL4194:
	ldr r9,[fp,#-2452]
	cmp r9,#0
	bne .fibL4200
.fibL4198:
	mov r9,#0
	str r9,[fp,#-2328]
.fibL4199:
	ldr r9,[fp,#-2324]
	cmp r9,#0
	beq .fibL4205
.fibL4202:
	mov r9,#1
	str r9,[fp,#-2472]
.fibL4204:
	ldr r9,[fp,#-1696]
	cmp r9,#0
	beq .fibL4210
.fibL4207:
	mov r9,#1
	str r9,[fp,#-2336]
.fibL4209:
	ldr r9,[fp,#-1696]
	cmp r9,#0
	bne .fibL4215
.fibL4213:
	mov r9,#0
	str r9,[fp,#-2340]
.fibL4214:
	ldr r9,[fp,#-2340]
	cmp r9,#0
	beq .fibL4217
.fibL4218:
	mov r9,#0
	str r9,[fp,#-2344]
.fibL4219:
	ldr r9,[fp,#-2336]
	cmp r9,#0
	bne .fibL4223
.fibL4221:
	mov r9,#0
	str r9,[fp,#-2480]
.fibL4222:
	ldr r9,[fp,#-2480]
	cmp r9,#0
	beq .fibL4228
.fibL4225:
	mov r9,#1
	str r9,[fp,#-2352]
.fibL4227:
	ldr r9,[fp,#-2480]
	cmp r9,#0
	bne .fibL4233
.fibL4231:
	mov r9,#0
	str r9,[fp,#-2356]
.fibL4232:
	ldr r9,[fp,#-2356]
	cmp r9,#0
	beq .fibL4235
.fibL4236:
	mov r9,#0
	str r9,[fp,#-2360]
.fibL4237:
	ldr r9,[fp,#-2352]
	cmp r9,#0
	bne .fibL4241
.fibL4239:
	mov r9,#0
	str r9,[fp,#-2364]
.fibL4240:
	ldr r9,[fp,#-1696]
	cmp r9,#0
	bne .fibL4246
.fibL4244:
	mov r9,#0
	str r9,[fp,#-2368]
.fibL4245:
	ldr r9,[fp,#-2480]
	cmp r9,#0
	bne .fibL4251
.fibL4249:
	mov r9,#0
	str r9,[fp,#-2372]
.fibL4250:
	ldr r9,[fp,#-2368]
	cmp r9,#0
	beq .fibL4256
.fibL4253:
	mov r9,#1
	str r9,[fp,#-2500]
.fibL4255:
	ldr r9,[fp,#-1708]
	cmp r9,#0
	beq .fibL4261
.fibL4258:
	mov r9,#1
	str r9,[fp,#-2380]
.fibL4260:
	ldr r9,[fp,#-1708]
	cmp r9,#0
	bne .fibL4266
.fibL4264:
	mov r9,#0
	str r9,[fp,#-2384]
.fibL4265:
	ldr r9,[fp,#-2384]
	cmp r9,#0
	beq .fibL4268
.fibL4269:
	mov r9,#0
	str r9,[fp,#-2388]
.fibL4270:
	ldr r9,[fp,#-2380]
	cmp r9,#0
	bne .fibL4274
.fibL4272:
	mov r9,#0
	str r9,[fp,#-2512]
.fibL4273:
	ldr r9,[fp,#-2512]
	cmp r9,#0
	beq .fibL4279
.fibL4276:
	mov r9,#1
	str r9,[fp,#-2396]
.fibL4278:
	ldr r9,[fp,#-2512]
	cmp r9,#0
	bne .fibL4284
.fibL4282:
	mov r9,#0
	str r9,[fp,#-2400]
.fibL4283:
	ldr r9,[fp,#-2400]
	cmp r9,#0
	beq .fibL4286
.fibL4287:
	mov r9,#0
	str r9,[fp,#-2404]
.fibL4288:
	ldr r9,[fp,#-2396]
	cmp r9,#0
	bne .fibL4292
.fibL4290:
	mov r9,#0
	str r9,[fp,#-2408]
.fibL4291:
	ldr r9,[fp,#-1708]
	cmp r9,#0
	bne .fibL4297
.fibL4295:
	mov r9,#0
	str r9,[fp,#-2416]
.fibL4296:
	ldr r9,[fp,#-2512]
	cmp r9,#0
	bne .fibL4302
.fibL4300:
	mov r9,#0
	str r9,[fp,#-2420]
.fibL4301:
	ldr r9,[fp,#-2416]
	cmp r9,#0
	beq .fibL4307
.fibL4304:
	mov r9,#1
	str r9,[fp,#-2528]
.fibL4306:
	ldr r9,[fp,#-1720]
	cmp r9,#0
	beq .fibL4312
.fibL4309:
	mov r9,#1
	str r9,[fp,#-2428]
.fibL4311:
	ldr r9,[fp,#-1720]
	cmp r9,#0
	bne .fibL4317
.fibL4315:
	mov r9,#0
	str r9,[fp,#-2432]
.fibL4316:
	ldr r9,[fp,#-2432]
	cmp r9,#0
	beq .fibL4319
.fibL4320:
	mov r9,#0
	str r9,[fp,#-2436]
.fibL4321:
	ldr r9,[fp,#-2428]
	cmp r9,#0
	bne .fibL4325
.fibL4323:
	mov r9,#0
	str r9,[fp,#-2540]
.fibL4324:
	ldr r9,[fp,#-2540]
	cmp r9,#0
	beq .fibL4330
.fibL4327:
	mov r9,#1
	str r9,[fp,#-2444]
.fibL4329:
	ldr r9,[fp,#-2540]
	cmp r9,#0
	bne .fibL4335
.fibL4333:
	mov r9,#0
	str r9,[fp,#-2448]
.fibL4334:
	ldr r9,[fp,#-2448]
	cmp r9,#0
	beq .fibL4337
.fibL4338:
	mov r9,#0
	str r9,[fp,#-2456]
.fibL4339:
	ldr r9,[fp,#-2444]
	cmp r9,#0
	bne .fibL4343
.fibL4341:
	mov r9,#0
	str r9,[fp,#-2460]
.fibL4342:
	ldr r9,[fp,#-1720]
	cmp r9,#0
	bne .fibL4348
.fibL4346:
	mov r9,#0
	str r9,[fp,#-2464]
.fibL4347:
	ldr r9,[fp,#-2540]
	cmp r9,#0
	bne .fibL4353
.fibL4351:
	mov r9,#0
	str r9,[fp,#-2468]
.fibL4352:
	ldr r9,[fp,#-2464]
	cmp r9,#0
	beq .fibL4358
.fibL4355:
	mov r9,#1
	str r9,[fp,#-2560]
.fibL4357:
	ldr r9,[fp,#-1732]
	cmp r9,#0
	beq .fibL4363
.fibL4360:
	mov r9,#1
	str r9,[fp,#-2476]
.fibL4362:
	ldr r9,[fp,#-1732]
	cmp r9,#0
	bne .fibL4368
.fibL4366:
	mov r9,#0
	str r9,[fp,#-2484]
.fibL4367:
	ldr r9,[fp,#-2484]
	cmp r9,#0
	beq .fibL4370
.fibL4371:
	mov r9,#0
	str r9,[fp,#-2488]
.fibL4372:
	ldr r9,[fp,#-2476]
	cmp r9,#0
	bne .fibL4376
.fibL4374:
	mov r9,#0
	str r9,[fp,#-2572]
.fibL4375:
	ldr r9,[fp,#-2572]
	cmp r9,#0
	beq .fibL4381
.fibL4378:
	mov r9,#1
	str r9,[fp,#-2492]
.fibL4380:
	ldr r9,[fp,#-2572]
	cmp r9,#0
	bne .fibL4386
.fibL4384:
	mov r9,#0
	str r9,[fp,#-2496]
.fibL4385:
	ldr r9,[fp,#-2496]
	cmp r9,#0
	beq .fibL4388
.fibL4389:
	mov r9,#0
	str r9,[fp,#-2504]
.fibL4390:
	ldr r9,[fp,#-2492]
	cmp r9,#0
	bne .fibL4394
.fibL4392:
	mov r9,#0
	str r9,[fp,#-2508]
.fibL4393:
	ldr r9,[fp,#-1732]
	cmp r9,#0
	bne .fibL4399
.fibL4397:
	mov r9,#0
	str r9,[fp,#-2516]
.fibL4398:
	ldr r9,[fp,#-2572]
	cmp r9,#0
	bne .fibL4404
.fibL4402:
	mov r9,#0
	str r9,[fp,#-2520]
.fibL4403:
	ldr r9,[fp,#-2516]
	cmp r9,#0
	beq .fibL4409
.fibL4406:
	mov r9,#1
	str r9,[fp,#-2588]
.fibL4408:
	ldr r9,[fp,#-1744]
	cmp r9,#0
	beq .fibL4414
.fibL4411:
	mov r9,#1
	str r9,[fp,#-2524]
.fibL4413:
	ldr r9,[fp,#-1744]
	cmp r9,#0
	bne .fibL4419
.fibL4417:
	mov r9,#0
	str r9,[fp,#-2532]
.fibL4418:
	ldr r9,[fp,#-2532]
	cmp r9,#0
	beq .fibL4421
.fibL4422:
	mov r9,#0
	str r9,[fp,#-2536]
.fibL4423:
	ldr r9,[fp,#-2524]
	cmp r9,#0
	bne .fibL4427
.fibL4425:
	mov r9,#0
	str r9,[fp,#-2600]
.fibL4426:
	ldr r9,[fp,#-2600]
	cmp r9,#0
	beq .fibL4432
.fibL4429:
	mov r9,#1
	str r9,[fp,#-2544]
.fibL4431:
	ldr r9,[fp,#-2600]
	cmp r9,#0
	bne .fibL4437
.fibL4435:
	mov r9,#0
	str r9,[fp,#-2548]
.fibL4436:
	ldr r9,[fp,#-2548]
	cmp r9,#0
	beq .fibL4439
.fibL4440:
	mov r9,#0
	str r9,[fp,#-2552]
.fibL4441:
	ldr r9,[fp,#-2544]
	cmp r9,#0
	bne .fibL4445
.fibL4443:
	mov r9,#0
	str r9,[fp,#-2556]
.fibL4444:
	ldr r9,[fp,#-1744]
	cmp r9,#0
	bne .fibL4450
.fibL4448:
	mov r9,#0
	str r9,[fp,#-2564]
.fibL4449:
	ldr r9,[fp,#-2600]
	cmp r9,#0
	bne .fibL4455
.fibL4453:
	mov r9,#0
	str r9,[fp,#-2568]
.fibL4454:
	ldr r9,[fp,#-2564]
	cmp r9,#0
	beq .fibL4460
.fibL4457:
	mov r9,#1
	str r9,[fp,#-2620]
.fibL4459:
	ldr r9,[fp,#-1756]
	cmp r9,#0
	beq .fibL4465
.fibL4462:
	mov r9,#1
	str r9,[fp,#-2576]
.fibL4464:
	ldr r9,[fp,#-1756]
	cmp r9,#0
	bne .fibL4470
.fibL4468:
	mov r9,#0
	str r9,[fp,#-2580]
.fibL4469:
	ldr r9,[fp,#-2580]
	cmp r9,#0
	beq .fibL4472
.fibL4473:
	mov r9,#0
	str r9,[fp,#-2584]
.fibL4474:
	ldr r9,[fp,#-2576]
	cmp r9,#0
	bne .fibL4478
.fibL4476:
	mov r9,#0
	str r9,[fp,#-2628]
.fibL4477:
	ldr r9,[fp,#-2628]
	cmp r9,#0
	beq .fibL4483
.fibL4480:
	mov r9,#1
	str r9,[fp,#-2592]
.fibL4482:
	ldr r9,[fp,#-2628]
	cmp r9,#0
	bne .fibL4488
.fibL4486:
	mov r9,#0
	str r9,[fp,#-2596]
.fibL4487:
	ldr r9,[fp,#-2596]
	cmp r9,#0
	beq .fibL4490
.fibL4491:
	mov r9,#0
	str r9,[fp,#-2604]
.fibL4492:
	ldr r9,[fp,#-2592]
	cmp r9,#0
	bne .fibL4496
.fibL4494:
	mov r9,#0
	str r9,[fp,#-2608]
.fibL4495:
	ldr r9,[fp,#-1756]
	cmp r9,#0
	bne .fibL4501
.fibL4499:
	mov r9,#0
	str r9,[fp,#-2612]
.fibL4500:
	ldr r9,[fp,#-2628]
	cmp r9,#0
	bne .fibL4506
.fibL4504:
	mov r9,#0
	str r9,[fp,#-2616]
.fibL4505:
	ldr r9,[fp,#-2612]
	cmp r9,#0
	beq .fibL4511
.fibL4508:
	mov r1,#1
.fibL4510:
	ldr r9,[fp,#-1764]
	cmp r9,#0
	beq .fibL4516
.fibL4513:
	mov r9,#1
	str r9,[fp,#-2624]
.fibL4515:
	ldr r9,[fp,#-1764]
	cmp r9,#0
	bne .fibL4521
.fibL4519:
	mov r9,#0
	str r9,[fp,#-2632]
.fibL4520:
	ldr r9,[fp,#-2632]
	cmp r9,#0
	beq .fibL4523
.fibL4524:
	mov r9,#0
	str r9,[fp,#-2636]
.fibL4525:
	ldr r9,[fp,#-2624]
	cmp r9,#0
	bne .fibL4529
.fibL4527:
	mov r5,#0
.fibL4528:
	cmp r5,#0
	beq .fibL4534
.fibL4531:
	mov r9,#1
	str r9,[fp,#-2640]
.fibL4533:
	cmp r5,#0
	bne .fibL4539
.fibL4537:
	mov r0,#0
.fibL4538:
	cmp r0,#0
	beq .fibL4541
.fibL4542:
	mov r3,#0
.fibL4543:
	ldr r9,[fp,#-2640]
	cmp r9,#0
	bne .fibL4547
.fibL4545:
	mov r8,#0
.fibL4546:
	ldr r9,[fp,#-1764]
	cmp r9,#0
	bne .fibL4552
.fibL4550:
	mov r4,#0
.fibL4551:
	cmp r5,#0
	bne .fibL4557
.fibL4555:
	mov r7,#0
.fibL4556:
	cmp r4,#0
	beq .fibL4562
.fibL4559:
.fibL4561:
	mov r6,r8
	lsl r2,r6,#1
	ldr r9,[fp,#-2608]
	add r6,r2,r9
	lsl r2,r6,#1
	ldr r9,[fp,#-2556]
	add r6,r2,r9
	lsl r2,r6,#1
	ldr r9,[fp,#-2508]
	add r6,r2,r9
	lsl r2,r6,#1
	ldr r9,[fp,#-2460]
	add r6,r2,r9
	lsl r2,r6,#1
	ldr r9,[fp,#-2408]
	add r6,r2,r9
	lsl r2,r6,#1
	ldr r9,[fp,#-2364]
	add r6,r2,r9
	lsl r2,r6,#1
	ldr r9,[fp,#-2320]
	add r6,r2,r9
	lsl r2,r6,#1
	ldr r9,[fp,#-2276]
	add r6,r2,r9
	lsl r2,r6,#1
	ldr r9,[fp,#-2232]
	add r6,r2,r9
	lsl r2,r6,#1
	ldr r9,[fp,#-2188]
	add r6,r2,r9
	lsl r2,r6,#1
	ldr r9,[fp,#-2144]
	add r6,r2,r9
	lsl r2,r6,#1
	ldr r9,[fp,#-2100]
	add r6,r2,r9
	lsl r2,r6,#1
	ldr r9,[fp,#-2056]
	add r6,r2,r9
	lsl r2,r6,#1
	ldr r9,[fp,#-2012]
	add r6,r2,r9
	lsl r2,r6,#1
	ldr r9,[fp,#-1972]
	add r6,r2,r9
	mov r0,r6
	mov r9,#2640
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
.fibL4562:
	cmp r7,#0
	bne .fibL4559
.fibL4560:
	bl .fibL4561
.fibL4557:
	cmp r1,#0
	beq .fibL4555
.fibL4554:
	mov r7,#1
	bl .fibL4556
.fibL4552:
	ldr r9,[fp,#-1948]
	cmp r9,#0
	beq .fibL4550
.fibL4549:
	mov r4,#1
	bl .fibL4551
.fibL4547:
	cmp r3,#0
	beq .fibL4545
.fibL4544:
	mov r8,#1
	bl .fibL4546
.fibL4541:
	mov r3,#1
	bl .fibL4543
.fibL4539:
	cmp r1,#0
	beq .fibL4537
.fibL4536:
	mov r0,#1
	bl .fibL4538
.fibL4534:
	cmp r1,#0
	bne .fibL4531
.fibL4532:
	mov r9,#0
	str r9,[fp,#-2640]
	bl .fibL4533
.fibL4529:
	ldr r9,[fp,#-2636]
	cmp r9,#0
	beq .fibL4527
.fibL4526:
	mov r5,#1
	bl .fibL4528
.fibL4523:
	mov r9,#1
	str r9,[fp,#-2636]
	bl .fibL4525
.fibL4521:
	ldr r9,[fp,#-1948]
	cmp r9,#0
	beq .fibL4519
.fibL4518:
	mov r9,#1
	str r9,[fp,#-2632]
	bl .fibL4520
.fibL4516:
	ldr r9,[fp,#-1948]
	cmp r9,#0
	bne .fibL4513
.fibL4514:
	mov r9,#0
	str r9,[fp,#-2624]
	bl .fibL4515
.fibL4511:
	ldr r9,[fp,#-2616]
	cmp r9,#0
	bne .fibL4508
.fibL4509:
	mov r1,#0
	bl .fibL4510
.fibL4506:
	ldr r9,[fp,#-2620]
	cmp r9,#0
	beq .fibL4504
.fibL4503:
	mov r9,#1
	str r9,[fp,#-2616]
	bl .fibL4505
.fibL4501:
	ldr r9,[fp,#-1940]
	cmp r9,#0
	beq .fibL4499
.fibL4498:
	mov r9,#1
	str r9,[fp,#-2612]
	bl .fibL4500
.fibL4496:
	ldr r9,[fp,#-2604]
	cmp r9,#0
	beq .fibL4494
.fibL4493:
	mov r9,#1
	str r9,[fp,#-2608]
	bl .fibL4495
.fibL4490:
	mov r9,#1
	str r9,[fp,#-2604]
	bl .fibL4492
.fibL4488:
	ldr r9,[fp,#-2620]
	cmp r9,#0
	beq .fibL4486
.fibL4485:
	mov r9,#1
	str r9,[fp,#-2596]
	bl .fibL4487
.fibL4483:
	ldr r9,[fp,#-2620]
	cmp r9,#0
	bne .fibL4480
.fibL4481:
	mov r9,#0
	str r9,[fp,#-2592]
	bl .fibL4482
.fibL4478:
	ldr r9,[fp,#-2584]
	cmp r9,#0
	beq .fibL4476
.fibL4475:
	mov r9,#1
	str r9,[fp,#-2628]
	bl .fibL4477
.fibL4472:
	mov r9,#1
	str r9,[fp,#-2584]
	bl .fibL4474
.fibL4470:
	ldr r9,[fp,#-1940]
	cmp r9,#0
	beq .fibL4468
.fibL4467:
	mov r9,#1
	str r9,[fp,#-2580]
	bl .fibL4469
.fibL4465:
	ldr r9,[fp,#-1940]
	cmp r9,#0
	bne .fibL4462
.fibL4463:
	mov r9,#0
	str r9,[fp,#-2576]
	bl .fibL4464
.fibL4460:
	ldr r9,[fp,#-2568]
	cmp r9,#0
	bne .fibL4457
.fibL4458:
	mov r9,#0
	str r9,[fp,#-2620]
	bl .fibL4459
.fibL4455:
	ldr r9,[fp,#-2588]
	cmp r9,#0
	beq .fibL4453
.fibL4452:
	mov r9,#1
	str r9,[fp,#-2568]
	bl .fibL4454
.fibL4450:
	ldr r9,[fp,#-1928]
	cmp r9,#0
	beq .fibL4448
.fibL4447:
	mov r9,#1
	str r9,[fp,#-2564]
	bl .fibL4449
.fibL4445:
	ldr r9,[fp,#-2552]
	cmp r9,#0
	beq .fibL4443
.fibL4442:
	mov r9,#1
	str r9,[fp,#-2556]
	bl .fibL4444
.fibL4439:
	mov r9,#1
	str r9,[fp,#-2552]
	bl .fibL4441
.fibL4437:
	ldr r9,[fp,#-2588]
	cmp r9,#0
	beq .fibL4435
.fibL4434:
	mov r9,#1
	str r9,[fp,#-2548]
	bl .fibL4436
.fibL4432:
	ldr r9,[fp,#-2588]
	cmp r9,#0
	bne .fibL4429
.fibL4430:
	mov r9,#0
	str r9,[fp,#-2544]
	bl .fibL4431
.fibL4427:
	ldr r9,[fp,#-2536]
	cmp r9,#0
	beq .fibL4425
.fibL4424:
	mov r9,#1
	str r9,[fp,#-2600]
	bl .fibL4426
.fibL4421:
	mov r9,#1
	str r9,[fp,#-2536]
	bl .fibL4423
.fibL4419:
	ldr r9,[fp,#-1928]
	cmp r9,#0
	beq .fibL4417
.fibL4416:
	mov r9,#1
	str r9,[fp,#-2532]
	bl .fibL4418
.fibL4414:
	ldr r9,[fp,#-1928]
	cmp r9,#0
	bne .fibL4411
.fibL4412:
	mov r9,#0
	str r9,[fp,#-2524]
	bl .fibL4413
.fibL4409:
	ldr r9,[fp,#-2520]
	cmp r9,#0
	bne .fibL4406
.fibL4407:
	mov r9,#0
	str r9,[fp,#-2588]
	bl .fibL4408
.fibL4404:
	ldr r9,[fp,#-2560]
	cmp r9,#0
	beq .fibL4402
.fibL4401:
	mov r9,#1
	str r9,[fp,#-2520]
	bl .fibL4403
.fibL4399:
	ldr r9,[fp,#-1916]
	cmp r9,#0
	beq .fibL4397
.fibL4396:
	mov r9,#1
	str r9,[fp,#-2516]
	bl .fibL4398
.fibL4394:
	ldr r9,[fp,#-2504]
	cmp r9,#0
	beq .fibL4392
.fibL4391:
	mov r9,#1
	str r9,[fp,#-2508]
	bl .fibL4393
.fibL4388:
	mov r9,#1
	str r9,[fp,#-2504]
	bl .fibL4390
.fibL4386:
	ldr r9,[fp,#-2560]
	cmp r9,#0
	beq .fibL4384
.fibL4383:
	mov r9,#1
	str r9,[fp,#-2496]
	bl .fibL4385
.fibL4381:
	ldr r9,[fp,#-2560]
	cmp r9,#0
	bne .fibL4378
.fibL4379:
	mov r9,#0
	str r9,[fp,#-2492]
	bl .fibL4380
.fibL4376:
	ldr r9,[fp,#-2488]
	cmp r9,#0
	beq .fibL4374
.fibL4373:
	mov r9,#1
	str r9,[fp,#-2572]
	bl .fibL4375
.fibL4370:
	mov r9,#1
	str r9,[fp,#-2488]
	bl .fibL4372
.fibL4368:
	ldr r9,[fp,#-1916]
	cmp r9,#0
	beq .fibL4366
.fibL4365:
	mov r9,#1
	str r9,[fp,#-2484]
	bl .fibL4367
.fibL4363:
	ldr r9,[fp,#-1916]
	cmp r9,#0
	bne .fibL4360
.fibL4361:
	mov r9,#0
	str r9,[fp,#-2476]
	bl .fibL4362
.fibL4358:
	ldr r9,[fp,#-2468]
	cmp r9,#0
	bne .fibL4355
.fibL4356:
	mov r9,#0
	str r9,[fp,#-2560]
	bl .fibL4357
.fibL4353:
	ldr r9,[fp,#-2528]
	cmp r9,#0
	beq .fibL4351
.fibL4350:
	mov r9,#1
	str r9,[fp,#-2468]
	bl .fibL4352
.fibL4348:
	ldr r9,[fp,#-1904]
	cmp r9,#0
	beq .fibL4346
.fibL4345:
	mov r9,#1
	str r9,[fp,#-2464]
	bl .fibL4347
.fibL4343:
	ldr r9,[fp,#-2456]
	cmp r9,#0
	beq .fibL4341
.fibL4340:
	mov r9,#1
	str r9,[fp,#-2460]
	bl .fibL4342
.fibL4337:
	mov r9,#1
	str r9,[fp,#-2456]
	bl .fibL4339
.fibL4335:
	ldr r9,[fp,#-2528]
	cmp r9,#0
	beq .fibL4333
.fibL4332:
	mov r9,#1
	str r9,[fp,#-2448]
	bl .fibL4334
.fibL4330:
	ldr r9,[fp,#-2528]
	cmp r9,#0
	bne .fibL4327
.fibL4328:
	mov r9,#0
	str r9,[fp,#-2444]
	bl .fibL4329
.fibL4325:
	ldr r9,[fp,#-2436]
	cmp r9,#0
	beq .fibL4323
.fibL4322:
	mov r9,#1
	str r9,[fp,#-2540]
	bl .fibL4324
.fibL4319:
	mov r9,#1
	str r9,[fp,#-2436]
	bl .fibL4321
.fibL4317:
	ldr r9,[fp,#-1904]
	cmp r9,#0
	beq .fibL4315
.fibL4314:
	mov r9,#1
	str r9,[fp,#-2432]
	bl .fibL4316
.fibL4312:
	ldr r9,[fp,#-1904]
	cmp r9,#0
	bne .fibL4309
.fibL4310:
	mov r9,#0
	str r9,[fp,#-2428]
	bl .fibL4311
.fibL4307:
	ldr r9,[fp,#-2420]
	cmp r9,#0
	bne .fibL4304
.fibL4305:
	mov r9,#0
	str r9,[fp,#-2528]
	bl .fibL4306
.fibL4302:
	ldr r9,[fp,#-2500]
	cmp r9,#0
	beq .fibL4300
.fibL4299:
	mov r9,#1
	str r9,[fp,#-2420]
	bl .fibL4301
.fibL4297:
	ldr r9,[fp,#-1892]
	cmp r9,#0
	beq .fibL4295
.fibL4294:
	mov r9,#1
	str r9,[fp,#-2416]
	bl .fibL4296
.fibL4292:
	ldr r9,[fp,#-2404]
	cmp r9,#0
	beq .fibL4290
.fibL4289:
	mov r9,#1
	str r9,[fp,#-2408]
	bl .fibL4291
.fibL4286:
	mov r9,#1
	str r9,[fp,#-2404]
	bl .fibL4288
.fibL4284:
	ldr r9,[fp,#-2500]
	cmp r9,#0
	beq .fibL4282
.fibL4281:
	mov r9,#1
	str r9,[fp,#-2400]
	bl .fibL4283
.fibL4279:
	ldr r9,[fp,#-2500]
	cmp r9,#0
	bne .fibL4276
.fibL4277:
	mov r9,#0
	str r9,[fp,#-2396]
	bl .fibL4278
.fibL4274:
	ldr r9,[fp,#-2388]
	cmp r9,#0
	beq .fibL4272
.fibL4271:
	mov r9,#1
	str r9,[fp,#-2512]
	bl .fibL4273
.fibL4268:
	mov r9,#1
	str r9,[fp,#-2388]
	bl .fibL4270
.fibL4266:
	ldr r9,[fp,#-1892]
	cmp r9,#0
	beq .fibL4264
.fibL4263:
	mov r9,#1
	str r9,[fp,#-2384]
	bl .fibL4265
.fibL4261:
	ldr r9,[fp,#-1892]
	cmp r9,#0
	bne .fibL4258
.fibL4259:
	mov r9,#0
	str r9,[fp,#-2380]
	bl .fibL4260
.fibL4256:
	ldr r9,[fp,#-2372]
	cmp r9,#0
	bne .fibL4253
.fibL4254:
	mov r9,#0
	str r9,[fp,#-2500]
	bl .fibL4255
.fibL4251:
	ldr r9,[fp,#-2472]
	cmp r9,#0
	beq .fibL4249
.fibL4248:
	mov r9,#1
	str r9,[fp,#-2372]
	bl .fibL4250
.fibL4246:
	ldr r9,[fp,#-1880]
	cmp r9,#0
	beq .fibL4244
.fibL4243:
	mov r9,#1
	str r9,[fp,#-2368]
	bl .fibL4245
.fibL4241:
	ldr r9,[fp,#-2360]
	cmp r9,#0
	beq .fibL4239
.fibL4238:
	mov r9,#1
	str r9,[fp,#-2364]
	bl .fibL4240
.fibL4235:
	mov r9,#1
	str r9,[fp,#-2360]
	bl .fibL4237
.fibL4233:
	ldr r9,[fp,#-2472]
	cmp r9,#0
	beq .fibL4231
.fibL4230:
	mov r9,#1
	str r9,[fp,#-2356]
	bl .fibL4232
.fibL4228:
	ldr r9,[fp,#-2472]
	cmp r9,#0
	bne .fibL4225
.fibL4226:
	mov r9,#0
	str r9,[fp,#-2352]
	bl .fibL4227
.fibL4223:
	ldr r9,[fp,#-2344]
	cmp r9,#0
	beq .fibL4221
.fibL4220:
	mov r9,#1
	str r9,[fp,#-2480]
	bl .fibL4222
.fibL4217:
	mov r9,#1
	str r9,[fp,#-2344]
	bl .fibL4219
.fibL4215:
	ldr r9,[fp,#-1880]
	cmp r9,#0
	beq .fibL4213
.fibL4212:
	mov r9,#1
	str r9,[fp,#-2340]
	bl .fibL4214
.fibL4210:
	ldr r9,[fp,#-1880]
	cmp r9,#0
	bne .fibL4207
.fibL4208:
	mov r9,#0
	str r9,[fp,#-2336]
	bl .fibL4209
.fibL4205:
	ldr r9,[fp,#-2328]
	cmp r9,#0
	bne .fibL4202
.fibL4203:
	mov r9,#0
	str r9,[fp,#-2472]
	bl .fibL4204
.fibL4200:
	ldr r9,[fp,#-2440]
	cmp r9,#0
	beq .fibL4198
.fibL4197:
	mov r9,#1
	str r9,[fp,#-2328]
	bl .fibL4199
.fibL4195:
	ldr r9,[fp,#-1868]
	cmp r9,#0
	beq .fibL4193
.fibL4192:
	mov r9,#1
	str r9,[fp,#-2324]
	bl .fibL4194
.fibL4190:
	ldr r9,[fp,#-2316]
	cmp r9,#0
	beq .fibL4188
.fibL4187:
	mov r9,#1
	str r9,[fp,#-2320]
	bl .fibL4189
.fibL4184:
	mov r9,#1
	str r9,[fp,#-2316]
	bl .fibL4186
.fibL4182:
	ldr r9,[fp,#-2440]
	cmp r9,#0
	beq .fibL4180
.fibL4179:
	mov r9,#1
	str r9,[fp,#-2312]
	bl .fibL4181
.fibL4177:
	ldr r9,[fp,#-2440]
	cmp r9,#0
	bne .fibL4174
.fibL4175:
	mov r9,#0
	str r9,[fp,#-2308]
	bl .fibL4176
.fibL4172:
	ldr r9,[fp,#-2300]
	cmp r9,#0
	beq .fibL4170
.fibL4169:
	mov r9,#1
	str r9,[fp,#-2452]
	bl .fibL4171
.fibL4166:
	mov r9,#1
	str r9,[fp,#-2300]
	bl .fibL4168
.fibL4164:
	ldr r9,[fp,#-1868]
	cmp r9,#0
	beq .fibL4162
.fibL4161:
	mov r9,#1
	str r9,[fp,#-2296]
	bl .fibL4163
.fibL4159:
	ldr r9,[fp,#-1868]
	cmp r9,#0
	bne .fibL4156
.fibL4157:
	mov r9,#0
	str r9,[fp,#-2292]
	bl .fibL4158
.fibL4154:
	ldr r9,[fp,#-2284]
	cmp r9,#0
	bne .fibL4151
.fibL4152:
	mov r9,#0
	str r9,[fp,#-2440]
	bl .fibL4153
.fibL4149:
	ldr r9,[fp,#-2412]
	cmp r9,#0
	beq .fibL4147
.fibL4146:
	mov r9,#1
	str r9,[fp,#-2284]
	bl .fibL4148
.fibL4144:
	ldr r9,[fp,#-1856]
	cmp r9,#0
	beq .fibL4142
.fibL4141:
	mov r9,#1
	str r9,[fp,#-2280]
	bl .fibL4143
.fibL4139:
	ldr r9,[fp,#-2272]
	cmp r9,#0
	beq .fibL4137
.fibL4136:
	mov r9,#1
	str r9,[fp,#-2276]
	bl .fibL4138
.fibL4133:
	mov r9,#1
	str r9,[fp,#-2272]
	bl .fibL4135
.fibL4131:
	ldr r9,[fp,#-2412]
	cmp r9,#0
	beq .fibL4129
.fibL4128:
	mov r9,#1
	str r9,[fp,#-2268]
	bl .fibL4130
.fibL4126:
	ldr r9,[fp,#-2412]
	cmp r9,#0
	bne .fibL4123
.fibL4124:
	mov r9,#0
	str r9,[fp,#-2264]
	bl .fibL4125
.fibL4121:
	ldr r9,[fp,#-2256]
	cmp r9,#0
	beq .fibL4119
.fibL4118:
	mov r9,#1
	str r9,[fp,#-2424]
	bl .fibL4120
.fibL4115:
	mov r9,#1
	str r9,[fp,#-2256]
	bl .fibL4117
.fibL4113:
	ldr r9,[fp,#-1856]
	cmp r9,#0
	beq .fibL4111
.fibL4110:
	mov r9,#1
	str r9,[fp,#-2252]
	bl .fibL4112
.fibL4108:
	ldr r9,[fp,#-1856]
	cmp r9,#0
	bne .fibL4105
.fibL4106:
	mov r9,#0
	str r9,[fp,#-2248]
	bl .fibL4107
.fibL4103:
	ldr r9,[fp,#-2240]
	cmp r9,#0
	bne .fibL4100
.fibL4101:
	mov r9,#0
	str r9,[fp,#-2412]
	bl .fibL4102
.fibL4098:
	ldr r9,[fp,#-2376]
	cmp r9,#0
	beq .fibL4096
.fibL4095:
	mov r9,#1
	str r9,[fp,#-2240]
	bl .fibL4097
.fibL4093:
	ldr r9,[fp,#-1844]
	cmp r9,#0
	beq .fibL4091
.fibL4090:
	mov r9,#1
	str r9,[fp,#-2236]
	bl .fibL4092
.fibL4088:
	ldr r9,[fp,#-2228]
	cmp r9,#0
	beq .fibL4086
.fibL4085:
	mov r9,#1
	str r9,[fp,#-2232]
	bl .fibL4087
.fibL4082:
	mov r9,#1
	str r9,[fp,#-2228]
	bl .fibL4084
.fibL4080:
	ldr r9,[fp,#-2376]
	cmp r9,#0
	beq .fibL4078
.fibL4077:
	mov r9,#1
	str r9,[fp,#-2224]
	bl .fibL4079
.fibL4075:
	ldr r9,[fp,#-2376]
	cmp r9,#0
	bne .fibL4072
.fibL4073:
	mov r9,#0
	str r9,[fp,#-2220]
	bl .fibL4074
.fibL4070:
	ldr r9,[fp,#-2212]
	cmp r9,#0
	beq .fibL4068
.fibL4067:
	mov r9,#1
	str r9,[fp,#-2392]
	bl .fibL4069
.fibL4064:
	mov r9,#1
	str r9,[fp,#-2212]
	bl .fibL4066
.fibL4062:
	ldr r9,[fp,#-1844]
	cmp r9,#0
	beq .fibL4060
.fibL4059:
	mov r9,#1
	str r9,[fp,#-2208]
	bl .fibL4061
.fibL4057:
	ldr r9,[fp,#-1844]
	cmp r9,#0
	bne .fibL4054
.fibL4055:
	mov r9,#0
	str r9,[fp,#-2204]
	bl .fibL4056
.fibL4052:
	ldr r9,[fp,#-2196]
	cmp r9,#0
	bne .fibL4049
.fibL4050:
	mov r9,#0
	str r9,[fp,#-2376]
	bl .fibL4051
.fibL4047:
	ldr r9,[fp,#-2332]
	cmp r9,#0
	beq .fibL4045
.fibL4044:
	mov r9,#1
	str r9,[fp,#-2196]
	bl .fibL4046
.fibL4042:
	ldr r9,[fp,#-1832]
	cmp r9,#0
	beq .fibL4040
.fibL4039:
	mov r9,#1
	str r9,[fp,#-2192]
	bl .fibL4041
.fibL4037:
	ldr r9,[fp,#-2184]
	cmp r9,#0
	beq .fibL4035
.fibL4034:
	mov r9,#1
	str r9,[fp,#-2188]
	bl .fibL4036
.fibL4031:
	mov r9,#1
	str r9,[fp,#-2184]
	bl .fibL4033
.fibL4029:
	ldr r9,[fp,#-2332]
	cmp r9,#0
	beq .fibL4027
.fibL4026:
	mov r9,#1
	str r9,[fp,#-2180]
	bl .fibL4028
.fibL4024:
	ldr r9,[fp,#-2332]
	cmp r9,#0
	bne .fibL4021
.fibL4022:
	mov r9,#0
	str r9,[fp,#-2176]
	bl .fibL4023
.fibL4019:
	ldr r9,[fp,#-2168]
	cmp r9,#0
	beq .fibL4017
.fibL4016:
	mov r9,#1
	str r9,[fp,#-2348]
	bl .fibL4018
.fibL4013:
	mov r9,#1
	str r9,[fp,#-2168]
	bl .fibL4015
.fibL4011:
	ldr r9,[fp,#-1832]
	cmp r9,#0
	beq .fibL4009
.fibL4008:
	mov r9,#1
	str r9,[fp,#-2164]
	bl .fibL4010
.fibL4006:
	ldr r9,[fp,#-1832]
	cmp r9,#0
	bne .fibL4003
.fibL4004:
	mov r9,#0
	str r9,[fp,#-2160]
	bl .fibL4005
.fibL4001:
	ldr r9,[fp,#-2152]
	cmp r9,#0
	bne .fibL3998
.fibL3999:
	mov r9,#0
	str r9,[fp,#-2332]
	bl .fibL4000
.fibL3996:
	ldr r9,[fp,#-2112]
	cmp r9,#0
	beq .fibL3994
.fibL3993:
	mov r9,#1
	str r9,[fp,#-2152]
	bl .fibL3995
.fibL3991:
	ldr r9,[fp,#-1820]
	cmp r9,#0
	beq .fibL3989
.fibL3988:
	mov r9,#1
	str r9,[fp,#-2148]
	bl .fibL3990
.fibL3986:
	ldr r9,[fp,#-2140]
	cmp r9,#0
	beq .fibL3984
.fibL3983:
	mov r9,#1
	str r9,[fp,#-2144]
	bl .fibL3985
.fibL3980:
	mov r9,#1
	str r9,[fp,#-2140]
	bl .fibL3982
.fibL3978:
	ldr r9,[fp,#-2112]
	cmp r9,#0
	beq .fibL3976
.fibL3975:
	mov r9,#1
	str r9,[fp,#-2136]
	bl .fibL3977
.fibL3973:
	ldr r9,[fp,#-2112]
	cmp r9,#0
	bne .fibL3970
.fibL3971:
	mov r9,#0
	str r9,[fp,#-2132]
	bl .fibL3972
.fibL3968:
	ldr r9,[fp,#-2124]
	cmp r9,#0
	beq .fibL3966
.fibL3965:
	mov r9,#1
	str r9,[fp,#-2200]
	bl .fibL3967
.fibL3962:
	mov r9,#1
	str r9,[fp,#-2124]
	bl .fibL3964
.fibL3960:
	ldr r9,[fp,#-1820]
	cmp r9,#0
	beq .fibL3958
.fibL3957:
	mov r9,#1
	str r9,[fp,#-2120]
	bl .fibL3959
.fibL3955:
	ldr r9,[fp,#-1820]
	cmp r9,#0
	bne .fibL3952
.fibL3953:
	mov r9,#0
	str r9,[fp,#-2116]
	bl .fibL3954
.fibL3950:
	ldr r9,[fp,#-2108]
	cmp r9,#0
	bne .fibL3947
.fibL3948:
	mov r9,#0
	str r9,[fp,#-2112]
	bl .fibL3949
.fibL3945:
	ldr r9,[fp,#-2068]
	cmp r9,#0
	beq .fibL3943
.fibL3942:
	mov r9,#1
	str r9,[fp,#-2108]
	bl .fibL3944
.fibL3940:
	ldr r9,[fp,#-1808]
	cmp r9,#0
	beq .fibL3938
.fibL3937:
	mov r9,#1
	str r9,[fp,#-2104]
	bl .fibL3939
.fibL3935:
	ldr r9,[fp,#-2096]
	cmp r9,#0
	beq .fibL3933
.fibL3932:
	mov r9,#1
	str r9,[fp,#-2100]
	bl .fibL3934
.fibL3929:
	mov r9,#1
	str r9,[fp,#-2096]
	bl .fibL3931
.fibL3927:
	ldr r9,[fp,#-2068]
	cmp r9,#0
	beq .fibL3925
.fibL3924:
	mov r9,#1
	str r9,[fp,#-2092]
	bl .fibL3926
.fibL3922:
	ldr r9,[fp,#-2068]
	cmp r9,#0
	bne .fibL3919
.fibL3920:
	mov r9,#0
	str r9,[fp,#-2088]
	bl .fibL3921
.fibL3917:
	ldr r9,[fp,#-2080]
	cmp r9,#0
	beq .fibL3915
.fibL3914:
	mov r9,#1
	str r9,[fp,#-2084]
	bl .fibL3916
.fibL3911:
	mov r9,#1
	str r9,[fp,#-2080]
	bl .fibL3913
.fibL3909:
	ldr r9,[fp,#-1808]
	cmp r9,#0
	beq .fibL3907
.fibL3906:
	mov r9,#1
	str r9,[fp,#-2076]
	bl .fibL3908
.fibL3904:
	ldr r9,[fp,#-1808]
	cmp r9,#0
	bne .fibL3901
.fibL3902:
	mov r9,#0
	str r9,[fp,#-2072]
	bl .fibL3903
.fibL3899:
	ldr r9,[fp,#-2064]
	cmp r9,#0
	bne .fibL3896
.fibL3897:
	mov r9,#0
	str r9,[fp,#-2068]
	bl .fibL3898
.fibL3894:
	ldr r9,[fp,#-2024]
	cmp r9,#0
	beq .fibL3892
.fibL3891:
	mov r9,#1
	str r9,[fp,#-2064]
	bl .fibL3893
.fibL3889:
	ldr r9,[fp,#-1796]
	cmp r9,#0
	beq .fibL3887
.fibL3886:
	mov r9,#1
	str r9,[fp,#-2060]
	bl .fibL3888
.fibL3884:
	ldr r9,[fp,#-2052]
	cmp r9,#0
	beq .fibL3882
.fibL3881:
	mov r9,#1
	str r9,[fp,#-2056]
	bl .fibL3883
.fibL3878:
	mov r9,#1
	str r9,[fp,#-2052]
	bl .fibL3880
.fibL3876:
	ldr r9,[fp,#-2024]
	cmp r9,#0
	beq .fibL3874
.fibL3873:
	mov r9,#1
	str r9,[fp,#-2048]
	bl .fibL3875
.fibL3871:
	ldr r9,[fp,#-2024]
	cmp r9,#0
	bne .fibL3868
.fibL3869:
	mov r9,#0
	str r9,[fp,#-2044]
	bl .fibL3870
.fibL3866:
	ldr r9,[fp,#-2036]
	cmp r9,#0
	beq .fibL3864
.fibL3863:
	mov r9,#1
	str r9,[fp,#-2040]
	bl .fibL3865
.fibL3860:
	mov r9,#1
	str r9,[fp,#-2036]
	bl .fibL3862
.fibL3858:
	ldr r9,[fp,#-1796]
	cmp r9,#0
	beq .fibL3856
.fibL3855:
	mov r9,#1
	str r9,[fp,#-2032]
	bl .fibL3857
.fibL3853:
	ldr r9,[fp,#-1796]
	cmp r9,#0
	bne .fibL3850
.fibL3851:
	mov r9,#0
	str r9,[fp,#-2028]
	bl .fibL3852
.fibL3848:
	ldr r9,[fp,#-2020]
	cmp r9,#0
	bne .fibL3845
.fibL3846:
	mov r9,#0
	str r9,[fp,#-2024]
	bl .fibL3847
.fibL3843:
	ldr r9,[fp,#-1980]
	cmp r9,#0
	beq .fibL3841
.fibL3840:
	mov r9,#1
	str r9,[fp,#-2020]
	bl .fibL3842
.fibL3838:
	ldr r9,[fp,#-1784]
	cmp r9,#0
	beq .fibL3836
.fibL3835:
	mov r9,#1
	str r9,[fp,#-2016]
	bl .fibL3837
.fibL3833:
	ldr r9,[fp,#-2008]
	cmp r9,#0
	beq .fibL3831
.fibL3830:
	mov r9,#1
	str r9,[fp,#-2012]
	bl .fibL3832
.fibL3827:
	mov r9,#1
	str r9,[fp,#-2008]
	bl .fibL3829
.fibL3825:
	ldr r9,[fp,#-1980]
	cmp r9,#0
	beq .fibL3823
.fibL3822:
	mov r9,#1
	str r9,[fp,#-2004]
	bl .fibL3824
.fibL3820:
	ldr r9,[fp,#-1980]
	cmp r9,#0
	bne .fibL3817
.fibL3818:
	mov r9,#0
	str r9,[fp,#-2000]
	bl .fibL3819
.fibL3815:
	ldr r9,[fp,#-1992]
	cmp r9,#0
	beq .fibL3813
.fibL3812:
	mov r9,#1
	str r9,[fp,#-1996]
	bl .fibL3814
.fibL3809:
	mov r9,#1
	str r9,[fp,#-1992]
	bl .fibL3811
.fibL3807:
	ldr r9,[fp,#-1784]
	cmp r9,#0
	beq .fibL3805
.fibL3804:
	mov r9,#1
	str r9,[fp,#-1988]
	bl .fibL3806
.fibL3802:
	ldr r9,[fp,#-1784]
	cmp r9,#0
	bne .fibL3799
.fibL3800:
	mov r9,#0
	str r9,[fp,#-1984]
	bl .fibL3801
.fibL3797:
.fibL3795:
	mov r9,#0
	str r9,[fp,#-1980]
	bl .fibL3796
.fibL3792:
	bl .fibL3790
.fibL3787:
	ldr r9,[fp,#-1772]
	cmp r9,#0
	beq .fibL3785
.fibL3784:
	mov r9,#1
	str r9,[fp,#-1976]
	bl .fibL3786
.fibL3782:
.fibL3779:
	mov r9,#1
	str r9,[fp,#-1972]
	bl .fibL3781
.fibL3774:
	bl .fibL3772
.fibL3769:
.fibL3767:
	mov r9,#0
	str r9,[fp,#-1968]
	bl .fibL3768
.fibL3764:
	ldr r9,[fp,#-1960]
	cmp r9,#0
	beq .fibL3762
.fibL3761:
	mov r9,#1
	str r9,[fp,#-1964]
	bl .fibL3763
.fibL3758:
	mov r9,#1
	str r9,[fp,#-1960]
	bl .fibL3760
.fibL3756:
	ldr r9,[fp,#-1772]
	cmp r9,#0
	beq .fibL3754
.fibL3753:
	mov r9,#1
	str r9,[fp,#-1956]
	bl .fibL3755
.fibL3751:
	ldr r9,[fp,#-1772]
	cmp r9,#0
	bne .fibL3748
.fibL3749:
	mov r9,#0
	str r9,[fp,#-1952]
	bl .fibL3750
.fibL3746:
	ldr r9,[fp,#-2304]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1948]
	bl .fibL3747
.fibL3744:
	ldr r9,[fp,#-2288]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1940]
	bl .fibL3745
.fibL3742:
	ldr r9,[fp,#-2260]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1928]
	bl .fibL3743
.fibL3740:
	ldr r9,[fp,#-2244]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1916]
	bl .fibL3741
.fibL3738:
	ldr r9,[fp,#-2216]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1904]
	bl .fibL3739
.fibL3736:
	ldr r9,[fp,#-2172]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1892]
	bl .fibL3737
.fibL3734:
	ldr r9,[fp,#-2156]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1880]
	bl .fibL3735
.fibL3732:
	ldr r9,[fp,#-2128]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1868]
	bl .fibL3733
.fibL3730:
	ldr r9,[fp,#-1944]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1856]
	bl .fibL3731
.fibL3728:
	ldr r9,[fp,#-1936]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1844]
	bl .fibL3729
.fibL3726:
	ldr r9,[fp,#-1924]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1832]
	bl .fibL3727
.fibL3724:
	ldr r9,[fp,#-1912]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1820]
	bl .fibL3725
.fibL3722:
	ldr r9,[fp,#-1900]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1808]
	bl .fibL3723
.fibL3720:
	ldr r9,[fp,#-1888]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1796]
	bl .fibL3721
.fibL3718:
	ldr r9,[fp,#-1876]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1784]
	bl .fibL3719
.fibL3716:
	ldr r9,[fp,#-1864]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1772]
	bl .fibL3717
.fibL3714:
	ldr r9,[fp,#-1852]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1764]
	bl .fibL3715
.fibL3712:
	ldr r9,[fp,#-1840]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1756]
	bl .fibL3713
.fibL3710:
	ldr r9,[fp,#-1828]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1744]
	bl .fibL3711
.fibL3708:
	ldr r9,[fp,#-1816]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1732]
	bl .fibL3709
.fibL3706:
	ldr r9,[fp,#-1804]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1720]
	bl .fibL3707
.fibL3704:
	ldr r9,[fp,#-1792]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1708]
	bl .fibL3705
.fibL3702:
	ldr r9,[fp,#-1780]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1696]
	bl .fibL3703
.fibL3700:
	ldr r9,[fp,#-1768]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1684]
	bl .fibL3701
.fibL3698:
	ldr r9,[fp,#-1760]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1672]
	bl .fibL3699
.fibL3696:
	ldr r9,[fp,#-1752]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1664]
	bl .fibL3697
.fibL3694:
	ldr r9,[fp,#-1740]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1656]
	bl .fibL3695
.fibL3692:
	ldr r9,[fp,#-1728]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1648]
	bl .fibL3693
.fibL3690:
	ldr r9,[fp,#-1716]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1640]
	bl .fibL3691
.fibL3688:
	ldr r9,[fp,#-1704]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1632]
	bl .fibL3689
.fibL3686:
	ldr r9,[fp,#-1692]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1624]
	bl .fibL3687
.fibL3684:
	ldr r9,[fp,#-1680]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-1616]
	bl .fibL3685
.fibL3682:
	ldr r9,[fp,#-1576]
	cmp r9,#0
	bne .fibL3679
.fibL3680:
	bl .fibL3681
.fibL3677:
	ldr r9,[fp,#-1604]
	cmp r9,#0
	beq .fibL3675
.fibL3674:
	mov r9,#1
	str r9,[fp,#-1576]
	bl .fibL3676
.fibL3672:
.fibL3669:
	mov r9,#1
	str r9,[fp,#-1572]
	bl .fibL3671
.fibL3667:
	ldr r9,[fp,#-1564]
	cmp r9,#0
	beq .fibL3665
.fibL3664:
	mov r9,#1
	str r9,[fp,#-1568]
	bl .fibL3666
.fibL3661:
	mov r9,#1
	str r9,[fp,#-1564]
	bl .fibL3663
.fibL3659:
	ldr r9,[fp,#-1604]
	cmp r9,#0
	beq .fibL3657
.fibL3656:
	mov r9,#1
	str r9,[fp,#-1560]
	bl .fibL3658
.fibL3654:
	ldr r9,[fp,#-1604]
	cmp r9,#0
	bne .fibL3651
.fibL3652:
	mov r9,#0
	str r9,[fp,#-1556]
	bl .fibL3653
.fibL3646:
	mov r9,#1
	str r9,[fp,#-1608]
	bl .fibL3648
.fibL3643:
	mov r9,#1
	str r9,[fp,#-1548]
	bl .fibL3645
.fibL3641:
.fibL3638:
	mov r9,#1
	str r9,[fp,#-1544]
	bl .fibL3640
.fibL3636:
	bl .fibL3633
.fibL3631:
	ldr r9,[fp,#-1536]
	cmp r9,#0
	bne .fibL3628
.fibL3629:
	mov r9,#0
	str r9,[fp,#-1604]
	bl .fibL3630
.fibL3626:
	ldr r9,[fp,#-1596]
	cmp r9,#0
	beq .fibL3624
.fibL3623:
	mov r9,#1
	str r9,[fp,#-1536]
	bl .fibL3625
.fibL3621:
.fibL3618:
	mov r9,#1
	str r9,[fp,#-1532]
	bl .fibL3620
.fibL3616:
	ldr r9,[fp,#-1524]
	cmp r9,#0
	beq .fibL3614
.fibL3613:
	mov r9,#1
	str r9,[fp,#-1528]
	bl .fibL3615
.fibL3610:
	mov r9,#1
	str r9,[fp,#-1524]
	bl .fibL3612
.fibL3608:
	ldr r9,[fp,#-1596]
	cmp r9,#0
	beq .fibL3606
.fibL3605:
	mov r9,#1
	str r9,[fp,#-1520]
	bl .fibL3607
.fibL3603:
	ldr r9,[fp,#-1596]
	cmp r9,#0
	bne .fibL3600
.fibL3601:
	mov r9,#0
	str r9,[fp,#-1516]
	bl .fibL3602
.fibL3595:
	mov r9,#1
	str r9,[fp,#-1600]
	bl .fibL3597
.fibL3592:
	mov r9,#1
	str r9,[fp,#-1508]
	bl .fibL3594
.fibL3590:
.fibL3587:
	mov r9,#1
	str r9,[fp,#-1504]
	bl .fibL3589
.fibL3585:
	bl .fibL3582
.fibL3580:
	ldr r9,[fp,#-1496]
	cmp r9,#0
	bne .fibL3577
.fibL3578:
	mov r9,#0
	str r9,[fp,#-1596]
	bl .fibL3579
.fibL3575:
	ldr r9,[fp,#-1588]
	cmp r9,#0
	beq .fibL3573
.fibL3572:
	mov r9,#1
	str r9,[fp,#-1496]
	bl .fibL3574
.fibL3570:
.fibL3567:
	mov r9,#1
	str r9,[fp,#-1492]
	bl .fibL3569
.fibL3565:
	ldr r9,[fp,#-1484]
	cmp r9,#0
	beq .fibL3563
.fibL3562:
	mov r9,#1
	str r9,[fp,#-1488]
	bl .fibL3564
.fibL3559:
	mov r9,#1
	str r9,[fp,#-1484]
	bl .fibL3561
.fibL3557:
	ldr r9,[fp,#-1588]
	cmp r9,#0
	beq .fibL3555
.fibL3554:
	mov r9,#1
	str r9,[fp,#-1480]
	bl .fibL3556
.fibL3552:
	ldr r9,[fp,#-1588]
	cmp r9,#0
	bne .fibL3549
.fibL3550:
	mov r9,#0
	str r9,[fp,#-1476]
	bl .fibL3551
.fibL3544:
	mov r9,#1
	str r9,[fp,#-1592]
	bl .fibL3546
.fibL3541:
	mov r9,#1
	str r9,[fp,#-1468]
	bl .fibL3543
.fibL3539:
.fibL3536:
	mov r9,#1
	str r9,[fp,#-1464]
	bl .fibL3538
.fibL3534:
	bl .fibL3531
.fibL3529:
	ldr r9,[fp,#-1456]
	cmp r9,#0
	bne .fibL3526
.fibL3527:
	mov r9,#0
	str r9,[fp,#-1588]
	bl .fibL3528
.fibL3524:
	ldr r9,[fp,#-1580]
	cmp r9,#0
	beq .fibL3522
.fibL3521:
	mov r9,#1
	str r9,[fp,#-1456]
	bl .fibL3523
.fibL3519:
.fibL3516:
	mov r9,#1
	str r9,[fp,#-1452]
	bl .fibL3518
.fibL3514:
	ldr r9,[fp,#-1444]
	cmp r9,#0
	beq .fibL3512
.fibL3511:
	mov r9,#1
	str r9,[fp,#-1448]
	bl .fibL3513
.fibL3508:
	mov r9,#1
	str r9,[fp,#-1444]
	bl .fibL3510
.fibL3506:
	ldr r9,[fp,#-1580]
	cmp r9,#0
	beq .fibL3504
.fibL3503:
	mov r9,#1
	str r9,[fp,#-1440]
	bl .fibL3505
.fibL3501:
	ldr r9,[fp,#-1580]
	cmp r9,#0
	bne .fibL3498
.fibL3499:
	mov r9,#0
	str r9,[fp,#-1436]
	bl .fibL3500
.fibL3493:
	mov r9,#1
	str r9,[fp,#-1584]
	bl .fibL3495
.fibL3490:
	mov r9,#1
	str r9,[fp,#-1428]
	bl .fibL3492
.fibL3488:
.fibL3485:
	mov r9,#1
	str r9,[fp,#-1424]
	bl .fibL3487
.fibL3483:
	bl .fibL3480
.fibL3478:
	ldr r9,[fp,#-1416]
	cmp r9,#0
	bne .fibL3475
.fibL3476:
	mov r9,#0
	str r9,[fp,#-1580]
	bl .fibL3477
.fibL3473:
	ldr r9,[fp,#-1460]
	cmp r9,#0
	beq .fibL3471
.fibL3470:
	mov r9,#1
	str r9,[fp,#-1416]
	bl .fibL3472
.fibL3468:
.fibL3465:
	mov r9,#1
	str r9,[fp,#-1412]
	bl .fibL3467
.fibL3463:
	ldr r9,[fp,#-1404]
	cmp r9,#0
	beq .fibL3461
.fibL3460:
	mov r9,#1
	str r9,[fp,#-1408]
	bl .fibL3462
.fibL3457:
	mov r9,#1
	str r9,[fp,#-1404]
	bl .fibL3459
.fibL3455:
	ldr r9,[fp,#-1460]
	cmp r9,#0
	beq .fibL3453
.fibL3452:
	mov r9,#1
	str r9,[fp,#-1400]
	bl .fibL3454
.fibL3450:
	ldr r9,[fp,#-1460]
	cmp r9,#0
	bne .fibL3447
.fibL3448:
	mov r9,#0
	str r9,[fp,#-1396]
	bl .fibL3449
.fibL3442:
	mov r9,#1
	str r9,[fp,#-1540]
	bl .fibL3444
.fibL3439:
	mov r9,#1
	str r9,[fp,#-1388]
	bl .fibL3441
.fibL3437:
.fibL3434:
	mov r9,#1
	str r9,[fp,#-1384]
	bl .fibL3436
.fibL3432:
	bl .fibL3429
.fibL3427:
	ldr r9,[fp,#-1376]
	cmp r9,#0
	bne .fibL3424
.fibL3425:
	mov r9,#0
	str r9,[fp,#-1460]
	bl .fibL3426
.fibL3422:
	ldr r9,[fp,#-1340]
	cmp r9,#0
	beq .fibL3420
.fibL3419:
	mov r9,#1
	str r9,[fp,#-1376]
	bl .fibL3421
.fibL3417:
.fibL3414:
	mov r9,#1
	str r9,[fp,#-1372]
	bl .fibL3416
.fibL3412:
	ldr r9,[fp,#-1364]
	cmp r9,#0
	beq .fibL3410
.fibL3409:
	mov r9,#1
	str r9,[fp,#-1368]
	bl .fibL3411
.fibL3406:
	mov r9,#1
	str r9,[fp,#-1364]
	bl .fibL3408
.fibL3404:
	ldr r9,[fp,#-1340]
	cmp r9,#0
	beq .fibL3402
.fibL3401:
	mov r9,#1
	str r9,[fp,#-1360]
	bl .fibL3403
.fibL3399:
	ldr r9,[fp,#-1340]
	cmp r9,#0
	bne .fibL3396
.fibL3397:
	mov r9,#0
	str r9,[fp,#-1356]
	bl .fibL3398
.fibL3391:
	mov r9,#1
	str r9,[fp,#-1352]
	bl .fibL3393
.fibL3388:
	mov r9,#1
	str r9,[fp,#-1348]
	bl .fibL3390
.fibL3386:
.fibL3383:
	mov r9,#1
	str r9,[fp,#-1344]
	bl .fibL3385
.fibL3381:
	bl .fibL3378
.fibL3376:
	ldr r9,[fp,#-1336]
	cmp r9,#0
	bne .fibL3373
.fibL3374:
	mov r9,#0
	str r9,[fp,#-1340]
	bl .fibL3375
.fibL3371:
	ldr r9,[fp,#-1300]
	cmp r9,#0
	beq .fibL3369
.fibL3368:
	mov r9,#1
	str r9,[fp,#-1336]
	bl .fibL3370
.fibL3366:
.fibL3363:
	mov r9,#1
	str r9,[fp,#-1332]
	bl .fibL3365
.fibL3361:
	ldr r9,[fp,#-1324]
	cmp r9,#0
	beq .fibL3359
.fibL3358:
	mov r9,#1
	str r9,[fp,#-1328]
	bl .fibL3360
.fibL3355:
	mov r9,#1
	str r9,[fp,#-1324]
	bl .fibL3357
.fibL3353:
	ldr r9,[fp,#-1300]
	cmp r9,#0
	beq .fibL3351
.fibL3350:
	mov r9,#1
	str r9,[fp,#-1320]
	bl .fibL3352
.fibL3348:
	ldr r9,[fp,#-1300]
	cmp r9,#0
	bne .fibL3345
.fibL3346:
	mov r9,#0
	str r9,[fp,#-1316]
	bl .fibL3347
.fibL3340:
	mov r9,#1
	str r9,[fp,#-1312]
	bl .fibL3342
.fibL3337:
	mov r9,#1
	str r9,[fp,#-1308]
	bl .fibL3339
.fibL3335:
.fibL3332:
	mov r9,#1
	str r9,[fp,#-1304]
	bl .fibL3334
.fibL3330:
	bl .fibL3327
.fibL3325:
	ldr r9,[fp,#-1296]
	cmp r9,#0
	bne .fibL3322
.fibL3323:
	mov r9,#0
	str r9,[fp,#-1300]
	bl .fibL3324
.fibL3320:
	ldr r9,[fp,#-1260]
	cmp r9,#0
	beq .fibL3318
.fibL3317:
	mov r9,#1
	str r9,[fp,#-1296]
	bl .fibL3319
.fibL3315:
.fibL3312:
	mov r9,#1
	str r9,[fp,#-1292]
	bl .fibL3314
.fibL3310:
	ldr r9,[fp,#-1284]
	cmp r9,#0
	beq .fibL3308
.fibL3307:
	mov r9,#1
	str r9,[fp,#-1288]
	bl .fibL3309
.fibL3304:
	mov r9,#1
	str r9,[fp,#-1284]
	bl .fibL3306
.fibL3302:
	ldr r9,[fp,#-1260]
	cmp r9,#0
	beq .fibL3300
.fibL3299:
	mov r9,#1
	str r9,[fp,#-1280]
	bl .fibL3301
.fibL3297:
	ldr r9,[fp,#-1260]
	cmp r9,#0
	bne .fibL3294
.fibL3295:
	mov r9,#0
	str r9,[fp,#-1276]
	bl .fibL3296
.fibL3289:
	mov r9,#1
	str r9,[fp,#-1272]
	bl .fibL3291
.fibL3286:
	mov r9,#1
	str r9,[fp,#-1268]
	bl .fibL3288
.fibL3284:
.fibL3281:
	mov r9,#1
	str r9,[fp,#-1264]
	bl .fibL3283
.fibL3279:
	bl .fibL3276
.fibL3274:
	ldr r9,[fp,#-1256]
	cmp r9,#0
	bne .fibL3271
.fibL3272:
	mov r9,#0
	str r9,[fp,#-1260]
	bl .fibL3273
.fibL3269:
	ldr r9,[fp,#-1220]
	cmp r9,#0
	beq .fibL3267
.fibL3266:
	mov r9,#1
	str r9,[fp,#-1256]
	bl .fibL3268
.fibL3264:
.fibL3261:
	mov r9,#1
	str r9,[fp,#-1252]
	bl .fibL3263
.fibL3259:
	ldr r9,[fp,#-1244]
	cmp r9,#0
	beq .fibL3257
.fibL3256:
	mov r9,#1
	str r9,[fp,#-1248]
	bl .fibL3258
.fibL3253:
	mov r9,#1
	str r9,[fp,#-1244]
	bl .fibL3255
.fibL3251:
	ldr r9,[fp,#-1220]
	cmp r9,#0
	beq .fibL3249
.fibL3248:
	mov r9,#1
	str r9,[fp,#-1240]
	bl .fibL3250
.fibL3246:
	ldr r9,[fp,#-1220]
	cmp r9,#0
	bne .fibL3243
.fibL3244:
	mov r9,#0
	str r9,[fp,#-1236]
	bl .fibL3245
.fibL3238:
	mov r9,#1
	str r9,[fp,#-1232]
	bl .fibL3240
.fibL3235:
	mov r9,#1
	str r9,[fp,#-1228]
	bl .fibL3237
.fibL3233:
.fibL3230:
	mov r9,#1
	str r9,[fp,#-1224]
	bl .fibL3232
.fibL3228:
	bl .fibL3225
.fibL3223:
	ldr r9,[fp,#-1216]
	cmp r9,#0
	bne .fibL3220
.fibL3221:
	mov r9,#0
	str r9,[fp,#-1220]
	bl .fibL3222
.fibL3218:
	ldr r9,[fp,#-1180]
	cmp r9,#0
	beq .fibL3216
.fibL3215:
	mov r9,#1
	str r9,[fp,#-1216]
	bl .fibL3217
.fibL3213:
.fibL3210:
	mov r9,#1
	str r9,[fp,#-1212]
	bl .fibL3212
.fibL3208:
	ldr r9,[fp,#-1204]
	cmp r9,#0
	beq .fibL3206
.fibL3205:
	mov r9,#1
	str r9,[fp,#-1208]
	bl .fibL3207
.fibL3202:
	mov r9,#1
	str r9,[fp,#-1204]
	bl .fibL3204
.fibL3200:
	ldr r9,[fp,#-1180]
	cmp r9,#0
	beq .fibL3198
.fibL3197:
	mov r9,#1
	str r9,[fp,#-1200]
	bl .fibL3199
.fibL3195:
	ldr r9,[fp,#-1180]
	cmp r9,#0
	bne .fibL3192
.fibL3193:
	mov r9,#0
	str r9,[fp,#-1196]
	bl .fibL3194
.fibL3187:
	mov r9,#1
	str r9,[fp,#-1192]
	bl .fibL3189
.fibL3184:
	mov r9,#1
	str r9,[fp,#-1188]
	bl .fibL3186
.fibL3182:
.fibL3179:
	mov r9,#1
	str r9,[fp,#-1184]
	bl .fibL3181
.fibL3177:
	bl .fibL3174
.fibL3172:
	ldr r9,[fp,#-1176]
	cmp r9,#0
	bne .fibL3169
.fibL3170:
	mov r9,#0
	str r9,[fp,#-1180]
	bl .fibL3171
.fibL3167:
	ldr r9,[fp,#-1140]
	cmp r9,#0
	beq .fibL3165
.fibL3164:
	mov r9,#1
	str r9,[fp,#-1176]
	bl .fibL3166
.fibL3162:
.fibL3159:
	mov r9,#1
	str r9,[fp,#-1172]
	bl .fibL3161
.fibL3157:
	ldr r9,[fp,#-1164]
	cmp r9,#0
	beq .fibL3155
.fibL3154:
	mov r9,#1
	str r9,[fp,#-1168]
	bl .fibL3156
.fibL3151:
	mov r9,#1
	str r9,[fp,#-1164]
	bl .fibL3153
.fibL3149:
	ldr r9,[fp,#-1140]
	cmp r9,#0
	beq .fibL3147
.fibL3146:
	mov r9,#1
	str r9,[fp,#-1160]
	bl .fibL3148
.fibL3144:
	ldr r9,[fp,#-1140]
	cmp r9,#0
	bne .fibL3141
.fibL3142:
	mov r9,#0
	str r9,[fp,#-1156]
	bl .fibL3143
.fibL3136:
	mov r9,#1
	str r9,[fp,#-1152]
	bl .fibL3138
.fibL3133:
	mov r9,#1
	str r9,[fp,#-1148]
	bl .fibL3135
.fibL3131:
.fibL3128:
	mov r9,#1
	str r9,[fp,#-1144]
	bl .fibL3130
.fibL3126:
	bl .fibL3123
.fibL3121:
	ldr r9,[fp,#-1136]
	cmp r9,#0
	bne .fibL3118
.fibL3119:
	mov r9,#0
	str r9,[fp,#-1140]
	bl .fibL3120
.fibL3116:
	ldr r9,[fp,#-1100]
	cmp r9,#0
	beq .fibL3114
.fibL3113:
	mov r9,#1
	str r9,[fp,#-1136]
	bl .fibL3115
.fibL3111:
.fibL3108:
	mov r9,#1
	str r9,[fp,#-1132]
	bl .fibL3110
.fibL3106:
	ldr r9,[fp,#-1124]
	cmp r9,#0
	beq .fibL3104
.fibL3103:
	mov r9,#1
	str r9,[fp,#-1128]
	bl .fibL3105
.fibL3100:
	mov r9,#1
	str r9,[fp,#-1124]
	bl .fibL3102
.fibL3098:
	ldr r9,[fp,#-1100]
	cmp r9,#0
	beq .fibL3096
.fibL3095:
	mov r9,#1
	str r9,[fp,#-1120]
	bl .fibL3097
.fibL3093:
	ldr r9,[fp,#-1100]
	cmp r9,#0
	bne .fibL3090
.fibL3091:
	mov r9,#0
	str r9,[fp,#-1116]
	bl .fibL3092
.fibL3085:
	mov r9,#1
	str r9,[fp,#-1112]
	bl .fibL3087
.fibL3082:
	mov r9,#1
	str r9,[fp,#-1108]
	bl .fibL3084
.fibL3080:
.fibL3077:
	mov r9,#1
	str r9,[fp,#-1104]
	bl .fibL3079
.fibL3075:
	bl .fibL3072
.fibL3070:
	ldr r9,[fp,#-1096]
	cmp r9,#0
	bne .fibL3067
.fibL3068:
	mov r9,#0
	str r9,[fp,#-1100]
	bl .fibL3069
.fibL3065:
	ldr r9,[fp,#-1060]
	cmp r9,#0
	beq .fibL3063
.fibL3062:
	mov r9,#1
	str r9,[fp,#-1096]
	bl .fibL3064
.fibL3060:
.fibL3057:
	mov r9,#1
	str r9,[fp,#-1092]
	bl .fibL3059
.fibL3055:
	ldr r9,[fp,#-1084]
	cmp r9,#0
	beq .fibL3053
.fibL3052:
	mov r9,#1
	str r9,[fp,#-1088]
	bl .fibL3054
.fibL3049:
	mov r9,#1
	str r9,[fp,#-1084]
	bl .fibL3051
.fibL3047:
	ldr r9,[fp,#-1060]
	cmp r9,#0
	beq .fibL3045
.fibL3044:
	mov r9,#1
	str r9,[fp,#-1080]
	bl .fibL3046
.fibL3042:
	ldr r9,[fp,#-1060]
	cmp r9,#0
	bne .fibL3039
.fibL3040:
	mov r9,#0
	str r9,[fp,#-1076]
	bl .fibL3041
.fibL3034:
	mov r9,#1
	str r9,[fp,#-1072]
	bl .fibL3036
.fibL3031:
	mov r9,#1
	str r9,[fp,#-1068]
	bl .fibL3033
.fibL3029:
.fibL3026:
	mov r9,#1
	str r9,[fp,#-1064]
	bl .fibL3028
.fibL3024:
	bl .fibL3021
.fibL3019:
	ldr r9,[fp,#-1056]
	cmp r9,#0
	bne .fibL3016
.fibL3017:
	mov r9,#0
	str r9,[fp,#-1060]
	bl .fibL3018
.fibL3014:
	ldr r9,[fp,#-1020]
	cmp r9,#0
	beq .fibL3012
.fibL3011:
	mov r9,#1
	str r9,[fp,#-1056]
	bl .fibL3013
.fibL3009:
.fibL3006:
	mov r9,#1
	str r9,[fp,#-1052]
	bl .fibL3008
.fibL3004:
	ldr r9,[fp,#-1044]
	cmp r9,#0
	beq .fibL3002
.fibL3001:
	mov r9,#1
	str r9,[fp,#-1048]
	bl .fibL3003
.fibL2998:
	mov r9,#1
	str r9,[fp,#-1044]
	bl .fibL3000
.fibL2996:
	ldr r9,[fp,#-1020]
	cmp r9,#0
	beq .fibL2994
.fibL2993:
	mov r9,#1
	str r9,[fp,#-1040]
	bl .fibL2995
.fibL2991:
	ldr r9,[fp,#-1020]
	cmp r9,#0
	bne .fibL2988
.fibL2989:
	mov r9,#0
	str r9,[fp,#-1036]
	bl .fibL2990
.fibL2983:
	mov r9,#1
	str r9,[fp,#-1032]
	bl .fibL2985
.fibL2980:
	mov r9,#1
	str r9,[fp,#-1028]
	bl .fibL2982
.fibL2978:
.fibL2975:
	mov r9,#1
	str r9,[fp,#-1024]
	bl .fibL2977
.fibL2973:
	bl .fibL2970
.fibL2968:
.fibL2966:
	mov r9,#0
	str r9,[fp,#-1020]
	bl .fibL2967
.fibL2963:
	bl .fibL2961
.fibL2958:
.fibL2955:
	mov r9,#1
	str r9,[fp,#-1016]
	bl .fibL2957
.fibL2953:
.fibL2950:
	mov r9,#1
	str r9,[fp,#-1012]
	bl .fibL2952
.fibL2945:
	bl .fibL2943
.fibL2940:
.fibL2938:
	mov r9,#0
	str r9,[fp,#-1008]
	bl .fibL2939
.fibL2932:
	mov r9,#1
	str r9,[fp,#-1004]
	bl .fibL2934
.fibL2929:
	mov r9,#1
	str r9,[fp,#-1000]
	bl .fibL2931
.fibL2927:
.fibL2924:
	mov r9,#1
	str r9,[fp,#-996]
	bl .fibL2926
.fibL2922:
	bl .fibL2919
.fibL2912:
	bl .fibL2910
.fibL2907:
	bl .fibL2905
.fibL2902:
.fibL2899:
	mov r9,#1
	str r9,[fp,#-992]
	bl .fibL2901
.fibL2894:
	bl .fibL2892
.fibL2889:
.fibL2887:
	mov r9,#0
	str r9,[fp,#-988]
	bl .fibL2888
.fibL2884:
.fibL2881:
	mov r9,#1
	str r9,[fp,#-984]
	bl .fibL2883
.fibL2876:
	bl .fibL2874
.fibL2871:
.fibL2869:
	mov r9,#0
	str r9,[fp,#-980]
	bl .fibL2870
.fibL2834:
	ldr r9,[fp,#-1552]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-976]
	bl .fibL2835
.fibL2832:
	ldr r9,[fp,#-1512]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-968]
	bl .fibL2833
.fibL2830:
	ldr r9,[fp,#-1500]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-956]
	bl .fibL2831
.fibL2828:
	ldr r9,[fp,#-1472]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-944]
	bl .fibL2829
.fibL2826:
	ldr r9,[fp,#-1432]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-932]
	bl .fibL2827
.fibL2824:
	ldr r9,[fp,#-1420]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-920]
	bl .fibL2825
.fibL2822:
	ldr r9,[fp,#-1392]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-908]
	bl .fibL2823
.fibL2820:
	ldr r9,[fp,#-1380]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-896]
	bl .fibL2821
.fibL2818:
	ldr r9,[fp,#-972]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-884]
	bl .fibL2819
.fibL2816:
	ldr r9,[fp,#-964]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-876]
	bl .fibL2817
.fibL2814:
	ldr r9,[fp,#-952]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-868]
	bl .fibL2815
.fibL2812:
	ldr r9,[fp,#-940]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-860]
	bl .fibL2813
.fibL2810:
	ldr r9,[fp,#-928]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-852]
	bl .fibL2811
.fibL2808:
	ldr r9,[fp,#-916]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-844]
	bl .fibL2809
.fibL2806:
	ldr r9,[fp,#-904]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-836]
	bl .fibL2807
.fibL2804:
	ldr r9,[fp,#-892]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-828]
	bl .fibL2805
.fibL1842:
	ldr r9,[fp,#-788]
	cmp r9,#0
	bne .fibL1839
.fibL1840:
	bl .fibL1841
.fibL1837:
	ldr r9,[fp,#-752]
	cmp r9,#0
	beq .fibL1835
.fibL1834:
	mov r9,#1
	str r9,[fp,#-788]
	bl .fibL1836
.fibL1832:
.fibL1829:
	mov r9,#1
	str r9,[fp,#-784]
	bl .fibL1831
.fibL1827:
	ldr r9,[fp,#-776]
	cmp r9,#0
	beq .fibL1825
.fibL1824:
	mov r9,#1
	str r9,[fp,#-780]
	bl .fibL1826
.fibL1821:
	mov r9,#1
	str r9,[fp,#-776]
	bl .fibL1823
.fibL1819:
	ldr r9,[fp,#-752]
	cmp r9,#0
	beq .fibL1817
.fibL1816:
	mov r9,#1
	str r9,[fp,#-772]
	bl .fibL1818
.fibL1814:
	ldr r9,[fp,#-752]
	cmp r9,#0
	bne .fibL1811
.fibL1812:
	mov r9,#0
	str r9,[fp,#-768]
	bl .fibL1813
.fibL1806:
	mov r9,#1
	str r9,[fp,#-764]
	bl .fibL1808
.fibL1803:
	mov r9,#1
	str r9,[fp,#-760]
	bl .fibL1805
.fibL1801:
.fibL1798:
	mov r9,#1
	str r9,[fp,#-756]
	bl .fibL1800
.fibL1796:
	bl .fibL1793
.fibL1791:
	ldr r9,[fp,#-748]
	cmp r9,#0
	bne .fibL1788
.fibL1789:
	mov r9,#0
	str r9,[fp,#-752]
	bl .fibL1790
.fibL1786:
	ldr r9,[fp,#-712]
	cmp r9,#0
	beq .fibL1784
.fibL1783:
	mov r9,#1
	str r9,[fp,#-748]
	bl .fibL1785
.fibL1781:
.fibL1778:
	mov r9,#1
	str r9,[fp,#-744]
	bl .fibL1780
.fibL1776:
	ldr r9,[fp,#-736]
	cmp r9,#0
	beq .fibL1774
.fibL1773:
	mov r9,#1
	str r9,[fp,#-740]
	bl .fibL1775
.fibL1770:
	mov r9,#1
	str r9,[fp,#-736]
	bl .fibL1772
.fibL1768:
	ldr r9,[fp,#-712]
	cmp r9,#0
	beq .fibL1766
.fibL1765:
	mov r9,#1
	str r9,[fp,#-732]
	bl .fibL1767
.fibL1763:
	ldr r9,[fp,#-712]
	cmp r9,#0
	bne .fibL1760
.fibL1761:
	mov r9,#0
	str r9,[fp,#-728]
	bl .fibL1762
.fibL1755:
	mov r9,#1
	str r9,[fp,#-724]
	bl .fibL1757
.fibL1752:
	mov r9,#1
	str r9,[fp,#-720]
	bl .fibL1754
.fibL1750:
.fibL1747:
	mov r9,#1
	str r9,[fp,#-716]
	bl .fibL1749
.fibL1745:
	bl .fibL1742
.fibL1740:
	ldr r9,[fp,#-708]
	cmp r9,#0
	bne .fibL1737
.fibL1738:
	mov r9,#0
	str r9,[fp,#-712]
	bl .fibL1739
.fibL1735:
	ldr r9,[fp,#-672]
	cmp r9,#0
	beq .fibL1733
.fibL1732:
	mov r9,#1
	str r9,[fp,#-708]
	bl .fibL1734
.fibL1730:
.fibL1727:
	mov r9,#1
	str r9,[fp,#-704]
	bl .fibL1729
.fibL1725:
	ldr r9,[fp,#-696]
	cmp r9,#0
	beq .fibL1723
.fibL1722:
	mov r9,#1
	str r9,[fp,#-700]
	bl .fibL1724
.fibL1719:
	mov r9,#1
	str r9,[fp,#-696]
	bl .fibL1721
.fibL1717:
	ldr r9,[fp,#-672]
	cmp r9,#0
	beq .fibL1715
.fibL1714:
	mov r9,#1
	str r9,[fp,#-692]
	bl .fibL1716
.fibL1712:
	ldr r9,[fp,#-672]
	cmp r9,#0
	bne .fibL1709
.fibL1710:
	mov r9,#0
	str r9,[fp,#-688]
	bl .fibL1711
.fibL1704:
	mov r9,#1
	str r9,[fp,#-684]
	bl .fibL1706
.fibL1701:
	mov r9,#1
	str r9,[fp,#-680]
	bl .fibL1703
.fibL1699:
.fibL1696:
	mov r9,#1
	str r9,[fp,#-676]
	bl .fibL1698
.fibL1694:
	bl .fibL1691
.fibL1689:
	ldr r9,[fp,#-668]
	cmp r9,#0
	bne .fibL1686
.fibL1687:
	mov r9,#0
	str r9,[fp,#-672]
	bl .fibL1688
.fibL1684:
	ldr r9,[fp,#-632]
	cmp r9,#0
	beq .fibL1682
.fibL1681:
	mov r9,#1
	str r9,[fp,#-668]
	bl .fibL1683
.fibL1679:
.fibL1676:
	mov r9,#1
	str r9,[fp,#-664]
	bl .fibL1678
.fibL1674:
	ldr r9,[fp,#-656]
	cmp r9,#0
	beq .fibL1672
.fibL1671:
	mov r9,#1
	str r9,[fp,#-660]
	bl .fibL1673
.fibL1668:
	mov r9,#1
	str r9,[fp,#-656]
	bl .fibL1670
.fibL1666:
	ldr r9,[fp,#-632]
	cmp r9,#0
	beq .fibL1664
.fibL1663:
	mov r9,#1
	str r9,[fp,#-652]
	bl .fibL1665
.fibL1661:
	ldr r9,[fp,#-632]
	cmp r9,#0
	bne .fibL1658
.fibL1659:
	mov r9,#0
	str r9,[fp,#-648]
	bl .fibL1660
.fibL1653:
	mov r9,#1
	str r9,[fp,#-644]
	bl .fibL1655
.fibL1650:
	mov r9,#1
	str r9,[fp,#-640]
	bl .fibL1652
.fibL1648:
.fibL1645:
	mov r9,#1
	str r9,[fp,#-636]
	bl .fibL1647
.fibL1643:
	bl .fibL1640
.fibL1638:
	ldr r9,[fp,#-628]
	cmp r9,#0
	bne .fibL1635
.fibL1636:
	mov r9,#0
	str r9,[fp,#-632]
	bl .fibL1637
.fibL1633:
	ldr r9,[fp,#-592]
	cmp r9,#0
	beq .fibL1631
.fibL1630:
	mov r9,#1
	str r9,[fp,#-628]
	bl .fibL1632
.fibL1628:
.fibL1625:
	mov r9,#1
	str r9,[fp,#-624]
	bl .fibL1627
.fibL1623:
	ldr r9,[fp,#-616]
	cmp r9,#0
	beq .fibL1621
.fibL1620:
	mov r9,#1
	str r9,[fp,#-620]
	bl .fibL1622
.fibL1617:
	mov r9,#1
	str r9,[fp,#-616]
	bl .fibL1619
.fibL1615:
	ldr r9,[fp,#-592]
	cmp r9,#0
	beq .fibL1613
.fibL1612:
	mov r9,#1
	str r9,[fp,#-612]
	bl .fibL1614
.fibL1610:
	ldr r9,[fp,#-592]
	cmp r9,#0
	bne .fibL1607
.fibL1608:
	mov r9,#0
	str r9,[fp,#-608]
	bl .fibL1609
.fibL1602:
	mov r9,#1
	str r9,[fp,#-604]
	bl .fibL1604
.fibL1599:
	mov r9,#1
	str r9,[fp,#-600]
	bl .fibL1601
.fibL1597:
.fibL1594:
	mov r9,#1
	str r9,[fp,#-596]
	bl .fibL1596
.fibL1592:
	bl .fibL1589
.fibL1587:
	ldr r9,[fp,#-588]
	cmp r9,#0
	bne .fibL1584
.fibL1585:
	mov r9,#0
	str r9,[fp,#-592]
	bl .fibL1586
.fibL1582:
	ldr r9,[fp,#-552]
	cmp r9,#0
	beq .fibL1580
.fibL1579:
	mov r9,#1
	str r9,[fp,#-588]
	bl .fibL1581
.fibL1577:
.fibL1574:
	mov r9,#1
	str r9,[fp,#-584]
	bl .fibL1576
.fibL1572:
	ldr r9,[fp,#-576]
	cmp r9,#0
	beq .fibL1570
.fibL1569:
	mov r9,#1
	str r9,[fp,#-580]
	bl .fibL1571
.fibL1566:
	mov r9,#1
	str r9,[fp,#-576]
	bl .fibL1568
.fibL1564:
	ldr r9,[fp,#-552]
	cmp r9,#0
	beq .fibL1562
.fibL1561:
	mov r9,#1
	str r9,[fp,#-572]
	bl .fibL1563
.fibL1559:
	ldr r9,[fp,#-552]
	cmp r9,#0
	bne .fibL1556
.fibL1557:
	mov r9,#0
	str r9,[fp,#-568]
	bl .fibL1558
.fibL1551:
	mov r9,#1
	str r9,[fp,#-564]
	bl .fibL1553
.fibL1548:
	mov r9,#1
	str r9,[fp,#-560]
	bl .fibL1550
.fibL1546:
.fibL1543:
	mov r9,#1
	str r9,[fp,#-556]
	bl .fibL1545
.fibL1541:
	bl .fibL1538
.fibL1536:
	ldr r9,[fp,#-548]
	cmp r9,#0
	bne .fibL1533
.fibL1534:
	mov r9,#0
	str r9,[fp,#-552]
	bl .fibL1535
.fibL1531:
	ldr r9,[fp,#-512]
	cmp r9,#0
	beq .fibL1529
.fibL1528:
	mov r9,#1
	str r9,[fp,#-548]
	bl .fibL1530
.fibL1526:
.fibL1523:
	mov r9,#1
	str r9,[fp,#-544]
	bl .fibL1525
.fibL1521:
	ldr r9,[fp,#-536]
	cmp r9,#0
	beq .fibL1519
.fibL1518:
	mov r9,#1
	str r9,[fp,#-540]
	bl .fibL1520
.fibL1515:
	mov r9,#1
	str r9,[fp,#-536]
	bl .fibL1517
.fibL1513:
	ldr r9,[fp,#-512]
	cmp r9,#0
	beq .fibL1511
.fibL1510:
	mov r9,#1
	str r9,[fp,#-532]
	bl .fibL1512
.fibL1508:
	ldr r9,[fp,#-512]
	cmp r9,#0
	bne .fibL1505
.fibL1506:
	mov r9,#0
	str r9,[fp,#-528]
	bl .fibL1507
.fibL1500:
	mov r9,#1
	str r9,[fp,#-524]
	bl .fibL1502
.fibL1497:
	mov r9,#1
	str r9,[fp,#-520]
	bl .fibL1499
.fibL1495:
.fibL1492:
	mov r9,#1
	str r9,[fp,#-516]
	bl .fibL1494
.fibL1490:
	bl .fibL1487
.fibL1485:
	ldr r9,[fp,#-508]
	cmp r9,#0
	bne .fibL1482
.fibL1483:
	mov r9,#0
	str r9,[fp,#-512]
	bl .fibL1484
.fibL1480:
	ldr r9,[fp,#-472]
	cmp r9,#0
	beq .fibL1478
.fibL1477:
	mov r9,#1
	str r9,[fp,#-508]
	bl .fibL1479
.fibL1475:
.fibL1472:
	mov r9,#1
	str r9,[fp,#-504]
	bl .fibL1474
.fibL1470:
	ldr r9,[fp,#-496]
	cmp r9,#0
	beq .fibL1468
.fibL1467:
	mov r9,#1
	str r9,[fp,#-500]
	bl .fibL1469
.fibL1464:
	mov r9,#1
	str r9,[fp,#-496]
	bl .fibL1466
.fibL1462:
	ldr r9,[fp,#-472]
	cmp r9,#0
	beq .fibL1460
.fibL1459:
	mov r9,#1
	str r9,[fp,#-492]
	bl .fibL1461
.fibL1457:
	ldr r9,[fp,#-472]
	cmp r9,#0
	bne .fibL1454
.fibL1455:
	mov r9,#0
	str r9,[fp,#-488]
	bl .fibL1456
.fibL1449:
	mov r9,#1
	str r9,[fp,#-484]
	bl .fibL1451
.fibL1446:
	mov r9,#1
	str r9,[fp,#-480]
	bl .fibL1448
.fibL1444:
.fibL1441:
	mov r9,#1
	str r9,[fp,#-476]
	bl .fibL1443
.fibL1439:
	bl .fibL1436
.fibL1434:
	ldr r9,[fp,#-468]
	cmp r9,#0
	bne .fibL1431
.fibL1432:
	mov r9,#0
	str r9,[fp,#-472]
	bl .fibL1433
.fibL1429:
	ldr r9,[fp,#-432]
	cmp r9,#0
	beq .fibL1427
.fibL1426:
	mov r9,#1
	str r9,[fp,#-468]
	bl .fibL1428
.fibL1424:
.fibL1421:
	mov r9,#1
	str r9,[fp,#-464]
	bl .fibL1423
.fibL1419:
	ldr r9,[fp,#-456]
	cmp r9,#0
	beq .fibL1417
.fibL1416:
	mov r9,#1
	str r9,[fp,#-460]
	bl .fibL1418
.fibL1413:
	mov r9,#1
	str r9,[fp,#-456]
	bl .fibL1415
.fibL1411:
	ldr r9,[fp,#-432]
	cmp r9,#0
	beq .fibL1409
.fibL1408:
	mov r9,#1
	str r9,[fp,#-452]
	bl .fibL1410
.fibL1406:
	ldr r9,[fp,#-432]
	cmp r9,#0
	bne .fibL1403
.fibL1404:
	mov r9,#0
	str r9,[fp,#-448]
	bl .fibL1405
.fibL1398:
	mov r9,#1
	str r9,[fp,#-444]
	bl .fibL1400
.fibL1395:
	mov r9,#1
	str r9,[fp,#-440]
	bl .fibL1397
.fibL1393:
.fibL1390:
	mov r9,#1
	str r9,[fp,#-436]
	bl .fibL1392
.fibL1388:
	bl .fibL1385
.fibL1383:
	ldr r9,[fp,#-428]
	cmp r9,#0
	bne .fibL1380
.fibL1381:
	mov r9,#0
	str r9,[fp,#-432]
	bl .fibL1382
.fibL1378:
	ldr r9,[fp,#-392]
	cmp r9,#0
	beq .fibL1376
.fibL1375:
	mov r9,#1
	str r9,[fp,#-428]
	bl .fibL1377
.fibL1373:
.fibL1370:
	mov r9,#1
	str r9,[fp,#-424]
	bl .fibL1372
.fibL1368:
	ldr r9,[fp,#-416]
	cmp r9,#0
	beq .fibL1366
.fibL1365:
	mov r9,#1
	str r9,[fp,#-420]
	bl .fibL1367
.fibL1362:
	mov r9,#1
	str r9,[fp,#-416]
	bl .fibL1364
.fibL1360:
	ldr r9,[fp,#-392]
	cmp r9,#0
	beq .fibL1358
.fibL1357:
	mov r9,#1
	str r9,[fp,#-412]
	bl .fibL1359
.fibL1355:
	ldr r9,[fp,#-392]
	cmp r9,#0
	bne .fibL1352
.fibL1353:
	mov r9,#0
	str r9,[fp,#-408]
	bl .fibL1354
.fibL1347:
	mov r9,#1
	str r9,[fp,#-404]
	bl .fibL1349
.fibL1344:
	mov r9,#1
	str r9,[fp,#-400]
	bl .fibL1346
.fibL1342:
.fibL1339:
	mov r9,#1
	str r9,[fp,#-396]
	bl .fibL1341
.fibL1337:
	bl .fibL1334
.fibL1332:
	ldr r9,[fp,#-388]
	cmp r9,#0
	bne .fibL1329
.fibL1330:
	mov r9,#0
	str r9,[fp,#-392]
	bl .fibL1331
.fibL1327:
	ldr r9,[fp,#-352]
	cmp r9,#0
	beq .fibL1325
.fibL1324:
	mov r9,#1
	str r9,[fp,#-388]
	bl .fibL1326
.fibL1322:
.fibL1319:
	mov r9,#1
	str r9,[fp,#-384]
	bl .fibL1321
.fibL1317:
	ldr r9,[fp,#-376]
	cmp r9,#0
	beq .fibL1315
.fibL1314:
	mov r9,#1
	str r9,[fp,#-380]
	bl .fibL1316
.fibL1311:
	mov r9,#1
	str r9,[fp,#-376]
	bl .fibL1313
.fibL1309:
	ldr r9,[fp,#-352]
	cmp r9,#0
	beq .fibL1307
.fibL1306:
	mov r9,#1
	str r9,[fp,#-372]
	bl .fibL1308
.fibL1304:
	ldr r9,[fp,#-352]
	cmp r9,#0
	bne .fibL1301
.fibL1302:
	mov r9,#0
	str r9,[fp,#-368]
	bl .fibL1303
.fibL1296:
	mov r9,#1
	str r9,[fp,#-364]
	bl .fibL1298
.fibL1293:
	mov r9,#1
	str r9,[fp,#-360]
	bl .fibL1295
.fibL1291:
.fibL1288:
	mov r9,#1
	str r9,[fp,#-356]
	bl .fibL1290
.fibL1286:
	bl .fibL1283
.fibL1281:
	ldr r9,[fp,#-348]
	cmp r9,#0
	bne .fibL1278
.fibL1279:
	mov r9,#0
	str r9,[fp,#-352]
	bl .fibL1280
.fibL1276:
	ldr r9,[fp,#-312]
	cmp r9,#0
	beq .fibL1274
.fibL1273:
	mov r9,#1
	str r9,[fp,#-348]
	bl .fibL1275
.fibL1271:
.fibL1268:
	mov r9,#1
	str r9,[fp,#-344]
	bl .fibL1270
.fibL1266:
	ldr r9,[fp,#-336]
	cmp r9,#0
	beq .fibL1264
.fibL1263:
	mov r9,#1
	str r9,[fp,#-340]
	bl .fibL1265
.fibL1260:
	mov r9,#1
	str r9,[fp,#-336]
	bl .fibL1262
.fibL1258:
	ldr r9,[fp,#-312]
	cmp r9,#0
	beq .fibL1256
.fibL1255:
	mov r9,#1
	str r9,[fp,#-332]
	bl .fibL1257
.fibL1253:
	ldr r9,[fp,#-312]
	cmp r9,#0
	bne .fibL1250
.fibL1251:
	mov r9,#0
	str r9,[fp,#-328]
	bl .fibL1252
.fibL1245:
	mov r9,#1
	str r9,[fp,#-324]
	bl .fibL1247
.fibL1242:
	mov r9,#1
	str r9,[fp,#-320]
	bl .fibL1244
.fibL1240:
.fibL1237:
	mov r9,#1
	str r9,[fp,#-316]
	bl .fibL1239
.fibL1235:
	bl .fibL1232
.fibL1230:
	ldr r9,[fp,#-308]
	cmp r9,#0
	bne .fibL1227
.fibL1228:
	mov r9,#0
	str r9,[fp,#-312]
	bl .fibL1229
.fibL1225:
	ldr r9,[fp,#-272]
	cmp r9,#0
	beq .fibL1223
.fibL1222:
	mov r9,#1
	str r9,[fp,#-308]
	bl .fibL1224
.fibL1220:
.fibL1217:
	mov r9,#1
	str r9,[fp,#-304]
	bl .fibL1219
.fibL1215:
	ldr r9,[fp,#-296]
	cmp r9,#0
	beq .fibL1213
.fibL1212:
	mov r9,#1
	str r9,[fp,#-300]
	bl .fibL1214
.fibL1209:
	mov r9,#1
	str r9,[fp,#-296]
	bl .fibL1211
.fibL1207:
	ldr r9,[fp,#-272]
	cmp r9,#0
	beq .fibL1205
.fibL1204:
	mov r9,#1
	str r9,[fp,#-292]
	bl .fibL1206
.fibL1202:
	ldr r9,[fp,#-272]
	cmp r9,#0
	bne .fibL1199
.fibL1200:
	mov r9,#0
	str r9,[fp,#-288]
	bl .fibL1201
.fibL1194:
	mov r9,#1
	str r9,[fp,#-284]
	bl .fibL1196
.fibL1191:
	mov r9,#1
	str r9,[fp,#-280]
	bl .fibL1193
.fibL1189:
.fibL1186:
	mov r9,#1
	str r9,[fp,#-276]
	bl .fibL1188
.fibL1184:
	bl .fibL1181
.fibL1179:
	ldr r9,[fp,#-268]
	cmp r9,#0
	bne .fibL1176
.fibL1177:
	mov r9,#0
	str r9,[fp,#-272]
	bl .fibL1178
.fibL1174:
	ldr r9,[fp,#-232]
	cmp r9,#0
	beq .fibL1172
.fibL1171:
	mov r9,#1
	str r9,[fp,#-268]
	bl .fibL1173
.fibL1169:
.fibL1166:
	mov r9,#1
	str r9,[fp,#-264]
	bl .fibL1168
.fibL1164:
	ldr r9,[fp,#-256]
	cmp r9,#0
	beq .fibL1162
.fibL1161:
	mov r9,#1
	str r9,[fp,#-260]
	bl .fibL1163
.fibL1158:
	mov r9,#1
	str r9,[fp,#-256]
	bl .fibL1160
.fibL1156:
	ldr r9,[fp,#-232]
	cmp r9,#0
	beq .fibL1154
.fibL1153:
	mov r9,#1
	str r9,[fp,#-252]
	bl .fibL1155
.fibL1151:
	ldr r9,[fp,#-232]
	cmp r9,#0
	bne .fibL1148
.fibL1149:
	mov r9,#0
	str r9,[fp,#-248]
	bl .fibL1150
.fibL1143:
	mov r9,#1
	str r9,[fp,#-244]
	bl .fibL1145
.fibL1140:
	mov r9,#1
	str r9,[fp,#-240]
	bl .fibL1142
.fibL1138:
.fibL1135:
	mov r9,#1
	str r9,[fp,#-236]
	bl .fibL1137
.fibL1133:
	bl .fibL1130
.fibL1128:
	ldr r9,[fp,#-228]
	cmp r9,#0
	bne .fibL1125
.fibL1126:
	mov r9,#0
	str r9,[fp,#-232]
	bl .fibL1127
.fibL1123:
	ldr r9,[fp,#-192]
	cmp r9,#0
	beq .fibL1121
.fibL1120:
	mov r9,#1
	str r9,[fp,#-228]
	bl .fibL1122
.fibL1118:
.fibL1115:
	mov r9,#1
	str r9,[fp,#-224]
	bl .fibL1117
.fibL1113:
	ldr r9,[fp,#-216]
	cmp r9,#0
	beq .fibL1111
.fibL1110:
	mov r9,#1
	str r9,[fp,#-220]
	bl .fibL1112
.fibL1107:
	mov r9,#1
	str r9,[fp,#-216]
	bl .fibL1109
.fibL1105:
	ldr r9,[fp,#-192]
	cmp r9,#0
	beq .fibL1103
.fibL1102:
	mov r9,#1
	str r9,[fp,#-212]
	bl .fibL1104
.fibL1100:
	ldr r9,[fp,#-192]
	cmp r9,#0
	bne .fibL1097
.fibL1098:
	mov r9,#0
	str r9,[fp,#-208]
	bl .fibL1099
.fibL1092:
	mov r9,#1
	str r9,[fp,#-204]
	bl .fibL1094
.fibL1089:
	mov r9,#1
	str r9,[fp,#-200]
	bl .fibL1091
.fibL1087:
.fibL1084:
	mov r9,#1
	str r9,[fp,#-196]
	bl .fibL1086
.fibL1082:
	bl .fibL1079
.fibL1077:
.fibL1075:
	mov r9,#0
	str r9,[fp,#-192]
	bl .fibL1076
.fibL1072:
	bl .fibL1070
.fibL1067:
.fibL1064:
	mov r9,#1
	str r9,[fp,#-188]
	bl .fibL1066
.fibL1062:
.fibL1059:
	mov r9,#1
	str r9,[fp,#-184]
	bl .fibL1061
.fibL1054:
	bl .fibL1052
.fibL1049:
.fibL1047:
	mov r9,#0
	str r9,[fp,#-180]
	bl .fibL1048
.fibL1041:
	mov r9,#1
	str r9,[fp,#-176]
	bl .fibL1043
.fibL1038:
	mov r9,#1
	str r9,[fp,#-172]
	bl .fibL1040
.fibL1036:
.fibL1033:
	mov r9,#1
	str r9,[fp,#-168]
	bl .fibL1035
.fibL1031:
	bl .fibL1028
.fibL994:
	ldr r9,[fp,#-820]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-164]
	bl .fibL995
.fibL992:
	ldr r9,[fp,#-816]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-156]
	bl .fibL993
.fibL990:
	ldr r9,[fp,#-812]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-144]
	bl .fibL991
.fibL988:
	ldr r9,[fp,#-808]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-132]
	bl .fibL989
.fibL986:
	ldr r9,[fp,#-804]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-120]
	bl .fibL987
.fibL984:
	ldr r9,[fp,#-800]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-108]
	bl .fibL985
.fibL982:
	ldr r9,[fp,#-792]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-96]
	bl .fibL983
.fibL980:
	ldr r9,[fp,#-160]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-84]
	bl .fibL981
.fibL978:
	ldr r9,[fp,#-152]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-72]
	bl .fibL979
.fibL976:
	ldr r9,[fp,#-140]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-60]
	bl .fibL977
.fibL974:
	ldr r9,[fp,#-128]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-52]
	bl .fibL975
.fibL972:
	ldr r9,[fp,#-116]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-44]
	bl .fibL973
.fibL970:
	ldr r9,[fp,#-104]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-36]
	bl .fibL971
.fibL968:
	ldr r9,[fp,#-92]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-28]
	bl .fibL969
.fibL966:
	ldr r9,[fp,#-80]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-20]
	bl .fibL967
.fibL964:
	ldr r9,[fp,#-68]
	rsb r8,r9,#0
	mov r9,r8
	str r9,[fp,#-12]
	bl .fibL965
.fibL2:
	mov r0,#1
	mov r9,#2640
	add sp,sp,r9
	pop {r4,r5,r6,r7,r8,r9,r10}
	pop {fp,pc}
main:@r6 r7 r8 
	push {fp,lr}
	push {r6,r7,r8}
	add fp,sp,#4
	sub sp,sp,#8
.mainL0:
.mainL1:
.mainL6:
	mov r8,#1
.mainL3:
	@call void @putch(i32 102)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#102
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 105)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#105
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 98)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#98
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 40)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#40
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r28)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 41)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#41
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#32
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 61)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#61
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 32)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#32
	bl putch
	add sp,sp,#4 @stack align 8bytes
	@%r17 = call i32 @fib(i32 %r28)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r8
	bl fib
	mov r7,r0
	add sp,sp,#4 @stack align 8bytes
	@call void @putint(i32 %r17)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,r7
	bl putint
	add sp,sp,#4 @stack align 8bytes
	@call void @putch(i32 10)
	sub sp,sp,#4 @stack align 8bytes
	mov r0,#10
	bl putch
	add sp,sp,#4 @stack align 8bytes
	add r7,r8,#1
.mainL4:
	cmp r7,#20
	ble .mainL7
.mainL5:
	mov r0,#0
	add sp,sp,#8
	pop {r6,r7,r8}
	pop {fp,pc}
.mainL7:
	mov r8,r7
	bl .mainL3
	.section	.note.GNU-stack,"",%progbits
