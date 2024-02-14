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
@a = global [6 x i32] [i32 10,i32 1,i32 50,i32 50,i32 20,i32 5]
@dp = global [10x [10x i32]] zeroinitializer
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r98 = phi i32 [3,%L1],[%r80,%L7]
    %r96 = phi i32 [0,%L1],[%r97,%L7]
    %r94 = phi i32 [0,%L1],[%r93,%L7]
    %r92 = phi i32 [0,%L1],[%r91,%L7]
    %r90 = phi i32 [0,%L1],[%r89,%L7]
    %r16 = icmp sle i32 %r98,6
    br i1 %r16, label %L3, label %L4
L3:  ;
    br label %L5
L4:  ;
    %r85 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 0, i32 5
    %r86 = load i32, ptr %r85
    call void @putint(i32 %r86)
    ret i32 0
L5:  ;
    %r97 = phi i32 [0,%L3],[%r77,%L10]
    %r93 = phi i32 [%r94,%L3],[%r95,%L10]
    %r91 = phi i32 [%r92,%L3],[%r29,%L10]
    %r89 = phi i32 [%r90,%L3],[%r88,%L10]
    %r21 = sub i32 6,%r98
    %r23 = add i32 %r21,1
    %r24 = icmp slt i32 %r97,%r23
    br i1 %r24, label %L6, label %L7
L6:  ;
    %r27 = add i32 %r97,%r98
    %r29 = sub i32 %r27,1
    %r32 = add i32 %r97,1
    br label %L8
L7:  ;
    %r80 = add i32 %r98,1
    br label %L2
L8:  ;
    %r95 = phi i32 [%r32,%L6],[%r74,%L12]
    %r88 = phi i32 [%r89,%L6],[%r56,%L12]
    %r35 = icmp slt i32 %r95,%r29
    br i1 %r35, label %L9, label %L10
L9:  ;
    %r38 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r97, i32 %r95
    %r39 = load i32, ptr %r38
    %r42 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r95, i32 %r29
    %r43 = load i32, ptr %r42
    %r44 = add i32 %r39,%r43
    %r46 = getelementptr [6 x i32], ptr @a, i32 0, i32 %r97
    %r47 = load i32, ptr %r46
    %r49 = getelementptr [6 x i32], ptr @a, i32 0, i32 %r95
    %r50 = load i32, ptr %r49
    %r51 = mul i32 %r47,%r50
    %r53 = getelementptr [6 x i32], ptr @a, i32 0, i32 %r29
    %r54 = load i32, ptr %r53
    %r55 = mul i32 %r51,%r54
    %r56 = add i32 %r44,%r55
    %r59 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r97, i32 %r29
    %r60 = load i32, ptr %r59
    %r61 = icmp eq i32 %r60,0
    br i1 %r61, label %L11, label %L13
L10:  ;
    %r77 = add i32 %r97,1
    br label %L5
L11:  ;
    %r70 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r97, i32 %r29
    store i32 %r56, ptr %r70
    br label %L12
L12:  ;
    %r74 = add i32 %r95,1
    br label %L8
L13:  ;
    %r65 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r97, i32 %r29
    %r66 = load i32, ptr %r65
    %r67 = icmp slt i32 %r56,%r66
    br i1 %r67, label %L11, label %L12
}
