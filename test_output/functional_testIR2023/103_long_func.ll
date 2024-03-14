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
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    br label %L4
L4:  ;  preheader21
    call void @putint(i32 1)
    call void @putch(i32 10)
    br label %L183
L183:  ;  exiting21  header21
    %r3700 = phi i32 [0,%L4],[%r3716,%L354]
    %r3554 = phi i32 [0,%L4],[%r3591,%L354]
    %r3426 = phi i32 [0,%L4],[1,%L354]
    %r3325 = phi i32 [2,%L4],[%r3280,%L354]
    %r3324 = phi i32 [1,%L4],[%r3915,%L354]
    %r3323 = phi i32 [1,%L4],[%r3322,%L354]
    %r774 = icmp sgt i32 %r3324,0
    br i1 %r774, label %L184, label %L185
L184:  ;  preheader0
    br label %L186
L185:  ;  preheader22
    call void @putint(i32 %r3323)
    call void @putch(i32 10)
    br label %L364
L186:  ;  exiting0  header0
    %r3856 = phi i32 [0,%L184],[%r3855,%L190]
    %r3701 = phi i32 [0,%L184],[%r805,%L190]
    %r3555 = phi i32 [%r3324,%L184],[%r799,%L190]
    %r3427 = phi i32 [1,%L184],[%r802,%L190]
    %r781 = icmp slt i32 %r3701,16
    br i1 %r781, label %L187, label %L188
L187:  ;
    %r784 = srem i32 %r3555,2
    %r785 = icmp ne i32 %r784,0
    br i1 %r785, label %L191, label %L190
L188:  ;
    %r807 = icmp ne i32 %r3856,0
    br i1 %r807, label %L192, label %L193
L189:  ;
    %r793 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3701
    %r794 = load i32, ptr %r793
    %r795 = mul i32 %r794,1
    %r796 = add i32 %r3856,%r795
    br label %L190
L190:  ;  latch0
    %r3855 = phi i32 [%r3856,%L187],[%r3856,%L191],[%r796,%L189]
    %r799 = sdiv i32 %r3555,2
    %r802 = sdiv i32 %r3427,2
    %r805 = add i32 %r3701,1
    br label %L186
L191:  ;
    %r788 = srem i32 %r3427,2
    %r789 = icmp ne i32 %r788,0
    br i1 %r789, label %L189, label %L190
L192:  ;  preheader10
    br label %L194
L193:  ;  preheader20
    %r3703 = phi i32 [%r3701,%L188],[%r3702,%L196]
    %r3322 = phi i32 [%r3323,%L188],[%r3315,%L196]
    br label %L273
L194:  ;  exiting10  header10
    %r3702 = phi i32 [%r3701,%L192],[%r3711,%L263]
    %r3321 = phi i32 [%r3323,%L192],[%r3296,%L263]
    %r3318 = phi i32 [%r3325,%L192],[%r3883,%L263]
    %r3315 = phi i32 [0,%L192],[%r3314,%L263]
    %r815 = icmp ne i32 %r3318,0
    br i1 %r815, label %L195, label %L196
L195:  ;  preheader1
    br label %L197
L196:  ;
    br label %L193
L197:  ;  exiting1  header1
    %r3860 = phi i32 [0,%L195],[%r3859,%L201]
    %r3704 = phi i32 [0,%L195],[%r846,%L201]
    %r3558 = phi i32 [%r3318,%L195],[%r840,%L201]
    %r3430 = phi i32 [1,%L195],[%r843,%L201]
    %r822 = icmp slt i32 %r3704,16
    br i1 %r822, label %L198, label %L199
L198:  ;
    %r825 = srem i32 %r3558,2
    %r826 = icmp ne i32 %r825,0
    br i1 %r826, label %L202, label %L201
L199:  ;
    %r848 = icmp ne i32 %r3860,0
    br i1 %r848, label %L203, label %L204
L200:  ;
    %r834 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3704
    %r835 = load i32, ptr %r834
    %r836 = mul i32 %r835,1
    %r837 = add i32 %r3860,%r836
    br label %L201
L201:  ;  latch1
    %r3859 = phi i32 [%r3860,%L198],[%r3860,%L202],[%r837,%L200]
    %r840 = sdiv i32 %r3558,2
    %r843 = sdiv i32 %r3430,2
    %r846 = add i32 %r3704,1
    br label %L197
L202:  ;
    %r829 = srem i32 %r3430,2
    %r830 = icmp ne i32 %r829,0
    br i1 %r830, label %L200, label %L201
L203:  ;  preheader4
    br label %L205
L204:  ;  preheader8
    %r3706 = phi i32 [%r3704,%L199],[%r3705,%L207]
    %r3314 = phi i32 [%r3315,%L199],[%r3311,%L207]
    br label %L233
L205:  ;  exiting4  header4
    %r3705 = phi i32 [%r3704,%L203],[%r3709,%L226]
    %r3311 = phi i32 [%r3315,%L203],[%r3865,%L226]
    %r3306 = phi i32 [%r3321,%L203],[%r3869,%L226]
    %r856 = icmp ne i32 %r3306,0
    br i1 %r856, label %L206, label %L207
L206:  ;  preheader2
    br label %L208
L207:  ;
    br label %L204
L208:  ;  exiting2  header2
    %r3865 = phi i32 [0,%L206],[%r3864,%L213]
    %r3707 = phi i32 [0,%L206],[%r899,%L213]
    %r3561 = phi i32 [%r3311,%L206],[%r893,%L213]
    %r3433 = phi i32 [%r3306,%L206],[%r896,%L213]
    %r863 = icmp slt i32 %r3707,16
    br i1 %r863, label %L209, label %L210
L209:  ;
    %r866 = srem i32 %r3561,2
    %r867 = icmp ne i32 %r866,0
    br i1 %r867, label %L211, label %L212
L210:  ;  preheader3
    br label %L218
L211:  ;
    %r870 = srem i32 %r3433,2
    %r872 = icmp eq i32 %r870,0
    br i1 %r872, label %L214, label %L215
L212:  ;
    %r882 = srem i32 %r3433,2
    %r883 = icmp ne i32 %r882,0
    br i1 %r883, label %L216, label %L217
L213:  ;  latch2
    %r3864 = phi i32 [%r3863,%L215],[%r3866,%L217]
    %r893 = sdiv i32 %r3561,2
    %r896 = sdiv i32 %r3433,2
    %r899 = add i32 %r3707,1
    br label %L208
L214:  ;
    %r876 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3707
    %r877 = load i32, ptr %r876
    %r878 = mul i32 %r877,1
    %r879 = add i32 %r3865,%r878
    br label %L215
L215:  ;
    %r3863 = phi i32 [%r3865,%L211],[%r879,%L214]
    br label %L213
L216:  ;
    %r887 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3707
    %r888 = load i32, ptr %r887
    %r889 = mul i32 %r888,1
    %r890 = add i32 %r3865,%r889
    br label %L217
L217:  ;
    %r3866 = phi i32 [%r3865,%L212],[%r890,%L216]
    br label %L213
L218:  ;  exiting3  header3
    %r3868 = phi i32 [0,%L210],[%r3867,%L222]
    %r3708 = phi i32 [0,%L210],[%r931,%L222]
    %r3562 = phi i32 [%r3311,%L210],[%r925,%L222]
    %r3434 = phi i32 [%r3306,%L210],[%r928,%L222]
    %r907 = icmp slt i32 %r3708,16
    br i1 %r907, label %L219, label %L220
L219:  ;
    %r910 = srem i32 %r3562,2
    %r911 = icmp ne i32 %r910,0
    br i1 %r911, label %L223, label %L222
L220:  ;
    br label %L225
L221:  ;
    %r919 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3708
    %r920 = load i32, ptr %r919
    %r921 = mul i32 %r920,1
    %r922 = add i32 %r3868,%r921
    br label %L222
L222:  ;  latch3
    %r3867 = phi i32 [%r3868,%L219],[%r3868,%L223],[%r922,%L221]
    %r925 = sdiv i32 %r3562,2
    %r928 = sdiv i32 %r3434,2
    %r931 = add i32 %r3708,1
    br label %L218
L223:  ;
    %r914 = srem i32 %r3434,2
    %r915 = icmp ne i32 %r914,0
    br i1 %r915, label %L221, label %L222
L225:  ;  preheader5
    %r941 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r942 = load i32, ptr %r941
    %r943 = mul i32 %r3868,%r942
    br label %L227
L226:  ;  latch4
    %r3869 = phi i32 [%r3871,%L229]
    %r3709 = phi i32 [%r3710,%L229]
    br label %L205
L227:  ;  exiting5  header5
    %r3871 = phi i32 [0,%L225],[%r3870,%L231]
    %r3710 = phi i32 [0,%L225],[%r971,%L231]
    %r3564 = phi i32 [%r943,%L225],[%r965,%L231]
    %r3436 = phi i32 [65535,%L225],[%r968,%L231]
    %r947 = icmp slt i32 %r3710,16
    br i1 %r947, label %L228, label %L229
L228:  ;
    %r950 = srem i32 %r3564,2
    %r951 = icmp ne i32 %r950,0
    br i1 %r951, label %L232, label %L231
L229:  ;
    br label %L226
L230:  ;
    %r959 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3710
    %r960 = load i32, ptr %r959
    %r961 = mul i32 %r960,1
    %r962 = add i32 %r3871,%r961
    br label %L231
L231:  ;  latch5
    %r3870 = phi i32 [%r3871,%L228],[%r3871,%L232],[%r962,%L230]
    %r965 = sdiv i32 %r3564,2
    %r968 = sdiv i32 %r3436,2
    %r971 = add i32 %r3710,1
    br label %L227
L232:  ;
    %r954 = srem i32 %r3436,2
    %r955 = icmp ne i32 %r954,0
    br i1 %r955, label %L230, label %L231
L233:  ;  exiting8  header8
    %r3711 = phi i32 [%r3706,%L204],[%r3714,%L254]
    %r3296 = phi i32 [%r3321,%L204],[%r3875,%L254]
    %r3292 = phi i32 [%r3321,%L204],[%r3879,%L254]
    %r983 = icmp ne i32 %r3292,0
    br i1 %r983, label %L234, label %L235
L234:  ;  preheader6
    br label %L236
L235:  ;
    br label %L262
L236:  ;  exiting6  header6
    %r3875 = phi i32 [0,%L234],[%r3874,%L241]
    %r3712 = phi i32 [0,%L234],[%r1026,%L241]
    %r3566 = phi i32 [%r3296,%L234],[%r1020,%L241]
    %r3438 = phi i32 [%r3292,%L234],[%r1023,%L241]
    %r990 = icmp slt i32 %r3712,16
    br i1 %r990, label %L237, label %L238
L237:  ;
    %r993 = srem i32 %r3566,2
    %r994 = icmp ne i32 %r993,0
    br i1 %r994, label %L239, label %L240
L238:  ;  preheader7
    br label %L246
L239:  ;
    %r997 = srem i32 %r3438,2
    %r999 = icmp eq i32 %r997,0
    br i1 %r999, label %L242, label %L243
L240:  ;
    %r1009 = srem i32 %r3438,2
    %r1010 = icmp ne i32 %r1009,0
    br i1 %r1010, label %L244, label %L245
L241:  ;  latch6
    %r3874 = phi i32 [%r3873,%L243],[%r3876,%L245]
    %r1020 = sdiv i32 %r3566,2
    %r1023 = sdiv i32 %r3438,2
    %r1026 = add i32 %r3712,1
    br label %L236
L242:  ;
    %r1003 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3712
    %r1004 = load i32, ptr %r1003
    %r1005 = mul i32 %r1004,1
    %r1006 = add i32 %r3875,%r1005
    br label %L243
L243:  ;
    %r3873 = phi i32 [%r3875,%L239],[%r1006,%L242]
    br label %L241
