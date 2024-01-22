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
@a = global [6 x i32] [i32 10,i32 1,i32 50,i32 50,i32 20,i32 5]
@dp = global [10x [10x i32]] zeroinitializer
define i32 @main()
{
L0:
    %r11 = alloca i32
    %r9 = alloca i32
    %r7 = alloca i32
    %r5 = alloca i32
    %r3 = alloca i32
    %r0 = alloca i32
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 0,6
    store i32 %r2, ptr %r0
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r12 = add i32 0,0
    store i32 %r12, ptr %r11
    %r13 = add i32 0,3
    store i32 %r13, ptr %r3
    br label %L1
L1:
    %r14 = load i32, ptr %r3
    %r15 = load i32, ptr %r0
    %r16 = icmp sle i32 %r14,%r15
    br i1 %r16, label %L2, label %L3
L2:
    %r19 = add i32 0,0
    store i32 %r19, ptr %r5
    br label %L4
L3:
    %r94 = add i32 0,0
    %r95 = load i32, ptr %r0
    %r96 = add i32 0,1
    %r97 = sub i32 %r95,%r96
    %r98 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r94, i32 %r97
    %r99 = load i32, ptr %r98
    call void @putint(i32 %r99)
    %r100 = add i32 0,0
    ret i32 %r100
L4:
    %r20 = load i32, ptr %r5
    %r21 = load i32, ptr %r0
    %r22 = load i32, ptr %r3
    %r23 = sub i32 %r21,%r22
    %r24 = add i32 0,1
    %r25 = add i32 %r23,%r24
    %r26 = icmp slt i32 %r20,%r25
    br i1 %r26, label %L5, label %L6
L5:
    %r29 = load i32, ptr %r5
    %r30 = load i32, ptr %r3
    %r31 = add i32 %r29,%r30
    %r32 = add i32 0,1
    %r33 = sub i32 %r31,%r32
    store i32 %r33, ptr %r9
    %r34 = load i32, ptr %r5
    %r35 = add i32 0,1
    %r36 = add i32 %r34,%r35
    store i32 %r36, ptr %r7
    br label %L7
L6:
    %r91 = load i32, ptr %r3
    %r92 = add i32 0,1
    %r93 = add i32 %r91,%r92
    store i32 %r93, ptr %r3
    br label %L1
L7:
    %r37 = load i32, ptr %r7
    %r38 = load i32, ptr %r9
    %r39 = icmp slt i32 %r37,%r38
    br i1 %r39, label %L8, label %L9
L8:
    %r42 = load i32, ptr %r5
    %r43 = load i32, ptr %r7
    %r44 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r42, i32 %r43
    %r45 = load i32, ptr %r44
    %r46 = load i32, ptr %r7
    %r47 = load i32, ptr %r9
    %r48 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r46, i32 %r47
    %r49 = load i32, ptr %r48
    %r50 = add i32 %r45,%r49
    %r51 = load i32, ptr %r5
    %r52 = getelementptr [6 x i32], ptr @a, i32 0, i32 %r51
    %r53 = load i32, ptr %r52
    %r54 = load i32, ptr %r7
    %r55 = getelementptr [6 x i32], ptr @a, i32 0, i32 %r54
    %r56 = load i32, ptr %r55
    %r57 = mul i32 %r53,%r56
    %r58 = load i32, ptr %r9
    %r59 = getelementptr [6 x i32], ptr @a, i32 0, i32 %r58
    %r60 = load i32, ptr %r59
    %r61 = mul i32 %r57,%r60
    %r62 = add i32 %r50,%r61
    store i32 %r62, ptr %r11
    %r63 = load i32, ptr %r5
    %r64 = load i32, ptr %r9
    %r65 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r63, i32 %r64
    %r66 = load i32, ptr %r65
    %r67 = icmp eq i32 %r66,0
    br i1 %r67, label %L10, label %L12
L9:
    %r88 = load i32, ptr %r5
    %r89 = add i32 0,1
    %r90 = add i32 %r88,%r89
    store i32 %r90, ptr %r5
    br label %L4
L10:
    %r81 = load i32, ptr %r11
    %r82 = load i32, ptr %r5
    %r83 = load i32, ptr %r9
    %r84 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r82, i32 %r83
    store i32 %r81, ptr %r84
    br label %L11
L11:
    %r85 = load i32, ptr %r7
    %r86 = add i32 0,1
    %r87 = add i32 %r85,%r86
    store i32 %r87, ptr %r7
    br label %L7
L12:
    %r70 = load i32, ptr %r11
    %r71 = load i32, ptr %r5
    %r72 = load i32, ptr %r9
    %r73 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r71, i32 %r72
    %r74 = load i32, ptr %r73
    %r75 = icmp slt i32 %r70,%r74
    br i1 %r75, label %L10, label %L11
}
