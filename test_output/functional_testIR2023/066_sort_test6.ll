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
define i32 @counting_sort(ptr %r0,ptr %r1,i32 %r2)
{
L0:  ;
    %r4 = alloca [10 x i32]
    br label %L1
L1:  ;
    br label %L2
L2:  ;
    %r94 = phi i32 [0,%L1],[%r22,%L3]
    %r16 = icmp slt i32 %r94,10
    br i1 %r16, label %L3, label %L4
L3:  ;latch
    %r18 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r94
    store i32 0, ptr %r18
    %r22 = add i32 %r94,1
    br label %L2
L4:  ;
    br label %L5
L5:  ;
    %r97 = phi i32 [0,%L4],[%r39,%L6]
    %r25 = icmp slt i32 %r97,%r2
    br i1 %r25, label %L6, label %L7
L6:  ;latch
    %r27 = getelementptr i32, ptr %r0, i32 %r97
    %r28 = load i32, ptr %r27
    %r29 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r28
    %r34 = load i32, ptr %r29
    %r36 = add i32 %r34,1
    store i32 %r36, ptr %r29
    %r39 = add i32 %r97,1
    br label %L5
L7:  ;
    br label %L8
L8:  ;
    %r95 = phi i32 [1,%L7],[%r57,%L9]
    %r43 = icmp slt i32 %r95,10
    br i1 %r43, label %L9, label %L10
L9:  ;latch
    %r45 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r95
    %r48 = load i32, ptr %r45
    %r51 = sub i32 %r95,1
    %r52 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r51
    %r53 = load i32, ptr %r52
    %r54 = add i32 %r48,%r53
    store i32 %r54, ptr %r45
    %r57 = add i32 %r95,1
    br label %L8
L10:  ;
    br label %L11
L11:  ;
    %r96 = phi i32 [%r2,%L10],[%r64,%L12]
    %r61 = icmp sgt i32 %r96,0
    br i1 %r61, label %L12, label %L13
L12:  ;latch
    %r64 = sub i32 %r96,1
    %r65 = getelementptr i32, ptr %r0, i32 %r64
    %r66 = load i32, ptr %r65
    %r67 = getelementptr [10 x i32], ptr %r4, i32 0, i32 %r66
    %r74 = load i32, ptr %r67
    %r76 = sub i32 %r74,1
    store i32 %r76, ptr %r67
    %r83 = load i32, ptr %r67
    %r84 = getelementptr i32, ptr %r1, i32 %r83
    store i32 %r66, ptr %r84
    br label %L11
L13:  ;
    ret i32 0
}
define i32 @main()
{
L0:  ;
    %r35 = alloca [10 x i32]
    %r1 = alloca [10 x i32]
    br label %L1
L1:  ;
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
    %r36 = getelementptr [10 x i32], ptr %r1, i32 0
    %r37 = getelementptr [10 x i32], ptr %r35, i32 0
    %r38 = load i32, ptr @n
    %r39 = call i32 @counting_sort(ptr %r36,ptr %r37,i32 %r38)
    br label %L2
L2:  ;
    %r55 = phi i32 [%r39,%L1],[%r53,%L3]
    %r41 = load i32, ptr @n
    %r42 = icmp slt i32 %r55,%r41
    br i1 %r42, label %L3, label %L4
L3:  ;latch
    %r46 = getelementptr [10 x i32], ptr %r35, i32 0, i32 %r55
    %r47 = load i32, ptr %r46
    call void @putint(i32 %r47)
    call void @putch(i32 10)
    %r53 = add i32 %r55,1
    br label %L2
L4:  ;
    ret i32 0
}
