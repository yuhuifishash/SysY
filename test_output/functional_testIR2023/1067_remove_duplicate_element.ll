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
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    store i32 %r1, ptr %r3
    store i32 %r2, ptr %r4
    br label %L1
L1:  ;
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = add i32 0,0
    store i32 %r7, ptr %r5
    br label %L2
L2:  ;
    %r8 = load i32, ptr %r5
    %r9 = load i32, ptr %r3
    %r10 = icmp slt i32 %r8,%r9
    br i1 %r10, label %L3, label %L4
L3:  ;
    %r11 = load i32, ptr %r5
    %r12 = getelementptr i32, ptr %r0, i32 %r11
    %r13 = load i32, ptr %r12
    %r14 = load i32, ptr %r4
    %r15 = icmp eq i32 %r13,%r14
    br i1 %r15, label %L5, label %L6
L4:  ;
    %r29 = load i32, ptr %r3
    ret i32 %r29
L5:  ;
    %r16 = load i32, ptr %r5
    %r17 = getelementptr i32, ptr %r0, i32 %r16
    %r18 = load i32, ptr %r3
    %r19 = add i32 1,0
    %r20 = sub i32 %r18,%r19
    %r21 = getelementptr i32, ptr %r0, i32 %r20
    %r22 = load i32, ptr %r21
    store i32 %r22, ptr %r17
    %r23 = load i32, ptr %r3
    %r24 = add i32 1,0
    %r25 = sub i32 %r23,%r24
    store i32 %r25, ptr %r3
    br label %L7
L6:  ;
    %r26 = load i32, ptr %r5
    %r27 = add i32 1,0
    %r28 = add i32 %r26,%r27
    store i32 %r28, ptr %r5
    br label %L7
L7:  ;
    br label %L2
}
define i32 @main()
{
L0:  ;
    %r34 = alloca i32
    %r2 = alloca [10 x i32]
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    %r4 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r3
    %r5 = add i32 3,0
    store i32 %r5, ptr %r4
    %r6 = add i32 1,0
    %r7 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r6
    %r8 = add i32 3,0
    store i32 %r8, ptr %r7
    %r9 = add i32 2,0
    %r10 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r9
    %r11 = add i32 9,0
    store i32 %r11, ptr %r10
    %r12 = add i32 3,0
    %r13 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r12
    %r14 = add i32 0,0
    store i32 %r14, ptr %r13
    %r15 = add i32 4,0
    %r16 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r15
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r18 = add i32 5,0
    %r19 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r18
    %r20 = add i32 1,0
    store i32 %r20, ptr %r19
    %r21 = add i32 6,0
    %r22 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r21
    %r23 = add i32 1,0
    store i32 %r23, ptr %r22
    %r24 = add i32 7,0
    %r25 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r24
    %r26 = add i32 5,0
    store i32 %r26, ptr %r25
    %r27 = add i32 8,0
    %r28 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r27
    %r29 = add i32 7,0
    store i32 %r29, ptr %r28
    %r30 = add i32 9,0
    %r31 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r30
    %r32 = add i32 8,0
    store i32 %r32, ptr %r31
    %r33 = add i32 10,0
    store i32 %r33, ptr %r0
    %r35 = add i32 0,0
    store i32 %r35, ptr %r34
    %r36 = add i32 3,0
    store i32 %r36, ptr %r34
    %r37 = getelementptr [10 x i32], ptr %r2, i32 0
    %r38 = load i32, ptr %r0
    %r39 = load i32, ptr %r34
    %r40 = call i32 @removeElement(ptr %r37,i32 %r38,i32 %r39)
    store i32 %r40, ptr %r0
    %r41 = load i32, ptr %r0
    ret i32 %r41
}
