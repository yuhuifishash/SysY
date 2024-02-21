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
@ans = global [50x i32] zeroinitializer
@sum = global i32 0
@n = global i32 zeroinitializer
@row = global [50x i32] zeroinitializer
@line1 = global [50x i32] zeroinitializer
@line2 = global [100x i32] zeroinitializer
define void @printans()
{
L0:  ;
    %r3 = alloca i32
    br label %L1
L1:  ;
    %r0 = load i32, ptr @sum
    %r1 = add i32 1,0
    %r2 = add i32 %r0,%r1
    store i32 %r2, ptr @sum
    %r4 = add i32 1,0
    store i32 %r4, ptr %r3
    br label %L2
L2:  ;
    %r5 = load i32, ptr %r3
    %r6 = load i32, ptr @n
    %r7 = icmp sle i32 %r5,%r6
    br i1 %r7, label %L3, label %L4
L3:  ;
    %r8 = load i32, ptr %r3
    %r9 = getelementptr [50 x i32], ptr @ans, i32 0, i32 %r8
    %r10 = load i32, ptr %r9
    call void @putint(i32 %r10)
    %r11 = load i32, ptr %r3
    %r12 = load i32, ptr @n
    %r13 = icmp eq i32 %r11,%r12
    br i1 %r13, label %L5, label %L6
L4:  ;
    ret void
L5:  ;
    %r14 = add i32 10,0
    call void @putch(i32 %r14)
    ret void
L6:  ;
    %r15 = add i32 32,0
    call void @putch(i32 %r15)
    br label %L7
L7:  ;
    %r16 = load i32, ptr %r3
    %r17 = add i32 1,0
    %r18 = add i32 %r16,%r17
    store i32 %r18, ptr %r3
    br label %L2
}
define void @f(i32 %r0)
{
L0:  ;
    %r2 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    br label %L1
L1:  ;
    %r3 = add i32 1,0
    store i32 %r3, ptr %r2
    br label %L2
L2:  ;
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr @n
    %r6 = icmp sle i32 %r4,%r5
    br i1 %r6, label %L3, label %L4
L3:  ;
    %r7 = load i32, ptr %r2
    %r8 = getelementptr [50 x i32], ptr @row, i32 0, i32 %r7
    %r9 = load i32, ptr %r8
    %r10 = add i32 1,0
    %r11 = icmp ne i32 %r9,%r10
    br i1 %r11, label %L8, label %L6
L4:  ;
    ret void
L5:  ;
    %r27 = load i32, ptr %r1
    %r28 = getelementptr [50 x i32], ptr @ans, i32 0, i32 %r27
    %r29 = load i32, ptr %r2
    store i32 %r29, ptr %r28
    %r30 = load i32, ptr %r1
    %r31 = load i32, ptr @n
    %r32 = icmp eq i32 %r30,%r31
    br i1 %r32, label %L9, label %L10
L6:  ;
    %r66 = load i32, ptr %r2
    %r67 = add i32 1,0
    %r68 = add i32 %r66,%r67
    store i32 %r68, ptr %r2
    br label %L2
L7:  ;
    %r19 = load i32, ptr @n
    %r20 = load i32, ptr %r1
    %r21 = add i32 %r19,%r20
    %r22 = load i32, ptr %r2
    %r23 = sub i32 %r21,%r22
    %r24 = getelementptr [100 x i32], ptr @line2, i32 0, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = icmp eq i32 %r25,0
    br i1 %r26, label %L5, label %L6
L8:  ;
    %r12 = load i32, ptr %r1
    %r13 = load i32, ptr %r2
    %r14 = add i32 %r12,%r13
    %r15 = getelementptr [50 x i32], ptr @line1, i32 0, i32 %r14
    %r16 = load i32, ptr %r15
    %r17 = add i32 0,0
    %r18 = icmp eq i32 %r16,%r17
    br i1 %r18, label %L7, label %L6
L9:  ;
    call void @printans()
    br label %L10
L10:  ;
<<<<<<< HEAD
    %r33 = load i32, ptr %r2
    %r34 = getelementptr [50 x i32], ptr @row, i32 0, i32 %r33
    %r35 = add i32 1,0
    store i32 %r35, ptr %r34
    %r36 = load i32, ptr %r1
    %r37 = load i32, ptr %r2
    %r38 = add i32 %r36,%r37
    %r39 = getelementptr [50 x i32], ptr @line1, i32 0, i32 %r38
    %r40 = add i32 1,0
    store i32 %r40, ptr %r39
=======
    store i32 1, ptr %r8
    store i32 1, ptr %r15
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    %r41 = load i32, ptr @n
    %r42 = load i32, ptr %r1
    %r43 = add i32 %r41,%r42
    %r44 = load i32, ptr %r2
    %r45 = sub i32 %r43,%r44
    %r46 = getelementptr [100 x i32], ptr @line2, i32 0, i32 %r45
    %r47 = add i32 1,0
    store i32 %r47, ptr %r46
    %r48 = load i32, ptr %r1
    %r49 = add i32 1,0
    %r50 = add i32 %r48,%r49
    call void @f(i32 %r50)
<<<<<<< HEAD
    %r51 = load i32, ptr %r2
    %r52 = getelementptr [50 x i32], ptr @row, i32 0, i32 %r51
    %r53 = add i32 0,0
    store i32 %r53, ptr %r52
    %r54 = load i32, ptr %r1
    %r55 = load i32, ptr %r2
    %r56 = add i32 %r54,%r55
    %r57 = getelementptr [50 x i32], ptr @line1, i32 0, i32 %r56
    %r58 = add i32 0,0
    store i32 %r58, ptr %r57
    %r59 = load i32, ptr @n
    %r60 = load i32, ptr %r1
    %r61 = add i32 %r59,%r60
    %r62 = load i32, ptr %r2
    %r63 = sub i32 %r61,%r62
    %r64 = getelementptr [100 x i32], ptr @line2, i32 0, i32 %r63
    %r65 = add i32 0,0
    store i32 %r65, ptr %r64
=======
    store i32 0, ptr %r8
    store i32 0, ptr %r15
    store i32 0, ptr %r46
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    br label %L6
}
define i32 @main()
{
L0:  ;
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    br label %L2
L2:  ;
    %r2 = load i32, ptr %r0
    %r3 = add i32 0,0
    %r4 = icmp sgt i32 %r2,%r3
    br i1 %r4, label %L3, label %L4
L3:  ;
    %r5 = call i32 @getint()
    store i32 %r5, ptr @n
    %r6 = add i32 1,0
    call void @f(i32 %r6)
    %r7 = load i32, ptr %r0
    %r8 = add i32 1,0
    %r9 = sub i32 %r7,%r8
    store i32 %r9, ptr %r0
    br label %L2
L4:  ;
    %r10 = load i32, ptr @sum
    ret i32 %r10
}
