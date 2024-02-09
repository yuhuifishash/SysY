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
    %r19 = alloca i32
    %r12 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 893,0
    store i32 %r1, ptr %r0
    %r3 = add i32 716,0
    store i32 %r3, ptr %r2
    %r5 = add i32 837,0
    store i32 %r5, ptr %r4
    %r6 = load i32, ptr %r4
    %r7 = add i32 128,0
    %r8 = add i32 %r6,%r7
    store i32 %r8, ptr %r4
    %r9 = load i32, ptr %r2
    %r10 = load i32, ptr %r4
    %r11 = add i32 %r9,%r10
    store i32 %r11, ptr %r2
    %r13 = add i32 241,0
    store i32 %r13, ptr %r12
    %r14 = load i32, ptr %r4
    %r15 = load i32, ptr %r12
    %r16 = add i32 %r14,%r15
    %r17 = add i32 412,0
    %r18 = sub i32 %r16,%r17
    store i32 %r18, ptr %r4
    %r20 = add i32 771,0
    store i32 %r20, ptr %r19
    %r21 = load i32, ptr %r12
    %r22 = load i32, ptr %r19
    %r23 = add i32 %r21,%r22
    %r24 = add i32 18,0
    %r25 = sub i32 %r23,%r24
    store i32 %r25, ptr %r12
    %r26 = load i32, ptr %r12
    %r27 = add i32 66,0
    %r28 = add i32 %r26,%r27
    store i32 %r28, ptr %r19
    %r29 = load i32, ptr %r12
    %r30 = load i32, ptr %r4
    %r31 = add i32 %r29,%r30
    %r32 = add i32 33,0
    %r33 = sub i32 %r31,%r32
    store i32 %r33, ptr %r12
    %r34 = load i32, ptr %r12
    %r35 = add i32 55,0
    %r36 = sub i32 %r34,%r35
    store i32 %r36, ptr %r4
    %r37 = load i32, ptr %r4
    %r38 = load i32, ptr %r12
    %r39 = add i32 %r37,%r38
    %r40 = add i32 21,0
    %r41 = srem i32 %r39,%r40
    ret i32 %r41
    %r42 = load i32, ptr %r2
    %r43 = load i32, ptr %r4
    %r44 = add i32 %r42,%r43
    %r45 = add i32 97,0
    %r46 = sub i32 %r44,%r45
    store i32 %r46, ptr %r4
    %r47 = load i32, ptr %r2
    %r48 = load i32, ptr %r4
    %r49 = sub i32 %r47,%r48
    %r50 = add i32 62,0
    %r51 = srem i32 %r49,%r50
    store i32 %r51, ptr %r2
    %r52 = load i32, ptr %r4
    %r53 = load i32, ptr %r2
    %r54 = add i32 %r52,%r53
    %r55 = add i32 17,0
    %r56 = srem i32 %r54,%r55
    ret i32 %r56
    %r57 = load i32, ptr %r4
    %r58 = load i32, ptr %r2
    %r59 = add i32 %r57,%r58
    %r60 = add i32 13,0
    %r61 = srem i32 %r59,%r60
    ret i32 %r61
    %r62 = load i32, ptr %r2
    %r63 = load i32, ptr %r0
    %r64 = mul i32 %r62,%r63
    %r65 = add i32 83,0
    %r66 = srem i32 %r64,%r65
    store i32 %r66, ptr %r0
    %r67 = load i32, ptr %r0
    %r68 = load i32, ptr %r2
    %r69 = add i32 %r67,%r68
    %r70 = add i32 771,0
    %r71 = sub i32 %r69,%r70
    store i32 %r71, ptr %r2
    %r72 = load i32, ptr %r0
    %r73 = load i32, ptr %r2
    %r74 = add i32 %r72,%r73
    %r75 = add i32 11,0
    %r76 = srem i32 %r74,%r75
    ret i32 %r76
}
