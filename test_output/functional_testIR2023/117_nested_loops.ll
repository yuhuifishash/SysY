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
    br label %L2
L2:
    %r122 = phi i32 [0,%L1],[%r94,%L8]
    %r120 = phi i32 [0,%L1],[%r121,%L8]
    %r118 = phi i32 [0,%L1],[%r117,%L8]
    %r115 = phi i32 [0,%L1],[%r114,%L8]
    %r111 = phi i32 [0,%L1],[%r110,%L8]
    %r106 = phi i32 [0,%L1],[%r105,%L8]
    %r100 = phi i32 [0,%L1],[%r99,%L8]
    %r21 = icmp slt i32 %r122,%r0
    br i1 %r21, label %L5, label %L4
L3:
    br label %L6
L4:
    ret void
L5:
    %r24 = icmp slt i32 %r122,%r1
    br i1 %r24, label %L3, label %L4
L6:
    %r121 = phi i32 [0,%L3],[%r91,%L11]
    %r117 = phi i32 [%r118,%L3],[%r119,%L11]
    %r114 = phi i32 [%r115,%L3],[%r113,%L11]
    %r110 = phi i32 [%r111,%L3],[%r109,%L11]
    %r105 = phi i32 [%r106,%L3],[%r104,%L11]
    %r99 = phi i32 [%r100,%L3],[%r98,%L11]
    %r28 = icmp slt i32 %r121,2
    br i1 %r28, label %L7, label %L8
L7:
    br label %L9
L8:
    %r94 = add i32 %r122,1
    br label %L2
L9:
    %r119 = phi i32 [0,%L7],[%r88,%L14]
    %r113 = phi i32 [%r114,%L7],[%r116,%L14]
    %r109 = phi i32 [%r110,%L7],[%r108,%L14]
    %r104 = phi i32 [%r105,%L7],[%r103,%L14]
    %r98 = phi i32 [%r99,%L7],[%r97,%L14]
    %r32 = icmp slt i32 %r119,3
    br i1 %r32, label %L10, label %L11
L10:
    br label %L12
L11:
    %r91 = add i32 %r121,1
    br label %L6
L12:
    %r116 = phi i32 [0,%L10],[%r85,%L17]
    %r108 = phi i32 [%r109,%L10],[%r112,%L17]
    %r103 = phi i32 [%r104,%L10],[%r102,%L17]
    %r97 = phi i32 [%r98,%L10],[%r96,%L17]
    %r36 = icmp slt i32 %r116,4
    br i1 %r36, label %L13, label %L14
L13:
    br label %L15
L14:
    %r88 = add i32 %r119,1
    br label %L9
L15:
    %r112 = phi i32 [0,%L13],[%r82,%L20]
    %r102 = phi i32 [%r103,%L13],[%r107,%L20]
    %r96 = phi i32 [%r97,%L13],[%r95,%L20]
    %r40 = icmp slt i32 %r112,5
    br i1 %r40, label %L16, label %L17
L16:
    br label %L18
L17:
    %r85 = add i32 %r116,1
    br label %L12
L18:
    %r107 = phi i32 [0,%L16],[%r79,%L23]
    %r95 = phi i32 [%r96,%L16],[%r101,%L23]
    %r44 = icmp slt i32 %r107,6
    br i1 %r44, label %L19, label %L20
L19:
    br label %L21
L20:
    %r82 = add i32 %r112,1
    br label %L15
L21:
    %r101 = phi i32 [0,%L19],[%r76,%L22]
    %r48 = icmp slt i32 %r101,2
    br i1 %r48, label %L22, label %L23
L22:
    %r56 = getelementptr [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], ptr @arr1, i32 0, i32 %r122, i32 %r121, i32 %r119, i32 %r116, i32 %r112, i32 %r107, i32 %r101
    %r59 = add i32 %r122,%r121
    %r61 = add i32 %r59,%r119
    %r63 = add i32 %r61,%r116
    %r65 = add i32 %r63,%r112
    %r67 = add i32 %r65,%r107
    %r69 = add i32 %r67,%r101
    %r71 = add i32 %r69,%r0
    %r73 = add i32 %r71,%r1
    store i32 %r73, ptr %r56
    %r76 = add i32 %r101,1
    br label %L21