L244:  ;
    %r1014 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3712
    %r1015 = load i32, ptr %r1014
    %r1016 = mul i32 %r1015,1
    %r1017 = add i32 %r3875,%r1016
    br label %L245
L245:  ;
    %r3876 = phi i32 [%r3875,%L240],[%r1017,%L244]
    br label %L241
L246:  ;  exiting7  header7
    %r3878 = phi i32 [0,%L238],[%r3877,%L250]
    %r3713 = phi i32 [0,%L238],[%r1058,%L250]
    %r3567 = phi i32 [%r3296,%L238],[%r1052,%L250]
    %r3439 = phi i32 [%r3292,%L238],[%r1055,%L250]
    %r1034 = icmp slt i32 %r3713,16
    br i1 %r1034, label %L247, label %L248
L247:  ;
    %r1037 = srem i32 %r3567,2
    %r1038 = icmp ne i32 %r1037,0
    br i1 %r1038, label %L251, label %L250
L248:  ;
    br label %L253
L249:  ;
    %r1046 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3713
    %r1047 = load i32, ptr %r1046
    %r1048 = mul i32 %r1047,1
    %r1049 = add i32 %r3878,%r1048
    br label %L250
L250:  ;  latch7
    %r3877 = phi i32 [%r3878,%L247],[%r3878,%L251],[%r1049,%L249]
    %r1052 = sdiv i32 %r3567,2
    %r1055 = sdiv i32 %r3439,2
    %r1058 = add i32 %r3713,1
    br label %L246
L251:  ;
    %r1041 = srem i32 %r3439,2
    %r1042 = icmp ne i32 %r1041,0
    br i1 %r1042, label %L249, label %L250
L253:  ;  preheader9
    %r1068 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1069 = load i32, ptr %r1068
    %r1070 = mul i32 %r3878,%r1069
    br label %L255
L254:  ;  latch8
    %r3879 = phi i32 [%r3881,%L257]
    %r3714 = phi i32 [%r3715,%L257]
    br label %L233
L255:  ;  exiting9  header9
    %r3881 = phi i32 [0,%L253],[%r3880,%L259]
    %r3715 = phi i32 [0,%L253],[%r1098,%L259]
    %r3569 = phi i32 [%r1070,%L253],[%r1092,%L259]
    %r3441 = phi i32 [65535,%L253],[%r1095,%L259]
    %r1074 = icmp slt i32 %r3715,16
    br i1 %r1074, label %L256, label %L257
L256:  ;
    %r1077 = srem i32 %r3569,2
    %r1078 = icmp ne i32 %r1077,0
    br i1 %r1078, label %L260, label %L259
L257:  ;
    br label %L254
L258:  ;
    %r1086 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3715
    %r1087 = load i32, ptr %r1086
    %r1088 = mul i32 %r1087,1
    %r1089 = add i32 %r3881,%r1088
    br label %L259
L259:  ;  latch9
    %r3880 = phi i32 [%r3881,%L256],[%r3881,%L260],[%r1089,%L258]
    %r1092 = sdiv i32 %r3569,2
    %r1095 = sdiv i32 %r3441,2
    %r1098 = add i32 %r3715,1
    br label %L255
L260:  ;
    %r1081 = srem i32 %r3441,2
    %r1082 = icmp ne i32 %r1081,0
    br i1 %r1082, label %L258, label %L259
L262:  ;
    br label %L267
L263:  ;  latch10
    %r3883 = phi i32 [%r3884,%L269]
    br label %L194
L267:  ;
    %r1118 = icmp sgt i32 %r3318,32767
    br i1 %r1118, label %L270, label %L271
L269:  ;
    %r3884 = phi i32 [%r3885,%L272]
    br label %L263
L270:  ;
    %r1121 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1122 = load i32, ptr %r1121
    %r1123 = sdiv i32 %r3318,%r1122
    %r1126 = add i32 %r1123,65536
    %r1132 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r1133 = load i32, ptr %r1132
    %r1134 = sub i32 %r1126,%r1133
    br label %L272
L271:  ;
    %r1137 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1138 = load i32, ptr %r1137
    %r1139 = sdiv i32 %r3318,%r1138
    br label %L272
L272:  ;
    %r3885 = phi i32 [%r1134,%L270],[%r1139,%L271]
    br label %L269
L273:  ;  exiting20  header20
    %r3716 = phi i32 [%r3703,%L193],[%r3724,%L342]
    %r3284 = phi i32 [%r3325,%L193],[%r3265,%L342]
    %r3282 = phi i32 [%r3325,%L193],[%r3911,%L342]
    %r3280 = phi i32 [0,%L193],[%r3279,%L342]
    %r1151 = icmp ne i32 %r3282,0
    br i1 %r1151, label %L274, label %L275
L274:  ;  preheader11
    br label %L276
L275:  ;
    br label %L353
L276:  ;  exiting11  header11
    %r3888 = phi i32 [0,%L274],[%r3887,%L280]
    %r3717 = phi i32 [0,%L274],[%r1182,%L280]
    %r3574 = phi i32 [%r3282,%L274],[%r1176,%L280]
    %r3443 = phi i32 [1,%L274],[%r1179,%L280]
    %r1158 = icmp slt i32 %r3717,16
    br i1 %r1158, label %L277, label %L278
L277:  ;
    %r1161 = srem i32 %r3574,2
    %r1162 = icmp ne i32 %r1161,0
    br i1 %r1162, label %L281, label %L280
L278:  ;
    %r1184 = icmp ne i32 %r3888,0
    br i1 %r1184, label %L282, label %L283
L279:  ;
    %r1170 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3717
    %r1171 = load i32, ptr %r1170
    %r1172 = mul i32 %r1171,1
    %r1173 = add i32 %r3888,%r1172
    br label %L280
L280:  ;  latch11
    %r3887 = phi i32 [%r3888,%L277],[%r3888,%L281],[%r1173,%L279]
    %r1176 = sdiv i32 %r3574,2
    %r1179 = sdiv i32 %r3443,2
    %r1182 = add i32 %r3717,1
    br label %L276
L281:  ;
    %r1165 = srem i32 %r3443,2
    %r1166 = icmp ne i32 %r1165,0
    br i1 %r1166, label %L279, label %L280
L282:  ;  preheader14
    br label %L284
L283:  ;  preheader18
    %r3719 = phi i32 [%r3717,%L278],[%r3718,%L286]
    %r3279 = phi i32 [%r3280,%L278],[%r3277,%L286]
    br label %L312
L284:  ;  exiting14  header14
    %r3718 = phi i32 [%r3717,%L282],[%r3722,%L305]
    %r3277 = phi i32 [%r3280,%L282],[%r3893,%L305]
    %r3273 = phi i32 [%r3284,%L282],[%r3897,%L305]
    %r1192 = icmp ne i32 %r3273,0
    br i1 %r1192, label %L285, label %L286
L285:  ;  preheader12
    br label %L287
L286:  ;
    br label %L283
L287:  ;  exiting12  header12
    %r3893 = phi i32 [0,%L285],[%r3892,%L292]
    %r3720 = phi i32 [0,%L285],[%r1235,%L292]
    %r3577 = phi i32 [%r3277,%L285],[%r1229,%L292]
    %r3446 = phi i32 [%r3273,%L285],[%r1232,%L292]
    %r1199 = icmp slt i32 %r3720,16
    br i1 %r1199, label %L288, label %L289
L288:  ;
    %r1202 = srem i32 %r3577,2
    %r1203 = icmp ne i32 %r1202,0
    br i1 %r1203, label %L290, label %L291
L289:  ;  preheader13
    br label %L297
L290:  ;
    %r1206 = srem i32 %r3446,2
    %r1208 = icmp eq i32 %r1206,0
    br i1 %r1208, label %L293, label %L294
L291:  ;
    %r1218 = srem i32 %r3446,2
    %r1219 = icmp ne i32 %r1218,0
    br i1 %r1219, label %L295, label %L296
L292:  ;  latch12
    %r3892 = phi i32 [%r3891,%L294],[%r3894,%L296]
    %r1229 = sdiv i32 %r3577,2
    %r1232 = sdiv i32 %r3446,2
    %r1235 = add i32 %r3720,1
    br label %L287
L293:  ;
    %r1212 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3720
    %r1213 = load i32, ptr %r1212
    %r1214 = mul i32 %r1213,1
    %r1215 = add i32 %r3893,%r1214
    br label %L294
L294:  ;
    %r3891 = phi i32 [%r3893,%L290],[%r1215,%L293]
    br label %L292
L295:  ;
    %r1223 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3720
    %r1224 = load i32, ptr %r1223
    %r1225 = mul i32 %r1224,1
    %r1226 = add i32 %r3893,%r1225
    br label %L296
L296:  ;
    %r3894 = phi i32 [%r3893,%L291],[%r1226,%L295]
    br label %L292
L297:  ;  exiting13  header13
    %r3896 = phi i32 [0,%L289],[%r3895,%L301]
    %r3721 = phi i32 [0,%L289],[%r1267,%L301]
    %r3578 = phi i32 [%r3277,%L289],[%r1261,%L301]
    %r3447 = phi i32 [%r3273,%L289],[%r1264,%L301]
    %r1243 = icmp slt i32 %r3721,16
    br i1 %r1243, label %L298, label %L299
L298:  ;
    %r1246 = srem i32 %r3578,2
    %r1247 = icmp ne i32 %r1246,0
    br i1 %r1247, label %L302, label %L301
L299:  ;
    br label %L304
L300:  ;
    %r1255 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3721
    %r1256 = load i32, ptr %r1255
    %r1257 = mul i32 %r1256,1
    %r1258 = add i32 %r3896,%r1257
    br label %L301
L301:  ;  latch13
    %r3895 = phi i32 [%r3896,%L298],[%r3896,%L302],[%r1258,%L300]
    %r1261 = sdiv i32 %r3578,2
    %r1264 = sdiv i32 %r3447,2
    %r1267 = add i32 %r3721,1
    br label %L297
L302:  ;
    %r1250 = srem i32 %r3447,2
    %r1251 = icmp ne i32 %r1250,0
    br i1 %r1251, label %L300, label %L301
L304:  ;  preheader15
    %r1277 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1278 = load i32, ptr %r1277
    %r1279 = mul i32 %r3896,%r1278
    br label %L306
L305:  ;  latch14
    %r3897 = phi i32 [%r3899,%L308]
    %r3722 = phi i32 [%r3723,%L308]
    br label %L284
L306:  ;  exiting15  header15
    %r3899 = phi i32 [0,%L304],[%r3898,%L310]
    %r3723 = phi i32 [0,%L304],[%r1307,%L310]
    %r3580 = phi i32 [%r1279,%L304],[%r1301,%L310]
    %r3449 = phi i32 [65535,%L304],[%r1304,%L310]
    %r1283 = icmp slt i32 %r3723,16
    br i1 %r1283, label %L307, label %L308
L307:  ;
    %r1286 = srem i32 %r3580,2
    %r1287 = icmp ne i32 %r1286,0
    br i1 %r1287, label %L311, label %L310
L308:  ;
    br label %L305
L309:  ;
    %r1295 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3723
    %r1296 = load i32, ptr %r1295
    %r1297 = mul i32 %r1296,1
    %r1298 = add i32 %r3899,%r1297
    br label %L310
L310:  ;  latch15
    %r3898 = phi i32 [%r3899,%L307],[%r3899,%L311],[%r1298,%L309]
    %r1301 = sdiv i32 %r3580,2
    %r1304 = sdiv i32 %r3449,2
    %r1307 = add i32 %r3723,1
    br label %L306
L311:  ;
    %r1290 = srem i32 %r3449,2
    %r1291 = icmp ne i32 %r1290,0
    br i1 %r1291, label %L309, label %L310
