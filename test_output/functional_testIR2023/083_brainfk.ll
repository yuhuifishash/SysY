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
@TAPE_LEN = global i32 65536
@BUFFER_LEN = global i32 32768
@tape = global [65536x i32] zeroinitializer
@program = global [32768x i32] zeroinitializer
@ptr = global i32 0
define void @interpret(ptr %r0)
{
L0:
    %r5 = alloca i32
    %r3 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    %r7 = load i32, ptr %r5
    %r8 = getelementptr i32, ptr %r0, i32 %r7
    %r9 = load i32, ptr %r8
    %r10 = icmp ne i32 %r9,0
    br i1 %r10, label %L3, label %L5
L3:
    %r11 = load i32, ptr %r5
    %r12 = getelementptr i32, ptr %r0, i32 %r11
    %r13 = load i32, ptr %r12
    store i32 %r13, ptr %r1
    %r14 = load i32, ptr %r1
    %r15 = add i32 0,62
    %r16 = icmp eq i32 %r14,%r15
    br i1 %r16, label %L6, label %L7
L4:
    %r118 = load i32, ptr %r5
    %r119 = getelementptr i32, ptr %r0, i32 %r118
    %r120 = load i32, ptr %r119
    %r121 = icmp ne i32 %r120,0
    br i1 %r121, label %L3, label %L5
L5:
    ret void
L6:
    %r19 = load i32, ptr @ptr
    %r20 = add i32 0,1
    %r21 = add i32 %r19,%r20
    store i32 %r21, ptr @ptr
    br label %L8
L7:
    %r22 = load i32, ptr %r1
    %r23 = add i32 0,60
    %r24 = icmp eq i32 %r22,%r23
    br i1 %r24, label %L9, label %L10
L8:
    %r115 = load i32, ptr %r5
    %r116 = add i32 0,1
    %r117 = add i32 %r115,%r116
    store i32 %r117, ptr %r5
    br label %L4
L9:
    %r27 = load i32, ptr @ptr
    %r28 = add i32 0,1
    %r29 = sub i32 %r27,%r28
    store i32 %r29, ptr @ptr
    br label %L11
L10:
    %r30 = load i32, ptr %r1
    %r31 = add i32 0,43
    %r32 = icmp eq i32 %r30,%r31
    br i1 %r32, label %L12, label %L13
L11:
    br label %L8
L12:
    %r35 = load i32, ptr @ptr
    %r36 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r35
    %r37 = load i32, ptr %r36
    %r38 = add i32 0,1
    %r39 = add i32 %r37,%r38
    %r40 = load i32, ptr @ptr
    %r41 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r40
    store i32 %r39, ptr %r41
    br label %L14
L13:
    %r42 = load i32, ptr %r1
    %r43 = add i32 0,45
    %r44 = icmp eq i32 %r42,%r43
    br i1 %r44, label %L15, label %L16
L14:
    br label %L11
L15:
    %r47 = load i32, ptr @ptr
    %r48 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r47
    %r49 = load i32, ptr %r48
    %r50 = add i32 0,1
    %r51 = sub i32 %r49,%r50
    %r52 = load i32, ptr @ptr
    %r53 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r52
    store i32 %r51, ptr %r53
    br label %L17
L16:
    %r54 = load i32, ptr %r1
    %r55 = add i32 0,46
    %r56 = icmp eq i32 %r54,%r55
    br i1 %r56, label %L18, label %L19
L17:
    br label %L14
L18:
    %r59 = load i32, ptr @ptr
    %r60 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r59
    %r61 = load i32, ptr %r60
    call void @putch(i32 %r61)
    br label %L20
L19:
    %r62 = load i32, ptr %r1
    %r63 = add i32 0,44
    %r64 = icmp eq i32 %r62,%r63
    br i1 %r64, label %L21, label %L22
L20:
    br label %L17
L21:
    %r67 = call i32 @getch()
    %r68 = load i32, ptr @ptr
    %r69 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r68
    store i32 %r67, ptr %r69
    br label %L23
L22:
    %r70 = load i32, ptr %r1
    %r71 = add i32 0,93
    %r72 = icmp eq i32 %r70,%r71
    br i1 %r72, label %L26, label %L25
L23:
    br label %L20
L24:
    %r82 = add i32 0,1
    store i32 %r82, ptr %r3
    %r83 = load i32, ptr %r3
    %r84 = add i32 0,0
    %r85 = icmp sgt i32 %r83,%r84
    br i1 %r85, label %L29, label %L31
L25:
    br label %L23
L26:
    %r75 = load i32, ptr @ptr
    %r76 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r75
    %r77 = load i32, ptr %r76
    %r78 = icmp ne i32 %r77,0
    br i1 %r78, label %L24, label %L25
L29:
    %r88 = load i32, ptr %r5
    %r89 = add i32 0,1
    %r90 = sub i32 %r88,%r89
    store i32 %r90, ptr %r5
    %r91 = load i32, ptr %r5
    %r92 = getelementptr i32, ptr %r0, i32 %r91
    %r93 = load i32, ptr %r92
    store i32 %r93, ptr %r1
    %r94 = load i32, ptr %r1
    %r95 = add i32 0,91
    %r96 = icmp eq i32 %r94,%r95
    br i1 %r96, label %L32, label %L33
L30:
    %r110 = load i32, ptr %r3
    %r111 = add i32 0,0
    %r112 = icmp sgt i32 %r110,%r111
    br i1 %r112, label %L29, label %L31
L31:
    br label %L25
L32:
    %r99 = load i32, ptr %r3
    %r100 = add i32 0,1
    %r101 = sub i32 %r99,%r100
    store i32 %r101, ptr %r3
    br label %L34
L33:
    %r102 = load i32, ptr %r1
    %r103 = add i32 0,93
    %r104 = icmp eq i32 %r102,%r103
    br i1 %r104, label %L35, label %L36
L34:
    br label %L30
L35:
    %r107 = load i32, ptr %r3
    %r108 = add i32 0,1
    %r109 = add i32 %r107,%r108
    store i32 %r109, ptr %r3
    br label %L36
L36:
    br label %L34
}
define i32 @main()
{
L0:
    br label %L1
L1:
    call void @read_program()
    %r0 = getelementptr i32, ptr @program, i32 0
    call void @interpret(ptr %r0)
    %r1 = add i32 0,0
    ret i32 %r1
}
define void @read_program()
{
L0:
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = call i32 @getint()
    store i32 %r3, ptr %r2
    %r4 = load i32, ptr %r0
    %r5 = load i32, ptr %r2
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L5
L3:
    %r9 = call i32 @getch()
    %r10 = load i32, ptr %r0
    %r11 = getelementptr [32768 x i32], ptr @program, i32 0, i32 %r10
    store i32 %r9, ptr %r11
    %r12 = load i32, ptr %r0
    %r13 = add i32 0,1
    %r14 = add i32 %r12,%r13
    store i32 %r14, ptr %r0
    br label %L4
L4:
    %r15 = load i32, ptr %r0
    %r16 = load i32, ptr %r2
    %r17 = icmp slt i32 %r15,%r16
    br i1 %r17, label %L3, label %L5
L5:
    %r20 = add i32 0,0
    %r21 = load i32, ptr %r0
    %r22 = getelementptr [32768 x i32], ptr @program, i32 0, i32 %r21
    store i32 %r20, ptr %r22
    ret void
}