L23:
    %r79 = add i32 %r107,1
    br label %L18
}
define void @loop2()
{
L0:
    br label %L1
L1:
    br label %L2
L2:
    %r105 = phi i32 [0,%L1],[%r77,%L7]
    %r103 = phi i32 [0,%L1],[%r104,%L7]
    %r101 = phi i32 [0,%L1],[%r100,%L7]
    %r98 = phi i32 [0,%L1],[%r97,%L7]
    %r94 = phi i32 [0,%L1],[%r93,%L7]
    %r89 = phi i32 [0,%L1],[%r88,%L7]
    %r83 = phi i32 [0,%L1],[%r82,%L7]
    %r17 = icmp slt i32 %r105,10
    br i1 %r17, label %L3, label %L4
L3:
    br label %L5
L4:
    ret void
L5:
    %r104 = phi i32 [0,%L3],[%r74,%L10]
    %r100 = phi i32 [%r101,%L3],[%r102,%L10]
    %r97 = phi i32 [%r98,%L3],[%r96,%L10]
    %r93 = phi i32 [%r94,%L3],[%r92,%L10]
    %r88 = phi i32 [%r89,%L3],[%r87,%L10]
    %r82 = phi i32 [%r83,%L3],[%r81,%L10]
    %r21 = icmp slt i32 %r104,2
    br i1 %r21, label %L6, label %L7
L6:
    br label %L8
L7:
    %r77 = add i32 %r105,1
    br label %L2
L8:
    %r102 = phi i32 [0,%L6],[%r71,%L13]
    %r96 = phi i32 [%r97,%L6],[%r99,%L13]
    %r92 = phi i32 [%r93,%L6],[%r91,%L13]
    %r87 = phi i32 [%r88,%L6],[%r86,%L13]
    %r81 = phi i32 [%r82,%L6],[%r80,%L13]
    %r25 = icmp slt i32 %r102,3
    br i1 %r25, label %L9, label %L10
L9:
    br label %L11
L10:
    %r74 = add i32 %r104,1
    br label %L5
L11:
    %r99 = phi i32 [0,%L9],[%r68,%L16]
    %r91 = phi i32 [%r92,%L9],[%r95,%L16]
    %r86 = phi i32 [%r87,%L9],[%r85,%L16]
    %r80 = phi i32 [%r81,%L9],[%r79,%L16]
    %r29 = icmp slt i32 %r99,2
    br i1 %r29, label %L12, label %L13
L12:
    br label %L14
L13:
    %r71 = add i32 %r102,1
    br label %L8
L14:
    %r95 = phi i32 [0,%L12],[%r65,%L19]
    %r85 = phi i32 [%r86,%L12],[%r90,%L19]
    %r79 = phi i32 [%r80,%L12],[%r78,%L19]
    %r33 = icmp slt i32 %r95,4
    br i1 %r33, label %L15, label %L16
L15:
    br label %L17
L16:
    %r68 = add i32 %r99,1
    br label %L11
L17:
    %r90 = phi i32 [0,%L15],[%r62,%L22]
    %r78 = phi i32 [%r79,%L15],[%r84,%L22]
    %r37 = icmp slt i32 %r90,8
    br i1 %r37, label %L18, label %L19
L18:
    br label %L20
L19:
    %r65 = add i32 %r95,1
    br label %L14
L20:
    %r84 = phi i32 [0,%L18],[%r59,%L21]
    %r41 = icmp slt i32 %r84,7
    br i1 %r41, label %L21, label %L22
L21:
    %r49 = getelementptr [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], ptr @arr2, i32 0, i32 %r105, i32 %r104, i32 %r102, i32 %r99, i32 %r95, i32 %r90, i32 %r84
    %r52 = add i32 %r105,%r104
    %r54 = add i32 %r52,%r99
    %r56 = add i32 %r54,%r84
    store i32 %r56, ptr %r49
    %r59 = add i32 %r84,1
    br label %L20
L22:
    %r62 = add i32 %r90,1
    br label %L17
}
define i32 @loop3(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6)
{
L0:
    br label %L1
L1:
    br label %L2
L2:
    %r192 = phi i32 [0,%L1],[%r119,%L42]
    %r188 = phi i32 [0,%L1],[%r191,%L42]
    %r184 = phi i32 [0,%L1],[%r183,%L42]
    %r178 = phi i32 [0,%L1],[%r177,%L42]
    %r170 = phi i32 [0,%L1],[%r169,%L42]
    %r160 = phi i32 [0,%L1],[%r159,%L42]
    %r148 = phi i32 [0,%L1],[%r147,%L42]
    %r136 = phi i32 [0,%L1],[%r135,%L42]
    %r33 = icmp slt i32 %r192,10
    br i1 %r33, label %L3, label %L4
L3:
    br label %L5
L4:
    %r193 = phi i32 [%r192,%L2],[%r119,%L41]
    %r189 = phi i32 [%r188,%L2],[%r191,%L41]
    %r185 = phi i32 [%r184,%L2],[%r183,%L41]
    %r179 = phi i32 [%r178,%L2],[%r177,%L41]
    %r171 = phi i32 [%r170,%L2],[%r169,%L41]
    %r161 = phi i32 [%r160,%L2],[%r159,%L41]
    %r149 = phi i32 [%r148,%L2],[%r147,%L41]
    %r137 = phi i32 [%r136,%L2],[%r135,%L41]
    ret i32 %r137
L5:
    %r190 = phi i32 [0,%L3],[%r113,%L39]
    %r182 = phi i32 [%r184,%L3],[%r187,%L39]
    %r176 = phi i32 [%r178,%L3],[%r175,%L39]
    %r168 = phi i32 [%r170,%L3],[%r167,%L39]
    %r158 = phi i32 [%r160,%L3],[%r157,%L39]
    %r146 = phi i32 [%r148,%L3],[%r145,%L39]
    %r134 = phi i32 [%r136,%L3],[%r133,%L39]
    %r37 = icmp slt i32 %r190,100
    br i1 %r37, label %L6, label %L7
L6:
    br label %L8
L7:
    %r191 = phi i32 [%r190,%L5],[%r113,%L38]
    %r183 = phi i32 [%r182,%L5],[%r187,%L38]
    %r177 = phi i32 [%r176,%L5],[%r175,%L38]
    %r169 = phi i32 [%r168,%L5],[%r167,%L38]
    %r159 = phi i32 [%r158,%L5],[%r157,%L38]
    %r147 = phi i32 [%r146,%L5],[%r145,%L38]
    %r135 = phi i32 [%r134,%L5],[%r133,%L38]
    %r119 = add i32 %r192,1
    %r122 = icmp sge i32 %r119,%r0
    br i1 %r122, label %L41, label %L42
L8:
    %r186 = phi i32 [0,%L6],[%r107,%L36]
    %r174 = phi i32 [%r176,%L6],[%r181,%L36]
    %r166 = phi i32 [%r168,%L6],[%r165,%L36]
    %r156 = phi i32 [%r158,%L6],[%r155,%L36]
    %r144 = phi i32 [%r146,%L6],[%r143,%L36]
    %r132 = phi i32 [%r134,%L6],[%r131,%L36]
    %r41 = icmp slt i32 %r186,1000
    br i1 %r41, label %L9, label %L10
L9:
    br label %L11
L10:
    %r187 = phi i32 [%r186,%L8],[%r107,%L35]
    %r175 = phi i32 [%r174,%L8],[%r181,%L35]
    %r167 = phi i32 [%r166,%L8],[%r165,%L35]
    %r157 = phi i32 [%r156,%L8],[%r155,%L35]
    %r145 = phi i32 [%r144,%L8],[%r143,%L35]
    %r133 = phi i32 [%r132,%L8],[%r131,%L35]
    %r113 = add i32 %r190,1
    %r116 = icmp sge i32 %r113,%r1
    br i1 %r116, label %L38, label %L39
L11:
    %r180 = phi i32 [0,%L9],[%r101,%L33]
    %r164 = phi i32 [%r166,%L9],[%r173,%L33]
    %r154 = phi i32 [%r156,%L9],[%r153,%L33]
    %r142 = phi i32 [%r144,%L9],[%r141,%L33]
    %r130 = phi i32 [%r132,%L9],[%r129,%L33]
    %r45 = icmp slt i32 %r180,10000
    br i1 %r45, label %L12, label %L13
L12:
    br label %L14
L13:
    %r181 = phi i32 [%r180,%L11],[%r101,%L32]
    %r165 = phi i32 [%r164,%L11],[%r173,%L32]
    %r155 = phi i32 [%r154,%L11],[%r153,%L32]
    %r143 = phi i32 [%r142,%L11],[%r141,%L32]
    %r131 = phi i32 [%r130,%L11],[%r129,%L32]
    %r107 = add i32 %r186,1
    %r110 = icmp sge i32 %r107,%r2
    br i1 %r110, label %L35, label %L36
L14:
    %r172 = phi i32 [0,%L12],[%r95,%L30]
    %r152 = phi i32 [%r154,%L12],[%r163,%L30]
    %r140 = phi i32 [%r142,%L12],[%r139,%L30]
    %r128 = phi i32 [%r130,%L12],[%r127,%L30]
    %r49 = icmp slt i32 %r172,100000
    br i1 %r49, label %L15, label %L16
L15:
    br label %L17
L16:
    %r173 = phi i32 [%r172,%L14],[%r95,%L29]
    %r153 = phi i32 [%r152,%L14],[%r163,%L29]
    %r141 = phi i32 [%r140,%L14],[%r139,%L29]
    %r129 = phi i32 [%r128,%L14],[%r127,%L29]
    %r101 = add i32 %r180,1
    %r104 = icmp sge i32 %r101,%r3
    br i1 %r104, label %L32, label %L33
L17:
    %r162 = phi i32 [0,%L15],[%r89,%L27]
    %r138 = phi i32 [%r140,%L15],[%r151,%L27]
    %r126 = phi i32 [%r128,%L15],[%r125,%L27]
    %r53 = icmp slt i32 %r162,1000000
    br i1 %r53, label %L18, label %L19
L18:
    br label %L20
L19:
    %r163 = phi i32 [%r162,%L17],[%r89,%L26]
    %r139 = phi i32 [%r138,%L17],[%r151,%L26]
    %r127 = phi i32 [%r126,%L17],[%r125,%L26]
    %r95 = add i32 %r172,1
    %r98 = icmp sge i32 %r95,%r4
    br i1 %r98, label %L29, label %L30
L20:
    %r150 = phi i32 [0,%L18],[%r83,%L24]
    %r124 = phi i32 [%r126,%L18],[%r80,%L24]
    %r57 = icmp slt i32 %r150,10000000
    br i1 %r57, label %L21, label %L22
L21:
    %r60 = srem i32 %r124,817
    %r68 = getelementptr [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], ptr @arr1, i32 0, i32 %r192, i32 %r190, i32 %r186, i32 %r180, i32 %r172, i32 %r162, i32 %r150
    %r69 = load i32, ptr %r68
    %r70 = add i32 %r60,%r69
    %r78 = getelementptr [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], ptr @arr2, i32 0, i32 %r192, i32 %r190, i32 %r186, i32 %r180, i32 %r172, i32 %r162, i32 %r150
    %r79 = load i32, ptr %r78
    %r80 = add i32 %r70,%r79
    %r83 = add i32 %r150,1
    %r86 = icmp sge i32 %r83,%r6
    br i1 %r86, label %L23, label %L24
L22:
    %r151 = phi i32 [%r150,%L20],[%r83,%L23]
    %r125 = phi i32 [%r124,%L20],[%r80,%L23]
    %r89 = add i32 %r162,1
    %r92 = icmp sge i32 %r89,%r5
    br i1 %r92, label %L26, label %L27
L23:
    br label %L22
L24:
    br label %L20
L26:
    br label %L19
L27:
    br label %L17
L29:
    br label %L16
L30:
    br label %L14
L32:
    br label %L13
L33:
    br label %L11
L35:
    br label %L10
L36:
    br label %L8
L38:
    br label %L7
L39:
    br label %L5
L41:
    br label %L4
L42:
    br label %L2
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
