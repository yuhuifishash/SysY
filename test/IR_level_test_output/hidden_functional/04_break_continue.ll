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
declare void @starttime()
declare void @stoptime()
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
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = add i32 0,0
    store i32 %r3, ptr %r2
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = add i32 0,20
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r10 = add i32 0,0
    store i32 %r10, ptr %r9
    br label %L4
L3:
    %r91 = load i32, ptr %r0
    ret i32 %r91
L4:
    %r11 = load i32, ptr %r9
    %r12 = add i32 0,10
    %r13 = icmp slt i32 %r11,%r12
    br i1 %r13, label %L5, label %L6
L5:
    %r17 = add i32 0,0
    store i32 %r17, ptr %r16
    br label %L7
L6:
    %r88 = load i32, ptr %r2
    %r89 = add i32 0,1
    %r90 = add i32 %r88,%r89
    store i32 %r90, ptr %r2
    br label %L1
L7:
    %r18 = load i32, ptr %r16
    %r19 = add i32 0,5
    %r20 = icmp slt i32 %r18,%r19
    br i1 %r20, label %L8, label %L9
L8:
    %r24 = add i32 0,0
    store i32 %r24, ptr %r23
    br label %L10
L9:
    %r82 = load i32, ptr %r9
    %r83 = add i32 0,1
    %r84 = add i32 %r82,%r83
    store i32 %r84, ptr %r9
    br label %L4
L10:
    %r25 = load i32, ptr %r23
    %r26 = add i32 0,3
    %r27 = icmp slt i32 %r25,%r26
    br i1 %r27, label %L11, label %L12
L11:
    %r30 = load i32, ptr %r23
    %r31 = add i32 0,1
    %r32 = add i32 %r30,%r31
    %r33 = add i32 0,3
    %r34 = icmp sge i32 %r32,%r33
    br i1 %r34, label %L13, label %L14
L12:
    br label %L30
L13:
    %r37 = load i32, ptr %r23
    %r38 = icmp ne i32 %r37,0
    br i1 %r38, label %L15, label %L16
L14:
    %r57 = add i32 0,0
    store i32 %r57, ptr %r56
    br label %L25
L15:
    %r39 = load i32, ptr %r23
    %r40 = icmp eq i32 %r39,0
    br i1 %r40, label %L19, label %L17
L16:
    br label %L14
L17:
    %r48 = load i32, ptr %r23
    %r49 = add i32 0,1
    %r50 = sub i32 0,%r49
    %r51 = sub i32 %r48,%r50
    %r52 = add i32 0,3
    %r53 = icmp sge i32 %r51,%r52
    br i1 %r53, label %L21, label %L22
L18:
    br label %L16
L19:
    %r41 = load i32, ptr %r23
    %r42 = icmp eq i32 %r41,0
    br i1 %r42, label %L17, label %L18
L21:
    br label %L12
L22:
    br label %L18
L25:
    %r58 = load i32, ptr %r56
    %r59 = add i32 0,2
    %r60 = icmp slt i32 %r58,%r59
    br i1 %r60, label %L26, label %L27
L26:
    %r63 = load i32, ptr %r56
    %r64 = add i32 0,1
    %r65 = add i32 %r63,%r64
    store i32 %r65, ptr %r56
    br label %L25
L27:
    %r69 = load i32, ptr %r23
    %r70 = add i32 0,1
    %r71 = add i32 %r69,%r70
    store i32 %r71, ptr %r23
    %r72 = load i32, ptr %r0
    %r73 = add i32 0,1
    %r74 = add i32 %r72,%r73
    store i32 %r74, ptr %r0
    br label %L10
L30:
    %r75 = add i32 0,1
    %r76 = icmp ne i32 %r75,0
    br i1 %r76, label %L31, label %L32
L31:
    br label %L33
L32:
    %r79 = load i32, ptr %r16
    %r80 = add i32 0,1
    %r81 = add i32 %r79,%r80
    store i32 %r81, ptr %r16
    br label %L7
L33:
    %r77 = add i32 0,1
    %r78 = icmp ne i32 %r77,0
    br i1 %r78, label %L34, label %L35
L34:
    br label %L35
L35:
    br label %L32
}