L312:  ;  exiting18  header18
    %r3724 = phi i32 [%r3719,%L283],[%r3727,%L333]
    %r3265 = phi i32 [%r3284,%L283],[%r3903,%L333]
    %r3262 = phi i32 [%r3284,%L283],[%r3907,%L333]
    %r1319 = icmp ne i32 %r3262,0
    br i1 %r1319, label %L313, label %L314
L313:  ;  preheader16
    br label %L315
L314:  ;
    br label %L341
L315:  ;  exiting16  header16
    %r3903 = phi i32 [0,%L313],[%r3902,%L320]
    %r3725 = phi i32 [0,%L313],[%r1362,%L320]
    %r3582 = phi i32 [%r3265,%L313],[%r1356,%L320]
    %r3451 = phi i32 [%r3262,%L313],[%r1359,%L320]
    %r1326 = icmp slt i32 %r3725,16
    br i1 %r1326, label %L316, label %L317
L316:  ;
    %r1329 = srem i32 %r3582,2
    %r1330 = icmp ne i32 %r1329,0
    br i1 %r1330, label %L318, label %L319
L317:  ;  preheader17
    br label %L325
L318:  ;
    %r1333 = srem i32 %r3451,2
    %r1335 = icmp eq i32 %r1333,0
    br i1 %r1335, label %L321, label %L322
L319:  ;
    %r1345 = srem i32 %r3451,2
    %r1346 = icmp ne i32 %r1345,0
    br i1 %r1346, label %L323, label %L324
L320:  ;  latch16
    %r3902 = phi i32 [%r3901,%L322],[%r3904,%L324]
    %r1356 = sdiv i32 %r3582,2
    %r1359 = sdiv i32 %r3451,2
    %r1362 = add i32 %r3725,1
    br label %L315
L321:  ;
    %r1339 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3725
    %r1340 = load i32, ptr %r1339
    %r1341 = mul i32 %r1340,1
    %r1342 = add i32 %r3903,%r1341
    br label %L322
L322:  ;
    %r3901 = phi i32 [%r3903,%L318],[%r1342,%L321]
    br label %L320
L323:  ;
    %r1350 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3725
    %r1351 = load i32, ptr %r1350
    %r1352 = mul i32 %r1351,1
    %r1353 = add i32 %r3903,%r1352
    br label %L324
L324:  ;
    %r3904 = phi i32 [%r3903,%L319],[%r1353,%L323]
    br label %L320
L325:  ;  exiting17  header17
    %r3906 = phi i32 [0,%L317],[%r3905,%L329]
    %r3726 = phi i32 [0,%L317],[%r1394,%L329]
    %r3583 = phi i32 [%r3265,%L317],[%r1388,%L329]
    %r3452 = phi i32 [%r3262,%L317],[%r1391,%L329]
    %r1370 = icmp slt i32 %r3726,16
    br i1 %r1370, label %L326, label %L327
L326:  ;
    %r1373 = srem i32 %r3583,2
    %r1374 = icmp ne i32 %r1373,0
    br i1 %r1374, label %L330, label %L329
L327:  ;
    br label %L332
L328:  ;
    %r1382 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3726
    %r1383 = load i32, ptr %r1382
    %r1384 = mul i32 %r1383,1
    %r1385 = add i32 %r3906,%r1384
    br label %L329
L329:  ;  latch17
    %r3905 = phi i32 [%r3906,%L326],[%r3906,%L330],[%r1385,%L328]
    %r1388 = sdiv i32 %r3583,2
    %r1391 = sdiv i32 %r3452,2
    %r1394 = add i32 %r3726,1
    br label %L325
L330:  ;
    %r1377 = srem i32 %r3452,2
    %r1378 = icmp ne i32 %r1377,0
    br i1 %r1378, label %L328, label %L329
L332:  ;  preheader19
    %r1404 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1405 = load i32, ptr %r1404
    %r1406 = mul i32 %r3906,%r1405
    br label %L334
L333:  ;  latch18
    %r3907 = phi i32 [%r3909,%L336]
    %r3727 = phi i32 [%r3728,%L336]
    br label %L312
L334:  ;  exiting19  header19
    %r3909 = phi i32 [0,%L332],[%r3908,%L338]
    %r3728 = phi i32 [0,%L332],[%r1434,%L338]
    %r3585 = phi i32 [%r1406,%L332],[%r1428,%L338]
    %r3454 = phi i32 [65535,%L332],[%r1431,%L338]
    %r1410 = icmp slt i32 %r3728,16
    br i1 %r1410, label %L335, label %L336
L335:  ;
    %r1413 = srem i32 %r3585,2
    %r1414 = icmp ne i32 %r1413,0
    br i1 %r1414, label %L339, label %L338
L336:  ;
    br label %L333
L337:  ;
    %r1422 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3728
    %r1423 = load i32, ptr %r1422
    %r1424 = mul i32 %r1423,1
    %r1425 = add i32 %r3909,%r1424
    br label %L338
L338:  ;  latch19
    %r3908 = phi i32 [%r3909,%L335],[%r3909,%L339],[%r1425,%L337]
    %r1428 = sdiv i32 %r3585,2
    %r1431 = sdiv i32 %r3454,2
    %r1434 = add i32 %r3728,1
    br label %L334
L339:  ;
    %r1417 = srem i32 %r3454,2
    %r1418 = icmp ne i32 %r1417,0
    br i1 %r1418, label %L337, label %L338
L341:  ;
    br label %L346
L342:  ;  latch20
    %r3911 = phi i32 [%r3912,%L348]
    br label %L273
L346:  ;
    %r1454 = icmp sgt i32 %r3282,32767
    br i1 %r1454, label %L349, label %L350
L348:  ;
    %r3912 = phi i32 [%r3913,%L351]
    br label %L342
L349:  ;
    %r1457 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1458 = load i32, ptr %r1457
    %r1459 = sdiv i32 %r3282,%r1458
    %r1462 = add i32 %r1459,65536
    %r1468 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r1469 = load i32, ptr %r1468
    %r1470 = sub i32 %r1462,%r1469
    br label %L351
L350:  ;
    %r1473 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1474 = load i32, ptr %r1473
    %r1475 = sdiv i32 %r3282,%r1474
    br label %L351
L351:  ;
    %r3913 = phi i32 [%r1470,%L349],[%r1475,%L350]
    br label %L348
L353:  ;
    br label %L358
L354:  ;  latch21
    %r3915 = phi i32 [%r3916,%L360]
    %r3591 = phi i32 [%r3590,%L360]
    br label %L183
L358:  ;
    %r1495 = icmp sgt i32 %r3324,32767
    br i1 %r1495, label %L361, label %L362
L360:  ;
    %r3916 = phi i32 [%r3917,%L363]
    %r3590 = phi i32 [%r3589,%L363]
    br label %L354
L361:  ;
    %r1498 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1499 = load i32, ptr %r1498
    %r1500 = sdiv i32 %r3324,%r1499
    %r1503 = add i32 %r1500,65536
    %r1509 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r1510 = load i32, ptr %r1509
    %r1511 = sub i32 %r1503,%r1510
    br label %L363
L362:  ;
    %r1514 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1515 = load i32, ptr %r1514
    %r1516 = sdiv i32 %r3324,%r1515
    br label %L363
L363:  ;
    %r3917 = phi i32 [%r1511,%L361],[%r1516,%L362]
    %r3589 = phi i32 [%r1500,%L361],[%r3324,%L362]
    br label %L360
L364:  ;  exiting22  header22
    %r3730 = phi i32 [%r3700,%L185],[%r3729,%L369]
    %r3593 = phi i32 [%r3554,%L185],[%r3592,%L369]
    %r3456 = phi i32 [%r3426,%L185],[%r3455,%L369]
    %r3395 = phi i32 [2,%L185],[%r2284,%L369]
    %r1525 = icmp slt i32 %r3395,16
    br i1 %r1525, label %L365, label %L366
L365:  ;  preheader44
    br label %L367
L366:  ;  preheader67
    br label %L548
L367:  ;  exiting44  header44
    %r3729 = phi i32 [%r3730,%L365],[%r3746,%L538]
    %r3592 = phi i32 [%r3593,%L365],[%r3630,%L538]
    %r3455 = phi i32 [%r3456,%L365],[1,%L538]
    %r3256 = phi i32 [2,%L365],[%r3197,%L538]
    %r3254 = phi i32 [%r3395,%L365],[%r3980,%L538]
    %r3252 = phi i32 [1,%L365],[%r3251,%L538]
    %r1534 = icmp sgt i32 %r3254,0
    br i1 %r1534, label %L368, label %L369
L368:  ;  preheader23
    br label %L370
L369:  ;  latch22
    call void @putint(i32 %r3252)
    call void @putch(i32 10)
    %r2284 = add i32 %r3395,1
    br label %L364
L370:  ;  exiting23  header23
    %r3921 = phi i32 [0,%L368],[%r3920,%L374]
    %r3731 = phi i32 [0,%L368],[%r1565,%L374]
    %r3594 = phi i32 [%r3254,%L368],[%r1559,%L374]
    %r3457 = phi i32 [1,%L368],[%r1562,%L374]
    %r1541 = icmp slt i32 %r3731,16
    br i1 %r1541, label %L371, label %L372
L371:  ;
    %r1544 = srem i32 %r3594,2
    %r1545 = icmp ne i32 %r1544,0
    br i1 %r1545, label %L375, label %L374
L372:  ;
    %r1567 = icmp ne i32 %r3921,0
    br i1 %r1567, label %L376, label %L377
L373:  ;
    %r1553 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3731
    %r1554 = load i32, ptr %r1553
    %r1555 = mul i32 %r1554,1
    %r1556 = add i32 %r3921,%r1555
    br label %L374
L374:  ;  latch23
    %r3920 = phi i32 [%r3921,%L371],[%r3921,%L375],[%r1556,%L373]
    %r1559 = sdiv i32 %r3594,2
    %r1562 = sdiv i32 %r3457,2
    %r1565 = add i32 %r3731,1
    br label %L370
L375:  ;
    %r1548 = srem i32 %r3457,2
    %r1549 = icmp ne i32 %r1548,0
    br i1 %r1549, label %L373, label %L374
L376:  ;  preheader33
    br label %L378
L377:  ;  preheader43
    %r3733 = phi i32 [%r3731,%L372],[%r3732,%L380]
    %r3251 = phi i32 [%r3252,%L372],[%r3241,%L380]
    br label %L457
L378:  ;  exiting33  header33
    %r3732 = phi i32 [%r3731,%L376],[%r3741,%L447]
    %r3249 = phi i32 [%r3252,%L376],[%r3218,%L447]
    %r3245 = phi i32 [%r3256,%L376],[%r3948,%L447]
    %r3241 = phi i32 [0,%L376],[%r3240,%L447]
    %r1575 = icmp ne i32 %r3245,0
    br i1 %r1575, label %L379, label %L380
L379:  ;  preheader24
    br label %L381
L380:  ;
    br label %L377
L381:  ;  exiting24  header24
    %r3925 = phi i32 [0,%L379],[%r3924,%L385]
    %r3734 = phi i32 [0,%L379],[%r1606,%L385]
    %r3597 = phi i32 [%r3245,%L379],[%r1600,%L385]
    %r3460 = phi i32 [1,%L379],[%r1603,%L385]
    %r1582 = icmp slt i32 %r3734,16
    br i1 %r1582, label %L382, label %L383
L382:  ;
    %r1585 = srem i32 %r3597,2
    %r1586 = icmp ne i32 %r1585,0
    br i1 %r1586, label %L386, label %L385
L383:  ;
    %r1608 = icmp ne i32 %r3925,0
    br i1 %r1608, label %L387, label %L388
L384:  ;
    %r1594 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3734
    %r1595 = load i32, ptr %r1594
    %r1596 = mul i32 %r1595,1
    %r1597 = add i32 %r3925,%r1596
    br label %L385
