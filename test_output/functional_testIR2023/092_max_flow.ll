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
@INF = global i32 1879048192
@size = global [10x i32] zeroinitializer
@to = global [10x [10x i32]] zeroinitializer
@cap = global [10x [10x i32]] zeroinitializer
@rev = global [10x [10x i32]] zeroinitializer
@used = global [10x i32] zeroinitializer
define void @my_memset(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    br label %L2
L2:
    %r16 = phi i32 [0,%L1],[%r15,%L3]
    %r9 = icmp slt i32 %r16,%r2
    br i1 %r9, label %L3, label %L4
L3:
    %r11 = getelementptr i32, ptr %r0, i32 %r16
    store i32 %r1, ptr %r11
    %r15 = add i32 %r16,1
    br label %L2
L4:
    ret void
}
define void @add_node(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r8 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r0
    %r9 = load i32, ptr %r8
    %r10 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r0, i32 %r9
    store i32 %r1, ptr %r10
    %r14 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r0
    %r15 = load i32, ptr %r14
    %r16 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r0, i32 %r15
    store i32 %r2, ptr %r16
    %r20 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r0
    %r21 = load i32, ptr %r20
    %r22 = getelementptr [10 x [10 x i32]], ptr @rev, i32 0, i32 %r0, i32 %r21
    %r24 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r1
    %r25 = load i32, ptr %r24
    store i32 %r25, ptr %r22
    %r28 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r1
    %r29 = load i32, ptr %r28
    %r30 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r1, i32 %r29
    store i32 %r0, ptr %r30
    %r34 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r1
    %r35 = load i32, ptr %r34
    %r36 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r1, i32 %r35
    store i32 0, ptr %r36
    %r40 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r1
    %r41 = load i32, ptr %r40
    %r42 = getelementptr [10 x [10 x i32]], ptr @rev, i32 0, i32 %r1, i32 %r41
    %r44 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r0
    %r45 = load i32, ptr %r44
    store i32 %r45, ptr %r42
    %r47 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r0
    %r49 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r0
    %r50 = load i32, ptr %r49
    %r52 = add i32 %r50,1
    store i32 %r52, ptr %r47
    %r54 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r1
    %r56 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r1
    %r57 = load i32, ptr %r56
    %r59 = add i32 %r57,1
    store i32 %r59, ptr %r54
    ret void
}
define i32 @dfs(i32 %r0,i32 %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r8 = icmp eq i32 %r0,%r1
    br i1 %r8, label %L2, label %L3
L2:
    ret i32 %r2
L3:
    %r11 = getelementptr [10 x i32], ptr @used, i32 0, i32 %r0
    store i32 1, ptr %r11
    br label %L4
L4:
    %r100 = phi i32 [0,%L3],[%r29,%L7],[%r38,%L10],[%r96,%L17]
    %r17 = getelementptr [10 x i32], ptr @size, i32 0, i32 %r0
    %r18 = load i32, ptr %r17
    %r19 = icmp slt i32 %r100,%r18
    br i1 %r19, label %L5, label %L6
L5:
    %r22 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r0, i32 %r100
    %r23 = load i32, ptr %r22
    %r24 = getelementptr [10 x i32], ptr @used, i32 0, i32 %r23
    %r25 = load i32, ptr %r24
    %r26 = icmp ne i32 %r25,0
    br i1 %r26, label %L7, label %L8
L6:
    ret i32 0
L7:
    %r29 = add i32 %r100,1
    br label %L4
L8:
    %r32 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r0, i32 %r100
    %r33 = load i32, ptr %r32
    %r35 = icmp sle i32 %r33,0
    br i1 %r35, label %L10, label %L11
L10:
    %r38 = add i32 %r100,1
    br label %L4
L11:
    %r44 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r0, i32 %r100
    %r45 = load i32, ptr %r44
    %r46 = icmp slt i32 %r2,%r45
    br i1 %r46, label %L13, label %L14
L13:
    br label %L15
L14:
    %r50 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r0, i32 %r100
    %r51 = load i32, ptr %r50
    br label %L15
L15:
    %r99 = phi i32 [%r2,%L13],[%r51,%L14]
    %r55 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r0, i32 %r100
    %r56 = load i32, ptr %r55
    %r59 = call i32 @dfs(i32 %r56,i32 %r1,i32 %r99)
    %r62 = icmp sgt i32 %r59,0
    br i1 %r62, label %L16, label %L17
L16:
    %r65 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r0, i32 %r100
    %r68 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r0, i32 %r100
    %r69 = load i32, ptr %r68
    %r71 = sub i32 %r69,%r59
    store i32 %r71, ptr %r65
    %r74 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r0, i32 %r100
    %r75 = load i32, ptr %r74
    %r78 = getelementptr [10 x [10 x i32]], ptr @rev, i32 0, i32 %r0, i32 %r100
    %r79 = load i32, ptr %r78
    %r80 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r75, i32 %r79
    %r83 = getelementptr [10 x [10 x i32]], ptr @to, i32 0, i32 %r0, i32 %r100
    %r84 = load i32, ptr %r83
    %r87 = getelementptr [10 x [10 x i32]], ptr @rev, i32 0, i32 %r0, i32 %r100
    %r88 = load i32, ptr %r87
    %r89 = getelementptr [10 x [10 x i32]], ptr @cap, i32 0, i32 %r84, i32 %r88
    %r90 = load i32, ptr %r89
    %r92 = add i32 %r90,%r59
    store i32 %r92, ptr %r80
    ret i32 %r59
L17:
    %r96 = add i32 %r100,1
    br label %L4
}
define i32 @max_flow(i32 %r0,i32 %r1)
{
L0:
    br label %L1
L1:
    br label %L2
L2:
    %r23 = phi i32 [0,%L1],[%r22,%L6]
    br label %L3
L3:
    %r8 = getelementptr [10 x i32], ptr @used, i32 0
    call void @my_memset(ptr %r8,i32 0,i32 10)
    %r15 = call i32 @dfs(i32 %r0,i32 %r1,i32 1879048192)
    %r18 = icmp eq i32 %r15,0
    br i1 %r18, label %L5, label %L6
L5:
    ret i32 %r23
L6:
    %r22 = add i32 %r23,%r15
    br label %L2
}
define i32 @main()
{
L0:
    br label %L1
L1:
    %r4 = call i32 @getint()
    %r5 = call i32 @getint()
    %r6 = getelementptr [10 x i32], ptr @size, i32 0
    call void @my_memset(ptr %r6,i32 0,i32 10)
    br label %L2
L2:
    %r31 = phi i32 [%r5,%L1],[%r25,%L3]
    %r11 = icmp sgt i32 %r31,0
    br i1 %r11, label %L3, label %L4
L3:
    %r16 = call i32 @getint()
    %r17 = call i32 @getint()
    %r19 = call i32 @getint()
    call void @add_node(i32 %r16,i32 %r17,i32 %r19)
    %r25 = sub i32 %r31,1
    br label %L2
L4:
    %r28 = call i32 @max_flow(i32 1,i32 %r4)
    call void @putint(i32 %r28)
    call void @putch(i32 10)
    ret i32 0
}
