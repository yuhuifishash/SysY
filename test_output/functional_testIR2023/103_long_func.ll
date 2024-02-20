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
L4:  ;
    call void @putint(i32 1)
    call void @putch(i32 10)
    br label %L183
L183:  ;
    %r3674 = phi i32 [0,%L4],[%r3690,%L354]
    %r3529 = phi i32 [0,%L4],[%r3566,%L354]
    %r3402 = phi i32 [0,%L4],[1,%L354]
    %r3301 = phi i32 [2,%L4],[%r3256,%L354]
    %r3300 = phi i32 [1,%L4],[%r3888,%L354]
    %r3299 = phi i32 [1,%L4],[%r3298,%L354]
    %r774 = icmp sgt i32 %r3300,0
    br i1 %r774, label %L184, label %L185
L184:  ;
    br label %L186
L185:  ;
    call void @putint(i32 %r3299)
    call void @putch(i32 10)
    br label %L364
L186:  ;
    %r3829 = phi i32 [0,%L184],[%r3828,%L190]
    %r3675 = phi i32 [0,%L184],[%r805,%L190]
    %r3530 = phi i32 [%r3300,%L184],[%r799,%L190]
    %r3403 = phi i32 [1,%L184],[%r802,%L190]
    %r781 = icmp slt i32 %r3675,16
    br i1 %r781, label %L187, label %L188
L187:  ;
    %r784 = srem i32 %r3530,2
    %r785 = icmp ne i32 %r784,0
    br i1 %r785, label %L191, label %L190
L188:  ;
    %r807 = icmp ne i32 %r3829,0
    br i1 %r807, label %L192, label %L193
L189:  ;
    %r793 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3675
    %r794 = load i32, ptr %r793
    %r795 = mul i32 %r794,1
    %r796 = add i32 %r3829,%r795
    br label %L190
L190:  ;
    %r3828 = phi i32 [%r3829,%L187],[%r3829,%L191],[%r796,%L189]
    %r799 = sdiv i32 %r3530,2
    %r802 = sdiv i32 %r3403,2
    %r805 = add i32 %r3675,1
    br label %L186
L191:  ;
    %r788 = srem i32 %r3403,2
    %r789 = icmp ne i32 %r788,0
    br i1 %r789, label %L189, label %L190
L192:  ;
    br label %L194
L193:  ;
    %r3677 = phi i32 [%r3675,%L188],[%r3676,%L196]
    %r3298 = phi i32 [%r3299,%L188],[%r3291,%L196]
    br label %L273
L194:  ;
    %r3676 = phi i32 [%r3675,%L192],[%r3685,%L263]
    %r3297 = phi i32 [%r3299,%L192],[%r3272,%L263]
    %r3294 = phi i32 [%r3301,%L192],[%r3856,%L263]
    %r3291 = phi i32 [0,%L192],[%r3290,%L263]
    %r815 = icmp ne i32 %r3294,0
    br i1 %r815, label %L195, label %L196
L195:  ;
    br label %L197
L196:  ;
    br label %L193
L197:  ;
    %r3833 = phi i32 [0,%L195],[%r3832,%L201]
    %r3678 = phi i32 [0,%L195],[%r846,%L201]
    %r3533 = phi i32 [%r3294,%L195],[%r840,%L201]
    %r3406 = phi i32 [1,%L195],[%r843,%L201]
    %r822 = icmp slt i32 %r3678,16
    br i1 %r822, label %L198, label %L199
L198:  ;
    %r825 = srem i32 %r3533,2
    %r826 = icmp ne i32 %r825,0
    br i1 %r826, label %L202, label %L201
L199:  ;
    %r848 = icmp ne i32 %r3833,0
    br i1 %r848, label %L203, label %L204
L200:  ;
    %r834 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3678
    %r835 = load i32, ptr %r834
    %r836 = mul i32 %r835,1
    %r837 = add i32 %r3833,%r836
    br label %L201
L201:  ;
    %r3832 = phi i32 [%r3833,%L198],[%r3833,%L202],[%r837,%L200]
    %r840 = sdiv i32 %r3533,2
    %r843 = sdiv i32 %r3406,2
    %r846 = add i32 %r3678,1
    br label %L197
L202:  ;
    %r829 = srem i32 %r3406,2
    %r830 = icmp ne i32 %r829,0
    br i1 %r830, label %L200, label %L201
L203:  ;
    br label %L205
L204:  ;
    %r3680 = phi i32 [%r3678,%L199],[%r3679,%L207]
    %r3290 = phi i32 [%r3291,%L199],[%r3287,%L207]
    br label %L233
L205:  ;
    %r3679 = phi i32 [%r3678,%L203],[%r3683,%L226]
    %r3287 = phi i32 [%r3291,%L203],[%r3838,%L226]
    %r3282 = phi i32 [%r3297,%L203],[%r3842,%L226]
    %r856 = icmp ne i32 %r3282,0
    br i1 %r856, label %L206, label %L207
L206:  ;
    br label %L208
L207:  ;
    br label %L204
L208:  ;
    %r3838 = phi i32 [0,%L206],[%r3837,%L213]
    %r3681 = phi i32 [0,%L206],[%r899,%L213]
    %r3536 = phi i32 [%r3287,%L206],[%r893,%L213]
    %r3409 = phi i32 [%r3282,%L206],[%r896,%L213]
    %r863 = icmp slt i32 %r3681,16
    br i1 %r863, label %L209, label %L210
L209:  ;
    %r866 = srem i32 %r3536,2
    %r867 = icmp ne i32 %r866,0
    br i1 %r867, label %L211, label %L212
L210:  ;
    br label %L218
L211:  ;
    %r870 = srem i32 %r3409,2
    %r872 = icmp eq i32 %r870,0
    br i1 %r872, label %L214, label %L215
L212:  ;
    %r882 = srem i32 %r3409,2
    %r883 = icmp ne i32 %r882,0
    br i1 %r883, label %L216, label %L217
L213:  ;
    %r3837 = phi i32 [%r3836,%L215],[%r3839,%L217]
    %r893 = sdiv i32 %r3536,2
    %r896 = sdiv i32 %r3409,2
    %r899 = add i32 %r3681,1
    br label %L208
L214:  ;
    %r876 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3681
    %r877 = load i32, ptr %r876
    %r878 = mul i32 %r877,1
    %r879 = add i32 %r3838,%r878
    br label %L215
L215:  ;
    %r3836 = phi i32 [%r3838,%L211],[%r879,%L214]
    br label %L213
L216:  ;
    %r887 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3681
    %r888 = load i32, ptr %r887
    %r889 = mul i32 %r888,1
    %r890 = add i32 %r3838,%r889
    br label %L217
L217:  ;
    %r3839 = phi i32 [%r3838,%L212],[%r890,%L216]
    br label %L213
L218:  ;
    %r3841 = phi i32 [0,%L210],[%r3840,%L222]
    %r3682 = phi i32 [0,%L210],[%r931,%L222]
    %r3537 = phi i32 [%r3287,%L210],[%r925,%L222]
    %r3410 = phi i32 [%r3282,%L210],[%r928,%L222]
    %r907 = icmp slt i32 %r3682,16
    br i1 %r907, label %L219, label %L220
L219:  ;
    %r910 = srem i32 %r3537,2
    %r911 = icmp ne i32 %r910,0
    br i1 %r911, label %L223, label %L222
L220:  ;
    br label %L225
L221:  ;
    %r919 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3682
    %r920 = load i32, ptr %r919
    %r921 = mul i32 %r920,1
    %r922 = add i32 %r3841,%r921
    br label %L222
L222:  ;
    %r3840 = phi i32 [%r3841,%L219],[%r3841,%L223],[%r922,%L221]
    %r925 = sdiv i32 %r3537,2
    %r928 = sdiv i32 %r3410,2
    %r931 = add i32 %r3682,1
    br label %L218
L223:  ;
    %r914 = srem i32 %r3410,2
    %r915 = icmp ne i32 %r914,0
    br i1 %r915, label %L221, label %L222
L225:  ;
    %r941 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r942 = load i32, ptr %r941
    %r943 = mul i32 %r3841,%r942
    br label %L227
L226:  ;
    %r3842 = phi i32 [%r3844,%L229]
    %r3683 = phi i32 [%r3684,%L229]
    br label %L205
L227:  ;
    %r3844 = phi i32 [0,%L225],[%r3843,%L231]
    %r3684 = phi i32 [0,%L225],[%r971,%L231]
    %r3539 = phi i32 [%r943,%L225],[%r965,%L231]
    %r3412 = phi i32 [65535,%L225],[%r968,%L231]
    %r947 = icmp slt i32 %r3684,16
    br i1 %r947, label %L228, label %L229
L228:  ;
    %r950 = srem i32 %r3539,2
    %r951 = icmp ne i32 %r950,0
    br i1 %r951, label %L232, label %L231
L229:  ;
    br label %L226
L230:  ;
    %r959 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3684
    %r960 = load i32, ptr %r959
    %r961 = mul i32 %r960,1
    %r962 = add i32 %r3844,%r961
    br label %L231
L231:  ;
    %r3843 = phi i32 [%r3844,%L228],[%r3844,%L232],[%r962,%L230]
    %r965 = sdiv i32 %r3539,2
    %r968 = sdiv i32 %r3412,2
    %r971 = add i32 %r3684,1
    br label %L227
L232:  ;
    %r954 = srem i32 %r3412,2
    %r955 = icmp ne i32 %r954,0
    br i1 %r955, label %L230, label %L231
L233:  ;
    %r3685 = phi i32 [%r3680,%L204],[%r3688,%L254]
    %r3272 = phi i32 [%r3297,%L204],[%r3848,%L254]
    %r3268 = phi i32 [%r3297,%L204],[%r3852,%L254]
    %r983 = icmp ne i32 %r3268,0
    br i1 %r983, label %L234, label %L235
L234:  ;
    br label %L236
L235:  ;
    br label %L262
L236:  ;
    %r3848 = phi i32 [0,%L234],[%r3847,%L241]
    %r3686 = phi i32 [0,%L234],[%r1026,%L241]
    %r3541 = phi i32 [%r3272,%L234],[%r1020,%L241]
    %r3414 = phi i32 [%r3268,%L234],[%r1023,%L241]
    %r990 = icmp slt i32 %r3686,16
    br i1 %r990, label %L237, label %L238
L237:  ;
    %r993 = srem i32 %r3541,2
    %r994 = icmp ne i32 %r993,0
    br i1 %r994, label %L239, label %L240
L238:  ;
    br label %L246
L239:  ;
    %r997 = srem i32 %r3414,2
    %r999 = icmp eq i32 %r997,0
    br i1 %r999, label %L242, label %L243
L240:  ;
    %r1009 = srem i32 %r3414,2
    %r1010 = icmp ne i32 %r1009,0
    br i1 %r1010, label %L244, label %L245
L241:  ;
    %r3847 = phi i32 [%r3846,%L243],[%r3849,%L245]
    %r1020 = sdiv i32 %r3541,2
    %r1023 = sdiv i32 %r3414,2
    %r1026 = add i32 %r3686,1
    br label %L236
L242:  ;
    %r1003 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3686
    %r1004 = load i32, ptr %r1003
    %r1005 = mul i32 %r1004,1
    %r1006 = add i32 %r3848,%r1005
    br label %L243
L243:  ;
    %r3846 = phi i32 [%r3848,%L239],[%r1006,%L242]
    br label %L241
