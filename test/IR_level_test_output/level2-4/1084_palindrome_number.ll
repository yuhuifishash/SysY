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
declare void @starttime()
declare void @stoptime()
declare void @llvm.memset.p0.i32(ptr,i8,i32,i1)
define i32 @main()
{
L0:
    %r3 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 0,1221
    store i32 %r2, ptr %r0
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = load i32, ptr %r0
    %r6 = call i32 @palindrome(i32 %r5)
    store i32 %r6, ptr %r3
    %r7 = load i32, ptr %r3
    %r8 = add i32 0,1
    %r9 = icmp eq i32 %r7,%r8
    br i1 %r9, label %L1, label %L2
L1:
    %r12 = load i32, ptr %r0
    call void @putint(i32 %r12)
    br label %L3
L2:
    %r13 = add i32 0,0
    store i32 %r13, ptr %r3
    %r14 = load i32, ptr %r3
    call void @putint(i32 %r14)
    br label %L3
L3:
    %r15 = add i32 0,10
    store i32 %r15, ptr %r3
    %r16 = load i32, ptr %r3
    call void @putch(i32 %r16)
    %r17 = add i32 0,0
    ret i32 %r17
}
define i32 @palindrome(i32 %r0)
{
L0:
    %r5 = alloca i32
    %r3 = alloca i32
    %r2 = alloca [4 x i32]
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = add i32 0,0
    store i32 %r7, ptr %r3
    br label %L1
L1:
    %r8 = load i32, ptr %r3
    %r9 = add i32 0,4
    %r10 = icmp slt i32 %r8,%r9
    br i1 %r10, label %L2, label %L3
L2:
    %r13 = load i32, ptr %r1
    %r14 = add i32 0,10
    %r15 = srem i32 %r13,%r14
    %r16 = load i32, ptr %r3
    %r17 = getelementptr [4 x i32], ptr %r2, i32 0, i32 %r16
    store i32 %r15, ptr %r17
    %r18 = load i32, ptr %r1
    %r19 = add i32 0,10
    %r20 = sdiv i32 %r18,%r19
    store i32 %r20, ptr %r1
    %r21 = load i32, ptr %r3
    %r22 = add i32 0,1
    %r23 = add i32 %r21,%r22
    store i32 %r23, ptr %r3
    br label %L1
L3:
    %r24 = add i32 0,0
    %r25 = getelementptr [4 x i32], ptr %r2, i32 0, i32 %r24
    %r26 = load i32, ptr %r25
    %r27 = add i32 0,3
    %r28 = getelementptr [4 x i32], ptr %r2, i32 0, i32 %r27
    %r29 = load i32, ptr %r28
    %r30 = icmp eq i32 %r26,%r29
    br i1 %r30, label %L7, label %L5
L4:
    %r45 = add i32 0,1
    store i32 %r45, ptr %r5
    br label %L6
L5:
    %r46 = add i32 0,0
    store i32 %r46, ptr %r5
    br label %L6
L6:
    %r47 = load i32, ptr %r5
    ret i32 %r47
L7:
    %r33 = add i32 0,1
    %r34 = getelementptr [4 x i32], ptr %r2, i32 0, i32 %r33
    %r35 = load i32, ptr %r34
    %r36 = add i32 0,2
    %r37 = getelementptr [4 x i32], ptr %r2, i32 0, i32 %r36
    %r38 = load i32, ptr %r37
    %r39 = icmp eq i32 %r35,%r38
    br i1 %r39, label %L4, label %L5
}
