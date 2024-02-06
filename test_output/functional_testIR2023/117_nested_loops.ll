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
    %r16 = alloca i32
    %r14 = alloca i32
    %r12 = alloca i32
    %r10 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r9 = add i32 0,0
    store i32 %r9, ptr %r8
    %r11 = add i32 0,0
    store i32 %r11, ptr %r10
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r18 = add i32 0,0
    store i32 %r18, ptr %r4
    %r19 = load i32, ptr %r4
    %r20 = load i32, ptr %r2
    %r21 = icmp slt i32 %r19,%r20
    br i1 %r21, label %L6, label %L5
L3:
    %r32 = add i32 0,0
    store i32 %r32, ptr %r6
    %r33 = load i32, ptr %r6
    %r34 = add i32 0,2
    %r35 = icmp slt i32 %r33,%r34
    br i1 %r35, label %L9, label %L11
L4:
    %r144 = load i32, ptr %r4
    %r145 = load i32, ptr %r2
    %r146 = icmp slt i32 %r144,%r145
    br i1 %r146, label %L32, label %L5
L5:
    ret void
L6:
    %r24 = load i32, ptr %r4
    %r25 = load i32, ptr %r3
    %r26 = icmp slt i32 %r24,%r25
    br i1 %r26, label %L3, label %L5
L9:
    %r38 = add i32 0,0
    store i32 %r38, ptr %r8
    %r39 = load i32, ptr %r8
    %r40 = add i32 0,3
    %r41 = icmp slt i32 %r39,%r40
    br i1 %r41, label %L13, label %L15
L10:
    %r136 = load i32, ptr %r6
    %r137 = add i32 0,2
    %r138 = icmp slt i32 %r136,%r137
    br i1 %r138, label %L9, label %L11
L11:
    %r141 = load i32, ptr %r4
    %r142 = add i32 0,1
    %r143 = add i32 %r141,%r142
    store i32 %r143, ptr %r4
    br label %L4
L13:
    %r44 = add i32 0,0
    store i32 %r44, ptr %r10
    %r45 = load i32, ptr %r10
    %r46 = add i32 0,4
    %r47 = icmp slt i32 %r45,%r46
    br i1 %r47, label %L17, label %L19
L14:
    %r128 = load i32, ptr %r8
    %r129 = add i32 0,3
    %r130 = icmp slt i32 %r128,%r129
    br i1 %r130, label %L13, label %L15
L15:
    %r133 = load i32, ptr %r6
    %r134 = add i32 0,1
    %r135 = add i32 %r133,%r134
    store i32 %r135, ptr %r6
    br label %L10
L17:
    %r50 = add i32 0,0
    store i32 %r50, ptr %r12
    %r51 = load i32, ptr %r12
    %r52 = add i32 0,5
    %r53 = icmp slt i32 %r51,%r52
    br i1 %r53, label %L21, label %L23
L18:
    %r120 = load i32, ptr %r10
    %r121 = add i32 0,4
    %r122 = icmp slt i32 %r120,%r121
    br i1 %r122, label %L17, label %L19
L19:
    %r125 = load i32, ptr %r8
    %r126 = add i32 0,1
    %r127 = add i32 %r125,%r126
    store i32 %r127, ptr %r8
    br label %L14
L21:
    %r56 = add i32 0,0
    store i32 %r56, ptr %r14
    %r57 = load i32, ptr %r14
    %r58 = add i32 0,6
    %r59 = icmp slt i32 %r57,%r58
    br i1 %r59, label %L25, label %L27
L22:
    %r112 = load i32, ptr %r12
    %r113 = add i32 0,5
    %r114 = icmp slt i32 %r112,%r113
    br i1 %r114, label %L21, label %L23
L23:
    %r117 = load i32, ptr %r10
    %r118 = add i32 0,1
    %r119 = add i32 %r117,%r118
    store i32 %r119, ptr %r10
    br label %L18
L25:
    %r62 = add i32 0,0
    store i32 %r62, ptr %r16
    %r63 = load i32, ptr %r16
    %r64 = add i32 0,2
    %r65 = icmp slt i32 %r63,%r64
    br i1 %r65, label %L29, label %L31
L26:
    %r104 = load i32, ptr %r14
    %r105 = add i32 0,6
    %r106 = icmp slt i32 %r104,%r105
    br i1 %r106, label %L25, label %L27