L244:  ;
    %r1014 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3686
    %r1015 = load i32, ptr %r1014
    %r1016 = mul i32 %r1015,1
    %r1017 = add i32 %r3848,%r1016
    br label %L245
L245:  ;
    %r3849 = phi i32 [%r3848,%L240],[%r1017,%L244]
    br label %L241
L246:  ;
    %r3851 = phi i32 [0,%L238],[%r3850,%L250]
    %r3687 = phi i32 [0,%L238],[%r1058,%L250]
    %r3542 = phi i32 [%r3272,%L238],[%r1052,%L250]
    %r3415 = phi i32 [%r3268,%L238],[%r1055,%L250]
    %r1034 = icmp slt i32 %r3687,16
    br i1 %r1034, label %L247, label %L248
L247:  ;
    %r1037 = srem i32 %r3542,2
    %r1038 = icmp ne i32 %r1037,0
    br i1 %r1038, label %L251, label %L250
L248:  ;
    br label %L253
L249:  ;
    %r1046 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3687
    %r1047 = load i32, ptr %r1046
    %r1048 = mul i32 %r1047,1
    %r1049 = add i32 %r3851,%r1048
    br label %L250
L250:  ;
    %r3850 = phi i32 [%r3851,%L247],[%r3851,%L251],[%r1049,%L249]
    %r1052 = sdiv i32 %r3542,2
    %r1055 = sdiv i32 %r3415,2
    %r1058 = add i32 %r3687,1
    br label %L246
L251:  ;
    %r1041 = srem i32 %r3415,2
    %r1042 = icmp ne i32 %r1041,0
    br i1 %r1042, label %L249, label %L250
L253:  ;
    %r1068 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1069 = load i32, ptr %r1068
    %r1070 = mul i32 %r3851,%r1069
    br label %L255
L254:  ;
    %r3852 = phi i32 [%r3854,%L257]
    %r3688 = phi i32 [%r3689,%L257]
    br label %L233
L255:  ;
    %r3854 = phi i32 [0,%L253],[%r3853,%L259]
    %r3689 = phi i32 [0,%L253],[%r1098,%L259]
    %r3544 = phi i32 [%r1070,%L253],[%r1092,%L259]
    %r3417 = phi i32 [65535,%L253],[%r1095,%L259]
    %r1074 = icmp slt i32 %r3689,16
    br i1 %r1074, label %L256, label %L257
L256:  ;
    %r1077 = srem i32 %r3544,2
    %r1078 = icmp ne i32 %r1077,0
    br i1 %r1078, label %L260, label %L259
L257:  ;
    br label %L254
L258:  ;
    %r1086 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3689
    %r1087 = load i32, ptr %r1086
    %r1088 = mul i32 %r1087,1
    %r1089 = add i32 %r3854,%r1088
    br label %L259
L259:  ;
    %r3853 = phi i32 [%r3854,%L256],[%r3854,%L260],[%r1089,%L258]
    %r1092 = sdiv i32 %r3544,2
    %r1095 = sdiv i32 %r3417,2
    %r1098 = add i32 %r3689,1
    br label %L255
L260:  ;
    %r1081 = srem i32 %r3417,2
    %r1082 = icmp ne i32 %r1081,0
    br i1 %r1082, label %L258, label %L259
L262:  ;
    br label %L267
L263:  ;
    %r3856 = phi i32 [%r3857,%L269]
    br label %L194
L267:  ;
    %r1118 = icmp sgt i32 %r3294,32767
    br i1 %r1118, label %L270, label %L271
L269:  ;
    %r3857 = phi i32 [%r3858,%L272]
    br label %L263
L270:  ;
    %r1121 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1122 = load i32, ptr %r1121
    %r1123 = sdiv i32 %r3294,%r1122
    %r1126 = add i32 %r1123,65536
    %r1132 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r1133 = load i32, ptr %r1132
    %r1134 = sub i32 %r1126,%r1133
    br label %L272
L271:  ;
    %r1137 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1138 = load i32, ptr %r1137
    %r1139 = sdiv i32 %r3294,%r1138
    br label %L272
L272:  ;
    %r3858 = phi i32 [%r1134,%L270],[%r1139,%L271]
    br label %L269
L273:  ;
    %r3690 = phi i32 [%r3677,%L193],[%r3698,%L342]
    %r3260 = phi i32 [%r3301,%L193],[%r3241,%L342]
    %r3258 = phi i32 [%r3301,%L193],[%r3884,%L342]
    %r3256 = phi i32 [0,%L193],[%r3255,%L342]
    %r1151 = icmp ne i32 %r3258,0
    br i1 %r1151, label %L274, label %L275
L274:  ;
    br label %L276
L275:  ;
    br label %L353
L276:  ;
    %r3861 = phi i32 [0,%L274],[%r3860,%L280]
    %r3691 = phi i32 [0,%L274],[%r1182,%L280]
    %r3549 = phi i32 [%r3258,%L274],[%r1176,%L280]
    %r3419 = phi i32 [1,%L274],[%r1179,%L280]
    %r1158 = icmp slt i32 %r3691,16
    br i1 %r1158, label %L277, label %L278
L277:  ;
    %r1161 = srem i32 %r3549,2
    %r1162 = icmp ne i32 %r1161,0
    br i1 %r1162, label %L281, label %L280
L278:  ;
    %r1184 = icmp ne i32 %r3861,0
    br i1 %r1184, label %L282, label %L283
L279:  ;
    %r1170 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3691
    %r1171 = load i32, ptr %r1170
    %r1172 = mul i32 %r1171,1
    %r1173 = add i32 %r3861,%r1172
    br label %L280
L280:  ;
    %r3860 = phi i32 [%r3861,%L277],[%r3861,%L281],[%r1173,%L279]
    %r1176 = sdiv i32 %r3549,2
    %r1179 = sdiv i32 %r3419,2
    %r1182 = add i32 %r3691,1
    br label %L276
L281:  ;
    %r1165 = srem i32 %r3419,2
    %r1166 = icmp ne i32 %r1165,0
    br i1 %r1166, label %L279, label %L280
L282:  ;
    br label %L284
L283:  ;
    %r3693 = phi i32 [%r3691,%L278],[%r3692,%L286]
    %r3255 = phi i32 [%r3256,%L278],[%r3253,%L286]
    br label %L312
L284:  ;
    %r3692 = phi i32 [%r3691,%L282],[%r3696,%L305]
    %r3253 = phi i32 [%r3256,%L282],[%r3866,%L305]
    %r3249 = phi i32 [%r3260,%L282],[%r3870,%L305]
    %r1192 = icmp ne i32 %r3249,0
    br i1 %r1192, label %L285, label %L286
L285:  ;
    br label %L287
L286:  ;
    br label %L283
L287:  ;
    %r3866 = phi i32 [0,%L285],[%r3865,%L292]
    %r3694 = phi i32 [0,%L285],[%r1235,%L292]
    %r3552 = phi i32 [%r3253,%L285],[%r1229,%L292]
    %r3422 = phi i32 [%r3249,%L285],[%r1232,%L292]
    %r1199 = icmp slt i32 %r3694,16
    br i1 %r1199, label %L288, label %L289
L288:  ;
    %r1202 = srem i32 %r3552,2
    %r1203 = icmp ne i32 %r1202,0
    br i1 %r1203, label %L290, label %L291
L289:  ;
    br label %L297
L290:  ;
    %r1206 = srem i32 %r3422,2
    %r1208 = icmp eq i32 %r1206,0
    br i1 %r1208, label %L293, label %L294
L291:  ;
    %r1218 = srem i32 %r3422,2
    %r1219 = icmp ne i32 %r1218,0
    br i1 %r1219, label %L295, label %L296
L292:  ;
    %r3865 = phi i32 [%r3864,%L294],[%r3867,%L296]
    %r1229 = sdiv i32 %r3552,2
    %r1232 = sdiv i32 %r3422,2
    %r1235 = add i32 %r3694,1
    br label %L287
L293:  ;
    %r1212 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3694
    %r1213 = load i32, ptr %r1212
    %r1214 = mul i32 %r1213,1
    %r1215 = add i32 %r3866,%r1214
    br label %L294
L294:  ;
    %r3864 = phi i32 [%r3866,%L290],[%r1215,%L293]
    br label %L292
L295:  ;
    %r1223 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3694
    %r1224 = load i32, ptr %r1223
    %r1225 = mul i32 %r1224,1
    %r1226 = add i32 %r3866,%r1225
    br label %L296
L296:  ;
    %r3867 = phi i32 [%r3866,%L291],[%r1226,%L295]
    br label %L292
L297:  ;
    %r3869 = phi i32 [0,%L289],[%r3868,%L301]
    %r3695 = phi i32 [0,%L289],[%r1267,%L301]
    %r3553 = phi i32 [%r3253,%L289],[%r1261,%L301]
    %r3423 = phi i32 [%r3249,%L289],[%r1264,%L301]
    %r1243 = icmp slt i32 %r3695,16
    br i1 %r1243, label %L298, label %L299
L298:  ;
    %r1246 = srem i32 %r3553,2
    %r1247 = icmp ne i32 %r1246,0
    br i1 %r1247, label %L302, label %L301
L299:  ;
    br label %L304
L300:  ;
    %r1255 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3695
    %r1256 = load i32, ptr %r1255
    %r1257 = mul i32 %r1256,1
    %r1258 = add i32 %r3869,%r1257
    br label %L301
L301:  ;
    %r3868 = phi i32 [%r3869,%L298],[%r3869,%L302],[%r1258,%L300]
    %r1261 = sdiv i32 %r3553,2
    %r1264 = sdiv i32 %r3423,2
    %r1267 = add i32 %r3695,1
    br label %L297
L302:  ;
    %r1250 = srem i32 %r3423,2
    %r1251 = icmp ne i32 %r1250,0
    br i1 %r1251, label %L300, label %L301
L304:  ;
    %r1277 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1278 = load i32, ptr %r1277
    %r1279 = mul i32 %r3869,%r1278
    br label %L306
L305:  ;
    %r3870 = phi i32 [%r3872,%L308]
    %r3696 = phi i32 [%r3697,%L308]
    br label %L284
L306:  ;
    %r3872 = phi i32 [0,%L304],[%r3871,%L310]
    %r3697 = phi i32 [0,%L304],[%r1307,%L310]
    %r3555 = phi i32 [%r1279,%L304],[%r1301,%L310]
    %r3425 = phi i32 [65535,%L304],[%r1304,%L310]
    %r1283 = icmp slt i32 %r3697,16
    br i1 %r1283, label %L307, label %L308
L307:  ;
    %r1286 = srem i32 %r3555,2
    %r1287 = icmp ne i32 %r1286,0
    br i1 %r1287, label %L311, label %L310
L308:  ;
    br label %L305
L309:  ;
    %r1295 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3697
    %r1296 = load i32, ptr %r1295
    %r1297 = mul i32 %r1296,1
    %r1298 = add i32 %r3872,%r1297
    br label %L310
L310:  ;
    %r3871 = phi i32 [%r3872,%L307],[%r3872,%L311],[%r1298,%L309]
    %r1301 = sdiv i32 %r3555,2
    %r1304 = sdiv i32 %r3425,2
    %r1307 = add i32 %r3697,1
    br label %L306
L311:  ;
    %r1290 = srem i32 %r3425,2
    %r1291 = icmp ne i32 %r1290,0
    br i1 %r1291, label %L309, label %L310
