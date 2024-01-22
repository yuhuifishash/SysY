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
    %r28 = alloca i32
    %r26 = alloca i32
    %r24 = alloca i32
    %r22 = alloca i32
    %r20 = alloca i32
    %r4 = alloca [10 x i32]
    %r2 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r2
    %r6 = add i32 0,0
    store i32 %r6, ptr %r0
    br label %L1
L1:
    %r7 = load i32, ptr %r0
    %r8 = add i32 0,10
    %r9 = icmp slt i32 %r7,%r8
    br i1 %r9, label %L2, label %L3
L2:
    %r12 = load i32, ptr %r0
    %r13 = add i32 0,1
    %r14 = add i32 %r12,%r13
    %r15 = load i32, ptr %r0
    %r16 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r15
    store i32 %r14, ptr %r16
    %r17 = load i32, ptr %r0
    %r18 = add i32 0,1
    %r19 = add i32 %r17,%r18
    store i32 %r19, ptr %r0
    br label %L1
L3:
    %r21 = add i32 0,0
    store i32 %r21, ptr %r20
    %r23 = add i32 0,0
    store i32 %r23, ptr %r22
    %r25 = add i32 0,0
    store i32 %r25, ptr %r24
    %r27 = add i32 0,0
    store i32 %r27, ptr %r26
    %r29 = add i32 0,0
    store i32 %r29, ptr %r28
    %r30 = add i32 0,10
    store i32 %r30, ptr %r28
    %r31 = call i32 @getint()
    store i32 %r31, ptr %r20
    %r32 = load i32, ptr %r28
    %r33 = add i32 0,1
    %r34 = sub i32 %r32,%r33
    store i32 %r34, ptr %r22
    %r35 = add i32 0,0
    store i32 %r35, ptr %r24
    %r36 = load i32, ptr %r22
    %r37 = load i32, ptr %r24
    %r38 = add i32 %r36,%r37
    %r39 = add i32 0,2
    %r40 = sdiv i32 %r38,%r39
    store i32 %r40, ptr %r26
    br label %L4
L4:
    %r41 = load i32, ptr %r26
    %r42 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = load i32, ptr %r20
    %r45 = icmp ne i32 %r43,%r44
    br i1 %r45, label %L7, label %L6
L5:
    %r56 = load i32, ptr %r22
    %r57 = load i32, ptr %r24
    %r58 = add i32 %r56,%r57
    %r59 = add i32 0,2
    %r60 = sdiv i32 %r58,%r59
    store i32 %r60, ptr %r26
    %r61 = load i32, ptr %r20
    %r62 = load i32, ptr %r26
    %r63 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r62
    %r64 = load i32, ptr %r63
    %r65 = icmp slt i32 %r61,%r64
    br i1 %r65, label %L9, label %L10
L6:
    %r74 = load i32, ptr %r20
    %r75 = load i32, ptr %r26
    %r76 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r75
    %r77 = load i32, ptr %r76
    %r78 = icmp eq i32 %r74,%r77
    br i1 %r78, label %L12, label %L13
L7:
    %r48 = load i32, ptr %r24
    %r49 = load i32, ptr %r22
    %r50 = icmp slt i32 %r48,%r49
    br i1 %r50, label %L5, label %L6
L9:
    %r68 = load i32, ptr %r26
    %r69 = add i32 0,1
    %r70 = sub i32 %r68,%r69
    store i32 %r70, ptr %r22
    br label %L11
L10:
    %r71 = load i32, ptr %r26
    %r72 = add i32 0,1
    %r73 = add i32 %r71,%r72
    store i32 %r73, ptr %r24
    br label %L11
L11:
    br label %L4
L12:
    %r81 = load i32, ptr %r20
    call void @putint(i32 %r81)
    br label %L14
L13:
    %r82 = add i32 0,0
    store i32 %r82, ptr %r20
    %r83 = load i32, ptr %r20
    call void @putint(i32 %r83)
    br label %L14
L14:
    %r84 = add i32 0,10
    store i32 %r84, ptr %r20
    %r85 = load i32, ptr %r20
    call void @putch(i32 %r85)
    %r86 = add i32 0,0
    ret i32 %r86
}
