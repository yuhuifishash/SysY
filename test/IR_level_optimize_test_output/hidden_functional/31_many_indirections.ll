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
@N = global i32 100
@M = global i32 20
@array = global [20x [100x i32]] zeroinitializer
define i32 @main()
{
L0:
    br label %L1
L1:
    br label %L10
L3:
    %r165 = phi i32 [%r30,%L4],[0,%L10]
    br label %L11
L4:
    %r33 = icmp slt i32 %r30,20
    br i1 %r33, label %L3, label %L5
L5:
    %r57 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 19, i32 23
    %r58 = load i32, ptr %r57
    %r59 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 18, i32 %r58
    %r60 = load i32, ptr %r59
    %r61 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 17, i32 %r60
    %r62 = load i32, ptr %r61
    %r63 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 16, i32 %r62
    %r64 = load i32, ptr %r63
    %r65 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 15, i32 %r64
    %r66 = load i32, ptr %r65
    %r67 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 14, i32 %r66
    %r68 = load i32, ptr %r67
    %r69 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 13, i32 %r68
    %r70 = load i32, ptr %r69
    %r71 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 12, i32 %r70
    %r72 = load i32, ptr %r71
    %r73 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 11, i32 %r72
    %r74 = load i32, ptr %r73
    %r75 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 10, i32 %r74
    %r76 = load i32, ptr %r75
    %r77 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 9, i32 %r76
    %r78 = load i32, ptr %r77
    %r79 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 8, i32 %r78
    %r80 = load i32, ptr %r79
    %r81 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 7, i32 %r80
    %r82 = load i32, ptr %r81
    %r83 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 6, i32 %r82
    %r84 = load i32, ptr %r83
    %r85 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 5, i32 %r84
    %r86 = load i32, ptr %r85
    %r87 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 4, i32 %r86
    %r88 = load i32, ptr %r87
    %r89 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 3, i32 %r88
    %r90 = load i32, ptr %r89
    %r91 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 2, i32 %r90
    %r92 = load i32, ptr %r91
    %r93 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 1, i32 %r92
    %r94 = load i32, ptr %r93
    %r95 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 0, i32 %r94
    %r96 = load i32, ptr %r95
    %r99 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 19, i32 18
    %r100 = load i32, ptr %r99
    %r102 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r100, i32 17
    %r103 = load i32, ptr %r102
    %r105 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r103, i32 16
    %r106 = load i32, ptr %r105
    %r108 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r106, i32 15
    %r109 = load i32, ptr %r108
    %r111 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r109, i32 14
    %r112 = load i32, ptr %r111
    %r114 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r112, i32 13
    %r115 = load i32, ptr %r114
    %r117 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r115, i32 12
    %r118 = load i32, ptr %r117
    %r120 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r118, i32 11
    %r121 = load i32, ptr %r120
    %r123 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r121, i32 10
    %r124 = load i32, ptr %r123
    %r126 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r124, i32 9
    %r127 = load i32, ptr %r126
    %r129 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r127, i32 8
    %r130 = load i32, ptr %r129
    %r132 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r130, i32 7
    %r133 = load i32, ptr %r132
    %r135 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r133, i32 6
    %r136 = load i32, ptr %r135
    %r138 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r136, i32 5
    %r139 = load i32, ptr %r138
    %r141 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r139, i32 4
    %r142 = load i32, ptr %r141
    %r144 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r142, i32 3
    %r145 = load i32, ptr %r144
    %r147 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r145, i32 2
    %r148 = load i32, ptr %r147
    %r150 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r148, i32 1
    %r151 = load i32, ptr %r150
    %r153 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r151, i32 0
    %r154 = load i32, ptr %r153
    %r156 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r154, i32 56
    %r157 = load i32, ptr %r156
    %r158 = add i32 %r96,%r157
    call void @putint(i32 %r158)
    ret i32 0
L7:
    %r163 = phi i32 [%r22,%L8],[0,%L11]
    %r19 = getelementptr i32, ptr %r186, i32 %r163
    store i32 %r163, ptr %r19
    %r22 = add i32 %r163,1
    br label %L8
L8:
    %r25 = icmp slt i32 %r22,100
    br i1 %r25, label %L7, label %L9
L9:
    %r30 = add i32 %r165,1
    br label %L4
L10:
    br label %L3
L11:
    %r186 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r165
    br label %L7
}