L27:
    %r109 = load i32, ptr %r12
    %r110 = add i32 0,1
    %r111 = add i32 %r109,%r110
    store i32 %r111, ptr %r12
    br label %L22
L29:
    %r68 = load i32, ptr %r4
    %r69 = load i32, ptr %r6
    %r70 = add i32 %r68,%r69
    %r71 = load i32, ptr %r8
    %r72 = add i32 %r70,%r71
    %r73 = load i32, ptr %r10
    %r74 = add i32 %r72,%r73
    %r75 = load i32, ptr %r12
    %r76 = add i32 %r74,%r75
    %r77 = load i32, ptr %r14
    %r78 = add i32 %r76,%r77
    %r79 = load i32, ptr %r16
    %r80 = add i32 %r78,%r79
    %r81 = load i32, ptr %r2
    %r82 = add i32 %r80,%r81
    %r83 = load i32, ptr %r3
    %r84 = add i32 %r82,%r83
    %r85 = load i32, ptr %r4
    %r86 = load i32, ptr %r6
    %r87 = load i32, ptr %r8
    %r88 = load i32, ptr %r10
    %r89 = load i32, ptr %r12
    %r90 = load i32, ptr %r14
    %r91 = load i32, ptr %r16
    %r92 = getelementptr [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], ptr @arr1, i32 0, i32 %r85, i32 %r86, i32 %r87, i32 %r88, i32 %r89, i32 %r90, i32 %r91
    store i32 %r84, ptr %r92
    %r93 = load i32, ptr %r16
    %r94 = add i32 0,1
    %r95 = add i32 %r93,%r94
    store i32 %r95, ptr %r16
    br label %L30
L30:
    %r96 = load i32, ptr %r16
    %r97 = add i32 0,2
    %r98 = icmp slt i32 %r96,%r97
    br i1 %r98, label %L29, label %L31
L31:
    %r101 = load i32, ptr %r14
    %r102 = add i32 0,1
    %r103 = add i32 %r101,%r102
    store i32 %r103, ptr %r14
    br label %L26
