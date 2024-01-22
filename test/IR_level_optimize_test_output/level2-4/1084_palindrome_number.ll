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
    %r6 = call i32 @palindrome(i32 1221)
    %r9 = icmp eq i32 %r6,1
    br i1 %r9, label %L2, label %L3
L2:
    call void @putint(i32 1221)
    br label %L4
L3:
    call void @putint(i32 0)
    br label %L4
L4:
    call void @putch(i32 10)
    ret i32 0
}
define i32 @palindrome(i32 %r0)
{
L0:
    %r2 = alloca [4 x i32]
    br label %L1
L1:
    br label %L11
L3:
    %r56 = phi i32 [%r0,%L11],[%r20,%L4]
    %r54 = phi i32 [0,%L11],[%r23,%L4]
    %r15 = srem i32 %r56,10
    %r17 = getelementptr [4 x i32], ptr %r2, i32 0, i32 %r54
    store i32 %r15, ptr %r17
    %r20 = sdiv i32 %r56,10
    %r23 = add i32 %r54,1
    br label %L4
L4:
    %r26 = icmp slt i32 %r23,4
    br i1 %r26, label %L3, label %L5
L5:
    %r30 = getelementptr [4 x i32], ptr %r2, i32 0, i32 0
    %r31 = load i32, ptr %r30
    %r33 = getelementptr [4 x i32], ptr %r2, i32 0, i32 3
    %r34 = load i32, ptr %r33
    %r35 = icmp eq i32 %r31,%r34
    br i1 %r35, label %L9, label %L7
L6:
    br label %L8
L7:
    br label %L8
L8:
    %r53 = phi i32 [0,%L7],[1,%L6]
    ret i32 %r53
L9:
    %r39 = getelementptr [4 x i32], ptr %r2, i32 0, i32 1
    %r40 = load i32, ptr %r39
    %r42 = getelementptr [4 x i32], ptr %r2, i32 0, i32 2
    %r43 = load i32, ptr %r42
    %r44 = icmp eq i32 %r40,%r43
    br i1 %r44, label %L6, label %L7
L11:
    br label %L3
}