L385:  ;  latch24
    %r3924 = phi i32 [%r3925,%L382],[%r3925,%L386],[%r1597,%L384]
    %r1600 = sdiv i32 %r3597,2
    %r1603 = sdiv i32 %r3460,2
    %r1606 = add i32 %r3734,1
    br label %L381
L386:  ;
    %r1589 = srem i32 %r3460,2
    %r1590 = icmp ne i32 %r1589,0
    br i1 %r1590, label %L384, label %L385
L387:  ;  preheader27
    br label %L389
L388:  ;  preheader31
    %r3736 = phi i32 [%r3734,%L383],[%r3735,%L391]
    %r3240 = phi i32 [%r3241,%L383],[%r3236,%L391]
    br label %L417
L389:  ;  exiting27  header27
    %r3735 = phi i32 [%r3734,%L387],[%r3739,%L410]
    %r3236 = phi i32 [%r3241,%L387],[%r3930,%L410]
    %r3230 = phi i32 [%r3249,%L387],[%r3934,%L410]
    %r1616 = icmp ne i32 %r3230,0
    br i1 %r1616, label %L390, label %L391
L390:  ;  preheader25
    br label %L392
L391:  ;
    br label %L388
L392:  ;  exiting25  header25
    %r3930 = phi i32 [0,%L390],[%r3929,%L397]
    %r3737 = phi i32 [0,%L390],[%r1659,%L397]
    %r3600 = phi i32 [%r3236,%L390],[%r1653,%L397]
    %r3463 = phi i32 [%r3230,%L390],[%r1656,%L397]
    %r1623 = icmp slt i32 %r3737,16
    br i1 %r1623, label %L393, label %L394
L393:  ;
    %r1626 = srem i32 %r3600,2
    %r1627 = icmp ne i32 %r1626,0
    br i1 %r1627, label %L395, label %L396
L394:  ;  preheader26
    br label %L402
L395:  ;
    %r1630 = srem i32 %r3463,2
    %r1632 = icmp eq i32 %r1630,0
    br i1 %r1632, label %L398, label %L399
L396:  ;
    %r1642 = srem i32 %r3463,2
    %r1643 = icmp ne i32 %r1642,0
    br i1 %r1643, label %L400, label %L401
L397:  ;  latch25
    %r3929 = phi i32 [%r3928,%L399],[%r3931,%L401]
    %r1653 = sdiv i32 %r3600,2
    %r1656 = sdiv i32 %r3463,2
    %r1659 = add i32 %r3737,1
    br label %L392
L398:  ;
    %r1636 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3737
    %r1637 = load i32, ptr %r1636
    %r1638 = mul i32 %r1637,1
    %r1639 = add i32 %r3930,%r1638
    br label %L399
L399:  ;
    %r3928 = phi i32 [%r3930,%L395],[%r1639,%L398]
    br label %L397
L400:  ;
    %r1647 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3737
    %r1648 = load i32, ptr %r1647
    %r1649 = mul i32 %r1648,1
    %r1650 = add i32 %r3930,%r1649
    br label %L401
L401:  ;
    %r3931 = phi i32 [%r3930,%L396],[%r1650,%L400]
    br label %L397
L402:  ;  exiting26  header26
    %r3933 = phi i32 [0,%L394],[%r3932,%L406]
    %r3738 = phi i32 [0,%L394],[%r1691,%L406]
    %r3601 = phi i32 [%r3236,%L394],[%r1685,%L406]
    %r3464 = phi i32 [%r3230,%L394],[%r1688,%L406]
    %r1667 = icmp slt i32 %r3738,16
    br i1 %r1667, label %L403, label %L404
L403:  ;
    %r1670 = srem i32 %r3601,2
    %r1671 = icmp ne i32 %r1670,0
    br i1 %r1671, label %L407, label %L406
L404:  ;
    br label %L409
L405:  ;
    %r1679 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3738
    %r1680 = load i32, ptr %r1679
    %r1681 = mul i32 %r1680,1
    %r1682 = add i32 %r3933,%r1681
    br label %L406
L406:  ;  latch26
    %r3932 = phi i32 [%r3933,%L403],[%r3933,%L407],[%r1682,%L405]
    %r1685 = sdiv i32 %r3601,2
    %r1688 = sdiv i32 %r3464,2
    %r1691 = add i32 %r3738,1
    br label %L402
L407:  ;
    %r1674 = srem i32 %r3464,2
    %r1675 = icmp ne i32 %r1674,0
    br i1 %r1675, label %L405, label %L406
L409:  ;  preheader28
    %r1701 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1702 = load i32, ptr %r1701
    %r1703 = mul i32 %r3933,%r1702
    br label %L411
L410:  ;  latch27
    %r3934 = phi i32 [%r3936,%L413]
    %r3739 = phi i32 [%r3740,%L413]
    br label %L389
L411:  ;  exiting28  header28
    %r3936 = phi i32 [0,%L409],[%r3935,%L415]
    %r3740 = phi i32 [0,%L409],[%r1731,%L415]
    %r3603 = phi i32 [%r1703,%L409],[%r1725,%L415]
    %r3466 = phi i32 [65535,%L409],[%r1728,%L415]
    %r1707 = icmp slt i32 %r3740,16
    br i1 %r1707, label %L412, label %L413
L412:  ;
    %r1710 = srem i32 %r3603,2
    %r1711 = icmp ne i32 %r1710,0
    br i1 %r1711, label %L416, label %L415
L413:  ;
    br label %L410
L414:  ;
    %r1719 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3740
    %r1720 = load i32, ptr %r1719
    %r1721 = mul i32 %r1720,1
    %r1722 = add i32 %r3936,%r1721
    br label %L415
L415:  ;  latch28
    %r3935 = phi i32 [%r3936,%L412],[%r3936,%L416],[%r1722,%L414]
    %r1725 = sdiv i32 %r3603,2
    %r1728 = sdiv i32 %r3466,2
    %r1731 = add i32 %r3740,1
    br label %L411
L416:  ;
    %r1714 = srem i32 %r3466,2
    %r1715 = icmp ne i32 %r1714,0
    br i1 %r1715, label %L414, label %L415
L417:  ;  exiting31  header31
    %r3741 = phi i32 [%r3736,%L388],[%r3744,%L438]
    %r3218 = phi i32 [%r3249,%L388],[%r3940,%L438]
    %r3213 = phi i32 [%r3249,%L388],[%r3944,%L438]
    %r1743 = icmp ne i32 %r3213,0
    br i1 %r1743, label %L418, label %L419
L418:  ;  preheader29
    br label %L420
L419:  ;
    br label %L446
L420:  ;  exiting29  header29
    %r3940 = phi i32 [0,%L418],[%r3939,%L425]
    %r3742 = phi i32 [0,%L418],[%r1786,%L425]
    %r3605 = phi i32 [%r3218,%L418],[%r1780,%L425]
    %r3468 = phi i32 [%r3213,%L418],[%r1783,%L425]
    %r1750 = icmp slt i32 %r3742,16
    br i1 %r1750, label %L421, label %L422
L421:  ;
    %r1753 = srem i32 %r3605,2
    %r1754 = icmp ne i32 %r1753,0
    br i1 %r1754, label %L423, label %L424
L422:  ;  preheader30
    br label %L430
L423:  ;
    %r1757 = srem i32 %r3468,2
    %r1759 = icmp eq i32 %r1757,0
    br i1 %r1759, label %L426, label %L427
L424:  ;
    %r1769 = srem i32 %r3468,2
    %r1770 = icmp ne i32 %r1769,0
    br i1 %r1770, label %L428, label %L429
L425:  ;  latch29
    %r3939 = phi i32 [%r3938,%L427],[%r3941,%L429]
    %r1780 = sdiv i32 %r3605,2
    %r1783 = sdiv i32 %r3468,2
    %r1786 = add i32 %r3742,1
    br label %L420
L426:  ;
    %r1763 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3742
    %r1764 = load i32, ptr %r1763
    %r1765 = mul i32 %r1764,1
    %r1766 = add i32 %r3940,%r1765
    br label %L427
L427:  ;
    %r3938 = phi i32 [%r3940,%L423],[%r1766,%L426]
    br label %L425
L428:  ;
    %r1774 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3742
    %r1775 = load i32, ptr %r1774
    %r1776 = mul i32 %r1775,1
    %r1777 = add i32 %r3940,%r1776
    br label %L429
L429:  ;
    %r3941 = phi i32 [%r3940,%L424],[%r1777,%L428]
    br label %L425
L430:  ;  exiting30  header30
    %r3943 = phi i32 [0,%L422],[%r3942,%L434]
    %r3743 = phi i32 [0,%L422],[%r1818,%L434]
    %r3606 = phi i32 [%r3218,%L422],[%r1812,%L434]
    %r3469 = phi i32 [%r3213,%L422],[%r1815,%L434]
    %r1794 = icmp slt i32 %r3743,16
    br i1 %r1794, label %L431, label %L432
L431:  ;
    %r1797 = srem i32 %r3606,2
    %r1798 = icmp ne i32 %r1797,0
    br i1 %r1798, label %L435, label %L434
L432:  ;
    br label %L437
L433:  ;
    %r1806 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3743
    %r1807 = load i32, ptr %r1806
    %r1808 = mul i32 %r1807,1
    %r1809 = add i32 %r3943,%r1808
    br label %L434
L434:  ;  latch30
    %r3942 = phi i32 [%r3943,%L431],[%r3943,%L435],[%r1809,%L433]
    %r1812 = sdiv i32 %r3606,2
    %r1815 = sdiv i32 %r3469,2
    %r1818 = add i32 %r3743,1
    br label %L430
L435:  ;
    %r1801 = srem i32 %r3469,2
    %r1802 = icmp ne i32 %r1801,0
    br i1 %r1802, label %L433, label %L434
L437:  ;  preheader32
    %r1828 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1829 = load i32, ptr %r1828
    %r1830 = mul i32 %r3943,%r1829
    br label %L439
L438:  ;  latch31
    %r3944 = phi i32 [%r3946,%L441]
    %r3744 = phi i32 [%r3745,%L441]
    br label %L417
L439:  ;  exiting32  header32
    %r3946 = phi i32 [0,%L437],[%r3945,%L443]
    %r3745 = phi i32 [0,%L437],[%r1858,%L443]
    %r3608 = phi i32 [%r1830,%L437],[%r1852,%L443]
    %r3471 = phi i32 [65535,%L437],[%r1855,%L443]
    %r1834 = icmp slt i32 %r3745,16
    br i1 %r1834, label %L440, label %L441
L440:  ;
    %r1837 = srem i32 %r3608,2
    %r1838 = icmp ne i32 %r1837,0
    br i1 %r1838, label %L444, label %L443
L441:  ;
    br label %L438
L442:  ;
    %r1846 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3745
    %r1847 = load i32, ptr %r1846
    %r1848 = mul i32 %r1847,1
    %r1849 = add i32 %r3946,%r1848
    br label %L443
L443:  ;  latch32
    %r3945 = phi i32 [%r3946,%L440],[%r3946,%L444],[%r1849,%L442]
    %r1852 = sdiv i32 %r3608,2
    %r1855 = sdiv i32 %r3471,2
    %r1858 = add i32 %r3745,1
    br label %L439
L444:  ;
    %r1841 = srem i32 %r3471,2
    %r1842 = icmp ne i32 %r1841,0
    br i1 %r1842, label %L442, label %L443
L446:  ;
    br label %L451
L447:  ;  latch33
    %r3948 = phi i32 [%r3949,%L453]
    br label %L378
L451:  ;
    %r1878 = icmp sgt i32 %r3245,32767
    br i1 %r1878, label %L454, label %L455
L453:  ;
    %r3949 = phi i32 [%r3950,%L456]
    br label %L447
L454:  ;
    %r1881 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1882 = load i32, ptr %r1881
    %r1883 = sdiv i32 %r3245,%r1882
    %r1886 = add i32 %r1883,65536
    %r1892 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r1893 = load i32, ptr %r1892
    %r1894 = sub i32 %r1886,%r1893
    br label %L456
