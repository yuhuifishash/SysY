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
    br label %L2
L2:
    %r45 = phi i32 [2,%L1],[%r42,%L3]
    %r44 = phi i32 [0,%L1],[%r35,%L3]
    %r13 = icmp slt i32 %r45,20
    br i1 %r13, label %L3, label %L4
L3:
    %r15 = getelementptr [20 x i32], ptr %r4, i32 0, i32 %r45
    %r17 = getelementptr [20 x i32], ptr %r4, i32 0, i32 %r45
    %r18 = load i32, ptr %r17
    %r21 = sub i32 %r45,1
    %r22 = getelementptr [20 x i32], ptr %r4, i32 0, i32 %r21
    %r23 = load i32, ptr %r22
    %r24 = add i32 %r18,%r23
    %r27 = sub i32 %r45,2
    %r28 = getelementptr [20 x i32], ptr %r4, i32 0, i32 %r27
    %r29 = load i32, ptr %r28
    %r30 = add i32 %r24,%r29
    store i32 %r30, ptr %r15
    %r33 = getelementptr [20 x i32], ptr %r4, i32 0, i32 %r45
    %r34 = load i32, ptr %r33
    %r35 = add i32 %r44,%r34
    %r37 = getelementptr [20 x i32], ptr %r4, i32 0, i32 %r45
    %r38 = load i32, ptr %r37
    call void @putint(i32 %r38)
    call void @putch(i32 10)
    %r42 = add i32 %r45,1
    br label %L2
L4:
    ret i32 %r44
}
