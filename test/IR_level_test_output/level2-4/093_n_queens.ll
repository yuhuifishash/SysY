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
@ans = global [50x i32] zeroinitializer
@sum = global i32 0
@n = global i32 zeroinitializer
@row = global [50x i32] zeroinitializer
@line1 = global [50x i32] zeroinitializer
@line2 = global [100x i32] zeroinitializer
define void @f(i32 %r0)
{
L0:
    %r2 = alloca i32
    %r1 = alloca i32
    store i32 %r0, ptr %r1
    %r3 = add i32 0,1
    store i32 %r3, ptr %r2
    br label %L1
L1:
    %r4 = load i32, ptr %r2
    %r5 = load i32, ptr @n
    %r6 = icmp sle i32 %r4,%r5
    br i1 %r6, label %L2, label %L3
L2:
    %r9 = load i32, ptr %r2
    %r10 = getelementptr [50 x i32], ptr @row, i32 0, i32 %r9
    %r11 = load i32, ptr %r10
    %r12 = add i32 0,1
    %r13 = icmp ne i32 %r11,%r12
    br i1 %r13, label %L8, label %L5
L3:
    ret void
L4:
    %r41 = load i32, ptr %r2
    %r42 = load i32, ptr %r1
    %r43 = getelementptr [50 x i32], ptr @ans, i32 0, i32 %r42
    store i32 %r41, ptr %r43
    %r44 = load i32, ptr %r1
    %r45 = load i32, ptr @n
    %r46 = icmp eq i32 %r44,%r45
    br i1 %r46, label %L10, label %L11
L5:
    %r82 = load i32, ptr %r2
    %r83 = add i32 0,1
    %r84 = add i32 %r82,%r83
    store i32 %r84, ptr %r2
    br label %L1
L6:
    %r28 = load i32, ptr @n
    %r29 = load i32, ptr %r1
    %r30 = add i32 %r28,%r29
    %r31 = load i32, ptr %r2
    %r32 = sub i32 %r30,%r31
    %r33 = getelementptr [100 x i32], ptr @line2, i32 0, i32 %r32
    %r34 = load i32, ptr %r33
    %r35 = icmp eq i32 %r34,0
    br i1 %r35, label %L4, label %L5
L8:
    %r16 = load i32, ptr %r1
    %r17 = load i32, ptr %r2
    %r18 = add i32 %r16,%r17
    %r19 = getelementptr [50 x i32], ptr @line1, i32 0, i32 %r18
    %r20 = load i32, ptr %r19
    %r21 = add i32 0,0
    %r22 = icmp eq i32 %r20,%r21
    br i1 %r22, label %L6, label %L5
L10:
    call void @printans()
    br label %L11
L11:
    %r49 = add i32 0,1
    %r50 = load i32, ptr %r2
    %r51 = getelementptr [50 x i32], ptr @row, i32 0, i32 %r50
    store i32 %r49, ptr %r51
    %r52 = add i32 0,1
    %r53 = load i32, ptr %r1
    %r54 = load i32, ptr %r2
    %r55 = add i32 %r53,%r54
    %r56 = getelementptr [50 x i32], ptr @line1, i32 0, i32 %r55
    store i32 %r52, ptr %r56
    %r57 = add i32 0,1
    %r58 = load i32, ptr @n
    %r59 = load i32, ptr %r1
    %r60 = add i32 %r58,%r59
    %r61 = load i32, ptr %r2
    %r62 = sub i32 %r60,%r61
    %r63 = getelementptr [100 x i32], ptr @line2, i32 0, i32 %r62
    store i32 %r57, ptr %r63
    %r64 = load i32, ptr %r1
    %r65 = add i32 0,1
    %r66 = add i32 %r64,%r65
    call void @f(i32 %r66)
    %r67 = add i32 0,0
    %r68 = load i32, ptr %r2
    %r69 = getelementptr [50 x i32], ptr @row, i32 0, i32 %r68
    store i32 %r67, ptr %r69
    %r70 = add i32 0,0
    %r71 = load i32, ptr %r1
    %r72 = load i32, ptr %r2
    %r73 = add i32 %r71,%r72
    %r74 = getelementptr [50 x i32], ptr @line1, i32 0, i32 %r73
    store i32 %r70, ptr %r74
    %r75 = add i32 0,0
    %r76 = load i32, ptr @n
    %r77 = load i32, ptr %r1
    %r78 = add i32 %r76,%r77
    %r79 = load i32, ptr %r2
    %r80 = sub i32 %r78,%r79
    %r81 = getelementptr [100 x i32], ptr @line2, i32 0, i32 %r80
    store i32 %r75, ptr %r81
    br label %L5
}
define void @printans()
{
L0:
    %r3 = alloca i32
    %r0 = load i32, ptr @sum
    %r1 = add i32 0,1
    %r2 = add i32 %r0,%r1
    store i32 %r2, ptr @sum
    %r4 = add i32 0,1
    store i32 %r4, ptr %r3
    br label %L1
L1:
    %r5 = load i32, ptr %r3
    %r6 = load i32, ptr @n
    %r7 = icmp sle i32 %r5,%r6
    br i1 %r7, label %L2, label %L3
L2:
    %r10 = load i32, ptr %r3
    %r11 = getelementptr [50 x i32], ptr @ans, i32 0, i32 %r10
    %r12 = load i32, ptr %r11
    call void @putint(i32 %r12)
    %r13 = load i32, ptr %r3
    %r14 = load i32, ptr @n
    %r15 = icmp eq i32 %r13,%r14
    br i1 %r15, label %L4, label %L5
L3:
    ret void
L4:
    %r18 = add i32 0,10
    call void @putch(i32 %r18)
    ret void
L5:
    %r19 = add i32 0,32
    call void @putch(i32 %r19)
    br label %L6
L6:
    %r20 = load i32, ptr %r3
    %r21 = add i32 0,1
    %r22 = add i32 %r20,%r21
    store i32 %r22, ptr %r3
    br label %L1
}
define i32 @main()
{
L0:
    %r0 = alloca i32
    %r1 = call i32 @getint()
    store i32 %r1, ptr %r0
    br label %L1
L1:
    %r2 = load i32, ptr %r0
    %r3 = add i32 0,0
    %r4 = icmp sgt i32 %r2,%r3
    br i1 %r4, label %L2, label %L3
L2:
    %r7 = call i32 @getint()
    store i32 %r7, ptr @n
    %r8 = add i32 0,1
    call void @f(i32 %r8)
    %r9 = load i32, ptr %r0
    %r10 = add i32 0,1
    %r11 = sub i32 %r9,%r10
    store i32 %r11, ptr %r0
    br label %L1
L3:
    %r12 = load i32, ptr @sum
    ret i32 %r12
}
