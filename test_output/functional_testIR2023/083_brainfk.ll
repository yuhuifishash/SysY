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
define void @read_program()
{
L0:  ;
    %r2 = alloca i32
    %r0 = alloca i32
    br label %L1
L1:  ;
    %r1 = add i32 0,0
    store i32 %r1, ptr %r0
    %r3 = call i32 @getint()
    store i32 %r3, ptr %r2
    br label %L2
L2:  ;
    %r4 = load i32, ptr %r0
    %r5 = load i32, ptr %r2
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L4
L3:  ;
    %r7 = load i32, ptr %r0
    %r8 = getelementptr [32768 x i32], ptr @program, i32 0, i32 %r7
    %r9 = call i32 @getch()
    store i32 %r9, ptr %r8
    %r10 = load i32, ptr %r0
    %r11 = add i32 1,0
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr %r0
    br label %L2
L4:  ;
    %r13 = load i32, ptr %r0
    %r14 = getelementptr [32768 x i32], ptr @program, i32 0, i32 %r13
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    ret void
}
define void @interpret(ptr %r0)
{
L0:  ;
    %r5 = alloca i32
    %r3 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:  ;
    %r2 = add i32 0,0
    store i32 %r2, ptr %r1
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    %r6 = add i32 0,0
    store i32 %r6, ptr %r5
    br label %L2
L2:  ;
    %r7 = load i32, ptr %r5
    %r8 = getelementptr i32, ptr %r0, i32 %r7
    %r9 = load i32, ptr %r8
    %r10 = icmp ne i32 %r9,0
    br i1 %r10, label %L3, label %L4
L3:  ;
    %r11 = load i32, ptr %r5
    %r12 = getelementptr i32, ptr %r0, i32 %r11
    %r13 = load i32, ptr %r12
    store i32 %r13, ptr %r1
    %r14 = load i32, ptr %r1
    %r15 = add i32 62,0
    %r16 = icmp eq i32 %r14,%r15
    br i1 %r16, label %L5, label %L6
L4:  ;
    ret void
L5:  ;
    %r17 = load i32, ptr @ptr
    %r18 = add i32 1,0
    %r19 = add i32 %r17,%r18
    store i32 %r19, ptr @ptr
    br label %L7
L6:  ;
    %r20 = load i32, ptr %r1
    %r21 = add i32 60,0
    %r22 = icmp eq i32 %r20,%r21
    br i1 %r22, label %L8, label %L9
L7:  ;
    %r87 = load i32, ptr %r5
    %r88 = add i32 1,0
    %r89 = add i32 %r87,%r88
    store i32 %r89, ptr %r5
    br label %L2
L8:  ;
    %r23 = load i32, ptr @ptr
    %r24 = add i32 1,0
    %r25 = sub i32 %r23,%r24
    store i32 %r25, ptr @ptr
    br label %L10
L9:  ;
    %r26 = load i32, ptr %r1
    %r27 = add i32 43,0
    %r28 = icmp eq i32 %r26,%r27
    br i1 %r28, label %L11, label %L12
L10:  ;
    br label %L7
L11:  ;
    %r29 = load i32, ptr @ptr
    %r30 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r29
    %r31 = load i32, ptr @ptr
    %r32 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r31
    %r33 = load i32, ptr %r32
    %r34 = add i32 1,0
    %r35 = add i32 %r33,%r34
    store i32 %r35, ptr %r30
    br label %L13
L12:  ;
    %r36 = load i32, ptr %r1
    %r37 = add i32 45,0
    %r38 = icmp eq i32 %r36,%r37
    br i1 %r38, label %L14, label %L15
L13:  ;
    br label %L10
L14:  ;
    %r39 = load i32, ptr @ptr
    %r40 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r39
    %r41 = load i32, ptr @ptr
    %r42 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r41
    %r43 = load i32, ptr %r42
    %r44 = add i32 1,0
    %r45 = sub i32 %r43,%r44
    store i32 %r45, ptr %r40
    br label %L16
L15:  ;
    %r46 = load i32, ptr %r1
    %r47 = add i32 46,0
    %r48 = icmp eq i32 %r46,%r47
    br i1 %r48, label %L17, label %L18
L16:  ;
    br label %L13
L17:  ;
    %r49 = load i32, ptr @ptr
    %r50 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r49
    %r51 = load i32, ptr %r50
    call void @putch(i32 %r51)
    br label %L19
L18:  ;
    %r52 = load i32, ptr %r1
    %r53 = add i32 44,0
    %r54 = icmp eq i32 %r52,%r53
    br i1 %r54, label %L20, label %L21
L19:  ;
    br label %L16
L20:  ;
    %r55 = load i32, ptr @ptr
    %r56 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r55
    %r57 = call i32 @getch()
    store i32 %r57, ptr %r56
    br label %L22
L21:  ;
    %r58 = load i32, ptr %r1
    %r59 = add i32 93,0
    %r60 = icmp eq i32 %r58,%r59
    br i1 %r60, label %L25, label %L24
L22:  ;
    br label %L19
L23:  ;
    %r65 = add i32 1,0
    store i32 %r65, ptr %r3
    br label %L26
L24:  ;
    br label %L22
L25:  ;
    %r61 = load i32, ptr @ptr
    %r62 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r61
    %r63 = load i32, ptr %r62
    %r64 = icmp ne i32 %r63,0
    br i1 %r64, label %L23, label %L24
L26:  ;
    %r66 = load i32, ptr %r3
    %r67 = add i32 0,0
    %r68 = icmp sgt i32 %r66,%r67
    br i1 %r68, label %L27, label %L28
L27:  ;
    %r69 = load i32, ptr %r5
    %r70 = add i32 1,0
    %r71 = sub i32 %r69,%r70
    store i32 %r71, ptr %r5
    %r72 = load i32, ptr %r5
    %r73 = getelementptr i32, ptr %r0, i32 %r72
    %r74 = load i32, ptr %r73
    store i32 %r74, ptr %r1
    %r75 = load i32, ptr %r1
    %r76 = add i32 91,0
    %r77 = icmp eq i32 %r75,%r76
    br i1 %r77, label %L29, label %L30
L28:  ;
    br label %L24
L29:  ;
    %r78 = load i32, ptr %r3
    %r79 = add i32 1,0
    %r80 = sub i32 %r78,%r79
    store i32 %r80, ptr %r3
    br label %L31
L30:  ;
    %r81 = load i32, ptr %r1
    %r82 = add i32 93,0
    %r83 = icmp eq i32 %r81,%r82
    br i1 %r83, label %L32, label %L33
L31:  ;
    br label %L26
L32:  ;
    %r84 = load i32, ptr %r3
    %r85 = add i32 1,0
    %r86 = add i32 %r84,%r85
    store i32 %r86, ptr %r3
    br label %L33
L33:  ;
    br label %L31
}
define i32 @main()
{
L0:  ;
    br label %L1
L1:  ;
    call void @read_program()
    %r0 = getelementptr [32768 x i32], ptr @program, i32 0
    call void @interpret(ptr %r0)
    %r1 = add i32 0,0
    ret i32 %r1
}