L312:  ;
    %r3698 = phi i32 [%r3693,%L283],[%r3701,%L333]
    %r3241 = phi i32 [%r3260,%L283],[%r3876,%L333]
    %r3238 = phi i32 [%r3260,%L283],[%r3880,%L333]
    %r1319 = icmp ne i32 %r3238,0
    br i1 %r1319, label %L313, label %L314
L313:  ;
    br label %L315
L314:  ;
    br label %L341
L315:  ;
    %r3876 = phi i32 [0,%L313],[%r3875,%L320]
    %r3699 = phi i32 [0,%L313],[%r1362,%L320]
    %r3557 = phi i32 [%r3241,%L313],[%r1356,%L320]
    %r3427 = phi i32 [%r3238,%L313],[%r1359,%L320]
    %r1326 = icmp slt i32 %r3699,16
    br i1 %r1326, label %L316, label %L317
L316:  ;
    %r1329 = srem i32 %r3557,2
    %r1330 = icmp ne i32 %r1329,0
    br i1 %r1330, label %L318, label %L319
L317:  ;
    br label %L325
L318:  ;
    %r1333 = srem i32 %r3427,2
    %r1335 = icmp eq i32 %r1333,0
    br i1 %r1335, label %L321, label %L322
L319:  ;
    %r1345 = srem i32 %r3427,2
    %r1346 = icmp ne i32 %r1345,0
    br i1 %r1346, label %L323, label %L324
L320:  ;
    %r3875 = phi i32 [%r3874,%L322],[%r3877,%L324]
    %r1356 = sdiv i32 %r3557,2
    %r1359 = sdiv i32 %r3427,2
    %r1362 = add i32 %r3699,1
    br label %L315
L321:  ;
    %r1339 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3699
    %r1340 = load i32, ptr %r1339
    %r1341 = mul i32 %r1340,1
    %r1342 = add i32 %r3876,%r1341
    br label %L322
L322:  ;
    %r3874 = phi i32 [%r3876,%L318],[%r1342,%L321]
    br label %L320
L323:  ;
    %r1350 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3699
    %r1351 = load i32, ptr %r1350
    %r1352 = mul i32 %r1351,1
    %r1353 = add i32 %r3876,%r1352
    br label %L324
L324:  ;
    %r3877 = phi i32 [%r3876,%L319],[%r1353,%L323]
    br label %L320
L325:  ;
    %r3879 = phi i32 [0,%L317],[%r3878,%L329]
    %r3700 = phi i32 [0,%L317],[%r1394,%L329]
    %r3558 = phi i32 [%r3241,%L317],[%r1388,%L329]
    %r3428 = phi i32 [%r3238,%L317],[%r1391,%L329]
    %r1370 = icmp slt i32 %r3700,16
    br i1 %r1370, label %L326, label %L327
L326:  ;
    %r1373 = srem i32 %r3558,2
    %r1374 = icmp ne i32 %r1373,0
    br i1 %r1374, label %L330, label %L329
L327:  ;
    br label %L332
L328:  ;
    %r1382 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3700
    %r1383 = load i32, ptr %r1382
    %r1384 = mul i32 %r1383,1
    %r1385 = add i32 %r3879,%r1384
    br label %L329
L329:  ;
    %r3878 = phi i32 [%r3879,%L326],[%r3879,%L330],[%r1385,%L328]
    %r1388 = sdiv i32 %r3558,2
    %r1391 = sdiv i32 %r3428,2
    %r1394 = add i32 %r3700,1
    br label %L325
L330:  ;
    %r1377 = srem i32 %r3428,2
    %r1378 = icmp ne i32 %r1377,0
    br i1 %r1378, label %L328, label %L329
L332:  ;
    %r1404 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1405 = load i32, ptr %r1404
    %r1406 = mul i32 %r3879,%r1405
    br label %L334
L333:  ;
    %r3880 = phi i32 [%r3882,%L336]
    %r3701 = phi i32 [%r3702,%L336]
    br label %L312
L334:  ;
    %r3882 = phi i32 [0,%L332],[%r3881,%L338]
    %r3702 = phi i32 [0,%L332],[%r1434,%L338]
    %r3560 = phi i32 [%r1406,%L332],[%r1428,%L338]
    %r3430 = phi i32 [65535,%L332],[%r1431,%L338]
    %r1410 = icmp slt i32 %r3702,16
    br i1 %r1410, label %L335, label %L336
L335:  ;
    %r1413 = srem i32 %r3560,2
    %r1414 = icmp ne i32 %r1413,0
    br i1 %r1414, label %L339, label %L338
L336:  ;
    br label %L333
L337:  ;
    %r1422 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3702
    %r1423 = load i32, ptr %r1422
    %r1424 = mul i32 %r1423,1
    %r1425 = add i32 %r3882,%r1424
    br label %L338
L338:  ;
    %r3881 = phi i32 [%r3882,%L335],[%r3882,%L339],[%r1425,%L337]
    %r1428 = sdiv i32 %r3560,2
    %r1431 = sdiv i32 %r3430,2
    %r1434 = add i32 %r3702,1
    br label %L334
L339:  ;
    %r1417 = srem i32 %r3430,2
    %r1418 = icmp ne i32 %r1417,0
    br i1 %r1418, label %L337, label %L338
L341:  ;
    br label %L346
L342:  ;
    %r3884 = phi i32 [%r3885,%L348]
    br label %L273
L346:  ;
    %r1454 = icmp sgt i32 %r3258,32767
    br i1 %r1454, label %L349, label %L350
L348:  ;
    %r3885 = phi i32 [%r3886,%L351]
    br label %L342
L349:  ;
    %r1457 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1458 = load i32, ptr %r1457
    %r1459 = sdiv i32 %r3258,%r1458
    %r1462 = add i32 %r1459,65536
    %r1468 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r1469 = load i32, ptr %r1468
    %r1470 = sub i32 %r1462,%r1469
    br label %L351
L350:  ;
    %r1473 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1474 = load i32, ptr %r1473
    %r1475 = sdiv i32 %r3258,%r1474
    br label %L351
L351:  ;
    %r3886 = phi i32 [%r1470,%L349],[%r1475,%L350]
    br label %L348
L353:  ;
    br label %L358
L354:  ;
    %r3888 = phi i32 [%r3889,%L360]
    %r3566 = phi i32 [%r3565,%L360]
    br label %L183
L358:  ;
    %r1495 = icmp sgt i32 %r3300,32767
    br i1 %r1495, label %L361, label %L362
L360:  ;
    %r3889 = phi i32 [%r3890,%L363]
    %r3565 = phi i32 [%r3564,%L363]
    br label %L354
L361:  ;
    %r1498 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1499 = load i32, ptr %r1498
    %r1500 = sdiv i32 %r3300,%r1499
    %r1503 = add i32 %r1500,65536
    %r1509 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r1510 = load i32, ptr %r1509
    %r1511 = sub i32 %r1503,%r1510
    br label %L363
L362:  ;
    %r1514 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1515 = load i32, ptr %r1514
    %r1516 = sdiv i32 %r3300,%r1515
    br label %L363
L363:  ;
    %r3890 = phi i32 [%r1511,%L361],[%r1516,%L362]
    %r3564 = phi i32 [%r1500,%L361],[%r3300,%L362]
    br label %L360
L364:  ;
    %r3704 = phi i32 [%r3674,%L185],[%r3703,%L369]
    %r3568 = phi i32 [%r3529,%L185],[%r3567,%L369]
    %r3432 = phi i32 [%r3402,%L185],[%r3431,%L369]
    %r3371 = phi i32 [2,%L185],[%r2284,%L369]
    %r1525 = icmp slt i32 %r3371,16
    br i1 %r1525, label %L365, label %L366
L365:  ;
    br label %L367
L366:  ;
    br label %L548
L367:  ;
    %r3703 = phi i32 [%r3704,%L365],[%r3720,%L538]
    %r3567 = phi i32 [%r3568,%L365],[%r3605,%L538]
    %r3431 = phi i32 [%r3432,%L365],[1,%L538]
    %r3232 = phi i32 [2,%L365],[%r3173,%L538]
    %r3230 = phi i32 [%r3371,%L365],[%r3953,%L538]
    %r3228 = phi i32 [1,%L365],[%r3227,%L538]
    %r1534 = icmp sgt i32 %r3230,0
    br i1 %r1534, label %L368, label %L369
L368:  ;
    br label %L370
L369:  ;
    call void @putint(i32 %r3228)
    call void @putch(i32 10)
    %r2284 = add i32 %r3371,1
    br label %L364
L370:  ;
    %r3894 = phi i32 [0,%L368],[%r3893,%L374]
    %r3705 = phi i32 [0,%L368],[%r1565,%L374]
    %r3569 = phi i32 [%r3230,%L368],[%r1559,%L374]
    %r3433 = phi i32 [1,%L368],[%r1562,%L374]
    %r1541 = icmp slt i32 %r3705,16
    br i1 %r1541, label %L371, label %L372
L371:  ;
    %r1544 = srem i32 %r3569,2
    %r1545 = icmp ne i32 %r1544,0
    br i1 %r1545, label %L375, label %L374
L372:  ;
    %r1567 = icmp ne i32 %r3894,0
    br i1 %r1567, label %L376, label %L377
L373:  ;
    %r1553 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3705
    %r1554 = load i32, ptr %r1553
    %r1555 = mul i32 %r1554,1
    %r1556 = add i32 %r3894,%r1555
    br label %L374
L374:  ;
    %r3893 = phi i32 [%r3894,%L371],[%r3894,%L375],[%r1556,%L373]
    %r1559 = sdiv i32 %r3569,2
    %r1562 = sdiv i32 %r3433,2
    %r1565 = add i32 %r3705,1
    br label %L370
L375:  ;
    %r1548 = srem i32 %r3433,2
    %r1549 = icmp ne i32 %r1548,0
    br i1 %r1549, label %L373, label %L374
L376:  ;
    br label %L378
L377:  ;
    %r3707 = phi i32 [%r3705,%L372],[%r3706,%L380]
    %r3227 = phi i32 [%r3228,%L372],[%r3217,%L380]
    br label %L457
L378:  ;
    %r3706 = phi i32 [%r3705,%L376],[%r3715,%L447]
    %r3225 = phi i32 [%r3228,%L376],[%r3194,%L447]
    %r3221 = phi i32 [%r3232,%L376],[%r3921,%L447]
    %r3217 = phi i32 [0,%L376],[%r3216,%L447]
    %r1575 = icmp ne i32 %r3221,0
    br i1 %r1575, label %L379, label %L380
L379:  ;
    br label %L381
L380:  ;
    br label %L377
L381:  ;
    %r3898 = phi i32 [0,%L379],[%r3897,%L385]
    %r3708 = phi i32 [0,%L379],[%r1606,%L385]
    %r3572 = phi i32 [%r3221,%L379],[%r1600,%L385]
    %r3436 = phi i32 [1,%L379],[%r1603,%L385]
    %r1582 = icmp slt i32 %r3708,16
    br i1 %r1582, label %L382, label %L383
L382:  ;
    %r1585 = srem i32 %r3572,2
    %r1586 = icmp ne i32 %r1585,0
    br i1 %r1586, label %L386, label %L385
L383:  ;
    %r1608 = icmp ne i32 %r3898,0
    br i1 %r1608, label %L387, label %L388
L384:  ;
    %r1594 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3708
    %r1595 = load i32, ptr %r1594
    %r1596 = mul i32 %r1595,1
    %r1597 = add i32 %r3898,%r1596
    br label %L385
