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
    %r35 = alloca i32
    %r32 = alloca i32
    %r20 = alloca i32
    %r19 = alloca i32
    %r18 = alloca i32
    %r17 = alloca i32
    %r16 = alloca i32
    %r2 = alloca [10 x i32]
    %r1 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    store i32 0, ptr %r1
    %r3 = add i32 0,0
    store i32 %r3, ptr %r1
    %r4 = add i32 0,0
    store i32 %r4, ptr %r0
    br label %L2
L2:
    %r5 = load i32, ptr %r0
    %r6 = add i32 10,0
    %r7 = icmp slt i32 %r5,%r6
    br i1 %r7, label %L3, label %L4
L3:
    %r8 = load i32, ptr %r0
    %r9 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r8
    %r10 = load i32, ptr %r0
    %r11 = add i32 1,0
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr %r9
    %r13 = load i32, ptr %r0
    %r14 = add i32 1,0
    %r15 = add i32 %r13,%r14
    store i32 %r15, ptr %r0
    br label %L2
L4:
    store i32 0, ptr %r16
    store i32 0, ptr %r17
    store i32 0, ptr %r18
    store i32 0, ptr %r19
    store i32 0, ptr %r20
    %r21 = add i32 10,0
    store i32 %r21, ptr %r20
    %r22 = call i32 @getint()
    store i32 %r22, ptr %r16
    %r23 = load i32, ptr %r20
    %r24 = add i32 1,0
    %r25 = sub i32 %r23,%r24
    store i32 %r25, ptr %r17
    %r26 = add i32 0,0
    store i32 %r26, ptr %r18
    %r27 = load i32, ptr %r17
    %r28 = load i32, ptr %r18
    %r29 = add i32 %r27,%r28
    %r30 = add i32 2,0
    %r31 = sdiv i32 %r29,%r30
    store i32 %r31, ptr %r19
    store i32 0, ptr %r32
    %r33 = add i32 0,0
    store i32 %r33, ptr %r32
    %r34 = add i32 0,0
    store i32 %r34, ptr %r0
    store i32 0, ptr %r35
    %r36 = add i32 0,0
    store i32 %r36, ptr %r35
    br label %L5
L5:
    %r37 = load i32, ptr %r0
    %r38 = add i32 10,0
    %r39 = icmp slt i32 %r37,%r38
    br i1 %r39, label %L8, label %L7
L6:
    %r43 = load i32, ptr %r0
    %r44 = getelementptr [10 x i32], ptr %r2, i32 0, i32 %r43
    %r45 = load i32, ptr %r44
    %r46 = load i32, ptr %r16
    %r47 = icmp eq i32 %r45,%r46
    br i1 %r47, label %L9, label %L10
L7:
    %r53 = load i32, ptr %r32
    %r54 = add i32 1,0
    %r55 = icmp eq i32 %r53,%r54
    br i1 %r55, label %L11, label %L12
L8:
    %r40 = load i32, ptr %r32
    %r41 = add i32 0,0
    %r42 = icmp eq i32 %r40,%r41
    br i1 %r42, label %L6, label %L7
L9:
    %r48 = add i32 1,0
    store i32 %r48, ptr %r32
    %r49 = load i32, ptr %r0
    store i32 %r49, ptr %r35
    br label %L10
L10:
    %r50 = load i32, ptr %r0
    %r51 = add i32 1,0
    %r52 = add i32 %r50,%r51
    store i32 %r52, ptr %r0
    br label %L5
L11:
    %r56 = load i32, ptr %r35
    call void @putint(i32 %r56)
    br label %L13
L12:
    %r57 = add i32 0,0
    store i32 %r57, ptr %r16
    %r58 = load i32, ptr %r16
    call void @putint(i32 %r58)
    br label %L13
L13:
    %r59 = add i32 10,0
    store i32 %r59, ptr %r16
    %r60 = load i32, ptr %r16
    call void @putch(i32 %r60)
    %r61 = add i32 0,0
    ret i32 %r61
}
