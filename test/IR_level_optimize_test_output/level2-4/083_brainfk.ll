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
    br label %L1
L1:
    %r8 = getelementptr i32, ptr %r0, i32 0
    %r9 = load i32, ptr %r8
    %r10 = icmp ne i32 %r9,0
    br i1 %r10, label %L37, label %L5
L3:
    %r140 = phi i32 [%r139,%L4],[0,%L37]
    %r122 = phi i32 [%r117,%L4],[0,%L37]
    %r12 = getelementptr i32, ptr %r0, i32 %r122
    %r13 = load i32, ptr %r12
    %r16 = icmp eq i32 %r13,62
    br i1 %r16, label %L6, label %L7
L4:
    %r119 = getelementptr i32, ptr %r0, i32 %r117
    %r120 = load i32, ptr %r119
    %r121 = icmp ne i32 %r120,0
    br i1 %r121, label %L3, label %L5
L5:
    ret void
L6:
    %r19 = load i32, ptr @ptr
    %r21 = add i32 %r19,1
    store i32 %r21, ptr @ptr
    br label %L8
L7:
    %r24 = icmp eq i32 %r13,60
    br i1 %r24, label %L9, label %L10
L8:
    %r139 = phi i32 [%r140,%L6],[%r138,%L11]
    %r132 = phi i32 [%r122,%L6],[%r131,%L11]
    %r117 = add i32 %r132,1
    br label %L4
L9:
    %r27 = load i32, ptr @ptr
    %r29 = sub i32 %r27,1
    store i32 %r29, ptr @ptr
    br label %L11
L10:
    %r32 = icmp eq i32 %r13,43
    br i1 %r32, label %L12, label %L13
L11:
    %r138 = phi i32 [%r140,%L9],[%r137,%L14]
    %r131 = phi i32 [%r122,%L9],[%r130,%L14]
    br label %L8
L12:
    %r35 = load i32, ptr @ptr
    %r36 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r35
    %r37 = load i32, ptr %r36
    %r39 = add i32 %r37,1
    store i32 %r39, ptr %r36
    br label %L14
L13:
    %r44 = icmp eq i32 %r13,45
    br i1 %r44, label %L15, label %L16
L14:
    %r137 = phi i32 [%r140,%L12],[%r136,%L17]
    %r130 = phi i32 [%r122,%L12],[%r129,%L17]
    br label %L11
L15:
    %r47 = load i32, ptr @ptr
    %r48 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r47
    %r49 = load i32, ptr %r48
    %r51 = sub i32 %r49,1
    store i32 %r51, ptr %r48
    br label %L17
L16:
    %r56 = icmp eq i32 %r13,46
    br i1 %r56, label %L18, label %L19
L17:
    %r136 = phi i32 [%r140,%L15],[%r135,%L20]
    %r129 = phi i32 [%r122,%L15],[%r128,%L20]
    br label %L14
L18:
    %r59 = load i32, ptr @ptr
    %r60 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r59
    %r61 = load i32, ptr %r60
    call void @putch(i32 %r61)
    br label %L20
L19:
    %r64 = icmp eq i32 %r13,44
    br i1 %r64, label %L21, label %L22
L20:
    %r135 = phi i32 [%r140,%L18],[%r134,%L23]
    %r128 = phi i32 [%r122,%L18],[%r127,%L23]
    br label %L17
L21:
    %r67 = call i32 @getch()
    %r68 = load i32, ptr @ptr
    %r69 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r68
    store i32 %r67, ptr %r69
    br label %L23
L22:
    %r72 = icmp eq i32 %r13,93
    br i1 %r72, label %L26, label %L25
L23:
    %r134 = phi i32 [%r140,%L21],[%r133,%L25]
    %r127 = phi i32 [%r122,%L21],[%r126,%L25]
    br label %L20
L24:
    br label %L38
L25:
    %r133 = phi i32 [%r140,%L22],[%r140,%L26],[%r142,%L31]
    %r126 = phi i32 [%r122,%L22],[%r122,%L26],[%r90,%L31]
    br label %L23
L26:
    %r75 = load i32, ptr @ptr
    %r76 = getelementptr [65536 x i32], ptr @tape, i32 0, i32 %r75
    %r77 = load i32, ptr %r76
    %r78 = icmp ne i32 %r77,0
    br i1 %r78, label %L24, label %L25
L29:
    %r143 = phi i32 [%r142,%L30],[1,%L38]
    %r124 = phi i32 [%r90,%L30],[%r122,%L38]
    %r90 = sub i32 %r124,1
    %r92 = getelementptr i32, ptr %r0, i32 %r90
    %r93 = load i32, ptr %r92
    %r96 = icmp eq i32 %r93,91
    br i1 %r96, label %L32, label %L33
L30:
    %r112 = icmp sgt i32 %r142,0
    br i1 %r112, label %L29, label %L31
L31:
    br label %L25
L32:
    %r101 = sub i32 %r143,1
    br label %L34
L33:
    %r104 = icmp eq i32 %r93,93
    br i1 %r104, label %L35, label %L36
L34:
    %r142 = phi i32 [%r101,%L32],[%r145,%L36]
    br label %L30
L35:
    %r109 = add i32 %r143,1
    br label %L36
L36:
    %r145 = phi i32 [%r143,%L33],[%r109,%L35]
    br label %L34
L37:
    br label %L3
L38:
    br label %L29
}
define i32 @main()
{
L0:
    br label %L1
L1:
    call void @read_program()
    %r0 = getelementptr i32, ptr @program, i32 0
    call void @interpret(ptr %r0)
    ret i32 0
}
define void @read_program()
{
L0:
    br label %L1
L1:
    %r3 = call i32 @getint()
    %r6 = icmp slt i32 0,%r3
    br i1 %r6, label %L6, label %L5
L3:
    %r23 = phi i32 [0,%L6],[%r14,%L4]
    %r9 = call i32 @getch()
    %r11 = getelementptr [32768 x i32], ptr @program, i32 0, i32 %r23
    store i32 %r9, ptr %r11
    %r14 = add i32 %r23,1
    br label %L4
L4:
    %r17 = icmp slt i32 %r14,%r3
    br i1 %r17, label %L3, label %L5
L5:
    %r24 = phi i32 [0,%L1],[%r14,%L4]
    %r22 = getelementptr [32768 x i32], ptr @program, i32 0, i32 %r24
    store i32 0, ptr %r22
    ret void
L6:
    br label %L3
}