L385:  ;
    %r3897 = phi i32 [%r3898,%L382],[%r3898,%L386],[%r1597,%L384]
    %r1600 = sdiv i32 %r3572,2
    %r1603 = sdiv i32 %r3436,2
    %r1606 = add i32 %r3708,1
    br label %L381
L386:  ;
    %r1589 = srem i32 %r3436,2
    %r1590 = icmp ne i32 %r1589,0
    br i1 %r1590, label %L384, label %L385
L387:  ;
    br label %L389
L388:  ;
    %r3710 = phi i32 [%r3708,%L383],[%r3709,%L391]
    %r3216 = phi i32 [%r3217,%L383],[%r3212,%L391]
    br label %L417
L389:  ;
    %r3709 = phi i32 [%r3708,%L387],[%r3713,%L410]
    %r3212 = phi i32 [%r3217,%L387],[%r3903,%L410]
    %r3206 = phi i32 [%r3225,%L387],[%r3907,%L410]
    %r1616 = icmp ne i32 %r3206,0
    br i1 %r1616, label %L390, label %L391
L390:  ;
    br label %L392
L391:  ;
    br label %L388
L392:  ;
    %r3903 = phi i32 [0,%L390],[%r3902,%L397]
    %r3711 = phi i32 [0,%L390],[%r1659,%L397]
    %r3575 = phi i32 [%r3212,%L390],[%r1653,%L397]
    %r3439 = phi i32 [%r3206,%L390],[%r1656,%L397]
    %r1623 = icmp slt i32 %r3711,16
    br i1 %r1623, label %L393, label %L394
L393:  ;
    %r1626 = srem i32 %r3575,2
    %r1627 = icmp ne i32 %r1626,0
    br i1 %r1627, label %L395, label %L396
L394:  ;
    br label %L402
L395:  ;
    %r1630 = srem i32 %r3439,2
    %r1632 = icmp eq i32 %r1630,0
    br i1 %r1632, label %L398, label %L399
L396:  ;
    %r1642 = srem i32 %r3439,2
    %r1643 = icmp ne i32 %r1642,0
    br i1 %r1643, label %L400, label %L401
L397:  ;
    %r3902 = phi i32 [%r3901,%L399],[%r3904,%L401]
    %r1653 = sdiv i32 %r3575,2
    %r1656 = sdiv i32 %r3439,2
    %r1659 = add i32 %r3711,1
    br label %L392
L398:  ;
    %r1636 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3711
    %r1637 = load i32, ptr %r1636
    %r1638 = mul i32 %r1637,1
    %r1639 = add i32 %r3903,%r1638
    br label %L399
L399:  ;
    %r3901 = phi i32 [%r3903,%L395],[%r1639,%L398]
    br label %L397
L400:  ;
    %r1647 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3711
    %r1648 = load i32, ptr %r1647
    %r1649 = mul i32 %r1648,1
    %r1650 = add i32 %r3903,%r1649
    br label %L401
L401:  ;
    %r3904 = phi i32 [%r3903,%L396],[%r1650,%L400]
    br label %L397
L402:  ;
    %r3906 = phi i32 [0,%L394],[%r3905,%L406]
    %r3712 = phi i32 [0,%L394],[%r1691,%L406]
    %r3576 = phi i32 [%r3212,%L394],[%r1685,%L406]
    %r3440 = phi i32 [%r3206,%L394],[%r1688,%L406]
    %r1667 = icmp slt i32 %r3712,16
    br i1 %r1667, label %L403, label %L404
L403:  ;
    %r1670 = srem i32 %r3576,2
    %r1671 = icmp ne i32 %r1670,0
    br i1 %r1671, label %L407, label %L406
L404:  ;
    br label %L409
L405:  ;
    %r1679 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3712
    %r1680 = load i32, ptr %r1679
    %r1681 = mul i32 %r1680,1
    %r1682 = add i32 %r3906,%r1681
    br label %L406
L406:  ;
    %r3905 = phi i32 [%r3906,%L403],[%r3906,%L407],[%r1682,%L405]
    %r1685 = sdiv i32 %r3576,2
    %r1688 = sdiv i32 %r3440,2
    %r1691 = add i32 %r3712,1
    br label %L402
L407:  ;
    %r1674 = srem i32 %r3440,2
    %r1675 = icmp ne i32 %r1674,0
    br i1 %r1675, label %L405, label %L406
L409:  ;
    %r1701 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1702 = load i32, ptr %r1701
    %r1703 = mul i32 %r3906,%r1702
    br label %L411
L410:  ;
    %r3907 = phi i32 [%r3909,%L413]
    %r3713 = phi i32 [%r3714,%L413]
    br label %L389
L411:  ;
    %r3909 = phi i32 [0,%L409],[%r3908,%L415]
    %r3714 = phi i32 [0,%L409],[%r1731,%L415]
    %r3578 = phi i32 [%r1703,%L409],[%r1725,%L415]
    %r3442 = phi i32 [65535,%L409],[%r1728,%L415]
    %r1707 = icmp slt i32 %r3714,16
    br i1 %r1707, label %L412, label %L413
L412:  ;
    %r1710 = srem i32 %r3578,2
    %r1711 = icmp ne i32 %r1710,0
    br i1 %r1711, label %L416, label %L415
L413:  ;
    br label %L410
L414:  ;
    %r1719 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3714
    %r1720 = load i32, ptr %r1719
    %r1721 = mul i32 %r1720,1
    %r1722 = add i32 %r3909,%r1721
    br label %L415
L415:  ;
    %r3908 = phi i32 [%r3909,%L412],[%r3909,%L416],[%r1722,%L414]
    %r1725 = sdiv i32 %r3578,2
    %r1728 = sdiv i32 %r3442,2
    %r1731 = add i32 %r3714,1
    br label %L411
L416:  ;
    %r1714 = srem i32 %r3442,2
    %r1715 = icmp ne i32 %r1714,0
    br i1 %r1715, label %L414, label %L415
L417:  ;
    %r3715 = phi i32 [%r3710,%L388],[%r3718,%L438]
    %r3194 = phi i32 [%r3225,%L388],[%r3913,%L438]
    %r3189 = phi i32 [%r3225,%L388],[%r3917,%L438]
    %r1743 = icmp ne i32 %r3189,0
    br i1 %r1743, label %L418, label %L419
L418:  ;
    br label %L420
L419:  ;
    br label %L446
L420:  ;
    %r3913 = phi i32 [0,%L418],[%r3912,%L425]
    %r3716 = phi i32 [0,%L418],[%r1786,%L425]
    %r3580 = phi i32 [%r3194,%L418],[%r1780,%L425]
    %r3444 = phi i32 [%r3189,%L418],[%r1783,%L425]
    %r1750 = icmp slt i32 %r3716,16
    br i1 %r1750, label %L421, label %L422
L421:  ;
    %r1753 = srem i32 %r3580,2
    %r1754 = icmp ne i32 %r1753,0
    br i1 %r1754, label %L423, label %L424
L422:  ;
    br label %L430
L423:  ;
    %r1757 = srem i32 %r3444,2
    %r1759 = icmp eq i32 %r1757,0
    br i1 %r1759, label %L426, label %L427
L424:  ;
    %r1769 = srem i32 %r3444,2
    %r1770 = icmp ne i32 %r1769,0
    br i1 %r1770, label %L428, label %L429
L425:  ;
    %r3912 = phi i32 [%r3911,%L427],[%r3914,%L429]
    %r1780 = sdiv i32 %r3580,2
    %r1783 = sdiv i32 %r3444,2
    %r1786 = add i32 %r3716,1
    br label %L420
L426:  ;
    %r1763 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3716
    %r1764 = load i32, ptr %r1763
    %r1765 = mul i32 %r1764,1
    %r1766 = add i32 %r3913,%r1765
    br label %L427
L427:  ;
    %r3911 = phi i32 [%r3913,%L423],[%r1766,%L426]
    br label %L425
L428:  ;
    %r1774 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3716
    %r1775 = load i32, ptr %r1774
    %r1776 = mul i32 %r1775,1
    %r1777 = add i32 %r3913,%r1776
    br label %L429
L429:  ;
    %r3914 = phi i32 [%r3913,%L424],[%r1777,%L428]
    br label %L425
L430:  ;
    %r3916 = phi i32 [0,%L422],[%r3915,%L434]
    %r3717 = phi i32 [0,%L422],[%r1818,%L434]
    %r3581 = phi i32 [%r3194,%L422],[%r1812,%L434]
    %r3445 = phi i32 [%r3189,%L422],[%r1815,%L434]
    %r1794 = icmp slt i32 %r3717,16
    br i1 %r1794, label %L431, label %L432
L431:  ;
    %r1797 = srem i32 %r3581,2
    %r1798 = icmp ne i32 %r1797,0
    br i1 %r1798, label %L435, label %L434
L432:  ;
    br label %L437
L433:  ;
    %r1806 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3717
    %r1807 = load i32, ptr %r1806
    %r1808 = mul i32 %r1807,1
    %r1809 = add i32 %r3916,%r1808
    br label %L434
L434:  ;
    %r3915 = phi i32 [%r3916,%L431],[%r3916,%L435],[%r1809,%L433]
    %r1812 = sdiv i32 %r3581,2
    %r1815 = sdiv i32 %r3445,2
    %r1818 = add i32 %r3717,1
    br label %L430
L435:  ;
    %r1801 = srem i32 %r3445,2
    %r1802 = icmp ne i32 %r1801,0
    br i1 %r1802, label %L433, label %L434
L437:  ;
    %r1828 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1829 = load i32, ptr %r1828
    %r1830 = mul i32 %r3916,%r1829
    br label %L439
L438:  ;
    %r3917 = phi i32 [%r3919,%L441]
    %r3718 = phi i32 [%r3719,%L441]
    br label %L417
L439:  ;
    %r3919 = phi i32 [0,%L437],[%r3918,%L443]
    %r3719 = phi i32 [0,%L437],[%r1858,%L443]
    %r3583 = phi i32 [%r1830,%L437],[%r1852,%L443]
    %r3447 = phi i32 [65535,%L437],[%r1855,%L443]
    %r1834 = icmp slt i32 %r3719,16
    br i1 %r1834, label %L440, label %L441
L440:  ;
    %r1837 = srem i32 %r3583,2
    %r1838 = icmp ne i32 %r1837,0
    br i1 %r1838, label %L444, label %L443
L441:  ;
    br label %L438
L442:  ;
    %r1846 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3719
    %r1847 = load i32, ptr %r1846
    %r1848 = mul i32 %r1847,1
    %r1849 = add i32 %r3919,%r1848
    br label %L443
L443:  ;
    %r3918 = phi i32 [%r3919,%L440],[%r3919,%L444],[%r1849,%L442]
    %r1852 = sdiv i32 %r3583,2
    %r1855 = sdiv i32 %r3447,2
    %r1858 = add i32 %r3719,1
    br label %L439
L444:  ;
    %r1841 = srem i32 %r3447,2
    %r1842 = icmp ne i32 %r1841,0
    br i1 %r1842, label %L442, label %L443
L446:  ;
    br label %L451
L447:  ;
    %r3921 = phi i32 [%r3922,%L453]
    br label %L378
L451:  ;
    %r1878 = icmp sgt i32 %r3221,32767
    br i1 %r1878, label %L454, label %L455
L453:  ;
    %r3922 = phi i32 [%r3923,%L456]
    br label %L447
L454:  ;
    %r1881 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1882 = load i32, ptr %r1881
    %r1883 = sdiv i32 %r3221,%r1882
    %r1886 = add i32 %r1883,65536
    %r1892 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r1893 = load i32, ptr %r1892
    %r1894 = sub i32 %r1886,%r1893
    br label %L456
