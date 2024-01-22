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
    br label %L1
L1:
    %r104 = call i32 @testParam8(i32 0,i32 1,i32 2,i32 3,i32 4,i32 5,i32 6,i32 7)
    %r120 = call i32 @testParam16(i32 %r104,i32 1,i32 2,i32 3,i32 4,i32 5,i32 6,i32 7,i32 8,i32 9,i32 0,i32 1,i32 2,i32 3,i32 4,i32 5)
    %r152 = call i32 @testParam32(i32 %r120,i32 1,i32 2,i32 3,i32 4,i32 5,i32 6,i32 7,i32 8,i32 9,i32 0,i32 1,i32 2,i32 3,i32 4,i32 5,i32 6,i32 7,i32 8,i32 9,i32 0,i32 1,i32 2,i32 3,i32 4,i32 5,i32 6,i32 7,i32 8,i32 9,i32 0,i32 1)
    call void @putint(i32 %r152)
    ret i32 0
}
define i32 @testParam32(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7,i32 %r8,i32 %r9,i32 %r10,i32 %r11,i32 %r12,i32 %r13,i32 %r14,i32 %r15,i32 %r16,i32 %r17,i32 %r18,i32 %r19,i32 %r20,i32 %r21,i32 %r22,i32 %r23,i32 %r24,i32 %r25,i32 %r26,i32 %r27,i32 %r28,i32 %r29,i32 %r30,i32 %r31)
{
L0:
    br label %L1
L1:
    %r67 = mul i32 %r1,%r2
    %r68 = add i32 %r0,%r67
    %r70 = add i32 %r68,%r3
    %r72 = add i32 %r70,%r4
    %r74 = add i32 %r72,%r5
    %r76 = add i32 %r74,%r6
    %r78 = add i32 %r76,%r7
    %r80 = add i32 %r78,%r8
    %r82 = add i32 %r80,%r9
    %r84 = add i32 %r82,%r10
    %r86 = add i32 %r84,%r11
    %r88 = sub i32 %r86,%r12
    %r90 = sub i32 %r88,%r13
    %r92 = sub i32 %r90,%r14
    %r94 = sub i32 %r92,%r15
    %r96 = sub i32 %r94,%r16
    %r98 = sub i32 %r96,%r17
    %r100 = sub i32 %r98,%r18
    %r102 = sub i32 %r100,%r19
    %r104 = sub i32 %r102,%r20
    %r106 = sub i32 %r104,%r21
    %r108 = add i32 %r106,%r22
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
define i32 @testParam16(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7,i32 %r8,i32 %r9,i32 %r10,i32 %r11,i32 %r12,i32 %r13,i32 %r14,i32 %r15)
{
L0:
    br label %L1
L1:
    %r34 = add i32 %r0,%r1
    %r36 = add i32 %r34,%r2
    %r38 = add i32 %r36,%r3
    %r40 = sub i32 %r38,%r4
    %r42 = add i32 %r40,%r5
    %r44 = add i32 %r42,%r6
    %r46 = add i32 %r44,%r7
    %r48 = sub i32 %r46,%r8
    %r50 = add i32 %r48,%r9
    %r52 = sub i32 %r50,%r10
    %r54 = add i32 %r52,%r11
    %r56 = add i32 %r54,%r12
    %r58 = add i32 %r56,%r13
    %r60 = add i32 %r58,%r14
    %r62 = add i32 %r60,%r15
    ret i32 %r62
}
define i32 @testParam8(i32 %r0,i32 %r1,i32 %r2,i32 %r3,i32 %r4,i32 %r5,i32 %r6,i32 %r7)
{
L0:
    br label %L1
L1:
    %r18 = sub i32 %r0,%r1
    %r20 = add i32 %r18,%r2
    %r22 = sub i32 %r20,%r3
    %r24 = sub i32 %r22,%r4
    %r26 = sub i32 %r24,%r5
    %r28 = add i32 %r26,%r6
    %r30 = add i32 %r28,%r7
    ret i32 %r30
}