L455:  ;
    %r1897 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1898 = load i32, ptr %r1897
    %r1899 = sdiv i32 %r3245,%r1898
    br label %L456
L456:  ;
    %r3950 = phi i32 [%r1894,%L454],[%r1899,%L455]
    br label %L453
L457:  ;  exiting43  header43
    %r3746 = phi i32 [%r3733,%L377],[%r3754,%L526]
    %r3203 = phi i32 [%r3256,%L377],[%r3178,%L526]
    %r3200 = phi i32 [%r3256,%L377],[%r3976,%L526]
    %r3197 = phi i32 [0,%L377],[%r3196,%L526]
    %r1911 = icmp ne i32 %r3200,0
    br i1 %r1911, label %L458, label %L459
L458:  ;  preheader34
    br label %L460
L459:  ;
    br label %L537
L460:  ;  exiting34  header34
    %r3953 = phi i32 [0,%L458],[%r3952,%L464]
    %r3747 = phi i32 [0,%L458],[%r1942,%L464]
    %r3613 = phi i32 [%r3200,%L458],[%r1936,%L464]
    %r3473 = phi i32 [1,%L458],[%r1939,%L464]
    %r1918 = icmp slt i32 %r3747,16
    br i1 %r1918, label %L461, label %L462
L461:  ;
    %r1921 = srem i32 %r3613,2
    %r1922 = icmp ne i32 %r1921,0
    br i1 %r1922, label %L465, label %L464
L462:  ;
    %r1944 = icmp ne i32 %r3953,0
    br i1 %r1944, label %L466, label %L467
L463:  ;
    %r1930 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3747
    %r1931 = load i32, ptr %r1930
    %r1932 = mul i32 %r1931,1
    %r1933 = add i32 %r3953,%r1932
    br label %L464
L464:  ;  latch34
    %r3952 = phi i32 [%r3953,%L461],[%r3953,%L465],[%r1933,%L463]
    %r1936 = sdiv i32 %r3613,2
    %r1939 = sdiv i32 %r3473,2
    %r1942 = add i32 %r3747,1
    br label %L460
L465:  ;
    %r1925 = srem i32 %r3473,2
    %r1926 = icmp ne i32 %r1925,0
    br i1 %r1926, label %L463, label %L464
L466:  ;  preheader37
    br label %L468
L467:  ;  preheader41
    %r3749 = phi i32 [%r3747,%L462],[%r3748,%L470]
    %r3196 = phi i32 [%r3197,%L462],[%r3193,%L470]
    br label %L496
L468:  ;  exiting37  header37
    %r3748 = phi i32 [%r3747,%L466],[%r3752,%L489]
    %r3193 = phi i32 [%r3197,%L466],[%r3958,%L489]
    %r3188 = phi i32 [%r3203,%L466],[%r3962,%L489]
    %r1952 = icmp ne i32 %r3188,0
    br i1 %r1952, label %L469, label %L470
L469:  ;  preheader35
    br label %L471
L470:  ;
    br label %L467
L471:  ;  exiting35  header35
    %r3958 = phi i32 [0,%L469],[%r3957,%L476]
    %r3750 = phi i32 [0,%L469],[%r1995,%L476]
    %r3616 = phi i32 [%r3193,%L469],[%r1989,%L476]
    %r3476 = phi i32 [%r3188,%L469],[%r1992,%L476]
    %r1959 = icmp slt i32 %r3750,16
    br i1 %r1959, label %L472, label %L473
L472:  ;
    %r1962 = srem i32 %r3616,2
    %r1963 = icmp ne i32 %r1962,0
    br i1 %r1963, label %L474, label %L475
L473:  ;  preheader36
    br label %L481
L474:  ;
    %r1966 = srem i32 %r3476,2
    %r1968 = icmp eq i32 %r1966,0
    br i1 %r1968, label %L477, label %L478
L475:  ;
    %r1978 = srem i32 %r3476,2
    %r1979 = icmp ne i32 %r1978,0
    br i1 %r1979, label %L479, label %L480
L476:  ;  latch35
    %r3957 = phi i32 [%r3956,%L478],[%r3959,%L480]
    %r1989 = sdiv i32 %r3616,2
    %r1992 = sdiv i32 %r3476,2
    %r1995 = add i32 %r3750,1
    br label %L471
L477:  ;
    %r1972 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3750
    %r1973 = load i32, ptr %r1972
    %r1974 = mul i32 %r1973,1
    %r1975 = add i32 %r3958,%r1974
    br label %L478
L478:  ;
    %r3956 = phi i32 [%r3958,%L474],[%r1975,%L477]
    br label %L476
L479:  ;
    %r1983 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3750
    %r1984 = load i32, ptr %r1983
    %r1985 = mul i32 %r1984,1
    %r1986 = add i32 %r3958,%r1985
    br label %L480
L480:  ;
    %r3959 = phi i32 [%r3958,%L475],[%r1986,%L479]
    br label %L476
L481:  ;  exiting36  header36
    %r3961 = phi i32 [0,%L473],[%r3960,%L485]
    %r3751 = phi i32 [0,%L473],[%r2027,%L485]
    %r3617 = phi i32 [%r3193,%L473],[%r2021,%L485]
    %r3477 = phi i32 [%r3188,%L473],[%r2024,%L485]
    %r2003 = icmp slt i32 %r3751,16
    br i1 %r2003, label %L482, label %L483
L482:  ;
    %r2006 = srem i32 %r3617,2
    %r2007 = icmp ne i32 %r2006,0
    br i1 %r2007, label %L486, label %L485
L483:  ;
    br label %L488
L484:  ;
    %r2015 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3751
    %r2016 = load i32, ptr %r2015
    %r2017 = mul i32 %r2016,1
    %r2018 = add i32 %r3961,%r2017
    br label %L485
L485:  ;  latch36
    %r3960 = phi i32 [%r3961,%L482],[%r3961,%L486],[%r2018,%L484]
    %r2021 = sdiv i32 %r3617,2
    %r2024 = sdiv i32 %r3477,2
    %r2027 = add i32 %r3751,1
    br label %L481
L486:  ;
    %r2010 = srem i32 %r3477,2
    %r2011 = icmp ne i32 %r2010,0
    br i1 %r2011, label %L484, label %L485
L488:  ;  preheader38
    %r2037 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2038 = load i32, ptr %r2037
    %r2039 = mul i32 %r3961,%r2038
    br label %L490
L489:  ;  latch37
    %r3962 = phi i32 [%r3964,%L492]
    %r3752 = phi i32 [%r3753,%L492]
    br label %L468
L490:  ;  exiting38  header38
    %r3964 = phi i32 [0,%L488],[%r3963,%L494]
    %r3753 = phi i32 [0,%L488],[%r2067,%L494]
    %r3619 = phi i32 [%r2039,%L488],[%r2061,%L494]
    %r3479 = phi i32 [65535,%L488],[%r2064,%L494]
    %r2043 = icmp slt i32 %r3753,16
    br i1 %r2043, label %L491, label %L492
L491:  ;
    %r2046 = srem i32 %r3619,2
    %r2047 = icmp ne i32 %r2046,0
    br i1 %r2047, label %L495, label %L494
L492:  ;
    br label %L489
L493:  ;
    %r2055 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3753
    %r2056 = load i32, ptr %r2055
    %r2057 = mul i32 %r2056,1
    %r2058 = add i32 %r3964,%r2057
    br label %L494
L494:  ;  latch38
    %r3963 = phi i32 [%r3964,%L491],[%r3964,%L495],[%r2058,%L493]
    %r2061 = sdiv i32 %r3619,2
    %r2064 = sdiv i32 %r3479,2
    %r2067 = add i32 %r3753,1
    br label %L490
L495:  ;
    %r2050 = srem i32 %r3479,2
    %r2051 = icmp ne i32 %r2050,0
    br i1 %r2051, label %L493, label %L494
L496:  ;  exiting41  header41
    %r3754 = phi i32 [%r3749,%L467],[%r3757,%L517]
    %r3178 = phi i32 [%r3203,%L467],[%r3968,%L517]
    %r3174 = phi i32 [%r3203,%L467],[%r3972,%L517]
    %r2079 = icmp ne i32 %r3174,0
    br i1 %r2079, label %L497, label %L498
L497:  ;  preheader39
    br label %L499
L498:  ;
    br label %L525
L499:  ;  exiting39  header39
    %r3968 = phi i32 [0,%L497],[%r3967,%L504]
    %r3755 = phi i32 [0,%L497],[%r2122,%L504]
    %r3621 = phi i32 [%r3178,%L497],[%r2116,%L504]
    %r3481 = phi i32 [%r3174,%L497],[%r2119,%L504]
    %r2086 = icmp slt i32 %r3755,16
    br i1 %r2086, label %L500, label %L501
L500:  ;
    %r2089 = srem i32 %r3621,2
    %r2090 = icmp ne i32 %r2089,0
    br i1 %r2090, label %L502, label %L503
L501:  ;  preheader40
    br label %L509
L502:  ;
    %r2093 = srem i32 %r3481,2
    %r2095 = icmp eq i32 %r2093,0
    br i1 %r2095, label %L505, label %L506
L503:  ;
    %r2105 = srem i32 %r3481,2
    %r2106 = icmp ne i32 %r2105,0
    br i1 %r2106, label %L507, label %L508
L504:  ;  latch39
    %r3967 = phi i32 [%r3966,%L506],[%r3969,%L508]
    %r2116 = sdiv i32 %r3621,2
    %r2119 = sdiv i32 %r3481,2
    %r2122 = add i32 %r3755,1
    br label %L499
L505:  ;
    %r2099 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3755
    %r2100 = load i32, ptr %r2099
    %r2101 = mul i32 %r2100,1
    %r2102 = add i32 %r3968,%r2101
    br label %L506
L506:  ;
    %r3966 = phi i32 [%r3968,%L502],[%r2102,%L505]
    br label %L504
L507:  ;
    %r2110 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3755
    %r2111 = load i32, ptr %r2110
    %r2112 = mul i32 %r2111,1
    %r2113 = add i32 %r3968,%r2112
    br label %L508
L508:  ;
    %r3969 = phi i32 [%r3968,%L503],[%r2113,%L507]
    br label %L504
L509:  ;  exiting40  header40
    %r3971 = phi i32 [0,%L501],[%r3970,%L513]
    %r3756 = phi i32 [0,%L501],[%r2154,%L513]
    %r3622 = phi i32 [%r3178,%L501],[%r2148,%L513]
    %r3482 = phi i32 [%r3174,%L501],[%r2151,%L513]
    %r2130 = icmp slt i32 %r3756,16
    br i1 %r2130, label %L510, label %L511
L510:  ;
    %r2133 = srem i32 %r3622,2
    %r2134 = icmp ne i32 %r2133,0
    br i1 %r2134, label %L514, label %L513
L511:  ;
    br label %L516
L512:  ;
    %r2142 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3756
    %r2143 = load i32, ptr %r2142
    %r2144 = mul i32 %r2143,1
    %r2145 = add i32 %r3971,%r2144
    br label %L513
L513:  ;  latch40
    %r3970 = phi i32 [%r3971,%L510],[%r3971,%L514],[%r2145,%L512]
    %r2148 = sdiv i32 %r3622,2
    %r2151 = sdiv i32 %r3482,2
    %r2154 = add i32 %r3756,1
    br label %L509
L514:  ;
    %r2137 = srem i32 %r3482,2
    %r2138 = icmp ne i32 %r2137,0
    br i1 %r2138, label %L512, label %L513
L516:  ;  preheader42
    %r2164 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2165 = load i32, ptr %r2164
    %r2166 = mul i32 %r3971,%r2165
    br label %L518