L32:
    %r149 = load i32, ptr %r4
    %r150 = load i32, ptr %r3
    %r151 = icmp slt i32 %r149,%r150
    br i1 %r151, label %L3, label %L5
}
define i32 @main()
{
L0:
    %r16 = alloca i32
    %r14 = alloca i32
    %r12 = alloca i32
    %r10 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    %r3 = call i32 @getint()
    store i32 %r3, ptr %r2
    %r5 = call i32 @getint()
    store i32 %r5, ptr %r4
    %r7 = call i32 @getint()
    store i32 %r7, ptr %r6
    %r9 = call i32 @getint()
    store i32 %r9, ptr %r8
    %r11 = call i32 @getint()
    store i32 %r11, ptr %r10
    %r13 = call i32 @getint()
    store i32 %r13, ptr %r12
    %r15 = call i32 @getint()
    store i32 %r15, ptr %r14
    %r17 = call i32 @getint()
    store i32 %r17, ptr %r16
    %r18 = load i32, ptr %r0
    %r19 = load i32, ptr %r2
    call void @loop1(i32 %r18,i32 %r19)
    call void @loop2()
    %r20 = load i32, ptr %r4
    %r21 = load i32, ptr %r6
    %r22 = load i32, ptr %r8
    %r23 = load i32, ptr %r10
    %r24 = load i32, ptr %r12
    %r25 = load i32, ptr %r14
    %r26 = load i32, ptr %r16
    %r27 = call i32 @loop3(i32 %r20,i32 %r21,i32 %r22,i32 %r23,i32 %r24,i32 %r25,i32 %r26)
    ret i32 %r27
}
define i32 @loop3(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6)
{
L0:
    %r28 = alloca i32
    %r26 = alloca i32
    %r24 = alloca i32
    %r22 = alloca i32
    %r20 = alloca i32
    %r18 = alloca i32
    %r16 = alloca i32
    %r14 = alloca i32
    %r7 = alloca i32
    store i32 %r0, ptr %r7
    %r8 = alloca i32
    store i32 %r1, ptr %r8
    %r9 = alloca i32
    store i32 %r2, ptr %r9
    %r10 = alloca i32
    store i32 %r3, ptr %r10
    %r11 = alloca i32
    store i32 %r4, ptr %r11
    %r12 = alloca i32
    store i32 %r5, ptr %r12
    %r13 = alloca i32
    store i32 %r6, ptr %r13
    br label %L1
L1:
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r19 = add i32 0,0
    store i32 %r19, ptr %r18
    %r21 = add i32 0,0
    store i32 %r21, ptr %r20
    %r23 = add i32 0,0
    store i32 %r23, ptr %r22
    %r25 = add i32 0,0
    store i32 %r25, ptr %r24
    %r27 = add i32 0,0
    store i32 %r27, ptr %r26
    %r29 = add i32 0,0
    store i32 %r29, ptr %r28
    %r30 = add i32 0,0
    store i32 %r30, ptr %r14
    %r31 = load i32, ptr %r14
    %r32 = add i32 0,10
    %r33 = icmp slt i32 %r31,%r32
    br i1 %r33, label %L3, label %L5
L3:
    %r36 = add i32 0,0
    store i32 %r36, ptr %r16
    %r37 = load i32, ptr %r16
    %r38 = add i32 0,100
    %r39 = icmp slt i32 %r37,%r38
    br i1 %r39, label %L7, label %L9
L4:
    %r181 = load i32, ptr %r14
    %r182 = add i32 0,10
    %r183 = icmp slt i32 %r181,%r182
    br i1 %r183, label %L3, label %L5
L5:
    %r186 = load i32, ptr %r28
    ret i32 %r186
L7:
    %r42 = add i32 0,0
    store i32 %r42, ptr %r18
    %r43 = load i32, ptr %r18
    %r44 = add i32 0,1000
    %r45 = icmp slt i32 %r43,%r44
    br i1 %r45, label %L11, label %L13
L8:
    %r168 = load i32, ptr %r16
    %r169 = add i32 0,100
    %r170 = icmp slt i32 %r168,%r169
    br i1 %r170, label %L7, label %L9
L9:
    %r173 = load i32, ptr %r14
    %r174 = add i32 0,1
    %r175 = add i32 %r173,%r174
    store i32 %r175, ptr %r14
    %r176 = load i32, ptr %r14
    %r177 = load i32, ptr %r7
    %r178 = icmp sge i32 %r176,%r177
    br i1 %r178, label %L48, label %L49
L11:
    %r48 = add i32 0,0
    store i32 %r48, ptr %r20
    %r49 = load i32, ptr %r20
    %r50 = add i32 0,10000
    %r51 = icmp slt i32 %r49,%r50
    br i1 %r51, label %L15, label %L17
L12:
    %r155 = load i32, ptr %r18
    %r156 = add i32 0,1000
    %r157 = icmp slt i32 %r155,%r156
    br i1 %r157, label %L11, label %L13
L13:
    %r160 = load i32, ptr %r16
    %r161 = add i32 0,1
    %r162 = add i32 %r160,%r161
    store i32 %r162, ptr %r16
    %r163 = load i32, ptr %r16
    %r164 = load i32, ptr %r8
    %r165 = icmp sge i32 %r163,%r164
    br i1 %r165, label %L45, label %L46
L15:
    %r54 = add i32 0,0
    store i32 %r54, ptr %r22
    %r55 = load i32, ptr %r22
    %r56 = add i32 0,100000
    %r57 = icmp slt i32 %r55,%r56
    br i1 %r57, label %L19, label %L21
L16:
    %r142 = load i32, ptr %r20
    %r143 = add i32 0,10000
    %r144 = icmp slt i32 %r142,%r143
    br i1 %r144, label %L15, label %L17
L17:
    %r147 = load i32, ptr %r18
    %r148 = add i32 0,1
    %r149 = add i32 %r147,%r148
    store i32 %r149, ptr %r18
    %r150 = load i32, ptr %r18
    %r151 = load i32, ptr %r9
    %r152 = icmp sge i32 %r150,%r151
    br i1 %r152, label %L42, label %L43
L19:
    %r60 = add i32 0,0
    store i32 %r60, ptr %r24
    %r61 = load i32, ptr %r24
    %r62 = add i32 0,1000000
    %r63 = icmp slt i32 %r61,%r62
    br i1 %r63, label %L23, label %L25
L20:
    %r129 = load i32, ptr %r22
    %r130 = add i32 0,100000
    %r131 = icmp slt i32 %r129,%r130
    br i1 %r131, label %L19, label %L21
L21:
    %r134 = load i32, ptr %r20
    %r135 = add i32 0,1
    %r136 = add i32 %r134,%r135
    store i32 %r136, ptr %r20
    %r137 = load i32, ptr %r20
    %r138 = load i32, ptr %r10
    %r139 = icmp sge i32 %r137,%r138
    br i1 %r139, label %L39, label %L40
L23:
    %r66 = add i32 0,0
    store i32 %r66, ptr %r26
    %r67 = load i32, ptr %r26
    %r68 = add i32 0,10000000
    %r69 = icmp slt i32 %r67,%r68
    br i1 %r69, label %L27, label %L29
L24:
    %r116 = load i32, ptr %r24
    %r117 = add i32 0,1000000
    %r118 = icmp slt i32 %r116,%r117
    br i1 %r118, label %L23, label %L25
L25:
    %r121 = load i32, ptr %r22
    %r122 = add i32 0,1
    %r123 = add i32 %r121,%r122
    store i32 %r123, ptr %r22
    %r124 = load i32, ptr %r22
    %r125 = load i32, ptr %r11
    %r126 = icmp sge i32 %r124,%r125
    br i1 %r126, label %L36, label %L37
L27:
    %r72 = load i32, ptr %r28
    %r73 = add i32 0,817
    %r74 = srem i32 %r72,%r73
    %r75 = load i32, ptr %r14
    %r76 = load i32, ptr %r16
    %r77 = load i32, ptr %r18
    %r78 = load i32, ptr %r20
    %r79 = load i32, ptr %r22
    %r80 = load i32, ptr %r24
    %r81 = load i32, ptr %r26
    %r82 = getelementptr [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32]]]]]]], ptr @arr1, i32 0, i32 %r75, i32 %r76, i32 %r77, i32 %r78, i32 %r79, i32 %r80, i32 %r81
    %r83 = load i32, ptr %r82
    %r84 = add i32 %r74,%r83
    %r85 = load i32, ptr %r14
    %r86 = load i32, ptr %r16
    %r87 = load i32, ptr %r18
    %r88 = load i32, ptr %r20
    %r89 = load i32, ptr %r22
    %r90 = load i32, ptr %r24
    %r91 = load i32, ptr %r26
    %r92 = getelementptr [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], ptr @arr2, i32 0, i32 %r85, i32 %r86, i32 %r87, i32 %r88, i32 %r89, i32 %r90, i32 %r91
    %r93 = load i32, ptr %r92
    %r94 = add i32 %r84,%r93
    store i32 %r94, ptr %r28
    %r95 = load i32, ptr %r26
    %r96 = add i32 0,1
    %r97 = add i32 %r95,%r96
    store i32 %r97, ptr %r26
    %r98 = load i32, ptr %r26
    %r99 = load i32, ptr %r13
    %r100 = icmp sge i32 %r98,%r99
    br i1 %r100, label %L30, label %L31
