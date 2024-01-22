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
declare void @starttime()
declare void @stoptime()
declare void @llvm.memset.p0.i32(ptr,i8,i32,i1)
@t = global [1005x [2x i32]] zeroinitializer
@dp = global [1005x [35x i32]] zeroinitializer
define i32 @main()
{
L0:
    %r133 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
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
    %r10 = call i32 @getint()
    store i32 %r10, ptr %r0
    %r11 = call i32 @getint()
    store i32 %r11, ptr %r2
    %r12 = add i32 0,1
    store i32 %r12, ptr %r6
    br label %L1
L1:
    %r13 = load i32, ptr %r6
    %r14 = load i32, ptr %r0
    %r15 = icmp sle i32 %r13,%r14
    br i1 %r15, label %L2, label %L3
L2:
    %r18 = call i32 @getint()
    store i32 %r18, ptr %r4
    %r19 = add i32 0,1
    %r20 = load i32, ptr %r6
    %r21 = load i32, ptr %r4
    %r22 = add i32 0,2
    %r23 = srem i32 %r21,%r22
    %r24 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r20, i32 %r23
    store i32 %r19, ptr %r24
    %r25 = load i32, ptr %r6
    %r26 = add i32 0,1
    %r27 = sub i32 %r25,%r26
    %r28 = add i32 0,0
    %r29 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r27, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = load i32, ptr %r6
    %r32 = add i32 0,1
    %r33 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r31, i32 %r32
    %r34 = load i32, ptr %r33
    %r35 = add i32 %r30,%r34
    %r36 = load i32, ptr %r6
    %r37 = add i32 0,0
    %r38 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r36, i32 %r37
    store i32 %r35, ptr %r38
    %r39 = load i32, ptr %r6
    %r40 = add i32 0,1
    %r41 = add i32 %r39,%r40
    store i32 %r41, ptr %r6
    br label %L1
L3:
    %r42 = add i32 0,1
    store i32 %r42, ptr %r6
    br label %L4
L4:
    %r43 = load i32, ptr %r6
    %r44 = load i32, ptr %r0
    %r45 = icmp sle i32 %r43,%r44
    br i1 %r45, label %L5, label %L6
L5:
    %r48 = add i32 0,1
    store i32 %r48, ptr %r8
    br label %L7
L6:
    %r134 = add i32 0,0
    store i32 %r134, ptr %r133
    %r135 = add i32 0,0
    store i32 %r135, ptr %r8
    br label %L13
L7:
    %r49 = load i32, ptr %r8
    %r50 = load i32, ptr %r2
    %r51 = icmp sle i32 %r49,%r50
    br i1 %r51, label %L8, label %L9
L8:
    %r54 = load i32, ptr %r6
    %r55 = add i32 0,1
    %r56 = sub i32 %r54,%r55
    %r57 = load i32, ptr %r8
    %r58 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r56, i32 %r57
    %r59 = load i32, ptr %r58
    %r60 = load i32, ptr %r6
    %r61 = load i32, ptr %r8
    %r62 = add i32 0,1
    %r63 = add i32 %r61,%r62
    %r64 = add i32 0,2
    %r65 = srem i32 %r63,%r64
    %r66 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r60, i32 %r65
    %r67 = load i32, ptr %r66
    %r68 = add i32 %r59,%r67
    %r69 = load i32, ptr %r6
    %r70 = add i32 0,1
    %r71 = sub i32 %r69,%r70
    %r72 = load i32, ptr %r8
    %r73 = add i32 0,1
    %r74 = sub i32 %r72,%r73
    %r75 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r71, i32 %r74
    %r76 = load i32, ptr %r75
    %r77 = load i32, ptr %r6
    %r78 = load i32, ptr %r8
    %r79 = add i32 0,1
    %r80 = add i32 %r78,%r79
    %r81 = add i32 0,2
    %r82 = srem i32 %r80,%r81
    %r83 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r77, i32 %r82
    %r84 = load i32, ptr %r83
    %r85 = add i32 %r76,%r84
    %r86 = icmp sgt i32 %r68,%r85
    br i1 %r86, label %L10, label %L11
L9:
    %r130 = load i32, ptr %r6
    %r131 = add i32 0,1
    %r132 = add i32 %r130,%r131
    store i32 %r132, ptr %r6
    br label %L4
L10:
    %r89 = load i32, ptr %r6
    %r90 = add i32 0,1
    %r91 = sub i32 %r89,%r90
    %r92 = load i32, ptr %r8
    %r93 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r91, i32 %r92
    %r94 = load i32, ptr %r93
    %r95 = load i32, ptr %r6
    %r96 = load i32, ptr %r8
    %r97 = add i32 0,1
    %r98 = add i32 %r96,%r97
    %r99 = add i32 0,2
    %r100 = srem i32 %r98,%r99
    %r101 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r95, i32 %r100
    %r102 = load i32, ptr %r101
    %r103 = add i32 %r94,%r102
    %r104 = load i32, ptr %r6
    %r105 = load i32, ptr %r8
    %r106 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r104, i32 %r105
    store i32 %r103, ptr %r106
    br label %L12
L11:
    %r107 = load i32, ptr %r6
    %r108 = add i32 0,1
    %r109 = sub i32 %r107,%r108
    %r110 = load i32, ptr %r8
    %r111 = add i32 0,1
    %r112 = sub i32 %r110,%r111
    %r113 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r109, i32 %r112
    %r114 = load i32, ptr %r113
    %r115 = load i32, ptr %r6
    %r116 = load i32, ptr %r8
    %r117 = add i32 0,1
    %r118 = add i32 %r116,%r117
    %r119 = add i32 0,2
    %r120 = srem i32 %r118,%r119
    %r121 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r115, i32 %r120
    %r122 = load i32, ptr %r121
    %r123 = add i32 %r114,%r122
    %r124 = load i32, ptr %r6
    %r125 = load i32, ptr %r8
    %r126 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r124, i32 %r125
    store i32 %r123, ptr %r126
    br label %L12
L12:
    %r127 = load i32, ptr %r8
    %r128 = add i32 0,1
    %r129 = add i32 %r127,%r128
    store i32 %r129, ptr %r8
    br label %L7
L13:
    %r136 = load i32, ptr %r8
    %r137 = load i32, ptr %r2
    %r138 = icmp sle i32 %r136,%r137
    br i1 %r138, label %L14, label %L15
L14:
    %r141 = load i32, ptr %r133
    %r142 = load i32, ptr %r0
    %r143 = load i32, ptr %r8
    %r144 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r142, i32 %r143
    %r145 = load i32, ptr %r144
    %r146 = icmp slt i32 %r141,%r145
    br i1 %r146, label %L16, label %L17
L15:
    %r156 = load i32, ptr %r133
    ret i32 %r156
L16:
    %r149 = load i32, ptr %r0
    %r150 = load i32, ptr %r8
    %r151 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r149, i32 %r150
    %r152 = load i32, ptr %r151
    store i32 %r152, ptr %r133
    br label %L17
L17:
    %r153 = load i32, ptr %r8
    %r154 = add i32 0,1
    %r155 = add i32 %r153,%r154
    store i32 %r155, ptr %r8
    br label %L13
}
