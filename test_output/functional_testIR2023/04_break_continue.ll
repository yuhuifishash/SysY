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
    %r56 = alloca i32
    %r23 = alloca i32
    %r16 = alloca i32
    %r9 = alloca i32
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    %r4 = load i32, ptr %r2
    %r5 = add i32 0,20
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L5
L3:
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    %r11 = load i32, ptr %r9
    %r12 = add i32 0,10
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L7, label %L9
L4:
    %r115 = load i32, ptr %r2
    %r116 = add i32 0,20
    %r117 = icmp slt i32 %r115,%r116
    br i1 %r117, label %L3, label %L5
L5:
    %r120 = load i32, ptr %r0
    ret i32 %r120
L7:
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    %r18 = load i32, ptr %r16
    %r19 = add i32 0,5
    %r20 = icmp slt i32 %r18,%r19
    br i1 %r20, label %L11, label %L13
L8:
    %r107 = load i32, ptr %r9
    %r108 = add i32 0,10
    %r109 = icmp slt i32 %r107,%r108
    br i1 %r109, label %L7, label %L9
L9:
    %r112 = load i32, ptr %r2
    %r113 = add i32 0,1
    %r114 = add i32 %r112,%r113
    store i32 %r114, ptr %r2
    br label %L4
L11:
    %r24 = add i32 0,0
    store i32 %r24, ptr %r23
    %r25 = load i32, ptr %r23
    %r26 = add i32 0,3
    %r27 = icmp slt i32 %r25,%r26
    br i1 %r27, label %L15, label %L17
L12:
    %r96 = load i32, ptr %r16
    %r97 = add i32 0,5
    %r98 = icmp slt i32 %r96,%r97
    br i1 %r98, label %L11, label %L13
L13:
    %r101 = load i32, ptr %r9
    %r102 = add i32 0,1
    %r103 = add i32 %r101,%r102
    store i32 %r103, ptr %r9
    br label %L8
L15:
    %r30 = load i32, ptr %r23
    %r31 = add i32 0,1
    %r32 = add i32 %r30,%r31
    %r33 = add i32 0,3
    %r34 = icmp sge i32 %r32,%r33
    br i1 %r34, label %L18, label %L19
L16:
    %r80 = load i32, ptr %r23
    %r81 = add i32 0,3
    %r82 = icmp slt i32 %r80,%r81
    br i1 %r82, label %L15, label %L17
L17:
    %r85 = add i32 0,1
    %r86 = icmp ne i32 %r85,0
    br i1 %r86, label %L37, label %L39
L18:
    %r37 = load i32, ptr %r23
    %r38 = icmp ne i32 %r37,0
    br i1 %r38, label %L20, label %L21
L19:
    %r57 = add i32 0,0
    store i32 %r57, ptr %r56
    %r58 = load i32, ptr %r56
    %r59 = add i32 0,2
    %r60 = icmp slt i32 %r58,%r59
    br i1 %r60, label %L31, label %L33
L20:
    %r39 = load i32, ptr %r23
    %r40 = icmp eq i32 %r39,0
    br i1 %r40, label %L24, label %L22
L21:
    br label %L19
L22:
    %r48 = load i32, ptr %r23
    %r49 = add i32 0,1
    %r50 = sub i32 0,%r49
    %r51 = sub i32 %r48,%r50
    %r52 = add i32 0,3
    %r53 = icmp sge i32 %r51,%r52
    br i1 %r53, label %L26, label %L27
L23:
    br label %L21
L24:
    %r41 = load i32, ptr %r23
    %r42 = icmp eq i32 %r41,0
    br i1 %r42, label %L22, label %L23
L26:
    br label %L17
L27:
    br label %L23
L31:
    %r63 = load i32, ptr %r56
    %r64 = add i32 0,1
    %r65 = add i32 %r63,%r64
    store i32 %r65, ptr %r56
    br label %L32
L32:
    %r69 = load i32, ptr %r56
    %r70 = add i32 0,2
    %r71 = icmp slt i32 %r69,%r70
    br i1 %r71, label %L31, label %L33
L33:
    %r74 = load i32, ptr %r23
    %r75 = add i32 0,1
    %r76 = add i32 %r74,%r75
    store i32 %r76, ptr %r23
    %r77 = load i32, ptr %r0
    %r78 = add i32 0,1
    %r79 = add i32 %r77,%r78
    store i32 %r79, ptr %r0
    br label %L16
L37:
    %r87 = add i32 0,1
    %r88 = icmp ne i32 %r87,0
    br i1 %r88, label %L41, label %L43
L39:
    %r93 = load i32, ptr %r16
    %r94 = add i32 0,1
    %r95 = add i32 %r93,%r94
    store i32 %r95, ptr %r16
    br label %L12
L41:
    br label %L43
L43:
    br label %L39
}
