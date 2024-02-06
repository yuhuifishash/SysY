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
    %r50 = alloca i32
    %r46 = alloca i32
    %r33 = alloca i32
    %r31 = alloca i32
    %r29 = alloca i32
    %r27 = alloca i32
    %r25 = alloca i32
    %r4 = alloca [10 x i32]
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r5 = add i32 0,0
    store i32 %r5, ptr %r2
    %r6 = add i32 0,0
    store i32 %r6, ptr %r0
    %r7 = load i32, ptr %r0
    %r8 = add i32 0,10
    %r9 = icmp slt i32 %r7,%r8
    br i1 %r9, label %L3, label %L5
L3:
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
    br label %L4
L4:
    %r20 = load i32, ptr %r0
    %r21 = add i32 0,10
    %r22 = icmp slt i32 %r20,%r21
    br i1 %r22, label %L3, label %L5
L5:
    %r26 = add i32 0,0
    store i32 %r26, ptr %r25
    %r28 = add i32 0,0
    store i32 %r28, ptr %r27
    %r30 = add i32 0,0
    store i32 %r30, ptr %r29
    %r32 = add i32 0,0
    store i32 %r32, ptr %r31
    %r34 = add i32 0,0
    store i32 %r34, ptr %r33
    %r35 = add i32 0,10
    store i32 %r35, ptr %r33
    %r36 = call i32 @getint()
    store i32 %r36, ptr %r25
    %r37 = load i32, ptr %r33
    %r38 = add i32 0,1
    %r39 = sub i32 %r37,%r38
    store i32 %r39, ptr %r27
    %r40 = add i32 0,0
    store i32 %r40, ptr %r29
    %r41 = load i32, ptr %r27
    %r42 = load i32, ptr %r29
    %r43 = add i32 %r41,%r42
    %r44 = add i32 0,2
    %r45 = sdiv i32 %r43,%r44
    store i32 %r45, ptr %r31
    %r47 = add i32 0,0
    store i32 %r47, ptr %r46
    %r48 = add i32 0,0
    store i32 %r48, ptr %r46
    %r49 = add i32 0,0
    store i32 %r49, ptr %r0
    %r51 = add i32 0,0
    store i32 %r51, ptr %r50
    %r52 = add i32 0,0
    store i32 %r52, ptr %r50
    %r53 = load i32, ptr %r0
    %r54 = add i32 0,10
    %r55 = icmp slt i32 %r53,%r54
    br i1 %r55, label %L10, label %L9
L7:
    %r66 = load i32, ptr %r0
    %r67 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r66
    %r68 = load i32, ptr %r67
    %r69 = load i32, ptr %r25
    %r70 = icmp eq i32 %r68,%r69
    br i1 %r70, label %L12, label %L13
L8:
    %r78 = load i32, ptr %r0
    %r79 = add i32 0,10
    %r80 = icmp slt i32 %r78,%r79
    br i1 %r80, label %L14, label %L9
L9:
    %r91 = load i32, ptr %r46
    %r92 = add i32 0,1
    %r93 = icmp eq i32 %r91,%r92
    br i1 %r93, label %L16, label %L17
L10:
    %r58 = load i32, ptr %r46
    %r59 = add i32 0,0
    %r60 = icmp eq i32 %r58,%r59
    br i1 %r60, label %L7, label %L9
L12:
    %r73 = add i32 0,1
    store i32 %r73, ptr %r46
    %r74 = load i32, ptr %r0
    store i32 %r74, ptr %r50
    br label %L13
L13:
    %r75 = load i32, ptr %r0
    %r76 = add i32 0,1
    %r77 = add i32 %r75,%r76
    store i32 %r77, ptr %r0
    br label %L8
L14:
    %r83 = load i32, ptr %r46
    %r84 = add i32 0,0
    %r85 = icmp eq i32 %r83,%r84
    br i1 %r85, label %L7, label %L9
L16:
    %r96 = load i32, ptr %r50
    call void @putint(i32 %r96)
    br label %L18
L17:
    %r97 = add i32 0,0
    store i32 %r97, ptr %r25
    %r98 = load i32, ptr %r25
    call void @putint(i32 %r98)
    br label %L18
L18:
    %r99 = add i32 0,10
    store i32 %r99, ptr %r25
    %r100 = load i32, ptr %r25
    call void @putch(i32 %r100)
    %r101 = add i32 0,0
    ret i32 %r101
}
