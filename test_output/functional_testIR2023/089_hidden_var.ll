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
@b = global i32 5
@c = global [4 x i32] [i32 6,i32 7,i32 8,i32 9]
define i32 @main()
{
L0:  ;
    %r41 = alloca [7 x [1 x [5 x i32]]]
    %r26 = alloca [2 x [8 x i32]]
    br label %L1
L1:  ;
    call void @putint(i32 3)
    call void @putint(i32 3)
    call void @putint(i32 1)
    call void @putch(i32 10)
    br label %L2
L2:  ;
    br label %L3
L3:  ;
    br label %L5
L4:  ;
    call void @putint(i32 1)
    call void @putch(i32 10)
    %r24 = getelementptr [4 x i32], ptr @c, i32 0, i32 2
    store i32 1, ptr %r24
    call void @llvm.memset.p0.i32(ptr %r26,i8 0,i32 64,i1 0)
    %r28 = getelementptr [2 x [8 x i32]], ptr %r26, i32 0, i32 0, i32 0
    store i32 0, ptr %r28
    %r30 = getelementptr [2 x [8 x i32]], ptr %r26, i32 0, i32 0, i32 1
    store i32 9, ptr %r30
    %r32 = getelementptr [2 x [8 x i32]], ptr %r26, i32 0, i32 1, i32 0
    store i32 8, ptr %r32
    %r34 = getelementptr [2 x [8 x i32]], ptr %r26, i32 0, i32 1, i32 1
    store i32 3, ptr %r34
    %r39 = load i32, ptr %r24
    %r40 = icmp ne i32 %r39,0
    br i1 %r40, label %L8, label %L9
L5:  ;
    br label %L4
L8:  ;
    call void @llvm.memset.p0.i32(ptr %r41,i8 0,i32 140,i1 0)
    %r43 = getelementptr [7 x [1 x [5 x i32]]], ptr %r41, i32 0, i32 2, i32 0, i32 0
    store i32 2, ptr %r43
    %r45 = getelementptr [7 x [1 x [5 x i32]]], ptr %r41, i32 0, i32 2, i32 0, i32 1
    store i32 1, ptr %r45
    %r47 = getelementptr [7 x [1 x [5 x i32]]], ptr %r41, i32 0, i32 2, i32 0, i32 2
    store i32 8, ptr %r47
    %r52 = load i32, ptr %r43
    call void @putint(i32 %r52)
    %r57 = load i32, ptr %r45
    call void @putint(i32 %r57)
    %r62 = load i32, ptr %r47
    call void @putint(i32 %r62)
    br label %L9
L9:  ;
    call void @putch(i32 10)
    %r64 = load i32, ptr @b
    call void @putint(i32 %r64)
    call void @putch(i32 10)
    %r67 = getelementptr [4 x i32], ptr @c, i32 0, i32 0
    %r68 = load i32, ptr %r67
    call void @putint(i32 %r68)
    %r70 = getelementptr [4 x i32], ptr @c, i32 0, i32 1
    %r71 = load i32, ptr %r70
    call void @putint(i32 %r71)
    %r74 = load i32, ptr %r24
    call void @putint(i32 %r74)
    %r76 = getelementptr [4 x i32], ptr @c, i32 0, i32 3
    %r77 = load i32, ptr %r76
    call void @putint(i32 %r77)
    call void @putch(i32 10)
    ret i32 0
}
