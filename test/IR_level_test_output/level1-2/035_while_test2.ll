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
define i32 @FourWhile()
{
L0:
    %r9 = alloca i32
    %r5 = alloca i32
    %r3 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 0,5
    store i32 %r2, ptr %r0
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = add i32 0,6
    store i32 %r7, ptr %r3
    %r8 = add i32 0,7
    store i32 %r8, ptr %r5
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 0,10
    store i32 %r11, ptr %r9
    br label %L1
L1:
    %r12 = load i32, ptr %r0
    %r13 = add i32 0,20
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L2, label %L3
L2:
    %r17 = load i32, ptr %r0
    %r18 = add i32 0,3
    %r19 = add i32 %r17,%r18
    store i32 %r19, ptr %r0
    br label %L4
L3:
    %r53 = load i32, ptr %r0
    %r54 = load i32, ptr %r3
    %r55 = load i32, ptr %r9
    %r56 = add i32 %r54,%r55
    %r57 = add i32 %r53,%r56
    %r58 = load i32, ptr %r5
    %r59 = add i32 %r57,%r58
    ret i32 %r59
L4:
    %r20 = load i32, ptr %r3
    %r21 = add i32 0,10
    %r22 = icmp slt i32 %r20,%r21
    br i1 %r22, label %L5, label %L6
L5:
    %r25 = load i32, ptr %r3
    %r26 = add i32 0,1
    %r27 = add i32 %r25,%r26
    store i32 %r27, ptr %r3
    br label %L7
L6:
    %r50 = load i32, ptr %r3
    %r51 = add i32 0,2
    %r52 = sub i32 %r50,%r51
    store i32 %r52, ptr %r3
    br label %L1
L7:
    %r28 = load i32, ptr %r5
    %r29 = add i32 0,7
    %r30 = icmp eq i32 %r28,%r29
    br i1 %r30, label %L8, label %L9
L8:
    %r33 = load i32, ptr %r5
    %r34 = add i32 0,1
    %r35 = sub i32 %r33,%r34
    store i32 %r35, ptr %r5
    br label %L10
L9:
    %r47 = load i32, ptr %r5
    %r48 = add i32 0,1
    %r49 = add i32 %r47,%r48
    store i32 %r49, ptr %r5
    br label %L4
L10:
    %r36 = load i32, ptr %r9
    %r37 = add i32 0,20
    %r38 = icmp slt i32 %r36,%r37
    br i1 %r38, label %L11, label %L12
L11:
    %r41 = load i32, ptr %r9
    %r42 = add i32 0,3
    %r43 = add i32 %r41,%r42
    store i32 %r43, ptr %r9
    br label %L10
L12:
    %r44 = load i32, ptr %r9
    %r45 = add i32 0,1
    %r46 = sub i32 %r44,%r45
    store i32 %r46, ptr %r9
    br label %L7
}
define i32 @main()
{
L0:
    %r0 = call i32 @FourWhile()
    ret i32 %r0
}
