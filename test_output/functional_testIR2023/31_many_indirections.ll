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
L0:  ;
    br label %L1
L1:  ;  preheader1
    br label %L2
L2:  ;  exiting1  header1
    %r149 = phi i32 [0,%L1],[%r21,%L7]
    %r6 = icmp slt i32 %r149,20
    br i1 %r6, label %L3, label %L4
L3:  ;  preheader0
    br label %L5
L4:  ;
    %r43 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 19, i32 23
    %r44 = load i32, ptr %r43
    %r45 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 18, i32 %r44
    %r46 = load i32, ptr %r45
    %r47 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 17, i32 %r46
    %r48 = load i32, ptr %r47
    %r49 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 16, i32 %r48
    %r50 = load i32, ptr %r49
    %r51 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 15, i32 %r50
    %r52 = load i32, ptr %r51
    %r53 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 14, i32 %r52
    %r54 = load i32, ptr %r53
    %r55 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 13, i32 %r54
    %r56 = load i32, ptr %r55
    %r57 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 12, i32 %r56
    %r58 = load i32, ptr %r57
    %r59 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 11, i32 %r58
    %r60 = load i32, ptr %r59
    %r61 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 10, i32 %r60
    %r62 = load i32, ptr %r61
    %r63 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 9, i32 %r62
    %r64 = load i32, ptr %r63
    %r65 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 8, i32 %r64
    %r66 = load i32, ptr %r65
    %r67 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 7, i32 %r66
    %r68 = load i32, ptr %r67
    %r69 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 6, i32 %r68
    %r70 = load i32, ptr %r69
    %r71 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 5, i32 %r70
    %r72 = load i32, ptr %r71
    %r73 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 4, i32 %r72
    %r74 = load i32, ptr %r73
    %r75 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 3, i32 %r74
    %r76 = load i32, ptr %r75
    %r77 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 2, i32 %r76
    %r78 = load i32, ptr %r77
    %r79 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 1, i32 %r78
    %r80 = load i32, ptr %r79
    %r81 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 0, i32 %r80
    %r82 = load i32, ptr %r81
    %r85 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 19, i32 18
    %r86 = load i32, ptr %r85
    %r88 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r86, i32 17
    %r89 = load i32, ptr %r88
    %r91 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r89, i32 16
    %r92 = load i32, ptr %r91
    %r94 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r92, i32 15
    %r95 = load i32, ptr %r94
    %r97 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r95, i32 14
    %r98 = load i32, ptr %r97
    %r100 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r98, i32 13
    %r101 = load i32, ptr %r100
    %r103 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r101, i32 12
    %r104 = load i32, ptr %r103
    %r106 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r104, i32 11
    %r107 = load i32, ptr %r106
    %r109 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r107, i32 10
    %r110 = load i32, ptr %r109
    %r112 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r110, i32 9
    %r113 = load i32, ptr %r112
    %r115 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r113, i32 8
    %r116 = load i32, ptr %r115
    %r118 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r116, i32 7
    %r119 = load i32, ptr %r118
    %r121 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r119, i32 6
    %r122 = load i32, ptr %r121
    %r124 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r122, i32 5
    %r125 = load i32, ptr %r124
    %r127 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r125, i32 4
    %r128 = load i32, ptr %r127
    %r130 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r128, i32 3
    %r131 = load i32, ptr %r130
    %r133 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r131, i32 2
    %r134 = load i32, ptr %r133
    %r136 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r134, i32 1
    %r137 = load i32, ptr %r136
    %r139 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r137, i32 0
    %r140 = load i32, ptr %r139
    %r142 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r140, i32 56
    %r143 = load i32, ptr %r142
    %r144 = add i32 %r82,%r143
    call void @putint(i32 %r144)
    ret i32 0
L5:  ;  exiting0  header0
    %r148 = phi i32 [0,%L3],[%r18,%L6]
    %r11 = icmp slt i32 %r148,100
    br i1 %r11, label %L6, label %L7
L6:  ;  latch0
    %r14 = getelementptr [20 x [100 x i32]], ptr @array, i32 0, i32 %r149, i32 %r148
    store i32 %r148, ptr %r14
    %r18 = add i32 %r148,1
    br label %L5
L7:  ;  latch1
    %r21 = add i32 %r149,1
    br label %L2
}
