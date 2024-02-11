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
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 6,0
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
    %r13 = add i32 3,0
    store i32 %r13, ptr %r3
    br label %L2
L2:
    %r14 = load i32, ptr %r3
    %r15 = load i32, ptr %r0
    %r16 = icmp sle i32 %r14,%r15
    br i1 %r16, label %L3, label %L4
L3:
    %r17 = add i32 0,0
    store i32 %r17, ptr %r5
    br label %L5
L4:
    %r81 = add i32 0,0
    %r82 = load i32, ptr %r0
    %r83 = add i32 1,0
    %r84 = sub i32 %r82,%r83
    %r85 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r81, i32 %r84
    %r86 = load i32, ptr %r85
    call void @putint(i32 %r86)
    %r87 = add i32 0,0
    ret i32 %r87
L5:
    %r18 = load i32, ptr %r5
    %r19 = load i32, ptr %r0
    %r20 = load i32, ptr %r3
    %r21 = sub i32 %r19,%r20
    %r22 = add i32 1,0
    %r23 = add i32 %r21,%r22
    %r24 = icmp slt i32 %r18,%r23
    br i1 %r24, label %L6, label %L7
L6:
    %r25 = load i32, ptr %r5
    %r26 = load i32, ptr %r3
    %r27 = add i32 %r25,%r26
    %r28 = add i32 1,0
    %r29 = sub i32 %r27,%r28
    store i32 %r29, ptr %r9
    %r30 = load i32, ptr %r5
    %r31 = add i32 1,0
    %r32 = add i32 %r30,%r31
    store i32 %r32, ptr %r7
    br label %L8
L7:
    %r78 = load i32, ptr %r3
    %r79 = add i32 1,0
    %r80 = add i32 %r78,%r79
    store i32 %r80, ptr %r3
    br label %L2
L8:
    %r33 = load i32, ptr %r7
    %r34 = load i32, ptr %r9
    %r35 = icmp slt i32 %r33,%r34
    br i1 %r35, label %L9, label %L10
L9:
    %r36 = load i32, ptr %r5
    %r37 = load i32, ptr %r7
    %r38 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r36, i32 %r37
    %r39 = load i32, ptr %r38
    %r40 = load i32, ptr %r7
    %r41 = load i32, ptr %r9
    %r42 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r40, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = add i32 %r39,%r43
    %r45 = load i32, ptr %r5
    %r46 = getelementptr [6 x i32], ptr @a, i32 0, i32 %r45
    %r47 = load i32, ptr %r46
    %r48 = load i32, ptr %r7
    %r49 = getelementptr [6 x i32], ptr @a, i32 0, i32 %r48
    %r50 = load i32, ptr %r49
    %r51 = mul i32 %r47,%r50
    %r52 = load i32, ptr %r9
    %r53 = getelementptr [6 x i32], ptr @a, i32 0, i32 %r52
    %r54 = load i32, ptr %r53
    %r55 = mul i32 %r51,%r54
    %r56 = add i32 %r44,%r55
    store i32 %r56, ptr %r11
    %r57 = load i32, ptr %r5
    %r58 = load i32, ptr %r9
    %r59 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r57, i32 %r58
    %r60 = load i32, ptr %r59
    %r61 = icmp eq i32 %r60,0
    br i1 %r61, label %L11, label %L13
L10:
    %r75 = load i32, ptr %r5
    %r76 = add i32 1,0
    %r77 = add i32 %r75,%r76
    store i32 %r77, ptr %r5
    br label %L5
L11:
    %r68 = load i32, ptr %r5
    %r69 = load i32, ptr %r9
    %r70 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r68, i32 %r69
    %r71 = load i32, ptr %r11
    store i32 %r71, ptr %r70
    br label %L12
L12:
    %r72 = load i32, ptr %r7
    %r73 = add i32 1,0
    %r74 = add i32 %r72,%r73
    store i32 %r74, ptr %r7
    br label %L8
L13:
    %r62 = load i32, ptr %r11
    %r63 = load i32, ptr %r5
    %r64 = load i32, ptr %r9
    %r65 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r63, i32 %r64
    %r66 = load i32, ptr %r65
    %r67 = icmp slt i32 %r62,%r66
    br i1 %r67, label %L11, label %L12
}
