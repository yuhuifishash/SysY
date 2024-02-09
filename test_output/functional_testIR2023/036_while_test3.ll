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
L0:
    %r6 = alloca i32
    %r3 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r0
    %r1 = add i32 5,0
    store i32 %r1, ptr %r0
    store i32 0, ptr %r2
    store i32 0, ptr %r3
    %r4 = add i32 6,0
    store i32 %r4, ptr %r2
    %r5 = add i32 7,0
    store i32 %r5, ptr %r3
    store i32 0, ptr %r6
    %r7 = add i32 10,0
    store i32 %r7, ptr %r6
    br label %L2
L2:
    %r8 = load i32, ptr %r0
    %r9 = add i32 20,0
    %r10 = icmp slt i32 %r8,%r9
    br i1 %r10, label %L3, label %L4
L3:
    %r11 = load i32, ptr %r0
    %r12 = add i32 3,0
    %r13 = add i32 %r11,%r12
    store i32 %r13, ptr %r0
    br label %L5
L4:
    %r77 = load i32, ptr %r0
    %r78 = load i32, ptr %r2
    %r79 = load i32, ptr %r6
    %r80 = add i32 %r78,%r79
    %r81 = add i32 %r77,%r80
    %r82 = load i32, ptr %r3
    %r83 = add i32 %r81,%r82
    %r84 = load i32, ptr @e
    %r85 = load i32, ptr %r6
    %r86 = add i32 %r84,%r85
    %r87 = load i32, ptr @g
    %r88 = sub i32 %r86,%r87
    %r89 = load i32, ptr @h
    %r90 = add i32 %r88,%r89
    %r91 = sub i32 %r83,%r90
    ret i32 %r91
L5:
    %r14 = load i32, ptr %r2
    %r15 = add i32 10,0
    %r16 = icmp slt i32 %r14,%r15
    br i1 %r16, label %L6, label %L7
L6:
    %r17 = load i32, ptr %r2
    %r18 = add i32 1,0
    %r19 = add i32 %r17,%r18
    store i32 %r19, ptr %r2
    br label %L8
L7:
    %r74 = load i32, ptr %r2
    %r75 = add i32 2,0
    %r76 = sub i32 %r74,%r75
    store i32 %r76, ptr %r2
    br label %L2
L8:
    %r20 = load i32, ptr %r3
    %r21 = add i32 7,0
    %r22 = icmp eq i32 %r20,%r21
    br i1 %r22, label %L9, label %L10
L9:
    %r23 = load i32, ptr %r3
    %r24 = add i32 1,0
    %r25 = sub i32 %r23,%r24
    store i32 %r25, ptr %r3
    br label %L11
L10:
    %r71 = load i32, ptr %r3
    %r72 = add i32 1,0
    %r73 = add i32 %r71,%r72
    store i32 %r73, ptr %r3
    br label %L5
L11:
    %r26 = load i32, ptr %r6
    %r27 = add i32 20,0
    %r28 = icmp slt i32 %r26,%r27
    br i1 %r28, label %L12, label %L13
L12:
    %r29 = load i32, ptr %r6
    %r30 = add i32 3,0
    %r31 = add i32 %r29,%r30
    store i32 %r31, ptr %r6
    br label %L14
L13:
    %r68 = load i32, ptr %r6
    %r69 = add i32 1,0
    %r70 = sub i32 %r68,%r69
    store i32 %r70, ptr %r6
    br label %L8
L14:
    %r32 = load i32, ptr @e
    %r33 = add i32 1,0
    %r34 = icmp sgt i32 %r32,%r33
    br i1 %r34, label %L15, label %L16
L15:
    %r35 = load i32, ptr @e
    %r36 = add i32 1,0
    %r37 = sub i32 %r35,%r36
    store i32 %r37, ptr @e
    br label %L17
L16:
    %r65 = load i32, ptr @e
    %r66 = add i32 1,0
    %r67 = add i32 %r65,%r66
    store i32 %r67, ptr @e
    br label %L11
L17:
    %r38 = load i32, ptr @f
    %r39 = add i32 2,0
    %r40 = icmp sgt i32 %r38,%r39
    br i1 %r40, label %L18, label %L19
L18:
    %r41 = load i32, ptr @f
    %r42 = add i32 2,0
    %r43 = sub i32 %r41,%r42
    store i32 %r43, ptr @f
    br label %L20
L19:
    %r62 = load i32, ptr @f
    %r63 = add i32 1,0
    %r64 = add i32 %r62,%r63
    store i32 %r64, ptr @f
    br label %L14
L20:
    %r44 = load i32, ptr @g
    %r45 = add i32 3,0
    %r46 = icmp slt i32 %r44,%r45
    br i1 %r46, label %L21, label %L22
L21:
    %r47 = load i32, ptr @g
    %r48 = add i32 10,0
    %r49 = add i32 %r47,%r48
    store i32 %r49, ptr @g
    br label %L23
L22:
    %r59 = load i32, ptr @g
    %r60 = add i32 8,0
    %r61 = sub i32 %r59,%r60
    store i32 %r61, ptr @g
    br label %L17
L23:
    %r50 = load i32, ptr @h
    %r51 = add i32 10,0
    %r52 = icmp slt i32 %r50,%r51
    br i1 %r52, label %L24, label %L25
L24:
    %r53 = load i32, ptr @h
    %r54 = add i32 8,0
    %r55 = add i32 %r53,%r54
    store i32 %r55, ptr @h
    br label %L23
L25:
    %r56 = load i32, ptr @h
    %r57 = add i32 1,0
    %r58 = sub i32 %r56,%r57
    store i32 %r58, ptr @h
    br label %L20
}
define i32 @main()
{
L0:
    br label %L1
L1:
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
