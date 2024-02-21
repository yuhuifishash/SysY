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
    %r5 = alloca i32
    %r3 = alloca i32
    %r2 = alloca [4 x i32]
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:  ;
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = add i32 0,0
    store i32 %r7, ptr %r3
    br label %L2
L2:  ;
    %r8 = load i32, ptr %r3
    %r9 = add i32 4,0
    %r10 = icmp slt i32 %r8,%r9
    br i1 %r10, label %L3, label %L4
L3:  ;
    %r11 = load i32, ptr %r3
    %r12 = getelementptr [4 x i32], ptr %r2, i32 0, i32 %r11
    %r13 = load i32, ptr %r1
    %r14 = add i32 10,0
    %r15 = srem i32 %r13,%r14
    store i32 %r15, ptr %r12
    %r16 = load i32, ptr %r1
    %r17 = add i32 10,0
    %r18 = sdiv i32 %r16,%r17
    store i32 %r18, ptr %r1
    %r19 = load i32, ptr %r3
    %r20 = add i32 1,0
    %r21 = add i32 %r19,%r20
    store i32 %r21, ptr %r3
    br label %L2
L4:  ;
    %r22 = add i32 0,0
    %r23 = getelementptr [4 x i32], ptr %r2, i32 0, i32 %r22
    %r24 = load i32, ptr %r23
    %r25 = add i32 3,0
    %r26 = getelementptr [4 x i32], ptr %r2, i32 0, i32 %r25
    %r27 = load i32, ptr %r26
    %r28 = icmp eq i32 %r24,%r27
    br i1 %r28, label %L8, label %L6
L5:  ;
    %r36 = add i32 1,0
    store i32 %r36, ptr %r5
    br label %L7
L6:  ;
    %r37 = add i32 0,0
    store i32 %r37, ptr %r5
    br label %L7
L7:  ;
    %r38 = load i32, ptr %r5
    ret i32 %r38
L8:  ;
    %r29 = add i32 1,0
    %r30 = getelementptr [4 x i32], ptr %r2, i32 0, i32 %r29
    %r31 = load i32, ptr %r30
    %r32 = add i32 2,0
    %r33 = getelementptr [4 x i32], ptr %r2, i32 0, i32 %r32
    %r34 = load i32, ptr %r33
    %r35 = icmp eq i32 %r31,%r34
    br i1 %r35, label %L5, label %L6
}
define i32 @main()
{
L0:  ;
    %r3 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 1221,0
    store i32 %r2, ptr %r0
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r5 = load i32, ptr %r0
    %r6 = call i32 @palindrome(i32 %r5)
    store i32 %r6, ptr %r3
    %r7 = load i32, ptr %r3
    %r8 = add i32 1,0
    %r9 = icmp eq i32 %r7,%r8
    br i1 %r9, label %L2, label %L3
L2:  ;
    %r10 = load i32, ptr %r0
    call void @putint(i32 %r10)
    br label %L4
L3:  ;
    %r11 = add i32 0,0
    store i32 %r11, ptr %r3
    %r12 = load i32, ptr %r3
    call void @putint(i32 %r12)
    br label %L4
L4:  ;
    %r13 = add i32 10,0
    store i32 %r13, ptr %r3
    %r14 = load i32, ptr %r3
    call void @putch(i32 %r14)
    %r15 = add i32 0,0
    ret i32 %r15
}
