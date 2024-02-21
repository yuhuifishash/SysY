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
define i32 @palindrome(i32 %r0)
{
L0:  ;
    %r2 = alloca [4 x i32]
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r41 = phi i32 [%r0,%L1],[%r18,%L3]
    %r40 = phi i32 [0,%L1],[%r21,%L3]
    %r10 = icmp slt i32 %r40,4
    br i1 %r10, label %L3, label %L4
L3:  ;
    %r12 = getelementptr [4 x i32], ptr %r2, i32 0, i32 %r40
    %r15 = srem i32 %r41,10
    store i32 %r15, ptr %r12
    %r18 = sdiv i32 %r41,10
    %r21 = add i32 %r40,1
    br label %L2
L4:  ;
    %r23 = getelementptr [4 x i32], ptr %r2, i32 0, i32 0
    %r24 = load i32, ptr %r23
    %r26 = getelementptr [4 x i32], ptr %r2, i32 0, i32 3
    %r27 = load i32, ptr %r26
    %r28 = icmp eq i32 %r24,%r27
    br i1 %r28, label %L8, label %L6
L5:  ;
    br label %L7
L6:  ;
    br label %L7
L7:  ;
    %r39 = phi i32 [0,%L6],[1,%L5]
    ret i32 %r39
L8:  ;
    %r30 = getelementptr [4 x i32], ptr %r2, i32 0, i32 1
    %r31 = load i32, ptr %r30
    %r33 = getelementptr [4 x i32], ptr %r2, i32 0, i32 2
    %r34 = load i32, ptr %r33
    %r35 = icmp eq i32 %r31,%r34
    br i1 %r35, label %L5, label %L6
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r6 = call i32 @palindrome(i32 1221)
    %r9 = icmp eq i32 %r6,1
    br i1 %r9, label %L2, label %L3
L2:  ;
    call void @putint(i32 1221)
    br label %L4
L3:  ;
    call void @putint(i32 0)
    br label %L4
L4:  ;
    call void @putch(i32 10)
    ret i32 0
}
