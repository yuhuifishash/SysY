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
define i32 @func(i32 %r0,ptr %r1,i32 %r2,ptr %r3,i32 %r4,i32 %r5,ptr %r6,i32 %r7,i32 %r8)
{
L0:
    br label %L1
L1:
    br label %L2
L2:
    %r51 = phi i32 [0,%L1],[%r26,%L3]
    %r19 = icmp slt i32 %r51,10
    br i1 %r19, label %L3, label %L4
L3:
    %r22 = getelementptr [59 x i32], ptr %r1, i32 %r0, i32 %r51
    %r23 = load i32, ptr %r22
    call void @putint(i32 %r23)
    %r26 = add i32 %r51,1
    br label %L2
L4:
    call void @putch(i32 10)
    %r29 = getelementptr i32, ptr %r3, i32 %r2
    %r30 = load i32, ptr %r29
    call void @putint(i32 %r30)
    call void @putch(i32 10)
    br label %L5
L5:
    %r53 = phi i32 [%r7,%L4],[%r47,%L6]
    %r52 = phi i32 [%r8,%L4],[%r44,%L6]
    %r34 = icmp slt i32 %r52,10
    br i1 %r34, label %L6, label %L7
L6:
    %r36 = getelementptr i32, ptr %r6, i32 %r52
    %r39 = mul i32 %r53,128875
    %r41 = srem i32 %r39,3724
    store i32 %r41, ptr %r36
    %r44 = add i32 %r52,1
    %r47 = add i32 %r53,7
    br label %L5
L7:
    %r50 = add i32 %r4,%r5
    ret i32 %r50
}
define i32 @main()
{
L0:
    %r1 = alloca [53 x [59 x i32]]
    %r0 = alloca [61 x [67 x i32]]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 16348,i1 0)
    call void @llvm.memset.p0.i32(ptr %r1,i8 0,i32 12508,i1 0)
    %r4 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 17, i32 1
    store i32 6, ptr %r4
    %r8 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 17, i32 3
    store i32 7, ptr %r8
    %r12 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 17, i32 4
    store i32 4, ptr %r12
    %r16 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 17, i32 7
    store i32 9, ptr %r16
    %r20 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 17, i32 11
    store i32 11, ptr %r20
    %r24 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 6, i32 1
    store i32 1, ptr %r24
    %r28 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 6, i32 2
    store i32 2, ptr %r28
    %r32 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 6, i32 3
    store i32 3, ptr %r32
    %r36 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 6, i32 9
    store i32 9, ptr %r36
    %r42 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 17, i32 1
    %r43 = load i32, ptr %r42
    %r44 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0
    %r47 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 17, i32 3
    %r48 = load i32, ptr %r47
    %r50 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 17
    %r53 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 6, i32 3
    %r54 = load i32, ptr %r53
    %r57 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 6, i32 0
    %r58 = load i32, ptr %r57
    %r60 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 6
    %r63 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 34, i32 4
    %r64 = load i32, ptr %r63
    %r67 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 51, i32 18
    %r68 = load i32, ptr %r67
    %r69 = call i32 @func(i32 %r43,ptr %r44,i32 %r48,ptr %r50,i32 %r54,i32 %r58,ptr %r60,i32 %r64,i32 %r68)
    %r71 = mul i32 %r69,3
    br label %L2
L2:
    %r85 = phi i32 [%r71,%L1],[%r82,%L3]
    %r74 = icmp sge i32 %r85,0
    br i1 %r74, label %L3, label %L4
L3:
    %r77 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 6, i32 %r85
    %r78 = load i32, ptr %r77
    call void @putint(i32 %r78)
    call void @putch(i32 32)
    %r82 = sub i32 %r85,1
    br label %L2
L4:
    call void @putch(i32 10)
    ret i32 0
}
