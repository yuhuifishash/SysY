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
    %r10 = alloca i32
    %r8 = alloca i32
    %r6 = alloca i32
    %r4 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,1
    store i32 %r1, ptr %r0
    %r3 = add i32 0,2
    store i32 %r3, ptr %r2
    %r5 = add i32 0,3
    store i32 %r5, ptr %r4
    %r7 = add i32 0,4
    store i32 %r7, ptr %r6
    %r9 = add i32 0,5
    store i32 %r9, ptr %r8
    %r11 = add i32 0,6
    store i32 %r11, ptr %r10
    %r12 = load i32, ptr %r0
    %r13 = load i32, ptr %r2
    %r14 = mul i32 %r12,%r13
    %r15 = load i32, ptr %r4
    %r16 = add i32 %r14,%r15
    %r17 = add i32 0,6
    %r18 = icmp slt i32 %r16,%r17
    br i1 %r18, label %L5, label %L3
L2:
    %r29 = load i32, ptr %r8
    %r30 = icmp eq i32 %r29,0
    br i1 %r30, label %L10, label %L7
L3:
    %r115 = add i32 0,1
    ret i32 %r115
L5:
    %r21 = load i32, ptr %r6
    %r22 = add i32 0,0
    %r23 = icmp ne i32 %r21,%r22
    br i1 %r23, label %L2, label %L3
L7:
    %r40 = load i32, ptr %r4
    %r41 = add i32 0,2
    %r42 = icmp eq i32 %r40,%r41
    br i1 %r42, label %L15, label %L13
L8:
    %r114 = add i32 0,2
    ret i32 %r114
L10:
    %r31 = load i32, ptr %r0
    %r32 = icmp eq i32 %r31,0
    %r33 = zext i1 %r32 to i32
    %r34 = add i32 0,0
    %r35 = add i32 %r33,%r34
    %r36 = icmp ne i32 %r35,0
    br i1 %r36, label %L7, label %L8
L12:
    %r55 = add i32 0,3
    ret i32 %r55
L13:
    %r56 = load i32, ptr %r10
    %r57 = load i32, ptr %r4
    %r58 = srem i32 %r56,%r57
    %r59 = icmp ne i32 %r58,0
    br i1 %r59, label %L20, label %L18
L15:
    %r45 = load i32, ptr %r6
    %r46 = load i32, ptr %r8
    %r47 = add i32 %r45,%r46
    %r48 = add i32 0,2
    %r49 = icmp sgt i32 %r47,%r48
    br i1 %r49, label %L12, label %L13
L17:
    %r65 = add i32 0,4
    ret i32 %r65
L18:
    %r66 = load i32, ptr %r6
    %r67 = load i32, ptr %r2
    %r68 = sdiv i32 %r66,%r67
    %r69 = load i32, ptr %r0
    %r70 = add i32 %r68,%r69
    %r71 = add i32 0,2
    %r72 = icmp sge i32 %r70,%r71
    br i1 %r72, label %L22, label %L23
L20:
    %r60 = load i32, ptr %r8
    %r61 = icmp ne i32 %r60,0
    br i1 %r61, label %L17, label %L18
L22:
    %r75 = load i32, ptr %r8
    %r76 = load i32, ptr %r10
    %r77 = sub i32 %r75,%r76
    %r78 = add i32 0,0
    %r79 = icmp sge i32 %r77,%r78
    br i1 %r79, label %L25, label %L28
L23:
    %r113 = add i32 0,5
    ret i32 %r113
L25:
    %r90 = add i32 0,6
    ret i32 %r90
L26:
    %r91 = load i32, ptr %r4
    %r92 = load i32, ptr %r10
    %r93 = icmp ne i32 %r91,%r92
    br i1 %r93, label %L30, label %L31
L28:
    %r82 = load i32, ptr %r6
    %r83 = add i32 0,4
    %r84 = icmp sgt i32 %r82,%r83
    br i1 %r84, label %L25, label %L26
L30:
    %r96 = load i32, ptr %r2
    %r97 = load i32, ptr %r8
    %r98 = load i32, ptr %r6
    %r99 = mul i32 %r97,%r98
    %r100 = add i32 %r96,%r99
    %r101 = add i32 0,10
    %r102 = icmp sgt i32 %r100,%r101
    br i1 %r102, label %L33, label %L34
L31:
    %r112 = add i32 0,7
    ret i32 %r112
L33:
    %r105 = load i32, ptr %r10
    %r106 = icmp eq i32 %r105,0
    br i1 %r106, label %L36, label %L37
L34:
    %r111 = add i32 0,8
    ret i32 %r111
L36:
    %r109 = add i32 0,9
    ret i32 %r109
L37:
    %r110 = add i32 0,10
    ret i32 %r110
}