L455:  ;
    %r1897 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r1898 = load i32, ptr %r1897
    %r1899 = sdiv i32 %r3221,%r1898
    br label %L456
L456:  ;
    %r3923 = phi i32 [%r1894,%L454],[%r1899,%L455]
    br label %L453
L457:  ;
    %r3720 = phi i32 [%r3707,%L377],[%r3728,%L526]
    %r3179 = phi i32 [%r3232,%L377],[%r3154,%L526]
    %r3176 = phi i32 [%r3232,%L377],[%r3949,%L526]
    %r3173 = phi i32 [0,%L377],[%r3172,%L526]
    %r1911 = icmp ne i32 %r3176,0
    br i1 %r1911, label %L458, label %L459
L458:  ;
    br label %L460
L459:  ;
    br label %L537
L460:  ;
    %r3926 = phi i32 [0,%L458],[%r3925,%L464]
    %r3721 = phi i32 [0,%L458],[%r1942,%L464]
    %r3588 = phi i32 [%r3176,%L458],[%r1936,%L464]
    %r3449 = phi i32 [1,%L458],[%r1939,%L464]
    %r1918 = icmp slt i32 %r3721,16
    br i1 %r1918, label %L461, label %L462
L461:  ;
    %r1921 = srem i32 %r3588,2
    %r1922 = icmp ne i32 %r1921,0
    br i1 %r1922, label %L465, label %L464
L462:  ;
    %r1944 = icmp ne i32 %r3926,0
    br i1 %r1944, label %L466, label %L467
L463:  ;
    %r1930 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3721
    %r1931 = load i32, ptr %r1930
    %r1932 = mul i32 %r1931,1
    %r1933 = add i32 %r3926,%r1932
    br label %L464
L464:  ;
    %r3925 = phi i32 [%r3926,%L461],[%r3926,%L465],[%r1933,%L463]
    %r1936 = sdiv i32 %r3588,2
    %r1939 = sdiv i32 %r3449,2
    %r1942 = add i32 %r3721,1
    br label %L460
L465:  ;
    %r1925 = srem i32 %r3449,2
    %r1926 = icmp ne i32 %r1925,0
    br i1 %r1926, label %L463, label %L464
L466:  ;
    br label %L468
L467:  ;
    %r3723 = phi i32 [%r3721,%L462],[%r3722,%L470]
    %r3172 = phi i32 [%r3173,%L462],[%r3169,%L470]
    br label %L496
L468:  ;
    %r3722 = phi i32 [%r3721,%L466],[%r3726,%L489]
    %r3169 = phi i32 [%r3173,%L466],[%r3931,%L489]
    %r3164 = phi i32 [%r3179,%L466],[%r3935,%L489]
    %r1952 = icmp ne i32 %r3164,0
    br i1 %r1952, label %L469, label %L470
L469:  ;
    br label %L471
L470:  ;
    br label %L467
L471:  ;
    %r3931 = phi i32 [0,%L469],[%r3930,%L476]
    %r3724 = phi i32 [0,%L469],[%r1995,%L476]
    %r3591 = phi i32 [%r3169,%L469],[%r1989,%L476]
    %r3452 = phi i32 [%r3164,%L469],[%r1992,%L476]
    %r1959 = icmp slt i32 %r3724,16
    br i1 %r1959, label %L472, label %L473
L472:  ;
    %r1962 = srem i32 %r3591,2
    %r1963 = icmp ne i32 %r1962,0
    br i1 %r1963, label %L474, label %L475
L473:  ;
    br label %L481
L474:  ;
    %r1966 = srem i32 %r3452,2
    %r1968 = icmp eq i32 %r1966,0
    br i1 %r1968, label %L477, label %L478
L475:  ;
    %r1978 = srem i32 %r3452,2
    %r1979 = icmp ne i32 %r1978,0
    br i1 %r1979, label %L479, label %L480
L476:  ;
    %r3930 = phi i32 [%r3929,%L478],[%r3932,%L480]
    %r1989 = sdiv i32 %r3591,2
    %r1992 = sdiv i32 %r3452,2
    %r1995 = add i32 %r3724,1
    br label %L471
L477:  ;
    %r1972 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3724
    %r1973 = load i32, ptr %r1972
    %r1974 = mul i32 %r1973,1
    %r1975 = add i32 %r3931,%r1974
    br label %L478
L478:  ;
    %r3929 = phi i32 [%r3931,%L474],[%r1975,%L477]
    br label %L476
L479:  ;
    %r1983 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3724
    %r1984 = load i32, ptr %r1983
    %r1985 = mul i32 %r1984,1
    %r1986 = add i32 %r3931,%r1985
    br label %L480
L480:  ;
    %r3932 = phi i32 [%r3931,%L475],[%r1986,%L479]
    br label %L476
L481:  ;
    %r3934 = phi i32 [0,%L473],[%r3933,%L485]
    %r3725 = phi i32 [0,%L473],[%r2027,%L485]
    %r3592 = phi i32 [%r3169,%L473],[%r2021,%L485]
    %r3453 = phi i32 [%r3164,%L473],[%r2024,%L485]
    %r2003 = icmp slt i32 %r3725,16
    br i1 %r2003, label %L482, label %L483
L482:  ;
    %r2006 = srem i32 %r3592,2
    %r2007 = icmp ne i32 %r2006,0
    br i1 %r2007, label %L486, label %L485
L483:  ;
    br label %L488
L484:  ;
    %r2015 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3725
    %r2016 = load i32, ptr %r2015
    %r2017 = mul i32 %r2016,1
    %r2018 = add i32 %r3934,%r2017
    br label %L485
L485:  ;
    %r3933 = phi i32 [%r3934,%L482],[%r3934,%L486],[%r2018,%L484]
    %r2021 = sdiv i32 %r3592,2
    %r2024 = sdiv i32 %r3453,2
    %r2027 = add i32 %r3725,1
    br label %L481
L486:  ;
    %r2010 = srem i32 %r3453,2
    %r2011 = icmp ne i32 %r2010,0
    br i1 %r2011, label %L484, label %L485
L488:  ;
    %r2037 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2038 = load i32, ptr %r2037
    %r2039 = mul i32 %r3934,%r2038
    br label %L490
L489:  ;
    %r3935 = phi i32 [%r3937,%L492]
    %r3726 = phi i32 [%r3727,%L492]
    br label %L468
L490:  ;
    %r3937 = phi i32 [0,%L488],[%r3936,%L494]
    %r3727 = phi i32 [0,%L488],[%r2067,%L494]
    %r3594 = phi i32 [%r2039,%L488],[%r2061,%L494]
    %r3455 = phi i32 [65535,%L488],[%r2064,%L494]
    %r2043 = icmp slt i32 %r3727,16
    br i1 %r2043, label %L491, label %L492
L491:  ;
    %r2046 = srem i32 %r3594,2
    %r2047 = icmp ne i32 %r2046,0
    br i1 %r2047, label %L495, label %L494
L492:  ;
    br label %L489
L493:  ;
    %r2055 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3727
    %r2056 = load i32, ptr %r2055
    %r2057 = mul i32 %r2056,1
    %r2058 = add i32 %r3937,%r2057
    br label %L494
L494:  ;
    %r3936 = phi i32 [%r3937,%L491],[%r3937,%L495],[%r2058,%L493]
    %r2061 = sdiv i32 %r3594,2
    %r2064 = sdiv i32 %r3455,2
    %r2067 = add i32 %r3727,1
    br label %L490
L495:  ;
    %r2050 = srem i32 %r3455,2
    %r2051 = icmp ne i32 %r2050,0
    br i1 %r2051, label %L493, label %L494
L496:  ;
    %r3728 = phi i32 [%r3723,%L467],[%r3731,%L517]
    %r3154 = phi i32 [%r3179,%L467],[%r3941,%L517]
    %r3150 = phi i32 [%r3179,%L467],[%r3945,%L517]
    %r2079 = icmp ne i32 %r3150,0
    br i1 %r2079, label %L497, label %L498
L497:  ;
    br label %L499
L498:  ;
    br label %L525
L499:  ;
    %r3941 = phi i32 [0,%L497],[%r3940,%L504]
    %r3729 = phi i32 [0,%L497],[%r2122,%L504]
    %r3596 = phi i32 [%r3154,%L497],[%r2116,%L504]
    %r3457 = phi i32 [%r3150,%L497],[%r2119,%L504]
    %r2086 = icmp slt i32 %r3729,16
    br i1 %r2086, label %L500, label %L501
L500:  ;
    %r2089 = srem i32 %r3596,2
    %r2090 = icmp ne i32 %r2089,0
    br i1 %r2090, label %L502, label %L503
L501:  ;
    br label %L509
L502:  ;
    %r2093 = srem i32 %r3457,2
    %r2095 = icmp eq i32 %r2093,0
    br i1 %r2095, label %L505, label %L506
L503:  ;
    %r2105 = srem i32 %r3457,2
    %r2106 = icmp ne i32 %r2105,0
    br i1 %r2106, label %L507, label %L508
L504:  ;
    %r3940 = phi i32 [%r3939,%L506],[%r3942,%L508]
    %r2116 = sdiv i32 %r3596,2
    %r2119 = sdiv i32 %r3457,2
    %r2122 = add i32 %r3729,1
    br label %L499
L505:  ;
    %r2099 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3729
    %r2100 = load i32, ptr %r2099
    %r2101 = mul i32 %r2100,1
    %r2102 = add i32 %r3941,%r2101
    br label %L506
L506:  ;
    %r3939 = phi i32 [%r3941,%L502],[%r2102,%L505]
    br label %L504
L507:  ;
    %r2110 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3729
    %r2111 = load i32, ptr %r2110
    %r2112 = mul i32 %r2111,1
    %r2113 = add i32 %r3941,%r2112
    br label %L508
L508:  ;
    %r3942 = phi i32 [%r3941,%L503],[%r2113,%L507]
    br label %L504
L509:  ;
    %r3944 = phi i32 [0,%L501],[%r3943,%L513]
    %r3730 = phi i32 [0,%L501],[%r2154,%L513]
    %r3597 = phi i32 [%r3154,%L501],[%r2148,%L513]
    %r3458 = phi i32 [%r3150,%L501],[%r2151,%L513]
    %r2130 = icmp slt i32 %r3730,16
    br i1 %r2130, label %L510, label %L511
L510:  ;
    %r2133 = srem i32 %r3597,2
    %r2134 = icmp ne i32 %r2133,0
    br i1 %r2134, label %L514, label %L513
L511:  ;
    br label %L516
L512:  ;
    %r2142 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3730
    %r2143 = load i32, ptr %r2142
    %r2144 = mul i32 %r2143,1
    %r2145 = add i32 %r3944,%r2144
    br label %L513
L513:  ;
    %r3943 = phi i32 [%r3944,%L510],[%r3944,%L514],[%r2145,%L512]
    %r2148 = sdiv i32 %r3597,2
    %r2151 = sdiv i32 %r3458,2
    %r2154 = add i32 %r3730,1
    br label %L509
L514:  ;
    %r2137 = srem i32 %r3458,2
    %r2138 = icmp ne i32 %r2137,0
    br i1 %r2138, label %L512, label %L513
L516:  ;
    %r2164 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2165 = load i32, ptr %r2164
    %r2166 = mul i32 %r3944,%r2165
    br label %L518
L517:  ;
    %r3945 = phi i32 [%r3947,%L520]
    %r3731 = phi i32 [%r3732,%L520]
    br label %L496
