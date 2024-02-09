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
    %r3 = alloca i32
    %r2 = alloca i32
    %r1 = alloca i32
    br label %L1
L1:
    store i32 0, ptr %r1
    store i32 0, ptr %r2
    %r4 = add i32 0,0
    store i32 %r4, ptr %r3
    br label %L2
L2:
    %r5 = load i32, ptr %r3
    %r6 = getelementptr i32, ptr %r0, i32 %r5
    %r7 = load i32, ptr %r6
    %r8 = icmp ne i32 %r7,0
    br i1 %r8, label %L3, label %L4
L3:
    %r9 = load i32, ptr %r3
    %r10 = getelementptr i32, ptr %r0, i32 %r9
    %r11 = load i32, ptr %r10
    store i32 %r11, ptr %r1
    %r12 = load i32, ptr %r1
    %r13 = add i32 62,0
    %r14 = icmp eq i32 %r12,%r13
    br i1 %r14, label %L5, label %L6
L4:
    ret void
L5:
    %r15 = load i32, ptr @ptr
    %r16 = add i32 1,0
    %r17 = add i32 %r15,%r16
    store i32 %r17, ptr @ptr
    br label %L7
L6:
    %r18 = load i32, ptr %r1
    %r19 = add i32 60,0
    %r20 = icmp eq i32 %r18,%r19
    br i1 %r20, label %L8, label %L9
L7:
    %r85 = load i32, ptr %r3
    %r86 = add i32 1,0
    %r87 = add i32 %r85,%r86
    store i32 %r87, ptr %r3
    br label %L2
L8:
    %r21 = load i32, ptr @ptr
    %r22 = add i32 1,0
    %r23 = sub i32 %r21,%r22
    store i32 %r23, ptr @ptr
    br label %L10
L9:
    %r24 = load i32, ptr %r1
    %r25 = add i32 43,0
    %r26 = icmp eq i32 %r24,%r25
    br i1 %r26, label %L11, label %L12
L10:
    br label %L7
L11:
    %r27 = load i32, ptr @ptr
    %r28 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r27
    %r29 = load i32, ptr @ptr
    %r30 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r29
    %r31 = load i32, ptr %r30
    %r32 = add i32 1,0
    %r33 = add i32 %r31,%r32
    store i32 %r33, ptr %r28
    br label %L13
L12:
    %r34 = load i32, ptr %r1
    %r35 = add i32 45,0
    %r36 = icmp eq i32 %r34,%r35
    br i1 %r36, label %L14, label %L15
L13:
    br label %L10
L14:
    %r37 = load i32, ptr @ptr
    %r38 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r37
    %r39 = load i32, ptr @ptr
    %r40 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r39
    %r41 = load i32, ptr %r40
    %r42 = add i32 1,0
    %r43 = sub i32 %r41,%r42
    store i32 %r43, ptr %r38
    br label %L16
L15:
    %r44 = load i32, ptr %r1
    %r45 = add i32 46,0
    %r46 = icmp eq i32 %r44,%r45
    br i1 %r46, label %L17, label %L18
L16:
    br label %L13
L17:
    %r47 = load i32, ptr @ptr
    %r48 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r47
    %r49 = load i32, ptr %r48
    call void @putch(i32 %r49)
    br label %L19
L18:
    %r50 = load i32, ptr %r1
    %r51 = add i32 44,0
    %r52 = icmp eq i32 %r50,%r51
    br i1 %r52, label %L20, label %L21
L19:
    br label %L16
L20:
    %r53 = load i32, ptr @ptr
    %r54 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r53
    %r55 = call i32 @getch()
    store i32 %r55, ptr %r54
    br label %L22
L21:
    %r56 = load i32, ptr %r1
    %r57 = add i32 93,0
    %r58 = icmp eq i32 %r56,%r57
    br i1 %r58, label %L25, label %L24
L22:
    br label %L19
L23:
    %r63 = add i32 1,0
    store i32 %r63, ptr %r2
    br label %L26
L24:
    br label %L22
L25:
    %r59 = load i32, ptr @ptr
    %r60 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r59
    %r61 = load i32, ptr %r60
    %r62 = icmp ne i32 %r61,0
    br i1 %r62, label %L23, label %L24
L26:
    %r64 = load i32, ptr %r2
    %r65 = add i32 0,0
    %r66 = icmp sgt i32 %r64,%r65
    br i1 %r66, label %L27, label %L28
L27:
    %r67 = load i32, ptr %r3
    %r68 = add i32 1,0
    %r69 = sub i32 %r67,%r68
    store i32 %r69, ptr %r3
    %r70 = load i32, ptr %r3
    %r71 = getelementptr i32, ptr %r0, i32 %r70
    %r72 = load i32, ptr %r71
    store i32 %r72, ptr %r1
    %r73 = load i32, ptr %r1
    %r74 = add i32 91,0
    %r75 = icmp eq i32 %r73,%r74
    br i1 %r75, label %L29, label %L30
L28:
    br label %L24
L29:
    %r76 = load i32, ptr %r2
    %r77 = add i32 1,0
    %r78 = sub i32 %r76,%r77
    store i32 %r78, ptr %r2
    br label %L31
L30:
    %r79 = load i32, ptr %r1
    %r80 = add i32 93,0
    %r81 = icmp eq i32 %r79,%r80
    br i1 %r81, label %L32, label %L33
L31:
    br label %L26
L32:
    %r82 = load i32, ptr %r2
    %r83 = add i32 1,0
    %r84 = add i32 %r82,%r83
    store i32 %r84, ptr %r2
    br label %L33
L33:
    br label %L31
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
    br label %L2
L2:
    %r4 = load i32, ptr %r0
    %r5 = load i32, ptr %r2
    %r6 = icmp slt i32 %r4,%r5
    br i1 %r6, label %L3, label %L4
L3:
    %r7 = load i32, ptr %r0
    %r8 = getelementptr [32768 x i32], ptr @program, i32 0, i32 %r7
    %r9 = call i32 @getch()
    store i32 %r9, ptr %r8
    %r10 = load i32, ptr %r0
    %r11 = add i32 1,0
    %r12 = add i32 %r10,%r11
    store i32 %r12, ptr %r0
    br label %L2
L4:
    %r13 = load i32, ptr %r0
    %r14 = getelementptr [32768 x i32], ptr @program, i32 0, i32 %r13
    %r15 = add i32 0,0
    store i32 %r15, ptr %r14
    ret void
}
define i32 @main()
{
L0:
    br label %L1
L1:
    call void @read_program()
    %r0 = getelementptr [32768 x i32], ptr @program, i32 0
    call void @interpret(ptr %r0)
    %r1 = add i32 0,0
    ret i32 %r1
}
