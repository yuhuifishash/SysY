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
L0:
    %r48 = alloca [7 x [1 x [5 x i32]]]
    %r33 = alloca [2 x [8 x i32]]
    br label %L1
L1:
    call void @putint(i32 3)
    call void @putint(i32 3)
    call void @putint(i32 1)
    call void @putch(i32 10)
    br label %L3
L3:
    br label %L6
L5:
    call void @putint(i32 1)
    call void @putch(i32 10)
    %r32 = getelementptr [4 x i32], ptr @c, i32 0, i32 2
    store i32 1, ptr %r32
    call void @llvm.memset.p0.i32(ptr %r33,i8 0,i32 64,i1 0)
    %r35 = getelementptr [2 x [8 x i32]], ptr %r33, i32 0, i32 0, i32 0
    store i32 0, ptr %r35
    %r37 = getelementptr [2 x [8 x i32]], ptr %r33, i32 0, i32 0, i32 1
    store i32 9, ptr %r37
    %r39 = getelementptr [2 x [8 x i32]], ptr %r33, i32 0, i32 1, i32 0
    store i32 8, ptr %r39
    %r41 = getelementptr [2 x [8 x i32]], ptr %r33, i32 0, i32 1, i32 1
    store i32 3, ptr %r41
    %r46 = load i32, ptr %r32
    %r47 = icmp ne i32 %r46,0
    br i1 %r47, label %L9, label %L10
L6:
    br label %L5
L9:
    call void @llvm.memset.p0.i32(ptr %r48,i8 0,i32 140,i1 0)
    %r50 = getelementptr [7 x [1 x [5 x i32]]], ptr %r48, i32 0, i32 2, i32 0, i32 0
    store i32 2, ptr %r50
    %r52 = getelementptr [7 x [1 x [5 x i32]]], ptr %r48, i32 0, i32 2, i32 0, i32 1
    store i32 1, ptr %r52
    %r54 = getelementptr [7 x [1 x [5 x i32]]], ptr %r48, i32 0, i32 2, i32 0, i32 2
    store i32 8, ptr %r54
    %r59 = load i32, ptr %r50
    call void @putint(i32 %r59)
    %r64 = load i32, ptr %r52
    call void @putint(i32 %r64)
    %r69 = load i32, ptr %r54
    call void @putint(i32 %r69)
    br label %L10
L10:
    call void @putch(i32 10)
    %r71 = load i32, ptr @b
    call void @putint(i32 %r71)
    call void @putch(i32 10)
    %r74 = getelementptr [4 x i32], ptr @c, i32 0, i32 0
    %r75 = load i32, ptr %r74
    call void @putint(i32 %r75)
    %r77 = getelementptr [4 x i32], ptr @c, i32 0, i32 1
    %r78 = load i32, ptr %r77
    call void @putint(i32 %r78)
    %r80 = getelementptr [4 x i32], ptr @c, i32 0, i32 2
    %r81 = load i32, ptr %r80
    call void @putint(i32 %r81)
    %r83 = getelementptr [4 x i32], ptr @c, i32 0, i32 3
    %r84 = load i32, ptr %r83
    call void @putint(i32 %r84)
    call void @putch(i32 10)
    ret i32 0
}
