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
define i32 @insertsort(ptr %r0)
{
L0:
    br label %L1
L1:
    %r5 = load i32, ptr @n
    %r6 = icmp slt i32 1,%r5
    br i1 %r6, label %L14, label %L5
L3:
    %r81 = phi i32 [%r68,%L4],[1,%L14]
    %r12 = getelementptr i32, ptr %r0, i32 %r81
    %r13 = load i32, ptr %r12
    %r18 = sub i32 %r81,1
    %r22 = icmp sgt i32 %r18,-1
    br i1 %r22, label %L10, label %L9
L4:
    %r71 = icmp slt i32 %r68,%r70
    br i1 %r71, label %L3, label %L5
L5:
    ret i32 0
L7:
    %r77 = phi i32 [%r44,%L12],[%r18,%L15]
    %r36 = getelementptr i32, ptr %r0, i32 %r77
    %r37 = load i32, ptr %r36
    %r40 = add i32 %r77,1
    %r41 = getelementptr i32, ptr %r0, i32 %r40
    store i32 %r37, ptr %r41
    %r44 = sub i32 %r77,1
    br label %L8
L8:
    %r48 = icmp sgt i32 %r44,-1
    br i1 %r48, label %L12, label %L9
L9:
    %r78 = phi i32 [%r18,%L3],[%r18,%L10],[%r44,%L8],[%r44,%L12]
    %r64 = add i32 %r78,1
    %r65 = getelementptr i32, ptr %r0, i32 %r64
    store i32 %r13, ptr %r65
    %r68 = add i32 %r81,1
    br label %L4
L10:
    %r27 = getelementptr i32, ptr %r0, i32 %r18
    %r28 = load i32, ptr %r27
    %r29 = icmp slt i32 %r13,%r28
    br i1 %r29, label %L15, label %L9
L12:
    %r53 = getelementptr i32, ptr %r0, i32 %r44
    %r54 = load i32, ptr %r53
    %r55 = icmp slt i32 %r13,%r54
    br i1 %r55, label %L7, label %L9
L14:
    %r70 = load i32, ptr @n
    br label %L3
L15:
    br label %L7
}
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
    %r35 = call i32 @insertsort(ptr %r34)
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