L517:  ;  latch41
    %r3972 = phi i32 [%r3974,%L520]
    %r3757 = phi i32 [%r3758,%L520]
    br label %L496
L518:  ;  exiting42  header42
    %r3974 = phi i32 [0,%L516],[%r3973,%L522]
    %r3758 = phi i32 [0,%L516],[%r2194,%L522]
    %r3624 = phi i32 [%r2166,%L516],[%r2188,%L522]
    %r3484 = phi i32 [65535,%L516],[%r2191,%L522]
    %r2170 = icmp slt i32 %r3758,16
    br i1 %r2170, label %L519, label %L520
L519:  ;
    %r2173 = srem i32 %r3624,2
    %r2174 = icmp ne i32 %r2173,0
    br i1 %r2174, label %L523, label %L522
L520:  ;
    br label %L517
L521:  ;
    %r2182 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3758
    %r2183 = load i32, ptr %r2182
    %r2184 = mul i32 %r2183,1
    %r2185 = add i32 %r3974,%r2184
    br label %L522
L522:  ;  latch42
    %r3973 = phi i32 [%r3974,%L519],[%r3974,%L523],[%r2185,%L521]
    %r2188 = sdiv i32 %r3624,2
    %r2191 = sdiv i32 %r3484,2
    %r2194 = add i32 %r3758,1
    br label %L518
L523:  ;
    %r2177 = srem i32 %r3484,2
    %r2178 = icmp ne i32 %r2177,0
    br i1 %r2178, label %L521, label %L522
L525:  ;
    br label %L530
L526:  ;  latch43
    %r3976 = phi i32 [%r3977,%L532]
    br label %L457
L530:  ;
    %r2214 = icmp sgt i32 %r3200,32767
    br i1 %r2214, label %L533, label %L534
L532:  ;
    %r3977 = phi i32 [%r3978,%L535]
    br label %L526
L533:  ;
    %r2217 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2218 = load i32, ptr %r2217
    %r2219 = sdiv i32 %r3200,%r2218
    %r2222 = add i32 %r2219,65536
    %r2228 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r2229 = load i32, ptr %r2228
    %r2230 = sub i32 %r2222,%r2229
    br label %L535
L534:  ;
    %r2233 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2234 = load i32, ptr %r2233
    %r2235 = sdiv i32 %r3200,%r2234
    br label %L535
L535:  ;
    %r3978 = phi i32 [%r2230,%L533],[%r2235,%L534]
    br label %L532
L537:  ;
    br label %L542
L538:  ;  latch44
    %r3980 = phi i32 [%r3981,%L544]
    %r3630 = phi i32 [%r3629,%L544]
    br label %L367
L542:  ;
    %r2255 = icmp sgt i32 %r3254,32767
    br i1 %r2255, label %L545, label %L546
L544:  ;
    %r3981 = phi i32 [%r3982,%L547]
    %r3629 = phi i32 [%r3628,%L547]
    br label %L538
L545:  ;
    %r2258 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2259 = load i32, ptr %r2258
    %r2260 = sdiv i32 %r3254,%r2259
    %r2263 = add i32 %r2260,65536
    %r2269 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r2270 = load i32, ptr %r2269
    %r2271 = sub i32 %r2263,%r2270
    br label %L547
L546:  ;
    %r2274 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2275 = load i32, ptr %r2274
    %r2276 = sdiv i32 %r3254,%r2275
    br label %L547
L547:  ;
    %r3982 = phi i32 [%r2271,%L545],[%r2276,%L546]
    %r3628 = phi i32 [%r2260,%L545],[%r3254,%L546]
    br label %L544
L548:  ;  exiting67  header67
    %r3760 = phi i32 [%r3730,%L366],[%r3759,%L733]
    %r3632 = phi i32 [%r3593,%L366],[%r3631,%L733]
    %r3486 = phi i32 [%r3456,%L366],[%r3485,%L733]
    %r3396 = phi i32 [0,%L366],[%r3051,%L733]
    %r2288 = icmp slt i32 %r3396,16
    br i1 %r2288, label %L549, label %L550
L549:  ;  preheader66
    br label %L551
L550:  ;
    br label %L734
L551:  ;  exiting66  header66
    %r3759 = phi i32 [%r3760,%L549],[%r3777,%L722]
    %r3631 = phi i32 [%r3632,%L549],[%r3670,%L722]
    %r3485 = phi i32 [%r3486,%L549],[1,%L722]
    %r3166 = phi i32 [2,%L549],[%r3093,%L722]
    %r3163 = phi i32 [%r3396,%L549],[%r4046,%L722]
    %r3160 = phi i32 [1,%L549],[%r3159,%L722]
    %r2297 = icmp sgt i32 %r3163,0
    br i1 %r2297, label %L552, label %L553
L552:  ;  preheader45
    br label %L554
L553:  ;  exiting67
    %r3044 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3396
    %r3045 = load i32, ptr %r3044
    %r3047 = icmp ne i32 %r3045,%r3160
    br i1 %r3047, label %L732, label %L733
L554:  ;  exiting45  header45
    %r3987 = phi i32 [0,%L552],[%r3986,%L558]
    %r3762 = phi i32 [0,%L552],[%r2328,%L558]
    %r3634 = phi i32 [%r3163,%L552],[%r2322,%L558]
    %r3488 = phi i32 [1,%L552],[%r2325,%L558]
    %r2304 = icmp slt i32 %r3762,16
    br i1 %r2304, label %L555, label %L556
L555:  ;
    %r2307 = srem i32 %r3634,2
    %r2308 = icmp ne i32 %r2307,0
    br i1 %r2308, label %L559, label %L558
L556:  ;
    %r2330 = icmp ne i32 %r3987,0
    br i1 %r2330, label %L560, label %L561
L557:  ;
    %r2316 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3762
    %r2317 = load i32, ptr %r2316
    %r2318 = mul i32 %r2317,1
    %r2319 = add i32 %r3987,%r2318
    br label %L558
L558:  ;  latch45
    %r3986 = phi i32 [%r3987,%L555],[%r3987,%L559],[%r2319,%L557]
    %r2322 = sdiv i32 %r3634,2
    %r2325 = sdiv i32 %r3488,2
    %r2328 = add i32 %r3762,1
    br label %L554
L559:  ;
    %r2311 = srem i32 %r3488,2
    %r2312 = icmp ne i32 %r2311,0
    br i1 %r2312, label %L557, label %L558
L560:  ;  preheader55
    br label %L562
L561:  ;  preheader65
    %r3764 = phi i32 [%r3762,%L556],[%r3763,%L564]
    %r3159 = phi i32 [%r3160,%L556],[%r3146,%L564]
    br label %L641
L562:  ;  exiting55  header55
    %r3763 = phi i32 [%r3762,%L560],[%r3772,%L631]
    %r3156 = phi i32 [%r3160,%L560],[%r3119,%L631]
    %r3151 = phi i32 [%r3166,%L560],[%r4014,%L631]
    %r3146 = phi i32 [0,%L560],[%r3145,%L631]
    %r2338 = icmp ne i32 %r3151,0
    br i1 %r2338, label %L563, label %L564
L563:  ;  preheader46
    br label %L565
L564:  ;
    br label %L561
L565:  ;  exiting46  header46
    %r3991 = phi i32 [0,%L563],[%r3990,%L569]
    %r3765 = phi i32 [0,%L563],[%r2369,%L569]
    %r3637 = phi i32 [%r3151,%L563],[%r2363,%L569]
    %r3491 = phi i32 [1,%L563],[%r2366,%L569]
    %r2345 = icmp slt i32 %r3765,16
    br i1 %r2345, label %L566, label %L567
L566:  ;
    %r2348 = srem i32 %r3637,2
    %r2349 = icmp ne i32 %r2348,0
    br i1 %r2349, label %L570, label %L569
L567:  ;
    %r2371 = icmp ne i32 %r3991,0
    br i1 %r2371, label %L571, label %L572
L568:  ;
    %r2357 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3765
    %r2358 = load i32, ptr %r2357
    %r2359 = mul i32 %r2358,1
    %r2360 = add i32 %r3991,%r2359
    br label %L569
L569:  ;  latch46
    %r3990 = phi i32 [%r3991,%L566],[%r3991,%L570],[%r2360,%L568]
    %r2363 = sdiv i32 %r3637,2
    %r2366 = sdiv i32 %r3491,2
    %r2369 = add i32 %r3765,1
    br label %L565
L570:  ;
    %r2352 = srem i32 %r3491,2
    %r2353 = icmp ne i32 %r2352,0
    br i1 %r2353, label %L568, label %L569
L571:  ;  preheader49
    br label %L573
L572:  ;  preheader53
    %r3767 = phi i32 [%r3765,%L567],[%r3766,%L575]
    %r3145 = phi i32 [%r3146,%L567],[%r3140,%L575]
    br label %L601
L573:  ;  exiting49  header49
    %r3766 = phi i32 [%r3765,%L571],[%r3770,%L594]
    %r3140 = phi i32 [%r3146,%L571],[%r3996,%L594]
    %r3133 = phi i32 [%r3156,%L571],[%r4000,%L594]
    %r2379 = icmp ne i32 %r3133,0
    br i1 %r2379, label %L574, label %L575
L574:  ;  preheader47
    br label %L576
L575:  ;
    br label %L572
L576:  ;  exiting47  header47
    %r3996 = phi i32 [0,%L574],[%r3995,%L581]
    %r3768 = phi i32 [0,%L574],[%r2422,%L581]
    %r3640 = phi i32 [%r3140,%L574],[%r2416,%L581]
    %r3494 = phi i32 [%r3133,%L574],[%r2419,%L581]
    %r2386 = icmp slt i32 %r3768,16
    br i1 %r2386, label %L577, label %L578
L577:  ;
    %r2389 = srem i32 %r3640,2
    %r2390 = icmp ne i32 %r2389,0
    br i1 %r2390, label %L579, label %L580
L578:  ;  preheader48
    br label %L586
L579:  ;
    %r2393 = srem i32 %r3494,2
    %r2395 = icmp eq i32 %r2393,0
    br i1 %r2395, label %L582, label %L583
L580:  ;
    %r2405 = srem i32 %r3494,2
    %r2406 = icmp ne i32 %r2405,0
    br i1 %r2406, label %L584, label %L585
L581:  ;  latch47
    %r3995 = phi i32 [%r3994,%L583],[%r3997,%L585]
    %r2416 = sdiv i32 %r3640,2
    %r2419 = sdiv i32 %r3494,2
    %r2422 = add i32 %r3768,1
    br label %L576
L582:  ;
    %r2399 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3768
    %r2400 = load i32, ptr %r2399
    %r2401 = mul i32 %r2400,1
    %r2402 = add i32 %r3996,%r2401
    br label %L583
L583:  ;
    %r3994 = phi i32 [%r3996,%L579],[%r2402,%L582]
    br label %L581
L584:  ;
    %r2410 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3768
    %r2411 = load i32, ptr %r2410
    %r2412 = mul i32 %r2411,1
    %r2413 = add i32 %r3996,%r2412
    br label %L585
L585:  ;
    %r3997 = phi i32 [%r3996,%L580],[%r2413,%L584]
    br label %L581
L586:  ;  exiting48  header48
    %r3999 = phi i32 [0,%L578],[%r3998,%L590]
    %r3769 = phi i32 [0,%L578],[%r2454,%L590]
    %r3641 = phi i32 [%r3140,%L578],[%r2448,%L590]
    %r3495 = phi i32 [%r3133,%L578],[%r2451,%L590]
    %r2430 = icmp slt i32 %r3769,16
    br i1 %r2430, label %L587, label %L588
L587:  ;
    %r2433 = srem i32 %r3641,2
    %r2434 = icmp ne i32 %r2433,0
    br i1 %r2434, label %L591, label %L590
L588:  ;
    br label %L593
