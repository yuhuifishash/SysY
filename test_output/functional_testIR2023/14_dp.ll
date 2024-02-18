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
    br label %L1
L1:  ;
    %r10 = call i32 @getint()
    %r11 = call i32 @getint()
    br label %L2
L2:  ;
    %r150 = phi i32 [1,%L1],[%r39,%L3]
    %r15 = icmp sle i32 %r150,%r10
    br i1 %r15, label %L3, label %L4
L3:  ;
    %r16 = call i32 @getint()
    %r20 = srem i32 %r16,2
    %r21 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r150, i32 %r20
    store i32 1, ptr %r21
    %r25 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r150, i32 0
    %r28 = sub i32 %r150,1
    %r30 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r28, i32 0
    %r31 = load i32, ptr %r30
    %r34 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r150, i32 1
    %r35 = load i32, ptr %r34
    %r36 = add i32 %r31,%r35
    store i32 %r36, ptr %r25
    %r39 = add i32 %r150,1
    br label %L2
L4:  ;
    br label %L5
L5:  ;
    %r151 = phi i32 [1,%L4],[%r124,%L10]
    %r43 = icmp sle i32 %r151,%r10
    br i1 %r43, label %L6, label %L7
L6:  ;
    br label %L8
L7:  ;
    br label %L14
L8:  ;
    %r148 = phi i32 [1,%L6],[%r121,%L13]
    %r47 = icmp sle i32 %r148,%r11
    br i1 %r47, label %L9, label %L10
L9:  ;
    %r50 = sub i32 %r151,1
    %r52 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r50, i32 %r148
    %r53 = load i32, ptr %r52
    %r57 = add i32 %r148,1
    %r59 = srem i32 %r57,2
    %r60 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r151, i32 %r59
    %r61 = load i32, ptr %r60
    %r62 = add i32 %r53,%r61
    %r65 = sub i32 %r151,1
    %r68 = sub i32 %r148,1
    %r69 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r65, i32 %r68
    %r70 = load i32, ptr %r69
    %r74 = add i32 %r148,1
    %r76 = srem i32 %r74,2
    %r77 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r151, i32 %r76
    %r78 = load i32, ptr %r77
    %r79 = add i32 %r70,%r78
    %r80 = icmp sgt i32 %r62,%r79
    br i1 %r80, label %L11, label %L12
L10:  ;
    %r124 = add i32 %r151,1
    br label %L5
L11:  ;
    %r83 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r151, i32 %r148
    %r86 = sub i32 %r151,1
    %r88 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r86, i32 %r148
    %r89 = load i32, ptr %r88
    %r93 = add i32 %r148,1
    %r95 = srem i32 %r93,2
    %r96 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r151, i32 %r95
    %r97 = load i32, ptr %r96
    %r98 = add i32 %r89,%r97
    store i32 %r98, ptr %r83
    br label %L13
L12:  ;
    %r101 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r151, i32 %r148
    %r104 = sub i32 %r151,1
    %r107 = sub i32 %r148,1
    %r108 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r104, i32 %r107
    %r109 = load i32, ptr %r108
    %r113 = add i32 %r148,1
    %r115 = srem i32 %r113,2
    %r116 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r151, i32 %r115
    %r117 = load i32, ptr %r116
    %r118 = add i32 %r109,%r117
    store i32 %r118, ptr %r101
    br label %L13
L13:  ;
    %r121 = add i32 %r148,1
    br label %L8
L14:  ;
    %r149 = phi i32 [0,%L7],[%r143,%L18]
    %r146 = phi i32 [0,%L7],[%r145,%L18]
    %r130 = icmp sle i32 %r149,%r11
    br i1 %r130, label %L15, label %L16
L15:  ;
    %r134 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r10, i32 %r149
    %r135 = load i32, ptr %r134
    %r136 = icmp slt i32 %r146,%r135
    br i1 %r136, label %L17, label %L18
L16:  ;
    ret i32 %r146
L17:  ;
    %r139 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r10, i32 %r149
    %r140 = load i32, ptr %r139
    br label %L18
L18:  ;
    %r145 = phi i32 [%r146,%L15],[%r140,%L17]
    %r143 = add i32 %r149,1
    br label %L14
}