L518:  ;
    %r3947 = phi i32 [0,%L516],[%r3946,%L522]
    %r3732 = phi i32 [0,%L516],[%r2194,%L522]
    %r3599 = phi i32 [%r2166,%L516],[%r2188,%L522]
    %r3460 = phi i32 [65535,%L516],[%r2191,%L522]
    %r2170 = icmp slt i32 %r3732,16
    br i1 %r2170, label %L519, label %L520
L519:  ;
    %r2173 = srem i32 %r3599,2
    %r2174 = icmp ne i32 %r2173,0
    br i1 %r2174, label %L523, label %L522
L520:  ;
    br label %L517
L521:  ;
    %r2182 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3732
    %r2183 = load i32, ptr %r2182
    %r2184 = mul i32 %r2183,1
    %r2185 = add i32 %r3947,%r2184
    br label %L522
L522:  ;
    %r3946 = phi i32 [%r3947,%L519],[%r3947,%L523],[%r2185,%L521]
    %r2188 = sdiv i32 %r3599,2
    %r2191 = sdiv i32 %r3460,2
    %r2194 = add i32 %r3732,1
    br label %L518
L523:  ;
    %r2177 = srem i32 %r3460,2
    %r2178 = icmp ne i32 %r2177,0
    br i1 %r2178, label %L521, label %L522
L525:  ;
    br label %L530
L526:  ;
    %r3949 = phi i32 [%r3950,%L532]
    br label %L457
L530:  ;
    %r2214 = icmp sgt i32 %r3176,32767
    br i1 %r2214, label %L533, label %L534
L532:  ;
    %r3950 = phi i32 [%r3951,%L535]
    br label %L526
L533:  ;
    %r2217 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2218 = load i32, ptr %r2217
    %r2219 = sdiv i32 %r3176,%r2218
    %r2222 = add i32 %r2219,65536
    %r2228 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r2229 = load i32, ptr %r2228
    %r2230 = sub i32 %r2222,%r2229
    br label %L535
L534:  ;
    %r2233 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2234 = load i32, ptr %r2233
    %r2235 = sdiv i32 %r3176,%r2234
    br label %L535
L535:  ;
    %r3951 = phi i32 [%r2230,%L533],[%r2235,%L534]
    br label %L532
L537:  ;
    br label %L542
L538:  ;
    %r3953 = phi i32 [%r3954,%L544]
    %r3605 = phi i32 [%r3604,%L544]
    br label %L367
L542:  ;
    %r2255 = icmp sgt i32 %r3230,32767
    br i1 %r2255, label %L545, label %L546
L544:  ;
    %r3954 = phi i32 [%r3955,%L547]
    %r3604 = phi i32 [%r3603,%L547]
    br label %L538
L545:  ;
    %r2258 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2259 = load i32, ptr %r2258
    %r2260 = sdiv i32 %r3230,%r2259
    %r2263 = add i32 %r2260,65536
    %r2269 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r2270 = load i32, ptr %r2269
    %r2271 = sub i32 %r2263,%r2270
    br label %L547
L546:  ;
    %r2274 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2275 = load i32, ptr %r2274
    %r2276 = sdiv i32 %r3230,%r2275
    br label %L547
L547:  ;
    %r3955 = phi i32 [%r2271,%L545],[%r2276,%L546]
    %r3603 = phi i32 [%r2260,%L545],[%r3230,%L546]
    br label %L544
L548:  ;
    %r3734 = phi i32 [%r3704,%L366],[%r3733,%L733]
    %r3607 = phi i32 [%r3568,%L366],[%r3606,%L733]
    %r3462 = phi i32 [%r3432,%L366],[%r3461,%L733]
    %r3372 = phi i32 [0,%L366],[%r3051,%L733]
    %r2288 = icmp slt i32 %r3372,16
    br i1 %r2288, label %L549, label %L550
L549:  ;
    br label %L551
L550:  ;
    ret i32 0
L551:  ;
    %r3733 = phi i32 [%r3734,%L549],[%r3750,%L722]
    %r3606 = phi i32 [%r3607,%L549],[%r3644,%L722]
    %r3461 = phi i32 [%r3462,%L549],[1,%L722]
    %r3142 = phi i32 [2,%L549],[%r3083,%L722]
    %r3140 = phi i32 [%r3372,%L549],[%r4018,%L722]
    %r3138 = phi i32 [1,%L549],[%r3137,%L722]
    %r2297 = icmp sgt i32 %r3140,0
    br i1 %r2297, label %L552, label %L553
L552:  ;
    br label %L554
L553:  ;
    %r3044 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3372
    %r3045 = load i32, ptr %r3044
    %r3047 = icmp ne i32 %r3045,%r3138
    br i1 %r3047, label %L732, label %L733
L554:  ;
    %r3959 = phi i32 [0,%L552],[%r3958,%L558]
    %r3735 = phi i32 [0,%L552],[%r2328,%L558]
    %r3608 = phi i32 [%r3140,%L552],[%r2322,%L558]
    %r3463 = phi i32 [1,%L552],[%r2325,%L558]
    %r2304 = icmp slt i32 %r3735,16
    br i1 %r2304, label %L555, label %L556
L555:  ;
    %r2307 = srem i32 %r3608,2
    %r2308 = icmp ne i32 %r2307,0
    br i1 %r2308, label %L559, label %L558
L556:  ;
    %r2330 = icmp ne i32 %r3959,0
    br i1 %r2330, label %L560, label %L561
L557:  ;
    %r2316 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3735
    %r2317 = load i32, ptr %r2316
    %r2318 = mul i32 %r2317,1
    %r2319 = add i32 %r3959,%r2318
    br label %L558
L558:  ;
    %r3958 = phi i32 [%r3959,%L555],[%r3959,%L559],[%r2319,%L557]
    %r2322 = sdiv i32 %r3608,2
    %r2325 = sdiv i32 %r3463,2
    %r2328 = add i32 %r3735,1
    br label %L554
L559:  ;
    %r2311 = srem i32 %r3463,2
    %r2312 = icmp ne i32 %r2311,0
    br i1 %r2312, label %L557, label %L558
L560:  ;
    br label %L562
L561:  ;
    %r3737 = phi i32 [%r3735,%L556],[%r3736,%L564]
    %r3137 = phi i32 [%r3138,%L556],[%r3127,%L564]
    br label %L641
L562:  ;
    %r3736 = phi i32 [%r3735,%L560],[%r3745,%L631]
    %r3135 = phi i32 [%r3138,%L560],[%r3104,%L631]
    %r3131 = phi i32 [%r3142,%L560],[%r3986,%L631]
    %r3127 = phi i32 [0,%L560],[%r3126,%L631]
    %r2338 = icmp ne i32 %r3131,0
    br i1 %r2338, label %L563, label %L564
L563:  ;
    br label %L565
L564:  ;
    br label %L561
L565:  ;
    %r3963 = phi i32 [0,%L563],[%r3962,%L569]
    %r3738 = phi i32 [0,%L563],[%r2369,%L569]
    %r3611 = phi i32 [%r3131,%L563],[%r2363,%L569]
    %r3466 = phi i32 [1,%L563],[%r2366,%L569]
    %r2345 = icmp slt i32 %r3738,16
    br i1 %r2345, label %L566, label %L567
L566:  ;
    %r2348 = srem i32 %r3611,2
    %r2349 = icmp ne i32 %r2348,0
    br i1 %r2349, label %L570, label %L569
L567:  ;
    %r2371 = icmp ne i32 %r3963,0
    br i1 %r2371, label %L571, label %L572
L568:  ;
    %r2357 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3738
    %r2358 = load i32, ptr %r2357
    %r2359 = mul i32 %r2358,1
    %r2360 = add i32 %r3963,%r2359
    br label %L569
L569:  ;
    %r3962 = phi i32 [%r3963,%L566],[%r3963,%L570],[%r2360,%L568]
    %r2363 = sdiv i32 %r3611,2
    %r2366 = sdiv i32 %r3466,2
    %r2369 = add i32 %r3738,1
    br label %L565
L570:  ;
    %r2352 = srem i32 %r3466,2
    %r2353 = icmp ne i32 %r2352,0
    br i1 %r2353, label %L568, label %L569
L571:  ;
    br label %L573
L572:  ;
    %r3740 = phi i32 [%r3738,%L567],[%r3739,%L575]
    %r3126 = phi i32 [%r3127,%L567],[%r3122,%L575]
    br label %L601
L573:  ;
    %r3739 = phi i32 [%r3738,%L571],[%r3743,%L594]
    %r3122 = phi i32 [%r3127,%L571],[%r3968,%L594]
    %r3116 = phi i32 [%r3135,%L571],[%r3972,%L594]
    %r2379 = icmp ne i32 %r3116,0
    br i1 %r2379, label %L574, label %L575
L574:  ;
    br label %L576
L575:  ;
    br label %L572
L576:  ;
    %r3968 = phi i32 [0,%L574],[%r3967,%L581]
    %r3741 = phi i32 [0,%L574],[%r2422,%L581]
    %r3614 = phi i32 [%r3122,%L574],[%r2416,%L581]
    %r3469 = phi i32 [%r3116,%L574],[%r2419,%L581]
    %r2386 = icmp slt i32 %r3741,16
    br i1 %r2386, label %L577, label %L578
L577:  ;
    %r2389 = srem i32 %r3614,2
    %r2390 = icmp ne i32 %r2389,0
    br i1 %r2390, label %L579, label %L580
L578:  ;
    br label %L586
L579:  ;
    %r2393 = srem i32 %r3469,2
    %r2395 = icmp eq i32 %r2393,0
    br i1 %r2395, label %L582, label %L583
L580:  ;
    %r2405 = srem i32 %r3469,2
    %r2406 = icmp ne i32 %r2405,0
    br i1 %r2406, label %L584, label %L585
L581:  ;
    %r3967 = phi i32 [%r3966,%L583],[%r3969,%L585]
    %r2416 = sdiv i32 %r3614,2
    %r2419 = sdiv i32 %r3469,2
    %r2422 = add i32 %r3741,1
    br label %L576
L582:  ;
    %r2399 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3741
    %r2400 = load i32, ptr %r2399
    %r2401 = mul i32 %r2400,1
    %r2402 = add i32 %r3968,%r2401
    br label %L583
L583:  ;
    %r3966 = phi i32 [%r3968,%L579],[%r2402,%L582]
    br label %L581
L584:  ;
    %r2410 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3741
    %r2411 = load i32, ptr %r2410
    %r2412 = mul i32 %r2411,1
    %r2413 = add i32 %r3968,%r2412
    br label %L585
L585:  ;
    %r3969 = phi i32 [%r3968,%L580],[%r2413,%L584]
    br label %L581
L586:  ;
    %r3971 = phi i32 [0,%L578],[%r3970,%L590]
    %r3742 = phi i32 [0,%L578],[%r2454,%L590]
    %r3615 = phi i32 [%r3122,%L578],[%r2448,%L590]
    %r3470 = phi i32 [%r3116,%L578],[%r2451,%L590]
    %r2430 = icmp slt i32 %r3742,16
    br i1 %r2430, label %L587, label %L588
L587:  ;
    %r2433 = srem i32 %r3615,2
    %r2434 = icmp ne i32 %r2433,0
    br i1 %r2434, label %L591, label %L590
L588:  ;
    br label %L593
L589:  ;
    %r2442 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3742
    %r2443 = load i32, ptr %r2442
    %r2444 = mul i32 %r2443,1
    %r2445 = add i32 %r3971,%r2444
    br label %L590
