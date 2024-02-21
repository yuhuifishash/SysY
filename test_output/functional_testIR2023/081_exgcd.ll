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
define i32 @exgcd(i32 %r0,i32 %r1,ptr %r2,ptr %r3)
{
L0:  ;
    br label %L1
L1:  ;
    %r8 = icmp eq i32 %r1,0
    br i1 %r8, label %L2, label %L3
L2:  ;
    %r10 = getelementptr i32, ptr %r2, i32 0
    store i32 1, ptr %r10
    %r13 = getelementptr i32, ptr %r3, i32 0
    store i32 0, ptr %r13
    ret i32 %r0
L3:  ;
    %r20 = srem i32 %r0,%r1
    %r21 = getelementptr i32, ptr %r2
    %r22 = getelementptr i32, ptr %r3
    %r23 = call i32 @exgcd(i32 %r1,i32 %r20,ptr %r21,ptr %r22)
    %r26 = getelementptr i32, ptr %r2, i32 0
    %r27 = load i32, ptr %r26
    %r31 = getelementptr i32, ptr %r3, i32 0
    %r32 = load i32, ptr %r31
    store i32 %r32, ptr %r26
    %r38 = sdiv i32 %r0,%r1
    %r42 = mul i32 %r38,%r32
    %r43 = sub i32 %r27,%r42
    store i32 %r43, ptr %r31
    ret i32 %r23
}
define i32 @main()
{
L0:  ;
    %r7 = alloca [1 x i32]
    %r4 = alloca [1 x i32]
    br label %L1
L1:  ;
    call void @llvm.memset.p0.i32(ptr %r4,i8 0,i32 4,i1 0)
    %r6 = getelementptr [1 x i32], ptr %r4, i32 0, i32 0
    store i32 1, ptr %r6
    call void @llvm.memset.p0.i32(ptr %r7,i8 0,i32 4,i1 0)
    %r9 = getelementptr [1 x i32], ptr %r7, i32 0, i32 0
    store i32 1, ptr %r9
    %r12 = getelementptr [1 x i32], ptr %r4, i32 0
    %r13 = getelementptr [1 x i32], ptr %r7, i32 0
    %r14 = call i32 @exgcd(i32 7,i32 15,ptr %r12,ptr %r13)
    %r19 = load i32, ptr %r6
    %r21 = srem i32 %r19,15
    %r23 = add i32 %r21,15
    %r25 = srem i32 %r23,15
    store i32 %r25, ptr %r6
    %r28 = load i32, ptr %r6
    call void @putint(i32 %r28)
    ret i32 0
}
