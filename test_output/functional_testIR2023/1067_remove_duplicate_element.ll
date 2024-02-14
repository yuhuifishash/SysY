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
define i32 @removeElement(ptr %r0,i32 %r1,i32 %r2)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r33 = phi i32 [%r1,%L1],[%r32,%L7]
    %r31 = phi i32 [0,%L1],[%r30,%L7]
    %r10 = icmp slt i32 %r31,%r33
    br i1 %r10, label %L3, label %L4
L3:  ;
    %r12 = getelementptr i32, ptr %r0, i32 %r31
    %r13 = load i32, ptr %r12
    %r15 = icmp eq i32 %r13,%r2
    br i1 %r15, label %L5, label %L6
L4:  ;
    ret i32 %r33
L5:  ;
    %r17 = getelementptr i32, ptr %r0, i32 %r31
    %r20 = sub i32 %r33,1
    %r21 = getelementptr i32, ptr %r0, i32 %r20
    %r22 = load i32, ptr %r21
    store i32 %r22, ptr %r17
    %r25 = sub i32 %r33,1
    br label %L7
L6:  ;
    %r28 = add i32 %r31,1
    br label %L7
L7:  ;
    %r32 = phi i32 [%r25,%L5],[%r33,%L6]
    %r30 = phi i32 [%r31,%L5],[%r28,%L6]
    br label %L2
}
define i32 @main()
{
L0:  ;
    %r2 = alloca [10 x i32]
    br label %L1
L1:  ;
    %r4 = getelementptr [10 x i32], ptr %r2, i32 0, i32 0
    store i32 3, ptr %r4
    %r7 = getelementptr [10 x i32], ptr %r2, i32 0, i32 1
    store i32 3, ptr %r7
    %r10 = getelementptr [10 x i32], ptr %r2, i32 0, i32 2
    store i32 9, ptr %r10
    %r13 = getelementptr [10 x i32], ptr %r2, i32 0, i32 3
    store i32 0, ptr %r13
    %r16 = getelementptr [10 x i32], ptr %r2, i32 0, i32 4
    store i32 0, ptr %r16
    %r19 = getelementptr [10 x i32], ptr %r2, i32 0, i32 5
    store i32 1, ptr %r19
    %r22 = getelementptr [10 x i32], ptr %r2, i32 0, i32 6
    store i32 1, ptr %r22
    %r25 = getelementptr [10 x i32], ptr %r2, i32 0, i32 7
    store i32 5, ptr %r25
    %r28 = getelementptr [10 x i32], ptr %r2, i32 0, i32 8
    store i32 7, ptr %r28
    %r31 = getelementptr [10 x i32], ptr %r2, i32 0, i32 9
    store i32 8, ptr %r31
    %r37 = getelementptr [10 x i32], ptr %r2, i32 0
    %r40 = call i32 @removeElement(ptr %r37,i32 10,i32 3)
    ret i32 %r40
}
