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
@n = global i32 zeroinitializer
@m = global i32 zeroinitializer
@fa = global [100005x i32] zeroinitializer
define i32 @quick_read()
{
L0:
    br label %L1
L1:
    %r1 = call i32 @getch()
    %r8 = icmp slt i32 %r1,48
    br i1 %r8, label %L23, label %L6
L3:
    %r83 = phi i32 [%r25,%L4],[%r25,%L10],[%r87,%L23]
    %r79 = phi i32 [%r78,%L4],[%r78,%L10],[%r88,%L23]
    %r21 = icmp eq i32 %r83,45
    br i1 %r21, label %L8, label %L9
L4:
    %r28 = icmp slt i32 %r25,48
    br i1 %r28, label %L3, label %L10
L5:
    %r84 = phi i32 [%r1,%L6],[%r25,%L10]
    %r80 = phi i32 [0,%L6],[%r78,%L10]
    %r41 = icmp sge i32 %r84,48
    br i1 %r41, label %L16, label %L15
L6:
    %r13 = icmp sgt i32 %r1,57
    br i1 %r13, label %L23, label %L5
L8:
    br label %L9
L9:
    %r78 = phi i32 [%r79,%L3],[1,%L8]
    %r25 = call i32 @getch()
    br label %L4
L10:
    %r33 = icmp sgt i32 %r25,57
    br i1 %r33, label %L3, label %L5
L13:
    %r85 = phi i32 [%r59,%L18],[%r84,%L24]
    %r81 = phi i32 [%r58,%L18],[0,%L24]
    %r54 = mul i32 %r81,10
    %r56 = add i32 %r54,%r85
    %r58 = sub i32 %r56,48
    %r59 = call i32 @getch()
    br label %L14
L14:
    %r62 = icmp sge i32 %r59,48
    br i1 %r62, label %L18, label %L15
L15:
    %r82 = phi i32 [0,%L5],[0,%L16],[%r58,%L14],[%r58,%L18]
    %r74 = icmp ne i32 %r80,0
    br i1 %r74, label %L20, label %L21
L16:
    %r46 = icmp sle i32 %r84,57
    br i1 %r46, label %L24, label %L15
L18:
    %r67 = icmp sle i32 %r59,57
    br i1 %r67, label %L13, label %L15
L20:
    %r76 = sub i32 0,%r82
    ret i32 %r76
L21:
    ret i32 %r82
L23:
    %r88 = phi i32 [0,%L1],[0,%L6]
    %r87 = phi i32 [%r1,%L1],[%r1,%L6]
    br label %L3
L24:
    br label %L13
}
define void @init()
{
L0:
    br label %L1
L1:
    %r3 = load i32, ptr @n
    %r4 = icmp sle i32 1,%r3
    br i1 %r4, label %L6, label %L5
L3:
    %r18 = phi i32 [%r12,%L4],[1,%L6]
    %r9 = getelementptr [100005 x i32], ptr @fa, i32 0, i32 %r18
    store i32 %r18, ptr %r9
    %r12 = add i32 %r18,1
    br label %L4
L4:
    %r15 = icmp sle i32 %r12,%r14
    br i1 %r15, label %L3, label %L5
L5:
    ret void
L6:
    %r14 = load i32, ptr @n
    br label %L3
}
define i32 @find(i32 %r0)
{
L0:
    br label %L1
L1:
    %r3 = getelementptr [100005 x i32], ptr @fa, i32 0, i32 %r0
    %r4 = load i32, ptr %r3
    %r6 = icmp eq i32 %r4,%r0
    br i1 %r6, label %L2, label %L3
L2:
    ret i32 %r0
L3:
    %r12 = getelementptr [100005 x i32], ptr @fa, i32 0, i32 %r0
    %r13 = load i32, ptr %r12
    %r14 = call i32 @find(i32 %r13)
    store i32 %r14, ptr %r12
    ret i32 %r14
}
define i32 @same(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    %r5 = call i32 @find(i32 %r0)
    %r7 = call i32 @find(i32 %r1)
    %r8 = icmp eq i32 %r5,%r7
    br i1 %r8, label %L2, label %L3
L2:
    ret i32 1
L3:
    ret i32 0
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r0 = call i32 @quick_read()
    store i32 %r0, ptr @n
    %r1 = call i32 @quick_read()
    store i32 %r1, ptr @m
    br label %L17
L3:
    %r5 = call i32 @getch()
    %r8 = icmp ne i32 %r5,81
    br i1 %r8, label %L10, label %L9
L4:
    %r58 = load i32, ptr @m
    %r59 = icmp ne i32 %r58,0
    br i1 %r59, label %L3, label %L5
L5:
    ret i32 0
L7:
    %r19 = call i32 @getch()
    br label %L8
L8:
    %r22 = icmp ne i32 %r19,81
    br i1 %r22, label %L12, label %L9
L9:
    %r64 = phi i32 [%r5,%L3],[%r5,%L10],[%r19,%L8],[%r19,%L12]
    %r35 = icmp eq i32 %r64,81
    br i1 %r35, label %L14, label %L15
L10:
    %r13 = icmp ne i32 %r5,85
    br i1 %r13, label %L29, label %L9
L12:
    %r27 = icmp ne i32 %r19,85
    br i1 %r27, label %L7, label %L9
L14:
    %r39 = call i32 @quick_read()
    %r41 = call i32 @quick_read()
    br label %L23
L15:
    %r47 = call i32 @quick_read()
    %r48 = call i32 @find(i32 %r47)
    %r50 = call i32 @quick_read()
    %r51 = call i32 @find(i32 %r50)
    %r54 = getelementptr [100005 x i32], ptr @fa, i32 0, i32 %r48
    store i32 %r51, ptr %r54
    br label %L16
L16:
    %r55 = load i32, ptr @m
    %r57 = sub i32 %r55,1
    store i32 %r57, ptr @m
    br label %L4
L17:
    br label %L19
L18:
    %r2 = load i32, ptr @m
    %r3 = icmp ne i32 %r2,0
    br i1 %r3, label %L28, label %L5
L19:
    %r65 = load i32, ptr @n
    %r66 = icmp sle i32 1,%r65
    br i1 %r66, label %L30, label %L22
L20:
    %r68 = phi i32 [%r67,%L21],[1,%L30]
    %r69 = getelementptr [100005 x i32], ptr @fa, i32 0, i32 %r68
    store i32 %r68, ptr %r69
    %r67 = add i32 %r68,1
    br label %L21
L21:
    %r71 = icmp sle i32 %r67,%r70
    br i1 %r71, label %L20, label %L22
L22:
    br label %L18
L23:
    br label %L25
L24:
    %r44 = phi i32 [1,%L26],[0,%L27]
    call void @putint(i32 %r44)
    call void @putch(i32 10)
    br label %L16
L25:
    %r73 = call i32 @find(i32 %r39)
    %r74 = call i32 @find(i32 %r41)
    %r75 = icmp eq i32 %r73,%r74
    br i1 %r75, label %L26, label %L27
L26:
    br label %L24
L27:
    br label %L24
L28:
    br label %L3
L29:
    br label %L7
L30:
    %r70 = load i32, ptr @n
    br label %L20
}
