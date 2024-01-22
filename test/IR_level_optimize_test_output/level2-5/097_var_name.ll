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
    %r4 = alloca [20 x i32]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r4,i8 0,i32 80,i1 0)
    %r6 = getelementptr [20 x i32], ptr %r4, i32 0, i32 0
    store i32 1, ptr %r6
    %r8 = getelementptr [20 x i32], ptr %r4, i32 0, i32 1
    store i32 2, ptr %r8
    br label %L6
L3:
    %r53 = phi i32 [%r44,%L4],[2,%L6]
    %r51 = phi i32 [%r37,%L4],[0,%L6]
    %r17 = getelementptr [20 x i32], ptr %r4, i32 0, i32 %r53
    %r18 = load i32, ptr %r17
    %r21 = sub i32 %r53,1
    %r22 = getelementptr [20 x i32], ptr %r4, i32 0, i32 %r21
    %r23 = load i32, ptr %r22
    %r24 = add i32 %r18,%r23
    %r27 = sub i32 %r53,2
    %r28 = getelementptr [20 x i32], ptr %r4, i32 0, i32 %r27
    %r29 = load i32, ptr %r28
    %r30 = add i32 %r24,%r29
    store i32 %r30, ptr %r17
    %r36 = load i32, ptr %r17
    %r37 = add i32 %r51,%r36
    call void @putint(i32 %r36)
    call void @putch(i32 10)
    %r44 = add i32 %r53,1
    br label %L4
L4:
    %r47 = icmp slt i32 %r44,20
    br i1 %r47, label %L3, label %L5
L5:
    ret i32 %r37
L6:
    br label %L3
}
