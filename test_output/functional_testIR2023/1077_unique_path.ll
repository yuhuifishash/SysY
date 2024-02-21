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
L0:  ;
    %r14 = alloca i32
    %r12 = alloca i32
    %r11 = alloca [9 x i32]
    %r3 = alloca i32
    %r2 = alloca i32
    store i32 %r0, ptr %r2
    store i32 %r1, ptr %r3
    br label %L1
L1:  ;
    %r4 = load i32, ptr %r2
    %r5 = add i32 1,0
    %r6 = icmp eq i32 %r4,%r5
    br i1 %r6, label %L2, label %L4
L2:  ;
    %r10 = add i32 1,0
    ret i32 %r10
L3:  ;
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    %r16 = add i32 0,0
    store i32 %r16, ptr %r12
    br label %L5
L4:  ;
    %r7 = load i32, ptr %r3
    %r8 = add i32 1,0
    %r9 = icmp eq i32 %r7,%r8
    br i1 %r9, label %L2, label %L3
L5:  ;
    %r17 = load i32, ptr %r12
    %r18 = load i32, ptr %r2
    %r19 = icmp slt i32 %r17,%r18
    br i1 %r19, label %L6, label %L7
L6:  ;
    %r20 = load i32, ptr %r12
    %r21 = add i32 3,0
    %r22 = mul i32 %r20,%r21
    %r23 = load i32, ptr %r3
    %r24 = add i32 %r22,%r23
    %r25 = add i32 1,0
    %r26 = sub i32 %r24,%r25
    %r27 = getelementptr [9 x i32], ptr %r11, i32 0, i32 %r26
    %r28 = add i32 1,0
    store i32 %r28, ptr %r27
    %r29 = load i32, ptr %r12
    %r30 = add i32 1,0
    %r31 = add i32 %r29,%r30
    store i32 %r31, ptr %r12
    br label %L5
L7:  ;
    %r32 = add i32 0,0
    store i32 %r32, ptr %r12
    br label %L8
L8:  ;
    %r33 = load i32, ptr %r12
    %r34 = load i32, ptr %r3
    %r35 = icmp slt i32 %r33,%r34
    br i1 %r35, label %L9, label %L10
L9:  ;
    %r36 = load i32, ptr %r2
    %r37 = add i32 1,0
    %r38 = sub i32 %r36,%r37
    %r39 = add i32 3,0
    %r40 = mul i32 %r38,%r39
    %r41 = load i32, ptr %r12
    %r42 = add i32 %r40,%r41
    %r43 = getelementptr [9 x i32], ptr %r11, i32 0, i32 %r42
    %r44 = add i32 1,0
    store i32 %r44, ptr %r43
    %r45 = load i32, ptr %r12
    %r46 = add i32 1,0
    %r47 = add i32 %r45,%r46
    store i32 %r47, ptr %r12
    br label %L8
L10:  ;
    %r48 = load i32, ptr %r2
    %r49 = add i32 2,0
    %r50 = sub i32 %r48,%r49
    store i32 %r50, ptr %r12
    br label %L11
L11:  ;
    %r51 = load i32, ptr %r12
    %r52 = add i32 1,0
    %r53 = sub i32 0,%r52
    %r54 = icmp sgt i32 %r51,%r53
    br i1 %r54, label %L12, label %L13
L12:  ;
    %r55 = load i32, ptr %r3
    %r56 = add i32 2,0
    %r57 = sub i32 %r55,%r56
    store i32 %r57, ptr %r14
    br label %L14
L13:  ;
    %r93 = add i32 0,0
    %r94 = getelementptr [9 x i32], ptr %r11, i32 0, i32 %r93
    %r95 = load i32, ptr %r94
    ret i32 %r95
L14:  ;
    %r58 = load i32, ptr %r14
    %r59 = add i32 1,0
    %r60 = sub i32 0,%r59
    %r61 = icmp sgt i32 %r58,%r60
    br i1 %r61, label %L15, label %L16
L15:  ;
    %r62 = load i32, ptr %r12
    %r63 = add i32 3,0
    %r64 = mul i32 %r62,%r63
    %r65 = load i32, ptr %r14
    %r66 = add i32 %r64,%r65
    %r67 = getelementptr [9 x i32], ptr %r11, i32 0, i32 %r66
    %r68 = load i32, ptr %r12
    %r69 = add i32 1,0
    %r70 = add i32 %r68,%r69
    %r71 = add i32 3,0
    %r72 = mul i32 %r70,%r71
    %r73 = load i32, ptr %r14
    %r74 = add i32 %r72,%r73
    %r75 = getelementptr [9 x i32], ptr %r11, i32 0, i32 %r74
    %r76 = load i32, ptr %r75
<<<<<<< HEAD
    %r77 = load i32, ptr %r12
    %r78 = add i32 3,0
    %r79 = mul i32 %r77,%r78
    %r80 = load i32, ptr %r14
    %r81 = add i32 %r79,%r80
    %r82 = add i32 1,0
    %r83 = add i32 %r81,%r82
=======
    %r83 = add i32 %r66,1
>>>>>>> 73cadbb30437dbe3cdfcf07cfc5f0444623fbeca
    %r84 = getelementptr [9 x i32], ptr %r11, i32 0, i32 %r83
    %r85 = load i32, ptr %r84
    %r86 = add i32 %r76,%r85
    store i32 %r86, ptr %r67
    %r87 = load i32, ptr %r14
    %r88 = add i32 1,0
    %r89 = sub i32 %r87,%r88
    store i32 %r89, ptr %r14
    br label %L14
L16:  ;
    %r90 = load i32, ptr %r12
    %r91 = add i32 1,0
    %r92 = sub i32 %r90,%r91
    store i32 %r92, ptr %r12
    br label %L11
}
define i32 @main()
{
L0:  ;
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = add i32 3,0
    store i32 %r4, ptr %r2
    %r5 = load i32, ptr %r2
    %r6 = load i32, ptr %r2
    %r7 = call i32 @uniquePaths(i32 %r5,i32 %r6)
    store i32 %r7, ptr %r0
    %r8 = load i32, ptr %r0
    ret i32 %r8
}
