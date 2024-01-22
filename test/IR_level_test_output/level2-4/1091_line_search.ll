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
    %r45 = alloca i32
    %r41 = alloca i32
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
    %r42 = add i32 0,0
    store i32 %r42, ptr %r41
    %r43 = add i32 0,0
    store i32 %r43, ptr %r41
    %r44 = add i32 0,0
    store i32 %r44, ptr %r0
    %r46 = add i32 0,0
    store i32 %r46, ptr %r45
    %r47 = add i32 0,0
    store i32 %r47, ptr %r45
    br label %L4
L4:
    %r48 = load i32, ptr %r0
    %r49 = add i32 0,10
    %r50 = icmp slt i32 %r48,%r49
    br i1 %r50, label %L7, label %L6
L5:
    %r61 = load i32, ptr %r0
    %r62 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r61
    %r63 = load i32, ptr %r62
    %r64 = load i32, ptr %r20
    %r65 = icmp eq i32 %r63,%r64
    br i1 %r65, label %L9, label %L10
L6:
    %r73 = load i32, ptr %r41
    %r74 = add i32 0,1
    %r75 = icmp eq i32 %r73,%r74
    br i1 %r75, label %L11, label %L12
L7:
    %r53 = load i32, ptr %r41
    %r54 = add i32 0,0
    %r55 = icmp eq i32 %r53,%r54
    br i1 %r55, label %L5, label %L6
L9:
    %r68 = add i32 0,1
    store i32 %r68, ptr %r41
    %r69 = load i32, ptr %r0
    store i32 %r69, ptr %r45
    br label %L10
L10:
    %r70 = load i32, ptr %r0
    %r71 = add i32 0,1
    %r72 = add i32 %r70,%r71
    store i32 %r72, ptr %r0
    br label %L4
L11:
    %r78 = load i32, ptr %r45
    call void @putint(i32 %r78)
    br label %L13
L12:
    %r79 = add i32 0,0
    store i32 %r79, ptr %r20
    %r80 = load i32, ptr %r20
    call void @putint(i32 %r80)
    br label %L13
L13:
    %r81 = add i32 0,10
    store i32 %r81, ptr %r20
    %r82 = load i32, ptr %r20
    call void @putch(i32 %r82)
    %r83 = add i32 0,0
    ret i32 %r83
}
