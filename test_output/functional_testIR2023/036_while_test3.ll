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
@g = global i32 zeroinitializer
@h = global i32 zeroinitializer
@f = global i32 zeroinitializer
@e = global i32 zeroinitializer
define i32 @EightWhile()
{
L0:  ;
    %r9 = alloca i32
    %r5 = alloca i32
    %r3 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r2 = add i32 5,0
    store i32 %r2, ptr %r0
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = add i32 6,0
    store i32 %r7, ptr %r3
    %r8 = add i32 7,0
    store i32 %r8, ptr %r5
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = add i32 10,0
    store i32 %r11, ptr %r9
    br label %L2
L2:  ;
    %r12 = load i32, ptr %r0
    %r13 = add i32 20,0
    %r14 = icmp slt i32 %r12,%r13
    br i1 %r14, label %L3, label %L4
L3:  ;
    %r15 = load i32, ptr %r0
    %r16 = add i32 3,0
    %r17 = add i32 %r15,%r16
    store i32 %r17, ptr %r0
    br label %L5
L4:  ;
    %r81 = load i32, ptr %r0
    %r82 = load i32, ptr %r3
    %r83 = load i32, ptr %r9
    %r84 = add i32 %r82,%r83
    %r85 = add i32 %r81,%r84
    %r86 = load i32, ptr %r5
    %r87 = add i32 %r85,%r86
    %r88 = load i32, ptr @e
    %r89 = load i32, ptr %r9
    %r90 = add i32 %r88,%r89
    %r91 = load i32, ptr @g
    %r92 = sub i32 %r90,%r91
    %r93 = load i32, ptr @h
    %r94 = add i32 %r92,%r93
    %r95 = sub i32 %r87,%r94
    ret i32 %r95
L5:  ;
    %r18 = load i32, ptr %r3
    %r19 = add i32 10,0
    %r20 = icmp slt i32 %r18,%r19
    br i1 %r20, label %L6, label %L7
L6:  ;
    %r21 = load i32, ptr %r3
    %r22 = add i32 1,0
    %r23 = add i32 %r21,%r22
    store i32 %r23, ptr %r3
    br label %L8
L7:  ;
    %r78 = load i32, ptr %r3
    %r79 = add i32 2,0
    %r80 = sub i32 %r78,%r79
    store i32 %r80, ptr %r3
    br label %L2
L8:  ;
    %r24 = load i32, ptr %r5
    %r25 = add i32 7,0
    %r26 = icmp eq i32 %r24,%r25
    br i1 %r26, label %L9, label %L10
L9:  ;
    %r27 = load i32, ptr %r5
    %r28 = add i32 1,0
    %r29 = sub i32 %r27,%r28
    store i32 %r29, ptr %r5
    br label %L11
L10:  ;
    %r75 = load i32, ptr %r5
    %r76 = add i32 1,0
    %r77 = add i32 %r75,%r76
    store i32 %r77, ptr %r5
    br label %L5
L11:  ;
    %r30 = load i32, ptr %r9
    %r31 = add i32 20,0
    %r32 = icmp slt i32 %r30,%r31
    br i1 %r32, label %L12, label %L13
L12:  ;
    %r33 = load i32, ptr %r9
    %r34 = add i32 3,0
    %r35 = add i32 %r33,%r34
    store i32 %r35, ptr %r9
    br label %L14
L13:  ;
    %r72 = load i32, ptr %r9
    %r73 = add i32 1,0
    %r74 = sub i32 %r72,%r73
    store i32 %r74, ptr %r9
    br label %L8
L14:  ;
    %r36 = load i32, ptr @e
    %r37 = add i32 1,0
    %r38 = icmp sgt i32 %r36,%r37
    br i1 %r38, label %L15, label %L16
L15:  ;
    %r39 = load i32, ptr @e
    %r40 = add i32 1,0
    %r41 = sub i32 %r39,%r40
    store i32 %r41, ptr @e
    br label %L17
L16:  ;
    %r69 = load i32, ptr @e
    %r70 = add i32 1,0
    %r71 = add i32 %r69,%r70
    store i32 %r71, ptr @e
    br label %L11
L17:  ;
    %r42 = load i32, ptr @f
    %r43 = add i32 2,0
    %r44 = icmp sgt i32 %r42,%r43
    br i1 %r44, label %L18, label %L19
L18:  ;
    %r45 = load i32, ptr @f
    %r46 = add i32 2,0
    %r47 = sub i32 %r45,%r46
    store i32 %r47, ptr @f
    br label %L20
L19:  ;
    %r66 = load i32, ptr @f
    %r67 = add i32 1,0
    %r68 = add i32 %r66,%r67
    store i32 %r68, ptr @f
    br label %L14
L20:  ;
    %r48 = load i32, ptr @g
    %r49 = add i32 3,0
    %r50 = icmp slt i32 %r48,%r49
    br i1 %r50, label %L21, label %L22
L21:  ;
    %r51 = load i32, ptr @g
    %r52 = add i32 10,0
    %r53 = add i32 %r51,%r52
    store i32 %r53, ptr @g
    br label %L23
L22:  ;
    %r63 = load i32, ptr @g
    %r64 = add i32 8,0
    %r65 = sub i32 %r63,%r64
    store i32 %r65, ptr @g
    br label %L17
L23:  ;
    %r54 = load i32, ptr @h
    %r55 = add i32 10,0
    %r56 = icmp slt i32 %r54,%r55
    br i1 %r56, label %L24, label %L25
L24:  ;
    %r57 = load i32, ptr @h
    %r58 = add i32 8,0
    %r59 = add i32 %r57,%r58
    store i32 %r59, ptr @h
    br label %L23
L25:  ;
    %r60 = load i32, ptr @h
    %r61 = add i32 1,0
    %r62 = sub i32 %r60,%r61
    store i32 %r62, ptr @h
    br label %L20
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    %r0 = add i32 1,0
    store i32 %r0, ptr @g
    %r1 = add i32 2,0
    store i32 %r1, ptr @h
    %r2 = add i32 4,0
    store i32 %r2, ptr @e
    %r3 = add i32 6,0
    store i32 %r3, ptr @f
    %r4 = call i32 @EightWhile()
    ret i32 %r4
}
