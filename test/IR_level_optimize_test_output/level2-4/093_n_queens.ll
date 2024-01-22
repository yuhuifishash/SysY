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
@ans = global [50x i32] zeroinitializer
@sum = global i32 0
@n = global i32 zeroinitializer
@row = global [50x i32] zeroinitializer
@line1 = global [50x i32] zeroinitializer
@line2 = global [100x i32] zeroinitializer
define void @f(i32 %r0)
{
L0:
    br label %L1
L1:
    %r5 = load i32, ptr @n
    %r6 = icmp sle i32 1,%r5
    br i1 %r6, label %L14, label %L5
L3:
    %r90 = phi i32 [%r84,%L4],[1,%L14]
    %r10 = getelementptr [50 x i32], ptr @row, i32 0, i32 %r90
    %r11 = load i32, ptr %r10
    %r13 = icmp ne i32 %r11,1
    br i1 %r13, label %L10, label %L7
L4:
    %r86 = load i32, ptr @n
    %r87 = icmp sle i32 %r84,%r86
    br i1 %r87, label %L3, label %L5
L5:
    ret void
L6:
    %r43 = getelementptr [50 x i32], ptr @ans, i32 0, i32 %r0
    store i32 %r90, ptr %r43
    %r45 = load i32, ptr @n
    %r46 = icmp eq i32 %r0,%r45
    br i1 %r46, label %L12, label %L13
L7:
    %r84 = add i32 %r90,1
    br label %L4
L8:
    %r28 = load i32, ptr @n
    %r30 = add i32 %r28,%r0
    %r32 = sub i32 %r30,%r90
    %r33 = getelementptr [100 x i32], ptr @line2, i32 0, i32 %r32
    %r34 = load i32, ptr %r33
    %r35 = icmp eq i32 %r34,0
    br i1 %r35, label %L6, label %L7
L10:
    %r18 = add i32 %r0,%r90
    %r19 = getelementptr [50 x i32], ptr @line1, i32 0, i32 %r18
    %r20 = load i32, ptr %r19
    %r22 = icmp eq i32 %r20,0
    br i1 %r22, label %L8, label %L7
L12:
    call void @printans()
    br label %L13
L13:
    %r51 = getelementptr [50 x i32], ptr @row, i32 0, i32 %r90
    store i32 1, ptr %r51
    %r55 = add i32 %r0,%r90
    %r56 = getelementptr [50 x i32], ptr @line1, i32 0, i32 %r55
    store i32 1, ptr %r56
    %r58 = load i32, ptr @n
    %r60 = add i32 %r58,%r0
    %r62 = sub i32 %r60,%r90
    %r63 = getelementptr [100 x i32], ptr @line2, i32 0, i32 %r62
    store i32 1, ptr %r63
    %r66 = add i32 %r0,1
    call void @f(i32 %r66)
    store i32 0, ptr %r51
    store i32 0, ptr %r56
    %r76 = load i32, ptr @n
    %r78 = add i32 %r76,%r0
    %r80 = sub i32 %r78,%r90
    %r81 = getelementptr [100 x i32], ptr @line2, i32 0, i32 %r80
    store i32 0, ptr %r81
    br label %L7
L14:
    br label %L3
}
define void @printans()
{
L0:
    br label %L1
L1:
    %r0 = load i32, ptr @sum
    %r2 = add i32 %r0,1
    store i32 %r2, ptr @sum
    %r6 = load i32, ptr @n
    %r7 = icmp sle i32 1,%r6
    br i1 %r7, label %L9, label %L5
L3:
    %r28 = phi i32 [%r22,%L4],[1,%L9]
    %r11 = getelementptr [50 x i32], ptr @ans, i32 0, i32 %r28
    %r12 = load i32, ptr %r11
    call void @putint(i32 %r12)
    %r14 = load i32, ptr @n
    %r15 = icmp eq i32 %r28,%r14
    br i1 %r15, label %L6, label %L7
L4:
    %r24 = load i32, ptr @n
    %r25 = icmp sle i32 %r22,%r24
    br i1 %r25, label %L3, label %L5
L5:
    ret void
L6:
    call void @putch(i32 10)
    ret void
L7:
    call void @putch(i32 32)
    br label %L8
L8:
    %r22 = add i32 %r28,1
    br label %L4
L9:
    br label %L3
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @getint()
    %r4 = icmp sgt i32 %r1,0
    br i1 %r4, label %L6, label %L5
L3:
    %r18 = phi i32 [%r11,%L4],[%r1,%L6]
    %r7 = call i32 @getint()
    store i32 %r7, ptr @n
    call void @f(i32 1)
    %r11 = sub i32 %r18,1
    br label %L4
L4:
    %r14 = icmp sgt i32 %r11,0
    br i1 %r14, label %L3, label %L5
L5:
    %r17 = load i32, ptr @sum
    ret i32 %r17
L6:
    br label %L3
}