L589:  ;
    %r2442 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3769
    %r2443 = load i32, ptr %r2442
    %r2444 = mul i32 %r2443,1
    %r2445 = add i32 %r3999,%r2444
    br label %L590
L590:  ;  latch48
    %r3998 = phi i32 [%r3999,%L587],[%r3999,%L591],[%r2445,%L589]
    %r2448 = sdiv i32 %r3641,2
    %r2451 = sdiv i32 %r3495,2
    %r2454 = add i32 %r3769,1
    br label %L586
L591:  ;
    %r2437 = srem i32 %r3495,2
    %r2438 = icmp ne i32 %r2437,0
    br i1 %r2438, label %L589, label %L590
L593:  ;  preheader50
    %r2464 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2465 = load i32, ptr %r2464
    %r2466 = mul i32 %r3999,%r2465
    br label %L595
L594:  ;  latch49
    %r4000 = phi i32 [%r4002,%L597]
    %r3770 = phi i32 [%r3771,%L597]
    br label %L573
L595:  ;  exiting50  header50
    %r4002 = phi i32 [0,%L593],[%r4001,%L599]
    %r3771 = phi i32 [0,%L593],[%r2494,%L599]
    %r3643 = phi i32 [%r2466,%L593],[%r2488,%L599]
    %r3497 = phi i32 [65535,%L593],[%r2491,%L599]
    %r2470 = icmp slt i32 %r3771,16
    br i1 %r2470, label %L596, label %L597
L596:  ;
    %r2473 = srem i32 %r3643,2
    %r2474 = icmp ne i32 %r2473,0
    br i1 %r2474, label %L600, label %L599
L597:  ;
    br label %L594
L598:  ;
    %r2482 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3771
    %r2483 = load i32, ptr %r2482
    %r2484 = mul i32 %r2483,1
    %r2485 = add i32 %r4002,%r2484
    br label %L599
L599:  ;  latch50
    %r4001 = phi i32 [%r4002,%L596],[%r4002,%L600],[%r2485,%L598]
    %r2488 = sdiv i32 %r3643,2
    %r2491 = sdiv i32 %r3497,2
    %r2494 = add i32 %r3771,1
    br label %L595
L600:  ;
    %r2477 = srem i32 %r3497,2
    %r2478 = icmp ne i32 %r2477,0
    br i1 %r2478, label %L598, label %L599
L601:  ;  exiting53  header53
    %r3772 = phi i32 [%r3767,%L572],[%r3775,%L622]
    %r3119 = phi i32 [%r3156,%L572],[%r4006,%L622]
    %r3113 = phi i32 [%r3156,%L572],[%r4010,%L622]
    %r2506 = icmp ne i32 %r3113,0
    br i1 %r2506, label %L602, label %L603
L602:  ;  preheader51
    br label %L604
L603:  ;
    br label %L630
L604:  ;  exiting51  header51
    %r4006 = phi i32 [0,%L602],[%r4005,%L609]
    %r3773 = phi i32 [0,%L602],[%r2549,%L609]
    %r3645 = phi i32 [%r3119,%L602],[%r2543,%L609]
    %r3499 = phi i32 [%r3113,%L602],[%r2546,%L609]
    %r2513 = icmp slt i32 %r3773,16
    br i1 %r2513, label %L605, label %L606
L605:  ;
    %r2516 = srem i32 %r3645,2
    %r2517 = icmp ne i32 %r2516,0
    br i1 %r2517, label %L607, label %L608
L606:  ;  preheader52
    br label %L614
L607:  ;
    %r2520 = srem i32 %r3499,2
    %r2522 = icmp eq i32 %r2520,0
    br i1 %r2522, label %L610, label %L611
L608:  ;
    %r2532 = srem i32 %r3499,2
    %r2533 = icmp ne i32 %r2532,0
    br i1 %r2533, label %L612, label %L613
L609:  ;  latch51
    %r4005 = phi i32 [%r4004,%L611],[%r4007,%L613]
    %r2543 = sdiv i32 %r3645,2
    %r2546 = sdiv i32 %r3499,2
    %r2549 = add i32 %r3773,1
    br label %L604
L610:  ;
    %r2526 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3773
    %r2527 = load i32, ptr %r2526
    %r2528 = mul i32 %r2527,1
    %r2529 = add i32 %r4006,%r2528
    br label %L611
L611:  ;
    %r4004 = phi i32 [%r4006,%L607],[%r2529,%L610]
    br label %L609
L612:  ;
    %r2537 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3773
    %r2538 = load i32, ptr %r2537
    %r2539 = mul i32 %r2538,1
    %r2540 = add i32 %r4006,%r2539
    br label %L613
L613:  ;
    %r4007 = phi i32 [%r4006,%L608],[%r2540,%L612]
    br label %L609
L614:  ;  exiting52  header52
    %r4009 = phi i32 [0,%L606],[%r4008,%L618]
    %r3774 = phi i32 [0,%L606],[%r2581,%L618]
    %r3646 = phi i32 [%r3119,%L606],[%r2575,%L618]
    %r3500 = phi i32 [%r3113,%L606],[%r2578,%L618]
    %r2557 = icmp slt i32 %r3774,16
    br i1 %r2557, label %L615, label %L616
L615:  ;
    %r2560 = srem i32 %r3646,2
    %r2561 = icmp ne i32 %r2560,0
    br i1 %r2561, label %L619, label %L618
L616:  ;
    br label %L621
L617:  ;
    %r2569 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3774
    %r2570 = load i32, ptr %r2569
    %r2571 = mul i32 %r2570,1
    %r2572 = add i32 %r4009,%r2571
    br label %L618
L618:  ;  latch52
    %r4008 = phi i32 [%r4009,%L615],[%r4009,%L619],[%r2572,%L617]
    %r2575 = sdiv i32 %r3646,2
    %r2578 = sdiv i32 %r3500,2
    %r2581 = add i32 %r3774,1
    br label %L614
L619:  ;
    %r2564 = srem i32 %r3500,2
    %r2565 = icmp ne i32 %r2564,0
    br i1 %r2565, label %L617, label %L618
L621:  ;  preheader54
    %r2591 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2592 = load i32, ptr %r2591
    %r2593 = mul i32 %r4009,%r2592
    br label %L623
L622:  ;  latch53
    %r4010 = phi i32 [%r4012,%L625]
    %r3775 = phi i32 [%r3776,%L625]
    br label %L601
L623:  ;  exiting54  header54
    %r4012 = phi i32 [0,%L621],[%r4011,%L627]
    %r3776 = phi i32 [0,%L621],[%r2621,%L627]
    %r3648 = phi i32 [%r2593,%L621],[%r2615,%L627]
    %r3502 = phi i32 [65535,%L621],[%r2618,%L627]
    %r2597 = icmp slt i32 %r3776,16
    br i1 %r2597, label %L624, label %L625
L624:  ;
    %r2600 = srem i32 %r3648,2
    %r2601 = icmp ne i32 %r2600,0
    br i1 %r2601, label %L628, label %L627
L625:  ;
    br label %L622
L626:  ;
    %r2609 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3776
    %r2610 = load i32, ptr %r2609
    %r2611 = mul i32 %r2610,1
    %r2612 = add i32 %r4012,%r2611
    br label %L627
L627:  ;  latch54
    %r4011 = phi i32 [%r4012,%L624],[%r4012,%L628],[%r2612,%L626]
    %r2615 = sdiv i32 %r3648,2
    %r2618 = sdiv i32 %r3502,2
    %r2621 = add i32 %r3776,1
    br label %L623
L628:  ;
    %r2604 = srem i32 %r3502,2
    %r2605 = icmp ne i32 %r2604,0
    br i1 %r2605, label %L626, label %L627
L630:  ;
    br label %L635
L631:  ;  latch55
    %r4014 = phi i32 [%r4015,%L637]
    br label %L562
L635:  ;
    %r2641 = icmp sgt i32 %r3151,32767
    br i1 %r2641, label %L638, label %L639
L637:  ;
    %r4015 = phi i32 [%r4016,%L640]
    br label %L631
L638:  ;
    %r2644 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2645 = load i32, ptr %r2644
    %r2646 = sdiv i32 %r3151,%r2645
    %r2649 = add i32 %r2646,65536
    %r2655 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r2656 = load i32, ptr %r2655
    %r2657 = sub i32 %r2649,%r2656
    br label %L640
L639:  ;
    %r2660 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2661 = load i32, ptr %r2660
    %r2662 = sdiv i32 %r3151,%r2661
    br label %L640
L640:  ;
    %r4016 = phi i32 [%r2657,%L638],[%r2662,%L639]
    br label %L637
L641:  ;  exiting65  header65
    %r3777 = phi i32 [%r3764,%L561],[%r3785,%L710]
    %r3101 = phi i32 [%r3166,%L561],[%r3070,%L710]
    %r3097 = phi i32 [%r3166,%L561],[%r4042,%L710]
    %r3093 = phi i32 [0,%L561],[%r3092,%L710]
    %r2674 = icmp ne i32 %r3097,0
    br i1 %r2674, label %L642, label %L643
L642:  ;  preheader56
    br label %L644
L643:  ;
    br label %L721
L644:  ;  exiting56  header56
    %r4019 = phi i32 [0,%L642],[%r4018,%L648]
    %r3778 = phi i32 [0,%L642],[%r2705,%L648]
    %r3653 = phi i32 [%r3097,%L642],[%r2699,%L648]
    %r3504 = phi i32 [1,%L642],[%r2702,%L648]
    %r2681 = icmp slt i32 %r3778,16
    br i1 %r2681, label %L645, label %L646
L645:  ;
    %r2684 = srem i32 %r3653,2
    %r2685 = icmp ne i32 %r2684,0
    br i1 %r2685, label %L649, label %L648
L646:  ;
    %r2707 = icmp ne i32 %r4019,0
    br i1 %r2707, label %L650, label %L651
L647:  ;
    %r2693 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3778
    %r2694 = load i32, ptr %r2693
    %r2695 = mul i32 %r2694,1
    %r2696 = add i32 %r4019,%r2695
    br label %L648
L648:  ;  latch56
    %r4018 = phi i32 [%r4019,%L645],[%r4019,%L649],[%r2696,%L647]
    %r2699 = sdiv i32 %r3653,2
    %r2702 = sdiv i32 %r3504,2
    %r2705 = add i32 %r3778,1
    br label %L644
L649:  ;
    %r2688 = srem i32 %r3504,2
    %r2689 = icmp ne i32 %r2688,0
    br i1 %r2689, label %L647, label %L648
L650:  ;  preheader59
    br label %L652
L651:  ;  preheader63
    %r3780 = phi i32 [%r3778,%L646],[%r3779,%L654]
    %r3092 = phi i32 [%r3093,%L646],[%r3088,%L654]
    br label %L680
L652:  ;  exiting59  header59
    %r3779 = phi i32 [%r3778,%L650],[%r3783,%L673]
    %r3088 = phi i32 [%r3093,%L650],[%r4024,%L673]
    %r3082 = phi i32 [%r3101,%L650],[%r4028,%L673]
    %r2715 = icmp ne i32 %r3082,0
    br i1 %r2715, label %L653, label %L654
L653:  ;  preheader57
    br label %L655
L654:  ;
    br label %L651
L655:  ;  exiting57  header57
    %r4024 = phi i32 [0,%L653],[%r4023,%L660]
    %r3781 = phi i32 [0,%L653],[%r2758,%L660]
    %r3656 = phi i32 [%r3088,%L653],[%r2752,%L660]
    %r3507 = phi i32 [%r3082,%L653],[%r2755,%L660]
    %r2722 = icmp slt i32 %r3781,16
    br i1 %r2722, label %L656, label %L657
L656:  ;
    %r2725 = srem i32 %r3656,2
    %r2726 = icmp ne i32 %r2725,0
    br i1 %r2726, label %L658, label %L659
L657:  ;  preheader58
    br label %L665
