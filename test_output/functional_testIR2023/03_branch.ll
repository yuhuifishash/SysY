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
L0:  ;
    %r10 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 1,0
    store i32 %r1, ptr %r0
    %r3 = add i32 2,0
    store i32 %r3, ptr %r2
    %r5 = add i32 3,0
    store i32 %r5, ptr %r4
    %r7 = add i32 4,0
    store i32 %r7, ptr %r6
    %r9 = add i32 5,0
    store i32 %r9, ptr %r8
    %r11 = add i32 6,0
    store i32 %r11, ptr %r10
    %r12 = load i32, ptr %r0
    %r13 = load i32, ptr %r2
    %r14 = mul i32 %r12,%r13
    %r15 = load i32, ptr %r4
    %r16 = add i32 %r14,%r15
    %r17 = add i32 6,0
    %r18 = icmp slt i32 %r16,%r17
    br i1 %r18, label %L5, label %L3
L2:  ;
    %r22 = load i32, ptr %r8
    %r23 = icmp ne i32 %r22,0
    br i1 %r23, label %L6, label %L9
L3:  ;
    %r80 = add i32 1,0
    ret i32 %r80
L5:  ;
    %r19 = load i32, ptr %r6
    %r20 = add i32 0,0
    %r21 = icmp ne i32 %r19,%r20
    br i1 %r21, label %L2, label %L3
L6:  ;
    %r30 = load i32, ptr %r4
    %r31 = add i32 2,0
    %r32 = icmp eq i32 %r30,%r31
    br i1 %r32, label %L13, label %L11
L7:  ;
    %r79 = add i32 2,0
    ret i32 %r79
L9:  ;
    %r24 = load i32, ptr %r0
    %r25 = icmp eq i32 %r24,0
    %r26 = add i32 0,0
    %r27 = zext i1 %r25 to i32
    %r28 = add i32 %r27,%r26
    %r29 = icmp ne i32 %r28,0
    br i1 %r29, label %L6, label %L7
L10:  ;
    %r38 = add i32 3,0
    ret i32 %r38
L11:  ;
    %r39 = load i32, ptr %r10
    %r40 = load i32, ptr %r4
    %r41 = srem i32 %r39,%r40
    %r42 = icmp ne i32 %r41,0
    br i1 %r42, label %L17, label %L15
L13:  ;
    %r33 = load i32, ptr %r6
    %r34 = load i32, ptr %r8
    %r35 = add i32 %r33,%r34
    %r36 = add i32 2,0
    %r37 = icmp sgt i32 %r35,%r36
    br i1 %r37, label %L10, label %L11
L14:  ;
    %r45 = add i32 4,0
    ret i32 %r45
L15:  ;
    %r46 = load i32, ptr %r6
    %r47 = load i32, ptr %r2
    %r48 = sdiv i32 %r46,%r47
    %r49 = load i32, ptr %r0
    %r50 = add i32 %r48,%r49
    %r51 = add i32 2,0
    %r52 = icmp sge i32 %r50,%r51
    br i1 %r52, label %L18, label %L19
L17:  ;
    %r43 = load i32, ptr %r8
    %r44 = icmp ne i32 %r43,0
    br i1 %r44, label %L14, label %L15
L18:  ;
    %r53 = load i32, ptr %r8
    %r54 = load i32, ptr %r10
    %r55 = sub i32 %r53,%r54
    %r56 = add i32 0,0
    %r57 = icmp sge i32 %r55,%r56
    br i1 %r57, label %L21, label %L24
L19:  ;
    %r78 = add i32 5,0
    ret i32 %r78
L21:  ;
    %r61 = add i32 6,0
    ret i32 %r61
L22:  ;
    %r62 = load i32, ptr %r4
    %r63 = load i32, ptr %r10
    %r64 = icmp ne i32 %r62,%r63
    br i1 %r64, label %L25, label %L26
L24:  ;
    %r58 = load i32, ptr %r6
    %r59 = add i32 4,0
    %r60 = icmp sgt i32 %r58,%r59
    br i1 %r60, label %L21, label %L22
L25:  ;
    %r65 = load i32, ptr %r2
    %r66 = load i32, ptr %r8
    %r67 = load i32, ptr %r6
    %r68 = mul i32 %r66,%r67
    %r69 = add i32 %r65,%r68
    %r70 = add i32 10,0
    %r71 = icmp sgt i32 %r69,%r70
    br i1 %r71, label %L28, label %L29
L26:  ;
    %r77 = add i32 7,0
    ret i32 %r77
L28:  ;
    %r72 = load i32, ptr %r10
    %r73 = icmp eq i32 %r72,0
    br i1 %r73, label %L31, label %L32
L29:  ;
    %r76 = add i32 8,0
    ret i32 %r76
L31:  ;
    %r74 = add i32 9,0
    ret i32 %r74
L32:  ;
    %r75 = add i32 10,0
    ret i32 %r75
}
