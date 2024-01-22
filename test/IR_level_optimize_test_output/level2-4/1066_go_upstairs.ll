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
define i32 @main()
{
L0:
    br label %L1
L1:
    %r6 = call i32 @climbStairs(i32 5)
    ret i32 %r6
}
define i32 @climbStairs(i32 %r0)
{
L0:
    %r8 = alloca [10 x i32]
    br label %L1
L1:
    %r4 = icmp slt i32 %r0,4
    br i1 %r4, label %L2, label %L3
L2:
    ret i32 %r0
L3:
    %r11 = getelementptr [10 x i32], ptr %r8, i32 0, i32 0
    store i32 0, ptr %r11
    %r14 = getelementptr [10 x i32], ptr %r8, i32 0, i32 1
    store i32 1, ptr %r14
    %r17 = getelementptr [10 x i32], ptr %r8, i32 0, i32 2
    store i32 2, ptr %r17
    %r24 = add i32 %r0,1
    %r25 = icmp slt i32 3,%r24
    br i1 %r25, label %L8, label %L7
L5:
    %r54 = phi i32 [%r43,%L6],[3,%L8]
    %r30 = sub i32 %r54,1
    %r31 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r30
    %r32 = load i32, ptr %r31
    %r35 = sub i32 %r54,2
    %r36 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r35
    %r37 = load i32, ptr %r36
    %r38 = add i32 %r32,%r37
    %r40 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r54
    store i32 %r38, ptr %r40
    %r43 = add i32 %r54,1
    br label %L6
L6:
    %r48 = icmp slt i32 %r43,%r47
    br i1 %r48, label %L5, label %L7
L7:
    %r52 = getelementptr [10 x i32], ptr %r8, i32 0, i32 %r0
    %r53 = load i32, ptr %r52
    ret i32 %r53
L8:
    %r47 = add i32 %r0,1
    br label %L5
}
