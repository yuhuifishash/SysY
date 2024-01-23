declare i32 @getint()
declare i32 @getch()
declare float @getfloat()
declare i32 @getarray(ptr)
declare i32 @getfarray(ptr)
declare void @putint(i32)
declare void @putch(i32)
declare void @putfloat(float)
declare void @putarray(i32,ptr)
declare void @putfarray(i32,ptr)
declare void @putf(ptr)
declare void @_sysy_starttime(i32)
declare void @_sysy_stoptime(i32)
declare void @llvm.memset.p0.i32(ptr,i8,i32,i1)
@SHIFT_TABLE = global [16 x i32] [i32 1,i32 2,i32 4,i32 8,i32 16,i32 32,i32 64,i32 128,i32 256,i32 512,i32 1024,i32 2048,i32 4096,i32 8192,i32 16384,i32 32768]
define i32 @long_func()
{
L0:
    br label %L1
L1:
    br label %L5
L5:
    call void @putint(i32 1)
    call void @putch(i32 10)
    br label %L924
L217:
    %r4299 = phi i32 [%r4224,%L218],[2,%L924]
    %r4297 = phi i32 [%r5256,%L218],[1,%L924]
    %r4295 = phi i32 [%r4294,%L218],[1,%L924]
    br label %L923
L218:
    %r1910 = icmp sgt i32 %r5256,0
    br i1 %r1910, label %L217, label %L219
L219:
    call void @putint(i32 %r4294)
    call void @putch(i32 10)
    br label %L885
L221:
    %r5174 = phi i32 [0,%L923],[%r5173,%L222]
    %r4930 = phi i32 [0,%L923],[%r1009,%L222]
    %r4695 = phi i32 [%r4297,%L923],[%r1003,%L222]
    %r4478 = phi i32 [1,%L923],[%r1006,%L222]
    %r985 = srem i32 %r4695,2
    %r986 = icmp ne i32 %r985,0
    br i1 %r986, label %L226, label %L225
L222:
    %r1012 = icmp slt i32 %r1009,16
    br i1 %r1012, label %L221, label %L223
L223:
    %r1016 = icmp ne i32 %r5173,0
    br i1 %r1016, label %L228, label %L229
L224:
    %r997 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4930
    %r998 = load i32, ptr %r997
    %r1000 = add i32 %r5174,%r998
    br label %L225
L225:
    %r5173 = phi i32 [%r5174,%L221],[%r5174,%L226],[%r1000,%L224]
    %r1003 = sdiv i32 %r4695,2
    %r1006 = sdiv i32 %r4478,2
    %r1009 = add i32 %r4930,1
    br label %L222
L226:
    %r989 = srem i32 %r4478,2
    %r990 = icmp ne i32 %r989,0
    br i1 %r990, label %L224, label %L225
L228:
    %r1024 = icmp ne i32 %r4299,0
    br i1 %r1024, label %L918, label %L233
L229:
    %r4934 = phi i32 [%r1009,%L223],[%r4933,%L233]
    %r4294 = phi i32 [%r4295,%L223],[%r4283,%L233]
    %r1446 = icmp ne i32 %r4299,0
    br i1 %r1446, label %L893, label %L327
L231:
    %r4292 = phi i32 [%r4295,%L918],[%r4253,%L232]
    %r4287 = phi i32 [%r5214,%L232],[%r4299,%L918]
    %r4282 = phi i32 [0,%L918],[%r4281,%L232]
    br label %L913
L232:
    %r1436 = icmp ne i32 %r5214,0
    br i1 %r1436, label %L231, label %L233
L233:
    %r4933 = phi i32 [%r1009,%L228],[%r4948,%L232]
    %r4283 = phi i32 [0,%L228],[%r4281,%L232]
    br label %L229
L235:
    %r5180 = phi i32 [0,%L913],[%r5179,%L236]
    %r4935 = phi i32 [0,%L913],[%r1060,%L236]
    %r4700 = phi i32 [%r4287,%L913],[%r1054,%L236]
    %r4483 = phi i32 [1,%L913],[%r1057,%L236]
    %r1036 = srem i32 %r4700,2
    %r1037 = icmp ne i32 %r1036,0
    br i1 %r1037, label %L240, label %L239
L236:
    %r1063 = icmp slt i32 %r1060,16
    br i1 %r1063, label %L235, label %L237
L237:
    %r1067 = icmp ne i32 %r5179,0
    br i1 %r1067, label %L242, label %L243
L238:
    %r1048 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4935
    %r1049 = load i32, ptr %r1048
    %r1051 = add i32 %r5180,%r1049
    br label %L239
L239:
    %r5179 = phi i32 [%r5180,%L235],[%r5180,%L240],[%r1051,%L238]
    %r1054 = sdiv i32 %r4700,2
    %r1057 = sdiv i32 %r4483,2
    %r1060 = add i32 %r4935,1
    br label %L236
L240:
    %r1040 = srem i32 %r4483,2
    %r1041 = icmp ne i32 %r1040,0
    br i1 %r1041, label %L238, label %L239
L242:
    %r1075 = icmp ne i32 %r4292,0
    br i1 %r1075, label %L928, label %L247
L243:
    %r4939 = phi i32 [%r1060,%L237],[%r4938,%L247]
    %r4281 = phi i32 [%r4282,%L237],[%r4277,%L247]
    %r1235 = icmp ne i32 %r4292,0
    br i1 %r1235, label %L902, label %L281
L245:
    %r4276 = phi i32 [%r4282,%L928],[%r5186,%L246]
    %r4268 = phi i32 [%r4292,%L928],[%r5194,%L246]
    br label %L870
L246:
    %r1225 = icmp ne i32 %r5194,0
    br i1 %r1225, label %L245, label %L247
L247:
    %r4938 = phi i32 [%r1060,%L242],[%r1216,%L246]
    %r4277 = phi i32 [%r4282,%L242],[%r5186,%L246]
    br label %L243
L249:
    %r5187 = phi i32 [%r5186,%L250],[0,%L870]
    %r4940 = phi i32 [%r1122,%L250],[0,%L870]
    %r4705 = phi i32 [%r1116,%L250],[%r4276,%L870]
    %r4488 = phi i32 [%r1119,%L250],[%r4268,%L870]
    %r1087 = srem i32 %r4705,2
    %r1088 = icmp ne i32 %r1087,0
    br i1 %r1088, label %L252, label %L253
L250:
    %r1125 = icmp slt i32 %r1122,16
    br i1 %r1125, label %L249, label %L251
L251:
    br label %L901
L252:
    %r1091 = srem i32 %r4488,2
    %r1093 = icmp eq i32 %r1091,0
    br i1 %r1093, label %L255, label %L256
L253:
    %r1105 = srem i32 %r4488,2
    %r1106 = icmp ne i32 %r1105,0
    br i1 %r1106, label %L257, label %L258
L254:
    %r5186 = phi i32 [%r5185,%L256],[%r5189,%L258]
    %r1116 = sdiv i32 %r4705,2
    %r1119 = sdiv i32 %r4488,2
    %r1122 = add i32 %r4940,1
    br label %L250
L255:
    %r1099 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4940
    %r1100 = load i32, ptr %r1099
    %r1102 = add i32 %r5187,%r1100
    br label %L256
L256:
    %r5185 = phi i32 [%r5187,%L252],[%r1102,%L255]
    br label %L254
L257:
    %r1110 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4940
    %r1111 = load i32, ptr %r1110
    %r1113 = add i32 %r5187,%r1111
    br label %L258
L258:
    %r5189 = phi i32 [%r5187,%L253],[%r1113,%L257]
    br label %L254
L260:
    %r5191 = phi i32 [%r5190,%L261],[0,%L901]
    %r4942 = phi i32 [%r1164,%L261],[0,%L901]
    %r4707 = phi i32 [%r4276,%L901],[%r1158,%L261]
    %r4490 = phi i32 [%r1161,%L261],[%r4268,%L901]
    %r1140 = srem i32 %r4707,2
    %r1141 = icmp ne i32 %r1140,0
    br i1 %r1141, label %L265, label %L264
L261:
    %r1167 = icmp slt i32 %r1164,16
    br i1 %r1167, label %L260, label %L262
L262:
    br label %L268
L263:
    %r1152 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4942
    %r1153 = load i32, ptr %r1152
    %r1155 = add i32 %r5191,%r1153
    br label %L264
L264:
    %r5190 = phi i32 [%r5191,%L260],[%r5191,%L265],[%r1155,%L263]
    %r1158 = sdiv i32 %r4707,2
    %r1161 = sdiv i32 %r4490,2
    %r1164 = add i32 %r4942,1
    br label %L261
L265:
    %r1144 = srem i32 %r4490,2
    %r1145 = icmp ne i32 %r1144,0
    br i1 %r1145, label %L263, label %L264
L268:
    %r1182 = load i32, ptr %r1181
    %r1183 = mul i32 %r5190,%r1182
    br label %L896
L269:
    br label %L246
L271:
    %r5195 = phi i32 [%r5194,%L272],[0,%L896]
    %r4945 = phi i32 [%r1216,%L272],[0,%L896]
    %r4710 = phi i32 [%r1183,%L896],[%r1210,%L272]
    %r4493 = phi i32 [%r1213,%L272],[65535,%L896]
    %r1192 = srem i32 %r4710,2
    %r1193 = icmp ne i32 %r1192,0
    br i1 %r1193, label %L276, label %L275
L272:
    %r1219 = icmp slt i32 %r1216,16
    br i1 %r1219, label %L271, label %L273
L273:
    br label %L269
L274:
    %r1204 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4945
    %r1205 = load i32, ptr %r1204
    %r1207 = add i32 %r5195,%r1205
    br label %L275
L275:
    %r5194 = phi i32 [%r5195,%L271],[%r5195,%L276],[%r1207,%L274]
    %r1210 = sdiv i32 %r4710,2
    %r1213 = sdiv i32 %r4493,2
    %r1216 = add i32 %r4945,1
    br label %L272
L276:
    %r1196 = srem i32 %r4493,2
    %r1197 = icmp ne i32 %r1196,0
    br i1 %r1197, label %L274, label %L275
L279:
    %r4252 = phi i32 [%r4292,%L902],[%r5200,%L280]
    %r4245 = phi i32 [%r4292,%L902],[%r5208,%L280]
    br label %L879
L280:
    %r1385 = icmp ne i32 %r5208,0
    br i1 %r1385, label %L279, label %L281
L281:
    %r4948 = phi i32 [%r4939,%L243],[%r1376,%L280]
    %r4253 = phi i32 [%r4292,%L243],[%r5200,%L280]
    br label %L313
L283:
    %r5201 = phi i32 [0,%L879],[%r5200,%L284]
    %r4949 = phi i32 [%r1282,%L284],[0,%L879]
    %r4714 = phi i32 [%r1276,%L284],[%r4252,%L879]
    %r4497 = phi i32 [%r1279,%L284],[%r4245,%L879]
    %r1247 = srem i32 %r4714,2
    %r1248 = icmp ne i32 %r1247,0
    br i1 %r1248, label %L286, label %L287
L284:
    %r1285 = icmp slt i32 %r1282,16
    br i1 %r1285, label %L283, label %L285
L285:
    br label %L916
L286:
    %r1251 = srem i32 %r4497,2
    %r1253 = icmp eq i32 %r1251,0
    br i1 %r1253, label %L289, label %L290
L287:
    %r1265 = srem i32 %r4497,2
    %r1266 = icmp ne i32 %r1265,0
    br i1 %r1266, label %L291, label %L292
L288:
    %r5200 = phi i32 [%r5199,%L290],[%r5203,%L292]
    %r1276 = sdiv i32 %r4714,2
    %r1279 = sdiv i32 %r4497,2
    %r1282 = add i32 %r4949,1
    br label %L284
L289:
    %r1259 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4949
    %r1260 = load i32, ptr %r1259
    %r1262 = add i32 %r5201,%r1260
    br label %L290
L290:
    %r5199 = phi i32 [%r5201,%L286],[%r1262,%L289]
    br label %L288
L291:
    %r1270 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4949
    %r1271 = load i32, ptr %r1270
    %r1273 = add i32 %r5201,%r1271
    br label %L292
L292:
    %r5203 = phi i32 [%r5201,%L287],[%r1273,%L291]
    br label %L288
L294:
    %r5205 = phi i32 [0,%L916],[%r5204,%L295]
    %r4951 = phi i32 [%r1324,%L295],[0,%L916]
    %r4716 = phi i32 [%r4252,%L916],[%r1318,%L295]
    %r4499 = phi i32 [%r1321,%L295],[%r4245,%L916]
    %r1300 = srem i32 %r4716,2
    %r1301 = icmp ne i32 %r1300,0
    br i1 %r1301, label %L299, label %L298
L295:
    %r1327 = icmp slt i32 %r1324,16
    br i1 %r1327, label %L294, label %L296
L296:
    br label %L302
L297:
    %r1312 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4951
    %r1313 = load i32, ptr %r1312
    %r1315 = add i32 %r5205,%r1313
    br label %L298
L298:
    %r5204 = phi i32 [%r5205,%L294],[%r5205,%L299],[%r1315,%L297]
    %r1318 = sdiv i32 %r4716,2
    %r1321 = sdiv i32 %r4499,2
    %r1324 = add i32 %r4951,1
    br label %L295
L299:
    %r1304 = srem i32 %r4499,2
    %r1305 = icmp ne i32 %r1304,0
    br i1 %r1305, label %L297, label %L298
L302:
    %r1342 = load i32, ptr %r1341
    %r1343 = mul i32 %r5204,%r1342
    br label %L883
L303:
    br label %L280
L305:
    %r5209 = phi i32 [%r5208,%L306],[0,%L883]
    %r4954 = phi i32 [%r1376,%L306],[0,%L883]
    %r4719 = phi i32 [%r1370,%L306],[%r1343,%L883]
    %r4502 = phi i32 [%r1373,%L306],[65535,%L883]
    %r1352 = srem i32 %r4719,2
    %r1353 = icmp ne i32 %r1352,0
    br i1 %r1353, label %L310, label %L309
L306:
    %r1379 = icmp slt i32 %r1376,16
    br i1 %r1379, label %L305, label %L307
L307:
    br label %L303
L308:
    %r1364 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4954
    %r1365 = load i32, ptr %r1364
    %r1367 = add i32 %r5209,%r1365
    br label %L309
L309:
    %r5208 = phi i32 [%r5209,%L305],[%r5209,%L310],[%r1367,%L308]
    %r1370 = sdiv i32 %r4719,2
    %r1373 = sdiv i32 %r4502,2
    %r1376 = add i32 %r4954,1
    br label %L306
L310:
    %r1356 = srem i32 %r4502,2
    %r1357 = icmp ne i32 %r1356,0
    br i1 %r1357, label %L308, label %L309
L313:
    br label %L318
L314:
    br label %L232
L318:
    %r1409 = icmp sgt i32 %r4287,32767
    br i1 %r1409, label %L321, label %L322
L320:
    br label %L314
L321:
    %r1414 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1415 = load i32, ptr %r1414
    %r1416 = sdiv i32 %r4287,%r1415
    %r1419 = add i32 %r1416,65536
    %r1425 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r1426 = load i32, ptr %r1425
    %r1427 = sub i32 %r1419,%r1426
    br label %L323
L322:
    %r1430 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1431 = load i32, ptr %r1430
    %r1432 = sdiv i32 %r4287,%r1431
    br label %L323
L323:
    %r5214 = phi i32 [%r1427,%L321],[%r1432,%L322]
    br label %L320
L325:
    %r4231 = phi i32 [%r4299,%L893],[%r4198,%L326]
    %r4227 = phi i32 [%r5252,%L326],[%r4299,%L893]
    %r4223 = phi i32 [%r4222,%L326],[0,%L893]
    br label %L890
L326:
    %r1858 = icmp ne i32 %r5252,0
    br i1 %r1858, label %L325, label %L327
L327:
    %r4957 = phi i32 [%r4934,%L229],[%r4971,%L326]
    %r4224 = phi i32 [0,%L229],[%r4222,%L326]
    br label %L419
L329:
    %r5218 = phi i32 [0,%L890],[%r5217,%L330]
    %r4958 = phi i32 [0,%L890],[%r1482,%L330]
    %r4726 = phi i32 [%r1476,%L330],[%r4227,%L890]
    %r4506 = phi i32 [1,%L890],[%r1479,%L330]
    %r1458 = srem i32 %r4726,2
    %r1459 = icmp ne i32 %r1458,0
    br i1 %r1459, label %L334, label %L333
L330:
    %r1485 = icmp slt i32 %r1482,16
    br i1 %r1485, label %L329, label %L331
L331:
    %r1489 = icmp ne i32 %r5217,0
    br i1 %r1489, label %L336, label %L337
L332:
    %r1470 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4958
    %r1471 = load i32, ptr %r1470
    %r1473 = add i32 %r5218,%r1471
    br label %L333
L333:
    %r5217 = phi i32 [%r5218,%L329],[%r5218,%L334],[%r1473,%L332]
    %r1476 = sdiv i32 %r4726,2
    %r1479 = sdiv i32 %r4506,2
    %r1482 = add i32 %r4958,1
    br label %L330
L334:
    %r1462 = srem i32 %r4506,2
    %r1463 = icmp ne i32 %r1462,0
    br i1 %r1463, label %L332, label %L333
L336:
    %r1497 = icmp ne i32 %r4231,0
    br i1 %r1497, label %L877, label %L341
L337:
    %r4962 = phi i32 [%r1482,%L331],[%r4961,%L341]
    %r4222 = phi i32 [%r4223,%L331],[%r4219,%L341]
    %r1657 = icmp ne i32 %r4231,0
    br i1 %r1657, label %L888, label %L375
L339:
    %r4218 = phi i32 [%r5224,%L340],[%r4223,%L877]
    %r4211 = phi i32 [%r5232,%L340],[%r4231,%L877]
    br label %L873
L340:
    %r1647 = icmp ne i32 %r5232,0
    br i1 %r1647, label %L339, label %L341
L341:
    %r4961 = phi i32 [%r1482,%L336],[%r1638,%L340]
    %r4219 = phi i32 [%r4223,%L336],[%r5224,%L340]
    br label %L337
L343:
    %r5225 = phi i32 [%r5224,%L344],[0,%L873]
    %r4963 = phi i32 [%r1544,%L344],[0,%L873]
    %r4731 = phi i32 [%r1538,%L344],[%r4218,%L873]
    %r4511 = phi i32 [%r1541,%L344],[%r4211,%L873]
    %r1509 = srem i32 %r4731,2
    %r1510 = icmp ne i32 %r1509,0
    br i1 %r1510, label %L346, label %L347
L344:
    %r1547 = icmp slt i32 %r1544,16
    br i1 %r1547, label %L343, label %L345
L345:
    br label %L887
L346:
    %r1513 = srem i32 %r4511,2
    %r1515 = icmp eq i32 %r1513,0
    br i1 %r1515, label %L349, label %L350
L347:
    %r1527 = srem i32 %r4511,2
    %r1528 = icmp ne i32 %r1527,0
    br i1 %r1528, label %L351, label %L352
L348:
    %r5224 = phi i32 [%r5223,%L350],[%r5227,%L352]
    %r1538 = sdiv i32 %r4731,2
    %r1541 = sdiv i32 %r4511,2
    %r1544 = add i32 %r4963,1
    br label %L344
L349:
    %r1521 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4963
    %r1522 = load i32, ptr %r1521
    %r1524 = add i32 %r5225,%r1522
    br label %L350
L350:
    %r5223 = phi i32 [%r5225,%L346],[%r1524,%L349]
    br label %L348
L351:
    %r1532 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4963
    %r1533 = load i32, ptr %r1532
    %r1535 = add i32 %r5225,%r1533
    br label %L352
L352:
    %r5227 = phi i32 [%r5225,%L347],[%r1535,%L351]
    br label %L348
L354:
    %r5229 = phi i32 [%r5228,%L355],[0,%L887]
    %r4965 = phi i32 [0,%L887],[%r1586,%L355]
    %r4733 = phi i32 [%r1580,%L355],[%r4218,%L887]
    %r4513 = phi i32 [%r1583,%L355],[%r4211,%L887]
    %r1562 = srem i32 %r4733,2
    %r1563 = icmp ne i32 %r1562,0
    br i1 %r1563, label %L359, label %L358
L355:
    %r1589 = icmp slt i32 %r1586,16
    br i1 %r1589, label %L354, label %L356
L356:
    br label %L362
L357:
    %r1574 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4965
    %r1575 = load i32, ptr %r1574
    %r1577 = add i32 %r5229,%r1575
    br label %L358
L358:
    %r5228 = phi i32 [%r5229,%L354],[%r5229,%L359],[%r1577,%L357]
    %r1580 = sdiv i32 %r4733,2
    %r1583 = sdiv i32 %r4513,2
    %r1586 = add i32 %r4965,1
    br label %L355
L359:
    %r1566 = srem i32 %r4513,2
    %r1567 = icmp ne i32 %r1566,0
    br i1 %r1567, label %L357, label %L358
L362:
    %r1604 = load i32, ptr %r1603
    %r1605 = mul i32 %r5228,%r1604
    br label %L889
L363:
    br label %L340
L365:
    %r5233 = phi i32 [%r5232,%L366],[0,%L889]
    %r4968 = phi i32 [0,%L889],[%r1638,%L366]
    %r4736 = phi i32 [%r1632,%L366],[%r1605,%L889]
    %r4516 = phi i32 [%r1635,%L366],[65535,%L889]
    %r1614 = srem i32 %r4736,2
    %r1615 = icmp ne i32 %r1614,0
    br i1 %r1615, label %L370, label %L369
L366:
    %r1641 = icmp slt i32 %r1638,16
    br i1 %r1641, label %L365, label %L367
L367:
    br label %L363
L368:
    %r1626 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4968
    %r1627 = load i32, ptr %r1626
    %r1629 = add i32 %r5233,%r1627
    br label %L369
L369:
    %r5232 = phi i32 [%r5233,%L365],[%r5233,%L370],[%r1629,%L368]
    %r1632 = sdiv i32 %r4736,2
    %r1635 = sdiv i32 %r4516,2
    %r1638 = add i32 %r4968,1
    br label %L366
L370:
    %r1618 = srem i32 %r4516,2
    %r1619 = icmp ne i32 %r1618,0
    br i1 %r1619, label %L368, label %L369
L373:
    %r4197 = phi i32 [%r4231,%L888],[%r5238,%L374]
    %r4191 = phi i32 [%r5246,%L374],[%r4231,%L888]
    br label %L919
L374:
    %r1807 = icmp ne i32 %r5246,0
    br i1 %r1807, label %L373, label %L375
L375:
    %r4971 = phi i32 [%r4962,%L337],[%r1798,%L374]
    %r4198 = phi i32 [%r4231,%L337],[%r5238,%L374]
    br label %L407
L377:
    %r5239 = phi i32 [0,%L919],[%r5238,%L378]
    %r4972 = phi i32 [0,%L919],[%r1704,%L378]
    %r4740 = phi i32 [%r4197,%L919],[%r1698,%L378]
    %r4520 = phi i32 [%r4191,%L919],[%r1701,%L378]
    %r1669 = srem i32 %r4740,2
    %r1670 = icmp ne i32 %r1669,0
    br i1 %r1670, label %L380, label %L381
L378:
    %r1707 = icmp slt i32 %r1704,16
    br i1 %r1707, label %L377, label %L379
L379:
    br label %L899
L380:
    %r1673 = srem i32 %r4520,2
    %r1675 = icmp eq i32 %r1673,0
    br i1 %r1675, label %L383, label %L384
L381:
    %r1687 = srem i32 %r4520,2
    %r1688 = icmp ne i32 %r1687,0
    br i1 %r1688, label %L385, label %L386
L382:
    %r5238 = phi i32 [%r5237,%L384],[%r5241,%L386]
    %r1698 = sdiv i32 %r4740,2
    %r1701 = sdiv i32 %r4520,2
    %r1704 = add i32 %r4972,1
    br label %L378
L383:
    %r1681 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4972
    %r1682 = load i32, ptr %r1681
    %r1684 = add i32 %r5239,%r1682
    br label %L384
L384:
    %r5237 = phi i32 [%r5239,%L380],[%r1684,%L383]
    br label %L382
L385:
    %r1692 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4972
    %r1693 = load i32, ptr %r1692
    %r1695 = add i32 %r5239,%r1693
    br label %L386
L386:
    %r5241 = phi i32 [%r5239,%L381],[%r1695,%L385]
    br label %L382
L388:
    %r5243 = phi i32 [%r5242,%L389],[0,%L899]
    %r4974 = phi i32 [%r1746,%L389],[0,%L899]
    %r4742 = phi i32 [%r1740,%L389],[%r4197,%L899]
    %r4522 = phi i32 [%r1743,%L389],[%r4191,%L899]
    %r1722 = srem i32 %r4742,2
    %r1723 = icmp ne i32 %r1722,0
    br i1 %r1723, label %L393, label %L392
L389:
    %r1749 = icmp slt i32 %r1746,16
    br i1 %r1749, label %L388, label %L390
L390:
    br label %L396
L391:
    %r1734 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4974
    %r1735 = load i32, ptr %r1734
    %r1737 = add i32 %r5243,%r1735
    br label %L392
L392:
    %r5242 = phi i32 [%r5243,%L388],[%r5243,%L393],[%r1737,%L391]
    %r1740 = sdiv i32 %r4742,2
    %r1743 = sdiv i32 %r4522,2
    %r1746 = add i32 %r4974,1
    br label %L389
L393:
    %r1726 = srem i32 %r4522,2
    %r1727 = icmp ne i32 %r1726,0
    br i1 %r1727, label %L391, label %L392
L396:
    %r1764 = load i32, ptr %r1763
    %r1765 = mul i32 %r5242,%r1764
    br label %L921
L397:
    br label %L374
L399:
    %r5247 = phi i32 [0,%L921],[%r5246,%L400]
    %r4977 = phi i32 [0,%L921],[%r1798,%L400]
    %r4745 = phi i32 [%r1765,%L921],[%r1792,%L400]
    %r4525 = phi i32 [%r1795,%L400],[65535,%L921]
    %r1774 = srem i32 %r4745,2
    %r1775 = icmp ne i32 %r1774,0
    br i1 %r1775, label %L404, label %L403
L400:
    %r1801 = icmp slt i32 %r1798,16
    br i1 %r1801, label %L399, label %L401
L401:
    br label %L397
L402:
    %r1786 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4977
    %r1787 = load i32, ptr %r1786
    %r1789 = add i32 %r5247,%r1787
    br label %L403
L403:
    %r5246 = phi i32 [%r5247,%L399],[%r5247,%L404],[%r1789,%L402]
    %r1792 = sdiv i32 %r4745,2
    %r1795 = sdiv i32 %r4525,2
    %r1798 = add i32 %r4977,1
    br label %L400
L404:
    %r1778 = srem i32 %r4525,2
    %r1779 = icmp ne i32 %r1778,0
    br i1 %r1779, label %L402, label %L403
L407:
    br label %L412
L408:
    br label %L326
L412:
    %r1831 = icmp sgt i32 %r4227,32767
    br i1 %r1831, label %L415, label %L416
L414:
    br label %L408
L415:
    %r1836 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1837 = load i32, ptr %r1836
    %r1838 = sdiv i32 %r4227,%r1837
    %r1841 = add i32 %r1838,65536
    %r1847 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r1848 = load i32, ptr %r1847
    %r1849 = sub i32 %r1841,%r1848
    br label %L417
L416:
    %r1852 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1853 = load i32, ptr %r1852
    %r1854 = sdiv i32 %r4227,%r1853
    br label %L417
L417:
    %r5252 = phi i32 [%r1849,%L415],[%r1854,%L416]
    br label %L414
L419:
    br label %L424
L420:
    br label %L218
L424:
    %r1882 = icmp sgt i32 %r4297,32767
    br i1 %r1882, label %L427, label %L428
L426:
    br label %L420
L427:
    %r1887 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1888 = load i32, ptr %r1887
    %r1889 = sdiv i32 %r4297,%r1888
    %r1892 = add i32 %r1889,65536
    %r1898 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r1899 = load i32, ptr %r1898
    %r1900 = sub i32 %r1892,%r1899
    br label %L429
L428:
    %r1903 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1904 = load i32, ptr %r1903
    %r1905 = sdiv i32 %r4297,%r1904
    br label %L429
L429:
    %r5256 = phi i32 [%r1900,%L427],[%r1905,%L428]
    %r4750 = phi i32 [%r1889,%L427],[%r4297,%L428]
    br label %L426
L431:
    %r4981 = phi i32 [%r4980,%L432],[%r4957,%L885]
    %r4755 = phi i32 [%r4754,%L432],[%r4750,%L885]
    %r4421 = phi i32 [%r2877,%L432],[2,%L885]
    %r1930 = icmp sgt i32 %r4421,0
    br i1 %r1930, label %L884, label %L437
L432:
    %r2880 = icmp slt i32 %r2877,16
    br i1 %r2880, label %L431, label %L433
L433:
    br label %L933
L435:
    %r4179 = phi i32 [%r4076,%L436],[2,%L884]
    %r4175 = phi i32 [%r5344,%L436],[%r4421,%L884]
    %r4171 = phi i32 [%r4170,%L436],[1,%L884]
    br label %L894
L436:
    %r2869 = icmp sgt i32 %r5344,0
    br i1 %r2869, label %L435, label %L437
L437:
    %r4980 = phi i32 [%r4981,%L431],[%r5010,%L436]
    %r4754 = phi i32 [%r4755,%L431],[%r4812,%L436]
    %r4172 = phi i32 [1,%L431],[%r4170,%L436]
    call void @putint(i32 %r4172)
    call void @putch(i32 10)
    %r2877 = add i32 %r4421,1
    br label %L432
L439:
    %r5262 = phi i32 [%r5261,%L440],[0,%L894]
    %r4983 = phi i32 [%r1968,%L440],[0,%L894]
    %r4757 = phi i32 [%r1962,%L440],[%r4175,%L894]
    %r4531 = phi i32 [%r1965,%L440],[1,%L894]
    %r1944 = srem i32 %r4757,2
    %r1945 = icmp ne i32 %r1944,0
    br i1 %r1945, label %L444, label %L443
L440:
    %r1971 = icmp slt i32 %r1968,16
    br i1 %r1971, label %L439, label %L441
L441:
    %r1975 = icmp ne i32 %r5261,0
    br i1 %r1975, label %L446, label %L447
L442:
    %r1956 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4983
    %r1957 = load i32, ptr %r1956
    %r1959 = add i32 %r5262,%r1957
    br label %L443
L443:
    %r5261 = phi i32 [%r5262,%L439],[%r5262,%L444],[%r1959,%L442]
    %r1962 = sdiv i32 %r4757,2
    %r1965 = sdiv i32 %r4531,2
    %r1968 = add i32 %r4983,1
    br label %L440
L444:
    %r1948 = srem i32 %r4531,2
    %r1949 = icmp ne i32 %r1948,0
    br i1 %r1949, label %L442, label %L443
L446:
    %r1983 = icmp ne i32 %r4179,0
    br i1 %r1983, label %L922, label %L451
L447:
    %r4987 = phi i32 [%r1968,%L441],[%r4986,%L451]
    %r4170 = phi i32 [%r4171,%L441],[%r4153,%L451]
    %r2405 = icmp ne i32 %r4179,0
    br i1 %r2405, label %L880, label %L545
L449:
    %r4166 = phi i32 [%r4171,%L922],[%r4115,%L450]
    %r4159 = phi i32 [%r4179,%L922],[%r5302,%L450]
    %r4152 = phi i32 [0,%L922],[%r4151,%L450]
    br label %L892
L450:
    %r2395 = icmp ne i32 %r5302,0
    br i1 %r2395, label %L449, label %L451
L451:
    %r4986 = phi i32 [%r1968,%L446],[%r5001,%L450]
    %r4153 = phi i32 [0,%L446],[%r4151,%L450]
    br label %L447
L453:
    %r5268 = phi i32 [%r5267,%L454],[0,%L892]
    %r4988 = phi i32 [%r2019,%L454],[0,%L892]
    %r4762 = phi i32 [%r4159,%L892],[%r2013,%L454]
    %r4536 = phi i32 [%r2016,%L454],[1,%L892]
    %r1995 = srem i32 %r4762,2
    %r1996 = icmp ne i32 %r1995,0
    br i1 %r1996, label %L458, label %L457
L454:
    %r2022 = icmp slt i32 %r2019,16
    br i1 %r2022, label %L453, label %L455
L455:
    %r2026 = icmp ne i32 %r5267,0
    br i1 %r2026, label %L460, label %L461
L456:
    %r2007 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4988
    %r2008 = load i32, ptr %r2007
    %r2010 = add i32 %r5268,%r2008
    br label %L457
L457:
    %r5267 = phi i32 [%r5268,%L453],[%r5268,%L458],[%r2010,%L456]
    %r2013 = sdiv i32 %r4762,2
    %r2016 = sdiv i32 %r4536,2
    %r2019 = add i32 %r4988,1
    br label %L454
L458:
    %r1999 = srem i32 %r4536,2
    %r2000 = icmp ne i32 %r1999,0
    br i1 %r2000, label %L456, label %L457
L460:
    %r2034 = icmp ne i32 %r4166,0
    br i1 %r2034, label %L917, label %L465
L461:
    %r4992 = phi i32 [%r2019,%L455],[%r4991,%L465]
    %r4151 = phi i32 [%r4152,%L455],[%r4145,%L465]
    %r2194 = icmp ne i32 %r4166,0
    br i1 %r2194, label %L907, label %L499
L463:
    %r4144 = phi i32 [%r4152,%L917],[%r5274,%L464]
    %r4134 = phi i32 [%r5282,%L464],[%r4166,%L917]
    br label %L909
L464:
    %r2184 = icmp ne i32 %r5282,0
    br i1 %r2184, label %L463, label %L465
L465:
    %r4991 = phi i32 [%r2019,%L460],[%r2175,%L464]
    %r4145 = phi i32 [%r4152,%L460],[%r5274,%L464]
    br label %L461
L467:
    %r5275 = phi i32 [0,%L909],[%r5274,%L468]
    %r4993 = phi i32 [%r2081,%L468],[0,%L909]
    %r4767 = phi i32 [%r4144,%L909],[%r2075,%L468]
    %r4541 = phi i32 [%r2078,%L468],[%r4134,%L909]
    %r2046 = srem i32 %r4767,2
    %r2047 = icmp ne i32 %r2046,0
    br i1 %r2047, label %L470, label %L471
L468:
    %r2084 = icmp slt i32 %r2081,16
    br i1 %r2084, label %L467, label %L469
L469:
    br label %L911
L470:
    %r2050 = srem i32 %r4541,2
    %r2052 = icmp eq i32 %r2050,0
    br i1 %r2052, label %L473, label %L474
L471:
    %r2064 = srem i32 %r4541,2
    %r2065 = icmp ne i32 %r2064,0
    br i1 %r2065, label %L475, label %L476
L472:
    %r5274 = phi i32 [%r5273,%L474],[%r5277,%L476]
    %r2075 = sdiv i32 %r4767,2
    %r2078 = sdiv i32 %r4541,2
    %r2081 = add i32 %r4993,1
    br label %L468
L473:
    %r2058 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4993
    %r2059 = load i32, ptr %r2058
    %r2061 = add i32 %r5275,%r2059
    br label %L474
L474:
    %r5273 = phi i32 [%r5275,%L470],[%r2061,%L473]
    br label %L472
L475:
    %r2069 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4993
    %r2070 = load i32, ptr %r2069
    %r2072 = add i32 %r5275,%r2070
    br label %L476
L476:
    %r5277 = phi i32 [%r5275,%L471],[%r2072,%L475]
    br label %L472
L478:
    %r5279 = phi i32 [0,%L911],[%r5278,%L479]
    %r4995 = phi i32 [%r2123,%L479],[0,%L911]
    %r4769 = phi i32 [%r4144,%L911],[%r2117,%L479]
    %r4543 = phi i32 [%r4134,%L911],[%r2120,%L479]
    %r2099 = srem i32 %r4769,2
    %r2100 = icmp ne i32 %r2099,0
    br i1 %r2100, label %L483, label %L482
L479:
    %r2126 = icmp slt i32 %r2123,16
    br i1 %r2126, label %L478, label %L480
L480:
    br label %L486
L481:
    %r2111 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4995
    %r2112 = load i32, ptr %r2111
    %r2114 = add i32 %r5279,%r2112
    br label %L482
L482:
    %r5278 = phi i32 [%r5279,%L478],[%r5279,%L483],[%r2114,%L481]
    %r2117 = sdiv i32 %r4769,2
    %r2120 = sdiv i32 %r4543,2
    %r2123 = add i32 %r4995,1
    br label %L479
L483:
    %r2103 = srem i32 %r4543,2
    %r2104 = icmp ne i32 %r2103,0
    br i1 %r2104, label %L481, label %L482
L486:
    %r2141 = load i32, ptr %r2140
    %r2142 = mul i32 %r5278,%r2141
    br label %L908
L487:
    br label %L464
L489:
    %r5283 = phi i32 [0,%L908],[%r5282,%L490]
    %r4998 = phi i32 [%r2175,%L490],[0,%L908]
    %r4772 = phi i32 [%r2142,%L908],[%r2169,%L490]
    %r4546 = phi i32 [%r2172,%L490],[65535,%L908]
    %r2151 = srem i32 %r4772,2
    %r2152 = icmp ne i32 %r2151,0
    br i1 %r2152, label %L494, label %L493
L490:
    %r2178 = icmp slt i32 %r2175,16
    br i1 %r2178, label %L489, label %L491
L491:
    br label %L487
L492:
    %r2163 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4998
    %r2164 = load i32, ptr %r2163
    %r2166 = add i32 %r5283,%r2164
    br label %L493
L493:
    %r5282 = phi i32 [%r5283,%L489],[%r5283,%L494],[%r2166,%L492]
    %r2169 = sdiv i32 %r4772,2
    %r2172 = sdiv i32 %r4546,2
    %r2175 = add i32 %r4998,1
    br label %L490
L494:
    %r2155 = srem i32 %r4546,2
    %r2156 = icmp ne i32 %r2155,0
    br i1 %r2156, label %L492, label %L493
L497:
    %r4114 = phi i32 [%r5288,%L498],[%r4166,%L907]
    %r4105 = phi i32 [%r4166,%L907],[%r5296,%L498]
    br label %L915
L498:
    %r2344 = icmp ne i32 %r5296,0
    br i1 %r2344, label %L497, label %L499
L499:
    %r5001 = phi i32 [%r4992,%L461],[%r2335,%L498]
    %r4115 = phi i32 [%r4166,%L461],[%r5288,%L498]
    br label %L531
L501:
    %r5289 = phi i32 [0,%L915],[%r5288,%L502]
    %r5002 = phi i32 [0,%L915],[%r2241,%L502]
    %r4776 = phi i32 [%r4114,%L915],[%r2235,%L502]
    %r4550 = phi i32 [%r4105,%L915],[%r2238,%L502]
    %r2206 = srem i32 %r4776,2
    %r2207 = icmp ne i32 %r2206,0
    br i1 %r2207, label %L504, label %L505
L502:
    %r2244 = icmp slt i32 %r2241,16
    br i1 %r2244, label %L501, label %L503
L503:
    br label %L920
L504:
    %r2210 = srem i32 %r4550,2
    %r2212 = icmp eq i32 %r2210,0
    br i1 %r2212, label %L507, label %L508
L505:
    %r2224 = srem i32 %r4550,2
    %r2225 = icmp ne i32 %r2224,0
    br i1 %r2225, label %L509, label %L510
L506:
    %r5288 = phi i32 [%r5287,%L508],[%r5291,%L510]
    %r2235 = sdiv i32 %r4776,2
    %r2238 = sdiv i32 %r4550,2
    %r2241 = add i32 %r5002,1
    br label %L502
L507:
    %r2218 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5002
    %r2219 = load i32, ptr %r2218
    %r2221 = add i32 %r5289,%r2219
    br label %L508
L508:
    %r5287 = phi i32 [%r5289,%L504],[%r2221,%L507]
    br label %L506
L509:
    %r2229 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5002
    %r2230 = load i32, ptr %r2229
    %r2232 = add i32 %r5289,%r2230
    br label %L510
L510:
    %r5291 = phi i32 [%r5289,%L505],[%r2232,%L509]
    br label %L506
L512:
    %r5293 = phi i32 [%r5292,%L513],[0,%L920]
    %r5004 = phi i32 [0,%L920],[%r2283,%L513]
    %r4778 = phi i32 [%r4114,%L920],[%r2277,%L513]
    %r4552 = phi i32 [%r4105,%L920],[%r2280,%L513]
    %r2259 = srem i32 %r4778,2
    %r2260 = icmp ne i32 %r2259,0
    br i1 %r2260, label %L517, label %L516
L513:
    %r2286 = icmp slt i32 %r2283,16
    br i1 %r2286, label %L512, label %L514
L514:
    br label %L520
L515:
    %r2271 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5004
    %r2272 = load i32, ptr %r2271
    %r2274 = add i32 %r5293,%r2272
    br label %L516
L516:
    %r5292 = phi i32 [%r5293,%L512],[%r5293,%L517],[%r2274,%L515]
    %r2277 = sdiv i32 %r4778,2
    %r2280 = sdiv i32 %r4552,2
    %r2283 = add i32 %r5004,1
    br label %L513
L517:
    %r2263 = srem i32 %r4552,2
    %r2264 = icmp ne i32 %r2263,0
    br i1 %r2264, label %L515, label %L516
L520:
    %r2301 = load i32, ptr %r2300
    %r2302 = mul i32 %r5292,%r2301
    br label %L910
L521:
    br label %L498
L523:
    %r5297 = phi i32 [0,%L910],[%r5296,%L524]
    %r5007 = phi i32 [%r2335,%L524],[0,%L910]
    %r4781 = phi i32 [%r2329,%L524],[%r2302,%L910]
    %r4555 = phi i32 [%r2332,%L524],[65535,%L910]
    %r2311 = srem i32 %r4781,2
    %r2312 = icmp ne i32 %r2311,0
    br i1 %r2312, label %L528, label %L527
L524:
    %r2338 = icmp slt i32 %r2335,16
    br i1 %r2338, label %L523, label %L525
L525:
    br label %L521
L526:
    %r2323 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5007
    %r2324 = load i32, ptr %r2323
    %r2326 = add i32 %r5297,%r2324
    br label %L527
L527:
    %r5296 = phi i32 [%r5297,%L523],[%r5297,%L528],[%r2326,%L526]
    %r2329 = sdiv i32 %r4781,2
    %r2332 = sdiv i32 %r4555,2
    %r2335 = add i32 %r5007,1
    br label %L524
L528:
    %r2315 = srem i32 %r4555,2
    %r2316 = icmp ne i32 %r2315,0
    br i1 %r2316, label %L526, label %L527
L531:
    br label %L536
L532:
    br label %L450
L536:
    %r2368 = icmp sgt i32 %r4159,32767
    br i1 %r2368, label %L539, label %L540
L538:
    br label %L532
L539:
    %r2373 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2374 = load i32, ptr %r2373
    %r2375 = sdiv i32 %r4159,%r2374
    %r2378 = add i32 %r2375,65536
    %r2384 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r2385 = load i32, ptr %r2384
    %r2386 = sub i32 %r2378,%r2385
    br label %L541
L540:
    %r2389 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2390 = load i32, ptr %r2389
    %r2391 = sdiv i32 %r4159,%r2390
    br label %L541
L541:
    %r5302 = phi i32 [%r2386,%L539],[%r2391,%L540]
    br label %L538
L543:
    %r4087 = phi i32 [%r4042,%L544],[%r4179,%L880]
    %r4081 = phi i32 [%r5340,%L544],[%r4179,%L880]
    %r4075 = phi i32 [%r4074,%L544],[0,%L880]
    br label %L891
L544:
    %r2817 = icmp ne i32 %r5340,0
    br i1 %r2817, label %L543, label %L545
L545:
    %r5010 = phi i32 [%r4987,%L447],[%r5024,%L544]
    %r4076 = phi i32 [0,%L447],[%r4074,%L544]
    br label %L637
L547:
    %r5306 = phi i32 [%r5305,%L548],[0,%L891]
    %r5011 = phi i32 [0,%L891],[%r2441,%L548]
    %r4788 = phi i32 [%r2435,%L548],[%r4081,%L891]
    %r4559 = phi i32 [%r2438,%L548],[1,%L891]
    %r2417 = srem i32 %r4788,2
    %r2418 = icmp ne i32 %r2417,0
    br i1 %r2418, label %L552, label %L551
L548:
    %r2444 = icmp slt i32 %r2441,16
    br i1 %r2444, label %L547, label %L549
L549:
    %r2448 = icmp ne i32 %r5305,0
    br i1 %r2448, label %L554, label %L555
L550:
    %r2429 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5011
    %r2430 = load i32, ptr %r2429
    %r2432 = add i32 %r5306,%r2430
    br label %L551
L551:
    %r5305 = phi i32 [%r5306,%L547],[%r5306,%L552],[%r2432,%L550]
    %r2435 = sdiv i32 %r4788,2
    %r2438 = sdiv i32 %r4559,2
    %r2441 = add i32 %r5011,1
    br label %L548
L552:
    %r2421 = srem i32 %r4559,2
    %r2422 = icmp ne i32 %r2421,0
    br i1 %r2422, label %L550, label %L551
L554:
    %r2456 = icmp ne i32 %r4087,0
    br i1 %r2456, label %L886, label %L559
L555:
    %r5015 = phi i32 [%r2441,%L549],[%r5014,%L559]
    %r4074 = phi i32 [%r4075,%L549],[%r4069,%L559]
    %r2616 = icmp ne i32 %r4087,0
    br i1 %r2616, label %L926, label %L593
L557:
    %r4068 = phi i32 [%r5312,%L558],[%r4075,%L886]
    %r4059 = phi i32 [%r5320,%L558],[%r4087,%L886]
    br label %L914
L558:
    %r2606 = icmp ne i32 %r5320,0
    br i1 %r2606, label %L557, label %L559
L559:
    %r5014 = phi i32 [%r2441,%L554],[%r2597,%L558]
    %r4069 = phi i32 [%r4075,%L554],[%r5312,%L558]
    br label %L555
L561:
    %r5313 = phi i32 [0,%L914],[%r5312,%L562]
    %r5016 = phi i32 [0,%L914],[%r2503,%L562]
    %r4793 = phi i32 [%r4068,%L914],[%r2497,%L562]
    %r4564 = phi i32 [%r2500,%L562],[%r4059,%L914]
    %r2468 = srem i32 %r4793,2
    %r2469 = icmp ne i32 %r2468,0
    br i1 %r2469, label %L564, label %L565
L562:
    %r2506 = icmp slt i32 %r2503,16
    br i1 %r2506, label %L561, label %L563
L563:
    br label %L912
L564:
    %r2472 = srem i32 %r4564,2
    %r2474 = icmp eq i32 %r2472,0
    br i1 %r2474, label %L567, label %L568
L565:
    %r2486 = srem i32 %r4564,2
    %r2487 = icmp ne i32 %r2486,0
    br i1 %r2487, label %L569, label %L570
L566:
    %r5312 = phi i32 [%r5311,%L568],[%r5315,%L570]
    %r2497 = sdiv i32 %r4793,2
    %r2500 = sdiv i32 %r4564,2
    %r2503 = add i32 %r5016,1
    br label %L562
L567:
    %r2480 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5016
    %r2481 = load i32, ptr %r2480
    %r2483 = add i32 %r5313,%r2481
    br label %L568
L568:
    %r5311 = phi i32 [%r5313,%L564],[%r2483,%L567]
    br label %L566
L569:
    %r2491 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5016
    %r2492 = load i32, ptr %r2491
    %r2494 = add i32 %r5313,%r2492
    br label %L570
L570:
    %r5315 = phi i32 [%r5313,%L565],[%r2494,%L569]
    br label %L566
L572:
    %r5317 = phi i32 [0,%L912],[%r5316,%L573]
    %r5018 = phi i32 [%r2545,%L573],[0,%L912]
    %r4795 = phi i32 [%r4068,%L912],[%r2539,%L573]
    %r4566 = phi i32 [%r4059,%L912],[%r2542,%L573]
    %r2521 = srem i32 %r4795,2
    %r2522 = icmp ne i32 %r2521,0
    br i1 %r2522, label %L577, label %L576
L573:
    %r2548 = icmp slt i32 %r2545,16
    br i1 %r2548, label %L572, label %L574
L574:
    br label %L580
L575:
    %r2533 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5018
    %r2534 = load i32, ptr %r2533
    %r2536 = add i32 %r5317,%r2534
    br label %L576
L576:
    %r5316 = phi i32 [%r5317,%L572],[%r5317,%L577],[%r2536,%L575]
    %r2539 = sdiv i32 %r4795,2
    %r2542 = sdiv i32 %r4566,2
    %r2545 = add i32 %r5018,1
    br label %L573
L577:
    %r2525 = srem i32 %r4566,2
    %r2526 = icmp ne i32 %r2525,0
    br i1 %r2526, label %L575, label %L576
L580:
    %r2563 = load i32, ptr %r2562
    %r2564 = mul i32 %r5316,%r2563
    br label %L881
L581:
    br label %L558
L583:
    %r5321 = phi i32 [%r5320,%L584],[0,%L881]
    %r5021 = phi i32 [%r2597,%L584],[0,%L881]
    %r4798 = phi i32 [%r2591,%L584],[%r2564,%L881]
    %r4569 = phi i32 [65535,%L881],[%r2594,%L584]
    %r2573 = srem i32 %r4798,2
    %r2574 = icmp ne i32 %r2573,0
    br i1 %r2574, label %L588, label %L587
L584:
    %r2600 = icmp slt i32 %r2597,16
    br i1 %r2600, label %L583, label %L585
L585:
    br label %L581
L586:
    %r2585 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5021
    %r2586 = load i32, ptr %r2585
    %r2588 = add i32 %r5321,%r2586
    br label %L587
L587:
    %r5320 = phi i32 [%r5321,%L583],[%r5321,%L588],[%r2588,%L586]
    %r2591 = sdiv i32 %r4798,2
    %r2594 = sdiv i32 %r4569,2
    %r2597 = add i32 %r5021,1
    br label %L584
L588:
    %r2577 = srem i32 %r4569,2
    %r2578 = icmp ne i32 %r2577,0
    br i1 %r2578, label %L586, label %L587
L591:
    %r4041 = phi i32 [%r4087,%L926],[%r5326,%L592]
    %r4033 = phi i32 [%r4087,%L926],[%r5334,%L592]
    br label %L932
L592:
    %r2766 = icmp ne i32 %r5334,0
    br i1 %r2766, label %L591, label %L593
L593:
    %r5024 = phi i32 [%r5015,%L555],[%r2757,%L592]
    %r4042 = phi i32 [%r4087,%L555],[%r5326,%L592]
    br label %L625
L595:
    %r5327 = phi i32 [0,%L932],[%r5326,%L596]
    %r5025 = phi i32 [0,%L932],[%r2663,%L596]
    %r4802 = phi i32 [%r4041,%L932],[%r2657,%L596]
    %r4573 = phi i32 [%r4033,%L932],[%r2660,%L596]
    %r2628 = srem i32 %r4802,2
    %r2629 = icmp ne i32 %r2628,0
    br i1 %r2629, label %L598, label %L599
L596:
    %r2666 = icmp slt i32 %r2663,16
    br i1 %r2666, label %L595, label %L597
L597:
    br label %L925
L598:
    %r2632 = srem i32 %r4573,2
    %r2634 = icmp eq i32 %r2632,0
    br i1 %r2634, label %L601, label %L602
L599:
    %r2646 = srem i32 %r4573,2
    %r2647 = icmp ne i32 %r2646,0
    br i1 %r2647, label %L603, label %L604
L600:
    %r5326 = phi i32 [%r5325,%L602],[%r5329,%L604]
    %r2657 = sdiv i32 %r4802,2
    %r2660 = sdiv i32 %r4573,2
    %r2663 = add i32 %r5025,1
    br label %L596
L601:
    %r2640 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5025
    %r2641 = load i32, ptr %r2640
    %r2643 = add i32 %r5327,%r2641
    br label %L602
L602:
    %r5325 = phi i32 [%r5327,%L598],[%r2643,%L601]
    br label %L600
L603:
    %r2651 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5025
    %r2652 = load i32, ptr %r2651
    %r2654 = add i32 %r5327,%r2652
    br label %L604
L604:
    %r5329 = phi i32 [%r5327,%L599],[%r2654,%L603]
    br label %L600
L606:
    %r5331 = phi i32 [%r5330,%L607],[0,%L925]
    %r5027 = phi i32 [%r2705,%L607],[0,%L925]
    %r4804 = phi i32 [%r2699,%L607],[%r4041,%L925]
    %r4575 = phi i32 [%r2702,%L607],[%r4033,%L925]
    %r2681 = srem i32 %r4804,2
    %r2682 = icmp ne i32 %r2681,0
    br i1 %r2682, label %L611, label %L610
L607:
    %r2708 = icmp slt i32 %r2705,16
    br i1 %r2708, label %L606, label %L608
L608:
    br label %L614
L609:
    %r2693 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5027
    %r2694 = load i32, ptr %r2693
    %r2696 = add i32 %r5331,%r2694
    br label %L610
L610:
    %r5330 = phi i32 [%r5331,%L606],[%r5331,%L611],[%r2696,%L609]
    %r2699 = sdiv i32 %r4804,2
    %r2702 = sdiv i32 %r4575,2
    %r2705 = add i32 %r5027,1
    br label %L607
L611:
    %r2685 = srem i32 %r4575,2
    %r2686 = icmp ne i32 %r2685,0
    br i1 %r2686, label %L609, label %L610
L614:
    %r2723 = load i32, ptr %r2722
    %r2724 = mul i32 %r5330,%r2723
    br label %L927
L615:
    br label %L592
L617:
    %r5335 = phi i32 [0,%L927],[%r5334,%L618]
    %r5030 = phi i32 [0,%L927],[%r2757,%L618]
    %r4807 = phi i32 [%r2724,%L927],[%r2751,%L618]
    %r4578 = phi i32 [%r2754,%L618],[65535,%L927]
    %r2733 = srem i32 %r4807,2
    %r2734 = icmp ne i32 %r2733,0
    br i1 %r2734, label %L622, label %L621
L618:
    %r2760 = icmp slt i32 %r2757,16
    br i1 %r2760, label %L617, label %L619
L619:
    br label %L615
L620:
    %r2745 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5030
    %r2746 = load i32, ptr %r2745
    %r2748 = add i32 %r5335,%r2746
    br label %L621
L621:
    %r5334 = phi i32 [%r5335,%L617],[%r5335,%L622],[%r2748,%L620]
    %r2751 = sdiv i32 %r4807,2
    %r2754 = sdiv i32 %r4578,2
    %r2757 = add i32 %r5030,1
    br label %L618
L622:
    %r2737 = srem i32 %r4578,2
    %r2738 = icmp ne i32 %r2737,0
    br i1 %r2738, label %L620, label %L621
L625:
    br label %L630
L626:
    br label %L544
L630:
    %r2790 = icmp sgt i32 %r4081,32767
    br i1 %r2790, label %L633, label %L634
L632:
    br label %L626
L633:
    %r2795 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2796 = load i32, ptr %r2795
    %r2797 = sdiv i32 %r4081,%r2796
    %r2800 = add i32 %r2797,65536
    %r2806 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r2807 = load i32, ptr %r2806
    %r2808 = sub i32 %r2800,%r2807
    br label %L635
L634:
    %r2811 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2812 = load i32, ptr %r2811
    %r2813 = sdiv i32 %r4081,%r2812
    br label %L635
L635:
    %r5340 = phi i32 [%r2808,%L633],[%r2813,%L634]
    br label %L632
L637:
    br label %L642
L638:
    br label %L436
L642:
    %r2841 = icmp sgt i32 %r4175,32767
    br i1 %r2841, label %L645, label %L646
L644:
    br label %L638
L645:
    %r2846 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2847 = load i32, ptr %r2846
    %r2848 = sdiv i32 %r4175,%r2847
    %r2851 = add i32 %r2848,65536
    %r2857 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r2858 = load i32, ptr %r2857
    %r2859 = sub i32 %r2851,%r2858
    br label %L647
L646:
    %r2862 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2863 = load i32, ptr %r2862
    %r2864 = sdiv i32 %r4175,%r2863
    br label %L647
L647:
    %r5344 = phi i32 [%r2859,%L645],[%r2864,%L646]
    %r4812 = phi i32 [%r2848,%L645],[%r4175,%L646]
    br label %L644
L649:
    %r5034 = phi i32 [%r4980,%L933],[%r5033,%L650]
    %r4817 = phi i32 [%r4754,%L933],[%r4816,%L650]
    %r4423 = phi i32 [0,%L933],[%r3850,%L650]
    %r2897 = icmp sgt i32 %r4423,0
    br i1 %r2897, label %L930, label %L655
L650:
    %r3853 = icmp slt i32 %r3850,16
    br i1 %r3853, label %L649, label %L651
L651:
    ret i32 0
L653:
    %r4017 = phi i32 [2,%L930],[%r3914,%L654]
    %r4013 = phi i32 [%r4423,%L930],[%r5432,%L654]
    %r4009 = phi i32 [1,%L930],[%r4008,%L654]
    br label %L929
L654:
    %r3836 = icmp sgt i32 %r5432,0
    br i1 %r3836, label %L653, label %L655
L655:
    %r5033 = phi i32 [%r5034,%L649],[%r5063,%L654]
    %r4816 = phi i32 [%r4817,%L649],[%r4874,%L654]
    %r4010 = phi i32 [1,%L649],[%r4008,%L654]
    %r3841 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r4423
    %r3842 = load i32, ptr %r3841
    %r3844 = icmp ne i32 %r3842,%r4010
    br i1 %r3844, label %L866, label %L867
L657:
    %r5350 = phi i32 [0,%L929],[%r5349,%L658]
    %r5036 = phi i32 [0,%L929],[%r2935,%L658]
    %r4819 = phi i32 [%r4013,%L929],[%r2929,%L658]
    %r4584 = phi i32 [1,%L929],[%r2932,%L658]
    %r2911 = srem i32 %r4819,2
    %r2912 = icmp ne i32 %r2911,0
    br i1 %r2912, label %L662, label %L661
L658:
    %r2938 = icmp slt i32 %r2935,16
    br i1 %r2938, label %L657, label %L659
L659:
    %r2942 = icmp ne i32 %r5349,0
    br i1 %r2942, label %L664, label %L665
L660:
    %r2923 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5036
    %r2924 = load i32, ptr %r2923
    %r2926 = add i32 %r5350,%r2924
    br label %L661
L661:
    %r5349 = phi i32 [%r5350,%L657],[%r5350,%L662],[%r2926,%L660]
    %r2929 = sdiv i32 %r4819,2
    %r2932 = sdiv i32 %r4584,2
    %r2935 = add i32 %r5036,1
    br label %L658
L662:
    %r2915 = srem i32 %r4584,2
    %r2916 = icmp ne i32 %r2915,0
    br i1 %r2916, label %L660, label %L661
L664:
    %r2950 = icmp ne i32 %r4017,0
    br i1 %r2950, label %L931, label %L669
L665:
    %r5040 = phi i32 [%r2935,%L659],[%r5039,%L669]
    %r4008 = phi i32 [%r4009,%L659],[%r3991,%L669]
    %r3372 = icmp ne i32 %r4017,0
    br i1 %r3372, label %L871, label %L763
L667:
    %r4004 = phi i32 [%r4009,%L931],[%r3953,%L668]
    %r3997 = phi i32 [%r4017,%L931],[%r5390,%L668]
    %r3990 = phi i32 [0,%L931],[%r3989,%L668]
    br label %L934
L668:
    %r3362 = icmp ne i32 %r5390,0
    br i1 %r3362, label %L667, label %L669
L669:
    %r5039 = phi i32 [%r2935,%L664],[%r5054,%L668]
    %r3991 = phi i32 [0,%L664],[%r3989,%L668]
    br label %L665
L671:
    %r5356 = phi i32 [0,%L934],[%r5355,%L672]
    %r5041 = phi i32 [0,%L934],[%r2986,%L672]
    %r4824 = phi i32 [%r3997,%L934],[%r2980,%L672]
    %r4589 = phi i32 [1,%L934],[%r2983,%L672]
    %r2962 = srem i32 %r4824,2
    %r2963 = icmp ne i32 %r2962,0
    br i1 %r2963, label %L676, label %L675
L672:
    %r2989 = icmp slt i32 %r2986,16
    br i1 %r2989, label %L671, label %L673
L673:
    %r2993 = icmp ne i32 %r5355,0
    br i1 %r2993, label %L678, label %L679
L674:
    %r2974 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5041
    %r2975 = load i32, ptr %r2974
    %r2977 = add i32 %r5356,%r2975
    br label %L675
L675:
    %r5355 = phi i32 [%r5356,%L671],[%r5356,%L676],[%r2977,%L674]
    %r2980 = sdiv i32 %r4824,2
    %r2983 = sdiv i32 %r4589,2
    %r2986 = add i32 %r5041,1
    br label %L672
L676:
    %r2966 = srem i32 %r4589,2
    %r2967 = icmp ne i32 %r2966,0
    br i1 %r2967, label %L674, label %L675
L678:
    %r3001 = icmp ne i32 %r4004,0
    br i1 %r3001, label %L882, label %L683
L679:
    %r5045 = phi i32 [%r2986,%L673],[%r5044,%L683]
    %r3989 = phi i32 [%r3990,%L673],[%r3983,%L683]
    %r3161 = icmp ne i32 %r4004,0
    br i1 %r3161, label %L876, label %L717
L681:
    %r3982 = phi i32 [%r3990,%L882],[%r5362,%L682]
    %r3972 = phi i32 [%r5370,%L682],[%r4004,%L882]
    br label %L935
L682:
    %r3151 = icmp ne i32 %r5370,0
    br i1 %r3151, label %L681, label %L683
L683:
    %r5044 = phi i32 [%r2986,%L678],[%r3142,%L682]
    %r3983 = phi i32 [%r3990,%L678],[%r5362,%L682]
    br label %L679
L685:
    %r5363 = phi i32 [0,%L935],[%r5362,%L686]
    %r5046 = phi i32 [0,%L935],[%r3048,%L686]
    %r4829 = phi i32 [%r3982,%L935],[%r3042,%L686]
    %r4594 = phi i32 [%r3972,%L935],[%r3045,%L686]
    %r3013 = srem i32 %r4829,2
    %r3014 = icmp ne i32 %r3013,0
    br i1 %r3014, label %L688, label %L689
L686:
    %r3051 = icmp slt i32 %r3048,16
    br i1 %r3051, label %L685, label %L687
L687:
    br label %L878
L688:
    %r3017 = srem i32 %r4594,2
    %r3019 = icmp eq i32 %r3017,0
    br i1 %r3019, label %L691, label %L692
L689:
    %r3031 = srem i32 %r4594,2
    %r3032 = icmp ne i32 %r3031,0
    br i1 %r3032, label %L693, label %L694
L690:
    %r5362 = phi i32 [%r5361,%L692],[%r5365,%L694]
    %r3042 = sdiv i32 %r4829,2
    %r3045 = sdiv i32 %r4594,2
    %r3048 = add i32 %r5046,1
    br label %L686
L691:
    %r3025 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5046
    %r3026 = load i32, ptr %r3025
    %r3028 = add i32 %r5363,%r3026
    br label %L692
L692:
    %r5361 = phi i32 [%r5363,%L688],[%r3028,%L691]
    br label %L690
L693:
    %r3036 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5046
    %r3037 = load i32, ptr %r3036
    %r3039 = add i32 %r5363,%r3037
    br label %L694
L694:
    %r5365 = phi i32 [%r5363,%L689],[%r3039,%L693]
    br label %L690
L696:
    %r5367 = phi i32 [%r5366,%L697],[0,%L878]
    %r5048 = phi i32 [%r3090,%L697],[0,%L878]
    %r4831 = phi i32 [%r3084,%L697],[%r3982,%L878]
    %r4596 = phi i32 [%r3087,%L697],[%r3972,%L878]
    %r3066 = srem i32 %r4831,2
    %r3067 = icmp ne i32 %r3066,0
    br i1 %r3067, label %L701, label %L700
L697:
    %r3093 = icmp slt i32 %r3090,16
    br i1 %r3093, label %L696, label %L698
L698:
    br label %L704
L699:
    %r3078 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5048
    %r3079 = load i32, ptr %r3078
    %r3081 = add i32 %r5367,%r3079
    br label %L700
L700:
    %r5366 = phi i32 [%r5367,%L696],[%r5367,%L701],[%r3081,%L699]
    %r3084 = sdiv i32 %r4831,2
    %r3087 = sdiv i32 %r4596,2
    %r3090 = add i32 %r5048,1
    br label %L697
L701:
    %r3070 = srem i32 %r4596,2
    %r3071 = icmp ne i32 %r3070,0
    br i1 %r3071, label %L699, label %L700
L704:
    %r3108 = load i32, ptr %r3107
    %r3109 = mul i32 %r5366,%r3108
    br label %L895
L705:
    br label %L682
L707:
    %r5371 = phi i32 [%r5370,%L708],[0,%L895]
    %r5051 = phi i32 [0,%L895],[%r3142,%L708]
    %r4834 = phi i32 [%r3136,%L708],[%r3109,%L895]
    %r4599 = phi i32 [65535,%L895],[%r3139,%L708]
    %r3118 = srem i32 %r4834,2
    %r3119 = icmp ne i32 %r3118,0
    br i1 %r3119, label %L712, label %L711
L708:
    %r3145 = icmp slt i32 %r3142,16
    br i1 %r3145, label %L707, label %L709
L709:
    br label %L705
L710:
    %r3130 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5051
    %r3131 = load i32, ptr %r3130
    %r3133 = add i32 %r5371,%r3131
    br label %L711
L711:
    %r5370 = phi i32 [%r5371,%L707],[%r5371,%L712],[%r3133,%L710]
    %r3136 = sdiv i32 %r4834,2
    %r3139 = sdiv i32 %r4599,2
    %r3142 = add i32 %r5051,1
    br label %L708
L712:
    %r3122 = srem i32 %r4599,2
    %r3123 = icmp ne i32 %r3122,0
    br i1 %r3123, label %L710, label %L711
L715:
    %r3952 = phi i32 [%r5376,%L716],[%r4004,%L876]
    %r3943 = phi i32 [%r5384,%L716],[%r4004,%L876]
    br label %L875
L716:
    %r3311 = icmp ne i32 %r5384,0
    br i1 %r3311, label %L715, label %L717
L717:
    %r5054 = phi i32 [%r5045,%L679],[%r3302,%L716]
    %r3953 = phi i32 [%r4004,%L679],[%r5376,%L716]
    br label %L749
L719:
    %r5377 = phi i32 [%r5376,%L720],[0,%L875]
    %r5055 = phi i32 [%r3208,%L720],[0,%L875]
    %r4838 = phi i32 [%r3202,%L720],[%r3952,%L875]
    %r4603 = phi i32 [%r3205,%L720],[%r3943,%L875]
    %r3173 = srem i32 %r4838,2
    %r3174 = icmp ne i32 %r3173,0
    br i1 %r3174, label %L722, label %L723
L720:
    %r3211 = icmp slt i32 %r3208,16
    br i1 %r3211, label %L719, label %L721
L721:
    br label %L872
L722:
    %r3177 = srem i32 %r4603,2
    %r3179 = icmp eq i32 %r3177,0
    br i1 %r3179, label %L725, label %L726
L723:
    %r3191 = srem i32 %r4603,2
    %r3192 = icmp ne i32 %r3191,0
    br i1 %r3192, label %L727, label %L728
L724:
    %r5376 = phi i32 [%r5375,%L726],[%r5379,%L728]
    %r3202 = sdiv i32 %r4838,2
    %r3205 = sdiv i32 %r4603,2
    %r3208 = add i32 %r5055,1
    br label %L720
L725:
    %r3185 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5055
    %r3186 = load i32, ptr %r3185
    %r3188 = add i32 %r5377,%r3186
    br label %L726
L726:
    %r5375 = phi i32 [%r5377,%L722],[%r3188,%L725]
    br label %L724
L727:
    %r3196 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5055
    %r3197 = load i32, ptr %r3196
    %r3199 = add i32 %r5377,%r3197
    br label %L728
L728:
    %r5379 = phi i32 [%r5377,%L723],[%r3199,%L727]
    br label %L724
L730:
    %r5381 = phi i32 [%r5380,%L731],[0,%L872]
    %r5057 = phi i32 [%r3250,%L731],[0,%L872]
    %r4840 = phi i32 [%r3244,%L731],[%r3952,%L872]
    %r4605 = phi i32 [%r3247,%L731],[%r3943,%L872]
    %r3226 = srem i32 %r4840,2
    %r3227 = icmp ne i32 %r3226,0
    br i1 %r3227, label %L735, label %L734
L731:
    %r3253 = icmp slt i32 %r3250,16
    br i1 %r3253, label %L730, label %L732
L732:
    br label %L738
L733:
    %r3238 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5057
    %r3239 = load i32, ptr %r3238
    %r3241 = add i32 %r5381,%r3239
    br label %L734
L734:
    %r5380 = phi i32 [%r5381,%L730],[%r5381,%L735],[%r3241,%L733]
    %r3244 = sdiv i32 %r4840,2
    %r3247 = sdiv i32 %r4605,2
    %r3250 = add i32 %r5057,1
    br label %L731
L735:
    %r3230 = srem i32 %r4605,2
    %r3231 = icmp ne i32 %r3230,0
    br i1 %r3231, label %L733, label %L734
L738:
    %r3268 = load i32, ptr %r3267
    %r3269 = mul i32 %r5380,%r3268
    br label %L874
L739:
    br label %L716
L741:
    %r5385 = phi i32 [%r5384,%L742],[0,%L874]
    %r5060 = phi i32 [%r3302,%L742],[0,%L874]
    %r4843 = phi i32 [%r3296,%L742],[%r3269,%L874]
    %r4608 = phi i32 [%r3299,%L742],[65535,%L874]
    %r3278 = srem i32 %r4843,2
    %r3279 = icmp ne i32 %r3278,0
    br i1 %r3279, label %L746, label %L745
L742:
    %r3305 = icmp slt i32 %r3302,16
    br i1 %r3305, label %L741, label %L743
L743:
    br label %L739
L744:
    %r3290 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5060
    %r3291 = load i32, ptr %r3290
    %r3293 = add i32 %r5385,%r3291
    br label %L745
L745:
    %r5384 = phi i32 [%r5385,%L741],[%r5385,%L746],[%r3293,%L744]
    %r3296 = sdiv i32 %r4843,2
    %r3299 = sdiv i32 %r4608,2
    %r3302 = add i32 %r5060,1
    br label %L742
L746:
    %r3282 = srem i32 %r4608,2
    %r3283 = icmp ne i32 %r3282,0
    br i1 %r3283, label %L744, label %L745
L749:
    br label %L754
L750:
    br label %L668
L754:
    %r3335 = icmp sgt i32 %r3997,32767
    br i1 %r3335, label %L757, label %L758
L756:
    br label %L750
L757:
    %r3340 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r3341 = load i32, ptr %r3340
    %r3342 = sdiv i32 %r3997,%r3341
    %r3345 = add i32 %r3342,65536
    %r3351 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r3352 = load i32, ptr %r3351
    %r3353 = sub i32 %r3345,%r3352
    br label %L759
L758:
    %r3356 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r3357 = load i32, ptr %r3356
    %r3358 = sdiv i32 %r3997,%r3357
    br label %L759
L759:
    %r5390 = phi i32 [%r3353,%L757],[%r3358,%L758]
    br label %L756
L761:
    %r3925 = phi i32 [%r3880,%L762],[%r4017,%L871]
    %r3919 = phi i32 [%r5428,%L762],[%r4017,%L871]
    %r3913 = phi i32 [%r3912,%L762],[0,%L871]
    br label %L869
L762:
    %r3784 = icmp ne i32 %r5428,0
    br i1 %r3784, label %L761, label %L763
L763:
    %r5063 = phi i32 [%r5040,%L665],[%r5077,%L762]
    %r3914 = phi i32 [0,%L665],[%r3912,%L762]
    br label %L855
L765:
    %r5394 = phi i32 [%r5393,%L766],[0,%L869]
    %r5064 = phi i32 [%r3408,%L766],[0,%L869]
    %r4850 = phi i32 [%r3402,%L766],[%r3919,%L869]
    %r4612 = phi i32 [%r3405,%L766],[1,%L869]
    %r3384 = srem i32 %r4850,2
    %r3385 = icmp ne i32 %r3384,0
    br i1 %r3385, label %L770, label %L769
L766:
    %r3411 = icmp slt i32 %r3408,16
    br i1 %r3411, label %L765, label %L767
L767:
    %r3415 = icmp ne i32 %r5393,0
    br i1 %r3415, label %L772, label %L773
L768:
    %r3396 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5064
    %r3397 = load i32, ptr %r3396
    %r3399 = add i32 %r5394,%r3397
    br label %L769
L769:
    %r5393 = phi i32 [%r5394,%L765],[%r5394,%L770],[%r3399,%L768]
    %r3402 = sdiv i32 %r4850,2
    %r3405 = sdiv i32 %r4612,2
    %r3408 = add i32 %r5064,1
    br label %L766
L770:
    %r3388 = srem i32 %r4612,2
    %r3389 = icmp ne i32 %r3388,0
    br i1 %r3389, label %L768, label %L769
L772:
    %r3423 = icmp ne i32 %r3925,0
    br i1 %r3423, label %L900, label %L777
L773:
    %r5068 = phi i32 [%r3408,%L767],[%r5067,%L777]
    %r3912 = phi i32 [%r3913,%L767],[%r3907,%L777]
    %r3583 = icmp ne i32 %r3925,0
    br i1 %r3583, label %L898, label %L811
L775:
    %r3906 = phi i32 [%r3913,%L900],[%r5400,%L776]
    %r3897 = phi i32 [%r3925,%L900],[%r5408,%L776]
    br label %L868
L776:
    %r3573 = icmp ne i32 %r5408,0
    br i1 %r3573, label %L775, label %L777
L777:
    %r5067 = phi i32 [%r3408,%L772],[%r3564,%L776]
    %r3907 = phi i32 [%r3913,%L772],[%r5400,%L776]
    br label %L773
L779:
    %r5401 = phi i32 [%r5400,%L780],[0,%L868]
    %r5069 = phi i32 [%r3470,%L780],[0,%L868]
    %r4855 = phi i32 [%r3464,%L780],[%r3906,%L868]
    %r4617 = phi i32 [%r3467,%L780],[%r3897,%L868]
    %r3435 = srem i32 %r4855,2
    %r3436 = icmp ne i32 %r3435,0
    br i1 %r3436, label %L782, label %L783
L780:
    %r3473 = icmp slt i32 %r3470,16
    br i1 %r3473, label %L779, label %L781
L781:
    br label %L904
L782:
    %r3439 = srem i32 %r4617,2
    %r3441 = icmp eq i32 %r3439,0
    br i1 %r3441, label %L785, label %L786
L783:
    %r3453 = srem i32 %r4617,2
    %r3454 = icmp ne i32 %r3453,0
    br i1 %r3454, label %L787, label %L788
L784:
    %r5400 = phi i32 [%r5399,%L786],[%r5403,%L788]
    %r3464 = sdiv i32 %r4855,2
    %r3467 = sdiv i32 %r4617,2
    %r3470 = add i32 %r5069,1
    br label %L780
L785:
    %r3447 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5069
    %r3448 = load i32, ptr %r3447
    %r3450 = add i32 %r5401,%r3448
    br label %L786
L786:
    %r5399 = phi i32 [%r5401,%L782],[%r3450,%L785]
    br label %L784
L787:
    %r3458 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5069
    %r3459 = load i32, ptr %r3458
    %r3461 = add i32 %r5401,%r3459
    br label %L788
L788:
    %r5403 = phi i32 [%r5401,%L783],[%r3461,%L787]
    br label %L784
L790:
    %r5405 = phi i32 [%r5404,%L791],[0,%L904]
    %r5071 = phi i32 [%r3512,%L791],[0,%L904]
    %r4857 = phi i32 [%r3506,%L791],[%r3906,%L904]
    %r4619 = phi i32 [%r3509,%L791],[%r3897,%L904]
    %r3488 = srem i32 %r4857,2
    %r3489 = icmp ne i32 %r3488,0
    br i1 %r3489, label %L795, label %L794
L791:
    %r3515 = icmp slt i32 %r3512,16
    br i1 %r3515, label %L790, label %L792
L792:
    br label %L798
L793:
    %r3500 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5071
    %r3501 = load i32, ptr %r3500
    %r3503 = add i32 %r5405,%r3501
    br label %L794
L794:
    %r5404 = phi i32 [%r5405,%L790],[%r5405,%L795],[%r3503,%L793]
    %r3506 = sdiv i32 %r4857,2
    %r3509 = sdiv i32 %r4619,2
    %r3512 = add i32 %r5071,1
    br label %L791
L795:
    %r3492 = srem i32 %r4619,2
    %r3493 = icmp ne i32 %r3492,0
    br i1 %r3493, label %L793, label %L794
L798:
    %r3530 = load i32, ptr %r3529
    %r3531 = mul i32 %r5404,%r3530
    br label %L897
L799:
    br label %L776
L801:
    %r5409 = phi i32 [%r5408,%L802],[0,%L897]
    %r5074 = phi i32 [0,%L897],[%r3564,%L802]
    %r4860 = phi i32 [%r3558,%L802],[%r3531,%L897]
    %r4622 = phi i32 [65535,%L897],[%r3561,%L802]
    %r3540 = srem i32 %r4860,2
    %r3541 = icmp ne i32 %r3540,0
    br i1 %r3541, label %L806, label %L805
L802:
    %r3567 = icmp slt i32 %r3564,16
    br i1 %r3567, label %L801, label %L803
L803:
    br label %L799
L804:
    %r3552 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5074
    %r3553 = load i32, ptr %r3552
    %r3555 = add i32 %r5409,%r3553
    br label %L805
L805:
    %r5408 = phi i32 [%r5409,%L801],[%r5409,%L806],[%r3555,%L804]
    %r3558 = sdiv i32 %r4860,2
    %r3561 = sdiv i32 %r4622,2
    %r3564 = add i32 %r5074,1
    br label %L802
L806:
    %r3544 = srem i32 %r4622,2
    %r3545 = icmp ne i32 %r3544,0
    br i1 %r3545, label %L804, label %L805
L809:
    %r3879 = phi i32 [%r3925,%L898],[%r5414,%L810]
    %r3871 = phi i32 [%r3925,%L898],[%r5422,%L810]
    br label %L906
L810:
    %r3733 = icmp ne i32 %r5422,0
    br i1 %r3733, label %L809, label %L811
L811:
    %r5077 = phi i32 [%r5068,%L773],[%r3724,%L810]
    %r3880 = phi i32 [%r3925,%L773],[%r5414,%L810]
    br label %L843
L813:
    %r5415 = phi i32 [%r5414,%L814],[0,%L906]
    %r5078 = phi i32 [%r3630,%L814],[0,%L906]
    %r4864 = phi i32 [%r3624,%L814],[%r3879,%L906]
    %r4626 = phi i32 [%r3871,%L906],[%r3627,%L814]
    %r3595 = srem i32 %r4864,2
    %r3596 = icmp ne i32 %r3595,0
    br i1 %r3596, label %L816, label %L817
L814:
    %r3633 = icmp slt i32 %r3630,16
    br i1 %r3633, label %L813, label %L815
L815:
    br label %L903
L816:
    %r3599 = srem i32 %r4626,2
    %r3601 = icmp eq i32 %r3599,0
    br i1 %r3601, label %L819, label %L820
L817:
    %r3613 = srem i32 %r4626,2
    %r3614 = icmp ne i32 %r3613,0
    br i1 %r3614, label %L821, label %L822
L818:
    %r5414 = phi i32 [%r5413,%L820],[%r5417,%L822]
    %r3624 = sdiv i32 %r4864,2
    %r3627 = sdiv i32 %r4626,2
    %r3630 = add i32 %r5078,1
    br label %L814
L819:
    %r3607 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5078
    %r3608 = load i32, ptr %r3607
    %r3610 = add i32 %r5415,%r3608
    br label %L820
L820:
    %r5413 = phi i32 [%r5415,%L816],[%r3610,%L819]
    br label %L818
L821:
    %r3618 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5078
    %r3619 = load i32, ptr %r3618
    %r3621 = add i32 %r5415,%r3619
    br label %L822
L822:
    %r5417 = phi i32 [%r5415,%L817],[%r3621,%L821]
    br label %L818
L824:
    %r5419 = phi i32 [%r5418,%L825],[0,%L903]
    %r5080 = phi i32 [0,%L903],[%r3672,%L825]
    %r4866 = phi i32 [%r3666,%L825],[%r3879,%L903]
    %r4628 = phi i32 [%r3871,%L903],[%r3669,%L825]
    %r3648 = srem i32 %r4866,2
    %r3649 = icmp ne i32 %r3648,0
    br i1 %r3649, label %L829, label %L828
L825:
    %r3675 = icmp slt i32 %r3672,16
    br i1 %r3675, label %L824, label %L826
L826:
    br label %L832
L827:
    %r3660 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5080
    %r3661 = load i32, ptr %r3660
    %r3663 = add i32 %r5419,%r3661
    br label %L828
L828:
    %r5418 = phi i32 [%r5419,%L824],[%r5419,%L829],[%r3663,%L827]
    %r3666 = sdiv i32 %r4866,2
    %r3669 = sdiv i32 %r4628,2
    %r3672 = add i32 %r5080,1
    br label %L825
L829:
    %r3652 = srem i32 %r4628,2
    %r3653 = icmp ne i32 %r3652,0
    br i1 %r3653, label %L827, label %L828
L832:
    %r3690 = load i32, ptr %r3689
    %r3691 = mul i32 %r5418,%r3690
    br label %L905
L833:
    br label %L810
L835:
    %r5423 = phi i32 [0,%L905],[%r5422,%L836]
    %r5083 = phi i32 [0,%L905],[%r3724,%L836]
    %r4869 = phi i32 [%r3691,%L905],[%r3718,%L836]
    %r4631 = phi i32 [%r3721,%L836],[65535,%L905]
    %r3700 = srem i32 %r4869,2
    %r3701 = icmp ne i32 %r3700,0
    br i1 %r3701, label %L840, label %L839
L836:
    %r3727 = icmp slt i32 %r3724,16
    br i1 %r3727, label %L835, label %L837
L837:
    br label %L833
L838:
    %r3712 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r5083
    %r3713 = load i32, ptr %r3712
    %r3715 = add i32 %r5423,%r3713
    br label %L839
L839:
    %r5422 = phi i32 [%r5423,%L835],[%r5423,%L840],[%r3715,%L838]
    %r3718 = sdiv i32 %r4869,2
    %r3721 = sdiv i32 %r4631,2
    %r3724 = add i32 %r5083,1
    br label %L836
L840:
    %r3704 = srem i32 %r4631,2
    %r3705 = icmp ne i32 %r3704,0
    br i1 %r3705, label %L838, label %L839
L843:
    br label %L848
L844:
    br label %L762
L848:
    %r3757 = icmp sgt i32 %r3919,32767
    br i1 %r3757, label %L851, label %L852
L850:
    br label %L844
L851:
    %r3762 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r3763 = load i32, ptr %r3762
    %r3764 = sdiv i32 %r3919,%r3763
    %r3767 = add i32 %r3764,65536
    %r3773 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r3774 = load i32, ptr %r3773
    %r3775 = sub i32 %r3767,%r3774
    br label %L853
L852:
    %r3778 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r3779 = load i32, ptr %r3778
    %r3780 = sdiv i32 %r3919,%r3779
    br label %L853
L853:
    %r5428 = phi i32 [%r3775,%L851],[%r3780,%L852]
    br label %L850
L855:
    br label %L860
L856:
    br label %L654
L860:
    %r3808 = icmp sgt i32 %r4013,32767
    br i1 %r3808, label %L863, label %L864
L862:
    br label %L856
L863:
    %r3813 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r3814 = load i32, ptr %r3813
    %r3815 = sdiv i32 %r4013,%r3814
    %r3818 = add i32 %r3815,65536
    %r3824 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r3825 = load i32, ptr %r3824
    %r3826 = sub i32 %r3818,%r3825
    br label %L865
L864:
    %r3829 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r3830 = load i32, ptr %r3829
    %r3831 = sdiv i32 %r4013,%r3830
    br label %L865
L865:
    %r5432 = phi i32 [%r3826,%L863],[%r3831,%L864]
    %r4874 = phi i32 [%r3815,%L863],[%r4013,%L864]
    br label %L862
L866:
    ret i32 1
L867:
    %r3850 = add i32 %r4423,1
    br label %L650
L868:
    br label %L779
L869:
    br label %L765
L870:
    br label %L249
L871:
    br label %L761
L872:
    br label %L730
L873:
    br label %L343
L874:
    br label %L741
L875:
    br label %L719
L876:
    %r3267 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    br label %L715
L877:
    %r1603 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    br label %L339
L878:
    br label %L696
L879:
    br label %L283
L880:
    br label %L543
L881:
    br label %L583
L882:
    %r3107 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    br label %L681
L883:
    br label %L305
L884:
    br label %L435
L885:
    br label %L431
L886:
    %r2562 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    br label %L557
L887:
    br label %L354
L888:
    %r1763 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    br label %L373
L889:
    br label %L365
L890:
    br label %L329
L891:
    br label %L547
L892:
    br label %L453
L893:
    br label %L325
L894:
    br label %L439
L895:
    br label %L707
L896:
    br label %L271
L897:
    br label %L801
L898:
    %r3689 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    br label %L809
L899:
    br label %L388
L900:
    %r3529 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    br label %L775
L901:
    br label %L260
L902:
    %r1341 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    br label %L279
L903:
    br label %L824
L904:
    br label %L790
L905:
    br label %L835
L906:
    br label %L813
L907:
    %r2300 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    br label %L497
L908:
    br label %L489
L909:
    br label %L467
L910:
    br label %L523
L911:
    br label %L478
L912:
    br label %L572
L913:
    br label %L235
L914:
    br label %L561
L915:
    br label %L501
L916:
    br label %L294
L917:
    %r2140 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    br label %L463
L918:
    br label %L231
L919:
    br label %L377
L920:
    br label %L512
L921:
    br label %L399
L922:
    br label %L449
L923:
    br label %L221
L924:
    br label %L217
L925:
    br label %L606
L926:
    %r2722 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    br label %L591
L927:
    br label %L617
L928:
    %r1181 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    br label %L245
L929:
    br label %L657
L930:
    br label %L653
L931:
    br label %L667
L932:
    br label %L595
L933:
    br label %L649
L934:
    br label %L671
L935:
    br label %L685
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @long_func()
    ret i32 %r0
}
