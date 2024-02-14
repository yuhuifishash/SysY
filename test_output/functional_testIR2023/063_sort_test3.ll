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
define i32 @QuickSort(ptr %r0,i32 %r1,i32 %r2)
{
L0:
    br label %L1
L1:
    %r7 = icmp slt i32 %r1,%r2
    br i1 %r7, label %L2, label %L3
L2:
    %r17 = getelementptr i32, ptr %r0, i32 %r1
    %r18 = load i32, ptr %r17
    br label %L4
L3:
    ret i32 0
L4:
    %r95 = phi i32 [%r1,%L2],[%r96,%L18]
    %r91 = phi i32 [%r2,%L2],[%r92,%L18]
    %r21 = icmp slt i32 %r95,%r91
    br i1 %r21, label %L5, label %L6
L5:
    br label %L7
L6:
    %r69 = getelementptr i32, ptr %r0, i32 %r95
    store i32 %r18, ptr %r69
    %r75 = sub i32 %r95,1
    %r76 = getelementptr i32, ptr %r0
    %r79 = call i32 @QuickSort(ptr %r76,i32 %r1,i32 %r75)
    %r82 = add i32 %r95,1
    %r83 = getelementptr i32, ptr %r0
    %r86 = call i32 @QuickSort(ptr %r83,i32 %r82,i32 %r2)
    br label %L3
L7:
    %r90 = phi i32 [%r91,%L5],[%r34,%L8]
    %r24 = icmp slt i32 %r95,%r90
    br i1 %r24, label %L10, label %L9
L8:
    %r34 = sub i32 %r90,1
    br label %L7
L9:
    %r37 = icmp slt i32 %r95,%r90
    br i1 %r37, label %L11, label %L12
L10:
    %r26 = getelementptr i32, ptr %r0, i32 %r90
    %r27 = load i32, ptr %r26
    %r30 = sub i32 %r18,1
    %r31 = icmp sgt i32 %r27,%r30
    br i1 %r31, label %L8, label %L9
L11:
    %r39 = getelementptr i32, ptr %r0, i32 %r95
    %r41 = getelementptr i32, ptr %r0, i32 %r90
    %r42 = load i32, ptr %r41
    store i32 %r42, ptr %r39
    %r45 = add i32 %r95,1
    br label %L12
L12:
    %r94 = phi i32 [%r95,%L9],[%r45,%L11]
    br label %L13
L13:
    %r96 = phi i32 [%r94,%L12],[%r56,%L14]
    %r48 = icmp slt i32 %r96,%r90
    br i1 %r48, label %L16, label %L15
L14:
    %r56 = add i32 %r96,1
    br label %L13
L15:
    %r59 = icmp slt i32 %r96,%r90
    br i1 %r59, label %L17, label %L18
L16:
    %r50 = getelementptr i32, ptr %r0, i32 %r96
    %r51 = load i32, ptr %r50
    %r53 = icmp slt i32 %r51,%r18
    br i1 %r53, label %L14, label %L15
L17:
    %r61 = getelementptr i32, ptr %r0, i32 %r90
    %r63 = getelementptr i32, ptr %r0, i32 %r96
    %r64 = load i32, ptr %r63
    store i32 %r64, ptr %r61
    %r67 = sub i32 %r90,1
    br label %L18
L18:
    %r92 = phi i32 [%r90,%L15],[%r67,%L17]
    br label %L4
}
define i32 @main()
{
L0:
    %r1 = alloca [10 x i32]
    br label %L1
L1:
    store i32 10, ptr @n
    %r3 = getelementptr [10 x i32], ptr %r1, i32 0, i32 0
    store i32 4, ptr %r3
    %r6 = getelementptr [10 x i32], ptr %r1, i32 0, i32 1
    store i32 3, ptr %r6
    %r9 = getelementptr [10 x i32], ptr %r1, i32 0, i32 2
    store i32 9, ptr %r9
    %r12 = getelementptr [10 x i32], ptr %r1, i32 0, i32 3
    store i32 2, ptr %r12
    %r15 = getelementptr [10 x i32], ptr %r1, i32 0, i32 4
    store i32 0, ptr %r15
    %r18 = getelementptr [10 x i32], ptr %r1, i32 0, i32 5
    store i32 1, ptr %r18
    %r21 = getelementptr [10 x i32], ptr %r1, i32 0, i32 6
    store i32 6, ptr %r21
    %r24 = getelementptr [10 x i32], ptr %r1, i32 0, i32 7
    store i32 5, ptr %r24
    %r27 = getelementptr [10 x i32], ptr %r1, i32 0, i32 8
    store i32 7, ptr %r27
    %r30 = getelementptr [10 x i32], ptr %r1, i32 0, i32 9
    store i32 8, ptr %r30
    %r38 = getelementptr [10 x i32], ptr %r1, i32 0
    %r41 = call i32 @QuickSort(ptr %r38,i32 0,i32 9)
    br label %L2
L2:
    %r57 = phi i32 [%r41,%L1],[%r55,%L3]
    %r43 = load i32, ptr @n
    %r44 = icmp slt i32 %r57,%r43
    br i1 %r44, label %L3, label %L4
L3:
    %r48 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r57
    %r49 = load i32, ptr %r48
    call void @putint(i32 %r49)
    call void @putch(i32 10)
    %r55 = add i32 %r57,1
    br label %L2
L4:
    ret i32 0
}
