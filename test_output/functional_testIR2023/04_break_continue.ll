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
    %r39 = alloca i32
    %r17 = alloca i32
    %r12 = alloca i32
    %r7 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    br label %L2
L2:
    %r4 = load i32, ptr %r2
    %r5 = add i32 20,0
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L4
L3:
    %r8 = add i32 0,0
    store i32 %r8, ptr %r7
    br label %L5
L4:
    %r72 = load i32, ptr %r0
    ret i32 %r72
L5:
    %r9 = load i32, ptr %r7
    %r10 = add i32 10,0
    %r11 = icmp slt i32 %r9,%r10
    br i1 %r11, label %L6, label %L7
L6:
    %r13 = add i32 0,0
    store i32 %r13, ptr %r12
    br label %L8
L7:
    %r69 = load i32, ptr %r2
    %r70 = add i32 1,0
    %r71 = add i32 %r69,%r70
    store i32 %r71, ptr %r2
    br label %L2
L8:
    %r14 = load i32, ptr %r12
    %r15 = add i32 5,0
    %r16 = icmp slt i32 %r14,%r15
    br i1 %r16, label %L9, label %L10
L9:
    %r18 = add i32 0,0
    store i32 %r18, ptr %r17
    br label %L11
L10:
    %r63 = load i32, ptr %r7
    %r64 = add i32 1,0
    %r65 = add i32 %r63,%r64
    store i32 %r65, ptr %r7
    br label %L5
L11:
    %r19 = load i32, ptr %r17
    %r20 = add i32 3,0
    %r21 = icmp slt i32 %r19,%r20
    br i1 %r21, label %L12, label %L13
L12:
    %r22 = load i32, ptr %r17
    %r23 = add i32 1,0
    %r24 = add i32 %r22,%r23
    %r25 = add i32 3,0
    %r26 = icmp sge i32 %r24,%r25
    br i1 %r26, label %L14, label %L15
L13:
    br label %L30
L14:
    %r27 = load i32, ptr %r17
    %r28 = icmp ne i32 %r27,0
    br i1 %r28, label %L16, label %L17
L15:
    %r40 = add i32 0,0
    store i32 %r40, ptr %r39
    br label %L25
L16:
    %r29 = load i32, ptr %r17
    %r30 = icmp ne i32 %r29,0
    br i1 %r30, label %L18, label %L20
L17:
    br label %L15
L18:
    %r33 = load i32, ptr %r17
    %r34 = add i32 1,0
    %r35 = sub i32 0,%r34
    %r36 = sub i32 %r33,%r35
    %r37 = add i32 3,0
    %r38 = icmp sge i32 %r36,%r37
    br i1 %r38, label %L21, label %L22
L19:
    br label %L17
L20:
    %r31 = load i32, ptr %r17
    %r32 = icmp eq i32 %r31,0
    br i1 %r32, label %L18, label %L19
L21:
    br label %L13
L22:
    br label %L19
L25:
    %r41 = load i32, ptr %r39
    %r42 = add i32 2,0
    %r43 = icmp slt i32 %r41,%r42
    br i1 %r43, label %L26, label %L27
L26:
    %r44 = load i32, ptr %r39
    %r45 = add i32 1,0
    %r46 = add i32 %r44,%r45
    store i32 %r46, ptr %r39
    br label %L25
L27:
    %r50 = load i32, ptr %r17
    %r51 = add i32 1,0
    %r52 = add i32 %r50,%r51
    store i32 %r52, ptr %r17
    %r53 = load i32, ptr %r0
    %r54 = add i32 1,0
    %r55 = add i32 %r53,%r54
    store i32 %r55, ptr %r0
    br label %L11
L30:
    %r56 = add i32 1,0
    %r57 = icmp ne i32 %r56,0
    br i1 %r57, label %L31, label %L32
L31:
    br label %L33
L32:
    %r60 = load i32, ptr %r12
    %r61 = add i32 1,0
    %r62 = add i32 %r60,%r61
    store i32 %r62, ptr %r12
    br label %L8
L33:
    %r58 = add i32 1,0
    %r59 = icmp ne i32 %r58,0
    br i1 %r59, label %L34, label %L35
L34:
    br label %L35
L35:
    br label %L32
}
