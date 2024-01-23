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
define i32 @main()
{
L0:
    %r1 = alloca [10 x i32]
    br label %L1
L1:
    store i32 10, ptr @n
    %r4 = getelementptr [10 x i32], ptr %r1, i32 0, i32 0
    store i32 4, ptr %r4
    %r7 = getelementptr [10 x i32], ptr %r1, i32 0, i32 1
    store i32 3, ptr %r7
    %r10 = getelementptr [10 x i32], ptr %r1, i32 0, i32 2
    store i32 9, ptr %r10
    %r13 = getelementptr [10 x i32], ptr %r1, i32 0, i32 3
    store i32 2, ptr %r13
    %r16 = getelementptr [10 x i32], ptr %r1, i32 0, i32 4
    store i32 0, ptr %r16
    %r19 = getelementptr [10 x i32], ptr %r1, i32 0, i32 5
    store i32 1, ptr %r19
    %r22 = getelementptr [10 x i32], ptr %r1, i32 0, i32 6
    store i32 6, ptr %r22
    %r25 = getelementptr [10 x i32], ptr %r1, i32 0, i32 7
    store i32 5, ptr %r25
    %r28 = getelementptr [10 x i32], ptr %r1, i32 0, i32 8
    store i32 7, ptr %r28
    %r31 = getelementptr [10 x i32], ptr %r1, i32 0, i32 9
    store i32 8, ptr %r31
    %r34 = getelementptr i32, ptr %r1, i32 0
    %r35 = call i32 @bubblesort(ptr %r34)
    %r37 = load i32, ptr @n
    %r38 = icmp slt i32 %r35,%r37
    br i1 %r38, label %L6, label %L5
L3:
    %r58 = phi i32 [%r51,%L4],[%r35,%L6]
    %r44 = getelementptr [10 x i32], ptr %r1, i32 0, i32 %r58
    %r45 = load i32, ptr %r44
    call void @putint(i32 %r45)
    call void @putch(i32 10)
    %r51 = add i32 %r58,1
    br label %L4
L4:
    %r53 = load i32, ptr @n
    %r54 = icmp slt i32 %r51,%r53
    br i1 %r54, label %L3, label %L5
L5:
    ret i32 0
L6:
    br label %L3
}
define i32 @bubblesort(ptr %r0)
{
L0:
    br label %L1
L1:
    %r7 = load i32, ptr @n
    %r9 = sub i32 %r7,1
    %r10 = icmp slt i32 0,%r9
    br i1 %r10, label %L12, label %L5
L3:
    %r78 = phi i32 [0,%L12],[%r65,%L4]
    %r17 = sub i32 %r15,%r78
    %r19 = sub i32 %r17,1
    %r20 = icmp slt i32 0,%r19
    br i1 %r20, label %L13, label %L9
L4:
    %r70 = icmp slt i32 %r65,%r69
    br i1 %r70, label %L3, label %L5
L5:
    ret i32 0
L7:
    %r76 = phi i32 [%r53,%L8],[0,%L13]
    %r24 = getelementptr i32, ptr %r0, i32 %r76
    %r25 = load i32, ptr %r24
    %r28 = add i32 %r76,1
    %r29 = getelementptr i32, ptr %r0, i32 %r28
    %r30 = load i32, ptr %r29
    %r31 = icmp sgt i32 %r25,%r30
    br i1 %r31, label %L10, label %L11
L8:
    %r60 = icmp slt i32 %r53,%r59
    br i1 %r60, label %L7, label %L9
L9:
    %r65 = add i32 %r78,1
    br label %L4
L10:
    %r38 = add i32 %r76,1
    %r39 = getelementptr i32, ptr %r0, i32 %r38
    %r40 = load i32, ptr %r39
    %r42 = getelementptr i32, ptr %r0, i32 %r76
    %r43 = load i32, ptr %r42
    store i32 %r43, ptr %r39
    store i32 %r40, ptr %r42
    br label %L11
L11:
    %r53 = add i32 %r76,1
    br label %L8
L12:
    %r15 = load i32, ptr @n
    %r69 = sub i32 %r15,1
    br label %L3
L13:
    %r55 = load i32, ptr @n
    %r57 = sub i32 %r55,%r78
    %r59 = sub i32 %r57,1
    br label %L7
}
