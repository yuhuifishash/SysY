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
@arr1 = global [10x [2x [3x [4x [5x [6x [2x i32]]]]]]] zeroinitializer
@arr2 = global [10x [2x [3x [2x [4x [8x [7x i32]]]]]]] zeroinitializer
define void @loop1(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r21 = icmp slt i32 0,%r0
    br i1 %r21, label %L6, label %L5
L3:
    %r211 = phi i32 [%r143,%L32],[0,%L40]
    br label %L34
L4:
    %r146 = icmp slt i32 %r143,%r0
    br i1 %r146, label %L32, label %L5
L5:
    ret void
L6:
    %r26 = icmp slt i32 0,%r1
    br i1 %r26, label %L40, label %L5
L9:
    %r209 = phi i32 [0,%L34],[%r135,%L10]
    br label %L35
L10:
    %r138 = icmp slt i32 %r135,2
    br i1 %r138, label %L9, label %L11
L11:
    %r143 = add i32 %r211,1
    br label %L4
L13:
    %r205 = phi i32 [%r127,%L14],[0,%L35]
    br label %L36
L14:
    %r130 = icmp slt i32 %r127,3
    br i1 %r130, label %L13, label %L15
L15:
    %r135 = add i32 %r209,1
    br label %L10
L17:
    %r199 = phi i32 [%r119,%L18],[0,%L36]
    br label %L37
L18:
    %r122 = icmp slt i32 %r119,4
    br i1 %r122, label %L17, label %L19
L19:
    %r127 = add i32 %r205,1
    br label %L14
L21:
    %r191 = phi i32 [%r111,%L22],[0,%L37]
    br label %L38
L22:
    %r114 = icmp slt i32 %r111,5
    br i1 %r114, label %L21, label %L23
L23:
    %r119 = add i32 %r199,1
    br label %L18
L25:
    %r181 = phi i32 [%r103,%L26],[0,%L38]
    br label %L39
L26:
    %r106 = icmp slt i32 %r103,6
    br i1 %r106, label %L25, label %L27
L27:
    %r111 = add i32 %r191,1
    br label %L22
L29:
    %r169 = phi i32 [%r95,%L30],[0,%L39]
    %r80 = add i32 %r78,%r169
    %r82 = add i32 %r80,%r0
    %r84 = add i32 %r82,%r1
    %r92 = getelementptr i32, ptr %r218, i32 %r169
    store i32 %r84, ptr %r92
    %r95 = add i32 %r169,1
    br label %L30
L30:
    %r98 = icmp slt i32 %r95,2
    br i1 %r98, label %L29, label %L31
L31:
    %r103 = add i32 %r181,1
    br label %L26
L32:
    %r151 = icmp slt i32 %r143,%r1
    br i1 %r151, label %L3, label %L5
L34:
    %r213 = getelementptr [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], ptr @arr1, i32 0, i32 %r211
    br label %L9
L35:
    %r70 = add i32 %r211,%r209
    %r214 = getelementptr [3 x [4 x [5 x [6 x [2 x i32]]]]], ptr %r213, i32 %r209
    br label %L13
L36:
    %r72 = add i32 %r70,%r205
    %r215 = getelementptr [4 x [5 x [6 x [2 x i32]]]], ptr %r214, i32 %r205
    br label %L17
L37:
    %r74 = add i32 %r72,%r199
    %r216 = getelementptr [5 x [6 x [2 x i32]]], ptr %r215, i32 %r199
    br label %L21
L38:
    %r76 = add i32 %r74,%r191
    %r217 = getelementptr [6 x [2 x i32]], ptr %r216, i32 %r191
    br label %L25
L39:
    %r78 = add i32 %r76,%r181
    %r218 = getelementptr [2 x i32], ptr %r217, i32 %r181
    br label %L29
L40:
    br label %L3
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @getint()
    %r3 = call i32 @getint()
    %r5 = call i32 @getint()
    %r7 = call i32 @getint()
    %r9 = call i32 @getint()
    %r11 = call i32 @getint()
    %r13 = call i32 @getint()
    %r15 = call i32 @getint()
    %r17 = call i32 @getint()
    call void @loop1(i32 %r1,i32 %r3)
    call void @loop2()
    %r27 = call i32 @loop3(i32 %r5,i32 %r7,i32 %r9,i32 %r11,i32 %r13,i32 %r15,i32 %r17)
    ret i32 %r27
}
define i32 @loop3(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6)
{
L0:
    br label %L1
L1:
    br label %L51
L3:
    %r255 = phi i32 [%r175,%L4],[0,%L51]
    %r199 = phi i32 [%r198,%L4],[0,%L51]
    br label %L52
L4:
    %r183 = icmp slt i32 %r175,10
    br i1 %r183, label %L3, label %L5
L5:
    %r200 = phi i32 [%r198,%L48],[%r198,%L4]
    ret i32 %r200
L7:
    %r253 = phi i32 [0,%L52],[%r162,%L8]
    %r197 = phi i32 [%r196,%L8],[%r199,%L52]
    br label %L53
L8:
    %r170 = icmp slt i32 %r162,100
    br i1 %r170, label %L7, label %L9
L9:
    %r198 = phi i32 [%r196,%L45],[%r196,%L8]
    %r175 = add i32 %r255,1
    %r178 = icmp sge i32 %r175,%r0
    br i1 %r178, label %L48, label %L49
L11:
    %r249 = phi i32 [%r149,%L12],[0,%L53]
    %r195 = phi i32 [%r197,%L53],[%r194,%L12]
    br label %L55
L12:
    %r157 = icmp slt i32 %r149,1000
    br i1 %r157, label %L11, label %L13
L13:
    %r196 = phi i32 [%r194,%L42],[%r194,%L12]
    %r162 = add i32 %r253,1
    %r165 = icmp sge i32 %r162,%r1
    br i1 %r165, label %L45, label %L46
L15:
    %r243 = phi i32 [%r136,%L16],[0,%L55]
    %r193 = phi i32 [%r192,%L16],[%r195,%L55]
    br label %L56
L16:
    %r144 = icmp slt i32 %r136,10000
    br i1 %r144, label %L15, label %L17
L17:
    %r194 = phi i32 [%r192,%L39],[%r192,%L16]
    %r149 = add i32 %r249,1
    %r152 = icmp sge i32 %r149,%r2
    br i1 %r152, label %L42, label %L43
L19:
    %r235 = phi i32 [%r123,%L20],[0,%L56]
    %r191 = phi i32 [%r193,%L56],[%r190,%L20]
    br label %L57
L20:
    %r131 = icmp slt i32 %r123,100000
    br i1 %r131, label %L19, label %L21
L21:
    %r192 = phi i32 [%r190,%L36],[%r190,%L20]
    %r136 = add i32 %r243,1
    %r139 = icmp sge i32 %r136,%r3
    br i1 %r139, label %L39, label %L40
L23:
    %r225 = phi i32 [%r110,%L24],[0,%L57]
    %r189 = phi i32 [%r188,%L24],[%r191,%L57]
    br label %L54
L24:
    %r118 = icmp slt i32 %r110,1000000
    br i1 %r118, label %L23, label %L25
L25:
    %r190 = phi i32 [%r188,%L33],[%r188,%L24]
    %r123 = add i32 %r235,1
    %r126 = icmp sge i32 %r123,%r4
    br i1 %r126, label %L36, label %L37
L27:
    %r213 = phi i32 [0,%L54],[%r97,%L28]
    %r187 = phi i32 [%r94,%L28],[%r189,%L54]
    %r74 = srem i32 %r187,817
    %r82 = getelementptr i32, ptr %r262, i32 %r213
    %r83 = load i32, ptr %r82
    %r84 = add i32 %r74,%r83
    %r92 = getelementptr i32, ptr %r268, i32 %r213
    %r93 = load i32, ptr %r92
    %r94 = add i32 %r84,%r93
    %r97 = add i32 %r213,1
    %r100 = icmp sge i32 %r97,%r6
    br i1 %r100, label %L30, label %L31
L28:
    %r105 = icmp slt i32 %r97,10000000
    br i1 %r105, label %L27, label %L29
L29:
    %r188 = phi i32 [%r94,%L30],[%r94,%L28]
    %r110 = add i32 %r225,1
    %r113 = icmp sge i32 %r110,%r5
    br i1 %r113, label %L33, label %L34
L30:
    br label %L29
L31:
    br label %L28
L33:
    br label %L25
L34:
    br label %L24
L36:
    br label %L21
L37:
    br label %L20
L39:
    br label %L17
L40:
    br label %L16
L42:
    br label %L13
L43:
    br label %L12
L45:
    br label %L9
L46:
    br label %L8
L48:
    br label %L5
L49:
    br label %L4
L51:
    br label %L3
L52:
    %r257 = getelementptr [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], ptr @arr1, i32 0, i32 %r255
    %r263 = getelementptr [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], ptr @arr2, i32 0, i32 %r255
    br label %L7
L53:
    %r258 = getelementptr [3 x [4 x [5 x [6 x [2 x i32]]]]], ptr %r257, i32 %r253
    %r264 = getelementptr [3 x [2 x [4 x [8 x [7 x i32]]]]], ptr %r263, i32 %r253
    br label %L11
L54:
    %r262 = getelementptr [2 x i32], ptr %r261, i32 %r225
    %r268 = getelementptr [7 x i32], ptr %r267, i32 %r225
    br label %L27
L55:
    %r259 = getelementptr [4 x [5 x [6 x [2 x i32]]]], ptr %r258, i32 %r249
    %r265 = getelementptr [2 x [4 x [8 x [7 x i32]]]], ptr %r264, i32 %r249
    br label %L15
L56:
    %r260 = getelementptr [5 x [6 x [2 x i32]]], ptr %r259, i32 %r243
    %r266 = getelementptr [4 x [8 x [7 x i32]]], ptr %r265, i32 %r243
    br label %L19
L57:
    %r261 = getelementptr [6 x [2 x i32]], ptr %r260, i32 %r235
    %r267 = getelementptr [8 x [7 x i32]], ptr %r266, i32 %r235
    br label %L23
}
define void @loop2()
{
L0:
    br label %L1
L1:
    br label %L30
L3:
    %r181 = phi i32 [%r121,%L4],[0,%L30]
    br label %L31
L4:
    %r124 = icmp slt i32 %r121,10
    br i1 %r124, label %L3, label %L5
L5:
    ret void
L7:
    %r179 = phi i32 [0,%L31],[%r113,%L8]
    br label %L32
L8:
    %r116 = icmp slt i32 %r113,2
    br i1 %r116, label %L7, label %L9
L9:
    %r121 = add i32 %r181,1
    br label %L4
L11:
    %r175 = phi i32 [%r105,%L12],[0,%L32]
    br label %L33
L12:
    %r108 = icmp slt i32 %r105,3
    br i1 %r108, label %L11, label %L13
L13:
    %r113 = add i32 %r179,1
    br label %L8
L15:
    %r169 = phi i32 [0,%L33],[%r97,%L16]
    br label %L35
L16:
    %r100 = icmp slt i32 %r97,2
    br i1 %r100, label %L15, label %L17
L17:
    %r105 = add i32 %r175,1
    br label %L12
L19:
    %r161 = phi i32 [%r89,%L20],[0,%L35]
    br label %L36
L20:
    %r92 = icmp slt i32 %r89,4
    br i1 %r92, label %L19, label %L21
L21:
    %r97 = add i32 %r169,1
    br label %L16
L23:
    %r151 = phi i32 [%r81,%L24],[0,%L36]
    br label %L34
L24:
    %r84 = icmp slt i32 %r81,8
    br i1 %r84, label %L23, label %L25
L25:
    %r89 = add i32 %r161,1
    br label %L20
L27:
    %r139 = phi i32 [%r73,%L28],[0,%L34]
    %r62 = add i32 %r60,%r139
    %r70 = getelementptr i32, ptr %r188, i32 %r139
    store i32 %r62, ptr %r70
    %r73 = add i32 %r139,1
    br label %L28
L28:
    %r76 = icmp slt i32 %r73,7
    br i1 %r76, label %L27, label %L29
L29:
    %r81 = add i32 %r151,1
    br label %L24
L30:
    br label %L3
L31:
    %r183 = getelementptr [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], ptr @arr2, i32 0, i32 %r181
    br label %L7
L32:
    %r58 = add i32 %r181,%r179
    %r184 = getelementptr [3 x [2 x [4 x [8 x [7 x i32]]]]], ptr %r183, i32 %r179
    br label %L11
L33:
    %r185 = getelementptr [2 x [4 x [8 x [7 x i32]]]], ptr %r184, i32 %r175
    br label %L15
L34:
    %r188 = getelementptr [7 x i32], ptr %r187, i32 %r151
    br label %L27
L35:
    %r60 = add i32 %r58,%r169
    %r186 = getelementptr [4 x [8 x [7 x i32]]], ptr %r185, i32 %r169
    br label %L19
L36:
    %r187 = getelementptr [8 x [7 x i32]], ptr %r186, i32 %r161
    br label %L23
}