L590:  ;
    %r3970 = phi i32 [%r3971,%L587],[%r3971,%L591],[%r2445,%L589]
    %r2448 = sdiv i32 %r3615,2
    %r2451 = sdiv i32 %r3470,2
    %r2454 = add i32 %r3742,1
    br label %L586
L591:  ;
    %r2437 = srem i32 %r3470,2
    %r2438 = icmp ne i32 %r2437,0
    br i1 %r2438, label %L589, label %L590
L593:  ;
    %r2464 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2465 = load i32, ptr %r2464
    %r2466 = mul i32 %r3971,%r2465
    br label %L595
L594:  ;
    %r3972 = phi i32 [%r3974,%L597]
    %r3743 = phi i32 [%r3744,%L597]
    br label %L573
L595:  ;
    %r3974 = phi i32 [0,%L593],[%r3973,%L599]
    %r3744 = phi i32 [0,%L593],[%r2494,%L599]
    %r3617 = phi i32 [%r2466,%L593],[%r2488,%L599]
    %r3472 = phi i32 [65535,%L593],[%r2491,%L599]
    %r2470 = icmp slt i32 %r3744,16
    br i1 %r2470, label %L596, label %L597
L596:  ;
    %r2473 = srem i32 %r3617,2
    %r2474 = icmp ne i32 %r2473,0
    br i1 %r2474, label %L600, label %L599
L597:  ;
    br label %L594
L598:  ;
    %r2482 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3744
    %r2483 = load i32, ptr %r2482
    %r2484 = mul i32 %r2483,1
    %r2485 = add i32 %r3974,%r2484
    br label %L599
L599:  ;
    %r3973 = phi i32 [%r3974,%L596],[%r3974,%L600],[%r2485,%L598]
    %r2488 = sdiv i32 %r3617,2
    %r2491 = sdiv i32 %r3472,2
    %r2494 = add i32 %r3744,1
    br label %L595
L600:  ;
    %r2477 = srem i32 %r3472,2
    %r2478 = icmp ne i32 %r2477,0
    br i1 %r2478, label %L598, label %L599
L601:  ;
    %r3745 = phi i32 [%r3740,%L572],[%r3748,%L622]
    %r3104 = phi i32 [%r3135,%L572],[%r3978,%L622]
    %r3099 = phi i32 [%r3135,%L572],[%r3982,%L622]
    %r2506 = icmp ne i32 %r3099,0
    br i1 %r2506, label %L602, label %L603
L602:  ;
    br label %L604
L603:  ;
    br label %L630
L604:  ;
    %r3978 = phi i32 [0,%L602],[%r3977,%L609]
    %r3746 = phi i32 [0,%L602],[%r2549,%L609]
    %r3619 = phi i32 [%r3104,%L602],[%r2543,%L609]
    %r3474 = phi i32 [%r3099,%L602],[%r2546,%L609]
    %r2513 = icmp slt i32 %r3746,16
    br i1 %r2513, label %L605, label %L606
L605:  ;
    %r2516 = srem i32 %r3619,2
    %r2517 = icmp ne i32 %r2516,0
    br i1 %r2517, label %L607, label %L608
L606:  ;
    br label %L614
L607:  ;
    %r2520 = srem i32 %r3474,2
    %r2522 = icmp eq i32 %r2520,0
    br i1 %r2522, label %L610, label %L611
L608:  ;
    %r2532 = srem i32 %r3474,2
    %r2533 = icmp ne i32 %r2532,0
    br i1 %r2533, label %L612, label %L613
L609:  ;
    %r3977 = phi i32 [%r3976,%L611],[%r3979,%L613]
    %r2543 = sdiv i32 %r3619,2
    %r2546 = sdiv i32 %r3474,2
    %r2549 = add i32 %r3746,1
    br label %L604
L610:  ;
    %r2526 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3746
    %r2527 = load i32, ptr %r2526
    %r2528 = mul i32 %r2527,1
    %r2529 = add i32 %r3978,%r2528
    br label %L611
L611:  ;
    %r3976 = phi i32 [%r3978,%L607],[%r2529,%L610]
    br label %L609
L612:  ;
    %r2537 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3746
    %r2538 = load i32, ptr %r2537
    %r2539 = mul i32 %r2538,1
    %r2540 = add i32 %r3978,%r2539
    br label %L613
L613:  ;
    %r3979 = phi i32 [%r3978,%L608],[%r2540,%L612]
    br label %L609
L614:  ;
    %r3981 = phi i32 [0,%L606],[%r3980,%L618]
    %r3747 = phi i32 [0,%L606],[%r2581,%L618]
    %r3620 = phi i32 [%r3104,%L606],[%r2575,%L618]
    %r3475 = phi i32 [%r3099,%L606],[%r2578,%L618]
    %r2557 = icmp slt i32 %r3747,16
    br i1 %r2557, label %L615, label %L616
L615:  ;
    %r2560 = srem i32 %r3620,2
    %r2561 = icmp ne i32 %r2560,0
    br i1 %r2561, label %L619, label %L618
L616:  ;
    br label %L621
L617:  ;
    %r2569 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3747
    %r2570 = load i32, ptr %r2569
    %r2571 = mul i32 %r2570,1
    %r2572 = add i32 %r3981,%r2571
    br label %L618
L618:  ;
    %r3980 = phi i32 [%r3981,%L615],[%r3981,%L619],[%r2572,%L617]
    %r2575 = sdiv i32 %r3620,2
    %r2578 = sdiv i32 %r3475,2
    %r2581 = add i32 %r3747,1
    br label %L614
L619:  ;
    %r2564 = srem i32 %r3475,2
    %r2565 = icmp ne i32 %r2564,0
    br i1 %r2565, label %L617, label %L618
L621:  ;
    %r2591 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2592 = load i32, ptr %r2591
    %r2593 = mul i32 %r3981,%r2592
    br label %L623
L622:  ;
    %r3982 = phi i32 [%r3984,%L625]
    %r3748 = phi i32 [%r3749,%L625]
    br label %L601
L623:  ;
    %r3984 = phi i32 [0,%L621],[%r3983,%L627]
    %r3749 = phi i32 [0,%L621],[%r2621,%L627]
    %r3622 = phi i32 [%r2593,%L621],[%r2615,%L627]
    %r3477 = phi i32 [65535,%L621],[%r2618,%L627]
    %r2597 = icmp slt i32 %r3749,16
    br i1 %r2597, label %L624, label %L625
L624:  ;
    %r2600 = srem i32 %r3622,2
    %r2601 = icmp ne i32 %r2600,0
    br i1 %r2601, label %L628, label %L627
L625:  ;
    br label %L622
L626:  ;
    %r2609 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3749
    %r2610 = load i32, ptr %r2609
    %r2611 = mul i32 %r2610,1
    %r2612 = add i32 %r3984,%r2611
    br label %L627
L627:  ;
    %r3983 = phi i32 [%r3984,%L624],[%r3984,%L628],[%r2612,%L626]
    %r2615 = sdiv i32 %r3622,2
    %r2618 = sdiv i32 %r3477,2
    %r2621 = add i32 %r3749,1
    br label %L623
L628:  ;
    %r2604 = srem i32 %r3477,2
    %r2605 = icmp ne i32 %r2604,0
    br i1 %r2605, label %L626, label %L627
L630:  ;
    br label %L635
L631:  ;
    %r3986 = phi i32 [%r3987,%L637]
    br label %L562
L635:  ;
    %r2641 = icmp sgt i32 %r3131,32767
    br i1 %r2641, label %L638, label %L639
L637:  ;
    %r3987 = phi i32 [%r3988,%L640]
    br label %L631
L638:  ;
    %r2644 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2645 = load i32, ptr %r2644
    %r2646 = sdiv i32 %r3131,%r2645
    %r2649 = add i32 %r2646,65536
    %r2655 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r2656 = load i32, ptr %r2655
    %r2657 = sub i32 %r2649,%r2656
    br label %L640
L639:  ;
    %r2660 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2661 = load i32, ptr %r2660
    %r2662 = sdiv i32 %r3131,%r2661
    br label %L640
L640:  ;
    %r3988 = phi i32 [%r2657,%L638],[%r2662,%L639]
    br label %L637
L641:  ;
    %r3750 = phi i32 [%r3737,%L561],[%r3758,%L710]
    %r3089 = phi i32 [%r3142,%L561],[%r3064,%L710]
    %r3086 = phi i32 [%r3142,%L561],[%r4014,%L710]
    %r3083 = phi i32 [0,%L561],[%r3082,%L710]
    %r2674 = icmp ne i32 %r3086,0
    br i1 %r2674, label %L642, label %L643
L642:  ;
    br label %L644
L643:  ;
    br label %L721
L644:  ;
    %r3991 = phi i32 [0,%L642],[%r3990,%L648]
    %r3751 = phi i32 [0,%L642],[%r2705,%L648]
    %r3627 = phi i32 [%r3086,%L642],[%r2699,%L648]
    %r3479 = phi i32 [1,%L642],[%r2702,%L648]
    %r2681 = icmp slt i32 %r3751,16
    br i1 %r2681, label %L645, label %L646
L645:  ;
    %r2684 = srem i32 %r3627,2
    %r2685 = icmp ne i32 %r2684,0
    br i1 %r2685, label %L649, label %L648
L646:  ;
    %r2707 = icmp ne i32 %r3991,0
    br i1 %r2707, label %L650, label %L651
L647:  ;
    %r2693 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3751
    %r2694 = load i32, ptr %r2693
    %r2695 = mul i32 %r2694,1
    %r2696 = add i32 %r3991,%r2695
    br label %L648
L648:  ;
    %r3990 = phi i32 [%r3991,%L645],[%r3991,%L649],[%r2696,%L647]
    %r2699 = sdiv i32 %r3627,2
    %r2702 = sdiv i32 %r3479,2
    %r2705 = add i32 %r3751,1
    br label %L644
L649:  ;
    %r2688 = srem i32 %r3479,2
    %r2689 = icmp ne i32 %r2688,0
    br i1 %r2689, label %L647, label %L648
L650:  ;
    br label %L652
L651:  ;
    %r3753 = phi i32 [%r3751,%L646],[%r3752,%L654]
    %r3082 = phi i32 [%r3083,%L646],[%r3079,%L654]
    br label %L680
L652:  ;
    %r3752 = phi i32 [%r3751,%L650],[%r3756,%L673]
    %r3079 = phi i32 [%r3083,%L650],[%r3996,%L673]
    %r3074 = phi i32 [%r3089,%L650],[%r4000,%L673]
    %r2715 = icmp ne i32 %r3074,0
    br i1 %r2715, label %L653, label %L654
L653:  ;
    br label %L655
L654:  ;
    br label %L651
L655:  ;
    %r3996 = phi i32 [0,%L653],[%r3995,%L660]
    %r3754 = phi i32 [0,%L653],[%r2758,%L660]
    %r3630 = phi i32 [%r3079,%L653],[%r2752,%L660]
    %r3482 = phi i32 [%r3074,%L653],[%r2755,%L660]
    %r2722 = icmp slt i32 %r3754,16
    br i1 %r2722, label %L656, label %L657
L656:  ;
    %r2725 = srem i32 %r3630,2
    %r2726 = icmp ne i32 %r2725,0
    br i1 %r2726, label %L658, label %L659
L657:  ;
    br label %L665
L658:  ;
    %r2729 = srem i32 %r3482,2
    %r2731 = icmp eq i32 %r2729,0
    br i1 %r2731, label %L661, label %L662
