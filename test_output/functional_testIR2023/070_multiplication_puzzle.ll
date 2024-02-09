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
    %r6 = alloca i32
    %r5 = alloca i32
    %r4 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    %r1 = add i32 6,0
    store i32 %r1, ptr %r0
    store i32 0, ptr %r2
    store i32 0, ptr %r3
    store i32 0, ptr %r4
    store i32 0, ptr %r5
    store i32 0, ptr %r6
    %r7 = add i32 3,0
    store i32 %r7, ptr %r2
    br label %L2
L2:
    %r8 = load i32, ptr %r2
    %r9 = load i32, ptr %r0
    %r10 = icmp sle i32 %r8,%r9
    br i1 %r10, label %L3, label %L4
L3:
    %r11 = add i32 0,0
    store i32 %r11, ptr %r3
    br label %L5
L4:
    %r75 = add i32 0,0
    %r76 = load i32, ptr %r0
    %r77 = add i32 1,0
    %r78 = sub i32 %r76,%r77
    %r79 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r75, i32 %r78
    %r80 = load i32, ptr %r79
    call void @putint(i32 %r80)
    %r81 = add i32 0,0
    ret i32 %r81
L5:
    %r12 = load i32, ptr %r3
    %r13 = load i32, ptr %r0
    %r14 = load i32, ptr %r2
    %r15 = sub i32 %r13,%r14
    %r16 = add i32 1,0
    %r17 = add i32 %r15,%r16
    %r18 = icmp slt i32 %r12,%r17
    br i1 %r18, label %L6, label %L7
L6:
    %r19 = load i32, ptr %r3
    %r20 = load i32, ptr %r2
    %r21 = add i32 %r19,%r20
    %r22 = add i32 1,0
    %r23 = sub i32 %r21,%r22
    store i32 %r23, ptr %r5
    %r24 = load i32, ptr %r3
    %r25 = add i32 1,0
    %r26 = add i32 %r24,%r25
    store i32 %r26, ptr %r4
    br label %L8
L7:
    %r72 = load i32, ptr %r2
    %r73 = add i32 1,0
    %r74 = add i32 %r72,%r73
    store i32 %r74, ptr %r2
    br label %L2
L8:
    %r27 = load i32, ptr %r4
    %r28 = load i32, ptr %r5
    %r29 = icmp slt i32 %r27,%r28
    br i1 %r29, label %L9, label %L10
L9:
    %r30 = load i32, ptr %r3
    %r31 = load i32, ptr %r4
    %r32 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r30, i32 %r31
    %r33 = load i32, ptr %r32
    %r34 = load i32, ptr %r4
    %r35 = load i32, ptr %r5
    %r36 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r34, i32 %r35
    %r37 = load i32, ptr %r36
    %r38 = add i32 %r33,%r37
    %r39 = load i32, ptr %r3
    %r40 = getelementptr [6 x i32], ptr @a, i32 0, i32 %r39
    %r41 = load i32, ptr %r40
    %r42 = load i32, ptr %r4
    %r43 = getelementptr [6 x i32], ptr @a, i32 0, i32 %r42
    %r44 = load i32, ptr %r43
    %r45 = mul i32 %r41,%r44
    %r46 = load i32, ptr %r5
    %r47 = getelementptr [6 x i32], ptr @a, i32 0, i32 %r46
    %r48 = load i32, ptr %r47
    %r49 = mul i32 %r45,%r48
    %r50 = add i32 %r38,%r49
    store i32 %r50, ptr %r6
    %r51 = load i32, ptr %r3
    %r52 = load i32, ptr %r5
    %r53 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r51, i32 %r52
    %r54 = load i32, ptr %r53
    %r55 = icmp eq i32 %r54,0
    br i1 %r55, label %L11, label %L13
L10:
    %r69 = load i32, ptr %r3
    %r70 = add i32 1,0
    %r71 = add i32 %r69,%r70
    store i32 %r71, ptr %r3
    br label %L5
L11:
    %r62 = load i32, ptr %r3
    %r63 = load i32, ptr %r5
    %r64 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r62, i32 %r63
    %r65 = load i32, ptr %r6
    store i32 %r65, ptr %r64
    br label %L12
L12:
    %r66 = load i32, ptr %r4
    %r67 = add i32 1,0
    %r68 = add i32 %r66,%r67
    store i32 %r68, ptr %r4
    br label %L8
L13:
    %r56 = load i32, ptr %r6
    %r57 = load i32, ptr %r3
    %r58 = load i32, ptr %r5
    %r59 = getelementptr [10 x [10 x i32]], ptr @dp, i32 0, i32 %r57, i32 %r58
    %r60 = load i32, ptr %r59
    %r61 = icmp slt i32 %r56,%r60
    br i1 %r61, label %L11, label %L12
}
