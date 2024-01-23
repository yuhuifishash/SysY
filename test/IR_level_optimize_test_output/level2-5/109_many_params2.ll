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
    %r1 = alloca [53 x [59 x i32]]
    %r0 = alloca [61 x [67 x i32]]
    br label %L1
L1:
    call void @llvm.memset.p0.i32(ptr %r0,i8 0,i32 16348,i1 0)
    call void @llvm.memset.p0.i32(ptr %r1,i8 0,i32 12508,i1 0)
    %r5 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 17, i32 1
    store i32 6, ptr %r5
    %r9 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 17, i32 3
    store i32 7, ptr %r9
    %r13 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 17, i32 4
    store i32 4, ptr %r13
    %r17 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 17, i32 7
    store i32 9, ptr %r17
    %r21 = getelementptr [61 x [67 x i32]], ptr %r0, i32 0, i32 17, i32 11
    store i32 11, ptr %r21
    %r25 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 6, i32 1
    store i32 1, ptr %r25
    %r29 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 6, i32 2
    store i32 2, ptr %r29
    %r33 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 6, i32 3
    store i32 3, ptr %r33
    %r37 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 6, i32 9
    store i32 9, ptr %r37
    %r43 = load i32, ptr %r5
    %r44 = getelementptr i32, ptr %r1, i32 0
    %r48 = load i32, ptr %r9
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
    %r74 = icmp sge i32 %r71,0
    br i1 %r74, label %L6, label %L5
L3:
    %r92 = phi i32 [%r84,%L4],[%r71,%L6]
    %r79 = getelementptr [53 x [59 x i32]], ptr %r1, i32 0, i32 6, i32 %r92
    %r80 = load i32, ptr %r79
    call void @putint(i32 %r80)
    call void @putch(i32 32)
    %r84 = sub i32 %r92,1
    br label %L4
L4:
    %r87 = icmp sge i32 %r84,0
    br i1 %r87, label %L3, label %L5
L5:
    call void @putch(i32 10)
    ret i32 0
L6:
    br label %L3
}
define i32 @func(i32 %r0,ptr %r1,i32 %r2,ptr %r3,i32 %r4,i32 %r5,ptr %r6,i32 %r7,i32 %r8)
{
L0:
    br label %L1
L1:
    br label %L10
L3:
    %r65 = phi i32 [%r28,%L4],[0,%L10]
    %r24 = getelementptr i32, ptr %r71, i32 %r65
    %r25 = load i32, ptr %r24
    call void @putint(i32 %r25)
    %r28 = add i32 %r65,1
    br label %L4
L4:
    %r31 = icmp slt i32 %r28,10
    br i1 %r31, label %L3, label %L5
L5:
    call void @putch(i32 10)
    %r36 = getelementptr i32, ptr %r3, i32 %r2
    %r37 = load i32, ptr %r36
    call void @putint(i32 %r37)
    call void @putch(i32 10)
    %r41 = icmp slt i32 %r8,10
    br i1 %r41, label %L11, label %L9
L7:
    %r69 = phi i32 [%r8,%L11],[%r53,%L8]
    %r67 = phi i32 [%r7,%L11],[%r56,%L8]
    %r46 = mul i32 %r67,128875
    %r48 = srem i32 %r46,3724
    %r50 = getelementptr i32, ptr %r6, i32 %r69
    store i32 %r48, ptr %r50
    %r53 = add i32 %r69,1
    %r56 = add i32 %r67,7
    br label %L8
L8:
    %r59 = icmp slt i32 %r53,10
    br i1 %r59, label %L7, label %L9
L9:
    %r64 = add i32 %r4,%r5
    ret i32 %r64
L10:
    %r71 = getelementptr [59 x i32], ptr %r1, i32 %r0
    br label %L3
L11:
    br label %L7
}
