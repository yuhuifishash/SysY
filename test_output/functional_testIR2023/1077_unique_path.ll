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
define i32 @uniquePaths(i32 %r0,i32 %r1)
{
L0:
    %r13 = alloca i32
    %r12 = alloca i32
    %r11 = alloca [9 x i32]
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = add i32 1,0
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L4
L2:
    %r10 = add i32 1,0
    ret i32 %r10
    br label %L3
L3:
    store i32 0, ptr %r12
    store i32 0, ptr %r13
    %r14 = add i32 0,0
    store i32 %r14, ptr %r12
    br label %L5
L4:
    %r7 = load i32, ptr %r3
    %r8 = add i32 1,0
    %r9 = icmp eq i32 %r7,%r8
    br i1 %r9, label %L2, label %L3
L5:
    %r15 = load i32, ptr %r12
    %r16 = load i32, ptr %r2
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L6, label %L7
L6:
    %r18 = load i32, ptr %r12
    %r19 = add i32 3,0
    %r20 = mul i32 %r18,%r19
    %r21 = load i32, ptr %r3
    %r22 = add i32 %r20,%r21
    %r23 = add i32 1,0
    %r24 = sub i32 %r22,%r23
    %r25 = getelementptr [9 x i32], ptr %r11, i32 0, i32 %r24
    %r26 = add i32 1,0
    store i32 %r26, ptr %r25
    %r27 = load i32, ptr %r12
    %r28 = add i32 1,0
    %r29 = add i32 %r27,%r28
    store i32 %r29, ptr %r12
    br label %L5
L7:
    %r30 = add i32 0,0
    store i32 %r30, ptr %r12
    br label %L8
L8:
    %r31 = load i32, ptr %r12
    %r32 = load i32, ptr %r3
    %r33 = icmp slt i32 %r31,%r32
    br i1 %r33, label %L9, label %L10
L9:
    %r34 = load i32, ptr %r2
    %r35 = add i32 1,0
    %r36 = sub i32 %r34,%r35
    %r37 = add i32 3,0
    %r38 = mul i32 %r36,%r37
    %r39 = load i32, ptr %r12
    %r40 = add i32 %r38,%r39
    %r41 = getelementptr [9 x i32], ptr %r11, i32 0, i32 %r40
    %r42 = add i32 1,0
    store i32 %r42, ptr %r41
    %r43 = load i32, ptr %r12
    %r44 = add i32 1,0
    %r45 = add i32 %r43,%r44
    store i32 %r45, ptr %r12
    br label %L8
L10:
    %r46 = load i32, ptr %r2
    %r47 = add i32 2,0
    %r48 = sub i32 %r46,%r47
    store i32 %r48, ptr %r12
    br label %L11
L11:
    %r49 = load i32, ptr %r12
    %r50 = add i32 1,0
    %r51 = sub i32 0,%r50
    %r52 = icmp sgt i32 %r49,%r51
    br i1 %r52, label %L12, label %L13
L12:
    %r53 = load i32, ptr %r3
    %r54 = add i32 2,0
    %r55 = sub i32 %r53,%r54
    store i32 %r55, ptr %r13
    br label %L14
L13:
    %r91 = add i32 0,0
    %r92 = getelementptr [9 x i32], ptr %r11, i32 0, i32 %r91
    %r93 = load i32, ptr %r92
    ret i32 %r93
L14:
    %r56 = load i32, ptr %r13
    %r57 = add i32 1,0
    %r58 = sub i32 0,%r57
    %r59 = icmp sgt i32 %r56,%r58
    br i1 %r59, label %L15, label %L16
L15:
    %r60 = load i32, ptr %r12
    %r61 = add i32 3,0
    %r62 = mul i32 %r60,%r61
    %r63 = load i32, ptr %r13
    %r64 = add i32 %r62,%r63
    %r65 = getelementptr [9 x i32], ptr %r11, i32 0, i32 %r64
    %r66 = load i32, ptr %r12
    %r67 = add i32 1,0
    %r68 = add i32 %r66,%r67
    %r69 = add i32 3,0
    %r70 = mul i32 %r68,%r69
    %r71 = load i32, ptr %r13
    %r72 = add i32 %r70,%r71
    %r73 = getelementptr [9 x i32], ptr %r11, i32 0, i32 %r72
    %r74 = load i32, ptr %r73
    %r75 = load i32, ptr %r12
    %r76 = add i32 3,0
    %r77 = mul i32 %r75,%r76
    %r78 = load i32, ptr %r13
    %r79 = add i32 %r77,%r78
    %r80 = add i32 1,0
    %r81 = add i32 %r79,%r80
    %r82 = getelementptr [9 x i32], ptr %r11, i32 0, i32 %r81
    %r83 = load i32, ptr %r82
    %r84 = add i32 %r74,%r83
    store i32 %r84, ptr %r65
    %r85 = load i32, ptr %r13
    %r86 = add i32 1,0
    %r87 = sub i32 %r85,%r86
    store i32 %r87, ptr %r13
    br label %L14
L16:
    %r88 = load i32, ptr %r12
    %r89 = add i32 1,0
    %r90 = sub i32 %r88,%r89
    store i32 %r90, ptr %r12
    br label %L11
}
define i32 @main()
{
L0:
    %r1 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    store i32 0, ptr %r1
    %r2 = add i32 3,0
    store i32 %r2, ptr %r1
    %r3 = load i32, ptr %r1
    %r4 = load i32, ptr %r1
    %r5 = call i32 @uniquePaths(i32 %r3,i32 %r4)
    store i32 %r5, ptr %r0
    %r6 = load i32, ptr %r0
    ret i32 %r6
}