L658:  ;
    %r2729 = srem i32 %r3507,2
    %r2731 = icmp eq i32 %r2729,0
    br i1 %r2731, label %L661, label %L662
L659:  ;
    %r2741 = srem i32 %r3507,2
    %r2742 = icmp ne i32 %r2741,0
    br i1 %r2742, label %L663, label %L664
L660:  ;  latch57
    %r4023 = phi i32 [%r4022,%L662],[%r4025,%L664]
    %r2752 = sdiv i32 %r3656,2
    %r2755 = sdiv i32 %r3507,2
    %r2758 = add i32 %r3781,1
    br label %L655
L661:  ;
    %r2735 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3781
    %r2736 = load i32, ptr %r2735
    %r2737 = mul i32 %r2736,1
    %r2738 = add i32 %r4024,%r2737
    br label %L662
L662:  ;
    %r4022 = phi i32 [%r4024,%L658],[%r2738,%L661]
    br label %L660
L663:  ;
    %r2746 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3781
    %r2747 = load i32, ptr %r2746
    %r2748 = mul i32 %r2747,1
    %r2749 = add i32 %r4024,%r2748
    br label %L664
L664:  ;
    %r4025 = phi i32 [%r4024,%L659],[%r2749,%L663]
    br label %L660
L665:  ;  exiting58  header58
    %r4027 = phi i32 [0,%L657],[%r4026,%L669]
    %r3782 = phi i32 [0,%L657],[%r2790,%L669]
    %r3657 = phi i32 [%r3088,%L657],[%r2784,%L669]
    %r3508 = phi i32 [%r3082,%L657],[%r2787,%L669]
    %r2766 = icmp slt i32 %r3782,16
    br i1 %r2766, label %L666, label %L667
L666:  ;
    %r2769 = srem i32 %r3657,2
    %r2770 = icmp ne i32 %r2769,0
    br i1 %r2770, label %L670, label %L669
L667:  ;
    br label %L672
L668:  ;
    %r2778 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3782
    %r2779 = load i32, ptr %r2778
    %r2780 = mul i32 %r2779,1
    %r2781 = add i32 %r4027,%r2780
    br label %L669
L669:  ;  latch58
    %r4026 = phi i32 [%r4027,%L666],[%r4027,%L670],[%r2781,%L668]
    %r2784 = sdiv i32 %r3657,2
    %r2787 = sdiv i32 %r3508,2
    %r2790 = add i32 %r3782,1
    br label %L665
L670:  ;
    %r2773 = srem i32 %r3508,2
    %r2774 = icmp ne i32 %r2773,0
    br i1 %r2774, label %L668, label %L669
L672:  ;  preheader60
    %r2800 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2801 = load i32, ptr %r2800
    %r2802 = mul i32 %r4027,%r2801
    br label %L674
L673:  ;  latch59
    %r4028 = phi i32 [%r4030,%L676]
    %r3783 = phi i32 [%r3784,%L676]
    br label %L652
L674:  ;  exiting60  header60
    %r4030 = phi i32 [0,%L672],[%r4029,%L678]
    %r3784 = phi i32 [0,%L672],[%r2830,%L678]
    %r3659 = phi i32 [%r2802,%L672],[%r2824,%L678]
    %r3510 = phi i32 [65535,%L672],[%r2827,%L678]
    %r2806 = icmp slt i32 %r3784,16
    br i1 %r2806, label %L675, label %L676
L675:  ;
    %r2809 = srem i32 %r3659,2
    %r2810 = icmp ne i32 %r2809,0
    br i1 %r2810, label %L679, label %L678
L676:  ;
    br label %L673
L677:  ;
    %r2818 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3784
    %r2819 = load i32, ptr %r2818
    %r2820 = mul i32 %r2819,1
    %r2821 = add i32 %r4030,%r2820
    br label %L678
L678:  ;  latch60
    %r4029 = phi i32 [%r4030,%L675],[%r4030,%L679],[%r2821,%L677]
    %r2824 = sdiv i32 %r3659,2
    %r2827 = sdiv i32 %r3510,2
    %r2830 = add i32 %r3784,1
    br label %L674
L679:  ;
    %r2813 = srem i32 %r3510,2
    %r2814 = icmp ne i32 %r2813,0
    br i1 %r2814, label %L677, label %L678
L680:  ;  exiting63  header63
    %r3785 = phi i32 [%r3780,%L651],[%r3788,%L701]
    %r3070 = phi i32 [%r3101,%L651],[%r4034,%L701]
    %r3065 = phi i32 [%r3101,%L651],[%r4038,%L701]
    %r2842 = icmp ne i32 %r3065,0
    br i1 %r2842, label %L681, label %L682
L681:  ;  preheader61
    br label %L683
L682:  ;
    br label %L709
L683:  ;  exiting61  header61
    %r4034 = phi i32 [0,%L681],[%r4033,%L688]
    %r3786 = phi i32 [0,%L681],[%r2885,%L688]
    %r3661 = phi i32 [%r3070,%L681],[%r2879,%L688]
    %r3512 = phi i32 [%r3065,%L681],[%r2882,%L688]
    %r2849 = icmp slt i32 %r3786,16
    br i1 %r2849, label %L684, label %L685
L684:  ;
    %r2852 = srem i32 %r3661,2
    %r2853 = icmp ne i32 %r2852,0
    br i1 %r2853, label %L686, label %L687
L685:  ;  preheader62
    br label %L693
L686:  ;
    %r2856 = srem i32 %r3512,2
    %r2858 = icmp eq i32 %r2856,0
    br i1 %r2858, label %L689, label %L690
L687:  ;
    %r2868 = srem i32 %r3512,2
    %r2869 = icmp ne i32 %r2868,0
    br i1 %r2869, label %L691, label %L692
L688:  ;  latch61
    %r4033 = phi i32 [%r4032,%L690],[%r4035,%L692]
    %r2879 = sdiv i32 %r3661,2
    %r2882 = sdiv i32 %r3512,2
    %r2885 = add i32 %r3786,1
    br label %L683
L689:  ;
    %r2862 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3786
    %r2863 = load i32, ptr %r2862
    %r2864 = mul i32 %r2863,1
    %r2865 = add i32 %r4034,%r2864
    br label %L690
L690:  ;
    %r4032 = phi i32 [%r4034,%L686],[%r2865,%L689]
    br label %L688
L691:  ;
    %r2873 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3786
    %r2874 = load i32, ptr %r2873
    %r2875 = mul i32 %r2874,1
    %r2876 = add i32 %r4034,%r2875
    br label %L692
L692:  ;
    %r4035 = phi i32 [%r4034,%L687],[%r2876,%L691]
    br label %L688
L693:  ;  exiting62  header62
    %r4037 = phi i32 [0,%L685],[%r4036,%L697]
    %r3787 = phi i32 [0,%L685],[%r2917,%L697]
    %r3662 = phi i32 [%r3070,%L685],[%r2911,%L697]
    %r3513 = phi i32 [%r3065,%L685],[%r2914,%L697]
    %r2893 = icmp slt i32 %r3787,16
    br i1 %r2893, label %L694, label %L695
L694:  ;
    %r2896 = srem i32 %r3662,2
    %r2897 = icmp ne i32 %r2896,0
    br i1 %r2897, label %L698, label %L697
L695:  ;
    br label %L700
L696:  ;
    %r2905 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3787
    %r2906 = load i32, ptr %r2905
    %r2907 = mul i32 %r2906,1
    %r2908 = add i32 %r4037,%r2907
    br label %L697
L697:  ;  latch62
    %r4036 = phi i32 [%r4037,%L694],[%r4037,%L698],[%r2908,%L696]
    %r2911 = sdiv i32 %r3662,2
    %r2914 = sdiv i32 %r3513,2
    %r2917 = add i32 %r3787,1
    br label %L693
L698:  ;
    %r2900 = srem i32 %r3513,2
    %r2901 = icmp ne i32 %r2900,0
    br i1 %r2901, label %L696, label %L697
L700:  ;  preheader64
    %r2927 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2928 = load i32, ptr %r2927
    %r2929 = mul i32 %r4037,%r2928
    br label %L702
L701:  ;  latch63
    %r4038 = phi i32 [%r4040,%L704]
    %r3788 = phi i32 [%r3789,%L704]
    br label %L680
L702:  ;  exiting64  header64
    %r4040 = phi i32 [0,%L700],[%r4039,%L706]
    %r3789 = phi i32 [0,%L700],[%r2957,%L706]
    %r3664 = phi i32 [%r2929,%L700],[%r2951,%L706]
    %r3515 = phi i32 [65535,%L700],[%r2954,%L706]
    %r2933 = icmp slt i32 %r3789,16
    br i1 %r2933, label %L703, label %L704
L703:  ;
    %r2936 = srem i32 %r3664,2
    %r2937 = icmp ne i32 %r2936,0
    br i1 %r2937, label %L707, label %L706
L704:  ;
    br label %L701
L705:  ;
    %r2945 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3789
    %r2946 = load i32, ptr %r2945
    %r2947 = mul i32 %r2946,1
    %r2948 = add i32 %r4040,%r2947
    br label %L706
L706:  ;  latch64
    %r4039 = phi i32 [%r4040,%L703],[%r4040,%L707],[%r2948,%L705]
    %r2951 = sdiv i32 %r3664,2
    %r2954 = sdiv i32 %r3515,2
    %r2957 = add i32 %r3789,1
    br label %L702
L707:  ;
    %r2940 = srem i32 %r3515,2
    %r2941 = icmp ne i32 %r2940,0
    br i1 %r2941, label %L705, label %L706
L709:  ;
    br label %L714
L710:  ;  latch65
    %r4042 = phi i32 [%r4043,%L716]
    br label %L641
L714:  ;
    %r2977 = icmp sgt i32 %r3097,32767
    br i1 %r2977, label %L717, label %L718
L716:  ;
    %r4043 = phi i32 [%r4044,%L719]
    br label %L710
L717:  ;
    %r2980 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2981 = load i32, ptr %r2980
    %r2982 = sdiv i32 %r3097,%r2981
    %r2985 = add i32 %r2982,65536
    %r2991 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r2992 = load i32, ptr %r2991
    %r2993 = sub i32 %r2985,%r2992
    br label %L719
L718:  ;
    %r2996 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2997 = load i32, ptr %r2996
    %r2998 = sdiv i32 %r3097,%r2997
    br label %L719
L719:  ;
    %r4044 = phi i32 [%r2993,%L717],[%r2998,%L718]
    br label %L716
L721:  ;
    br label %L726
L722:  ;  latch66
    %r4046 = phi i32 [%r4047,%L728]
    %r3670 = phi i32 [%r3669,%L728]
    br label %L551
L726:  ;
    %r3018 = icmp sgt i32 %r3163,32767
    br i1 %r3018, label %L729, label %L730
L728:  ;
    %r4047 = phi i32 [%r4048,%L731]
    %r3669 = phi i32 [%r3668,%L731]
    br label %L722
L729:  ;
    %r3021 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r3022 = load i32, ptr %r3021
    %r3023 = sdiv i32 %r3163,%r3022
    %r3026 = add i32 %r3023,65536
    %r3032 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r3033 = load i32, ptr %r3032
    %r3034 = sub i32 %r3026,%r3033
    br label %L731
L730:  ;
    %r3037 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r3038 = load i32, ptr %r3037
    %r3039 = sdiv i32 %r3163,%r3038
    br label %L731
L731:  ;
    %r4048 = phi i32 [%r3034,%L729],[%r3039,%L730]
    %r3668 = phi i32 [%r3023,%L729],[%r3163,%L730]
    br label %L728
L732:  ;
    br label %L734
L733:  ;  latch67
    %r3051 = add i32 %r3396,1
    br label %L548
L734:  ;
    %r3055 = phi i32 [0,%L550],[1,%L732]
    ret i32 %r3055
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = call i32 @long_func()
    ret i32 %r0
}
