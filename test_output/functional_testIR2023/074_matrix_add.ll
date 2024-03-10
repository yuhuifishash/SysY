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
@M = global i32 zeroinitializer
@L = global i32 zeroinitializer
@N = global i32 zeroinitializer
define i32 @add(ptr %r0,ptr %r1,ptr %r2,ptr %r3,ptr %r4,ptr %r5,ptr %r6,ptr %r7,ptr %r8)
{
L0:  ;
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r46 = phi i32 [0,%L1],[%r44,%L3]
    %r13 = load i32, ptr @M
    %r14 = icmp slt i32 %r46,%r13
    br i1 %r14, label %L3, label %L4
L3:  ;latch
    %r16 = getelementptr i32, ptr %r6, i32 %r46
    %r18 = getelementptr i32, ptr %r0, i32 %r46
    %r19 = load i32, ptr %r18
    %r21 = getelementptr i32, ptr %r3, i32 %r46
    %r22 = load i32, ptr %r21
    %r23 = add i32 %r19,%r22
    store i32 %r23, ptr %r16
    %r25 = getelementptr i32, ptr %r7, i32 %r46
    %r27 = getelementptr i32, ptr %r1, i32 %r46
    %r28 = load i32, ptr %r27
    %r30 = getelementptr i32, ptr %r4, i32 %r46
    %r31 = load i32, ptr %r30
    %r32 = add i32 %r28,%r31
    store i32 %r32, ptr %r25
    %r34 = getelementptr i32, ptr %r8, i32 %r46
    %r36 = getelementptr i32, ptr %r2, i32 %r46
    %r37 = load i32, ptr %r36
    %r39 = getelementptr i32, ptr %r5, i32 %r46
    %r40 = load i32, ptr %r39
    %r41 = add i32 %r37,%r40
    store i32 %r41, ptr %r34
    %r44 = add i32 %r46,1
    br label %L2
L4:  ;
    ret i32 0
}
define i32 @main()
{
L0:  ;
    %r11 = alloca [3 x i32]
    %r10 = alloca [3 x i32]
    %r9 = alloca [6 x i32]
    %r8 = alloca [3 x i32]
    %r7 = alloca [3 x i32]
    %r6 = alloca [3 x i32]
    %r5 = alloca [3 x i32]
    %r4 = alloca [3 x i32]
    %r3 = alloca [3 x i32]
    br label %L1
L1:  ;
    store i32 3, ptr @N
    store i32 3, ptr @M
    store i32 3, ptr @L
    br label %L2
L2:  ;
    %r93 = phi i32 [0,%L1],[%r38,%L3]
    %r16 = load i32, ptr @M
    %r17 = icmp slt i32 %r93,%r16
    br i1 %r17, label %L3, label %L4
L3:  ;latch
    %r19 = getelementptr [3 x i32], ptr %r3, i32 0, i32 %r93
    store i32 %r93, ptr %r19
    %r22 = getelementptr [3 x i32], ptr %r4, i32 0, i32 %r93
    store i32 %r93, ptr %r22
    %r25 = getelementptr [3 x i32], ptr %r5, i32 0, i32 %r93
    store i32 %r93, ptr %r25
    %r28 = getelementptr [3 x i32], ptr %r6, i32 0, i32 %r93
    store i32 %r93, ptr %r28
    %r31 = getelementptr [3 x i32], ptr %r7, i32 0, i32 %r93
    store i32 %r93, ptr %r31
    %r34 = getelementptr [3 x i32], ptr %r8, i32 0, i32 %r93
    store i32 %r93, ptr %r34
    %r38 = add i32 %r93,1
    br label %L2
L4:  ;
    %r39 = getelementptr [3 x i32], ptr %r3, i32 0
    %r40 = getelementptr [3 x i32], ptr %r4, i32 0
    %r41 = getelementptr [3 x i32], ptr %r5, i32 0
    %r42 = getelementptr [3 x i32], ptr %r6, i32 0
    %r43 = getelementptr [3 x i32], ptr %r7, i32 0
    %r44 = getelementptr [3 x i32], ptr %r8, i32 0
    %r45 = getelementptr [6 x i32], ptr %r9, i32 0
    %r46 = getelementptr [3 x i32], ptr %r10, i32 0
    %r47 = getelementptr [3 x i32], ptr %r11, i32 0
    %r48 = call i32 @add(ptr %r39,ptr %r40,ptr %r41,ptr %r42,ptr %r43,ptr %r44,ptr %r45,ptr %r46,ptr %r47)
    br label %L5
L5:  ;
    %r94 = phi i32 [%r48,%L4],[%r60,%L6]
    %r52 = load i32, ptr @N
    %r53 = icmp slt i32 %r94,%r52
    br i1 %r53, label %L6, label %L7
L6:  ;latch
    %r55 = getelementptr [6 x i32], ptr %r9, i32 0, i32 %r94
    %r56 = load i32, ptr %r55
    call void @putint(i32 %r56)
    %r60 = add i32 %r94,1
    br label %L5
L7:  ;
    call void @putch(i32 10)
    br label %L8
L8:  ;
    %r95 = phi i32 [0,%L7],[%r73,%L9]
    %r65 = load i32, ptr @N
    %r66 = icmp slt i32 %r95,%r65
    br i1 %r66, label %L9, label %L10
L9:  ;latch
    %r68 = getelementptr [3 x i32], ptr %r10, i32 0, i32 %r95
    %r69 = load i32, ptr %r68
    call void @putint(i32 %r69)
    %r73 = add i32 %r95,1
    br label %L8
L10:  ;
    call void @putch(i32 10)
    br label %L11
L11:  ;
    %r96 = phi i32 [0,%L10],[%r86,%L12]
    %r78 = load i32, ptr @N
    %r79 = icmp slt i32 %r96,%r78
    br i1 %r79, label %L12, label %L13
L12:  ;latch
    %r81 = getelementptr [3 x i32], ptr %r11, i32 0, i32 %r96
    %r82 = load i32, ptr %r81
    call void @putint(i32 %r82)
    %r86 = add i32 %r96,1
    br label %L11
L13:  ;
    call void @putch(i32 10)
    ret i32 0
}
