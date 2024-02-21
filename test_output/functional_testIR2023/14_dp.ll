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
@t = global [1005x [2x i32]] zeroinitializer
@dp = global [1005x [35x i32]] zeroinitializer
define i32 @main()
{
L0:  ;
    %r125 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
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
    %r12 = add i32 1,0
    store i32 %r12, ptr %r6
    br label %L2
L2:  ;
    %r13 = load i32, ptr %r6
    %r14 = load i32, ptr %r0
    %r15 = icmp sle i32 %r13,%r14
    br i1 %r15, label %L3, label %L4
L3:  ;
    %r16 = call i32 @getint()
    store i32 %r16, ptr %r4
    %r17 = load i32, ptr %r6
    %r18 = load i32, ptr %r4
    %r19 = add i32 2,0
    %r20 = srem i32 %r18,%r19
    %r21 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r17, i32 %r20
    %r22 = add i32 1,0
    store i32 %r22, ptr %r21
    %r23 = load i32, ptr %r6
    %r24 = add i32 0,0
    %r25 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r23, i32 %r24
    %r26 = load i32, ptr %r6
    %r27 = add i32 1,0
    %r28 = sub i32 %r26,%r27
    %r29 = add i32 0,0
    %r30 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r28, i32 %r29
    %r31 = load i32, ptr %r30
    %r32 = load i32, ptr %r6
    %r33 = add i32 1,0
    %r34 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r32, i32 %r33
    %r35 = load i32, ptr %r34
    %r36 = add i32 %r31,%r35
    store i32 %r36, ptr %r25
    %r37 = load i32, ptr %r6
    %r38 = add i32 1,0
    %r39 = add i32 %r37,%r38
    store i32 %r39, ptr %r6
    br label %L2
L4:  ;
    %r40 = add i32 1,0
    store i32 %r40, ptr %r6
    br label %L5
L5:  ;
    %r41 = load i32, ptr %r6
    %r42 = load i32, ptr %r0
    %r43 = icmp sle i32 %r41,%r42
    br i1 %r43, label %L6, label %L7
L6:  ;
    %r44 = add i32 1,0
    store i32 %r44, ptr %r8
    br label %L8
L7:  ;
    %r126 = add i32 0,0
    store i32 %r126, ptr %r125
    %r127 = add i32 0,0
    store i32 %r127, ptr %r8
    br label %L14
L8:  ;
<<<<<<< HEAD
    %r45 = load i32, ptr %r8
    %r46 = load i32, ptr %r2
    %r47 = icmp sle i32 %r45,%r46
=======
    %r148 = phi i32 [1,%L6],[%r57,%L13]
    %r47 = icmp sle i32 %r148,%r11
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    br i1 %r47, label %L9, label %L10
L9:  ;
    %r48 = load i32, ptr %r6
    %r49 = add i32 1,0
    %r50 = sub i32 %r48,%r49
    %r51 = load i32, ptr %r8
    %r52 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r50, i32 %r51
    %r53 = load i32, ptr %r52
    %r54 = load i32, ptr %r6
    %r55 = load i32, ptr %r8
    %r56 = add i32 1,0
    %r57 = add i32 %r55,%r56
    %r58 = add i32 2,0
    %r59 = srem i32 %r57,%r58
    %r60 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r54, i32 %r59
    %r61 = load i32, ptr %r60
    %r62 = add i32 %r53,%r61
<<<<<<< HEAD
    %r63 = load i32, ptr %r6
    %r64 = add i32 1,0
    %r65 = sub i32 %r63,%r64
    %r66 = load i32, ptr %r8
    %r67 = add i32 1,0
    %r68 = sub i32 %r66,%r67
    %r69 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r65, i32 %r68
    %r70 = load i32, ptr %r69
    %r71 = load i32, ptr %r6
    %r72 = load i32, ptr %r8
    %r73 = add i32 1,0
    %r74 = add i32 %r72,%r73
    %r75 = add i32 2,0
    %r76 = srem i32 %r74,%r75
    %r77 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r71, i32 %r76
    %r78 = load i32, ptr %r77
    %r79 = add i32 %r70,%r78
=======
    %r68 = sub i32 %r148,1
    %r69 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r50, i32 %r68
    %r70 = load i32, ptr %r69
    %r79 = add i32 %r70,%r61
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    %r80 = icmp sgt i32 %r62,%r79
    br i1 %r80, label %L11, label %L12
L10:  ;
    %r122 = load i32, ptr %r6
    %r123 = add i32 1,0
    %r124 = add i32 %r122,%r123
    store i32 %r124, ptr %r6
    br label %L5
L11:  ;
<<<<<<< HEAD
    %r81 = load i32, ptr %r6
    %r82 = load i32, ptr %r8
    %r83 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r81, i32 %r82
    %r84 = load i32, ptr %r6
    %r85 = add i32 1,0
    %r86 = sub i32 %r84,%r85
    %r87 = load i32, ptr %r8
    %r88 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r86, i32 %r87
    %r89 = load i32, ptr %r88
    %r90 = load i32, ptr %r6
    %r91 = load i32, ptr %r8
    %r92 = add i32 1,0
    %r93 = add i32 %r91,%r92
    %r94 = add i32 2,0
    %r95 = srem i32 %r93,%r94
    %r96 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r90, i32 %r95
    %r97 = load i32, ptr %r96
=======
    %r83 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r151, i32 %r148
    %r89 = load i32, ptr %r52
    %r97 = load i32, ptr %r60
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    %r98 = add i32 %r89,%r97
    store i32 %r98, ptr %r83
    br label %L13
L12:  ;
<<<<<<< HEAD
    %r99 = load i32, ptr %r6
    %r100 = load i32, ptr %r8
    %r101 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r99, i32 %r100
    %r102 = load i32, ptr %r6
    %r103 = add i32 1,0
    %r104 = sub i32 %r102,%r103
    %r105 = load i32, ptr %r8
    %r106 = add i32 1,0
    %r107 = sub i32 %r105,%r106
    %r108 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r104, i32 %r107
    %r109 = load i32, ptr %r108
    %r110 = load i32, ptr %r6
    %r111 = load i32, ptr %r8
    %r112 = add i32 1,0
    %r113 = add i32 %r111,%r112
    %r114 = add i32 2,0
    %r115 = srem i32 %r113,%r114
    %r116 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r110, i32 %r115
    %r117 = load i32, ptr %r116
=======
    %r101 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r151, i32 %r148
    %r109 = load i32, ptr %r69
    %r117 = load i32, ptr %r60
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    %r118 = add i32 %r109,%r117
    store i32 %r118, ptr %r101
    br label %L13
L13:  ;
<<<<<<< HEAD
    %r119 = load i32, ptr %r8
    %r120 = add i32 1,0
    %r121 = add i32 %r119,%r120
    store i32 %r121, ptr %r8
=======
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    br label %L8
L14:  ;
    %r128 = load i32, ptr %r8
    %r129 = load i32, ptr %r2
    %r130 = icmp sle i32 %r128,%r129
    br i1 %r130, label %L15, label %L16
L15:  ;
    %r131 = load i32, ptr %r125
    %r132 = load i32, ptr %r0
    %r133 = load i32, ptr %r8
    %r134 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r132, i32 %r133
    %r135 = load i32, ptr %r134
    %r136 = icmp slt i32 %r131,%r135
    br i1 %r136, label %L17, label %L18
L16:  ;
    %r144 = load i32, ptr %r125
    ret i32 %r144
L17:  ;
<<<<<<< HEAD
    %r137 = load i32, ptr %r0
    %r138 = load i32, ptr %r8
    %r139 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r137, i32 %r138
    %r140 = load i32, ptr %r139
    store i32 %r140, ptr %r125
=======
    %r140 = load i32, ptr %r134
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    br label %L18
L18:  ;
    %r141 = load i32, ptr %r8
    %r142 = add i32 1,0
    %r143 = add i32 %r141,%r142
    store i32 %r143, ptr %r8
    br label %L14
}