L28:
    %r103 = load i32, ptr %r26
    %r104 = add i32 0,10000000
    %r105 = icmp slt i32 %r103,%r104
    br i1 %r105, label %L27, label %L29
L29:
    %r108 = load i32, ptr %r24
    %r109 = add i32 0,1
    %r110 = add i32 %r108,%r109
    store i32 %r110, ptr %r24
    %r111 = load i32, ptr %r24
    %r112 = load i32, ptr %r12
    %r113 = icmp sge i32 %r111,%r112
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
}
define void @loop2()
{
L0:
    %r12 = alloca i32
    %r10 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r4
    %r7 = add i32 0,0
    store i32 %r7, ptr %r6
    %r9 = add i32 0,0
    store i32 %r9, ptr %r8
    %r11 = add i32 0,0
    store i32 %r11, ptr %r10
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r14 = add i32 0,0
    store i32 %r14, ptr %r0
    %r15 = load i32, ptr %r0
    %r16 = add i32 0,10
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L3, label %L5
L3:
    %r20 = add i32 0,0
    store i32 %r20, ptr %r2
    %r21 = load i32, ptr %r2
    %r22 = add i32 0,2
    %r23 = icmp slt i32 %r21,%r22
    br i1 %r23, label %L7, label %L9
L4:
    %r122 = load i32, ptr %r0
    %r123 = add i32 0,10
    %r124 = icmp slt i32 %r122,%r123
    br i1 %r124, label %L3, label %L5
L5:
    ret void
L7:
    %r26 = add i32 0,0
    store i32 %r26, ptr %r4
    %r27 = load i32, ptr %r4
    %r28 = add i32 0,3
    %r29 = icmp slt i32 %r27,%r28
    br i1 %r29, label %L11, label %L13
L8:
    %r114 = load i32, ptr %r2
    %r115 = add i32 0,2
    %r116 = icmp slt i32 %r114,%r115
    br i1 %r116, label %L7, label %L9
L9:
    %r119 = load i32, ptr %r0
    %r120 = add i32 0,1
    %r121 = add i32 %r119,%r120
    store i32 %r121, ptr %r0
    br label %L4
L11:
    %r32 = add i32 0,0
    store i32 %r32, ptr %r6
    %r33 = load i32, ptr %r6
    %r34 = add i32 0,2
    %r35 = icmp slt i32 %r33,%r34
    br i1 %r35, label %L15, label %L17
L12:
    %r106 = load i32, ptr %r4
    %r107 = add i32 0,3
    %r108 = icmp slt i32 %r106,%r107
    br i1 %r108, label %L11, label %L13
L13:
    %r111 = load i32, ptr %r2
    %r112 = add i32 0,1
    %r113 = add i32 %r111,%r112
    store i32 %r113, ptr %r2
    br label %L8
L15:
    %r38 = add i32 0,0
    store i32 %r38, ptr %r8
    %r39 = load i32, ptr %r8
    %r40 = add i32 0,4
    %r41 = icmp slt i32 %r39,%r40
    br i1 %r41, label %L19, label %L21
L16:
    %r98 = load i32, ptr %r6
    %r99 = add i32 0,2
    %r100 = icmp slt i32 %r98,%r99
    br i1 %r100, label %L15, label %L17
L17:
    %r103 = load i32, ptr %r4
    %r104 = add i32 0,1
    %r105 = add i32 %r103,%r104
    store i32 %r105, ptr %r4
    br label %L12
L19:
    %r44 = add i32 0,0
    store i32 %r44, ptr %r10
    %r45 = load i32, ptr %r10
    %r46 = add i32 0,8
    %r47 = icmp slt i32 %r45,%r46
    br i1 %r47, label %L23, label %L25
L20:
    %r90 = load i32, ptr %r8
    %r91 = add i32 0,4
    %r92 = icmp slt i32 %r90,%r91
    br i1 %r92, label %L19, label %L21
L21:
    %r95 = load i32, ptr %r6
    %r96 = add i32 0,1
    %r97 = add i32 %r95,%r96
    store i32 %r97, ptr %r6
    br label %L16
L23:
    %r50 = add i32 0,0
    store i32 %r50, ptr %r12
    %r51 = load i32, ptr %r12
    %r52 = add i32 0,7
    %r53 = icmp slt i32 %r51,%r52
    br i1 %r53, label %L27, label %L29
L24:
    %r82 = load i32, ptr %r10
    %r83 = add i32 0,8
    %r84 = icmp slt i32 %r82,%r83
    br i1 %r84, label %L23, label %L25
L25:
    %r87 = load i32, ptr %r8
    %r88 = add i32 0,1
    %r89 = add i32 %r87,%r88
    store i32 %r89, ptr %r8
    br label %L20
L27:
    %r56 = load i32, ptr %r0
    %r57 = load i32, ptr %r2
    %r58 = add i32 %r56,%r57
    %r59 = load i32, ptr %r6
    %r60 = add i32 %r58,%r59
    %r61 = load i32, ptr %r12
    %r62 = add i32 %r60,%r61
    %r63 = load i32, ptr %r0
    %r64 = load i32, ptr %r2
    %r65 = load i32, ptr %r4
    %r66 = load i32, ptr %r6
    %r67 = load i32, ptr %r8
    %r68 = load i32, ptr %r10
    %r69 = load i32, ptr %r12
    %r70 = getelementptr [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32]]]]]]], ptr @arr2, i32 0, i32 %r63, i32 %r64, i32 %r65, i32 %r66, i32 %r67, i32 %r68, i32 %r69
    store i32 %r62, ptr %r70
    %r71 = load i32, ptr %r12
    %r72 = add i32 0,1
    %r73 = add i32 %r71,%r72
    store i32 %r73, ptr %r12
    br label %L28
L28:
    %r74 = load i32, ptr %r12
    %r75 = add i32 0,7
    %r76 = icmp slt i32 %r74,%r75
    br i1 %r76, label %L27, label %L29
L29:
    %r79 = load i32, ptr %r10
    %r80 = add i32 0,1
    %r81 = add i32 %r79,%r80
    store i32 %r81, ptr %r10
    br label %L24
}
