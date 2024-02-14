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
define i32 @bubblesort(ptr %r0)
{
L0:
    br label %L1
L1:
    br label %L2
L2:
    %r54 = phi i32 [0,%L1],[%r50,%L7]
    %r52 = phi i32 [0,%L1],[%r53,%L7]
    %r7 = load i32, ptr @n
    %r9 = sub i32 %r7,1
    %r10 = icmp slt i32 %r54,%r9
    br i1 %r10, label %L3, label %L4
L3:
    br label %L5
L4:
    ret i32 0
L5:
    %r53 = phi i32 [0,%L3],[%r47,%L9]
    %r13 = load i32, ptr @n
    %r15 = sub i32 %r13,%r54
    %r17 = sub i32 %r15,1
    %r18 = icmp slt i32 %r53,%r17
    br i1 %r18, label %L6, label %L7
L6:
    %r20 = getelementptr i32, ptr %r0, i32 %r53
    %r21 = load i32, ptr %r20
    %r24 = add i32 %r53,1
    %r25 = getelementptr i32, ptr %r0, i32 %r24
    %r26 = load i32, ptr %r25
    %r27 = icmp sgt i32 %r21,%r26
    br i1 %r27, label %L8, label %L9
L7:
    %r50 = add i32 %r54,1
    br label %L2
L8:
    %r32 = add i32 %r53,1
    %r33 = getelementptr i32, ptr %r0, i32 %r32
    %r34 = load i32, ptr %r33
    %r37 = add i32 %r53,1
    %r38 = getelementptr i32, ptr %r0, i32 %r37
    %r40 = getelementptr i32, ptr %r0, i32 %r53
    %r41 = load i32, ptr %r40
    store i32 %r41, ptr %r38
    %r43 = getelementptr i32, ptr %r0, i32 %r53
    store i32 %r34, ptr %r43
    br label %L9
L9:
    %r47 = add i32 %r53,1
    br label %L5
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
    %r34 = getelementptr [10 x i32], ptr %r1, i32 0
    %r35 = call i32 @bubblesort(ptr %r34)
    br label %L2
L2:
    %r51 = phi i32 [%r35,%L1],[%r49,%L3]
    %r37 = load i32, ptr @n
    %r38 = icmp slt i32 %r51,%r37
    br i1 %r38, label %L3, label %L4
L3:
    %r42 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r51
    %r43 = load i32, ptr %r42
    call void @putint(i32 %r43)
    call void @putch(i32 10)
    %r49 = add i32 %r51,1
    br label %L2
L4:
    ret i32 0
}
