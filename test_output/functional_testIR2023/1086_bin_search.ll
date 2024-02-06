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
    %r46 = load i32, ptr %r31
    %r47 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r46
    %r48 = load i32, ptr %r47
    %r49 = load i32, ptr %r25
    %r50 = icmp ne i32 %r48,%r49
    br i1 %r50, label %L10, label %L9
L7:
    %r61 = load i32, ptr %r27
    %r62 = load i32, ptr %r29
    %r63 = add i32 %r61,%r62
    %r64 = add i32 0,2
    %r65 = sdiv i32 %r63,%r64
    store i32 %r65, ptr %r31
    %r66 = load i32, ptr %r25
    %r67 = load i32, ptr %r31
    %r68 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r67
    %r69 = load i32, ptr %r68
    %r70 = icmp slt i32 %r66,%r69
    br i1 %r70, label %L12, label %L13
L8:
    %r79 = load i32, ptr %r31
    %r80 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r79
    %r81 = load i32, ptr %r80
    %r82 = load i32, ptr %r25
    %r83 = icmp ne i32 %r81,%r82
    br i1 %r83, label %L15, label %L9
L9:
    %r94 = load i32, ptr %r25
    %r95 = load i32, ptr %r31
    %r96 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r95
    %r97 = load i32, ptr %r96
    %r98 = icmp eq i32 %r94,%r97
    br i1 %r98, label %L17, label %L18
L10:
    %r53 = load i32, ptr %r29
    %r54 = load i32, ptr %r27
    %r55 = icmp slt i32 %r53,%r54
    br i1 %r55, label %L7, label %L9
L12:
    %r73 = load i32, ptr %r31
    %r74 = add i32 0,1
    %r75 = sub i32 %r73,%r74
    store i32 %r75, ptr %r27
    br label %L14
L13:
    %r76 = load i32, ptr %r31
    %r77 = add i32 0,1
    %r78 = add i32 %r76,%r77
    store i32 %r78, ptr %r29
    br label %L14
L14:
    br label %L8
L15:
    %r86 = load i32, ptr %r29
    %r87 = load i32, ptr %r27
    %r88 = icmp slt i32 %r86,%r87
    br i1 %r88, label %L7, label %L9
L17:
    %r101 = load i32, ptr %r25
    call void @putint(i32 %r101)
    br label %L19
L18:
    %r102 = add i32 0,0
    store i32 %r102, ptr %r25
    %r103 = load i32, ptr %r25
    call void @putint(i32 %r103)
    br label %L19
L19:
    %r104 = add i32 0,10
    store i32 %r104, ptr %r25
    %r105 = load i32, ptr %r25
    call void @putch(i32 %r105)
    %r106 = add i32 0,0
    ret i32 %r106
}
