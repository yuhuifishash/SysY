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
@a0 = global i32 zeroinitializer
@a1 = global i32 zeroinitializer
@a2 = global i32 zeroinitializer
@a3 = global i32 zeroinitializer
@a4 = global i32 zeroinitializer
@a5 = global i32 zeroinitializer
@a6 = global i32 zeroinitializer
@a7 = global i32 zeroinitializer
@a8 = global i32 zeroinitializer
@a9 = global i32 zeroinitializer
@a10 = global i32 zeroinitializer
@a11 = global i32 zeroinitializer
@a12 = global i32 zeroinitializer
@a13 = global i32 zeroinitializer
@a14 = global i32 zeroinitializer
@a15 = global i32 zeroinitializer
@a16 = global i32 zeroinitializer
@a17 = global i32 zeroinitializer
@a18 = global i32 zeroinitializer
@a19 = global i32 zeroinitializer
@a20 = global i32 zeroinitializer
@a21 = global i32 zeroinitializer
@a22 = global i32 zeroinitializer
@a23 = global i32 zeroinitializer
@a24 = global i32 zeroinitializer
@a25 = global i32 zeroinitializer
@a26 = global i32 zeroinitializer
@a27 = global i32 zeroinitializer
@a28 = global i32 zeroinitializer
@a29 = global i32 zeroinitializer
@a30 = global i32 zeroinitializer
@a31 = global i32 zeroinitializer
@a32 = global i32 zeroinitializer
@a33 = global i32 zeroinitializer
@a34 = global i32 zeroinitializer
@a35 = global i32 zeroinitializer
@a36 = global i32 zeroinitializer
@a37 = global i32 zeroinitializer
@a38 = global i32 zeroinitializer
@a39 = global i32 zeroinitializer
define i32 @testParam8(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7)
{
L0:
    br label %L1
L1:
    %r18 = add i32 %r0,%r1
    %r20 = add i32 %r18,%r2
    %r22 = add i32 %r20,%r3
    %r24 = add i32 %r22,%r4
    %r26 = add i32 %r24,%r5
    %r28 = add i32 %r26,%r6
    %r30 = add i32 %r28,%r7
    ret i32 %r30
}
define i32 @testParam16(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7,i32 %r8,i32 %r9,i32 %r10,i32 %r11,i32 %r12,i32 %r13,i32 %r14,i32 %r15)
{
L0:
    br label %L1
L1:
    %r34 = add i32 %r0,%r1
    %r36 = add i32 %r34,%r2
    %r38 = sub i32 %r36,%r3
    %r40 = sub i32 %r38,%r4
    %r42 = sub i32 %r40,%r5
    %r44 = sub i32 %r42,%r6
    %r46 = sub i32 %r44,%r7
    %r48 = add i32 %r46,%r8
    %r50 = add i32 %r48,%r9
    %r52 = add i32 %r50,%r10
    %r54 = add i32 %r52,%r11
    %r56 = add i32 %r54,%r12
    %r58 = add i32 %r56,%r13
    %r60 = add i32 %r58,%r14
    %r62 = add i32 %r60,%r15
    ret i32 %r62
}
define i32 @testParam32(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7,i32 %r8,i32 %r9,i32 %r10,i32 %r11,i32 %r12,i32 %r13,i32 %r14,i32 %r15,i32 %r16,i32 %r17,i32 %r18,i32 %r19,i32 %r20,i32 %r21,i32 %r22,i32 %r23,i32 %r24,i32 %r25,i32 %r26,i32 %r27,i32 %r28,i32 %r29,i32 %r30,i32 %r31)
{
L0:
    br label %L1
L1:
    %r66 = add i32 %r0,%r1
    %r68 = add i32 %r66,%r2
    %r70 = add i32 %r68,%r3
    %r72 = add i32 %r70,%r4
    %r74 = add i32 %r72,%r5
    %r76 = add i32 %r74,%r6
    %r78 = add i32 %r76,%r7
    %r80 = add i32 %r78,%r8
    %r82 = add i32 %r80,%r9
    %r84 = add i32 %r82,%r10
    %r86 = add i32 %r84,%r11
    %r88 = add i32 %r86,%r12
    %r90 = add i32 %r88,%r13
    %r92 = add i32 %r90,%r14
    %r94 = add i32 %r92,%r15
    %r96 = add i32 %r94,%r16
    %r98 = add i32 %r96,%r17
    %r100 = sub i32 %r98,%r18
    %r102 = sub i32 %r100,%r19
    %r104 = sub i32 %r102,%r20
    %r106 = sub i32 %r104,%r21
    %r108 = sub i32 %r106,%r22
    %r110 = add i32 %r108,%r23
    %r112 = add i32 %r110,%r24
    %r114 = add i32 %r112,%r25
    %r116 = add i32 %r114,%r26
    %r118 = add i32 %r116,%r27
    %r120 = add i32 %r118,%r28
    %r122 = add i32 %r120,%r29
    %r124 = add i32 %r122,%r30
    %r126 = add i32 %r124,%r31
    ret i32 %r126
}
define i32 @main()
{
L0:
    br label %L1
L1:
    store i32 0, ptr @a0
    store i32 1, ptr @a1
    store i32 2, ptr @a2
    store i32 3, ptr @a3
    store i32 4, ptr @a4
    store i32 5, ptr @a5
    store i32 6, ptr @a6
    store i32 7, ptr @a7
    store i32 8, ptr @a8
    store i32 9, ptr @a9
    store i32 0, ptr @a10
    store i32 1, ptr @a11
    store i32 2, ptr @a12
    store i32 3, ptr @a13
    store i32 4, ptr @a14
    store i32 5, ptr @a15
    store i32 6, ptr @a16
    store i32 7, ptr @a17
    store i32 8, ptr @a18
    store i32 9, ptr @a19
    store i32 0, ptr @a20
    store i32 1, ptr @a21
    store i32 2, ptr @a22
    store i32 3, ptr @a23
    store i32 4, ptr @a24
    store i32 5, ptr @a25
    store i32 6, ptr @a26
    store i32 7, ptr @a27
    store i32 8, ptr @a28
    store i32 9, ptr @a29
    store i32 0, ptr @a30
    store i32 1, ptr @a31
    store i32 4, ptr @a32
    store i32 5, ptr @a33
    store i32 6, ptr @a34
    store i32 7, ptr @a35
    store i32 8, ptr @a36
    store i32 9, ptr @a37
    store i32 0, ptr @a38
    store i32 1, ptr @a39
    %r40 = load i32, ptr @a0
    %r41 = load i32, ptr @a1
    %r42 = load i32, ptr @a2
    %r43 = load i32, ptr @a3
    %r44 = load i32, ptr @a4
    %r45 = load i32, ptr @a5
    %r46 = load i32, ptr @a6
    %r47 = load i32, ptr @a7
    %r48 = call i32 @testParam8(i32 %r40,i32 %r41,i32 %r42,i32 %r43,i32 %r44,i32 %r45,i32 %r46,i32 %r47)
    store i32 %r48, ptr @a0
    %r49 = load i32, ptr @a0
    call void @putint(i32 %r49)
    %r50 = load i32, ptr @a32
    %r51 = load i32, ptr @a33
    %r52 = load i32, ptr @a34
    %r53 = load i32, ptr @a35
    %r54 = load i32, ptr @a36
    %r55 = load i32, ptr @a37
    %r56 = load i32, ptr @a38
    %r57 = load i32, ptr @a39
    %r58 = load i32, ptr @a8
    %r59 = load i32, ptr @a9
    %r60 = load i32, ptr @a10
    %r61 = load i32, ptr @a11
    %r62 = load i32, ptr @a12
    %r63 = load i32, ptr @a13
    %r64 = load i32, ptr @a14
    %r65 = load i32, ptr @a15
    %r66 = call i32 @testParam16(i32 %r50,i32 %r51,i32 %r52,i32 %r53,i32 %r54,i32 %r55,i32 %r56,i32 %r57,i32 %r58,i32 %r59,i32 %r60,i32 %r61,i32 %r62,i32 %r63,i32 %r64,i32 %r65)
    store i32 %r66, ptr @a0
    %r67 = load i32, ptr @a0
    call void @putint(i32 %r67)
    %r69 = load i32, ptr @a1
    %r70 = load i32, ptr @a2
    %r71 = load i32, ptr @a3
    %r72 = load i32, ptr @a4
    %r73 = load i32, ptr @a5
    %r74 = load i32, ptr @a6
    %r75 = load i32, ptr @a7
    %r76 = load i32, ptr @a8
    %r77 = load i32, ptr @a9
    %r78 = load i32, ptr @a10
    %r79 = load i32, ptr @a11
    %r80 = load i32, ptr @a12
    %r81 = load i32, ptr @a13
    %r82 = load i32, ptr @a14
    %r83 = load i32, ptr @a15
    %r84 = load i32, ptr @a16
    %r85 = load i32, ptr @a17
    %r86 = load i32, ptr @a18
    %r87 = load i32, ptr @a19
    %r88 = load i32, ptr @a20
    %r89 = load i32, ptr @a21
    %r90 = load i32, ptr @a22
    %r91 = load i32, ptr @a23
    %r92 = load i32, ptr @a24
    %r93 = load i32, ptr @a25
    %r94 = load i32, ptr @a26
    %r95 = load i32, ptr @a27
    %r96 = load i32, ptr @a28
    %r97 = load i32, ptr @a29
    %r98 = load i32, ptr @a30
    %r99 = load i32, ptr @a31
    %r100 = call i32 @testParam32(i32 %r67,i32 %r69,i32 %r70,i32 %r71,i32 %r72,i32 %r73,i32 %r74,i32 %r75,i32 %r76,i32 %r77,i32 %r78,i32 %r79,i32 %r80,i32 %r81,i32 %r82,i32 %r83,i32 %r84,i32 %r85,i32 %r86,i32 %r87,i32 %r88,i32 %r89,i32 %r90,i32 %r91,i32 %r92,i32 %r93,i32 %r94,i32 %r95,i32 %r96,i32 %r97,i32 %r98,i32 %r99)
    store i32 %r100, ptr @a0
    %r101 = load i32, ptr @a0
    call void @putint(i32 %r101)
    ret i32 0
}
