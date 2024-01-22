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
L0:
    br label %L1
L1:
    %r10 = call i32 @getint()
    %r11 = call i32 @getint()
    %r15 = icmp sle i32 1,%r10
    br i1 %r15, label %L23, label %L5
L3:
    %r186 = phi i32 [%r41,%L4],[1,%L23]
    %r18 = call i32 @getint()
    %r23 = srem i32 %r18,2
    %r192 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r186
    %r24 = getelementptr i32, ptr %r192, i32 %r23
    store i32 1, ptr %r24
    %r27 = sub i32 %r186,1
    %r29 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r27, i32 0
    %r30 = load i32, ptr %r29
    %r33 = getelementptr i32, ptr %r192, i32 1
    %r34 = load i32, ptr %r33
    %r35 = add i32 %r30,%r34
    %r38 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r186, i32 0
    store i32 %r35, ptr %r38
    %r41 = add i32 %r186,1
    br label %L4
L4:
    %r44 = icmp sle i32 %r41,%r10
    br i1 %r44, label %L3, label %L5
L5:
    %r50 = icmp sle i32 1,%r10
    br i1 %r50, label %L24, label %L9
L7:
    %r188 = phi i32 [%r142,%L8],[1,%L24]
    %r56 = icmp sle i32 1,%r11
    br i1 %r56, label %L25, label %L13
L8:
    %r145 = icmp sle i32 %r142,%r10
    br i1 %r145, label %L7, label %L9
L9:
    %r153 = icmp sle i32 0,%r11
    br i1 %r153, label %L26, label %L20
L11:
    %r182 = phi i32 [%r134,%L12],[1,%L25]
    %r63 = getelementptr i32, ptr %r196, i32 %r182
    %r64 = load i32, ptr %r63
    %r68 = add i32 %r182,1
    %r70 = srem i32 %r68,2
    %r71 = getelementptr i32, ptr %r197, i32 %r70
    %r72 = load i32, ptr %r71
    %r73 = add i32 %r64,%r72
    %r79 = sub i32 %r182,1
    %r80 = getelementptr i32, ptr %r196, i32 %r79
    %r81 = load i32, ptr %r80
    %r90 = add i32 %r81,%r72
    %r91 = icmp sgt i32 %r73,%r90
    br i1 %r91, label %L14, label %L15
L12:
    %r137 = icmp sle i32 %r134,%r11
    br i1 %r137, label %L11, label %L13
L13:
    %r142 = add i32 %r188,1
    br label %L8
L14:
    %r96 = sub i32 %r188,1
    %r98 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r96, i32 %r182
    %r99 = load i32, ptr %r98
    %r103 = add i32 %r182,1
    %r105 = srem i32 %r103,2
    %r106 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r188, i32 %r105
    %r107 = load i32, ptr %r106
    %r108 = add i32 %r99,%r107
    %r111 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r188, i32 %r182
    store i32 %r108, ptr %r111
    br label %L16
L15:
    %r114 = sub i32 %r188,1
    %r117 = sub i32 %r182,1
    %r118 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r114, i32 %r117
    %r119 = load i32, ptr %r118
    %r123 = add i32 %r182,1
    %r125 = srem i32 %r123,2
    %r126 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r188, i32 %r125
    %r127 = load i32, ptr %r126
    %r128 = add i32 %r119,%r127
    %r131 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r188, i32 %r182
    store i32 %r128, ptr %r131
    br label %L16
L16:
    %r134 = add i32 %r182,1
    br label %L12
L18:
    %r184 = phi i32 [%r170,%L19],[0,%L26]
    %r178 = phi i32 [%r177,%L19],[0,%L26]
    %r159 = getelementptr i32, ptr %r205, i32 %r184
    %r160 = load i32, ptr %r159
    %r161 = icmp slt i32 %r178,%r160
    br i1 %r161, label %L21, label %L22
L19:
    %r173 = icmp sle i32 %r170,%r11
    br i1 %r173, label %L18, label %L20
L20:
    %r179 = phi i32 [0,%L9],[%r177,%L19]
    ret i32 %r179
L21:
    %r166 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r10, i32 %r184
    %r167 = load i32, ptr %r166
    br label %L22
L22:
    %r177 = phi i32 [%r178,%L18],[%r167,%L21]
    %r170 = add i32 %r184,1
    br label %L19
L23:
    br label %L3
L24:
    br label %L7
L25:
    %r61 = sub i32 %r188,1
    %r196 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r61
    %r197 = getelementptr [1005 x [2 x i32]], ptr @t, i32 0, i32 %r188
    br label %L11
L26:
    %r205 = getelementptr [1005 x [35 x i32]], ptr @dp, i32 0, i32 %r10
    br label %L18
}