L659:  ;
    %r2741 = srem i32 %r3482,2
    %r2742 = icmp ne i32 %r2741,0
    br i1 %r2742, label %L663, label %L664
L660:  ;
    %r3995 = phi i32 [%r3994,%L662],[%r3997,%L664]
    %r2752 = sdiv i32 %r3630,2
    %r2755 = sdiv i32 %r3482,2
    %r2758 = add i32 %r3754,1
    br label %L655
L661:  ;
    %r2735 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3754
    %r2736 = load i32, ptr %r2735
    %r2737 = mul i32 %r2736,1
    %r2738 = add i32 %r3996,%r2737
    br label %L662
L662:  ;
    %r3994 = phi i32 [%r3996,%L658],[%r2738,%L661]
    br label %L660
L663:  ;
    %r2746 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3754
    %r2747 = load i32, ptr %r2746
    %r2748 = mul i32 %r2747,1
    %r2749 = add i32 %r3996,%r2748
    br label %L664
L664:  ;
    %r3997 = phi i32 [%r3996,%L659],[%r2749,%L663]
    br label %L660
L665:  ;
    %r3999 = phi i32 [0,%L657],[%r3998,%L669]
    %r3755 = phi i32 [0,%L657],[%r2790,%L669]
    %r3631 = phi i32 [%r3079,%L657],[%r2784,%L669]
    %r3483 = phi i32 [%r3074,%L657],[%r2787,%L669]
    %r2766 = icmp slt i32 %r3755,16
    br i1 %r2766, label %L666, label %L667
L666:  ;
    %r2769 = srem i32 %r3631,2
    %r2770 = icmp ne i32 %r2769,0
    br i1 %r2770, label %L670, label %L669
L667:  ;
    br label %L672
L668:  ;
    %r2778 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3755
    %r2779 = load i32, ptr %r2778
    %r2780 = mul i32 %r2779,1
    %r2781 = add i32 %r3999,%r2780
    br label %L669
L669:  ;
    %r3998 = phi i32 [%r3999,%L666],[%r3999,%L670],[%r2781,%L668]
    %r2784 = sdiv i32 %r3631,2
    %r2787 = sdiv i32 %r3483,2
    %r2790 = add i32 %r3755,1
    br label %L665
L670:  ;
    %r2773 = srem i32 %r3483,2
    %r2774 = icmp ne i32 %r2773,0
    br i1 %r2774, label %L668, label %L669
L672:  ;
    %r2800 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2801 = load i32, ptr %r2800
    %r2802 = mul i32 %r3999,%r2801
    br label %L674
L673:  ;
    %r4000 = phi i32 [%r4002,%L676]
    %r3756 = phi i32 [%r3757,%L676]
    br label %L652
L674:  ;
    %r4002 = phi i32 [0,%L672],[%r4001,%L678]
    %r3757 = phi i32 [0,%L672],[%r2830,%L678]
    %r3633 = phi i32 [%r2802,%L672],[%r2824,%L678]
    %r3485 = phi i32 [65535,%L672],[%r2827,%L678]
    %r2806 = icmp slt i32 %r3757,16
    br i1 %r2806, label %L675, label %L676
L675:  ;
    %r2809 = srem i32 %r3633,2
    %r2810 = icmp ne i32 %r2809,0
    br i1 %r2810, label %L679, label %L678
L676:  ;
    br label %L673
L677:  ;
    %r2818 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3757
    %r2819 = load i32, ptr %r2818
    %r2820 = mul i32 %r2819,1
    %r2821 = add i32 %r4002,%r2820
    br label %L678
L678:  ;
    %r4001 = phi i32 [%r4002,%L675],[%r4002,%L679],[%r2821,%L677]
    %r2824 = sdiv i32 %r3633,2
    %r2827 = sdiv i32 %r3485,2
    %r2830 = add i32 %r3757,1
    br label %L674
L679:  ;
    %r2813 = srem i32 %r3485,2
    %r2814 = icmp ne i32 %r2813,0
    br i1 %r2814, label %L677, label %L678
L680:  ;
    %r3758 = phi i32 [%r3753,%L651],[%r3761,%L701]
    %r3064 = phi i32 [%r3089,%L651],[%r4006,%L701]
    %r3060 = phi i32 [%r3089,%L651],[%r4010,%L701]
    %r2842 = icmp ne i32 %r3060,0
    br i1 %r2842, label %L681, label %L682
L681:  ;
    br label %L683
L682:  ;
    br label %L709
L683:  ;
    %r4006 = phi i32 [0,%L681],[%r4005,%L688]
    %r3759 = phi i32 [0,%L681],[%r2885,%L688]
    %r3635 = phi i32 [%r3064,%L681],[%r2879,%L688]
    %r3487 = phi i32 [%r3060,%L681],[%r2882,%L688]
    %r2849 = icmp slt i32 %r3759,16
    br i1 %r2849, label %L684, label %L685
L684:  ;
    %r2852 = srem i32 %r3635,2
    %r2853 = icmp ne i32 %r2852,0
    br i1 %r2853, label %L686, label %L687
L685:  ;
    br label %L693
L686:  ;
    %r2856 = srem i32 %r3487,2
    %r2858 = icmp eq i32 %r2856,0
    br i1 %r2858, label %L689, label %L690
L687:  ;
    %r2868 = srem i32 %r3487,2
    %r2869 = icmp ne i32 %r2868,0
    br i1 %r2869, label %L691, label %L692
L688:  ;
    %r4005 = phi i32 [%r4004,%L690],[%r4007,%L692]
    %r2879 = sdiv i32 %r3635,2
    %r2882 = sdiv i32 %r3487,2
    %r2885 = add i32 %r3759,1
    br label %L683
L689:  ;
    %r2862 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3759
    %r2863 = load i32, ptr %r2862
    %r2864 = mul i32 %r2863,1
    %r2865 = add i32 %r4006,%r2864
    br label %L690
L690:  ;
    %r4004 = phi i32 [%r4006,%L686],[%r2865,%L689]
    br label %L688
L691:  ;
    %r2873 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3759
    %r2874 = load i32, ptr %r2873
    %r2875 = mul i32 %r2874,1
    %r2876 = add i32 %r4006,%r2875
    br label %L692
L692:  ;
    %r4007 = phi i32 [%r4006,%L687],[%r2876,%L691]
    br label %L688
L693:  ;
    %r4009 = phi i32 [0,%L685],[%r4008,%L697]
    %r3760 = phi i32 [0,%L685],[%r2917,%L697]
    %r3636 = phi i32 [%r3064,%L685],[%r2911,%L697]
    %r3488 = phi i32 [%r3060,%L685],[%r2914,%L697]
    %r2893 = icmp slt i32 %r3760,16
    br i1 %r2893, label %L694, label %L695
L694:  ;
    %r2896 = srem i32 %r3636,2
    %r2897 = icmp ne i32 %r2896,0
    br i1 %r2897, label %L698, label %L697
L695:  ;
    br label %L700
L696:  ;
    %r2905 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3760
    %r2906 = load i32, ptr %r2905
    %r2907 = mul i32 %r2906,1
    %r2908 = add i32 %r4009,%r2907
    br label %L697
L697:  ;
    %r4008 = phi i32 [%r4009,%L694],[%r4009,%L698],[%r2908,%L696]
    %r2911 = sdiv i32 %r3636,2
    %r2914 = sdiv i32 %r3488,2
    %r2917 = add i32 %r3760,1
    br label %L693
L698:  ;
    %r2900 = srem i32 %r3488,2
    %r2901 = icmp ne i32 %r2900,0
    br i1 %r2901, label %L696, label %L697
L700:  ;
    %r2927 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2928 = load i32, ptr %r2927
    %r2929 = mul i32 %r4009,%r2928
    br label %L702
L701:  ;
    %r4010 = phi i32 [%r4012,%L704]
    %r3761 = phi i32 [%r3762,%L704]
    br label %L680
L702:  ;
    %r4012 = phi i32 [0,%L700],[%r4011,%L706]
    %r3762 = phi i32 [0,%L700],[%r2957,%L706]
    %r3638 = phi i32 [%r2929,%L700],[%r2951,%L706]
    %r3490 = phi i32 [65535,%L700],[%r2954,%L706]
    %r2933 = icmp slt i32 %r3762,16
    br i1 %r2933, label %L703, label %L704
L703:  ;
    %r2936 = srem i32 %r3638,2
    %r2937 = icmp ne i32 %r2936,0
    br i1 %r2937, label %L707, label %L706
L704:  ;
    br label %L701
L705:  ;
    %r2945 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 %r3762
    %r2946 = load i32, ptr %r2945
    %r2947 = mul i32 %r2946,1
    %r2948 = add i32 %r4012,%r2947
    br label %L706
L706:  ;
    %r4011 = phi i32 [%r4012,%L703],[%r4012,%L707],[%r2948,%L705]
    %r2951 = sdiv i32 %r3638,2
    %r2954 = sdiv i32 %r3490,2
    %r2957 = add i32 %r3762,1
    br label %L702
L707:  ;
    %r2940 = srem i32 %r3490,2
    %r2941 = icmp ne i32 %r2940,0
    br i1 %r2941, label %L705, label %L706
L709:  ;
    br label %L714
L710:  ;
    %r4014 = phi i32 [%r4015,%L716]
    br label %L641
L714:  ;
    %r2977 = icmp sgt i32 %r3086,32767
    br i1 %r2977, label %L717, label %L718
L716:  ;
    %r4015 = phi i32 [%r4016,%L719]
    br label %L710
L717:  ;
    %r2980 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2981 = load i32, ptr %r2980
    %r2982 = sdiv i32 %r3086,%r2981
    %r2985 = add i32 %r2982,65536
    %r2991 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r2992 = load i32, ptr %r2991
    %r2993 = sub i32 %r2985,%r2992
    br label %L719
L718:  ;
    %r2996 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r2997 = load i32, ptr %r2996
    %r2998 = sdiv i32 %r3086,%r2997
    br label %L719
L719:  ;
    %r4016 = phi i32 [%r2993,%L717],[%r2998,%L718]
    br label %L716
L721:  ;
    br label %L726
L722:  ;
    %r4018 = phi i32 [%r4019,%L728]
    %r3644 = phi i32 [%r3643,%L728]
    br label %L551
L726:  ;
    %r3018 = icmp sgt i32 %r3140,32767
    br i1 %r3018, label %L729, label %L730
L728:  ;
    %r4019 = phi i32 [%r4020,%L731]
    %r3643 = phi i32 [%r3642,%L731]
    br label %L722
L729:  ;
    %r3021 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r3022 = load i32, ptr %r3021
    %r3023 = sdiv i32 %r3140,%r3022
    %r3026 = add i32 %r3023,65536
    %r3032 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 15
    %r3033 = load i32, ptr %r3032
    %r3034 = sub i32 %r3026,%r3033
    br label %L731
L730:  ;
    %r3037 = getelementptr [16 x i32], ptr @SHIFT_TABLE, i32 0, i32 1
    %r3038 = load i32, ptr %r3037
    %r3039 = sdiv i32 %r3140,%r3038
    br label %L731
L731:  ;
    %r4020 = phi i32 [%r3034,%L729],[%r3039,%L730]
    %r3642 = phi i32 [%r3023,%L729],[%r3140,%L730]
    br label %L728
L732:  ;
    ret i32 1
L733:  ;
    %r3051 = add i32 %r3372,1
    br label %L548
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = call i32 @long_func()
    ret i32 %r0
}
